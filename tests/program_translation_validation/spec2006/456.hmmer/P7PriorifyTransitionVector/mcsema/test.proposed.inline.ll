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
%G_0x1b595__rip__type = type <{ [4 x i8] }>
%G_0x1b6e6__rip__type = type <{ [8 x i8] }>
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
@G_0x1b595__rip_ = global %G_0x1b595__rip__type zeroinitializer
@G_0x1b6e6__rip_ = global %G_0x1b6e6__rip__type zeroinitializer

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

declare %struct.Memory* @sub_428480.Logp_cvec(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4282f0.LogNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4527a0.FNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @P7PriorifyTransitionVector(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_439180 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_439180, %struct.Memory** %MEMORY
  %loadMem_439181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i562 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i562
  %27 = load i64, i64* %PC.i561
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i561
  store i64 %26, i64* %RBP.i563, align 8
  store %struct.Memory* %loadMem_439181, %struct.Memory** %MEMORY
  %loadMem_439184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i580 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i580
  %36 = load i64, i64* %PC.i579
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i579
  %38 = sub i64 %35, 880
  store i64 %38, i64* %RSP.i580, align 8
  %39 = icmp ult i64 %35, 880
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
  %49 = xor i64 880, %35
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
  store %struct.Memory* %loadMem_439184, %struct.Memory** %MEMORY
  %loadMem_43918b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i637 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = bitcast %"class.std::bitset"* %YMM0.i637 to i8*
  %73 = load i64, i64* %PC.i636
  %74 = add i64 %73, ptrtoint (%G_0x1b595__rip__type* @G_0x1b595__rip_ to i64)
  %75 = load i64, i64* %PC.i636
  %76 = add i64 %75, 8
  store i64 %76, i64* %PC.i636
  %77 = inttoptr i64 %74 to float*
  %78 = load float, float* %77
  %79 = bitcast i8* %72 to float*
  store float %78, float* %79, align 1
  %80 = getelementptr inbounds i8, i8* %72, i64 4
  %81 = bitcast i8* %80 to float*
  store float 0.000000e+00, float* %81, align 1
  %82 = getelementptr inbounds i8, i8* %72, i64 8
  %83 = bitcast i8* %82 to float*
  store float 0.000000e+00, float* %83, align 1
  %84 = getelementptr inbounds i8, i8* %72, i64 12
  %85 = bitcast i8* %84 to float*
  store float 0.000000e+00, float* %85, align 1
  store %struct.Memory* %loadMem_43918b, %struct.Memory** %MEMORY
  %loadMem_439193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 33
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RDI.i634 = bitcast %union.anon* %91 to i64*
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 15
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %94 to i64*
  %95 = load i64, i64* %RBP.i635
  %96 = sub i64 %95, 8
  %97 = load i64, i64* %RDI.i634
  %98 = load i64, i64* %PC.i633
  %99 = add i64 %98, 4
  store i64 %99, i64* %PC.i633
  %100 = inttoptr i64 %96 to i64*
  store i64 %97, i64* %100
  store %struct.Memory* %loadMem_439193, %struct.Memory** %MEMORY
  %loadMem_439197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %103 to i64*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 9
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RSI.i631 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 15
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %109 to i64*
  %110 = load i64, i64* %RBP.i632
  %111 = sub i64 %110, 16
  %112 = load i64, i64* %RSI.i631
  %113 = load i64, i64* %PC.i630
  %114 = add i64 %113, 4
  store i64 %114, i64* %PC.i630
  %115 = inttoptr i64 %111 to i64*
  store i64 %112, i64* %115
  store %struct.Memory* %loadMem_439197, %struct.Memory** %MEMORY
  %loadMem_43919b = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RDX.i628 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 15
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %124 to i64*
  %125 = load i64, i64* %RBP.i629
  %126 = sub i64 %125, 24
  %127 = load i64, i64* %RDX.i628
  %128 = load i64, i64* %PC.i627
  %129 = add i64 %128, 4
  store i64 %129, i64* %PC.i627
  %130 = inttoptr i64 %126 to i64*
  store i64 %127, i64* %130
  store %struct.Memory* %loadMem_43919b, %struct.Memory** %MEMORY
  %loadMem_43919f = load %struct.Memory*, %struct.Memory** %MEMORY
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %132 = getelementptr inbounds %struct.GPR, %struct.GPR* %131, i32 0, i32 33
  %133 = getelementptr inbounds %struct.Reg, %struct.Reg* %132, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %133 to i64*
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 15
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %137, i64 0, i64 0
  %XMM0.i626 = bitcast %union.VectorReg* %138 to %union.vec128_t*
  %139 = load i64, i64* %RBP.i625
  %140 = sub i64 %139, 832
  %141 = bitcast %union.vec128_t* %XMM0.i626 to i8*
  %142 = load i64, i64* %PC.i624
  %143 = add i64 %142, 8
  store i64 %143, i64* %PC.i624
  %144 = bitcast i8* %141 to <2 x float>*
  %145 = load <2 x float>, <2 x float>* %144, align 1
  %146 = extractelement <2 x float> %145, i32 0
  %147 = inttoptr i64 %140 to float*
  store float %146, float* %147
  store %struct.Memory* %loadMem_43919f, %struct.Memory** %MEMORY
  %loadMem_4391a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %150 to i64*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 7
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RDX.i622 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %156 to i64*
  %157 = load i64, i64* %RBP.i623
  %158 = sub i64 %157, 16
  %159 = load i64, i64* %PC.i621
  %160 = add i64 %159, 4
  store i64 %160, i64* %PC.i621
  %161 = inttoptr i64 %158 to i64*
  %162 = load i64, i64* %161
  store i64 %162, i64* %RDX.i622, align 8
  store %struct.Memory* %loadMem_4391a7, %struct.Memory** %MEMORY
  %loadMem_4391ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 7
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %168 to i64*
  %169 = load i64, i64* %RDX.i620
  %170 = load i64, i64* %PC.i619
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i619
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %174, align 1
  %175 = and i32 %173, 255
  %176 = call i32 @llvm.ctpop.i32(i32 %175)
  %177 = trunc i32 %176 to i8
  %178 = and i8 %177, 1
  %179 = xor i8 %178, 1
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %179, i8* %180, align 1
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %181, align 1
  %182 = icmp eq i32 %173, 0
  %183 = zext i1 %182 to i8
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %183, i8* %184, align 1
  %185 = lshr i32 %173, 31
  %186 = trunc i32 %185 to i8
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %186, i8* %187, align 1
  %188 = lshr i32 %173, 31
  %189 = xor i32 %185, %188
  %190 = add i32 %189, %188
  %191 = icmp eq i32 %190, 2
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %192, i8* %193, align 1
  store %struct.Memory* %loadMem_4391ab, %struct.Memory** %MEMORY
  %loadMem_4391ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i618 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %PC.i618
  %198 = add i64 %197, 19
  %199 = load i64, i64* %PC.i618
  %200 = add i64 %199, 6
  %201 = load i64, i64* %PC.i618
  %202 = add i64 %201, 6
  store i64 %202, i64* %PC.i618
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %204 = load i8, i8* %203, align 1
  store i8 %204, i8* %BRANCH_TAKEN, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %206 = icmp ne i8 %204, 0
  %207 = select i1 %206, i64 %198, i64 %200
  store i64 %207, i64* %205, align 8
  store %struct.Memory* %loadMem_4391ae, %struct.Memory** %MEMORY
  %loadBr_4391ae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4391ae = icmp eq i8 %loadBr_4391ae, 1
  br i1 %cmpBr_4391ae, label %block_.L_4391c1, label %block_4391b4

block_4391b4:                                     ; preds = %entry
  %loadMem_4391b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 33
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RAX.i616 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 15
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RBP.i617 = bitcast %union.anon* %216 to i64*
  %217 = load i64, i64* %RBP.i617
  %218 = sub i64 %217, 16
  %219 = load i64, i64* %PC.i615
  %220 = add i64 %219, 4
  store i64 %220, i64* %PC.i615
  %221 = inttoptr i64 %218 to i64*
  %222 = load i64, i64* %221
  store i64 %222, i64* %RAX.i616, align 8
  store %struct.Memory* %loadMem_4391b4, %struct.Memory** %MEMORY
  %loadMem_4391b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %225 to i64*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RAX.i614
  %230 = load i64, i64* %PC.i613
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC.i613
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232
  %234 = sub i32 %233, 1
  %235 = icmp ult i32 %233, 1
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %236, i8* %237, align 1
  %238 = and i32 %234, 255
  %239 = call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %242, i8* %243, align 1
  %244 = xor i32 %233, 1
  %245 = xor i32 %244, %234
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %248, i8* %249, align 1
  %250 = icmp eq i32 %234, 0
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %251, i8* %252, align 1
  %253 = lshr i32 %234, 31
  %254 = trunc i32 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %254, i8* %255, align 1
  %256 = lshr i32 %233, 31
  %257 = xor i32 %253, %256
  %258 = add i32 %257, %256
  %259 = icmp eq i32 %258, 2
  %260 = zext i1 %259 to i8
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %260, i8* %261, align 1
  store %struct.Memory* %loadMem_4391b8, %struct.Memory** %MEMORY
  %loadMem_4391bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %264 to i64*
  %265 = load i64, i64* %PC.i612
  %266 = add i64 %265, 386
  %267 = load i64, i64* %PC.i612
  %268 = add i64 %267, 6
  %269 = load i64, i64* %PC.i612
  %270 = add i64 %269, 6
  store i64 %270, i64* %PC.i612
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %272 = load i8, i8* %271, align 1
  %273 = icmp eq i8 %272, 0
  %274 = zext i1 %273 to i8
  store i8 %274, i8* %BRANCH_TAKEN, align 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %276 = select i1 %273, i64 %266, i64 %268
  store i64 %276, i64* %275, align 8
  store %struct.Memory* %loadMem_4391bb, %struct.Memory** %MEMORY
  %loadBr_4391bb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4391bb = icmp eq i8 %loadBr_4391bb, 1
  br i1 %cmpBr_4391bb, label %block_.L_43933d, label %block_.L_4391c1

block_.L_4391c1:                                  ; preds = %block_4391b4, %entry
  %loadMem_4391c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 15
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RBP.i611
  %287 = sub i64 %286, 16
  %288 = load i64, i64* %PC.i609
  %289 = add i64 %288, 4
  store i64 %289, i64* %PC.i609
  %290 = inttoptr i64 %287 to i64*
  %291 = load i64, i64* %290
  store i64 %291, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_4391c1, %struct.Memory** %MEMORY
  %loadMem_4391c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %RAX.i608
  %299 = add i64 %298, 6408
  %300 = load i64, i64* %PC.i607
  %301 = add i64 %300, 7
  store i64 %301, i64* %PC.i607
  %302 = inttoptr i64 %299 to i32*
  %303 = load i32, i32* %302
  %304 = sub i32 %303, 1
  %305 = icmp ult i32 %303, 1
  %306 = zext i1 %305 to i8
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %306, i8* %307, align 1
  %308 = and i32 %304, 255
  %309 = call i32 @llvm.ctpop.i32(i32 %308)
  %310 = trunc i32 %309 to i8
  %311 = and i8 %310, 1
  %312 = xor i8 %311, 1
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %312, i8* %313, align 1
  %314 = xor i32 %303, 1
  %315 = xor i32 %314, %304
  %316 = lshr i32 %315, 4
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %318, i8* %319, align 1
  %320 = icmp eq i32 %304, 0
  %321 = zext i1 %320 to i8
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %321, i8* %322, align 1
  %323 = lshr i32 %304, 31
  %324 = trunc i32 %323 to i8
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %324, i8* %325, align 1
  %326 = lshr i32 %303, 31
  %327 = xor i32 %323, %326
  %328 = add i32 %327, %326
  %329 = icmp eq i32 %328, 2
  %330 = zext i1 %329 to i8
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %330, i8* %331, align 1
  store %struct.Memory* %loadMem_4391c5, %struct.Memory** %MEMORY
  %loadMem_4391cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 33
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %PC.i606
  %336 = add i64 %335, 369
  %337 = load i64, i64* %PC.i606
  %338 = add i64 %337, 6
  %339 = load i64, i64* %PC.i606
  %340 = add i64 %339, 6
  store i64 %340, i64* %PC.i606
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %342 = load i8, i8* %341, align 1
  %343 = icmp ne i8 %342, 0
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %345 = load i8, i8* %344, align 1
  %346 = icmp ne i8 %345, 0
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %348 = load i8, i8* %347, align 1
  %349 = icmp ne i8 %348, 0
  %350 = xor i1 %346, %349
  %351 = or i1 %343, %350
  %352 = zext i1 %351 to i8
  store i8 %352, i8* %BRANCH_TAKEN, align 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %354 = select i1 %351, i64 %336, i64 %338
  store i64 %354, i64* %353, align 8
  store %struct.Memory* %loadMem_4391cc, %struct.Memory** %MEMORY
  %loadBr_4391cc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4391cc = icmp eq i8 %loadBr_4391cc, 1
  br i1 %cmpBr_4391cc, label %block_.L_43933d, label %block_4391d2

block_4391d2:                                     ; preds = %block_.L_4391c1
  %loadMem_4391d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %356 = getelementptr inbounds %struct.GPR, %struct.GPR* %355, i32 0, i32 33
  %357 = getelementptr inbounds %struct.Reg, %struct.Reg* %356, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %357 to i64*
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 15
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %360 to i64*
  %361 = load i64, i64* %RBP.i605
  %362 = sub i64 %361, 32
  %363 = load i64, i64* %PC.i604
  %364 = add i64 %363, 7
  store i64 %364, i64* %PC.i604
  %365 = inttoptr i64 %362 to i32*
  store i32 0, i32* %365
  store %struct.Memory* %loadMem_4391d2, %struct.Memory** %MEMORY
  br label %block_.L_4391d9

block_.L_4391d9:                                  ; preds = %block_.L_439237, %block_4391d2
  %loadMem_4391d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 33
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RAX.i602 = bitcast %union.anon* %371 to i64*
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 15
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %RBP.i603
  %376 = sub i64 %375, 32
  %377 = load i64, i64* %PC.i601
  %378 = add i64 %377, 3
  store i64 %378, i64* %PC.i601
  %379 = inttoptr i64 %376 to i32*
  %380 = load i32, i32* %379
  %381 = zext i32 %380 to i64
  store i64 %381, i64* %RAX.i602, align 8
  store %struct.Memory* %loadMem_4391d9, %struct.Memory** %MEMORY
  %loadMem_4391dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 5
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RCX.i599 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 15
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %390 to i64*
  %391 = load i64, i64* %RBP.i600
  %392 = sub i64 %391, 16
  %393 = load i64, i64* %PC.i598
  %394 = add i64 %393, 4
  store i64 %394, i64* %PC.i598
  %395 = inttoptr i64 %392 to i64*
  %396 = load i64, i64* %395
  store i64 %396, i64* %RCX.i599, align 8
  store %struct.Memory* %loadMem_4391dc, %struct.Memory** %MEMORY
  %loadMem_4391e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 1
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %EAX.i596 = bitcast %union.anon* %402 to i32*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %405 to i64*
  %406 = load i32, i32* %EAX.i596
  %407 = zext i32 %406 to i64
  %408 = load i64, i64* %RCX.i597
  %409 = add i64 %408, 4
  %410 = load i64, i64* %PC.i595
  %411 = add i64 %410, 3
  store i64 %411, i64* %PC.i595
  %412 = inttoptr i64 %409 to i32*
  %413 = load i32, i32* %412
  %414 = sub i32 %406, %413
  %415 = icmp ult i32 %406, %413
  %416 = zext i1 %415 to i8
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %416, i8* %417, align 1
  %418 = and i32 %414, 255
  %419 = call i32 @llvm.ctpop.i32(i32 %418)
  %420 = trunc i32 %419 to i8
  %421 = and i8 %420, 1
  %422 = xor i8 %421, 1
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %422, i8* %423, align 1
  %424 = xor i32 %413, %406
  %425 = xor i32 %424, %414
  %426 = lshr i32 %425, 4
  %427 = trunc i32 %426 to i8
  %428 = and i8 %427, 1
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %428, i8* %429, align 1
  %430 = icmp eq i32 %414, 0
  %431 = zext i1 %430 to i8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %431, i8* %432, align 1
  %433 = lshr i32 %414, 31
  %434 = trunc i32 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %434, i8* %435, align 1
  %436 = lshr i32 %406, 31
  %437 = lshr i32 %413, 31
  %438 = xor i32 %437, %436
  %439 = xor i32 %433, %436
  %440 = add i32 %439, %438
  %441 = icmp eq i32 %440, 2
  %442 = zext i1 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %442, i8* %443, align 1
  store %struct.Memory* %loadMem_4391e0, %struct.Memory** %MEMORY
  %loadMem_4391e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %PC.i594
  %448 = add i64 %447, 327
  %449 = load i64, i64* %PC.i594
  %450 = add i64 %449, 6
  %451 = load i64, i64* %PC.i594
  %452 = add i64 %451, 6
  store i64 %452, i64* %PC.i594
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %454 = load i8, i8* %453, align 1
  %455 = icmp ne i8 %454, 0
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %457 = load i8, i8* %456, align 1
  %458 = icmp ne i8 %457, 0
  %459 = xor i1 %455, %458
  %460 = xor i1 %459, true
  %461 = zext i1 %460 to i8
  store i8 %461, i8* %BRANCH_TAKEN, align 1
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %463 = select i1 %459, i64 %450, i64 %448
  store i64 %463, i64* %462, align 8
  store %struct.Memory* %loadMem_4391e3, %struct.Memory** %MEMORY
  %loadBr_4391e3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4391e3 = icmp eq i8 %loadBr_4391e3, 1
  br i1 %cmpBr_4391e3, label %block_.L_43932a, label %block_4391e9

block_4391e9:                                     ; preds = %block_.L_4391d9
  %loadMem_4391e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %468 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %467, i64 0, i64 0
  %YMM0.i592 = bitcast %union.VectorReg* %468 to %"class.std::bitset"*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %470 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %469, i64 0, i64 0
  %XMM0.i593 = bitcast %union.VectorReg* %470 to %union.vec128_t*
  %471 = bitcast %"class.std::bitset"* %YMM0.i592 to i8*
  %472 = bitcast %"class.std::bitset"* %YMM0.i592 to i8*
  %473 = bitcast %union.vec128_t* %XMM0.i593 to i8*
  %474 = load i64, i64* %PC.i591
  %475 = add i64 %474, 3
  store i64 %475, i64* %PC.i591
  %476 = bitcast i8* %472 to i64*
  %477 = load i64, i64* %476, align 1
  %478 = getelementptr inbounds i8, i8* %472, i64 8
  %479 = bitcast i8* %478 to i64*
  %480 = load i64, i64* %479, align 1
  %481 = bitcast i8* %473 to i64*
  %482 = load i64, i64* %481, align 1
  %483 = getelementptr inbounds i8, i8* %473, i64 8
  %484 = bitcast i8* %483 to i64*
  %485 = load i64, i64* %484, align 1
  %486 = xor i64 %482, %477
  %487 = xor i64 %485, %480
  %488 = trunc i64 %486 to i32
  %489 = lshr i64 %486, 32
  %490 = trunc i64 %489 to i32
  %491 = bitcast i8* %471 to i32*
  store i32 %488, i32* %491, align 1
  %492 = getelementptr inbounds i8, i8* %471, i64 4
  %493 = bitcast i8* %492 to i32*
  store i32 %490, i32* %493, align 1
  %494 = trunc i64 %487 to i32
  %495 = getelementptr inbounds i8, i8* %471, i64 8
  %496 = bitcast i8* %495 to i32*
  store i32 %494, i32* %496, align 1
  %497 = lshr i64 %487, 32
  %498 = trunc i64 %497 to i32
  %499 = getelementptr inbounds i8, i8* %471, i64 12
  %500 = bitcast i8* %499 to i32*
  store i32 %498, i32* %500, align 1
  store %struct.Memory* %loadMem_4391e9, %struct.Memory** %MEMORY
  %loadMem_4391ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 33
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 1
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RAX.i589 = bitcast %union.anon* %506 to i64*
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %508 = getelementptr inbounds %struct.GPR, %struct.GPR* %507, i32 0, i32 15
  %509 = getelementptr inbounds %struct.Reg, %struct.Reg* %508, i32 0, i32 0
  %RBP.i590 = bitcast %union.anon* %509 to i64*
  %510 = load i64, i64* %RBP.i590
  %511 = sub i64 %510, 24
  %512 = load i64, i64* %PC.i588
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC.i588
  %514 = inttoptr i64 %511 to i64*
  %515 = load i64, i64* %514
  store i64 %515, i64* %RAX.i589, align 8
  store %struct.Memory* %loadMem_4391ec, %struct.Memory** %MEMORY
  %loadMem_4391f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i585 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 5
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RCX.i586 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 15
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RBP.i587 = bitcast %union.anon* %524 to i64*
  %525 = load i64, i64* %RBP.i587
  %526 = sub i64 %525, 32
  %527 = load i64, i64* %PC.i585
  %528 = add i64 %527, 4
  store i64 %528, i64* %PC.i585
  %529 = inttoptr i64 %526 to i32*
  %530 = load i32, i32* %529
  %531 = sext i32 %530 to i64
  store i64 %531, i64* %RCX.i586, align 8
  store %struct.Memory* %loadMem_4391f0, %struct.Memory** %MEMORY
  %loadMem_4391f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 33
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %534 to i64*
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 1
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %RAX.i582 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 5
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RCX.i583 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %541, i64 0, i64 1
  %YMM1.i584 = bitcast %union.VectorReg* %542 to %"class.std::bitset"*
  %543 = bitcast %"class.std::bitset"* %YMM1.i584 to i8*
  %544 = load i64, i64* %RAX.i582
  %545 = load i64, i64* %RCX.i583
  %546 = mul i64 %545, 4
  %547 = add i64 %546, %544
  %548 = load i64, i64* %PC.i581
  %549 = add i64 %548, 5
  store i64 %549, i64* %PC.i581
  %550 = inttoptr i64 %547 to float*
  %551 = load float, float* %550
  %552 = fpext float %551 to double
  %553 = bitcast i8* %543 to double*
  store double %552, double* %553, align 1
  store %struct.Memory* %loadMem_4391f4, %struct.Memory** %MEMORY
  %loadMem_4391f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %558 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %557, i64 0, i64 0
  %XMM0.i577 = bitcast %union.VectorReg* %558 to %union.vec128_t*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %560 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %559, i64 0, i64 1
  %XMM1.i578 = bitcast %union.VectorReg* %560 to %union.vec128_t*
  %561 = bitcast %union.vec128_t* %XMM1.i578 to i8*
  %562 = bitcast %union.vec128_t* %XMM0.i577 to i8*
  %563 = load i64, i64* %PC.i576
  %564 = add i64 %563, 4
  store i64 %564, i64* %PC.i576
  %565 = bitcast i8* %561 to double*
  %566 = load double, double* %565, align 1
  %567 = bitcast i8* %562 to double*
  %568 = load double, double* %567, align 1
  %569 = fcmp uno double %566, %568
  br i1 %569, label %570, label %582

; <label>:570:                                    ; preds = %block_4391e9
  %571 = fadd double %566, %568
  %572 = bitcast double %571 to i64
  %573 = and i64 %572, 9221120237041090560
  %574 = icmp eq i64 %573, 9218868437227405312
  %575 = and i64 %572, 2251799813685247
  %576 = icmp ne i64 %575, 0
  %577 = and i1 %574, %576
  br i1 %577, label %578, label %588

; <label>:578:                                    ; preds = %570
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %580 = load i64, i64* %579, align 8
  %581 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %580, %struct.Memory* %loadMem_4391f9)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:582:                                    ; preds = %block_4391e9
  %583 = fcmp ogt double %566, %568
  br i1 %583, label %588, label %584

; <label>:584:                                    ; preds = %582
  %585 = fcmp olt double %566, %568
  br i1 %585, label %588, label %586

; <label>:586:                                    ; preds = %584
  %587 = fcmp oeq double %566, %568
  br i1 %587, label %588, label %595

; <label>:588:                                    ; preds = %586, %584, %582, %570
  %589 = phi i8 [ 0, %582 ], [ 0, %584 ], [ 1, %586 ], [ 1, %570 ]
  %590 = phi i8 [ 0, %582 ], [ 0, %584 ], [ 0, %586 ], [ 1, %570 ]
  %591 = phi i8 [ 0, %582 ], [ 1, %584 ], [ 0, %586 ], [ 1, %570 ]
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %589, i8* %592, align 1
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %590, i8* %593, align 1
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %591, i8* %594, align 1
  br label %595

; <label>:595:                                    ; preds = %588, %586
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %596, align 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %597, align 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %598, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %578, %595
  %599 = phi %struct.Memory* [ %581, %578 ], [ %loadMem_4391f9, %595 ]
  store %struct.Memory* %599, %struct.Memory** %MEMORY
  %loadMem_4391fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i575 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %PC.i575
  %604 = add i64 %603, 37
  %605 = load i64, i64* %PC.i575
  %606 = add i64 %605, 6
  %607 = load i64, i64* %PC.i575
  %608 = add i64 %607, 6
  store i64 %608, i64* %PC.i575
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %610 = load i8, i8* %609, align 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %612 = load i8, i8* %611, align 1
  %613 = or i8 %612, %610
  %614 = icmp ne i8 %613, 0
  %615 = zext i1 %614 to i8
  store i8 %615, i8* %BRANCH_TAKEN, align 1
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %617 = select i1 %614, i64 %604, i64 %606
  store i64 %617, i64* %616, align 8
  store %struct.Memory* %loadMem_4391fd, %struct.Memory** %MEMORY
  %loadBr_4391fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4391fd = icmp eq i8 %loadBr_4391fd, 1
  br i1 %cmpBr_4391fd, label %block_.L_439222, label %block_439203

block_439203:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_439203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 1
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 15
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RBP.i574 = bitcast %union.anon* %626 to i64*
  %627 = load i64, i64* %RBP.i574
  %628 = sub i64 %627, 24
  %629 = load i64, i64* %PC.i572
  %630 = add i64 %629, 4
  store i64 %630, i64* %PC.i572
  %631 = inttoptr i64 %628 to i64*
  %632 = load i64, i64* %631
  store i64 %632, i64* %RAX.i573, align 8
  store %struct.Memory* %loadMem_439203, %struct.Memory** %MEMORY
  %loadMem_439207 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 5
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RCX.i570 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i571
  %643 = sub i64 %642, 32
  %644 = load i64, i64* %PC.i569
  %645 = add i64 %644, 4
  store i64 %645, i64* %PC.i569
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = sext i32 %647 to i64
  store i64 %648, i64* %RCX.i570, align 8
  store %struct.Memory* %loadMem_439207, %struct.Memory** %MEMORY
  %loadMem_43920b = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 1
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %RAX.i566 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 5
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RCX.i567 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %659 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %658, i64 0, i64 0
  %YMM0.i568 = bitcast %union.VectorReg* %659 to %"class.std::bitset"*
  %660 = bitcast %"class.std::bitset"* %YMM0.i568 to i8*
  %661 = load i64, i64* %RAX.i566
  %662 = load i64, i64* %RCX.i567
  %663 = mul i64 %662, 4
  %664 = add i64 %663, %661
  %665 = load i64, i64* %PC.i565
  %666 = add i64 %665, 5
  store i64 %666, i64* %PC.i565
  %667 = inttoptr i64 %664 to float*
  %668 = load float, float* %667
  %669 = fpext float %668 to double
  %670 = bitcast i8* %660 to double*
  store double %669, double* %670, align 1
  store %struct.Memory* %loadMem_43920b, %struct.Memory** %MEMORY
  %loadMem1_439210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 33
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %673 to i64*
  %674 = load i64, i64* %PC.i564
  %675 = add i64 %674, -228640
  %676 = load i64, i64* %PC.i564
  %677 = add i64 %676, 5
  %678 = load i64, i64* %PC.i564
  %679 = add i64 %678, 5
  store i64 %679, i64* %PC.i564
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %681 = load i64, i64* %680, align 8
  %682 = add i64 %681, -8
  %683 = inttoptr i64 %682 to i64*
  store i64 %677, i64* %683
  store i64 %682, i64* %680, align 8
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %675, i64* %684, align 8
  store %struct.Memory* %loadMem1_439210, %struct.Memory** %MEMORY
  %loadMem2_439210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439210 = load i64, i64* %3
  %685 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @log to i64), %struct.Memory* %loadMem2_439210)
  store %struct.Memory* %685, %struct.Memory** %MEMORY
  %loadMem_439215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 33
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %688 to i64*
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 15
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %693 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %692, i64 0, i64 0
  %XMM0.i560 = bitcast %union.VectorReg* %693 to %union.vec128_t*
  %694 = load i64, i64* %RBP.i559
  %695 = sub i64 %694, 856
  %696 = bitcast %union.vec128_t* %XMM0.i560 to i8*
  %697 = load i64, i64* %PC.i558
  %698 = add i64 %697, 8
  store i64 %698, i64* %PC.i558
  %699 = bitcast i8* %696 to double*
  %700 = load double, double* %699, align 1
  %701 = inttoptr i64 %695 to double*
  store double %700, double* %701
  store %struct.Memory* %loadMem_439215, %struct.Memory** %MEMORY
  %loadMem_43921d = load %struct.Memory*, %struct.Memory** %MEMORY
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %703 = getelementptr inbounds %struct.GPR, %struct.GPR* %702, i32 0, i32 33
  %704 = getelementptr inbounds %struct.Reg, %struct.Reg* %703, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %704 to i64*
  %705 = load i64, i64* %PC.i557
  %706 = add i64 %705, 26
  %707 = load i64, i64* %PC.i557
  %708 = add i64 %707, 5
  store i64 %708, i64* %PC.i557
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %706, i64* %709, align 8
  store %struct.Memory* %loadMem_43921d, %struct.Memory** %MEMORY
  br label %block_.L_439237

block_.L_439222:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_439222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %714 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %713, i64 0, i64 0
  %YMM0.i556 = bitcast %union.VectorReg* %714 to %"class.std::bitset"*
  %715 = bitcast %"class.std::bitset"* %YMM0.i556 to i8*
  %716 = load i64, i64* %PC.i555
  %717 = add i64 %716, ptrtoint (%G_0x1b6e6__rip__type* @G_0x1b6e6__rip_ to i64)
  %718 = load i64, i64* %PC.i555
  %719 = add i64 %718, 8
  store i64 %719, i64* %PC.i555
  %720 = inttoptr i64 %717 to double*
  %721 = load double, double* %720
  %722 = bitcast i8* %715 to double*
  store double %721, double* %722, align 1
  %723 = getelementptr inbounds i8, i8* %715, i64 8
  %724 = bitcast i8* %723 to double*
  store double 0.000000e+00, double* %724, align 1
  store %struct.Memory* %loadMem_439222, %struct.Memory** %MEMORY
  %loadMem_43922a = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 15
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 0
  %XMM0.i554 = bitcast %union.VectorReg* %732 to %union.vec128_t*
  %733 = load i64, i64* %RBP.i553
  %734 = sub i64 %733, 856
  %735 = bitcast %union.vec128_t* %XMM0.i554 to i8*
  %736 = load i64, i64* %PC.i552
  %737 = add i64 %736, 8
  store i64 %737, i64* %PC.i552
  %738 = bitcast i8* %735 to double*
  %739 = load double, double* %738, align 1
  %740 = inttoptr i64 %734 to double*
  store double %739, double* %740
  store %struct.Memory* %loadMem_43922a, %struct.Memory** %MEMORY
  %loadMem_439232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 33
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %PC.i551
  %745 = add i64 %744, 5
  %746 = load i64, i64* %PC.i551
  %747 = add i64 %746, 5
  store i64 %747, i64* %PC.i551
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %745, i64* %748, align 8
  store %struct.Memory* %loadMem_439232, %struct.Memory** %MEMORY
  br label %block_.L_439237

block_.L_439237:                                  ; preds = %block_.L_439222, %block_439203
  %loadMem_439237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 15
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %755, i64 0, i64 0
  %YMM0.i550 = bitcast %union.VectorReg* %756 to %"class.std::bitset"*
  %757 = bitcast %"class.std::bitset"* %YMM0.i550 to i8*
  %758 = load i64, i64* %RBP.i549
  %759 = sub i64 %758, 856
  %760 = load i64, i64* %PC.i548
  %761 = add i64 %760, 8
  store i64 %761, i64* %PC.i548
  %762 = inttoptr i64 %759 to double*
  %763 = load double, double* %762
  %764 = bitcast i8* %757 to double*
  store double %763, double* %764, align 1
  %765 = getelementptr inbounds i8, i8* %757, i64 8
  %766 = bitcast i8* %765 to double*
  store double 0.000000e+00, double* %766, align 1
  store %struct.Memory* %loadMem_439237, %struct.Memory** %MEMORY
  %loadMem_43923f = load %struct.Memory*, %struct.Memory** %MEMORY
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 33
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %769 to i64*
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 9
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %RSI.i547 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %PC.i546
  %774 = add i64 %773, 5
  store i64 %774, i64* %PC.i546
  store i64 3, i64* %RSI.i547, align 8
  store %struct.Memory* %loadMem_43923f, %struct.Memory** %MEMORY
  %loadMem_439244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 33
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %779 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %778, i64 0, i64 0
  %YMM0.i544 = bitcast %union.VectorReg* %779 to %"class.std::bitset"*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %780, i64 0, i64 0
  %XMM0.i545 = bitcast %union.VectorReg* %781 to %union.vec128_t*
  %782 = bitcast %"class.std::bitset"* %YMM0.i544 to i8*
  %783 = bitcast %union.vec128_t* %XMM0.i545 to i8*
  %784 = load i64, i64* %PC.i543
  %785 = add i64 %784, 4
  store i64 %785, i64* %PC.i543
  %786 = bitcast i8* %782 to <2 x i32>*
  %787 = load <2 x i32>, <2 x i32>* %786, align 1
  %788 = getelementptr inbounds i8, i8* %782, i64 8
  %789 = bitcast i8* %788 to <2 x i32>*
  %790 = load <2 x i32>, <2 x i32>* %789, align 1
  %791 = bitcast i8* %783 to double*
  %792 = load double, double* %791, align 1
  %793 = fptrunc double %792 to float
  %794 = bitcast i8* %782 to float*
  store float %793, float* %794, align 1
  %795 = extractelement <2 x i32> %787, i32 1
  %796 = getelementptr inbounds i8, i8* %782, i64 4
  %797 = bitcast i8* %796 to i32*
  store i32 %795, i32* %797, align 1
  %798 = extractelement <2 x i32> %790, i32 0
  %799 = bitcast i8* %788 to i32*
  store i32 %798, i32* %799, align 1
  %800 = extractelement <2 x i32> %790, i32 1
  %801 = getelementptr inbounds i8, i8* %782, i64 12
  %802 = bitcast i8* %801 to i32*
  store i32 %800, i32* %802, align 1
  store %struct.Memory* %loadMem_439244, %struct.Memory** %MEMORY
  %loadMem_439248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 1
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %808 to i64*
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %810 = getelementptr inbounds %struct.GPR, %struct.GPR* %809, i32 0, i32 15
  %811 = getelementptr inbounds %struct.Reg, %struct.Reg* %810, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %811 to i64*
  %812 = load i64, i64* %RBP.i542
  %813 = sub i64 %812, 32
  %814 = load i64, i64* %PC.i540
  %815 = add i64 %814, 4
  store i64 %815, i64* %PC.i540
  %816 = inttoptr i64 %813 to i32*
  %817 = load i32, i32* %816
  %818 = sext i32 %817 to i64
  store i64 %818, i64* %RAX.i541, align 8
  store %struct.Memory* %loadMem_439248, %struct.Memory** %MEMORY
  %loadMem_43924c = load %struct.Memory*, %struct.Memory** %MEMORY
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 33
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %821 to i64*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 15
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %829 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %828, i64 0, i64 0
  %XMM0.i539 = bitcast %union.VectorReg* %829 to %union.vec128_t*
  %830 = load i64, i64* %RBP.i538
  %831 = load i64, i64* %RAX.i537
  %832 = mul i64 %831, 4
  %833 = add i64 %830, -832
  %834 = add i64 %833, %832
  %835 = bitcast %union.vec128_t* %XMM0.i539 to i8*
  %836 = load i64, i64* %PC.i536
  %837 = add i64 %836, 9
  store i64 %837, i64* %PC.i536
  %838 = bitcast i8* %835 to <2 x float>*
  %839 = load <2 x float>, <2 x float>* %838, align 1
  %840 = extractelement <2 x float> %839, i32 0
  %841 = inttoptr i64 %834 to float*
  store float %840, float* %841
  store %struct.Memory* %loadMem_43924c, %struct.Memory** %MEMORY
  %loadMem_439255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 11
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RDI.i534 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 15
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RBP.i535
  %852 = sub i64 %851, 8
  %853 = load i64, i64* %PC.i533
  %854 = add i64 %853, 4
  store i64 %854, i64* %PC.i533
  %855 = inttoptr i64 %852 to i64*
  %856 = load i64, i64* %855
  store i64 %856, i64* %RDI.i534, align 8
  store %struct.Memory* %loadMem_439255, %struct.Memory** %MEMORY
  %loadMem_439259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 1
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 15
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %865 to i64*
  %866 = load i64, i64* %RBP.i532
  %867 = sub i64 %866, 16
  %868 = load i64, i64* %PC.i530
  %869 = add i64 %868, 4
  store i64 %869, i64* %PC.i530
  %870 = inttoptr i64 %867 to i64*
  %871 = load i64, i64* %870
  store i64 %871, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_439259, %struct.Memory** %MEMORY
  %loadMem_43925d = load %struct.Memory*, %struct.Memory** %MEMORY
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %873 = getelementptr inbounds %struct.GPR, %struct.GPR* %872, i32 0, i32 33
  %874 = getelementptr inbounds %struct.Reg, %struct.Reg* %873, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %874 to i64*
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %876 = getelementptr inbounds %struct.GPR, %struct.GPR* %875, i32 0, i32 1
  %877 = getelementptr inbounds %struct.Reg, %struct.Reg* %876, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %877 to i64*
  %878 = load i64, i64* %RAX.i529
  %879 = load i64, i64* %PC.i528
  %880 = add i64 %879, 6
  store i64 %880, i64* %PC.i528
  %881 = add i64 808, %878
  store i64 %881, i64* %RAX.i529, align 8
  %882 = icmp ult i64 %881, %878
  %883 = icmp ult i64 %881, 808
  %884 = or i1 %882, %883
  %885 = zext i1 %884 to i8
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %885, i8* %886, align 1
  %887 = trunc i64 %881 to i32
  %888 = and i32 %887, 255
  %889 = call i32 @llvm.ctpop.i32(i32 %888)
  %890 = trunc i32 %889 to i8
  %891 = and i8 %890, 1
  %892 = xor i8 %891, 1
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %892, i8* %893, align 1
  %894 = xor i64 808, %878
  %895 = xor i64 %894, %881
  %896 = lshr i64 %895, 4
  %897 = trunc i64 %896 to i8
  %898 = and i8 %897, 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %898, i8* %899, align 1
  %900 = icmp eq i64 %881, 0
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %901, i8* %902, align 1
  %903 = lshr i64 %881, 63
  %904 = trunc i64 %903 to i8
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %904, i8* %905, align 1
  %906 = lshr i64 %878, 63
  %907 = xor i64 %903, %906
  %908 = add i64 %907, %903
  %909 = icmp eq i64 %908, 2
  %910 = zext i1 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %910, i8* %911, align 1
  store %struct.Memory* %loadMem_43925d, %struct.Memory** %MEMORY
  %loadMem_439263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 5
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RCX.i526 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 15
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %920 to i64*
  %921 = load i64, i64* %RBP.i527
  %922 = sub i64 %921, 32
  %923 = load i64, i64* %PC.i525
  %924 = add i64 %923, 4
  store i64 %924, i64* %PC.i525
  %925 = inttoptr i64 %922 to i32*
  %926 = load i32, i32* %925
  %927 = sext i32 %926 to i64
  store i64 %927, i64* %RCX.i526, align 8
  store %struct.Memory* %loadMem_439263, %struct.Memory** %MEMORY
  %loadMem_439267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 5
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RCX.i524 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RCX.i524
  %935 = load i64, i64* %PC.i523
  %936 = add i64 %935, 4
  store i64 %936, i64* %PC.i523
  %937 = sext i64 %934 to i128
  %938 = and i128 %937, -18446744073709551616
  %939 = zext i64 %934 to i128
  %940 = or i128 %938, %939
  %941 = mul i128 28, %940
  %942 = trunc i128 %941 to i64
  store i64 %942, i64* %RCX.i524, align 8
  %943 = sext i64 %942 to i128
  %944 = icmp ne i128 %943, %941
  %945 = zext i1 %944 to i8
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %945, i8* %946, align 1
  %947 = trunc i128 %941 to i32
  %948 = and i32 %947, 255
  %949 = call i32 @llvm.ctpop.i32(i32 %948)
  %950 = trunc i32 %949 to i8
  %951 = and i8 %950, 1
  %952 = xor i8 %951, 1
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %952, i8* %953, align 1
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %954, align 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %955, align 1
  %956 = lshr i64 %942, 63
  %957 = trunc i64 %956 to i8
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %957, i8* %958, align 1
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %945, i8* %959, align 1
  store %struct.Memory* %loadMem_439267, %struct.Memory** %MEMORY
  %loadMem_43926b = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 5
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RAX.i521
  %970 = load i64, i64* %RCX.i522
  %971 = load i64, i64* %PC.i520
  %972 = add i64 %971, 3
  store i64 %972, i64* %PC.i520
  %973 = add i64 %970, %969
  store i64 %973, i64* %RAX.i521, align 8
  %974 = icmp ult i64 %973, %969
  %975 = icmp ult i64 %973, %970
  %976 = or i1 %974, %975
  %977 = zext i1 %976 to i8
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %977, i8* %978, align 1
  %979 = trunc i64 %973 to i32
  %980 = and i32 %979, 255
  %981 = call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %984, i8* %985, align 1
  %986 = xor i64 %970, %969
  %987 = xor i64 %986, %973
  %988 = lshr i64 %987, 4
  %989 = trunc i64 %988 to i8
  %990 = and i8 %989, 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %990, i8* %991, align 1
  %992 = icmp eq i64 %973, 0
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %993, i8* %994, align 1
  %995 = lshr i64 %973, 63
  %996 = trunc i64 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1
  %998 = lshr i64 %969, 63
  %999 = lshr i64 %970, 63
  %1000 = xor i64 %995, %998
  %1001 = xor i64 %995, %999
  %1002 = add i64 %1000, %1001
  %1003 = icmp eq i64 %1002, 2
  %1004 = zext i1 %1003 to i8
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1004, i8* %1005, align 1
  store %struct.Memory* %loadMem_43926b, %struct.Memory** %MEMORY
  %loadMem_43926e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1007 = getelementptr inbounds %struct.GPR, %struct.GPR* %1006, i32 0, i32 33
  %1008 = getelementptr inbounds %struct.Reg, %struct.Reg* %1007, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %1008 to i64*
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1010 = getelementptr inbounds %struct.GPR, %struct.GPR* %1009, i32 0, i32 1
  %1011 = getelementptr inbounds %struct.Reg, %struct.Reg* %1010, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %1011 to i64*
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 7
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %RDX.i519 = bitcast %union.anon* %1014 to i64*
  %1015 = load i64, i64* %RAX.i518
  %1016 = load i64, i64* %PC.i517
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %PC.i517
  store i64 %1015, i64* %RDX.i519, align 8
  store %struct.Memory* %loadMem_43926e, %struct.Memory** %MEMORY
  %loadMem1_439271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1020 to i64*
  %1021 = load i64, i64* %PC.i516
  %1022 = add i64 %1021, -69105
  %1023 = load i64, i64* %PC.i516
  %1024 = add i64 %1023, 5
  %1025 = load i64, i64* %PC.i516
  %1026 = add i64 %1025, 5
  store i64 %1026, i64* %PC.i516
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1028 = load i64, i64* %1027, align 8
  %1029 = add i64 %1028, -8
  %1030 = inttoptr i64 %1029 to i64*
  store i64 %1024, i64* %1030
  store i64 %1029, i64* %1027, align 8
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1022, i64* %1031, align 8
  store %struct.Memory* %loadMem1_439271, %struct.Memory** %MEMORY
  %loadMem2_439271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439271 = load i64, i64* %3
  %call2_439271 = call %struct.Memory* @sub_428480.Logp_cvec(%struct.State* %0, i64 %loadPC_439271, %struct.Memory* %loadMem2_439271)
  store %struct.Memory* %call2_439271, %struct.Memory** %MEMORY
  %loadMem_439276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 33
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 9
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RSI.i515 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %PC.i514
  %1039 = add i64 %1038, 5
  store i64 %1039, i64* %PC.i514
  store i64 2, i64* %RSI.i515, align 8
  store %struct.Memory* %loadMem_439276, %struct.Memory** %MEMORY
  %loadMem_43927b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 33
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 1
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 15
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %1048 to i64*
  %1049 = load i64, i64* %RBP.i513
  %1050 = sub i64 %1049, 32
  %1051 = load i64, i64* %PC.i511
  %1052 = add i64 %1051, 4
  store i64 %1052, i64* %PC.i511
  %1053 = inttoptr i64 %1050 to i32*
  %1054 = load i32, i32* %1053
  %1055 = sext i32 %1054 to i64
  store i64 %1055, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_43927b, %struct.Memory** %MEMORY
  %loadMem_43927f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RAX.i508 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 15
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1064 to i64*
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1066 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1065, i64 0, i64 0
  %YMM0.i510 = bitcast %union.VectorReg* %1066 to %"class.std::bitset"*
  %1067 = bitcast %"class.std::bitset"* %YMM0.i510 to i8*
  %1068 = bitcast %"class.std::bitset"* %YMM0.i510 to i8*
  %1069 = load i64, i64* %RBP.i509
  %1070 = load i64, i64* %RAX.i508
  %1071 = mul i64 %1070, 4
  %1072 = add i64 %1069, -832
  %1073 = add i64 %1072, %1071
  %1074 = load i64, i64* %PC.i507
  %1075 = add i64 %1074, 9
  store i64 %1075, i64* %PC.i507
  %1076 = bitcast i8* %1068 to <2 x float>*
  %1077 = load <2 x float>, <2 x float>* %1076, align 1
  %1078 = getelementptr inbounds i8, i8* %1068, i64 8
  %1079 = bitcast i8* %1078 to <2 x i32>*
  %1080 = load <2 x i32>, <2 x i32>* %1079, align 1
  %1081 = inttoptr i64 %1073 to float*
  %1082 = load float, float* %1081
  %1083 = extractelement <2 x float> %1077, i32 0
  %1084 = fadd float %1083, %1082
  %1085 = bitcast i8* %1067 to float*
  store float %1084, float* %1085, align 1
  %1086 = bitcast <2 x float> %1077 to <2 x i32>
  %1087 = extractelement <2 x i32> %1086, i32 1
  %1088 = getelementptr inbounds i8, i8* %1067, i64 4
  %1089 = bitcast i8* %1088 to i32*
  store i32 %1087, i32* %1089, align 1
  %1090 = extractelement <2 x i32> %1080, i32 0
  %1091 = getelementptr inbounds i8, i8* %1067, i64 8
  %1092 = bitcast i8* %1091 to i32*
  store i32 %1090, i32* %1092, align 1
  %1093 = extractelement <2 x i32> %1080, i32 1
  %1094 = getelementptr inbounds i8, i8* %1067, i64 12
  %1095 = bitcast i8* %1094 to i32*
  store i32 %1093, i32* %1095, align 1
  store %struct.Memory* %loadMem_43927f, %struct.Memory** %MEMORY
  %loadMem_439288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 15
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1106 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1105, i64 0, i64 0
  %XMM0.i506 = bitcast %union.VectorReg* %1106 to %union.vec128_t*
  %1107 = load i64, i64* %RBP.i505
  %1108 = load i64, i64* %RAX.i504
  %1109 = mul i64 %1108, 4
  %1110 = add i64 %1107, -832
  %1111 = add i64 %1110, %1109
  %1112 = bitcast %union.vec128_t* %XMM0.i506 to i8*
  %1113 = load i64, i64* %PC.i503
  %1114 = add i64 %1113, 9
  store i64 %1114, i64* %PC.i503
  %1115 = bitcast i8* %1112 to <2 x float>*
  %1116 = load <2 x float>, <2 x float>* %1115, align 1
  %1117 = extractelement <2 x float> %1116, i32 0
  %1118 = inttoptr i64 %1111 to float*
  store float %1117, float* %1118
  store %struct.Memory* %loadMem_439288, %struct.Memory** %MEMORY
  %loadMem_439291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 15
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RBP.i502 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %RBP.i502
  %1129 = sub i64 %1128, 8
  %1130 = load i64, i64* %PC.i500
  %1131 = add i64 %1130, 4
  store i64 %1131, i64* %PC.i500
  %1132 = inttoptr i64 %1129 to i64*
  %1133 = load i64, i64* %1132
  store i64 %1133, i64* %RAX.i501, align 8
  store %struct.Memory* %loadMem_439291, %struct.Memory** %MEMORY
  %loadMem_439295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 33
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 1
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %1139 to i64*
  %1140 = load i64, i64* %RAX.i499
  %1141 = load i64, i64* %PC.i498
  %1142 = add i64 %1141, 4
  store i64 %1142, i64* %PC.i498
  %1143 = add i64 12, %1140
  store i64 %1143, i64* %RAX.i499, align 8
  %1144 = icmp ult i64 %1143, %1140
  %1145 = icmp ult i64 %1143, 12
  %1146 = or i1 %1144, %1145
  %1147 = zext i1 %1146 to i8
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1147, i8* %1148, align 1
  %1149 = trunc i64 %1143 to i32
  %1150 = and i32 %1149, 255
  %1151 = call i32 @llvm.ctpop.i32(i32 %1150)
  %1152 = trunc i32 %1151 to i8
  %1153 = and i8 %1152, 1
  %1154 = xor i8 %1153, 1
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1154, i8* %1155, align 1
  %1156 = xor i64 12, %1140
  %1157 = xor i64 %1156, %1143
  %1158 = lshr i64 %1157, 4
  %1159 = trunc i64 %1158 to i8
  %1160 = and i8 %1159, 1
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1160, i8* %1161, align 1
  %1162 = icmp eq i64 %1143, 0
  %1163 = zext i1 %1162 to i8
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1163, i8* %1164, align 1
  %1165 = lshr i64 %1143, 63
  %1166 = trunc i64 %1165 to i8
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1166, i8* %1167, align 1
  %1168 = lshr i64 %1140, 63
  %1169 = xor i64 %1165, %1168
  %1170 = add i64 %1169, %1165
  %1171 = icmp eq i64 %1170, 2
  %1172 = zext i1 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1172, i8* %1173, align 1
  store %struct.Memory* %loadMem_439295, %struct.Memory** %MEMORY
  %loadMem_439299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 33
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 5
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 15
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %RBP.i497
  %1184 = sub i64 %1183, 16
  %1185 = load i64, i64* %PC.i495
  %1186 = add i64 %1185, 4
  store i64 %1186, i64* %PC.i495
  %1187 = inttoptr i64 %1184 to i64*
  %1188 = load i64, i64* %1187
  store i64 %1188, i64* %RCX.i496, align 8
  store %struct.Memory* %loadMem_439299, %struct.Memory** %MEMORY
  %loadMem_43929d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %1191 to i64*
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 5
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %1194 to i64*
  %1195 = load i64, i64* %RCX.i494
  %1196 = load i64, i64* %PC.i493
  %1197 = add i64 %1196, 7
  store i64 %1197, i64* %PC.i493
  %1198 = add i64 808, %1195
  store i64 %1198, i64* %RCX.i494, align 8
  %1199 = icmp ult i64 %1198, %1195
  %1200 = icmp ult i64 %1198, 808
  %1201 = or i1 %1199, %1200
  %1202 = zext i1 %1201 to i8
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1202, i8* %1203, align 1
  %1204 = trunc i64 %1198 to i32
  %1205 = and i32 %1204, 255
  %1206 = call i32 @llvm.ctpop.i32(i32 %1205)
  %1207 = trunc i32 %1206 to i8
  %1208 = and i8 %1207, 1
  %1209 = xor i8 %1208, 1
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1209, i8* %1210, align 1
  %1211 = xor i64 808, %1195
  %1212 = xor i64 %1211, %1198
  %1213 = lshr i64 %1212, 4
  %1214 = trunc i64 %1213 to i8
  %1215 = and i8 %1214, 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1215, i8* %1216, align 1
  %1217 = icmp eq i64 %1198, 0
  %1218 = zext i1 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1218, i8* %1219, align 1
  %1220 = lshr i64 %1198, 63
  %1221 = trunc i64 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i64 %1195, 63
  %1224 = xor i64 %1220, %1223
  %1225 = add i64 %1224, %1220
  %1226 = icmp eq i64 %1225, 2
  %1227 = zext i1 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1227, i8* %1228, align 1
  store %struct.Memory* %loadMem_43929d, %struct.Memory** %MEMORY
  %loadMem_4392a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 33
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 7
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 15
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %1237 to i64*
  %1238 = load i64, i64* %RBP.i492
  %1239 = sub i64 %1238, 32
  %1240 = load i64, i64* %PC.i490
  %1241 = add i64 %1240, 4
  store i64 %1241, i64* %PC.i490
  %1242 = inttoptr i64 %1239 to i32*
  %1243 = load i32, i32* %1242
  %1244 = sext i32 %1243 to i64
  store i64 %1244, i64* %RDX.i491, align 8
  store %struct.Memory* %loadMem_4392a4, %struct.Memory** %MEMORY
  %loadMem_4392a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 33
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 7
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RDX.i489 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %RDX.i489
  %1252 = load i64, i64* %PC.i488
  %1253 = add i64 %1252, 4
  store i64 %1253, i64* %PC.i488
  %1254 = sext i64 %1251 to i128
  %1255 = and i128 %1254, -18446744073709551616
  %1256 = zext i64 %1251 to i128
  %1257 = or i128 %1255, %1256
  %1258 = mul i128 28, %1257
  %1259 = trunc i128 %1258 to i64
  store i64 %1259, i64* %RDX.i489, align 8
  %1260 = sext i64 %1259 to i128
  %1261 = icmp ne i128 %1260, %1258
  %1262 = zext i1 %1261 to i8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1262, i8* %1263, align 1
  %1264 = trunc i128 %1258 to i32
  %1265 = and i32 %1264, 255
  %1266 = call i32 @llvm.ctpop.i32(i32 %1265)
  %1267 = trunc i32 %1266 to i8
  %1268 = and i8 %1267, 1
  %1269 = xor i8 %1268, 1
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1269, i8* %1270, align 1
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1271, align 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1272, align 1
  %1273 = lshr i64 %1259, 63
  %1274 = trunc i64 %1273 to i8
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1274, i8* %1275, align 1
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1262, i8* %1276, align 1
  store %struct.Memory* %loadMem_4392a8, %struct.Memory** %MEMORY
  %loadMem_4392ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %1279 to i64*
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 5
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %RCX.i486 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 7
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RDX.i487 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RCX.i486
  %1287 = load i64, i64* %RDX.i487
  %1288 = load i64, i64* %PC.i485
  %1289 = add i64 %1288, 3
  store i64 %1289, i64* %PC.i485
  %1290 = add i64 %1287, %1286
  store i64 %1290, i64* %RCX.i486, align 8
  %1291 = icmp ult i64 %1290, %1286
  %1292 = icmp ult i64 %1290, %1287
  %1293 = or i1 %1291, %1292
  %1294 = zext i1 %1293 to i8
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1294, i8* %1295, align 1
  %1296 = trunc i64 %1290 to i32
  %1297 = and i32 %1296, 255
  %1298 = call i32 @llvm.ctpop.i32(i32 %1297)
  %1299 = trunc i32 %1298 to i8
  %1300 = and i8 %1299, 1
  %1301 = xor i8 %1300, 1
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1301, i8* %1302, align 1
  %1303 = xor i64 %1287, %1286
  %1304 = xor i64 %1303, %1290
  %1305 = lshr i64 %1304, 4
  %1306 = trunc i64 %1305 to i8
  %1307 = and i8 %1306, 1
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1307, i8* %1308, align 1
  %1309 = icmp eq i64 %1290, 0
  %1310 = zext i1 %1309 to i8
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1310, i8* %1311, align 1
  %1312 = lshr i64 %1290, 63
  %1313 = trunc i64 %1312 to i8
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1313, i8* %1314, align 1
  %1315 = lshr i64 %1286, 63
  %1316 = lshr i64 %1287, 63
  %1317 = xor i64 %1312, %1315
  %1318 = xor i64 %1312, %1316
  %1319 = add i64 %1317, %1318
  %1320 = icmp eq i64 %1319, 2
  %1321 = zext i1 %1320 to i8
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1321, i8* %1322, align 1
  store %struct.Memory* %loadMem_4392ac, %struct.Memory** %MEMORY
  %loadMem_4392af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 33
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 5
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %1328 to i64*
  %1329 = load i64, i64* %RCX.i484
  %1330 = load i64, i64* %PC.i483
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %PC.i483
  %1332 = add i64 12, %1329
  store i64 %1332, i64* %RCX.i484, align 8
  %1333 = icmp ult i64 %1332, %1329
  %1334 = icmp ult i64 %1332, 12
  %1335 = or i1 %1333, %1334
  %1336 = zext i1 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1336, i8* %1337, align 1
  %1338 = trunc i64 %1332 to i32
  %1339 = and i32 %1338, 255
  %1340 = call i32 @llvm.ctpop.i32(i32 %1339)
  %1341 = trunc i32 %1340 to i8
  %1342 = and i8 %1341, 1
  %1343 = xor i8 %1342, 1
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1343, i8* %1344, align 1
  %1345 = xor i64 12, %1329
  %1346 = xor i64 %1345, %1332
  %1347 = lshr i64 %1346, 4
  %1348 = trunc i64 %1347 to i8
  %1349 = and i8 %1348, 1
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1349, i8* %1350, align 1
  %1351 = icmp eq i64 %1332, 0
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1352, i8* %1353, align 1
  %1354 = lshr i64 %1332, 63
  %1355 = trunc i64 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1355, i8* %1356, align 1
  %1357 = lshr i64 %1329, 63
  %1358 = xor i64 %1354, %1357
  %1359 = add i64 %1358, %1354
  %1360 = icmp eq i64 %1359, 2
  %1361 = zext i1 %1360 to i8
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1361, i8* %1362, align 1
  store %struct.Memory* %loadMem_4392af, %struct.Memory** %MEMORY
  %loadMem_4392b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 1
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %1368 to i64*
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1370 = getelementptr inbounds %struct.GPR, %struct.GPR* %1369, i32 0, i32 11
  %1371 = getelementptr inbounds %struct.Reg, %struct.Reg* %1370, i32 0, i32 0
  %RDI.i482 = bitcast %union.anon* %1371 to i64*
  %1372 = load i64, i64* %RAX.i481
  %1373 = load i64, i64* %PC.i480
  %1374 = add i64 %1373, 3
  store i64 %1374, i64* %PC.i480
  store i64 %1372, i64* %RDI.i482, align 8
  store %struct.Memory* %loadMem_4392b3, %struct.Memory** %MEMORY
  %loadMem_4392b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 5
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RCX.i478 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 7
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %1383 to i64*
  %1384 = load i64, i64* %RCX.i478
  %1385 = load i64, i64* %PC.i477
  %1386 = add i64 %1385, 3
  store i64 %1386, i64* %PC.i477
  store i64 %1384, i64* %RDX.i479, align 8
  store %struct.Memory* %loadMem_4392b6, %struct.Memory** %MEMORY
  %loadMem1_4392b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 33
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %PC.i476
  %1391 = add i64 %1390, -69177
  %1392 = load i64, i64* %PC.i476
  %1393 = add i64 %1392, 5
  %1394 = load i64, i64* %PC.i476
  %1395 = add i64 %1394, 5
  store i64 %1395, i64* %PC.i476
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1397 = load i64, i64* %1396, align 8
  %1398 = add i64 %1397, -8
  %1399 = inttoptr i64 %1398 to i64*
  store i64 %1393, i64* %1399
  store i64 %1398, i64* %1396, align 8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1391, i64* %1400, align 8
  store %struct.Memory* %loadMem1_4392b9, %struct.Memory** %MEMORY
  %loadMem2_4392b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4392b9 = load i64, i64* %3
  %call2_4392b9 = call %struct.Memory* @sub_428480.Logp_cvec(%struct.State* %0, i64 %loadPC_4392b9, %struct.Memory* %loadMem2_4392b9)
  store %struct.Memory* %call2_4392b9, %struct.Memory** %MEMORY
  %loadMem_4392be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 9
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RSI.i475 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %PC.i474
  %1408 = add i64 %1407, 5
  store i64 %1408, i64* %PC.i474
  store i64 2, i64* %RSI.i475, align 8
  store %struct.Memory* %loadMem_4392be, %struct.Memory** %MEMORY
  %loadMem_4392c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 1
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 15
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RBP.i473
  %1419 = sub i64 %1418, 32
  %1420 = load i64, i64* %PC.i471
  %1421 = add i64 %1420, 4
  store i64 %1421, i64* %PC.i471
  %1422 = inttoptr i64 %1419 to i32*
  %1423 = load i32, i32* %1422
  %1424 = sext i32 %1423 to i64
  store i64 %1424, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_4392c3, %struct.Memory** %MEMORY
  %loadMem_4392c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 33
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 1
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 15
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1434, i64 0, i64 0
  %YMM0.i470 = bitcast %union.VectorReg* %1435 to %"class.std::bitset"*
  %1436 = bitcast %"class.std::bitset"* %YMM0.i470 to i8*
  %1437 = bitcast %"class.std::bitset"* %YMM0.i470 to i8*
  %1438 = load i64, i64* %RBP.i469
  %1439 = load i64, i64* %RAX.i468
  %1440 = mul i64 %1439, 4
  %1441 = add i64 %1438, -832
  %1442 = add i64 %1441, %1440
  %1443 = load i64, i64* %PC.i467
  %1444 = add i64 %1443, 9
  store i64 %1444, i64* %PC.i467
  %1445 = bitcast i8* %1437 to <2 x float>*
  %1446 = load <2 x float>, <2 x float>* %1445, align 1
  %1447 = getelementptr inbounds i8, i8* %1437, i64 8
  %1448 = bitcast i8* %1447 to <2 x i32>*
  %1449 = load <2 x i32>, <2 x i32>* %1448, align 1
  %1450 = inttoptr i64 %1442 to float*
  %1451 = load float, float* %1450
  %1452 = extractelement <2 x float> %1446, i32 0
  %1453 = fadd float %1452, %1451
  %1454 = bitcast i8* %1436 to float*
  store float %1453, float* %1454, align 1
  %1455 = bitcast <2 x float> %1446 to <2 x i32>
  %1456 = extractelement <2 x i32> %1455, i32 1
  %1457 = getelementptr inbounds i8, i8* %1436, i64 4
  %1458 = bitcast i8* %1457 to i32*
  store i32 %1456, i32* %1458, align 1
  %1459 = extractelement <2 x i32> %1449, i32 0
  %1460 = getelementptr inbounds i8, i8* %1436, i64 8
  %1461 = bitcast i8* %1460 to i32*
  store i32 %1459, i32* %1461, align 1
  %1462 = extractelement <2 x i32> %1449, i32 1
  %1463 = getelementptr inbounds i8, i8* %1436, i64 12
  %1464 = bitcast i8* %1463 to i32*
  store i32 %1462, i32* %1464, align 1
  store %struct.Memory* %loadMem_4392c7, %struct.Memory** %MEMORY
  %loadMem_4392d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 33
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 1
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %1470 to i64*
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 15
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %1473 to i64*
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1475 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1474, i64 0, i64 0
  %XMM0.i466 = bitcast %union.VectorReg* %1475 to %union.vec128_t*
  %1476 = load i64, i64* %RBP.i465
  %1477 = load i64, i64* %RAX.i464
  %1478 = mul i64 %1477, 4
  %1479 = add i64 %1476, -832
  %1480 = add i64 %1479, %1478
  %1481 = bitcast %union.vec128_t* %XMM0.i466 to i8*
  %1482 = load i64, i64* %PC.i463
  %1483 = add i64 %1482, 9
  store i64 %1483, i64* %PC.i463
  %1484 = bitcast i8* %1481 to <2 x float>*
  %1485 = load <2 x float>, <2 x float>* %1484, align 1
  %1486 = extractelement <2 x float> %1485, i32 0
  %1487 = inttoptr i64 %1480 to float*
  store float %1486, float* %1487
  store %struct.Memory* %loadMem_4392d0, %struct.Memory** %MEMORY
  %loadMem_4392d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 33
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 1
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 15
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RBP.i462 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %RBP.i462
  %1498 = sub i64 %1497, 8
  %1499 = load i64, i64* %PC.i460
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %PC.i460
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501
  store i64 %1502, i64* %RAX.i461, align 8
  store %struct.Memory* %loadMem_4392d9, %struct.Memory** %MEMORY
  %loadMem_4392dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 1
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %RAX.i459
  %1510 = load i64, i64* %PC.i458
  %1511 = add i64 %1510, 4
  store i64 %1511, i64* %PC.i458
  %1512 = add i64 20, %1509
  store i64 %1512, i64* %RAX.i459, align 8
  %1513 = icmp ult i64 %1512, %1509
  %1514 = icmp ult i64 %1512, 20
  %1515 = or i1 %1513, %1514
  %1516 = zext i1 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1516, i8* %1517, align 1
  %1518 = trunc i64 %1512 to i32
  %1519 = and i32 %1518, 255
  %1520 = call i32 @llvm.ctpop.i32(i32 %1519)
  %1521 = trunc i32 %1520 to i8
  %1522 = and i8 %1521, 1
  %1523 = xor i8 %1522, 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1523, i8* %1524, align 1
  %1525 = xor i64 20, %1509
  %1526 = xor i64 %1525, %1512
  %1527 = lshr i64 %1526, 4
  %1528 = trunc i64 %1527 to i8
  %1529 = and i8 %1528, 1
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1529, i8* %1530, align 1
  %1531 = icmp eq i64 %1512, 0
  %1532 = zext i1 %1531 to i8
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1532, i8* %1533, align 1
  %1534 = lshr i64 %1512, 63
  %1535 = trunc i64 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1535, i8* %1536, align 1
  %1537 = lshr i64 %1509, 63
  %1538 = xor i64 %1534, %1537
  %1539 = add i64 %1538, %1534
  %1540 = icmp eq i64 %1539, 2
  %1541 = zext i1 %1540 to i8
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1541, i8* %1542, align 1
  store %struct.Memory* %loadMem_4392dd, %struct.Memory** %MEMORY
  %loadMem_4392e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 5
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 15
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %RBP.i457
  %1553 = sub i64 %1552, 16
  %1554 = load i64, i64* %PC.i455
  %1555 = add i64 %1554, 4
  store i64 %1555, i64* %PC.i455
  %1556 = inttoptr i64 %1553 to i64*
  %1557 = load i64, i64* %1556
  store i64 %1557, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_4392e1, %struct.Memory** %MEMORY
  %loadMem_4392e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 5
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RCX.i454
  %1565 = load i64, i64* %PC.i453
  %1566 = add i64 %1565, 7
  store i64 %1566, i64* %PC.i453
  %1567 = add i64 808, %1564
  store i64 %1567, i64* %RCX.i454, align 8
  %1568 = icmp ult i64 %1567, %1564
  %1569 = icmp ult i64 %1567, 808
  %1570 = or i1 %1568, %1569
  %1571 = zext i1 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1571, i8* %1572, align 1
  %1573 = trunc i64 %1567 to i32
  %1574 = and i32 %1573, 255
  %1575 = call i32 @llvm.ctpop.i32(i32 %1574)
  %1576 = trunc i32 %1575 to i8
  %1577 = and i8 %1576, 1
  %1578 = xor i8 %1577, 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1578, i8* %1579, align 1
  %1580 = xor i64 808, %1564
  %1581 = xor i64 %1580, %1567
  %1582 = lshr i64 %1581, 4
  %1583 = trunc i64 %1582 to i8
  %1584 = and i8 %1583, 1
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1584, i8* %1585, align 1
  %1586 = icmp eq i64 %1567, 0
  %1587 = zext i1 %1586 to i8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1587, i8* %1588, align 1
  %1589 = lshr i64 %1567, 63
  %1590 = trunc i64 %1589 to i8
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1590, i8* %1591, align 1
  %1592 = lshr i64 %1564, 63
  %1593 = xor i64 %1589, %1592
  %1594 = add i64 %1593, %1589
  %1595 = icmp eq i64 %1594, 2
  %1596 = zext i1 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1596, i8* %1597, align 1
  store %struct.Memory* %loadMem_4392e5, %struct.Memory** %MEMORY
  %loadMem_4392ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 33
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %1600 to i64*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 7
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RDX.i451 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 15
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %1606 to i64*
  %1607 = load i64, i64* %RBP.i452
  %1608 = sub i64 %1607, 32
  %1609 = load i64, i64* %PC.i450
  %1610 = add i64 %1609, 4
  store i64 %1610, i64* %PC.i450
  %1611 = inttoptr i64 %1608 to i32*
  %1612 = load i32, i32* %1611
  %1613 = sext i32 %1612 to i64
  store i64 %1613, i64* %RDX.i451, align 8
  store %struct.Memory* %loadMem_4392ec, %struct.Memory** %MEMORY
  %loadMem_4392f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 7
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %1619 to i64*
  %1620 = load i64, i64* %RDX.i449
  %1621 = load i64, i64* %PC.i448
  %1622 = add i64 %1621, 4
  store i64 %1622, i64* %PC.i448
  %1623 = sext i64 %1620 to i128
  %1624 = and i128 %1623, -18446744073709551616
  %1625 = zext i64 %1620 to i128
  %1626 = or i128 %1624, %1625
  %1627 = mul i128 28, %1626
  %1628 = trunc i128 %1627 to i64
  store i64 %1628, i64* %RDX.i449, align 8
  %1629 = sext i64 %1628 to i128
  %1630 = icmp ne i128 %1629, %1627
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1631, i8* %1632, align 1
  %1633 = trunc i128 %1627 to i32
  %1634 = and i32 %1633, 255
  %1635 = call i32 @llvm.ctpop.i32(i32 %1634)
  %1636 = trunc i32 %1635 to i8
  %1637 = and i8 %1636, 1
  %1638 = xor i8 %1637, 1
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1638, i8* %1639, align 1
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1640, align 1
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1641, align 1
  %1642 = lshr i64 %1628, 63
  %1643 = trunc i64 %1642 to i8
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1643, i8* %1644, align 1
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1631, i8* %1645, align 1
  store %struct.Memory* %loadMem_4392f0, %struct.Memory** %MEMORY
  %loadMem_4392f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 33
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 5
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 7
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RDX.i447 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %RCX.i446
  %1656 = load i64, i64* %RDX.i447
  %1657 = load i64, i64* %PC.i445
  %1658 = add i64 %1657, 3
  store i64 %1658, i64* %PC.i445
  %1659 = add i64 %1656, %1655
  store i64 %1659, i64* %RCX.i446, align 8
  %1660 = icmp ult i64 %1659, %1655
  %1661 = icmp ult i64 %1659, %1656
  %1662 = or i1 %1660, %1661
  %1663 = zext i1 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1663, i8* %1664, align 1
  %1665 = trunc i64 %1659 to i32
  %1666 = and i32 %1665, 255
  %1667 = call i32 @llvm.ctpop.i32(i32 %1666)
  %1668 = trunc i32 %1667 to i8
  %1669 = and i8 %1668, 1
  %1670 = xor i8 %1669, 1
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1670, i8* %1671, align 1
  %1672 = xor i64 %1656, %1655
  %1673 = xor i64 %1672, %1659
  %1674 = lshr i64 %1673, 4
  %1675 = trunc i64 %1674 to i8
  %1676 = and i8 %1675, 1
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1676, i8* %1677, align 1
  %1678 = icmp eq i64 %1659, 0
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1679, i8* %1680, align 1
  %1681 = lshr i64 %1659, 63
  %1682 = trunc i64 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1682, i8* %1683, align 1
  %1684 = lshr i64 %1655, 63
  %1685 = lshr i64 %1656, 63
  %1686 = xor i64 %1681, %1684
  %1687 = xor i64 %1681, %1685
  %1688 = add i64 %1686, %1687
  %1689 = icmp eq i64 %1688, 2
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1690, i8* %1691, align 1
  store %struct.Memory* %loadMem_4392f4, %struct.Memory** %MEMORY
  %loadMem_4392f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 5
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RCX.i444
  %1699 = load i64, i64* %PC.i443
  %1700 = add i64 %1699, 4
  store i64 %1700, i64* %PC.i443
  %1701 = add i64 20, %1698
  store i64 %1701, i64* %RCX.i444, align 8
  %1702 = icmp ult i64 %1701, %1698
  %1703 = icmp ult i64 %1701, 20
  %1704 = or i1 %1702, %1703
  %1705 = zext i1 %1704 to i8
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1705, i8* %1706, align 1
  %1707 = trunc i64 %1701 to i32
  %1708 = and i32 %1707, 255
  %1709 = call i32 @llvm.ctpop.i32(i32 %1708)
  %1710 = trunc i32 %1709 to i8
  %1711 = and i8 %1710, 1
  %1712 = xor i8 %1711, 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1712, i8* %1713, align 1
  %1714 = xor i64 20, %1698
  %1715 = xor i64 %1714, %1701
  %1716 = lshr i64 %1715, 4
  %1717 = trunc i64 %1716 to i8
  %1718 = and i8 %1717, 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1718, i8* %1719, align 1
  %1720 = icmp eq i64 %1701, 0
  %1721 = zext i1 %1720 to i8
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1721, i8* %1722, align 1
  %1723 = lshr i64 %1701, 63
  %1724 = trunc i64 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1724, i8* %1725, align 1
  %1726 = lshr i64 %1698, 63
  %1727 = xor i64 %1723, %1726
  %1728 = add i64 %1727, %1723
  %1729 = icmp eq i64 %1728, 2
  %1730 = zext i1 %1729 to i8
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1730, i8* %1731, align 1
  store %struct.Memory* %loadMem_4392f7, %struct.Memory** %MEMORY
  %loadMem_4392fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 1
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 11
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RDI.i442 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RAX.i441
  %1742 = load i64, i64* %PC.i440
  %1743 = add i64 %1742, 3
  store i64 %1743, i64* %PC.i440
  store i64 %1741, i64* %RDI.i442, align 8
  store %struct.Memory* %loadMem_4392fb, %struct.Memory** %MEMORY
  %loadMem_4392fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 5
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 7
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %RCX.i439
  %1754 = load i64, i64* %PC.i438
  %1755 = add i64 %1754, 3
  store i64 %1755, i64* %PC.i438
  store i64 %1753, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4392fe, %struct.Memory** %MEMORY
  %loadMem1_439301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 33
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %1758 to i64*
  %1759 = load i64, i64* %PC.i437
  %1760 = add i64 %1759, -69249
  %1761 = load i64, i64* %PC.i437
  %1762 = add i64 %1761, 5
  %1763 = load i64, i64* %PC.i437
  %1764 = add i64 %1763, 5
  store i64 %1764, i64* %PC.i437
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1766 = load i64, i64* %1765, align 8
  %1767 = add i64 %1766, -8
  %1768 = inttoptr i64 %1767 to i64*
  store i64 %1762, i64* %1768
  store i64 %1767, i64* %1765, align 8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1760, i64* %1769, align 8
  store %struct.Memory* %loadMem1_439301, %struct.Memory** %MEMORY
  %loadMem2_439301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439301 = load i64, i64* %3
  %call2_439301 = call %struct.Memory* @sub_428480.Logp_cvec(%struct.State* %0, i64 %loadPC_439301, %struct.Memory* %loadMem2_439301)
  store %struct.Memory* %call2_439301, %struct.Memory** %MEMORY
  %loadMem_439306 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 33
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1772 to i64*
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 1
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %RAX.i435 = bitcast %union.anon* %1775 to i64*
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 15
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1778 to i64*
  %1779 = load i64, i64* %RBP.i436
  %1780 = sub i64 %1779, 32
  %1781 = load i64, i64* %PC.i434
  %1782 = add i64 %1781, 4
  store i64 %1782, i64* %PC.i434
  %1783 = inttoptr i64 %1780 to i32*
  %1784 = load i32, i32* %1783
  %1785 = sext i32 %1784 to i64
  store i64 %1785, i64* %RAX.i435, align 8
  store %struct.Memory* %loadMem_439306, %struct.Memory** %MEMORY
  %loadMem_43930a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 33
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 1
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 15
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %1794 to i64*
  %1795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1795, i64 0, i64 0
  %YMM0.i433 = bitcast %union.VectorReg* %1796 to %"class.std::bitset"*
  %1797 = bitcast %"class.std::bitset"* %YMM0.i433 to i8*
  %1798 = bitcast %"class.std::bitset"* %YMM0.i433 to i8*
  %1799 = load i64, i64* %RBP.i432
  %1800 = load i64, i64* %RAX.i431
  %1801 = mul i64 %1800, 4
  %1802 = add i64 %1799, -832
  %1803 = add i64 %1802, %1801
  %1804 = load i64, i64* %PC.i430
  %1805 = add i64 %1804, 9
  store i64 %1805, i64* %PC.i430
  %1806 = bitcast i8* %1798 to <2 x float>*
  %1807 = load <2 x float>, <2 x float>* %1806, align 1
  %1808 = getelementptr inbounds i8, i8* %1798, i64 8
  %1809 = bitcast i8* %1808 to <2 x i32>*
  %1810 = load <2 x i32>, <2 x i32>* %1809, align 1
  %1811 = inttoptr i64 %1803 to float*
  %1812 = load float, float* %1811
  %1813 = extractelement <2 x float> %1807, i32 0
  %1814 = fadd float %1813, %1812
  %1815 = bitcast i8* %1797 to float*
  store float %1814, float* %1815, align 1
  %1816 = bitcast <2 x float> %1807 to <2 x i32>
  %1817 = extractelement <2 x i32> %1816, i32 1
  %1818 = getelementptr inbounds i8, i8* %1797, i64 4
  %1819 = bitcast i8* %1818 to i32*
  store i32 %1817, i32* %1819, align 1
  %1820 = extractelement <2 x i32> %1810, i32 0
  %1821 = getelementptr inbounds i8, i8* %1797, i64 8
  %1822 = bitcast i8* %1821 to i32*
  store i32 %1820, i32* %1822, align 1
  %1823 = extractelement <2 x i32> %1810, i32 1
  %1824 = getelementptr inbounds i8, i8* %1797, i64 12
  %1825 = bitcast i8* %1824 to i32*
  store i32 %1823, i32* %1825, align 1
  store %struct.Memory* %loadMem_43930a, %struct.Memory** %MEMORY
  %loadMem_439313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 33
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 1
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %1831 to i64*
  %1832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1833 = getelementptr inbounds %struct.GPR, %struct.GPR* %1832, i32 0, i32 15
  %1834 = getelementptr inbounds %struct.Reg, %struct.Reg* %1833, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %1834 to i64*
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1836 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1835, i64 0, i64 0
  %XMM0.i429 = bitcast %union.VectorReg* %1836 to %union.vec128_t*
  %1837 = load i64, i64* %RBP.i428
  %1838 = load i64, i64* %RAX.i427
  %1839 = mul i64 %1838, 4
  %1840 = add i64 %1837, -832
  %1841 = add i64 %1840, %1839
  %1842 = bitcast %union.vec128_t* %XMM0.i429 to i8*
  %1843 = load i64, i64* %PC.i426
  %1844 = add i64 %1843, 9
  store i64 %1844, i64* %PC.i426
  %1845 = bitcast i8* %1842 to <2 x float>*
  %1846 = load <2 x float>, <2 x float>* %1845, align 1
  %1847 = extractelement <2 x float> %1846, i32 0
  %1848 = inttoptr i64 %1841 to float*
  store float %1847, float* %1848
  store %struct.Memory* %loadMem_439313, %struct.Memory** %MEMORY
  %loadMem_43931c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 1
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 15
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %1857 to i64*
  %1858 = load i64, i64* %RBP.i425
  %1859 = sub i64 %1858, 32
  %1860 = load i64, i64* %PC.i423
  %1861 = add i64 %1860, 3
  store i64 %1861, i64* %PC.i423
  %1862 = inttoptr i64 %1859 to i32*
  %1863 = load i32, i32* %1862
  %1864 = zext i32 %1863 to i64
  store i64 %1864, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_43931c, %struct.Memory** %MEMORY
  %loadMem_43931f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 33
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %1867 to i64*
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 1
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %1870 to i64*
  %1871 = load i64, i64* %RAX.i422
  %1872 = load i64, i64* %PC.i421
  %1873 = add i64 %1872, 3
  store i64 %1873, i64* %PC.i421
  %1874 = trunc i64 %1871 to i32
  %1875 = add i32 1, %1874
  %1876 = zext i32 %1875 to i64
  store i64 %1876, i64* %RAX.i422, align 8
  %1877 = icmp ult i32 %1875, %1874
  %1878 = icmp ult i32 %1875, 1
  %1879 = or i1 %1877, %1878
  %1880 = zext i1 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1880, i8* %1881, align 1
  %1882 = and i32 %1875, 255
  %1883 = call i32 @llvm.ctpop.i32(i32 %1882)
  %1884 = trunc i32 %1883 to i8
  %1885 = and i8 %1884, 1
  %1886 = xor i8 %1885, 1
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1886, i8* %1887, align 1
  %1888 = xor i64 1, %1871
  %1889 = trunc i64 %1888 to i32
  %1890 = xor i32 %1889, %1875
  %1891 = lshr i32 %1890, 4
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1893, i8* %1894, align 1
  %1895 = icmp eq i32 %1875, 0
  %1896 = zext i1 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1896, i8* %1897, align 1
  %1898 = lshr i32 %1875, 31
  %1899 = trunc i32 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i32 %1874, 31
  %1902 = xor i32 %1898, %1901
  %1903 = add i32 %1902, %1898
  %1904 = icmp eq i32 %1903, 2
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1905, i8* %1906, align 1
  store %struct.Memory* %loadMem_43931f, %struct.Memory** %MEMORY
  %loadMem_439322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 1
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %EAX.i419 = bitcast %union.anon* %1912 to i32*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 15
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %RBP.i420
  %1917 = sub i64 %1916, 32
  %1918 = load i32, i32* %EAX.i419
  %1919 = zext i32 %1918 to i64
  %1920 = load i64, i64* %PC.i418
  %1921 = add i64 %1920, 3
  store i64 %1921, i64* %PC.i418
  %1922 = inttoptr i64 %1917 to i32*
  store i32 %1918, i32* %1922
  store %struct.Memory* %loadMem_439322, %struct.Memory** %MEMORY
  %loadMem_439325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %PC.i417
  %1927 = add i64 %1926, -332
  %1928 = load i64, i64* %PC.i417
  %1929 = add i64 %1928, 5
  store i64 %1929, i64* %PC.i417
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1927, i64* %1930, align 8
  store %struct.Memory* %loadMem_439325, %struct.Memory** %MEMORY
  br label %block_.L_4391d9

block_.L_43932a:                                  ; preds = %block_.L_4391d9
  %loadMem_43932a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 11
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RDI.i415 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 15
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1939 to i64*
  %1940 = load i64, i64* %RBP.i416
  %1941 = sub i64 %1940, 832
  %1942 = load i64, i64* %PC.i414
  %1943 = add i64 %1942, 7
  store i64 %1943, i64* %PC.i414
  store i64 %1941, i64* %RDI.i415, align 8
  store %struct.Memory* %loadMem_43932a, %struct.Memory** %MEMORY
  %loadMem_439331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 1
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RAX.i412 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 15
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1952 to i64*
  %1953 = load i64, i64* %RBP.i413
  %1954 = sub i64 %1953, 16
  %1955 = load i64, i64* %PC.i411
  %1956 = add i64 %1955, 4
  store i64 %1956, i64* %PC.i411
  %1957 = inttoptr i64 %1954 to i64*
  %1958 = load i64, i64* %1957
  store i64 %1958, i64* %RAX.i412, align 8
  store %struct.Memory* %loadMem_439331, %struct.Memory** %MEMORY
  %loadMem_439335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %1964 to i64*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 9
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RSI.i410 = bitcast %union.anon* %1967 to i64*
  %1968 = load i64, i64* %RAX.i409
  %1969 = add i64 %1968, 4
  %1970 = load i64, i64* %PC.i408
  %1971 = add i64 %1970, 3
  store i64 %1971, i64* %PC.i408
  %1972 = inttoptr i64 %1969 to i32*
  %1973 = load i32, i32* %1972
  %1974 = zext i32 %1973 to i64
  store i64 %1974, i64* %RSI.i410, align 8
  store %struct.Memory* %loadMem_439335, %struct.Memory** %MEMORY
  %loadMem1_439338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %1977 to i64*
  %1978 = load i64, i64* %PC.i407
  %1979 = add i64 %1978, -69704
  %1980 = load i64, i64* %PC.i407
  %1981 = add i64 %1980, 5
  %1982 = load i64, i64* %PC.i407
  %1983 = add i64 %1982, 5
  store i64 %1983, i64* %PC.i407
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1985 = load i64, i64* %1984, align 8
  %1986 = add i64 %1985, -8
  %1987 = inttoptr i64 %1986 to i64*
  store i64 %1981, i64* %1987
  store i64 %1986, i64* %1984, align 8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1979, i64* %1988, align 8
  store %struct.Memory* %loadMem1_439338, %struct.Memory** %MEMORY
  %loadMem2_439338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439338 = load i64, i64* %3
  %call2_439338 = call %struct.Memory* @sub_4282f0.LogNorm(%struct.State* %0, i64 %loadPC_439338, %struct.Memory* %loadMem2_439338)
  store %struct.Memory* %call2_439338, %struct.Memory** %MEMORY
  br label %block_.L_43933d

block_.L_43933d:                                  ; preds = %block_.L_43932a, %block_.L_4391c1, %block_4391b4
  %loadMem_43933d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 9
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %RSI.i406 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %PC.i405
  %1996 = add i64 %1995, 5
  store i64 %1996, i64* %PC.i405
  store i64 3, i64* %RSI.i406, align 8
  store %struct.Memory* %loadMem_43933d, %struct.Memory** %MEMORY
  %loadMem_439342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 11
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RDI.i403 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 15
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %2005 to i64*
  %2006 = load i64, i64* %RBP.i404
  %2007 = sub i64 %2006, 8
  %2008 = load i64, i64* %PC.i402
  %2009 = add i64 %2008, 4
  store i64 %2009, i64* %PC.i402
  %2010 = inttoptr i64 %2007 to i64*
  %2011 = load i64, i64* %2010
  store i64 %2011, i64* %RDI.i403, align 8
  store %struct.Memory* %loadMem_439342, %struct.Memory** %MEMORY
  %loadMem1_439346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %2014 to i64*
  %2015 = load i64, i64* %PC.i401
  %2016 = add i64 %2015, 101706
  %2017 = load i64, i64* %PC.i401
  %2018 = add i64 %2017, 5
  %2019 = load i64, i64* %PC.i401
  %2020 = add i64 %2019, 5
  store i64 %2020, i64* %PC.i401
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2022 = load i64, i64* %2021, align 8
  %2023 = add i64 %2022, -8
  %2024 = inttoptr i64 %2023 to i64*
  store i64 %2018, i64* %2024
  store i64 %2023, i64* %2021, align 8
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2016, i64* %2025, align 8
  store %struct.Memory* %loadMem1_439346, %struct.Memory** %MEMORY
  %loadMem2_439346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439346 = load i64, i64* %3
  %call2_439346 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64 %loadPC_439346, %struct.Memory* %loadMem2_439346)
  store %struct.Memory* %call2_439346, %struct.Memory** %MEMORY
  %loadMem_43934b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 15
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2033 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2032, i64 0, i64 0
  %XMM0.i400 = bitcast %union.VectorReg* %2033 to %union.vec128_t*
  %2034 = load i64, i64* %RBP.i399
  %2035 = sub i64 %2034, 836
  %2036 = bitcast %union.vec128_t* %XMM0.i400 to i8*
  %2037 = load i64, i64* %PC.i398
  %2038 = add i64 %2037, 8
  store i64 %2038, i64* %PC.i398
  %2039 = bitcast i8* %2036 to <2 x float>*
  %2040 = load <2 x float>, <2 x float>* %2039, align 1
  %2041 = extractelement <2 x float> %2040, i32 0
  %2042 = inttoptr i64 %2035 to float*
  store float %2041, float* %2042
  store %struct.Memory* %loadMem_43934b, %struct.Memory** %MEMORY
  %loadMem_439353 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 33
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 11
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RDI.i396 = bitcast %union.anon* %2048 to i64*
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 15
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %2051 to i64*
  %2052 = load i64, i64* %RBP.i397
  %2053 = sub i64 %2052, 8
  %2054 = load i64, i64* %PC.i395
  %2055 = add i64 %2054, 4
  store i64 %2055, i64* %PC.i395
  %2056 = inttoptr i64 %2053 to i64*
  %2057 = load i64, i64* %2056
  store i64 %2057, i64* %RDI.i396, align 8
  store %struct.Memory* %loadMem_439353, %struct.Memory** %MEMORY
  %loadMem_439357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2060 to i64*
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2062 = getelementptr inbounds %struct.GPR, %struct.GPR* %2061, i32 0, i32 11
  %2063 = getelementptr inbounds %struct.Reg, %struct.Reg* %2062, i32 0, i32 0
  %RDI.i393 = bitcast %union.anon* %2063 to i64*
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2064, i64 0, i64 0
  %YMM0.i394 = bitcast %union.VectorReg* %2065 to %"class.std::bitset"*
  %2066 = bitcast %"class.std::bitset"* %YMM0.i394 to i8*
  %2067 = load i64, i64* %RDI.i393
  %2068 = add i64 %2067, 12
  %2069 = load i64, i64* %PC.i392
  %2070 = add i64 %2069, 5
  store i64 %2070, i64* %PC.i392
  %2071 = inttoptr i64 %2068 to float*
  %2072 = load float, float* %2071
  %2073 = bitcast i8* %2066 to float*
  store float %2072, float* %2073, align 1
  %2074 = getelementptr inbounds i8, i8* %2066, i64 4
  %2075 = bitcast i8* %2074 to float*
  store float 0.000000e+00, float* %2075, align 1
  %2076 = getelementptr inbounds i8, i8* %2066, i64 8
  %2077 = bitcast i8* %2076 to float*
  store float 0.000000e+00, float* %2077, align 1
  %2078 = getelementptr inbounds i8, i8* %2066, i64 12
  %2079 = bitcast i8* %2078 to float*
  store float 0.000000e+00, float* %2079, align 1
  store %struct.Memory* %loadMem_439357, %struct.Memory** %MEMORY
  %loadMem_43935c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 11
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RDI.i390 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 15
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %2088 to i64*
  %2089 = load i64, i64* %RBP.i391
  %2090 = sub i64 %2089, 8
  %2091 = load i64, i64* %PC.i389
  %2092 = add i64 %2091, 4
  store i64 %2092, i64* %PC.i389
  %2093 = inttoptr i64 %2090 to i64*
  %2094 = load i64, i64* %2093
  store i64 %2094, i64* %RDI.i390, align 8
  store %struct.Memory* %loadMem_43935c, %struct.Memory** %MEMORY
  %loadMem_439360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 11
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RDI.i387 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2101, i64 0, i64 0
  %YMM0.i388 = bitcast %union.VectorReg* %2102 to %"class.std::bitset"*
  %2103 = bitcast %"class.std::bitset"* %YMM0.i388 to i8*
  %2104 = bitcast %"class.std::bitset"* %YMM0.i388 to i8*
  %2105 = load i64, i64* %RDI.i387
  %2106 = add i64 %2105, 16
  %2107 = load i64, i64* %PC.i386
  %2108 = add i64 %2107, 5
  store i64 %2108, i64* %PC.i386
  %2109 = bitcast i8* %2104 to <2 x float>*
  %2110 = load <2 x float>, <2 x float>* %2109, align 1
  %2111 = getelementptr inbounds i8, i8* %2104, i64 8
  %2112 = bitcast i8* %2111 to <2 x i32>*
  %2113 = load <2 x i32>, <2 x i32>* %2112, align 1
  %2114 = inttoptr i64 %2106 to float*
  %2115 = load float, float* %2114
  %2116 = extractelement <2 x float> %2110, i32 0
  %2117 = fadd float %2116, %2115
  %2118 = bitcast i8* %2103 to float*
  store float %2117, float* %2118, align 1
  %2119 = bitcast <2 x float> %2110 to <2 x i32>
  %2120 = extractelement <2 x i32> %2119, i32 1
  %2121 = getelementptr inbounds i8, i8* %2103, i64 4
  %2122 = bitcast i8* %2121 to i32*
  store i32 %2120, i32* %2122, align 1
  %2123 = extractelement <2 x i32> %2113, i32 0
  %2124 = getelementptr inbounds i8, i8* %2103, i64 8
  %2125 = bitcast i8* %2124 to i32*
  store i32 %2123, i32* %2125, align 1
  %2126 = extractelement <2 x i32> %2113, i32 1
  %2127 = getelementptr inbounds i8, i8* %2103, i64 12
  %2128 = bitcast i8* %2127 to i32*
  store i32 %2126, i32* %2128, align 1
  store %struct.Memory* %loadMem_439360, %struct.Memory** %MEMORY
  %loadMem_439365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2130 = getelementptr inbounds %struct.GPR, %struct.GPR* %2129, i32 0, i32 33
  %2131 = getelementptr inbounds %struct.Reg, %struct.Reg* %2130, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %2131 to i64*
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 15
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2136 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2135, i64 0, i64 0
  %XMM0.i385 = bitcast %union.VectorReg* %2136 to %union.vec128_t*
  %2137 = load i64, i64* %RBP.i384
  %2138 = sub i64 %2137, 844
  %2139 = bitcast %union.vec128_t* %XMM0.i385 to i8*
  %2140 = load i64, i64* %PC.i383
  %2141 = add i64 %2140, 8
  store i64 %2141, i64* %PC.i383
  %2142 = bitcast i8* %2139 to <2 x float>*
  %2143 = load <2 x float>, <2 x float>* %2142, align 1
  %2144 = extractelement <2 x float> %2143, i32 0
  %2145 = inttoptr i64 %2138 to float*
  store float %2144, float* %2145
  store %struct.Memory* %loadMem_439365, %struct.Memory** %MEMORY
  %loadMem_43936d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 11
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RDI.i381 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 15
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RBP.i382
  %2156 = sub i64 %2155, 8
  %2157 = load i64, i64* %PC.i380
  %2158 = add i64 %2157, 4
  store i64 %2158, i64* %PC.i380
  %2159 = inttoptr i64 %2156 to i64*
  %2160 = load i64, i64* %2159
  store i64 %2160, i64* %RDI.i381, align 8
  store %struct.Memory* %loadMem_43936d, %struct.Memory** %MEMORY
  %loadMem_439371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 11
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RDI.i378 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2168 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2167, i64 0, i64 0
  %YMM0.i379 = bitcast %union.VectorReg* %2168 to %"class.std::bitset"*
  %2169 = bitcast %"class.std::bitset"* %YMM0.i379 to i8*
  %2170 = load i64, i64* %RDI.i378
  %2171 = add i64 %2170, 20
  %2172 = load i64, i64* %PC.i377
  %2173 = add i64 %2172, 5
  store i64 %2173, i64* %PC.i377
  %2174 = inttoptr i64 %2171 to float*
  %2175 = load float, float* %2174
  %2176 = bitcast i8* %2169 to float*
  store float %2175, float* %2176, align 1
  %2177 = getelementptr inbounds i8, i8* %2169, i64 4
  %2178 = bitcast i8* %2177 to float*
  store float 0.000000e+00, float* %2178, align 1
  %2179 = getelementptr inbounds i8, i8* %2169, i64 8
  %2180 = bitcast i8* %2179 to float*
  store float 0.000000e+00, float* %2180, align 1
  %2181 = getelementptr inbounds i8, i8* %2169, i64 12
  %2182 = bitcast i8* %2181 to float*
  store float 0.000000e+00, float* %2182, align 1
  store %struct.Memory* %loadMem_439371, %struct.Memory** %MEMORY
  %loadMem_439376 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %2185 to i64*
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2187 = getelementptr inbounds %struct.GPR, %struct.GPR* %2186, i32 0, i32 11
  %2188 = getelementptr inbounds %struct.Reg, %struct.Reg* %2187, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %2188 to i64*
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 15
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %2191 to i64*
  %2192 = load i64, i64* %RBP.i376
  %2193 = sub i64 %2192, 8
  %2194 = load i64, i64* %PC.i374
  %2195 = add i64 %2194, 4
  store i64 %2195, i64* %PC.i374
  %2196 = inttoptr i64 %2193 to i64*
  %2197 = load i64, i64* %2196
  store i64 %2197, i64* %RDI.i375, align 8
  store %struct.Memory* %loadMem_439376, %struct.Memory** %MEMORY
  %loadMem_43937a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2199 = getelementptr inbounds %struct.GPR, %struct.GPR* %2198, i32 0, i32 33
  %2200 = getelementptr inbounds %struct.Reg, %struct.Reg* %2199, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %2200 to i64*
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2202 = getelementptr inbounds %struct.GPR, %struct.GPR* %2201, i32 0, i32 11
  %2203 = getelementptr inbounds %struct.Reg, %struct.Reg* %2202, i32 0, i32 0
  %RDI.i372 = bitcast %union.anon* %2203 to i64*
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2204, i64 0, i64 0
  %YMM0.i373 = bitcast %union.VectorReg* %2205 to %"class.std::bitset"*
  %2206 = bitcast %"class.std::bitset"* %YMM0.i373 to i8*
  %2207 = bitcast %"class.std::bitset"* %YMM0.i373 to i8*
  %2208 = load i64, i64* %RDI.i372
  %2209 = add i64 %2208, 24
  %2210 = load i64, i64* %PC.i371
  %2211 = add i64 %2210, 5
  store i64 %2211, i64* %PC.i371
  %2212 = bitcast i8* %2207 to <2 x float>*
  %2213 = load <2 x float>, <2 x float>* %2212, align 1
  %2214 = getelementptr inbounds i8, i8* %2207, i64 8
  %2215 = bitcast i8* %2214 to <2 x i32>*
  %2216 = load <2 x i32>, <2 x i32>* %2215, align 1
  %2217 = inttoptr i64 %2209 to float*
  %2218 = load float, float* %2217
  %2219 = extractelement <2 x float> %2213, i32 0
  %2220 = fadd float %2219, %2218
  %2221 = bitcast i8* %2206 to float*
  store float %2220, float* %2221, align 1
  %2222 = bitcast <2 x float> %2213 to <2 x i32>
  %2223 = extractelement <2 x i32> %2222, i32 1
  %2224 = getelementptr inbounds i8, i8* %2206, i64 4
  %2225 = bitcast i8* %2224 to i32*
  store i32 %2223, i32* %2225, align 1
  %2226 = extractelement <2 x i32> %2216, i32 0
  %2227 = getelementptr inbounds i8, i8* %2206, i64 8
  %2228 = bitcast i8* %2227 to i32*
  store i32 %2226, i32* %2228, align 1
  %2229 = extractelement <2 x i32> %2216, i32 1
  %2230 = getelementptr inbounds i8, i8* %2206, i64 12
  %2231 = bitcast i8* %2230 to i32*
  store i32 %2229, i32* %2231, align 1
  store %struct.Memory* %loadMem_43937a, %struct.Memory** %MEMORY
  %loadMem_43937f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 33
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %2234 to i64*
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 15
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2238, i64 0, i64 0
  %XMM0.i370 = bitcast %union.VectorReg* %2239 to %union.vec128_t*
  %2240 = load i64, i64* %RBP.i369
  %2241 = sub i64 %2240, 840
  %2242 = bitcast %union.vec128_t* %XMM0.i370 to i8*
  %2243 = load i64, i64* %PC.i368
  %2244 = add i64 %2243, 8
  store i64 %2244, i64* %PC.i368
  %2245 = bitcast i8* %2242 to <2 x float>*
  %2246 = load <2 x float>, <2 x float>* %2245, align 1
  %2247 = extractelement <2 x float> %2246, i32 0
  %2248 = inttoptr i64 %2241 to float*
  store float %2247, float* %2248
  store %struct.Memory* %loadMem_43937f, %struct.Memory** %MEMORY
  %loadMem_439387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 15
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %2254 to i64*
  %2255 = load i64, i64* %RBP.i367
  %2256 = sub i64 %2255, 28
  %2257 = load i64, i64* %PC.i366
  %2258 = add i64 %2257, 7
  store i64 %2258, i64* %PC.i366
  %2259 = inttoptr i64 %2256 to i32*
  store i32 0, i32* %2259
  store %struct.Memory* %loadMem_439387, %struct.Memory** %MEMORY
  br label %block_.L_43938e

block_.L_43938e:                                  ; preds = %block_.L_4395e6, %block_.L_43933d
  %loadMem_43938e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 15
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RBP.i365
  %2267 = sub i64 %2266, 28
  %2268 = load i64, i64* %PC.i364
  %2269 = add i64 %2268, 4
  store i64 %2269, i64* %PC.i364
  %2270 = inttoptr i64 %2267 to i32*
  %2271 = load i32, i32* %2270
  %2272 = sub i32 %2271, 7
  %2273 = icmp ult i32 %2271, 7
  %2274 = zext i1 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2274, i8* %2275, align 1
  %2276 = and i32 %2272, 255
  %2277 = call i32 @llvm.ctpop.i32(i32 %2276)
  %2278 = trunc i32 %2277 to i8
  %2279 = and i8 %2278, 1
  %2280 = xor i8 %2279, 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2280, i8* %2281, align 1
  %2282 = xor i32 %2271, 7
  %2283 = xor i32 %2282, %2272
  %2284 = lshr i32 %2283, 4
  %2285 = trunc i32 %2284 to i8
  %2286 = and i8 %2285, 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2286, i8* %2287, align 1
  %2288 = icmp eq i32 %2272, 0
  %2289 = zext i1 %2288 to i8
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2289, i8* %2290, align 1
  %2291 = lshr i32 %2272, 31
  %2292 = trunc i32 %2291 to i8
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2292, i8* %2293, align 1
  %2294 = lshr i32 %2271, 31
  %2295 = xor i32 %2291, %2294
  %2296 = add i32 %2295, %2294
  %2297 = icmp eq i32 %2296, 2
  %2298 = zext i1 %2297 to i8
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2298, i8* %2299, align 1
  store %struct.Memory* %loadMem_43938e, %struct.Memory** %MEMORY
  %loadMem_439392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 33
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %2302 to i64*
  %2303 = load i64, i64* %PC.i363
  %2304 = add i64 %2303, 631
  %2305 = load i64, i64* %PC.i363
  %2306 = add i64 %2305, 6
  %2307 = load i64, i64* %PC.i363
  %2308 = add i64 %2307, 6
  store i64 %2308, i64* %PC.i363
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2310 = load i8, i8* %2309, align 1
  %2311 = icmp ne i8 %2310, 0
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2313 = load i8, i8* %2312, align 1
  %2314 = icmp ne i8 %2313, 0
  %2315 = xor i1 %2311, %2314
  %2316 = xor i1 %2315, true
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %BRANCH_TAKEN, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2319 = select i1 %2315, i64 %2306, i64 %2304
  store i64 %2319, i64* %2318, align 8
  store %struct.Memory* %loadMem_439392, %struct.Memory** %MEMORY
  %loadBr_439392 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439392 = icmp eq i8 %loadBr_439392, 1
  br i1 %cmpBr_439392, label %block_.L_439609, label %block_439398

block_439398:                                     ; preds = %block_.L_43938e
  %loadMem_439398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2324 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2323, i64 0, i64 0
  %YMM0.i361 = bitcast %union.VectorReg* %2324 to %"class.std::bitset"*
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2326 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2325, i64 0, i64 0
  %XMM0.i362 = bitcast %union.VectorReg* %2326 to %union.vec128_t*
  %2327 = bitcast %"class.std::bitset"* %YMM0.i361 to i8*
  %2328 = bitcast %"class.std::bitset"* %YMM0.i361 to i8*
  %2329 = bitcast %union.vec128_t* %XMM0.i362 to i8*
  %2330 = load i64, i64* %PC.i360
  %2331 = add i64 %2330, 3
  store i64 %2331, i64* %PC.i360
  %2332 = bitcast i8* %2328 to i64*
  %2333 = load i64, i64* %2332, align 1
  %2334 = getelementptr inbounds i8, i8* %2328, i64 8
  %2335 = bitcast i8* %2334 to i64*
  %2336 = load i64, i64* %2335, align 1
  %2337 = bitcast i8* %2329 to i64*
  %2338 = load i64, i64* %2337, align 1
  %2339 = getelementptr inbounds i8, i8* %2329, i64 8
  %2340 = bitcast i8* %2339 to i64*
  %2341 = load i64, i64* %2340, align 1
  %2342 = xor i64 %2338, %2333
  %2343 = xor i64 %2341, %2336
  %2344 = trunc i64 %2342 to i32
  %2345 = lshr i64 %2342, 32
  %2346 = trunc i64 %2345 to i32
  %2347 = bitcast i8* %2327 to i32*
  store i32 %2344, i32* %2347, align 1
  %2348 = getelementptr inbounds i8, i8* %2327, i64 4
  %2349 = bitcast i8* %2348 to i32*
  store i32 %2346, i32* %2349, align 1
  %2350 = trunc i64 %2343 to i32
  %2351 = getelementptr inbounds i8, i8* %2327, i64 8
  %2352 = bitcast i8* %2351 to i32*
  store i32 %2350, i32* %2352, align 1
  %2353 = lshr i64 %2343, 32
  %2354 = trunc i64 %2353 to i32
  %2355 = getelementptr inbounds i8, i8* %2327, i64 12
  %2356 = bitcast i8* %2355 to i32*
  store i32 %2354, i32* %2356, align 1
  store %struct.Memory* %loadMem_439398, %struct.Memory** %MEMORY
  %loadMem_43939b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 15
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2364 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2363, i64 0, i64 0
  %XMM0.i359 = bitcast %union.VectorReg* %2364 to %union.vec128_t*
  %2365 = load i64, i64* %RBP.i358
  %2366 = sub i64 %2365, 848
  %2367 = bitcast %union.vec128_t* %XMM0.i359 to i8*
  %2368 = load i64, i64* %PC.i357
  %2369 = add i64 %2368, 8
  store i64 %2369, i64* %PC.i357
  %2370 = bitcast i8* %2367 to <2 x float>*
  %2371 = load <2 x float>, <2 x float>* %2370, align 1
  %2372 = extractelement <2 x float> %2371, i32 0
  %2373 = inttoptr i64 %2366 to float*
  store float %2372, float* %2373
  store %struct.Memory* %loadMem_43939b, %struct.Memory** %MEMORY
  %loadMem_4393a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 15
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %2379 to i64*
  %2380 = load i64, i64* %RBP.i356
  %2381 = sub i64 %2380, 32
  %2382 = load i64, i64* %PC.i355
  %2383 = add i64 %2382, 7
  store i64 %2383, i64* %PC.i355
  %2384 = inttoptr i64 %2381 to i32*
  store i32 0, i32* %2384
  store %struct.Memory* %loadMem_4393a3, %struct.Memory** %MEMORY
  br label %block_.L_4393aa

block_.L_4393aa:                                  ; preds = %block_.L_4395d8, %block_439398
  %loadMem_4393aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 33
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 1
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %2390 to i64*
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 15
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %2393 to i64*
  %2394 = load i64, i64* %RBP.i354
  %2395 = sub i64 %2394, 32
  %2396 = load i64, i64* %PC.i352
  %2397 = add i64 %2396, 3
  store i64 %2397, i64* %PC.i352
  %2398 = inttoptr i64 %2395 to i32*
  %2399 = load i32, i32* %2398
  %2400 = zext i32 %2399 to i64
  store i64 %2400, i64* %RAX.i353, align 8
  store %struct.Memory* %loadMem_4393aa, %struct.Memory** %MEMORY
  %loadMem_4393ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 5
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RBP.i351
  %2411 = sub i64 %2410, 16
  %2412 = load i64, i64* %PC.i349
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %PC.i349
  %2414 = inttoptr i64 %2411 to i64*
  %2415 = load i64, i64* %2414
  store i64 %2415, i64* %RCX.i350, align 8
  store %struct.Memory* %loadMem_4393ad, %struct.Memory** %MEMORY
  %loadMem_4393b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 1
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %EAX.i347 = bitcast %union.anon* %2421 to i32*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 5
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %2424 to i64*
  %2425 = load i32, i32* %EAX.i347
  %2426 = zext i32 %2425 to i64
  %2427 = load i64, i64* %RCX.i348
  %2428 = add i64 %2427, 4
  %2429 = load i64, i64* %PC.i346
  %2430 = add i64 %2429, 3
  store i64 %2430, i64* %PC.i346
  %2431 = inttoptr i64 %2428 to i32*
  %2432 = load i32, i32* %2431
  %2433 = sub i32 %2425, %2432
  %2434 = icmp ult i32 %2425, %2432
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2435, i8* %2436, align 1
  %2437 = and i32 %2433, 255
  %2438 = call i32 @llvm.ctpop.i32(i32 %2437)
  %2439 = trunc i32 %2438 to i8
  %2440 = and i8 %2439, 1
  %2441 = xor i8 %2440, 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2441, i8* %2442, align 1
  %2443 = xor i32 %2432, %2425
  %2444 = xor i32 %2443, %2433
  %2445 = lshr i32 %2444, 4
  %2446 = trunc i32 %2445 to i8
  %2447 = and i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2447, i8* %2448, align 1
  %2449 = icmp eq i32 %2433, 0
  %2450 = zext i1 %2449 to i8
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2450, i8* %2451, align 1
  %2452 = lshr i32 %2433, 31
  %2453 = trunc i32 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2453, i8* %2454, align 1
  %2455 = lshr i32 %2425, 31
  %2456 = lshr i32 %2432, 31
  %2457 = xor i32 %2456, %2455
  %2458 = xor i32 %2452, %2455
  %2459 = add i32 %2458, %2457
  %2460 = icmp eq i32 %2459, 2
  %2461 = zext i1 %2460 to i8
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2461, i8* %2462, align 1
  store %struct.Memory* %loadMem_4393b1, %struct.Memory** %MEMORY
  %loadMem_4393b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %2465 to i64*
  %2466 = load i64, i64* %PC.i345
  %2467 = add i64 %2466, 562
  %2468 = load i64, i64* %PC.i345
  %2469 = add i64 %2468, 6
  %2470 = load i64, i64* %PC.i345
  %2471 = add i64 %2470, 6
  store i64 %2471, i64* %PC.i345
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2473 = load i8, i8* %2472, align 1
  %2474 = icmp ne i8 %2473, 0
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2476 = load i8, i8* %2475, align 1
  %2477 = icmp ne i8 %2476, 0
  %2478 = xor i1 %2474, %2477
  %2479 = xor i1 %2478, true
  %2480 = zext i1 %2479 to i8
  store i8 %2480, i8* %BRANCH_TAKEN, align 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2482 = select i1 %2478, i64 %2469, i64 %2467
  store i64 %2482, i64* %2481, align 8
  store %struct.Memory* %loadMem_4393b4, %struct.Memory** %MEMORY
  %loadBr_4393b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4393b4 = icmp eq i8 %loadBr_4393b4, 1
  br i1 %cmpBr_4393b4, label %block_.L_4395e6, label %block_4393ba

block_4393ba:                                     ; preds = %block_.L_4393aa
  %loadMem_4393ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2484 = getelementptr inbounds %struct.GPR, %struct.GPR* %2483, i32 0, i32 33
  %2485 = getelementptr inbounds %struct.Reg, %struct.Reg* %2484, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %2485 to i64*
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2487 = getelementptr inbounds %struct.GPR, %struct.GPR* %2486, i32 0, i32 1
  %2488 = getelementptr inbounds %struct.Reg, %struct.Reg* %2487, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %2488 to i64*
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 15
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %2491 to i64*
  %2492 = load i64, i64* %RBP.i344
  %2493 = sub i64 %2492, 28
  %2494 = load i64, i64* %PC.i342
  %2495 = add i64 %2494, 3
  store i64 %2495, i64* %PC.i342
  %2496 = inttoptr i64 %2493 to i32*
  %2497 = load i32, i32* %2496
  %2498 = zext i32 %2497 to i64
  store i64 %2498, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_4393ba, %struct.Memory** %MEMORY
  %loadMem_4393bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %EAX.i340 = bitcast %union.anon* %2504 to i32*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 5
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RCX.i341 = bitcast %union.anon* %2507 to i64*
  %2508 = load i32, i32* %EAX.i340
  %2509 = zext i32 %2508 to i64
  %2510 = load i64, i64* %PC.i339
  %2511 = add i64 %2510, 2
  store i64 %2511, i64* %PC.i339
  %2512 = and i64 %2509, 4294967295
  store i64 %2512, i64* %RCX.i341, align 8
  store %struct.Memory* %loadMem_4393bd, %struct.Memory** %MEMORY
  %loadMem_4393bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i338 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RCX.i338
  %2520 = load i64, i64* %PC.i337
  %2521 = add i64 %2520, 3
  store i64 %2521, i64* %PC.i337
  %2522 = trunc i64 %2519 to i32
  %2523 = sub i32 %2522, 3
  %2524 = zext i32 %2523 to i64
  store i64 %2524, i64* %RCX.i338, align 8
  %2525 = icmp ult i32 %2522, 3
  %2526 = zext i1 %2525 to i8
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2526, i8* %2527, align 1
  %2528 = and i32 %2523, 255
  %2529 = call i32 @llvm.ctpop.i32(i32 %2528)
  %2530 = trunc i32 %2529 to i8
  %2531 = and i8 %2530, 1
  %2532 = xor i8 %2531, 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2532, i8* %2533, align 1
  %2534 = xor i64 3, %2519
  %2535 = trunc i64 %2534 to i32
  %2536 = xor i32 %2535, %2523
  %2537 = lshr i32 %2536, 4
  %2538 = trunc i32 %2537 to i8
  %2539 = and i8 %2538, 1
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2539, i8* %2540, align 1
  %2541 = icmp eq i32 %2523, 0
  %2542 = zext i1 %2541 to i8
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2542, i8* %2543, align 1
  %2544 = lshr i32 %2523, 31
  %2545 = trunc i32 %2544 to i8
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2545, i8* %2546, align 1
  %2547 = lshr i32 %2522, 31
  %2548 = xor i32 %2544, %2547
  %2549 = add i32 %2548, %2547
  %2550 = icmp eq i32 %2549, 2
  %2551 = zext i1 %2550 to i8
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2551, i8* %2552, align 1
  store %struct.Memory* %loadMem_4393bf, %struct.Memory** %MEMORY
  %loadMem_4393c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %EAX.i335 = bitcast %union.anon* %2558 to i32*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 15
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RBP.i336
  %2563 = sub i64 %2562, 860
  %2564 = load i32, i32* %EAX.i335
  %2565 = zext i32 %2564 to i64
  %2566 = load i64, i64* %PC.i334
  %2567 = add i64 %2566, 6
  store i64 %2567, i64* %PC.i334
  %2568 = inttoptr i64 %2563 to i32*
  store i32 %2564, i32* %2568
  store %struct.Memory* %loadMem_4393c2, %struct.Memory** %MEMORY
  %loadMem_4393c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 33
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %2571 to i64*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 5
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2574 to i32*
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 15
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %2577 to i64*
  %2578 = load i64, i64* %RBP.i333
  %2579 = sub i64 %2578, 864
  %2580 = load i32, i32* %ECX.i
  %2581 = zext i32 %2580 to i64
  %2582 = load i64, i64* %PC.i332
  %2583 = add i64 %2582, 6
  store i64 %2583, i64* %PC.i332
  %2584 = inttoptr i64 %2579 to i32*
  store i32 %2580, i32* %2584
  store %struct.Memory* %loadMem_4393c8, %struct.Memory** %MEMORY
  %loadMem_4393ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %PC.i331
  %2589 = add i64 %2588, 69
  %2590 = load i64, i64* %PC.i331
  %2591 = add i64 %2590, 6
  %2592 = load i64, i64* %PC.i331
  %2593 = add i64 %2592, 6
  store i64 %2593, i64* %PC.i331
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2595 = load i8, i8* %2594, align 1
  store i8 %2595, i8* %BRANCH_TAKEN, align 1
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2597 = icmp ne i8 %2595, 0
  %2598 = select i1 %2597, i64 %2589, i64 %2591
  store i64 %2598, i64* %2596, align 8
  store %struct.Memory* %loadMem_4393ce, %struct.Memory** %MEMORY
  %loadBr_4393ce = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4393ce = icmp eq i8 %loadBr_4393ce, 1
  br i1 %cmpBr_4393ce, label %block_.L_439413, label %block_4393d4

block_4393d4:                                     ; preds = %block_4393ba
  %loadMem_4393d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %2601 to i64*
  %2602 = load i64, i64* %PC.i330
  %2603 = add i64 %2602, 5
  %2604 = load i64, i64* %PC.i330
  %2605 = add i64 %2604, 5
  store i64 %2605, i64* %PC.i330
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2603, i64* %2606, align 8
  store %struct.Memory* %loadMem_4393d4, %struct.Memory** %MEMORY
  br label %block_.L_4393d9

block_.L_4393d9:                                  ; preds = %block_4393d4
  %loadMem_4393d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 33
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 1
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 15
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %2615 to i64*
  %2616 = load i64, i64* %RBP.i329
  %2617 = sub i64 %2616, 860
  %2618 = load i64, i64* %PC.i327
  %2619 = add i64 %2618, 6
  store i64 %2619, i64* %PC.i327
  %2620 = inttoptr i64 %2617 to i32*
  %2621 = load i32, i32* %2620
  %2622 = zext i32 %2621 to i64
  store i64 %2622, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_4393d9, %struct.Memory** %MEMORY
  %loadMem_4393df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %2628 to i64*
  %2629 = load i64, i64* %RAX.i326
  %2630 = load i64, i64* %PC.i325
  %2631 = add i64 %2630, 3
  store i64 %2631, i64* %PC.i325
  %2632 = trunc i64 %2629 to i32
  %2633 = add i32 -3, %2632
  %2634 = zext i32 %2633 to i64
  store i64 %2634, i64* %RAX.i326, align 8
  %2635 = icmp ult i32 %2633, %2632
  %2636 = icmp ult i32 %2633, -3
  %2637 = or i1 %2635, %2636
  %2638 = zext i1 %2637 to i8
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2638, i8* %2639, align 1
  %2640 = and i32 %2633, 255
  %2641 = call i32 @llvm.ctpop.i32(i32 %2640)
  %2642 = trunc i32 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = xor i8 %2643, 1
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2644, i8* %2645, align 1
  %2646 = xor i64 -3, %2629
  %2647 = trunc i64 %2646 to i32
  %2648 = xor i32 %2647, %2633
  %2649 = lshr i32 %2648, 4
  %2650 = trunc i32 %2649 to i8
  %2651 = and i8 %2650, 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2651, i8* %2652, align 1
  %2653 = icmp eq i32 %2633, 0
  %2654 = zext i1 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2654, i8* %2655, align 1
  %2656 = lshr i32 %2633, 31
  %2657 = trunc i32 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2657, i8* %2658, align 1
  %2659 = lshr i32 %2632, 31
  %2660 = xor i32 %2656, %2659
  %2661 = xor i32 %2656, 1
  %2662 = add i32 %2660, %2661
  %2663 = icmp eq i32 %2662, 2
  %2664 = zext i1 %2663 to i8
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2664, i8* %2665, align 1
  store %struct.Memory* %loadMem_4393df, %struct.Memory** %MEMORY
  %loadMem_4393e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 1
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %2671 to i64*
  %2672 = load i64, i64* %RAX.i324
  %2673 = load i64, i64* %PC.i323
  %2674 = add i64 %2673, 3
  store i64 %2674, i64* %PC.i323
  %2675 = trunc i64 %2672 to i32
  %2676 = sub i32 %2675, 2
  %2677 = zext i32 %2676 to i64
  store i64 %2677, i64* %RAX.i324, align 8
  %2678 = icmp ult i32 %2675, 2
  %2679 = zext i1 %2678 to i8
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2679, i8* %2680, align 1
  %2681 = and i32 %2676, 255
  %2682 = call i32 @llvm.ctpop.i32(i32 %2681)
  %2683 = trunc i32 %2682 to i8
  %2684 = and i8 %2683, 1
  %2685 = xor i8 %2684, 1
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2685, i8* %2686, align 1
  %2687 = xor i64 2, %2672
  %2688 = trunc i64 %2687 to i32
  %2689 = xor i32 %2688, %2676
  %2690 = lshr i32 %2689, 4
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2692, i8* %2693, align 1
  %2694 = icmp eq i32 %2676, 0
  %2695 = zext i1 %2694 to i8
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2695, i8* %2696, align 1
  %2697 = lshr i32 %2676, 31
  %2698 = trunc i32 %2697 to i8
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2698, i8* %2699, align 1
  %2700 = lshr i32 %2675, 31
  %2701 = xor i32 %2697, %2700
  %2702 = add i32 %2701, %2700
  %2703 = icmp eq i32 %2702, 2
  %2704 = zext i1 %2703 to i8
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2704, i8* %2705, align 1
  store %struct.Memory* %loadMem_4393e2, %struct.Memory** %MEMORY
  %loadMem_4393e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 1
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %2711 to i32*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 15
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %2714 to i64*
  %2715 = load i64, i64* %RBP.i322
  %2716 = sub i64 %2715, 868
  %2717 = load i32, i32* %EAX.i321
  %2718 = zext i32 %2717 to i64
  %2719 = load i64, i64* %PC.i320
  %2720 = add i64 %2719, 6
  store i64 %2720, i64* %PC.i320
  %2721 = inttoptr i64 %2716 to i32*
  store i32 %2717, i32* %2721
  store %struct.Memory* %loadMem_4393e5, %struct.Memory** %MEMORY
  %loadMem_4393eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %2724 to i64*
  %2725 = load i64, i64* %PC.i319
  %2726 = add i64 %2725, 203
  %2727 = load i64, i64* %PC.i319
  %2728 = add i64 %2727, 6
  %2729 = load i64, i64* %PC.i319
  %2730 = add i64 %2729, 6
  store i64 %2730, i64* %PC.i319
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2732 = load i8, i8* %2731, align 1
  store i8 %2732, i8* %BRANCH_TAKEN, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2734 = icmp ne i8 %2732, 0
  %2735 = select i1 %2734, i64 %2726, i64 %2728
  store i64 %2735, i64* %2733, align 8
  store %struct.Memory* %loadMem_4393eb, %struct.Memory** %MEMORY
  %loadBr_4393eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4393eb = icmp eq i8 %loadBr_4393eb, 1
  br i1 %cmpBr_4393eb, label %block_.L_4394b6, label %block_4393f1

block_4393f1:                                     ; preds = %block_.L_4393d9
  %loadMem_4393f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 33
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %2738 to i64*
  %2739 = load i64, i64* %PC.i318
  %2740 = add i64 %2739, 5
  %2741 = load i64, i64* %PC.i318
  %2742 = add i64 %2741, 5
  store i64 %2742, i64* %PC.i318
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2740, i64* %2743, align 8
  store %struct.Memory* %loadMem_4393f1, %struct.Memory** %MEMORY
  br label %block_.L_4393f6

block_.L_4393f6:                                  ; preds = %block_4393f1
  %loadMem_4393f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 1
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 15
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %RBP.i317
  %2754 = sub i64 %2753, 860
  %2755 = load i64, i64* %PC.i315
  %2756 = add i64 %2755, 6
  store i64 %2756, i64* %PC.i315
  %2757 = inttoptr i64 %2754 to i32*
  %2758 = load i32, i32* %2757
  %2759 = zext i32 %2758 to i64
  store i64 %2759, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_4393f6, %struct.Memory** %MEMORY
  %loadMem_4393fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 1
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %2765 to i64*
  %2766 = load i64, i64* %RAX.i314
  %2767 = load i64, i64* %PC.i313
  %2768 = add i64 %2767, 3
  store i64 %2768, i64* %PC.i313
  %2769 = trunc i64 %2766 to i32
  %2770 = add i32 -5, %2769
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RAX.i314, align 8
  %2772 = icmp ult i32 %2770, %2769
  %2773 = icmp ult i32 %2770, -5
  %2774 = or i1 %2772, %2773
  %2775 = zext i1 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2775, i8* %2776, align 1
  %2777 = and i32 %2770, 255
  %2778 = call i32 @llvm.ctpop.i32(i32 %2777)
  %2779 = trunc i32 %2778 to i8
  %2780 = and i8 %2779, 1
  %2781 = xor i8 %2780, 1
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2781, i8* %2782, align 1
  %2783 = xor i64 -5, %2766
  %2784 = trunc i64 %2783 to i32
  %2785 = xor i32 %2784, %2770
  %2786 = lshr i32 %2785, 4
  %2787 = trunc i32 %2786 to i8
  %2788 = and i8 %2787, 1
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2788, i8* %2789, align 1
  %2790 = icmp eq i32 %2770, 0
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2791, i8* %2792, align 1
  %2793 = lshr i32 %2770, 31
  %2794 = trunc i32 %2793 to i8
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2794, i8* %2795, align 1
  %2796 = lshr i32 %2769, 31
  %2797 = xor i32 %2793, %2796
  %2798 = xor i32 %2793, 1
  %2799 = add i32 %2797, %2798
  %2800 = icmp eq i32 %2799, 2
  %2801 = zext i1 %2800 to i8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2801, i8* %2802, align 1
  store %struct.Memory* %loadMem_4393fc, %struct.Memory** %MEMORY
  %loadMem_4393ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 1
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %2808 to i64*
  %2809 = load i64, i64* %RAX.i312
  %2810 = load i64, i64* %PC.i311
  %2811 = add i64 %2810, 3
  store i64 %2811, i64* %PC.i311
  %2812 = trunc i64 %2809 to i32
  %2813 = sub i32 %2812, 2
  %2814 = zext i32 %2813 to i64
  store i64 %2814, i64* %RAX.i312, align 8
  %2815 = icmp ult i32 %2812, 2
  %2816 = zext i1 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2816, i8* %2817, align 1
  %2818 = and i32 %2813, 255
  %2819 = call i32 @llvm.ctpop.i32(i32 %2818)
  %2820 = trunc i32 %2819 to i8
  %2821 = and i8 %2820, 1
  %2822 = xor i8 %2821, 1
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2822, i8* %2823, align 1
  %2824 = xor i64 2, %2809
  %2825 = trunc i64 %2824 to i32
  %2826 = xor i32 %2825, %2813
  %2827 = lshr i32 %2826, 4
  %2828 = trunc i32 %2827 to i8
  %2829 = and i8 %2828, 1
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2829, i8* %2830, align 1
  %2831 = icmp eq i32 %2813, 0
  %2832 = zext i1 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2832, i8* %2833, align 1
  %2834 = lshr i32 %2813, 31
  %2835 = trunc i32 %2834 to i8
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2835, i8* %2836, align 1
  %2837 = lshr i32 %2812, 31
  %2838 = xor i32 %2834, %2837
  %2839 = add i32 %2838, %2837
  %2840 = icmp eq i32 %2839, 2
  %2841 = zext i1 %2840 to i8
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2841, i8* %2842, align 1
  store %struct.Memory* %loadMem_4393ff, %struct.Memory** %MEMORY
  %loadMem_439402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 33
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 1
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %EAX.i309 = bitcast %union.anon* %2848 to i32*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 15
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %2851 to i64*
  %2852 = load i64, i64* %RBP.i310
  %2853 = sub i64 %2852, 872
  %2854 = load i32, i32* %EAX.i309
  %2855 = zext i32 %2854 to i64
  %2856 = load i64, i64* %PC.i308
  %2857 = add i64 %2856, 6
  store i64 %2857, i64* %PC.i308
  %2858 = inttoptr i64 %2853 to i32*
  store i32 %2854, i32* %2858
  store %struct.Memory* %loadMem_439402, %struct.Memory** %MEMORY
  %loadMem_439408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 33
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %PC.i307
  %2863 = add i64 %2862, 319
  %2864 = load i64, i64* %PC.i307
  %2865 = add i64 %2864, 6
  %2866 = load i64, i64* %PC.i307
  %2867 = add i64 %2866, 6
  store i64 %2867, i64* %PC.i307
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2869 = load i8, i8* %2868, align 1
  store i8 %2869, i8* %BRANCH_TAKEN, align 1
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2871 = icmp ne i8 %2869, 0
  %2872 = select i1 %2871, i64 %2863, i64 %2865
  store i64 %2872, i64* %2870, align 8
  store %struct.Memory* %loadMem_439408, %struct.Memory** %MEMORY
  %loadBr_439408 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_439408 = icmp eq i8 %loadBr_439408, 1
  br i1 %cmpBr_439408, label %block_.L_439547, label %block_43940e

block_43940e:                                     ; preds = %block_.L_4393f6
  %loadMem_43940e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2874 = getelementptr inbounds %struct.GPR, %struct.GPR* %2873, i32 0, i32 33
  %2875 = getelementptr inbounds %struct.Reg, %struct.Reg* %2874, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2875 to i64*
  %2876 = load i64, i64* %PC.i306
  %2877 = add i64 %2876, 453
  %2878 = load i64, i64* %PC.i306
  %2879 = add i64 %2878, 5
  store i64 %2879, i64* %PC.i306
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2877, i64* %2880, align 8
  store %struct.Memory* %loadMem_43940e, %struct.Memory** %MEMORY
  br label %block_.L_4395d3

block_.L_439413:                                  ; preds = %block_4393ba
  %loadMem_439413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 33
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 9
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RSI.i305 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %PC.i304
  %2888 = add i64 %2887, 5
  store i64 %2888, i64* %PC.i304
  store i64 3, i64* %RSI.i305, align 8
  store %struct.Memory* %loadMem_439413, %struct.Memory** %MEMORY
  %loadMem_439418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 33
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 1
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 15
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %RBP.i303
  %2899 = sub i64 %2898, 32
  %2900 = load i64, i64* %PC.i301
  %2901 = add i64 %2900, 4
  store i64 %2901, i64* %PC.i301
  %2902 = inttoptr i64 %2899 to i32*
  %2903 = load i32, i32* %2902
  %2904 = sext i32 %2903 to i64
  store i64 %2904, i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_439418, %struct.Memory** %MEMORY
  %loadMem_43941c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 33
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 1
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 15
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2915 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2914, i64 0, i64 0
  %YMM0.i300 = bitcast %union.VectorReg* %2915 to %"class.std::bitset"*
  %2916 = bitcast %"class.std::bitset"* %YMM0.i300 to i8*
  %2917 = load i64, i64* %RBP.i299
  %2918 = load i64, i64* %RAX.i298
  %2919 = mul i64 %2918, 4
  %2920 = add i64 %2917, -832
  %2921 = add i64 %2920, %2919
  %2922 = load i64, i64* %PC.i297
  %2923 = add i64 %2922, 9
  store i64 %2923, i64* %PC.i297
  %2924 = inttoptr i64 %2921 to float*
  %2925 = load float, float* %2924
  %2926 = bitcast i8* %2916 to float*
  store float %2925, float* %2926, align 1
  %2927 = getelementptr inbounds i8, i8* %2916, i64 4
  %2928 = bitcast i8* %2927 to float*
  store float 0.000000e+00, float* %2928, align 1
  %2929 = getelementptr inbounds i8, i8* %2916, i64 8
  %2930 = bitcast i8* %2929 to float*
  store float 0.000000e+00, float* %2930, align 1
  %2931 = getelementptr inbounds i8, i8* %2916, i64 12
  %2932 = bitcast i8* %2931 to float*
  store float 0.000000e+00, float* %2932, align 1
  store %struct.Memory* %loadMem_43941c, %struct.Memory** %MEMORY
  %loadMem_439425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 33
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2935 to i64*
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 1
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 15
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %2941 to i64*
  %2942 = load i64, i64* %RBP.i296
  %2943 = sub i64 %2942, 8
  %2944 = load i64, i64* %PC.i294
  %2945 = add i64 %2944, 4
  store i64 %2945, i64* %PC.i294
  %2946 = inttoptr i64 %2943 to i64*
  %2947 = load i64, i64* %2946
  store i64 %2947, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_439425, %struct.Memory** %MEMORY
  %loadMem_439429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2949 = getelementptr inbounds %struct.GPR, %struct.GPR* %2948, i32 0, i32 33
  %2950 = getelementptr inbounds %struct.Reg, %struct.Reg* %2949, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2950 to i64*
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 5
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 15
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %2956 to i64*
  %2957 = load i64, i64* %RBP.i293
  %2958 = sub i64 %2957, 28
  %2959 = load i64, i64* %PC.i291
  %2960 = add i64 %2959, 4
  store i64 %2960, i64* %PC.i291
  %2961 = inttoptr i64 %2958 to i32*
  %2962 = load i32, i32* %2961
  %2963 = sext i32 %2962 to i64
  store i64 %2963, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_439429, %struct.Memory** %MEMORY
  %loadMem_43942d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 33
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 1
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %2969 to i64*
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 5
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %RCX.i289 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2973, i64 0, i64 1
  %YMM1.i290 = bitcast %union.VectorReg* %2974 to %"class.std::bitset"*
  %2975 = bitcast %"class.std::bitset"* %YMM1.i290 to i8*
  %2976 = load i64, i64* %RAX.i288
  %2977 = load i64, i64* %RCX.i289
  %2978 = mul i64 %2977, 4
  %2979 = add i64 %2978, %2976
  %2980 = load i64, i64* %PC.i287
  %2981 = add i64 %2980, 5
  store i64 %2981, i64* %PC.i287
  %2982 = inttoptr i64 %2979 to float*
  %2983 = load float, float* %2982
  %2984 = bitcast i8* %2975 to float*
  store float %2983, float* %2984, align 1
  %2985 = getelementptr inbounds i8, i8* %2975, i64 4
  %2986 = bitcast i8* %2985 to float*
  store float 0.000000e+00, float* %2986, align 1
  %2987 = getelementptr inbounds i8, i8* %2975, i64 8
  %2988 = bitcast i8* %2987 to float*
  store float 0.000000e+00, float* %2988, align 1
  %2989 = getelementptr inbounds i8, i8* %2975, i64 12
  %2990 = bitcast i8* %2989 to float*
  store float 0.000000e+00, float* %2990, align 1
  store %struct.Memory* %loadMem_43942d, %struct.Memory** %MEMORY
  %loadMem_439432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 33
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2993 to i64*
  %2994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2995 = getelementptr inbounds %struct.GPR, %struct.GPR* %2994, i32 0, i32 1
  %2996 = getelementptr inbounds %struct.Reg, %struct.Reg* %2995, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %2996 to i64*
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 15
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %RBP.i286
  %3001 = sub i64 %3000, 16
  %3002 = load i64, i64* %PC.i284
  %3003 = add i64 %3002, 4
  store i64 %3003, i64* %PC.i284
  %3004 = inttoptr i64 %3001 to i64*
  %3005 = load i64, i64* %3004
  store i64 %3005, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_439432, %struct.Memory** %MEMORY
  %loadMem_439436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 33
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 1
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RAX.i283
  %3013 = load i64, i64* %PC.i282
  %3014 = add i64 %3013, 6
  store i64 %3014, i64* %PC.i282
  %3015 = add i64 808, %3012
  store i64 %3015, i64* %RAX.i283, align 8
  %3016 = icmp ult i64 %3015, %3012
  %3017 = icmp ult i64 %3015, 808
  %3018 = or i1 %3016, %3017
  %3019 = zext i1 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3019, i8* %3020, align 1
  %3021 = trunc i64 %3015 to i32
  %3022 = and i32 %3021, 255
  %3023 = call i32 @llvm.ctpop.i32(i32 %3022)
  %3024 = trunc i32 %3023 to i8
  %3025 = and i8 %3024, 1
  %3026 = xor i8 %3025, 1
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3026, i8* %3027, align 1
  %3028 = xor i64 808, %3012
  %3029 = xor i64 %3028, %3015
  %3030 = lshr i64 %3029, 4
  %3031 = trunc i64 %3030 to i8
  %3032 = and i8 %3031, 1
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3032, i8* %3033, align 1
  %3034 = icmp eq i64 %3015, 0
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3035, i8* %3036, align 1
  %3037 = lshr i64 %3015, 63
  %3038 = trunc i64 %3037 to i8
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3038, i8* %3039, align 1
  %3040 = lshr i64 %3012, 63
  %3041 = xor i64 %3037, %3040
  %3042 = add i64 %3041, %3037
  %3043 = icmp eq i64 %3042, 2
  %3044 = zext i1 %3043 to i8
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3044, i8* %3045, align 1
  store %struct.Memory* %loadMem_439436, %struct.Memory** %MEMORY
  %loadMem_43943c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 5
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i281
  %3056 = sub i64 %3055, 32
  %3057 = load i64, i64* %PC.i279
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i279
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sext i32 %3060 to i64
  store i64 %3061, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_43943c, %struct.Memory** %MEMORY
  %loadMem_439440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %3067 to i64*
  %3068 = load i64, i64* %RCX.i278
  %3069 = load i64, i64* %PC.i277
  %3070 = add i64 %3069, 4
  store i64 %3070, i64* %PC.i277
  %3071 = sext i64 %3068 to i128
  %3072 = and i128 %3071, -18446744073709551616
  %3073 = zext i64 %3068 to i128
  %3074 = or i128 %3072, %3073
  %3075 = mul i128 28, %3074
  %3076 = trunc i128 %3075 to i64
  store i64 %3076, i64* %RCX.i278, align 8
  %3077 = sext i64 %3076 to i128
  %3078 = icmp ne i128 %3077, %3075
  %3079 = zext i1 %3078 to i8
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3079, i8* %3080, align 1
  %3081 = trunc i128 %3075 to i32
  %3082 = and i32 %3081, 255
  %3083 = call i32 @llvm.ctpop.i32(i32 %3082)
  %3084 = trunc i32 %3083 to i8
  %3085 = and i8 %3084, 1
  %3086 = xor i8 %3085, 1
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3086, i8* %3087, align 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3088, align 1
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3089, align 1
  %3090 = lshr i64 %3076, 63
  %3091 = trunc i64 %3090 to i8
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3091, i8* %3092, align 1
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3079, i8* %3093, align 1
  store %struct.Memory* %loadMem_439440, %struct.Memory** %MEMORY
  %loadMem_439444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 1
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 5
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RAX.i275
  %3104 = load i64, i64* %RCX.i276
  %3105 = load i64, i64* %PC.i274
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i274
  %3107 = add i64 %3104, %3103
  store i64 %3107, i64* %RAX.i275, align 8
  %3108 = icmp ult i64 %3107, %3103
  %3109 = icmp ult i64 %3107, %3104
  %3110 = or i1 %3108, %3109
  %3111 = zext i1 %3110 to i8
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3111, i8* %3112, align 1
  %3113 = trunc i64 %3107 to i32
  %3114 = and i32 %3113, 255
  %3115 = call i32 @llvm.ctpop.i32(i32 %3114)
  %3116 = trunc i32 %3115 to i8
  %3117 = and i8 %3116, 1
  %3118 = xor i8 %3117, 1
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3118, i8* %3119, align 1
  %3120 = xor i64 %3104, %3103
  %3121 = xor i64 %3120, %3107
  %3122 = lshr i64 %3121, 4
  %3123 = trunc i64 %3122 to i8
  %3124 = and i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3124, i8* %3125, align 1
  %3126 = icmp eq i64 %3107, 0
  %3127 = zext i1 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i64 %3107, 63
  %3130 = trunc i64 %3129 to i8
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3130, i8* %3131, align 1
  %3132 = lshr i64 %3103, 63
  %3133 = lshr i64 %3104, 63
  %3134 = xor i64 %3129, %3132
  %3135 = xor i64 %3129, %3133
  %3136 = add i64 %3134, %3135
  %3137 = icmp eq i64 %3136, 2
  %3138 = zext i1 %3137 to i8
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3138, i8* %3139, align 1
  store %struct.Memory* %loadMem_439444, %struct.Memory** %MEMORY
  %loadMem_439447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 5
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 15
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RBP.i273
  %3150 = sub i64 %3149, 28
  %3151 = load i64, i64* %PC.i271
  %3152 = add i64 %3151, 4
  store i64 %3152, i64* %PC.i271
  %3153 = inttoptr i64 %3150 to i32*
  %3154 = load i32, i32* %3153
  %3155 = sext i32 %3154 to i64
  store i64 %3155, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_439447, %struct.Memory** %MEMORY
  %loadMem_43944b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 1
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 5
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %3164 to i64*
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3165, i64 0, i64 1
  %YMM1.i270 = bitcast %union.VectorReg* %3166 to %"class.std::bitset"*
  %3167 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %3168 = bitcast %"class.std::bitset"* %YMM1.i270 to i8*
  %3169 = load i64, i64* %RAX.i268
  %3170 = load i64, i64* %RCX.i269
  %3171 = mul i64 %3170, 4
  %3172 = add i64 %3171, %3169
  %3173 = load i64, i64* %PC.i267
  %3174 = add i64 %3173, 5
  store i64 %3174, i64* %PC.i267
  %3175 = bitcast i8* %3168 to <2 x float>*
  %3176 = load <2 x float>, <2 x float>* %3175, align 1
  %3177 = getelementptr inbounds i8, i8* %3168, i64 8
  %3178 = bitcast i8* %3177 to <2 x i32>*
  %3179 = load <2 x i32>, <2 x i32>* %3178, align 1
  %3180 = inttoptr i64 %3172 to float*
  %3181 = load float, float* %3180
  %3182 = extractelement <2 x float> %3176, i32 0
  %3183 = fadd float %3182, %3181
  %3184 = bitcast i8* %3167 to float*
  store float %3183, float* %3184, align 1
  %3185 = bitcast <2 x float> %3176 to <2 x i32>
  %3186 = extractelement <2 x i32> %3185, i32 1
  %3187 = getelementptr inbounds i8, i8* %3167, i64 4
  %3188 = bitcast i8* %3187 to i32*
  store i32 %3186, i32* %3188, align 1
  %3189 = extractelement <2 x i32> %3179, i32 0
  %3190 = getelementptr inbounds i8, i8* %3167, i64 8
  %3191 = bitcast i8* %3190 to i32*
  store i32 %3189, i32* %3191, align 1
  %3192 = extractelement <2 x i32> %3179, i32 1
  %3193 = getelementptr inbounds i8, i8* %3167, i64 12
  %3194 = bitcast i8* %3193 to i32*
  store i32 %3192, i32* %3194, align 1
  store %struct.Memory* %loadMem_43944b, %struct.Memory** %MEMORY
  %loadMem_439450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 33
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %3197 to i64*
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3199 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3198, i64 0, i64 0
  %YMM0.i265 = bitcast %union.VectorReg* %3199 to %"class.std::bitset"*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3201 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3200, i64 0, i64 1
  %XMM1.i266 = bitcast %union.VectorReg* %3201 to %union.vec128_t*
  %3202 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %3203 = bitcast %"class.std::bitset"* %YMM0.i265 to i8*
  %3204 = bitcast %union.vec128_t* %XMM1.i266 to i8*
  %3205 = load i64, i64* %PC.i264
  %3206 = add i64 %3205, 4
  store i64 %3206, i64* %PC.i264
  %3207 = bitcast i8* %3203 to <2 x float>*
  %3208 = load <2 x float>, <2 x float>* %3207, align 1
  %3209 = getelementptr inbounds i8, i8* %3203, i64 8
  %3210 = bitcast i8* %3209 to <2 x i32>*
  %3211 = load <2 x i32>, <2 x i32>* %3210, align 1
  %3212 = bitcast i8* %3204 to <2 x float>*
  %3213 = load <2 x float>, <2 x float>* %3212, align 1
  %3214 = extractelement <2 x float> %3208, i32 0
  %3215 = extractelement <2 x float> %3213, i32 0
  %3216 = fmul float %3214, %3215
  %3217 = bitcast i8* %3202 to float*
  store float %3216, float* %3217, align 1
  %3218 = bitcast <2 x float> %3208 to <2 x i32>
  %3219 = extractelement <2 x i32> %3218, i32 1
  %3220 = getelementptr inbounds i8, i8* %3202, i64 4
  %3221 = bitcast i8* %3220 to i32*
  store i32 %3219, i32* %3221, align 1
  %3222 = extractelement <2 x i32> %3211, i32 0
  %3223 = getelementptr inbounds i8, i8* %3202, i64 8
  %3224 = bitcast i8* %3223 to i32*
  store i32 %3222, i32* %3224, align 1
  %3225 = extractelement <2 x i32> %3211, i32 1
  %3226 = getelementptr inbounds i8, i8* %3202, i64 12
  %3227 = bitcast i8* %3226 to i32*
  store i32 %3225, i32* %3227, align 1
  store %struct.Memory* %loadMem_439450, %struct.Memory** %MEMORY
  %loadMem_439454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3229 = getelementptr inbounds %struct.GPR, %struct.GPR* %3228, i32 0, i32 33
  %3230 = getelementptr inbounds %struct.Reg, %struct.Reg* %3229, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3230 to i64*
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 15
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %RBP.i262 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3235 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3234, i64 0, i64 1
  %YMM1.i263 = bitcast %union.VectorReg* %3235 to %"class.std::bitset"*
  %3236 = bitcast %"class.std::bitset"* %YMM1.i263 to i8*
  %3237 = load i64, i64* %RBP.i262
  %3238 = sub i64 %3237, 836
  %3239 = load i64, i64* %PC.i261
  %3240 = add i64 %3239, 8
  store i64 %3240, i64* %PC.i261
  %3241 = inttoptr i64 %3238 to float*
  %3242 = load float, float* %3241
  %3243 = bitcast i8* %3236 to float*
  store float %3242, float* %3243, align 1
  %3244 = getelementptr inbounds i8, i8* %3236, i64 4
  %3245 = bitcast i8* %3244 to float*
  store float 0.000000e+00, float* %3245, align 1
  %3246 = getelementptr inbounds i8, i8* %3236, i64 8
  %3247 = bitcast i8* %3246 to float*
  store float 0.000000e+00, float* %3247, align 1
  %3248 = getelementptr inbounds i8, i8* %3236, i64 12
  %3249 = bitcast i8* %3248 to float*
  store float 0.000000e+00, float* %3249, align 1
  store %struct.Memory* %loadMem_439454, %struct.Memory** %MEMORY
  %loadMem_43945c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 1
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 15
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %RBP.i260
  %3260 = sub i64 %3259, 16
  %3261 = load i64, i64* %PC.i258
  %3262 = add i64 %3261, 4
  store i64 %3262, i64* %PC.i258
  %3263 = inttoptr i64 %3260 to i64*
  %3264 = load i64, i64* %3263
  store i64 %3264, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_43945c, %struct.Memory** %MEMORY
  %loadMem_439460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 33
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 1
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %3270 to i64*
  %3271 = load i64, i64* %RAX.i257
  %3272 = load i64, i64* %PC.i256
  %3273 = add i64 %3272, 6
  store i64 %3273, i64* %PC.i256
  %3274 = add i64 808, %3271
  store i64 %3274, i64* %RAX.i257, align 8
  %3275 = icmp ult i64 %3274, %3271
  %3276 = icmp ult i64 %3274, 808
  %3277 = or i1 %3275, %3276
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3278, i8* %3279, align 1
  %3280 = trunc i64 %3274 to i32
  %3281 = and i32 %3280, 255
  %3282 = call i32 @llvm.ctpop.i32(i32 %3281)
  %3283 = trunc i32 %3282 to i8
  %3284 = and i8 %3283, 1
  %3285 = xor i8 %3284, 1
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3285, i8* %3286, align 1
  %3287 = xor i64 808, %3271
  %3288 = xor i64 %3287, %3274
  %3289 = lshr i64 %3288, 4
  %3290 = trunc i64 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3291, i8* %3292, align 1
  %3293 = icmp eq i64 %3274, 0
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i64 %3274, 63
  %3297 = trunc i64 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3297, i8* %3298, align 1
  %3299 = lshr i64 %3271, 63
  %3300 = xor i64 %3296, %3299
  %3301 = add i64 %3300, %3296
  %3302 = icmp eq i64 %3301, 2
  %3303 = zext i1 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3303, i8* %3304, align 1
  store %struct.Memory* %loadMem_439460, %struct.Memory** %MEMORY
  %loadMem_439466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i255
  %3315 = sub i64 %3314, 32
  %3316 = load i64, i64* %PC.i253
  %3317 = add i64 %3316, 4
  store i64 %3317, i64* %PC.i253
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = sext i32 %3319 to i64
  store i64 %3320, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_439466, %struct.Memory** %MEMORY
  %loadMem_43946a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 5
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %3326 to i64*
  %3327 = load i64, i64* %RCX.i252
  %3328 = load i64, i64* %PC.i251
  %3329 = add i64 %3328, 4
  store i64 %3329, i64* %PC.i251
  %3330 = sext i64 %3327 to i128
  %3331 = and i128 %3330, -18446744073709551616
  %3332 = zext i64 %3327 to i128
  %3333 = or i128 %3331, %3332
  %3334 = mul i128 28, %3333
  %3335 = trunc i128 %3334 to i64
  store i64 %3335, i64* %RCX.i252, align 8
  %3336 = sext i64 %3335 to i128
  %3337 = icmp ne i128 %3336, %3334
  %3338 = zext i1 %3337 to i8
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3338, i8* %3339, align 1
  %3340 = trunc i128 %3334 to i32
  %3341 = and i32 %3340, 255
  %3342 = call i32 @llvm.ctpop.i32(i32 %3341)
  %3343 = trunc i32 %3342 to i8
  %3344 = and i8 %3343, 1
  %3345 = xor i8 %3344, 1
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3345, i8* %3346, align 1
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3347, align 1
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3348, align 1
  %3349 = lshr i64 %3335, 63
  %3350 = trunc i64 %3349 to i8
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3350, i8* %3351, align 1
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3338, i8* %3352, align 1
  store %struct.Memory* %loadMem_43946a, %struct.Memory** %MEMORY
  %loadMem_43946e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3354 = getelementptr inbounds %struct.GPR, %struct.GPR* %3353, i32 0, i32 33
  %3355 = getelementptr inbounds %struct.Reg, %struct.Reg* %3354, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3355 to i64*
  %3356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3357 = getelementptr inbounds %struct.GPR, %struct.GPR* %3356, i32 0, i32 1
  %3358 = getelementptr inbounds %struct.Reg, %struct.Reg* %3357, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %3358 to i64*
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 5
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %3361 to i64*
  %3362 = load i64, i64* %RAX.i249
  %3363 = load i64, i64* %RCX.i250
  %3364 = load i64, i64* %PC.i248
  %3365 = add i64 %3364, 3
  store i64 %3365, i64* %PC.i248
  %3366 = add i64 %3363, %3362
  store i64 %3366, i64* %RAX.i249, align 8
  %3367 = icmp ult i64 %3366, %3362
  %3368 = icmp ult i64 %3366, %3363
  %3369 = or i1 %3367, %3368
  %3370 = zext i1 %3369 to i8
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3370, i8* %3371, align 1
  %3372 = trunc i64 %3366 to i32
  %3373 = and i32 %3372, 255
  %3374 = call i32 @llvm.ctpop.i32(i32 %3373)
  %3375 = trunc i32 %3374 to i8
  %3376 = and i8 %3375, 1
  %3377 = xor i8 %3376, 1
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3377, i8* %3378, align 1
  %3379 = xor i64 %3363, %3362
  %3380 = xor i64 %3379, %3366
  %3381 = lshr i64 %3380, 4
  %3382 = trunc i64 %3381 to i8
  %3383 = and i8 %3382, 1
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3383, i8* %3384, align 1
  %3385 = icmp eq i64 %3366, 0
  %3386 = zext i1 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3386, i8* %3387, align 1
  %3388 = lshr i64 %3366, 63
  %3389 = trunc i64 %3388 to i8
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3389, i8* %3390, align 1
  %3391 = lshr i64 %3362, 63
  %3392 = lshr i64 %3363, 63
  %3393 = xor i64 %3388, %3391
  %3394 = xor i64 %3388, %3392
  %3395 = add i64 %3393, %3394
  %3396 = icmp eq i64 %3395, 2
  %3397 = zext i1 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3397, i8* %3398, align 1
  store %struct.Memory* %loadMem_43946e, %struct.Memory** %MEMORY
  %loadMem_439471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3400 = getelementptr inbounds %struct.GPR, %struct.GPR* %3399, i32 0, i32 33
  %3401 = getelementptr inbounds %struct.Reg, %struct.Reg* %3400, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %3401 to i64*
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3403 = getelementptr inbounds %struct.GPR, %struct.GPR* %3402, i32 0, i32 1
  %3404 = getelementptr inbounds %struct.Reg, %struct.Reg* %3403, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %3404 to i64*
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 11
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %RDI.i247 = bitcast %union.anon* %3407 to i64*
  %3408 = load i64, i64* %RAX.i246
  %3409 = load i64, i64* %PC.i245
  %3410 = add i64 %3409, 3
  store i64 %3410, i64* %PC.i245
  store i64 %3408, i64* %RDI.i247, align 8
  store %struct.Memory* %loadMem_439471, %struct.Memory** %MEMORY
  %loadMem_439474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 33
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 15
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3417, i64 0, i64 1
  %XMM1.i244 = bitcast %union.VectorReg* %3418 to %union.vec128_t*
  %3419 = load i64, i64* %RBP.i243
  %3420 = sub i64 %3419, 876
  %3421 = bitcast %union.vec128_t* %XMM1.i244 to i8*
  %3422 = load i64, i64* %PC.i242
  %3423 = add i64 %3422, 8
  store i64 %3423, i64* %PC.i242
  %3424 = bitcast i8* %3421 to <2 x float>*
  %3425 = load <2 x float>, <2 x float>* %3424, align 1
  %3426 = extractelement <2 x float> %3425, i32 0
  %3427 = inttoptr i64 %3420 to float*
  store float %3426, float* %3427
  store %struct.Memory* %loadMem_439474, %struct.Memory** %MEMORY
  %loadMem_43947c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 33
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %3430 to i64*
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3432 = getelementptr inbounds %struct.GPR, %struct.GPR* %3431, i32 0, i32 15
  %3433 = getelementptr inbounds %struct.Reg, %struct.Reg* %3432, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %3433 to i64*
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3435 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3434, i64 0, i64 0
  %XMM0.i241 = bitcast %union.VectorReg* %3435 to %union.vec128_t*
  %3436 = load i64, i64* %RBP.i240
  %3437 = sub i64 %3436, 880
  %3438 = bitcast %union.vec128_t* %XMM0.i241 to i8*
  %3439 = load i64, i64* %PC.i239
  %3440 = add i64 %3439, 8
  store i64 %3440, i64* %PC.i239
  %3441 = bitcast i8* %3438 to <2 x float>*
  %3442 = load <2 x float>, <2 x float>* %3441, align 1
  %3443 = extractelement <2 x float> %3442, i32 0
  %3444 = inttoptr i64 %3437 to float*
  store float %3443, float* %3444
  store %struct.Memory* %loadMem_43947c, %struct.Memory** %MEMORY
  %loadMem1_439484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %3447 to i64*
  %3448 = load i64, i64* %PC.i238
  %3449 = add i64 %3448, 101388
  %3450 = load i64, i64* %PC.i238
  %3451 = add i64 %3450, 5
  %3452 = load i64, i64* %PC.i238
  %3453 = add i64 %3452, 5
  store i64 %3453, i64* %PC.i238
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3455 = load i64, i64* %3454, align 8
  %3456 = add i64 %3455, -8
  %3457 = inttoptr i64 %3456 to i64*
  store i64 %3451, i64* %3457
  store i64 %3456, i64* %3454, align 8
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3449, i64* %3458, align 8
  store %struct.Memory* %loadMem1_439484, %struct.Memory** %MEMORY
  %loadMem2_439484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439484 = load i64, i64* %3
  %call2_439484 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64 %loadPC_439484, %struct.Memory* %loadMem2_439484)
  store %struct.Memory* %call2_439484, %struct.Memory** %MEMORY
  %loadMem_439489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3466 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3465, i64 0, i64 1
  %YMM1.i237 = bitcast %union.VectorReg* %3466 to %"class.std::bitset"*
  %3467 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %3468 = load i64, i64* %RBP.i236
  %3469 = sub i64 %3468, 876
  %3470 = load i64, i64* %PC.i235
  %3471 = add i64 %3470, 8
  store i64 %3471, i64* %PC.i235
  %3472 = inttoptr i64 %3469 to float*
  %3473 = load float, float* %3472
  %3474 = bitcast i8* %3467 to float*
  store float %3473, float* %3474, align 1
  %3475 = getelementptr inbounds i8, i8* %3467, i64 4
  %3476 = bitcast i8* %3475 to float*
  store float 0.000000e+00, float* %3476, align 1
  %3477 = getelementptr inbounds i8, i8* %3467, i64 8
  %3478 = bitcast i8* %3477 to float*
  store float 0.000000e+00, float* %3478, align 1
  %3479 = getelementptr inbounds i8, i8* %3467, i64 12
  %3480 = bitcast i8* %3479 to float*
  store float 0.000000e+00, float* %3480, align 1
  store %struct.Memory* %loadMem_439489, %struct.Memory** %MEMORY
  %loadMem_439491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 33
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3485 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3484, i64 0, i64 1
  %YMM1.i233 = bitcast %union.VectorReg* %3485 to %"class.std::bitset"*
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3487 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3486, i64 0, i64 0
  %XMM0.i234 = bitcast %union.VectorReg* %3487 to %union.vec128_t*
  %3488 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %3489 = bitcast %"class.std::bitset"* %YMM1.i233 to i8*
  %3490 = bitcast %union.vec128_t* %XMM0.i234 to i8*
  %3491 = load i64, i64* %PC.i232
  %3492 = add i64 %3491, 4
  store i64 %3492, i64* %PC.i232
  %3493 = bitcast i8* %3489 to <2 x float>*
  %3494 = load <2 x float>, <2 x float>* %3493, align 1
  %3495 = getelementptr inbounds i8, i8* %3489, i64 8
  %3496 = bitcast i8* %3495 to <2 x i32>*
  %3497 = load <2 x i32>, <2 x i32>* %3496, align 1
  %3498 = bitcast i8* %3490 to <2 x float>*
  %3499 = load <2 x float>, <2 x float>* %3498, align 1
  %3500 = extractelement <2 x float> %3494, i32 0
  %3501 = extractelement <2 x float> %3499, i32 0
  %3502 = fadd float %3500, %3501
  %3503 = bitcast i8* %3488 to float*
  store float %3502, float* %3503, align 1
  %3504 = bitcast <2 x float> %3494 to <2 x i32>
  %3505 = extractelement <2 x i32> %3504, i32 1
  %3506 = getelementptr inbounds i8, i8* %3488, i64 4
  %3507 = bitcast i8* %3506 to i32*
  store i32 %3505, i32* %3507, align 1
  %3508 = extractelement <2 x i32> %3497, i32 0
  %3509 = getelementptr inbounds i8, i8* %3488, i64 8
  %3510 = bitcast i8* %3509 to i32*
  store i32 %3508, i32* %3510, align 1
  %3511 = extractelement <2 x i32> %3497, i32 1
  %3512 = getelementptr inbounds i8, i8* %3488, i64 12
  %3513 = bitcast i8* %3512 to i32*
  store i32 %3511, i32* %3513, align 1
  store %struct.Memory* %loadMem_439491, %struct.Memory** %MEMORY
  %loadMem_439495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 33
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 15
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3521 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3520, i64 0, i64 0
  %YMM0.i231 = bitcast %union.VectorReg* %3521 to %"class.std::bitset"*
  %3522 = bitcast %"class.std::bitset"* %YMM0.i231 to i8*
  %3523 = load i64, i64* %RBP.i230
  %3524 = sub i64 %3523, 880
  %3525 = load i64, i64* %PC.i229
  %3526 = add i64 %3525, 8
  store i64 %3526, i64* %PC.i229
  %3527 = inttoptr i64 %3524 to float*
  %3528 = load float, float* %3527
  %3529 = bitcast i8* %3522 to float*
  store float %3528, float* %3529, align 1
  %3530 = getelementptr inbounds i8, i8* %3522, i64 4
  %3531 = bitcast i8* %3530 to float*
  store float 0.000000e+00, float* %3531, align 1
  %3532 = getelementptr inbounds i8, i8* %3522, i64 8
  %3533 = bitcast i8* %3532 to float*
  store float 0.000000e+00, float* %3533, align 1
  %3534 = getelementptr inbounds i8, i8* %3522, i64 12
  %3535 = bitcast i8* %3534 to float*
  store float 0.000000e+00, float* %3535, align 1
  store %struct.Memory* %loadMem_439495, %struct.Memory** %MEMORY
  %loadMem_43949d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 33
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %3538 to i64*
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3540 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3539, i64 0, i64 0
  %YMM0.i227 = bitcast %union.VectorReg* %3540 to %"class.std::bitset"*
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3541, i64 0, i64 1
  %XMM1.i228 = bitcast %union.VectorReg* %3542 to %union.vec128_t*
  %3543 = bitcast %"class.std::bitset"* %YMM0.i227 to i8*
  %3544 = bitcast %"class.std::bitset"* %YMM0.i227 to i8*
  %3545 = bitcast %union.vec128_t* %XMM1.i228 to i8*
  %3546 = load i64, i64* %PC.i226
  %3547 = add i64 %3546, 4
  store i64 %3547, i64* %PC.i226
  %3548 = bitcast i8* %3544 to <2 x float>*
  %3549 = load <2 x float>, <2 x float>* %3548, align 1
  %3550 = getelementptr inbounds i8, i8* %3544, i64 8
  %3551 = bitcast i8* %3550 to <2 x i32>*
  %3552 = load <2 x i32>, <2 x i32>* %3551, align 1
  %3553 = bitcast i8* %3545 to <2 x float>*
  %3554 = load <2 x float>, <2 x float>* %3553, align 1
  %3555 = extractelement <2 x float> %3549, i32 0
  %3556 = extractelement <2 x float> %3554, i32 0
  %3557 = fdiv float %3555, %3556
  %3558 = bitcast i8* %3543 to float*
  store float %3557, float* %3558, align 1
  %3559 = bitcast <2 x float> %3549 to <2 x i32>
  %3560 = extractelement <2 x i32> %3559, i32 1
  %3561 = getelementptr inbounds i8, i8* %3543, i64 4
  %3562 = bitcast i8* %3561 to i32*
  store i32 %3560, i32* %3562, align 1
  %3563 = extractelement <2 x i32> %3552, i32 0
  %3564 = getelementptr inbounds i8, i8* %3543, i64 8
  %3565 = bitcast i8* %3564 to i32*
  store i32 %3563, i32* %3565, align 1
  %3566 = extractelement <2 x i32> %3552, i32 1
  %3567 = getelementptr inbounds i8, i8* %3543, i64 12
  %3568 = bitcast i8* %3567 to i32*
  store i32 %3566, i32* %3568, align 1
  store %struct.Memory* %loadMem_43949d, %struct.Memory** %MEMORY
  %loadMem_4394a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3570 = getelementptr inbounds %struct.GPR, %struct.GPR* %3569, i32 0, i32 33
  %3571 = getelementptr inbounds %struct.Reg, %struct.Reg* %3570, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %3571 to i64*
  %3572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3573 = getelementptr inbounds %struct.GPR, %struct.GPR* %3572, i32 0, i32 15
  %3574 = getelementptr inbounds %struct.Reg, %struct.Reg* %3573, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %3574 to i64*
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3576 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3575, i64 0, i64 0
  %YMM0.i225 = bitcast %union.VectorReg* %3576 to %"class.std::bitset"*
  %3577 = bitcast %"class.std::bitset"* %YMM0.i225 to i8*
  %3578 = bitcast %"class.std::bitset"* %YMM0.i225 to i8*
  %3579 = load i64, i64* %RBP.i224
  %3580 = sub i64 %3579, 848
  %3581 = load i64, i64* %PC.i223
  %3582 = add i64 %3581, 8
  store i64 %3582, i64* %PC.i223
  %3583 = bitcast i8* %3578 to <2 x float>*
  %3584 = load <2 x float>, <2 x float>* %3583, align 1
  %3585 = getelementptr inbounds i8, i8* %3578, i64 8
  %3586 = bitcast i8* %3585 to <2 x i32>*
  %3587 = load <2 x i32>, <2 x i32>* %3586, align 1
  %3588 = inttoptr i64 %3580 to float*
  %3589 = load float, float* %3588
  %3590 = extractelement <2 x float> %3584, i32 0
  %3591 = fadd float %3590, %3589
  %3592 = bitcast i8* %3577 to float*
  store float %3591, float* %3592, align 1
  %3593 = bitcast <2 x float> %3584 to <2 x i32>
  %3594 = extractelement <2 x i32> %3593, i32 1
  %3595 = getelementptr inbounds i8, i8* %3577, i64 4
  %3596 = bitcast i8* %3595 to i32*
  store i32 %3594, i32* %3596, align 1
  %3597 = extractelement <2 x i32> %3587, i32 0
  %3598 = getelementptr inbounds i8, i8* %3577, i64 8
  %3599 = bitcast i8* %3598 to i32*
  store i32 %3597, i32* %3599, align 1
  %3600 = extractelement <2 x i32> %3587, i32 1
  %3601 = getelementptr inbounds i8, i8* %3577, i64 12
  %3602 = bitcast i8* %3601 to i32*
  store i32 %3600, i32* %3602, align 1
  store %struct.Memory* %loadMem_4394a1, %struct.Memory** %MEMORY
  %loadMem_4394a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 33
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %3605 to i64*
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3607 = getelementptr inbounds %struct.GPR, %struct.GPR* %3606, i32 0, i32 15
  %3608 = getelementptr inbounds %struct.Reg, %struct.Reg* %3607, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %3608 to i64*
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3610 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3609, i64 0, i64 0
  %XMM0.i222 = bitcast %union.VectorReg* %3610 to %union.vec128_t*
  %3611 = load i64, i64* %RBP.i221
  %3612 = sub i64 %3611, 848
  %3613 = bitcast %union.vec128_t* %XMM0.i222 to i8*
  %3614 = load i64, i64* %PC.i220
  %3615 = add i64 %3614, 8
  store i64 %3615, i64* %PC.i220
  %3616 = bitcast i8* %3613 to <2 x float>*
  %3617 = load <2 x float>, <2 x float>* %3616, align 1
  %3618 = extractelement <2 x float> %3617, i32 0
  %3619 = inttoptr i64 %3612 to float*
  store float %3618, float* %3619
  store %struct.Memory* %loadMem_4394a9, %struct.Memory** %MEMORY
  %loadMem_4394b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %3622 to i64*
  %3623 = load i64, i64* %PC.i219
  %3624 = add i64 %3623, 290
  %3625 = load i64, i64* %PC.i219
  %3626 = add i64 %3625, 5
  store i64 %3626, i64* %PC.i219
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3624, i64* %3627, align 8
  store %struct.Memory* %loadMem_4394b1, %struct.Memory** %MEMORY
  br label %block_.L_4395d3

block_.L_4394b6:                                  ; preds = %block_.L_4393d9
  %loadMem_4394b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 1
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %3633 to i64*
  %3634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3635 = getelementptr inbounds %struct.GPR, %struct.GPR* %3634, i32 0, i32 15
  %3636 = getelementptr inbounds %struct.Reg, %struct.Reg* %3635, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %3636 to i64*
  %3637 = load i64, i64* %RBP.i218
  %3638 = sub i64 %3637, 32
  %3639 = load i64, i64* %PC.i216
  %3640 = add i64 %3639, 4
  store i64 %3640, i64* %PC.i216
  %3641 = inttoptr i64 %3638 to i32*
  %3642 = load i32, i32* %3641
  %3643 = sext i32 %3642 to i64
  store i64 %3643, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_4394b6, %struct.Memory** %MEMORY
  %loadMem_4394ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 1
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %3649 to i64*
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3651 = getelementptr inbounds %struct.GPR, %struct.GPR* %3650, i32 0, i32 15
  %3652 = getelementptr inbounds %struct.Reg, %struct.Reg* %3651, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %3652 to i64*
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3654 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3653, i64 0, i64 0
  %YMM0.i215 = bitcast %union.VectorReg* %3654 to %"class.std::bitset"*
  %3655 = bitcast %"class.std::bitset"* %YMM0.i215 to i8*
  %3656 = load i64, i64* %RBP.i214
  %3657 = load i64, i64* %RAX.i213
  %3658 = mul i64 %3657, 4
  %3659 = add i64 %3656, -832
  %3660 = add i64 %3659, %3658
  %3661 = load i64, i64* %PC.i212
  %3662 = add i64 %3661, 9
  store i64 %3662, i64* %PC.i212
  %3663 = inttoptr i64 %3660 to float*
  %3664 = load float, float* %3663
  %3665 = bitcast i8* %3655 to float*
  store float %3664, float* %3665, align 1
  %3666 = getelementptr inbounds i8, i8* %3655, i64 4
  %3667 = bitcast i8* %3666 to float*
  store float 0.000000e+00, float* %3667, align 1
  %3668 = getelementptr inbounds i8, i8* %3655, i64 8
  %3669 = bitcast i8* %3668 to float*
  store float 0.000000e+00, float* %3669, align 1
  %3670 = getelementptr inbounds i8, i8* %3655, i64 12
  %3671 = bitcast i8* %3670 to float*
  store float 0.000000e+00, float* %3671, align 1
  store %struct.Memory* %loadMem_4394ba, %struct.Memory** %MEMORY
  %loadMem_4394c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 1
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 15
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %RBP.i211
  %3682 = sub i64 %3681, 8
  %3683 = load i64, i64* %PC.i209
  %3684 = add i64 %3683, 4
  store i64 %3684, i64* %PC.i209
  %3685 = inttoptr i64 %3682 to i64*
  %3686 = load i64, i64* %3685
  store i64 %3686, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_4394c3, %struct.Memory** %MEMORY
  %loadMem_4394c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 5
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 15
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RBP.i208
  %3697 = sub i64 %3696, 28
  %3698 = load i64, i64* %PC.i206
  %3699 = add i64 %3698, 4
  store i64 %3699, i64* %PC.i206
  %3700 = inttoptr i64 %3697 to i32*
  %3701 = load i32, i32* %3700
  %3702 = sext i32 %3701 to i64
  store i64 %3702, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_4394c7, %struct.Memory** %MEMORY
  %loadMem_4394cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 1
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 5
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3711 to i64*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3712, i64 0, i64 1
  %YMM1.i205 = bitcast %union.VectorReg* %3713 to %"class.std::bitset"*
  %3714 = bitcast %"class.std::bitset"* %YMM1.i205 to i8*
  %3715 = load i64, i64* %RAX.i203
  %3716 = load i64, i64* %RCX.i204
  %3717 = mul i64 %3716, 4
  %3718 = add i64 %3717, %3715
  %3719 = load i64, i64* %PC.i202
  %3720 = add i64 %3719, 5
  store i64 %3720, i64* %PC.i202
  %3721 = inttoptr i64 %3718 to float*
  %3722 = load float, float* %3721
  %3723 = bitcast i8* %3714 to float*
  store float %3722, float* %3723, align 1
  %3724 = getelementptr inbounds i8, i8* %3714, i64 4
  %3725 = bitcast i8* %3724 to float*
  store float 0.000000e+00, float* %3725, align 1
  %3726 = getelementptr inbounds i8, i8* %3714, i64 8
  %3727 = bitcast i8* %3726 to float*
  store float 0.000000e+00, float* %3727, align 1
  %3728 = getelementptr inbounds i8, i8* %3714, i64 12
  %3729 = bitcast i8* %3728 to float*
  store float 0.000000e+00, float* %3729, align 1
  store %struct.Memory* %loadMem_4394cb, %struct.Memory** %MEMORY
  %loadMem_4394d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 1
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i201
  %3740 = sub i64 %3739, 16
  %3741 = load i64, i64* %PC.i199
  %3742 = add i64 %3741, 4
  store i64 %3742, i64* %PC.i199
  %3743 = inttoptr i64 %3740 to i64*
  %3744 = load i64, i64* %3743
  store i64 %3744, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_4394d0, %struct.Memory** %MEMORY
  %loadMem_4394d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 1
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %3750 to i64*
  %3751 = load i64, i64* %RAX.i198
  %3752 = load i64, i64* %PC.i197
  %3753 = add i64 %3752, 6
  store i64 %3753, i64* %PC.i197
  %3754 = add i64 808, %3751
  store i64 %3754, i64* %RAX.i198, align 8
  %3755 = icmp ult i64 %3754, %3751
  %3756 = icmp ult i64 %3754, 808
  %3757 = or i1 %3755, %3756
  %3758 = zext i1 %3757 to i8
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3758, i8* %3759, align 1
  %3760 = trunc i64 %3754 to i32
  %3761 = and i32 %3760, 255
  %3762 = call i32 @llvm.ctpop.i32(i32 %3761)
  %3763 = trunc i32 %3762 to i8
  %3764 = and i8 %3763, 1
  %3765 = xor i8 %3764, 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3765, i8* %3766, align 1
  %3767 = xor i64 808, %3751
  %3768 = xor i64 %3767, %3754
  %3769 = lshr i64 %3768, 4
  %3770 = trunc i64 %3769 to i8
  %3771 = and i8 %3770, 1
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3771, i8* %3772, align 1
  %3773 = icmp eq i64 %3754, 0
  %3774 = zext i1 %3773 to i8
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3774, i8* %3775, align 1
  %3776 = lshr i64 %3754, 63
  %3777 = trunc i64 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3777, i8* %3778, align 1
  %3779 = lshr i64 %3751, 63
  %3780 = xor i64 %3776, %3779
  %3781 = add i64 %3780, %3776
  %3782 = icmp eq i64 %3781, 2
  %3783 = zext i1 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3783, i8* %3784, align 1
  store %struct.Memory* %loadMem_4394d4, %struct.Memory** %MEMORY
  %loadMem_4394da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3786 = getelementptr inbounds %struct.GPR, %struct.GPR* %3785, i32 0, i32 33
  %3787 = getelementptr inbounds %struct.Reg, %struct.Reg* %3786, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3787 to i64*
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3789 = getelementptr inbounds %struct.GPR, %struct.GPR* %3788, i32 0, i32 5
  %3790 = getelementptr inbounds %struct.Reg, %struct.Reg* %3789, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %3790 to i64*
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 15
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %RBP.i196
  %3795 = sub i64 %3794, 32
  %3796 = load i64, i64* %PC.i194
  %3797 = add i64 %3796, 4
  store i64 %3797, i64* %PC.i194
  %3798 = inttoptr i64 %3795 to i32*
  %3799 = load i32, i32* %3798
  %3800 = sext i32 %3799 to i64
  store i64 %3800, i64* %RCX.i195, align 8
  store %struct.Memory* %loadMem_4394da, %struct.Memory** %MEMORY
  %loadMem_4394de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 33
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3803 to i64*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 5
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %3806 to i64*
  %3807 = load i64, i64* %RCX.i193
  %3808 = load i64, i64* %PC.i192
  %3809 = add i64 %3808, 4
  store i64 %3809, i64* %PC.i192
  %3810 = sext i64 %3807 to i128
  %3811 = and i128 %3810, -18446744073709551616
  %3812 = zext i64 %3807 to i128
  %3813 = or i128 %3811, %3812
  %3814 = mul i128 28, %3813
  %3815 = trunc i128 %3814 to i64
  store i64 %3815, i64* %RCX.i193, align 8
  %3816 = sext i64 %3815 to i128
  %3817 = icmp ne i128 %3816, %3814
  %3818 = zext i1 %3817 to i8
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3818, i8* %3819, align 1
  %3820 = trunc i128 %3814 to i32
  %3821 = and i32 %3820, 255
  %3822 = call i32 @llvm.ctpop.i32(i32 %3821)
  %3823 = trunc i32 %3822 to i8
  %3824 = and i8 %3823, 1
  %3825 = xor i8 %3824, 1
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3825, i8* %3826, align 1
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3827, align 1
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3828, align 1
  %3829 = lshr i64 %3815, 63
  %3830 = trunc i64 %3829 to i8
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3830, i8* %3831, align 1
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3818, i8* %3832, align 1
  store %struct.Memory* %loadMem_4394de, %struct.Memory** %MEMORY
  %loadMem_4394e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 1
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 5
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %RAX.i190
  %3843 = load i64, i64* %RCX.i191
  %3844 = load i64, i64* %PC.i189
  %3845 = add i64 %3844, 3
  store i64 %3845, i64* %PC.i189
  %3846 = add i64 %3843, %3842
  store i64 %3846, i64* %RAX.i190, align 8
  %3847 = icmp ult i64 %3846, %3842
  %3848 = icmp ult i64 %3846, %3843
  %3849 = or i1 %3847, %3848
  %3850 = zext i1 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3850, i8* %3851, align 1
  %3852 = trunc i64 %3846 to i32
  %3853 = and i32 %3852, 255
  %3854 = call i32 @llvm.ctpop.i32(i32 %3853)
  %3855 = trunc i32 %3854 to i8
  %3856 = and i8 %3855, 1
  %3857 = xor i8 %3856, 1
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3857, i8* %3858, align 1
  %3859 = xor i64 %3843, %3842
  %3860 = xor i64 %3859, %3846
  %3861 = lshr i64 %3860, 4
  %3862 = trunc i64 %3861 to i8
  %3863 = and i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3863, i8* %3864, align 1
  %3865 = icmp eq i64 %3846, 0
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3866, i8* %3867, align 1
  %3868 = lshr i64 %3846, 63
  %3869 = trunc i64 %3868 to i8
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3869, i8* %3870, align 1
  %3871 = lshr i64 %3842, 63
  %3872 = lshr i64 %3843, 63
  %3873 = xor i64 %3868, %3871
  %3874 = xor i64 %3868, %3872
  %3875 = add i64 %3873, %3874
  %3876 = icmp eq i64 %3875, 2
  %3877 = zext i1 %3876 to i8
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3877, i8* %3878, align 1
  store %struct.Memory* %loadMem_4394e2, %struct.Memory** %MEMORY
  %loadMem_4394e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3880 = getelementptr inbounds %struct.GPR, %struct.GPR* %3879, i32 0, i32 33
  %3881 = getelementptr inbounds %struct.Reg, %struct.Reg* %3880, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %3881 to i64*
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 5
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 15
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %3887 to i64*
  %3888 = load i64, i64* %RBP.i188
  %3889 = sub i64 %3888, 28
  %3890 = load i64, i64* %PC.i186
  %3891 = add i64 %3890, 4
  store i64 %3891, i64* %PC.i186
  %3892 = inttoptr i64 %3889 to i32*
  %3893 = load i32, i32* %3892
  %3894 = sext i32 %3893 to i64
  store i64 %3894, i64* %RCX.i187, align 8
  store %struct.Memory* %loadMem_4394e5, %struct.Memory** %MEMORY
  %loadMem_4394e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 33
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %3897 to i64*
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3899 = getelementptr inbounds %struct.GPR, %struct.GPR* %3898, i32 0, i32 1
  %3900 = getelementptr inbounds %struct.Reg, %struct.Reg* %3899, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %3900 to i64*
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3902 = getelementptr inbounds %struct.GPR, %struct.GPR* %3901, i32 0, i32 5
  %3903 = getelementptr inbounds %struct.Reg, %struct.Reg* %3902, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %3903 to i64*
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3905 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3904, i64 0, i64 1
  %YMM1.i185 = bitcast %union.VectorReg* %3905 to %"class.std::bitset"*
  %3906 = bitcast %"class.std::bitset"* %YMM1.i185 to i8*
  %3907 = bitcast %"class.std::bitset"* %YMM1.i185 to i8*
  %3908 = load i64, i64* %RAX.i183
  %3909 = load i64, i64* %RCX.i184
  %3910 = mul i64 %3909, 4
  %3911 = add i64 %3910, %3908
  %3912 = load i64, i64* %PC.i182
  %3913 = add i64 %3912, 5
  store i64 %3913, i64* %PC.i182
  %3914 = bitcast i8* %3907 to <2 x float>*
  %3915 = load <2 x float>, <2 x float>* %3914, align 1
  %3916 = getelementptr inbounds i8, i8* %3907, i64 8
  %3917 = bitcast i8* %3916 to <2 x i32>*
  %3918 = load <2 x i32>, <2 x i32>* %3917, align 1
  %3919 = inttoptr i64 %3911 to float*
  %3920 = load float, float* %3919
  %3921 = extractelement <2 x float> %3915, i32 0
  %3922 = fadd float %3921, %3920
  %3923 = bitcast i8* %3906 to float*
  store float %3922, float* %3923, align 1
  %3924 = bitcast <2 x float> %3915 to <2 x i32>
  %3925 = extractelement <2 x i32> %3924, i32 1
  %3926 = getelementptr inbounds i8, i8* %3906, i64 4
  %3927 = bitcast i8* %3926 to i32*
  store i32 %3925, i32* %3927, align 1
  %3928 = extractelement <2 x i32> %3918, i32 0
  %3929 = getelementptr inbounds i8, i8* %3906, i64 8
  %3930 = bitcast i8* %3929 to i32*
  store i32 %3928, i32* %3930, align 1
  %3931 = extractelement <2 x i32> %3918, i32 1
  %3932 = getelementptr inbounds i8, i8* %3906, i64 12
  %3933 = bitcast i8* %3932 to i32*
  store i32 %3931, i32* %3933, align 1
  store %struct.Memory* %loadMem_4394e9, %struct.Memory** %MEMORY
  %loadMem_4394ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3935 = getelementptr inbounds %struct.GPR, %struct.GPR* %3934, i32 0, i32 33
  %3936 = getelementptr inbounds %struct.Reg, %struct.Reg* %3935, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3936 to i64*
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3938 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3937, i64 0, i64 0
  %YMM0.i180 = bitcast %union.VectorReg* %3938 to %"class.std::bitset"*
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3940 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3939, i64 0, i64 1
  %XMM1.i181 = bitcast %union.VectorReg* %3940 to %union.vec128_t*
  %3941 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %3942 = bitcast %"class.std::bitset"* %YMM0.i180 to i8*
  %3943 = bitcast %union.vec128_t* %XMM1.i181 to i8*
  %3944 = load i64, i64* %PC.i179
  %3945 = add i64 %3944, 4
  store i64 %3945, i64* %PC.i179
  %3946 = bitcast i8* %3942 to <2 x float>*
  %3947 = load <2 x float>, <2 x float>* %3946, align 1
  %3948 = getelementptr inbounds i8, i8* %3942, i64 8
  %3949 = bitcast i8* %3948 to <2 x i32>*
  %3950 = load <2 x i32>, <2 x i32>* %3949, align 1
  %3951 = bitcast i8* %3943 to <2 x float>*
  %3952 = load <2 x float>, <2 x float>* %3951, align 1
  %3953 = extractelement <2 x float> %3947, i32 0
  %3954 = extractelement <2 x float> %3952, i32 0
  %3955 = fmul float %3953, %3954
  %3956 = bitcast i8* %3941 to float*
  store float %3955, float* %3956, align 1
  %3957 = bitcast <2 x float> %3947 to <2 x i32>
  %3958 = extractelement <2 x i32> %3957, i32 1
  %3959 = getelementptr inbounds i8, i8* %3941, i64 4
  %3960 = bitcast i8* %3959 to i32*
  store i32 %3958, i32* %3960, align 1
  %3961 = extractelement <2 x i32> %3950, i32 0
  %3962 = getelementptr inbounds i8, i8* %3941, i64 8
  %3963 = bitcast i8* %3962 to i32*
  store i32 %3961, i32* %3963, align 1
  %3964 = extractelement <2 x i32> %3950, i32 1
  %3965 = getelementptr inbounds i8, i8* %3941, i64 12
  %3966 = bitcast i8* %3965 to i32*
  store i32 %3964, i32* %3966, align 1
  store %struct.Memory* %loadMem_4394ee, %struct.Memory** %MEMORY
  %loadMem_4394f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 33
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3972 to i64*
  %3973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3974 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3973, i64 0, i64 1
  %YMM1.i178 = bitcast %union.VectorReg* %3974 to %"class.std::bitset"*
  %3975 = bitcast %"class.std::bitset"* %YMM1.i178 to i8*
  %3976 = load i64, i64* %RBP.i177
  %3977 = sub i64 %3976, 844
  %3978 = load i64, i64* %PC.i176
  %3979 = add i64 %3978, 8
  store i64 %3979, i64* %PC.i176
  %3980 = inttoptr i64 %3977 to float*
  %3981 = load float, float* %3980
  %3982 = bitcast i8* %3975 to float*
  store float %3981, float* %3982, align 1
  %3983 = getelementptr inbounds i8, i8* %3975, i64 4
  %3984 = bitcast i8* %3983 to float*
  store float 0.000000e+00, float* %3984, align 1
  %3985 = getelementptr inbounds i8, i8* %3975, i64 8
  %3986 = bitcast i8* %3985 to float*
  store float 0.000000e+00, float* %3986, align 1
  %3987 = getelementptr inbounds i8, i8* %3975, i64 12
  %3988 = bitcast i8* %3987 to float*
  store float 0.000000e+00, float* %3988, align 1
  store %struct.Memory* %loadMem_4394f2, %struct.Memory** %MEMORY
  %loadMem_4394fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3990 = getelementptr inbounds %struct.GPR, %struct.GPR* %3989, i32 0, i32 33
  %3991 = getelementptr inbounds %struct.Reg, %struct.Reg* %3990, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3991 to i64*
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3993 = getelementptr inbounds %struct.GPR, %struct.GPR* %3992, i32 0, i32 1
  %3994 = getelementptr inbounds %struct.Reg, %struct.Reg* %3993, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %3994 to i64*
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3996 = getelementptr inbounds %struct.GPR, %struct.GPR* %3995, i32 0, i32 15
  %3997 = getelementptr inbounds %struct.Reg, %struct.Reg* %3996, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %3997 to i64*
  %3998 = load i64, i64* %RBP.i175
  %3999 = sub i64 %3998, 16
  %4000 = load i64, i64* %PC.i173
  %4001 = add i64 %4000, 4
  store i64 %4001, i64* %PC.i173
  %4002 = inttoptr i64 %3999 to i64*
  %4003 = load i64, i64* %4002
  store i64 %4003, i64* %RAX.i174, align 8
  store %struct.Memory* %loadMem_4394fa, %struct.Memory** %MEMORY
  %loadMem_4394fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4005 = getelementptr inbounds %struct.GPR, %struct.GPR* %4004, i32 0, i32 33
  %4006 = getelementptr inbounds %struct.Reg, %struct.Reg* %4005, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4006 to i64*
  %4007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4008 = getelementptr inbounds %struct.GPR, %struct.GPR* %4007, i32 0, i32 1
  %4009 = getelementptr inbounds %struct.Reg, %struct.Reg* %4008, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %4009 to i64*
  %4010 = load i64, i64* %RAX.i172
  %4011 = load i64, i64* %PC.i171
  %4012 = add i64 %4011, 6
  store i64 %4012, i64* %PC.i171
  %4013 = add i64 808, %4010
  store i64 %4013, i64* %RAX.i172, align 8
  %4014 = icmp ult i64 %4013, %4010
  %4015 = icmp ult i64 %4013, 808
  %4016 = or i1 %4014, %4015
  %4017 = zext i1 %4016 to i8
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4017, i8* %4018, align 1
  %4019 = trunc i64 %4013 to i32
  %4020 = and i32 %4019, 255
  %4021 = call i32 @llvm.ctpop.i32(i32 %4020)
  %4022 = trunc i32 %4021 to i8
  %4023 = and i8 %4022, 1
  %4024 = xor i8 %4023, 1
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4024, i8* %4025, align 1
  %4026 = xor i64 808, %4010
  %4027 = xor i64 %4026, %4013
  %4028 = lshr i64 %4027, 4
  %4029 = trunc i64 %4028 to i8
  %4030 = and i8 %4029, 1
  %4031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4030, i8* %4031, align 1
  %4032 = icmp eq i64 %4013, 0
  %4033 = zext i1 %4032 to i8
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4033, i8* %4034, align 1
  %4035 = lshr i64 %4013, 63
  %4036 = trunc i64 %4035 to i8
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4036, i8* %4037, align 1
  %4038 = lshr i64 %4010, 63
  %4039 = xor i64 %4035, %4038
  %4040 = add i64 %4039, %4035
  %4041 = icmp eq i64 %4040, 2
  %4042 = zext i1 %4041 to i8
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4042, i8* %4043, align 1
  store %struct.Memory* %loadMem_4394fe, %struct.Memory** %MEMORY
  %loadMem_439504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 5
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 15
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %RBP.i170
  %4054 = sub i64 %4053, 32
  %4055 = load i64, i64* %PC.i168
  %4056 = add i64 %4055, 4
  store i64 %4056, i64* %PC.i168
  %4057 = inttoptr i64 %4054 to i32*
  %4058 = load i32, i32* %4057
  %4059 = sext i32 %4058 to i64
  store i64 %4059, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_439504, %struct.Memory** %MEMORY
  %loadMem_439508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4061 = getelementptr inbounds %struct.GPR, %struct.GPR* %4060, i32 0, i32 33
  %4062 = getelementptr inbounds %struct.Reg, %struct.Reg* %4061, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %4062 to i64*
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 5
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %4065 to i64*
  %4066 = load i64, i64* %RCX.i167
  %4067 = load i64, i64* %PC.i166
  %4068 = add i64 %4067, 4
  store i64 %4068, i64* %PC.i166
  %4069 = sext i64 %4066 to i128
  %4070 = and i128 %4069, -18446744073709551616
  %4071 = zext i64 %4066 to i128
  %4072 = or i128 %4070, %4071
  %4073 = mul i128 28, %4072
  %4074 = trunc i128 %4073 to i64
  store i64 %4074, i64* %RCX.i167, align 8
  %4075 = sext i64 %4074 to i128
  %4076 = icmp ne i128 %4075, %4073
  %4077 = zext i1 %4076 to i8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4077, i8* %4078, align 1
  %4079 = trunc i128 %4073 to i32
  %4080 = and i32 %4079, 255
  %4081 = call i32 @llvm.ctpop.i32(i32 %4080)
  %4082 = trunc i32 %4081 to i8
  %4083 = and i8 %4082, 1
  %4084 = xor i8 %4083, 1
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4084, i8* %4085, align 1
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4086, align 1
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4087, align 1
  %4088 = lshr i64 %4074, 63
  %4089 = trunc i64 %4088 to i8
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4089, i8* %4090, align 1
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4077, i8* %4091, align 1
  store %struct.Memory* %loadMem_439508, %struct.Memory** %MEMORY
  %loadMem_43950c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 1
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 5
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %RAX.i164
  %4102 = load i64, i64* %RCX.i165
  %4103 = load i64, i64* %PC.i163
  %4104 = add i64 %4103, 3
  store i64 %4104, i64* %PC.i163
  %4105 = add i64 %4102, %4101
  store i64 %4105, i64* %RAX.i164, align 8
  %4106 = icmp ult i64 %4105, %4101
  %4107 = icmp ult i64 %4105, %4102
  %4108 = or i1 %4106, %4107
  %4109 = zext i1 %4108 to i8
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4109, i8* %4110, align 1
  %4111 = trunc i64 %4105 to i32
  %4112 = and i32 %4111, 255
  %4113 = call i32 @llvm.ctpop.i32(i32 %4112)
  %4114 = trunc i32 %4113 to i8
  %4115 = and i8 %4114, 1
  %4116 = xor i8 %4115, 1
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4116, i8* %4117, align 1
  %4118 = xor i64 %4102, %4101
  %4119 = xor i64 %4118, %4105
  %4120 = lshr i64 %4119, 4
  %4121 = trunc i64 %4120 to i8
  %4122 = and i8 %4121, 1
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4122, i8* %4123, align 1
  %4124 = icmp eq i64 %4105, 0
  %4125 = zext i1 %4124 to i8
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4125, i8* %4126, align 1
  %4127 = lshr i64 %4105, 63
  %4128 = trunc i64 %4127 to i8
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4128, i8* %4129, align 1
  %4130 = lshr i64 %4101, 63
  %4131 = lshr i64 %4102, 63
  %4132 = xor i64 %4127, %4130
  %4133 = xor i64 %4127, %4131
  %4134 = add i64 %4132, %4133
  %4135 = icmp eq i64 %4134, 2
  %4136 = zext i1 %4135 to i8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4136, i8* %4137, align 1
  store %struct.Memory* %loadMem_43950c, %struct.Memory** %MEMORY
  %loadMem_43950f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4139 = getelementptr inbounds %struct.GPR, %struct.GPR* %4138, i32 0, i32 33
  %4140 = getelementptr inbounds %struct.Reg, %struct.Reg* %4139, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %4140 to i64*
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4142 = getelementptr inbounds %struct.GPR, %struct.GPR* %4141, i32 0, i32 1
  %4143 = getelementptr inbounds %struct.Reg, %struct.Reg* %4142, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %4143 to i64*
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4145 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4144, i64 0, i64 1
  %YMM1.i162 = bitcast %union.VectorReg* %4145 to %"class.std::bitset"*
  %4146 = bitcast %"class.std::bitset"* %YMM1.i162 to i8*
  %4147 = bitcast %"class.std::bitset"* %YMM1.i162 to i8*
  %4148 = load i64, i64* %RAX.i161
  %4149 = add i64 %4148, 12
  %4150 = load i64, i64* %PC.i160
  %4151 = add i64 %4150, 5
  store i64 %4151, i64* %PC.i160
  %4152 = bitcast i8* %4147 to <2 x float>*
  %4153 = load <2 x float>, <2 x float>* %4152, align 1
  %4154 = getelementptr inbounds i8, i8* %4147, i64 8
  %4155 = bitcast i8* %4154 to <2 x i32>*
  %4156 = load <2 x i32>, <2 x i32>* %4155, align 1
  %4157 = inttoptr i64 %4149 to float*
  %4158 = load float, float* %4157
  %4159 = extractelement <2 x float> %4153, i32 0
  %4160 = fadd float %4159, %4158
  %4161 = bitcast i8* %4146 to float*
  store float %4160, float* %4161, align 1
  %4162 = bitcast <2 x float> %4153 to <2 x i32>
  %4163 = extractelement <2 x i32> %4162, i32 1
  %4164 = getelementptr inbounds i8, i8* %4146, i64 4
  %4165 = bitcast i8* %4164 to i32*
  store i32 %4163, i32* %4165, align 1
  %4166 = extractelement <2 x i32> %4156, i32 0
  %4167 = getelementptr inbounds i8, i8* %4146, i64 8
  %4168 = bitcast i8* %4167 to i32*
  store i32 %4166, i32* %4168, align 1
  %4169 = extractelement <2 x i32> %4156, i32 1
  %4170 = getelementptr inbounds i8, i8* %4146, i64 12
  %4171 = bitcast i8* %4170 to i32*
  store i32 %4169, i32* %4171, align 1
  store %struct.Memory* %loadMem_43950f, %struct.Memory** %MEMORY
  %loadMem_439514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 33
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %4174 to i64*
  %4175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4176 = getelementptr inbounds %struct.GPR, %struct.GPR* %4175, i32 0, i32 1
  %4177 = getelementptr inbounds %struct.Reg, %struct.Reg* %4176, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %4177 to i64*
  %4178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4179 = getelementptr inbounds %struct.GPR, %struct.GPR* %4178, i32 0, i32 15
  %4180 = getelementptr inbounds %struct.Reg, %struct.Reg* %4179, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %4180 to i64*
  %4181 = load i64, i64* %RBP.i159
  %4182 = sub i64 %4181, 16
  %4183 = load i64, i64* %PC.i157
  %4184 = add i64 %4183, 4
  store i64 %4184, i64* %PC.i157
  %4185 = inttoptr i64 %4182 to i64*
  %4186 = load i64, i64* %4185
  store i64 %4186, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_439514, %struct.Memory** %MEMORY
  %loadMem_439518 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 33
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 1
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %4192 to i64*
  %4193 = load i64, i64* %RAX.i156
  %4194 = load i64, i64* %PC.i155
  %4195 = add i64 %4194, 6
  store i64 %4195, i64* %PC.i155
  %4196 = add i64 808, %4193
  store i64 %4196, i64* %RAX.i156, align 8
  %4197 = icmp ult i64 %4196, %4193
  %4198 = icmp ult i64 %4196, 808
  %4199 = or i1 %4197, %4198
  %4200 = zext i1 %4199 to i8
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4200, i8* %4201, align 1
  %4202 = trunc i64 %4196 to i32
  %4203 = and i32 %4202, 255
  %4204 = call i32 @llvm.ctpop.i32(i32 %4203)
  %4205 = trunc i32 %4204 to i8
  %4206 = and i8 %4205, 1
  %4207 = xor i8 %4206, 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4207, i8* %4208, align 1
  %4209 = xor i64 808, %4193
  %4210 = xor i64 %4209, %4196
  %4211 = lshr i64 %4210, 4
  %4212 = trunc i64 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4213, i8* %4214, align 1
  %4215 = icmp eq i64 %4196, 0
  %4216 = zext i1 %4215 to i8
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4216, i8* %4217, align 1
  %4218 = lshr i64 %4196, 63
  %4219 = trunc i64 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4219, i8* %4220, align 1
  %4221 = lshr i64 %4193, 63
  %4222 = xor i64 %4218, %4221
  %4223 = add i64 %4222, %4218
  %4224 = icmp eq i64 %4223, 2
  %4225 = zext i1 %4224 to i8
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4225, i8* %4226, align 1
  store %struct.Memory* %loadMem_439518, %struct.Memory** %MEMORY
  %loadMem_43951e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 5
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 15
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RBP.i154
  %4237 = sub i64 %4236, 32
  %4238 = load i64, i64* %PC.i152
  %4239 = add i64 %4238, 4
  store i64 %4239, i64* %PC.i152
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240
  %4242 = sext i32 %4241 to i64
  store i64 %4242, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_43951e, %struct.Memory** %MEMORY
  %loadMem_439522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 5
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RCX.i151 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RCX.i151
  %4250 = load i64, i64* %PC.i150
  %4251 = add i64 %4250, 4
  store i64 %4251, i64* %PC.i150
  %4252 = sext i64 %4249 to i128
  %4253 = and i128 %4252, -18446744073709551616
  %4254 = zext i64 %4249 to i128
  %4255 = or i128 %4253, %4254
  %4256 = mul i128 28, %4255
  %4257 = trunc i128 %4256 to i64
  store i64 %4257, i64* %RCX.i151, align 8
  %4258 = sext i64 %4257 to i128
  %4259 = icmp ne i128 %4258, %4256
  %4260 = zext i1 %4259 to i8
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4260, i8* %4261, align 1
  %4262 = trunc i128 %4256 to i32
  %4263 = and i32 %4262, 255
  %4264 = call i32 @llvm.ctpop.i32(i32 %4263)
  %4265 = trunc i32 %4264 to i8
  %4266 = and i8 %4265, 1
  %4267 = xor i8 %4266, 1
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4267, i8* %4268, align 1
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4269, align 1
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4270, align 1
  %4271 = lshr i64 %4257, 63
  %4272 = trunc i64 %4271 to i8
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4272, i8* %4273, align 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4260, i8* %4274, align 1
  store %struct.Memory* %loadMem_439522, %struct.Memory** %MEMORY
  %loadMem_439526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 33
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4277 to i64*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 1
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4280 to i64*
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 5
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %4283 to i64*
  %4284 = load i64, i64* %RAX.i148
  %4285 = load i64, i64* %RCX.i149
  %4286 = load i64, i64* %PC.i147
  %4287 = add i64 %4286, 3
  store i64 %4287, i64* %PC.i147
  %4288 = add i64 %4285, %4284
  store i64 %4288, i64* %RAX.i148, align 8
  %4289 = icmp ult i64 %4288, %4284
  %4290 = icmp ult i64 %4288, %4285
  %4291 = or i1 %4289, %4290
  %4292 = zext i1 %4291 to i8
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4292, i8* %4293, align 1
  %4294 = trunc i64 %4288 to i32
  %4295 = and i32 %4294, 255
  %4296 = call i32 @llvm.ctpop.i32(i32 %4295)
  %4297 = trunc i32 %4296 to i8
  %4298 = and i8 %4297, 1
  %4299 = xor i8 %4298, 1
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4299, i8* %4300, align 1
  %4301 = xor i64 %4285, %4284
  %4302 = xor i64 %4301, %4288
  %4303 = lshr i64 %4302, 4
  %4304 = trunc i64 %4303 to i8
  %4305 = and i8 %4304, 1
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4305, i8* %4306, align 1
  %4307 = icmp eq i64 %4288, 0
  %4308 = zext i1 %4307 to i8
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4308, i8* %4309, align 1
  %4310 = lshr i64 %4288, 63
  %4311 = trunc i64 %4310 to i8
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4311, i8* %4312, align 1
  %4313 = lshr i64 %4284, 63
  %4314 = lshr i64 %4285, 63
  %4315 = xor i64 %4310, %4313
  %4316 = xor i64 %4310, %4314
  %4317 = add i64 %4315, %4316
  %4318 = icmp eq i64 %4317, 2
  %4319 = zext i1 %4318 to i8
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4319, i8* %4320, align 1
  store %struct.Memory* %loadMem_439526, %struct.Memory** %MEMORY
  %loadMem_439529 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4322 = getelementptr inbounds %struct.GPR, %struct.GPR* %4321, i32 0, i32 33
  %4323 = getelementptr inbounds %struct.Reg, %struct.Reg* %4322, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4323 to i64*
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 1
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4328 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4327, i64 0, i64 1
  %YMM1.i146 = bitcast %union.VectorReg* %4328 to %"class.std::bitset"*
  %4329 = bitcast %"class.std::bitset"* %YMM1.i146 to i8*
  %4330 = bitcast %"class.std::bitset"* %YMM1.i146 to i8*
  %4331 = load i64, i64* %RAX.i145
  %4332 = add i64 %4331, 16
  %4333 = load i64, i64* %PC.i144
  %4334 = add i64 %4333, 5
  store i64 %4334, i64* %PC.i144
  %4335 = bitcast i8* %4330 to <2 x float>*
  %4336 = load <2 x float>, <2 x float>* %4335, align 1
  %4337 = getelementptr inbounds i8, i8* %4330, i64 8
  %4338 = bitcast i8* %4337 to <2 x i32>*
  %4339 = load <2 x i32>, <2 x i32>* %4338, align 1
  %4340 = inttoptr i64 %4332 to float*
  %4341 = load float, float* %4340
  %4342 = extractelement <2 x float> %4336, i32 0
  %4343 = fadd float %4342, %4341
  %4344 = bitcast i8* %4329 to float*
  store float %4343, float* %4344, align 1
  %4345 = bitcast <2 x float> %4336 to <2 x i32>
  %4346 = extractelement <2 x i32> %4345, i32 1
  %4347 = getelementptr inbounds i8, i8* %4329, i64 4
  %4348 = bitcast i8* %4347 to i32*
  store i32 %4346, i32* %4348, align 1
  %4349 = extractelement <2 x i32> %4339, i32 0
  %4350 = getelementptr inbounds i8, i8* %4329, i64 8
  %4351 = bitcast i8* %4350 to i32*
  store i32 %4349, i32* %4351, align 1
  %4352 = extractelement <2 x i32> %4339, i32 1
  %4353 = getelementptr inbounds i8, i8* %4329, i64 12
  %4354 = bitcast i8* %4353 to i32*
  store i32 %4352, i32* %4354, align 1
  store %struct.Memory* %loadMem_439529, %struct.Memory** %MEMORY
  %loadMem_43952e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4356 = getelementptr inbounds %struct.GPR, %struct.GPR* %4355, i32 0, i32 33
  %4357 = getelementptr inbounds %struct.Reg, %struct.Reg* %4356, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4357 to i64*
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4358, i64 0, i64 0
  %YMM0.i142 = bitcast %union.VectorReg* %4359 to %"class.std::bitset"*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4360, i64 0, i64 1
  %XMM1.i143 = bitcast %union.VectorReg* %4361 to %union.vec128_t*
  %4362 = bitcast %"class.std::bitset"* %YMM0.i142 to i8*
  %4363 = bitcast %"class.std::bitset"* %YMM0.i142 to i8*
  %4364 = bitcast %union.vec128_t* %XMM1.i143 to i8*
  %4365 = load i64, i64* %PC.i141
  %4366 = add i64 %4365, 4
  store i64 %4366, i64* %PC.i141
  %4367 = bitcast i8* %4363 to <2 x float>*
  %4368 = load <2 x float>, <2 x float>* %4367, align 1
  %4369 = getelementptr inbounds i8, i8* %4363, i64 8
  %4370 = bitcast i8* %4369 to <2 x i32>*
  %4371 = load <2 x i32>, <2 x i32>* %4370, align 1
  %4372 = bitcast i8* %4364 to <2 x float>*
  %4373 = load <2 x float>, <2 x float>* %4372, align 1
  %4374 = extractelement <2 x float> %4368, i32 0
  %4375 = extractelement <2 x float> %4373, i32 0
  %4376 = fdiv float %4374, %4375
  %4377 = bitcast i8* %4362 to float*
  store float %4376, float* %4377, align 1
  %4378 = bitcast <2 x float> %4368 to <2 x i32>
  %4379 = extractelement <2 x i32> %4378, i32 1
  %4380 = getelementptr inbounds i8, i8* %4362, i64 4
  %4381 = bitcast i8* %4380 to i32*
  store i32 %4379, i32* %4381, align 1
  %4382 = extractelement <2 x i32> %4371, i32 0
  %4383 = getelementptr inbounds i8, i8* %4362, i64 8
  %4384 = bitcast i8* %4383 to i32*
  store i32 %4382, i32* %4384, align 1
  %4385 = extractelement <2 x i32> %4371, i32 1
  %4386 = getelementptr inbounds i8, i8* %4362, i64 12
  %4387 = bitcast i8* %4386 to i32*
  store i32 %4385, i32* %4387, align 1
  store %struct.Memory* %loadMem_43952e, %struct.Memory** %MEMORY
  %loadMem_439532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4390 to i64*
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4392 = getelementptr inbounds %struct.GPR, %struct.GPR* %4391, i32 0, i32 15
  %4393 = getelementptr inbounds %struct.Reg, %struct.Reg* %4392, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %4393 to i64*
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4395 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4394, i64 0, i64 0
  %YMM0.i140 = bitcast %union.VectorReg* %4395 to %"class.std::bitset"*
  %4396 = bitcast %"class.std::bitset"* %YMM0.i140 to i8*
  %4397 = bitcast %"class.std::bitset"* %YMM0.i140 to i8*
  %4398 = load i64, i64* %RBP.i139
  %4399 = sub i64 %4398, 848
  %4400 = load i64, i64* %PC.i138
  %4401 = add i64 %4400, 8
  store i64 %4401, i64* %PC.i138
  %4402 = bitcast i8* %4397 to <2 x float>*
  %4403 = load <2 x float>, <2 x float>* %4402, align 1
  %4404 = getelementptr inbounds i8, i8* %4397, i64 8
  %4405 = bitcast i8* %4404 to <2 x i32>*
  %4406 = load <2 x i32>, <2 x i32>* %4405, align 1
  %4407 = inttoptr i64 %4399 to float*
  %4408 = load float, float* %4407
  %4409 = extractelement <2 x float> %4403, i32 0
  %4410 = fadd float %4409, %4408
  %4411 = bitcast i8* %4396 to float*
  store float %4410, float* %4411, align 1
  %4412 = bitcast <2 x float> %4403 to <2 x i32>
  %4413 = extractelement <2 x i32> %4412, i32 1
  %4414 = getelementptr inbounds i8, i8* %4396, i64 4
  %4415 = bitcast i8* %4414 to i32*
  store i32 %4413, i32* %4415, align 1
  %4416 = extractelement <2 x i32> %4406, i32 0
  %4417 = getelementptr inbounds i8, i8* %4396, i64 8
  %4418 = bitcast i8* %4417 to i32*
  store i32 %4416, i32* %4418, align 1
  %4419 = extractelement <2 x i32> %4406, i32 1
  %4420 = getelementptr inbounds i8, i8* %4396, i64 12
  %4421 = bitcast i8* %4420 to i32*
  store i32 %4419, i32* %4421, align 1
  store %struct.Memory* %loadMem_439532, %struct.Memory** %MEMORY
  %loadMem_43953a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4423 = getelementptr inbounds %struct.GPR, %struct.GPR* %4422, i32 0, i32 33
  %4424 = getelementptr inbounds %struct.Reg, %struct.Reg* %4423, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4424 to i64*
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 15
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4428, i64 0, i64 0
  %XMM0.i137 = bitcast %union.VectorReg* %4429 to %union.vec128_t*
  %4430 = load i64, i64* %RBP.i136
  %4431 = sub i64 %4430, 848
  %4432 = bitcast %union.vec128_t* %XMM0.i137 to i8*
  %4433 = load i64, i64* %PC.i135
  %4434 = add i64 %4433, 8
  store i64 %4434, i64* %PC.i135
  %4435 = bitcast i8* %4432 to <2 x float>*
  %4436 = load <2 x float>, <2 x float>* %4435, align 1
  %4437 = extractelement <2 x float> %4436, i32 0
  %4438 = inttoptr i64 %4431 to float*
  store float %4437, float* %4438
  store %struct.Memory* %loadMem_43953a, %struct.Memory** %MEMORY
  %loadMem_439542 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 33
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %4441 to i64*
  %4442 = load i64, i64* %PC.i134
  %4443 = add i64 %4442, 145
  %4444 = load i64, i64* %PC.i134
  %4445 = add i64 %4444, 5
  store i64 %4445, i64* %PC.i134
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4443, i64* %4446, align 8
  store %struct.Memory* %loadMem_439542, %struct.Memory** %MEMORY
  br label %block_.L_4395d3

block_.L_439547:                                  ; preds = %block_.L_4393f6
  %loadMem_439547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 33
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %4449 to i64*
  %4450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4451 = getelementptr inbounds %struct.GPR, %struct.GPR* %4450, i32 0, i32 1
  %4452 = getelementptr inbounds %struct.Reg, %struct.Reg* %4451, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %4452 to i64*
  %4453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4454 = getelementptr inbounds %struct.GPR, %struct.GPR* %4453, i32 0, i32 15
  %4455 = getelementptr inbounds %struct.Reg, %struct.Reg* %4454, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %4455 to i64*
  %4456 = load i64, i64* %RBP.i133
  %4457 = sub i64 %4456, 32
  %4458 = load i64, i64* %PC.i131
  %4459 = add i64 %4458, 4
  store i64 %4459, i64* %PC.i131
  %4460 = inttoptr i64 %4457 to i32*
  %4461 = load i32, i32* %4460
  %4462 = sext i32 %4461 to i64
  store i64 %4462, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_439547, %struct.Memory** %MEMORY
  %loadMem_43954b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4464 = getelementptr inbounds %struct.GPR, %struct.GPR* %4463, i32 0, i32 33
  %4465 = getelementptr inbounds %struct.Reg, %struct.Reg* %4464, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4465 to i64*
  %4466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4467 = getelementptr inbounds %struct.GPR, %struct.GPR* %4466, i32 0, i32 1
  %4468 = getelementptr inbounds %struct.Reg, %struct.Reg* %4467, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %4468 to i64*
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 15
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4473 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4472, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %4473 to %"class.std::bitset"*
  %4474 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %4475 = load i64, i64* %RBP.i129
  %4476 = load i64, i64* %RAX.i128
  %4477 = mul i64 %4476, 4
  %4478 = add i64 %4475, -832
  %4479 = add i64 %4478, %4477
  %4480 = load i64, i64* %PC.i127
  %4481 = add i64 %4480, 9
  store i64 %4481, i64* %PC.i127
  %4482 = inttoptr i64 %4479 to float*
  %4483 = load float, float* %4482
  %4484 = bitcast i8* %4474 to float*
  store float %4483, float* %4484, align 1
  %4485 = getelementptr inbounds i8, i8* %4474, i64 4
  %4486 = bitcast i8* %4485 to float*
  store float 0.000000e+00, float* %4486, align 1
  %4487 = getelementptr inbounds i8, i8* %4474, i64 8
  %4488 = bitcast i8* %4487 to float*
  store float 0.000000e+00, float* %4488, align 1
  %4489 = getelementptr inbounds i8, i8* %4474, i64 12
  %4490 = bitcast i8* %4489 to float*
  store float 0.000000e+00, float* %4490, align 1
  store %struct.Memory* %loadMem_43954b, %struct.Memory** %MEMORY
  %loadMem_439554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 33
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %4493 to i64*
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 1
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 15
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RBP.i126
  %4501 = sub i64 %4500, 8
  %4502 = load i64, i64* %PC.i124
  %4503 = add i64 %4502, 4
  store i64 %4503, i64* %PC.i124
  %4504 = inttoptr i64 %4501 to i64*
  %4505 = load i64, i64* %4504
  store i64 %4505, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_439554, %struct.Memory** %MEMORY
  %loadMem_439558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4507 = getelementptr inbounds %struct.GPR, %struct.GPR* %4506, i32 0, i32 33
  %4508 = getelementptr inbounds %struct.Reg, %struct.Reg* %4507, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %4508 to i64*
  %4509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4510 = getelementptr inbounds %struct.GPR, %struct.GPR* %4509, i32 0, i32 5
  %4511 = getelementptr inbounds %struct.Reg, %struct.Reg* %4510, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %4511 to i64*
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4513 = getelementptr inbounds %struct.GPR, %struct.GPR* %4512, i32 0, i32 15
  %4514 = getelementptr inbounds %struct.Reg, %struct.Reg* %4513, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %4514 to i64*
  %4515 = load i64, i64* %RBP.i123
  %4516 = sub i64 %4515, 28
  %4517 = load i64, i64* %PC.i121
  %4518 = add i64 %4517, 4
  store i64 %4518, i64* %PC.i121
  %4519 = inttoptr i64 %4516 to i32*
  %4520 = load i32, i32* %4519
  %4521 = sext i32 %4520 to i64
  store i64 %4521, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_439558, %struct.Memory** %MEMORY
  %loadMem_43955c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4523 = getelementptr inbounds %struct.GPR, %struct.GPR* %4522, i32 0, i32 33
  %4524 = getelementptr inbounds %struct.Reg, %struct.Reg* %4523, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4524 to i64*
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4526 = getelementptr inbounds %struct.GPR, %struct.GPR* %4525, i32 0, i32 1
  %4527 = getelementptr inbounds %struct.Reg, %struct.Reg* %4526, i32 0, i32 0
  %RAX.i118 = bitcast %union.anon* %4527 to i64*
  %4528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4529 = getelementptr inbounds %struct.GPR, %struct.GPR* %4528, i32 0, i32 5
  %4530 = getelementptr inbounds %struct.Reg, %struct.Reg* %4529, i32 0, i32 0
  %RCX.i119 = bitcast %union.anon* %4530 to i64*
  %4531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4531, i64 0, i64 1
  %YMM1.i120 = bitcast %union.VectorReg* %4532 to %"class.std::bitset"*
  %4533 = bitcast %"class.std::bitset"* %YMM1.i120 to i8*
  %4534 = load i64, i64* %RAX.i118
  %4535 = load i64, i64* %RCX.i119
  %4536 = mul i64 %4535, 4
  %4537 = add i64 %4536, %4534
  %4538 = load i64, i64* %PC.i117
  %4539 = add i64 %4538, 5
  store i64 %4539, i64* %PC.i117
  %4540 = inttoptr i64 %4537 to float*
  %4541 = load float, float* %4540
  %4542 = bitcast i8* %4533 to float*
  store float %4541, float* %4542, align 1
  %4543 = getelementptr inbounds i8, i8* %4533, i64 4
  %4544 = bitcast i8* %4543 to float*
  store float 0.000000e+00, float* %4544, align 1
  %4545 = getelementptr inbounds i8, i8* %4533, i64 8
  %4546 = bitcast i8* %4545 to float*
  store float 0.000000e+00, float* %4546, align 1
  %4547 = getelementptr inbounds i8, i8* %4533, i64 12
  %4548 = bitcast i8* %4547 to float*
  store float 0.000000e+00, float* %4548, align 1
  store %struct.Memory* %loadMem_43955c, %struct.Memory** %MEMORY
  %loadMem_439561 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4550 = getelementptr inbounds %struct.GPR, %struct.GPR* %4549, i32 0, i32 33
  %4551 = getelementptr inbounds %struct.Reg, %struct.Reg* %4550, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %4551 to i64*
  %4552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4553 = getelementptr inbounds %struct.GPR, %struct.GPR* %4552, i32 0, i32 1
  %4554 = getelementptr inbounds %struct.Reg, %struct.Reg* %4553, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %4554 to i64*
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 15
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %4557 to i64*
  %4558 = load i64, i64* %RBP.i116
  %4559 = sub i64 %4558, 16
  %4560 = load i64, i64* %PC.i114
  %4561 = add i64 %4560, 4
  store i64 %4561, i64* %PC.i114
  %4562 = inttoptr i64 %4559 to i64*
  %4563 = load i64, i64* %4562
  store i64 %4563, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_439561, %struct.Memory** %MEMORY
  %loadMem_439565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 33
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4566 to i64*
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 1
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %4569 to i64*
  %4570 = load i64, i64* %RAX.i113
  %4571 = load i64, i64* %PC.i112
  %4572 = add i64 %4571, 6
  store i64 %4572, i64* %PC.i112
  %4573 = add i64 808, %4570
  store i64 %4573, i64* %RAX.i113, align 8
  %4574 = icmp ult i64 %4573, %4570
  %4575 = icmp ult i64 %4573, 808
  %4576 = or i1 %4574, %4575
  %4577 = zext i1 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4577, i8* %4578, align 1
  %4579 = trunc i64 %4573 to i32
  %4580 = and i32 %4579, 255
  %4581 = call i32 @llvm.ctpop.i32(i32 %4580)
  %4582 = trunc i32 %4581 to i8
  %4583 = and i8 %4582, 1
  %4584 = xor i8 %4583, 1
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4584, i8* %4585, align 1
  %4586 = xor i64 808, %4570
  %4587 = xor i64 %4586, %4573
  %4588 = lshr i64 %4587, 4
  %4589 = trunc i64 %4588 to i8
  %4590 = and i8 %4589, 1
  %4591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4590, i8* %4591, align 1
  %4592 = icmp eq i64 %4573, 0
  %4593 = zext i1 %4592 to i8
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4593, i8* %4594, align 1
  %4595 = lshr i64 %4573, 63
  %4596 = trunc i64 %4595 to i8
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4596, i8* %4597, align 1
  %4598 = lshr i64 %4570, 63
  %4599 = xor i64 %4595, %4598
  %4600 = add i64 %4599, %4595
  %4601 = icmp eq i64 %4600, 2
  %4602 = zext i1 %4601 to i8
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4602, i8* %4603, align 1
  store %struct.Memory* %loadMem_439565, %struct.Memory** %MEMORY
  %loadMem_43956b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 5
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 15
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RBP.i111
  %4614 = sub i64 %4613, 32
  %4615 = load i64, i64* %PC.i109
  %4616 = add i64 %4615, 4
  store i64 %4616, i64* %PC.i109
  %4617 = inttoptr i64 %4614 to i32*
  %4618 = load i32, i32* %4617
  %4619 = sext i32 %4618 to i64
  store i64 %4619, i64* %RCX.i110, align 8
  store %struct.Memory* %loadMem_43956b, %struct.Memory** %MEMORY
  %loadMem_43956f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4621 = getelementptr inbounds %struct.GPR, %struct.GPR* %4620, i32 0, i32 33
  %4622 = getelementptr inbounds %struct.Reg, %struct.Reg* %4621, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4622 to i64*
  %4623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4624 = getelementptr inbounds %struct.GPR, %struct.GPR* %4623, i32 0, i32 5
  %4625 = getelementptr inbounds %struct.Reg, %struct.Reg* %4624, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %4625 to i64*
  %4626 = load i64, i64* %RCX.i108
  %4627 = load i64, i64* %PC.i107
  %4628 = add i64 %4627, 4
  store i64 %4628, i64* %PC.i107
  %4629 = sext i64 %4626 to i128
  %4630 = and i128 %4629, -18446744073709551616
  %4631 = zext i64 %4626 to i128
  %4632 = or i128 %4630, %4631
  %4633 = mul i128 28, %4632
  %4634 = trunc i128 %4633 to i64
  store i64 %4634, i64* %RCX.i108, align 8
  %4635 = sext i64 %4634 to i128
  %4636 = icmp ne i128 %4635, %4633
  %4637 = zext i1 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4637, i8* %4638, align 1
  %4639 = trunc i128 %4633 to i32
  %4640 = and i32 %4639, 255
  %4641 = call i32 @llvm.ctpop.i32(i32 %4640)
  %4642 = trunc i32 %4641 to i8
  %4643 = and i8 %4642, 1
  %4644 = xor i8 %4643, 1
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4644, i8* %4645, align 1
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4646, align 1
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4647, align 1
  %4648 = lshr i64 %4634, 63
  %4649 = trunc i64 %4648 to i8
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4649, i8* %4650, align 1
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4637, i8* %4651, align 1
  store %struct.Memory* %loadMem_43956f, %struct.Memory** %MEMORY
  %loadMem_439573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4653 = getelementptr inbounds %struct.GPR, %struct.GPR* %4652, i32 0, i32 33
  %4654 = getelementptr inbounds %struct.Reg, %struct.Reg* %4653, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4654 to i64*
  %4655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4656 = getelementptr inbounds %struct.GPR, %struct.GPR* %4655, i32 0, i32 1
  %4657 = getelementptr inbounds %struct.Reg, %struct.Reg* %4656, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %4657 to i64*
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 5
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %4660 to i64*
  %4661 = load i64, i64* %RAX.i105
  %4662 = load i64, i64* %RCX.i106
  %4663 = load i64, i64* %PC.i104
  %4664 = add i64 %4663, 3
  store i64 %4664, i64* %PC.i104
  %4665 = add i64 %4662, %4661
  store i64 %4665, i64* %RAX.i105, align 8
  %4666 = icmp ult i64 %4665, %4661
  %4667 = icmp ult i64 %4665, %4662
  %4668 = or i1 %4666, %4667
  %4669 = zext i1 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4669, i8* %4670, align 1
  %4671 = trunc i64 %4665 to i32
  %4672 = and i32 %4671, 255
  %4673 = call i32 @llvm.ctpop.i32(i32 %4672)
  %4674 = trunc i32 %4673 to i8
  %4675 = and i8 %4674, 1
  %4676 = xor i8 %4675, 1
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4676, i8* %4677, align 1
  %4678 = xor i64 %4662, %4661
  %4679 = xor i64 %4678, %4665
  %4680 = lshr i64 %4679, 4
  %4681 = trunc i64 %4680 to i8
  %4682 = and i8 %4681, 1
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4682, i8* %4683, align 1
  %4684 = icmp eq i64 %4665, 0
  %4685 = zext i1 %4684 to i8
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4685, i8* %4686, align 1
  %4687 = lshr i64 %4665, 63
  %4688 = trunc i64 %4687 to i8
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4688, i8* %4689, align 1
  %4690 = lshr i64 %4661, 63
  %4691 = lshr i64 %4662, 63
  %4692 = xor i64 %4687, %4690
  %4693 = xor i64 %4687, %4691
  %4694 = add i64 %4692, %4693
  %4695 = icmp eq i64 %4694, 2
  %4696 = zext i1 %4695 to i8
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4696, i8* %4697, align 1
  store %struct.Memory* %loadMem_439573, %struct.Memory** %MEMORY
  %loadMem_439576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4699 = getelementptr inbounds %struct.GPR, %struct.GPR* %4698, i32 0, i32 33
  %4700 = getelementptr inbounds %struct.Reg, %struct.Reg* %4699, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4700 to i64*
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 5
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 15
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %4706 to i64*
  %4707 = load i64, i64* %RBP.i103
  %4708 = sub i64 %4707, 28
  %4709 = load i64, i64* %PC.i101
  %4710 = add i64 %4709, 4
  store i64 %4710, i64* %PC.i101
  %4711 = inttoptr i64 %4708 to i32*
  %4712 = load i32, i32* %4711
  %4713 = sext i32 %4712 to i64
  store i64 %4713, i64* %RCX.i102, align 8
  store %struct.Memory* %loadMem_439576, %struct.Memory** %MEMORY
  %loadMem_43957a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 33
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 1
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 5
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %4722 to i64*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4723, i64 0, i64 1
  %YMM1.i100 = bitcast %union.VectorReg* %4724 to %"class.std::bitset"*
  %4725 = bitcast %"class.std::bitset"* %YMM1.i100 to i8*
  %4726 = bitcast %"class.std::bitset"* %YMM1.i100 to i8*
  %4727 = load i64, i64* %RAX.i98
  %4728 = load i64, i64* %RCX.i99
  %4729 = mul i64 %4728, 4
  %4730 = add i64 %4729, %4727
  %4731 = load i64, i64* %PC.i97
  %4732 = add i64 %4731, 5
  store i64 %4732, i64* %PC.i97
  %4733 = bitcast i8* %4726 to <2 x float>*
  %4734 = load <2 x float>, <2 x float>* %4733, align 1
  %4735 = getelementptr inbounds i8, i8* %4726, i64 8
  %4736 = bitcast i8* %4735 to <2 x i32>*
  %4737 = load <2 x i32>, <2 x i32>* %4736, align 1
  %4738 = inttoptr i64 %4730 to float*
  %4739 = load float, float* %4738
  %4740 = extractelement <2 x float> %4734, i32 0
  %4741 = fadd float %4740, %4739
  %4742 = bitcast i8* %4725 to float*
  store float %4741, float* %4742, align 1
  %4743 = bitcast <2 x float> %4734 to <2 x i32>
  %4744 = extractelement <2 x i32> %4743, i32 1
  %4745 = getelementptr inbounds i8, i8* %4725, i64 4
  %4746 = bitcast i8* %4745 to i32*
  store i32 %4744, i32* %4746, align 1
  %4747 = extractelement <2 x i32> %4737, i32 0
  %4748 = getelementptr inbounds i8, i8* %4725, i64 8
  %4749 = bitcast i8* %4748 to i32*
  store i32 %4747, i32* %4749, align 1
  %4750 = extractelement <2 x i32> %4737, i32 1
  %4751 = getelementptr inbounds i8, i8* %4725, i64 12
  %4752 = bitcast i8* %4751 to i32*
  store i32 %4750, i32* %4752, align 1
  store %struct.Memory* %loadMem_43957a, %struct.Memory** %MEMORY
  %loadMem_43957f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4754 = getelementptr inbounds %struct.GPR, %struct.GPR* %4753, i32 0, i32 33
  %4755 = getelementptr inbounds %struct.Reg, %struct.Reg* %4754, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4755 to i64*
  %4756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4756, i64 0, i64 0
  %YMM0.i95 = bitcast %union.VectorReg* %4757 to %"class.std::bitset"*
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4759 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4758, i64 0, i64 1
  %XMM1.i96 = bitcast %union.VectorReg* %4759 to %union.vec128_t*
  %4760 = bitcast %"class.std::bitset"* %YMM0.i95 to i8*
  %4761 = bitcast %"class.std::bitset"* %YMM0.i95 to i8*
  %4762 = bitcast %union.vec128_t* %XMM1.i96 to i8*
  %4763 = load i64, i64* %PC.i94
  %4764 = add i64 %4763, 4
  store i64 %4764, i64* %PC.i94
  %4765 = bitcast i8* %4761 to <2 x float>*
  %4766 = load <2 x float>, <2 x float>* %4765, align 1
  %4767 = getelementptr inbounds i8, i8* %4761, i64 8
  %4768 = bitcast i8* %4767 to <2 x i32>*
  %4769 = load <2 x i32>, <2 x i32>* %4768, align 1
  %4770 = bitcast i8* %4762 to <2 x float>*
  %4771 = load <2 x float>, <2 x float>* %4770, align 1
  %4772 = extractelement <2 x float> %4766, i32 0
  %4773 = extractelement <2 x float> %4771, i32 0
  %4774 = fmul float %4772, %4773
  %4775 = bitcast i8* %4760 to float*
  store float %4774, float* %4775, align 1
  %4776 = bitcast <2 x float> %4766 to <2 x i32>
  %4777 = extractelement <2 x i32> %4776, i32 1
  %4778 = getelementptr inbounds i8, i8* %4760, i64 4
  %4779 = bitcast i8* %4778 to i32*
  store i32 %4777, i32* %4779, align 1
  %4780 = extractelement <2 x i32> %4769, i32 0
  %4781 = getelementptr inbounds i8, i8* %4760, i64 8
  %4782 = bitcast i8* %4781 to i32*
  store i32 %4780, i32* %4782, align 1
  %4783 = extractelement <2 x i32> %4769, i32 1
  %4784 = getelementptr inbounds i8, i8* %4760, i64 12
  %4785 = bitcast i8* %4784 to i32*
  store i32 %4783, i32* %4785, align 1
  store %struct.Memory* %loadMem_43957f, %struct.Memory** %MEMORY
  %loadMem_439583 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 15
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %4791 to i64*
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4793 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4792, i64 0, i64 1
  %YMM1.i93 = bitcast %union.VectorReg* %4793 to %"class.std::bitset"*
  %4794 = bitcast %"class.std::bitset"* %YMM1.i93 to i8*
  %4795 = load i64, i64* %RBP.i92
  %4796 = sub i64 %4795, 840
  %4797 = load i64, i64* %PC.i91
  %4798 = add i64 %4797, 8
  store i64 %4798, i64* %PC.i91
  %4799 = inttoptr i64 %4796 to float*
  %4800 = load float, float* %4799
  %4801 = bitcast i8* %4794 to float*
  store float %4800, float* %4801, align 1
  %4802 = getelementptr inbounds i8, i8* %4794, i64 4
  %4803 = bitcast i8* %4802 to float*
  store float 0.000000e+00, float* %4803, align 1
  %4804 = getelementptr inbounds i8, i8* %4794, i64 8
  %4805 = bitcast i8* %4804 to float*
  store float 0.000000e+00, float* %4805, align 1
  %4806 = getelementptr inbounds i8, i8* %4794, i64 12
  %4807 = bitcast i8* %4806 to float*
  store float 0.000000e+00, float* %4807, align 1
  store %struct.Memory* %loadMem_439583, %struct.Memory** %MEMORY
  %loadMem_43958b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4809 = getelementptr inbounds %struct.GPR, %struct.GPR* %4808, i32 0, i32 33
  %4810 = getelementptr inbounds %struct.Reg, %struct.Reg* %4809, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4810 to i64*
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 1
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 15
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %4816 to i64*
  %4817 = load i64, i64* %RBP.i90
  %4818 = sub i64 %4817, 16
  %4819 = load i64, i64* %PC.i88
  %4820 = add i64 %4819, 4
  store i64 %4820, i64* %PC.i88
  %4821 = inttoptr i64 %4818 to i64*
  %4822 = load i64, i64* %4821
  store i64 %4822, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_43958b, %struct.Memory** %MEMORY
  %loadMem_43958f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4824 = getelementptr inbounds %struct.GPR, %struct.GPR* %4823, i32 0, i32 33
  %4825 = getelementptr inbounds %struct.Reg, %struct.Reg* %4824, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %4825 to i64*
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 1
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %RAX.i87 = bitcast %union.anon* %4828 to i64*
  %4829 = load i64, i64* %RAX.i87
  %4830 = load i64, i64* %PC.i86
  %4831 = add i64 %4830, 6
  store i64 %4831, i64* %PC.i86
  %4832 = add i64 808, %4829
  store i64 %4832, i64* %RAX.i87, align 8
  %4833 = icmp ult i64 %4832, %4829
  %4834 = icmp ult i64 %4832, 808
  %4835 = or i1 %4833, %4834
  %4836 = zext i1 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4836, i8* %4837, align 1
  %4838 = trunc i64 %4832 to i32
  %4839 = and i32 %4838, 255
  %4840 = call i32 @llvm.ctpop.i32(i32 %4839)
  %4841 = trunc i32 %4840 to i8
  %4842 = and i8 %4841, 1
  %4843 = xor i8 %4842, 1
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4843, i8* %4844, align 1
  %4845 = xor i64 808, %4829
  %4846 = xor i64 %4845, %4832
  %4847 = lshr i64 %4846, 4
  %4848 = trunc i64 %4847 to i8
  %4849 = and i8 %4848, 1
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4849, i8* %4850, align 1
  %4851 = icmp eq i64 %4832, 0
  %4852 = zext i1 %4851 to i8
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4852, i8* %4853, align 1
  %4854 = lshr i64 %4832, 63
  %4855 = trunc i64 %4854 to i8
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4855, i8* %4856, align 1
  %4857 = lshr i64 %4829, 63
  %4858 = xor i64 %4854, %4857
  %4859 = add i64 %4858, %4854
  %4860 = icmp eq i64 %4859, 2
  %4861 = zext i1 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4861, i8* %4862, align 1
  store %struct.Memory* %loadMem_43958f, %struct.Memory** %MEMORY
  %loadMem_439595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4864 = getelementptr inbounds %struct.GPR, %struct.GPR* %4863, i32 0, i32 33
  %4865 = getelementptr inbounds %struct.Reg, %struct.Reg* %4864, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %4865 to i64*
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 5
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 15
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %4871 to i64*
  %4872 = load i64, i64* %RBP.i85
  %4873 = sub i64 %4872, 32
  %4874 = load i64, i64* %PC.i83
  %4875 = add i64 %4874, 4
  store i64 %4875, i64* %PC.i83
  %4876 = inttoptr i64 %4873 to i32*
  %4877 = load i32, i32* %4876
  %4878 = sext i32 %4877 to i64
  store i64 %4878, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_439595, %struct.Memory** %MEMORY
  %loadMem_439599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 33
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4881 to i64*
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4883 = getelementptr inbounds %struct.GPR, %struct.GPR* %4882, i32 0, i32 5
  %4884 = getelementptr inbounds %struct.Reg, %struct.Reg* %4883, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %4884 to i64*
  %4885 = load i64, i64* %RCX.i82
  %4886 = load i64, i64* %PC.i81
  %4887 = add i64 %4886, 4
  store i64 %4887, i64* %PC.i81
  %4888 = sext i64 %4885 to i128
  %4889 = and i128 %4888, -18446744073709551616
  %4890 = zext i64 %4885 to i128
  %4891 = or i128 %4889, %4890
  %4892 = mul i128 28, %4891
  %4893 = trunc i128 %4892 to i64
  store i64 %4893, i64* %RCX.i82, align 8
  %4894 = sext i64 %4893 to i128
  %4895 = icmp ne i128 %4894, %4892
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4896, i8* %4897, align 1
  %4898 = trunc i128 %4892 to i32
  %4899 = and i32 %4898, 255
  %4900 = call i32 @llvm.ctpop.i32(i32 %4899)
  %4901 = trunc i32 %4900 to i8
  %4902 = and i8 %4901, 1
  %4903 = xor i8 %4902, 1
  %4904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4903, i8* %4904, align 1
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4905, align 1
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4906, align 1
  %4907 = lshr i64 %4893, 63
  %4908 = trunc i64 %4907 to i8
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4908, i8* %4909, align 1
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4896, i8* %4910, align 1
  store %struct.Memory* %loadMem_439599, %struct.Memory** %MEMORY
  %loadMem_43959d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 1
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 5
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RAX.i79
  %4921 = load i64, i64* %RCX.i80
  %4922 = load i64, i64* %PC.i78
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i78
  %4924 = add i64 %4921, %4920
  store i64 %4924, i64* %RAX.i79, align 8
  %4925 = icmp ult i64 %4924, %4920
  %4926 = icmp ult i64 %4924, %4921
  %4927 = or i1 %4925, %4926
  %4928 = zext i1 %4927 to i8
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4928, i8* %4929, align 1
  %4930 = trunc i64 %4924 to i32
  %4931 = and i32 %4930, 255
  %4932 = call i32 @llvm.ctpop.i32(i32 %4931)
  %4933 = trunc i32 %4932 to i8
  %4934 = and i8 %4933, 1
  %4935 = xor i8 %4934, 1
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4935, i8* %4936, align 1
  %4937 = xor i64 %4921, %4920
  %4938 = xor i64 %4937, %4924
  %4939 = lshr i64 %4938, 4
  %4940 = trunc i64 %4939 to i8
  %4941 = and i8 %4940, 1
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4941, i8* %4942, align 1
  %4943 = icmp eq i64 %4924, 0
  %4944 = zext i1 %4943 to i8
  %4945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4944, i8* %4945, align 1
  %4946 = lshr i64 %4924, 63
  %4947 = trunc i64 %4946 to i8
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4947, i8* %4948, align 1
  %4949 = lshr i64 %4920, 63
  %4950 = lshr i64 %4921, 63
  %4951 = xor i64 %4946, %4949
  %4952 = xor i64 %4946, %4950
  %4953 = add i64 %4951, %4952
  %4954 = icmp eq i64 %4953, 2
  %4955 = zext i1 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4955, i8* %4956, align 1
  store %struct.Memory* %loadMem_43959d, %struct.Memory** %MEMORY
  %loadMem_4395a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4958 = getelementptr inbounds %struct.GPR, %struct.GPR* %4957, i32 0, i32 33
  %4959 = getelementptr inbounds %struct.Reg, %struct.Reg* %4958, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %4959 to i64*
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4961 = getelementptr inbounds %struct.GPR, %struct.GPR* %4960, i32 0, i32 1
  %4962 = getelementptr inbounds %struct.Reg, %struct.Reg* %4961, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %4962 to i64*
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4964 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4963, i64 0, i64 1
  %YMM1.i77 = bitcast %union.VectorReg* %4964 to %"class.std::bitset"*
  %4965 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %4966 = bitcast %"class.std::bitset"* %YMM1.i77 to i8*
  %4967 = load i64, i64* %RAX.i76
  %4968 = add i64 %4967, 20
  %4969 = load i64, i64* %PC.i75
  %4970 = add i64 %4969, 5
  store i64 %4970, i64* %PC.i75
  %4971 = bitcast i8* %4966 to <2 x float>*
  %4972 = load <2 x float>, <2 x float>* %4971, align 1
  %4973 = getelementptr inbounds i8, i8* %4966, i64 8
  %4974 = bitcast i8* %4973 to <2 x i32>*
  %4975 = load <2 x i32>, <2 x i32>* %4974, align 1
  %4976 = inttoptr i64 %4968 to float*
  %4977 = load float, float* %4976
  %4978 = extractelement <2 x float> %4972, i32 0
  %4979 = fadd float %4978, %4977
  %4980 = bitcast i8* %4965 to float*
  store float %4979, float* %4980, align 1
  %4981 = bitcast <2 x float> %4972 to <2 x i32>
  %4982 = extractelement <2 x i32> %4981, i32 1
  %4983 = getelementptr inbounds i8, i8* %4965, i64 4
  %4984 = bitcast i8* %4983 to i32*
  store i32 %4982, i32* %4984, align 1
  %4985 = extractelement <2 x i32> %4975, i32 0
  %4986 = getelementptr inbounds i8, i8* %4965, i64 8
  %4987 = bitcast i8* %4986 to i32*
  store i32 %4985, i32* %4987, align 1
  %4988 = extractelement <2 x i32> %4975, i32 1
  %4989 = getelementptr inbounds i8, i8* %4965, i64 12
  %4990 = bitcast i8* %4989 to i32*
  store i32 %4988, i32* %4990, align 1
  store %struct.Memory* %loadMem_4395a0, %struct.Memory** %MEMORY
  %loadMem_4395a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 33
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 1
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 15
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %4999 to i64*
  %5000 = load i64, i64* %RBP.i74
  %5001 = sub i64 %5000, 16
  %5002 = load i64, i64* %PC.i72
  %5003 = add i64 %5002, 4
  store i64 %5003, i64* %PC.i72
  %5004 = inttoptr i64 %5001 to i64*
  %5005 = load i64, i64* %5004
  store i64 %5005, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_4395a5, %struct.Memory** %MEMORY
  %loadMem_4395a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5007 = getelementptr inbounds %struct.GPR, %struct.GPR* %5006, i32 0, i32 33
  %5008 = getelementptr inbounds %struct.Reg, %struct.Reg* %5007, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5008 to i64*
  %5009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5010 = getelementptr inbounds %struct.GPR, %struct.GPR* %5009, i32 0, i32 1
  %5011 = getelementptr inbounds %struct.Reg, %struct.Reg* %5010, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %5011 to i64*
  %5012 = load i64, i64* %RAX.i71
  %5013 = load i64, i64* %PC.i70
  %5014 = add i64 %5013, 6
  store i64 %5014, i64* %PC.i70
  %5015 = add i64 808, %5012
  store i64 %5015, i64* %RAX.i71, align 8
  %5016 = icmp ult i64 %5015, %5012
  %5017 = icmp ult i64 %5015, 808
  %5018 = or i1 %5016, %5017
  %5019 = zext i1 %5018 to i8
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5019, i8* %5020, align 1
  %5021 = trunc i64 %5015 to i32
  %5022 = and i32 %5021, 255
  %5023 = call i32 @llvm.ctpop.i32(i32 %5022)
  %5024 = trunc i32 %5023 to i8
  %5025 = and i8 %5024, 1
  %5026 = xor i8 %5025, 1
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5026, i8* %5027, align 1
  %5028 = xor i64 808, %5012
  %5029 = xor i64 %5028, %5015
  %5030 = lshr i64 %5029, 4
  %5031 = trunc i64 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5032, i8* %5033, align 1
  %5034 = icmp eq i64 %5015, 0
  %5035 = zext i1 %5034 to i8
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5035, i8* %5036, align 1
  %5037 = lshr i64 %5015, 63
  %5038 = trunc i64 %5037 to i8
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5038, i8* %5039, align 1
  %5040 = lshr i64 %5012, 63
  %5041 = xor i64 %5037, %5040
  %5042 = add i64 %5041, %5037
  %5043 = icmp eq i64 %5042, 2
  %5044 = zext i1 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5044, i8* %5045, align 1
  store %struct.Memory* %loadMem_4395a9, %struct.Memory** %MEMORY
  %loadMem_4395af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 5
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %5051 to i64*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 15
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RBP.i69
  %5056 = sub i64 %5055, 32
  %5057 = load i64, i64* %PC.i67
  %5058 = add i64 %5057, 4
  store i64 %5058, i64* %PC.i67
  %5059 = inttoptr i64 %5056 to i32*
  %5060 = load i32, i32* %5059
  %5061 = sext i32 %5060 to i64
  store i64 %5061, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_4395af, %struct.Memory** %MEMORY
  %loadMem_4395b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 33
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5064 to i64*
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 5
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %RCX.i66 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %RCX.i66
  %5069 = load i64, i64* %PC.i65
  %5070 = add i64 %5069, 4
  store i64 %5070, i64* %PC.i65
  %5071 = sext i64 %5068 to i128
  %5072 = and i128 %5071, -18446744073709551616
  %5073 = zext i64 %5068 to i128
  %5074 = or i128 %5072, %5073
  %5075 = mul i128 28, %5074
  %5076 = trunc i128 %5075 to i64
  store i64 %5076, i64* %RCX.i66, align 8
  %5077 = sext i64 %5076 to i128
  %5078 = icmp ne i128 %5077, %5075
  %5079 = zext i1 %5078 to i8
  %5080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5079, i8* %5080, align 1
  %5081 = trunc i128 %5075 to i32
  %5082 = and i32 %5081, 255
  %5083 = call i32 @llvm.ctpop.i32(i32 %5082)
  %5084 = trunc i32 %5083 to i8
  %5085 = and i8 %5084, 1
  %5086 = xor i8 %5085, 1
  %5087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5086, i8* %5087, align 1
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5088, align 1
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5089, align 1
  %5090 = lshr i64 %5076, 63
  %5091 = trunc i64 %5090 to i8
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5091, i8* %5092, align 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5079, i8* %5093, align 1
  store %struct.Memory* %loadMem_4395b3, %struct.Memory** %MEMORY
  %loadMem_4395b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 33
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 1
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %5099 to i64*
  %5100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5101 = getelementptr inbounds %struct.GPR, %struct.GPR* %5100, i32 0, i32 5
  %5102 = getelementptr inbounds %struct.Reg, %struct.Reg* %5101, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %5102 to i64*
  %5103 = load i64, i64* %RAX.i63
  %5104 = load i64, i64* %RCX.i64
  %5105 = load i64, i64* %PC.i62
  %5106 = add i64 %5105, 3
  store i64 %5106, i64* %PC.i62
  %5107 = add i64 %5104, %5103
  store i64 %5107, i64* %RAX.i63, align 8
  %5108 = icmp ult i64 %5107, %5103
  %5109 = icmp ult i64 %5107, %5104
  %5110 = or i1 %5108, %5109
  %5111 = zext i1 %5110 to i8
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5111, i8* %5112, align 1
  %5113 = trunc i64 %5107 to i32
  %5114 = and i32 %5113, 255
  %5115 = call i32 @llvm.ctpop.i32(i32 %5114)
  %5116 = trunc i32 %5115 to i8
  %5117 = and i8 %5116, 1
  %5118 = xor i8 %5117, 1
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5118, i8* %5119, align 1
  %5120 = xor i64 %5104, %5103
  %5121 = xor i64 %5120, %5107
  %5122 = lshr i64 %5121, 4
  %5123 = trunc i64 %5122 to i8
  %5124 = and i8 %5123, 1
  %5125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5124, i8* %5125, align 1
  %5126 = icmp eq i64 %5107, 0
  %5127 = zext i1 %5126 to i8
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5127, i8* %5128, align 1
  %5129 = lshr i64 %5107, 63
  %5130 = trunc i64 %5129 to i8
  %5131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5130, i8* %5131, align 1
  %5132 = lshr i64 %5103, 63
  %5133 = lshr i64 %5104, 63
  %5134 = xor i64 %5129, %5132
  %5135 = xor i64 %5129, %5133
  %5136 = add i64 %5134, %5135
  %5137 = icmp eq i64 %5136, 2
  %5138 = zext i1 %5137 to i8
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5138, i8* %5139, align 1
  store %struct.Memory* %loadMem_4395b7, %struct.Memory** %MEMORY
  %loadMem_4395ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5141 = getelementptr inbounds %struct.GPR, %struct.GPR* %5140, i32 0, i32 33
  %5142 = getelementptr inbounds %struct.Reg, %struct.Reg* %5141, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5142 to i64*
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5144 = getelementptr inbounds %struct.GPR, %struct.GPR* %5143, i32 0, i32 1
  %5145 = getelementptr inbounds %struct.Reg, %struct.Reg* %5144, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %5145 to i64*
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5147 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5146, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %5147 to %"class.std::bitset"*
  %5148 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5149 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %5150 = load i64, i64* %RAX.i61
  %5151 = add i64 %5150, 24
  %5152 = load i64, i64* %PC.i60
  %5153 = add i64 %5152, 5
  store i64 %5153, i64* %PC.i60
  %5154 = bitcast i8* %5149 to <2 x float>*
  %5155 = load <2 x float>, <2 x float>* %5154, align 1
  %5156 = getelementptr inbounds i8, i8* %5149, i64 8
  %5157 = bitcast i8* %5156 to <2 x i32>*
  %5158 = load <2 x i32>, <2 x i32>* %5157, align 1
  %5159 = inttoptr i64 %5151 to float*
  %5160 = load float, float* %5159
  %5161 = extractelement <2 x float> %5155, i32 0
  %5162 = fadd float %5161, %5160
  %5163 = bitcast i8* %5148 to float*
  store float %5162, float* %5163, align 1
  %5164 = bitcast <2 x float> %5155 to <2 x i32>
  %5165 = extractelement <2 x i32> %5164, i32 1
  %5166 = getelementptr inbounds i8, i8* %5148, i64 4
  %5167 = bitcast i8* %5166 to i32*
  store i32 %5165, i32* %5167, align 1
  %5168 = extractelement <2 x i32> %5158, i32 0
  %5169 = getelementptr inbounds i8, i8* %5148, i64 8
  %5170 = bitcast i8* %5169 to i32*
  store i32 %5168, i32* %5170, align 1
  %5171 = extractelement <2 x i32> %5158, i32 1
  %5172 = getelementptr inbounds i8, i8* %5148, i64 12
  %5173 = bitcast i8* %5172 to i32*
  store i32 %5171, i32* %5173, align 1
  store %struct.Memory* %loadMem_4395ba, %struct.Memory** %MEMORY
  %loadMem_4395bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5176 to i64*
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5178 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5177, i64 0, i64 0
  %YMM0.i59 = bitcast %union.VectorReg* %5178 to %"class.std::bitset"*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5180 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5179, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %5180 to %union.vec128_t*
  %5181 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %5182 = bitcast %"class.std::bitset"* %YMM0.i59 to i8*
  %5183 = bitcast %union.vec128_t* %XMM1.i to i8*
  %5184 = load i64, i64* %PC.i58
  %5185 = add i64 %5184, 4
  store i64 %5185, i64* %PC.i58
  %5186 = bitcast i8* %5182 to <2 x float>*
  %5187 = load <2 x float>, <2 x float>* %5186, align 1
  %5188 = getelementptr inbounds i8, i8* %5182, i64 8
  %5189 = bitcast i8* %5188 to <2 x i32>*
  %5190 = load <2 x i32>, <2 x i32>* %5189, align 1
  %5191 = bitcast i8* %5183 to <2 x float>*
  %5192 = load <2 x float>, <2 x float>* %5191, align 1
  %5193 = extractelement <2 x float> %5187, i32 0
  %5194 = extractelement <2 x float> %5192, i32 0
  %5195 = fdiv float %5193, %5194
  %5196 = bitcast i8* %5181 to float*
  store float %5195, float* %5196, align 1
  %5197 = bitcast <2 x float> %5187 to <2 x i32>
  %5198 = extractelement <2 x i32> %5197, i32 1
  %5199 = getelementptr inbounds i8, i8* %5181, i64 4
  %5200 = bitcast i8* %5199 to i32*
  store i32 %5198, i32* %5200, align 1
  %5201 = extractelement <2 x i32> %5190, i32 0
  %5202 = getelementptr inbounds i8, i8* %5181, i64 8
  %5203 = bitcast i8* %5202 to i32*
  store i32 %5201, i32* %5203, align 1
  %5204 = extractelement <2 x i32> %5190, i32 1
  %5205 = getelementptr inbounds i8, i8* %5181, i64 12
  %5206 = bitcast i8* %5205 to i32*
  store i32 %5204, i32* %5206, align 1
  store %struct.Memory* %loadMem_4395bf, %struct.Memory** %MEMORY
  %loadMem_4395c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 15
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RBP.i56 = bitcast %union.anon* %5212 to i64*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5214 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5213, i64 0, i64 0
  %YMM0.i57 = bitcast %union.VectorReg* %5214 to %"class.std::bitset"*
  %5215 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %5216 = bitcast %"class.std::bitset"* %YMM0.i57 to i8*
  %5217 = load i64, i64* %RBP.i56
  %5218 = sub i64 %5217, 848
  %5219 = load i64, i64* %PC.i55
  %5220 = add i64 %5219, 8
  store i64 %5220, i64* %PC.i55
  %5221 = bitcast i8* %5216 to <2 x float>*
  %5222 = load <2 x float>, <2 x float>* %5221, align 1
  %5223 = getelementptr inbounds i8, i8* %5216, i64 8
  %5224 = bitcast i8* %5223 to <2 x i32>*
  %5225 = load <2 x i32>, <2 x i32>* %5224, align 1
  %5226 = inttoptr i64 %5218 to float*
  %5227 = load float, float* %5226
  %5228 = extractelement <2 x float> %5222, i32 0
  %5229 = fadd float %5228, %5227
  %5230 = bitcast i8* %5215 to float*
  store float %5229, float* %5230, align 1
  %5231 = bitcast <2 x float> %5222 to <2 x i32>
  %5232 = extractelement <2 x i32> %5231, i32 1
  %5233 = getelementptr inbounds i8, i8* %5215, i64 4
  %5234 = bitcast i8* %5233 to i32*
  store i32 %5232, i32* %5234, align 1
  %5235 = extractelement <2 x i32> %5225, i32 0
  %5236 = getelementptr inbounds i8, i8* %5215, i64 8
  %5237 = bitcast i8* %5236 to i32*
  store i32 %5235, i32* %5237, align 1
  %5238 = extractelement <2 x i32> %5225, i32 1
  %5239 = getelementptr inbounds i8, i8* %5215, i64 12
  %5240 = bitcast i8* %5239 to i32*
  store i32 %5238, i32* %5240, align 1
  store %struct.Memory* %loadMem_4395c3, %struct.Memory** %MEMORY
  %loadMem_4395cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5242 = getelementptr inbounds %struct.GPR, %struct.GPR* %5241, i32 0, i32 33
  %5243 = getelementptr inbounds %struct.Reg, %struct.Reg* %5242, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5243 to i64*
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 15
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %5246 to i64*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5248 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5247, i64 0, i64 0
  %XMM0.i54 = bitcast %union.VectorReg* %5248 to %union.vec128_t*
  %5249 = load i64, i64* %RBP.i53
  %5250 = sub i64 %5249, 848
  %5251 = bitcast %union.vec128_t* %XMM0.i54 to i8*
  %5252 = load i64, i64* %PC.i52
  %5253 = add i64 %5252, 8
  store i64 %5253, i64* %PC.i52
  %5254 = bitcast i8* %5251 to <2 x float>*
  %5255 = load <2 x float>, <2 x float>* %5254, align 1
  %5256 = extractelement <2 x float> %5255, i32 0
  %5257 = inttoptr i64 %5250 to float*
  store float %5256, float* %5257
  store %struct.Memory* %loadMem_4395cb, %struct.Memory** %MEMORY
  br label %block_.L_4395d3

block_.L_4395d3:                                  ; preds = %block_.L_439547, %block_.L_4394b6, %block_.L_439413, %block_43940e
  %loadMem_4395d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5259 = getelementptr inbounds %struct.GPR, %struct.GPR* %5258, i32 0, i32 33
  %5260 = getelementptr inbounds %struct.Reg, %struct.Reg* %5259, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5260 to i64*
  %5261 = load i64, i64* %PC.i51
  %5262 = add i64 %5261, 5
  %5263 = load i64, i64* %PC.i51
  %5264 = add i64 %5263, 5
  store i64 %5264, i64* %PC.i51
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5262, i64* %5265, align 8
  store %struct.Memory* %loadMem_4395d3, %struct.Memory** %MEMORY
  br label %block_.L_4395d8

block_.L_4395d8:                                  ; preds = %block_.L_4395d3
  %loadMem_4395d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5267 = getelementptr inbounds %struct.GPR, %struct.GPR* %5266, i32 0, i32 33
  %5268 = getelementptr inbounds %struct.Reg, %struct.Reg* %5267, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %5268 to i64*
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 1
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 15
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %5274 to i64*
  %5275 = load i64, i64* %RBP.i50
  %5276 = sub i64 %5275, 32
  %5277 = load i64, i64* %PC.i48
  %5278 = add i64 %5277, 3
  store i64 %5278, i64* %PC.i48
  %5279 = inttoptr i64 %5276 to i32*
  %5280 = load i32, i32* %5279
  %5281 = zext i32 %5280 to i64
  store i64 %5281, i64* %RAX.i49, align 8
  store %struct.Memory* %loadMem_4395d8, %struct.Memory** %MEMORY
  %loadMem_4395db = load %struct.Memory*, %struct.Memory** %MEMORY
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5283 = getelementptr inbounds %struct.GPR, %struct.GPR* %5282, i32 0, i32 33
  %5284 = getelementptr inbounds %struct.Reg, %struct.Reg* %5283, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5284 to i64*
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 1
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %5287 to i64*
  %5288 = load i64, i64* %RAX.i47
  %5289 = load i64, i64* %PC.i46
  %5290 = add i64 %5289, 3
  store i64 %5290, i64* %PC.i46
  %5291 = trunc i64 %5288 to i32
  %5292 = add i32 1, %5291
  %5293 = zext i32 %5292 to i64
  store i64 %5293, i64* %RAX.i47, align 8
  %5294 = icmp ult i32 %5292, %5291
  %5295 = icmp ult i32 %5292, 1
  %5296 = or i1 %5294, %5295
  %5297 = zext i1 %5296 to i8
  %5298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5297, i8* %5298, align 1
  %5299 = and i32 %5292, 255
  %5300 = call i32 @llvm.ctpop.i32(i32 %5299)
  %5301 = trunc i32 %5300 to i8
  %5302 = and i8 %5301, 1
  %5303 = xor i8 %5302, 1
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5303, i8* %5304, align 1
  %5305 = xor i64 1, %5288
  %5306 = trunc i64 %5305 to i32
  %5307 = xor i32 %5306, %5292
  %5308 = lshr i32 %5307, 4
  %5309 = trunc i32 %5308 to i8
  %5310 = and i8 %5309, 1
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5310, i8* %5311, align 1
  %5312 = icmp eq i32 %5292, 0
  %5313 = zext i1 %5312 to i8
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5313, i8* %5314, align 1
  %5315 = lshr i32 %5292, 31
  %5316 = trunc i32 %5315 to i8
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5316, i8* %5317, align 1
  %5318 = lshr i32 %5291, 31
  %5319 = xor i32 %5315, %5318
  %5320 = add i32 %5319, %5315
  %5321 = icmp eq i32 %5320, 2
  %5322 = zext i1 %5321 to i8
  %5323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5322, i8* %5323, align 1
  store %struct.Memory* %loadMem_4395db, %struct.Memory** %MEMORY
  %loadMem_4395de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5326 to i64*
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 1
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %EAX.i44 = bitcast %union.anon* %5329 to i32*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 15
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %RBP.i45
  %5334 = sub i64 %5333, 32
  %5335 = load i32, i32* %EAX.i44
  %5336 = zext i32 %5335 to i64
  %5337 = load i64, i64* %PC.i43
  %5338 = add i64 %5337, 3
  store i64 %5338, i64* %PC.i43
  %5339 = inttoptr i64 %5334 to i32*
  store i32 %5335, i32* %5339
  store %struct.Memory* %loadMem_4395de, %struct.Memory** %MEMORY
  %loadMem_4395e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 33
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %PC.i42
  %5344 = add i64 %5343, -567
  %5345 = load i64, i64* %PC.i42
  %5346 = add i64 %5345, 5
  store i64 %5346, i64* %PC.i42
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5344, i64* %5347, align 8
  store %struct.Memory* %loadMem_4395e1, %struct.Memory** %MEMORY
  br label %block_.L_4393aa

block_.L_4395e6:                                  ; preds = %block_.L_4393aa
  %loadMem_4395e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 15
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %5353 to i64*
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5355 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5354, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %5355 to %"class.std::bitset"*
  %5356 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %5357 = load i64, i64* %RBP.i41
  %5358 = sub i64 %5357, 848
  %5359 = load i64, i64* %PC.i40
  %5360 = add i64 %5359, 8
  store i64 %5360, i64* %PC.i40
  %5361 = inttoptr i64 %5358 to float*
  %5362 = load float, float* %5361
  %5363 = bitcast i8* %5356 to float*
  store float %5362, float* %5363, align 1
  %5364 = getelementptr inbounds i8, i8* %5356, i64 4
  %5365 = bitcast i8* %5364 to float*
  store float 0.000000e+00, float* %5365, align 1
  %5366 = getelementptr inbounds i8, i8* %5356, i64 8
  %5367 = bitcast i8* %5366 to float*
  store float 0.000000e+00, float* %5367, align 1
  %5368 = getelementptr inbounds i8, i8* %5356, i64 12
  %5369 = bitcast i8* %5368 to float*
  store float 0.000000e+00, float* %5369, align 1
  store %struct.Memory* %loadMem_4395e6, %struct.Memory** %MEMORY
  %loadMem_4395ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 33
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %5372 to i64*
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 1
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %5375 to i64*
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5377 = getelementptr inbounds %struct.GPR, %struct.GPR* %5376, i32 0, i32 15
  %5378 = getelementptr inbounds %struct.Reg, %struct.Reg* %5377, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %5378 to i64*
  %5379 = load i64, i64* %RBP.i39
  %5380 = sub i64 %5379, 8
  %5381 = load i64, i64* %PC.i37
  %5382 = add i64 %5381, 4
  store i64 %5382, i64* %PC.i37
  %5383 = inttoptr i64 %5380 to i64*
  %5384 = load i64, i64* %5383
  store i64 %5384, i64* %RAX.i38, align 8
  store %struct.Memory* %loadMem_4395ee, %struct.Memory** %MEMORY
  %loadMem_4395f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 33
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 5
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RCX.i35 = bitcast %union.anon* %5390 to i64*
  %5391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5392 = getelementptr inbounds %struct.GPR, %struct.GPR* %5391, i32 0, i32 15
  %5393 = getelementptr inbounds %struct.Reg, %struct.Reg* %5392, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %5393 to i64*
  %5394 = load i64, i64* %RBP.i36
  %5395 = sub i64 %5394, 28
  %5396 = load i64, i64* %PC.i34
  %5397 = add i64 %5396, 4
  store i64 %5397, i64* %PC.i34
  %5398 = inttoptr i64 %5395 to i32*
  %5399 = load i32, i32* %5398
  %5400 = sext i32 %5399 to i64
  store i64 %5400, i64* %RCX.i35, align 8
  store %struct.Memory* %loadMem_4395f2, %struct.Memory** %MEMORY
  %loadMem_4395f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 33
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 1
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %5406 to i64*
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5408 = getelementptr inbounds %struct.GPR, %struct.GPR* %5407, i32 0, i32 5
  %5409 = getelementptr inbounds %struct.Reg, %struct.Reg* %5408, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5409 to i64*
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5411 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5410, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %5411 to %union.vec128_t*
  %5412 = load i64, i64* %RAX.i33
  %5413 = load i64, i64* %RCX.i
  %5414 = mul i64 %5413, 4
  %5415 = add i64 %5414, %5412
  %5416 = bitcast %union.vec128_t* %XMM0.i to i8*
  %5417 = load i64, i64* %PC.i32
  %5418 = add i64 %5417, 5
  store i64 %5418, i64* %PC.i32
  %5419 = bitcast i8* %5416 to <2 x float>*
  %5420 = load <2 x float>, <2 x float>* %5419, align 1
  %5421 = extractelement <2 x float> %5420, i32 0
  %5422 = inttoptr i64 %5415 to float*
  store float %5421, float* %5422
  store %struct.Memory* %loadMem_4395f6, %struct.Memory** %MEMORY
  %loadMem_4395fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5424 = getelementptr inbounds %struct.GPR, %struct.GPR* %5423, i32 0, i32 33
  %5425 = getelementptr inbounds %struct.Reg, %struct.Reg* %5424, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %5425 to i64*
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5427 = getelementptr inbounds %struct.GPR, %struct.GPR* %5426, i32 0, i32 1
  %5428 = getelementptr inbounds %struct.Reg, %struct.Reg* %5427, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %5428 to i64*
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5430 = getelementptr inbounds %struct.GPR, %struct.GPR* %5429, i32 0, i32 15
  %5431 = getelementptr inbounds %struct.Reg, %struct.Reg* %5430, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %5431 to i64*
  %5432 = load i64, i64* %RBP.i31
  %5433 = sub i64 %5432, 28
  %5434 = load i64, i64* %PC.i29
  %5435 = add i64 %5434, 3
  store i64 %5435, i64* %PC.i29
  %5436 = inttoptr i64 %5433 to i32*
  %5437 = load i32, i32* %5436
  %5438 = zext i32 %5437 to i64
  store i64 %5438, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_4395fb, %struct.Memory** %MEMORY
  %loadMem_4395fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 33
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5441 to i64*
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5443 = getelementptr inbounds %struct.GPR, %struct.GPR* %5442, i32 0, i32 1
  %5444 = getelementptr inbounds %struct.Reg, %struct.Reg* %5443, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5444 to i64*
  %5445 = load i64, i64* %RAX.i
  %5446 = load i64, i64* %PC.i28
  %5447 = add i64 %5446, 3
  store i64 %5447, i64* %PC.i28
  %5448 = trunc i64 %5445 to i32
  %5449 = add i32 1, %5448
  %5450 = zext i32 %5449 to i64
  store i64 %5450, i64* %RAX.i, align 8
  %5451 = icmp ult i32 %5449, %5448
  %5452 = icmp ult i32 %5449, 1
  %5453 = or i1 %5451, %5452
  %5454 = zext i1 %5453 to i8
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5454, i8* %5455, align 1
  %5456 = and i32 %5449, 255
  %5457 = call i32 @llvm.ctpop.i32(i32 %5456)
  %5458 = trunc i32 %5457 to i8
  %5459 = and i8 %5458, 1
  %5460 = xor i8 %5459, 1
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5460, i8* %5461, align 1
  %5462 = xor i64 1, %5445
  %5463 = trunc i64 %5462 to i32
  %5464 = xor i32 %5463, %5449
  %5465 = lshr i32 %5464, 4
  %5466 = trunc i32 %5465 to i8
  %5467 = and i8 %5466, 1
  %5468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5467, i8* %5468, align 1
  %5469 = icmp eq i32 %5449, 0
  %5470 = zext i1 %5469 to i8
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5470, i8* %5471, align 1
  %5472 = lshr i32 %5449, 31
  %5473 = trunc i32 %5472 to i8
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5473, i8* %5474, align 1
  %5475 = lshr i32 %5448, 31
  %5476 = xor i32 %5472, %5475
  %5477 = add i32 %5476, %5472
  %5478 = icmp eq i32 %5477, 2
  %5479 = zext i1 %5478 to i8
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5479, i8* %5480, align 1
  store %struct.Memory* %loadMem_4395fe, %struct.Memory** %MEMORY
  %loadMem_439601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 33
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 1
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5486 to i32*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 15
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %5489 to i64*
  %5490 = load i64, i64* %RBP.i27
  %5491 = sub i64 %5490, 28
  %5492 = load i32, i32* %EAX.i
  %5493 = zext i32 %5492 to i64
  %5494 = load i64, i64* %PC.i26
  %5495 = add i64 %5494, 3
  store i64 %5495, i64* %PC.i26
  %5496 = inttoptr i64 %5491 to i32*
  store i32 %5492, i32* %5496
  store %struct.Memory* %loadMem_439601, %struct.Memory** %MEMORY
  %loadMem_439604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5499 to i64*
  %5500 = load i64, i64* %PC.i25
  %5501 = add i64 %5500, -630
  %5502 = load i64, i64* %PC.i25
  %5503 = add i64 %5502, 5
  store i64 %5503, i64* %PC.i25
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5501, i64* %5504, align 8
  store %struct.Memory* %loadMem_439604, %struct.Memory** %MEMORY
  br label %block_.L_43938e

block_.L_439609:                                  ; preds = %block_.L_43938e
  %loadMem_439609 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 33
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %5507 to i64*
  %5508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5509 = getelementptr inbounds %struct.GPR, %struct.GPR* %5508, i32 0, i32 9
  %5510 = getelementptr inbounds %struct.Reg, %struct.Reg* %5509, i32 0, i32 0
  %RSI.i24 = bitcast %union.anon* %5510 to i64*
  %5511 = load i64, i64* %PC.i23
  %5512 = add i64 %5511, 5
  store i64 %5512, i64* %PC.i23
  store i64 3, i64* %RSI.i24, align 8
  store %struct.Memory* %loadMem_439609, %struct.Memory** %MEMORY
  %loadMem_43960e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5514 = getelementptr inbounds %struct.GPR, %struct.GPR* %5513, i32 0, i32 33
  %5515 = getelementptr inbounds %struct.Reg, %struct.Reg* %5514, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5515 to i64*
  %5516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5517 = getelementptr inbounds %struct.GPR, %struct.GPR* %5516, i32 0, i32 11
  %5518 = getelementptr inbounds %struct.Reg, %struct.Reg* %5517, i32 0, i32 0
  %RDI.i21 = bitcast %union.anon* %5518 to i64*
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 15
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %5521 to i64*
  %5522 = load i64, i64* %RBP.i22
  %5523 = sub i64 %5522, 8
  %5524 = load i64, i64* %PC.i20
  %5525 = add i64 %5524, 4
  store i64 %5525, i64* %PC.i20
  %5526 = inttoptr i64 %5523 to i64*
  %5527 = load i64, i64* %5526
  store i64 %5527, i64* %RDI.i21, align 8
  store %struct.Memory* %loadMem_43960e, %struct.Memory** %MEMORY
  %loadMem1_439612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 33
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5530 to i64*
  %5531 = load i64, i64* %PC.i19
  %5532 = add i64 %5531, 102798
  %5533 = load i64, i64* %PC.i19
  %5534 = add i64 %5533, 5
  %5535 = load i64, i64* %PC.i19
  %5536 = add i64 %5535, 5
  store i64 %5536, i64* %PC.i19
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5538 = load i64, i64* %5537, align 8
  %5539 = add i64 %5538, -8
  %5540 = inttoptr i64 %5539 to i64*
  store i64 %5534, i64* %5540
  store i64 %5539, i64* %5537, align 8
  %5541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5532, i64* %5541, align 8
  store %struct.Memory* %loadMem1_439612, %struct.Memory** %MEMORY
  %loadMem2_439612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439612 = load i64, i64* %3
  %call2_439612 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_439612, %struct.Memory* %loadMem2_439612)
  store %struct.Memory* %call2_439612, %struct.Memory** %MEMORY
  %loadMem_439617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 33
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5544 to i64*
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 9
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %RSI.i18 = bitcast %union.anon* %5547 to i64*
  %5548 = load i64, i64* %PC.i17
  %5549 = add i64 %5548, 5
  store i64 %5549, i64* %PC.i17
  store i64 2, i64* %RSI.i18, align 8
  store %struct.Memory* %loadMem_439617, %struct.Memory** %MEMORY
  %loadMem_43961c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 33
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5552 to i64*
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5554 = getelementptr inbounds %struct.GPR, %struct.GPR* %5553, i32 0, i32 11
  %5555 = getelementptr inbounds %struct.Reg, %struct.Reg* %5554, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %5555 to i64*
  %5556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5557 = getelementptr inbounds %struct.GPR, %struct.GPR* %5556, i32 0, i32 15
  %5558 = getelementptr inbounds %struct.Reg, %struct.Reg* %5557, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %5558 to i64*
  %5559 = load i64, i64* %RBP.i16
  %5560 = sub i64 %5559, 8
  %5561 = load i64, i64* %PC.i14
  %5562 = add i64 %5561, 4
  store i64 %5562, i64* %PC.i14
  %5563 = inttoptr i64 %5560 to i64*
  %5564 = load i64, i64* %5563
  store i64 %5564, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_43961c, %struct.Memory** %MEMORY
  %loadMem_439620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 33
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %5567 to i64*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 11
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RDI.i13 = bitcast %union.anon* %5570 to i64*
  %5571 = load i64, i64* %RDI.i13
  %5572 = load i64, i64* %PC.i12
  %5573 = add i64 %5572, 4
  store i64 %5573, i64* %PC.i12
  %5574 = add i64 12, %5571
  store i64 %5574, i64* %RDI.i13, align 8
  %5575 = icmp ult i64 %5574, %5571
  %5576 = icmp ult i64 %5574, 12
  %5577 = or i1 %5575, %5576
  %5578 = zext i1 %5577 to i8
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5578, i8* %5579, align 1
  %5580 = trunc i64 %5574 to i32
  %5581 = and i32 %5580, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = xor i64 12, %5571
  %5588 = xor i64 %5587, %5574
  %5589 = lshr i64 %5588, 4
  %5590 = trunc i64 %5589 to i8
  %5591 = and i8 %5590, 1
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5591, i8* %5592, align 1
  %5593 = icmp eq i64 %5574, 0
  %5594 = zext i1 %5593 to i8
  %5595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5594, i8* %5595, align 1
  %5596 = lshr i64 %5574, 63
  %5597 = trunc i64 %5596 to i8
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5597, i8* %5598, align 1
  %5599 = lshr i64 %5571, 63
  %5600 = xor i64 %5596, %5599
  %5601 = add i64 %5600, %5596
  %5602 = icmp eq i64 %5601, 2
  %5603 = zext i1 %5602 to i8
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5603, i8* %5604, align 1
  store %struct.Memory* %loadMem_439620, %struct.Memory** %MEMORY
  %loadMem1_439624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5606 = getelementptr inbounds %struct.GPR, %struct.GPR* %5605, i32 0, i32 33
  %5607 = getelementptr inbounds %struct.Reg, %struct.Reg* %5606, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5607 to i64*
  %5608 = load i64, i64* %PC.i11
  %5609 = add i64 %5608, 102780
  %5610 = load i64, i64* %PC.i11
  %5611 = add i64 %5610, 5
  %5612 = load i64, i64* %PC.i11
  %5613 = add i64 %5612, 5
  store i64 %5613, i64* %PC.i11
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5615 = load i64, i64* %5614, align 8
  %5616 = add i64 %5615, -8
  %5617 = inttoptr i64 %5616 to i64*
  store i64 %5611, i64* %5617
  store i64 %5616, i64* %5614, align 8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5609, i64* %5618, align 8
  store %struct.Memory* %loadMem1_439624, %struct.Memory** %MEMORY
  %loadMem2_439624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439624 = load i64, i64* %3
  %call2_439624 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_439624, %struct.Memory* %loadMem2_439624)
  store %struct.Memory* %call2_439624, %struct.Memory** %MEMORY
  %loadMem_439629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 33
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5621 to i64*
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 9
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5624 to i64*
  %5625 = load i64, i64* %PC.i10
  %5626 = add i64 %5625, 5
  store i64 %5626, i64* %PC.i10
  store i64 2, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_439629, %struct.Memory** %MEMORY
  %loadMem_43962e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 11
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RDI.i8 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 15
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %RBP.i9
  %5637 = sub i64 %5636, 8
  %5638 = load i64, i64* %PC.i7
  %5639 = add i64 %5638, 4
  store i64 %5639, i64* %PC.i7
  %5640 = inttoptr i64 %5637 to i64*
  %5641 = load i64, i64* %5640
  store i64 %5641, i64* %RDI.i8, align 8
  store %struct.Memory* %loadMem_43962e, %struct.Memory** %MEMORY
  %loadMem_439632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5643 = getelementptr inbounds %struct.GPR, %struct.GPR* %5642, i32 0, i32 33
  %5644 = getelementptr inbounds %struct.Reg, %struct.Reg* %5643, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5644 to i64*
  %5645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5646 = getelementptr inbounds %struct.GPR, %struct.GPR* %5645, i32 0, i32 11
  %5647 = getelementptr inbounds %struct.Reg, %struct.Reg* %5646, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5647 to i64*
  %5648 = load i64, i64* %RDI.i
  %5649 = load i64, i64* %PC.i6
  %5650 = add i64 %5649, 4
  store i64 %5650, i64* %PC.i6
  %5651 = add i64 20, %5648
  store i64 %5651, i64* %RDI.i, align 8
  %5652 = icmp ult i64 %5651, %5648
  %5653 = icmp ult i64 %5651, 20
  %5654 = or i1 %5652, %5653
  %5655 = zext i1 %5654 to i8
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5655, i8* %5656, align 1
  %5657 = trunc i64 %5651 to i32
  %5658 = and i32 %5657, 255
  %5659 = call i32 @llvm.ctpop.i32(i32 %5658)
  %5660 = trunc i32 %5659 to i8
  %5661 = and i8 %5660, 1
  %5662 = xor i8 %5661, 1
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5662, i8* %5663, align 1
  %5664 = xor i64 20, %5648
  %5665 = xor i64 %5664, %5651
  %5666 = lshr i64 %5665, 4
  %5667 = trunc i64 %5666 to i8
  %5668 = and i8 %5667, 1
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5668, i8* %5669, align 1
  %5670 = icmp eq i64 %5651, 0
  %5671 = zext i1 %5670 to i8
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5671, i8* %5672, align 1
  %5673 = lshr i64 %5651, 63
  %5674 = trunc i64 %5673 to i8
  %5675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5674, i8* %5675, align 1
  %5676 = lshr i64 %5648, 63
  %5677 = xor i64 %5673, %5676
  %5678 = add i64 %5677, %5673
  %5679 = icmp eq i64 %5678, 2
  %5680 = zext i1 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5680, i8* %5681, align 1
  store %struct.Memory* %loadMem_439632, %struct.Memory** %MEMORY
  %loadMem1_439636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 33
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5684 to i64*
  %5685 = load i64, i64* %PC.i5
  %5686 = add i64 %5685, 102762
  %5687 = load i64, i64* %PC.i5
  %5688 = add i64 %5687, 5
  %5689 = load i64, i64* %PC.i5
  %5690 = add i64 %5689, 5
  store i64 %5690, i64* %PC.i5
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5692 = load i64, i64* %5691, align 8
  %5693 = add i64 %5692, -8
  %5694 = inttoptr i64 %5693 to i64*
  store i64 %5688, i64* %5694
  store i64 %5693, i64* %5691, align 8
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5686, i64* %5695, align 8
  store %struct.Memory* %loadMem1_439636, %struct.Memory** %MEMORY
  %loadMem2_439636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_439636 = load i64, i64* %3
  %call2_439636 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_439636, %struct.Memory* %loadMem2_439636)
  store %struct.Memory* %call2_439636, %struct.Memory** %MEMORY
  %loadMem_43963b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 33
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5698 to i64*
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 13
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5701 to i64*
  %5702 = load i64, i64* %RSP.i
  %5703 = load i64, i64* %PC.i4
  %5704 = add i64 %5703, 7
  store i64 %5704, i64* %PC.i4
  %5705 = add i64 880, %5702
  store i64 %5705, i64* %RSP.i, align 8
  %5706 = icmp ult i64 %5705, %5702
  %5707 = icmp ult i64 %5705, 880
  %5708 = or i1 %5706, %5707
  %5709 = zext i1 %5708 to i8
  %5710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5709, i8* %5710, align 1
  %5711 = trunc i64 %5705 to i32
  %5712 = and i32 %5711, 255
  %5713 = call i32 @llvm.ctpop.i32(i32 %5712)
  %5714 = trunc i32 %5713 to i8
  %5715 = and i8 %5714, 1
  %5716 = xor i8 %5715, 1
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5716, i8* %5717, align 1
  %5718 = xor i64 880, %5702
  %5719 = xor i64 %5718, %5705
  %5720 = lshr i64 %5719, 4
  %5721 = trunc i64 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5722, i8* %5723, align 1
  %5724 = icmp eq i64 %5705, 0
  %5725 = zext i1 %5724 to i8
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5725, i8* %5726, align 1
  %5727 = lshr i64 %5705, 63
  %5728 = trunc i64 %5727 to i8
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5728, i8* %5729, align 1
  %5730 = lshr i64 %5702, 63
  %5731 = xor i64 %5727, %5730
  %5732 = add i64 %5731, %5727
  %5733 = icmp eq i64 %5732, 2
  %5734 = zext i1 %5733 to i8
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5734, i8* %5735, align 1
  store %struct.Memory* %loadMem_43963b, %struct.Memory** %MEMORY
  %loadMem_439642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 33
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5738 to i64*
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5740 = getelementptr inbounds %struct.GPR, %struct.GPR* %5739, i32 0, i32 15
  %5741 = getelementptr inbounds %struct.Reg, %struct.Reg* %5740, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5741 to i64*
  %5742 = load i64, i64* %PC.i2
  %5743 = add i64 %5742, 1
  store i64 %5743, i64* %PC.i2
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5745 = load i64, i64* %5744, align 8
  %5746 = add i64 %5745, 8
  %5747 = inttoptr i64 %5745 to i64*
  %5748 = load i64, i64* %5747
  store i64 %5748, i64* %RBP.i3, align 8
  store i64 %5746, i64* %5744, align 8
  store %struct.Memory* %loadMem_439642, %struct.Memory** %MEMORY
  %loadMem_439643 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5750 = getelementptr inbounds %struct.GPR, %struct.GPR* %5749, i32 0, i32 33
  %5751 = getelementptr inbounds %struct.Reg, %struct.Reg* %5750, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5751 to i64*
  %5752 = load i64, i64* %PC.i1
  %5753 = add i64 %5752, 1
  store i64 %5753, i64* %PC.i1
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5756 = load i64, i64* %5755, align 8
  %5757 = inttoptr i64 %5756 to i64*
  %5758 = load i64, i64* %5757
  store i64 %5758, i64* %5754, align 8
  %5759 = add i64 %5756, 8
  store i64 %5759, i64* %5755, align 8
  store %struct.Memory* %loadMem_439643, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_439643
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

define %struct.Memory* @routine_subq__0x370___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 880
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 880
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
  %23 = xor i64 880, %9
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

define %struct.Memory* @routine_movss_0x1b595__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1b595__rip__type* @G_0x1b595__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to float*
  %14 = load float, float* %13
  %15 = bitcast i8* %8 to float*
  store float %14, float* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 4
  %17 = bitcast i8* %16 to float*
  store float 0.000000e+00, float* %17, align 1
  %18 = getelementptr inbounds i8, i8* %8, i64 8
  %19 = bitcast i8* %18 to float*
  store float 0.000000e+00, float* %19, align 1
  %20 = getelementptr inbounds i8, i8* %8, i64 12
  %21 = bitcast i8* %20 to float*
  store float 0.000000e+00, float* %21, align 1
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x340__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 832
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_cmpl__0x0____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %13, 31
  %29 = xor i32 %25, %28
  %30 = add i32 %29, %28
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %32, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4391c1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i32*
  %13 = load i32, i32* %12
  %14 = sub i32 %13, 1
  %15 = icmp ult i32 %13, 1
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
  %24 = xor i32 %13, 1
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
  %36 = lshr i32 %13, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_43933d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x1908__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jle_.L_43933d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x4__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
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

define %struct.Memory* @routine_jge_.L_43932a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_ucomisd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %7 to %union.vec128_t*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %union.vec128_t* %XMM1 to i8*
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to double*
  %15 = load double, double* %14, align 1
  %16 = bitcast i8* %11 to double*
  %17 = load double, double* %16, align 1
  %18 = fcmp uno double %15, %17
  br i1 %18, label %19, label %31

; <label>:19:                                     ; preds = %block_400488
  %20 = fadd double %15, %17
  %21 = bitcast double %20 to i64
  %22 = and i64 %21, 9221120237041090560
  %23 = icmp eq i64 %22, 9218868437227405312
  %24 = and i64 %21, 2251799813685247
  %25 = icmp ne i64 %24, 0
  %26 = and i1 %23, %25
  br i1 %26, label %27, label %37

; <label>:27:                                     ; preds = %19
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %29, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

; <label>:31:                                     ; preds = %block_400488
  %32 = fcmp ogt double %15, %17
  br i1 %32, label %37, label %33

; <label>:33:                                     ; preds = %31
  %34 = fcmp olt double %15, %17
  br i1 %34, label %37, label %35

; <label>:35:                                     ; preds = %33
  %36 = fcmp oeq double %15, %17
  br i1 %36, label %37, label %44

; <label>:37:                                     ; preds = %35, %33, %31, %19
  %38 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 1, %35 ], [ 1, %19 ]
  %39 = phi i8 [ 0, %31 ], [ 0, %33 ], [ 0, %35 ], [ 1, %19 ]
  %40 = phi i8 [ 0, %31 ], [ 1, %33 ], [ 0, %35 ], [ 1, %19 ]
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %38, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %39, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %40, i8* %43, align 1
  br label %44

; <label>:44:                                     ; preds = %37, %35
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %45, align 1
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %46, align 1
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %47, align 1
  br label %_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit

_ZN12_GLOBAL__N_1L6COMISDI2VnI8vec128_tES3_EEP6MemoryS5_R5StateT_T0_.exit: ; preds = %27, %44
  %48 = phi %struct.Memory* [ %30, %27 ], [ %2, %44 ]
  ret %struct.Memory* %48
}

define %struct.Memory* @routine_jbe_.L_439222(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = load i8, i8* %14, align 1
  %16 = or i8 %15, %13
  %17 = icmp ne i8 %16, 0
  %18 = zext i1 %17 to i8
  store i8 %18, i8* %BRANCH_TAKEN, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %20 = select i1 %17, i64 %7, i64 %9
  store i64 %20, i64* %19, align 8
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

define %struct.Memory* @routine_callq_.log_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd__xmm0__MINUS0x358__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 856
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_439237(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x1b6e6__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x1b6e6__rip__type* @G_0x1b6e6__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x358__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 856
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movl__0x3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x340__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RBP
  %15 = load i64, i64* %RAX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, -832
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x328___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 808, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 808
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
  %25 = xor i64 808, %9
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

define %struct.Memory* @routine_imulq__0x1c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 28, %15
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

define %struct.Memory* @routine_movq__rax___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.Logp_cvec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addss_MINUS0x340__rbp__rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = mul i64 %17, 4
  %19 = add i64 %16, -832
  %20 = add i64 %19, %18
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 9
  store i64 %22, i64* %PC
  %23 = bitcast i8* %15 to <2 x float>*
  %24 = load <2 x float>, <2 x float>* %23, align 1
  %25 = getelementptr inbounds i8, i8* %15, i64 8
  %26 = bitcast i8* %25 to <2 x i32>*
  %27 = load <2 x i32>, <2 x i32>* %26, align 1
  %28 = inttoptr i64 %20 to float*
  %29 = load float, float* %28
  %30 = extractelement <2 x float> %24, i32 0
  %31 = fadd float %30, %29
  %32 = bitcast i8* %14 to float*
  store float %31, float* %32, align 1
  %33 = bitcast <2 x float> %24 to <2 x i32>
  %34 = extractelement <2 x i32> %33, i32 1
  %35 = getelementptr inbounds i8, i8* %14, i64 4
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  %37 = extractelement <2 x i32> %27, i32 0
  %38 = getelementptr inbounds i8, i8* %14, i64 8
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
  %40 = extractelement <2 x i32> %27, i32 1
  %41 = getelementptr inbounds i8, i8* %14, i64 12
  %42 = bitcast i8* %41 to i32*
  store i32 %40, i32* %42, align 1
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

define %struct.Memory* @routine_addq__0xc___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 12, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 12
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
  %25 = xor i64 12, %9
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

define %struct.Memory* @routine_addq__0x328___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 808, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 808
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
  %25 = xor i64 808, %9
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

define %struct.Memory* @routine_imulq__0x1c___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 28, %15
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

define %struct.Memory* @routine_addq__rdx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RCX, align 8
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

define %struct.Memory* @routine_addq__0xc___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 12, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 12
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
  %25 = xor i64 12, %9
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

define %struct.Memory* @routine_movq__rcx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x14___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 20, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 20
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
  %25 = xor i64 20, %9
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

define %struct.Memory* @routine_addq__0x14___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 20, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 20
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
  %25 = xor i64 20, %9
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

define %struct.Memory* @routine_jmpq_.L_4391d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x340__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 832
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.LogNorm(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.FSum(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x344__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 836
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0xc__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_addss_0x10__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 16
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x34c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 844
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x14__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 20
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

define %struct.Memory* @routine_addss_0x18__rdi____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 11
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDI = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDI
  %14 = add i64 %13, 24
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x348__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 840
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_cmpl__0x7__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 7
  %16 = icmp ult i32 %14, 7
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
  %25 = xor i32 %14, 7
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

define %struct.Memory* @routine_jge_.L_439609(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x350__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 848
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4395e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 3
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 3
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
  %24 = xor i64 3, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x35c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 860
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x360__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 864
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jb_.L_439413(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4393d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x35c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 860
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xfffffffd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -3, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -3
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
  %26 = xor i64 -3, %9
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

define %struct.Memory* @routine_subl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 2
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 2
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
  %24 = xor i64 2, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x364__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 868
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jb_.L_4394b6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4393f6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0xfffffffb___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -5, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -5
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
  %26 = xor i64 -5, %9
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

define %struct.Memory* @routine_movl__eax__MINUS0x368__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 872
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jb_.L_439547(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %BRANCH_TAKEN, align 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %15 = icmp ne i8 %13, 0
  %16 = select i1 %15, i64 %7, i64 %9
  store i64 %16, i64* %14, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4395d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x340__rbp__rax_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -832
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_addss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_mulss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fmul float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x344__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 836
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss__xmm1__MINUS0x36c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 876
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x370__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 880
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x36c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 876
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fadd float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_MINUS0x370__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 880
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_divss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_MINUS0x350__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 848
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
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

define %struct.Memory* @routine_movss_MINUS0x34c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 844
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addss_0xc__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 12
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

define %struct.Memory* @routine_addss_0x10__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 16
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

define %struct.Memory* @routine_movss_MINUS0x348__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 840
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_addss_0x14__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 20
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

define %struct.Memory* @routine_addss_0x18__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 24
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

define %struct.Memory* @routine_jmpq_.L_4395d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4393aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movss_MINUS0x350__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 848
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
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

define %struct.Memory* @routine_movss__xmm0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
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

define %struct.Memory* @routine_jmpq_.L_43938e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.FNorm(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xc___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 12, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 12
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
  %25 = xor i64 12, %9
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

define %struct.Memory* @routine_addq__0x14___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = add i64 20, %9
  store i64 %12, i64* %RDI, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 20
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
  %25 = xor i64 20, %9
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

define %struct.Memory* @routine_addq__0x370___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 880, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 880
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
  %25 = xor i64 880, %9
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
