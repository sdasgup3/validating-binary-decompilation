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
%G_0x1745__rip__type = type <{ [8 x i8] }>
%G_0x1794__rip__type = type <{ [8 x i8] }>
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
@G_0x1745__rip_ = global %G_0x1745__rip__type zeroinitializer
@G_0x1794__rip_ = global %G_0x1794__rip__type zeroinitializer

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

declare %struct.Memory* @sub_452f00.downweight(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @downweight(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_452f00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_452f00, %struct.Memory** %MEMORY
  %loadMem_452f01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i316 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i316
  %27 = load i64, i64* %PC.i315
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i315
  store i64 %26, i64* %RBP.i317, align 8
  store %struct.Memory* %loadMem_452f01, %struct.Memory** %MEMORY
  %loadMem_452f04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i408 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i408
  %36 = load i64, i64* %PC.i407
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i407
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i408, align 8
  %39 = icmp ult i64 %35, 80
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
  %49 = xor i64 80, %35
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
  store %struct.Memory* %loadMem_452f04, %struct.Memory** %MEMORY
  %loadMem_452f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %71 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %70, i64 0, i64 0
  %YMM0.i405 = bitcast %union.VectorReg* %71 to %"class.std::bitset"*
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %73 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %72, i64 0, i64 0
  %XMM0.i406 = bitcast %union.VectorReg* %73 to %union.vec128_t*
  %74 = bitcast %"class.std::bitset"* %YMM0.i405 to i8*
  %75 = bitcast %"class.std::bitset"* %YMM0.i405 to i8*
  %76 = bitcast %union.vec128_t* %XMM0.i406 to i8*
  %77 = load i64, i64* %PC.i404
  %78 = add i64 %77, 3
  store i64 %78, i64* %PC.i404
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
  store %struct.Memory* %loadMem_452f08, %struct.Memory** %MEMORY
  %loadMem_452f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 11
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RDI.i402 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 15
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RBP.i403
  %114 = sub i64 %113, 8
  %115 = load i64, i64* %RDI.i402
  %116 = load i64, i64* %PC.i401
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i401
  %118 = inttoptr i64 %114 to i64*
  store i64 %115, i64* %118
  store %struct.Memory* %loadMem_452f0b, %struct.Memory** %MEMORY
  %loadMem_452f0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 9
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %ESI.i399 = bitcast %union.anon* %124 to i32*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i400
  %129 = sub i64 %128, 12
  %130 = load i32, i32* %ESI.i399
  %131 = zext i32 %130 to i64
  %132 = load i64, i64* %PC.i398
  %133 = add i64 %132, 3
  store i64 %133, i64* %PC.i398
  %134 = inttoptr i64 %129 to i32*
  store i32 %130, i32* %134
  store %struct.Memory* %loadMem_452f0f, %struct.Memory** %MEMORY
  %loadMem_452f12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %137 to i64*
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %RDX.i396 = bitcast %union.anon* %140 to i64*
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %142 = getelementptr inbounds %struct.GPR, %struct.GPR* %141, i32 0, i32 15
  %143 = getelementptr inbounds %struct.Reg, %struct.Reg* %142, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %143 to i64*
  %144 = load i64, i64* %RBP.i397
  %145 = sub i64 %144, 24
  %146 = load i64, i64* %RDX.i396
  %147 = load i64, i64* %PC.i395
  %148 = add i64 %147, 4
  store i64 %148, i64* %PC.i395
  %149 = inttoptr i64 %145 to i64*
  store i64 %146, i64* %149
  store %struct.Memory* %loadMem_452f12, %struct.Memory** %MEMORY
  %loadMem_452f16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 5
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i394
  %160 = sub i64 %159, 32
  %161 = load i64, i64* %RCX.i393
  %162 = load i64, i64* %PC.i392
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i392
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164
  store %struct.Memory* %loadMem_452f16, %struct.Memory** %MEMORY
  %loadMem_452f1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 15
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 17
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %R8.i391 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %RBP.i390
  %175 = sub i64 %174, 40
  %176 = load i64, i64* %R8.i391
  %177 = load i64, i64* %PC.i389
  %178 = add i64 %177, 4
  store i64 %178, i64* %PC.i389
  %179 = inttoptr i64 %175 to i64*
  store i64 %176, i64* %179
  store %struct.Memory* %loadMem_452f1a, %struct.Memory** %MEMORY
  %loadMem_452f1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 33
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 19
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %R9D.i387 = bitcast %union.anon* %185 to i32*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 15
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %188 to i64*
  %189 = load i64, i64* %RBP.i388
  %190 = sub i64 %189, 44
  %191 = load i32, i32* %R9D.i387
  %192 = zext i32 %191 to i64
  %193 = load i64, i64* %PC.i386
  %194 = add i64 %193, 4
  store i64 %194, i64* %PC.i386
  %195 = inttoptr i64 %190 to i32*
  store i32 %191, i32* %195
  store %struct.Memory* %loadMem_452f1e, %struct.Memory** %MEMORY
  %loadMem_452f22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %197 = getelementptr inbounds %struct.GPR, %struct.GPR* %196, i32 0, i32 33
  %198 = getelementptr inbounds %struct.Reg, %struct.Reg* %197, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %198 to i64*
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 15
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %RBP.i385
  %206 = sub i64 %205, 8
  %207 = load i64, i64* %PC.i383
  %208 = add i64 %207, 4
  store i64 %208, i64* %PC.i383
  %209 = inttoptr i64 %206 to i64*
  %210 = load i64, i64* %209
  store i64 %210, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_452f22, %struct.Memory** %MEMORY
  %loadMem_452f26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 33
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %213 to i64*
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %215 = getelementptr inbounds %struct.GPR, %struct.GPR* %214, i32 0, i32 9
  %216 = getelementptr inbounds %struct.Reg, %struct.Reg* %215, i32 0, i32 0
  %RSI.i381 = bitcast %union.anon* %216 to i64*
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 15
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %219 to i64*
  %220 = load i64, i64* %RBP.i382
  %221 = sub i64 %220, 44
  %222 = load i64, i64* %PC.i380
  %223 = add i64 %222, 3
  store i64 %223, i64* %PC.i380
  %224 = inttoptr i64 %221 to i32*
  %225 = load i32, i32* %224
  %226 = zext i32 %225 to i64
  store i64 %226, i64* %RSI.i381, align 8
  store %struct.Memory* %loadMem_452f26, %struct.Memory** %MEMORY
  %loadMem_452f29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %228 = getelementptr inbounds %struct.GPR, %struct.GPR* %227, i32 0, i32 33
  %229 = getelementptr inbounds %struct.Reg, %struct.Reg* %228, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %229 to i64*
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %231 = getelementptr inbounds %struct.GPR, %struct.GPR* %230, i32 0, i32 9
  %232 = getelementptr inbounds %struct.Reg, %struct.Reg* %231, i32 0, i32 0
  %RSI.i378 = bitcast %union.anon* %232 to i64*
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 15
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %235 to i64*
  %236 = load i64, i64* %RSI.i378
  %237 = load i64, i64* %RBP.i379
  %238 = sub i64 %237, 12
  %239 = load i64, i64* %PC.i377
  %240 = add i64 %239, 3
  store i64 %240, i64* %PC.i377
  %241 = trunc i64 %236 to i32
  %242 = inttoptr i64 %238 to i32*
  %243 = load i32, i32* %242
  %244 = sub i32 %241, %243
  %245 = zext i32 %244 to i64
  store i64 %245, i64* %RSI.i378, align 8
  %246 = icmp ult i32 %241, %243
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %247, i8* %248, align 1
  %249 = and i32 %244, 255
  %250 = call i32 @llvm.ctpop.i32(i32 %249)
  %251 = trunc i32 %250 to i8
  %252 = and i8 %251, 1
  %253 = xor i8 %252, 1
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %253, i8* %254, align 1
  %255 = xor i32 %243, %241
  %256 = xor i32 %255, %244
  %257 = lshr i32 %256, 4
  %258 = trunc i32 %257 to i8
  %259 = and i8 %258, 1
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %259, i8* %260, align 1
  %261 = icmp eq i32 %244, 0
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %262, i8* %263, align 1
  %264 = lshr i32 %244, 31
  %265 = trunc i32 %264 to i8
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %265, i8* %266, align 1
  %267 = lshr i32 %241, 31
  %268 = lshr i32 %243, 31
  %269 = xor i32 %268, %267
  %270 = xor i32 %264, %267
  %271 = add i32 %270, %269
  %272 = icmp eq i32 %271, 2
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %273, i8* %274, align 1
  store %struct.Memory* %loadMem_452f29, %struct.Memory** %MEMORY
  %loadMem_452f2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 33
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %277 to i64*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 9
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %ESI.i375 = bitcast %union.anon* %280 to i32*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 7
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %RDX.i376 = bitcast %union.anon* %283 to i64*
  %284 = load i32, i32* %ESI.i375
  %285 = zext i32 %284 to i64
  %286 = load i64, i64* %PC.i374
  %287 = add i64 %286, 3
  store i64 %287, i64* %PC.i374
  %288 = shl i64 %285, 32
  %289 = ashr exact i64 %288, 32
  store i64 %289, i64* %RDX.i376, align 8
  store %struct.Memory* %loadMem_452f2c, %struct.Memory** %MEMORY
  %loadMem_452f2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 33
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 7
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %RDX.i373 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %RDX.i373
  %297 = load i64, i64* %PC.i372
  %298 = add i64 %297, 4
  store i64 %298, i64* %PC.i372
  %299 = sext i64 %296 to i128
  %300 = and i128 %299, -18446744073709551616
  %301 = zext i64 %296 to i128
  %302 = or i128 %300, %301
  %303 = mul i128 40, %302
  %304 = trunc i128 %303 to i64
  store i64 %304, i64* %RDX.i373, align 8
  %305 = sext i64 %304 to i128
  %306 = icmp ne i128 %305, %303
  %307 = zext i1 %306 to i8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %307, i8* %308, align 1
  %309 = trunc i128 %303 to i32
  %310 = and i32 %309, 255
  %311 = call i32 @llvm.ctpop.i32(i32 %310)
  %312 = trunc i32 %311 to i8
  %313 = and i8 %312, 1
  %314 = xor i8 %313, 1
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %314, i8* %315, align 1
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %316, align 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %317, align 1
  %318 = lshr i64 %304, 63
  %319 = trunc i64 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %319, i8* %320, align 1
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %307, i8* %321, align 1
  store %struct.Memory* %loadMem_452f2f, %struct.Memory** %MEMORY
  %loadMem_452f33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 5
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RCX.i370 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 7
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %330 to i64*
  %331 = load i64, i64* %RCX.i370
  %332 = load i64, i64* %RDX.i371
  %333 = load i64, i64* %PC.i369
  %334 = add i64 %333, 3
  store i64 %334, i64* %PC.i369
  %335 = add i64 %332, %331
  store i64 %335, i64* %RCX.i370, align 8
  %336 = icmp ult i64 %335, %331
  %337 = icmp ult i64 %335, %332
  %338 = or i1 %336, %337
  %339 = zext i1 %338 to i8
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %339, i8* %340, align 1
  %341 = trunc i64 %335 to i32
  %342 = and i32 %341, 255
  %343 = call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %346, i8* %347, align 1
  %348 = xor i64 %332, %331
  %349 = xor i64 %348, %335
  %350 = lshr i64 %349, 4
  %351 = trunc i64 %350 to i8
  %352 = and i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %352, i8* %353, align 1
  %354 = icmp eq i64 %335, 0
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %355, i8* %356, align 1
  %357 = lshr i64 %335, 63
  %358 = trunc i64 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %358, i8* %359, align 1
  %360 = lshr i64 %331, 63
  %361 = lshr i64 %332, 63
  %362 = xor i64 %357, %360
  %363 = xor i64 %357, %361
  %364 = add i64 %362, %363
  %365 = icmp eq i64 %364, 2
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %366, i8* %367, align 1
  store %struct.Memory* %loadMem_452f33, %struct.Memory** %MEMORY
  %loadMem_452f36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 5
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %373 to i64*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 9
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RSI.i368 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RCX.i367
  %378 = add i64 %377, 4
  %379 = load i64, i64* %PC.i366
  %380 = add i64 %379, 3
  store i64 %380, i64* %PC.i366
  %381 = inttoptr i64 %378 to i32*
  %382 = load i32, i32* %381
  %383 = zext i32 %382 to i64
  store i64 %383, i64* %RSI.i368, align 8
  store %struct.Memory* %loadMem_452f36, %struct.Memory** %MEMORY
  %loadMem_452f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 9
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %ESI.i364 = bitcast %union.anon* %389 to i32*
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 15
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %392 to i64*
  %393 = load i64, i64* %RBP.i365
  %394 = sub i64 %393, 48
  %395 = load i32, i32* %ESI.i364
  %396 = zext i32 %395 to i64
  %397 = load i64, i64* %PC.i363
  %398 = add i64 %397, 3
  store i64 %398, i64* %PC.i363
  %399 = inttoptr i64 %394 to i32*
  store i32 %395, i32* %399
  store %struct.Memory* %loadMem_452f39, %struct.Memory** %MEMORY
  %loadMem_452f3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 5
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RCX.i361 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 15
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %408 to i64*
  %409 = load i64, i64* %RBP.i362
  %410 = sub i64 %409, 8
  %411 = load i64, i64* %PC.i360
  %412 = add i64 %411, 4
  store i64 %412, i64* %PC.i360
  %413 = inttoptr i64 %410 to i64*
  %414 = load i64, i64* %413
  store i64 %414, i64* %RCX.i361, align 8
  store %struct.Memory* %loadMem_452f3c, %struct.Memory** %MEMORY
  %loadMem_452f40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 9
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RSI.i358 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 15
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %RBP.i359
  %425 = sub i64 %424, 44
  %426 = load i64, i64* %PC.i357
  %427 = add i64 %426, 3
  store i64 %427, i64* %PC.i357
  %428 = inttoptr i64 %425 to i32*
  %429 = load i32, i32* %428
  %430 = zext i32 %429 to i64
  store i64 %430, i64* %RSI.i358, align 8
  store %struct.Memory* %loadMem_452f40, %struct.Memory** %MEMORY
  %loadMem_452f43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 33
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %433 to i64*
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 9
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %RSI.i355 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 15
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %439 to i64*
  %440 = load i64, i64* %RSI.i355
  %441 = load i64, i64* %RBP.i356
  %442 = sub i64 %441, 12
  %443 = load i64, i64* %PC.i354
  %444 = add i64 %443, 3
  store i64 %444, i64* %PC.i354
  %445 = trunc i64 %440 to i32
  %446 = inttoptr i64 %442 to i32*
  %447 = load i32, i32* %446
  %448 = sub i32 %445, %447
  %449 = zext i32 %448 to i64
  store i64 %449, i64* %RSI.i355, align 8
  %450 = icmp ult i32 %445, %447
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %451, i8* %452, align 1
  %453 = and i32 %448, 255
  %454 = call i32 @llvm.ctpop.i32(i32 %453)
  %455 = trunc i32 %454 to i8
  %456 = and i8 %455, 1
  %457 = xor i8 %456, 1
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %457, i8* %458, align 1
  %459 = xor i32 %447, %445
  %460 = xor i32 %459, %448
  %461 = lshr i32 %460, 4
  %462 = trunc i32 %461 to i8
  %463 = and i8 %462, 1
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %463, i8* %464, align 1
  %465 = icmp eq i32 %448, 0
  %466 = zext i1 %465 to i8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %466, i8* %467, align 1
  %468 = lshr i32 %448, 31
  %469 = trunc i32 %468 to i8
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %469, i8* %470, align 1
  %471 = lshr i32 %445, 31
  %472 = lshr i32 %447, 31
  %473 = xor i32 %472, %471
  %474 = xor i32 %468, %471
  %475 = add i32 %474, %473
  %476 = icmp eq i32 %475, 2
  %477 = zext i1 %476 to i8
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %477, i8* %478, align 1
  store %struct.Memory* %loadMem_452f43, %struct.Memory** %MEMORY
  %loadMem_452f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 33
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %481 to i64*
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 9
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %ESI.i352 = bitcast %union.anon* %484 to i32*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 7
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %RDX.i353 = bitcast %union.anon* %487 to i64*
  %488 = load i32, i32* %ESI.i352
  %489 = zext i32 %488 to i64
  %490 = load i64, i64* %PC.i351
  %491 = add i64 %490, 3
  store i64 %491, i64* %PC.i351
  %492 = shl i64 %489, 32
  %493 = ashr exact i64 %492, 32
  store i64 %493, i64* %RDX.i353, align 8
  store %struct.Memory* %loadMem_452f46, %struct.Memory** %MEMORY
  %loadMem_452f49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 33
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %496 to i64*
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 7
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %499 to i64*
  %500 = load i64, i64* %RDX.i350
  %501 = load i64, i64* %PC.i349
  %502 = add i64 %501, 4
  store i64 %502, i64* %PC.i349
  %503 = sext i64 %500 to i128
  %504 = and i128 %503, -18446744073709551616
  %505 = zext i64 %500 to i128
  %506 = or i128 %504, %505
  %507 = mul i128 40, %506
  %508 = trunc i128 %507 to i64
  store i64 %508, i64* %RDX.i350, align 8
  %509 = sext i64 %508 to i128
  %510 = icmp ne i128 %509, %507
  %511 = zext i1 %510 to i8
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %511, i8* %512, align 1
  %513 = trunc i128 %507 to i32
  %514 = and i32 %513, 255
  %515 = call i32 @llvm.ctpop.i32(i32 %514)
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = xor i8 %517, 1
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %518, i8* %519, align 1
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %520, align 1
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %521, align 1
  %522 = lshr i64 %508, 63
  %523 = trunc i64 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %523, i8* %524, align 1
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %511, i8* %525, align 1
  store %struct.Memory* %loadMem_452f49, %struct.Memory** %MEMORY
  %loadMem_452f4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %528 to i64*
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 5
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 7
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RCX.i347
  %536 = load i64, i64* %RDX.i348
  %537 = load i64, i64* %PC.i346
  %538 = add i64 %537, 3
  store i64 %538, i64* %PC.i346
  %539 = add i64 %536, %535
  store i64 %539, i64* %RCX.i347, align 8
  %540 = icmp ult i64 %539, %535
  %541 = icmp ult i64 %539, %536
  %542 = or i1 %540, %541
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %543, i8* %544, align 1
  %545 = trunc i64 %539 to i32
  %546 = and i32 %545, 255
  %547 = call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %550, i8* %551, align 1
  %552 = xor i64 %536, %535
  %553 = xor i64 %552, %539
  %554 = lshr i64 %553, 4
  %555 = trunc i64 %554 to i8
  %556 = and i8 %555, 1
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %556, i8* %557, align 1
  %558 = icmp eq i64 %539, 0
  %559 = zext i1 %558 to i8
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %559, i8* %560, align 1
  %561 = lshr i64 %539, 63
  %562 = trunc i64 %561 to i8
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %562, i8* %563, align 1
  %564 = lshr i64 %535, 63
  %565 = lshr i64 %536, 63
  %566 = xor i64 %561, %564
  %567 = xor i64 %561, %565
  %568 = add i64 %566, %567
  %569 = icmp eq i64 %568, 2
  %570 = zext i1 %569 to i8
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %570, i8* %571, align 1
  store %struct.Memory* %loadMem_452f4d, %struct.Memory** %MEMORY
  %loadMem_452f50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RCX.i344 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 9
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RSI.i345 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RCX.i344
  %582 = add i64 %581, 8
  %583 = load i64, i64* %PC.i343
  %584 = add i64 %583, 3
  store i64 %584, i64* %PC.i343
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RSI.i345, align 8
  store %struct.Memory* %loadMem_452f50, %struct.Memory** %MEMORY
  %loadMem_452f53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 9
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %593 to i32*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RBP.i342
  %598 = sub i64 %597, 52
  %599 = load i32, i32* %ESI.i
  %600 = zext i32 %599 to i64
  %601 = load i64, i64* %PC.i341
  %602 = add i64 %601, 3
  store i64 %602, i64* %PC.i341
  %603 = inttoptr i64 %598 to i32*
  store i32 %599, i32* %603
  store %struct.Memory* %loadMem_452f53, %struct.Memory** %MEMORY
  %loadMem_452f56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 5
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 15
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RBP.i340
  %614 = sub i64 %613, 24
  %615 = load i64, i64* %PC.i338
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC.i338
  %617 = inttoptr i64 %614 to i64*
  %618 = load i64, i64* %617
  store i64 %618, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_452f56, %struct.Memory** %MEMORY
  %loadMem_452f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 33
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %621 to i64*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 7
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %624 to i64*
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 15
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %627 to i64*
  %628 = load i64, i64* %RBP.i337
  %629 = sub i64 %628, 44
  %630 = load i64, i64* %PC.i335
  %631 = add i64 %630, 4
  store i64 %631, i64* %PC.i335
  %632 = inttoptr i64 %629 to i32*
  %633 = load i32, i32* %632
  %634 = sext i32 %633 to i64
  store i64 %634, i64* %RDX.i336, align 8
  store %struct.Memory* %loadMem_452f5a, %struct.Memory** %MEMORY
  %loadMem_452f5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %636 = getelementptr inbounds %struct.GPR, %struct.GPR* %635, i32 0, i32 33
  %637 = getelementptr inbounds %struct.Reg, %struct.Reg* %636, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %637 to i64*
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %639 = getelementptr inbounds %struct.GPR, %struct.GPR* %638, i32 0, i32 5
  %640 = getelementptr inbounds %struct.Reg, %struct.Reg* %639, i32 0, i32 0
  %RCX.i332 = bitcast %union.anon* %640 to i64*
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %642 = getelementptr inbounds %struct.GPR, %struct.GPR* %641, i32 0, i32 7
  %643 = getelementptr inbounds %struct.Reg, %struct.Reg* %642, i32 0, i32 0
  %RDX.i333 = bitcast %union.anon* %643 to i64*
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %645 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %644, i64 0, i64 1
  %YMM1.i334 = bitcast %union.VectorReg* %645 to %"class.std::bitset"*
  %646 = bitcast %"class.std::bitset"* %YMM1.i334 to i8*
  %647 = load i64, i64* %RCX.i332
  %648 = load i64, i64* %RDX.i333
  %649 = mul i64 %648, 4
  %650 = add i64 %649, %647
  %651 = load i64, i64* %PC.i331
  %652 = add i64 %651, 5
  store i64 %652, i64* %PC.i331
  %653 = inttoptr i64 %650 to float*
  %654 = load float, float* %653
  %655 = bitcast i8* %646 to float*
  store float %654, float* %655, align 1
  %656 = getelementptr inbounds i8, i8* %646, i64 4
  %657 = bitcast i8* %656 to float*
  store float 0.000000e+00, float* %657, align 1
  %658 = getelementptr inbounds i8, i8* %646, i64 8
  %659 = bitcast i8* %658 to float*
  store float 0.000000e+00, float* %659, align 1
  %660 = getelementptr inbounds i8, i8* %646, i64 12
  %661 = bitcast i8* %660 to float*
  store float 0.000000e+00, float* %661, align 1
  store %struct.Memory* %loadMem_452f5e, %struct.Memory** %MEMORY
  %loadMem_452f63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 5
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RCX.i329 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 15
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %RBP.i330
  %672 = sub i64 %671, 32
  %673 = load i64, i64* %PC.i328
  %674 = add i64 %673, 4
  store i64 %674, i64* %PC.i328
  %675 = inttoptr i64 %672 to i64*
  %676 = load i64, i64* %675
  store i64 %676, i64* %RCX.i329, align 8
  store %struct.Memory* %loadMem_452f63, %struct.Memory** %MEMORY
  %loadMem_452f67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 33
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 7
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RDX.i326 = bitcast %union.anon* %682 to i64*
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 15
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %685 to i64*
  %686 = load i64, i64* %RBP.i327
  %687 = sub i64 %686, 44
  %688 = load i64, i64* %PC.i325
  %689 = add i64 %688, 4
  store i64 %689, i64* %PC.i325
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690
  %692 = sext i32 %691 to i64
  store i64 %692, i64* %RDX.i326, align 8
  store %struct.Memory* %loadMem_452f67, %struct.Memory** %MEMORY
  %loadMem_452f6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 5
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %698 to i64*
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %700 = getelementptr inbounds %struct.GPR, %struct.GPR* %699, i32 0, i32 7
  %701 = getelementptr inbounds %struct.Reg, %struct.Reg* %700, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %701 to i64*
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %703 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %702, i64 0, i64 1
  %YMM1.i324 = bitcast %union.VectorReg* %703 to %"class.std::bitset"*
  %704 = bitcast %"class.std::bitset"* %YMM1.i324 to i8*
  %705 = bitcast %"class.std::bitset"* %YMM1.i324 to i8*
  %706 = load i64, i64* %RCX.i322
  %707 = load i64, i64* %RDX.i323
  %708 = mul i64 %707, 4
  %709 = add i64 %708, %706
  %710 = load i64, i64* %PC.i321
  %711 = add i64 %710, 5
  store i64 %711, i64* %PC.i321
  %712 = bitcast i8* %705 to <2 x float>*
  %713 = load <2 x float>, <2 x float>* %712, align 1
  %714 = getelementptr inbounds i8, i8* %705, i64 8
  %715 = bitcast i8* %714 to <2 x i32>*
  %716 = load <2 x i32>, <2 x i32>* %715, align 1
  %717 = inttoptr i64 %709 to float*
  %718 = load float, float* %717
  %719 = extractelement <2 x float> %713, i32 0
  %720 = fadd float %719, %718
  %721 = bitcast i8* %704 to float*
  store float %720, float* %721, align 1
  %722 = bitcast <2 x float> %713 to <2 x i32>
  %723 = extractelement <2 x i32> %722, i32 1
  %724 = getelementptr inbounds i8, i8* %704, i64 4
  %725 = bitcast i8* %724 to i32*
  store i32 %723, i32* %725, align 1
  %726 = extractelement <2 x i32> %716, i32 0
  %727 = getelementptr inbounds i8, i8* %704, i64 8
  %728 = bitcast i8* %727 to i32*
  store i32 %726, i32* %728, align 1
  %729 = extractelement <2 x i32> %716, i32 1
  %730 = getelementptr inbounds i8, i8* %704, i64 12
  %731 = bitcast i8* %730 to i32*
  store i32 %729, i32* %731, align 1
  store %struct.Memory* %loadMem_452f6b, %struct.Memory** %MEMORY
  %loadMem_452f70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 33
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %736 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %735, i64 0, i64 1
  %YMM1.i319 = bitcast %union.VectorReg* %736 to %"class.std::bitset"*
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %738 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %737, i64 0, i64 1
  %XMM1.i320 = bitcast %union.VectorReg* %738 to %union.vec128_t*
  %739 = bitcast %"class.std::bitset"* %YMM1.i319 to i8*
  %740 = bitcast %union.vec128_t* %XMM1.i320 to i8*
  %741 = load i64, i64* %PC.i318
  %742 = add i64 %741, 4
  store i64 %742, i64* %PC.i318
  %743 = bitcast i8* %740 to <2 x float>*
  %744 = load <2 x float>, <2 x float>* %743, align 1
  %745 = extractelement <2 x float> %744, i32 0
  %746 = fpext float %745 to double
  %747 = bitcast i8* %739 to double*
  store double %746, double* %747, align 1
  store %struct.Memory* %loadMem_452f70, %struct.Memory** %MEMORY
  %loadMem_452f74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %751, i64 0, i64 0
  %XMM0.i313 = bitcast %union.VectorReg* %752 to %union.vec128_t*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %754 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %753, i64 0, i64 1
  %XMM1.i314 = bitcast %union.VectorReg* %754 to %union.vec128_t*
  %755 = bitcast %union.vec128_t* %XMM1.i314 to i8*
  %756 = bitcast %union.vec128_t* %XMM0.i313 to i8*
  %757 = load i64, i64* %PC.i312
  %758 = add i64 %757, 4
  store i64 %758, i64* %PC.i312
  %759 = bitcast i8* %755 to double*
  %760 = load double, double* %759, align 1
  %761 = bitcast i8* %756 to double*
  %762 = load double, double* %761, align 1
  %763 = fcmp uno double %760, %762
  br i1 %763, label %764, label %776

; <label>:764:                                    ; preds = %entry
  %765 = fadd double %760, %762
  %766 = bitcast double %765 to i64
  %767 = and i64 %766, 9221120237041090560
  %768 = icmp eq i64 %767, 9218868437227405312
  %769 = and i64 %766, 2251799813685247
  %770 = icmp ne i64 %769, 0
  %771 = and i1 %768, %770
  br i1 %771, label %772, label %782

; <label>:772:                                    ; preds = %764
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %774 = load i64, i64* %773, align 8
  %775 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %774, %struct.Memory* %loadMem_452f74)
  br label %routine_ucomisd__xmm0___xmm1.exit

; <label>:776:                                    ; preds = %entry
  %777 = fcmp ogt double %760, %762
  br i1 %777, label %782, label %778

; <label>:778:                                    ; preds = %776
  %779 = fcmp olt double %760, %762
  br i1 %779, label %782, label %780

; <label>:780:                                    ; preds = %778
  %781 = fcmp oeq double %760, %762
  br i1 %781, label %782, label %789

; <label>:782:                                    ; preds = %780, %778, %776, %764
  %783 = phi i8 [ 0, %776 ], [ 0, %778 ], [ 1, %780 ], [ 1, %764 ]
  %784 = phi i8 [ 0, %776 ], [ 0, %778 ], [ 0, %780 ], [ 1, %764 ]
  %785 = phi i8 [ 0, %776 ], [ 1, %778 ], [ 0, %780 ], [ 1, %764 ]
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %783, i8* %786, align 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %784, i8* %787, align 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %785, i8* %788, align 1
  br label %789

; <label>:789:                                    ; preds = %782, %780
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %790, align 1
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %791, align 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %792, align 1
  br label %routine_ucomisd__xmm0___xmm1.exit

routine_ucomisd__xmm0___xmm1.exit:                ; preds = %772, %789
  %793 = phi %struct.Memory* [ %775, %772 ], [ %loadMem_452f74, %789 ]
  store %struct.Memory* %793, %struct.Memory** %MEMORY
  %loadMem_452f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %796 to i64*
  %797 = load i64, i64* %PC.i311
  %798 = add i64 %797, 157
  %799 = load i64, i64* %PC.i311
  %800 = add i64 %799, 6
  %801 = load i64, i64* %PC.i311
  %802 = add i64 %801, 6
  store i64 %802, i64* %PC.i311
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %804 = load i8, i8* %803, align 1
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %806 = load i8, i8* %805, align 1
  %807 = or i8 %806, %804
  %808 = icmp ne i8 %807, 0
  %809 = zext i1 %808 to i8
  store i8 %809, i8* %BRANCH_TAKEN, align 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %811 = select i1 %808, i64 %798, i64 %800
  store i64 %811, i64* %810, align 8
  store %struct.Memory* %loadMem_452f78, %struct.Memory** %MEMORY
  %loadBr_452f78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_452f78 = icmp eq i8 %loadBr_452f78, 1
  br i1 %cmpBr_452f78, label %block_.L_453015, label %block_452f7e

block_452f7e:                                     ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_452f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %817 to i64*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 15
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RBP.i310 = bitcast %union.anon* %820 to i64*
  %821 = load i64, i64* %RBP.i310
  %822 = sub i64 %821, 40
  %823 = load i64, i64* %PC.i308
  %824 = add i64 %823, 4
  store i64 %824, i64* %PC.i308
  %825 = inttoptr i64 %822 to i64*
  %826 = load i64, i64* %825
  store i64 %826, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_452f7e, %struct.Memory** %MEMORY
  %loadMem_452f82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 5
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 15
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %835 to i64*
  %836 = load i64, i64* %RBP.i307
  %837 = sub i64 %836, 44
  %838 = load i64, i64* %PC.i305
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC.i305
  %840 = inttoptr i64 %837 to i32*
  %841 = load i32, i32* %840
  %842 = sext i32 %841 to i64
  store i64 %842, i64* %RCX.i306, align 8
  store %struct.Memory* %loadMem_452f82, %struct.Memory** %MEMORY
  %loadMem_452f86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 33
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %845 to i64*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 1
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %848 to i64*
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %850 = getelementptr inbounds %struct.GPR, %struct.GPR* %849, i32 0, i32 5
  %851 = getelementptr inbounds %struct.Reg, %struct.Reg* %850, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %851 to i64*
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %853 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %852, i64 0, i64 0
  %YMM0.i304 = bitcast %union.VectorReg* %853 to %"class.std::bitset"*
  %854 = bitcast %"class.std::bitset"* %YMM0.i304 to i8*
  %855 = load i64, i64* %RAX.i302
  %856 = load i64, i64* %RCX.i303
  %857 = mul i64 %856, 4
  %858 = add i64 %857, %855
  %859 = load i64, i64* %PC.i301
  %860 = add i64 %859, 5
  store i64 %860, i64* %PC.i301
  %861 = inttoptr i64 %858 to float*
  %862 = load float, float* %861
  %863 = bitcast i8* %854 to float*
  store float %862, float* %863, align 1
  %864 = getelementptr inbounds i8, i8* %854, i64 4
  %865 = bitcast i8* %864 to float*
  store float 0.000000e+00, float* %865, align 1
  %866 = getelementptr inbounds i8, i8* %854, i64 8
  %867 = bitcast i8* %866 to float*
  store float 0.000000e+00, float* %867, align 1
  %868 = getelementptr inbounds i8, i8* %854, i64 12
  %869 = bitcast i8* %868 to float*
  store float 0.000000e+00, float* %869, align 1
  store %struct.Memory* %loadMem_452f86, %struct.Memory** %MEMORY
  %loadMem_452f8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i300
  %880 = sub i64 %879, 24
  %881 = load i64, i64* %PC.i298
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i298
  %883 = inttoptr i64 %880 to i64*
  %884 = load i64, i64* %883
  store i64 %884, i64* %RAX.i299, align 8
  store %struct.Memory* %loadMem_452f8b, %struct.Memory** %MEMORY
  %loadMem_452f8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 33
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %887 to i64*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 5
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RCX.i296 = bitcast %union.anon* %890 to i64*
  %891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %892 = getelementptr inbounds %struct.GPR, %struct.GPR* %891, i32 0, i32 15
  %893 = getelementptr inbounds %struct.Reg, %struct.Reg* %892, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %893 to i64*
  %894 = load i64, i64* %RBP.i297
  %895 = sub i64 %894, 44
  %896 = load i64, i64* %PC.i295
  %897 = add i64 %896, 4
  store i64 %897, i64* %PC.i295
  %898 = inttoptr i64 %895 to i32*
  %899 = load i32, i32* %898
  %900 = sext i32 %899 to i64
  store i64 %900, i64* %RCX.i296, align 8
  store %struct.Memory* %loadMem_452f8f, %struct.Memory** %MEMORY
  %loadMem_452f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 1
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %906 to i64*
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 5
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %910, i64 0, i64 1
  %YMM1.i294 = bitcast %union.VectorReg* %911 to %"class.std::bitset"*
  %912 = bitcast %"class.std::bitset"* %YMM1.i294 to i8*
  %913 = load i64, i64* %RAX.i292
  %914 = load i64, i64* %RCX.i293
  %915 = mul i64 %914, 4
  %916 = add i64 %915, %913
  %917 = load i64, i64* %PC.i291
  %918 = add i64 %917, 5
  store i64 %918, i64* %PC.i291
  %919 = inttoptr i64 %916 to float*
  %920 = load float, float* %919
  %921 = bitcast i8* %912 to float*
  store float %920, float* %921, align 1
  %922 = getelementptr inbounds i8, i8* %912, i64 4
  %923 = bitcast i8* %922 to float*
  store float 0.000000e+00, float* %923, align 1
  %924 = getelementptr inbounds i8, i8* %912, i64 8
  %925 = bitcast i8* %924 to float*
  store float 0.000000e+00, float* %925, align 1
  %926 = getelementptr inbounds i8, i8* %912, i64 12
  %927 = bitcast i8* %926 to float*
  store float 0.000000e+00, float* %927, align 1
  store %struct.Memory* %loadMem_452f93, %struct.Memory** %MEMORY
  %loadMem_452f98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 1
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 15
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RBP.i290
  %938 = sub i64 %937, 24
  %939 = load i64, i64* %PC.i288
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC.i288
  %941 = inttoptr i64 %938 to i64*
  %942 = load i64, i64* %941
  store i64 %942, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_452f98, %struct.Memory** %MEMORY
  %loadMem_452f9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 5
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 15
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RBP.i287
  %953 = sub i64 %952, 44
  %954 = load i64, i64* %PC.i285
  %955 = add i64 %954, 4
  store i64 %955, i64* %PC.i285
  %956 = inttoptr i64 %953 to i32*
  %957 = load i32, i32* %956
  %958 = sext i32 %957 to i64
  store i64 %958, i64* %RCX.i286, align 8
  store %struct.Memory* %loadMem_452f9c, %struct.Memory** %MEMORY
  %loadMem_452fa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 33
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 1
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %966 = getelementptr inbounds %struct.GPR, %struct.GPR* %965, i32 0, i32 5
  %967 = getelementptr inbounds %struct.Reg, %struct.Reg* %966, i32 0, i32 0
  %RCX.i283 = bitcast %union.anon* %967 to i64*
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %968, i64 0, i64 2
  %YMM2.i284 = bitcast %union.VectorReg* %969 to %"class.std::bitset"*
  %970 = bitcast %"class.std::bitset"* %YMM2.i284 to i8*
  %971 = load i64, i64* %RAX.i282
  %972 = load i64, i64* %RCX.i283
  %973 = mul i64 %972, 4
  %974 = add i64 %973, %971
  %975 = load i64, i64* %PC.i281
  %976 = add i64 %975, 5
  store i64 %976, i64* %PC.i281
  %977 = inttoptr i64 %974 to float*
  %978 = load float, float* %977
  %979 = bitcast i8* %970 to float*
  store float %978, float* %979, align 1
  %980 = getelementptr inbounds i8, i8* %970, i64 4
  %981 = bitcast i8* %980 to float*
  store float 0.000000e+00, float* %981, align 1
  %982 = getelementptr inbounds i8, i8* %970, i64 8
  %983 = bitcast i8* %982 to float*
  store float 0.000000e+00, float* %983, align 1
  %984 = getelementptr inbounds i8, i8* %970, i64 12
  %985 = bitcast i8* %984 to float*
  store float 0.000000e+00, float* %985, align 1
  store %struct.Memory* %loadMem_452fa0, %struct.Memory** %MEMORY
  %loadMem_452fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 33
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 1
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %RAX.i279 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 15
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %RBP.i280
  %996 = sub i64 %995, 32
  %997 = load i64, i64* %PC.i278
  %998 = add i64 %997, 4
  store i64 %998, i64* %PC.i278
  %999 = inttoptr i64 %996 to i64*
  %1000 = load i64, i64* %999
  store i64 %1000, i64* %RAX.i279, align 8
  store %struct.Memory* %loadMem_452fa5, %struct.Memory** %MEMORY
  %loadMem_452fa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1002 = getelementptr inbounds %struct.GPR, %struct.GPR* %1001, i32 0, i32 33
  %1003 = getelementptr inbounds %struct.Reg, %struct.Reg* %1002, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1003 to i64*
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 5
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 15
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RBP.i277 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RBP.i277
  %1011 = sub i64 %1010, 44
  %1012 = load i64, i64* %PC.i275
  %1013 = add i64 %1012, 4
  store i64 %1013, i64* %PC.i275
  %1014 = inttoptr i64 %1011 to i32*
  %1015 = load i32, i32* %1014
  %1016 = sext i32 %1015 to i64
  store i64 %1016, i64* %RCX.i276, align 8
  store %struct.Memory* %loadMem_452fa9, %struct.Memory** %MEMORY
  %loadMem_452fad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 33
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1019 to i64*
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 1
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RAX.i272 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 5
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1026, i64 0, i64 2
  %YMM2.i274 = bitcast %union.VectorReg* %1027 to %"class.std::bitset"*
  %1028 = bitcast %"class.std::bitset"* %YMM2.i274 to i8*
  %1029 = bitcast %"class.std::bitset"* %YMM2.i274 to i8*
  %1030 = load i64, i64* %RAX.i272
  %1031 = load i64, i64* %RCX.i273
  %1032 = mul i64 %1031, 4
  %1033 = add i64 %1032, %1030
  %1034 = load i64, i64* %PC.i271
  %1035 = add i64 %1034, 5
  store i64 %1035, i64* %PC.i271
  %1036 = bitcast i8* %1029 to <2 x float>*
  %1037 = load <2 x float>, <2 x float>* %1036, align 1
  %1038 = getelementptr inbounds i8, i8* %1029, i64 8
  %1039 = bitcast i8* %1038 to <2 x i32>*
  %1040 = load <2 x i32>, <2 x i32>* %1039, align 1
  %1041 = inttoptr i64 %1033 to float*
  %1042 = load float, float* %1041
  %1043 = extractelement <2 x float> %1037, i32 0
  %1044 = fadd float %1043, %1042
  %1045 = bitcast i8* %1028 to float*
  store float %1044, float* %1045, align 1
  %1046 = bitcast <2 x float> %1037 to <2 x i32>
  %1047 = extractelement <2 x i32> %1046, i32 1
  %1048 = getelementptr inbounds i8, i8* %1028, i64 4
  %1049 = bitcast i8* %1048 to i32*
  store i32 %1047, i32* %1049, align 1
  %1050 = extractelement <2 x i32> %1040, i32 0
  %1051 = getelementptr inbounds i8, i8* %1028, i64 8
  %1052 = bitcast i8* %1051 to i32*
  store i32 %1050, i32* %1052, align 1
  %1053 = extractelement <2 x i32> %1040, i32 1
  %1054 = getelementptr inbounds i8, i8* %1028, i64 12
  %1055 = bitcast i8* %1054 to i32*
  store i32 %1053, i32* %1055, align 1
  store %struct.Memory* %loadMem_452fad, %struct.Memory** %MEMORY
  %loadMem_452fb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1059, i64 0, i64 1
  %YMM1.i269 = bitcast %union.VectorReg* %1060 to %"class.std::bitset"*
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1062 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1061, i64 0, i64 2
  %XMM2.i270 = bitcast %union.VectorReg* %1062 to %union.vec128_t*
  %1063 = bitcast %"class.std::bitset"* %YMM1.i269 to i8*
  %1064 = bitcast %"class.std::bitset"* %YMM1.i269 to i8*
  %1065 = bitcast %union.vec128_t* %XMM2.i270 to i8*
  %1066 = load i64, i64* %PC.i268
  %1067 = add i64 %1066, 4
  store i64 %1067, i64* %PC.i268
  %1068 = bitcast i8* %1064 to <2 x float>*
  %1069 = load <2 x float>, <2 x float>* %1068, align 1
  %1070 = getelementptr inbounds i8, i8* %1064, i64 8
  %1071 = bitcast i8* %1070 to <2 x i32>*
  %1072 = load <2 x i32>, <2 x i32>* %1071, align 1
  %1073 = bitcast i8* %1065 to <2 x float>*
  %1074 = load <2 x float>, <2 x float>* %1073, align 1
  %1075 = extractelement <2 x float> %1069, i32 0
  %1076 = extractelement <2 x float> %1074, i32 0
  %1077 = fdiv float %1075, %1076
  %1078 = bitcast i8* %1063 to float*
  store float %1077, float* %1078, align 1
  %1079 = bitcast <2 x float> %1069 to <2 x i32>
  %1080 = extractelement <2 x i32> %1079, i32 1
  %1081 = getelementptr inbounds i8, i8* %1063, i64 4
  %1082 = bitcast i8* %1081 to i32*
  store i32 %1080, i32* %1082, align 1
  %1083 = extractelement <2 x i32> %1072, i32 0
  %1084 = getelementptr inbounds i8, i8* %1063, i64 8
  %1085 = bitcast i8* %1084 to i32*
  store i32 %1083, i32* %1085, align 1
  %1086 = extractelement <2 x i32> %1072, i32 1
  %1087 = getelementptr inbounds i8, i8* %1063, i64 12
  %1088 = bitcast i8* %1087 to i32*
  store i32 %1086, i32* %1088, align 1
  store %struct.Memory* %loadMem_452fb2, %struct.Memory** %MEMORY
  %loadMem_452fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 33
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1091 to i64*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1093 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1092, i64 0, i64 0
  %YMM0.i266 = bitcast %union.VectorReg* %1093 to %"class.std::bitset"*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1095 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1094, i64 0, i64 1
  %XMM1.i267 = bitcast %union.VectorReg* %1095 to %union.vec128_t*
  %1096 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1097 = bitcast %"class.std::bitset"* %YMM0.i266 to i8*
  %1098 = bitcast %union.vec128_t* %XMM1.i267 to i8*
  %1099 = load i64, i64* %PC.i265
  %1100 = add i64 %1099, 4
  store i64 %1100, i64* %PC.i265
  %1101 = bitcast i8* %1097 to <2 x float>*
  %1102 = load <2 x float>, <2 x float>* %1101, align 1
  %1103 = getelementptr inbounds i8, i8* %1097, i64 8
  %1104 = bitcast i8* %1103 to <2 x i32>*
  %1105 = load <2 x i32>, <2 x i32>* %1104, align 1
  %1106 = bitcast i8* %1098 to <2 x float>*
  %1107 = load <2 x float>, <2 x float>* %1106, align 1
  %1108 = extractelement <2 x float> %1102, i32 0
  %1109 = extractelement <2 x float> %1107, i32 0
  %1110 = fmul float %1108, %1109
  %1111 = bitcast i8* %1096 to float*
  store float %1110, float* %1111, align 1
  %1112 = bitcast <2 x float> %1102 to <2 x i32>
  %1113 = extractelement <2 x i32> %1112, i32 1
  %1114 = getelementptr inbounds i8, i8* %1096, i64 4
  %1115 = bitcast i8* %1114 to i32*
  store i32 %1113, i32* %1115, align 1
  %1116 = extractelement <2 x i32> %1105, i32 0
  %1117 = getelementptr inbounds i8, i8* %1096, i64 8
  %1118 = bitcast i8* %1117 to i32*
  store i32 %1116, i32* %1118, align 1
  %1119 = extractelement <2 x i32> %1105, i32 1
  %1120 = getelementptr inbounds i8, i8* %1096, i64 12
  %1121 = bitcast i8* %1120 to i32*
  store i32 %1119, i32* %1121, align 1
  store %struct.Memory* %loadMem_452fb6, %struct.Memory** %MEMORY
  %loadMem_452fba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 33
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1124 to i64*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 1
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 15
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %1130 to i64*
  %1131 = load i64, i64* %RBP.i264
  %1132 = sub i64 %1131, 40
  %1133 = load i64, i64* %PC.i262
  %1134 = add i64 %1133, 4
  store i64 %1134, i64* %PC.i262
  %1135 = inttoptr i64 %1132 to i64*
  %1136 = load i64, i64* %1135
  store i64 %1136, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_452fba, %struct.Memory** %MEMORY
  %loadMem_452fbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1138 = getelementptr inbounds %struct.GPR, %struct.GPR* %1137, i32 0, i32 33
  %1139 = getelementptr inbounds %struct.Reg, %struct.Reg* %1138, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1139 to i64*
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1141 = getelementptr inbounds %struct.GPR, %struct.GPR* %1140, i32 0, i32 5
  %1142 = getelementptr inbounds %struct.Reg, %struct.Reg* %1141, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %1142 to i64*
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1144 = getelementptr inbounds %struct.GPR, %struct.GPR* %1143, i32 0, i32 15
  %1145 = getelementptr inbounds %struct.Reg, %struct.Reg* %1144, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %1145 to i64*
  %1146 = load i64, i64* %RBP.i261
  %1147 = sub i64 %1146, 48
  %1148 = load i64, i64* %PC.i259
  %1149 = add i64 %1148, 4
  store i64 %1149, i64* %PC.i259
  %1150 = inttoptr i64 %1147 to i32*
  %1151 = load i32, i32* %1150
  %1152 = sext i32 %1151 to i64
  store i64 %1152, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_452fbe, %struct.Memory** %MEMORY
  %loadMem_452fc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 1
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %1158 to i64*
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 5
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1163 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1162, i64 0, i64 0
  %XMM0.i258 = bitcast %union.VectorReg* %1163 to %union.vec128_t*
  %1164 = load i64, i64* %RAX.i256
  %1165 = load i64, i64* %RCX.i257
  %1166 = mul i64 %1165, 4
  %1167 = add i64 %1166, %1164
  %1168 = bitcast %union.vec128_t* %XMM0.i258 to i8*
  %1169 = load i64, i64* %PC.i255
  %1170 = add i64 %1169, 5
  store i64 %1170, i64* %PC.i255
  %1171 = bitcast i8* %1168 to <2 x float>*
  %1172 = load <2 x float>, <2 x float>* %1171, align 1
  %1173 = extractelement <2 x float> %1172, i32 0
  %1174 = inttoptr i64 %1167 to float*
  store float %1173, float* %1174
  store %struct.Memory* %loadMem_452fc2, %struct.Memory** %MEMORY
  %loadMem_452fc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 1
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 15
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %1183 to i64*
  %1184 = load i64, i64* %RBP.i254
  %1185 = sub i64 %1184, 40
  %1186 = load i64, i64* %PC.i252
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC.i252
  %1188 = inttoptr i64 %1185 to i64*
  %1189 = load i64, i64* %1188
  store i64 %1189, i64* %RAX.i253, align 8
  store %struct.Memory* %loadMem_452fc7, %struct.Memory** %MEMORY
  %loadMem_452fcb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 5
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %1195 to i64*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 15
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %RBP.i251
  %1200 = sub i64 %1199, 44
  %1201 = load i64, i64* %PC.i249
  %1202 = add i64 %1201, 4
  store i64 %1202, i64* %PC.i249
  %1203 = inttoptr i64 %1200 to i32*
  %1204 = load i32, i32* %1203
  %1205 = sext i32 %1204 to i64
  store i64 %1205, i64* %RCX.i250, align 8
  store %struct.Memory* %loadMem_452fcb, %struct.Memory** %MEMORY
  %loadMem_452fcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 33
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1208 to i64*
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1210 = getelementptr inbounds %struct.GPR, %struct.GPR* %1209, i32 0, i32 1
  %1211 = getelementptr inbounds %struct.Reg, %struct.Reg* %1210, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %1211 to i64*
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1213 = getelementptr inbounds %struct.GPR, %struct.GPR* %1212, i32 0, i32 5
  %1214 = getelementptr inbounds %struct.Reg, %struct.Reg* %1213, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %1214 to i64*
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1215, i64 0, i64 0
  %YMM0.i248 = bitcast %union.VectorReg* %1216 to %"class.std::bitset"*
  %1217 = bitcast %"class.std::bitset"* %YMM0.i248 to i8*
  %1218 = load i64, i64* %RAX.i246
  %1219 = load i64, i64* %RCX.i247
  %1220 = mul i64 %1219, 4
  %1221 = add i64 %1220, %1218
  %1222 = load i64, i64* %PC.i245
  %1223 = add i64 %1222, 5
  store i64 %1223, i64* %PC.i245
  %1224 = inttoptr i64 %1221 to float*
  %1225 = load float, float* %1224
  %1226 = bitcast i8* %1217 to float*
  store float %1225, float* %1226, align 1
  %1227 = getelementptr inbounds i8, i8* %1217, i64 4
  %1228 = bitcast i8* %1227 to float*
  store float 0.000000e+00, float* %1228, align 1
  %1229 = getelementptr inbounds i8, i8* %1217, i64 8
  %1230 = bitcast i8* %1229 to float*
  store float 0.000000e+00, float* %1230, align 1
  %1231 = getelementptr inbounds i8, i8* %1217, i64 12
  %1232 = bitcast i8* %1231 to float*
  store float 0.000000e+00, float* %1232, align 1
  store %struct.Memory* %loadMem_452fcf, %struct.Memory** %MEMORY
  %loadMem_452fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 1
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i244
  %1243 = sub i64 %1242, 32
  %1244 = load i64, i64* %PC.i242
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC.i242
  %1246 = inttoptr i64 %1243 to i64*
  %1247 = load i64, i64* %1246
  store i64 %1247, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_452fd4, %struct.Memory** %MEMORY
  %loadMem_452fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 33
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1250 to i64*
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1252 = getelementptr inbounds %struct.GPR, %struct.GPR* %1251, i32 0, i32 5
  %1253 = getelementptr inbounds %struct.Reg, %struct.Reg* %1252, i32 0, i32 0
  %RCX.i240 = bitcast %union.anon* %1253 to i64*
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 15
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %1256 to i64*
  %1257 = load i64, i64* %RBP.i241
  %1258 = sub i64 %1257, 44
  %1259 = load i64, i64* %PC.i239
  %1260 = add i64 %1259, 4
  store i64 %1260, i64* %PC.i239
  %1261 = inttoptr i64 %1258 to i32*
  %1262 = load i32, i32* %1261
  %1263 = sext i32 %1262 to i64
  store i64 %1263, i64* %RCX.i240, align 8
  store %struct.Memory* %loadMem_452fd8, %struct.Memory** %MEMORY
  %loadMem_452fdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %1269 to i64*
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 5
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %RCX.i237 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1273, i64 0, i64 1
  %YMM1.i238 = bitcast %union.VectorReg* %1274 to %"class.std::bitset"*
  %1275 = bitcast %"class.std::bitset"* %YMM1.i238 to i8*
  %1276 = load i64, i64* %RAX.i236
  %1277 = load i64, i64* %RCX.i237
  %1278 = mul i64 %1277, 4
  %1279 = add i64 %1278, %1276
  %1280 = load i64, i64* %PC.i235
  %1281 = add i64 %1280, 5
  store i64 %1281, i64* %PC.i235
  %1282 = inttoptr i64 %1279 to float*
  %1283 = load float, float* %1282
  %1284 = bitcast i8* %1275 to float*
  store float %1283, float* %1284, align 1
  %1285 = getelementptr inbounds i8, i8* %1275, i64 4
  %1286 = bitcast i8* %1285 to float*
  store float 0.000000e+00, float* %1286, align 1
  %1287 = getelementptr inbounds i8, i8* %1275, i64 8
  %1288 = bitcast i8* %1287 to float*
  store float 0.000000e+00, float* %1288, align 1
  %1289 = getelementptr inbounds i8, i8* %1275, i64 12
  %1290 = bitcast i8* %1289 to float*
  store float 0.000000e+00, float* %1290, align 1
  store %struct.Memory* %loadMem_452fdc, %struct.Memory** %MEMORY
  %loadMem_452fe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 33
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %1293 to i64*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 1
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %1296 to i64*
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 15
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1299 to i64*
  %1300 = load i64, i64* %RBP.i234
  %1301 = sub i64 %1300, 24
  %1302 = load i64, i64* %PC.i232
  %1303 = add i64 %1302, 4
  store i64 %1303, i64* %PC.i232
  %1304 = inttoptr i64 %1301 to i64*
  %1305 = load i64, i64* %1304
  store i64 %1305, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_452fe1, %struct.Memory** %MEMORY
  %loadMem_452fe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 5
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 15
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RBP.i231
  %1316 = sub i64 %1315, 44
  %1317 = load i64, i64* %PC.i229
  %1318 = add i64 %1317, 4
  store i64 %1318, i64* %PC.i229
  %1319 = inttoptr i64 %1316 to i32*
  %1320 = load i32, i32* %1319
  %1321 = sext i32 %1320 to i64
  store i64 %1321, i64* %RCX.i230, align 8
  store %struct.Memory* %loadMem_452fe5, %struct.Memory** %MEMORY
  %loadMem_452fe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 1
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 5
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RCX.i227 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1332 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1331, i64 0, i64 2
  %YMM2.i228 = bitcast %union.VectorReg* %1332 to %"class.std::bitset"*
  %1333 = bitcast %"class.std::bitset"* %YMM2.i228 to i8*
  %1334 = load i64, i64* %RAX.i226
  %1335 = load i64, i64* %RCX.i227
  %1336 = mul i64 %1335, 4
  %1337 = add i64 %1336, %1334
  %1338 = load i64, i64* %PC.i225
  %1339 = add i64 %1338, 5
  store i64 %1339, i64* %PC.i225
  %1340 = inttoptr i64 %1337 to float*
  %1341 = load float, float* %1340
  %1342 = bitcast i8* %1333 to float*
  store float %1341, float* %1342, align 1
  %1343 = getelementptr inbounds i8, i8* %1333, i64 4
  %1344 = bitcast i8* %1343 to float*
  store float 0.000000e+00, float* %1344, align 1
  %1345 = getelementptr inbounds i8, i8* %1333, i64 8
  %1346 = bitcast i8* %1345 to float*
  store float 0.000000e+00, float* %1346, align 1
  %1347 = getelementptr inbounds i8, i8* %1333, i64 12
  %1348 = bitcast i8* %1347 to float*
  store float 0.000000e+00, float* %1348, align 1
  store %struct.Memory* %loadMem_452fe9, %struct.Memory** %MEMORY
  %loadMem_452fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 33
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 1
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 15
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RBP.i224
  %1359 = sub i64 %1358, 32
  %1360 = load i64, i64* %PC.i222
  %1361 = add i64 %1360, 4
  store i64 %1361, i64* %PC.i222
  %1362 = inttoptr i64 %1359 to i64*
  %1363 = load i64, i64* %1362
  store i64 %1363, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_452fee, %struct.Memory** %MEMORY
  %loadMem_452ff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 5
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %1369 to i64*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 15
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %1372 to i64*
  %1373 = load i64, i64* %RBP.i221
  %1374 = sub i64 %1373, 44
  %1375 = load i64, i64* %PC.i219
  %1376 = add i64 %1375, 4
  store i64 %1376, i64* %PC.i219
  %1377 = inttoptr i64 %1374 to i32*
  %1378 = load i32, i32* %1377
  %1379 = sext i32 %1378 to i64
  store i64 %1379, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_452ff2, %struct.Memory** %MEMORY
  %loadMem_452ff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 5
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1389, i64 0, i64 2
  %YMM2.i = bitcast %union.VectorReg* %1390 to %"class.std::bitset"*
  %1391 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1392 = bitcast %"class.std::bitset"* %YMM2.i to i8*
  %1393 = load i64, i64* %RAX.i217
  %1394 = load i64, i64* %RCX.i218
  %1395 = mul i64 %1394, 4
  %1396 = add i64 %1395, %1393
  %1397 = load i64, i64* %PC.i216
  %1398 = add i64 %1397, 5
  store i64 %1398, i64* %PC.i216
  %1399 = bitcast i8* %1392 to <2 x float>*
  %1400 = load <2 x float>, <2 x float>* %1399, align 1
  %1401 = getelementptr inbounds i8, i8* %1392, i64 8
  %1402 = bitcast i8* %1401 to <2 x i32>*
  %1403 = load <2 x i32>, <2 x i32>* %1402, align 1
  %1404 = inttoptr i64 %1396 to float*
  %1405 = load float, float* %1404
  %1406 = extractelement <2 x float> %1400, i32 0
  %1407 = fadd float %1406, %1405
  %1408 = bitcast i8* %1391 to float*
  store float %1407, float* %1408, align 1
  %1409 = bitcast <2 x float> %1400 to <2 x i32>
  %1410 = extractelement <2 x i32> %1409, i32 1
  %1411 = getelementptr inbounds i8, i8* %1391, i64 4
  %1412 = bitcast i8* %1411 to i32*
  store i32 %1410, i32* %1412, align 1
  %1413 = extractelement <2 x i32> %1403, i32 0
  %1414 = getelementptr inbounds i8, i8* %1391, i64 8
  %1415 = bitcast i8* %1414 to i32*
  store i32 %1413, i32* %1415, align 1
  %1416 = extractelement <2 x i32> %1403, i32 1
  %1417 = getelementptr inbounds i8, i8* %1391, i64 12
  %1418 = bitcast i8* %1417 to i32*
  store i32 %1416, i32* %1418, align 1
  store %struct.Memory* %loadMem_452ff6, %struct.Memory** %MEMORY
  %loadMem_452ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 33
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1421 to i64*
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1422, i64 0, i64 1
  %YMM1.i215 = bitcast %union.VectorReg* %1423 to %"class.std::bitset"*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1425 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1424, i64 0, i64 2
  %XMM2.i = bitcast %union.VectorReg* %1425 to %union.vec128_t*
  %1426 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %1427 = bitcast %"class.std::bitset"* %YMM1.i215 to i8*
  %1428 = bitcast %union.vec128_t* %XMM2.i to i8*
  %1429 = load i64, i64* %PC.i214
  %1430 = add i64 %1429, 4
  store i64 %1430, i64* %PC.i214
  %1431 = bitcast i8* %1427 to <2 x float>*
  %1432 = load <2 x float>, <2 x float>* %1431, align 1
  %1433 = getelementptr inbounds i8, i8* %1427, i64 8
  %1434 = bitcast i8* %1433 to <2 x i32>*
  %1435 = load <2 x i32>, <2 x i32>* %1434, align 1
  %1436 = bitcast i8* %1428 to <2 x float>*
  %1437 = load <2 x float>, <2 x float>* %1436, align 1
  %1438 = extractelement <2 x float> %1432, i32 0
  %1439 = extractelement <2 x float> %1437, i32 0
  %1440 = fdiv float %1438, %1439
  %1441 = bitcast i8* %1426 to float*
  store float %1440, float* %1441, align 1
  %1442 = bitcast <2 x float> %1432 to <2 x i32>
  %1443 = extractelement <2 x i32> %1442, i32 1
  %1444 = getelementptr inbounds i8, i8* %1426, i64 4
  %1445 = bitcast i8* %1444 to i32*
  store i32 %1443, i32* %1445, align 1
  %1446 = extractelement <2 x i32> %1435, i32 0
  %1447 = getelementptr inbounds i8, i8* %1426, i64 8
  %1448 = bitcast i8* %1447 to i32*
  store i32 %1446, i32* %1448, align 1
  %1449 = extractelement <2 x i32> %1435, i32 1
  %1450 = getelementptr inbounds i8, i8* %1426, i64 12
  %1451 = bitcast i8* %1450 to i32*
  store i32 %1449, i32* %1451, align 1
  store %struct.Memory* %loadMem_452ffb, %struct.Memory** %MEMORY
  %loadMem_452fff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1454 to i64*
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1456 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1455, i64 0, i64 0
  %YMM0.i212 = bitcast %union.VectorReg* %1456 to %"class.std::bitset"*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1458 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1457, i64 0, i64 1
  %XMM1.i213 = bitcast %union.VectorReg* %1458 to %union.vec128_t*
  %1459 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %1460 = bitcast %"class.std::bitset"* %YMM0.i212 to i8*
  %1461 = bitcast %union.vec128_t* %XMM1.i213 to i8*
  %1462 = load i64, i64* %PC.i211
  %1463 = add i64 %1462, 4
  store i64 %1463, i64* %PC.i211
  %1464 = bitcast i8* %1460 to <2 x float>*
  %1465 = load <2 x float>, <2 x float>* %1464, align 1
  %1466 = getelementptr inbounds i8, i8* %1460, i64 8
  %1467 = bitcast i8* %1466 to <2 x i32>*
  %1468 = load <2 x i32>, <2 x i32>* %1467, align 1
  %1469 = bitcast i8* %1461 to <2 x float>*
  %1470 = load <2 x float>, <2 x float>* %1469, align 1
  %1471 = extractelement <2 x float> %1465, i32 0
  %1472 = extractelement <2 x float> %1470, i32 0
  %1473 = fmul float %1471, %1472
  %1474 = bitcast i8* %1459 to float*
  store float %1473, float* %1474, align 1
  %1475 = bitcast <2 x float> %1465 to <2 x i32>
  %1476 = extractelement <2 x i32> %1475, i32 1
  %1477 = getelementptr inbounds i8, i8* %1459, i64 4
  %1478 = bitcast i8* %1477 to i32*
  store i32 %1476, i32* %1478, align 1
  %1479 = extractelement <2 x i32> %1468, i32 0
  %1480 = getelementptr inbounds i8, i8* %1459, i64 8
  %1481 = bitcast i8* %1480 to i32*
  store i32 %1479, i32* %1481, align 1
  %1482 = extractelement <2 x i32> %1468, i32 1
  %1483 = getelementptr inbounds i8, i8* %1459, i64 12
  %1484 = bitcast i8* %1483 to i32*
  store i32 %1482, i32* %1484, align 1
  store %struct.Memory* %loadMem_452fff, %struct.Memory** %MEMORY
  %loadMem_453003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 33
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 1
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 15
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %RBP.i210
  %1495 = sub i64 %1494, 40
  %1496 = load i64, i64* %PC.i208
  %1497 = add i64 %1496, 4
  store i64 %1497, i64* %PC.i208
  %1498 = inttoptr i64 %1495 to i64*
  %1499 = load i64, i64* %1498
  store i64 %1499, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_453003, %struct.Memory** %MEMORY
  %loadMem_453007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 33
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1502 to i64*
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 5
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 15
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %1508 to i64*
  %1509 = load i64, i64* %RBP.i207
  %1510 = sub i64 %1509, 52
  %1511 = load i64, i64* %PC.i205
  %1512 = add i64 %1511, 4
  store i64 %1512, i64* %PC.i205
  %1513 = inttoptr i64 %1510 to i32*
  %1514 = load i32, i32* %1513
  %1515 = sext i32 %1514 to i64
  store i64 %1515, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_453007, %struct.Memory** %MEMORY
  %loadMem_45300b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 33
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1518 to i64*
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 1
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 5
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RCX.i203 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1526 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1525, i64 0, i64 0
  %XMM0.i204 = bitcast %union.VectorReg* %1526 to %union.vec128_t*
  %1527 = load i64, i64* %RAX.i202
  %1528 = load i64, i64* %RCX.i203
  %1529 = mul i64 %1528, 4
  %1530 = add i64 %1529, %1527
  %1531 = bitcast %union.vec128_t* %XMM0.i204 to i8*
  %1532 = load i64, i64* %PC.i201
  %1533 = add i64 %1532, 5
  store i64 %1533, i64* %PC.i201
  %1534 = bitcast i8* %1531 to <2 x float>*
  %1535 = load <2 x float>, <2 x float>* %1534, align 1
  %1536 = extractelement <2 x float> %1535, i32 0
  %1537 = inttoptr i64 %1530 to float*
  store float %1536, float* %1537
  store %struct.Memory* %loadMem_45300b, %struct.Memory** %MEMORY
  %loadMem_453010 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %PC.i200
  %1542 = add i64 %1541, 253
  %1543 = load i64, i64* %PC.i200
  %1544 = add i64 %1543, 5
  store i64 %1544, i64* %PC.i200
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1542, i64* %1545, align 8
  store %struct.Memory* %loadMem_453010, %struct.Memory** %MEMORY
  br label %block_.L_45310d

block_.L_453015:                                  ; preds = %routine_ucomisd__xmm0___xmm1.exit
  %loadMem_453015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 33
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 1
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 15
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %1554 to i64*
  %1555 = load i64, i64* %RBP.i199
  %1556 = sub i64 %1555, 48
  %1557 = load i64, i64* %PC.i197
  %1558 = add i64 %1557, 3
  store i64 %1558, i64* %PC.i197
  %1559 = inttoptr i64 %1556 to i32*
  %1560 = load i32, i32* %1559
  %1561 = zext i32 %1560 to i64
  store i64 %1561, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_453015, %struct.Memory** %MEMORY
  %loadMem_453018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 33
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 1
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %EAX.i195 = bitcast %union.anon* %1567 to i32*
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 15
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %1570 to i64*
  %1571 = load i32, i32* %EAX.i195
  %1572 = zext i32 %1571 to i64
  %1573 = load i64, i64* %RBP.i196
  %1574 = sub i64 %1573, 12
  %1575 = load i64, i64* %PC.i194
  %1576 = add i64 %1575, 3
  store i64 %1576, i64* %PC.i194
  %1577 = inttoptr i64 %1574 to i32*
  %1578 = load i32, i32* %1577
  %1579 = sub i32 %1571, %1578
  %1580 = icmp ult i32 %1571, %1578
  %1581 = zext i1 %1580 to i8
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1581, i8* %1582, align 1
  %1583 = and i32 %1579, 255
  %1584 = call i32 @llvm.ctpop.i32(i32 %1583)
  %1585 = trunc i32 %1584 to i8
  %1586 = and i8 %1585, 1
  %1587 = xor i8 %1586, 1
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1587, i8* %1588, align 1
  %1589 = xor i32 %1578, %1571
  %1590 = xor i32 %1589, %1579
  %1591 = lshr i32 %1590, 4
  %1592 = trunc i32 %1591 to i8
  %1593 = and i8 %1592, 1
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1593, i8* %1594, align 1
  %1595 = icmp eq i32 %1579, 0
  %1596 = zext i1 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1596, i8* %1597, align 1
  %1598 = lshr i32 %1579, 31
  %1599 = trunc i32 %1598 to i8
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1599, i8* %1600, align 1
  %1601 = lshr i32 %1571, 31
  %1602 = lshr i32 %1578, 31
  %1603 = xor i32 %1602, %1601
  %1604 = xor i32 %1598, %1601
  %1605 = add i32 %1604, %1603
  %1606 = icmp eq i32 %1605, 2
  %1607 = zext i1 %1606 to i8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1607, i8* %1608, align 1
  store %struct.Memory* %loadMem_453018, %struct.Memory** %MEMORY
  %loadMem_45301b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %PC.i193
  %1613 = add i64 %1612, 41
  %1614 = load i64, i64* %PC.i193
  %1615 = add i64 %1614, 6
  %1616 = load i64, i64* %PC.i193
  %1617 = add i64 %1616, 6
  store i64 %1617, i64* %PC.i193
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1619 = load i8, i8* %1618, align 1
  %1620 = icmp ne i8 %1619, 0
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1622 = load i8, i8* %1621, align 1
  %1623 = icmp ne i8 %1622, 0
  %1624 = xor i1 %1620, %1623
  %1625 = zext i1 %1624 to i8
  store i8 %1625, i8* %BRANCH_TAKEN, align 1
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1627 = select i1 %1624, i64 %1613, i64 %1615
  store i64 %1627, i64* %1626, align 8
  store %struct.Memory* %loadMem_45301b, %struct.Memory** %MEMORY
  %loadBr_45301b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45301b = icmp eq i8 %loadBr_45301b, 1
  br i1 %cmpBr_45301b, label %block_.L_453044, label %block_453021

block_453021:                                     ; preds = %block_.L_453015
  %loadMem_453021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1629 = getelementptr inbounds %struct.GPR, %struct.GPR* %1628, i32 0, i32 33
  %1630 = getelementptr inbounds %struct.Reg, %struct.Reg* %1629, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1630 to i64*
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1632 = getelementptr inbounds %struct.GPR, %struct.GPR* %1631, i32 0, i32 1
  %1633 = getelementptr inbounds %struct.Reg, %struct.Reg* %1632, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %1633 to i64*
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 15
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %1636 to i64*
  %1637 = load i64, i64* %RBP.i192
  %1638 = sub i64 %1637, 8
  %1639 = load i64, i64* %PC.i190
  %1640 = add i64 %1639, 4
  store i64 %1640, i64* %PC.i190
  %1641 = inttoptr i64 %1638 to i64*
  %1642 = load i64, i64* %1641
  store i64 %1642, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_453021, %struct.Memory** %MEMORY
  %loadMem_453025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1645 to i64*
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1647 = getelementptr inbounds %struct.GPR, %struct.GPR* %1646, i32 0, i32 5
  %1648 = getelementptr inbounds %struct.Reg, %struct.Reg* %1647, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %1648 to i64*
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 15
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %1651 to i64*
  %1652 = load i64, i64* %RBP.i189
  %1653 = sub i64 %1652, 48
  %1654 = load i64, i64* %PC.i187
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC.i187
  %1656 = inttoptr i64 %1653 to i32*
  %1657 = load i32, i32* %1656
  %1658 = zext i32 %1657 to i64
  store i64 %1658, i64* %RCX.i188, align 8
  store %struct.Memory* %loadMem_453025, %struct.Memory** %MEMORY
  %loadMem_453028 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 5
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %1664 to i64*
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 15
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %1667 to i64*
  %1668 = load i64, i64* %RCX.i185
  %1669 = load i64, i64* %RBP.i186
  %1670 = sub i64 %1669, 12
  %1671 = load i64, i64* %PC.i184
  %1672 = add i64 %1671, 3
  store i64 %1672, i64* %PC.i184
  %1673 = trunc i64 %1668 to i32
  %1674 = inttoptr i64 %1670 to i32*
  %1675 = load i32, i32* %1674
  %1676 = sub i32 %1673, %1675
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RCX.i185, align 8
  %1678 = icmp ult i32 %1673, %1675
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1679, i8* %1680, align 1
  %1681 = and i32 %1676, 255
  %1682 = call i32 @llvm.ctpop.i32(i32 %1681)
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1685, i8* %1686, align 1
  %1687 = xor i32 %1675, %1673
  %1688 = xor i32 %1687, %1676
  %1689 = lshr i32 %1688, 4
  %1690 = trunc i32 %1689 to i8
  %1691 = and i8 %1690, 1
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1691, i8* %1692, align 1
  %1693 = icmp eq i32 %1676, 0
  %1694 = zext i1 %1693 to i8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1694, i8* %1695, align 1
  %1696 = lshr i32 %1676, 31
  %1697 = trunc i32 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1697, i8* %1698, align 1
  %1699 = lshr i32 %1673, 31
  %1700 = lshr i32 %1675, 31
  %1701 = xor i32 %1700, %1699
  %1702 = xor i32 %1696, %1699
  %1703 = add i32 %1702, %1701
  %1704 = icmp eq i32 %1703, 2
  %1705 = zext i1 %1704 to i8
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1705, i8* %1706, align 1
  store %struct.Memory* %loadMem_453028, %struct.Memory** %MEMORY
  %loadMem_45302b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 5
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %ECX.i182 = bitcast %union.anon* %1712 to i32*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 7
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RDX.i183 = bitcast %union.anon* %1715 to i64*
  %1716 = load i32, i32* %ECX.i182
  %1717 = zext i32 %1716 to i64
  %1718 = load i64, i64* %PC.i181
  %1719 = add i64 %1718, 3
  store i64 %1719, i64* %PC.i181
  %1720 = shl i64 %1717, 32
  %1721 = ashr exact i64 %1720, 32
  store i64 %1721, i64* %RDX.i183, align 8
  store %struct.Memory* %loadMem_45302b, %struct.Memory** %MEMORY
  %loadMem_45302e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 7
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RDX.i180 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RDX.i180
  %1729 = load i64, i64* %PC.i179
  %1730 = add i64 %1729, 4
  store i64 %1730, i64* %PC.i179
  %1731 = sext i64 %1728 to i128
  %1732 = and i128 %1731, -18446744073709551616
  %1733 = zext i64 %1728 to i128
  %1734 = or i128 %1732, %1733
  %1735 = mul i128 40, %1734
  %1736 = trunc i128 %1735 to i64
  store i64 %1736, i64* %RDX.i180, align 8
  %1737 = sext i64 %1736 to i128
  %1738 = icmp ne i128 %1737, %1735
  %1739 = zext i1 %1738 to i8
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1739, i8* %1740, align 1
  %1741 = trunc i128 %1735 to i32
  %1742 = and i32 %1741, 255
  %1743 = call i32 @llvm.ctpop.i32(i32 %1742)
  %1744 = trunc i32 %1743 to i8
  %1745 = and i8 %1744, 1
  %1746 = xor i8 %1745, 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1746, i8* %1747, align 1
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1748, align 1
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1749, align 1
  %1750 = lshr i64 %1736, 63
  %1751 = trunc i64 %1750 to i8
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1751, i8* %1752, align 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1739, i8* %1753, align 1
  store %struct.Memory* %loadMem_45302e, %struct.Memory** %MEMORY
  %loadMem_453032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 1
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 7
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %RDX.i178 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %RAX.i177
  %1764 = load i64, i64* %RDX.i178
  %1765 = load i64, i64* %PC.i176
  %1766 = add i64 %1765, 3
  store i64 %1766, i64* %PC.i176
  %1767 = add i64 %1764, %1763
  store i64 %1767, i64* %RAX.i177, align 8
  %1768 = icmp ult i64 %1767, %1763
  %1769 = icmp ult i64 %1767, %1764
  %1770 = or i1 %1768, %1769
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1771, i8* %1772, align 1
  %1773 = trunc i64 %1767 to i32
  %1774 = and i32 %1773, 255
  %1775 = call i32 @llvm.ctpop.i32(i32 %1774)
  %1776 = trunc i32 %1775 to i8
  %1777 = and i8 %1776, 1
  %1778 = xor i8 %1777, 1
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1778, i8* %1779, align 1
  %1780 = xor i64 %1764, %1763
  %1781 = xor i64 %1780, %1767
  %1782 = lshr i64 %1781, 4
  %1783 = trunc i64 %1782 to i8
  %1784 = and i8 %1783, 1
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1784, i8* %1785, align 1
  %1786 = icmp eq i64 %1767, 0
  %1787 = zext i1 %1786 to i8
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1787, i8* %1788, align 1
  %1789 = lshr i64 %1767, 63
  %1790 = trunc i64 %1789 to i8
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1790, i8* %1791, align 1
  %1792 = lshr i64 %1763, 63
  %1793 = lshr i64 %1764, 63
  %1794 = xor i64 %1789, %1792
  %1795 = xor i64 %1789, %1793
  %1796 = add i64 %1794, %1795
  %1797 = icmp eq i64 %1796, 2
  %1798 = zext i1 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1798, i8* %1799, align 1
  store %struct.Memory* %loadMem_453032, %struct.Memory** %MEMORY
  %loadMem_453035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 33
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 1
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RAX.i174 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1807 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1806, i64 0, i64 0
  %YMM0.i175 = bitcast %union.VectorReg* %1807 to %"class.std::bitset"*
  %1808 = bitcast %"class.std::bitset"* %YMM0.i175 to i8*
  %1809 = load i64, i64* %RAX.i174
  %1810 = add i64 %1809, 32
  %1811 = load i64, i64* %PC.i173
  %1812 = add i64 %1811, 5
  store i64 %1812, i64* %PC.i173
  %1813 = inttoptr i64 %1810 to i32*
  %1814 = load i32, i32* %1813
  %1815 = sitofp i32 %1814 to double
  %1816 = bitcast i8* %1808 to double*
  store double %1815, double* %1816, align 1
  store %struct.Memory* %loadMem_453035, %struct.Memory** %MEMORY
  %loadMem_45303a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1819 to i64*
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1821 = getelementptr inbounds %struct.GPR, %struct.GPR* %1820, i32 0, i32 15
  %1822 = getelementptr inbounds %struct.Reg, %struct.Reg* %1821, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %1822 to i64*
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1824 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1823, i64 0, i64 0
  %XMM0.i172 = bitcast %union.VectorReg* %1824 to %union.vec128_t*
  %1825 = load i64, i64* %RBP.i171
  %1826 = sub i64 %1825, 72
  %1827 = bitcast %union.vec128_t* %XMM0.i172 to i8*
  %1828 = load i64, i64* %PC.i170
  %1829 = add i64 %1828, 5
  store i64 %1829, i64* %PC.i170
  %1830 = bitcast i8* %1827 to double*
  %1831 = load double, double* %1830, align 1
  %1832 = inttoptr i64 %1826 to double*
  store double %1831, double* %1832
  store %struct.Memory* %loadMem_45303a, %struct.Memory** %MEMORY
  %loadMem_45303f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1834 = getelementptr inbounds %struct.GPR, %struct.GPR* %1833, i32 0, i32 33
  %1835 = getelementptr inbounds %struct.Reg, %struct.Reg* %1834, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1835 to i64*
  %1836 = load i64, i64* %PC.i169
  %1837 = add i64 %1836, 23
  %1838 = load i64, i64* %PC.i169
  %1839 = add i64 %1838, 5
  store i64 %1839, i64* %PC.i169
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1837, i64* %1840, align 8
  store %struct.Memory* %loadMem_45303f, %struct.Memory** %MEMORY
  br label %block_.L_453056

block_.L_453044:                                  ; preds = %block_.L_453015
  %loadMem_453044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 33
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1843 to i64*
  %1844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1845 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1844, i64 0, i64 0
  %YMM0.i168 = bitcast %union.VectorReg* %1845 to %"class.std::bitset"*
  %1846 = bitcast %"class.std::bitset"* %YMM0.i168 to i8*
  %1847 = load i64, i64* %PC.i167
  %1848 = add i64 %1847, ptrtoint (%G_0x1794__rip__type* @G_0x1794__rip_ to i64)
  %1849 = load i64, i64* %PC.i167
  %1850 = add i64 %1849, 8
  store i64 %1850, i64* %PC.i167
  %1851 = inttoptr i64 %1848 to double*
  %1852 = load double, double* %1851
  %1853 = bitcast i8* %1846 to double*
  store double %1852, double* %1853, align 1
  %1854 = getelementptr inbounds i8, i8* %1846, i64 8
  %1855 = bitcast i8* %1854 to double*
  store double 0.000000e+00, double* %1855, align 1
  store %struct.Memory* %loadMem_453044, %struct.Memory** %MEMORY
  %loadMem_45304c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 15
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1863 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1862, i64 0, i64 0
  %XMM0.i166 = bitcast %union.VectorReg* %1863 to %union.vec128_t*
  %1864 = load i64, i64* %RBP.i165
  %1865 = sub i64 %1864, 72
  %1866 = bitcast %union.vec128_t* %XMM0.i166 to i8*
  %1867 = load i64, i64* %PC.i164
  %1868 = add i64 %1867, 5
  store i64 %1868, i64* %PC.i164
  %1869 = bitcast i8* %1866 to double*
  %1870 = load double, double* %1869, align 1
  %1871 = inttoptr i64 %1865 to double*
  store double %1870, double* %1871
  store %struct.Memory* %loadMem_45304c, %struct.Memory** %MEMORY
  %loadMem_453051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 33
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1874 to i64*
  %1875 = load i64, i64* %PC.i163
  %1876 = add i64 %1875, 5
  %1877 = load i64, i64* %PC.i163
  %1878 = add i64 %1877, 5
  store i64 %1878, i64* %PC.i163
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1876, i64* %1879, align 8
  store %struct.Memory* %loadMem_453051, %struct.Memory** %MEMORY
  br label %block_.L_453056

block_.L_453056:                                  ; preds = %block_.L_453044, %block_453021
  %loadMem_453056 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 15
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1886, i64 0, i64 0
  %YMM0.i162 = bitcast %union.VectorReg* %1887 to %"class.std::bitset"*
  %1888 = bitcast %"class.std::bitset"* %YMM0.i162 to i8*
  %1889 = load i64, i64* %RBP.i161
  %1890 = sub i64 %1889, 72
  %1891 = load i64, i64* %PC.i160
  %1892 = add i64 %1891, 5
  store i64 %1892, i64* %PC.i160
  %1893 = inttoptr i64 %1890 to double*
  %1894 = load double, double* %1893
  %1895 = bitcast i8* %1888 to double*
  store double %1894, double* %1895, align 1
  %1896 = getelementptr inbounds i8, i8* %1888, i64 8
  %1897 = bitcast i8* %1896 to double*
  store double 0.000000e+00, double* %1897, align 1
  store %struct.Memory* %loadMem_453056, %struct.Memory** %MEMORY
  %loadMem_45305b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1902 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1901, i64 0, i64 0
  %YMM0.i158 = bitcast %union.VectorReg* %1902 to %"class.std::bitset"*
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1904 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1903, i64 0, i64 0
  %XMM0.i159 = bitcast %union.VectorReg* %1904 to %union.vec128_t*
  %1905 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %1906 = bitcast %union.vec128_t* %XMM0.i159 to i8*
  %1907 = load i64, i64* %PC.i157
  %1908 = add i64 %1907, 4
  store i64 %1908, i64* %PC.i157
  %1909 = bitcast i8* %1905 to <2 x i32>*
  %1910 = load <2 x i32>, <2 x i32>* %1909, align 1
  %1911 = getelementptr inbounds i8, i8* %1905, i64 8
  %1912 = bitcast i8* %1911 to <2 x i32>*
  %1913 = load <2 x i32>, <2 x i32>* %1912, align 1
  %1914 = bitcast i8* %1906 to double*
  %1915 = load double, double* %1914, align 1
  %1916 = fptrunc double %1915 to float
  %1917 = bitcast i8* %1905 to float*
  store float %1916, float* %1917, align 1
  %1918 = extractelement <2 x i32> %1910, i32 1
  %1919 = getelementptr inbounds i8, i8* %1905, i64 4
  %1920 = bitcast i8* %1919 to i32*
  store i32 %1918, i32* %1920, align 1
  %1921 = extractelement <2 x i32> %1913, i32 0
  %1922 = bitcast i8* %1911 to i32*
  store i32 %1921, i32* %1922, align 1
  %1923 = extractelement <2 x i32> %1913, i32 1
  %1924 = getelementptr inbounds i8, i8* %1905, i64 12
  %1925 = bitcast i8* %1924 to i32*
  store i32 %1923, i32* %1925, align 1
  store %struct.Memory* %loadMem_45305b, %struct.Memory** %MEMORY
  %loadMem_45305f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 15
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1933 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1932, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %1933 to %union.vec128_t*
  %1934 = load i64, i64* %RBP.i155
  %1935 = sub i64 %1934, 56
  %1936 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %1937 = load i64, i64* %PC.i154
  %1938 = add i64 %1937, 5
  store i64 %1938, i64* %PC.i154
  %1939 = bitcast i8* %1936 to <2 x float>*
  %1940 = load <2 x float>, <2 x float>* %1939, align 1
  %1941 = extractelement <2 x float> %1940, i32 0
  %1942 = inttoptr i64 %1935 to float*
  store float %1941, float* %1942
  store %struct.Memory* %loadMem_45305f, %struct.Memory** %MEMORY
  %loadMem_453064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1945 to i64*
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 1
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 15
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1951 to i64*
  %1952 = load i64, i64* %RBP.i153
  %1953 = sub i64 %1952, 52
  %1954 = load i64, i64* %PC.i151
  %1955 = add i64 %1954, 3
  store i64 %1955, i64* %PC.i151
  %1956 = inttoptr i64 %1953 to i32*
  %1957 = load i32, i32* %1956
  %1958 = zext i32 %1957 to i64
  store i64 %1958, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_453064, %struct.Memory** %MEMORY
  %loadMem_453067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1960 = getelementptr inbounds %struct.GPR, %struct.GPR* %1959, i32 0, i32 33
  %1961 = getelementptr inbounds %struct.Reg, %struct.Reg* %1960, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1961 to i64*
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1963 = getelementptr inbounds %struct.GPR, %struct.GPR* %1962, i32 0, i32 1
  %1964 = getelementptr inbounds %struct.Reg, %struct.Reg* %1963, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %1964 to i32*
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1966 = getelementptr inbounds %struct.GPR, %struct.GPR* %1965, i32 0, i32 15
  %1967 = getelementptr inbounds %struct.Reg, %struct.Reg* %1966, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1967 to i64*
  %1968 = load i32, i32* %EAX.i149
  %1969 = zext i32 %1968 to i64
  %1970 = load i64, i64* %RBP.i150
  %1971 = sub i64 %1970, 12
  %1972 = load i64, i64* %PC.i148
  %1973 = add i64 %1972, 3
  store i64 %1973, i64* %PC.i148
  %1974 = inttoptr i64 %1971 to i32*
  %1975 = load i32, i32* %1974
  %1976 = sub i32 %1968, %1975
  %1977 = icmp ult i32 %1968, %1975
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1978, i8* %1979, align 1
  %1980 = and i32 %1976, 255
  %1981 = call i32 @llvm.ctpop.i32(i32 %1980)
  %1982 = trunc i32 %1981 to i8
  %1983 = and i8 %1982, 1
  %1984 = xor i8 %1983, 1
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1984, i8* %1985, align 1
  %1986 = xor i32 %1975, %1968
  %1987 = xor i32 %1986, %1976
  %1988 = lshr i32 %1987, 4
  %1989 = trunc i32 %1988 to i8
  %1990 = and i8 %1989, 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1990, i8* %1991, align 1
  %1992 = icmp eq i32 %1976, 0
  %1993 = zext i1 %1992 to i8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1993, i8* %1994, align 1
  %1995 = lshr i32 %1976, 31
  %1996 = trunc i32 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1996, i8* %1997, align 1
  %1998 = lshr i32 %1968, 31
  %1999 = lshr i32 %1975, 31
  %2000 = xor i32 %1999, %1998
  %2001 = xor i32 %1995, %1998
  %2002 = add i32 %2001, %2000
  %2003 = icmp eq i32 %2002, 2
  %2004 = zext i1 %2003 to i8
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2004, i8* %2005, align 1
  store %struct.Memory* %loadMem_453067, %struct.Memory** %MEMORY
  %loadMem_45306a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %PC.i147
  %2010 = add i64 %2009, 41
  %2011 = load i64, i64* %PC.i147
  %2012 = add i64 %2011, 6
  %2013 = load i64, i64* %PC.i147
  %2014 = add i64 %2013, 6
  store i64 %2014, i64* %PC.i147
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2016 = load i8, i8* %2015, align 1
  %2017 = icmp ne i8 %2016, 0
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2019 = load i8, i8* %2018, align 1
  %2020 = icmp ne i8 %2019, 0
  %2021 = xor i1 %2017, %2020
  %2022 = zext i1 %2021 to i8
  store i8 %2022, i8* %BRANCH_TAKEN, align 1
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2024 = select i1 %2021, i64 %2010, i64 %2012
  store i64 %2024, i64* %2023, align 8
  store %struct.Memory* %loadMem_45306a, %struct.Memory** %MEMORY
  %loadBr_45306a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45306a = icmp eq i8 %loadBr_45306a, 1
  br i1 %cmpBr_45306a, label %block_.L_453093, label %block_453070

block_453070:                                     ; preds = %block_.L_453056
  %loadMem_453070 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 33
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 1
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 15
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %2033 to i64*
  %2034 = load i64, i64* %RBP.i146
  %2035 = sub i64 %2034, 8
  %2036 = load i64, i64* %PC.i144
  %2037 = add i64 %2036, 4
  store i64 %2037, i64* %PC.i144
  %2038 = inttoptr i64 %2035 to i64*
  %2039 = load i64, i64* %2038
  store i64 %2039, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_453070, %struct.Memory** %MEMORY
  %loadMem_453074 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 5
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %2045 to i64*
  %2046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2047 = getelementptr inbounds %struct.GPR, %struct.GPR* %2046, i32 0, i32 15
  %2048 = getelementptr inbounds %struct.Reg, %struct.Reg* %2047, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %2048 to i64*
  %2049 = load i64, i64* %RBP.i143
  %2050 = sub i64 %2049, 52
  %2051 = load i64, i64* %PC.i141
  %2052 = add i64 %2051, 3
  store i64 %2052, i64* %PC.i141
  %2053 = inttoptr i64 %2050 to i32*
  %2054 = load i32, i32* %2053
  %2055 = zext i32 %2054 to i64
  store i64 %2055, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_453074, %struct.Memory** %MEMORY
  %loadMem_453077 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2058 to i64*
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 5
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 15
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %2064 to i64*
  %2065 = load i64, i64* %RCX.i139
  %2066 = load i64, i64* %RBP.i140
  %2067 = sub i64 %2066, 12
  %2068 = load i64, i64* %PC.i138
  %2069 = add i64 %2068, 3
  store i64 %2069, i64* %PC.i138
  %2070 = trunc i64 %2065 to i32
  %2071 = inttoptr i64 %2067 to i32*
  %2072 = load i32, i32* %2071
  %2073 = sub i32 %2070, %2072
  %2074 = zext i32 %2073 to i64
  store i64 %2074, i64* %RCX.i139, align 8
  %2075 = icmp ult i32 %2070, %2072
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2076, i8* %2077, align 1
  %2078 = and i32 %2073, 255
  %2079 = call i32 @llvm.ctpop.i32(i32 %2078)
  %2080 = trunc i32 %2079 to i8
  %2081 = and i8 %2080, 1
  %2082 = xor i8 %2081, 1
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2082, i8* %2083, align 1
  %2084 = xor i32 %2072, %2070
  %2085 = xor i32 %2084, %2073
  %2086 = lshr i32 %2085, 4
  %2087 = trunc i32 %2086 to i8
  %2088 = and i8 %2087, 1
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2088, i8* %2089, align 1
  %2090 = icmp eq i32 %2073, 0
  %2091 = zext i1 %2090 to i8
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2091, i8* %2092, align 1
  %2093 = lshr i32 %2073, 31
  %2094 = trunc i32 %2093 to i8
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2094, i8* %2095, align 1
  %2096 = lshr i32 %2070, 31
  %2097 = lshr i32 %2072, 31
  %2098 = xor i32 %2097, %2096
  %2099 = xor i32 %2093, %2096
  %2100 = add i32 %2099, %2098
  %2101 = icmp eq i32 %2100, 2
  %2102 = zext i1 %2101 to i8
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2102, i8* %2103, align 1
  store %struct.Memory* %loadMem_453077, %struct.Memory** %MEMORY
  %loadMem_45307a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 5
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2109 to i32*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 7
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %2112 to i64*
  %2113 = load i32, i32* %ECX.i
  %2114 = zext i32 %2113 to i64
  %2115 = load i64, i64* %PC.i136
  %2116 = add i64 %2115, 3
  store i64 %2116, i64* %PC.i136
  %2117 = shl i64 %2114, 32
  %2118 = ashr exact i64 %2117, 32
  store i64 %2118, i64* %RDX.i137, align 8
  store %struct.Memory* %loadMem_45307a, %struct.Memory** %MEMORY
  %loadMem_45307d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 7
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %RDX.i135
  %2126 = load i64, i64* %PC.i134
  %2127 = add i64 %2126, 4
  store i64 %2127, i64* %PC.i134
  %2128 = sext i64 %2125 to i128
  %2129 = and i128 %2128, -18446744073709551616
  %2130 = zext i64 %2125 to i128
  %2131 = or i128 %2129, %2130
  %2132 = mul i128 40, %2131
  %2133 = trunc i128 %2132 to i64
  store i64 %2133, i64* %RDX.i135, align 8
  %2134 = sext i64 %2133 to i128
  %2135 = icmp ne i128 %2134, %2132
  %2136 = zext i1 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2136, i8* %2137, align 1
  %2138 = trunc i128 %2132 to i32
  %2139 = and i32 %2138, 255
  %2140 = call i32 @llvm.ctpop.i32(i32 %2139)
  %2141 = trunc i32 %2140 to i8
  %2142 = and i8 %2141, 1
  %2143 = xor i8 %2142, 1
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2143, i8* %2144, align 1
  %2145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2145, align 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2146, align 1
  %2147 = lshr i64 %2133, 63
  %2148 = trunc i64 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2148, i8* %2149, align 1
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2136, i8* %2150, align 1
  store %struct.Memory* %loadMem_45307d, %struct.Memory** %MEMORY
  %loadMem_453081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 33
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 7
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RDX.i133 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %RAX.i132
  %2161 = load i64, i64* %RDX.i133
  %2162 = load i64, i64* %PC.i131
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i131
  %2164 = add i64 %2161, %2160
  store i64 %2164, i64* %RAX.i132, align 8
  %2165 = icmp ult i64 %2164, %2160
  %2166 = icmp ult i64 %2164, %2161
  %2167 = or i1 %2165, %2166
  %2168 = zext i1 %2167 to i8
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2168, i8* %2169, align 1
  %2170 = trunc i64 %2164 to i32
  %2171 = and i32 %2170, 255
  %2172 = call i32 @llvm.ctpop.i32(i32 %2171)
  %2173 = trunc i32 %2172 to i8
  %2174 = and i8 %2173, 1
  %2175 = xor i8 %2174, 1
  %2176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2175, i8* %2176, align 1
  %2177 = xor i64 %2161, %2160
  %2178 = xor i64 %2177, %2164
  %2179 = lshr i64 %2178, 4
  %2180 = trunc i64 %2179 to i8
  %2181 = and i8 %2180, 1
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2181, i8* %2182, align 1
  %2183 = icmp eq i64 %2164, 0
  %2184 = zext i1 %2183 to i8
  %2185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2184, i8* %2185, align 1
  %2186 = lshr i64 %2164, 63
  %2187 = trunc i64 %2186 to i8
  %2188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2187, i8* %2188, align 1
  %2189 = lshr i64 %2160, 63
  %2190 = lshr i64 %2161, 63
  %2191 = xor i64 %2186, %2189
  %2192 = xor i64 %2186, %2190
  %2193 = add i64 %2191, %2192
  %2194 = icmp eq i64 %2193, 2
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2195, i8* %2196, align 1
  store %struct.Memory* %loadMem_453081, %struct.Memory** %MEMORY
  %loadMem_453084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 1
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %2202 to i64*
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2203, i64 0, i64 0
  %YMM0.i130 = bitcast %union.VectorReg* %2204 to %"class.std::bitset"*
  %2205 = bitcast %"class.std::bitset"* %YMM0.i130 to i8*
  %2206 = load i64, i64* %RAX.i129
  %2207 = add i64 %2206, 32
  %2208 = load i64, i64* %PC.i128
  %2209 = add i64 %2208, 5
  store i64 %2209, i64* %PC.i128
  %2210 = inttoptr i64 %2207 to i32*
  %2211 = load i32, i32* %2210
  %2212 = sitofp i32 %2211 to double
  %2213 = bitcast i8* %2205 to double*
  store double %2212, double* %2213, align 1
  store %struct.Memory* %loadMem_453084, %struct.Memory** %MEMORY
  %loadMem_453089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2215 = getelementptr inbounds %struct.GPR, %struct.GPR* %2214, i32 0, i32 33
  %2216 = getelementptr inbounds %struct.Reg, %struct.Reg* %2215, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2216 to i64*
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 15
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2221 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2220, i64 0, i64 0
  %XMM0.i127 = bitcast %union.VectorReg* %2221 to %union.vec128_t*
  %2222 = load i64, i64* %RBP.i126
  %2223 = sub i64 %2222, 80
  %2224 = bitcast %union.vec128_t* %XMM0.i127 to i8*
  %2225 = load i64, i64* %PC.i125
  %2226 = add i64 %2225, 5
  store i64 %2226, i64* %PC.i125
  %2227 = bitcast i8* %2224 to double*
  %2228 = load double, double* %2227, align 1
  %2229 = inttoptr i64 %2223 to double*
  store double %2228, double* %2229
  store %struct.Memory* %loadMem_453089, %struct.Memory** %MEMORY
  %loadMem_45308e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 33
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %2232 to i64*
  %2233 = load i64, i64* %PC.i124
  %2234 = add i64 %2233, 23
  %2235 = load i64, i64* %PC.i124
  %2236 = add i64 %2235, 5
  store i64 %2236, i64* %PC.i124
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2234, i64* %2237, align 8
  store %struct.Memory* %loadMem_45308e, %struct.Memory** %MEMORY
  br label %block_.L_4530a5

block_.L_453093:                                  ; preds = %block_.L_453056
  %loadMem_453093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 33
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2241, i64 0, i64 0
  %YMM0.i123 = bitcast %union.VectorReg* %2242 to %"class.std::bitset"*
  %2243 = bitcast %"class.std::bitset"* %YMM0.i123 to i8*
  %2244 = load i64, i64* %PC.i122
  %2245 = add i64 %2244, ptrtoint (%G_0x1745__rip__type* @G_0x1745__rip_ to i64)
  %2246 = load i64, i64* %PC.i122
  %2247 = add i64 %2246, 8
  store i64 %2247, i64* %PC.i122
  %2248 = inttoptr i64 %2245 to double*
  %2249 = load double, double* %2248
  %2250 = bitcast i8* %2243 to double*
  store double %2249, double* %2250, align 1
  %2251 = getelementptr inbounds i8, i8* %2243, i64 8
  %2252 = bitcast i8* %2251 to double*
  store double 0.000000e+00, double* %2252, align 1
  store %struct.Memory* %loadMem_453093, %struct.Memory** %MEMORY
  %loadMem_45309b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 33
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2255 to i64*
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 15
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2259, i64 0, i64 0
  %XMM0.i121 = bitcast %union.VectorReg* %2260 to %union.vec128_t*
  %2261 = load i64, i64* %RBP.i120
  %2262 = sub i64 %2261, 80
  %2263 = bitcast %union.vec128_t* %XMM0.i121 to i8*
  %2264 = load i64, i64* %PC.i119
  %2265 = add i64 %2264, 5
  store i64 %2265, i64* %PC.i119
  %2266 = bitcast i8* %2263 to double*
  %2267 = load double, double* %2266, align 1
  %2268 = inttoptr i64 %2262 to double*
  store double %2267, double* %2268
  store %struct.Memory* %loadMem_45309b, %struct.Memory** %MEMORY
  %loadMem_4530a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 33
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %PC.i118
  %2273 = add i64 %2272, 5
  %2274 = load i64, i64* %PC.i118
  %2275 = add i64 %2274, 5
  store i64 %2275, i64* %PC.i118
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2273, i64* %2276, align 8
  store %struct.Memory* %loadMem_4530a0, %struct.Memory** %MEMORY
  br label %block_.L_4530a5

block_.L_4530a5:                                  ; preds = %block_.L_453093, %block_453070
  %loadMem_4530a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2278 = getelementptr inbounds %struct.GPR, %struct.GPR* %2277, i32 0, i32 33
  %2279 = getelementptr inbounds %struct.Reg, %struct.Reg* %2278, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2279 to i64*
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 15
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2284 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2283, i64 0, i64 0
  %YMM0.i117 = bitcast %union.VectorReg* %2284 to %"class.std::bitset"*
  %2285 = bitcast %"class.std::bitset"* %YMM0.i117 to i8*
  %2286 = load i64, i64* %RBP.i116
  %2287 = sub i64 %2286, 80
  %2288 = load i64, i64* %PC.i115
  %2289 = add i64 %2288, 5
  store i64 %2289, i64* %PC.i115
  %2290 = inttoptr i64 %2287 to double*
  %2291 = load double, double* %2290
  %2292 = bitcast i8* %2285 to double*
  store double %2291, double* %2292, align 1
  %2293 = getelementptr inbounds i8, i8* %2285, i64 8
  %2294 = bitcast i8* %2293 to double*
  store double 0.000000e+00, double* %2294, align 1
  store %struct.Memory* %loadMem_4530a5, %struct.Memory** %MEMORY
  %loadMem_4530aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 33
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2297 to i64*
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2299 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2298, i64 0, i64 0
  %YMM0.i113 = bitcast %union.VectorReg* %2299 to %"class.std::bitset"*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2300, i64 0, i64 0
  %XMM0.i114 = bitcast %union.VectorReg* %2301 to %union.vec128_t*
  %2302 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %2303 = bitcast %union.vec128_t* %XMM0.i114 to i8*
  %2304 = load i64, i64* %PC.i112
  %2305 = add i64 %2304, 4
  store i64 %2305, i64* %PC.i112
  %2306 = bitcast i8* %2302 to <2 x i32>*
  %2307 = load <2 x i32>, <2 x i32>* %2306, align 1
  %2308 = getelementptr inbounds i8, i8* %2302, i64 8
  %2309 = bitcast i8* %2308 to <2 x i32>*
  %2310 = load <2 x i32>, <2 x i32>* %2309, align 1
  %2311 = bitcast i8* %2303 to double*
  %2312 = load double, double* %2311, align 1
  %2313 = fptrunc double %2312 to float
  %2314 = bitcast i8* %2302 to float*
  store float %2313, float* %2314, align 1
  %2315 = extractelement <2 x i32> %2307, i32 1
  %2316 = getelementptr inbounds i8, i8* %2302, i64 4
  %2317 = bitcast i8* %2316 to i32*
  store i32 %2315, i32* %2317, align 1
  %2318 = extractelement <2 x i32> %2310, i32 0
  %2319 = bitcast i8* %2308 to i32*
  store i32 %2318, i32* %2319, align 1
  %2320 = extractelement <2 x i32> %2310, i32 1
  %2321 = getelementptr inbounds i8, i8* %2302, i64 12
  %2322 = bitcast i8* %2321 to i32*
  store i32 %2320, i32* %2322, align 1
  store %struct.Memory* %loadMem_4530aa, %struct.Memory** %MEMORY
  %loadMem_4530ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 33
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 15
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2330 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2329, i64 0, i64 0
  %XMM0.i111 = bitcast %union.VectorReg* %2330 to %union.vec128_t*
  %2331 = load i64, i64* %RBP.i110
  %2332 = sub i64 %2331, 60
  %2333 = bitcast %union.vec128_t* %XMM0.i111 to i8*
  %2334 = load i64, i64* %PC.i109
  %2335 = add i64 %2334, 5
  store i64 %2335, i64* %PC.i109
  %2336 = bitcast i8* %2333 to <2 x float>*
  %2337 = load <2 x float>, <2 x float>* %2336, align 1
  %2338 = extractelement <2 x float> %2337, i32 0
  %2339 = inttoptr i64 %2332 to float*
  store float %2338, float* %2339
  store %struct.Memory* %loadMem_4530ae, %struct.Memory** %MEMORY
  %loadMem_4530b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 15
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RBP.i108
  %2350 = sub i64 %2349, 40
  %2351 = load i64, i64* %PC.i106
  %2352 = add i64 %2351, 4
  store i64 %2352, i64* %PC.i106
  %2353 = inttoptr i64 %2350 to i64*
  %2354 = load i64, i64* %2353
  store i64 %2354, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_4530b3, %struct.Memory** %MEMORY
  %loadMem_4530b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 33
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2359 = getelementptr inbounds %struct.GPR, %struct.GPR* %2358, i32 0, i32 5
  %2360 = getelementptr inbounds %struct.Reg, %struct.Reg* %2359, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %2360 to i64*
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 15
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %RBP.i105
  %2365 = sub i64 %2364, 44
  %2366 = load i64, i64* %PC.i103
  %2367 = add i64 %2366, 4
  store i64 %2367, i64* %PC.i103
  %2368 = inttoptr i64 %2365 to i32*
  %2369 = load i32, i32* %2368
  %2370 = sext i32 %2369 to i64
  store i64 %2370, i64* %RCX.i104, align 8
  store %struct.Memory* %loadMem_4530b7, %struct.Memory** %MEMORY
  %loadMem_4530bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 33
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 1
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 5
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2381 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2380, i64 0, i64 0
  %YMM0.i102 = bitcast %union.VectorReg* %2381 to %"class.std::bitset"*
  %2382 = bitcast %"class.std::bitset"* %YMM0.i102 to i8*
  %2383 = load i64, i64* %RAX.i100
  %2384 = load i64, i64* %RCX.i101
  %2385 = mul i64 %2384, 4
  %2386 = add i64 %2385, %2383
  %2387 = load i64, i64* %PC.i99
  %2388 = add i64 %2387, 5
  store i64 %2388, i64* %PC.i99
  %2389 = inttoptr i64 %2386 to float*
  %2390 = load float, float* %2389
  %2391 = bitcast i8* %2382 to float*
  store float %2390, float* %2391, align 1
  %2392 = getelementptr inbounds i8, i8* %2382, i64 4
  %2393 = bitcast i8* %2392 to float*
  store float 0.000000e+00, float* %2393, align 1
  %2394 = getelementptr inbounds i8, i8* %2382, i64 8
  %2395 = bitcast i8* %2394 to float*
  store float 0.000000e+00, float* %2395, align 1
  %2396 = getelementptr inbounds i8, i8* %2382, i64 12
  %2397 = bitcast i8* %2396 to float*
  store float 0.000000e+00, float* %2397, align 1
  store %struct.Memory* %loadMem_4530bb, %struct.Memory** %MEMORY
  %loadMem_4530c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 33
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2400 to i64*
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 15
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2405 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2404, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %2405 to %"class.std::bitset"*
  %2406 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %2407 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %2408 = load i64, i64* %RBP.i97
  %2409 = sub i64 %2408, 56
  %2410 = load i64, i64* %PC.i96
  %2411 = add i64 %2410, 5
  store i64 %2411, i64* %PC.i96
  %2412 = bitcast i8* %2407 to <2 x float>*
  %2413 = load <2 x float>, <2 x float>* %2412, align 1
  %2414 = getelementptr inbounds i8, i8* %2407, i64 8
  %2415 = bitcast i8* %2414 to <2 x i32>*
  %2416 = load <2 x i32>, <2 x i32>* %2415, align 1
  %2417 = inttoptr i64 %2409 to float*
  %2418 = load float, float* %2417
  %2419 = extractelement <2 x float> %2413, i32 0
  %2420 = fmul float %2419, %2418
  %2421 = bitcast i8* %2406 to float*
  store float %2420, float* %2421, align 1
  %2422 = bitcast <2 x float> %2413 to <2 x i32>
  %2423 = extractelement <2 x i32> %2422, i32 1
  %2424 = getelementptr inbounds i8, i8* %2406, i64 4
  %2425 = bitcast i8* %2424 to i32*
  store i32 %2423, i32* %2425, align 1
  %2426 = extractelement <2 x i32> %2416, i32 0
  %2427 = getelementptr inbounds i8, i8* %2406, i64 8
  %2428 = bitcast i8* %2427 to i32*
  store i32 %2426, i32* %2428, align 1
  %2429 = extractelement <2 x i32> %2416, i32 1
  %2430 = getelementptr inbounds i8, i8* %2406, i64 12
  %2431 = bitcast i8* %2430 to i32*
  store i32 %2429, i32* %2431, align 1
  store %struct.Memory* %loadMem_4530c0, %struct.Memory** %MEMORY
  %loadMem_4530c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 15
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2439 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2438, i64 0, i64 1
  %YMM1.i95 = bitcast %union.VectorReg* %2439 to %"class.std::bitset"*
  %2440 = bitcast %"class.std::bitset"* %YMM1.i95 to i8*
  %2441 = load i64, i64* %RBP.i94
  %2442 = sub i64 %2441, 56
  %2443 = load i64, i64* %PC.i93
  %2444 = add i64 %2443, 5
  store i64 %2444, i64* %PC.i93
  %2445 = inttoptr i64 %2442 to float*
  %2446 = load float, float* %2445
  %2447 = bitcast i8* %2440 to float*
  store float %2446, float* %2447, align 1
  %2448 = getelementptr inbounds i8, i8* %2440, i64 4
  %2449 = bitcast i8* %2448 to float*
  store float 0.000000e+00, float* %2449, align 1
  %2450 = getelementptr inbounds i8, i8* %2440, i64 8
  %2451 = bitcast i8* %2450 to float*
  store float 0.000000e+00, float* %2451, align 1
  %2452 = getelementptr inbounds i8, i8* %2440, i64 12
  %2453 = bitcast i8* %2452 to float*
  store float 0.000000e+00, float* %2453, align 1
  store %struct.Memory* %loadMem_4530c5, %struct.Memory** %MEMORY
  %loadMem_4530ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2456 to i64*
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2458 = getelementptr inbounds %struct.GPR, %struct.GPR* %2457, i32 0, i32 15
  %2459 = getelementptr inbounds %struct.Reg, %struct.Reg* %2458, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %2459 to i64*
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2461 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2460, i64 0, i64 1
  %YMM1.i92 = bitcast %union.VectorReg* %2461 to %"class.std::bitset"*
  %2462 = bitcast %"class.std::bitset"* %YMM1.i92 to i8*
  %2463 = bitcast %"class.std::bitset"* %YMM1.i92 to i8*
  %2464 = load i64, i64* %RBP.i91
  %2465 = sub i64 %2464, 60
  %2466 = load i64, i64* %PC.i90
  %2467 = add i64 %2466, 5
  store i64 %2467, i64* %PC.i90
  %2468 = bitcast i8* %2463 to <2 x float>*
  %2469 = load <2 x float>, <2 x float>* %2468, align 1
  %2470 = getelementptr inbounds i8, i8* %2463, i64 8
  %2471 = bitcast i8* %2470 to <2 x i32>*
  %2472 = load <2 x i32>, <2 x i32>* %2471, align 1
  %2473 = inttoptr i64 %2465 to float*
  %2474 = load float, float* %2473
  %2475 = extractelement <2 x float> %2469, i32 0
  %2476 = fadd float %2475, %2474
  %2477 = bitcast i8* %2462 to float*
  store float %2476, float* %2477, align 1
  %2478 = bitcast <2 x float> %2469 to <2 x i32>
  %2479 = extractelement <2 x i32> %2478, i32 1
  %2480 = getelementptr inbounds i8, i8* %2462, i64 4
  %2481 = bitcast i8* %2480 to i32*
  store i32 %2479, i32* %2481, align 1
  %2482 = extractelement <2 x i32> %2472, i32 0
  %2483 = getelementptr inbounds i8, i8* %2462, i64 8
  %2484 = bitcast i8* %2483 to i32*
  store i32 %2482, i32* %2484, align 1
  %2485 = extractelement <2 x i32> %2472, i32 1
  %2486 = getelementptr inbounds i8, i8* %2462, i64 12
  %2487 = bitcast i8* %2486 to i32*
  store i32 %2485, i32* %2487, align 1
  store %struct.Memory* %loadMem_4530ca, %struct.Memory** %MEMORY
  %loadMem_4530cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 33
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2492 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2491, i64 0, i64 0
  %YMM0.i88 = bitcast %union.VectorReg* %2492 to %"class.std::bitset"*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2494 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2493, i64 0, i64 1
  %XMM1.i89 = bitcast %union.VectorReg* %2494 to %union.vec128_t*
  %2495 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2496 = bitcast %"class.std::bitset"* %YMM0.i88 to i8*
  %2497 = bitcast %union.vec128_t* %XMM1.i89 to i8*
  %2498 = load i64, i64* %PC.i87
  %2499 = add i64 %2498, 4
  store i64 %2499, i64* %PC.i87
  %2500 = bitcast i8* %2496 to <2 x float>*
  %2501 = load <2 x float>, <2 x float>* %2500, align 1
  %2502 = getelementptr inbounds i8, i8* %2496, i64 8
  %2503 = bitcast i8* %2502 to <2 x i32>*
  %2504 = load <2 x i32>, <2 x i32>* %2503, align 1
  %2505 = bitcast i8* %2497 to <2 x float>*
  %2506 = load <2 x float>, <2 x float>* %2505, align 1
  %2507 = extractelement <2 x float> %2501, i32 0
  %2508 = extractelement <2 x float> %2506, i32 0
  %2509 = fdiv float %2507, %2508
  %2510 = bitcast i8* %2495 to float*
  store float %2509, float* %2510, align 1
  %2511 = bitcast <2 x float> %2501 to <2 x i32>
  %2512 = extractelement <2 x i32> %2511, i32 1
  %2513 = getelementptr inbounds i8, i8* %2495, i64 4
  %2514 = bitcast i8* %2513 to i32*
  store i32 %2512, i32* %2514, align 1
  %2515 = extractelement <2 x i32> %2504, i32 0
  %2516 = getelementptr inbounds i8, i8* %2495, i64 8
  %2517 = bitcast i8* %2516 to i32*
  store i32 %2515, i32* %2517, align 1
  %2518 = extractelement <2 x i32> %2504, i32 1
  %2519 = getelementptr inbounds i8, i8* %2495, i64 12
  %2520 = bitcast i8* %2519 to i32*
  store i32 %2518, i32* %2520, align 1
  store %struct.Memory* %loadMem_4530cf, %struct.Memory** %MEMORY
  %loadMem_4530d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 1
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RAX.i85 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 15
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %2529 to i64*
  %2530 = load i64, i64* %RBP.i86
  %2531 = sub i64 %2530, 40
  %2532 = load i64, i64* %PC.i84
  %2533 = add i64 %2532, 4
  store i64 %2533, i64* %PC.i84
  %2534 = inttoptr i64 %2531 to i64*
  %2535 = load i64, i64* %2534
  store i64 %2535, i64* %RAX.i85, align 8
  store %struct.Memory* %loadMem_4530d3, %struct.Memory** %MEMORY
  %loadMem_4530d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 5
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RCX.i82 = bitcast %union.anon* %2541 to i64*
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2543 = getelementptr inbounds %struct.GPR, %struct.GPR* %2542, i32 0, i32 15
  %2544 = getelementptr inbounds %struct.Reg, %struct.Reg* %2543, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %2544 to i64*
  %2545 = load i64, i64* %RBP.i83
  %2546 = sub i64 %2545, 48
  %2547 = load i64, i64* %PC.i81
  %2548 = add i64 %2547, 4
  store i64 %2548, i64* %PC.i81
  %2549 = inttoptr i64 %2546 to i32*
  %2550 = load i32, i32* %2549
  %2551 = sext i32 %2550 to i64
  store i64 %2551, i64* %RCX.i82, align 8
  store %struct.Memory* %loadMem_4530d7, %struct.Memory** %MEMORY
  %loadMem_4530db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 1
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %2557 to i64*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2559 = getelementptr inbounds %struct.GPR, %struct.GPR* %2558, i32 0, i32 5
  %2560 = getelementptr inbounds %struct.Reg, %struct.Reg* %2559, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %2560 to i64*
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2562 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2561, i64 0, i64 0
  %XMM0.i80 = bitcast %union.VectorReg* %2562 to %union.vec128_t*
  %2563 = load i64, i64* %RAX.i78
  %2564 = load i64, i64* %RCX.i79
  %2565 = mul i64 %2564, 4
  %2566 = add i64 %2565, %2563
  %2567 = bitcast %union.vec128_t* %XMM0.i80 to i8*
  %2568 = load i64, i64* %PC.i77
  %2569 = add i64 %2568, 5
  store i64 %2569, i64* %PC.i77
  %2570 = bitcast i8* %2567 to <2 x float>*
  %2571 = load <2 x float>, <2 x float>* %2570, align 1
  %2572 = extractelement <2 x float> %2571, i32 0
  %2573 = inttoptr i64 %2566 to float*
  store float %2572, float* %2573
  store %struct.Memory* %loadMem_4530db, %struct.Memory** %MEMORY
  %loadMem_4530e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 1
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 15
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RBP.i76 = bitcast %union.anon* %2582 to i64*
  %2583 = load i64, i64* %RBP.i76
  %2584 = sub i64 %2583, 40
  %2585 = load i64, i64* %PC.i74
  %2586 = add i64 %2585, 4
  store i64 %2586, i64* %PC.i74
  %2587 = inttoptr i64 %2584 to i64*
  %2588 = load i64, i64* %2587
  store i64 %2588, i64* %RAX.i75, align 8
  store %struct.Memory* %loadMem_4530e0, %struct.Memory** %MEMORY
  %loadMem_4530e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 5
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RCX.i72 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 15
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RBP.i73 = bitcast %union.anon* %2597 to i64*
  %2598 = load i64, i64* %RBP.i73
  %2599 = sub i64 %2598, 44
  %2600 = load i64, i64* %PC.i71
  %2601 = add i64 %2600, 4
  store i64 %2601, i64* %PC.i71
  %2602 = inttoptr i64 %2599 to i32*
  %2603 = load i32, i32* %2602
  %2604 = sext i32 %2603 to i64
  store i64 %2604, i64* %RCX.i72, align 8
  store %struct.Memory* %loadMem_4530e4, %struct.Memory** %MEMORY
  %loadMem_4530e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2612 = getelementptr inbounds %struct.GPR, %struct.GPR* %2611, i32 0, i32 5
  %2613 = getelementptr inbounds %struct.Reg, %struct.Reg* %2612, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %2613 to i64*
  %2614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2615 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2614, i64 0, i64 0
  %YMM0.i70 = bitcast %union.VectorReg* %2615 to %"class.std::bitset"*
  %2616 = bitcast %"class.std::bitset"* %YMM0.i70 to i8*
  %2617 = load i64, i64* %RAX.i68
  %2618 = load i64, i64* %RCX.i69
  %2619 = mul i64 %2618, 4
  %2620 = add i64 %2619, %2617
  %2621 = load i64, i64* %PC.i67
  %2622 = add i64 %2621, 5
  store i64 %2622, i64* %PC.i67
  %2623 = inttoptr i64 %2620 to float*
  %2624 = load float, float* %2623
  %2625 = bitcast i8* %2616 to float*
  store float %2624, float* %2625, align 1
  %2626 = getelementptr inbounds i8, i8* %2616, i64 4
  %2627 = bitcast i8* %2626 to float*
  store float 0.000000e+00, float* %2627, align 1
  %2628 = getelementptr inbounds i8, i8* %2616, i64 8
  %2629 = bitcast i8* %2628 to float*
  store float 0.000000e+00, float* %2629, align 1
  %2630 = getelementptr inbounds i8, i8* %2616, i64 12
  %2631 = bitcast i8* %2630 to float*
  store float 0.000000e+00, float* %2631, align 1
  store %struct.Memory* %loadMem_4530e8, %struct.Memory** %MEMORY
  %loadMem_4530ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2633 = getelementptr inbounds %struct.GPR, %struct.GPR* %2632, i32 0, i32 33
  %2634 = getelementptr inbounds %struct.Reg, %struct.Reg* %2633, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2634 to i64*
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 15
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2639 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2638, i64 0, i64 0
  %YMM0.i66 = bitcast %union.VectorReg* %2639 to %"class.std::bitset"*
  %2640 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %2641 = bitcast %"class.std::bitset"* %YMM0.i66 to i8*
  %2642 = load i64, i64* %RBP.i65
  %2643 = sub i64 %2642, 60
  %2644 = load i64, i64* %PC.i64
  %2645 = add i64 %2644, 5
  store i64 %2645, i64* %PC.i64
  %2646 = bitcast i8* %2641 to <2 x float>*
  %2647 = load <2 x float>, <2 x float>* %2646, align 1
  %2648 = getelementptr inbounds i8, i8* %2641, i64 8
  %2649 = bitcast i8* %2648 to <2 x i32>*
  %2650 = load <2 x i32>, <2 x i32>* %2649, align 1
  %2651 = inttoptr i64 %2643 to float*
  %2652 = load float, float* %2651
  %2653 = extractelement <2 x float> %2647, i32 0
  %2654 = fmul float %2653, %2652
  %2655 = bitcast i8* %2640 to float*
  store float %2654, float* %2655, align 1
  %2656 = bitcast <2 x float> %2647 to <2 x i32>
  %2657 = extractelement <2 x i32> %2656, i32 1
  %2658 = getelementptr inbounds i8, i8* %2640, i64 4
  %2659 = bitcast i8* %2658 to i32*
  store i32 %2657, i32* %2659, align 1
  %2660 = extractelement <2 x i32> %2650, i32 0
  %2661 = getelementptr inbounds i8, i8* %2640, i64 8
  %2662 = bitcast i8* %2661 to i32*
  store i32 %2660, i32* %2662, align 1
  %2663 = extractelement <2 x i32> %2650, i32 1
  %2664 = getelementptr inbounds i8, i8* %2640, i64 12
  %2665 = bitcast i8* %2664 to i32*
  store i32 %2663, i32* %2665, align 1
  store %struct.Memory* %loadMem_4530ed, %struct.Memory** %MEMORY
  %loadMem_4530f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 15
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2673 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2672, i64 0, i64 1
  %YMM1.i63 = bitcast %union.VectorReg* %2673 to %"class.std::bitset"*
  %2674 = bitcast %"class.std::bitset"* %YMM1.i63 to i8*
  %2675 = load i64, i64* %RBP.i62
  %2676 = sub i64 %2675, 56
  %2677 = load i64, i64* %PC.i61
  %2678 = add i64 %2677, 5
  store i64 %2678, i64* %PC.i61
  %2679 = inttoptr i64 %2676 to float*
  %2680 = load float, float* %2679
  %2681 = bitcast i8* %2674 to float*
  store float %2680, float* %2681, align 1
  %2682 = getelementptr inbounds i8, i8* %2674, i64 4
  %2683 = bitcast i8* %2682 to float*
  store float 0.000000e+00, float* %2683, align 1
  %2684 = getelementptr inbounds i8, i8* %2674, i64 8
  %2685 = bitcast i8* %2684 to float*
  store float 0.000000e+00, float* %2685, align 1
  %2686 = getelementptr inbounds i8, i8* %2674, i64 12
  %2687 = bitcast i8* %2686 to float*
  store float 0.000000e+00, float* %2687, align 1
  store %struct.Memory* %loadMem_4530f2, %struct.Memory** %MEMORY
  %loadMem_4530f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 33
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2690 to i64*
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2692 = getelementptr inbounds %struct.GPR, %struct.GPR* %2691, i32 0, i32 15
  %2693 = getelementptr inbounds %struct.Reg, %struct.Reg* %2692, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %2693 to i64*
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2695 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2694, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %2695 to %"class.std::bitset"*
  %2696 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2697 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %2698 = load i64, i64* %RBP.i60
  %2699 = sub i64 %2698, 60
  %2700 = load i64, i64* %PC.i59
  %2701 = add i64 %2700, 5
  store i64 %2701, i64* %PC.i59
  %2702 = bitcast i8* %2697 to <2 x float>*
  %2703 = load <2 x float>, <2 x float>* %2702, align 1
  %2704 = getelementptr inbounds i8, i8* %2697, i64 8
  %2705 = bitcast i8* %2704 to <2 x i32>*
  %2706 = load <2 x i32>, <2 x i32>* %2705, align 1
  %2707 = inttoptr i64 %2699 to float*
  %2708 = load float, float* %2707
  %2709 = extractelement <2 x float> %2703, i32 0
  %2710 = fadd float %2709, %2708
  %2711 = bitcast i8* %2696 to float*
  store float %2710, float* %2711, align 1
  %2712 = bitcast <2 x float> %2703 to <2 x i32>
  %2713 = extractelement <2 x i32> %2712, i32 1
  %2714 = getelementptr inbounds i8, i8* %2696, i64 4
  %2715 = bitcast i8* %2714 to i32*
  store i32 %2713, i32* %2715, align 1
  %2716 = extractelement <2 x i32> %2706, i32 0
  %2717 = getelementptr inbounds i8, i8* %2696, i64 8
  %2718 = bitcast i8* %2717 to i32*
  store i32 %2716, i32* %2718, align 1
  %2719 = extractelement <2 x i32> %2706, i32 1
  %2720 = getelementptr inbounds i8, i8* %2696, i64 12
  %2721 = bitcast i8* %2720 to i32*
  store i32 %2719, i32* %2721, align 1
  store %struct.Memory* %loadMem_4530f7, %struct.Memory** %MEMORY
  %loadMem_4530fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2725, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2726 to %"class.std::bitset"*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2728 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2727, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %2728 to %union.vec128_t*
  %2729 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2730 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2731 = bitcast %union.vec128_t* %XMM1.i to i8*
  %2732 = load i64, i64* %PC.i58
  %2733 = add i64 %2732, 4
  store i64 %2733, i64* %PC.i58
  %2734 = bitcast i8* %2730 to <2 x float>*
  %2735 = load <2 x float>, <2 x float>* %2734, align 1
  %2736 = getelementptr inbounds i8, i8* %2730, i64 8
  %2737 = bitcast i8* %2736 to <2 x i32>*
  %2738 = load <2 x i32>, <2 x i32>* %2737, align 1
  %2739 = bitcast i8* %2731 to <2 x float>*
  %2740 = load <2 x float>, <2 x float>* %2739, align 1
  %2741 = extractelement <2 x float> %2735, i32 0
  %2742 = extractelement <2 x float> %2740, i32 0
  %2743 = fdiv float %2741, %2742
  %2744 = bitcast i8* %2729 to float*
  store float %2743, float* %2744, align 1
  %2745 = bitcast <2 x float> %2735 to <2 x i32>
  %2746 = extractelement <2 x i32> %2745, i32 1
  %2747 = getelementptr inbounds i8, i8* %2729, i64 4
  %2748 = bitcast i8* %2747 to i32*
  store i32 %2746, i32* %2748, align 1
  %2749 = extractelement <2 x i32> %2738, i32 0
  %2750 = getelementptr inbounds i8, i8* %2729, i64 8
  %2751 = bitcast i8* %2750 to i32*
  store i32 %2749, i32* %2751, align 1
  %2752 = extractelement <2 x i32> %2738, i32 1
  %2753 = getelementptr inbounds i8, i8* %2729, i64 12
  %2754 = bitcast i8* %2753 to i32*
  store i32 %2752, i32* %2754, align 1
  store %struct.Memory* %loadMem_4530fc, %struct.Memory** %MEMORY
  %loadMem_453100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 33
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2757 to i64*
  %2758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2759 = getelementptr inbounds %struct.GPR, %struct.GPR* %2758, i32 0, i32 1
  %2760 = getelementptr inbounds %struct.Reg, %struct.Reg* %2759, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %2760 to i64*
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 15
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2763 to i64*
  %2764 = load i64, i64* %RBP.i57
  %2765 = sub i64 %2764, 40
  %2766 = load i64, i64* %PC.i55
  %2767 = add i64 %2766, 4
  store i64 %2767, i64* %PC.i55
  %2768 = inttoptr i64 %2765 to i64*
  %2769 = load i64, i64* %2768
  store i64 %2769, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_453100, %struct.Memory** %MEMORY
  %loadMem_453104 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2771 = getelementptr inbounds %struct.GPR, %struct.GPR* %2770, i32 0, i32 33
  %2772 = getelementptr inbounds %struct.Reg, %struct.Reg* %2771, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2772 to i64*
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2774 = getelementptr inbounds %struct.GPR, %struct.GPR* %2773, i32 0, i32 5
  %2775 = getelementptr inbounds %struct.Reg, %struct.Reg* %2774, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %2775 to i64*
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2777 = getelementptr inbounds %struct.GPR, %struct.GPR* %2776, i32 0, i32 15
  %2778 = getelementptr inbounds %struct.Reg, %struct.Reg* %2777, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %2778 to i64*
  %2779 = load i64, i64* %RBP.i54
  %2780 = sub i64 %2779, 52
  %2781 = load i64, i64* %PC.i52
  %2782 = add i64 %2781, 4
  store i64 %2782, i64* %PC.i52
  %2783 = inttoptr i64 %2780 to i32*
  %2784 = load i32, i32* %2783
  %2785 = sext i32 %2784 to i64
  store i64 %2785, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_453104, %struct.Memory** %MEMORY
  %loadMem_453108 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 1
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 5
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %2794 to i64*
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2796 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2795, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2796 to %union.vec128_t*
  %2797 = load i64, i64* %RAX.i50
  %2798 = load i64, i64* %RCX.i51
  %2799 = mul i64 %2798, 4
  %2800 = add i64 %2799, %2797
  %2801 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2802 = load i64, i64* %PC.i49
  %2803 = add i64 %2802, 5
  store i64 %2803, i64* %PC.i49
  %2804 = bitcast i8* %2801 to <2 x float>*
  %2805 = load <2 x float>, <2 x float>* %2804, align 1
  %2806 = extractelement <2 x float> %2805, i32 0
  %2807 = inttoptr i64 %2800 to float*
  store float %2806, float* %2807
  store %struct.Memory* %loadMem_453108, %struct.Memory** %MEMORY
  br label %block_.L_45310d

block_.L_45310d:                                  ; preds = %block_.L_4530a5, %block_452f7e
  %loadMem_45310d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2809 = getelementptr inbounds %struct.GPR, %struct.GPR* %2808, i32 0, i32 33
  %2810 = getelementptr inbounds %struct.Reg, %struct.Reg* %2809, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2810 to i64*
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2812 = getelementptr inbounds %struct.GPR, %struct.GPR* %2811, i32 0, i32 1
  %2813 = getelementptr inbounds %struct.Reg, %struct.Reg* %2812, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %2813 to i64*
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2815 = getelementptr inbounds %struct.GPR, %struct.GPR* %2814, i32 0, i32 15
  %2816 = getelementptr inbounds %struct.Reg, %struct.Reg* %2815, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %2816 to i64*
  %2817 = load i64, i64* %RBP.i48
  %2818 = sub i64 %2817, 48
  %2819 = load i64, i64* %PC.i46
  %2820 = add i64 %2819, 3
  store i64 %2820, i64* %PC.i46
  %2821 = inttoptr i64 %2818 to i32*
  %2822 = load i32, i32* %2821
  %2823 = zext i32 %2822 to i64
  store i64 %2823, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_45310d, %struct.Memory** %MEMORY
  %loadMem_453110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 33
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 1
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %EAX.i44 = bitcast %union.anon* %2829 to i32*
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 15
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2832 to i64*
  %2833 = load i32, i32* %EAX.i44
  %2834 = zext i32 %2833 to i64
  %2835 = load i64, i64* %RBP.i45
  %2836 = sub i64 %2835, 12
  %2837 = load i64, i64* %PC.i43
  %2838 = add i64 %2837, 3
  store i64 %2838, i64* %PC.i43
  %2839 = inttoptr i64 %2836 to i32*
  %2840 = load i32, i32* %2839
  %2841 = sub i32 %2833, %2840
  %2842 = icmp ult i32 %2833, %2840
  %2843 = zext i1 %2842 to i8
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2843, i8* %2844, align 1
  %2845 = and i32 %2841, 255
  %2846 = call i32 @llvm.ctpop.i32(i32 %2845)
  %2847 = trunc i32 %2846 to i8
  %2848 = and i8 %2847, 1
  %2849 = xor i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2849, i8* %2850, align 1
  %2851 = xor i32 %2840, %2833
  %2852 = xor i32 %2851, %2841
  %2853 = lshr i32 %2852, 4
  %2854 = trunc i32 %2853 to i8
  %2855 = and i8 %2854, 1
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2855, i8* %2856, align 1
  %2857 = icmp eq i32 %2841, 0
  %2858 = zext i1 %2857 to i8
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2858, i8* %2859, align 1
  %2860 = lshr i32 %2841, 31
  %2861 = trunc i32 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2861, i8* %2862, align 1
  %2863 = lshr i32 %2833, 31
  %2864 = lshr i32 %2840, 31
  %2865 = xor i32 %2864, %2863
  %2866 = xor i32 %2860, %2863
  %2867 = add i32 %2866, %2865
  %2868 = icmp eq i32 %2867, 2
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2869, i8* %2870, align 1
  store %struct.Memory* %loadMem_453110, %struct.Memory** %MEMORY
  %loadMem_453113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i42
  %2875 = add i64 %2874, 34
  %2876 = load i64, i64* %PC.i42
  %2877 = add i64 %2876, 6
  %2878 = load i64, i64* %PC.i42
  %2879 = add i64 %2878, 6
  store i64 %2879, i64* %PC.i42
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2881 = load i8, i8* %2880, align 1
  %2882 = icmp ne i8 %2881, 0
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2884 = load i8, i8* %2883, align 1
  %2885 = icmp ne i8 %2884, 0
  %2886 = xor i1 %2882, %2885
  %2887 = zext i1 %2886 to i8
  store i8 %2887, i8* %BRANCH_TAKEN, align 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2889 = select i1 %2886, i64 %2875, i64 %2877
  store i64 %2889, i64* %2888, align 8
  store %struct.Memory* %loadMem_453113, %struct.Memory** %MEMORY
  %loadBr_453113 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453113 = icmp eq i8 %loadBr_453113, 1
  br i1 %cmpBr_453113, label %block_.L_453135, label %block_453119

block_453119:                                     ; preds = %block_.L_45310d
  %loadMem_453119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 11
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %RDI.i40 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 15
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RBP.i41
  %2900 = sub i64 %2899, 8
  %2901 = load i64, i64* %PC.i39
  %2902 = add i64 %2901, 4
  store i64 %2902, i64* %PC.i39
  %2903 = inttoptr i64 %2900 to i64*
  %2904 = load i64, i64* %2903
  store i64 %2904, i64* %RDI.i40, align 8
  store %struct.Memory* %loadMem_453119, %struct.Memory** %MEMORY
  %loadMem_45311d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 33
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 9
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RSI.i37 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 15
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %2913 to i64*
  %2914 = load i64, i64* %RBP.i38
  %2915 = sub i64 %2914, 12
  %2916 = load i64, i64* %PC.i36
  %2917 = add i64 %2916, 3
  store i64 %2917, i64* %PC.i36
  %2918 = inttoptr i64 %2915 to i32*
  %2919 = load i32, i32* %2918
  %2920 = zext i32 %2919 to i64
  store i64 %2920, i64* %RSI.i37, align 8
  store %struct.Memory* %loadMem_45311d, %struct.Memory** %MEMORY
  %loadMem_453120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2922 = getelementptr inbounds %struct.GPR, %struct.GPR* %2921, i32 0, i32 33
  %2923 = getelementptr inbounds %struct.Reg, %struct.Reg* %2922, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2923 to i64*
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 7
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %RDX.i34 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 15
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %2929 to i64*
  %2930 = load i64, i64* %RBP.i35
  %2931 = sub i64 %2930, 24
  %2932 = load i64, i64* %PC.i33
  %2933 = add i64 %2932, 4
  store i64 %2933, i64* %PC.i33
  %2934 = inttoptr i64 %2931 to i64*
  %2935 = load i64, i64* %2934
  store i64 %2935, i64* %RDX.i34, align 8
  store %struct.Memory* %loadMem_453120, %struct.Memory** %MEMORY
  %loadMem_453124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 33
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 5
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RCX.i31 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 15
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %RBP.i32
  %2946 = sub i64 %2945, 32
  %2947 = load i64, i64* %PC.i30
  %2948 = add i64 %2947, 4
  store i64 %2948, i64* %PC.i30
  %2949 = inttoptr i64 %2946 to i64*
  %2950 = load i64, i64* %2949
  store i64 %2950, i64* %RCX.i31, align 8
  store %struct.Memory* %loadMem_453124, %struct.Memory** %MEMORY
  %loadMem_453128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2952 = getelementptr inbounds %struct.GPR, %struct.GPR* %2951, i32 0, i32 33
  %2953 = getelementptr inbounds %struct.Reg, %struct.Reg* %2952, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2953 to i64*
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2955 = getelementptr inbounds %struct.GPR, %struct.GPR* %2954, i32 0, i32 15
  %2956 = getelementptr inbounds %struct.Reg, %struct.Reg* %2955, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %2956 to i64*
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2958 = getelementptr inbounds %struct.GPR, %struct.GPR* %2957, i32 0, i32 17
  %2959 = getelementptr inbounds %struct.Reg, %struct.Reg* %2958, i32 0, i32 0
  %R8.i29 = bitcast %union.anon* %2959 to i64*
  %2960 = load i64, i64* %RBP.i28
  %2961 = sub i64 %2960, 40
  %2962 = load i64, i64* %PC.i27
  %2963 = add i64 %2962, 4
  store i64 %2963, i64* %PC.i27
  %2964 = inttoptr i64 %2961 to i64*
  %2965 = load i64, i64* %2964
  store i64 %2965, i64* %R8.i29, align 8
  store %struct.Memory* %loadMem_453128, %struct.Memory** %MEMORY
  %loadMem_45312c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 19
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %R9D.i25 = bitcast %union.anon* %2971 to i32*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 15
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %2974 to i64*
  %2975 = bitcast i32* %R9D.i25 to i64*
  %2976 = load i64, i64* %RBP.i26
  %2977 = sub i64 %2976, 48
  %2978 = load i64, i64* %PC.i24
  %2979 = add i64 %2978, 4
  store i64 %2979, i64* %PC.i24
  %2980 = inttoptr i64 %2977 to i32*
  %2981 = load i32, i32* %2980
  %2982 = zext i32 %2981 to i64
  store i64 %2982, i64* %2975, align 8
  store %struct.Memory* %loadMem_45312c, %struct.Memory** %MEMORY
  %loadMem1_453130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 33
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %PC.i23
  %2987 = add i64 %2986, -560
  %2988 = load i64, i64* %PC.i23
  %2989 = add i64 %2988, 5
  %2990 = load i64, i64* %PC.i23
  %2991 = add i64 %2990, 5
  store i64 %2991, i64* %PC.i23
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2993 = load i64, i64* %2992, align 8
  %2994 = add i64 %2993, -8
  %2995 = inttoptr i64 %2994 to i64*
  store i64 %2989, i64* %2995
  store i64 %2994, i64* %2992, align 8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2987, i64* %2996, align 8
  store %struct.Memory* %loadMem1_453130, %struct.Memory** %MEMORY
  %loadMem2_453130 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453130 = load i64, i64* %3
  %call2_453130 = call %struct.Memory* @sub_452f00.downweight(%struct.State* %0, i64 %loadPC_453130, %struct.Memory* %loadMem2_453130)
  store %struct.Memory* %call2_453130, %struct.Memory** %MEMORY
  br label %block_.L_453135

block_.L_453135:                                  ; preds = %block_453119, %block_.L_45310d
  %loadMem_453135 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2999 to i64*
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 1
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 15
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %RBP.i22
  %3007 = sub i64 %3006, 52
  %3008 = load i64, i64* %PC.i21
  %3009 = add i64 %3008, 3
  store i64 %3009, i64* %PC.i21
  %3010 = inttoptr i64 %3007 to i32*
  %3011 = load i32, i32* %3010
  %3012 = zext i32 %3011 to i64
  store i64 %3012, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_453135, %struct.Memory** %MEMORY
  %loadMem_453138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 1
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3018 to i32*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 15
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3021 to i64*
  %3022 = load i32, i32* %EAX.i
  %3023 = zext i32 %3022 to i64
  %3024 = load i64, i64* %RBP.i20
  %3025 = sub i64 %3024, 12
  %3026 = load i64, i64* %PC.i19
  %3027 = add i64 %3026, 3
  store i64 %3027, i64* %PC.i19
  %3028 = inttoptr i64 %3025 to i32*
  %3029 = load i32, i32* %3028
  %3030 = sub i32 %3022, %3029
  %3031 = icmp ult i32 %3022, %3029
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3032, i8* %3033, align 1
  %3034 = and i32 %3030, 255
  %3035 = call i32 @llvm.ctpop.i32(i32 %3034)
  %3036 = trunc i32 %3035 to i8
  %3037 = and i8 %3036, 1
  %3038 = xor i8 %3037, 1
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3038, i8* %3039, align 1
  %3040 = xor i32 %3029, %3022
  %3041 = xor i32 %3040, %3030
  %3042 = lshr i32 %3041, 4
  %3043 = trunc i32 %3042 to i8
  %3044 = and i8 %3043, 1
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3044, i8* %3045, align 1
  %3046 = icmp eq i32 %3030, 0
  %3047 = zext i1 %3046 to i8
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3047, i8* %3048, align 1
  %3049 = lshr i32 %3030, 31
  %3050 = trunc i32 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i32 %3022, 31
  %3053 = lshr i32 %3029, 31
  %3054 = xor i32 %3053, %3052
  %3055 = xor i32 %3049, %3052
  %3056 = add i32 %3055, %3054
  %3057 = icmp eq i32 %3056, 2
  %3058 = zext i1 %3057 to i8
  %3059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3058, i8* %3059, align 1
  store %struct.Memory* %loadMem_453138, %struct.Memory** %MEMORY
  %loadMem_45313b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 33
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %PC.i18
  %3064 = add i64 %3063, 34
  %3065 = load i64, i64* %PC.i18
  %3066 = add i64 %3065, 6
  %3067 = load i64, i64* %PC.i18
  %3068 = add i64 %3067, 6
  store i64 %3068, i64* %PC.i18
  %3069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3070 = load i8, i8* %3069, align 1
  %3071 = icmp ne i8 %3070, 0
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3073 = load i8, i8* %3072, align 1
  %3074 = icmp ne i8 %3073, 0
  %3075 = xor i1 %3071, %3074
  %3076 = zext i1 %3075 to i8
  store i8 %3076, i8* %BRANCH_TAKEN, align 1
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3078 = select i1 %3075, i64 %3064, i64 %3066
  store i64 %3078, i64* %3077, align 8
  store %struct.Memory* %loadMem_45313b, %struct.Memory** %MEMORY
  %loadBr_45313b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45313b = icmp eq i8 %loadBr_45313b, 1
  br i1 %cmpBr_45313b, label %block_.L_45315d, label %block_453141

block_453141:                                     ; preds = %block_.L_453135
  %loadMem_453141 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 33
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 11
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 15
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %RBP.i17
  %3089 = sub i64 %3088, 8
  %3090 = load i64, i64* %PC.i16
  %3091 = add i64 %3090, 4
  store i64 %3091, i64* %PC.i16
  %3092 = inttoptr i64 %3089 to i64*
  %3093 = load i64, i64* %3092
  store i64 %3093, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_453141, %struct.Memory** %MEMORY
  %loadMem_453145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3095 = getelementptr inbounds %struct.GPR, %struct.GPR* %3094, i32 0, i32 33
  %3096 = getelementptr inbounds %struct.Reg, %struct.Reg* %3095, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3096 to i64*
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 9
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3099 to i64*
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 15
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RBP.i15
  %3104 = sub i64 %3103, 12
  %3105 = load i64, i64* %PC.i14
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i14
  %3107 = inttoptr i64 %3104 to i32*
  %3108 = load i32, i32* %3107
  %3109 = zext i32 %3108 to i64
  store i64 %3109, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_453145, %struct.Memory** %MEMORY
  %loadMem_453148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 33
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 7
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3115 to i64*
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3117 = getelementptr inbounds %struct.GPR, %struct.GPR* %3116, i32 0, i32 15
  %3118 = getelementptr inbounds %struct.Reg, %struct.Reg* %3117, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %3118 to i64*
  %3119 = load i64, i64* %RBP.i13
  %3120 = sub i64 %3119, 24
  %3121 = load i64, i64* %PC.i12
  %3122 = add i64 %3121, 4
  store i64 %3122, i64* %PC.i12
  %3123 = inttoptr i64 %3120 to i64*
  %3124 = load i64, i64* %3123
  store i64 %3124, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_453148, %struct.Memory** %MEMORY
  %loadMem_45314c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 33
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 5
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3130 to i64*
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 15
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3133 to i64*
  %3134 = load i64, i64* %RBP.i11
  %3135 = sub i64 %3134, 32
  %3136 = load i64, i64* %PC.i10
  %3137 = add i64 %3136, 4
  store i64 %3137, i64* %PC.i10
  %3138 = inttoptr i64 %3135 to i64*
  %3139 = load i64, i64* %3138
  store i64 %3139, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_45314c, %struct.Memory** %MEMORY
  %loadMem_453150 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 33
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 15
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %RBP.i9 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 17
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3148 to i64*
  %3149 = load i64, i64* %RBP.i9
  %3150 = sub i64 %3149, 40
  %3151 = load i64, i64* %PC.i8
  %3152 = add i64 %3151, 4
  store i64 %3152, i64* %PC.i8
  %3153 = inttoptr i64 %3150 to i64*
  %3154 = load i64, i64* %3153
  store i64 %3154, i64* %R8.i, align 8
  store %struct.Memory* %loadMem_453150, %struct.Memory** %MEMORY
  %loadMem_453154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 19
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3160 to i32*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 15
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3163 to i64*
  %3164 = bitcast i32* %R9D.i to i64*
  %3165 = load i64, i64* %RBP.i7
  %3166 = sub i64 %3165, 52
  %3167 = load i64, i64* %PC.i6
  %3168 = add i64 %3167, 4
  store i64 %3168, i64* %PC.i6
  %3169 = inttoptr i64 %3166 to i32*
  %3170 = load i32, i32* %3169
  %3171 = zext i32 %3170 to i64
  store i64 %3171, i64* %3164, align 8
  store %struct.Memory* %loadMem_453154, %struct.Memory** %MEMORY
  %loadMem1_453158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3173 = getelementptr inbounds %struct.GPR, %struct.GPR* %3172, i32 0, i32 33
  %3174 = getelementptr inbounds %struct.Reg, %struct.Reg* %3173, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3174 to i64*
  %3175 = load i64, i64* %PC.i5
  %3176 = add i64 %3175, -600
  %3177 = load i64, i64* %PC.i5
  %3178 = add i64 %3177, 5
  %3179 = load i64, i64* %PC.i5
  %3180 = add i64 %3179, 5
  store i64 %3180, i64* %PC.i5
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3182 = load i64, i64* %3181, align 8
  %3183 = add i64 %3182, -8
  %3184 = inttoptr i64 %3183 to i64*
  store i64 %3178, i64* %3184
  store i64 %3183, i64* %3181, align 8
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3176, i64* %3185, align 8
  store %struct.Memory* %loadMem1_453158, %struct.Memory** %MEMORY
  %loadMem2_453158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_453158 = load i64, i64* %3
  %call2_453158 = call %struct.Memory* @sub_452f00.downweight(%struct.State* %0, i64 %loadPC_453158, %struct.Memory* %loadMem2_453158)
  store %struct.Memory* %call2_453158, %struct.Memory** %MEMORY
  br label %block_.L_45315d

block_.L_45315d:                                  ; preds = %block_453141, %block_.L_453135
  %loadMem_45315d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 13
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RSP.i
  %3193 = load i64, i64* %PC.i4
  %3194 = add i64 %3193, 4
  store i64 %3194, i64* %PC.i4
  %3195 = add i64 80, %3192
  store i64 %3195, i64* %RSP.i, align 8
  %3196 = icmp ult i64 %3195, %3192
  %3197 = icmp ult i64 %3195, 80
  %3198 = or i1 %3196, %3197
  %3199 = zext i1 %3198 to i8
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3199, i8* %3200, align 1
  %3201 = trunc i64 %3195 to i32
  %3202 = and i32 %3201, 255
  %3203 = call i32 @llvm.ctpop.i32(i32 %3202)
  %3204 = trunc i32 %3203 to i8
  %3205 = and i8 %3204, 1
  %3206 = xor i8 %3205, 1
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3206, i8* %3207, align 1
  %3208 = xor i64 80, %3192
  %3209 = xor i64 %3208, %3195
  %3210 = lshr i64 %3209, 4
  %3211 = trunc i64 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3212, i8* %3213, align 1
  %3214 = icmp eq i64 %3195, 0
  %3215 = zext i1 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3215, i8* %3216, align 1
  %3217 = lshr i64 %3195, 63
  %3218 = trunc i64 %3217 to i8
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3218, i8* %3219, align 1
  %3220 = lshr i64 %3192, 63
  %3221 = xor i64 %3217, %3220
  %3222 = add i64 %3221, %3217
  %3223 = icmp eq i64 %3222, 2
  %3224 = zext i1 %3223 to i8
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3224, i8* %3225, align 1
  store %struct.Memory* %loadMem_45315d, %struct.Memory** %MEMORY
  %loadMem_453161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3227 = getelementptr inbounds %struct.GPR, %struct.GPR* %3226, i32 0, i32 33
  %3228 = getelementptr inbounds %struct.Reg, %struct.Reg* %3227, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3228 to i64*
  %3229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3230 = getelementptr inbounds %struct.GPR, %struct.GPR* %3229, i32 0, i32 15
  %3231 = getelementptr inbounds %struct.Reg, %struct.Reg* %3230, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3231 to i64*
  %3232 = load i64, i64* %PC.i2
  %3233 = add i64 %3232, 1
  store i64 %3233, i64* %PC.i2
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3235 = load i64, i64* %3234, align 8
  %3236 = add i64 %3235, 8
  %3237 = inttoptr i64 %3235 to i64*
  %3238 = load i64, i64* %3237
  store i64 %3238, i64* %RBP.i3, align 8
  store i64 %3236, i64* %3234, align 8
  store %struct.Memory* %loadMem_453161, %struct.Memory** %MEMORY
  %loadMem_453162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3241 to i64*
  %3242 = load i64, i64* %PC.i1
  %3243 = add i64 %3242, 1
  store i64 %3243, i64* %PC.i1
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3246 = load i64, i64* %3245, align 8
  %3247 = inttoptr i64 %3246 to i64*
  %3248 = load i64, i64* %3247
  store i64 %3248, i64* %3244, align 8
  %3249 = add i64 %3246, 8
  store i64 %3249, i64* %3245, align 8
  store %struct.Memory* %loadMem_453162, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_453162
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

define %struct.Memory* @routine_subq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 80
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 80
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
  %23 = xor i64 80, %9
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

define %struct.Memory* @routine_movl__r9d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x28___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 40, %15
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

define %struct.Memory* @routine_movl_0x4__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__esi__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movss___rcx__rdx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_addss___rcx__rdx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %16 = load i64, i64* %RCX
  %17 = load i64, i64* %RDX
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

define %struct.Memory* @routine_cvtss2sd__xmm1___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
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

define %struct.Memory* @routine_jbe_.L_453015(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addss___rax__rcx_4____xmm2(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM2 to i8*
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

define %struct.Memory* @routine_divss__xmm2___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x34__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_45310d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_453044(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
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

define %struct.Memory* @routine_cvtsi2sdl_0x20__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sitofp i32 %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
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

define %struct.Memory* @routine_jmpq_.L_453056(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x1794__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1794__rip__type* @G_0x1794__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
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

define %struct.Memory* @routine_jl_.L_453093(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4530a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movsd_0x1745__rip____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, ptrtoint (%G_0x1745__rip__type* @G_0x1745__rip_ to i64)
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

define %struct.Memory* @routine_movss__xmm0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 60
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

define %struct.Memory* @routine_mulss_MINUS0x38__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 56
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

define %struct.Memory* @routine_movss_MINUS0x38__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addss_MINUS0x3c__rbp____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_mulss_MINUS0x3c__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 60
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

define %struct.Memory* @routine_jl_.L_453135(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x30__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.downweight(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_45315d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_addq__0x50___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 80, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 80
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
  %25 = xor i64 80, %9
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
