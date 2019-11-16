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
%G_0x39a48__rip__type = type <{ [8 x i8] }>
%G_0x39b0f__rip__type = type <{ [8 x i8] }>
%G_0x39b78__rip__type = type <{ [8 x i8] }>
%G_0x39bbb__rip__type = type <{ [8 x i8] }>
%G_0x39be2__rip__type = type <{ [8 x i8] }>
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
@G_0x39a48__rip_ = global %G_0x39a48__rip__type zeroinitializer
@G_0x39b0f__rip_ = global %G_0x39b0f__rip__type zeroinitializer
@G_0x39b78__rip_ = global %G_0x39b78__rip__type zeroinitializer
@G_0x39bbb__rip_ = global %G_0x39bbb__rip__type zeroinitializer
@G_0x39be2__rip_ = global %G_0x39be2__rip__type zeroinitializer

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
define %struct.Memory* @Lawless416(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_41abc0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_41abc0, %struct.Memory** %MEMORY
  %loadMem_41abc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i114 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i114
  %27 = load i64, i64* %PC.i113
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i113
  store i64 %26, i64* %RBP.i115, align 8
  store %struct.Memory* %loadMem_41abc1, %struct.Memory** %MEMORY
  %loadMem_41abc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i159 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i159
  %36 = load i64, i64* %PC.i158
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i158
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i159, align 8
  %39 = icmp ult i64 %35, 128
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
  %49 = xor i64 128, %35
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
  store %struct.Memory* %loadMem_41abc4, %struct.Memory** %MEMORY
  %loadMem_41abcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 1
  %YMM1.i230 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 1
  %XMM1.i231 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM1.i230 to i8*
  %76 = bitcast %union.vec128_t* %XMM1.i231 to i8*
  %77 = load i64, i64* %PC.i229
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i229
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
  store %struct.Memory* %loadMem_41abcb, %struct.Memory** %MEMORY
  %loadMem_41abce = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i363
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %RDI.i
  %116 = load i64, i64* %PC.i362
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i362
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  store %struct.Memory* %loadMem_41abce, %struct.Memory** %MEMORY
  %loadMem_41abd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i361
  %129 = sub i64 %128, 16
  %130 = load i64, i64* %RSI.i
  %131 = load i64, i64* %PC.i360
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i360
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133
  store %struct.Memory* %loadMem_41abd2, %struct.Memory** %MEMORY
  %loadMem_41abd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 7
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %139 to i32*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i359
  %144 = sub i64 %143, 20
  %145 = load i32, i32* %EDX.i
  %146 = zext i32 %145 to i64
  %147 = load i64, i64* %PC.i358
  %148 = add i64 %147, 3
  store i64 %148, i64* %PC.i358
  %149 = inttoptr i64 %144 to i32*
  store i32 %145, i32* %149
  store %struct.Memory* %loadMem_41abd6, %struct.Memory** %MEMORY
  %loadMem_41abd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 15
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %156, i64 0, i64 0
  %XMM0.i357 = bitcast %union.VectorReg* %157 to %union.vec128_t*
  %158 = load i64, i64* %RBP.i356
  %159 = sub i64 %158, 24
  %160 = bitcast %union.vec128_t* %XMM0.i357 to i8*
  %161 = load i64, i64* %PC.i355
  %162 = add i64 %161, 5
  store i64 %162, i64* %PC.i355
  %163 = bitcast i8* %160 to <2 x float>*
  %164 = load <2 x float>, <2 x float>* %163, align 1
  %165 = extractelement <2 x float> %164, i32 0
  %166 = inttoptr i64 %159 to float*
  store float %165, float* %166
  store %struct.Memory* %loadMem_41abd9, %struct.Memory** %MEMORY
  %loadMem_41abde = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 5
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %172 to i64*
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 15
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %175 to i64*
  %176 = load i64, i64* %RBP.i354
  %177 = sub i64 %176, 32
  %178 = load i64, i64* %RCX.i353
  %179 = load i64, i64* %PC.i352
  %180 = add i64 %179, 4
  store i64 %180, i64* %PC.i352
  %181 = inttoptr i64 %177 to i64*
  store i64 %178, i64* %181
  store %struct.Memory* %loadMem_41abde, %struct.Memory** %MEMORY
  %loadMem_41abe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 33
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %184 to i64*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 17
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %R8.i = bitcast %union.anon* %190 to i64*
  %191 = load i64, i64* %RBP.i351
  %192 = sub i64 %191, 40
  %193 = load i64, i64* %R8.i
  %194 = load i64, i64* %PC.i350
  %195 = add i64 %194, 4
  store i64 %195, i64* %PC.i350
  %196 = inttoptr i64 %192 to i64*
  store i64 %193, i64* %196
  store %struct.Memory* %loadMem_41abe2, %struct.Memory** %MEMORY
  %loadMem_41abe6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 33
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %199 to i64*
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 15
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %203, i64 0, i64 1
  %XMM1.i349 = bitcast %union.VectorReg* %204 to %union.vec128_t*
  %205 = load i64, i64* %RBP.i348
  %206 = sub i64 %205, 88
  %207 = bitcast %union.vec128_t* %XMM1.i349 to i8*
  %208 = load i64, i64* %PC.i347
  %209 = add i64 %208, 5
  store i64 %209, i64* %PC.i347
  %210 = bitcast i8* %207 to double*
  %211 = load double, double* %210, align 1
  %212 = inttoptr i64 %206 to double*
  store double %211, double* %212
  store %struct.Memory* %loadMem_41abe6, %struct.Memory** %MEMORY
  %loadMem_41abeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 33
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %215 to i64*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %220 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %219, i64 0, i64 1
  %XMM1.i346 = bitcast %union.VectorReg* %220 to %union.vec128_t*
  %221 = load i64, i64* %RBP.i345
  %222 = sub i64 %221, 64
  %223 = bitcast %union.vec128_t* %XMM1.i346 to i8*
  %224 = load i64, i64* %PC.i344
  %225 = add i64 %224, 5
  store i64 %225, i64* %PC.i344
  %226 = bitcast i8* %223 to double*
  %227 = load double, double* %226, align 1
  %228 = inttoptr i64 %222 to double*
  store double %227, double* %228
  store %struct.Memory* %loadMem_41abeb, %struct.Memory** %MEMORY
  %loadMem_41abf0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 33
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %231 to i64*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %236 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %235, i64 0, i64 1
  %XMM1.i343 = bitcast %union.VectorReg* %236 to %union.vec128_t*
  %237 = load i64, i64* %RBP.i342
  %238 = sub i64 %237, 72
  %239 = bitcast %union.vec128_t* %XMM1.i343 to i8*
  %240 = load i64, i64* %PC.i341
  %241 = add i64 %240, 5
  store i64 %241, i64* %PC.i341
  %242 = bitcast i8* %239 to double*
  %243 = load double, double* %242, align 1
  %244 = inttoptr i64 %238 to double*
  store double %243, double* %244
  store %struct.Memory* %loadMem_41abf0, %struct.Memory** %MEMORY
  %loadMem_41abf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 33
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %247 to i64*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %252 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %251, i64 0, i64 1
  %XMM1.i340 = bitcast %union.VectorReg* %252 to %union.vec128_t*
  %253 = load i64, i64* %RBP.i339
  %254 = sub i64 %253, 56
  %255 = bitcast %union.vec128_t* %XMM1.i340 to i8*
  %256 = load i64, i64* %PC.i338
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC.i338
  %258 = bitcast i8* %255 to double*
  %259 = load double, double* %258, align 1
  %260 = inttoptr i64 %254 to double*
  store double %259, double* %260
  store %struct.Memory* %loadMem_41abf5, %struct.Memory** %MEMORY
  %loadMem_41abfa = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %268 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %267, i64 0, i64 1
  %XMM1.i337 = bitcast %union.VectorReg* %268 to %union.vec128_t*
  %269 = load i64, i64* %RBP.i336
  %270 = sub i64 %269, 48
  %271 = bitcast %union.vec128_t* %XMM1.i337 to i8*
  %272 = load i64, i64* %PC.i335
  %273 = add i64 %272, 5
  store i64 %273, i64* %PC.i335
  %274 = bitcast i8* %271 to double*
  %275 = load double, double* %274, align 1
  %276 = inttoptr i64 %270 to double*
  store double %275, double* %276
  store %struct.Memory* %loadMem_41abfa, %struct.Memory** %MEMORY
  %loadMem_41abff = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 15
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %282 to i64*
  %283 = load i64, i64* %RBP.i334
  %284 = sub i64 %283, 92
  %285 = load i64, i64* %PC.i333
  %286 = add i64 %285, 7
  store i64 %286, i64* %PC.i333
  %287 = inttoptr i64 %284 to i32*
  store i32 0, i32* %287
  store %struct.Memory* %loadMem_41abff, %struct.Memory** %MEMORY
  br label %block_.L_41ac06

block_.L_41ac06:                                  ; preds = %block_.L_41ac41, %entry
  %loadMem_41ac06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 1
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 15
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %RBP.i332
  %298 = sub i64 %297, 92
  %299 = load i64, i64* %PC.i330
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC.i330
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_41ac06, %struct.Memory** %MEMORY
  %loadMem_41ac09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %309 to i32*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %312 to i64*
  %313 = load i32, i32* %EAX.i328
  %314 = zext i32 %313 to i64
  %315 = load i64, i64* %RBP.i329
  %316 = sub i64 %315, 20
  %317 = load i64, i64* %PC.i327
  %318 = add i64 %317, 3
  store i64 %318, i64* %PC.i327
  %319 = inttoptr i64 %316 to i32*
  %320 = load i32, i32* %319
  %321 = sub i32 %313, %320
  %322 = icmp ult i32 %313, %320
  %323 = zext i1 %322 to i8
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %323, i8* %324, align 1
  %325 = and i32 %321, 255
  %326 = call i32 @llvm.ctpop.i32(i32 %325)
  %327 = trunc i32 %326 to i8
  %328 = and i8 %327, 1
  %329 = xor i8 %328, 1
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %329, i8* %330, align 1
  %331 = xor i32 %320, %313
  %332 = xor i32 %331, %321
  %333 = lshr i32 %332, 4
  %334 = trunc i32 %333 to i8
  %335 = and i8 %334, 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %335, i8* %336, align 1
  %337 = icmp eq i32 %321, 0
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %338, i8* %339, align 1
  %340 = lshr i32 %321, 31
  %341 = trunc i32 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %341, i8* %342, align 1
  %343 = lshr i32 %313, 31
  %344 = lshr i32 %320, 31
  %345 = xor i32 %344, %343
  %346 = xor i32 %340, %343
  %347 = add i32 %346, %345
  %348 = icmp eq i32 %347, 2
  %349 = zext i1 %348 to i8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %349, i8* %350, align 1
  store %struct.Memory* %loadMem_41ac09, %struct.Memory** %MEMORY
  %loadMem_41ac0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %353 to i64*
  %354 = load i64, i64* %PC.i326
  %355 = add i64 %354, 388
  %356 = load i64, i64* %PC.i326
  %357 = add i64 %356, 6
  %358 = load i64, i64* %PC.i326
  %359 = add i64 %358, 6
  store i64 %359, i64* %PC.i326
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %361 = load i8, i8* %360, align 1
  %362 = icmp ne i8 %361, 0
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %364 = load i8, i8* %363, align 1
  %365 = icmp ne i8 %364, 0
  %366 = xor i1 %362, %365
  %367 = xor i1 %366, true
  %368 = zext i1 %367 to i8
  store i8 %368, i8* %BRANCH_TAKEN, align 1
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %370 = select i1 %366, i64 %357, i64 %355
  store i64 %370, i64* %369, align 8
  store %struct.Memory* %loadMem_41ac0c, %struct.Memory** %MEMORY
  %loadBr_41ac0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ac0c = icmp eq i8 %loadBr_41ac0c, 1
  br i1 %cmpBr_41ac0c, label %block_.L_41ad90, label %block_41ac12

block_41ac12:                                     ; preds = %block_.L_41ac06
  %loadMem_41ac12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 33
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i325
  %378 = sub i64 %377, 16
  %379 = load i64, i64* %PC.i324
  %380 = add i64 %379, 5
  store i64 %380, i64* %PC.i324
  %381 = inttoptr i64 %378 to i64*
  %382 = load i64, i64* %381
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %383, align 1
  %384 = trunc i64 %382 to i32
  %385 = and i32 %384, 255
  %386 = call i32 @llvm.ctpop.i32(i32 %385)
  %387 = trunc i32 %386 to i8
  %388 = and i8 %387, 1
  %389 = xor i8 %388, 1
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %389, i8* %390, align 1
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %391, align 1
  %392 = icmp eq i64 %382, 0
  %393 = zext i1 %392 to i8
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %393, i8* %394, align 1
  %395 = lshr i64 %382, 63
  %396 = trunc i64 %395 to i8
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %396, i8* %397, align 1
  %398 = lshr i64 %382, 63
  %399 = xor i64 %395, %398
  %400 = add i64 %399, %398
  %401 = icmp eq i64 %400, 2
  %402 = zext i1 %401 to i8
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %402, i8* %403, align 1
  store %struct.Memory* %loadMem_41ac12, %struct.Memory** %MEMORY
  %loadMem_41ac17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %405 = getelementptr inbounds %struct.GPR, %struct.GPR* %404, i32 0, i32 33
  %406 = getelementptr inbounds %struct.Reg, %struct.Reg* %405, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %406 to i64*
  %407 = load i64, i64* %PC.i323
  %408 = add i64 %407, 24
  %409 = load i64, i64* %PC.i323
  %410 = add i64 %409, 6
  %411 = load i64, i64* %PC.i323
  %412 = add i64 %411, 6
  store i64 %412, i64* %PC.i323
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %414 = load i8, i8* %413, align 1
  %415 = icmp eq i8 %414, 0
  %416 = zext i1 %415 to i8
  store i8 %416, i8* %BRANCH_TAKEN, align 1
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %418 = select i1 %415, i64 %408, i64 %410
  store i64 %418, i64* %417, align 8
  store %struct.Memory* %loadMem_41ac17, %struct.Memory** %MEMORY
  %loadBr_41ac17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41ac17 = icmp eq i8 %loadBr_41ac17, 1
  br i1 %cmpBr_41ac17, label %block_.L_41ac2f, label %block_41ac1d

block_41ac1d:                                     ; preds = %block_41ac12
  %loadMem_41ac1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %421 to i64*
  %422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %422, i64 0, i64 0
  %YMM0.i322 = bitcast %union.VectorReg* %423 to %"class.std::bitset"*
  %424 = bitcast %"class.std::bitset"* %YMM0.i322 to i8*
  %425 = load i64, i64* %PC.i321
  %426 = add i64 %425, ptrtoint (%G_0x39bbb__rip__type* @G_0x39bbb__rip_ to i64)
  %427 = load i64, i64* %PC.i321
  %428 = add i64 %427, 8
  store i64 %428, i64* %PC.i321
  %429 = inttoptr i64 %426 to double*
  %430 = load double, double* %429
  %431 = bitcast i8* %424 to double*
  store double %430, double* %431, align 1
  %432 = getelementptr inbounds i8, i8* %424, i64 8
  %433 = bitcast i8* %432 to double*
  store double 0.000000e+00, double* %433, align 1
  store %struct.Memory* %loadMem_41ac1d, %struct.Memory** %MEMORY
  %loadMem_41ac25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 15
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %440, i64 0, i64 0
  %XMM0.i320 = bitcast %union.VectorReg* %441 to %union.vec128_t*
  %442 = load i64, i64* %RBP.i319
  %443 = sub i64 %442, 104
  %444 = bitcast %union.vec128_t* %XMM0.i320 to i8*
  %445 = load i64, i64* %PC.i318
  %446 = add i64 %445, 5
  store i64 %446, i64* %PC.i318
  %447 = bitcast i8* %444 to double*
  %448 = load double, double* %447, align 1
  %449 = inttoptr i64 %443 to double*
  store double %448, double* %449
  store %struct.Memory* %loadMem_41ac25, %struct.Memory** %MEMORY
  %loadMem_41ac2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %PC.i317
  %454 = add i64 %453, 23
  %455 = load i64, i64* %PC.i317
  %456 = add i64 %455, 5
  store i64 %456, i64* %PC.i317
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %454, i64* %457, align 8
  store %struct.Memory* %loadMem_41ac2a, %struct.Memory** %MEMORY
  br label %block_.L_41ac41

block_.L_41ac2f:                                  ; preds = %block_41ac12
  %loadMem_41ac2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 33
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 1
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %463 to i64*
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 15
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %466 to i64*
  %467 = load i64, i64* %RBP.i316
  %468 = sub i64 %467, 16
  %469 = load i64, i64* %PC.i314
  %470 = add i64 %469, 4
  store i64 %470, i64* %PC.i314
  %471 = inttoptr i64 %468 to i64*
  %472 = load i64, i64* %471
  store i64 %472, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_41ac2f, %struct.Memory** %MEMORY
  %loadMem_41ac33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 5
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RCX.i312 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %481 to i64*
  %482 = load i64, i64* %RBP.i313
  %483 = sub i64 %482, 92
  %484 = load i64, i64* %PC.i311
  %485 = add i64 %484, 4
  store i64 %485, i64* %PC.i311
  %486 = inttoptr i64 %483 to i32*
  %487 = load i32, i32* %486
  %488 = sext i32 %487 to i64
  store i64 %488, i64* %RCX.i312, align 8
  store %struct.Memory* %loadMem_41ac33, %struct.Memory** %MEMORY
  %loadMem_41ac37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %491 to i64*
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 1
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 5
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %499 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %498, i64 0, i64 0
  %YMM0.i310 = bitcast %union.VectorReg* %499 to %"class.std::bitset"*
  %500 = bitcast %"class.std::bitset"* %YMM0.i310 to i8*
  %501 = load i64, i64* %RAX.i308
  %502 = load i64, i64* %RCX.i309
  %503 = mul i64 %502, 4
  %504 = add i64 %503, %501
  %505 = load i64, i64* %PC.i307
  %506 = add i64 %505, 5
  store i64 %506, i64* %PC.i307
  %507 = inttoptr i64 %504 to i32*
  %508 = load i32, i32* %507
  %509 = sitofp i32 %508 to double
  %510 = bitcast i8* %500 to double*
  store double %509, double* %510, align 1
  store %struct.Memory* %loadMem_41ac37, %struct.Memory** %MEMORY
  %loadMem_41ac3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 15
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %517, i64 0, i64 0
  %XMM0.i306 = bitcast %union.VectorReg* %518 to %union.vec128_t*
  %519 = load i64, i64* %RBP.i305
  %520 = sub i64 %519, 104
  %521 = bitcast %union.vec128_t* %XMM0.i306 to i8*
  %522 = load i64, i64* %PC.i304
  %523 = add i64 %522, 5
  store i64 %523, i64* %PC.i304
  %524 = bitcast i8* %521 to double*
  %525 = load double, double* %524, align 1
  %526 = inttoptr i64 %520 to double*
  store double %525, double* %526
  store %struct.Memory* %loadMem_41ac3c, %struct.Memory** %MEMORY
  br label %block_.L_41ac41

block_.L_41ac41:                                  ; preds = %block_.L_41ac2f, %block_41ac1d
  %loadMem_41ac41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %529 to i64*
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 15
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %533, i64 0, i64 0
  %YMM0.i303 = bitcast %union.VectorReg* %534 to %"class.std::bitset"*
  %535 = bitcast %"class.std::bitset"* %YMM0.i303 to i8*
  %536 = load i64, i64* %RBP.i302
  %537 = sub i64 %536, 104
  %538 = load i64, i64* %PC.i301
  %539 = add i64 %538, 5
  store i64 %539, i64* %PC.i301
  %540 = inttoptr i64 %537 to double*
  %541 = load double, double* %540
  %542 = bitcast i8* %535 to double*
  store double %541, double* %542, align 1
  %543 = getelementptr inbounds i8, i8* %535, i64 8
  %544 = bitcast i8* %543 to double*
  store double 0.000000e+00, double* %544, align 1
  store %struct.Memory* %loadMem_41ac41, %struct.Memory** %MEMORY
  %loadMem_41ac46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %546 = getelementptr inbounds %struct.GPR, %struct.GPR* %545, i32 0, i32 33
  %547 = getelementptr inbounds %struct.Reg, %struct.Reg* %546, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %547 to i64*
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %549 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %548, i64 0, i64 1
  %YMM1.i300 = bitcast %union.VectorReg* %549 to %"class.std::bitset"*
  %550 = bitcast %"class.std::bitset"* %YMM1.i300 to i8*
  %551 = load i64, i64* %PC.i299
  %552 = add i64 %551, ptrtoint (%G_0x39be2__rip__type* @G_0x39be2__rip_ to i64)
  %553 = load i64, i64* %PC.i299
  %554 = add i64 %553, 8
  store i64 %554, i64* %PC.i299
  %555 = inttoptr i64 %552 to double*
  %556 = load double, double* %555
  %557 = bitcast i8* %550 to double*
  store double %556, double* %557, align 1
  %558 = getelementptr inbounds i8, i8* %550, i64 8
  %559 = bitcast i8* %558 to double*
  store double 0.000000e+00, double* %559, align 1
  store %struct.Memory* %loadMem_41ac46, %struct.Memory** %MEMORY
  %loadMem_41ac4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 15
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %567 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %566, i64 0, i64 0
  %XMM0.i298 = bitcast %union.VectorReg* %567 to %union.vec128_t*
  %568 = load i64, i64* %RBP.i297
  %569 = sub i64 %568, 80
  %570 = bitcast %union.vec128_t* %XMM0.i298 to i8*
  %571 = load i64, i64* %PC.i296
  %572 = add i64 %571, 5
  store i64 %572, i64* %PC.i296
  %573 = bitcast i8* %570 to double*
  %574 = load double, double* %573, align 1
  %575 = inttoptr i64 %569 to double*
  store double %574, double* %575
  store %struct.Memory* %loadMem_41ac4e, %struct.Memory** %MEMORY
  %loadMem_41ac53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 15
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %583 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %582, i64 0, i64 0
  %YMM0.i295 = bitcast %union.VectorReg* %583 to %"class.std::bitset"*
  %584 = bitcast %"class.std::bitset"* %YMM0.i295 to i8*
  %585 = load i64, i64* %RBP.i294
  %586 = sub i64 %585, 80
  %587 = load i64, i64* %PC.i293
  %588 = add i64 %587, 5
  store i64 %588, i64* %PC.i293
  %589 = inttoptr i64 %586 to double*
  %590 = load double, double* %589
  %591 = bitcast i8* %584 to double*
  store double %590, double* %591, align 1
  %592 = getelementptr inbounds i8, i8* %584, i64 8
  %593 = bitcast i8* %592 to double*
  store double 0.000000e+00, double* %593, align 1
  store %struct.Memory* %loadMem_41ac53, %struct.Memory** %MEMORY
  %loadMem_41ac58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 33
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %596 to i64*
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 1
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 15
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %602 to i64*
  %603 = load i64, i64* %RBP.i292
  %604 = sub i64 %603, 8
  %605 = load i64, i64* %PC.i290
  %606 = add i64 %605, 4
  store i64 %606, i64* %PC.i290
  %607 = inttoptr i64 %604 to i64*
  %608 = load i64, i64* %607
  store i64 %608, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_41ac58, %struct.Memory** %MEMORY
  %loadMem_41ac5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 5
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RCX.i288 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i289
  %619 = sub i64 %618, 92
  %620 = load i64, i64* %PC.i287
  %621 = add i64 %620, 4
  store i64 %621, i64* %PC.i287
  %622 = inttoptr i64 %619 to i32*
  %623 = load i32, i32* %622
  %624 = sext i32 %623 to i64
  store i64 %624, i64* %RCX.i288, align 8
  store %struct.Memory* %loadMem_41ac5c, %struct.Memory** %MEMORY
  %loadMem_41ac60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 5
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %635 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %634, i64 0, i64 2
  %YMM2.i286 = bitcast %union.VectorReg* %635 to %"class.std::bitset"*
  %636 = bitcast %"class.std::bitset"* %YMM2.i286 to i8*
  %637 = load i64, i64* %RAX.i284
  %638 = load i64, i64* %RCX.i285
  %639 = mul i64 %638, 4
  %640 = add i64 %639, %637
  %641 = load i64, i64* %PC.i283
  %642 = add i64 %641, 5
  store i64 %642, i64* %PC.i283
  %643 = inttoptr i64 %640 to float*
  %644 = load float, float* %643
  %645 = fpext float %644 to double
  %646 = bitcast i8* %636 to double*
  store double %645, double* %646, align 1
  store %struct.Memory* %loadMem_41ac60, %struct.Memory** %MEMORY
  %loadMem_41ac65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %650, i64 0, i64 0
  %YMM0.i281 = bitcast %union.VectorReg* %651 to %"class.std::bitset"*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %653 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %652, i64 0, i64 2
  %XMM2.i282 = bitcast %union.VectorReg* %653 to %union.vec128_t*
  %654 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %655 = bitcast %"class.std::bitset"* %YMM0.i281 to i8*
  %656 = bitcast %union.vec128_t* %XMM2.i282 to i8*
  %657 = load i64, i64* %PC.i280
  %658 = add i64 %657, 4
  store i64 %658, i64* %PC.i280
  %659 = bitcast i8* %655 to double*
  %660 = load double, double* %659, align 1
  %661 = getelementptr inbounds i8, i8* %655, i64 8
  %662 = bitcast i8* %661 to i64*
  %663 = load i64, i64* %662, align 1
  %664 = bitcast i8* %656 to double*
  %665 = load double, double* %664, align 1
  %666 = fmul double %660, %665
  %667 = bitcast i8* %654 to double*
  store double %666, double* %667, align 1
  %668 = getelementptr inbounds i8, i8* %654, i64 8
  %669 = bitcast i8* %668 to i64*
  store i64 %663, i64* %669, align 1
  store %struct.Memory* %loadMem_41ac65, %struct.Memory** %MEMORY
  %loadMem_41ac69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %677 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %676, i64 0, i64 0
  %YMM0.i279 = bitcast %union.VectorReg* %677 to %"class.std::bitset"*
  %678 = bitcast %"class.std::bitset"* %YMM0.i279 to i8*
  %679 = bitcast %"class.std::bitset"* %YMM0.i279 to i8*
  %680 = load i64, i64* %RBP.i278
  %681 = sub i64 %680, 72
  %682 = load i64, i64* %PC.i277
  %683 = add i64 %682, 5
  store i64 %683, i64* %PC.i277
  %684 = bitcast i8* %679 to double*
  %685 = load double, double* %684, align 1
  %686 = getelementptr inbounds i8, i8* %679, i64 8
  %687 = bitcast i8* %686 to i64*
  %688 = load i64, i64* %687, align 1
  %689 = inttoptr i64 %681 to double*
  %690 = load double, double* %689
  %691 = fadd double %685, %690
  %692 = bitcast i8* %678 to double*
  store double %691, double* %692, align 1
  %693 = getelementptr inbounds i8, i8* %678, i64 8
  %694 = bitcast i8* %693 to i64*
  store i64 %688, i64* %694, align 1
  store %struct.Memory* %loadMem_41ac69, %struct.Memory** %MEMORY
  %loadMem_41ac6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 15
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %701, i64 0, i64 0
  %XMM0.i276 = bitcast %union.VectorReg* %702 to %union.vec128_t*
  %703 = load i64, i64* %RBP.i275
  %704 = sub i64 %703, 72
  %705 = bitcast %union.vec128_t* %XMM0.i276 to i8*
  %706 = load i64, i64* %PC.i274
  %707 = add i64 %706, 5
  store i64 %707, i64* %PC.i274
  %708 = bitcast i8* %705 to double*
  %709 = load double, double* %708, align 1
  %710 = inttoptr i64 %704 to double*
  store double %709, double* %710
  store %struct.Memory* %loadMem_41ac6e, %struct.Memory** %MEMORY
  %loadMem_41ac73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 33
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 15
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %718 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %717, i64 0, i64 0
  %YMM0.i273 = bitcast %union.VectorReg* %718 to %"class.std::bitset"*
  %719 = bitcast %"class.std::bitset"* %YMM0.i273 to i8*
  %720 = load i64, i64* %RBP.i272
  %721 = sub i64 %720, 80
  %722 = load i64, i64* %PC.i271
  %723 = add i64 %722, 5
  store i64 %723, i64* %PC.i271
  %724 = inttoptr i64 %721 to double*
  %725 = load double, double* %724
  %726 = bitcast i8* %719 to double*
  store double %725, double* %726, align 1
  %727 = getelementptr inbounds i8, i8* %719, i64 8
  %728 = bitcast i8* %727 to double*
  store double 0.000000e+00, double* %728, align 1
  store %struct.Memory* %loadMem_41ac73, %struct.Memory** %MEMORY
  %loadMem_41ac78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RBP.i270
  %739 = sub i64 %738, 8
  %740 = load i64, i64* %PC.i268
  %741 = add i64 %740, 4
  store i64 %741, i64* %PC.i268
  %742 = inttoptr i64 %739 to i64*
  %743 = load i64, i64* %742
  store i64 %743, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_41ac78, %struct.Memory** %MEMORY
  %loadMem_41ac7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 33
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %746 to i64*
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %748 = getelementptr inbounds %struct.GPR, %struct.GPR* %747, i32 0, i32 5
  %749 = getelementptr inbounds %struct.Reg, %struct.Reg* %748, i32 0, i32 0
  %RCX.i266 = bitcast %union.anon* %749 to i64*
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 15
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %752 to i64*
  %753 = load i64, i64* %RBP.i267
  %754 = sub i64 %753, 92
  %755 = load i64, i64* %PC.i265
  %756 = add i64 %755, 4
  store i64 %756, i64* %PC.i265
  %757 = inttoptr i64 %754 to i32*
  %758 = load i32, i32* %757
  %759 = sext i32 %758 to i64
  store i64 %759, i64* %RCX.i266, align 8
  store %struct.Memory* %loadMem_41ac7c, %struct.Memory** %MEMORY
  %loadMem_41ac80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 33
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %762 to i64*
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %764 = getelementptr inbounds %struct.GPR, %struct.GPR* %763, i32 0, i32 1
  %765 = getelementptr inbounds %struct.Reg, %struct.Reg* %764, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %765 to i64*
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 5
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %RCX.i263 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %769, i64 0, i64 2
  %YMM2.i264 = bitcast %union.VectorReg* %770 to %"class.std::bitset"*
  %771 = bitcast %"class.std::bitset"* %YMM2.i264 to i8*
  %772 = load i64, i64* %RAX.i262
  %773 = load i64, i64* %RCX.i263
  %774 = mul i64 %773, 4
  %775 = add i64 %774, %772
  %776 = load i64, i64* %PC.i261
  %777 = add i64 %776, 5
  store i64 %777, i64* %PC.i261
  %778 = inttoptr i64 %775 to float*
  %779 = load float, float* %778
  %780 = fpext float %779 to double
  %781 = bitcast i8* %771 to double*
  store double %780, double* %781, align 1
  store %struct.Memory* %loadMem_41ac80, %struct.Memory** %MEMORY
  %loadMem_41ac85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %786 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %785, i64 0, i64 0
  %YMM0.i259 = bitcast %union.VectorReg* %786 to %"class.std::bitset"*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %788 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %787, i64 0, i64 2
  %XMM2.i260 = bitcast %union.VectorReg* %788 to %union.vec128_t*
  %789 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %790 = bitcast %"class.std::bitset"* %YMM0.i259 to i8*
  %791 = bitcast %union.vec128_t* %XMM2.i260 to i8*
  %792 = load i64, i64* %PC.i258
  %793 = add i64 %792, 4
  store i64 %793, i64* %PC.i258
  %794 = bitcast i8* %790 to double*
  %795 = load double, double* %794, align 1
  %796 = getelementptr inbounds i8, i8* %790, i64 8
  %797 = bitcast i8* %796 to i64*
  %798 = load i64, i64* %797, align 1
  %799 = bitcast i8* %791 to double*
  %800 = load double, double* %799, align 1
  %801 = fmul double %795, %800
  %802 = bitcast i8* %789 to double*
  store double %801, double* %802, align 1
  %803 = getelementptr inbounds i8, i8* %789, i64 8
  %804 = bitcast i8* %803 to i64*
  store i64 %798, i64* %804, align 1
  store %struct.Memory* %loadMem_41ac85, %struct.Memory** %MEMORY
  %loadMem_41ac89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 15
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RBP.i256 = bitcast %union.anon* %810 to i64*
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %812 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %811, i64 0, i64 2
  %YMM2.i257 = bitcast %union.VectorReg* %812 to %"class.std::bitset"*
  %813 = bitcast %"class.std::bitset"* %YMM2.i257 to i8*
  %814 = load i64, i64* %RBP.i256
  %815 = sub i64 %814, 24
  %816 = load i64, i64* %PC.i255
  %817 = add i64 %816, 5
  store i64 %817, i64* %PC.i255
  %818 = inttoptr i64 %815 to float*
  %819 = load float, float* %818
  %820 = fpext float %819 to double
  %821 = bitcast i8* %813 to double*
  store double %820, double* %821, align 1
  store %struct.Memory* %loadMem_41ac89, %struct.Memory** %MEMORY
  %loadMem_41ac8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 33
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %824 to i64*
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %826 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %825, i64 0, i64 1
  %YMM1.i253 = bitcast %union.VectorReg* %826 to %"class.std::bitset"*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %827, i64 0, i64 2
  %XMM2.i254 = bitcast %union.VectorReg* %828 to %union.vec128_t*
  %829 = bitcast %"class.std::bitset"* %YMM1.i253 to i8*
  %830 = bitcast %"class.std::bitset"* %YMM1.i253 to i8*
  %831 = bitcast %union.vec128_t* %XMM2.i254 to i8*
  %832 = load i64, i64* %PC.i252
  %833 = add i64 %832, 4
  store i64 %833, i64* %PC.i252
  %834 = bitcast i8* %830 to double*
  %835 = load double, double* %834, align 1
  %836 = getelementptr inbounds i8, i8* %830, i64 8
  %837 = bitcast i8* %836 to i64*
  %838 = load i64, i64* %837, align 1
  %839 = bitcast i8* %831 to double*
  %840 = load double, double* %839, align 1
  %841 = fmul double %835, %840
  %842 = bitcast i8* %829 to double*
  store double %841, double* %842, align 1
  %843 = getelementptr inbounds i8, i8* %829, i64 8
  %844 = bitcast i8* %843 to i64*
  store i64 %838, i64* %844, align 1
  store %struct.Memory* %loadMem_41ac8e, %struct.Memory** %MEMORY
  %loadMem_41ac92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 1
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 15
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %853 to i64*
  %854 = load i64, i64* %RBP.i251
  %855 = sub i64 %854, 8
  %856 = load i64, i64* %PC.i249
  %857 = add i64 %856, 4
  store i64 %857, i64* %PC.i249
  %858 = inttoptr i64 %855 to i64*
  %859 = load i64, i64* %858
  store i64 %859, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_41ac92, %struct.Memory** %MEMORY
  %loadMem_41ac96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 5
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 15
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %868 to i64*
  %869 = load i64, i64* %RBP.i248
  %870 = sub i64 %869, 92
  %871 = load i64, i64* %PC.i246
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC.i246
  %873 = inttoptr i64 %870 to i32*
  %874 = load i32, i32* %873
  %875 = sext i32 %874 to i64
  store i64 %875, i64* %RCX.i247, align 8
  store %struct.Memory* %loadMem_41ac96, %struct.Memory** %MEMORY
  %loadMem_41ac9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 33
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %878 to i64*
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 1
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 5
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %886 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %885, i64 0, i64 2
  %YMM2.i245 = bitcast %union.VectorReg* %886 to %"class.std::bitset"*
  %887 = bitcast %"class.std::bitset"* %YMM2.i245 to i8*
  %888 = load i64, i64* %RAX.i243
  %889 = load i64, i64* %RCX.i244
  %890 = mul i64 %889, 4
  %891 = add i64 %890, %888
  %892 = load i64, i64* %PC.i242
  %893 = add i64 %892, 5
  store i64 %893, i64* %PC.i242
  %894 = inttoptr i64 %891 to float*
  %895 = load float, float* %894
  %896 = fpext float %895 to double
  %897 = bitcast i8* %887 to double*
  store double %896, double* %897, align 1
  store %struct.Memory* %loadMem_41ac9a, %struct.Memory** %MEMORY
  %loadMem_41ac9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %901, i64 0, i64 1
  %YMM1.i240 = bitcast %union.VectorReg* %902 to %"class.std::bitset"*
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %903, i64 0, i64 2
  %XMM2.i241 = bitcast %union.VectorReg* %904 to %union.vec128_t*
  %905 = bitcast %"class.std::bitset"* %YMM1.i240 to i8*
  %906 = bitcast %"class.std::bitset"* %YMM1.i240 to i8*
  %907 = bitcast %union.vec128_t* %XMM2.i241 to i8*
  %908 = load i64, i64* %PC.i239
  %909 = add i64 %908, 4
  store i64 %909, i64* %PC.i239
  %910 = bitcast i8* %906 to double*
  %911 = load double, double* %910, align 1
  %912 = getelementptr inbounds i8, i8* %906, i64 8
  %913 = bitcast i8* %912 to i64*
  %914 = load i64, i64* %913, align 1
  %915 = bitcast i8* %907 to double*
  %916 = load double, double* %915, align 1
  %917 = fmul double %911, %916
  %918 = bitcast i8* %905 to double*
  store double %917, double* %918, align 1
  %919 = getelementptr inbounds i8, i8* %905, i64 8
  %920 = bitcast i8* %919 to i64*
  store i64 %914, i64* %920, align 1
  store %struct.Memory* %loadMem_41ac9f, %struct.Memory** %MEMORY
  %loadMem_41aca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 15
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %928 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %927, i64 0, i64 0
  %XMM0.i238 = bitcast %union.VectorReg* %928 to %union.vec128_t*
  %929 = load i64, i64* %RBP.i237
  %930 = sub i64 %929, 112
  %931 = bitcast %union.vec128_t* %XMM0.i238 to i8*
  %932 = load i64, i64* %PC.i236
  %933 = add i64 %932, 5
  store i64 %933, i64* %PC.i236
  %934 = bitcast i8* %931 to double*
  %935 = load double, double* %934, align 1
  %936 = inttoptr i64 %930 to double*
  store double %935, double* %936
  store %struct.Memory* %loadMem_41aca3, %struct.Memory** %MEMORY
  %loadMem_41aca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %941 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %940, i64 0, i64 0
  %YMM0.i234 = bitcast %union.VectorReg* %941 to %"class.std::bitset"*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %943 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %942, i64 0, i64 1
  %XMM1.i235 = bitcast %union.VectorReg* %943 to %union.vec128_t*
  %944 = bitcast %"class.std::bitset"* %YMM0.i234 to i8*
  %945 = bitcast %union.vec128_t* %XMM1.i235 to i8*
  %946 = load i64, i64* %PC.i233
  %947 = add i64 %946, 3
  store i64 %947, i64* %PC.i233
  %948 = bitcast i8* %945 to <2 x i32>*
  %949 = load <2 x i32>, <2 x i32>* %948, align 1
  %950 = getelementptr inbounds i8, i8* %945, i64 8
  %951 = bitcast i8* %950 to <2 x i32>*
  %952 = load <2 x i32>, <2 x i32>* %951, align 1
  %953 = extractelement <2 x i32> %949, i32 0
  %954 = bitcast i8* %944 to i32*
  store i32 %953, i32* %954, align 1
  %955 = extractelement <2 x i32> %949, i32 1
  %956 = getelementptr inbounds i8, i8* %944, i64 4
  %957 = bitcast i8* %956 to i32*
  store i32 %955, i32* %957, align 1
  %958 = extractelement <2 x i32> %952, i32 0
  %959 = getelementptr inbounds i8, i8* %944, i64 8
  %960 = bitcast i8* %959 to i32*
  store i32 %958, i32* %960, align 1
  %961 = extractelement <2 x i32> %952, i32 1
  %962 = getelementptr inbounds i8, i8* %944, i64 12
  %963 = bitcast i8* %962 to i32*
  store i32 %961, i32* %963, align 1
  store %struct.Memory* %loadMem_41aca8, %struct.Memory** %MEMORY
  %loadMem1_41acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %PC.i232
  %968 = add i64 %967, -104587
  %969 = load i64, i64* %PC.i232
  %970 = add i64 %969, 5
  %971 = load i64, i64* %PC.i232
  %972 = add i64 %971, 5
  store i64 %972, i64* %PC.i232
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %974 = load i64, i64* %973, align 8
  %975 = add i64 %974, -8
  %976 = inttoptr i64 %975 to i64*
  store i64 %970, i64* %976
  store i64 %975, i64* %973, align 8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %968, i64* %977, align 8
  store %struct.Memory* %loadMem1_41acab, %struct.Memory** %MEMORY
  %loadMem2_41acab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41acab = load i64, i64* %3
  %978 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41acab)
  store %struct.Memory* %978, %struct.Memory** %MEMORY
  %loadMem_41acb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 33
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %981 to i64*
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %982, i64 0, i64 1
  %YMM1.i228 = bitcast %union.VectorReg* %983 to %"class.std::bitset"*
  %984 = bitcast %"class.std::bitset"* %YMM1.i228 to i8*
  %985 = load i64, i64* %PC.i227
  %986 = add i64 %985, ptrtoint (%G_0x39b78__rip__type* @G_0x39b78__rip_ to i64)
  %987 = load i64, i64* %PC.i227
  %988 = add i64 %987, 8
  store i64 %988, i64* %PC.i227
  %989 = inttoptr i64 %986 to double*
  %990 = load double, double* %989
  %991 = bitcast i8* %984 to double*
  store double %990, double* %991, align 1
  %992 = getelementptr inbounds i8, i8* %984, i64 8
  %993 = bitcast i8* %992 to double*
  store double 0.000000e+00, double* %993, align 1
  store %struct.Memory* %loadMem_41acb0, %struct.Memory** %MEMORY
  %loadMem_41acb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 15
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1001 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1000, i64 0, i64 2
  %YMM2.i226 = bitcast %union.VectorReg* %1001 to %"class.std::bitset"*
  %1002 = bitcast %"class.std::bitset"* %YMM2.i226 to i8*
  %1003 = load i64, i64* %RBP.i225
  %1004 = sub i64 %1003, 112
  %1005 = load i64, i64* %PC.i224
  %1006 = add i64 %1005, 5
  store i64 %1006, i64* %PC.i224
  %1007 = inttoptr i64 %1004 to double*
  %1008 = load double, double* %1007
  %1009 = bitcast i8* %1002 to double*
  store double %1008, double* %1009, align 1
  %1010 = getelementptr inbounds i8, i8* %1002, i64 8
  %1011 = bitcast i8* %1010 to double*
  store double 0.000000e+00, double* %1011, align 1
  store %struct.Memory* %loadMem_41acb8, %struct.Memory** %MEMORY
  %loadMem_41acbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1016 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1015, i64 0, i64 2
  %YMM2.i222 = bitcast %union.VectorReg* %1016 to %"class.std::bitset"*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1018 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1017, i64 0, i64 0
  %XMM0.i223 = bitcast %union.VectorReg* %1018 to %union.vec128_t*
  %1019 = bitcast %"class.std::bitset"* %YMM2.i222 to i8*
  %1020 = bitcast %"class.std::bitset"* %YMM2.i222 to i8*
  %1021 = bitcast %union.vec128_t* %XMM0.i223 to i8*
  %1022 = load i64, i64* %PC.i221
  %1023 = add i64 %1022, 4
  store i64 %1023, i64* %PC.i221
  %1024 = bitcast i8* %1020 to double*
  %1025 = load double, double* %1024, align 1
  %1026 = getelementptr inbounds i8, i8* %1020, i64 8
  %1027 = bitcast i8* %1026 to i64*
  %1028 = load i64, i64* %1027, align 1
  %1029 = bitcast i8* %1021 to double*
  %1030 = load double, double* %1029, align 1
  %1031 = fmul double %1025, %1030
  %1032 = bitcast i8* %1019 to double*
  store double %1031, double* %1032, align 1
  %1033 = getelementptr inbounds i8, i8* %1019, i64 8
  %1034 = bitcast i8* %1033 to i64*
  store i64 %1028, i64* %1034, align 1
  store %struct.Memory* %loadMem_41acbd, %struct.Memory** %MEMORY
  %loadMem_41acc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 33
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %1037 to i64*
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 15
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1042 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1041, i64 0, i64 2
  %YMM2.i220 = bitcast %union.VectorReg* %1042 to %"class.std::bitset"*
  %1043 = bitcast %"class.std::bitset"* %YMM2.i220 to i8*
  %1044 = bitcast %"class.std::bitset"* %YMM2.i220 to i8*
  %1045 = load i64, i64* %RBP.i219
  %1046 = sub i64 %1045, 56
  %1047 = load i64, i64* %PC.i218
  %1048 = add i64 %1047, 5
  store i64 %1048, i64* %PC.i218
  %1049 = bitcast i8* %1044 to double*
  %1050 = load double, double* %1049, align 1
  %1051 = getelementptr inbounds i8, i8* %1044, i64 8
  %1052 = bitcast i8* %1051 to i64*
  %1053 = load i64, i64* %1052, align 1
  %1054 = inttoptr i64 %1046 to double*
  %1055 = load double, double* %1054
  %1056 = fadd double %1050, %1055
  %1057 = bitcast i8* %1043 to double*
  store double %1056, double* %1057, align 1
  %1058 = getelementptr inbounds i8, i8* %1043, i64 8
  %1059 = bitcast i8* %1058 to i64*
  store i64 %1053, i64* %1059, align 1
  store %struct.Memory* %loadMem_41acc1, %struct.Memory** %MEMORY
  %loadMem_41acc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1067 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1066, i64 0, i64 2
  %XMM2.i217 = bitcast %union.VectorReg* %1067 to %union.vec128_t*
  %1068 = load i64, i64* %RBP.i216
  %1069 = sub i64 %1068, 56
  %1070 = bitcast %union.vec128_t* %XMM2.i217 to i8*
  %1071 = load i64, i64* %PC.i215
  %1072 = add i64 %1071, 5
  store i64 %1072, i64* %PC.i215
  %1073 = bitcast i8* %1070 to double*
  %1074 = load double, double* %1073, align 1
  %1075 = inttoptr i64 %1069 to double*
  store double %1074, double* %1075
  store %struct.Memory* %loadMem_41acc6, %struct.Memory** %MEMORY
  %loadMem_41accb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 15
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1082, i64 0, i64 0
  %YMM0.i214 = bitcast %union.VectorReg* %1083 to %"class.std::bitset"*
  %1084 = bitcast %"class.std::bitset"* %YMM0.i214 to i8*
  %1085 = load i64, i64* %RBP.i213
  %1086 = sub i64 %1085, 80
  %1087 = load i64, i64* %PC.i212
  %1088 = add i64 %1087, 5
  store i64 %1088, i64* %PC.i212
  %1089 = inttoptr i64 %1086 to double*
  %1090 = load double, double* %1089
  %1091 = bitcast i8* %1084 to double*
  store double %1090, double* %1091, align 1
  %1092 = getelementptr inbounds i8, i8* %1084, i64 8
  %1093 = bitcast i8* %1092 to double*
  store double 0.000000e+00, double* %1093, align 1
  store %struct.Memory* %loadMem_41accb, %struct.Memory** %MEMORY
  %loadMem_41acd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 1
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 15
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %RBP.i211
  %1104 = sub i64 %1103, 8
  %1105 = load i64, i64* %PC.i209
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC.i209
  %1107 = inttoptr i64 %1104 to i64*
  %1108 = load i64, i64* %1107
  store i64 %1108, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_41acd0, %struct.Memory** %MEMORY
  %loadMem_41acd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 5
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 15
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RBP.i208
  %1119 = sub i64 %1118, 92
  %1120 = load i64, i64* %PC.i206
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC.i206
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_41acd4, %struct.Memory** %MEMORY
  %loadMem_41acd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 5
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1135 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1134, i64 0, i64 2
  %YMM2.i205 = bitcast %union.VectorReg* %1135 to %"class.std::bitset"*
  %1136 = bitcast %"class.std::bitset"* %YMM2.i205 to i8*
  %1137 = load i64, i64* %RAX.i203
  %1138 = load i64, i64* %RCX.i204
  %1139 = mul i64 %1138, 4
  %1140 = add i64 %1139, %1137
  %1141 = load i64, i64* %PC.i202
  %1142 = add i64 %1141, 5
  store i64 %1142, i64* %PC.i202
  %1143 = inttoptr i64 %1140 to float*
  %1144 = load float, float* %1143
  %1145 = fpext float %1144 to double
  %1146 = bitcast i8* %1136 to double*
  store double %1145, double* %1146, align 1
  store %struct.Memory* %loadMem_41acd8, %struct.Memory** %MEMORY
  %loadMem_41acdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1151 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1150, i64 0, i64 0
  %YMM0.i200 = bitcast %union.VectorReg* %1151 to %"class.std::bitset"*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1153 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1152, i64 0, i64 2
  %XMM2.i201 = bitcast %union.VectorReg* %1153 to %union.vec128_t*
  %1154 = bitcast %"class.std::bitset"* %YMM0.i200 to i8*
  %1155 = bitcast %"class.std::bitset"* %YMM0.i200 to i8*
  %1156 = bitcast %union.vec128_t* %XMM2.i201 to i8*
  %1157 = load i64, i64* %PC.i199
  %1158 = add i64 %1157, 4
  store i64 %1158, i64* %PC.i199
  %1159 = bitcast i8* %1155 to double*
  %1160 = load double, double* %1159, align 1
  %1161 = getelementptr inbounds i8, i8* %1155, i64 8
  %1162 = bitcast i8* %1161 to i64*
  %1163 = load i64, i64* %1162, align 1
  %1164 = bitcast i8* %1156 to double*
  %1165 = load double, double* %1164, align 1
  %1166 = fmul double %1160, %1165
  %1167 = bitcast i8* %1154 to double*
  store double %1166, double* %1167, align 1
  %1168 = getelementptr inbounds i8, i8* %1154, i64 8
  %1169 = bitcast i8* %1168 to i64*
  store i64 %1163, i64* %1169, align 1
  store %struct.Memory* %loadMem_41acdd, %struct.Memory** %MEMORY
  %loadMem_41ace1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 1
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 15
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RBP.i198
  %1180 = sub i64 %1179, 8
  %1181 = load i64, i64* %PC.i196
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i196
  %1183 = inttoptr i64 %1180 to i64*
  %1184 = load i64, i64* %1183
  store i64 %1184, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_41ace1, %struct.Memory** %MEMORY
  %loadMem_41ace5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i195
  %1195 = sub i64 %1194, 92
  %1196 = load i64, i64* %PC.i193
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %PC.i193
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = sext i32 %1199 to i64
  store i64 %1200, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_41ace5, %struct.Memory** %MEMORY
  %loadMem_41ace9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 5
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1211 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1210, i64 0, i64 2
  %YMM2.i192 = bitcast %union.VectorReg* %1211 to %"class.std::bitset"*
  %1212 = bitcast %"class.std::bitset"* %YMM2.i192 to i8*
  %1213 = load i64, i64* %RAX.i190
  %1214 = load i64, i64* %RCX.i191
  %1215 = mul i64 %1214, 4
  %1216 = add i64 %1215, %1213
  %1217 = load i64, i64* %PC.i189
  %1218 = add i64 %1217, 5
  store i64 %1218, i64* %PC.i189
  %1219 = inttoptr i64 %1216 to float*
  %1220 = load float, float* %1219
  %1221 = fpext float %1220 to double
  %1222 = bitcast i8* %1212 to double*
  store double %1221, double* %1222, align 1
  store %struct.Memory* %loadMem_41ace9, %struct.Memory** %MEMORY
  %loadMem_41acee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1227 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1226, i64 0, i64 0
  %YMM0.i187 = bitcast %union.VectorReg* %1227 to %"class.std::bitset"*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1229 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1228, i64 0, i64 2
  %XMM2.i188 = bitcast %union.VectorReg* %1229 to %union.vec128_t*
  %1230 = bitcast %"class.std::bitset"* %YMM0.i187 to i8*
  %1231 = bitcast %"class.std::bitset"* %YMM0.i187 to i8*
  %1232 = bitcast %union.vec128_t* %XMM2.i188 to i8*
  %1233 = load i64, i64* %PC.i186
  %1234 = add i64 %1233, 4
  store i64 %1234, i64* %PC.i186
  %1235 = bitcast i8* %1231 to double*
  %1236 = load double, double* %1235, align 1
  %1237 = getelementptr inbounds i8, i8* %1231, i64 8
  %1238 = bitcast i8* %1237 to i64*
  %1239 = load i64, i64* %1238, align 1
  %1240 = bitcast i8* %1232 to double*
  %1241 = load double, double* %1240, align 1
  %1242 = fmul double %1236, %1241
  %1243 = bitcast i8* %1230 to double*
  store double %1242, double* %1243, align 1
  %1244 = getelementptr inbounds i8, i8* %1230, i64 8
  %1245 = bitcast i8* %1244 to i64*
  store i64 %1239, i64* %1245, align 1
  store %struct.Memory* %loadMem_41acee, %struct.Memory** %MEMORY
  %loadMem_41acf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1252, i64 0, i64 2
  %YMM2.i185 = bitcast %union.VectorReg* %1253 to %"class.std::bitset"*
  %1254 = bitcast %"class.std::bitset"* %YMM2.i185 to i8*
  %1255 = load i64, i64* %RBP.i184
  %1256 = sub i64 %1255, 24
  %1257 = load i64, i64* %PC.i183
  %1258 = add i64 %1257, 5
  store i64 %1258, i64* %PC.i183
  %1259 = inttoptr i64 %1256 to float*
  %1260 = load float, float* %1259
  %1261 = fpext float %1260 to double
  %1262 = bitcast i8* %1254 to double*
  store double %1261, double* %1262, align 1
  store %struct.Memory* %loadMem_41acf2, %struct.Memory** %MEMORY
  %loadMem_41acf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1267 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1266, i64 0, i64 1
  %YMM1.i181 = bitcast %union.VectorReg* %1267 to %"class.std::bitset"*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1269 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1268, i64 0, i64 2
  %XMM2.i182 = bitcast %union.VectorReg* %1269 to %union.vec128_t*
  %1270 = bitcast %"class.std::bitset"* %YMM1.i181 to i8*
  %1271 = bitcast %"class.std::bitset"* %YMM1.i181 to i8*
  %1272 = bitcast %union.vec128_t* %XMM2.i182 to i8*
  %1273 = load i64, i64* %PC.i180
  %1274 = add i64 %1273, 4
  store i64 %1274, i64* %PC.i180
  %1275 = bitcast i8* %1271 to double*
  %1276 = load double, double* %1275, align 1
  %1277 = getelementptr inbounds i8, i8* %1271, i64 8
  %1278 = bitcast i8* %1277 to i64*
  %1279 = load i64, i64* %1278, align 1
  %1280 = bitcast i8* %1272 to double*
  %1281 = load double, double* %1280, align 1
  %1282 = fmul double %1276, %1281
  %1283 = bitcast i8* %1270 to double*
  store double %1282, double* %1283, align 1
  %1284 = getelementptr inbounds i8, i8* %1270, i64 8
  %1285 = bitcast i8* %1284 to i64*
  store i64 %1279, i64* %1285, align 1
  store %struct.Memory* %loadMem_41acf7, %struct.Memory** %MEMORY
  %loadMem_41acfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 1
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 15
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %1294 to i64*
  %1295 = load i64, i64* %RBP.i179
  %1296 = sub i64 %1295, 8
  %1297 = load i64, i64* %PC.i177
  %1298 = add i64 %1297, 4
  store i64 %1298, i64* %PC.i177
  %1299 = inttoptr i64 %1296 to i64*
  %1300 = load i64, i64* %1299
  store i64 %1300, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_41acfb, %struct.Memory** %MEMORY
  %loadMem_41acff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 5
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 15
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1309 to i64*
  %1310 = load i64, i64* %RBP.i176
  %1311 = sub i64 %1310, 92
  %1312 = load i64, i64* %PC.i174
  %1313 = add i64 %1312, 4
  store i64 %1313, i64* %PC.i174
  %1314 = inttoptr i64 %1311 to i32*
  %1315 = load i32, i32* %1314
  %1316 = sext i32 %1315 to i64
  store i64 %1316, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_41acff, %struct.Memory** %MEMORY
  %loadMem_41ad03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 1
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 5
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %1325 to i64*
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1327 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1326, i64 0, i64 2
  %YMM2.i173 = bitcast %union.VectorReg* %1327 to %"class.std::bitset"*
  %1328 = bitcast %"class.std::bitset"* %YMM2.i173 to i8*
  %1329 = load i64, i64* %RAX.i171
  %1330 = load i64, i64* %RCX.i172
  %1331 = mul i64 %1330, 4
  %1332 = add i64 %1331, %1329
  %1333 = load i64, i64* %PC.i170
  %1334 = add i64 %1333, 5
  store i64 %1334, i64* %PC.i170
  %1335 = inttoptr i64 %1332 to float*
  %1336 = load float, float* %1335
  %1337 = fpext float %1336 to double
  %1338 = bitcast i8* %1328 to double*
  store double %1337, double* %1338, align 1
  store %struct.Memory* %loadMem_41ad03, %struct.Memory** %MEMORY
  %loadMem_41ad08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1343 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1342, i64 0, i64 1
  %YMM1.i168 = bitcast %union.VectorReg* %1343 to %"class.std::bitset"*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1344, i64 0, i64 2
  %XMM2.i169 = bitcast %union.VectorReg* %1345 to %union.vec128_t*
  %1346 = bitcast %"class.std::bitset"* %YMM1.i168 to i8*
  %1347 = bitcast %"class.std::bitset"* %YMM1.i168 to i8*
  %1348 = bitcast %union.vec128_t* %XMM2.i169 to i8*
  %1349 = load i64, i64* %PC.i167
  %1350 = add i64 %1349, 4
  store i64 %1350, i64* %PC.i167
  %1351 = bitcast i8* %1347 to double*
  %1352 = load double, double* %1351, align 1
  %1353 = getelementptr inbounds i8, i8* %1347, i64 8
  %1354 = bitcast i8* %1353 to i64*
  %1355 = load i64, i64* %1354, align 1
  %1356 = bitcast i8* %1348 to double*
  %1357 = load double, double* %1356, align 1
  %1358 = fmul double %1352, %1357
  %1359 = bitcast i8* %1346 to double*
  store double %1358, double* %1359, align 1
  %1360 = getelementptr inbounds i8, i8* %1346, i64 8
  %1361 = bitcast i8* %1360 to i64*
  store i64 %1355, i64* %1361, align 1
  store %struct.Memory* %loadMem_41ad08, %struct.Memory** %MEMORY
  %loadMem_41ad0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 33
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1368, i64 0, i64 0
  %XMM0.i166 = bitcast %union.VectorReg* %1369 to %union.vec128_t*
  %1370 = load i64, i64* %RBP.i165
  %1371 = sub i64 %1370, 120
  %1372 = bitcast %union.vec128_t* %XMM0.i166 to i8*
  %1373 = load i64, i64* %PC.i164
  %1374 = add i64 %1373, 5
  store i64 %1374, i64* %PC.i164
  %1375 = bitcast i8* %1372 to double*
  %1376 = load double, double* %1375, align 1
  %1377 = inttoptr i64 %1371 to double*
  store double %1376, double* %1377
  store %struct.Memory* %loadMem_41ad0c, %struct.Memory** %MEMORY
  %loadMem_41ad11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1382 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1381, i64 0, i64 0
  %YMM0.i162 = bitcast %union.VectorReg* %1382 to %"class.std::bitset"*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1384 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1383, i64 0, i64 1
  %XMM1.i163 = bitcast %union.VectorReg* %1384 to %union.vec128_t*
  %1385 = bitcast %"class.std::bitset"* %YMM0.i162 to i8*
  %1386 = bitcast %union.vec128_t* %XMM1.i163 to i8*
  %1387 = load i64, i64* %PC.i161
  %1388 = add i64 %1387, 3
  store i64 %1388, i64* %PC.i161
  %1389 = bitcast i8* %1386 to <2 x i32>*
  %1390 = load <2 x i32>, <2 x i32>* %1389, align 1
  %1391 = getelementptr inbounds i8, i8* %1386, i64 8
  %1392 = bitcast i8* %1391 to <2 x i32>*
  %1393 = load <2 x i32>, <2 x i32>* %1392, align 1
  %1394 = extractelement <2 x i32> %1390, i32 0
  %1395 = bitcast i8* %1385 to i32*
  store i32 %1394, i32* %1395, align 1
  %1396 = extractelement <2 x i32> %1390, i32 1
  %1397 = getelementptr inbounds i8, i8* %1385, i64 4
  %1398 = bitcast i8* %1397 to i32*
  store i32 %1396, i32* %1398, align 1
  %1399 = extractelement <2 x i32> %1393, i32 0
  %1400 = getelementptr inbounds i8, i8* %1385, i64 8
  %1401 = bitcast i8* %1400 to i32*
  store i32 %1399, i32* %1401, align 1
  %1402 = extractelement <2 x i32> %1393, i32 1
  %1403 = getelementptr inbounds i8, i8* %1385, i64 12
  %1404 = bitcast i8* %1403 to i32*
  store i32 %1402, i32* %1404, align 1
  store %struct.Memory* %loadMem_41ad11, %struct.Memory** %MEMORY
  %loadMem1_41ad14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 33
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %PC.i160
  %1409 = add i64 %1408, -104692
  %1410 = load i64, i64* %PC.i160
  %1411 = add i64 %1410, 5
  %1412 = load i64, i64* %PC.i160
  %1413 = add i64 %1412, 5
  store i64 %1413, i64* %PC.i160
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1415 = load i64, i64* %1414, align 8
  %1416 = add i64 %1415, -8
  %1417 = inttoptr i64 %1416 to i64*
  store i64 %1411, i64* %1417
  store i64 %1416, i64* %1414, align 8
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1409, i64* %1418, align 8
  store %struct.Memory* %loadMem1_41ad14, %struct.Memory** %MEMORY
  %loadMem2_41ad14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ad14 = load i64, i64* %3
  %1419 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41ad14)
  store %struct.Memory* %1419, %struct.Memory** %MEMORY
  %loadMem_41ad19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1422 to i64*
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1424 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1423, i64 0, i64 1
  %YMM1.i157 = bitcast %union.VectorReg* %1424 to %"class.std::bitset"*
  %1425 = bitcast %"class.std::bitset"* %YMM1.i157 to i8*
  %1426 = load i64, i64* %PC.i156
  %1427 = add i64 %1426, ptrtoint (%G_0x39b0f__rip__type* @G_0x39b0f__rip_ to i64)
  %1428 = load i64, i64* %PC.i156
  %1429 = add i64 %1428, 8
  store i64 %1429, i64* %PC.i156
  %1430 = inttoptr i64 %1427 to double*
  %1431 = load double, double* %1430
  %1432 = bitcast i8* %1425 to double*
  store double %1431, double* %1432, align 1
  %1433 = getelementptr inbounds i8, i8* %1425, i64 8
  %1434 = bitcast i8* %1433 to double*
  store double 0.000000e+00, double* %1434, align 1
  store %struct.Memory* %loadMem_41ad19, %struct.Memory** %MEMORY
  %loadMem_41ad21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 15
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %1440 to i64*
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1441, i64 0, i64 2
  %YMM2.i155 = bitcast %union.VectorReg* %1442 to %"class.std::bitset"*
  %1443 = bitcast %"class.std::bitset"* %YMM2.i155 to i8*
  %1444 = load i64, i64* %RBP.i154
  %1445 = sub i64 %1444, 120
  %1446 = load i64, i64* %PC.i153
  %1447 = add i64 %1446, 5
  store i64 %1447, i64* %PC.i153
  %1448 = inttoptr i64 %1445 to double*
  %1449 = load double, double* %1448
  %1450 = bitcast i8* %1443 to double*
  store double %1449, double* %1450, align 1
  %1451 = getelementptr inbounds i8, i8* %1443, i64 8
  %1452 = bitcast i8* %1451 to double*
  store double 0.000000e+00, double* %1452, align 1
  store %struct.Memory* %loadMem_41ad21, %struct.Memory** %MEMORY
  %loadMem_41ad26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1457 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1456, i64 0, i64 2
  %YMM2.i151 = bitcast %union.VectorReg* %1457 to %"class.std::bitset"*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1459 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1458, i64 0, i64 0
  %XMM0.i152 = bitcast %union.VectorReg* %1459 to %union.vec128_t*
  %1460 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1461 = bitcast %"class.std::bitset"* %YMM2.i151 to i8*
  %1462 = bitcast %union.vec128_t* %XMM0.i152 to i8*
  %1463 = load i64, i64* %PC.i150
  %1464 = add i64 %1463, 4
  store i64 %1464, i64* %PC.i150
  %1465 = bitcast i8* %1461 to double*
  %1466 = load double, double* %1465, align 1
  %1467 = getelementptr inbounds i8, i8* %1461, i64 8
  %1468 = bitcast i8* %1467 to i64*
  %1469 = load i64, i64* %1468, align 1
  %1470 = bitcast i8* %1462 to double*
  %1471 = load double, double* %1470, align 1
  %1472 = fmul double %1466, %1471
  %1473 = bitcast i8* %1460 to double*
  store double %1472, double* %1473, align 1
  %1474 = getelementptr inbounds i8, i8* %1460, i64 8
  %1475 = bitcast i8* %1474 to i64*
  store i64 %1469, i64* %1475, align 1
  store %struct.Memory* %loadMem_41ad26, %struct.Memory** %MEMORY
  %loadMem_41ad2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 15
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1483 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1482, i64 0, i64 2
  %YMM2.i149 = bitcast %union.VectorReg* %1483 to %"class.std::bitset"*
  %1484 = bitcast %"class.std::bitset"* %YMM2.i149 to i8*
  %1485 = bitcast %"class.std::bitset"* %YMM2.i149 to i8*
  %1486 = load i64, i64* %RBP.i148
  %1487 = sub i64 %1486, 64
  %1488 = load i64, i64* %PC.i147
  %1489 = add i64 %1488, 5
  store i64 %1489, i64* %PC.i147
  %1490 = bitcast i8* %1485 to double*
  %1491 = load double, double* %1490, align 1
  %1492 = getelementptr inbounds i8, i8* %1485, i64 8
  %1493 = bitcast i8* %1492 to i64*
  %1494 = load i64, i64* %1493, align 1
  %1495 = inttoptr i64 %1487 to double*
  %1496 = load double, double* %1495
  %1497 = fadd double %1491, %1496
  %1498 = bitcast i8* %1484 to double*
  store double %1497, double* %1498, align 1
  %1499 = getelementptr inbounds i8, i8* %1484, i64 8
  %1500 = bitcast i8* %1499 to i64*
  store i64 %1494, i64* %1500, align 1
  store %struct.Memory* %loadMem_41ad2a, %struct.Memory** %MEMORY
  %loadMem_41ad2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 33
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1503 to i64*
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1505 = getelementptr inbounds %struct.GPR, %struct.GPR* %1504, i32 0, i32 15
  %1506 = getelementptr inbounds %struct.Reg, %struct.Reg* %1505, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %1506 to i64*
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1508 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1507, i64 0, i64 2
  %XMM2.i146 = bitcast %union.VectorReg* %1508 to %union.vec128_t*
  %1509 = load i64, i64* %RBP.i145
  %1510 = sub i64 %1509, 64
  %1511 = bitcast %union.vec128_t* %XMM2.i146 to i8*
  %1512 = load i64, i64* %PC.i144
  %1513 = add i64 %1512, 5
  store i64 %1513, i64* %PC.i144
  %1514 = bitcast i8* %1511 to double*
  %1515 = load double, double* %1514, align 1
  %1516 = inttoptr i64 %1510 to double*
  store double %1515, double* %1516
  store %struct.Memory* %loadMem_41ad2f, %struct.Memory** %MEMORY
  %loadMem_41ad34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1519 to i64*
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 15
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1524 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1523, i64 0, i64 0
  %YMM0.i143 = bitcast %union.VectorReg* %1524 to %"class.std::bitset"*
  %1525 = bitcast %"class.std::bitset"* %YMM0.i143 to i8*
  %1526 = load i64, i64* %RBP.i142
  %1527 = sub i64 %1526, 80
  %1528 = load i64, i64* %PC.i141
  %1529 = add i64 %1528, 5
  store i64 %1529, i64* %PC.i141
  %1530 = inttoptr i64 %1527 to double*
  %1531 = load double, double* %1530
  %1532 = bitcast i8* %1525 to double*
  store double %1531, double* %1532, align 1
  %1533 = getelementptr inbounds i8, i8* %1525, i64 8
  %1534 = bitcast i8* %1533 to double*
  store double 0.000000e+00, double* %1534, align 1
  store %struct.Memory* %loadMem_41ad34, %struct.Memory** %MEMORY
  %loadMem_41ad39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 33
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 15
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1542 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1541, i64 0, i64 2
  %YMM2.i140 = bitcast %union.VectorReg* %1542 to %"class.std::bitset"*
  %1543 = bitcast %"class.std::bitset"* %YMM2.i140 to i8*
  %1544 = load i64, i64* %RBP.i139
  %1545 = sub i64 %1544, 24
  %1546 = load i64, i64* %PC.i138
  %1547 = add i64 %1546, 5
  store i64 %1547, i64* %PC.i138
  %1548 = inttoptr i64 %1545 to float*
  %1549 = load float, float* %1548
  %1550 = fpext float %1549 to double
  %1551 = bitcast i8* %1543 to double*
  store double %1550, double* %1551, align 1
  store %struct.Memory* %loadMem_41ad39, %struct.Memory** %MEMORY
  %loadMem_41ad3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 33
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1556 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1555, i64 0, i64 1
  %YMM1.i136 = bitcast %union.VectorReg* %1556 to %"class.std::bitset"*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1558 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1557, i64 0, i64 2
  %XMM2.i137 = bitcast %union.VectorReg* %1558 to %union.vec128_t*
  %1559 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %1560 = bitcast %"class.std::bitset"* %YMM1.i136 to i8*
  %1561 = bitcast %union.vec128_t* %XMM2.i137 to i8*
  %1562 = load i64, i64* %PC.i135
  %1563 = add i64 %1562, 4
  store i64 %1563, i64* %PC.i135
  %1564 = bitcast i8* %1560 to double*
  %1565 = load double, double* %1564, align 1
  %1566 = getelementptr inbounds i8, i8* %1560, i64 8
  %1567 = bitcast i8* %1566 to i64*
  %1568 = load i64, i64* %1567, align 1
  %1569 = bitcast i8* %1561 to double*
  %1570 = load double, double* %1569, align 1
  %1571 = fmul double %1565, %1570
  %1572 = bitcast i8* %1559 to double*
  store double %1571, double* %1572, align 1
  %1573 = getelementptr inbounds i8, i8* %1559, i64 8
  %1574 = bitcast i8* %1573 to i64*
  store i64 %1568, i64* %1574, align 1
  store %struct.Memory* %loadMem_41ad3e, %struct.Memory** %MEMORY
  %loadMem_41ad42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 15
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %1583 to i64*
  %1584 = load i64, i64* %RBP.i134
  %1585 = sub i64 %1584, 8
  %1586 = load i64, i64* %PC.i132
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC.i132
  %1588 = inttoptr i64 %1585 to i64*
  %1589 = load i64, i64* %1588
  store i64 %1589, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_41ad42, %struct.Memory** %MEMORY
  %loadMem_41ad46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 5
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %1595 to i64*
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 15
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %1598 to i64*
  %1599 = load i64, i64* %RBP.i131
  %1600 = sub i64 %1599, 92
  %1601 = load i64, i64* %PC.i129
  %1602 = add i64 %1601, 4
  store i64 %1602, i64* %PC.i129
  %1603 = inttoptr i64 %1600 to i32*
  %1604 = load i32, i32* %1603
  %1605 = sext i32 %1604 to i64
  store i64 %1605, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_41ad46, %struct.Memory** %MEMORY
  %loadMem_41ad4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 1
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 5
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1614 to i64*
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1615, i64 0, i64 2
  %YMM2.i128 = bitcast %union.VectorReg* %1616 to %"class.std::bitset"*
  %1617 = bitcast %"class.std::bitset"* %YMM2.i128 to i8*
  %1618 = load i64, i64* %RAX.i127
  %1619 = load i64, i64* %RCX.i
  %1620 = mul i64 %1619, 4
  %1621 = add i64 %1620, %1618
  %1622 = load i64, i64* %PC.i126
  %1623 = add i64 %1622, 5
  store i64 %1623, i64* %PC.i126
  %1624 = inttoptr i64 %1621 to float*
  %1625 = load float, float* %1624
  %1626 = fpext float %1625 to double
  %1627 = bitcast i8* %1617 to double*
  store double %1626, double* %1627, align 1
  store %struct.Memory* %loadMem_41ad4a, %struct.Memory** %MEMORY
  %loadMem_41ad4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1632 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1631, i64 0, i64 1
  %YMM1.i124 = bitcast %union.VectorReg* %1632 to %"class.std::bitset"*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1634 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1633, i64 0, i64 2
  %XMM2.i125 = bitcast %union.VectorReg* %1634 to %union.vec128_t*
  %1635 = bitcast %"class.std::bitset"* %YMM1.i124 to i8*
  %1636 = bitcast %"class.std::bitset"* %YMM1.i124 to i8*
  %1637 = bitcast %union.vec128_t* %XMM2.i125 to i8*
  %1638 = load i64, i64* %PC.i123
  %1639 = add i64 %1638, 4
  store i64 %1639, i64* %PC.i123
  %1640 = bitcast i8* %1636 to double*
  %1641 = load double, double* %1640, align 1
  %1642 = getelementptr inbounds i8, i8* %1636, i64 8
  %1643 = bitcast i8* %1642 to i64*
  %1644 = load i64, i64* %1643, align 1
  %1645 = bitcast i8* %1637 to double*
  %1646 = load double, double* %1645, align 1
  %1647 = fmul double %1641, %1646
  %1648 = bitcast i8* %1635 to double*
  store double %1647, double* %1648, align 1
  %1649 = getelementptr inbounds i8, i8* %1635, i64 8
  %1650 = bitcast i8* %1649 to i64*
  store i64 %1644, i64* %1650, align 1
  store %struct.Memory* %loadMem_41ad4f, %struct.Memory** %MEMORY
  %loadMem_41ad53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1658 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1657, i64 0, i64 0
  %XMM0.i122 = bitcast %union.VectorReg* %1658 to %union.vec128_t*
  %1659 = load i64, i64* %RBP.i121
  %1660 = sub i64 %1659, 128
  %1661 = bitcast %union.vec128_t* %XMM0.i122 to i8*
  %1662 = load i64, i64* %PC.i120
  %1663 = add i64 %1662, 5
  store i64 %1663, i64* %PC.i120
  %1664 = bitcast i8* %1661 to double*
  %1665 = load double, double* %1664, align 1
  %1666 = inttoptr i64 %1660 to double*
  store double %1665, double* %1666
  store %struct.Memory* %loadMem_41ad53, %struct.Memory** %MEMORY
  %loadMem_41ad58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1668 = getelementptr inbounds %struct.GPR, %struct.GPR* %1667, i32 0, i32 33
  %1669 = getelementptr inbounds %struct.Reg, %struct.Reg* %1668, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1669 to i64*
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1671 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1670, i64 0, i64 0
  %YMM0.i118 = bitcast %union.VectorReg* %1671 to %"class.std::bitset"*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1672, i64 0, i64 1
  %XMM1.i119 = bitcast %union.VectorReg* %1673 to %union.vec128_t*
  %1674 = bitcast %"class.std::bitset"* %YMM0.i118 to i8*
  %1675 = bitcast %union.vec128_t* %XMM1.i119 to i8*
  %1676 = load i64, i64* %PC.i117
  %1677 = add i64 %1676, 3
  store i64 %1677, i64* %PC.i117
  %1678 = bitcast i8* %1675 to <2 x i32>*
  %1679 = load <2 x i32>, <2 x i32>* %1678, align 1
  %1680 = getelementptr inbounds i8, i8* %1675, i64 8
  %1681 = bitcast i8* %1680 to <2 x i32>*
  %1682 = load <2 x i32>, <2 x i32>* %1681, align 1
  %1683 = extractelement <2 x i32> %1679, i32 0
  %1684 = bitcast i8* %1674 to i32*
  store i32 %1683, i32* %1684, align 1
  %1685 = extractelement <2 x i32> %1679, i32 1
  %1686 = getelementptr inbounds i8, i8* %1674, i64 4
  %1687 = bitcast i8* %1686 to i32*
  store i32 %1685, i32* %1687, align 1
  %1688 = extractelement <2 x i32> %1682, i32 0
  %1689 = getelementptr inbounds i8, i8* %1674, i64 8
  %1690 = bitcast i8* %1689 to i32*
  store i32 %1688, i32* %1690, align 1
  %1691 = extractelement <2 x i32> %1682, i32 1
  %1692 = getelementptr inbounds i8, i8* %1674, i64 12
  %1693 = bitcast i8* %1692 to i32*
  store i32 %1691, i32* %1693, align 1
  store %struct.Memory* %loadMem_41ad58, %struct.Memory** %MEMORY
  %loadMem1_41ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 33
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %PC.i116
  %1698 = add i64 %1697, -104763
  %1699 = load i64, i64* %PC.i116
  %1700 = add i64 %1699, 5
  %1701 = load i64, i64* %PC.i116
  %1702 = add i64 %1701, 5
  store i64 %1702, i64* %PC.i116
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1704 = load i64, i64* %1703, align 8
  %1705 = add i64 %1704, -8
  %1706 = inttoptr i64 %1705 to i64*
  store i64 %1700, i64* %1706
  store i64 %1705, i64* %1703, align 8
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1698, i64* %1707, align 8
  store %struct.Memory* %loadMem1_41ad5b, %struct.Memory** %MEMORY
  %loadMem2_41ad5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_41ad5b = load i64, i64* %3
  %1708 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @exp to i64), %struct.Memory* %loadMem2_41ad5b)
  store %struct.Memory* %1708, %struct.Memory** %MEMORY
  %loadMem_41ad60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 15
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1716 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1715, i64 0, i64 1
  %YMM1.i112 = bitcast %union.VectorReg* %1716 to %"class.std::bitset"*
  %1717 = bitcast %"class.std::bitset"* %YMM1.i112 to i8*
  %1718 = load i64, i64* %RBP.i111
  %1719 = sub i64 %1718, 128
  %1720 = load i64, i64* %PC.i110
  %1721 = add i64 %1720, 5
  store i64 %1721, i64* %PC.i110
  %1722 = inttoptr i64 %1719 to double*
  %1723 = load double, double* %1722
  %1724 = bitcast i8* %1717 to double*
  store double %1723, double* %1724, align 1
  %1725 = getelementptr inbounds i8, i8* %1717, i64 8
  %1726 = bitcast i8* %1725 to double*
  store double 0.000000e+00, double* %1726, align 1
  store %struct.Memory* %loadMem_41ad60, %struct.Memory** %MEMORY
  %loadMem_41ad65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 33
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1729 to i64*
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1731 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1730, i64 0, i64 1
  %YMM1.i108 = bitcast %union.VectorReg* %1731 to %"class.std::bitset"*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1733 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1732, i64 0, i64 0
  %XMM0.i109 = bitcast %union.VectorReg* %1733 to %union.vec128_t*
  %1734 = bitcast %"class.std::bitset"* %YMM1.i108 to i8*
  %1735 = bitcast %"class.std::bitset"* %YMM1.i108 to i8*
  %1736 = bitcast %union.vec128_t* %XMM0.i109 to i8*
  %1737 = load i64, i64* %PC.i107
  %1738 = add i64 %1737, 4
  store i64 %1738, i64* %PC.i107
  %1739 = bitcast i8* %1735 to double*
  %1740 = load double, double* %1739, align 1
  %1741 = getelementptr inbounds i8, i8* %1735, i64 8
  %1742 = bitcast i8* %1741 to i64*
  %1743 = load i64, i64* %1742, align 1
  %1744 = bitcast i8* %1736 to double*
  %1745 = load double, double* %1744, align 1
  %1746 = fmul double %1740, %1745
  %1747 = bitcast i8* %1734 to double*
  store double %1746, double* %1747, align 1
  %1748 = getelementptr inbounds i8, i8* %1734, i64 8
  %1749 = bitcast i8* %1748 to i64*
  store i64 %1743, i64* %1749, align 1
  store %struct.Memory* %loadMem_41ad65, %struct.Memory** %MEMORY
  %loadMem_41ad69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 33
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1752 to i64*
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 15
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1757 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1756, i64 0, i64 1
  %YMM1.i106 = bitcast %union.VectorReg* %1757 to %"class.std::bitset"*
  %1758 = bitcast %"class.std::bitset"* %YMM1.i106 to i8*
  %1759 = bitcast %"class.std::bitset"* %YMM1.i106 to i8*
  %1760 = load i64, i64* %RBP.i105
  %1761 = sub i64 %1760, 48
  %1762 = load i64, i64* %PC.i104
  %1763 = add i64 %1762, 5
  store i64 %1763, i64* %PC.i104
  %1764 = bitcast i8* %1759 to double*
  %1765 = load double, double* %1764, align 1
  %1766 = getelementptr inbounds i8, i8* %1759, i64 8
  %1767 = bitcast i8* %1766 to i64*
  %1768 = load i64, i64* %1767, align 1
  %1769 = inttoptr i64 %1761 to double*
  %1770 = load double, double* %1769
  %1771 = fadd double %1765, %1770
  %1772 = bitcast i8* %1758 to double*
  store double %1771, double* %1772, align 1
  %1773 = getelementptr inbounds i8, i8* %1758, i64 8
  %1774 = bitcast i8* %1773 to i64*
  store i64 %1768, i64* %1774, align 1
  store %struct.Memory* %loadMem_41ad69, %struct.Memory** %MEMORY
  %loadMem_41ad6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 33
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1777 to i64*
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1779 = getelementptr inbounds %struct.GPR, %struct.GPR* %1778, i32 0, i32 15
  %1780 = getelementptr inbounds %struct.Reg, %struct.Reg* %1779, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %1780 to i64*
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1782 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1781, i64 0, i64 1
  %XMM1.i103 = bitcast %union.VectorReg* %1782 to %union.vec128_t*
  %1783 = load i64, i64* %RBP.i102
  %1784 = sub i64 %1783, 48
  %1785 = bitcast %union.vec128_t* %XMM1.i103 to i8*
  %1786 = load i64, i64* %PC.i101
  %1787 = add i64 %1786, 5
  store i64 %1787, i64* %PC.i101
  %1788 = bitcast i8* %1785 to double*
  %1789 = load double, double* %1788, align 1
  %1790 = inttoptr i64 %1784 to double*
  store double %1789, double* %1790
  store %struct.Memory* %loadMem_41ad6e, %struct.Memory** %MEMORY
  %loadMem_41ad73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 15
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1798 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1797, i64 0, i64 0
  %YMM0.i100 = bitcast %union.VectorReg* %1798 to %"class.std::bitset"*
  %1799 = bitcast %"class.std::bitset"* %YMM0.i100 to i8*
  %1800 = load i64, i64* %RBP.i99
  %1801 = sub i64 %1800, 80
  %1802 = load i64, i64* %PC.i98
  %1803 = add i64 %1802, 5
  store i64 %1803, i64* %PC.i98
  %1804 = inttoptr i64 %1801 to double*
  %1805 = load double, double* %1804
  %1806 = bitcast i8* %1799 to double*
  store double %1805, double* %1806, align 1
  %1807 = getelementptr inbounds i8, i8* %1799, i64 8
  %1808 = bitcast i8* %1807 to double*
  store double 0.000000e+00, double* %1808, align 1
  store %struct.Memory* %loadMem_41ad73, %struct.Memory** %MEMORY
  %loadMem_41ad78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 15
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1816 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1815, i64 0, i64 0
  %YMM0.i97 = bitcast %union.VectorReg* %1816 to %"class.std::bitset"*
  %1817 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %1818 = bitcast %"class.std::bitset"* %YMM0.i97 to i8*
  %1819 = load i64, i64* %RBP.i96
  %1820 = sub i64 %1819, 88
  %1821 = load i64, i64* %PC.i95
  %1822 = add i64 %1821, 5
  store i64 %1822, i64* %PC.i95
  %1823 = bitcast i8* %1818 to double*
  %1824 = load double, double* %1823, align 1
  %1825 = getelementptr inbounds i8, i8* %1818, i64 8
  %1826 = bitcast i8* %1825 to i64*
  %1827 = load i64, i64* %1826, align 1
  %1828 = inttoptr i64 %1820 to double*
  %1829 = load double, double* %1828
  %1830 = fadd double %1824, %1829
  %1831 = bitcast i8* %1817 to double*
  store double %1830, double* %1831, align 1
  %1832 = getelementptr inbounds i8, i8* %1817, i64 8
  %1833 = bitcast i8* %1832 to i64*
  store i64 %1827, i64* %1833, align 1
  store %struct.Memory* %loadMem_41ad78, %struct.Memory** %MEMORY
  %loadMem_41ad7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 15
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1841 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1840, i64 0, i64 0
  %XMM0.i94 = bitcast %union.VectorReg* %1841 to %union.vec128_t*
  %1842 = load i64, i64* %RBP.i93
  %1843 = sub i64 %1842, 88
  %1844 = bitcast %union.vec128_t* %XMM0.i94 to i8*
  %1845 = load i64, i64* %PC.i92
  %1846 = add i64 %1845, 5
  store i64 %1846, i64* %PC.i92
  %1847 = bitcast i8* %1844 to double*
  %1848 = load double, double* %1847, align 1
  %1849 = inttoptr i64 %1843 to double*
  store double %1848, double* %1849
  store %struct.Memory* %loadMem_41ad7d, %struct.Memory** %MEMORY
  %loadMem_41ad82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 33
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1852 to i64*
  %1853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1854 = getelementptr inbounds %struct.GPR, %struct.GPR* %1853, i32 0, i32 1
  %1855 = getelementptr inbounds %struct.Reg, %struct.Reg* %1854, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %1855 to i64*
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 15
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %1858 to i64*
  %1859 = load i64, i64* %RBP.i91
  %1860 = sub i64 %1859, 92
  %1861 = load i64, i64* %PC.i89
  %1862 = add i64 %1861, 3
  store i64 %1862, i64* %PC.i89
  %1863 = inttoptr i64 %1860 to i32*
  %1864 = load i32, i32* %1863
  %1865 = zext i32 %1864 to i64
  store i64 %1865, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_41ad82, %struct.Memory** %MEMORY
  %loadMem_41ad85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 1
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RAX.i88 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RAX.i88
  %1873 = load i64, i64* %PC.i87
  %1874 = add i64 %1873, 3
  store i64 %1874, i64* %PC.i87
  %1875 = trunc i64 %1872 to i32
  %1876 = add i32 1, %1875
  %1877 = zext i32 %1876 to i64
  store i64 %1877, i64* %RAX.i88, align 8
  %1878 = icmp ult i32 %1876, %1875
  %1879 = icmp ult i32 %1876, 1
  %1880 = or i1 %1878, %1879
  %1881 = zext i1 %1880 to i8
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1881, i8* %1882, align 1
  %1883 = and i32 %1876, 255
  %1884 = call i32 @llvm.ctpop.i32(i32 %1883)
  %1885 = trunc i32 %1884 to i8
  %1886 = and i8 %1885, 1
  %1887 = xor i8 %1886, 1
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1887, i8* %1888, align 1
  %1889 = xor i64 1, %1872
  %1890 = trunc i64 %1889 to i32
  %1891 = xor i32 %1890, %1876
  %1892 = lshr i32 %1891, 4
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1894, i8* %1895, align 1
  %1896 = icmp eq i32 %1876, 0
  %1897 = zext i1 %1896 to i8
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1897, i8* %1898, align 1
  %1899 = lshr i32 %1876, 31
  %1900 = trunc i32 %1899 to i8
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1900, i8* %1901, align 1
  %1902 = lshr i32 %1875, 31
  %1903 = xor i32 %1899, %1902
  %1904 = add i32 %1903, %1899
  %1905 = icmp eq i32 %1904, 2
  %1906 = zext i1 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1906, i8* %1907, align 1
  store %struct.Memory* %loadMem_41ad85, %struct.Memory** %MEMORY
  %loadMem_41ad88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 33
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1910 to i64*
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 1
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1913 to i32*
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1915 = getelementptr inbounds %struct.GPR, %struct.GPR* %1914, i32 0, i32 15
  %1916 = getelementptr inbounds %struct.Reg, %struct.Reg* %1915, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %1916 to i64*
  %1917 = load i64, i64* %RBP.i86
  %1918 = sub i64 %1917, 92
  %1919 = load i32, i32* %EAX.i
  %1920 = zext i32 %1919 to i64
  %1921 = load i64, i64* %PC.i85
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %PC.i85
  %1923 = inttoptr i64 %1918 to i32*
  store i32 %1919, i32* %1923
  store %struct.Memory* %loadMem_41ad88, %struct.Memory** %MEMORY
  %loadMem_41ad8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %PC.i84
  %1928 = add i64 %1927, -389
  %1929 = load i64, i64* %PC.i84
  %1930 = add i64 %1929, 5
  store i64 %1930, i64* %PC.i84
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1928, i64* %1931, align 8
  store %struct.Memory* %loadMem_41ad8b, %struct.Memory** %MEMORY
  br label %block_.L_41ac06

block_.L_41ad90:                                  ; preds = %block_.L_41ac06
  %loadMem_41ad90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1935, i64 0, i64 0
  %YMM0.i83 = bitcast %union.VectorReg* %1936 to %"class.std::bitset"*
  %1937 = bitcast %"class.std::bitset"* %YMM0.i83 to i8*
  %1938 = load i64, i64* %PC.i82
  %1939 = add i64 %1938, ptrtoint (%G_0x39a48__rip__type* @G_0x39a48__rip_ to i64)
  %1940 = load i64, i64* %PC.i82
  %1941 = add i64 %1940, 8
  store i64 %1941, i64* %PC.i82
  %1942 = inttoptr i64 %1939 to double*
  %1943 = load double, double* %1942
  %1944 = bitcast i8* %1937 to double*
  store double %1943, double* %1944, align 1
  %1945 = getelementptr inbounds i8, i8* %1937, i64 8
  %1946 = bitcast i8* %1945 to double*
  store double 0.000000e+00, double* %1946, align 1
  store %struct.Memory* %loadMem_41ad90, %struct.Memory** %MEMORY
  %loadMem_41ad98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 15
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1954 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1953, i64 0, i64 1
  %YMM1.i81 = bitcast %union.VectorReg* %1954 to %"class.std::bitset"*
  %1955 = bitcast %"class.std::bitset"* %YMM1.i81 to i8*
  %1956 = load i64, i64* %RBP.i80
  %1957 = sub i64 %1956, 24
  %1958 = load i64, i64* %PC.i79
  %1959 = add i64 %1958, 5
  store i64 %1959, i64* %PC.i79
  %1960 = inttoptr i64 %1957 to float*
  %1961 = load float, float* %1960
  %1962 = fpext float %1961 to double
  %1963 = bitcast i8* %1955 to double*
  store double %1962, double* %1963, align 1
  store %struct.Memory* %loadMem_41ad98, %struct.Memory** %MEMORY
  %loadMem_41ad9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1967, i64 0, i64 2
  %YMM2.i77 = bitcast %union.VectorReg* %1968 to %"class.std::bitset"*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1969, i64 0, i64 0
  %XMM0.i78 = bitcast %union.VectorReg* %1970 to %union.vec128_t*
  %1971 = bitcast %"class.std::bitset"* %YMM2.i77 to i8*
  %1972 = bitcast %union.vec128_t* %XMM0.i78 to i8*
  %1973 = load i64, i64* %PC.i76
  %1974 = add i64 %1973, 3
  store i64 %1974, i64* %PC.i76
  %1975 = bitcast i8* %1972 to <2 x i32>*
  %1976 = load <2 x i32>, <2 x i32>* %1975, align 1
  %1977 = getelementptr inbounds i8, i8* %1972, i64 8
  %1978 = bitcast i8* %1977 to <2 x i32>*
  %1979 = load <2 x i32>, <2 x i32>* %1978, align 1
  %1980 = extractelement <2 x i32> %1976, i32 0
  %1981 = bitcast i8* %1971 to i32*
  store i32 %1980, i32* %1981, align 1
  %1982 = extractelement <2 x i32> %1976, i32 1
  %1983 = getelementptr inbounds i8, i8* %1971, i64 4
  %1984 = bitcast i8* %1983 to i32*
  store i32 %1982, i32* %1984, align 1
  %1985 = extractelement <2 x i32> %1979, i32 0
  %1986 = getelementptr inbounds i8, i8* %1971, i64 8
  %1987 = bitcast i8* %1986 to i32*
  store i32 %1985, i32* %1987, align 1
  %1988 = extractelement <2 x i32> %1979, i32 1
  %1989 = getelementptr inbounds i8, i8* %1971, i64 12
  %1990 = bitcast i8* %1989 to i32*
  store i32 %1988, i32* %1990, align 1
  store %struct.Memory* %loadMem_41ad9d, %struct.Memory** %MEMORY
  %loadMem_41ada0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1995 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1994, i64 0, i64 2
  %YMM2.i74 = bitcast %union.VectorReg* %1995 to %"class.std::bitset"*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1997 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1996, i64 0, i64 1
  %XMM1.i75 = bitcast %union.VectorReg* %1997 to %union.vec128_t*
  %1998 = bitcast %"class.std::bitset"* %YMM2.i74 to i8*
  %1999 = bitcast %"class.std::bitset"* %YMM2.i74 to i8*
  %2000 = bitcast %union.vec128_t* %XMM1.i75 to i8*
  %2001 = load i64, i64* %PC.i73
  %2002 = add i64 %2001, 4
  store i64 %2002, i64* %PC.i73
  %2003 = bitcast i8* %1999 to double*
  %2004 = load double, double* %2003, align 1
  %2005 = getelementptr inbounds i8, i8* %1999, i64 8
  %2006 = bitcast i8* %2005 to i64*
  %2007 = load i64, i64* %2006, align 1
  %2008 = bitcast i8* %2000 to double*
  %2009 = load double, double* %2008, align 1
  %2010 = fdiv double %2004, %2009
  %2011 = bitcast i8* %1998 to double*
  store double %2010, double* %2011, align 1
  %2012 = getelementptr inbounds i8, i8* %1998, i64 8
  %2013 = bitcast i8* %2012 to i64*
  store i64 %2007, i64* %2013, align 1
  store %struct.Memory* %loadMem_41ada0, %struct.Memory** %MEMORY
  %loadMem_41ada4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2021 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2020, i64 0, i64 1
  %YMM1.i72 = bitcast %union.VectorReg* %2021 to %"class.std::bitset"*
  %2022 = bitcast %"class.std::bitset"* %YMM1.i72 to i8*
  %2023 = load i64, i64* %RBP.i71
  %2024 = sub i64 %2023, 72
  %2025 = load i64, i64* %PC.i70
  %2026 = add i64 %2025, 5
  store i64 %2026, i64* %PC.i70
  %2027 = inttoptr i64 %2024 to double*
  %2028 = load double, double* %2027
  %2029 = bitcast i8* %2022 to double*
  store double %2028, double* %2029, align 1
  %2030 = getelementptr inbounds i8, i8* %2022, i64 8
  %2031 = bitcast i8* %2030 to double*
  store double 0.000000e+00, double* %2031, align 1
  store %struct.Memory* %loadMem_41ada4, %struct.Memory** %MEMORY
  %loadMem_41ada9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 33
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2036 = getelementptr inbounds %struct.GPR, %struct.GPR* %2035, i32 0, i32 15
  %2037 = getelementptr inbounds %struct.Reg, %struct.Reg* %2036, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2037 to i64*
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2039 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2038, i64 0, i64 1
  %YMM1.i69 = bitcast %union.VectorReg* %2039 to %"class.std::bitset"*
  %2040 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %2041 = bitcast %"class.std::bitset"* %YMM1.i69 to i8*
  %2042 = load i64, i64* %RBP.i68
  %2043 = sub i64 %2042, 88
  %2044 = load i64, i64* %PC.i67
  %2045 = add i64 %2044, 5
  store i64 %2045, i64* %PC.i67
  %2046 = bitcast i8* %2041 to double*
  %2047 = load double, double* %2046, align 1
  %2048 = getelementptr inbounds i8, i8* %2041, i64 8
  %2049 = bitcast i8* %2048 to i64*
  %2050 = load i64, i64* %2049, align 1
  %2051 = inttoptr i64 %2043 to double*
  %2052 = load double, double* %2051
  %2053 = fdiv double %2047, %2052
  %2054 = bitcast i8* %2040 to double*
  store double %2053, double* %2054, align 1
  %2055 = getelementptr inbounds i8, i8* %2040, i64 8
  %2056 = bitcast i8* %2055 to i64*
  store i64 %2050, i64* %2056, align 1
  store %struct.Memory* %loadMem_41ada9, %struct.Memory** %MEMORY
  %loadMem_41adae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2061 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2060, i64 0, i64 2
  %YMM2.i65 = bitcast %union.VectorReg* %2061 to %"class.std::bitset"*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2063 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2062, i64 0, i64 1
  %XMM1.i66 = bitcast %union.VectorReg* %2063 to %union.vec128_t*
  %2064 = bitcast %"class.std::bitset"* %YMM2.i65 to i8*
  %2065 = bitcast %"class.std::bitset"* %YMM2.i65 to i8*
  %2066 = bitcast %union.vec128_t* %XMM1.i66 to i8*
  %2067 = load i64, i64* %PC.i64
  %2068 = add i64 %2067, 4
  store i64 %2068, i64* %PC.i64
  %2069 = bitcast i8* %2065 to double*
  %2070 = load double, double* %2069, align 1
  %2071 = getelementptr inbounds i8, i8* %2065, i64 8
  %2072 = bitcast i8* %2071 to i64*
  %2073 = load i64, i64* %2072, align 1
  %2074 = bitcast i8* %2066 to double*
  %2075 = load double, double* %2074, align 1
  %2076 = fsub double %2070, %2075
  %2077 = bitcast i8* %2064 to double*
  store double %2076, double* %2077, align 1
  %2078 = getelementptr inbounds i8, i8* %2064, i64 8
  %2079 = bitcast i8* %2078 to i64*
  store i64 %2073, i64* %2079, align 1
  store %struct.Memory* %loadMem_41adae, %struct.Memory** %MEMORY
  %loadMem_41adb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2082 to i64*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 15
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2086, i64 0, i64 1
  %YMM1.i63 = bitcast %union.VectorReg* %2087 to %"class.std::bitset"*
  %2088 = bitcast %"class.std::bitset"* %YMM1.i63 to i8*
  %2089 = load i64, i64* %RBP.i62
  %2090 = sub i64 %2089, 56
  %2091 = load i64, i64* %PC.i61
  %2092 = add i64 %2091, 5
  store i64 %2092, i64* %PC.i61
  %2093 = inttoptr i64 %2090 to double*
  %2094 = load double, double* %2093
  %2095 = bitcast i8* %2088 to double*
  store double %2094, double* %2095, align 1
  %2096 = getelementptr inbounds i8, i8* %2088, i64 8
  %2097 = bitcast i8* %2096 to double*
  store double 0.000000e+00, double* %2097, align 1
  store %struct.Memory* %loadMem_41adb2, %struct.Memory** %MEMORY
  %loadMem_41adb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 15
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %2103 to i64*
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2105 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2104, i64 0, i64 1
  %YMM1.i60 = bitcast %union.VectorReg* %2105 to %"class.std::bitset"*
  %2106 = bitcast %"class.std::bitset"* %YMM1.i60 to i8*
  %2107 = bitcast %"class.std::bitset"* %YMM1.i60 to i8*
  %2108 = load i64, i64* %RBP.i59
  %2109 = sub i64 %2108, 48
  %2110 = load i64, i64* %PC.i58
  %2111 = add i64 %2110, 5
  store i64 %2111, i64* %PC.i58
  %2112 = bitcast i8* %2107 to double*
  %2113 = load double, double* %2112, align 1
  %2114 = getelementptr inbounds i8, i8* %2107, i64 8
  %2115 = bitcast i8* %2114 to i64*
  %2116 = load i64, i64* %2115, align 1
  %2117 = inttoptr i64 %2109 to double*
  %2118 = load double, double* %2117
  %2119 = fdiv double %2113, %2118
  %2120 = bitcast i8* %2106 to double*
  store double %2119, double* %2120, align 1
  %2121 = getelementptr inbounds i8, i8* %2106, i64 8
  %2122 = bitcast i8* %2121 to i64*
  store i64 %2116, i64* %2122, align 1
  store %struct.Memory* %loadMem_41adb7, %struct.Memory** %MEMORY
  %loadMem_41adbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 33
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2126, i64 0, i64 2
  %YMM2.i56 = bitcast %union.VectorReg* %2127 to %"class.std::bitset"*
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2129 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2128, i64 0, i64 1
  %XMM1.i57 = bitcast %union.VectorReg* %2129 to %union.vec128_t*
  %2130 = bitcast %"class.std::bitset"* %YMM2.i56 to i8*
  %2131 = bitcast %"class.std::bitset"* %YMM2.i56 to i8*
  %2132 = bitcast %union.vec128_t* %XMM1.i57 to i8*
  %2133 = load i64, i64* %PC.i55
  %2134 = add i64 %2133, 4
  store i64 %2134, i64* %PC.i55
  %2135 = bitcast i8* %2131 to double*
  %2136 = load double, double* %2135, align 1
  %2137 = getelementptr inbounds i8, i8* %2131, i64 8
  %2138 = bitcast i8* %2137 to i64*
  %2139 = load i64, i64* %2138, align 1
  %2140 = bitcast i8* %2132 to double*
  %2141 = load double, double* %2140, align 1
  %2142 = fadd double %2136, %2141
  %2143 = bitcast i8* %2130 to double*
  store double %2142, double* %2143, align 1
  %2144 = getelementptr inbounds i8, i8* %2130, i64 8
  %2145 = bitcast i8* %2144 to i64*
  store i64 %2139, i64* %2145, align 1
  store %struct.Memory* %loadMem_41adbc, %struct.Memory** %MEMORY
  %loadMem_41adc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2150 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2149, i64 0, i64 1
  %YMM1.i53 = bitcast %union.VectorReg* %2150 to %"class.std::bitset"*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2152 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2151, i64 0, i64 2
  %XMM2.i54 = bitcast %union.VectorReg* %2152 to %union.vec128_t*
  %2153 = bitcast %"class.std::bitset"* %YMM1.i53 to i8*
  %2154 = bitcast %union.vec128_t* %XMM2.i54 to i8*
  %2155 = load i64, i64* %PC.i52
  %2156 = add i64 %2155, 4
  store i64 %2156, i64* %PC.i52
  %2157 = bitcast i8* %2153 to <2 x i32>*
  %2158 = load <2 x i32>, <2 x i32>* %2157, align 1
  %2159 = getelementptr inbounds i8, i8* %2153, i64 8
  %2160 = bitcast i8* %2159 to <2 x i32>*
  %2161 = load <2 x i32>, <2 x i32>* %2160, align 1
  %2162 = bitcast i8* %2154 to double*
  %2163 = load double, double* %2162, align 1
  %2164 = fptrunc double %2163 to float
  %2165 = bitcast i8* %2153 to float*
  store float %2164, float* %2165, align 1
  %2166 = extractelement <2 x i32> %2158, i32 1
  %2167 = getelementptr inbounds i8, i8* %2153, i64 4
  %2168 = bitcast i8* %2167 to i32*
  store i32 %2166, i32* %2168, align 1
  %2169 = extractelement <2 x i32> %2161, i32 0
  %2170 = bitcast i8* %2159 to i32*
  store i32 %2169, i32* %2170, align 1
  %2171 = extractelement <2 x i32> %2161, i32 1
  %2172 = getelementptr inbounds i8, i8* %2153, i64 12
  %2173 = bitcast i8* %2172 to i32*
  store i32 %2171, i32* %2173, align 1
  store %struct.Memory* %loadMem_41adc0, %struct.Memory** %MEMORY
  %loadMem_41adc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 1
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 15
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %RBP.i51
  %2184 = sub i64 %2183, 32
  %2185 = load i64, i64* %PC.i49
  %2186 = add i64 %2185, 4
  store i64 %2186, i64* %PC.i49
  %2187 = inttoptr i64 %2184 to i64*
  %2188 = load i64, i64* %2187
  store i64 %2188, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_41adc4, %struct.Memory** %MEMORY
  %loadMem_41adc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 1
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2195, i64 0, i64 1
  %XMM1.i48 = bitcast %union.VectorReg* %2196 to %union.vec128_t*
  %2197 = load i64, i64* %RAX.i47
  %2198 = bitcast %union.vec128_t* %XMM1.i48 to i8*
  %2199 = load i64, i64* %PC.i46
  %2200 = add i64 %2199, 4
  store i64 %2200, i64* %PC.i46
  %2201 = bitcast i8* %2198 to <2 x float>*
  %2202 = load <2 x float>, <2 x float>* %2201, align 1
  %2203 = extractelement <2 x float> %2202, i32 0
  %2204 = inttoptr i64 %2197 to float*
  store float %2203, float* %2204
  store %struct.Memory* %loadMem_41adc8, %struct.Memory** %MEMORY
  %loadMem_41adcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 15
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2212 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2211, i64 0, i64 1
  %YMM1.i45 = bitcast %union.VectorReg* %2212 to %"class.std::bitset"*
  %2213 = bitcast %"class.std::bitset"* %YMM1.i45 to i8*
  %2214 = load i64, i64* %RBP.i44
  %2215 = sub i64 %2214, 56
  %2216 = load i64, i64* %PC.i43
  %2217 = add i64 %2216, 5
  store i64 %2217, i64* %PC.i43
  %2218 = inttoptr i64 %2215 to double*
  %2219 = load double, double* %2218
  %2220 = bitcast i8* %2213 to double*
  store double %2219, double* %2220, align 1
  %2221 = getelementptr inbounds i8, i8* %2213, i64 8
  %2222 = bitcast i8* %2221 to double*
  store double 0.000000e+00, double* %2222, align 1
  store %struct.Memory* %loadMem_41adcc, %struct.Memory** %MEMORY
  %loadMem_41add1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 33
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2225 to i64*
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 15
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2229, i64 0, i64 1
  %YMM1.i42 = bitcast %union.VectorReg* %2230 to %"class.std::bitset"*
  %2231 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %2232 = bitcast %"class.std::bitset"* %YMM1.i42 to i8*
  %2233 = load i64, i64* %RBP.i41
  %2234 = sub i64 %2233, 48
  %2235 = load i64, i64* %PC.i40
  %2236 = add i64 %2235, 5
  store i64 %2236, i64* %PC.i40
  %2237 = bitcast i8* %2232 to double*
  %2238 = load double, double* %2237, align 1
  %2239 = getelementptr inbounds i8, i8* %2232, i64 8
  %2240 = bitcast i8* %2239 to i64*
  %2241 = load i64, i64* %2240, align 1
  %2242 = inttoptr i64 %2234 to double*
  %2243 = load double, double* %2242
  %2244 = fdiv double %2238, %2243
  %2245 = bitcast i8* %2231 to double*
  store double %2244, double* %2245, align 1
  %2246 = getelementptr inbounds i8, i8* %2231, i64 8
  %2247 = bitcast i8* %2246 to i64*
  store i64 %2241, i64* %2247, align 1
  store %struct.Memory* %loadMem_41add1, %struct.Memory** %MEMORY
  %loadMem_41add6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2250 to i64*
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 15
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2255 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2254, i64 0, i64 2
  %YMM2.i39 = bitcast %union.VectorReg* %2255 to %"class.std::bitset"*
  %2256 = bitcast %"class.std::bitset"* %YMM2.i39 to i8*
  %2257 = load i64, i64* %RBP.i38
  %2258 = sub i64 %2257, 56
  %2259 = load i64, i64* %PC.i37
  %2260 = add i64 %2259, 5
  store i64 %2260, i64* %PC.i37
  %2261 = inttoptr i64 %2258 to double*
  %2262 = load double, double* %2261
  %2263 = bitcast i8* %2256 to double*
  store double %2262, double* %2263, align 1
  %2264 = getelementptr inbounds i8, i8* %2256, i64 8
  %2265 = bitcast i8* %2264 to double*
  store double 0.000000e+00, double* %2265, align 1
  store %struct.Memory* %loadMem_41add6, %struct.Memory** %MEMORY
  %loadMem_41addb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 33
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 15
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2271 to i64*
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2272, i64 0, i64 2
  %YMM2.i36 = bitcast %union.VectorReg* %2273 to %"class.std::bitset"*
  %2274 = bitcast %"class.std::bitset"* %YMM2.i36 to i8*
  %2275 = bitcast %"class.std::bitset"* %YMM2.i36 to i8*
  %2276 = load i64, i64* %RBP.i35
  %2277 = sub i64 %2276, 48
  %2278 = load i64, i64* %PC.i34
  %2279 = add i64 %2278, 5
  store i64 %2279, i64* %PC.i34
  %2280 = bitcast i8* %2275 to double*
  %2281 = load double, double* %2280, align 1
  %2282 = getelementptr inbounds i8, i8* %2275, i64 8
  %2283 = bitcast i8* %2282 to i64*
  %2284 = load i64, i64* %2283, align 1
  %2285 = inttoptr i64 %2277 to double*
  %2286 = load double, double* %2285
  %2287 = fdiv double %2281, %2286
  %2288 = bitcast i8* %2274 to double*
  store double %2287, double* %2288, align 1
  %2289 = getelementptr inbounds i8, i8* %2274, i64 8
  %2290 = bitcast i8* %2289 to i64*
  store i64 %2284, i64* %2290, align 1
  store %struct.Memory* %loadMem_41addb, %struct.Memory** %MEMORY
  %loadMem_41ade0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2295 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2294, i64 0, i64 1
  %YMM1.i32 = bitcast %union.VectorReg* %2295 to %"class.std::bitset"*
  %2296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2297 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2296, i64 0, i64 2
  %XMM2.i33 = bitcast %union.VectorReg* %2297 to %union.vec128_t*
  %2298 = bitcast %"class.std::bitset"* %YMM1.i32 to i8*
  %2299 = bitcast %"class.std::bitset"* %YMM1.i32 to i8*
  %2300 = bitcast %union.vec128_t* %XMM2.i33 to i8*
  %2301 = load i64, i64* %PC.i31
  %2302 = add i64 %2301, 4
  store i64 %2302, i64* %PC.i31
  %2303 = bitcast i8* %2299 to double*
  %2304 = load double, double* %2303, align 1
  %2305 = getelementptr inbounds i8, i8* %2299, i64 8
  %2306 = bitcast i8* %2305 to i64*
  %2307 = load i64, i64* %2306, align 1
  %2308 = bitcast i8* %2300 to double*
  %2309 = load double, double* %2308, align 1
  %2310 = fmul double %2304, %2309
  %2311 = bitcast i8* %2298 to double*
  store double %2310, double* %2311, align 1
  %2312 = getelementptr inbounds i8, i8* %2298, i64 8
  %2313 = bitcast i8* %2312 to i64*
  store i64 %2307, i64* %2313, align 1
  store %struct.Memory* %loadMem_41ade0, %struct.Memory** %MEMORY
  %loadMem_41ade4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2315 = getelementptr inbounds %struct.GPR, %struct.GPR* %2314, i32 0, i32 33
  %2316 = getelementptr inbounds %struct.Reg, %struct.Reg* %2315, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2316 to i64*
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2318 = getelementptr inbounds %struct.GPR, %struct.GPR* %2317, i32 0, i32 15
  %2319 = getelementptr inbounds %struct.Reg, %struct.Reg* %2318, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %2319 to i64*
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2321 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2320, i64 0, i64 2
  %YMM2.i30 = bitcast %union.VectorReg* %2321 to %"class.std::bitset"*
  %2322 = bitcast %"class.std::bitset"* %YMM2.i30 to i8*
  %2323 = load i64, i64* %RBP.i29
  %2324 = sub i64 %2323, 64
  %2325 = load i64, i64* %PC.i28
  %2326 = add i64 %2325, 5
  store i64 %2326, i64* %PC.i28
  %2327 = inttoptr i64 %2324 to double*
  %2328 = load double, double* %2327
  %2329 = bitcast i8* %2322 to double*
  store double %2328, double* %2329, align 1
  %2330 = getelementptr inbounds i8, i8* %2322, i64 8
  %2331 = bitcast i8* %2330 to double*
  store double 0.000000e+00, double* %2331, align 1
  store %struct.Memory* %loadMem_41ade4, %struct.Memory** %MEMORY
  %loadMem_41ade9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 15
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %2337 to i64*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2339 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2338, i64 0, i64 2
  %YMM2.i27 = bitcast %union.VectorReg* %2339 to %"class.std::bitset"*
  %2340 = bitcast %"class.std::bitset"* %YMM2.i27 to i8*
  %2341 = bitcast %"class.std::bitset"* %YMM2.i27 to i8*
  %2342 = load i64, i64* %RBP.i26
  %2343 = sub i64 %2342, 48
  %2344 = load i64, i64* %PC.i25
  %2345 = add i64 %2344, 5
  store i64 %2345, i64* %PC.i25
  %2346 = bitcast i8* %2341 to double*
  %2347 = load double, double* %2346, align 1
  %2348 = getelementptr inbounds i8, i8* %2341, i64 8
  %2349 = bitcast i8* %2348 to i64*
  %2350 = load i64, i64* %2349, align 1
  %2351 = inttoptr i64 %2343 to double*
  %2352 = load double, double* %2351
  %2353 = fdiv double %2347, %2352
  %2354 = bitcast i8* %2340 to double*
  store double %2353, double* %2354, align 1
  %2355 = getelementptr inbounds i8, i8* %2340, i64 8
  %2356 = bitcast i8* %2355 to i64*
  store i64 %2350, i64* %2356, align 1
  store %struct.Memory* %loadMem_41ade9, %struct.Memory** %MEMORY
  %loadMem_41adee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2361 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2360, i64 0, i64 1
  %YMM1.i23 = bitcast %union.VectorReg* %2361 to %"class.std::bitset"*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2363 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2362, i64 0, i64 2
  %XMM2.i24 = bitcast %union.VectorReg* %2363 to %union.vec128_t*
  %2364 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2365 = bitcast %"class.std::bitset"* %YMM1.i23 to i8*
  %2366 = bitcast %union.vec128_t* %XMM2.i24 to i8*
  %2367 = load i64, i64* %PC.i22
  %2368 = add i64 %2367, 4
  store i64 %2368, i64* %PC.i22
  %2369 = bitcast i8* %2365 to double*
  %2370 = load double, double* %2369, align 1
  %2371 = getelementptr inbounds i8, i8* %2365, i64 8
  %2372 = bitcast i8* %2371 to i64*
  %2373 = load i64, i64* %2372, align 1
  %2374 = bitcast i8* %2366 to double*
  %2375 = load double, double* %2374, align 1
  %2376 = fsub double %2370, %2375
  %2377 = bitcast i8* %2364 to double*
  store double %2376, double* %2377, align 1
  %2378 = getelementptr inbounds i8, i8* %2364, i64 8
  %2379 = bitcast i8* %2378 to i64*
  store i64 %2373, i64* %2379, align 1
  store %struct.Memory* %loadMem_41adee, %struct.Memory** %MEMORY
  %loadMem_41adf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2382 to i64*
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 15
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2387 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2386, i64 0, i64 2
  %YMM2.i21 = bitcast %union.VectorReg* %2387 to %"class.std::bitset"*
  %2388 = bitcast %"class.std::bitset"* %YMM2.i21 to i8*
  %2389 = load i64, i64* %RBP.i20
  %2390 = sub i64 %2389, 24
  %2391 = load i64, i64* %PC.i19
  %2392 = add i64 %2391, 5
  store i64 %2392, i64* %PC.i19
  %2393 = inttoptr i64 %2390 to float*
  %2394 = load float, float* %2393
  %2395 = bitcast i8* %2388 to float*
  store float %2394, float* %2395, align 1
  %2396 = getelementptr inbounds i8, i8* %2388, i64 4
  %2397 = bitcast i8* %2396 to float*
  store float 0.000000e+00, float* %2397, align 1
  %2398 = getelementptr inbounds i8, i8* %2388, i64 8
  %2399 = bitcast i8* %2398 to float*
  store float 0.000000e+00, float* %2399, align 1
  %2400 = getelementptr inbounds i8, i8* %2388, i64 12
  %2401 = bitcast i8* %2400 to float*
  store float 0.000000e+00, float* %2401, align 1
  store %struct.Memory* %loadMem_41adf2, %struct.Memory** %MEMORY
  %loadMem_41adf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 15
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2409 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2408, i64 0, i64 2
  %YMM2.i18 = bitcast %union.VectorReg* %2409 to %"class.std::bitset"*
  %2410 = bitcast %"class.std::bitset"* %YMM2.i18 to i8*
  %2411 = bitcast %"class.std::bitset"* %YMM2.i18 to i8*
  %2412 = load i64, i64* %RBP.i17
  %2413 = sub i64 %2412, 24
  %2414 = load i64, i64* %PC.i16
  %2415 = add i64 %2414, 5
  store i64 %2415, i64* %PC.i16
  %2416 = bitcast i8* %2411 to <2 x float>*
  %2417 = load <2 x float>, <2 x float>* %2416, align 1
  %2418 = getelementptr inbounds i8, i8* %2411, i64 8
  %2419 = bitcast i8* %2418 to <2 x i32>*
  %2420 = load <2 x i32>, <2 x i32>* %2419, align 1
  %2421 = inttoptr i64 %2413 to float*
  %2422 = load float, float* %2421
  %2423 = extractelement <2 x float> %2417, i32 0
  %2424 = fmul float %2423, %2422
  %2425 = bitcast i8* %2410 to float*
  store float %2424, float* %2425, align 1
  %2426 = bitcast <2 x float> %2417 to <2 x i32>
  %2427 = extractelement <2 x i32> %2426, i32 1
  %2428 = getelementptr inbounds i8, i8* %2410, i64 4
  %2429 = bitcast i8* %2428 to i32*
  store i32 %2427, i32* %2429, align 1
  %2430 = extractelement <2 x i32> %2420, i32 0
  %2431 = getelementptr inbounds i8, i8* %2410, i64 8
  %2432 = bitcast i8* %2431 to i32*
  store i32 %2430, i32* %2432, align 1
  %2433 = extractelement <2 x i32> %2420, i32 1
  %2434 = getelementptr inbounds i8, i8* %2410, i64 12
  %2435 = bitcast i8* %2434 to i32*
  store i32 %2433, i32* %2435, align 1
  store %struct.Memory* %loadMem_41adf7, %struct.Memory** %MEMORY
  %loadMem_41adfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2440 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2439, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %2440 to %"class.std::bitset"*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2442 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2441, i64 0, i64 2
  %XMM2.i15 = bitcast %union.VectorReg* %2442 to %union.vec128_t*
  %2443 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %2444 = bitcast %union.vec128_t* %XMM2.i15 to i8*
  %2445 = load i64, i64* %PC.i14
  %2446 = add i64 %2445, 4
  store i64 %2446, i64* %PC.i14
  %2447 = bitcast i8* %2444 to <2 x float>*
  %2448 = load <2 x float>, <2 x float>* %2447, align 1
  %2449 = extractelement <2 x float> %2448, i32 0
  %2450 = fpext float %2449 to double
  %2451 = bitcast i8* %2443 to double*
  store double %2450, double* %2451, align 1
  store %struct.Memory* %loadMem_41adfc, %struct.Memory** %MEMORY
  %loadMem_41ae00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 33
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2454 to i64*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2455, i64 0, i64 0
  %YMM0.i13 = bitcast %union.VectorReg* %2456 to %"class.std::bitset"*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2457, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %2458 to %union.vec128_t*
  %2459 = bitcast %"class.std::bitset"* %YMM0.i13 to i8*
  %2460 = bitcast %"class.std::bitset"* %YMM0.i13 to i8*
  %2461 = bitcast %union.vec128_t* %XMM2.i to i8*
  %2462 = load i64, i64* %PC.i12
  %2463 = add i64 %2462, 4
  store i64 %2463, i64* %PC.i12
  %2464 = bitcast i8* %2460 to double*
  %2465 = load double, double* %2464, align 1
  %2466 = getelementptr inbounds i8, i8* %2460, i64 8
  %2467 = bitcast i8* %2466 to i64*
  %2468 = load i64, i64* %2467, align 1
  %2469 = bitcast i8* %2461 to double*
  %2470 = load double, double* %2469, align 1
  %2471 = fdiv double %2465, %2470
  %2472 = bitcast i8* %2459 to double*
  store double %2471, double* %2472, align 1
  %2473 = getelementptr inbounds i8, i8* %2459, i64 8
  %2474 = bitcast i8* %2473 to i64*
  store i64 %2468, i64* %2474, align 1
  store %struct.Memory* %loadMem_41ae00, %struct.Memory** %MEMORY
  %loadMem_41ae04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 33
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2477 to i64*
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2479 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2478, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2479 to %"class.std::bitset"*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2481 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2480, i64 0, i64 0
  %XMM0.i11 = bitcast %union.VectorReg* %2481 to %union.vec128_t*
  %2482 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2483 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2484 = bitcast %union.vec128_t* %XMM0.i11 to i8*
  %2485 = load i64, i64* %PC.i10
  %2486 = add i64 %2485, 4
  store i64 %2486, i64* %PC.i10
  %2487 = bitcast i8* %2483 to double*
  %2488 = load double, double* %2487, align 1
  %2489 = getelementptr inbounds i8, i8* %2483, i64 8
  %2490 = bitcast i8* %2489 to i64*
  %2491 = load i64, i64* %2490, align 1
  %2492 = bitcast i8* %2484 to double*
  %2493 = load double, double* %2492, align 1
  %2494 = fsub double %2488, %2493
  %2495 = bitcast i8* %2482 to double*
  store double %2494, double* %2495, align 1
  %2496 = getelementptr inbounds i8, i8* %2482, i64 8
  %2497 = bitcast i8* %2496 to i64*
  store i64 %2491, i64* %2497, align 1
  store %struct.Memory* %loadMem_41ae04, %struct.Memory** %MEMORY
  %loadMem_41ae08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2502 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2501, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2502 to %"class.std::bitset"*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2504 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2503, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2504 to %union.vec128_t*
  %2505 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2506 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2507 = load i64, i64* %PC.i9
  %2508 = add i64 %2507, 4
  store i64 %2508, i64* %PC.i9
  %2509 = bitcast i8* %2505 to <2 x i32>*
  %2510 = load <2 x i32>, <2 x i32>* %2509, align 1
  %2511 = getelementptr inbounds i8, i8* %2505, i64 8
  %2512 = bitcast i8* %2511 to <2 x i32>*
  %2513 = load <2 x i32>, <2 x i32>* %2512, align 1
  %2514 = bitcast i8* %2506 to double*
  %2515 = load double, double* %2514, align 1
  %2516 = fptrunc double %2515 to float
  %2517 = bitcast i8* %2505 to float*
  store float %2516, float* %2517, align 1
  %2518 = extractelement <2 x i32> %2510, i32 1
  %2519 = getelementptr inbounds i8, i8* %2505, i64 4
  %2520 = bitcast i8* %2519 to i32*
  store i32 %2518, i32* %2520, align 1
  %2521 = extractelement <2 x i32> %2513, i32 0
  %2522 = bitcast i8* %2511 to i32*
  store i32 %2521, i32* %2522, align 1
  %2523 = extractelement <2 x i32> %2513, i32 1
  %2524 = getelementptr inbounds i8, i8* %2505, i64 12
  %2525 = bitcast i8* %2524 to i32*
  store i32 %2523, i32* %2525, align 1
  store %struct.Memory* %loadMem_41ae08, %struct.Memory** %MEMORY
  %loadMem_41ae0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 1
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RAX.i7 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i8
  %2536 = sub i64 %2535, 40
  %2537 = load i64, i64* %PC.i6
  %2538 = add i64 %2537, 4
  store i64 %2538, i64* %PC.i6
  %2539 = inttoptr i64 %2536 to i64*
  %2540 = load i64, i64* %2539
  store i64 %2540, i64* %RAX.i7, align 8
  store %struct.Memory* %loadMem_41ae0c, %struct.Memory** %MEMORY
  %loadMem_41ae10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 1
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2547, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2548 to %union.vec128_t*
  %2549 = load i64, i64* %RAX.i
  %2550 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2551 = load i64, i64* %PC.i5
  %2552 = add i64 %2551, 4
  store i64 %2552, i64* %PC.i5
  %2553 = bitcast i8* %2550 to <2 x float>*
  %2554 = load <2 x float>, <2 x float>* %2553, align 1
  %2555 = extractelement <2 x float> %2554, i32 0
  %2556 = inttoptr i64 %2549 to float*
  store float %2555, float* %2556
  store %struct.Memory* %loadMem_41ae10, %struct.Memory** %MEMORY
  %loadMem_41ae14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 33
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2559 to i64*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 13
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %RSP.i
  %2564 = load i64, i64* %PC.i4
  %2565 = add i64 %2564, 7
  store i64 %2565, i64* %PC.i4
  %2566 = add i64 128, %2563
  store i64 %2566, i64* %RSP.i, align 8
  %2567 = icmp ult i64 %2566, %2563
  %2568 = icmp ult i64 %2566, 128
  %2569 = or i1 %2567, %2568
  %2570 = zext i1 %2569 to i8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2570, i8* %2571, align 1
  %2572 = trunc i64 %2566 to i32
  %2573 = and i32 %2572, 255
  %2574 = call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2577, i8* %2578, align 1
  %2579 = xor i64 128, %2563
  %2580 = xor i64 %2579, %2566
  %2581 = lshr i64 %2580, 4
  %2582 = trunc i64 %2581 to i8
  %2583 = and i8 %2582, 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2583, i8* %2584, align 1
  %2585 = icmp eq i64 %2566, 0
  %2586 = zext i1 %2585 to i8
  %2587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2586, i8* %2587, align 1
  %2588 = lshr i64 %2566, 63
  %2589 = trunc i64 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2589, i8* %2590, align 1
  %2591 = lshr i64 %2563, 63
  %2592 = xor i64 %2588, %2591
  %2593 = add i64 %2592, %2588
  %2594 = icmp eq i64 %2593, 2
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2595, i8* %2596, align 1
  store %struct.Memory* %loadMem_41ae14, %struct.Memory** %MEMORY
  %loadMem_41ae1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 15
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %PC.i2
  %2604 = add i64 %2603, 1
  store i64 %2604, i64* %PC.i2
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2606 = load i64, i64* %2605, align 8
  %2607 = add i64 %2606, 8
  %2608 = inttoptr i64 %2606 to i64*
  %2609 = load i64, i64* %2608
  store i64 %2609, i64* %RBP.i3, align 8
  store i64 %2607, i64* %2605, align 8
  store %struct.Memory* %loadMem_41ae1b, %struct.Memory** %MEMORY
  %loadMem_41ae1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %PC.i1
  %2614 = add i64 %2613, 1
  store i64 %2614, i64* %PC.i1
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2617 = load i64, i64* %2616, align 8
  %2618 = inttoptr i64 %2617 to i64*
  %2619 = load i64, i64* %2618
  store i64 %2619, i64* %2615, align 8
  %2620 = add i64 %2617, 8
  store i64 %2620, i64* %2616, align 8
  store %struct.Memory* %loadMem_41ae1c, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_41ae1c
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

define %struct.Memory* @routine_subq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 128
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 128
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
  %23 = xor i64 128, %9
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

define %struct.Memory* @routine_xorps__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 24
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

define %struct.Memory* @routine_movsd__xmm1__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
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

define %struct.Memory* @routine_jge_.L_41ad90(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpq__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
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

define %struct.Memory* @routine_jne_.L_41ac2f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39bbb__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39bbb__rip__type* @G_0x39bbb__rip_ to i64)
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

define %struct.Memory* @routine_jmpq_.L_41ac41(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsi2sdl___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = sitofp i32 %22 to double
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x68__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
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

define %struct.Memory* @routine_movsd_0x39be2__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39be2__rip__type* @G_0x39be2__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_mulsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x48__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_mulsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movaps__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.exp_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x39b78__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39b78__rip__type* @G_0x39b78__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x70__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_mulsd__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 120
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

define %struct.Memory* @routine_movsd_0x39b0f__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39b0f__rip__type* @G_0x39b0f__rip_ to i64)
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

define %struct.Memory* @routine_movsd_MINUS0x78__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_addsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 64
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

define %struct.Memory* @routine_movsd__xmm2__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM2 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM2 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 128
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

define %struct.Memory* @routine_movsd_MINUS0x80__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
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

define %struct.Memory* @routine_mulsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = fmul double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movl__eax__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41ac06(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x39a48__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x39a48__rip__type* @G_0x39a48__rip_ to i64)
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

define %struct.Memory* @routine_cvtss2sd_MINUS0x18__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_movaps__xmm0___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM0 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = bitcast i8* %11 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %11, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = extractelement <2 x i32> %15, i32 0
  %20 = bitcast i8* %10 to i32*
  store i32 %19, i32* %20, align 1
  %21 = extractelement <2 x i32> %15, i32 1
  %22 = getelementptr inbounds i8, i8* %10, i64 4
  %23 = bitcast i8* %22 to i32*
  store i32 %21, i32* %23, align 1
  %24 = extractelement <2 x i32> %18, i32 0
  %25 = getelementptr inbounds i8, i8* %10, i64 8
  %26 = bitcast i8* %25 to i32*
  store i32 %24, i32* %26, align 1
  %27 = extractelement <2 x i32> %18, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 12
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x48__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd_MINUS0x58__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
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
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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
  %22 = fsub double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd_MINUS0x30__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
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
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_cvtsd2ss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
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

define %struct.Memory* @routine_movss__xmm1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x38__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_divsd_MINUS0x30__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 48
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
  %24 = fdiv double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_MINUS0x40__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_subsd__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_movss_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
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

define %struct.Memory* @routine_mulss_MINUS0x18__rbp____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
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
  %25 = fmul float %24, %23
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

define %struct.Memory* @routine_cvtss2sd__xmm2___xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 2
  %YMM2 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 2
  %XMM2 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM2 to i8*
  %11 = bitcast %union.vec128_t* %XMM2 to i8*
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

define %struct.Memory* @routine_divsd__xmm2___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM2 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
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

define %struct.Memory* @routine_movss__xmm0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %12 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = extractelement <2 x float> %16, i32 0
  %18 = inttoptr i64 %11 to float*
  store float %17, float* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x80___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 128, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 128
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
  %25 = xor i64 128, %9
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
