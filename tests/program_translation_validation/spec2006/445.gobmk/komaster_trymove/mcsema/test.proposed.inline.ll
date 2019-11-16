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
%G_0xb6eec4_type = type <{ [4 x i8] }>
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
@G_0xb6eec4 = global %G_0xb6eec4_type zeroinitializer

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

declare %struct.Memory* @sub_40f200.is_ko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_409590.is_suicide(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408e30.trymove(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40db00.tryko(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @komaster_trymove(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_40edf0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40edf0, %struct.Memory** %MEMORY
  %loadMem_40edf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i522 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i522
  %27 = load i64, i64* %PC.i521
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i521
  store i64 %26, i64* %RBP.i523, align 8
  store %struct.Memory* %loadMem_40edf1, %struct.Memory** %MEMORY
  %loadMem_40edf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 29
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %R14.i520 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %R14.i520
  %36 = load i64, i64* %PC.i519
  %37 = add i64 %36, 2
  store i64 %37, i64* %PC.i519
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_40edf4, %struct.Memory** %MEMORY
  %loadMem_40edf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RBX.i518 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %RBX.i518
  %49 = load i64, i64* %PC.i517
  %50 = add i64 %49, 1
  store i64 %50, i64* %PC.i517
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = add i64 %52, -8
  %54 = inttoptr i64 %53 to i64*
  store i64 %48, i64* %54
  store i64 %53, i64* %51, align 8
  store %struct.Memory* %loadMem_40edf6, %struct.Memory** %MEMORY
  %loadMem_40edf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 13
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RSP.i516 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %RSP.i516
  %62 = load i64, i64* %PC.i515
  %63 = add i64 %62, 4
  store i64 %63, i64* %PC.i515
  %64 = sub i64 %61, 96
  store i64 %64, i64* %RSP.i516, align 8
  %65 = icmp ult i64 %61, 96
  %66 = zext i1 %65 to i8
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %66, i8* %67, align 1
  %68 = trunc i64 %64 to i32
  %69 = and i32 %68, 255
  %70 = call i32 @llvm.ctpop.i32(i32 %69)
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 1
  %73 = xor i8 %72, 1
  %74 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %73, i8* %74, align 1
  %75 = xor i64 96, %61
  %76 = xor i64 %75, %64
  %77 = lshr i64 %76, 4
  %78 = trunc i64 %77 to i8
  %79 = and i8 %78, 1
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %79, i8* %80, align 1
  %81 = icmp eq i64 %64, 0
  %82 = zext i1 %81 to i8
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %82, i8* %83, align 1
  %84 = lshr i64 %64, 63
  %85 = trunc i64 %84 to i8
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %85, i8* %86, align 1
  %87 = lshr i64 %61, 63
  %88 = xor i64 %84, %87
  %89 = add i64 %88, %87
  %90 = icmp eq i64 %89, 2
  %91 = zext i1 %90 to i8
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %91, i8* %92, align 1
  store %struct.Memory* %loadMem_40edf7, %struct.Memory** %MEMORY
  %loadMem_40edfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 15
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %RBP.i514
  %103 = add i64 %102, 40
  %104 = load i64, i64* %PC.i512
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i512
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_40edfb, %struct.Memory** %MEMORY
  %loadMem_40edfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 21
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %R10.i511 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RBP.i510
  %119 = add i64 %118, 32
  %120 = load i64, i64* %PC.i509
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC.i509
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %R10.i511, align 8
  store %struct.Memory* %loadMem_40edfe, %struct.Memory** %MEMORY
  %loadMem_40ee02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 23
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %R11.i508 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i507
  %134 = add i64 %133, 24
  %135 = load i64, i64* %PC.i506
  %136 = add i64 %135, 4
  store i64 %136, i64* %PC.i506
  %137 = inttoptr i64 %134 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %R11.i508, align 8
  store %struct.Memory* %loadMem_40ee02, %struct.Memory** %MEMORY
  %loadMem_40ee06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RBX.i504 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 15
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i505
  %149 = add i64 %148, 16
  %150 = load i64, i64* %PC.i503
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i503
  %152 = inttoptr i64 %149 to i64*
  %153 = load i64, i64* %152
  store i64 %153, i64* %RBX.i504, align 8
  store %struct.Memory* %loadMem_40ee06, %struct.Memory** %MEMORY
  %loadMem_40ee0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 33
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 29
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %R14D.i502 = bitcast %union.anon* %159 to i32*
  %160 = bitcast i32* %R14D.i502 to i64*
  %161 = load i64, i64* %PC.i501
  %162 = add i64 %161, 6
  store i64 %162, i64* %PC.i501
  store i64 3, i64* %160, align 8
  store %struct.Memory* %loadMem_40ee0a, %struct.Memory** %MEMORY
  %loadMem_40ee10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 11
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %168 to i32*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 15
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %RBP.i500
  %173 = sub i64 %172, 24
  %174 = load i32, i32* %EDI.i
  %175 = zext i32 %174 to i64
  %176 = load i64, i64* %PC.i499
  %177 = add i64 %176, 3
  store i64 %177, i64* %PC.i499
  %178 = inttoptr i64 %173 to i32*
  store i32 %174, i32* %178
  store %struct.Memory* %loadMem_40ee10, %struct.Memory** %MEMORY
  %loadMem_40ee13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 33
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %181 to i64*
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %183 = getelementptr inbounds %struct.GPR, %struct.GPR* %182, i32 0, i32 9
  %184 = getelementptr inbounds %struct.Reg, %struct.Reg* %183, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %184 to i32*
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 15
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %RBP.i498 = bitcast %union.anon* %187 to i64*
  %188 = load i64, i64* %RBP.i498
  %189 = sub i64 %188, 28
  %190 = load i32, i32* %ESI.i
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %PC.i497
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i497
  %194 = inttoptr i64 %189 to i32*
  store i32 %190, i32* %194
  store %struct.Memory* %loadMem_40ee13, %struct.Memory** %MEMORY
  %loadMem_40ee16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 7
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RDX.i495 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 15
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %RBP.i496
  %205 = sub i64 %204, 40
  %206 = load i64, i64* %RDX.i495
  %207 = load i64, i64* %PC.i494
  %208 = add i64 %207, 4
  store i64 %208, i64* %PC.i494
  %209 = inttoptr i64 %205 to i64*
  store i64 %206, i64* %209
  store %struct.Memory* %loadMem_40ee16, %struct.Memory** %MEMORY
  %loadMem_40ee1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %ECX.i492 = bitcast %union.anon* %215 to i32*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 15
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %218 to i64*
  %219 = load i64, i64* %RBP.i493
  %220 = sub i64 %219, 44
  %221 = load i32, i32* %ECX.i492
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %PC.i491
  %224 = add i64 %223, 3
  store i64 %224, i64* %PC.i491
  %225 = inttoptr i64 %220 to i32*
  store i32 %221, i32* %225
  store %struct.Memory* %loadMem_40ee1a, %struct.Memory** %MEMORY
  %loadMem_40ee1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %228 to i64*
  %229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %230 = getelementptr inbounds %struct.GPR, %struct.GPR* %229, i32 0, i32 17
  %231 = getelementptr inbounds %struct.Reg, %struct.Reg* %230, i32 0, i32 0
  %R8D.i489 = bitcast %union.anon* %231 to i32*
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 15
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %RBP.i490 = bitcast %union.anon* %234 to i64*
  %235 = load i64, i64* %RBP.i490
  %236 = sub i64 %235, 48
  %237 = load i32, i32* %R8D.i489
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %PC.i488
  %240 = add i64 %239, 4
  store i64 %240, i64* %PC.i488
  %241 = inttoptr i64 %236 to i32*
  store i32 %237, i32* %241
  store %struct.Memory* %loadMem_40ee1d, %struct.Memory** %MEMORY
  %loadMem_40ee21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 19
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %R9D.i486 = bitcast %union.anon* %247 to i32*
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 15
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %250 to i64*
  %251 = load i64, i64* %RBP.i487
  %252 = sub i64 %251, 52
  %253 = load i32, i32* %R9D.i486
  %254 = zext i32 %253 to i64
  %255 = load i64, i64* %PC.i485
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC.i485
  %257 = inttoptr i64 %252 to i32*
  store i32 %253, i32* %257
  store %struct.Memory* %loadMem_40ee21, %struct.Memory** %MEMORY
  %loadMem_40ee25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 3
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RBX.i483 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 15
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RBP.i484
  %268 = sub i64 %267, 64
  %269 = load i64, i64* %RBX.i483
  %270 = load i64, i64* %PC.i482
  %271 = add i64 %270, 4
  store i64 %271, i64* %PC.i482
  %272 = inttoptr i64 %268 to i64*
  store i64 %269, i64* %272
  store %struct.Memory* %loadMem_40ee25, %struct.Memory** %MEMORY
  %loadMem_40ee29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 33
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %275 to i64*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 15
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 23
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %R11.i = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i481
  %283 = sub i64 %282, 72
  %284 = load i64, i64* %R11.i
  %285 = load i64, i64* %PC.i480
  %286 = add i64 %285, 4
  store i64 %286, i64* %PC.i480
  %287 = inttoptr i64 %283 to i64*
  store i64 %284, i64* %287
  store %struct.Memory* %loadMem_40ee29, %struct.Memory** %MEMORY
  %loadMem_40ee2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 15
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 21
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %R10.i = bitcast %union.anon* %296 to i64*
  %297 = load i64, i64* %RBP.i479
  %298 = sub i64 %297, 80
  %299 = load i64, i64* %R10.i
  %300 = load i64, i64* %PC.i478
  %301 = add i64 %300, 4
  store i64 %301, i64* %PC.i478
  %302 = inttoptr i64 %298 to i64*
  store i64 %299, i64* %302
  store %struct.Memory* %loadMem_40ee2d, %struct.Memory** %MEMORY
  %loadMem_40ee31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 33
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %305 to i64*
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %EAX.i476 = bitcast %union.anon* %308 to i32*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RBP.i477 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RBP.i477
  %313 = sub i64 %312, 84
  %314 = load i32, i32* %EAX.i476
  %315 = zext i32 %314 to i64
  %316 = load i64, i64* %PC.i475
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC.i475
  %318 = inttoptr i64 %313 to i32*
  store i32 %314, i32* %318
  store %struct.Memory* %loadMem_40ee31, %struct.Memory** %MEMORY
  %loadMem_40ee34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 29
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %R14D.i473 = bitcast %union.anon* %324 to i32*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 15
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %327 to i64*
  %328 = bitcast i32* %R14D.i473 to i64*
  %329 = load i32, i32* %R14D.i473
  %330 = zext i32 %329 to i64
  %331 = load i64, i64* %RBP.i474
  %332 = sub i64 %331, 28
  %333 = load i64, i64* %PC.i472
  %334 = add i64 %333, 4
  store i64 %334, i64* %PC.i472
  %335 = inttoptr i64 %332 to i32*
  %336 = load i32, i32* %335
  %337 = sub i32 %329, %336
  %338 = zext i32 %337 to i64
  store i64 %338, i64* %328, align 8
  %339 = icmp ult i32 %329, %336
  %340 = zext i1 %339 to i8
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %340, i8* %341, align 1
  %342 = and i32 %337, 255
  %343 = call i32 @llvm.ctpop.i32(i32 %342)
  %344 = trunc i32 %343 to i8
  %345 = and i8 %344, 1
  %346 = xor i8 %345, 1
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %346, i8* %347, align 1
  %348 = xor i32 %336, %329
  %349 = xor i32 %348, %337
  %350 = lshr i32 %349, 4
  %351 = trunc i32 %350 to i8
  %352 = and i8 %351, 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %352, i8* %353, align 1
  %354 = icmp eq i32 %337, 0
  %355 = zext i1 %354 to i8
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %355, i8* %356, align 1
  %357 = lshr i32 %337, 31
  %358 = trunc i32 %357 to i8
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %358, i8* %359, align 1
  %360 = lshr i32 %329, 31
  %361 = lshr i32 %336, 31
  %362 = xor i32 %361, %360
  %363 = xor i32 %357, %360
  %364 = add i32 %363, %362
  %365 = icmp eq i32 %364, 2
  %366 = zext i1 %365 to i8
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %366, i8* %367, align 1
  store %struct.Memory* %loadMem_40ee34, %struct.Memory** %MEMORY
  %loadMem_40ee38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %369 = getelementptr inbounds %struct.GPR, %struct.GPR* %368, i32 0, i32 33
  %370 = getelementptr inbounds %struct.Reg, %struct.Reg* %369, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %370 to i64*
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %372 = getelementptr inbounds %struct.GPR, %struct.GPR* %371, i32 0, i32 29
  %373 = getelementptr inbounds %struct.Reg, %struct.Reg* %372, i32 0, i32 0
  %R14D.i = bitcast %union.anon* %373 to i32*
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 15
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %376 to i64*
  %377 = load i64, i64* %RBP.i471
  %378 = sub i64 %377, 88
  %379 = load i32, i32* %R14D.i
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %PC.i470
  %382 = add i64 %381, 4
  store i64 %382, i64* %PC.i470
  %383 = inttoptr i64 %378 to i32*
  store i32 %379, i32* %383
  store %struct.Memory* %loadMem_40ee38, %struct.Memory** %MEMORY
  %loadMem_40ee3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 33
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %386 to i64*
  %387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %388 = getelementptr inbounds %struct.GPR, %struct.GPR* %387, i32 0, i32 1
  %389 = getelementptr inbounds %struct.Reg, %struct.Reg* %388, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %389 to i64*
  %390 = load i64, i64* %PC.i468
  %391 = add i64 %390, 7
  store i64 %391, i64* %PC.i468
  %392 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %393 = zext i32 %392 to i64
  store i64 %393, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_40ee3c, %struct.Memory** %MEMORY
  %loadMem_40ee43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 1
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %EAX.i466 = bitcast %union.anon* %399 to i32*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 15
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %402 to i64*
  %403 = load i64, i64* %RBP.i467
  %404 = sub i64 %403, 100
  %405 = load i32, i32* %EAX.i466
  %406 = zext i32 %405 to i64
  %407 = load i64, i64* %PC.i465
  %408 = add i64 %407, 3
  store i64 %408, i64* %PC.i465
  %409 = inttoptr i64 %404 to i32*
  store i32 %405, i32* %409
  store %struct.Memory* %loadMem_40ee43, %struct.Memory** %MEMORY
  %loadMem_40ee46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 15
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %RBP.i464
  %417 = sub i64 %416, 48
  %418 = load i64, i64* %PC.i463
  %419 = add i64 %418, 4
  store i64 %419, i64* %PC.i463
  %420 = inttoptr i64 %417 to i32*
  %421 = load i32, i32* %420
  %422 = sub i32 %421, 1
  %423 = icmp ult i32 %421, 1
  %424 = zext i1 %423 to i8
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %424, i8* %425, align 1
  %426 = and i32 %422, 255
  %427 = call i32 @llvm.ctpop.i32(i32 %426)
  %428 = trunc i32 %427 to i8
  %429 = and i8 %428, 1
  %430 = xor i8 %429, 1
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %430, i8* %431, align 1
  %432 = xor i32 %421, 1
  %433 = xor i32 %432, %422
  %434 = lshr i32 %433, 4
  %435 = trunc i32 %434 to i8
  %436 = and i8 %435, 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %436, i8* %437, align 1
  %438 = icmp eq i32 %422, 0
  %439 = zext i1 %438 to i8
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %439, i8* %440, align 1
  %441 = lshr i32 %422, 31
  %442 = trunc i32 %441 to i8
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %442, i8* %443, align 1
  %444 = lshr i32 %421, 31
  %445 = xor i32 %441, %444
  %446 = add i32 %445, %444
  %447 = icmp eq i32 %446, 2
  %448 = zext i1 %447 to i8
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %448, i8* %449, align 1
  store %struct.Memory* %loadMem_40ee46, %struct.Memory** %MEMORY
  %loadMem_40ee4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %452 to i64*
  %453 = load i64, i64* %PC.i462
  %454 = add i64 %453, 16
  %455 = load i64, i64* %PC.i462
  %456 = add i64 %455, 6
  %457 = load i64, i64* %PC.i462
  %458 = add i64 %457, 6
  store i64 %458, i64* %PC.i462
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %460 = load i8, i8* %459, align 1
  store i8 %460, i8* %BRANCH_TAKEN, align 1
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %462 = icmp ne i8 %460, 0
  %463 = select i1 %462, i64 %454, i64 %456
  store i64 %463, i64* %461, align 8
  store %struct.Memory* %loadMem_40ee4a, %struct.Memory** %MEMORY
  %loadBr_40ee4a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ee4a = icmp eq i8 %loadBr_40ee4a, 1
  br i1 %cmpBr_40ee4a, label %block_.L_40ee5a, label %block_40ee50

block_40ee50:                                     ; preds = %entry
  %loadMem_40ee50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %465 = getelementptr inbounds %struct.GPR, %struct.GPR* %464, i32 0, i32 33
  %466 = getelementptr inbounds %struct.Reg, %struct.Reg* %465, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %466 to i64*
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 15
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %RBP.i461 = bitcast %union.anon* %469 to i64*
  %470 = load i64, i64* %RBP.i461
  %471 = sub i64 %470, 48
  %472 = load i64, i64* %PC.i460
  %473 = add i64 %472, 4
  store i64 %473, i64* %PC.i460
  %474 = inttoptr i64 %471 to i32*
  %475 = load i32, i32* %474
  %476 = sub i32 %475, 4
  %477 = icmp ult i32 %475, 4
  %478 = zext i1 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %478, i8* %479, align 1
  %480 = and i32 %476, 255
  %481 = call i32 @llvm.ctpop.i32(i32 %480)
  %482 = trunc i32 %481 to i8
  %483 = and i8 %482, 1
  %484 = xor i8 %483, 1
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %484, i8* %485, align 1
  %486 = xor i32 %475, 4
  %487 = xor i32 %486, %476
  %488 = lshr i32 %487, 4
  %489 = trunc i32 %488 to i8
  %490 = and i8 %489, 1
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %490, i8* %491, align 1
  %492 = icmp eq i32 %476, 0
  %493 = zext i1 %492 to i8
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %493, i8* %494, align 1
  %495 = lshr i32 %476, 31
  %496 = trunc i32 %495 to i8
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %496, i8* %497, align 1
  %498 = lshr i32 %475, 31
  %499 = xor i32 %495, %498
  %500 = add i32 %499, %498
  %501 = icmp eq i32 %500, 2
  %502 = zext i1 %501 to i8
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %502, i8* %503, align 1
  store %struct.Memory* %loadMem_40ee50, %struct.Memory** %MEMORY
  %loadMem_40ee54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 33
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %PC.i459 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %PC.i459
  %508 = add i64 %507, 96
  %509 = load i64, i64* %PC.i459
  %510 = add i64 %509, 6
  %511 = load i64, i64* %PC.i459
  %512 = add i64 %511, 6
  store i64 %512, i64* %PC.i459
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %514 = load i8, i8* %513, align 1
  %515 = icmp eq i8 %514, 0
  %516 = zext i1 %515 to i8
  store i8 %516, i8* %BRANCH_TAKEN, align 1
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %518 = select i1 %515, i64 %508, i64 %510
  store i64 %518, i64* %517, align 8
  store %struct.Memory* %loadMem_40ee54, %struct.Memory** %MEMORY
  %loadBr_40ee54 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ee54 = icmp eq i8 %loadBr_40ee54, 1
  br i1 %cmpBr_40ee54, label %block_.L_40eeb4, label %block_.L_40ee5a

block_.L_40ee5a:                                  ; preds = %block_40ee50, %entry
  %loadMem_40ee5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 1
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 15
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RBP.i458 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %RBP.i458
  %529 = sub i64 %528, 52
  %530 = load i64, i64* %PC.i456
  %531 = add i64 %530, 4
  store i64 %531, i64* %PC.i456
  %532 = inttoptr i64 %529 to i32*
  %533 = load i32, i32* %532
  %534 = sext i32 %533 to i64
  store i64 %534, i64* %RAX.i457, align 8
  store %struct.Memory* %loadMem_40ee5a, %struct.Memory** %MEMORY
  %loadMem_40ee5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 5
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %RCX.i455 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RAX.i454
  %545 = add i64 %544, 12099168
  %546 = load i64, i64* %PC.i453
  %547 = add i64 %546, 8
  store i64 %547, i64* %PC.i453
  %548 = inttoptr i64 %545 to i8*
  %549 = load i8, i8* %548
  %550 = zext i8 %549 to i64
  store i64 %550, i64* %RCX.i455, align 8
  store %struct.Memory* %loadMem_40ee5e, %struct.Memory** %MEMORY
  %loadMem_40ee66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %ECX.i452 = bitcast %union.anon* %556 to i32*
  %557 = load i32, i32* %ECX.i452
  %558 = zext i32 %557 to i64
  %559 = load i64, i64* %PC.i451
  %560 = add i64 %559, 3
  store i64 %560, i64* %PC.i451
  %561 = sub i32 %557, 1
  %562 = icmp ult i32 %557, 1
  %563 = zext i1 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %563, i8* %564, align 1
  %565 = and i32 %561, 255
  %566 = call i32 @llvm.ctpop.i32(i32 %565)
  %567 = trunc i32 %566 to i8
  %568 = and i8 %567, 1
  %569 = xor i8 %568, 1
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %569, i8* %570, align 1
  %571 = xor i64 1, %558
  %572 = trunc i64 %571 to i32
  %573 = xor i32 %572, %561
  %574 = lshr i32 %573, 4
  %575 = trunc i32 %574 to i8
  %576 = and i8 %575, 1
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %576, i8* %577, align 1
  %578 = icmp eq i32 %561, 0
  %579 = zext i1 %578 to i8
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %579, i8* %580, align 1
  %581 = lshr i32 %561, 31
  %582 = trunc i32 %581 to i8
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %582, i8* %583, align 1
  %584 = lshr i32 %557, 31
  %585 = xor i32 %581, %584
  %586 = add i32 %585, %584
  %587 = icmp eq i32 %586, 2
  %588 = zext i1 %587 to i8
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %588, i8* %589, align 1
  store %struct.Memory* %loadMem_40ee66, %struct.Memory** %MEMORY
  %loadMem_40ee69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 33
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %592 to i64*
  %593 = load i64, i64* %PC.i450
  %594 = add i64 %593, 185
  %595 = load i64, i64* %PC.i450
  %596 = add i64 %595, 6
  %597 = load i64, i64* %PC.i450
  %598 = add i64 %597, 6
  store i64 %598, i64* %PC.i450
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %600 = load i8, i8* %599, align 1
  store i8 %600, i8* %BRANCH_TAKEN, align 1
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %602 = icmp ne i8 %600, 0
  %603 = select i1 %602, i64 %594, i64 %596
  store i64 %603, i64* %601, align 8
  store %struct.Memory* %loadMem_40ee69, %struct.Memory** %MEMORY
  %loadBr_40ee69 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ee69 = icmp eq i8 %loadBr_40ee69, 1
  br i1 %cmpBr_40ee69, label %block_.L_40ef22, label %block_40ee6f

block_40ee6f:                                     ; preds = %block_.L_40ee5a
  %loadMem_40ee6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 1
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 15
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RBP.i449
  %614 = sub i64 %613, 52
  %615 = load i64, i64* %PC.i447
  %616 = add i64 %615, 4
  store i64 %616, i64* %PC.i447
  %617 = inttoptr i64 %614 to i32*
  %618 = load i32, i32* %617
  %619 = sext i32 %618 to i64
  store i64 %619, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_40ee6f, %struct.Memory** %MEMORY
  %loadMem_40ee73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %622 to i64*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 1
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RAX.i445 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 5
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RCX.i446 = bitcast %union.anon* %628 to i64*
  %629 = load i64, i64* %RAX.i445
  %630 = add i64 %629, 12099168
  %631 = load i64, i64* %PC.i444
  %632 = add i64 %631, 8
  store i64 %632, i64* %PC.i444
  %633 = inttoptr i64 %630 to i8*
  %634 = load i8, i8* %633
  %635 = zext i8 %634 to i64
  store i64 %635, i64* %RCX.i446, align 8
  store %struct.Memory* %loadMem_40ee73, %struct.Memory** %MEMORY
  %loadMem_40ee7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 5
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %ECX.i443 = bitcast %union.anon* %641 to i32*
  %642 = load i32, i32* %ECX.i443
  %643 = zext i32 %642 to i64
  %644 = load i64, i64* %PC.i442
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i442
  %646 = sub i32 %642, 2
  %647 = icmp ult i32 %642, 2
  %648 = zext i1 %647 to i8
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %648, i8* %649, align 1
  %650 = and i32 %646, 255
  %651 = call i32 @llvm.ctpop.i32(i32 %650)
  %652 = trunc i32 %651 to i8
  %653 = and i8 %652, 1
  %654 = xor i8 %653, 1
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %654, i8* %655, align 1
  %656 = xor i64 2, %643
  %657 = trunc i64 %656 to i32
  %658 = xor i32 %657, %646
  %659 = lshr i32 %658, 4
  %660 = trunc i32 %659 to i8
  %661 = and i8 %660, 1
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %661, i8* %662, align 1
  %663 = icmp eq i32 %646, 0
  %664 = zext i1 %663 to i8
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %664, i8* %665, align 1
  %666 = lshr i32 %646, 31
  %667 = trunc i32 %666 to i8
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %667, i8* %668, align 1
  %669 = lshr i32 %642, 31
  %670 = xor i32 %666, %669
  %671 = add i32 %670, %669
  %672 = icmp eq i32 %671, 2
  %673 = zext i1 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %673, i8* %674, align 1
  store %struct.Memory* %loadMem_40ee7b, %struct.Memory** %MEMORY
  %loadMem_40ee7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %677 to i64*
  %678 = load i64, i64* %PC.i441
  %679 = add i64 %678, 164
  %680 = load i64, i64* %PC.i441
  %681 = add i64 %680, 6
  %682 = load i64, i64* %PC.i441
  %683 = add i64 %682, 6
  store i64 %683, i64* %PC.i441
  %684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %685 = load i8, i8* %684, align 1
  store i8 %685, i8* %BRANCH_TAKEN, align 1
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %687 = icmp ne i8 %685, 0
  %688 = select i1 %687, i64 %679, i64 %681
  store i64 %688, i64* %686, align 8
  store %struct.Memory* %loadMem_40ee7e, %struct.Memory** %MEMORY
  %loadBr_40ee7e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ee7e = icmp eq i8 %loadBr_40ee7e, 1
  br i1 %cmpBr_40ee7e, label %block_.L_40ef22, label %block_40ee84

block_40ee84:                                     ; preds = %block_40ee6f
  %loadMem_40ee84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 9
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RSI.i440 = bitcast %union.anon* %694 to i64*
  %695 = load i64, i64* %PC.i439
  %696 = add i64 %695, 5
  store i64 %696, i64* %PC.i439
  store i64 2, i64* %RSI.i440, align 8
  store %struct.Memory* %loadMem_40ee84, %struct.Memory** %MEMORY
  %loadMem_40ee89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 1
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %702 to i32*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 1
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %RAX.i438
  %707 = load i32, i32* %EAX.i437
  %708 = zext i32 %707 to i64
  %709 = load i64, i64* %PC.i436
  %710 = add i64 %709, 2
  store i64 %710, i64* %PC.i436
  %711 = xor i64 %708, %706
  %712 = trunc i64 %711 to i32
  %713 = and i64 %711, 4294967295
  store i64 %713, i64* %RAX.i438, align 8
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %714, align 1
  %715 = and i32 %712, 255
  %716 = call i32 @llvm.ctpop.i32(i32 %715)
  %717 = trunc i32 %716 to i8
  %718 = and i8 %717, 1
  %719 = xor i8 %718, 1
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %719, i8* %720, align 1
  %721 = icmp eq i32 %712, 0
  %722 = zext i1 %721 to i8
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %722, i8* %723, align 1
  %724 = lshr i32 %712, 31
  %725 = trunc i32 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %725, i8* %726, align 1
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %727, align 1
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %728, align 1
  store %struct.Memory* %loadMem_40ee89, %struct.Memory** %MEMORY
  %loadMem_40ee8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 1
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %EAX.i434 = bitcast %union.anon* %734 to i32*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 7
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RDX.i435 = bitcast %union.anon* %737 to i64*
  %738 = load i32, i32* %EAX.i434
  %739 = zext i32 %738 to i64
  %740 = load i64, i64* %PC.i433
  %741 = add i64 %740, 2
  store i64 %741, i64* %PC.i433
  %742 = and i64 %739, 4294967295
  store i64 %742, i64* %RDX.i435, align 8
  store %struct.Memory* %loadMem_40ee8b, %struct.Memory** %MEMORY
  %loadMem_40ee8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 11
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RDI.i431 = bitcast %union.anon* %748 to i64*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 15
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %RBP.i432
  %753 = sub i64 %752, 52
  %754 = load i64, i64* %PC.i430
  %755 = add i64 %754, 3
  store i64 %755, i64* %PC.i430
  %756 = inttoptr i64 %753 to i32*
  %757 = load i32, i32* %756
  %758 = zext i32 %757 to i64
  store i64 %758, i64* %RDI.i431, align 8
  store %struct.Memory* %loadMem_40ee8d, %struct.Memory** %MEMORY
  %loadMem1_40ee90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %761 to i64*
  %762 = load i64, i64* %PC.i429
  %763 = add i64 %762, 880
  %764 = load i64, i64* %PC.i429
  %765 = add i64 %764, 5
  %766 = load i64, i64* %PC.i429
  %767 = add i64 %766, 5
  store i64 %767, i64* %PC.i429
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %769 = load i64, i64* %768, align 8
  %770 = add i64 %769, -8
  %771 = inttoptr i64 %770 to i64*
  store i64 %765, i64* %771
  store i64 %770, i64* %768, align 8
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %763, i64* %772, align 8
  store %struct.Memory* %loadMem1_40ee90, %struct.Memory** %MEMORY
  %loadMem2_40ee90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40ee90 = load i64, i64* %3
  %call2_40ee90 = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64 %loadPC_40ee90, %struct.Memory* %loadMem2_40ee90)
  store %struct.Memory* %call2_40ee90, %struct.Memory** %MEMORY
  %loadMem_40ee95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %774 = getelementptr inbounds %struct.GPR, %struct.GPR* %773, i32 0, i32 33
  %775 = getelementptr inbounds %struct.Reg, %struct.Reg* %774, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %775 to i64*
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 1
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %EAX.i428 = bitcast %union.anon* %778 to i32*
  %779 = load i32, i32* %EAX.i428
  %780 = zext i32 %779 to i64
  %781 = load i64, i64* %PC.i427
  %782 = add i64 %781, 3
  store i64 %782, i64* %PC.i427
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %783, align 1
  %784 = and i32 %779, 255
  %785 = call i32 @llvm.ctpop.i32(i32 %784)
  %786 = trunc i32 %785 to i8
  %787 = and i8 %786, 1
  %788 = xor i8 %787, 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %788, i8* %789, align 1
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %790, align 1
  %791 = icmp eq i32 %779, 0
  %792 = zext i1 %791 to i8
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %792, i8* %793, align 1
  %794 = lshr i32 %779, 31
  %795 = trunc i32 %794 to i8
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %795, i8* %796, align 1
  %797 = lshr i32 %779, 31
  %798 = xor i32 %794, %797
  %799 = add i32 %798, %797
  %800 = icmp eq i32 %799, 2
  %801 = zext i1 %800 to i8
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %801, i8* %802, align 1
  store %struct.Memory* %loadMem_40ee95, %struct.Memory** %MEMORY
  %loadMem_40ee98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %805 to i64*
  %806 = load i64, i64* %PC.i426
  %807 = add i64 %806, 28
  %808 = load i64, i64* %PC.i426
  %809 = add i64 %808, 6
  %810 = load i64, i64* %PC.i426
  %811 = add i64 %810, 6
  store i64 %811, i64* %PC.i426
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %813 = load i8, i8* %812, align 1
  %814 = icmp eq i8 %813, 0
  %815 = zext i1 %814 to i8
  store i8 %815, i8* %BRANCH_TAKEN, align 1
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %817 = select i1 %814, i64 %807, i64 %809
  store i64 %817, i64* %816, align 8
  store %struct.Memory* %loadMem_40ee98, %struct.Memory** %MEMORY
  %loadBr_40ee98 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ee98 = icmp eq i8 %loadBr_40ee98, 1
  br i1 %cmpBr_40ee98, label %block_.L_40eeb4, label %block_40ee9e

block_40ee9e:                                     ; preds = %block_40ee84
  %loadMem_40ee9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 33
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %820 to i64*
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 9
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %RSI.i425 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %PC.i424
  %825 = add i64 %824, 5
  store i64 %825, i64* %PC.i424
  store i64 2, i64* %RSI.i425, align 8
  store %struct.Memory* %loadMem_40ee9e, %struct.Memory** %MEMORY
  %loadMem_40eea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 11
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RDI.i422 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i423
  %836 = sub i64 %835, 52
  %837 = load i64, i64* %PC.i421
  %838 = add i64 %837, 3
  store i64 %838, i64* %PC.i421
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839
  %841 = zext i32 %840 to i64
  store i64 %841, i64* %RDI.i422, align 8
  store %struct.Memory* %loadMem_40eea3, %struct.Memory** %MEMORY
  %loadMem1_40eea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %PC.i420
  %846 = add i64 %845, -22806
  %847 = load i64, i64* %PC.i420
  %848 = add i64 %847, 5
  %849 = load i64, i64* %PC.i420
  %850 = add i64 %849, 5
  store i64 %850, i64* %PC.i420
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %852 = load i64, i64* %851, align 8
  %853 = add i64 %852, -8
  %854 = inttoptr i64 %853 to i64*
  store i64 %848, i64* %854
  store i64 %853, i64* %851, align 8
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %846, i64* %855, align 8
  store %struct.Memory* %loadMem1_40eea6, %struct.Memory** %MEMORY
  %loadMem2_40eea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40eea6 = load i64, i64* %3
  %call2_40eea6 = call %struct.Memory* @sub_409590.is_suicide(%struct.State* %0, i64 %loadPC_40eea6, %struct.Memory* %loadMem2_40eea6)
  store %struct.Memory* %call2_40eea6, %struct.Memory** %MEMORY
  %loadMem_40eeab = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 1
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %EAX.i419 = bitcast %union.anon* %861 to i32*
  %862 = load i32, i32* %EAX.i419
  %863 = zext i32 %862 to i64
  %864 = load i64, i64* %PC.i418
  %865 = add i64 %864, 3
  store i64 %865, i64* %PC.i418
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %866, align 1
  %867 = and i32 %862, 255
  %868 = call i32 @llvm.ctpop.i32(i32 %867)
  %869 = trunc i32 %868 to i8
  %870 = and i8 %869, 1
  %871 = xor i8 %870, 1
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %871, i8* %872, align 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %873, align 1
  %874 = icmp eq i32 %862, 0
  %875 = zext i1 %874 to i8
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %875, i8* %876, align 1
  %877 = lshr i32 %862, 31
  %878 = trunc i32 %877 to i8
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %878, i8* %879, align 1
  %880 = lshr i32 %862, 31
  %881 = xor i32 %877, %880
  %882 = add i32 %881, %880
  %883 = icmp eq i32 %882, 2
  %884 = zext i1 %883 to i8
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %884, i8* %885, align 1
  store %struct.Memory* %loadMem_40eeab, %struct.Memory** %MEMORY
  %loadMem_40eeae = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %888 to i64*
  %889 = load i64, i64* %PC.i417
  %890 = add i64 %889, 116
  %891 = load i64, i64* %PC.i417
  %892 = add i64 %891, 6
  %893 = load i64, i64* %PC.i417
  %894 = add i64 %893, 6
  store i64 %894, i64* %PC.i417
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %896 = load i8, i8* %895, align 1
  %897 = icmp eq i8 %896, 0
  %898 = zext i1 %897 to i8
  store i8 %898, i8* %BRANCH_TAKEN, align 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %900 = select i1 %897, i64 %890, i64 %892
  store i64 %900, i64* %899, align 8
  store %struct.Memory* %loadMem_40eeae, %struct.Memory** %MEMORY
  %loadBr_40eeae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eeae = icmp eq i8 %loadBr_40eeae, 1
  br i1 %cmpBr_40eeae, label %block_.L_40ef22, label %block_.L_40eeb4

block_.L_40eeb4:                                  ; preds = %block_40ee9e, %block_40ee84, %block_40ee50
  %loadMem_40eeb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 33
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %903 to i64*
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %905 = getelementptr inbounds %struct.GPR, %struct.GPR* %904, i32 0, i32 15
  %906 = getelementptr inbounds %struct.Reg, %struct.Reg* %905, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %906 to i64*
  %907 = load i64, i64* %RBP.i416
  %908 = sub i64 %907, 48
  %909 = load i64, i64* %PC.i415
  %910 = add i64 %909, 4
  store i64 %910, i64* %PC.i415
  %911 = inttoptr i64 %908 to i32*
  %912 = load i32, i32* %911
  %913 = sub i32 %912, 2
  %914 = icmp ult i32 %912, 2
  %915 = zext i1 %914 to i8
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %915, i8* %916, align 1
  %917 = and i32 %913, 255
  %918 = call i32 @llvm.ctpop.i32(i32 %917)
  %919 = trunc i32 %918 to i8
  %920 = and i8 %919, 1
  %921 = xor i8 %920, 1
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %921, i8* %922, align 1
  %923 = xor i32 %912, 2
  %924 = xor i32 %923, %913
  %925 = lshr i32 %924, 4
  %926 = trunc i32 %925 to i8
  %927 = and i8 %926, 1
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %927, i8* %928, align 1
  %929 = icmp eq i32 %913, 0
  %930 = zext i1 %929 to i8
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %930, i8* %931, align 1
  %932 = lshr i32 %913, 31
  %933 = trunc i32 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %933, i8* %934, align 1
  %935 = lshr i32 %912, 31
  %936 = xor i32 %932, %935
  %937 = add i32 %936, %935
  %938 = icmp eq i32 %937, 2
  %939 = zext i1 %938 to i8
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %939, i8* %940, align 1
  store %struct.Memory* %loadMem_40eeb4, %struct.Memory** %MEMORY
  %loadMem_40eeb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %PC.i414
  %945 = add i64 %944, 16
  %946 = load i64, i64* %PC.i414
  %947 = add i64 %946, 6
  %948 = load i64, i64* %PC.i414
  %949 = add i64 %948, 6
  store i64 %949, i64* %PC.i414
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %951 = load i8, i8* %950, align 1
  store i8 %951, i8* %BRANCH_TAKEN, align 1
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %953 = icmp ne i8 %951, 0
  %954 = select i1 %953, i64 %945, i64 %947
  store i64 %954, i64* %952, align 8
  store %struct.Memory* %loadMem_40eeb8, %struct.Memory** %MEMORY
  %loadBr_40eeb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eeb8 = icmp eq i8 %loadBr_40eeb8, 1
  br i1 %cmpBr_40eeb8, label %block_.L_40eec8, label %block_40eebe

block_40eebe:                                     ; preds = %block_.L_40eeb4
  %loadMem_40eebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 15
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %960 to i64*
  %961 = load i64, i64* %RBP.i413
  %962 = sub i64 %961, 48
  %963 = load i64, i64* %PC.i412
  %964 = add i64 %963, 4
  store i64 %964, i64* %PC.i412
  %965 = inttoptr i64 %962 to i32*
  %966 = load i32, i32* %965
  %967 = sub i32 %966, 5
  %968 = icmp ult i32 %966, 5
  %969 = zext i1 %968 to i8
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %969, i8* %970, align 1
  %971 = and i32 %967, 255
  %972 = call i32 @llvm.ctpop.i32(i32 %971)
  %973 = trunc i32 %972 to i8
  %974 = and i8 %973, 1
  %975 = xor i8 %974, 1
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %975, i8* %976, align 1
  %977 = xor i32 %966, 5
  %978 = xor i32 %977, %967
  %979 = lshr i32 %978, 4
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %981, i8* %982, align 1
  %983 = icmp eq i32 %967, 0
  %984 = zext i1 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %984, i8* %985, align 1
  %986 = lshr i32 %967, 31
  %987 = trunc i32 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %987, i8* %988, align 1
  %989 = lshr i32 %966, 31
  %990 = xor i32 %986, %989
  %991 = add i32 %990, %989
  %992 = icmp eq i32 %991, 2
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %993, i8* %994, align 1
  store %struct.Memory* %loadMem_40eebe, %struct.Memory** %MEMORY
  %loadMem_40eec2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 33
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %PC.i411
  %999 = add i64 %998, 110
  %1000 = load i64, i64* %PC.i411
  %1001 = add i64 %1000, 6
  %1002 = load i64, i64* %PC.i411
  %1003 = add i64 %1002, 6
  store i64 %1003, i64* %PC.i411
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1005 = load i8, i8* %1004, align 1
  %1006 = icmp eq i8 %1005, 0
  %1007 = zext i1 %1006 to i8
  store i8 %1007, i8* %BRANCH_TAKEN, align 1
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1009 = select i1 %1006, i64 %999, i64 %1001
  store i64 %1009, i64* %1008, align 8
  store %struct.Memory* %loadMem_40eec2, %struct.Memory** %MEMORY
  %loadBr_40eec2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eec2 = icmp eq i8 %loadBr_40eec2, 1
  br i1 %cmpBr_40eec2, label %block_.L_40ef30, label %block_.L_40eec8

block_.L_40eec8:                                  ; preds = %block_40eebe, %block_.L_40eeb4
  %loadMem_40eec8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 33
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1012 to i64*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 1
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 15
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %1018 to i64*
  %1019 = load i64, i64* %RBP.i410
  %1020 = sub i64 %1019, 52
  %1021 = load i64, i64* %PC.i408
  %1022 = add i64 %1021, 4
  store i64 %1022, i64* %PC.i408
  %1023 = inttoptr i64 %1020 to i32*
  %1024 = load i32, i32* %1023
  %1025 = sext i32 %1024 to i64
  store i64 %1025, i64* %RAX.i409, align 8
  store %struct.Memory* %loadMem_40eec8, %struct.Memory** %MEMORY
  %loadMem_40eecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 33
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 1
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RAX.i406 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 5
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1034 to i64*
  %1035 = load i64, i64* %RAX.i406
  %1036 = add i64 %1035, 12099168
  %1037 = load i64, i64* %PC.i405
  %1038 = add i64 %1037, 8
  store i64 %1038, i64* %PC.i405
  %1039 = inttoptr i64 %1036 to i8*
  %1040 = load i8, i8* %1039
  %1041 = zext i8 %1040 to i64
  store i64 %1041, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_40eecc, %struct.Memory** %MEMORY
  %loadMem_40eed4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 33
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1046 = getelementptr inbounds %struct.GPR, %struct.GPR* %1045, i32 0, i32 5
  %1047 = getelementptr inbounds %struct.Reg, %struct.Reg* %1046, i32 0, i32 0
  %ECX.i404 = bitcast %union.anon* %1047 to i32*
  %1048 = load i32, i32* %ECX.i404
  %1049 = zext i32 %1048 to i64
  %1050 = load i64, i64* %PC.i403
  %1051 = add i64 %1050, 3
  store i64 %1051, i64* %PC.i403
  %1052 = sub i32 %1048, 1
  %1053 = icmp ult i32 %1048, 1
  %1054 = zext i1 %1053 to i8
  %1055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1054, i8* %1055, align 1
  %1056 = and i32 %1052, 255
  %1057 = call i32 @llvm.ctpop.i32(i32 %1056)
  %1058 = trunc i32 %1057 to i8
  %1059 = and i8 %1058, 1
  %1060 = xor i8 %1059, 1
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1060, i8* %1061, align 1
  %1062 = xor i64 1, %1049
  %1063 = trunc i64 %1062 to i32
  %1064 = xor i32 %1063, %1052
  %1065 = lshr i32 %1064, 4
  %1066 = trunc i32 %1065 to i8
  %1067 = and i8 %1066, 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1067, i8* %1068, align 1
  %1069 = icmp eq i32 %1052, 0
  %1070 = zext i1 %1069 to i8
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1070, i8* %1071, align 1
  %1072 = lshr i32 %1052, 31
  %1073 = trunc i32 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1073, i8* %1074, align 1
  %1075 = lshr i32 %1048, 31
  %1076 = xor i32 %1072, %1075
  %1077 = add i32 %1076, %1075
  %1078 = icmp eq i32 %1077, 2
  %1079 = zext i1 %1078 to i8
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1079, i8* %1080, align 1
  store %struct.Memory* %loadMem_40eed4, %struct.Memory** %MEMORY
  %loadMem_40eed7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 33
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %PC.i402
  %1085 = add i64 %1084, 75
  %1086 = load i64, i64* %PC.i402
  %1087 = add i64 %1086, 6
  %1088 = load i64, i64* %PC.i402
  %1089 = add i64 %1088, 6
  store i64 %1089, i64* %PC.i402
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1091 = load i8, i8* %1090, align 1
  store i8 %1091, i8* %BRANCH_TAKEN, align 1
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1093 = icmp ne i8 %1091, 0
  %1094 = select i1 %1093, i64 %1085, i64 %1087
  store i64 %1094, i64* %1092, align 8
  store %struct.Memory* %loadMem_40eed7, %struct.Memory** %MEMORY
  %loadBr_40eed7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eed7 = icmp eq i8 %loadBr_40eed7, 1
  br i1 %cmpBr_40eed7, label %block_.L_40ef22, label %block_40eedd

block_40eedd:                                     ; preds = %block_.L_40eec8
  %loadMem_40eedd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 33
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1097 to i64*
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 1
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 15
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1103 to i64*
  %1104 = load i64, i64* %RBP.i401
  %1105 = sub i64 %1104, 52
  %1106 = load i64, i64* %PC.i399
  %1107 = add i64 %1106, 4
  store i64 %1107, i64* %PC.i399
  %1108 = inttoptr i64 %1105 to i32*
  %1109 = load i32, i32* %1108
  %1110 = sext i32 %1109 to i64
  store i64 %1110, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_40eedd, %struct.Memory** %MEMORY
  %loadMem_40eee1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 33
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1113 to i64*
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 1
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 5
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %1119 to i64*
  %1120 = load i64, i64* %RAX.i397
  %1121 = add i64 %1120, 12099168
  %1122 = load i64, i64* %PC.i396
  %1123 = add i64 %1122, 8
  store i64 %1123, i64* %PC.i396
  %1124 = inttoptr i64 %1121 to i8*
  %1125 = load i8, i8* %1124
  %1126 = zext i8 %1125 to i64
  store i64 %1126, i64* %RCX.i398, align 8
  store %struct.Memory* %loadMem_40eee1, %struct.Memory** %MEMORY
  %loadMem_40eee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 5
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %ECX.i395 = bitcast %union.anon* %1132 to i32*
  %1133 = load i32, i32* %ECX.i395
  %1134 = zext i32 %1133 to i64
  %1135 = load i64, i64* %PC.i394
  %1136 = add i64 %1135, 3
  store i64 %1136, i64* %PC.i394
  %1137 = sub i32 %1133, 2
  %1138 = icmp ult i32 %1133, 2
  %1139 = zext i1 %1138 to i8
  %1140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1139, i8* %1140, align 1
  %1141 = and i32 %1137, 255
  %1142 = call i32 @llvm.ctpop.i32(i32 %1141)
  %1143 = trunc i32 %1142 to i8
  %1144 = and i8 %1143, 1
  %1145 = xor i8 %1144, 1
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1145, i8* %1146, align 1
  %1147 = xor i64 2, %1134
  %1148 = trunc i64 %1147 to i32
  %1149 = xor i32 %1148, %1137
  %1150 = lshr i32 %1149, 4
  %1151 = trunc i32 %1150 to i8
  %1152 = and i8 %1151, 1
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1152, i8* %1153, align 1
  %1154 = icmp eq i32 %1137, 0
  %1155 = zext i1 %1154 to i8
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1155, i8* %1156, align 1
  %1157 = lshr i32 %1137, 31
  %1158 = trunc i32 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1158, i8* %1159, align 1
  %1160 = lshr i32 %1133, 31
  %1161 = xor i32 %1157, %1160
  %1162 = add i32 %1161, %1160
  %1163 = icmp eq i32 %1162, 2
  %1164 = zext i1 %1163 to i8
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1164, i8* %1165, align 1
  store %struct.Memory* %loadMem_40eee9, %struct.Memory** %MEMORY
  %loadMem_40eeec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 33
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %PC.i393
  %1170 = add i64 %1169, 54
  %1171 = load i64, i64* %PC.i393
  %1172 = add i64 %1171, 6
  %1173 = load i64, i64* %PC.i393
  %1174 = add i64 %1173, 6
  store i64 %1174, i64* %PC.i393
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1176 = load i8, i8* %1175, align 1
  store i8 %1176, i8* %BRANCH_TAKEN, align 1
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1178 = icmp ne i8 %1176, 0
  %1179 = select i1 %1178, i64 %1170, i64 %1172
  store i64 %1179, i64* %1177, align 8
  store %struct.Memory* %loadMem_40eeec, %struct.Memory** %MEMORY
  %loadBr_40eeec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40eeec = icmp eq i8 %loadBr_40eeec, 1
  br i1 %cmpBr_40eeec, label %block_.L_40ef22, label %block_40eef2

block_40eef2:                                     ; preds = %block_40eedd
  %loadMem_40eef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 9
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RSI.i392 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %PC.i391
  %1187 = add i64 %1186, 5
  store i64 %1187, i64* %PC.i391
  store i64 1, i64* %RSI.i392, align 8
  store %struct.Memory* %loadMem_40eef2, %struct.Memory** %MEMORY
  %loadMem_40eef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 1
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %EAX.i389 = bitcast %union.anon* %1193 to i32*
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 1
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %1196 to i64*
  %1197 = load i64, i64* %RAX.i390
  %1198 = load i32, i32* %EAX.i389
  %1199 = zext i32 %1198 to i64
  %1200 = load i64, i64* %PC.i388
  %1201 = add i64 %1200, 2
  store i64 %1201, i64* %PC.i388
  %1202 = xor i64 %1199, %1197
  %1203 = trunc i64 %1202 to i32
  %1204 = and i64 %1202, 4294967295
  store i64 %1204, i64* %RAX.i390, align 8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1205, align 1
  %1206 = and i32 %1203, 255
  %1207 = call i32 @llvm.ctpop.i32(i32 %1206)
  %1208 = trunc i32 %1207 to i8
  %1209 = and i8 %1208, 1
  %1210 = xor i8 %1209, 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1210, i8* %1211, align 1
  %1212 = icmp eq i32 %1203, 0
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1213, i8* %1214, align 1
  %1215 = lshr i32 %1203, 31
  %1216 = trunc i32 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1216, i8* %1217, align 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1218, align 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1219, align 1
  store %struct.Memory* %loadMem_40eef7, %struct.Memory** %MEMORY
  %loadMem_40eef9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 1
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %1225 to i32*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 7
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RDX.i387 = bitcast %union.anon* %1228 to i64*
  %1229 = load i32, i32* %EAX.i386
  %1230 = zext i32 %1229 to i64
  %1231 = load i64, i64* %PC.i385
  %1232 = add i64 %1231, 2
  store i64 %1232, i64* %PC.i385
  %1233 = and i64 %1230, 4294967295
  store i64 %1233, i64* %RDX.i387, align 8
  store %struct.Memory* %loadMem_40eef9, %struct.Memory** %MEMORY
  %loadMem_40eefb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 11
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i384
  %1244 = sub i64 %1243, 52
  %1245 = load i64, i64* %PC.i382
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %PC.i382
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RDI.i383, align 8
  store %struct.Memory* %loadMem_40eefb, %struct.Memory** %MEMORY
  %loadMem1_40eefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %PC.i381
  %1254 = add i64 %1253, 770
  %1255 = load i64, i64* %PC.i381
  %1256 = add i64 %1255, 5
  %1257 = load i64, i64* %PC.i381
  %1258 = add i64 %1257, 5
  store i64 %1258, i64* %PC.i381
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1260 = load i64, i64* %1259, align 8
  %1261 = add i64 %1260, -8
  %1262 = inttoptr i64 %1261 to i64*
  store i64 %1256, i64* %1262
  store i64 %1261, i64* %1259, align 8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1254, i64* %1263, align 8
  store %struct.Memory* %loadMem1_40eefe, %struct.Memory** %MEMORY
  %loadMem2_40eefe = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40eefe = load i64, i64* %3
  %call2_40eefe = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64 %loadPC_40eefe, %struct.Memory* %loadMem2_40eefe)
  store %struct.Memory* %call2_40eefe, %struct.Memory** %MEMORY
  %loadMem_40ef03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %1269 to i32*
  %1270 = load i32, i32* %EAX.i380
  %1271 = zext i32 %1270 to i64
  %1272 = load i64, i64* %PC.i379
  %1273 = add i64 %1272, 3
  store i64 %1273, i64* %PC.i379
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1274, align 1
  %1275 = and i32 %1270, 255
  %1276 = call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1279, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1281, align 1
  %1282 = icmp eq i32 %1270, 0
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1270, 31
  %1286 = trunc i32 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1286, i8* %1287, align 1
  %1288 = lshr i32 %1270, 31
  %1289 = xor i32 %1285, %1288
  %1290 = add i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1292, i8* %1293, align 1
  store %struct.Memory* %loadMem_40ef03, %struct.Memory** %MEMORY
  %loadMem_40ef06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %PC.i378
  %1298 = add i64 %1297, 42
  %1299 = load i64, i64* %PC.i378
  %1300 = add i64 %1299, 6
  %1301 = load i64, i64* %PC.i378
  %1302 = add i64 %1301, 6
  store i64 %1302, i64* %PC.i378
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1304 = load i8, i8* %1303, align 1
  %1305 = icmp eq i8 %1304, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %BRANCH_TAKEN, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1308 = select i1 %1305, i64 %1298, i64 %1300
  store i64 %1308, i64* %1307, align 8
  store %struct.Memory* %loadMem_40ef06, %struct.Memory** %MEMORY
  %loadBr_40ef06 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef06 = icmp eq i8 %loadBr_40ef06, 1
  br i1 %cmpBr_40ef06, label %block_.L_40ef30, label %block_40ef0c

block_40ef0c:                                     ; preds = %block_40eef2
  %loadMem_40ef0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 9
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RSI.i377 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %PC.i376
  %1316 = add i64 %1315, 5
  store i64 %1316, i64* %PC.i376
  store i64 1, i64* %RSI.i377, align 8
  store %struct.Memory* %loadMem_40ef0c, %struct.Memory** %MEMORY
  %loadMem_40ef11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 11
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RDI.i374 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 15
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %1325 to i64*
  %1326 = load i64, i64* %RBP.i375
  %1327 = sub i64 %1326, 52
  %1328 = load i64, i64* %PC.i373
  %1329 = add i64 %1328, 3
  store i64 %1329, i64* %PC.i373
  %1330 = inttoptr i64 %1327 to i32*
  %1331 = load i32, i32* %1330
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RDI.i374, align 8
  store %struct.Memory* %loadMem_40ef11, %struct.Memory** %MEMORY
  %loadMem1_40ef14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1335 to i64*
  %1336 = load i64, i64* %PC.i372
  %1337 = add i64 %1336, -22916
  %1338 = load i64, i64* %PC.i372
  %1339 = add i64 %1338, 5
  %1340 = load i64, i64* %PC.i372
  %1341 = add i64 %1340, 5
  store i64 %1341, i64* %PC.i372
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1343 = load i64, i64* %1342, align 8
  %1344 = add i64 %1343, -8
  %1345 = inttoptr i64 %1344 to i64*
  store i64 %1339, i64* %1345
  store i64 %1344, i64* %1342, align 8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1337, i64* %1346, align 8
  store %struct.Memory* %loadMem1_40ef14, %struct.Memory** %MEMORY
  %loadMem2_40ef14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40ef14 = load i64, i64* %3
  %call2_40ef14 = call %struct.Memory* @sub_409590.is_suicide(%struct.State* %0, i64 %loadPC_40ef14, %struct.Memory* %loadMem2_40ef14)
  store %struct.Memory* %call2_40ef14, %struct.Memory** %MEMORY
  %loadMem_40ef19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 1
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %1352 to i32*
  %1353 = load i32, i32* %EAX.i371
  %1354 = zext i32 %1353 to i64
  %1355 = load i64, i64* %PC.i370
  %1356 = add i64 %1355, 3
  store i64 %1356, i64* %PC.i370
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1357, align 1
  %1358 = and i32 %1353, 255
  %1359 = call i32 @llvm.ctpop.i32(i32 %1358)
  %1360 = trunc i32 %1359 to i8
  %1361 = and i8 %1360, 1
  %1362 = xor i8 %1361, 1
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1362, i8* %1363, align 1
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1364, align 1
  %1365 = icmp eq i32 %1353, 0
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1366, i8* %1367, align 1
  %1368 = lshr i32 %1353, 31
  %1369 = trunc i32 %1368 to i8
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1369, i8* %1370, align 1
  %1371 = lshr i32 %1353, 31
  %1372 = xor i32 %1368, %1371
  %1373 = add i32 %1372, %1371
  %1374 = icmp eq i32 %1373, 2
  %1375 = zext i1 %1374 to i8
  %1376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1375, i8* %1376, align 1
  store %struct.Memory* %loadMem_40ef19, %struct.Memory** %MEMORY
  %loadMem_40ef1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 33
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %PC.i369
  %1381 = add i64 %1380, 20
  %1382 = load i64, i64* %PC.i369
  %1383 = add i64 %1382, 6
  %1384 = load i64, i64* %PC.i369
  %1385 = add i64 %1384, 6
  store i64 %1385, i64* %PC.i369
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1387 = load i8, i8* %1386, align 1
  store i8 %1387, i8* %BRANCH_TAKEN, align 1
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1389 = icmp ne i8 %1387, 0
  %1390 = select i1 %1389, i64 %1381, i64 %1383
  store i64 %1390, i64* %1388, align 8
  store %struct.Memory* %loadMem_40ef1c, %struct.Memory** %MEMORY
  %loadBr_40ef1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef1c = icmp eq i8 %loadBr_40ef1c, 1
  br i1 %cmpBr_40ef1c, label %block_.L_40ef30, label %block_.L_40ef22

block_.L_40ef22:                                  ; preds = %block_40ef0c, %block_40eedd, %block_.L_40eec8, %block_40ee9e, %block_40ee6f, %block_.L_40ee5a
  %loadMem_40ef22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 33
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 15
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RBP.i368 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %RBP.i368
  %1398 = sub i64 %1397, 48
  %1399 = load i64, i64* %PC.i367
  %1400 = add i64 %1399, 7
  store i64 %1400, i64* %PC.i367
  %1401 = inttoptr i64 %1398 to i32*
  store i32 0, i32* %1401
  store %struct.Memory* %loadMem_40ef22, %struct.Memory** %MEMORY
  %loadMem_40ef29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 15
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1407 to i64*
  %1408 = load i64, i64* %RBP.i366
  %1409 = sub i64 %1408, 52
  %1410 = load i64, i64* %PC.i365
  %1411 = add i64 %1410, 7
  store i64 %1411, i64* %PC.i365
  %1412 = inttoptr i64 %1409 to i32*
  store i32 0, i32* %1412
  store %struct.Memory* %loadMem_40ef29, %struct.Memory** %MEMORY
  br label %block_.L_40ef30

block_.L_40ef30:                                  ; preds = %block_.L_40ef22, %block_40ef0c, %block_40eef2, %block_40eebe
  %loadMem_40ef30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 33
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1415 to i64*
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 7
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 15
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RBP.i364
  %1423 = sub i64 %1422, 96
  %1424 = load i64, i64* %PC.i362
  %1425 = add i64 %1424, 4
  store i64 %1425, i64* %PC.i362
  store i64 %1423, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_40ef30, %struct.Memory** %MEMORY
  %loadMem_40ef34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 1
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %RAX.i360 = bitcast %union.anon* %1431 to i64*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 15
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %1434 to i64*
  %1435 = load i64, i64* %RBP.i361
  %1436 = sub i64 %1435, 48
  %1437 = load i64, i64* %PC.i359
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC.i359
  %1439 = inttoptr i64 %1436 to i32*
  %1440 = load i32, i32* %1439
  %1441 = zext i32 %1440 to i64
  store i64 %1441, i64* %RAX.i360, align 8
  store %struct.Memory* %loadMem_40ef34, %struct.Memory** %MEMORY
  %loadMem_40ef37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 33
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 5
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 15
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %1450 to i64*
  %1451 = load i64, i64* %RBP.i358
  %1452 = sub i64 %1451, 64
  %1453 = load i64, i64* %PC.i356
  %1454 = add i64 %1453, 4
  store i64 %1454, i64* %PC.i356
  %1455 = inttoptr i64 %1452 to i64*
  %1456 = load i64, i64* %1455
  store i64 %1456, i64* %RCX.i357, align 8
  store %struct.Memory* %loadMem_40ef37, %struct.Memory** %MEMORY
  %loadMem_40ef3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 1
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %EAX.i354 = bitcast %union.anon* %1462 to i32*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 5
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %1465 to i64*
  %1466 = load i64, i64* %RCX.i355
  %1467 = load i32, i32* %EAX.i354
  %1468 = zext i32 %1467 to i64
  %1469 = load i64, i64* %PC.i353
  %1470 = add i64 %1469, 2
  store i64 %1470, i64* %PC.i353
  %1471 = inttoptr i64 %1466 to i32*
  store i32 %1467, i32* %1471
  store %struct.Memory* %loadMem_40ef3b, %struct.Memory** %MEMORY
  %loadMem_40ef3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1473 = getelementptr inbounds %struct.GPR, %struct.GPR* %1472, i32 0, i32 33
  %1474 = getelementptr inbounds %struct.Reg, %struct.Reg* %1473, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1474 to i64*
  %1475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1476 = getelementptr inbounds %struct.GPR, %struct.GPR* %1475, i32 0, i32 1
  %1477 = getelementptr inbounds %struct.Reg, %struct.Reg* %1476, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %1477 to i64*
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 15
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %1480 to i64*
  %1481 = load i64, i64* %RBP.i352
  %1482 = sub i64 %1481, 52
  %1483 = load i64, i64* %PC.i350
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i350
  %1485 = inttoptr i64 %1482 to i32*
  %1486 = load i32, i32* %1485
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_40ef3d, %struct.Memory** %MEMORY
  %loadMem_40ef40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 33
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1490 to i64*
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 5
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 15
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1496 to i64*
  %1497 = load i64, i64* %RBP.i349
  %1498 = sub i64 %1497, 72
  %1499 = load i64, i64* %PC.i347
  %1500 = add i64 %1499, 4
  store i64 %1500, i64* %PC.i347
  %1501 = inttoptr i64 %1498 to i64*
  %1502 = load i64, i64* %1501
  store i64 %1502, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_40ef40, %struct.Memory** %MEMORY
  %loadMem_40ef44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 1
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %EAX.i345 = bitcast %union.anon* %1508 to i32*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 5
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RCX.i346
  %1513 = load i32, i32* %EAX.i345
  %1514 = zext i32 %1513 to i64
  %1515 = load i64, i64* %PC.i344
  %1516 = add i64 %1515, 2
  store i64 %1516, i64* %PC.i344
  %1517 = inttoptr i64 %1512 to i32*
  store i32 %1513, i32* %1517
  store %struct.Memory* %loadMem_40ef44, %struct.Memory** %MEMORY
  %loadMem_40ef46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 5
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 15
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1526 to i64*
  %1527 = load i64, i64* %RBP.i343
  %1528 = sub i64 %1527, 80
  %1529 = load i64, i64* %PC.i341
  %1530 = add i64 %1529, 4
  store i64 %1530, i64* %PC.i341
  %1531 = inttoptr i64 %1528 to i64*
  %1532 = load i64, i64* %1531
  store i64 %1532, i64* %RCX.i342, align 8
  store %struct.Memory* %loadMem_40ef46, %struct.Memory** %MEMORY
  %loadMem_40ef4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 33
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1535 to i64*
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 5
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %1538 to i64*
  %1539 = load i64, i64* %RCX.i340
  %1540 = load i64, i64* %PC.i339
  %1541 = add i64 %1540, 6
  store i64 %1541, i64* %PC.i339
  %1542 = inttoptr i64 %1539 to i32*
  store i32 0, i32* %1542
  store %struct.Memory* %loadMem_40ef4a, %struct.Memory** %MEMORY
  %loadMem_40ef50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 33
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1545 to i64*
  %1546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1547 = getelementptr inbounds %struct.GPR, %struct.GPR* %1546, i32 0, i32 11
  %1548 = getelementptr inbounds %struct.Reg, %struct.Reg* %1547, i32 0, i32 0
  %RDI.i337 = bitcast %union.anon* %1548 to i64*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 15
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1551 to i64*
  %1552 = load i64, i64* %RBP.i338
  %1553 = sub i64 %1552, 24
  %1554 = load i64, i64* %PC.i336
  %1555 = add i64 %1554, 3
  store i64 %1555, i64* %PC.i336
  %1556 = inttoptr i64 %1553 to i32*
  %1557 = load i32, i32* %1556
  %1558 = zext i32 %1557 to i64
  store i64 %1558, i64* %RDI.i337, align 8
  store %struct.Memory* %loadMem_40ef50, %struct.Memory** %MEMORY
  %loadMem_40ef53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 9
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RSI.i334 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 15
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %RBP.i335
  %1569 = sub i64 %1568, 28
  %1570 = load i64, i64* %PC.i333
  %1571 = add i64 %1570, 3
  store i64 %1571, i64* %PC.i333
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = zext i32 %1573 to i64
  store i64 %1574, i64* %RSI.i334, align 8
  store %struct.Memory* %loadMem_40ef53, %struct.Memory** %MEMORY
  %loadMem1_40ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %PC.i332
  %1579 = add i64 %1578, 682
  %1580 = load i64, i64* %PC.i332
  %1581 = add i64 %1580, 5
  %1582 = load i64, i64* %PC.i332
  %1583 = add i64 %1582, 5
  store i64 %1583, i64* %PC.i332
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1585 = load i64, i64* %1584, align 8
  %1586 = add i64 %1585, -8
  %1587 = inttoptr i64 %1586 to i64*
  store i64 %1581, i64* %1587
  store i64 %1586, i64* %1584, align 8
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1579, i64* %1588, align 8
  store %struct.Memory* %loadMem1_40ef56, %struct.Memory** %MEMORY
  %loadMem2_40ef56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40ef56 = load i64, i64* %3
  %call2_40ef56 = call %struct.Memory* @sub_40f200.is_ko(%struct.State* %0, i64 %loadPC_40ef56, %struct.Memory* %loadMem2_40ef56)
  store %struct.Memory* %call2_40ef56, %struct.Memory** %MEMORY
  %loadMem_40ef5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 33
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 1
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %EAX.i330 = bitcast %union.anon* %1594 to i32*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 15
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %RBP.i331
  %1599 = sub i64 %1598, 92
  %1600 = load i32, i32* %EAX.i330
  %1601 = zext i32 %1600 to i64
  %1602 = load i64, i64* %PC.i329
  %1603 = add i64 %1602, 3
  store i64 %1603, i64* %PC.i329
  %1604 = inttoptr i64 %1599 to i32*
  store i32 %1600, i32* %1604
  store %struct.Memory* %loadMem_40ef5b, %struct.Memory** %MEMORY
  %loadMem_40ef5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 33
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1607 to i64*
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 15
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %RBP.i328
  %1612 = sub i64 %1611, 92
  %1613 = load i64, i64* %PC.i327
  %1614 = add i64 %1613, 4
  store i64 %1614, i64* %PC.i327
  %1615 = inttoptr i64 %1612 to i32*
  %1616 = load i32, i32* %1615
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1617, align 1
  %1618 = and i32 %1616, 255
  %1619 = call i32 @llvm.ctpop.i32(i32 %1618)
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1622, i8* %1623, align 1
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1624, align 1
  %1625 = icmp eq i32 %1616, 0
  %1626 = zext i1 %1625 to i8
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1626, i8* %1627, align 1
  %1628 = lshr i32 %1616, 31
  %1629 = trunc i32 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1629, i8* %1630, align 1
  %1631 = lshr i32 %1616, 31
  %1632 = xor i32 %1628, %1631
  %1633 = add i32 %1632, %1631
  %1634 = icmp eq i32 %1633, 2
  %1635 = zext i1 %1634 to i8
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1635, i8* %1636, align 1
  store %struct.Memory* %loadMem_40ef5e, %struct.Memory** %MEMORY
  %loadMem_40ef62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %PC.i326
  %1641 = add i64 %1640, 41
  %1642 = load i64, i64* %PC.i326
  %1643 = add i64 %1642, 6
  %1644 = load i64, i64* %PC.i326
  %1645 = add i64 %1644, 6
  store i64 %1645, i64* %PC.i326
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1647 = load i8, i8* %1646, align 1
  %1648 = icmp eq i8 %1647, 0
  %1649 = zext i1 %1648 to i8
  store i8 %1649, i8* %BRANCH_TAKEN, align 1
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1651 = select i1 %1648, i64 %1641, i64 %1643
  store i64 %1651, i64* %1650, align 8
  store %struct.Memory* %loadMem_40ef62, %struct.Memory** %MEMORY
  %loadBr_40ef62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef62 = icmp eq i8 %loadBr_40ef62, 1
  br i1 %cmpBr_40ef62, label %block_.L_40ef8b, label %block_40ef68

block_40ef68:                                     ; preds = %block_.L_40ef30
  %loadMem_40ef68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 15
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RBP.i325
  %1659 = sub i64 %1658, 48
  %1660 = load i64, i64* %PC.i324
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %PC.i324
  %1662 = inttoptr i64 %1659 to i32*
  %1663 = load i32, i32* %1662
  %1664 = sub i32 %1663, 6
  %1665 = icmp ult i32 %1663, 6
  %1666 = zext i1 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1666, i8* %1667, align 1
  %1668 = and i32 %1664, 255
  %1669 = call i32 @llvm.ctpop.i32(i32 %1668)
  %1670 = trunc i32 %1669 to i8
  %1671 = and i8 %1670, 1
  %1672 = xor i8 %1671, 1
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1672, i8* %1673, align 1
  %1674 = xor i32 %1663, 6
  %1675 = xor i32 %1674, %1664
  %1676 = lshr i32 %1675, 4
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1678, i8* %1679, align 1
  %1680 = icmp eq i32 %1664, 0
  %1681 = zext i1 %1680 to i8
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1681, i8* %1682, align 1
  %1683 = lshr i32 %1664, 31
  %1684 = trunc i32 %1683 to i8
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1684, i8* %1685, align 1
  %1686 = lshr i32 %1663, 31
  %1687 = xor i32 %1683, %1686
  %1688 = add i32 %1687, %1686
  %1689 = icmp eq i32 %1688, 2
  %1690 = zext i1 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1690, i8* %1691, align 1
  store %struct.Memory* %loadMem_40ef68, %struct.Memory** %MEMORY
  %loadMem_40ef6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1694 to i64*
  %1695 = load i64, i64* %PC.i323
  %1696 = add i64 %1695, 26
  %1697 = load i64, i64* %PC.i323
  %1698 = add i64 %1697, 6
  %1699 = load i64, i64* %PC.i323
  %1700 = add i64 %1699, 6
  store i64 %1700, i64* %PC.i323
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1702 = load i8, i8* %1701, align 1
  %1703 = icmp eq i8 %1702, 0
  %1704 = zext i1 %1703 to i8
  store i8 %1704, i8* %BRANCH_TAKEN, align 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1706 = select i1 %1703, i64 %1696, i64 %1698
  store i64 %1706, i64* %1705, align 8
  store %struct.Memory* %loadMem_40ef6c, %struct.Memory** %MEMORY
  %loadBr_40ef6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef6c = icmp eq i8 %loadBr_40ef6c, 1
  br i1 %cmpBr_40ef6c, label %block_.L_40ef86, label %block_40ef72

block_40ef72:                                     ; preds = %block_40ef68
  %loadMem_40ef72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 1
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 15
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %RBP.i322
  %1717 = sub i64 %1716, 64
  %1718 = load i64, i64* %PC.i320
  %1719 = add i64 %1718, 4
  store i64 %1719, i64* %PC.i320
  %1720 = inttoptr i64 %1717 to i64*
  %1721 = load i64, i64* %1720
  store i64 %1721, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_40ef72, %struct.Memory** %MEMORY
  %loadMem_40ef76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 33
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1724 to i64*
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1726 = getelementptr inbounds %struct.GPR, %struct.GPR* %1725, i32 0, i32 1
  %1727 = getelementptr inbounds %struct.Reg, %struct.Reg* %1726, i32 0, i32 0
  %RAX.i319 = bitcast %union.anon* %1727 to i64*
  %1728 = load i64, i64* %RAX.i319
  %1729 = load i64, i64* %PC.i318
  %1730 = add i64 %1729, 6
  store i64 %1730, i64* %PC.i318
  %1731 = inttoptr i64 %1728 to i32*
  store i32 0, i32* %1731
  store %struct.Memory* %loadMem_40ef76, %struct.Memory** %MEMORY
  %loadMem_40ef7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 33
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 1
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 15
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %1740 to i64*
  %1741 = load i64, i64* %RBP.i317
  %1742 = sub i64 %1741, 72
  %1743 = load i64, i64* %PC.i315
  %1744 = add i64 %1743, 4
  store i64 %1744, i64* %PC.i315
  %1745 = inttoptr i64 %1742 to i64*
  %1746 = load i64, i64* %1745
  store i64 %1746, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_40ef7c, %struct.Memory** %MEMORY
  %loadMem_40ef80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 33
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 1
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %RAX.i314
  %1754 = load i64, i64* %PC.i313
  %1755 = add i64 %1754, 6
  store i64 %1755, i64* %PC.i313
  %1756 = inttoptr i64 %1753 to i32*
  store i32 0, i32* %1756
  store %struct.Memory* %loadMem_40ef80, %struct.Memory** %MEMORY
  br label %block_.L_40ef86

block_.L_40ef86:                                  ; preds = %block_40ef72, %block_40ef68
  %loadMem_40ef86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %PC.i312
  %1761 = add i64 %1760, 305
  %1762 = load i64, i64* %PC.i312
  %1763 = add i64 %1762, 5
  store i64 %1763, i64* %PC.i312
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1761, i64* %1764, align 8
  store %struct.Memory* %loadMem_40ef86, %struct.Memory** %MEMORY
  br label %block_.L_40f0b7

block_.L_40ef8b:                                  ; preds = %block_.L_40ef30
  %loadMem_40ef8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 1
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %RBP.i311
  %1775 = sub i64 %1774, 48
  %1776 = load i64, i64* %PC.i309
  %1777 = add i64 %1776, 3
  store i64 %1777, i64* %PC.i309
  %1778 = inttoptr i64 %1775 to i32*
  %1779 = load i32, i32* %1778
  %1780 = zext i32 %1779 to i64
  store i64 %1780, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_40ef8b, %struct.Memory** %MEMORY
  %loadMem_40ef8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1782 = getelementptr inbounds %struct.GPR, %struct.GPR* %1781, i32 0, i32 33
  %1783 = getelementptr inbounds %struct.Reg, %struct.Reg* %1782, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %1783 to i64*
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 1
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %EAX.i307 = bitcast %union.anon* %1786 to i32*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 15
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %1789 to i64*
  %1790 = load i32, i32* %EAX.i307
  %1791 = zext i32 %1790 to i64
  %1792 = load i64, i64* %RBP.i308
  %1793 = sub i64 %1792, 88
  %1794 = load i64, i64* %PC.i306
  %1795 = add i64 %1794, 3
  store i64 %1795, i64* %PC.i306
  %1796 = inttoptr i64 %1793 to i32*
  %1797 = load i32, i32* %1796
  %1798 = sub i32 %1790, %1797
  %1799 = icmp ult i32 %1790, %1797
  %1800 = zext i1 %1799 to i8
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1800, i8* %1801, align 1
  %1802 = and i32 %1798, 255
  %1803 = call i32 @llvm.ctpop.i32(i32 %1802)
  %1804 = trunc i32 %1803 to i8
  %1805 = and i8 %1804, 1
  %1806 = xor i8 %1805, 1
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1806, i8* %1807, align 1
  %1808 = xor i32 %1797, %1790
  %1809 = xor i32 %1808, %1798
  %1810 = lshr i32 %1809, 4
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1812, i8* %1813, align 1
  %1814 = icmp eq i32 %1798, 0
  %1815 = zext i1 %1814 to i8
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1815, i8* %1816, align 1
  %1817 = lshr i32 %1798, 31
  %1818 = trunc i32 %1817 to i8
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1818, i8* %1819, align 1
  %1820 = lshr i32 %1790, 31
  %1821 = lshr i32 %1797, 31
  %1822 = xor i32 %1821, %1820
  %1823 = xor i32 %1817, %1820
  %1824 = add i32 %1823, %1822
  %1825 = icmp eq i32 %1824, 2
  %1826 = zext i1 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1826, i8* %1827, align 1
  store %struct.Memory* %loadMem_40ef8e, %struct.Memory** %MEMORY
  %loadMem_40ef91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %PC.i305
  %1832 = add i64 %1831, 30
  %1833 = load i64, i64* %PC.i305
  %1834 = add i64 %1833, 6
  %1835 = load i64, i64* %PC.i305
  %1836 = add i64 %1835, 6
  store i64 %1836, i64* %PC.i305
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1838 = load i8, i8* %1837, align 1
  %1839 = icmp eq i8 %1838, 0
  %1840 = zext i1 %1839 to i8
  store i8 %1840, i8* %BRANCH_TAKEN, align 1
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1842 = select i1 %1839, i64 %1832, i64 %1834
  store i64 %1842, i64* %1841, align 8
  store %struct.Memory* %loadMem_40ef91, %struct.Memory** %MEMORY
  %loadBr_40ef91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef91 = icmp eq i8 %loadBr_40ef91, 1
  br i1 %cmpBr_40ef91, label %block_.L_40efaf, label %block_40ef97

block_40ef97:                                     ; preds = %block_.L_40ef8b
  %loadMem_40ef97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 33
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1845 to i64*
  %1846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1847 = getelementptr inbounds %struct.GPR, %struct.GPR* %1846, i32 0, i32 1
  %1848 = getelementptr inbounds %struct.Reg, %struct.Reg* %1847, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %1848 to i64*
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 15
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %1851 to i64*
  %1852 = load i64, i64* %RBP.i304
  %1853 = sub i64 %1852, 24
  %1854 = load i64, i64* %PC.i302
  %1855 = add i64 %1854, 3
  store i64 %1855, i64* %PC.i302
  %1856 = inttoptr i64 %1853 to i32*
  %1857 = load i32, i32* %1856
  %1858 = zext i32 %1857 to i64
  store i64 %1858, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_40ef97, %struct.Memory** %MEMORY
  %loadMem_40ef9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 1
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %EAX.i300 = bitcast %union.anon* %1864 to i32*
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1866 = getelementptr inbounds %struct.GPR, %struct.GPR* %1865, i32 0, i32 15
  %1867 = getelementptr inbounds %struct.Reg, %struct.Reg* %1866, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1867 to i64*
  %1868 = load i32, i32* %EAX.i300
  %1869 = zext i32 %1868 to i64
  %1870 = load i64, i64* %RBP.i301
  %1871 = sub i64 %1870, 52
  %1872 = load i64, i64* %PC.i299
  %1873 = add i64 %1872, 3
  store i64 %1873, i64* %PC.i299
  %1874 = inttoptr i64 %1871 to i32*
  %1875 = load i32, i32* %1874
  %1876 = sub i32 %1868, %1875
  %1877 = icmp ult i32 %1868, %1875
  %1878 = zext i1 %1877 to i8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1878, i8* %1879, align 1
  %1880 = and i32 %1876, 255
  %1881 = call i32 @llvm.ctpop.i32(i32 %1880)
  %1882 = trunc i32 %1881 to i8
  %1883 = and i8 %1882, 1
  %1884 = xor i8 %1883, 1
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1884, i8* %1885, align 1
  %1886 = xor i32 %1875, %1868
  %1887 = xor i32 %1886, %1876
  %1888 = lshr i32 %1887, 4
  %1889 = trunc i32 %1888 to i8
  %1890 = and i8 %1889, 1
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1890, i8* %1891, align 1
  %1892 = icmp eq i32 %1876, 0
  %1893 = zext i1 %1892 to i8
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1893, i8* %1894, align 1
  %1895 = lshr i32 %1876, 31
  %1896 = trunc i32 %1895 to i8
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1896, i8* %1897, align 1
  %1898 = lshr i32 %1868, 31
  %1899 = lshr i32 %1875, 31
  %1900 = xor i32 %1899, %1898
  %1901 = xor i32 %1895, %1898
  %1902 = add i32 %1901, %1900
  %1903 = icmp eq i32 %1902, 2
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1904, i8* %1905, align 1
  store %struct.Memory* %loadMem_40ef9a, %struct.Memory** %MEMORY
  %loadMem_40ef9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1908 to i64*
  %1909 = load i64, i64* %PC.i298
  %1910 = add i64 %1909, 18
  %1911 = load i64, i64* %PC.i298
  %1912 = add i64 %1911, 6
  %1913 = load i64, i64* %PC.i298
  %1914 = add i64 %1913, 6
  store i64 %1914, i64* %PC.i298
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1916 = load i8, i8* %1915, align 1
  %1917 = icmp eq i8 %1916, 0
  %1918 = zext i1 %1917 to i8
  store i8 %1918, i8* %BRANCH_TAKEN, align 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1920 = select i1 %1917, i64 %1910, i64 %1912
  store i64 %1920, i64* %1919, align 8
  store %struct.Memory* %loadMem_40ef9d, %struct.Memory** %MEMORY
  %loadBr_40ef9d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40ef9d = icmp eq i8 %loadBr_40ef9d, 1
  br i1 %cmpBr_40ef9d, label %block_.L_40efaf, label %block_40efa3

block_40efa3:                                     ; preds = %block_40ef97
  %loadMem_40efa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 15
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %RBP.i297
  %1928 = sub i64 %1927, 20
  %1929 = load i64, i64* %PC.i296
  %1930 = add i64 %1929, 7
  store i64 %1930, i64* %PC.i296
  %1931 = inttoptr i64 %1928 to i32*
  store i32 0, i32* %1931
  store %struct.Memory* %loadMem_40efa3, %struct.Memory** %MEMORY
  %loadMem_40efaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %PC.i295
  %1936 = add i64 %1935, 580
  %1937 = load i64, i64* %PC.i295
  %1938 = add i64 %1937, 5
  store i64 %1938, i64* %PC.i295
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1936, i64* %1939, align 8
  store %struct.Memory* %loadMem_40efaa, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40efaf:                                  ; preds = %block_40ef97, %block_.L_40ef8b
  %loadMem_40efaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 33
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1942 to i64*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 15
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %1945 to i64*
  %1946 = load i64, i64* %RBP.i294
  %1947 = sub i64 %1946, 48
  %1948 = load i64, i64* %PC.i293
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %PC.i293
  %1950 = inttoptr i64 %1947 to i32*
  %1951 = load i32, i32* %1950
  %1952 = sub i32 %1951, 4
  %1953 = icmp ult i32 %1951, 4
  %1954 = zext i1 %1953 to i8
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1954, i8* %1955, align 1
  %1956 = and i32 %1952, 255
  %1957 = call i32 @llvm.ctpop.i32(i32 %1956)
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = xor i8 %1959, 1
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1960, i8* %1961, align 1
  %1962 = xor i32 %1951, 4
  %1963 = xor i32 %1962, %1952
  %1964 = lshr i32 %1963, 4
  %1965 = trunc i32 %1964 to i8
  %1966 = and i8 %1965, 1
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1966, i8* %1967, align 1
  %1968 = icmp eq i32 %1952, 0
  %1969 = zext i1 %1968 to i8
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1969, i8* %1970, align 1
  %1971 = lshr i32 %1952, 31
  %1972 = trunc i32 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1972, i8* %1973, align 1
  %1974 = lshr i32 %1951, 31
  %1975 = xor i32 %1971, %1974
  %1976 = add i32 %1975, %1974
  %1977 = icmp eq i32 %1976, 2
  %1978 = zext i1 %1977 to i8
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1978, i8* %1979, align 1
  store %struct.Memory* %loadMem_40efaf, %struct.Memory** %MEMORY
  %loadMem_40efb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1982 to i64*
  %1983 = load i64, i64* %PC.i292
  %1984 = add i64 %1983, 16
  %1985 = load i64, i64* %PC.i292
  %1986 = add i64 %1985, 6
  %1987 = load i64, i64* %PC.i292
  %1988 = add i64 %1987, 6
  store i64 %1988, i64* %PC.i292
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1990 = load i8, i8* %1989, align 1
  store i8 %1990, i8* %BRANCH_TAKEN, align 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1992 = icmp ne i8 %1990, 0
  %1993 = select i1 %1992, i64 %1984, i64 %1986
  store i64 %1993, i64* %1991, align 8
  store %struct.Memory* %loadMem_40efb3, %struct.Memory** %MEMORY
  %loadBr_40efb3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40efb3 = icmp eq i8 %loadBr_40efb3, 1
  br i1 %cmpBr_40efb3, label %block_.L_40efc3, label %block_40efb9

block_40efb9:                                     ; preds = %block_.L_40efaf
  %loadMem_40efb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RBP.i291
  %2001 = sub i64 %2000, 48
  %2002 = load i64, i64* %PC.i290
  %2003 = add i64 %2002, 4
  store i64 %2003, i64* %PC.i290
  %2004 = inttoptr i64 %2001 to i32*
  %2005 = load i32, i32* %2004
  %2006 = sub i32 %2005, 5
  %2007 = icmp ult i32 %2005, 5
  %2008 = zext i1 %2007 to i8
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2008, i8* %2009, align 1
  %2010 = and i32 %2006, 255
  %2011 = call i32 @llvm.ctpop.i32(i32 %2010)
  %2012 = trunc i32 %2011 to i8
  %2013 = and i8 %2012, 1
  %2014 = xor i8 %2013, 1
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2014, i8* %2015, align 1
  %2016 = xor i32 %2005, 5
  %2017 = xor i32 %2016, %2006
  %2018 = lshr i32 %2017, 4
  %2019 = trunc i32 %2018 to i8
  %2020 = and i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2020, i8* %2021, align 1
  %2022 = icmp eq i32 %2006, 0
  %2023 = zext i1 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2023, i8* %2024, align 1
  %2025 = lshr i32 %2006, 31
  %2026 = trunc i32 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i32 %2005, 31
  %2029 = xor i32 %2025, %2028
  %2030 = add i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2032, i8* %2033, align 1
  store %struct.Memory* %loadMem_40efb9, %struct.Memory** %MEMORY
  %loadMem_40efbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2036 to i64*
  %2037 = load i64, i64* %PC.i289
  %2038 = add i64 %2037, 18
  %2039 = load i64, i64* %PC.i289
  %2040 = add i64 %2039, 6
  %2041 = load i64, i64* %PC.i289
  %2042 = add i64 %2041, 6
  store i64 %2042, i64* %PC.i289
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2044 = load i8, i8* %2043, align 1
  %2045 = icmp eq i8 %2044, 0
  %2046 = zext i1 %2045 to i8
  store i8 %2046, i8* %BRANCH_TAKEN, align 1
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2048 = select i1 %2045, i64 %2038, i64 %2040
  store i64 %2048, i64* %2047, align 8
  store %struct.Memory* %loadMem_40efbd, %struct.Memory** %MEMORY
  %loadBr_40efbd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40efbd = icmp eq i8 %loadBr_40efbd, 1
  br i1 %cmpBr_40efbd, label %block_.L_40efcf, label %block_.L_40efc3

block_.L_40efc3:                                  ; preds = %block_40efb9, %block_.L_40efaf
  %loadMem_40efc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 15
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2054 to i64*
  %2055 = load i64, i64* %RBP.i288
  %2056 = sub i64 %2055, 20
  %2057 = load i64, i64* %PC.i287
  %2058 = add i64 %2057, 7
  store i64 %2058, i64* %PC.i287
  %2059 = inttoptr i64 %2056 to i32*
  store i32 0, i32* %2059
  store %struct.Memory* %loadMem_40efc3, %struct.Memory** %MEMORY
  %loadMem_40efca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 33
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2062 to i64*
  %2063 = load i64, i64* %PC.i286
  %2064 = add i64 %2063, 548
  %2065 = load i64, i64* %PC.i286
  %2066 = add i64 %2065, 5
  store i64 %2066, i64* %PC.i286
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2064, i64* %2067, align 8
  store %struct.Memory* %loadMem_40efca, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40efcf:                                  ; preds = %block_40efb9
  %loadMem_40efcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2069 = getelementptr inbounds %struct.GPR, %struct.GPR* %2068, i32 0, i32 33
  %2070 = getelementptr inbounds %struct.Reg, %struct.Reg* %2069, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2070 to i64*
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2072 = getelementptr inbounds %struct.GPR, %struct.GPR* %2071, i32 0, i32 1
  %2073 = getelementptr inbounds %struct.Reg, %struct.Reg* %2072, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %2073 to i64*
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 15
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %RBP.i285
  %2078 = sub i64 %2077, 48
  %2079 = load i64, i64* %PC.i283
  %2080 = add i64 %2079, 3
  store i64 %2080, i64* %PC.i283
  %2081 = inttoptr i64 %2078 to i32*
  %2082 = load i32, i32* %2081
  %2083 = zext i32 %2082 to i64
  store i64 %2083, i64* %RAX.i284, align 8
  store %struct.Memory* %loadMem_40efcf, %struct.Memory** %MEMORY
  %loadMem_40efd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2085 = getelementptr inbounds %struct.GPR, %struct.GPR* %2084, i32 0, i32 33
  %2086 = getelementptr inbounds %struct.Reg, %struct.Reg* %2085, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2086 to i64*
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 1
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %EAX.i281 = bitcast %union.anon* %2089 to i32*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 15
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2092 to i64*
  %2093 = load i32, i32* %EAX.i281
  %2094 = zext i32 %2093 to i64
  %2095 = load i64, i64* %RBP.i282
  %2096 = sub i64 %2095, 28
  %2097 = load i64, i64* %PC.i280
  %2098 = add i64 %2097, 3
  store i64 %2098, i64* %PC.i280
  %2099 = inttoptr i64 %2096 to i32*
  %2100 = load i32, i32* %2099
  %2101 = sub i32 %2093, %2100
  %2102 = icmp ult i32 %2093, %2100
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2103, i8* %2104, align 1
  %2105 = and i32 %2101, 255
  %2106 = call i32 @llvm.ctpop.i32(i32 %2105)
  %2107 = trunc i32 %2106 to i8
  %2108 = and i8 %2107, 1
  %2109 = xor i8 %2108, 1
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2109, i8* %2110, align 1
  %2111 = xor i32 %2100, %2093
  %2112 = xor i32 %2111, %2101
  %2113 = lshr i32 %2112, 4
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2115, i8* %2116, align 1
  %2117 = icmp eq i32 %2101, 0
  %2118 = zext i1 %2117 to i8
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2118, i8* %2119, align 1
  %2120 = lshr i32 %2101, 31
  %2121 = trunc i32 %2120 to i8
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2121, i8* %2122, align 1
  %2123 = lshr i32 %2093, 31
  %2124 = lshr i32 %2100, 31
  %2125 = xor i32 %2124, %2123
  %2126 = xor i32 %2120, %2123
  %2127 = add i32 %2126, %2125
  %2128 = icmp eq i32 %2127, 2
  %2129 = zext i1 %2128 to i8
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2129, i8* %2130, align 1
  store %struct.Memory* %loadMem_40efd2, %struct.Memory** %MEMORY
  %loadMem_40efd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 33
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2133 to i64*
  %2134 = load i64, i64* %PC.i279
  %2135 = add i64 %2134, 98
  %2136 = load i64, i64* %PC.i279
  %2137 = add i64 %2136, 6
  %2138 = load i64, i64* %PC.i279
  %2139 = add i64 %2138, 6
  store i64 %2139, i64* %PC.i279
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2141 = load i8, i8* %2140, align 1
  %2142 = icmp eq i8 %2141, 0
  %2143 = zext i1 %2142 to i8
  store i8 %2143, i8* %BRANCH_TAKEN, align 1
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2145 = select i1 %2142, i64 %2135, i64 %2137
  store i64 %2145, i64* %2144, align 8
  store %struct.Memory* %loadMem_40efd5, %struct.Memory** %MEMORY
  %loadBr_40efd5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40efd5 = icmp eq i8 %loadBr_40efd5, 1
  br i1 %cmpBr_40efd5, label %block_.L_40f037, label %block_40efdb

block_40efdb:                                     ; preds = %block_.L_40efcf
  %loadMem_40efdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 33
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 1
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 15
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RBP.i278
  %2156 = sub i64 %2155, 96
  %2157 = load i64, i64* %PC.i276
  %2158 = add i64 %2157, 3
  store i64 %2158, i64* %PC.i276
  %2159 = inttoptr i64 %2156 to i32*
  %2160 = load i32, i32* %2159
  %2161 = zext i32 %2160 to i64
  store i64 %2161, i64* %RAX.i277, align 8
  store %struct.Memory* %loadMem_40efdb, %struct.Memory** %MEMORY
  %loadMem_40efde = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 5
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RBP.i275
  %2172 = sub i64 %2171, 52
  %2173 = load i64, i64* %PC.i273
  %2174 = add i64 %2173, 3
  store i64 %2174, i64* %PC.i273
  %2175 = inttoptr i64 %2172 to i32*
  %2176 = load i32, i32* %2175
  %2177 = zext i32 %2176 to i64
  store i64 %2177, i64* %RCX.i274, align 8
  store %struct.Memory* %loadMem_40efde, %struct.Memory** %MEMORY
  %loadMem_40efe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 5
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RCX.i272
  %2185 = load i64, i64* %PC.i271
  %2186 = add i64 %2185, 3
  store i64 %2186, i64* %PC.i271
  %2187 = trunc i64 %2184 to i32
  %2188 = add i32 20, %2187
  %2189 = zext i32 %2188 to i64
  store i64 %2189, i64* %RCX.i272, align 8
  %2190 = icmp ult i32 %2188, %2187
  %2191 = icmp ult i32 %2188, 20
  %2192 = or i1 %2190, %2191
  %2193 = zext i1 %2192 to i8
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2193, i8* %2194, align 1
  %2195 = and i32 %2188, 255
  %2196 = call i32 @llvm.ctpop.i32(i32 %2195)
  %2197 = trunc i32 %2196 to i8
  %2198 = and i8 %2197, 1
  %2199 = xor i8 %2198, 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2199, i8* %2200, align 1
  %2201 = xor i64 20, %2184
  %2202 = trunc i64 %2201 to i32
  %2203 = xor i32 %2202, %2188
  %2204 = lshr i32 %2203, 4
  %2205 = trunc i32 %2204 to i8
  %2206 = and i8 %2205, 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2206, i8* %2207, align 1
  %2208 = icmp eq i32 %2188, 0
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2209, i8* %2210, align 1
  %2211 = lshr i32 %2188, 31
  %2212 = trunc i32 %2211 to i8
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2212, i8* %2213, align 1
  %2214 = lshr i32 %2187, 31
  %2215 = xor i32 %2211, %2214
  %2216 = add i32 %2215, %2211
  %2217 = icmp eq i32 %2216, 2
  %2218 = zext i1 %2217 to i8
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2218, i8* %2219, align 1
  store %struct.Memory* %loadMem_40efe1, %struct.Memory** %MEMORY
  %loadMem_40efe4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 33
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 5
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RCX.i270
  %2227 = load i64, i64* %PC.i269
  %2228 = add i64 %2227, 3
  store i64 %2228, i64* %PC.i269
  %2229 = trunc i64 %2226 to i32
  %2230 = sub i32 %2229, 1
  %2231 = zext i32 %2230 to i64
  store i64 %2231, i64* %RCX.i270, align 8
  %2232 = icmp ult i32 %2229, 1
  %2233 = zext i1 %2232 to i8
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2233, i8* %2234, align 1
  %2235 = and i32 %2230, 255
  %2236 = call i32 @llvm.ctpop.i32(i32 %2235)
  %2237 = trunc i32 %2236 to i8
  %2238 = and i8 %2237, 1
  %2239 = xor i8 %2238, 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2239, i8* %2240, align 1
  %2241 = xor i64 1, %2226
  %2242 = trunc i64 %2241 to i32
  %2243 = xor i32 %2242, %2230
  %2244 = lshr i32 %2243, 4
  %2245 = trunc i32 %2244 to i8
  %2246 = and i8 %2245, 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2246, i8* %2247, align 1
  %2248 = icmp eq i32 %2230, 0
  %2249 = zext i1 %2248 to i8
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2249, i8* %2250, align 1
  %2251 = lshr i32 %2230, 31
  %2252 = trunc i32 %2251 to i8
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2252, i8* %2253, align 1
  %2254 = lshr i32 %2229, 31
  %2255 = xor i32 %2251, %2254
  %2256 = add i32 %2255, %2254
  %2257 = icmp eq i32 %2256, 2
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2258, i8* %2259, align 1
  store %struct.Memory* %loadMem_40efe4, %struct.Memory** %MEMORY
  %loadMem_40efe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 33
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 1
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %EAX.i267 = bitcast %union.anon* %2265 to i32*
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 5
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %ECX.i268 = bitcast %union.anon* %2268 to i32*
  %2269 = load i32, i32* %EAX.i267
  %2270 = zext i32 %2269 to i64
  %2271 = load i32, i32* %ECX.i268
  %2272 = zext i32 %2271 to i64
  %2273 = load i64, i64* %PC.i266
  %2274 = add i64 %2273, 2
  store i64 %2274, i64* %PC.i266
  %2275 = sub i32 %2269, %2271
  %2276 = icmp ult i32 %2269, %2271
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2277, i8* %2278, align 1
  %2279 = and i32 %2275, 255
  %2280 = call i32 @llvm.ctpop.i32(i32 %2279)
  %2281 = trunc i32 %2280 to i8
  %2282 = and i8 %2281, 1
  %2283 = xor i8 %2282, 1
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2283, i8* %2284, align 1
  %2285 = xor i64 %2272, %2270
  %2286 = trunc i64 %2285 to i32
  %2287 = xor i32 %2286, %2275
  %2288 = lshr i32 %2287, 4
  %2289 = trunc i32 %2288 to i8
  %2290 = and i8 %2289, 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2290, i8* %2291, align 1
  %2292 = icmp eq i32 %2275, 0
  %2293 = zext i1 %2292 to i8
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2293, i8* %2294, align 1
  %2295 = lshr i32 %2275, 31
  %2296 = trunc i32 %2295 to i8
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2296, i8* %2297, align 1
  %2298 = lshr i32 %2269, 31
  %2299 = lshr i32 %2271, 31
  %2300 = xor i32 %2299, %2298
  %2301 = xor i32 %2295, %2298
  %2302 = add i32 %2301, %2300
  %2303 = icmp eq i32 %2302, 2
  %2304 = zext i1 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2304, i8* %2305, align 1
  store %struct.Memory* %loadMem_40efe7, %struct.Memory** %MEMORY
  %loadMem_40efe9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 33
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %2308 to i64*
  %2309 = load i64, i64* %PC.i265
  %2310 = add i64 %2309, 78
  %2311 = load i64, i64* %PC.i265
  %2312 = add i64 %2311, 6
  %2313 = load i64, i64* %PC.i265
  %2314 = add i64 %2313, 6
  store i64 %2314, i64* %PC.i265
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2316 = load i8, i8* %2315, align 1
  store i8 %2316, i8* %BRANCH_TAKEN, align 1
  %2317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2318 = icmp ne i8 %2316, 0
  %2319 = select i1 %2318, i64 %2310, i64 %2312
  store i64 %2319, i64* %2317, align 8
  store %struct.Memory* %loadMem_40efe9, %struct.Memory** %MEMORY
  %loadBr_40efe9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40efe9 = icmp eq i8 %loadBr_40efe9, 1
  br i1 %cmpBr_40efe9, label %block_.L_40f037, label %block_40efef

block_40efef:                                     ; preds = %block_40efdb
  %loadMem_40efef = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 1
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 15
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RBP.i264 = bitcast %union.anon* %2328 to i64*
  %2329 = load i64, i64* %RBP.i264
  %2330 = sub i64 %2329, 96
  %2331 = load i64, i64* %PC.i262
  %2332 = add i64 %2331, 3
  store i64 %2332, i64* %PC.i262
  %2333 = inttoptr i64 %2330 to i32*
  %2334 = load i32, i32* %2333
  %2335 = zext i32 %2334 to i64
  store i64 %2335, i64* %RAX.i263, align 8
  store %struct.Memory* %loadMem_40efef, %struct.Memory** %MEMORY
  %loadMem_40eff2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 33
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2338 to i64*
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2340 = getelementptr inbounds %struct.GPR, %struct.GPR* %2339, i32 0, i32 5
  %2341 = getelementptr inbounds %struct.Reg, %struct.Reg* %2340, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %2341 to i64*
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 15
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %RBP.i261
  %2346 = sub i64 %2345, 52
  %2347 = load i64, i64* %PC.i259
  %2348 = add i64 %2347, 3
  store i64 %2348, i64* %PC.i259
  %2349 = inttoptr i64 %2346 to i32*
  %2350 = load i32, i32* %2349
  %2351 = zext i32 %2350 to i64
  store i64 %2351, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_40eff2, %struct.Memory** %MEMORY
  %loadMem_40eff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 5
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RCX.i258 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RCX.i258
  %2359 = load i64, i64* %PC.i257
  %2360 = add i64 %2359, 3
  store i64 %2360, i64* %PC.i257
  %2361 = trunc i64 %2358 to i32
  %2362 = sub i32 %2361, 20
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RCX.i258, align 8
  %2364 = icmp ult i32 %2361, 20
  %2365 = zext i1 %2364 to i8
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2365, i8* %2366, align 1
  %2367 = and i32 %2362, 255
  %2368 = call i32 @llvm.ctpop.i32(i32 %2367)
  %2369 = trunc i32 %2368 to i8
  %2370 = and i8 %2369, 1
  %2371 = xor i8 %2370, 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2371, i8* %2372, align 1
  %2373 = xor i64 20, %2358
  %2374 = trunc i64 %2373 to i32
  %2375 = xor i32 %2374, %2362
  %2376 = lshr i32 %2375, 4
  %2377 = trunc i32 %2376 to i8
  %2378 = and i8 %2377, 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2378, i8* %2379, align 1
  %2380 = icmp eq i32 %2362, 0
  %2381 = zext i1 %2380 to i8
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2381, i8* %2382, align 1
  %2383 = lshr i32 %2362, 31
  %2384 = trunc i32 %2383 to i8
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2384, i8* %2385, align 1
  %2386 = lshr i32 %2361, 31
  %2387 = xor i32 %2383, %2386
  %2388 = add i32 %2387, %2386
  %2389 = icmp eq i32 %2388, 2
  %2390 = zext i1 %2389 to i8
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2390, i8* %2391, align 1
  store %struct.Memory* %loadMem_40eff5, %struct.Memory** %MEMORY
  %loadMem_40eff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 33
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 5
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %RCX.i256
  %2399 = load i64, i64* %PC.i255
  %2400 = add i64 %2399, 3
  store i64 %2400, i64* %PC.i255
  %2401 = trunc i64 %2398 to i32
  %2402 = sub i32 %2401, 1
  %2403 = zext i32 %2402 to i64
  store i64 %2403, i64* %RCX.i256, align 8
  %2404 = icmp ult i32 %2401, 1
  %2405 = zext i1 %2404 to i8
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2405, i8* %2406, align 1
  %2407 = and i32 %2402, 255
  %2408 = call i32 @llvm.ctpop.i32(i32 %2407)
  %2409 = trunc i32 %2408 to i8
  %2410 = and i8 %2409, 1
  %2411 = xor i8 %2410, 1
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2411, i8* %2412, align 1
  %2413 = xor i64 1, %2398
  %2414 = trunc i64 %2413 to i32
  %2415 = xor i32 %2414, %2402
  %2416 = lshr i32 %2415, 4
  %2417 = trunc i32 %2416 to i8
  %2418 = and i8 %2417, 1
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2418, i8* %2419, align 1
  %2420 = icmp eq i32 %2402, 0
  %2421 = zext i1 %2420 to i8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2421, i8* %2422, align 1
  %2423 = lshr i32 %2402, 31
  %2424 = trunc i32 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2424, i8* %2425, align 1
  %2426 = lshr i32 %2401, 31
  %2427 = xor i32 %2423, %2426
  %2428 = add i32 %2427, %2426
  %2429 = icmp eq i32 %2428, 2
  %2430 = zext i1 %2429 to i8
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2430, i8* %2431, align 1
  store %struct.Memory* %loadMem_40eff8, %struct.Memory** %MEMORY
  %loadMem_40effb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2433 = getelementptr inbounds %struct.GPR, %struct.GPR* %2432, i32 0, i32 33
  %2434 = getelementptr inbounds %struct.Reg, %struct.Reg* %2433, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2434 to i64*
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 1
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %EAX.i253 = bitcast %union.anon* %2437 to i32*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 5
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %ECX.i254 = bitcast %union.anon* %2440 to i32*
  %2441 = load i32, i32* %EAX.i253
  %2442 = zext i32 %2441 to i64
  %2443 = load i32, i32* %ECX.i254
  %2444 = zext i32 %2443 to i64
  %2445 = load i64, i64* %PC.i252
  %2446 = add i64 %2445, 2
  store i64 %2446, i64* %PC.i252
  %2447 = sub i32 %2441, %2443
  %2448 = icmp ult i32 %2441, %2443
  %2449 = zext i1 %2448 to i8
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2449, i8* %2450, align 1
  %2451 = and i32 %2447, 255
  %2452 = call i32 @llvm.ctpop.i32(i32 %2451)
  %2453 = trunc i32 %2452 to i8
  %2454 = and i8 %2453, 1
  %2455 = xor i8 %2454, 1
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2455, i8* %2456, align 1
  %2457 = xor i64 %2444, %2442
  %2458 = trunc i64 %2457 to i32
  %2459 = xor i32 %2458, %2447
  %2460 = lshr i32 %2459, 4
  %2461 = trunc i32 %2460 to i8
  %2462 = and i8 %2461, 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2462, i8* %2463, align 1
  %2464 = icmp eq i32 %2447, 0
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2465, i8* %2466, align 1
  %2467 = lshr i32 %2447, 31
  %2468 = trunc i32 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i32 %2441, 31
  %2471 = lshr i32 %2443, 31
  %2472 = xor i32 %2471, %2470
  %2473 = xor i32 %2467, %2470
  %2474 = add i32 %2473, %2472
  %2475 = icmp eq i32 %2474, 2
  %2476 = zext i1 %2475 to i8
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2476, i8* %2477, align 1
  store %struct.Memory* %loadMem_40effb, %struct.Memory** %MEMORY
  %loadMem_40effd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %PC.i251
  %2482 = add i64 %2481, 58
  %2483 = load i64, i64* %PC.i251
  %2484 = add i64 %2483, 6
  %2485 = load i64, i64* %PC.i251
  %2486 = add i64 %2485, 6
  store i64 %2486, i64* %PC.i251
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2488 = load i8, i8* %2487, align 1
  store i8 %2488, i8* %BRANCH_TAKEN, align 1
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2490 = icmp ne i8 %2488, 0
  %2491 = select i1 %2490, i64 %2482, i64 %2484
  store i64 %2491, i64* %2489, align 8
  store %struct.Memory* %loadMem_40effd, %struct.Memory** %MEMORY
  %loadBr_40effd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40effd = icmp eq i8 %loadBr_40effd, 1
  br i1 %cmpBr_40effd, label %block_.L_40f037, label %block_40f003

block_40f003:                                     ; preds = %block_40efef
  %loadMem_40f003 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 1
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 15
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %RBP.i250
  %2502 = sub i64 %2501, 96
  %2503 = load i64, i64* %PC.i248
  %2504 = add i64 %2503, 3
  store i64 %2504, i64* %PC.i248
  %2505 = inttoptr i64 %2502 to i32*
  %2506 = load i32, i32* %2505
  %2507 = zext i32 %2506 to i64
  store i64 %2507, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_40f003, %struct.Memory** %MEMORY
  %loadMem_40f006 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 33
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 5
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 15
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2516 to i64*
  %2517 = load i64, i64* %RBP.i247
  %2518 = sub i64 %2517, 52
  %2519 = load i64, i64* %PC.i245
  %2520 = add i64 %2519, 3
  store i64 %2520, i64* %PC.i245
  %2521 = inttoptr i64 %2518 to i32*
  %2522 = load i32, i32* %2521
  %2523 = zext i32 %2522 to i64
  store i64 %2523, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_40f006, %struct.Memory** %MEMORY
  %loadMem_40f009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 5
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RCX.i244 = bitcast %union.anon* %2529 to i64*
  %2530 = load i64, i64* %RCX.i244
  %2531 = load i64, i64* %PC.i243
  %2532 = add i64 %2531, 3
  store i64 %2532, i64* %PC.i243
  %2533 = trunc i64 %2530 to i32
  %2534 = sub i32 %2533, 20
  %2535 = zext i32 %2534 to i64
  store i64 %2535, i64* %RCX.i244, align 8
  %2536 = icmp ult i32 %2533, 20
  %2537 = zext i1 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2537, i8* %2538, align 1
  %2539 = and i32 %2534, 255
  %2540 = call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2543, i8* %2544, align 1
  %2545 = xor i64 20, %2530
  %2546 = trunc i64 %2545 to i32
  %2547 = xor i32 %2546, %2534
  %2548 = lshr i32 %2547, 4
  %2549 = trunc i32 %2548 to i8
  %2550 = and i8 %2549, 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2550, i8* %2551, align 1
  %2552 = icmp eq i32 %2534, 0
  %2553 = zext i1 %2552 to i8
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2553, i8* %2554, align 1
  %2555 = lshr i32 %2534, 31
  %2556 = trunc i32 %2555 to i8
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2556, i8* %2557, align 1
  %2558 = lshr i32 %2533, 31
  %2559 = xor i32 %2555, %2558
  %2560 = add i32 %2559, %2558
  %2561 = icmp eq i32 %2560, 2
  %2562 = zext i1 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2562, i8* %2563, align 1
  store %struct.Memory* %loadMem_40f009, %struct.Memory** %MEMORY
  %loadMem_40f00c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2565 = getelementptr inbounds %struct.GPR, %struct.GPR* %2564, i32 0, i32 33
  %2566 = getelementptr inbounds %struct.Reg, %struct.Reg* %2565, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2566 to i64*
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 5
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %RCX.i242 = bitcast %union.anon* %2569 to i64*
  %2570 = load i64, i64* %RCX.i242
  %2571 = load i64, i64* %PC.i241
  %2572 = add i64 %2571, 3
  store i64 %2572, i64* %PC.i241
  %2573 = trunc i64 %2570 to i32
  %2574 = add i32 1, %2573
  %2575 = zext i32 %2574 to i64
  store i64 %2575, i64* %RCX.i242, align 8
  %2576 = icmp ult i32 %2574, %2573
  %2577 = icmp ult i32 %2574, 1
  %2578 = or i1 %2576, %2577
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2579, i8* %2580, align 1
  %2581 = and i32 %2574, 255
  %2582 = call i32 @llvm.ctpop.i32(i32 %2581)
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = xor i8 %2584, 1
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2585, i8* %2586, align 1
  %2587 = xor i64 1, %2570
  %2588 = trunc i64 %2587 to i32
  %2589 = xor i32 %2588, %2574
  %2590 = lshr i32 %2589, 4
  %2591 = trunc i32 %2590 to i8
  %2592 = and i8 %2591, 1
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2592, i8* %2593, align 1
  %2594 = icmp eq i32 %2574, 0
  %2595 = zext i1 %2594 to i8
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2595, i8* %2596, align 1
  %2597 = lshr i32 %2574, 31
  %2598 = trunc i32 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2598, i8* %2599, align 1
  %2600 = lshr i32 %2573, 31
  %2601 = xor i32 %2597, %2600
  %2602 = add i32 %2601, %2597
  %2603 = icmp eq i32 %2602, 2
  %2604 = zext i1 %2603 to i8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2604, i8* %2605, align 1
  store %struct.Memory* %loadMem_40f00c, %struct.Memory** %MEMORY
  %loadMem_40f00f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 1
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %EAX.i239 = bitcast %union.anon* %2611 to i32*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 5
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %ECX.i240 = bitcast %union.anon* %2614 to i32*
  %2615 = load i32, i32* %EAX.i239
  %2616 = zext i32 %2615 to i64
  %2617 = load i32, i32* %ECX.i240
  %2618 = zext i32 %2617 to i64
  %2619 = load i64, i64* %PC.i238
  %2620 = add i64 %2619, 2
  store i64 %2620, i64* %PC.i238
  %2621 = sub i32 %2615, %2617
  %2622 = icmp ult i32 %2615, %2617
  %2623 = zext i1 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2623, i8* %2624, align 1
  %2625 = and i32 %2621, 255
  %2626 = call i32 @llvm.ctpop.i32(i32 %2625)
  %2627 = trunc i32 %2626 to i8
  %2628 = and i8 %2627, 1
  %2629 = xor i8 %2628, 1
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2629, i8* %2630, align 1
  %2631 = xor i64 %2618, %2616
  %2632 = trunc i64 %2631 to i32
  %2633 = xor i32 %2632, %2621
  %2634 = lshr i32 %2633, 4
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2636, i8* %2637, align 1
  %2638 = icmp eq i32 %2621, 0
  %2639 = zext i1 %2638 to i8
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2639, i8* %2640, align 1
  %2641 = lshr i32 %2621, 31
  %2642 = trunc i32 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2642, i8* %2643, align 1
  %2644 = lshr i32 %2615, 31
  %2645 = lshr i32 %2617, 31
  %2646 = xor i32 %2645, %2644
  %2647 = xor i32 %2641, %2644
  %2648 = add i32 %2647, %2646
  %2649 = icmp eq i32 %2648, 2
  %2650 = zext i1 %2649 to i8
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2650, i8* %2651, align 1
  store %struct.Memory* %loadMem_40f00f, %struct.Memory** %MEMORY
  %loadMem_40f011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %PC.i237
  %2656 = add i64 %2655, 38
  %2657 = load i64, i64* %PC.i237
  %2658 = add i64 %2657, 6
  %2659 = load i64, i64* %PC.i237
  %2660 = add i64 %2659, 6
  store i64 %2660, i64* %PC.i237
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2662 = load i8, i8* %2661, align 1
  store i8 %2662, i8* %BRANCH_TAKEN, align 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2664 = icmp ne i8 %2662, 0
  %2665 = select i1 %2664, i64 %2656, i64 %2658
  store i64 %2665, i64* %2663, align 8
  store %struct.Memory* %loadMem_40f011, %struct.Memory** %MEMORY
  %loadBr_40f011 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f011 = icmp eq i8 %loadBr_40f011, 1
  br i1 %cmpBr_40f011, label %block_.L_40f037, label %block_40f017

block_40f017:                                     ; preds = %block_40f003
  %loadMem_40f017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 1
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 15
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %2674 to i64*
  %2675 = load i64, i64* %RBP.i236
  %2676 = sub i64 %2675, 96
  %2677 = load i64, i64* %PC.i234
  %2678 = add i64 %2677, 3
  store i64 %2678, i64* %PC.i234
  %2679 = inttoptr i64 %2676 to i32*
  %2680 = load i32, i32* %2679
  %2681 = zext i32 %2680 to i64
  store i64 %2681, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_40f017, %struct.Memory** %MEMORY
  %loadMem_40f01a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 33
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2684 to i64*
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2686 = getelementptr inbounds %struct.GPR, %struct.GPR* %2685, i32 0, i32 5
  %2687 = getelementptr inbounds %struct.Reg, %struct.Reg* %2686, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %2687 to i64*
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2689 = getelementptr inbounds %struct.GPR, %struct.GPR* %2688, i32 0, i32 15
  %2690 = getelementptr inbounds %struct.Reg, %struct.Reg* %2689, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %2690 to i64*
  %2691 = load i64, i64* %RBP.i233
  %2692 = sub i64 %2691, 52
  %2693 = load i64, i64* %PC.i231
  %2694 = add i64 %2693, 3
  store i64 %2694, i64* %PC.i231
  %2695 = inttoptr i64 %2692 to i32*
  %2696 = load i32, i32* %2695
  %2697 = zext i32 %2696 to i64
  store i64 %2697, i64* %RCX.i232, align 8
  store %struct.Memory* %loadMem_40f01a, %struct.Memory** %MEMORY
  %loadMem_40f01d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 33
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2700 to i64*
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 5
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %RCX.i230
  %2705 = load i64, i64* %PC.i229
  %2706 = add i64 %2705, 3
  store i64 %2706, i64* %PC.i229
  %2707 = trunc i64 %2704 to i32
  %2708 = add i32 20, %2707
  %2709 = zext i32 %2708 to i64
  store i64 %2709, i64* %RCX.i230, align 8
  %2710 = icmp ult i32 %2708, %2707
  %2711 = icmp ult i32 %2708, 20
  %2712 = or i1 %2710, %2711
  %2713 = zext i1 %2712 to i8
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2713, i8* %2714, align 1
  %2715 = and i32 %2708, 255
  %2716 = call i32 @llvm.ctpop.i32(i32 %2715)
  %2717 = trunc i32 %2716 to i8
  %2718 = and i8 %2717, 1
  %2719 = xor i8 %2718, 1
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2719, i8* %2720, align 1
  %2721 = xor i64 20, %2704
  %2722 = trunc i64 %2721 to i32
  %2723 = xor i32 %2722, %2708
  %2724 = lshr i32 %2723, 4
  %2725 = trunc i32 %2724 to i8
  %2726 = and i8 %2725, 1
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2726, i8* %2727, align 1
  %2728 = icmp eq i32 %2708, 0
  %2729 = zext i1 %2728 to i8
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2729, i8* %2730, align 1
  %2731 = lshr i32 %2708, 31
  %2732 = trunc i32 %2731 to i8
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2732, i8* %2733, align 1
  %2734 = lshr i32 %2707, 31
  %2735 = xor i32 %2731, %2734
  %2736 = add i32 %2735, %2731
  %2737 = icmp eq i32 %2736, 2
  %2738 = zext i1 %2737 to i8
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2738, i8* %2739, align 1
  store %struct.Memory* %loadMem_40f01d, %struct.Memory** %MEMORY
  %loadMem_40f020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 5
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RCX.i228 = bitcast %union.anon* %2745 to i64*
  %2746 = load i64, i64* %RCX.i228
  %2747 = load i64, i64* %PC.i227
  %2748 = add i64 %2747, 3
  store i64 %2748, i64* %PC.i227
  %2749 = trunc i64 %2746 to i32
  %2750 = add i32 1, %2749
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RCX.i228, align 8
  %2752 = icmp ult i32 %2750, %2749
  %2753 = icmp ult i32 %2750, 1
  %2754 = or i1 %2752, %2753
  %2755 = zext i1 %2754 to i8
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2755, i8* %2756, align 1
  %2757 = and i32 %2750, 255
  %2758 = call i32 @llvm.ctpop.i32(i32 %2757)
  %2759 = trunc i32 %2758 to i8
  %2760 = and i8 %2759, 1
  %2761 = xor i8 %2760, 1
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2761, i8* %2762, align 1
  %2763 = xor i64 1, %2746
  %2764 = trunc i64 %2763 to i32
  %2765 = xor i32 %2764, %2750
  %2766 = lshr i32 %2765, 4
  %2767 = trunc i32 %2766 to i8
  %2768 = and i8 %2767, 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2768, i8* %2769, align 1
  %2770 = icmp eq i32 %2750, 0
  %2771 = zext i1 %2770 to i8
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2771, i8* %2772, align 1
  %2773 = lshr i32 %2750, 31
  %2774 = trunc i32 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2774, i8* %2775, align 1
  %2776 = lshr i32 %2749, 31
  %2777 = xor i32 %2773, %2776
  %2778 = add i32 %2777, %2773
  %2779 = icmp eq i32 %2778, 2
  %2780 = zext i1 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2780, i8* %2781, align 1
  store %struct.Memory* %loadMem_40f020, %struct.Memory** %MEMORY
  %loadMem_40f023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 1
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %EAX.i225 = bitcast %union.anon* %2787 to i32*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 5
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %ECX.i226 = bitcast %union.anon* %2790 to i32*
  %2791 = load i32, i32* %EAX.i225
  %2792 = zext i32 %2791 to i64
  %2793 = load i32, i32* %ECX.i226
  %2794 = zext i32 %2793 to i64
  %2795 = load i64, i64* %PC.i224
  %2796 = add i64 %2795, 2
  store i64 %2796, i64* %PC.i224
  %2797 = sub i32 %2791, %2793
  %2798 = icmp ult i32 %2791, %2793
  %2799 = zext i1 %2798 to i8
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2799, i8* %2800, align 1
  %2801 = and i32 %2797, 255
  %2802 = call i32 @llvm.ctpop.i32(i32 %2801)
  %2803 = trunc i32 %2802 to i8
  %2804 = and i8 %2803, 1
  %2805 = xor i8 %2804, 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2805, i8* %2806, align 1
  %2807 = xor i64 %2794, %2792
  %2808 = trunc i64 %2807 to i32
  %2809 = xor i32 %2808, %2797
  %2810 = lshr i32 %2809, 4
  %2811 = trunc i32 %2810 to i8
  %2812 = and i8 %2811, 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2812, i8* %2813, align 1
  %2814 = icmp eq i32 %2797, 0
  %2815 = zext i1 %2814 to i8
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2815, i8* %2816, align 1
  %2817 = lshr i32 %2797, 31
  %2818 = trunc i32 %2817 to i8
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2818, i8* %2819, align 1
  %2820 = lshr i32 %2791, 31
  %2821 = lshr i32 %2793, 31
  %2822 = xor i32 %2821, %2820
  %2823 = xor i32 %2817, %2820
  %2824 = add i32 %2823, %2822
  %2825 = icmp eq i32 %2824, 2
  %2826 = zext i1 %2825 to i8
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2826, i8* %2827, align 1
  store %struct.Memory* %loadMem_40f023, %struct.Memory** %MEMORY
  %loadMem_40f025 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2830 to i64*
  %2831 = load i64, i64* %PC.i223
  %2832 = add i64 %2831, 18
  %2833 = load i64, i64* %PC.i223
  %2834 = add i64 %2833, 6
  %2835 = load i64, i64* %PC.i223
  %2836 = add i64 %2835, 6
  store i64 %2836, i64* %PC.i223
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2838 = load i8, i8* %2837, align 1
  store i8 %2838, i8* %BRANCH_TAKEN, align 1
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2840 = icmp ne i8 %2838, 0
  %2841 = select i1 %2840, i64 %2832, i64 %2834
  store i64 %2841, i64* %2839, align 8
  store %struct.Memory* %loadMem_40f025, %struct.Memory** %MEMORY
  %loadBr_40f025 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f025 = icmp eq i8 %loadBr_40f025, 1
  br i1 %cmpBr_40f025, label %block_.L_40f037, label %block_40f02b

block_40f02b:                                     ; preds = %block_40f017
  %loadMem_40f02b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 15
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RBP.i222
  %2849 = sub i64 %2848, 20
  %2850 = load i64, i64* %PC.i221
  %2851 = add i64 %2850, 7
  store i64 %2851, i64* %PC.i221
  %2852 = inttoptr i64 %2849 to i32*
  store i32 0, i32* %2852
  store %struct.Memory* %loadMem_40f02b, %struct.Memory** %MEMORY
  %loadMem_40f032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 33
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %PC.i220
  %2857 = add i64 %2856, 444
  %2858 = load i64, i64* %PC.i220
  %2859 = add i64 %2858, 5
  store i64 %2859, i64* %PC.i220
  %2860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2857, i64* %2860, align 8
  store %struct.Memory* %loadMem_40f032, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f037:                                  ; preds = %block_40f017, %block_40f003, %block_40efef, %block_40efdb, %block_.L_40efcf
  %loadMem_40f037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 33
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2863 to i64*
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 15
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %2866 to i64*
  %2867 = load i64, i64* %RBP.i219
  %2868 = sub i64 %2867, 48
  %2869 = load i64, i64* %PC.i218
  %2870 = add i64 %2869, 4
  store i64 %2870, i64* %PC.i218
  %2871 = inttoptr i64 %2868 to i32*
  %2872 = load i32, i32* %2871
  %2873 = sub i32 %2872, 6
  %2874 = icmp ult i32 %2872, 6
  %2875 = zext i1 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2875, i8* %2876, align 1
  %2877 = and i32 %2873, 255
  %2878 = call i32 @llvm.ctpop.i32(i32 %2877)
  %2879 = trunc i32 %2878 to i8
  %2880 = and i8 %2879, 1
  %2881 = xor i8 %2880, 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2881, i8* %2882, align 1
  %2883 = xor i32 %2872, 6
  %2884 = xor i32 %2883, %2873
  %2885 = lshr i32 %2884, 4
  %2886 = trunc i32 %2885 to i8
  %2887 = and i8 %2886, 1
  %2888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2887, i8* %2888, align 1
  %2889 = icmp eq i32 %2873, 0
  %2890 = zext i1 %2889 to i8
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2890, i8* %2891, align 1
  %2892 = lshr i32 %2873, 31
  %2893 = trunc i32 %2892 to i8
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2893, i8* %2894, align 1
  %2895 = lshr i32 %2872, 31
  %2896 = xor i32 %2892, %2895
  %2897 = add i32 %2896, %2895
  %2898 = icmp eq i32 %2897, 2
  %2899 = zext i1 %2898 to i8
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2899, i8* %2900, align 1
  store %struct.Memory* %loadMem_40f037, %struct.Memory** %MEMORY
  %loadMem_40f03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 33
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2903 to i64*
  %2904 = load i64, i64* %PC.i217
  %2905 = add i64 %2904, 119
  %2906 = load i64, i64* %PC.i217
  %2907 = add i64 %2906, 6
  %2908 = load i64, i64* %PC.i217
  %2909 = add i64 %2908, 6
  store i64 %2909, i64* %PC.i217
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2911 = load i8, i8* %2910, align 1
  %2912 = icmp eq i8 %2911, 0
  %2913 = zext i1 %2912 to i8
  store i8 %2913, i8* %BRANCH_TAKEN, align 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2915 = select i1 %2912, i64 %2905, i64 %2907
  store i64 %2915, i64* %2914, align 8
  store %struct.Memory* %loadMem_40f03b, %struct.Memory** %MEMORY
  %loadBr_40f03b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f03b = icmp eq i8 %loadBr_40f03b, 1
  br i1 %cmpBr_40f03b, label %block_.L_40f0b2, label %block_40f041

block_40f041:                                     ; preds = %block_.L_40f037
  %loadMem_40f041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 33
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2918 to i64*
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2920 = getelementptr inbounds %struct.GPR, %struct.GPR* %2919, i32 0, i32 1
  %2921 = getelementptr inbounds %struct.Reg, %struct.Reg* %2920, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %2921 to i64*
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 15
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %2924 to i64*
  %2925 = load i64, i64* %RBP.i216
  %2926 = sub i64 %2925, 24
  %2927 = load i64, i64* %PC.i214
  %2928 = add i64 %2927, 3
  store i64 %2928, i64* %PC.i214
  %2929 = inttoptr i64 %2926 to i32*
  %2930 = load i32, i32* %2929
  %2931 = zext i32 %2930 to i64
  store i64 %2931, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_40f041, %struct.Memory** %MEMORY
  %loadMem_40f044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 33
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 1
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %2937 to i32*
  %2938 = load i32, i32* %EAX.i213
  %2939 = zext i32 %2938 to i64
  %2940 = load i64, i64* %PC.i212
  %2941 = add i64 %2940, 7
  store i64 %2941, i64* %PC.i212
  %2942 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %2943 = sub i32 %2938, %2942
  %2944 = icmp ult i32 %2938, %2942
  %2945 = zext i1 %2944 to i8
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2945, i8* %2946, align 1
  %2947 = and i32 %2943, 255
  %2948 = call i32 @llvm.ctpop.i32(i32 %2947)
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2951, i8* %2952, align 1
  %2953 = xor i32 %2942, %2938
  %2954 = xor i32 %2953, %2943
  %2955 = lshr i32 %2954, 4
  %2956 = trunc i32 %2955 to i8
  %2957 = and i8 %2956, 1
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2957, i8* %2958, align 1
  %2959 = icmp eq i32 %2943, 0
  %2960 = zext i1 %2959 to i8
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2960, i8* %2961, align 1
  %2962 = lshr i32 %2943, 31
  %2963 = trunc i32 %2962 to i8
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2963, i8* %2964, align 1
  %2965 = lshr i32 %2938, 31
  %2966 = lshr i32 %2942, 31
  %2967 = xor i32 %2966, %2965
  %2968 = xor i32 %2962, %2965
  %2969 = add i32 %2968, %2967
  %2970 = icmp eq i32 %2969, 2
  %2971 = zext i1 %2970 to i8
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2971, i8* %2972, align 1
  store %struct.Memory* %loadMem_40f044, %struct.Memory** %MEMORY
  %loadMem_40f04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 33
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2975 to i64*
  %2976 = load i64, i64* %PC.i211
  %2977 = add i64 %2976, 98
  %2978 = load i64, i64* %PC.i211
  %2979 = add i64 %2978, 6
  %2980 = load i64, i64* %PC.i211
  %2981 = add i64 %2980, 6
  store i64 %2981, i64* %PC.i211
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2983 = load i8, i8* %2982, align 1
  store i8 %2983, i8* %BRANCH_TAKEN, align 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2985 = icmp ne i8 %2983, 0
  %2986 = select i1 %2985, i64 %2977, i64 %2979
  store i64 %2986, i64* %2984, align 8
  store %struct.Memory* %loadMem_40f04b, %struct.Memory** %MEMORY
  %loadBr_40f04b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f04b = icmp eq i8 %loadBr_40f04b, 1
  br i1 %cmpBr_40f04b, label %block_.L_40f0ad, label %block_40f051

block_40f051:                                     ; preds = %block_40f041
  %loadMem_40f051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 1
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2992 to i64*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 15
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %RBP.i210
  %2997 = sub i64 %2996, 96
  %2998 = load i64, i64* %PC.i208
  %2999 = add i64 %2998, 3
  store i64 %2999, i64* %PC.i208
  %3000 = inttoptr i64 %2997 to i32*
  %3001 = load i32, i32* %3000
  %3002 = zext i32 %3001 to i64
  store i64 %3002, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_40f051, %struct.Memory** %MEMORY
  %loadMem_40f054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 5
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %3008 to i64*
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 15
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %3011 to i64*
  %3012 = load i64, i64* %RBP.i207
  %3013 = sub i64 %3012, 52
  %3014 = load i64, i64* %PC.i205
  %3015 = add i64 %3014, 3
  store i64 %3015, i64* %PC.i205
  %3016 = inttoptr i64 %3013 to i32*
  %3017 = load i32, i32* %3016
  %3018 = zext i32 %3017 to i64
  store i64 %3018, i64* %RCX.i206, align 8
  store %struct.Memory* %loadMem_40f054, %struct.Memory** %MEMORY
  %loadMem_40f057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 5
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RCX.i204
  %3026 = load i64, i64* %PC.i203
  %3027 = add i64 %3026, 3
  store i64 %3027, i64* %PC.i203
  %3028 = trunc i64 %3025 to i32
  %3029 = add i32 20, %3028
  %3030 = zext i32 %3029 to i64
  store i64 %3030, i64* %RCX.i204, align 8
  %3031 = icmp ult i32 %3029, %3028
  %3032 = icmp ult i32 %3029, 20
  %3033 = or i1 %3031, %3032
  %3034 = zext i1 %3033 to i8
  %3035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3034, i8* %3035, align 1
  %3036 = and i32 %3029, 255
  %3037 = call i32 @llvm.ctpop.i32(i32 %3036)
  %3038 = trunc i32 %3037 to i8
  %3039 = and i8 %3038, 1
  %3040 = xor i8 %3039, 1
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3040, i8* %3041, align 1
  %3042 = xor i64 20, %3025
  %3043 = trunc i64 %3042 to i32
  %3044 = xor i32 %3043, %3029
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3047, i8* %3048, align 1
  %3049 = icmp eq i32 %3029, 0
  %3050 = zext i1 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i32 %3029, 31
  %3053 = trunc i32 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3053, i8* %3054, align 1
  %3055 = lshr i32 %3028, 31
  %3056 = xor i32 %3052, %3055
  %3057 = add i32 %3056, %3052
  %3058 = icmp eq i32 %3057, 2
  %3059 = zext i1 %3058 to i8
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3059, i8* %3060, align 1
  store %struct.Memory* %loadMem_40f057, %struct.Memory** %MEMORY
  %loadMem_40f05a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 5
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RCX.i202 = bitcast %union.anon* %3066 to i64*
  %3067 = load i64, i64* %RCX.i202
  %3068 = load i64, i64* %PC.i201
  %3069 = add i64 %3068, 3
  store i64 %3069, i64* %PC.i201
  %3070 = trunc i64 %3067 to i32
  %3071 = sub i32 %3070, 1
  %3072 = zext i32 %3071 to i64
  store i64 %3072, i64* %RCX.i202, align 8
  %3073 = icmp ult i32 %3070, 1
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3074, i8* %3075, align 1
  %3076 = and i32 %3071, 255
  %3077 = call i32 @llvm.ctpop.i32(i32 %3076)
  %3078 = trunc i32 %3077 to i8
  %3079 = and i8 %3078, 1
  %3080 = xor i8 %3079, 1
  %3081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3080, i8* %3081, align 1
  %3082 = xor i64 1, %3067
  %3083 = trunc i64 %3082 to i32
  %3084 = xor i32 %3083, %3071
  %3085 = lshr i32 %3084, 4
  %3086 = trunc i32 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3087, i8* %3088, align 1
  %3089 = icmp eq i32 %3071, 0
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3090, i8* %3091, align 1
  %3092 = lshr i32 %3071, 31
  %3093 = trunc i32 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3093, i8* %3094, align 1
  %3095 = lshr i32 %3070, 31
  %3096 = xor i32 %3092, %3095
  %3097 = add i32 %3096, %3095
  %3098 = icmp eq i32 %3097, 2
  %3099 = zext i1 %3098 to i8
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3099, i8* %3100, align 1
  store %struct.Memory* %loadMem_40f05a, %struct.Memory** %MEMORY
  %loadMem_40f05d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3102 = getelementptr inbounds %struct.GPR, %struct.GPR* %3101, i32 0, i32 33
  %3103 = getelementptr inbounds %struct.Reg, %struct.Reg* %3102, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3103 to i64*
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3105 = getelementptr inbounds %struct.GPR, %struct.GPR* %3104, i32 0, i32 1
  %3106 = getelementptr inbounds %struct.Reg, %struct.Reg* %3105, i32 0, i32 0
  %EAX.i199 = bitcast %union.anon* %3106 to i32*
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 5
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %ECX.i200 = bitcast %union.anon* %3109 to i32*
  %3110 = load i32, i32* %EAX.i199
  %3111 = zext i32 %3110 to i64
  %3112 = load i32, i32* %ECX.i200
  %3113 = zext i32 %3112 to i64
  %3114 = load i64, i64* %PC.i198
  %3115 = add i64 %3114, 2
  store i64 %3115, i64* %PC.i198
  %3116 = sub i32 %3110, %3112
  %3117 = icmp ult i32 %3110, %3112
  %3118 = zext i1 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3118, i8* %3119, align 1
  %3120 = and i32 %3116, 255
  %3121 = call i32 @llvm.ctpop.i32(i32 %3120)
  %3122 = trunc i32 %3121 to i8
  %3123 = and i8 %3122, 1
  %3124 = xor i8 %3123, 1
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3124, i8* %3125, align 1
  %3126 = xor i64 %3113, %3111
  %3127 = trunc i64 %3126 to i32
  %3128 = xor i32 %3127, %3116
  %3129 = lshr i32 %3128, 4
  %3130 = trunc i32 %3129 to i8
  %3131 = and i8 %3130, 1
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3131, i8* %3132, align 1
  %3133 = icmp eq i32 %3116, 0
  %3134 = zext i1 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3134, i8* %3135, align 1
  %3136 = lshr i32 %3116, 31
  %3137 = trunc i32 %3136 to i8
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3137, i8* %3138, align 1
  %3139 = lshr i32 %3110, 31
  %3140 = lshr i32 %3112, 31
  %3141 = xor i32 %3140, %3139
  %3142 = xor i32 %3136, %3139
  %3143 = add i32 %3142, %3141
  %3144 = icmp eq i32 %3143, 2
  %3145 = zext i1 %3144 to i8
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3145, i8* %3146, align 1
  store %struct.Memory* %loadMem_40f05d, %struct.Memory** %MEMORY
  %loadMem_40f05f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 33
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %PC.i197
  %3151 = add i64 %3150, 78
  %3152 = load i64, i64* %PC.i197
  %3153 = add i64 %3152, 6
  %3154 = load i64, i64* %PC.i197
  %3155 = add i64 %3154, 6
  store i64 %3155, i64* %PC.i197
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3157 = load i8, i8* %3156, align 1
  store i8 %3157, i8* %BRANCH_TAKEN, align 1
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3159 = icmp ne i8 %3157, 0
  %3160 = select i1 %3159, i64 %3151, i64 %3153
  store i64 %3160, i64* %3158, align 8
  store %struct.Memory* %loadMem_40f05f, %struct.Memory** %MEMORY
  %loadBr_40f05f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f05f = icmp eq i8 %loadBr_40f05f, 1
  br i1 %cmpBr_40f05f, label %block_.L_40f0ad, label %block_40f065

block_40f065:                                     ; preds = %block_40f051
  %loadMem_40f065 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 33
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3163 to i64*
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 1
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 15
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %3169 to i64*
  %3170 = load i64, i64* %RBP.i196
  %3171 = sub i64 %3170, 96
  %3172 = load i64, i64* %PC.i194
  %3173 = add i64 %3172, 3
  store i64 %3173, i64* %PC.i194
  %3174 = inttoptr i64 %3171 to i32*
  %3175 = load i32, i32* %3174
  %3176 = zext i32 %3175 to i64
  store i64 %3176, i64* %RAX.i195, align 8
  store %struct.Memory* %loadMem_40f065, %struct.Memory** %MEMORY
  %loadMem_40f068 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 5
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RCX.i192 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i193
  %3187 = sub i64 %3186, 52
  %3188 = load i64, i64* %PC.i191
  %3189 = add i64 %3188, 3
  store i64 %3189, i64* %PC.i191
  %3190 = inttoptr i64 %3187 to i32*
  %3191 = load i32, i32* %3190
  %3192 = zext i32 %3191 to i64
  store i64 %3192, i64* %RCX.i192, align 8
  store %struct.Memory* %loadMem_40f068, %struct.Memory** %MEMORY
  %loadMem_40f06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 5
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RCX.i190
  %3200 = load i64, i64* %PC.i189
  %3201 = add i64 %3200, 3
  store i64 %3201, i64* %PC.i189
  %3202 = trunc i64 %3199 to i32
  %3203 = sub i32 %3202, 20
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RCX.i190, align 8
  %3205 = icmp ult i32 %3202, 20
  %3206 = zext i1 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3206, i8* %3207, align 1
  %3208 = and i32 %3203, 255
  %3209 = call i32 @llvm.ctpop.i32(i32 %3208)
  %3210 = trunc i32 %3209 to i8
  %3211 = and i8 %3210, 1
  %3212 = xor i8 %3211, 1
  %3213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3212, i8* %3213, align 1
  %3214 = xor i64 20, %3199
  %3215 = trunc i64 %3214 to i32
  %3216 = xor i32 %3215, %3203
  %3217 = lshr i32 %3216, 4
  %3218 = trunc i32 %3217 to i8
  %3219 = and i8 %3218, 1
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3219, i8* %3220, align 1
  %3221 = icmp eq i32 %3203, 0
  %3222 = zext i1 %3221 to i8
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3222, i8* %3223, align 1
  %3224 = lshr i32 %3203, 31
  %3225 = trunc i32 %3224 to i8
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3225, i8* %3226, align 1
  %3227 = lshr i32 %3202, 31
  %3228 = xor i32 %3224, %3227
  %3229 = add i32 %3228, %3227
  %3230 = icmp eq i32 %3229, 2
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3231, i8* %3232, align 1
  store %struct.Memory* %loadMem_40f06b, %struct.Memory** %MEMORY
  %loadMem_40f06e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 33
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3235 to i64*
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3237 = getelementptr inbounds %struct.GPR, %struct.GPR* %3236, i32 0, i32 5
  %3238 = getelementptr inbounds %struct.Reg, %struct.Reg* %3237, i32 0, i32 0
  %RCX.i188 = bitcast %union.anon* %3238 to i64*
  %3239 = load i64, i64* %RCX.i188
  %3240 = load i64, i64* %PC.i187
  %3241 = add i64 %3240, 3
  store i64 %3241, i64* %PC.i187
  %3242 = trunc i64 %3239 to i32
  %3243 = sub i32 %3242, 1
  %3244 = zext i32 %3243 to i64
  store i64 %3244, i64* %RCX.i188, align 8
  %3245 = icmp ult i32 %3242, 1
  %3246 = zext i1 %3245 to i8
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3246, i8* %3247, align 1
  %3248 = and i32 %3243, 255
  %3249 = call i32 @llvm.ctpop.i32(i32 %3248)
  %3250 = trunc i32 %3249 to i8
  %3251 = and i8 %3250, 1
  %3252 = xor i8 %3251, 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3252, i8* %3253, align 1
  %3254 = xor i64 1, %3239
  %3255 = trunc i64 %3254 to i32
  %3256 = xor i32 %3255, %3243
  %3257 = lshr i32 %3256, 4
  %3258 = trunc i32 %3257 to i8
  %3259 = and i8 %3258, 1
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3259, i8* %3260, align 1
  %3261 = icmp eq i32 %3243, 0
  %3262 = zext i1 %3261 to i8
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3262, i8* %3263, align 1
  %3264 = lshr i32 %3243, 31
  %3265 = trunc i32 %3264 to i8
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3265, i8* %3266, align 1
  %3267 = lshr i32 %3242, 31
  %3268 = xor i32 %3264, %3267
  %3269 = add i32 %3268, %3267
  %3270 = icmp eq i32 %3269, 2
  %3271 = zext i1 %3270 to i8
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3271, i8* %3272, align 1
  store %struct.Memory* %loadMem_40f06e, %struct.Memory** %MEMORY
  %loadMem_40f071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3274 = getelementptr inbounds %struct.GPR, %struct.GPR* %3273, i32 0, i32 33
  %3275 = getelementptr inbounds %struct.Reg, %struct.Reg* %3274, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3275 to i64*
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 1
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %3278 to i32*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 5
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %ECX.i186 = bitcast %union.anon* %3281 to i32*
  %3282 = load i32, i32* %EAX.i185
  %3283 = zext i32 %3282 to i64
  %3284 = load i32, i32* %ECX.i186
  %3285 = zext i32 %3284 to i64
  %3286 = load i64, i64* %PC.i184
  %3287 = add i64 %3286, 2
  store i64 %3287, i64* %PC.i184
  %3288 = sub i32 %3282, %3284
  %3289 = icmp ult i32 %3282, %3284
  %3290 = zext i1 %3289 to i8
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3290, i8* %3291, align 1
  %3292 = and i32 %3288, 255
  %3293 = call i32 @llvm.ctpop.i32(i32 %3292)
  %3294 = trunc i32 %3293 to i8
  %3295 = and i8 %3294, 1
  %3296 = xor i8 %3295, 1
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3296, i8* %3297, align 1
  %3298 = xor i64 %3285, %3283
  %3299 = trunc i64 %3298 to i32
  %3300 = xor i32 %3299, %3288
  %3301 = lshr i32 %3300, 4
  %3302 = trunc i32 %3301 to i8
  %3303 = and i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3303, i8* %3304, align 1
  %3305 = icmp eq i32 %3288, 0
  %3306 = zext i1 %3305 to i8
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3306, i8* %3307, align 1
  %3308 = lshr i32 %3288, 31
  %3309 = trunc i32 %3308 to i8
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3309, i8* %3310, align 1
  %3311 = lshr i32 %3282, 31
  %3312 = lshr i32 %3284, 31
  %3313 = xor i32 %3312, %3311
  %3314 = xor i32 %3308, %3311
  %3315 = add i32 %3314, %3313
  %3316 = icmp eq i32 %3315, 2
  %3317 = zext i1 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3317, i8* %3318, align 1
  store %struct.Memory* %loadMem_40f071, %struct.Memory** %MEMORY
  %loadMem_40f073 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3320 = getelementptr inbounds %struct.GPR, %struct.GPR* %3319, i32 0, i32 33
  %3321 = getelementptr inbounds %struct.Reg, %struct.Reg* %3320, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %3321 to i64*
  %3322 = load i64, i64* %PC.i183
  %3323 = add i64 %3322, 58
  %3324 = load i64, i64* %PC.i183
  %3325 = add i64 %3324, 6
  %3326 = load i64, i64* %PC.i183
  %3327 = add i64 %3326, 6
  store i64 %3327, i64* %PC.i183
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3329 = load i8, i8* %3328, align 1
  store i8 %3329, i8* %BRANCH_TAKEN, align 1
  %3330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3331 = icmp ne i8 %3329, 0
  %3332 = select i1 %3331, i64 %3323, i64 %3325
  store i64 %3332, i64* %3330, align 8
  store %struct.Memory* %loadMem_40f073, %struct.Memory** %MEMORY
  %loadBr_40f073 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f073 = icmp eq i8 %loadBr_40f073, 1
  br i1 %cmpBr_40f073, label %block_.L_40f0ad, label %block_40f079

block_40f079:                                     ; preds = %block_40f065
  %loadMem_40f079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3334 = getelementptr inbounds %struct.GPR, %struct.GPR* %3333, i32 0, i32 33
  %3335 = getelementptr inbounds %struct.Reg, %struct.Reg* %3334, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %3335 to i64*
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 1
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 15
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RBP.i182
  %3343 = sub i64 %3342, 96
  %3344 = load i64, i64* %PC.i180
  %3345 = add i64 %3344, 3
  store i64 %3345, i64* %PC.i180
  %3346 = inttoptr i64 %3343 to i32*
  %3347 = load i32, i32* %3346
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_40f079, %struct.Memory** %MEMORY
  %loadMem_40f07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3350 = getelementptr inbounds %struct.GPR, %struct.GPR* %3349, i32 0, i32 33
  %3351 = getelementptr inbounds %struct.Reg, %struct.Reg* %3350, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3351 to i64*
  %3352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3353 = getelementptr inbounds %struct.GPR, %struct.GPR* %3352, i32 0, i32 5
  %3354 = getelementptr inbounds %struct.Reg, %struct.Reg* %3353, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %3354 to i64*
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 15
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %3357 to i64*
  %3358 = load i64, i64* %RBP.i179
  %3359 = sub i64 %3358, 52
  %3360 = load i64, i64* %PC.i177
  %3361 = add i64 %3360, 3
  store i64 %3361, i64* %PC.i177
  %3362 = inttoptr i64 %3359 to i32*
  %3363 = load i32, i32* %3362
  %3364 = zext i32 %3363 to i64
  store i64 %3364, i64* %RCX.i178, align 8
  store %struct.Memory* %loadMem_40f07c, %struct.Memory** %MEMORY
  %loadMem_40f07f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3366 = getelementptr inbounds %struct.GPR, %struct.GPR* %3365, i32 0, i32 33
  %3367 = getelementptr inbounds %struct.Reg, %struct.Reg* %3366, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3367 to i64*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3369 = getelementptr inbounds %struct.GPR, %struct.GPR* %3368, i32 0, i32 5
  %3370 = getelementptr inbounds %struct.Reg, %struct.Reg* %3369, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %3370 to i64*
  %3371 = load i64, i64* %RCX.i176
  %3372 = load i64, i64* %PC.i175
  %3373 = add i64 %3372, 3
  store i64 %3373, i64* %PC.i175
  %3374 = trunc i64 %3371 to i32
  %3375 = sub i32 %3374, 20
  %3376 = zext i32 %3375 to i64
  store i64 %3376, i64* %RCX.i176, align 8
  %3377 = icmp ult i32 %3374, 20
  %3378 = zext i1 %3377 to i8
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3378, i8* %3379, align 1
  %3380 = and i32 %3375, 255
  %3381 = call i32 @llvm.ctpop.i32(i32 %3380)
  %3382 = trunc i32 %3381 to i8
  %3383 = and i8 %3382, 1
  %3384 = xor i8 %3383, 1
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3384, i8* %3385, align 1
  %3386 = xor i64 20, %3371
  %3387 = trunc i64 %3386 to i32
  %3388 = xor i32 %3387, %3375
  %3389 = lshr i32 %3388, 4
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3391, i8* %3392, align 1
  %3393 = icmp eq i32 %3375, 0
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3394, i8* %3395, align 1
  %3396 = lshr i32 %3375, 31
  %3397 = trunc i32 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3397, i8* %3398, align 1
  %3399 = lshr i32 %3374, 31
  %3400 = xor i32 %3396, %3399
  %3401 = add i32 %3400, %3399
  %3402 = icmp eq i32 %3401, 2
  %3403 = zext i1 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3403, i8* %3404, align 1
  store %struct.Memory* %loadMem_40f07f, %struct.Memory** %MEMORY
  %loadMem_40f082 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 5
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RCX.i174
  %3412 = load i64, i64* %PC.i173
  %3413 = add i64 %3412, 3
  store i64 %3413, i64* %PC.i173
  %3414 = trunc i64 %3411 to i32
  %3415 = add i32 1, %3414
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RCX.i174, align 8
  %3417 = icmp ult i32 %3415, %3414
  %3418 = icmp ult i32 %3415, 1
  %3419 = or i1 %3417, %3418
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3420, i8* %3421, align 1
  %3422 = and i32 %3415, 255
  %3423 = call i32 @llvm.ctpop.i32(i32 %3422)
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  %3426 = xor i8 %3425, 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3426, i8* %3427, align 1
  %3428 = xor i64 1, %3411
  %3429 = trunc i64 %3428 to i32
  %3430 = xor i32 %3429, %3415
  %3431 = lshr i32 %3430, 4
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3433, i8* %3434, align 1
  %3435 = icmp eq i32 %3415, 0
  %3436 = zext i1 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3436, i8* %3437, align 1
  %3438 = lshr i32 %3415, 31
  %3439 = trunc i32 %3438 to i8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3439, i8* %3440, align 1
  %3441 = lshr i32 %3414, 31
  %3442 = xor i32 %3438, %3441
  %3443 = add i32 %3442, %3438
  %3444 = icmp eq i32 %3443, 2
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3445, i8* %3446, align 1
  store %struct.Memory* %loadMem_40f082, %struct.Memory** %MEMORY
  %loadMem_40f085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 1
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %EAX.i171 = bitcast %union.anon* %3452 to i32*
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 5
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %ECX.i172 = bitcast %union.anon* %3455 to i32*
  %3456 = load i32, i32* %EAX.i171
  %3457 = zext i32 %3456 to i64
  %3458 = load i32, i32* %ECX.i172
  %3459 = zext i32 %3458 to i64
  %3460 = load i64, i64* %PC.i170
  %3461 = add i64 %3460, 2
  store i64 %3461, i64* %PC.i170
  %3462 = sub i32 %3456, %3458
  %3463 = icmp ult i32 %3456, %3458
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3464, i8* %3465, align 1
  %3466 = and i32 %3462, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = xor i64 %3459, %3457
  %3473 = trunc i64 %3472 to i32
  %3474 = xor i32 %3473, %3462
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3477, i8* %3478, align 1
  %3479 = icmp eq i32 %3462, 0
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3462, 31
  %3483 = trunc i32 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3483, i8* %3484, align 1
  %3485 = lshr i32 %3456, 31
  %3486 = lshr i32 %3458, 31
  %3487 = xor i32 %3486, %3485
  %3488 = xor i32 %3482, %3485
  %3489 = add i32 %3488, %3487
  %3490 = icmp eq i32 %3489, 2
  %3491 = zext i1 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3491, i8* %3492, align 1
  store %struct.Memory* %loadMem_40f085, %struct.Memory** %MEMORY
  %loadMem_40f087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %PC.i169
  %3497 = add i64 %3496, 38
  %3498 = load i64, i64* %PC.i169
  %3499 = add i64 %3498, 6
  %3500 = load i64, i64* %PC.i169
  %3501 = add i64 %3500, 6
  store i64 %3501, i64* %PC.i169
  %3502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3503 = load i8, i8* %3502, align 1
  store i8 %3503, i8* %BRANCH_TAKEN, align 1
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3505 = icmp ne i8 %3503, 0
  %3506 = select i1 %3505, i64 %3497, i64 %3499
  store i64 %3506, i64* %3504, align 8
  store %struct.Memory* %loadMem_40f087, %struct.Memory** %MEMORY
  %loadBr_40f087 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f087 = icmp eq i8 %loadBr_40f087, 1
  br i1 %cmpBr_40f087, label %block_.L_40f0ad, label %block_40f08d

block_40f08d:                                     ; preds = %block_40f079
  %loadMem_40f08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 1
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 15
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RBP.i168
  %3517 = sub i64 %3516, 96
  %3518 = load i64, i64* %PC.i166
  %3519 = add i64 %3518, 3
  store i64 %3519, i64* %PC.i166
  %3520 = inttoptr i64 %3517 to i32*
  %3521 = load i32, i32* %3520
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_40f08d, %struct.Memory** %MEMORY
  %loadMem_40f090 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 5
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 15
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %3531 to i64*
  %3532 = load i64, i64* %RBP.i165
  %3533 = sub i64 %3532, 52
  %3534 = load i64, i64* %PC.i163
  %3535 = add i64 %3534, 3
  store i64 %3535, i64* %PC.i163
  %3536 = inttoptr i64 %3533 to i32*
  %3537 = load i32, i32* %3536
  %3538 = zext i32 %3537 to i64
  store i64 %3538, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_40f090, %struct.Memory** %MEMORY
  %loadMem_40f093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3540 = getelementptr inbounds %struct.GPR, %struct.GPR* %3539, i32 0, i32 33
  %3541 = getelementptr inbounds %struct.Reg, %struct.Reg* %3540, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3541 to i64*
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 5
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %3544 to i64*
  %3545 = load i64, i64* %RCX.i162
  %3546 = load i64, i64* %PC.i161
  %3547 = add i64 %3546, 3
  store i64 %3547, i64* %PC.i161
  %3548 = trunc i64 %3545 to i32
  %3549 = add i32 20, %3548
  %3550 = zext i32 %3549 to i64
  store i64 %3550, i64* %RCX.i162, align 8
  %3551 = icmp ult i32 %3549, %3548
  %3552 = icmp ult i32 %3549, 20
  %3553 = or i1 %3551, %3552
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3554, i8* %3555, align 1
  %3556 = and i32 %3549, 255
  %3557 = call i32 @llvm.ctpop.i32(i32 %3556)
  %3558 = trunc i32 %3557 to i8
  %3559 = and i8 %3558, 1
  %3560 = xor i8 %3559, 1
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3560, i8* %3561, align 1
  %3562 = xor i64 20, %3545
  %3563 = trunc i64 %3562 to i32
  %3564 = xor i32 %3563, %3549
  %3565 = lshr i32 %3564, 4
  %3566 = trunc i32 %3565 to i8
  %3567 = and i8 %3566, 1
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3567, i8* %3568, align 1
  %3569 = icmp eq i32 %3549, 0
  %3570 = zext i1 %3569 to i8
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3570, i8* %3571, align 1
  %3572 = lshr i32 %3549, 31
  %3573 = trunc i32 %3572 to i8
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3573, i8* %3574, align 1
  %3575 = lshr i32 %3548, 31
  %3576 = xor i32 %3572, %3575
  %3577 = add i32 %3576, %3572
  %3578 = icmp eq i32 %3577, 2
  %3579 = zext i1 %3578 to i8
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3579, i8* %3580, align 1
  store %struct.Memory* %loadMem_40f093, %struct.Memory** %MEMORY
  %loadMem_40f096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 5
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RCX.i160
  %3588 = load i64, i64* %PC.i159
  %3589 = add i64 %3588, 3
  store i64 %3589, i64* %PC.i159
  %3590 = trunc i64 %3587 to i32
  %3591 = add i32 1, %3590
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RCX.i160, align 8
  %3593 = icmp ult i32 %3591, %3590
  %3594 = icmp ult i32 %3591, 1
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3596, i8* %3597, align 1
  %3598 = and i32 %3591, 255
  %3599 = call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3602, i8* %3603, align 1
  %3604 = xor i64 1, %3587
  %3605 = trunc i64 %3604 to i32
  %3606 = xor i32 %3605, %3591
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3609, i8* %3610, align 1
  %3611 = icmp eq i32 %3591, 0
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3612, i8* %3613, align 1
  %3614 = lshr i32 %3591, 31
  %3615 = trunc i32 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3590, 31
  %3618 = xor i32 %3614, %3617
  %3619 = add i32 %3618, %3614
  %3620 = icmp eq i32 %3619, 2
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3621, i8* %3622, align 1
  store %struct.Memory* %loadMem_40f096, %struct.Memory** %MEMORY
  %loadMem_40f099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 1
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %3628 to i32*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 5
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %ECX.i158 = bitcast %union.anon* %3631 to i32*
  %3632 = load i32, i32* %EAX.i157
  %3633 = zext i32 %3632 to i64
  %3634 = load i32, i32* %ECX.i158
  %3635 = zext i32 %3634 to i64
  %3636 = load i64, i64* %PC.i156
  %3637 = add i64 %3636, 2
  store i64 %3637, i64* %PC.i156
  %3638 = sub i32 %3632, %3634
  %3639 = icmp ult i32 %3632, %3634
  %3640 = zext i1 %3639 to i8
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3640, i8* %3641, align 1
  %3642 = and i32 %3638, 255
  %3643 = call i32 @llvm.ctpop.i32(i32 %3642)
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = xor i8 %3645, 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3646, i8* %3647, align 1
  %3648 = xor i64 %3635, %3633
  %3649 = trunc i64 %3648 to i32
  %3650 = xor i32 %3649, %3638
  %3651 = lshr i32 %3650, 4
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3653, i8* %3654, align 1
  %3655 = icmp eq i32 %3638, 0
  %3656 = zext i1 %3655 to i8
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3656, i8* %3657, align 1
  %3658 = lshr i32 %3638, 31
  %3659 = trunc i32 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i32 %3632, 31
  %3662 = lshr i32 %3634, 31
  %3663 = xor i32 %3662, %3661
  %3664 = xor i32 %3658, %3661
  %3665 = add i32 %3664, %3663
  %3666 = icmp eq i32 %3665, 2
  %3667 = zext i1 %3666 to i8
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3667, i8* %3668, align 1
  store %struct.Memory* %loadMem_40f099, %struct.Memory** %MEMORY
  %loadMem_40f09b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 33
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3671 to i64*
  %3672 = load i64, i64* %PC.i155
  %3673 = add i64 %3672, 18
  %3674 = load i64, i64* %PC.i155
  %3675 = add i64 %3674, 6
  %3676 = load i64, i64* %PC.i155
  %3677 = add i64 %3676, 6
  store i64 %3677, i64* %PC.i155
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3679 = load i8, i8* %3678, align 1
  store i8 %3679, i8* %BRANCH_TAKEN, align 1
  %3680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3681 = icmp ne i8 %3679, 0
  %3682 = select i1 %3681, i64 %3673, i64 %3675
  store i64 %3682, i64* %3680, align 8
  store %struct.Memory* %loadMem_40f09b, %struct.Memory** %MEMORY
  %loadBr_40f09b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f09b = icmp eq i8 %loadBr_40f09b, 1
  br i1 %cmpBr_40f09b, label %block_.L_40f0ad, label %block_40f0a1

block_40f0a1:                                     ; preds = %block_40f08d
  %loadMem_40f0a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 15
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %3688 to i64*
  %3689 = load i64, i64* %RBP.i154
  %3690 = sub i64 %3689, 20
  %3691 = load i64, i64* %PC.i153
  %3692 = add i64 %3691, 7
  store i64 %3692, i64* %PC.i153
  %3693 = inttoptr i64 %3690 to i32*
  store i32 0, i32* %3693
  store %struct.Memory* %loadMem_40f0a1, %struct.Memory** %MEMORY
  %loadMem_40f0a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3696 to i64*
  %3697 = load i64, i64* %PC.i152
  %3698 = add i64 %3697, 326
  %3699 = load i64, i64* %PC.i152
  %3700 = add i64 %3699, 5
  store i64 %3700, i64* %PC.i152
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3698, i64* %3701, align 8
  store %struct.Memory* %loadMem_40f0a8, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f0ad:                                  ; preds = %block_40f08d, %block_40f079, %block_40f065, %block_40f051, %block_40f041
  %loadMem_40f0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3703 = getelementptr inbounds %struct.GPR, %struct.GPR* %3702, i32 0, i32 33
  %3704 = getelementptr inbounds %struct.Reg, %struct.Reg* %3703, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3704 to i64*
  %3705 = load i64, i64* %PC.i151
  %3706 = add i64 %3705, 5
  %3707 = load i64, i64* %PC.i151
  %3708 = add i64 %3707, 5
  store i64 %3708, i64* %PC.i151
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3706, i64* %3709, align 8
  store %struct.Memory* %loadMem_40f0ad, %struct.Memory** %MEMORY
  br label %block_.L_40f0b2

block_.L_40f0b2:                                  ; preds = %block_.L_40f0ad, %block_.L_40f037
  %loadMem_40f0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 33
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3712 to i64*
  %3713 = load i64, i64* %PC.i150
  %3714 = add i64 %3713, 5
  %3715 = load i64, i64* %PC.i150
  %3716 = add i64 %3715, 5
  store i64 %3716, i64* %PC.i150
  %3717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3714, i64* %3717, align 8
  store %struct.Memory* %loadMem_40f0b2, %struct.Memory** %MEMORY
  br label %block_.L_40f0b7

block_.L_40f0b7:                                  ; preds = %block_.L_40f0b2, %block_.L_40ef86
  %loadMem_40f0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 33
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3722 = getelementptr inbounds %struct.GPR, %struct.GPR* %3721, i32 0, i32 11
  %3723 = getelementptr inbounds %struct.Reg, %struct.Reg* %3722, i32 0, i32 0
  %RDI.i148 = bitcast %union.anon* %3723 to i64*
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 15
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %3726 to i64*
  %3727 = load i64, i64* %RBP.i149
  %3728 = sub i64 %3727, 24
  %3729 = load i64, i64* %PC.i147
  %3730 = add i64 %3729, 3
  store i64 %3730, i64* %PC.i147
  %3731 = inttoptr i64 %3728 to i32*
  %3732 = load i32, i32* %3731
  %3733 = zext i32 %3732 to i64
  store i64 %3733, i64* %RDI.i148, align 8
  store %struct.Memory* %loadMem_40f0b7, %struct.Memory** %MEMORY
  %loadMem_40f0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3735 = getelementptr inbounds %struct.GPR, %struct.GPR* %3734, i32 0, i32 33
  %3736 = getelementptr inbounds %struct.Reg, %struct.Reg* %3735, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %3736 to i64*
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 9
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %RSI.i145 = bitcast %union.anon* %3739 to i64*
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 15
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %3742 to i64*
  %3743 = load i64, i64* %RBP.i146
  %3744 = sub i64 %3743, 28
  %3745 = load i64, i64* %PC.i144
  %3746 = add i64 %3745, 3
  store i64 %3746, i64* %PC.i144
  %3747 = inttoptr i64 %3744 to i32*
  %3748 = load i32, i32* %3747
  %3749 = zext i32 %3748 to i64
  store i64 %3749, i64* %RSI.i145, align 8
  store %struct.Memory* %loadMem_40f0ba, %struct.Memory** %MEMORY
  %loadMem_40f0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3751 = getelementptr inbounds %struct.GPR, %struct.GPR* %3750, i32 0, i32 33
  %3752 = getelementptr inbounds %struct.Reg, %struct.Reg* %3751, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %3752 to i64*
  %3753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3754 = getelementptr inbounds %struct.GPR, %struct.GPR* %3753, i32 0, i32 7
  %3755 = getelementptr inbounds %struct.Reg, %struct.Reg* %3754, i32 0, i32 0
  %RDX.i142 = bitcast %union.anon* %3755 to i64*
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 15
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %3758 to i64*
  %3759 = load i64, i64* %RBP.i143
  %3760 = sub i64 %3759, 40
  %3761 = load i64, i64* %PC.i141
  %3762 = add i64 %3761, 4
  store i64 %3762, i64* %PC.i141
  %3763 = inttoptr i64 %3760 to i64*
  %3764 = load i64, i64* %3763
  store i64 %3764, i64* %RDX.i142, align 8
  store %struct.Memory* %loadMem_40f0bd, %struct.Memory** %MEMORY
  %loadMem_40f0c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 5
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 15
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RBP.i140
  %3775 = sub i64 %3774, 44
  %3776 = load i64, i64* %PC.i138
  %3777 = add i64 %3776, 3
  store i64 %3777, i64* %PC.i138
  %3778 = inttoptr i64 %3775 to i32*
  %3779 = load i32, i32* %3778
  %3780 = zext i32 %3779 to i64
  store i64 %3780, i64* %RCX.i139, align 8
  store %struct.Memory* %loadMem_40f0c1, %struct.Memory** %MEMORY
  %loadMem_40f0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 17
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %R8D.i136 = bitcast %union.anon* %3786 to i32*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 15
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %3789 to i64*
  %3790 = bitcast i32* %R8D.i136 to i64*
  %3791 = load i64, i64* %RBP.i137
  %3792 = sub i64 %3791, 48
  %3793 = load i64, i64* %PC.i135
  %3794 = add i64 %3793, 4
  store i64 %3794, i64* %PC.i135
  %3795 = inttoptr i64 %3792 to i32*
  %3796 = load i32, i32* %3795
  %3797 = zext i32 %3796 to i64
  store i64 %3797, i64* %3790, align 8
  store %struct.Memory* %loadMem_40f0c4, %struct.Memory** %MEMORY
  %loadMem_40f0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 33
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 19
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %3803 to i32*
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3805 = getelementptr inbounds %struct.GPR, %struct.GPR* %3804, i32 0, i32 15
  %3806 = getelementptr inbounds %struct.Reg, %struct.Reg* %3805, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %3806 to i64*
  %3807 = bitcast i32* %R9D.i to i64*
  %3808 = load i64, i64* %RBP.i134
  %3809 = sub i64 %3808, 52
  %3810 = load i64, i64* %PC.i133
  %3811 = add i64 %3810, 4
  store i64 %3811, i64* %PC.i133
  %3812 = inttoptr i64 %3809 to i32*
  %3813 = load i32, i32* %3812
  %3814 = zext i32 %3813 to i64
  store i64 %3814, i64* %3807, align 8
  store %struct.Memory* %loadMem_40f0c8, %struct.Memory** %MEMORY
  %loadMem1_40f0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3816 = getelementptr inbounds %struct.GPR, %struct.GPR* %3815, i32 0, i32 33
  %3817 = getelementptr inbounds %struct.Reg, %struct.Reg* %3816, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3817 to i64*
  %3818 = load i64, i64* %PC.i132
  %3819 = add i64 %3818, -25244
  %3820 = load i64, i64* %PC.i132
  %3821 = add i64 %3820, 5
  %3822 = load i64, i64* %PC.i132
  %3823 = add i64 %3822, 5
  store i64 %3823, i64* %PC.i132
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3825 = load i64, i64* %3824, align 8
  %3826 = add i64 %3825, -8
  %3827 = inttoptr i64 %3826 to i64*
  store i64 %3821, i64* %3827
  store i64 %3826, i64* %3824, align 8
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3819, i64* %3828, align 8
  store %struct.Memory* %loadMem1_40f0cc, %struct.Memory** %MEMORY
  %loadMem2_40f0cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f0cc = load i64, i64* %3
  %call2_40f0cc = call %struct.Memory* @sub_408e30.trymove(%struct.State* %0, i64 %loadPC_40f0cc, %struct.Memory* %loadMem2_40f0cc)
  store %struct.Memory* %call2_40f0cc, %struct.Memory** %MEMORY
  %loadMem_40f0d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3830 = getelementptr inbounds %struct.GPR, %struct.GPR* %3829, i32 0, i32 33
  %3831 = getelementptr inbounds %struct.Reg, %struct.Reg* %3830, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3831 to i64*
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 1
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %3834 to i32*
  %3835 = load i32, i32* %EAX.i131
  %3836 = zext i32 %3835 to i64
  %3837 = load i64, i64* %PC.i130
  %3838 = add i64 %3837, 3
  store i64 %3838, i64* %PC.i130
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3839, align 1
  %3840 = and i32 %3835, 255
  %3841 = call i32 @llvm.ctpop.i32(i32 %3840)
  %3842 = trunc i32 %3841 to i8
  %3843 = and i8 %3842, 1
  %3844 = xor i8 %3843, 1
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3844, i8* %3845, align 1
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3846, align 1
  %3847 = icmp eq i32 %3835, 0
  %3848 = zext i1 %3847 to i8
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3848, i8* %3849, align 1
  %3850 = lshr i32 %3835, 31
  %3851 = trunc i32 %3850 to i8
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3851, i8* %3852, align 1
  %3853 = lshr i32 %3835, 31
  %3854 = xor i32 %3850, %3853
  %3855 = add i32 %3854, %3853
  %3856 = icmp eq i32 %3855, 2
  %3857 = zext i1 %3856 to i8
  %3858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3857, i8* %3858, align 1
  store %struct.Memory* %loadMem_40f0d1, %struct.Memory** %MEMORY
  %loadMem_40f0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3861 to i64*
  %3862 = load i64, i64* %PC.i129
  %3863 = add i64 %3862, 136
  %3864 = load i64, i64* %PC.i129
  %3865 = add i64 %3864, 6
  %3866 = load i64, i64* %PC.i129
  %3867 = add i64 %3866, 6
  store i64 %3867, i64* %PC.i129
  %3868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3869 = load i8, i8* %3868, align 1
  %3870 = icmp eq i8 %3869, 0
  %3871 = zext i1 %3870 to i8
  store i8 %3871, i8* %BRANCH_TAKEN, align 1
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3873 = select i1 %3870, i64 %3863, i64 %3865
  store i64 %3873, i64* %3872, align 8
  store %struct.Memory* %loadMem_40f0d4, %struct.Memory** %MEMORY
  %loadBr_40f0d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f0d4 = icmp eq i8 %loadBr_40f0d4, 1
  br i1 %cmpBr_40f0d4, label %block_.L_40f15c, label %block_40f0da

block_40f0da:                                     ; preds = %block_.L_40f0b7
  %loadMem_40f0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 33
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 15
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %3879 to i64*
  %3880 = load i64, i64* %RBP.i128
  %3881 = sub i64 %3880, 84
  %3882 = load i64, i64* %PC.i127
  %3883 = add i64 %3882, 4
  store i64 %3883, i64* %PC.i127
  %3884 = inttoptr i64 %3881 to i32*
  %3885 = load i32, i32* %3884
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3886, align 1
  %3887 = and i32 %3885, 255
  %3888 = call i32 @llvm.ctpop.i32(i32 %3887)
  %3889 = trunc i32 %3888 to i8
  %3890 = and i8 %3889, 1
  %3891 = xor i8 %3890, 1
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3891, i8* %3892, align 1
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3893, align 1
  %3894 = icmp eq i32 %3885, 0
  %3895 = zext i1 %3894 to i8
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3895, i8* %3896, align 1
  %3897 = lshr i32 %3885, 31
  %3898 = trunc i32 %3897 to i8
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3898, i8* %3899, align 1
  %3900 = lshr i32 %3885, 31
  %3901 = xor i32 %3897, %3900
  %3902 = add i32 %3901, %3900
  %3903 = icmp eq i32 %3902, 2
  %3904 = zext i1 %3903 to i8
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3904, i8* %3905, align 1
  store %struct.Memory* %loadMem_40f0da, %struct.Memory** %MEMORY
  %loadMem_40f0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3907 = getelementptr inbounds %struct.GPR, %struct.GPR* %3906, i32 0, i32 33
  %3908 = getelementptr inbounds %struct.Reg, %struct.Reg* %3907, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3908 to i64*
  %3909 = load i64, i64* %PC.i126
  %3910 = add i64 %3909, 18
  %3911 = load i64, i64* %PC.i126
  %3912 = add i64 %3911, 6
  %3913 = load i64, i64* %PC.i126
  %3914 = add i64 %3913, 6
  store i64 %3914, i64* %PC.i126
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3916 = load i8, i8* %3915, align 1
  %3917 = icmp eq i8 %3916, 0
  %3918 = zext i1 %3917 to i8
  store i8 %3918, i8* %BRANCH_TAKEN, align 1
  %3919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3920 = select i1 %3917, i64 %3910, i64 %3912
  store i64 %3920, i64* %3919, align 8
  store %struct.Memory* %loadMem_40f0de, %struct.Memory** %MEMORY
  %loadBr_40f0de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f0de = icmp eq i8 %loadBr_40f0de, 1
  br i1 %cmpBr_40f0de, label %block_.L_40f0f0, label %block_40f0e4

block_40f0e4:                                     ; preds = %block_40f0da
  %loadMem_40f0e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3923 to i64*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 15
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %3926 to i64*
  %3927 = load i64, i64* %RBP.i125
  %3928 = sub i64 %3927, 20
  %3929 = load i64, i64* %PC.i124
  %3930 = add i64 %3929, 7
  store i64 %3930, i64* %PC.i124
  %3931 = inttoptr i64 %3928 to i32*
  store i32 0, i32* %3931
  store %struct.Memory* %loadMem_40f0e4, %struct.Memory** %MEMORY
  %loadMem_40f0eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3934 to i64*
  %3935 = load i64, i64* %PC.i123
  %3936 = add i64 %3935, 259
  %3937 = load i64, i64* %PC.i123
  %3938 = add i64 %3937, 5
  store i64 %3938, i64* %PC.i123
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3936, i64* %3939, align 8
  store %struct.Memory* %loadMem_40f0eb, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f0f0:                                  ; preds = %block_40f0da
  %loadMem_40f0f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3941 = getelementptr inbounds %struct.GPR, %struct.GPR* %3940, i32 0, i32 33
  %3942 = getelementptr inbounds %struct.Reg, %struct.Reg* %3941, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3942 to i64*
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 11
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 15
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %RBP.i122
  %3950 = sub i64 %3949, 24
  %3951 = load i64, i64* %PC.i121
  %3952 = add i64 %3951, 3
  store i64 %3952, i64* %PC.i121
  %3953 = inttoptr i64 %3950 to i32*
  %3954 = load i32, i32* %3953
  %3955 = zext i32 %3954 to i64
  store i64 %3955, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40f0f0, %struct.Memory** %MEMORY
  %loadMem_40f0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 33
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3958 to i64*
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 9
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 15
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %3964 to i64*
  %3965 = load i64, i64* %RBP.i120
  %3966 = sub i64 %3965, 28
  %3967 = load i64, i64* %PC.i119
  %3968 = add i64 %3967, 3
  store i64 %3968, i64* %PC.i119
  %3969 = inttoptr i64 %3966 to i32*
  %3970 = load i32, i32* %3969
  %3971 = zext i32 %3970 to i64
  store i64 %3971, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40f0f3, %struct.Memory** %MEMORY
  %loadMem_40f0f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 7
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 15
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %RBP.i118
  %3982 = sub i64 %3981, 40
  %3983 = load i64, i64* %PC.i117
  %3984 = add i64 %3983, 4
  store i64 %3984, i64* %PC.i117
  %3985 = inttoptr i64 %3982 to i64*
  %3986 = load i64, i64* %3985
  store i64 %3986, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_40f0f6, %struct.Memory** %MEMORY
  %loadMem_40f0fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 5
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 15
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3995 to i64*
  %3996 = load i64, i64* %RBP.i116
  %3997 = sub i64 %3996, 48
  %3998 = load i64, i64* %PC.i114
  %3999 = add i64 %3998, 3
  store i64 %3999, i64* %PC.i114
  %4000 = inttoptr i64 %3997 to i32*
  %4001 = load i32, i32* %4000
  %4002 = zext i32 %4001 to i64
  store i64 %4002, i64* %RCX.i115, align 8
  store %struct.Memory* %loadMem_40f0fa, %struct.Memory** %MEMORY
  %loadMem_40f0fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4004 = getelementptr inbounds %struct.GPR, %struct.GPR* %4003, i32 0, i32 33
  %4005 = getelementptr inbounds %struct.Reg, %struct.Reg* %4004, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %4005 to i64*
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 17
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %4008 to i32*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 15
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %4011 to i64*
  %4012 = bitcast i32* %R8D.i to i64*
  %4013 = load i64, i64* %RBP.i113
  %4014 = sub i64 %4013, 52
  %4015 = load i64, i64* %PC.i112
  %4016 = add i64 %4015, 4
  store i64 %4016, i64* %PC.i112
  %4017 = inttoptr i64 %4014 to i32*
  %4018 = load i32, i32* %4017
  %4019 = zext i32 %4018 to i64
  store i64 %4019, i64* %4012, align 8
  store %struct.Memory* %loadMem_40f0fd, %struct.Memory** %MEMORY
  %loadMem1_40f101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %PC.i111
  %4024 = add i64 %4023, -5633
  %4025 = load i64, i64* %PC.i111
  %4026 = add i64 %4025, 5
  %4027 = load i64, i64* %PC.i111
  %4028 = add i64 %4027, 5
  store i64 %4028, i64* %PC.i111
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4030 = load i64, i64* %4029, align 8
  %4031 = add i64 %4030, -8
  %4032 = inttoptr i64 %4031 to i64*
  store i64 %4026, i64* %4032
  store i64 %4031, i64* %4029, align 8
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4024, i64* %4033, align 8
  store %struct.Memory* %loadMem1_40f101, %struct.Memory** %MEMORY
  %loadMem2_40f101 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40f101 = load i64, i64* %3
  %call2_40f101 = call %struct.Memory* @sub_40db00.tryko(%struct.State* %0, i64 %loadPC_40f101, %struct.Memory* %loadMem2_40f101)
  store %struct.Memory* %call2_40f101, %struct.Memory** %MEMORY
  %loadMem_40f106 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 1
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %4039 to i32*
  %4040 = load i32, i32* %EAX.i110
  %4041 = zext i32 %4040 to i64
  %4042 = load i64, i64* %PC.i109
  %4043 = add i64 %4042, 3
  store i64 %4043, i64* %PC.i109
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4044, align 1
  %4045 = and i32 %4040, 255
  %4046 = call i32 @llvm.ctpop.i32(i32 %4045)
  %4047 = trunc i32 %4046 to i8
  %4048 = and i8 %4047, 1
  %4049 = xor i8 %4048, 1
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4049, i8* %4050, align 1
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4051, align 1
  %4052 = icmp eq i32 %4040, 0
  %4053 = zext i1 %4052 to i8
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4053, i8* %4054, align 1
  %4055 = lshr i32 %4040, 31
  %4056 = trunc i32 %4055 to i8
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4056, i8* %4057, align 1
  %4058 = lshr i32 %4040, 31
  %4059 = xor i32 %4055, %4058
  %4060 = add i32 %4059, %4058
  %4061 = icmp eq i32 %4060, 2
  %4062 = zext i1 %4061 to i8
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4062, i8* %4063, align 1
  store %struct.Memory* %loadMem_40f106, %struct.Memory** %MEMORY
  %loadMem_40f109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %4066 to i64*
  %4067 = load i64, i64* %PC.i108
  %4068 = add i64 %4067, 18
  %4069 = load i64, i64* %PC.i108
  %4070 = add i64 %4069, 6
  %4071 = load i64, i64* %PC.i108
  %4072 = add i64 %4071, 6
  store i64 %4072, i64* %PC.i108
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4074 = load i8, i8* %4073, align 1
  %4075 = icmp eq i8 %4074, 0
  %4076 = zext i1 %4075 to i8
  store i8 %4076, i8* %BRANCH_TAKEN, align 1
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4078 = select i1 %4075, i64 %4068, i64 %4070
  store i64 %4078, i64* %4077, align 8
  store %struct.Memory* %loadMem_40f109, %struct.Memory** %MEMORY
  %loadBr_40f109 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f109 = icmp eq i8 %loadBr_40f109, 1
  br i1 %cmpBr_40f109, label %block_.L_40f11b, label %block_40f10f

block_40f10f:                                     ; preds = %block_.L_40f0f0
  %loadMem_40f10f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 15
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %RBP.i107
  %4086 = sub i64 %4085, 20
  %4087 = load i64, i64* %PC.i106
  %4088 = add i64 %4087, 7
  store i64 %4088, i64* %PC.i106
  %4089 = inttoptr i64 %4086 to i32*
  store i32 0, i32* %4089
  store %struct.Memory* %loadMem_40f10f, %struct.Memory** %MEMORY
  %loadMem_40f116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %4092 to i64*
  %4093 = load i64, i64* %PC.i105
  %4094 = add i64 %4093, 216
  %4095 = load i64, i64* %PC.i105
  %4096 = add i64 %4095, 5
  store i64 %4096, i64* %PC.i105
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4094, i64* %4097, align 8
  store %struct.Memory* %loadMem_40f116, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f11b:                                  ; preds = %block_.L_40f0f0
  %loadMem_40f11b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 33
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %4100 to i64*
  %4101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4102 = getelementptr inbounds %struct.GPR, %struct.GPR* %4101, i32 0, i32 1
  %4103 = getelementptr inbounds %struct.Reg, %struct.Reg* %4102, i32 0, i32 0
  %RAX.i103 = bitcast %union.anon* %4103 to i64*
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 15
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %4106 to i64*
  %4107 = load i64, i64* %RBP.i104
  %4108 = sub i64 %4107, 80
  %4109 = load i64, i64* %PC.i102
  %4110 = add i64 %4109, 4
  store i64 %4110, i64* %PC.i102
  %4111 = inttoptr i64 %4108 to i64*
  %4112 = load i64, i64* %4111
  store i64 %4112, i64* %RAX.i103, align 8
  store %struct.Memory* %loadMem_40f11b, %struct.Memory** %MEMORY
  %loadMem_40f11f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4115 to i64*
  %4116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4117 = getelementptr inbounds %struct.GPR, %struct.GPR* %4116, i32 0, i32 1
  %4118 = getelementptr inbounds %struct.Reg, %struct.Reg* %4117, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %4118 to i64*
  %4119 = load i64, i64* %RAX.i101
  %4120 = load i64, i64* %PC.i100
  %4121 = add i64 %4120, 6
  store i64 %4121, i64* %PC.i100
  %4122 = inttoptr i64 %4119 to i32*
  store i32 1, i32* %4122
  store %struct.Memory* %loadMem_40f11f, %struct.Memory** %MEMORY
  %loadMem_40f125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 33
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 15
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %4128 to i64*
  %4129 = load i64, i64* %RBP.i99
  %4130 = sub i64 %4129, 48
  %4131 = load i64, i64* %PC.i98
  %4132 = add i64 %4131, 4
  store i64 %4132, i64* %PC.i98
  %4133 = inttoptr i64 %4130 to i32*
  %4134 = load i32, i32* %4133
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4135, align 1
  %4136 = and i32 %4134, 255
  %4137 = call i32 @llvm.ctpop.i32(i32 %4136)
  %4138 = trunc i32 %4137 to i8
  %4139 = and i8 %4138, 1
  %4140 = xor i8 %4139, 1
  %4141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4140, i8* %4141, align 1
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4142, align 1
  %4143 = icmp eq i32 %4134, 0
  %4144 = zext i1 %4143 to i8
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4144, i8* %4145, align 1
  %4146 = lshr i32 %4134, 31
  %4147 = trunc i32 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4147, i8* %4148, align 1
  %4149 = lshr i32 %4134, 31
  %4150 = xor i32 %4146, %4149
  %4151 = add i32 %4150, %4149
  %4152 = icmp eq i32 %4151, 2
  %4153 = zext i1 %4152 to i8
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4153, i8* %4154, align 1
  store %struct.Memory* %loadMem_40f125, %struct.Memory** %MEMORY
  %loadMem_40f129 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %PC.i97
  %4159 = add i64 %4158, 16
  %4160 = load i64, i64* %PC.i97
  %4161 = add i64 %4160, 6
  %4162 = load i64, i64* %PC.i97
  %4163 = add i64 %4162, 6
  store i64 %4163, i64* %PC.i97
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4165 = load i8, i8* %4164, align 1
  store i8 %4165, i8* %BRANCH_TAKEN, align 1
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4167 = icmp ne i8 %4165, 0
  %4168 = select i1 %4167, i64 %4159, i64 %4161
  store i64 %4168, i64* %4166, align 8
  store %struct.Memory* %loadMem_40f129, %struct.Memory** %MEMORY
  %loadBr_40f129 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f129 = icmp eq i8 %loadBr_40f129, 1
  br i1 %cmpBr_40f129, label %block_.L_40f139, label %block_40f12f

block_40f12f:                                     ; preds = %block_.L_40f11b
  %loadMem_40f12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 33
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %4171 to i64*
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4173 = getelementptr inbounds %struct.GPR, %struct.GPR* %4172, i32 0, i32 15
  %4174 = getelementptr inbounds %struct.Reg, %struct.Reg* %4173, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %4174 to i64*
  %4175 = load i64, i64* %RBP.i96
  %4176 = sub i64 %4175, 48
  %4177 = load i64, i64* %PC.i95
  %4178 = add i64 %4177, 4
  store i64 %4178, i64* %PC.i95
  %4179 = inttoptr i64 %4176 to i32*
  %4180 = load i32, i32* %4179
  %4181 = sub i32 %4180, 6
  %4182 = icmp ult i32 %4180, 6
  %4183 = zext i1 %4182 to i8
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4183, i8* %4184, align 1
  %4185 = and i32 %4181, 255
  %4186 = call i32 @llvm.ctpop.i32(i32 %4185)
  %4187 = trunc i32 %4186 to i8
  %4188 = and i8 %4187, 1
  %4189 = xor i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4189, i8* %4190, align 1
  %4191 = xor i32 %4180, 6
  %4192 = xor i32 %4191, %4181
  %4193 = lshr i32 %4192, 4
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4195, i8* %4196, align 1
  %4197 = icmp eq i32 %4181, 0
  %4198 = zext i1 %4197 to i8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4198, i8* %4199, align 1
  %4200 = lshr i32 %4181, 31
  %4201 = trunc i32 %4200 to i8
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4201, i8* %4202, align 1
  %4203 = lshr i32 %4180, 31
  %4204 = xor i32 %4200, %4203
  %4205 = add i32 %4204, %4203
  %4206 = icmp eq i32 %4205, 2
  %4207 = zext i1 %4206 to i8
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4207, i8* %4208, align 1
  store %struct.Memory* %loadMem_40f12f, %struct.Memory** %MEMORY
  %loadMem_40f133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 33
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %4211 to i64*
  %4212 = load i64, i64* %PC.i94
  %4213 = add i64 %4212, 36
  %4214 = load i64, i64* %PC.i94
  %4215 = add i64 %4214, 6
  %4216 = load i64, i64* %PC.i94
  %4217 = add i64 %4216, 6
  store i64 %4217, i64* %PC.i94
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4219 = load i8, i8* %4218, align 1
  %4220 = icmp eq i8 %4219, 0
  %4221 = zext i1 %4220 to i8
  store i8 %4221, i8* %BRANCH_TAKEN, align 1
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4223 = select i1 %4220, i64 %4213, i64 %4215
  store i64 %4223, i64* %4222, align 8
  store %struct.Memory* %loadMem_40f133, %struct.Memory** %MEMORY
  %loadBr_40f133 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f133 = icmp eq i8 %loadBr_40f133, 1
  br i1 %cmpBr_40f133, label %block_.L_40f157, label %block_.L_40f139

block_.L_40f139:                                  ; preds = %block_40f12f, %block_.L_40f11b
  %loadMem_40f139 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 33
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %4226 to i64*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 1
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 15
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %4232 to i64*
  %4233 = load i64, i64* %RBP.i93
  %4234 = sub i64 %4233, 28
  %4235 = load i64, i64* %PC.i91
  %4236 = add i64 %4235, 3
  store i64 %4236, i64* %PC.i91
  %4237 = inttoptr i64 %4234 to i32*
  %4238 = load i32, i32* %4237
  %4239 = zext i32 %4238 to i64
  store i64 %4239, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_40f139, %struct.Memory** %MEMORY
  %loadMem_40f13c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 33
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 5
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 15
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RBP.i90
  %4250 = sub i64 %4249, 64
  %4251 = load i64, i64* %PC.i88
  %4252 = add i64 %4251, 4
  store i64 %4252, i64* %PC.i88
  %4253 = inttoptr i64 %4250 to i64*
  %4254 = load i64, i64* %4253
  store i64 %4254, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_40f13c, %struct.Memory** %MEMORY
  %loadMem_40f140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 33
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 1
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %EAX.i86 = bitcast %union.anon* %4260 to i32*
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4262 = getelementptr inbounds %struct.GPR, %struct.GPR* %4261, i32 0, i32 5
  %4263 = getelementptr inbounds %struct.Reg, %struct.Reg* %4262, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %4263 to i64*
  %4264 = load i64, i64* %RCX.i87
  %4265 = load i32, i32* %EAX.i86
  %4266 = zext i32 %4265 to i64
  %4267 = load i64, i64* %PC.i85
  %4268 = add i64 %4267, 2
  store i64 %4268, i64* %PC.i85
  %4269 = inttoptr i64 %4264 to i32*
  store i32 %4265, i32* %4269
  store %struct.Memory* %loadMem_40f140, %struct.Memory** %MEMORY
  %loadMem_40f142 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 33
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 1
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 15
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %4278 to i64*
  %4279 = load i64, i64* %RBP.i84
  %4280 = sub i64 %4279, 96
  %4281 = load i64, i64* %PC.i82
  %4282 = add i64 %4281, 3
  store i64 %4282, i64* %PC.i82
  %4283 = inttoptr i64 %4280 to i32*
  %4284 = load i32, i32* %4283
  %4285 = zext i32 %4284 to i64
  store i64 %4285, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_40f142, %struct.Memory** %MEMORY
  %loadMem_40f145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4287 = getelementptr inbounds %struct.GPR, %struct.GPR* %4286, i32 0, i32 33
  %4288 = getelementptr inbounds %struct.Reg, %struct.Reg* %4287, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4288 to i64*
  %4289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4290 = getelementptr inbounds %struct.GPR, %struct.GPR* %4289, i32 0, i32 5
  %4291 = getelementptr inbounds %struct.Reg, %struct.Reg* %4290, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %4291 to i64*
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 15
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %4294 to i64*
  %4295 = load i64, i64* %RBP.i81
  %4296 = sub i64 %4295, 72
  %4297 = load i64, i64* %PC.i79
  %4298 = add i64 %4297, 4
  store i64 %4298, i64* %PC.i79
  %4299 = inttoptr i64 %4296 to i64*
  %4300 = load i64, i64* %4299
  store i64 %4300, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_40f145, %struct.Memory** %MEMORY
  %loadMem_40f149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 1
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %4306 to i32*
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4308 = getelementptr inbounds %struct.GPR, %struct.GPR* %4307, i32 0, i32 5
  %4309 = getelementptr inbounds %struct.Reg, %struct.Reg* %4308, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %4309 to i64*
  %4310 = load i64, i64* %RCX.i78
  %4311 = load i32, i32* %EAX.i77
  %4312 = zext i32 %4311 to i64
  %4313 = load i64, i64* %PC.i76
  %4314 = add i64 %4313, 2
  store i64 %4314, i64* %PC.i76
  %4315 = inttoptr i64 %4310 to i32*
  store i32 %4311, i32* %4315
  store %struct.Memory* %loadMem_40f149, %struct.Memory** %MEMORY
  %loadMem_40f14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4317 = getelementptr inbounds %struct.GPR, %struct.GPR* %4316, i32 0, i32 33
  %4318 = getelementptr inbounds %struct.Reg, %struct.Reg* %4317, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4318 to i64*
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 15
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %RBP.i75
  %4323 = sub i64 %4322, 20
  %4324 = load i64, i64* %PC.i74
  %4325 = add i64 %4324, 7
  store i64 %4325, i64* %PC.i74
  %4326 = inttoptr i64 %4323 to i32*
  store i32 1, i32* %4326
  store %struct.Memory* %loadMem_40f14b, %struct.Memory** %MEMORY
  %loadMem_40f152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %4329 to i64*
  %4330 = load i64, i64* %PC.i73
  %4331 = add i64 %4330, 156
  %4332 = load i64, i64* %PC.i73
  %4333 = add i64 %4332, 5
  store i64 %4333, i64* %PC.i73
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4331, i64* %4334, align 8
  store %struct.Memory* %loadMem_40f152, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f157:                                  ; preds = %block_40f12f
  %loadMem_40f157 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 33
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %4337 to i64*
  %4338 = load i64, i64* %PC.i72
  %4339 = add i64 %4338, 5
  %4340 = load i64, i64* %PC.i72
  %4341 = add i64 %4340, 5
  store i64 %4341, i64* %PC.i72
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4339, i64* %4342, align 8
  store %struct.Memory* %loadMem_40f157, %struct.Memory** %MEMORY
  br label %block_.L_40f15c

block_.L_40f15c:                                  ; preds = %block_.L_40f157, %block_.L_40f0b7
  %loadMem_40f15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 15
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %4348 to i64*
  %4349 = load i64, i64* %RBP.i71
  %4350 = sub i64 %4349, 92
  %4351 = load i64, i64* %PC.i70
  %4352 = add i64 %4351, 4
  store i64 %4352, i64* %PC.i70
  %4353 = inttoptr i64 %4350 to i32*
  %4354 = load i32, i32* %4353
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4355, align 1
  %4356 = and i32 %4354, 255
  %4357 = call i32 @llvm.ctpop.i32(i32 %4356)
  %4358 = trunc i32 %4357 to i8
  %4359 = and i8 %4358, 1
  %4360 = xor i8 %4359, 1
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4360, i8* %4361, align 1
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4362, align 1
  %4363 = icmp eq i32 %4354, 0
  %4364 = zext i1 %4363 to i8
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4364, i8* %4365, align 1
  %4366 = lshr i32 %4354, 31
  %4367 = trunc i32 %4366 to i8
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4367, i8* %4368, align 1
  %4369 = lshr i32 %4354, 31
  %4370 = xor i32 %4366, %4369
  %4371 = add i32 %4370, %4369
  %4372 = icmp eq i32 %4371, 2
  %4373 = zext i1 %4372 to i8
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4373, i8* %4374, align 1
  store %struct.Memory* %loadMem_40f15c, %struct.Memory** %MEMORY
  %loadMem_40f160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %4377 to i64*
  %4378 = load i64, i64* %PC.i69
  %4379 = add i64 %4378, 18
  %4380 = load i64, i64* %PC.i69
  %4381 = add i64 %4380, 6
  %4382 = load i64, i64* %PC.i69
  %4383 = add i64 %4382, 6
  store i64 %4383, i64* %PC.i69
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4385 = load i8, i8* %4384, align 1
  %4386 = icmp eq i8 %4385, 0
  %4387 = zext i1 %4386 to i8
  store i8 %4387, i8* %BRANCH_TAKEN, align 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4389 = select i1 %4386, i64 %4379, i64 %4381
  store i64 %4389, i64* %4388, align 8
  store %struct.Memory* %loadMem_40f160, %struct.Memory** %MEMORY
  %loadBr_40f160 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f160 = icmp eq i8 %loadBr_40f160, 1
  br i1 %cmpBr_40f160, label %block_.L_40f172, label %block_40f166

block_40f166:                                     ; preds = %block_.L_40f15c
  %loadMem_40f166 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 15
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %4395 to i64*
  %4396 = load i64, i64* %RBP.i68
  %4397 = sub i64 %4396, 20
  %4398 = load i64, i64* %PC.i67
  %4399 = add i64 %4398, 7
  store i64 %4399, i64* %PC.i67
  %4400 = inttoptr i64 %4397 to i32*
  store i32 1, i32* %4400
  store %struct.Memory* %loadMem_40f166, %struct.Memory** %MEMORY
  %loadMem_40f16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %4403 to i64*
  %4404 = load i64, i64* %PC.i66
  %4405 = add i64 %4404, 129
  %4406 = load i64, i64* %PC.i66
  %4407 = add i64 %4406, 5
  store i64 %4407, i64* %PC.i66
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4405, i64* %4408, align 8
  store %struct.Memory* %loadMem_40f16d, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f172:                                  ; preds = %block_.L_40f15c
  %loadMem_40f172 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4410 = getelementptr inbounds %struct.GPR, %struct.GPR* %4409, i32 0, i32 33
  %4411 = getelementptr inbounds %struct.Reg, %struct.Reg* %4410, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4411 to i64*
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 1
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %4414 to i64*
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4416 = getelementptr inbounds %struct.GPR, %struct.GPR* %4415, i32 0, i32 15
  %4417 = getelementptr inbounds %struct.Reg, %struct.Reg* %4416, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %4417 to i64*
  %4418 = load i64, i64* %RBP.i65
  %4419 = sub i64 %4418, 48
  %4420 = load i64, i64* %PC.i63
  %4421 = add i64 %4420, 3
  store i64 %4421, i64* %PC.i63
  %4422 = inttoptr i64 %4419 to i32*
  %4423 = load i32, i32* %4422
  %4424 = zext i32 %4423 to i64
  store i64 %4424, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_40f172, %struct.Memory** %MEMORY
  %loadMem_40f175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 1
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %EAX.i61 = bitcast %union.anon* %4430 to i32*
  %4431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4432 = getelementptr inbounds %struct.GPR, %struct.GPR* %4431, i32 0, i32 15
  %4433 = getelementptr inbounds %struct.Reg, %struct.Reg* %4432, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %4433 to i64*
  %4434 = load i32, i32* %EAX.i61
  %4435 = zext i32 %4434 to i64
  %4436 = load i64, i64* %RBP.i62
  %4437 = sub i64 %4436, 88
  %4438 = load i64, i64* %PC.i60
  %4439 = add i64 %4438, 3
  store i64 %4439, i64* %PC.i60
  %4440 = inttoptr i64 %4437 to i32*
  %4441 = load i32, i32* %4440
  %4442 = sub i32 %4434, %4441
  %4443 = icmp ult i32 %4434, %4441
  %4444 = zext i1 %4443 to i8
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4444, i8* %4445, align 1
  %4446 = and i32 %4442, 255
  %4447 = call i32 @llvm.ctpop.i32(i32 %4446)
  %4448 = trunc i32 %4447 to i8
  %4449 = and i8 %4448, 1
  %4450 = xor i8 %4449, 1
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4450, i8* %4451, align 1
  %4452 = xor i32 %4441, %4434
  %4453 = xor i32 %4452, %4442
  %4454 = lshr i32 %4453, 4
  %4455 = trunc i32 %4454 to i8
  %4456 = and i8 %4455, 1
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4456, i8* %4457, align 1
  %4458 = icmp eq i32 %4442, 0
  %4459 = zext i1 %4458 to i8
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4459, i8* %4460, align 1
  %4461 = lshr i32 %4442, 31
  %4462 = trunc i32 %4461 to i8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4462, i8* %4463, align 1
  %4464 = lshr i32 %4434, 31
  %4465 = lshr i32 %4441, 31
  %4466 = xor i32 %4465, %4464
  %4467 = xor i32 %4461, %4464
  %4468 = add i32 %4467, %4466
  %4469 = icmp eq i32 %4468, 2
  %4470 = zext i1 %4469 to i8
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4470, i8* %4471, align 1
  store %struct.Memory* %loadMem_40f175, %struct.Memory** %MEMORY
  %loadMem_40f178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 33
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4474 to i64*
  %4475 = load i64, i64* %PC.i59
  %4476 = add i64 %4475, 46
  %4477 = load i64, i64* %PC.i59
  %4478 = add i64 %4477, 6
  %4479 = load i64, i64* %PC.i59
  %4480 = add i64 %4479, 6
  store i64 %4480, i64* %PC.i59
  %4481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4482 = load i8, i8* %4481, align 1
  %4483 = icmp eq i8 %4482, 0
  %4484 = zext i1 %4483 to i8
  store i8 %4484, i8* %BRANCH_TAKEN, align 1
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4486 = select i1 %4483, i64 %4476, i64 %4478
  store i64 %4486, i64* %4485, align 8
  store %struct.Memory* %loadMem_40f178, %struct.Memory** %MEMORY
  %loadBr_40f178 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f178 = icmp eq i8 %loadBr_40f178, 1
  br i1 %cmpBr_40f178, label %block_.L_40f1a6, label %block_40f17e

block_40f17e:                                     ; preds = %block_.L_40f172
  %loadMem_40f17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 33
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4489 to i64*
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4491 = getelementptr inbounds %struct.GPR, %struct.GPR* %4490, i32 0, i32 15
  %4492 = getelementptr inbounds %struct.Reg, %struct.Reg* %4491, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4492 to i64*
  %4493 = load i64, i64* %RBP.i58
  %4494 = sub i64 %4493, 28
  %4495 = load i64, i64* %PC.i57
  %4496 = add i64 %4495, 4
  store i64 %4496, i64* %PC.i57
  %4497 = inttoptr i64 %4494 to i32*
  %4498 = load i32, i32* %4497
  %4499 = sub i32 %4498, 1
  %4500 = icmp ult i32 %4498, 1
  %4501 = zext i1 %4500 to i8
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4501, i8* %4502, align 1
  %4503 = and i32 %4499, 255
  %4504 = call i32 @llvm.ctpop.i32(i32 %4503)
  %4505 = trunc i32 %4504 to i8
  %4506 = and i8 %4505, 1
  %4507 = xor i8 %4506, 1
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4507, i8* %4508, align 1
  %4509 = xor i32 %4498, 1
  %4510 = xor i32 %4509, %4499
  %4511 = lshr i32 %4510, 4
  %4512 = trunc i32 %4511 to i8
  %4513 = and i8 %4512, 1
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4513, i8* %4514, align 1
  %4515 = icmp eq i32 %4499, 0
  %4516 = zext i1 %4515 to i8
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4516, i8* %4517, align 1
  %4518 = lshr i32 %4499, 31
  %4519 = trunc i32 %4518 to i8
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4519, i8* %4520, align 1
  %4521 = lshr i32 %4498, 31
  %4522 = xor i32 %4518, %4521
  %4523 = add i32 %4522, %4521
  %4524 = icmp eq i32 %4523, 2
  %4525 = zext i1 %4524 to i8
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4525, i8* %4526, align 1
  store %struct.Memory* %loadMem_40f17e, %struct.Memory** %MEMORY
  %loadMem_40f182 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %PC.i56
  %4531 = add i64 %4530, 21
  %4532 = load i64, i64* %PC.i56
  %4533 = add i64 %4532, 6
  %4534 = load i64, i64* %PC.i56
  %4535 = add i64 %4534, 6
  store i64 %4535, i64* %PC.i56
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4537 = load i8, i8* %4536, align 1
  %4538 = icmp eq i8 %4537, 0
  %4539 = zext i1 %4538 to i8
  store i8 %4539, i8* %BRANCH_TAKEN, align 1
  %4540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4541 = select i1 %4538, i64 %4531, i64 %4533
  store i64 %4541, i64* %4540, align 8
  store %struct.Memory* %loadMem_40f182, %struct.Memory** %MEMORY
  %loadBr_40f182 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f182 = icmp eq i8 %loadBr_40f182, 1
  br i1 %cmpBr_40f182, label %block_.L_40f197, label %block_40f188

block_40f188:                                     ; preds = %block_40f17e
  %loadMem_40f188 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 33
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4544 to i64*
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 1
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %4547 to i64*
  %4548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4549 = getelementptr inbounds %struct.GPR, %struct.GPR* %4548, i32 0, i32 15
  %4550 = getelementptr inbounds %struct.Reg, %struct.Reg* %4549, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4550 to i64*
  %4551 = load i64, i64* %RBP.i55
  %4552 = sub i64 %4551, 64
  %4553 = load i64, i64* %PC.i53
  %4554 = add i64 %4553, 4
  store i64 %4554, i64* %PC.i53
  %4555 = inttoptr i64 %4552 to i64*
  %4556 = load i64, i64* %4555
  store i64 %4556, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_40f188, %struct.Memory** %MEMORY
  %loadMem_40f18c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 33
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4559 to i64*
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 1
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %4562 to i64*
  %4563 = load i64, i64* %RAX.i52
  %4564 = load i64, i64* %PC.i51
  %4565 = add i64 %4564, 6
  store i64 %4565, i64* %PC.i51
  %4566 = inttoptr i64 %4563 to i32*
  store i32 5, i32* %4566
  store %struct.Memory* %loadMem_40f18c, %struct.Memory** %MEMORY
  %loadMem_40f192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4568 = getelementptr inbounds %struct.GPR, %struct.GPR* %4567, i32 0, i32 33
  %4569 = getelementptr inbounds %struct.Reg, %struct.Reg* %4568, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %4569 to i64*
  %4570 = load i64, i64* %PC.i50
  %4571 = add i64 %4570, 15
  %4572 = load i64, i64* %PC.i50
  %4573 = add i64 %4572, 5
  store i64 %4573, i64* %PC.i50
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4571, i64* %4574, align 8
  store %struct.Memory* %loadMem_40f192, %struct.Memory** %MEMORY
  br label %block_.L_40f1a1

block_.L_40f197:                                  ; preds = %block_40f17e
  %loadMem_40f197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 1
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %4580 to i64*
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 15
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %4583 to i64*
  %4584 = load i64, i64* %RBP.i49
  %4585 = sub i64 %4584, 64
  %4586 = load i64, i64* %PC.i47
  %4587 = add i64 %4586, 4
  store i64 %4587, i64* %PC.i47
  %4588 = inttoptr i64 %4585 to i64*
  %4589 = load i64, i64* %4588
  store i64 %4589, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_40f197, %struct.Memory** %MEMORY
  %loadMem_40f19b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4594 = getelementptr inbounds %struct.GPR, %struct.GPR* %4593, i32 0, i32 1
  %4595 = getelementptr inbounds %struct.Reg, %struct.Reg* %4594, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %4595 to i64*
  %4596 = load i64, i64* %RAX.i46
  %4597 = load i64, i64* %PC.i45
  %4598 = add i64 %4597, 6
  store i64 %4598, i64* %PC.i45
  %4599 = inttoptr i64 %4596 to i32*
  store i32 4, i32* %4599
  store %struct.Memory* %loadMem_40f19b, %struct.Memory** %MEMORY
  br label %block_.L_40f1a1

block_.L_40f1a1:                                  ; preds = %block_.L_40f197, %block_40f188
  %loadMem_40f1a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 33
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4602 to i64*
  %4603 = load i64, i64* %PC.i44
  %4604 = add i64 %4603, 70
  %4605 = load i64, i64* %PC.i44
  %4606 = add i64 %4605, 5
  store i64 %4606, i64* %PC.i44
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4604, i64* %4607, align 8
  store %struct.Memory* %loadMem_40f1a1, %struct.Memory** %MEMORY
  br label %block_.L_40f1e7

block_.L_40f1a6:                                  ; preds = %block_.L_40f172
  %loadMem_40f1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4609 = getelementptr inbounds %struct.GPR, %struct.GPR* %4608, i32 0, i32 33
  %4610 = getelementptr inbounds %struct.Reg, %struct.Reg* %4609, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4610 to i64*
  %4611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4612 = getelementptr inbounds %struct.GPR, %struct.GPR* %4611, i32 0, i32 1
  %4613 = getelementptr inbounds %struct.Reg, %struct.Reg* %4612, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %4613 to i64*
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 15
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %4616 to i64*
  %4617 = load i64, i64* %RBP.i43
  %4618 = sub i64 %4617, 48
  %4619 = load i64, i64* %PC.i41
  %4620 = add i64 %4619, 3
  store i64 %4620, i64* %PC.i41
  %4621 = inttoptr i64 %4618 to i32*
  %4622 = load i32, i32* %4621
  %4623 = zext i32 %4622 to i64
  store i64 %4623, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_40f1a6, %struct.Memory** %MEMORY
  %loadMem_40f1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4625 = getelementptr inbounds %struct.GPR, %struct.GPR* %4624, i32 0, i32 33
  %4626 = getelementptr inbounds %struct.Reg, %struct.Reg* %4625, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4626 to i64*
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 1
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %4629 to i32*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 15
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %4632 to i64*
  %4633 = load i32, i32* %EAX.i39
  %4634 = zext i32 %4633 to i64
  %4635 = load i64, i64* %RBP.i40
  %4636 = sub i64 %4635, 28
  %4637 = load i64, i64* %PC.i38
  %4638 = add i64 %4637, 3
  store i64 %4638, i64* %PC.i38
  %4639 = inttoptr i64 %4636 to i32*
  %4640 = load i32, i32* %4639
  %4641 = sub i32 %4633, %4640
  %4642 = icmp ult i32 %4633, %4640
  %4643 = zext i1 %4642 to i8
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4643, i8* %4644, align 1
  %4645 = and i32 %4641, 255
  %4646 = call i32 @llvm.ctpop.i32(i32 %4645)
  %4647 = trunc i32 %4646 to i8
  %4648 = and i8 %4647, 1
  %4649 = xor i8 %4648, 1
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4649, i8* %4650, align 1
  %4651 = xor i32 %4640, %4633
  %4652 = xor i32 %4651, %4641
  %4653 = lshr i32 %4652, 4
  %4654 = trunc i32 %4653 to i8
  %4655 = and i8 %4654, 1
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4655, i8* %4656, align 1
  %4657 = icmp eq i32 %4641, 0
  %4658 = zext i1 %4657 to i8
  %4659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4658, i8* %4659, align 1
  %4660 = lshr i32 %4641, 31
  %4661 = trunc i32 %4660 to i8
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4661, i8* %4662, align 1
  %4663 = lshr i32 %4633, 31
  %4664 = lshr i32 %4640, 31
  %4665 = xor i32 %4664, %4663
  %4666 = xor i32 %4660, %4663
  %4667 = add i32 %4666, %4665
  %4668 = icmp eq i32 %4667, 2
  %4669 = zext i1 %4668 to i8
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4669, i8* %4670, align 1
  store %struct.Memory* %loadMem_40f1a9, %struct.Memory** %MEMORY
  %loadMem_40f1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4672 = getelementptr inbounds %struct.GPR, %struct.GPR* %4671, i32 0, i32 33
  %4673 = getelementptr inbounds %struct.Reg, %struct.Reg* %4672, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %4673 to i64*
  %4674 = load i64, i64* %PC.i37
  %4675 = add i64 %4674, 20
  %4676 = load i64, i64* %PC.i37
  %4677 = add i64 %4676, 6
  %4678 = load i64, i64* %PC.i37
  %4679 = add i64 %4678, 6
  store i64 %4679, i64* %PC.i37
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4681 = load i8, i8* %4680, align 1
  %4682 = icmp eq i8 %4681, 0
  %4683 = zext i1 %4682 to i8
  store i8 %4683, i8* %BRANCH_TAKEN, align 1
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4685 = select i1 %4682, i64 %4675, i64 %4677
  store i64 %4685, i64* %4684, align 8
  store %struct.Memory* %loadMem_40f1ac, %struct.Memory** %MEMORY
  %loadBr_40f1ac = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f1ac = icmp eq i8 %loadBr_40f1ac, 1
  br i1 %cmpBr_40f1ac, label %block_.L_40f1c0, label %block_40f1b2

block_40f1b2:                                     ; preds = %block_.L_40f1a6
  %loadMem_40f1b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 33
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 1
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4691 to i64*
  %4692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4693 = getelementptr inbounds %struct.GPR, %struct.GPR* %4692, i32 0, i32 15
  %4694 = getelementptr inbounds %struct.Reg, %struct.Reg* %4693, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %4694 to i64*
  %4695 = load i64, i64* %RBP.i36
  %4696 = sub i64 %4695, 96
  %4697 = load i64, i64* %PC.i34
  %4698 = add i64 %4697, 3
  store i64 %4698, i64* %PC.i34
  %4699 = inttoptr i64 %4696 to i32*
  %4700 = load i32, i32* %4699
  %4701 = zext i32 %4700 to i64
  store i64 %4701, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_40f1b2, %struct.Memory** %MEMORY
  %loadMem_40f1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 5
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 15
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4710 to i64*
  %4711 = load i64, i64* %RBP.i33
  %4712 = sub i64 %4711, 72
  %4713 = load i64, i64* %PC.i31
  %4714 = add i64 %4713, 4
  store i64 %4714, i64* %PC.i31
  %4715 = inttoptr i64 %4712 to i64*
  %4716 = load i64, i64* %4715
  store i64 %4716, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_40f1b5, %struct.Memory** %MEMORY
  %loadMem_40f1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 33
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4719 to i64*
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4721 = getelementptr inbounds %struct.GPR, %struct.GPR* %4720, i32 0, i32 1
  %4722 = getelementptr inbounds %struct.Reg, %struct.Reg* %4721, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4722 to i32*
  %4723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4724 = getelementptr inbounds %struct.GPR, %struct.GPR* %4723, i32 0, i32 5
  %4725 = getelementptr inbounds %struct.Reg, %struct.Reg* %4724, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %4725 to i64*
  %4726 = load i64, i64* %RCX.i30
  %4727 = load i32, i32* %EAX.i
  %4728 = zext i32 %4727 to i64
  %4729 = load i64, i64* %PC.i29
  %4730 = add i64 %4729, 2
  store i64 %4730, i64* %PC.i29
  %4731 = inttoptr i64 %4726 to i32*
  store i32 %4727, i32* %4731
  store %struct.Memory* %loadMem_40f1b9, %struct.Memory** %MEMORY
  %loadMem_40f1bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 33
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %PC.i28
  %4736 = add i64 %4735, 39
  %4737 = load i64, i64* %PC.i28
  %4738 = add i64 %4737, 5
  store i64 %4738, i64* %PC.i28
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4736, i64* %4739, align 8
  store %struct.Memory* %loadMem_40f1bb, %struct.Memory** %MEMORY
  br label %block_.L_40f1e2

block_.L_40f1c0:                                  ; preds = %block_.L_40f1a6
  %loadMem_40f1c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 33
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 15
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %RBP.i27
  %4747 = sub i64 %4746, 100
  %4748 = load i64, i64* %PC.i26
  %4749 = add i64 %4748, 4
  store i64 %4749, i64* %PC.i26
  %4750 = inttoptr i64 %4747 to i32*
  %4751 = load i32, i32* %4750
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4752, align 1
  %4753 = and i32 %4751, 255
  %4754 = call i32 @llvm.ctpop.i32(i32 %4753)
  %4755 = trunc i32 %4754 to i8
  %4756 = and i8 %4755, 1
  %4757 = xor i8 %4756, 1
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4757, i8* %4758, align 1
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4759, align 1
  %4760 = icmp eq i32 %4751, 0
  %4761 = zext i1 %4760 to i8
  %4762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4761, i8* %4762, align 1
  %4763 = lshr i32 %4751, 31
  %4764 = trunc i32 %4763 to i8
  %4765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4764, i8* %4765, align 1
  %4766 = lshr i32 %4751, 31
  %4767 = xor i32 %4763, %4766
  %4768 = add i32 %4767, %4766
  %4769 = icmp eq i32 %4768, 2
  %4770 = zext i1 %4769 to i8
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4770, i8* %4771, align 1
  store %struct.Memory* %loadMem_40f1c0, %struct.Memory** %MEMORY
  %loadMem_40f1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4774 to i64*
  %4775 = load i64, i64* %PC.i25
  %4776 = add i64 %4775, 25
  %4777 = load i64, i64* %PC.i25
  %4778 = add i64 %4777, 6
  %4779 = load i64, i64* %PC.i25
  %4780 = add i64 %4779, 6
  store i64 %4780, i64* %PC.i25
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4782 = load i8, i8* %4781, align 1
  store i8 %4782, i8* %BRANCH_TAKEN, align 1
  %4783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4784 = icmp ne i8 %4782, 0
  %4785 = select i1 %4784, i64 %4776, i64 %4778
  store i64 %4785, i64* %4783, align 8
  store %struct.Memory* %loadMem_40f1c4, %struct.Memory** %MEMORY
  %loadBr_40f1c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40f1c4 = icmp eq i8 %loadBr_40f1c4, 1
  br i1 %cmpBr_40f1c4, label %block_.L_40f1dd, label %block_40f1ca

block_40f1ca:                                     ; preds = %block_.L_40f1c0
  %loadMem_40f1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4787 = getelementptr inbounds %struct.GPR, %struct.GPR* %4786, i32 0, i32 33
  %4788 = getelementptr inbounds %struct.Reg, %struct.Reg* %4787, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4788 to i64*
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 1
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %4791 to i64*
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 15
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4794 to i64*
  %4795 = load i64, i64* %RBP.i24
  %4796 = sub i64 %4795, 64
  %4797 = load i64, i64* %PC.i22
  %4798 = add i64 %4797, 4
  store i64 %4798, i64* %PC.i22
  %4799 = inttoptr i64 %4796 to i64*
  %4800 = load i64, i64* %4799
  store i64 %4800, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_40f1ca, %struct.Memory** %MEMORY
  %loadMem_40f1ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4802 = getelementptr inbounds %struct.GPR, %struct.GPR* %4801, i32 0, i32 33
  %4803 = getelementptr inbounds %struct.Reg, %struct.Reg* %4802, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4803 to i64*
  %4804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4805 = getelementptr inbounds %struct.GPR, %struct.GPR* %4804, i32 0, i32 1
  %4806 = getelementptr inbounds %struct.Reg, %struct.Reg* %4805, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %4806 to i64*
  %4807 = load i64, i64* %RAX.i21
  %4808 = load i64, i64* %PC.i20
  %4809 = add i64 %4808, 6
  store i64 %4809, i64* %PC.i20
  %4810 = inttoptr i64 %4807 to i32*
  store i32 6, i32* %4810
  store %struct.Memory* %loadMem_40f1ce, %struct.Memory** %MEMORY
  %loadMem_40f1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 5
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 15
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RBP.i19
  %4821 = sub i64 %4820, 100
  %4822 = load i64, i64* %PC.i18
  %4823 = add i64 %4822, 3
  store i64 %4823, i64* %PC.i18
  %4824 = inttoptr i64 %4821 to i32*
  %4825 = load i32, i32* %4824
  %4826 = zext i32 %4825 to i64
  store i64 %4826, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_40f1d4, %struct.Memory** %MEMORY
  %loadMem_40f1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4828 = getelementptr inbounds %struct.GPR, %struct.GPR* %4827, i32 0, i32 33
  %4829 = getelementptr inbounds %struct.Reg, %struct.Reg* %4828, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4829 to i64*
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 1
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 15
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %4835 to i64*
  %4836 = load i64, i64* %RBP.i17
  %4837 = sub i64 %4836, 72
  %4838 = load i64, i64* %PC.i15
  %4839 = add i64 %4838, 4
  store i64 %4839, i64* %PC.i15
  %4840 = inttoptr i64 %4837 to i64*
  %4841 = load i64, i64* %4840
  store i64 %4841, i64* %RAX.i16, align 8
  store %struct.Memory* %loadMem_40f1d7, %struct.Memory** %MEMORY
  %loadMem_40f1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 5
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4847 to i32*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 1
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %4850 to i64*
  %4851 = load i64, i64* %RAX.i14
  %4852 = load i32, i32* %ECX.i
  %4853 = zext i32 %4852 to i64
  %4854 = load i64, i64* %PC.i13
  %4855 = add i64 %4854, 2
  store i64 %4855, i64* %PC.i13
  %4856 = inttoptr i64 %4851 to i32*
  store i32 %4852, i32* %4856
  store %struct.Memory* %loadMem_40f1db, %struct.Memory** %MEMORY
  br label %block_.L_40f1dd

block_.L_40f1dd:                                  ; preds = %block_40f1ca, %block_.L_40f1c0
  %loadMem_40f1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4858 = getelementptr inbounds %struct.GPR, %struct.GPR* %4857, i32 0, i32 33
  %4859 = getelementptr inbounds %struct.Reg, %struct.Reg* %4858, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4859 to i64*
  %4860 = load i64, i64* %PC.i12
  %4861 = add i64 %4860, 5
  %4862 = load i64, i64* %PC.i12
  %4863 = add i64 %4862, 5
  store i64 %4863, i64* %PC.i12
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4861, i64* %4864, align 8
  store %struct.Memory* %loadMem_40f1dd, %struct.Memory** %MEMORY
  br label %block_.L_40f1e2

block_.L_40f1e2:                                  ; preds = %block_.L_40f1dd, %block_40f1b2
  %loadMem_40f1e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4867 to i64*
  %4868 = load i64, i64* %PC.i11
  %4869 = add i64 %4868, 5
  %4870 = load i64, i64* %PC.i11
  %4871 = add i64 %4870, 5
  store i64 %4871, i64* %PC.i11
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4869, i64* %4872, align 8
  store %struct.Memory* %loadMem_40f1e2, %struct.Memory** %MEMORY
  br label %block_.L_40f1e7

block_.L_40f1e7:                                  ; preds = %block_.L_40f1e2, %block_.L_40f1a1
  %loadMem_40f1e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 15
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %4878 to i64*
  %4879 = load i64, i64* %RBP.i10
  %4880 = sub i64 %4879, 20
  %4881 = load i64, i64* %PC.i9
  %4882 = add i64 %4881, 7
  store i64 %4882, i64* %PC.i9
  %4883 = inttoptr i64 %4880 to i32*
  store i32 1, i32* %4883
  store %struct.Memory* %loadMem_40f1e7, %struct.Memory** %MEMORY
  br label %block_.L_40f1ee

block_.L_40f1ee:                                  ; preds = %block_.L_40f1e7, %block_40f166, %block_.L_40f139, %block_40f10f, %block_40f0e4, %block_40f0a1, %block_40f02b, %block_.L_40efc3, %block_40efa3
  %loadMem_40f1ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 33
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4886 to i64*
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4888 = getelementptr inbounds %struct.GPR, %struct.GPR* %4887, i32 0, i32 1
  %4889 = getelementptr inbounds %struct.Reg, %struct.Reg* %4888, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4889 to i64*
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 15
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %RBP.i8
  %4894 = sub i64 %4893, 20
  %4895 = load i64, i64* %PC.i7
  %4896 = add i64 %4895, 3
  store i64 %4896, i64* %PC.i7
  %4897 = inttoptr i64 %4894 to i32*
  %4898 = load i32, i32* %4897
  %4899 = zext i32 %4898 to i64
  store i64 %4899, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_40f1ee, %struct.Memory** %MEMORY
  %loadMem_40f1f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 33
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 13
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4905 to i64*
  %4906 = load i64, i64* %RSP.i
  %4907 = load i64, i64* %PC.i6
  %4908 = add i64 %4907, 4
  store i64 %4908, i64* %PC.i6
  %4909 = add i64 96, %4906
  store i64 %4909, i64* %RSP.i, align 8
  %4910 = icmp ult i64 %4909, %4906
  %4911 = icmp ult i64 %4909, 96
  %4912 = or i1 %4910, %4911
  %4913 = zext i1 %4912 to i8
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4913, i8* %4914, align 1
  %4915 = trunc i64 %4909 to i32
  %4916 = and i32 %4915, 255
  %4917 = call i32 @llvm.ctpop.i32(i32 %4916)
  %4918 = trunc i32 %4917 to i8
  %4919 = and i8 %4918, 1
  %4920 = xor i8 %4919, 1
  %4921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4920, i8* %4921, align 1
  %4922 = xor i64 96, %4906
  %4923 = xor i64 %4922, %4909
  %4924 = lshr i64 %4923, 4
  %4925 = trunc i64 %4924 to i8
  %4926 = and i8 %4925, 1
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4926, i8* %4927, align 1
  %4928 = icmp eq i64 %4909, 0
  %4929 = zext i1 %4928 to i8
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4929, i8* %4930, align 1
  %4931 = lshr i64 %4909, 63
  %4932 = trunc i64 %4931 to i8
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4932, i8* %4933, align 1
  %4934 = lshr i64 %4906, 63
  %4935 = xor i64 %4931, %4934
  %4936 = add i64 %4935, %4931
  %4937 = icmp eq i64 %4936, 2
  %4938 = zext i1 %4937 to i8
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4938, i8* %4939, align 1
  store %struct.Memory* %loadMem_40f1f1, %struct.Memory** %MEMORY
  %loadMem_40f1f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4941 = getelementptr inbounds %struct.GPR, %struct.GPR* %4940, i32 0, i32 33
  %4942 = getelementptr inbounds %struct.Reg, %struct.Reg* %4941, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4942 to i64*
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4944 = getelementptr inbounds %struct.GPR, %struct.GPR* %4943, i32 0, i32 3
  %4945 = getelementptr inbounds %struct.Reg, %struct.Reg* %4944, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %4945 to i64*
  %4946 = load i64, i64* %PC.i5
  %4947 = add i64 %4946, 1
  store i64 %4947, i64* %PC.i5
  %4948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4949 = load i64, i64* %4948, align 8
  %4950 = add i64 %4949, 8
  %4951 = inttoptr i64 %4949 to i64*
  %4952 = load i64, i64* %4951
  store i64 %4952, i64* %RBX.i, align 8
  store i64 %4950, i64* %4948, align 8
  store %struct.Memory* %loadMem_40f1f5, %struct.Memory** %MEMORY
  %loadMem_40f1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4954 = getelementptr inbounds %struct.GPR, %struct.GPR* %4953, i32 0, i32 33
  %4955 = getelementptr inbounds %struct.Reg, %struct.Reg* %4954, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4955 to i64*
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4957 = getelementptr inbounds %struct.GPR, %struct.GPR* %4956, i32 0, i32 29
  %4958 = getelementptr inbounds %struct.Reg, %struct.Reg* %4957, i32 0, i32 0
  %R14.i = bitcast %union.anon* %4958 to i64*
  %4959 = load i64, i64* %PC.i4
  %4960 = add i64 %4959, 2
  store i64 %4960, i64* %PC.i4
  %4961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4962 = load i64, i64* %4961, align 8
  %4963 = add i64 %4962, 8
  %4964 = inttoptr i64 %4962 to i64*
  %4965 = load i64, i64* %4964
  store i64 %4965, i64* %R14.i, align 8
  store i64 %4963, i64* %4961, align 8
  store %struct.Memory* %loadMem_40f1f6, %struct.Memory** %MEMORY
  %loadMem_40f1f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 15
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4971 to i64*
  %4972 = load i64, i64* %PC.i2
  %4973 = add i64 %4972, 1
  store i64 %4973, i64* %PC.i2
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4975 = load i64, i64* %4974, align 8
  %4976 = add i64 %4975, 8
  %4977 = inttoptr i64 %4975 to i64*
  %4978 = load i64, i64* %4977
  store i64 %4978, i64* %RBP.i3, align 8
  store i64 %4976, i64* %4974, align 8
  store %struct.Memory* %loadMem_40f1f8, %struct.Memory** %MEMORY
  %loadMem_40f1f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4980 = getelementptr inbounds %struct.GPR, %struct.GPR* %4979, i32 0, i32 33
  %4981 = getelementptr inbounds %struct.Reg, %struct.Reg* %4980, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4981 to i64*
  %4982 = load i64, i64* %PC.i1
  %4983 = add i64 %4982, 1
  store i64 %4983, i64* %PC.i1
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4986 = load i64, i64* %4985, align 8
  %4987 = inttoptr i64 %4986 to i64*
  %4988 = load i64, i64* %4987
  store i64 %4988, i64* %4984, align 8
  %4989 = add i64 %4986, 8
  store i64 %4989, i64* %4985, align 8
  store %struct.Memory* %loadMem_40f1f9, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40f1f9
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_movl_0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x18__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x10__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 29
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R14D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R14D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 3, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__r8d__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %RBX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____r14d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R14D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 28
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %13, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %13, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %13
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %13, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r14d__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %R14D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb6eec4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40ee5a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40eeb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 1, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40ef22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 2
  %14 = icmp ult i32 %9, 2
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1
  %17 = and i32 %13, 255
  %18 = call i32 @llvm.ctpop.i32(i32 %17)
  %19 = trunc i32 %18 to i8
  %20 = and i8 %19, 1
  %21 = xor i8 %20, 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %21, i8* %22, align 1
  %23 = xor i64 2, %10
  %24 = trunc i64 %23 to i32
  %25 = xor i32 %24, %13
  %26 = lshr i32 %25, 4
  %27 = trunc i32 %26 to i8
  %28 = and i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %13, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %13, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = lshr i32 %9, 31
  %37 = xor i32 %33, %36
  %38 = add i32 %37, %36
  %39 = icmp eq i32 %38, 2
  %40 = zext i1 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %40, i8* %41, align 1
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

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_ko(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_callq_.is_suicide(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40ef22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 2
  %16 = icmp ult i32 %14, 2
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
  %25 = xor i32 %14, 2
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

define %struct.Memory* @routine_je_.L_40eec8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x5__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 5
  %16 = icmp ult i32 %14, 5
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
  %25 = xor i32 %14, 5
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

define %struct.Memory* @routine_jne_.L_40ef30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40ef30(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x60__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x5c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40ef8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x6__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 6
  %16 = icmp ult i32 %14, 6
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
  %25 = xor i32 %14, 6
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

define %struct.Memory* @routine_jne_.L_40ef86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %12
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

define %struct.Memory* @routine_jmpq_.L_40f0b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 88
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

define %struct.Memory* @routine_jne_.L_40efaf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jmpq_.L_40f1ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_je_.L_40efc3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40efcf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jne_.L_40f037(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_addl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_cmpl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %ECX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ECX
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

define %struct.Memory* @routine_je_.L_40f037(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_jne_.L_40f0b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0xb6eec4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0xb6eec4_type* @G_0xb6eec4 to i32*)
  %14 = sub i32 %9, %13
  %15 = icmp ult i32 %9, %13
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
  %24 = xor i32 %13, %9
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
  %36 = lshr i32 %9, 31
  %37 = lshr i32 %13, 31
  %38 = xor i32 %37, %36
  %39 = xor i32 %33, %36
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40f0ad(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f0b2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
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

define %struct.Memory* @routine_callq_.trymove(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f15c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
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

define %struct.Memory* @routine_jne_.L_40f0f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_callq_.tryko(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f11b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_40f139(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f157(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40f15c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40f172(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40f1a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40f197(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x5____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 5, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40f1a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x4____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 4, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40f1e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_40f1c0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40f1e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 100
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

define %struct.Memory* @routine_je_.L_40f1dd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x6____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 6, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
