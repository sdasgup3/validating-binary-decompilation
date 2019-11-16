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
%G_0xb54ce4_type = type <{ [1 x i8] }>
%G__0xb0eff0_type = type <{ [8 x i8] }>
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
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G__0xb0eff0 = global %G__0xb0eff0_type zeroinitializer

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

declare %struct.Memory* @sub_477710.somewhere(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_45db40.attack(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperpat1022(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4dca90 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4dca90, %struct.Memory** %MEMORY
  %loadMem_4dca91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i413 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i414 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i415 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i414
  %27 = load i64, i64* %PC.i413
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i413
  store i64 %26, i64* %RBP.i415, align 8
  store %struct.Memory* %loadMem_4dca91, %struct.Memory** %MEMORY
  %loadMem_4dca94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i412 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i412
  %36 = load i64, i64* %PC.i411
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i411
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i412, align 8
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
  store %struct.Memory* %loadMem_4dca94, %struct.Memory** %MEMORY
  %loadMem_4dca98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i410 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i409
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i409
  store i64 1, i64* %RAX.i410, align 8
  store %struct.Memory* %loadMem_4dca98, %struct.Memory** %MEMORY
  %loadMem_4dca9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i407 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i408
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i407
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i406
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i406
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_4dca9d, %struct.Memory** %MEMORY
  %loadMem_4dcaa0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i405
  %101 = sub i64 %100, 8
  %102 = load i32, i32* %ESI.i
  %103 = zext i32 %102 to i64
  %104 = load i64, i64* %PC.i404
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i404
  %106 = inttoptr i64 %101 to i32*
  store i32 %102, i32* %106
  store %struct.Memory* %loadMem_4dcaa0, %struct.Memory** %MEMORY
  %loadMem_4dcaa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 33
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 7
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %EDX.i402 = bitcast %union.anon* %112 to i32*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 15
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %115 to i64*
  %116 = load i64, i64* %RBP.i403
  %117 = sub i64 %116, 12
  %118 = load i32, i32* %EDX.i402
  %119 = zext i32 %118 to i64
  %120 = load i64, i64* %PC.i401
  %121 = add i64 %120, 3
  store i64 %121, i64* %PC.i401
  %122 = inttoptr i64 %117 to i32*
  store i32 %118, i32* %122
  store %struct.Memory* %loadMem_4dcaa3, %struct.Memory** %MEMORY
  %loadMem_4dcaa6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 33
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %125 to i64*
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 5
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %ECX.i399 = bitcast %union.anon* %128 to i32*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 15
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %131 to i64*
  %132 = load i64, i64* %RBP.i400
  %133 = sub i64 %132, 16
  %134 = load i32, i32* %ECX.i399
  %135 = zext i32 %134 to i64
  %136 = load i64, i64* %PC.i398
  %137 = add i64 %136, 3
  store i64 %137, i64* %PC.i398
  %138 = inttoptr i64 %133 to i32*
  store i32 %134, i32* %138
  store %struct.Memory* %loadMem_4dcaa6, %struct.Memory** %MEMORY
  %loadMem_4dcaa9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 33
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 15
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %144 to i64*
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 17
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %R8.i397 = bitcast %union.anon* %147 to i64*
  %148 = load i64, i64* %RBP.i396
  %149 = sub i64 %148, 4
  %150 = load i64, i64* %PC.i395
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i395
  %152 = inttoptr i64 %149 to i32*
  %153 = load i32, i32* %152
  %154 = sext i32 %153 to i64
  store i64 %154, i64* %R8.i397, align 8
  store %struct.Memory* %loadMem_4dcaa9, %struct.Memory** %MEMORY
  %loadMem_4dcaad = load %struct.Memory*, %struct.Memory** %MEMORY
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 33
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 5
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RCX.i393 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 17
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %R8.i394 = bitcast %union.anon* %163 to i64*
  %164 = load i64, i64* %R8.i394
  %165 = mul i64 %164, 4
  %166 = add i64 %165, 11902384
  %167 = load i64, i64* %PC.i392
  %168 = add i64 %167, 8
  store i64 %168, i64* %PC.i392
  %169 = inttoptr i64 %166 to i32*
  %170 = load i32, i32* %169
  %171 = zext i32 %170 to i64
  store i64 %171, i64* %RCX.i393, align 8
  store %struct.Memory* %loadMem_4dcaad, %struct.Memory** %MEMORY
  %loadMem_4dcab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 5
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 15
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %RCX.i390
  %182 = load i64, i64* %RBP.i391
  %183 = sub i64 %182, 8
  %184 = load i64, i64* %PC.i389
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC.i389
  %186 = trunc i64 %181 to i32
  %187 = inttoptr i64 %183 to i32*
  %188 = load i32, i32* %187
  %189 = add i32 %188, %186
  %190 = zext i32 %189 to i64
  store i64 %190, i64* %RCX.i390, align 8
  %191 = icmp ult i32 %189, %186
  %192 = icmp ult i32 %189, %188
  %193 = or i1 %191, %192
  %194 = zext i1 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %194, i8* %195, align 1
  %196 = and i32 %189, 255
  %197 = call i32 @llvm.ctpop.i32(i32 %196)
  %198 = trunc i32 %197 to i8
  %199 = and i8 %198, 1
  %200 = xor i8 %199, 1
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %200, i8* %201, align 1
  %202 = xor i32 %188, %186
  %203 = xor i32 %202, %189
  %204 = lshr i32 %203, 4
  %205 = trunc i32 %204 to i8
  %206 = and i8 %205, 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %206, i8* %207, align 1
  %208 = icmp eq i32 %189, 0
  %209 = zext i1 %208 to i8
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %209, i8* %210, align 1
  %211 = lshr i32 %189, 31
  %212 = trunc i32 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %212, i8* %213, align 1
  %214 = lshr i32 %186, 31
  %215 = lshr i32 %188, 31
  %216 = xor i32 %211, %214
  %217 = xor i32 %211, %215
  %218 = add i32 %216, %217
  %219 = icmp eq i32 %218, 2
  %220 = zext i1 %219 to i8
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %220, i8* %221, align 1
  store %struct.Memory* %loadMem_4dcab5, %struct.Memory** %MEMORY
  %loadMem_4dcab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %ECX.i387 = bitcast %union.anon* %227 to i32*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i388
  %232 = sub i64 %231, 20
  %233 = load i32, i32* %ECX.i387
  %234 = zext i32 %233 to i64
  %235 = load i64, i64* %PC.i386
  %236 = add i64 %235, 3
  store i64 %236, i64* %PC.i386
  %237 = inttoptr i64 %232 to i32*
  store i32 %233, i32* %237
  store %struct.Memory* %loadMem_4dcab8, %struct.Memory** %MEMORY
  %loadMem_4dcabb = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 15
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 17
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %R8.i385 = bitcast %union.anon* %246 to i64*
  %247 = load i64, i64* %RBP.i384
  %248 = sub i64 %247, 4
  %249 = load i64, i64* %PC.i383
  %250 = add i64 %249, 4
  store i64 %250, i64* %PC.i383
  %251 = inttoptr i64 %248 to i32*
  %252 = load i32, i32* %251
  %253 = sext i32 %252 to i64
  store i64 %253, i64* %R8.i385, align 8
  store %struct.Memory* %loadMem_4dcabb, %struct.Memory** %MEMORY
  %loadMem_4dcabf = load %struct.Memory*, %struct.Memory** %MEMORY
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 33
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %256 to i64*
  %257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %258 = getelementptr inbounds %struct.GPR, %struct.GPR* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.Reg, %struct.Reg* %258, i32 0, i32 0
  %RCX.i381 = bitcast %union.anon* %259 to i64*
  %260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %261 = getelementptr inbounds %struct.GPR, %struct.GPR* %260, i32 0, i32 17
  %262 = getelementptr inbounds %struct.Reg, %struct.Reg* %261, i32 0, i32 0
  %R8.i382 = bitcast %union.anon* %262 to i64*
  %263 = load i64, i64* %R8.i382
  %264 = mul i64 %263, 4
  %265 = add i64 %264, 11902416
  %266 = load i64, i64* %PC.i380
  %267 = add i64 %266, 8
  store i64 %267, i64* %PC.i380
  %268 = inttoptr i64 %265 to i32*
  %269 = load i32, i32* %268
  %270 = zext i32 %269 to i64
  store i64 %270, i64* %RCX.i381, align 8
  store %struct.Memory* %loadMem_4dcabf, %struct.Memory** %MEMORY
  %loadMem_4dcac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 15
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RCX.i378
  %281 = load i64, i64* %RBP.i379
  %282 = sub i64 %281, 8
  %283 = load i64, i64* %PC.i377
  %284 = add i64 %283, 3
  store i64 %284, i64* %PC.i377
  %285 = trunc i64 %280 to i32
  %286 = inttoptr i64 %282 to i32*
  %287 = load i32, i32* %286
  %288 = add i32 %287, %285
  %289 = zext i32 %288 to i64
  store i64 %289, i64* %RCX.i378, align 8
  %290 = icmp ult i32 %288, %285
  %291 = icmp ult i32 %288, %287
  %292 = or i1 %290, %291
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %293, i8* %294, align 1
  %295 = and i32 %288, 255
  %296 = call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %299, i8* %300, align 1
  %301 = xor i32 %287, %285
  %302 = xor i32 %301, %288
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %305, i8* %306, align 1
  %307 = icmp eq i32 %288, 0
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %308, i8* %309, align 1
  %310 = lshr i32 %288, 31
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %311, i8* %312, align 1
  %313 = lshr i32 %285, 31
  %314 = lshr i32 %287, 31
  %315 = xor i32 %310, %313
  %316 = xor i32 %310, %314
  %317 = add i32 %315, %316
  %318 = icmp eq i32 %317, 2
  %319 = zext i1 %318 to i8
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %319, i8* %320, align 1
  store %struct.Memory* %loadMem_4dcac7, %struct.Memory** %MEMORY
  %loadMem_4dcaca = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 5
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %ECX.i375 = bitcast %union.anon* %326 to i32*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RBP.i376
  %331 = sub i64 %330, 24
  %332 = load i32, i32* %ECX.i375
  %333 = zext i32 %332 to i64
  %334 = load i64, i64* %PC.i374
  %335 = add i64 %334, 3
  store i64 %335, i64* %PC.i374
  %336 = inttoptr i64 %331 to i32*
  store i32 %332, i32* %336
  store %struct.Memory* %loadMem_4dcaca, %struct.Memory** %MEMORY
  %loadMem_4dcacd = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 15
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 17
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %R8.i373 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %RBP.i372
  %347 = sub i64 %346, 4
  %348 = load i64, i64* %PC.i371
  %349 = add i64 %348, 4
  store i64 %349, i64* %PC.i371
  %350 = inttoptr i64 %347 to i32*
  %351 = load i32, i32* %350
  %352 = sext i32 %351 to i64
  store i64 %352, i64* %R8.i373, align 8
  store %struct.Memory* %loadMem_4dcacd, %struct.Memory** %MEMORY
  %loadMem_4dcad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 33
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %355 to i64*
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 5
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %RCX.i369 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 17
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %R8.i370 = bitcast %union.anon* %361 to i64*
  %362 = load i64, i64* %R8.i370
  %363 = mul i64 %362, 4
  %364 = add i64 %363, 11903568
  %365 = load i64, i64* %PC.i368
  %366 = add i64 %365, 8
  store i64 %366, i64* %PC.i368
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367
  %369 = zext i32 %368 to i64
  store i64 %369, i64* %RCX.i369, align 8
  store %struct.Memory* %loadMem_4dcad1, %struct.Memory** %MEMORY
  %loadMem_4dcad9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RCX.i366
  %380 = load i64, i64* %RBP.i367
  %381 = sub i64 %380, 8
  %382 = load i64, i64* %PC.i365
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC.i365
  %384 = trunc i64 %379 to i32
  %385 = inttoptr i64 %381 to i32*
  %386 = load i32, i32* %385
  %387 = add i32 %386, %384
  %388 = zext i32 %387 to i64
  store i64 %388, i64* %RCX.i366, align 8
  %389 = icmp ult i32 %387, %384
  %390 = icmp ult i32 %387, %386
  %391 = or i1 %389, %390
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %392, i8* %393, align 1
  %394 = and i32 %387, 255
  %395 = call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %398, i8* %399, align 1
  %400 = xor i32 %386, %384
  %401 = xor i32 %400, %387
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %404, i8* %405, align 1
  %406 = icmp eq i32 %387, 0
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %407, i8* %408, align 1
  %409 = lshr i32 %387, 31
  %410 = trunc i32 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %384, 31
  %413 = lshr i32 %386, 31
  %414 = xor i32 %409, %412
  %415 = xor i32 %409, %413
  %416 = add i32 %414, %415
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %418, i8* %419, align 1
  store %struct.Memory* %loadMem_4dcad9, %struct.Memory** %MEMORY
  %loadMem_4dcadc = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 5
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %ECX.i363 = bitcast %union.anon* %425 to i32*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 15
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RBP.i364
  %430 = sub i64 %429, 28
  %431 = load i32, i32* %ECX.i363
  %432 = zext i32 %431 to i64
  %433 = load i64, i64* %PC.i362
  %434 = add i64 %433, 3
  store i64 %434, i64* %PC.i362
  %435 = inttoptr i64 %430 to i32*
  store i32 %431, i32* %435
  store %struct.Memory* %loadMem_4dcadc, %struct.Memory** %MEMORY
  %loadMem_4dcadf = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 15
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %441 to i64*
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 17
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %R8.i361 = bitcast %union.anon* %444 to i64*
  %445 = load i64, i64* %RBP.i360
  %446 = sub i64 %445, 4
  %447 = load i64, i64* %PC.i359
  %448 = add i64 %447, 4
  store i64 %448, i64* %PC.i359
  %449 = inttoptr i64 %446 to i32*
  %450 = load i32, i32* %449
  %451 = sext i32 %450 to i64
  store i64 %451, i64* %R8.i361, align 8
  store %struct.Memory* %loadMem_4dcadf, %struct.Memory** %MEMORY
  %loadMem_4dcae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 33
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 5
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RCX.i357 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 17
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %R8.i358 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %R8.i358
  %462 = mul i64 %461, 4
  %463 = add i64 %462, 11902448
  %464 = load i64, i64* %PC.i356
  %465 = add i64 %464, 8
  store i64 %465, i64* %PC.i356
  %466 = inttoptr i64 %463 to i32*
  %467 = load i32, i32* %466
  %468 = zext i32 %467 to i64
  store i64 %468, i64* %RCX.i357, align 8
  store %struct.Memory* %loadMem_4dcae3, %struct.Memory** %MEMORY
  %loadMem_4dcaeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 15
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RCX.i354
  %479 = load i64, i64* %RBP.i355
  %480 = sub i64 %479, 8
  %481 = load i64, i64* %PC.i353
  %482 = add i64 %481, 3
  store i64 %482, i64* %PC.i353
  %483 = trunc i64 %478 to i32
  %484 = inttoptr i64 %480 to i32*
  %485 = load i32, i32* %484
  %486 = add i32 %485, %483
  %487 = zext i32 %486 to i64
  store i64 %487, i64* %RCX.i354, align 8
  %488 = icmp ult i32 %486, %483
  %489 = icmp ult i32 %486, %485
  %490 = or i1 %488, %489
  %491 = zext i1 %490 to i8
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %491, i8* %492, align 1
  %493 = and i32 %486, 255
  %494 = call i32 @llvm.ctpop.i32(i32 %493)
  %495 = trunc i32 %494 to i8
  %496 = and i8 %495, 1
  %497 = xor i8 %496, 1
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %497, i8* %498, align 1
  %499 = xor i32 %485, %483
  %500 = xor i32 %499, %486
  %501 = lshr i32 %500, 4
  %502 = trunc i32 %501 to i8
  %503 = and i8 %502, 1
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %503, i8* %504, align 1
  %505 = icmp eq i32 %486, 0
  %506 = zext i1 %505 to i8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %506, i8* %507, align 1
  %508 = lshr i32 %486, 31
  %509 = trunc i32 %508 to i8
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %509, i8* %510, align 1
  %511 = lshr i32 %483, 31
  %512 = lshr i32 %485, 31
  %513 = xor i32 %508, %511
  %514 = xor i32 %508, %512
  %515 = add i32 %513, %514
  %516 = icmp eq i32 %515, 2
  %517 = zext i1 %516 to i8
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %517, i8* %518, align 1
  store %struct.Memory* %loadMem_4dcaeb, %struct.Memory** %MEMORY
  %loadMem_4dcaee = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 5
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %ECX.i351 = bitcast %union.anon* %524 to i32*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 15
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %RBP.i352
  %529 = sub i64 %528, 32
  %530 = load i32, i32* %ECX.i351
  %531 = zext i32 %530 to i64
  %532 = load i64, i64* %PC.i350
  %533 = add i64 %532, 3
  store i64 %533, i64* %PC.i350
  %534 = inttoptr i64 %529 to i32*
  store i32 %530, i32* %534
  store %struct.Memory* %loadMem_4dcaee, %struct.Memory** %MEMORY
  %loadMem_4dcaf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 15
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RBP.i348 = bitcast %union.anon* %540 to i64*
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 17
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %R8.i349 = bitcast %union.anon* %543 to i64*
  %544 = load i64, i64* %RBP.i348
  %545 = sub i64 %544, 4
  %546 = load i64, i64* %PC.i347
  %547 = add i64 %546, 4
  store i64 %547, i64* %PC.i347
  %548 = inttoptr i64 %545 to i32*
  %549 = load i32, i32* %548
  %550 = sext i32 %549 to i64
  store i64 %550, i64* %R8.i349, align 8
  store %struct.Memory* %loadMem_4dcaf1, %struct.Memory** %MEMORY
  %loadMem_4dcaf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 5
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RCX.i345 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 17
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %R8.i346 = bitcast %union.anon* %559 to i64*
  %560 = load i64, i64* %R8.i346
  %561 = mul i64 %560, 4
  %562 = add i64 %561, 11903664
  %563 = load i64, i64* %PC.i344
  %564 = add i64 %563, 8
  store i64 %564, i64* %PC.i344
  %565 = inttoptr i64 %562 to i32*
  %566 = load i32, i32* %565
  %567 = zext i32 %566 to i64
  store i64 %567, i64* %RCX.i345, align 8
  store %struct.Memory* %loadMem_4dcaf5, %struct.Memory** %MEMORY
  %loadMem_4dcafd = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 5
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RCX.i342 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RCX.i342
  %578 = load i64, i64* %RBP.i343
  %579 = sub i64 %578, 8
  %580 = load i64, i64* %PC.i341
  %581 = add i64 %580, 3
  store i64 %581, i64* %PC.i341
  %582 = trunc i64 %577 to i32
  %583 = inttoptr i64 %579 to i32*
  %584 = load i32, i32* %583
  %585 = add i32 %584, %582
  %586 = zext i32 %585 to i64
  store i64 %586, i64* %RCX.i342, align 8
  %587 = icmp ult i32 %585, %582
  %588 = icmp ult i32 %585, %584
  %589 = or i1 %587, %588
  %590 = zext i1 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %590, i8* %591, align 1
  %592 = and i32 %585, 255
  %593 = call i32 @llvm.ctpop.i32(i32 %592)
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = xor i8 %595, 1
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %596, i8* %597, align 1
  %598 = xor i32 %584, %582
  %599 = xor i32 %598, %585
  %600 = lshr i32 %599, 4
  %601 = trunc i32 %600 to i8
  %602 = and i8 %601, 1
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %602, i8* %603, align 1
  %604 = icmp eq i32 %585, 0
  %605 = zext i1 %604 to i8
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %605, i8* %606, align 1
  %607 = lshr i32 %585, 31
  %608 = trunc i32 %607 to i8
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %608, i8* %609, align 1
  %610 = lshr i32 %582, 31
  %611 = lshr i32 %584, 31
  %612 = xor i32 %607, %610
  %613 = xor i32 %607, %611
  %614 = add i32 %612, %613
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %616, i8* %617, align 1
  store %struct.Memory* %loadMem_4dcafd, %struct.Memory** %MEMORY
  %loadMem_4dcb00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 5
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %ECX.i339 = bitcast %union.anon* %623 to i32*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 15
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %626 to i64*
  %627 = load i64, i64* %RBP.i340
  %628 = sub i64 %627, 36
  %629 = load i32, i32* %ECX.i339
  %630 = zext i32 %629 to i64
  %631 = load i64, i64* %PC.i338
  %632 = add i64 %631, 3
  store i64 %632, i64* %PC.i338
  %633 = inttoptr i64 %628 to i32*
  store i32 %629, i32* %633
  store %struct.Memory* %loadMem_4dcb00, %struct.Memory** %MEMORY
  %loadMem_4dcb03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 15
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 17
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %R8.i337 = bitcast %union.anon* %642 to i64*
  %643 = load i64, i64* %RBP.i336
  %644 = sub i64 %643, 4
  %645 = load i64, i64* %PC.i335
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC.i335
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %R8.i337, align 8
  store %struct.Memory* %loadMem_4dcb03, %struct.Memory** %MEMORY
  %loadMem_4dcb07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 5
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 17
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %R8.i334 = bitcast %union.anon* %658 to i64*
  %659 = load i64, i64* %R8.i334
  %660 = mul i64 %659, 4
  %661 = add i64 %660, 11904816
  %662 = load i64, i64* %PC.i332
  %663 = add i64 %662, 8
  store i64 %663, i64* %PC.i332
  %664 = inttoptr i64 %661 to i32*
  %665 = load i32, i32* %664
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RCX.i333, align 8
  store %struct.Memory* %loadMem_4dcb07, %struct.Memory** %MEMORY
  %loadMem_4dcb0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RCX.i330 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RCX.i330
  %677 = load i64, i64* %RBP.i331
  %678 = sub i64 %677, 8
  %679 = load i64, i64* %PC.i329
  %680 = add i64 %679, 3
  store i64 %680, i64* %PC.i329
  %681 = trunc i64 %676 to i32
  %682 = inttoptr i64 %678 to i32*
  %683 = load i32, i32* %682
  %684 = add i32 %683, %681
  %685 = zext i32 %684 to i64
  store i64 %685, i64* %RCX.i330, align 8
  %686 = icmp ult i32 %684, %681
  %687 = icmp ult i32 %684, %683
  %688 = or i1 %686, %687
  %689 = zext i1 %688 to i8
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %689, i8* %690, align 1
  %691 = and i32 %684, 255
  %692 = call i32 @llvm.ctpop.i32(i32 %691)
  %693 = trunc i32 %692 to i8
  %694 = and i8 %693, 1
  %695 = xor i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %695, i8* %696, align 1
  %697 = xor i32 %683, %681
  %698 = xor i32 %697, %684
  %699 = lshr i32 %698, 4
  %700 = trunc i32 %699 to i8
  %701 = and i8 %700, 1
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %701, i8* %702, align 1
  %703 = icmp eq i32 %684, 0
  %704 = zext i1 %703 to i8
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %704, i8* %705, align 1
  %706 = lshr i32 %684, 31
  %707 = trunc i32 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %707, i8* %708, align 1
  %709 = lshr i32 %681, 31
  %710 = lshr i32 %683, 31
  %711 = xor i32 %706, %709
  %712 = xor i32 %706, %710
  %713 = add i32 %711, %712
  %714 = icmp eq i32 %713, 2
  %715 = zext i1 %714 to i8
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %715, i8* %716, align 1
  store %struct.Memory* %loadMem_4dcb0f, %struct.Memory** %MEMORY
  %loadMem_4dcb12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 33
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %719 to i64*
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 5
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %ECX.i327 = bitcast %union.anon* %722 to i32*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 15
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %725 to i64*
  %726 = load i64, i64* %RBP.i328
  %727 = sub i64 %726, 40
  %728 = load i32, i32* %ECX.i327
  %729 = zext i32 %728 to i64
  %730 = load i64, i64* %PC.i326
  %731 = add i64 %730, 3
  store i64 %731, i64* %PC.i326
  %732 = inttoptr i64 %727 to i32*
  store i32 %728, i32* %732
  store %struct.Memory* %loadMem_4dcb12, %struct.Memory** %MEMORY
  %loadMem_4dcb15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 15
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 17
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %R8.i325 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i324
  %743 = sub i64 %742, 4
  %744 = load i64, i64* %PC.i323
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i323
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = sext i32 %747 to i64
  store i64 %748, i64* %R8.i325, align 8
  store %struct.Memory* %loadMem_4dcb15, %struct.Memory** %MEMORY
  %loadMem_4dcb19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 33
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %751 to i64*
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 5
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 17
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %R8.i322 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %R8.i322
  %759 = mul i64 %758, 4
  %760 = add i64 %759, 11904752
  %761 = load i64, i64* %PC.i320
  %762 = add i64 %761, 8
  store i64 %762, i64* %PC.i320
  %763 = inttoptr i64 %760 to i32*
  %764 = load i32, i32* %763
  %765 = zext i32 %764 to i64
  store i64 %765, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_4dcb19, %struct.Memory** %MEMORY
  %loadMem_4dcb21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 5
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 15
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %774 to i64*
  %775 = load i64, i64* %RCX.i318
  %776 = load i64, i64* %RBP.i319
  %777 = sub i64 %776, 8
  %778 = load i64, i64* %PC.i317
  %779 = add i64 %778, 3
  store i64 %779, i64* %PC.i317
  %780 = trunc i64 %775 to i32
  %781 = inttoptr i64 %777 to i32*
  %782 = load i32, i32* %781
  %783 = add i32 %782, %780
  %784 = zext i32 %783 to i64
  store i64 %784, i64* %RCX.i318, align 8
  %785 = icmp ult i32 %783, %780
  %786 = icmp ult i32 %783, %782
  %787 = or i1 %785, %786
  %788 = zext i1 %787 to i8
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %788, i8* %789, align 1
  %790 = and i32 %783, 255
  %791 = call i32 @llvm.ctpop.i32(i32 %790)
  %792 = trunc i32 %791 to i8
  %793 = and i8 %792, 1
  %794 = xor i8 %793, 1
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %794, i8* %795, align 1
  %796 = xor i32 %782, %780
  %797 = xor i32 %796, %783
  %798 = lshr i32 %797, 4
  %799 = trunc i32 %798 to i8
  %800 = and i8 %799, 1
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %800, i8* %801, align 1
  %802 = icmp eq i32 %783, 0
  %803 = zext i1 %802 to i8
  %804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %803, i8* %804, align 1
  %805 = lshr i32 %783, 31
  %806 = trunc i32 %805 to i8
  %807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %806, i8* %807, align 1
  %808 = lshr i32 %780, 31
  %809 = lshr i32 %782, 31
  %810 = xor i32 %805, %808
  %811 = xor i32 %805, %809
  %812 = add i32 %810, %811
  %813 = icmp eq i32 %812, 2
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %814, i8* %815, align 1
  store %struct.Memory* %loadMem_4dcb21, %struct.Memory** %MEMORY
  %loadMem_4dcb24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 33
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 5
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %ECX.i315 = bitcast %union.anon* %821 to i32*
  %822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %823 = getelementptr inbounds %struct.GPR, %struct.GPR* %822, i32 0, i32 15
  %824 = getelementptr inbounds %struct.Reg, %struct.Reg* %823, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %824 to i64*
  %825 = load i64, i64* %RBP.i316
  %826 = sub i64 %825, 44
  %827 = load i32, i32* %ECX.i315
  %828 = zext i32 %827 to i64
  %829 = load i64, i64* %PC.i314
  %830 = add i64 %829, 3
  store i64 %830, i64* %PC.i314
  %831 = inttoptr i64 %826 to i32*
  store i32 %827, i32* %831
  store %struct.Memory* %loadMem_4dcb24, %struct.Memory** %MEMORY
  %loadMem_4dcb27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 33
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %834 to i64*
  %835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %836 = getelementptr inbounds %struct.GPR, %struct.GPR* %835, i32 0, i32 15
  %837 = getelementptr inbounds %struct.Reg, %struct.Reg* %836, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %837 to i64*
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %839 = getelementptr inbounds %struct.GPR, %struct.GPR* %838, i32 0, i32 17
  %840 = getelementptr inbounds %struct.Reg, %struct.Reg* %839, i32 0, i32 0
  %R8.i313 = bitcast %union.anon* %840 to i64*
  %841 = load i64, i64* %RBP.i312
  %842 = sub i64 %841, 4
  %843 = load i64, i64* %PC.i311
  %844 = add i64 %843, 4
  store i64 %844, i64* %PC.i311
  %845 = inttoptr i64 %842 to i32*
  %846 = load i32, i32* %845
  %847 = sext i32 %846 to i64
  store i64 %847, i64* %R8.i313, align 8
  store %struct.Memory* %loadMem_4dcb27, %struct.Memory** %MEMORY
  %loadMem_4dcb2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 33
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %850 to i64*
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 5
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 17
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %R8.i = bitcast %union.anon* %856 to i64*
  %857 = load i64, i64* %R8.i
  %858 = mul i64 %857, 4
  %859 = add i64 %858, 11904784
  %860 = load i64, i64* %PC.i309
  %861 = add i64 %860, 8
  store i64 %861, i64* %PC.i309
  %862 = inttoptr i64 %859 to i32*
  %863 = load i32, i32* %862
  %864 = zext i32 %863 to i64
  store i64 %864, i64* %RCX.i310, align 8
  store %struct.Memory* %loadMem_4dcb2b, %struct.Memory** %MEMORY
  %loadMem_4dcb33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 33
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %867 to i64*
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %869 = getelementptr inbounds %struct.GPR, %struct.GPR* %868, i32 0, i32 5
  %870 = getelementptr inbounds %struct.Reg, %struct.Reg* %869, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %870 to i64*
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 15
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %873 to i64*
  %874 = load i64, i64* %RCX.i307
  %875 = load i64, i64* %RBP.i308
  %876 = sub i64 %875, 8
  %877 = load i64, i64* %PC.i306
  %878 = add i64 %877, 3
  store i64 %878, i64* %PC.i306
  %879 = trunc i64 %874 to i32
  %880 = inttoptr i64 %876 to i32*
  %881 = load i32, i32* %880
  %882 = add i32 %881, %879
  %883 = zext i32 %882 to i64
  store i64 %883, i64* %RCX.i307, align 8
  %884 = icmp ult i32 %882, %879
  %885 = icmp ult i32 %882, %881
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %887, i8* %888, align 1
  %889 = and i32 %882, 255
  %890 = call i32 @llvm.ctpop.i32(i32 %889)
  %891 = trunc i32 %890 to i8
  %892 = and i8 %891, 1
  %893 = xor i8 %892, 1
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %893, i8* %894, align 1
  %895 = xor i32 %881, %879
  %896 = xor i32 %895, %882
  %897 = lshr i32 %896, 4
  %898 = trunc i32 %897 to i8
  %899 = and i8 %898, 1
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %899, i8* %900, align 1
  %901 = icmp eq i32 %882, 0
  %902 = zext i1 %901 to i8
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %902, i8* %903, align 1
  %904 = lshr i32 %882, 31
  %905 = trunc i32 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %905, i8* %906, align 1
  %907 = lshr i32 %879, 31
  %908 = lshr i32 %881, 31
  %909 = xor i32 %904, %907
  %910 = xor i32 %904, %908
  %911 = add i32 %909, %910
  %912 = icmp eq i32 %911, 2
  %913 = zext i1 %912 to i8
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %913, i8* %914, align 1
  store %struct.Memory* %loadMem_4dcb33, %struct.Memory** %MEMORY
  %loadMem_4dcb36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 5
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %ECX.i304 = bitcast %union.anon* %920 to i32*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 15
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %923 to i64*
  %924 = load i64, i64* %RBP.i305
  %925 = sub i64 %924, 48
  %926 = load i32, i32* %ECX.i304
  %927 = zext i32 %926 to i64
  %928 = load i64, i64* %PC.i303
  %929 = add i64 %928, 3
  store i64 %929, i64* %PC.i303
  %930 = inttoptr i64 %925 to i32*
  store i32 %926, i32* %930
  store %struct.Memory* %loadMem_4dcb36, %struct.Memory** %MEMORY
  %loadMem_4dcb39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 11
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RDI.i301 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i302
  %941 = sub i64 %940, 12
  %942 = load i64, i64* %PC.i300
  %943 = add i64 %942, 3
  store i64 %943, i64* %PC.i300
  %944 = inttoptr i64 %941 to i32*
  %945 = load i32, i32* %944
  %946 = zext i32 %945 to i64
  store i64 %946, i64* %RDI.i301, align 8
  store %struct.Memory* %loadMem_4dcb39, %struct.Memory** %MEMORY
  %loadMem_4dcb3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 5
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RCX.i298 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 15
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %955 to i64*
  %956 = load i64, i64* %RBP.i299
  %957 = sub i64 %956, 24
  %958 = load i64, i64* %PC.i297
  %959 = add i64 %958, 3
  store i64 %959, i64* %PC.i297
  %960 = inttoptr i64 %957 to i32*
  %961 = load i32, i32* %960
  %962 = zext i32 %961 to i64
  store i64 %962, i64* %RCX.i298, align 8
  store %struct.Memory* %loadMem_4dcb3c, %struct.Memory** %MEMORY
  %loadMem_4dcb3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 1
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %EAX.i295 = bitcast %union.anon* %968 to i32*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 9
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RSI.i296 = bitcast %union.anon* %971 to i64*
  %972 = load i32, i32* %EAX.i295
  %973 = zext i32 %972 to i64
  %974 = load i64, i64* %PC.i294
  %975 = add i64 %974, 2
  store i64 %975, i64* %PC.i294
  %976 = and i64 %973, 4294967295
  store i64 %976, i64* %RSI.i296, align 8
  store %struct.Memory* %loadMem_4dcb3f, %struct.Memory** %MEMORY
  %loadMem_4dcb41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 33
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %979 to i64*
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 1
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %982 to i32*
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 7
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %985 to i64*
  %986 = load i32, i32* %EAX.i292
  %987 = zext i32 %986 to i64
  %988 = load i64, i64* %PC.i291
  %989 = add i64 %988, 2
  store i64 %989, i64* %PC.i291
  %990 = and i64 %987, 4294967295
  store i64 %990, i64* %RDX.i293, align 8
  store %struct.Memory* %loadMem_4dcb41, %struct.Memory** %MEMORY
  %loadMem_4dcb43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %997 = bitcast %union.anon* %996 to %struct.anon.2*
  %AL.i290 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %997, i32 0, i32 0
  %998 = load i64, i64* %PC.i289
  %999 = add i64 %998, 2
  store i64 %999, i64* %PC.i289
  store i8 0, i8* %AL.i290, align 1
  store %struct.Memory* %loadMem_4dcb43, %struct.Memory** %MEMORY
  %loadMem1_4dcb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 33
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %PC.i288
  %1004 = add i64 %1003, -414773
  %1005 = load i64, i64* %PC.i288
  %1006 = add i64 %1005, 5
  %1007 = load i64, i64* %PC.i288
  %1008 = add i64 %1007, 5
  store i64 %1008, i64* %PC.i288
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1010 = load i64, i64* %1009, align 8
  %1011 = add i64 %1010, -8
  %1012 = inttoptr i64 %1011 to i64*
  store i64 %1006, i64* %1012
  store i64 %1011, i64* %1009, align 8
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1004, i64* %1013, align 8
  store %struct.Memory* %loadMem1_4dcb45, %struct.Memory** %MEMORY
  %loadMem2_4dcb45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcb45 = load i64, i64* %3
  %call2_4dcb45 = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4dcb45, %struct.Memory* %loadMem2_4dcb45)
  store %struct.Memory* %call2_4dcb45, %struct.Memory** %MEMORY
  %loadMem_4dcb4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 33
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1016 to i64*
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1018 = getelementptr inbounds %struct.GPR, %struct.GPR* %1017, i32 0, i32 5
  %1019 = getelementptr inbounds %struct.Reg, %struct.Reg* %1018, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %1019 to i64*
  %1020 = load i64, i64* %PC.i286
  %1021 = add i64 %1020, 5
  store i64 %1021, i64* %PC.i286
  store i64 1, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_4dcb4a, %struct.Memory** %MEMORY
  %loadMem_4dcb4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 33
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1024 to i64*
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 11
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %RDI.i284 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 15
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1030 to i64*
  %1031 = load i64, i64* %RBP.i285
  %1032 = sub i64 %1031, 12
  %1033 = load i64, i64* %PC.i283
  %1034 = add i64 %1033, 3
  store i64 %1034, i64* %PC.i283
  %1035 = inttoptr i64 %1032 to i32*
  %1036 = load i32, i32* %1035
  %1037 = zext i32 %1036 to i64
  store i64 %1037, i64* %RDI.i284, align 8
  store %struct.Memory* %loadMem_4dcb4f, %struct.Memory** %MEMORY
  %loadMem_4dcb52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1039 = getelementptr inbounds %struct.GPR, %struct.GPR* %1038, i32 0, i32 33
  %1040 = getelementptr inbounds %struct.Reg, %struct.Reg* %1039, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1040 to i64*
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 7
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i282
  %1048 = sub i64 %1047, 48
  %1049 = load i64, i64* %PC.i280
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %PC.i280
  %1051 = inttoptr i64 %1048 to i32*
  %1052 = load i32, i32* %1051
  %1053 = zext i32 %1052 to i64
  store i64 %1053, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_4dcb52, %struct.Memory** %MEMORY
  %loadMem_4dcb55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 5
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %ECX.i278 = bitcast %union.anon* %1059 to i32*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 9
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RSI.i279 = bitcast %union.anon* %1062 to i64*
  %1063 = load i32, i32* %ECX.i278
  %1064 = zext i32 %1063 to i64
  %1065 = load i64, i64* %PC.i277
  %1066 = add i64 %1065, 2
  store i64 %1066, i64* %PC.i277
  %1067 = and i64 %1064, 4294967295
  store i64 %1067, i64* %RSI.i279, align 8
  store %struct.Memory* %loadMem_4dcb55, %struct.Memory** %MEMORY
  %loadMem_4dcb57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 33
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 7
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %EDX.i275 = bitcast %union.anon* %1073 to i32*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 15
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %RBP.i276
  %1078 = sub i64 %1077, 52
  %1079 = load i32, i32* %EDX.i275
  %1080 = zext i32 %1079 to i64
  %1081 = load i64, i64* %PC.i274
  %1082 = add i64 %1081, 3
  store i64 %1082, i64* %PC.i274
  %1083 = inttoptr i64 %1078 to i32*
  store i32 %1079, i32* %1083
  store %struct.Memory* %loadMem_4dcb57, %struct.Memory** %MEMORY
  %loadMem_4dcb5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 5
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %ECX.i272 = bitcast %union.anon* %1089 to i32*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 7
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RDX.i273 = bitcast %union.anon* %1092 to i64*
  %1093 = load i32, i32* %ECX.i272
  %1094 = zext i32 %1093 to i64
  %1095 = load i64, i64* %PC.i271
  %1096 = add i64 %1095, 2
  store i64 %1096, i64* %PC.i271
  %1097 = and i64 %1094, 4294967295
  store i64 %1097, i64* %RDX.i273, align 8
  store %struct.Memory* %loadMem_4dcb5a, %struct.Memory** %MEMORY
  %loadMem_4dcb5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 5
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 15
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %1106 to i64*
  %1107 = load i64, i64* %RBP.i270
  %1108 = sub i64 %1107, 52
  %1109 = load i64, i64* %PC.i268
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC.i268
  %1111 = inttoptr i64 %1108 to i32*
  %1112 = load i32, i32* %1111
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RCX.i269, align 8
  store %struct.Memory* %loadMem_4dcb5c, %struct.Memory** %MEMORY
  %loadMem_4dcb5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1115 = getelementptr inbounds %struct.GPR, %struct.GPR* %1114, i32 0, i32 33
  %1116 = getelementptr inbounds %struct.Reg, %struct.Reg* %1115, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1116 to i64*
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 1
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %EAX.i266 = bitcast %union.anon* %1119 to i32*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 15
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %1122 to i64*
  %1123 = load i64, i64* %RBP.i267
  %1124 = sub i64 %1123, 56
  %1125 = load i32, i32* %EAX.i266
  %1126 = zext i32 %1125 to i64
  %1127 = load i64, i64* %PC.i265
  %1128 = add i64 %1127, 3
  store i64 %1128, i64* %PC.i265
  %1129 = inttoptr i64 %1124 to i32*
  store i32 %1125, i32* %1129
  store %struct.Memory* %loadMem_4dcb5f, %struct.Memory** %MEMORY
  %loadMem_4dcb62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 33
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 1
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %1136 = bitcast %union.anon* %1135 to %struct.anon.2*
  %AL.i264 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1136, i32 0, i32 0
  %1137 = load i64, i64* %PC.i263
  %1138 = add i64 %1137, 2
  store i64 %1138, i64* %PC.i263
  store i8 0, i8* %AL.i264, align 1
  store %struct.Memory* %loadMem_4dcb62, %struct.Memory** %MEMORY
  %loadMem1_4dcb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %PC.i262
  %1143 = add i64 %1142, -414804
  %1144 = load i64, i64* %PC.i262
  %1145 = add i64 %1144, 5
  %1146 = load i64, i64* %PC.i262
  %1147 = add i64 %1146, 5
  store i64 %1147, i64* %PC.i262
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1149 = load i64, i64* %1148, align 8
  %1150 = add i64 %1149, -8
  %1151 = inttoptr i64 %1150 to i64*
  store i64 %1145, i64* %1151
  store i64 %1150, i64* %1148, align 8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1143, i64* %1152, align 8
  store %struct.Memory* %loadMem1_4dcb64, %struct.Memory** %MEMORY
  %loadMem2_4dcb64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcb64 = load i64, i64* %3
  %call2_4dcb64 = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4dcb64, %struct.Memory* %loadMem2_4dcb64)
  store %struct.Memory* %call2_4dcb64, %struct.Memory** %MEMORY
  %loadMem_4dcb69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 33
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %1155 to i64*
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 5
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i260
  %1160 = add i64 %1159, 5
  store i64 %1160, i64* %PC.i260
  store i64 1, i64* %RCX.i261, align 8
  store %struct.Memory* %loadMem_4dcb69, %struct.Memory** %MEMORY
  %loadMem_4dcb6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 33
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %1163 to i64*
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 7
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %RDX.i258 = bitcast %union.anon* %1166 to i64*
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1168 = getelementptr inbounds %struct.GPR, %struct.GPR* %1167, i32 0, i32 15
  %1169 = getelementptr inbounds %struct.Reg, %struct.Reg* %1168, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %1169 to i64*
  %1170 = load i64, i64* %RBP.i259
  %1171 = sub i64 %1170, 56
  %1172 = load i64, i64* %PC.i257
  %1173 = add i64 %1172, 3
  store i64 %1173, i64* %PC.i257
  %1174 = inttoptr i64 %1171 to i32*
  %1175 = load i32, i32* %1174
  %1176 = zext i32 %1175 to i64
  store i64 %1176, i64* %RDX.i258, align 8
  store %struct.Memory* %loadMem_4dcb6e, %struct.Memory** %MEMORY
  %loadMem_4dcb71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 1
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %EAX.i255 = bitcast %union.anon* %1182 to i32*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 7
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RDX.i256
  %1187 = load i32, i32* %EAX.i255
  %1188 = zext i32 %1187 to i64
  %1189 = load i64, i64* %PC.i254
  %1190 = add i64 %1189, 2
  store i64 %1190, i64* %PC.i254
  %1191 = trunc i64 %1186 to i32
  %1192 = add i32 %1187, %1191
  %1193 = zext i32 %1192 to i64
  store i64 %1193, i64* %RDX.i256, align 8
  %1194 = icmp ult i32 %1192, %1191
  %1195 = icmp ult i32 %1192, %1187
  %1196 = or i1 %1194, %1195
  %1197 = zext i1 %1196 to i8
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1197, i8* %1198, align 1
  %1199 = and i32 %1192, 255
  %1200 = call i32 @llvm.ctpop.i32(i32 %1199)
  %1201 = trunc i32 %1200 to i8
  %1202 = and i8 %1201, 1
  %1203 = xor i8 %1202, 1
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1203, i8* %1204, align 1
  %1205 = xor i64 %1188, %1186
  %1206 = trunc i64 %1205 to i32
  %1207 = xor i32 %1206, %1192
  %1208 = lshr i32 %1207, 4
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1210, i8* %1211, align 1
  %1212 = icmp eq i32 %1192, 0
  %1213 = zext i1 %1212 to i8
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1213, i8* %1214, align 1
  %1215 = lshr i32 %1192, 31
  %1216 = trunc i32 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1216, i8* %1217, align 1
  %1218 = lshr i32 %1191, 31
  %1219 = lshr i32 %1187, 31
  %1220 = xor i32 %1215, %1218
  %1221 = xor i32 %1215, %1219
  %1222 = add i32 %1220, %1221
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1224, i8* %1225, align 1
  store %struct.Memory* %loadMem_4dcb71, %struct.Memory** %MEMORY
  %loadMem_4dcb73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1230 = getelementptr inbounds %struct.GPR, %struct.GPR* %1229, i32 0, i32 11
  %1231 = getelementptr inbounds %struct.Reg, %struct.Reg* %1230, i32 0, i32 0
  %RDI.i252 = bitcast %union.anon* %1231 to i64*
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 15
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %1234 to i64*
  %1235 = load i64, i64* %RBP.i253
  %1236 = sub i64 %1235, 12
  %1237 = load i64, i64* %PC.i251
  %1238 = add i64 %1237, 3
  store i64 %1238, i64* %PC.i251
  %1239 = inttoptr i64 %1236 to i32*
  %1240 = load i32, i32* %1239
  %1241 = zext i32 %1240 to i64
  store i64 %1241, i64* %RDI.i252, align 8
  store %struct.Memory* %loadMem_4dcb73, %struct.Memory** %MEMORY
  %loadMem_4dcb76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 1
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 15
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %RBP.i250
  %1252 = sub i64 %1251, 28
  %1253 = load i64, i64* %PC.i248
  %1254 = add i64 %1253, 3
  store i64 %1254, i64* %PC.i248
  %1255 = inttoptr i64 %1252 to i32*
  %1256 = load i32, i32* %1255
  %1257 = zext i32 %1256 to i64
  store i64 %1257, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_4dcb76, %struct.Memory** %MEMORY
  %loadMem_4dcb79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 33
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 5
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %ECX.i246 = bitcast %union.anon* %1263 to i32*
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 9
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %RSI.i247 = bitcast %union.anon* %1266 to i64*
  %1267 = load i32, i32* %ECX.i246
  %1268 = zext i32 %1267 to i64
  %1269 = load i64, i64* %PC.i245
  %1270 = add i64 %1269, 2
  store i64 %1270, i64* %PC.i245
  %1271 = and i64 %1268, 4294967295
  store i64 %1271, i64* %RSI.i247, align 8
  store %struct.Memory* %loadMem_4dcb79, %struct.Memory** %MEMORY
  %loadMem_4dcb7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1273 = getelementptr inbounds %struct.GPR, %struct.GPR* %1272, i32 0, i32 33
  %1274 = getelementptr inbounds %struct.Reg, %struct.Reg* %1273, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %1274 to i64*
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 7
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %EDX.i243 = bitcast %union.anon* %1277 to i32*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 15
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %1280 to i64*
  %1281 = load i64, i64* %RBP.i244
  %1282 = sub i64 %1281, 60
  %1283 = load i32, i32* %EDX.i243
  %1284 = zext i32 %1283 to i64
  %1285 = load i64, i64* %PC.i242
  %1286 = add i64 %1285, 3
  store i64 %1286, i64* %PC.i242
  %1287 = inttoptr i64 %1282 to i32*
  store i32 %1283, i32* %1287
  store %struct.Memory* %loadMem_4dcb7b, %struct.Memory** %MEMORY
  %loadMem_4dcb7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 33
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %1290 to i64*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 5
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %ECX.i240 = bitcast %union.anon* %1293 to i32*
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 7
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %RDX.i241 = bitcast %union.anon* %1296 to i64*
  %1297 = load i32, i32* %ECX.i240
  %1298 = zext i32 %1297 to i64
  %1299 = load i64, i64* %PC.i239
  %1300 = add i64 %1299, 2
  store i64 %1300, i64* %PC.i239
  %1301 = and i64 %1298, 4294967295
  store i64 %1301, i64* %RDX.i241, align 8
  store %struct.Memory* %loadMem_4dcb7e, %struct.Memory** %MEMORY
  %loadMem_4dcb80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1303 = getelementptr inbounds %struct.GPR, %struct.GPR* %1302, i32 0, i32 33
  %1304 = getelementptr inbounds %struct.Reg, %struct.Reg* %1303, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1304 to i64*
  %1305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1306 = getelementptr inbounds %struct.GPR, %struct.GPR* %1305, i32 0, i32 1
  %1307 = getelementptr inbounds %struct.Reg, %struct.Reg* %1306, i32 0, i32 0
  %EAX.i237 = bitcast %union.anon* %1307 to i32*
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 5
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %1310 to i64*
  %1311 = load i32, i32* %EAX.i237
  %1312 = zext i32 %1311 to i64
  %1313 = load i64, i64* %PC.i236
  %1314 = add i64 %1313, 2
  store i64 %1314, i64* %PC.i236
  %1315 = and i64 %1312, 4294967295
  store i64 %1315, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_4dcb80, %struct.Memory** %MEMORY
  %loadMem_4dcb82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 33
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1318 to i64*
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 1
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %1322 = bitcast %union.anon* %1321 to %struct.anon.2*
  %AL.i235 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1322, i32 0, i32 0
  %1323 = load i64, i64* %PC.i234
  %1324 = add i64 %1323, 2
  store i64 %1324, i64* %PC.i234
  store i8 0, i8* %AL.i235, align 1
  store %struct.Memory* %loadMem_4dcb82, %struct.Memory** %MEMORY
  %loadMem1_4dcb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 33
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1327 to i64*
  %1328 = load i64, i64* %PC.i233
  %1329 = add i64 %1328, -414836
  %1330 = load i64, i64* %PC.i233
  %1331 = add i64 %1330, 5
  %1332 = load i64, i64* %PC.i233
  %1333 = add i64 %1332, 5
  store i64 %1333, i64* %PC.i233
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1335 = load i64, i64* %1334, align 8
  %1336 = add i64 %1335, -8
  %1337 = inttoptr i64 %1336 to i64*
  store i64 %1331, i64* %1337
  store i64 %1336, i64* %1334, align 8
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1329, i64* %1338, align 8
  store %struct.Memory* %loadMem1_4dcb84, %struct.Memory** %MEMORY
  %loadMem2_4dcb84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcb84 = load i64, i64* %3
  %call2_4dcb84 = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4dcb84, %struct.Memory* %loadMem2_4dcb84)
  store %struct.Memory* %call2_4dcb84, %struct.Memory** %MEMORY
  %loadMem_4dcb89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 33
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1341 to i64*
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 5
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %ECX.i231 = bitcast %union.anon* %1344 to i32*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 5
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RCX.i232 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %RCX.i232
  %1349 = load i32, i32* %ECX.i231
  %1350 = zext i32 %1349 to i64
  %1351 = load i64, i64* %PC.i230
  %1352 = add i64 %1351, 2
  store i64 %1352, i64* %PC.i230
  %1353 = xor i64 %1350, %1348
  %1354 = trunc i64 %1353 to i32
  %1355 = and i64 %1353, 4294967295
  store i64 %1355, i64* %RCX.i232, align 8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1356, align 1
  %1357 = and i32 %1354, 255
  %1358 = call i32 @llvm.ctpop.i32(i32 %1357)
  %1359 = trunc i32 %1358 to i8
  %1360 = and i8 %1359, 1
  %1361 = xor i8 %1360, 1
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1361, i8* %1362, align 1
  %1363 = icmp eq i32 %1354, 0
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1364, i8* %1365, align 1
  %1366 = lshr i32 %1354, 31
  %1367 = trunc i32 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1367, i8* %1368, align 1
  %1369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1369, align 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1370, align 1
  store %struct.Memory* %loadMem_4dcb89, %struct.Memory** %MEMORY
  %loadMem_4dcb8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 5
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %1377 = bitcast %union.anon* %1376 to %struct.anon.2*
  %CL.i228 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1377, i32 0, i32 0
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 19
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %1381 = bitcast %union.anon* %1380 to %struct.anon.2*
  %R9B.i229 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1381, i32 0, i32 0
  %1382 = load i8, i8* %CL.i228
  %1383 = zext i8 %1382 to i64
  %1384 = load i64, i64* %PC.i227
  %1385 = add i64 %1384, 3
  store i64 %1385, i64* %PC.i227
  store i8 %1382, i8* %R9B.i229, align 1
  store %struct.Memory* %loadMem_4dcb8b, %struct.Memory** %MEMORY
  %loadMem_4dcb8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 5
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %RBP.i226
  %1396 = sub i64 %1395, 60
  %1397 = load i64, i64* %PC.i224
  %1398 = add i64 %1397, 3
  store i64 %1398, i64* %PC.i224
  %1399 = inttoptr i64 %1396 to i32*
  %1400 = load i32, i32* %1399
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_4dcb8e, %struct.Memory** %MEMORY
  %loadMem_4dcb91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 1
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %1407 to i32*
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 5
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %1410 to i64*
  %1411 = load i64, i64* %RCX.i223
  %1412 = load i32, i32* %EAX.i222
  %1413 = zext i32 %1412 to i64
  %1414 = load i64, i64* %PC.i221
  %1415 = add i64 %1414, 2
  store i64 %1415, i64* %PC.i221
  %1416 = trunc i64 %1411 to i32
  %1417 = add i32 %1412, %1416
  %1418 = zext i32 %1417 to i64
  store i64 %1418, i64* %RCX.i223, align 8
  %1419 = icmp ult i32 %1417, %1416
  %1420 = icmp ult i32 %1417, %1412
  %1421 = or i1 %1419, %1420
  %1422 = zext i1 %1421 to i8
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1422, i8* %1423, align 1
  %1424 = and i32 %1417, 255
  %1425 = call i32 @llvm.ctpop.i32(i32 %1424)
  %1426 = trunc i32 %1425 to i8
  %1427 = and i8 %1426, 1
  %1428 = xor i8 %1427, 1
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1428, i8* %1429, align 1
  %1430 = xor i64 %1413, %1411
  %1431 = trunc i64 %1430 to i32
  %1432 = xor i32 %1431, %1417
  %1433 = lshr i32 %1432, 4
  %1434 = trunc i32 %1433 to i8
  %1435 = and i8 %1434, 1
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1435, i8* %1436, align 1
  %1437 = icmp eq i32 %1417, 0
  %1438 = zext i1 %1437 to i8
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1438, i8* %1439, align 1
  %1440 = lshr i32 %1417, 31
  %1441 = trunc i32 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1441, i8* %1442, align 1
  %1443 = lshr i32 %1416, 31
  %1444 = lshr i32 %1412, 31
  %1445 = xor i32 %1440, %1443
  %1446 = xor i32 %1440, %1444
  %1447 = add i32 %1445, %1446
  %1448 = icmp eq i32 %1447, 2
  %1449 = zext i1 %1448 to i8
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1449, i8* %1450, align 1
  store %struct.Memory* %loadMem_4dcb91, %struct.Memory** %MEMORY
  %loadMem_4dcb93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 33
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 5
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %ECX.i220 = bitcast %union.anon* %1456 to i32*
  %1457 = load i32, i32* %ECX.i220
  %1458 = zext i32 %1457 to i64
  %1459 = load i64, i64* %PC.i219
  %1460 = add i64 %1459, 3
  store i64 %1460, i64* %PC.i219
  %1461 = sub i32 %1457, 1
  %1462 = icmp ult i32 %1457, 1
  %1463 = zext i1 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1463, i8* %1464, align 1
  %1465 = and i32 %1461, 255
  %1466 = call i32 @llvm.ctpop.i32(i32 %1465)
  %1467 = trunc i32 %1466 to i8
  %1468 = and i8 %1467, 1
  %1469 = xor i8 %1468, 1
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1469, i8* %1470, align 1
  %1471 = xor i64 1, %1458
  %1472 = trunc i64 %1471 to i32
  %1473 = xor i32 %1472, %1461
  %1474 = lshr i32 %1473, 4
  %1475 = trunc i32 %1474 to i8
  %1476 = and i8 %1475, 1
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1476, i8* %1477, align 1
  %1478 = icmp eq i32 %1461, 0
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1479, i8* %1480, align 1
  %1481 = lshr i32 %1461, 31
  %1482 = trunc i32 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i32 %1457, 31
  %1485 = xor i32 %1481, %1484
  %1486 = add i32 %1485, %1484
  %1487 = icmp eq i32 %1486, 2
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1488, i8* %1489, align 1
  store %struct.Memory* %loadMem_4dcb93, %struct.Memory** %MEMORY
  %loadMem_4dcb96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1491 = getelementptr inbounds %struct.GPR, %struct.GPR* %1490, i32 0, i32 33
  %1492 = getelementptr inbounds %struct.Reg, %struct.Reg* %1491, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %1492 to i64*
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 19
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %1496 = bitcast %union.anon* %1495 to %struct.anon.2*
  %R9B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1496, i32 0, i32 0
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i218
  %1501 = sub i64 %1500, 61
  %1502 = load i8, i8* %R9B.i
  %1503 = zext i8 %1502 to i64
  %1504 = load i64, i64* %PC.i217
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %PC.i217
  %1506 = inttoptr i64 %1501 to i8*
  store i8 %1502, i8* %1506
  store %struct.Memory* %loadMem_4dcb96, %struct.Memory** %MEMORY
  %loadMem_4dcb9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1509 to i64*
  %1510 = load i64, i64* %PC.i216
  %1511 = add i64 %1510, 374
  %1512 = load i64, i64* %PC.i216
  %1513 = add i64 %1512, 6
  %1514 = load i64, i64* %PC.i216
  %1515 = add i64 %1514, 6
  store i64 %1515, i64* %PC.i216
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1517 = load i8, i8* %1516, align 1
  %1518 = icmp eq i8 %1517, 0
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1520 = load i8, i8* %1519, align 1
  %1521 = icmp ne i8 %1520, 0
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1523 = load i8, i8* %1522, align 1
  %1524 = icmp ne i8 %1523, 0
  %1525 = xor i1 %1521, %1524
  %1526 = xor i1 %1525, true
  %1527 = and i1 %1518, %1526
  %1528 = zext i1 %1527 to i8
  store i8 %1528, i8* %BRANCH_TAKEN, align 1
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1530 = select i1 %1527, i64 %1511, i64 %1513
  store i64 %1530, i64* %1529, align 8
  store %struct.Memory* %loadMem_4dcb9a, %struct.Memory** %MEMORY
  %loadBr_4dcb9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcb9a = icmp eq i8 %loadBr_4dcb9a, 1
  br i1 %cmpBr_4dcb9a, label %block_.L_4dcd10, label %block_4dcba0

block_4dcba0:                                     ; preds = %entry
  %loadMem_4dcba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 33
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %1533 to i64*
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 1
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %PC.i214
  %1538 = add i64 %1537, 5
  store i64 %1538, i64* %PC.i214
  store i64 1, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_4dcba0, %struct.Memory** %MEMORY
  %loadMem_4dcba5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 11
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RDI.i212 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i213
  %1549 = sub i64 %1548, 12
  %1550 = load i64, i64* %PC.i211
  %1551 = add i64 %1550, 3
  store i64 %1551, i64* %PC.i211
  %1552 = inttoptr i64 %1549 to i32*
  %1553 = load i32, i32* %1552
  %1554 = zext i32 %1553 to i64
  store i64 %1554, i64* %RDI.i212, align 8
  store %struct.Memory* %loadMem_4dcba5, %struct.Memory** %MEMORY
  %loadMem_4dcba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 33
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %1557 to i64*
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 5
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %RCX.i209 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 15
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %RBP.i210
  %1565 = sub i64 %1564, 28
  %1566 = load i64, i64* %PC.i208
  %1567 = add i64 %1566, 3
  store i64 %1567, i64* %PC.i208
  %1568 = inttoptr i64 %1565 to i32*
  %1569 = load i32, i32* %1568
  %1570 = zext i32 %1569 to i64
  store i64 %1570, i64* %RCX.i209, align 8
  store %struct.Memory* %loadMem_4dcba8, %struct.Memory** %MEMORY
  %loadMem_4dcbab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1572 = getelementptr inbounds %struct.GPR, %struct.GPR* %1571, i32 0, i32 33
  %1573 = getelementptr inbounds %struct.Reg, %struct.Reg* %1572, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %1573 to i64*
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1575 = getelementptr inbounds %struct.GPR, %struct.GPR* %1574, i32 0, i32 1
  %1576 = getelementptr inbounds %struct.Reg, %struct.Reg* %1575, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %1576 to i32*
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1578 = getelementptr inbounds %struct.GPR, %struct.GPR* %1577, i32 0, i32 9
  %1579 = getelementptr inbounds %struct.Reg, %struct.Reg* %1578, i32 0, i32 0
  %RSI.i207 = bitcast %union.anon* %1579 to i64*
  %1580 = load i32, i32* %EAX.i206
  %1581 = zext i32 %1580 to i64
  %1582 = load i64, i64* %PC.i205
  %1583 = add i64 %1582, 2
  store i64 %1583, i64* %PC.i205
  %1584 = and i64 %1581, 4294967295
  store i64 %1584, i64* %RSI.i207, align 8
  store %struct.Memory* %loadMem_4dcbab, %struct.Memory** %MEMORY
  %loadMem_4dcbad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 1
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %1590 to i32*
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 7
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %RDX.i204 = bitcast %union.anon* %1593 to i64*
  %1594 = load i32, i32* %EAX.i203
  %1595 = zext i32 %1594 to i64
  %1596 = load i64, i64* %PC.i202
  %1597 = add i64 %1596, 2
  store i64 %1597, i64* %PC.i202
  %1598 = and i64 %1595, 4294967295
  store i64 %1598, i64* %RDX.i204, align 8
  store %struct.Memory* %loadMem_4dcbad, %struct.Memory** %MEMORY
  %loadMem_4dcbaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %1605 = bitcast %union.anon* %1604 to %struct.anon.2*
  %AL.i201 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1605, i32 0, i32 0
  %1606 = load i64, i64* %PC.i200
  %1607 = add i64 %1606, 2
  store i64 %1607, i64* %PC.i200
  store i8 0, i8* %AL.i201, align 1
  store %struct.Memory* %loadMem_4dcbaf, %struct.Memory** %MEMORY
  %loadMem1_4dcbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1609 = getelementptr inbounds %struct.GPR, %struct.GPR* %1608, i32 0, i32 33
  %1610 = getelementptr inbounds %struct.Reg, %struct.Reg* %1609, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1610 to i64*
  %1611 = load i64, i64* %PC.i199
  %1612 = add i64 %1611, -414881
  %1613 = load i64, i64* %PC.i199
  %1614 = add i64 %1613, 5
  %1615 = load i64, i64* %PC.i199
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %PC.i199
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1618 = load i64, i64* %1617, align 8
  %1619 = add i64 %1618, -8
  %1620 = inttoptr i64 %1619 to i64*
  store i64 %1614, i64* %1620
  store i64 %1619, i64* %1617, align 8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1612, i64* %1621, align 8
  store %struct.Memory* %loadMem1_4dcbb1, %struct.Memory** %MEMORY
  %loadMem2_4dcbb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcbb1 = load i64, i64* %3
  %call2_4dcbb1 = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4dcbb1, %struct.Memory* %loadMem2_4dcbb1)
  store %struct.Memory* %call2_4dcbb1, %struct.Memory** %MEMORY
  %loadMem_4dcbb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1624 to i64*
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1626 = getelementptr inbounds %struct.GPR, %struct.GPR* %1625, i32 0, i32 1
  %1627 = getelementptr inbounds %struct.Reg, %struct.Reg* %1626, i32 0, i32 0
  %EAX.i198 = bitcast %union.anon* %1627 to i32*
  %1628 = load i32, i32* %EAX.i198
  %1629 = zext i32 %1628 to i64
  %1630 = load i64, i64* %PC.i197
  %1631 = add i64 %1630, 3
  store i64 %1631, i64* %PC.i197
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1632, align 1
  %1633 = and i32 %1628, 255
  %1634 = call i32 @llvm.ctpop.i32(i32 %1633)
  %1635 = trunc i32 %1634 to i8
  %1636 = and i8 %1635, 1
  %1637 = xor i8 %1636, 1
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1637, i8* %1638, align 1
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1639, align 1
  %1640 = icmp eq i32 %1628, 0
  %1641 = zext i1 %1640 to i8
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1641, i8* %1642, align 1
  %1643 = lshr i32 %1628, 31
  %1644 = trunc i32 %1643 to i8
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1644, i8* %1645, align 1
  %1646 = lshr i32 %1628, 31
  %1647 = xor i32 %1643, %1646
  %1648 = add i32 %1647, %1646
  %1649 = icmp eq i32 %1648, 2
  %1650 = zext i1 %1649 to i8
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1650, i8* %1651, align 1
  store %struct.Memory* %loadMem_4dcbb6, %struct.Memory** %MEMORY
  %loadMem_4dcbb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1654 to i64*
  %1655 = load i64, i64* %PC.i196
  %1656 = add i64 %1655, 86
  %1657 = load i64, i64* %PC.i196
  %1658 = add i64 %1657, 6
  %1659 = load i64, i64* %PC.i196
  %1660 = add i64 %1659, 6
  store i64 %1660, i64* %PC.i196
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1662 = load i8, i8* %1661, align 1
  store i8 %1662, i8* %BRANCH_TAKEN, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1664 = icmp ne i8 %1662, 0
  %1665 = select i1 %1664, i64 %1656, i64 %1658
  store i64 %1665, i64* %1663, align 8
  store %struct.Memory* %loadMem_4dcbb9, %struct.Memory** %MEMORY
  %loadBr_4dcbb9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcbb9 = icmp eq i8 %loadBr_4dcbb9, 1
  br i1 %cmpBr_4dcbb9, label %block_.L_4dcc0f, label %block_4dcbbf

block_4dcbbf:                                     ; preds = %block_4dcba0
  %loadMem_4dcbbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %PC.i194
  %1673 = add i64 %1672, 5
  store i64 %1673, i64* %PC.i194
  store i64 1, i64* %RAX.i195, align 8
  store %struct.Memory* %loadMem_4dcbbf, %struct.Memory** %MEMORY
  %loadMem_4dcbc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 33
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1676 to i64*
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1678 = getelementptr inbounds %struct.GPR, %struct.GPR* %1677, i32 0, i32 11
  %1679 = getelementptr inbounds %struct.Reg, %struct.Reg* %1678, i32 0, i32 0
  %RDI.i192 = bitcast %union.anon* %1679 to i64*
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1681 = getelementptr inbounds %struct.GPR, %struct.GPR* %1680, i32 0, i32 15
  %1682 = getelementptr inbounds %struct.Reg, %struct.Reg* %1681, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %1682 to i64*
  %1683 = load i64, i64* %RBP.i193
  %1684 = sub i64 %1683, 12
  %1685 = load i64, i64* %PC.i191
  %1686 = add i64 %1685, 3
  store i64 %1686, i64* %PC.i191
  %1687 = inttoptr i64 %1684 to i32*
  %1688 = load i32, i32* %1687
  %1689 = zext i32 %1688 to i64
  store i64 %1689, i64* %RDI.i192, align 8
  store %struct.Memory* %loadMem_4dcbc4, %struct.Memory** %MEMORY
  %loadMem_4dcbc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 5
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %1695 to i64*
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1697 = getelementptr inbounds %struct.GPR, %struct.GPR* %1696, i32 0, i32 15
  %1698 = getelementptr inbounds %struct.Reg, %struct.Reg* %1697, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %1698 to i64*
  %1699 = load i64, i64* %RBP.i190
  %1700 = sub i64 %1699, 20
  %1701 = load i64, i64* %PC.i188
  %1702 = add i64 %1701, 3
  store i64 %1702, i64* %PC.i188
  %1703 = inttoptr i64 %1700 to i32*
  %1704 = load i32, i32* %1703
  %1705 = zext i32 %1704 to i64
  store i64 %1705, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_4dcbc7, %struct.Memory** %MEMORY
  %loadMem_4dcbca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 1
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %EAX.i186 = bitcast %union.anon* %1711 to i32*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 9
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RSI.i187 = bitcast %union.anon* %1714 to i64*
  %1715 = load i32, i32* %EAX.i186
  %1716 = zext i32 %1715 to i64
  %1717 = load i64, i64* %PC.i185
  %1718 = add i64 %1717, 2
  store i64 %1718, i64* %PC.i185
  %1719 = and i64 %1716, 4294967295
  store i64 %1719, i64* %RSI.i187, align 8
  store %struct.Memory* %loadMem_4dcbca, %struct.Memory** %MEMORY
  %loadMem_4dcbcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 1
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %1725 to i32*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 7
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RDX.i184 = bitcast %union.anon* %1728 to i64*
  %1729 = load i32, i32* %EAX.i183
  %1730 = zext i32 %1729 to i64
  %1731 = load i64, i64* %PC.i182
  %1732 = add i64 %1731, 2
  store i64 %1732, i64* %PC.i182
  %1733 = and i64 %1730, 4294967295
  store i64 %1733, i64* %RDX.i184, align 8
  store %struct.Memory* %loadMem_4dcbcc, %struct.Memory** %MEMORY
  %loadMem_4dcbce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 1
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %1740 = bitcast %union.anon* %1739 to %struct.anon.2*
  %AL.i181 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1740, i32 0, i32 0
  %1741 = load i64, i64* %PC.i180
  %1742 = add i64 %1741, 2
  store i64 %1742, i64* %PC.i180
  store i8 0, i8* %AL.i181, align 1
  store %struct.Memory* %loadMem_4dcbce, %struct.Memory** %MEMORY
  %loadMem1_4dcbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 33
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %PC.i179
  %1747 = add i64 %1746, -414912
  %1748 = load i64, i64* %PC.i179
  %1749 = add i64 %1748, 5
  %1750 = load i64, i64* %PC.i179
  %1751 = add i64 %1750, 5
  store i64 %1751, i64* %PC.i179
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1753 = load i64, i64* %1752, align 8
  %1754 = add i64 %1753, -8
  %1755 = inttoptr i64 %1754 to i64*
  store i64 %1749, i64* %1755
  store i64 %1754, i64* %1752, align 8
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1747, i64* %1756, align 8
  store %struct.Memory* %loadMem1_4dcbd0, %struct.Memory** %MEMORY
  %loadMem2_4dcbd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcbd0 = load i64, i64* %3
  %call2_4dcbd0 = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4dcbd0, %struct.Memory* %loadMem2_4dcbd0)
  store %struct.Memory* %call2_4dcbd0, %struct.Memory** %MEMORY
  %loadMem_4dcbd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 33
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1759 to i64*
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 5
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %ECX.i177 = bitcast %union.anon* %1762 to i32*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1764 = getelementptr inbounds %struct.GPR, %struct.GPR* %1763, i32 0, i32 5
  %1765 = getelementptr inbounds %struct.Reg, %struct.Reg* %1764, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %1765 to i64*
  %1766 = load i64, i64* %RCX.i178
  %1767 = load i32, i32* %ECX.i177
  %1768 = zext i32 %1767 to i64
  %1769 = load i64, i64* %PC.i176
  %1770 = add i64 %1769, 2
  store i64 %1770, i64* %PC.i176
  %1771 = xor i64 %1768, %1766
  %1772 = trunc i64 %1771 to i32
  %1773 = and i64 %1771, 4294967295
  store i64 %1773, i64* %RCX.i178, align 8
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1774, align 1
  %1775 = and i32 %1772, 255
  %1776 = call i32 @llvm.ctpop.i32(i32 %1775)
  %1777 = trunc i32 %1776 to i8
  %1778 = and i8 %1777, 1
  %1779 = xor i8 %1778, 1
  %1780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1779, i8* %1780, align 1
  %1781 = icmp eq i32 %1772, 0
  %1782 = zext i1 %1781 to i8
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1782, i8* %1783, align 1
  %1784 = lshr i32 %1772, 31
  %1785 = trunc i32 %1784 to i8
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1785, i8* %1786, align 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1787, align 1
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1788, align 1
  store %struct.Memory* %loadMem_4dcbd5, %struct.Memory** %MEMORY
  %loadMem_4dcbd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 33
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1791 to i64*
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1793 = getelementptr inbounds %struct.GPR, %struct.GPR* %1792, i32 0, i32 5
  %1794 = getelementptr inbounds %struct.Reg, %struct.Reg* %1793, i32 0, i32 0
  %1795 = bitcast %union.anon* %1794 to %struct.anon.2*
  %CL.i174 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1795, i32 0, i32 0
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 17
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %1799 = bitcast %union.anon* %1798 to %struct.anon.2*
  %R8B.i175 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1799, i32 0, i32 0
  %1800 = load i8, i8* %CL.i174
  %1801 = zext i8 %1800 to i64
  %1802 = load i64, i64* %PC.i173
  %1803 = add i64 %1802, 3
  store i64 %1803, i64* %PC.i173
  store i8 %1800, i8* %R8B.i175, align 1
  store %struct.Memory* %loadMem_4dcbd7, %struct.Memory** %MEMORY
  %loadMem_4dcbda = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %1806 to i64*
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 1
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %1809 to i32*
  %1810 = load i32, i32* %EAX.i172
  %1811 = zext i32 %1810 to i64
  %1812 = load i64, i64* %PC.i171
  %1813 = add i64 %1812, 3
  store i64 %1813, i64* %PC.i171
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1814, align 1
  %1815 = and i32 %1810, 255
  %1816 = call i32 @llvm.ctpop.i32(i32 %1815)
  %1817 = trunc i32 %1816 to i8
  %1818 = and i8 %1817, 1
  %1819 = xor i8 %1818, 1
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1819, i8* %1820, align 1
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1821, align 1
  %1822 = icmp eq i32 %1810, 0
  %1823 = zext i1 %1822 to i8
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1823, i8* %1824, align 1
  %1825 = lshr i32 %1810, 31
  %1826 = trunc i32 %1825 to i8
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1826, i8* %1827, align 1
  %1828 = lshr i32 %1810, 31
  %1829 = xor i32 %1825, %1828
  %1830 = add i32 %1829, %1828
  %1831 = icmp eq i32 %1830, 2
  %1832 = zext i1 %1831 to i8
  %1833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1832, i8* %1833, align 1
  store %struct.Memory* %loadMem_4dcbda, %struct.Memory** %MEMORY
  %loadMem_4dcbdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 17
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %1840 = bitcast %union.anon* %1839 to %struct.anon.2*
  %R8B.i169 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1840, i32 0, i32 0
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i170
  %1845 = sub i64 %1844, 61
  %1846 = load i8, i8* %R8B.i169
  %1847 = zext i8 %1846 to i64
  %1848 = load i64, i64* %PC.i168
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i168
  %1850 = inttoptr i64 %1845 to i8*
  store i8 %1846, i8* %1850
  store %struct.Memory* %loadMem_4dcbdd, %struct.Memory** %MEMORY
  %loadMem_4dcbe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %PC.i167
  %1855 = add i64 %1854, 303
  %1856 = load i64, i64* %PC.i167
  %1857 = add i64 %1856, 6
  %1858 = load i64, i64* %PC.i167
  %1859 = add i64 %1858, 6
  store i64 %1859, i64* %PC.i167
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1861 = load i8, i8* %1860, align 1
  %1862 = icmp eq i8 %1861, 0
  %1863 = zext i1 %1862 to i8
  store i8 %1863, i8* %BRANCH_TAKEN, align 1
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1865 = select i1 %1862, i64 %1855, i64 %1857
  store i64 %1865, i64* %1864, align 8
  store %struct.Memory* %loadMem_4dcbe1, %struct.Memory** %MEMORY
  %loadBr_4dcbe1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcbe1 = icmp eq i8 %loadBr_4dcbe1, 1
  br i1 %cmpBr_4dcbe1, label %block_.L_4dcd10, label %block_4dcbe7

block_4dcbe7:                                     ; preds = %block_4dcbbf
  %loadMem_4dcbe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %1868 to i64*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 1
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RAX.i166 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %PC.i165
  %1873 = add i64 %1872, 5
  store i64 %1873, i64* %PC.i165
  store i64 1, i64* %RAX.i166, align 8
  store %struct.Memory* %loadMem_4dcbe7, %struct.Memory** %MEMORY
  %loadMem_4dcbec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %1876 to i64*
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1878 = getelementptr inbounds %struct.GPR, %struct.GPR* %1877, i32 0, i32 11
  %1879 = getelementptr inbounds %struct.Reg, %struct.Reg* %1878, i32 0, i32 0
  %RDI.i163 = bitcast %union.anon* %1879 to i64*
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 15
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %1882 to i64*
  %1883 = load i64, i64* %RBP.i164
  %1884 = sub i64 %1883, 12
  %1885 = load i64, i64* %PC.i162
  %1886 = add i64 %1885, 3
  store i64 %1886, i64* %PC.i162
  %1887 = inttoptr i64 %1884 to i32*
  %1888 = load i32, i32* %1887
  %1889 = zext i32 %1888 to i64
  store i64 %1889, i64* %RDI.i163, align 8
  store %struct.Memory* %loadMem_4dcbec, %struct.Memory** %MEMORY
  %loadMem_4dcbef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 5
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RCX.i160 = bitcast %union.anon* %1895 to i64*
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 15
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1898 to i64*
  %1899 = load i64, i64* %RBP.i161
  %1900 = sub i64 %1899, 44
  %1901 = load i64, i64* %PC.i159
  %1902 = add i64 %1901, 3
  store i64 %1902, i64* %PC.i159
  %1903 = inttoptr i64 %1900 to i32*
  %1904 = load i32, i32* %1903
  %1905 = zext i32 %1904 to i64
  store i64 %1905, i64* %RCX.i160, align 8
  store %struct.Memory* %loadMem_4dcbef, %struct.Memory** %MEMORY
  %loadMem_4dcbf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1907 = getelementptr inbounds %struct.GPR, %struct.GPR* %1906, i32 0, i32 33
  %1908 = getelementptr inbounds %struct.Reg, %struct.Reg* %1907, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1908 to i64*
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 1
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %1911 to i32*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 9
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RSI.i158 = bitcast %union.anon* %1914 to i64*
  %1915 = load i32, i32* %EAX.i157
  %1916 = zext i32 %1915 to i64
  %1917 = load i64, i64* %PC.i156
  %1918 = add i64 %1917, 2
  store i64 %1918, i64* %PC.i156
  %1919 = and i64 %1916, 4294967295
  store i64 %1919, i64* %RSI.i158, align 8
  store %struct.Memory* %loadMem_4dcbf2, %struct.Memory** %MEMORY
  %loadMem_4dcbf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 33
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 1
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %1925 to i32*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 7
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %1928 to i64*
  %1929 = load i32, i32* %EAX.i154
  %1930 = zext i32 %1929 to i64
  %1931 = load i64, i64* %PC.i153
  %1932 = add i64 %1931, 2
  store i64 %1932, i64* %PC.i153
  %1933 = and i64 %1930, 4294967295
  store i64 %1933, i64* %RDX.i155, align 8
  store %struct.Memory* %loadMem_4dcbf4, %struct.Memory** %MEMORY
  %loadMem_4dcbf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 33
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1936 to i64*
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 1
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %1940 = bitcast %union.anon* %1939 to %struct.anon.2*
  %AL.i152 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1940, i32 0, i32 0
  %1941 = load i64, i64* %PC.i151
  %1942 = add i64 %1941, 2
  store i64 %1942, i64* %PC.i151
  store i8 0, i8* %AL.i152, align 1
  store %struct.Memory* %loadMem_4dcbf6, %struct.Memory** %MEMORY
  %loadMem1_4dcbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 33
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1945 to i64*
  %1946 = load i64, i64* %PC.i150
  %1947 = add i64 %1946, -414952
  %1948 = load i64, i64* %PC.i150
  %1949 = add i64 %1948, 5
  %1950 = load i64, i64* %PC.i150
  %1951 = add i64 %1950, 5
  store i64 %1951, i64* %PC.i150
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1953 = load i64, i64* %1952, align 8
  %1954 = add i64 %1953, -8
  %1955 = inttoptr i64 %1954 to i64*
  store i64 %1949, i64* %1955
  store i64 %1954, i64* %1952, align 8
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1947, i64* %1956, align 8
  store %struct.Memory* %loadMem1_4dcbf8, %struct.Memory** %MEMORY
  %loadMem2_4dcbf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcbf8 = load i64, i64* %3
  %call2_4dcbf8 = call %struct.Memory* @sub_477710.somewhere(%struct.State* %0, i64 %loadPC_4dcbf8, %struct.Memory* %loadMem2_4dcbf8)
  store %struct.Memory* %call2_4dcbf8, %struct.Memory** %MEMORY
  %loadMem_4dcbfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 33
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1959 to i64*
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1961 = getelementptr inbounds %struct.GPR, %struct.GPR* %1960, i32 0, i32 5
  %1962 = getelementptr inbounds %struct.Reg, %struct.Reg* %1961, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1962 to i32*
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1964 = getelementptr inbounds %struct.GPR, %struct.GPR* %1963, i32 0, i32 5
  %1965 = getelementptr inbounds %struct.Reg, %struct.Reg* %1964, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %1965 to i64*
  %1966 = load i64, i64* %RCX.i149
  %1967 = load i32, i32* %ECX.i
  %1968 = zext i32 %1967 to i64
  %1969 = load i64, i64* %PC.i148
  %1970 = add i64 %1969, 2
  store i64 %1970, i64* %PC.i148
  %1971 = xor i64 %1968, %1966
  %1972 = trunc i64 %1971 to i32
  %1973 = and i64 %1971, 4294967295
  store i64 %1973, i64* %RCX.i149, align 8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1974, align 1
  %1975 = and i32 %1972, 255
  %1976 = call i32 @llvm.ctpop.i32(i32 %1975)
  %1977 = trunc i32 %1976 to i8
  %1978 = and i8 %1977, 1
  %1979 = xor i8 %1978, 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1979, i8* %1980, align 1
  %1981 = icmp eq i32 %1972, 0
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1982, i8* %1983, align 1
  %1984 = lshr i32 %1972, 31
  %1985 = trunc i32 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1985, i8* %1986, align 1
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1987, align 1
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1988, align 1
  store %struct.Memory* %loadMem_4dcbfd, %struct.Memory** %MEMORY
  %loadMem_4dcbff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1990 = getelementptr inbounds %struct.GPR, %struct.GPR* %1989, i32 0, i32 33
  %1991 = getelementptr inbounds %struct.Reg, %struct.Reg* %1990, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1991 to i64*
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 5
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %1995 = bitcast %union.anon* %1994 to %struct.anon.2*
  %CL.i146 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1995, i32 0, i32 0
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 17
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %1999 = bitcast %union.anon* %1998 to %struct.anon.2*
  %R8B.i147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1999, i32 0, i32 0
  %2000 = load i8, i8* %CL.i146
  %2001 = zext i8 %2000 to i64
  %2002 = load i64, i64* %PC.i145
  %2003 = add i64 %2002, 3
  store i64 %2003, i64* %PC.i145
  store i8 %2000, i8* %R8B.i147, align 1
  store %struct.Memory* %loadMem_4dcbff, %struct.Memory** %MEMORY
  %loadMem_4dcc02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 33
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 1
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %2009 to i32*
  %2010 = load i32, i32* %EAX.i144
  %2011 = zext i32 %2010 to i64
  %2012 = load i64, i64* %PC.i143
  %2013 = add i64 %2012, 3
  store i64 %2013, i64* %PC.i143
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2014, align 1
  %2015 = and i32 %2010, 255
  %2016 = call i32 @llvm.ctpop.i32(i32 %2015)
  %2017 = trunc i32 %2016 to i8
  %2018 = and i8 %2017, 1
  %2019 = xor i8 %2018, 1
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2019, i8* %2020, align 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2021, align 1
  %2022 = icmp eq i32 %2010, 0
  %2023 = zext i1 %2022 to i8
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2023, i8* %2024, align 1
  %2025 = lshr i32 %2010, 31
  %2026 = trunc i32 %2025 to i8
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2026, i8* %2027, align 1
  %2028 = lshr i32 %2010, 31
  %2029 = xor i32 %2025, %2028
  %2030 = add i32 %2029, %2028
  %2031 = icmp eq i32 %2030, 2
  %2032 = zext i1 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2032, i8* %2033, align 1
  store %struct.Memory* %loadMem_4dcc02, %struct.Memory** %MEMORY
  %loadMem_4dcc05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 17
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %2040 = bitcast %union.anon* %2039 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2040, i32 0, i32 0
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 15
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %2043 to i64*
  %2044 = load i64, i64* %RBP.i142
  %2045 = sub i64 %2044, 61
  %2046 = load i8, i8* %R8B.i
  %2047 = zext i8 %2046 to i64
  %2048 = load i64, i64* %PC.i141
  %2049 = add i64 %2048, 4
  store i64 %2049, i64* %PC.i141
  %2050 = inttoptr i64 %2045 to i8*
  store i8 %2046, i8* %2050
  store %struct.Memory* %loadMem_4dcc05, %struct.Memory** %MEMORY
  %loadMem_4dcc09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2052 = getelementptr inbounds %struct.GPR, %struct.GPR* %2051, i32 0, i32 33
  %2053 = getelementptr inbounds %struct.Reg, %struct.Reg* %2052, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2053 to i64*
  %2054 = load i64, i64* %PC.i140
  %2055 = add i64 %2054, 263
  %2056 = load i64, i64* %PC.i140
  %2057 = add i64 %2056, 6
  %2058 = load i64, i64* %PC.i140
  %2059 = add i64 %2058, 6
  store i64 %2059, i64* %PC.i140
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2061 = load i8, i8* %2060, align 1
  %2062 = icmp eq i8 %2061, 0
  %2063 = zext i1 %2062 to i8
  store i8 %2063, i8* %BRANCH_TAKEN, align 1
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2065 = select i1 %2062, i64 %2055, i64 %2057
  store i64 %2065, i64* %2064, align 8
  store %struct.Memory* %loadMem_4dcc09, %struct.Memory** %MEMORY
  %loadBr_4dcc09 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcc09 = icmp eq i8 %loadBr_4dcc09, 1
  br i1 %cmpBr_4dcc09, label %block_.L_4dcd10, label %block_.L_4dcc0f

block_.L_4dcc0f:                                  ; preds = %block_4dcbe7, %block_4dcba0
  %loadMem_4dcc0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %PC.i139
  %2070 = add i64 %2069, 8
  store i64 %2070, i64* %PC.i139
  %2071 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2072, align 1
  %2073 = and i32 %2071, 255
  %2074 = call i32 @llvm.ctpop.i32(i32 %2073)
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = xor i8 %2076, 1
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2077, i8* %2078, align 1
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2079, align 1
  %2080 = icmp eq i32 %2071, 0
  %2081 = zext i1 %2080 to i8
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2081, i8* %2082, align 1
  %2083 = lshr i32 %2071, 31
  %2084 = trunc i32 %2083 to i8
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2084, i8* %2085, align 1
  %2086 = lshr i32 %2071, 31
  %2087 = xor i32 %2083, %2086
  %2088 = add i32 %2087, %2086
  %2089 = icmp eq i32 %2088, 2
  %2090 = zext i1 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2090, i8* %2091, align 1
  store %struct.Memory* %loadMem_4dcc0f, %struct.Memory** %MEMORY
  %loadMem_4dcc17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2094 to i64*
  %2095 = load i64, i64* %PC.i138
  %2096 = add i64 %2095, 52
  %2097 = load i64, i64* %PC.i138
  %2098 = add i64 %2097, 6
  %2099 = load i64, i64* %PC.i138
  %2100 = add i64 %2099, 6
  store i64 %2100, i64* %PC.i138
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2102 = load i8, i8* %2101, align 1
  %2103 = icmp eq i8 %2102, 0
  %2104 = zext i1 %2103 to i8
  store i8 %2104, i8* %BRANCH_TAKEN, align 1
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2106 = select i1 %2103, i64 %2096, i64 %2098
  store i64 %2106, i64* %2105, align 8
  store %struct.Memory* %loadMem_4dcc17, %struct.Memory** %MEMORY
  %loadBr_4dcc17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcc17 = icmp eq i8 %loadBr_4dcc17, 1
  br i1 %cmpBr_4dcc17, label %block_.L_4dcc4b, label %block_4dcc1d

block_4dcc1d:                                     ; preds = %block_.L_4dcc0f
  %loadMem_4dcc1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 33
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 1
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %2112 to i32*
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 1
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %RAX.i137
  %2117 = load i32, i32* %EAX.i136
  %2118 = zext i32 %2117 to i64
  %2119 = load i64, i64* %PC.i135
  %2120 = add i64 %2119, 2
  store i64 %2120, i64* %PC.i135
  %2121 = xor i64 %2118, %2116
  %2122 = trunc i64 %2121 to i32
  %2123 = and i64 %2121, 4294967295
  store i64 %2123, i64* %RAX.i137, align 8
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2124, align 1
  %2125 = and i32 %2122, 255
  %2126 = call i32 @llvm.ctpop.i32(i32 %2125)
  %2127 = trunc i32 %2126 to i8
  %2128 = and i8 %2127, 1
  %2129 = xor i8 %2128, 1
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2129, i8* %2130, align 1
  %2131 = icmp eq i32 %2122, 0
  %2132 = zext i1 %2131 to i8
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2132, i8* %2133, align 1
  %2134 = lshr i32 %2122, 31
  %2135 = trunc i32 %2134 to i8
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2135, i8* %2136, align 1
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2137, align 1
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2138, align 1
  store %struct.Memory* %loadMem_4dcc1d, %struct.Memory** %MEMORY
  %loadMem_4dcc1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 33
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 1
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %2145 = bitcast %union.anon* %2144 to %struct.anon.2*
  %AL.i133 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2145, i32 0, i32 0
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %2149 = bitcast %union.anon* %2148 to %struct.anon.2*
  %CL.i134 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2149, i32 0, i32 0
  %2150 = load i8, i8* %AL.i133
  %2151 = zext i8 %2150 to i64
  %2152 = load i64, i64* %PC.i132
  %2153 = add i64 %2152, 2
  store i64 %2153, i64* %PC.i132
  store i8 %2150, i8* %CL.i134, align 1
  store %struct.Memory* %loadMem_4dcc1f, %struct.Memory** %MEMORY
  %loadMem_4dcc21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 7
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %PC.i130
  %2161 = add i64 %2160, 10
  store i64 %2161, i64* %PC.i130
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDX.i131, align 8
  store %struct.Memory* %loadMem_4dcc21, %struct.Memory** %MEMORY
  %loadMem_4dcc2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 9
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RSI.i128 = bitcast %union.anon* %2167 to i64*
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2169 = getelementptr inbounds %struct.GPR, %struct.GPR* %2168, i32 0, i32 15
  %2170 = getelementptr inbounds %struct.Reg, %struct.Reg* %2169, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %2170 to i64*
  %2171 = load i64, i64* %RBP.i129
  %2172 = sub i64 %2171, 40
  %2173 = load i64, i64* %PC.i127
  %2174 = add i64 %2173, 4
  store i64 %2174, i64* %PC.i127
  %2175 = inttoptr i64 %2172 to i32*
  %2176 = load i32, i32* %2175
  %2177 = sext i32 %2176 to i64
  store i64 %2177, i64* %RSI.i128, align 8
  store %struct.Memory* %loadMem_4dcc2b, %struct.Memory** %MEMORY
  %loadMem_4dcc2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 9
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RSI.i126 = bitcast %union.anon* %2183 to i64*
  %2184 = load i64, i64* %RSI.i126
  %2185 = load i64, i64* %PC.i125
  %2186 = add i64 %2185, 7
  store i64 %2186, i64* %PC.i125
  %2187 = sext i64 %2184 to i128
  %2188 = and i128 %2187, -18446744073709551616
  %2189 = zext i64 %2184 to i128
  %2190 = or i128 %2188, %2189
  %2191 = mul i128 380, %2190
  %2192 = trunc i128 %2191 to i64
  store i64 %2192, i64* %RSI.i126, align 8
  %2193 = sext i64 %2192 to i128
  %2194 = icmp ne i128 %2193, %2191
  %2195 = zext i1 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2195, i8* %2196, align 1
  %2197 = trunc i128 %2191 to i32
  %2198 = and i32 %2197, 255
  %2199 = call i32 @llvm.ctpop.i32(i32 %2198)
  %2200 = trunc i32 %2199 to i8
  %2201 = and i8 %2200, 1
  %2202 = xor i8 %2201, 1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2202, i8* %2203, align 1
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2204, align 1
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2205, align 1
  %2206 = lshr i64 %2192, 63
  %2207 = trunc i64 %2206 to i8
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2207, i8* %2208, align 1
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2195, i8* %2209, align 1
  store %struct.Memory* %loadMem_4dcc2f, %struct.Memory** %MEMORY
  %loadMem_4dcc36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 33
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 7
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RDX.i123 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 9
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RSI.i124 = bitcast %union.anon* %2218 to i64*
  %2219 = load i64, i64* %RDX.i123
  %2220 = load i64, i64* %RSI.i124
  %2221 = load i64, i64* %PC.i122
  %2222 = add i64 %2221, 3
  store i64 %2222, i64* %PC.i122
  %2223 = add i64 %2220, %2219
  store i64 %2223, i64* %RDX.i123, align 8
  %2224 = icmp ult i64 %2223, %2219
  %2225 = icmp ult i64 %2223, %2220
  %2226 = or i1 %2224, %2225
  %2227 = zext i1 %2226 to i8
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2227, i8* %2228, align 1
  %2229 = trunc i64 %2223 to i32
  %2230 = and i32 %2229, 255
  %2231 = call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2234, i8* %2235, align 1
  %2236 = xor i64 %2220, %2219
  %2237 = xor i64 %2236, %2223
  %2238 = lshr i64 %2237, 4
  %2239 = trunc i64 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2240, i8* %2241, align 1
  %2242 = icmp eq i64 %2223, 0
  %2243 = zext i1 %2242 to i8
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2243, i8* %2244, align 1
  %2245 = lshr i64 %2223, 63
  %2246 = trunc i64 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2246, i8* %2247, align 1
  %2248 = lshr i64 %2219, 63
  %2249 = lshr i64 %2220, 63
  %2250 = xor i64 %2245, %2248
  %2251 = xor i64 %2245, %2249
  %2252 = add i64 %2250, %2251
  %2253 = icmp eq i64 %2252, 2
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2254, i8* %2255, align 1
  store %struct.Memory* %loadMem_4dcc36, %struct.Memory** %MEMORY
  %loadMem_4dcc39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 7
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RDX.i121 = bitcast %union.anon* %2261 to i64*
  %2262 = load i64, i64* %RDX.i121
  %2263 = add i64 %2262, 100
  %2264 = load i64, i64* %PC.i120
  %2265 = add i64 %2264, 4
  store i64 %2265, i64* %PC.i120
  %2266 = inttoptr i64 %2263 to i32*
  %2267 = load i32, i32* %2266
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2268, align 1
  %2269 = and i32 %2267, 255
  %2270 = call i32 @llvm.ctpop.i32(i32 %2269)
  %2271 = trunc i32 %2270 to i8
  %2272 = and i8 %2271, 1
  %2273 = xor i8 %2272, 1
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2273, i8* %2274, align 1
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2275, align 1
  %2276 = icmp eq i32 %2267, 0
  %2277 = zext i1 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2277, i8* %2278, align 1
  %2279 = lshr i32 %2267, 31
  %2280 = trunc i32 %2279 to i8
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2280, i8* %2281, align 1
  %2282 = lshr i32 %2267, 31
  %2283 = xor i32 %2279, %2282
  %2284 = add i32 %2283, %2282
  %2285 = icmp eq i32 %2284, 2
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2286, i8* %2287, align 1
  store %struct.Memory* %loadMem_4dcc39, %struct.Memory** %MEMORY
  %loadMem_4dcc3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2289 = getelementptr inbounds %struct.GPR, %struct.GPR* %2288, i32 0, i32 33
  %2290 = getelementptr inbounds %struct.Reg, %struct.Reg* %2289, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %2290 to i64*
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 5
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %2294 = bitcast %union.anon* %2293 to %struct.anon.2*
  %CL.i118 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2294, i32 0, i32 0
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i119
  %2299 = sub i64 %2298, 61
  %2300 = load i8, i8* %CL.i118
  %2301 = zext i8 %2300 to i64
  %2302 = load i64, i64* %PC.i117
  %2303 = add i64 %2302, 3
  store i64 %2303, i64* %PC.i117
  %2304 = inttoptr i64 %2299 to i8*
  store i8 %2300, i8* %2304
  store %struct.Memory* %loadMem_4dcc3d, %struct.Memory** %MEMORY
  %loadMem_4dcc40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %PC.i116
  %2309 = add i64 %2308, 208
  %2310 = load i64, i64* %PC.i116
  %2311 = add i64 %2310, 6
  %2312 = load i64, i64* %PC.i116
  %2313 = add i64 %2312, 6
  store i64 %2313, i64* %PC.i116
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2315 = load i8, i8* %2314, align 1
  %2316 = icmp eq i8 %2315, 0
  %2317 = zext i1 %2316 to i8
  store i8 %2317, i8* %BRANCH_TAKEN, align 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2319 = select i1 %2316, i64 %2309, i64 %2311
  store i64 %2319, i64* %2318, align 8
  store %struct.Memory* %loadMem_4dcc40, %struct.Memory** %MEMORY
  %loadBr_4dcc40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcc40 = icmp eq i8 %loadBr_4dcc40, 1
  br i1 %cmpBr_4dcc40, label %block_.L_4dcd10, label %block_4dcc46

block_4dcc46:                                     ; preds = %block_4dcc1d
  %loadMem_4dcc46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2322 to i64*
  %2323 = load i64, i64* %PC.i115
  %2324 = add i64 %2323, 34
  %2325 = load i64, i64* %PC.i115
  %2326 = add i64 %2325, 5
  store i64 %2326, i64* %PC.i115
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2324, i64* %2327, align 8
  store %struct.Memory* %loadMem_4dcc46, %struct.Memory** %MEMORY
  br label %block_.L_4dcc68

block_.L_4dcc4b:                                  ; preds = %block_.L_4dcc0f
  %loadMem_4dcc4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2329 = getelementptr inbounds %struct.GPR, %struct.GPR* %2328, i32 0, i32 33
  %2330 = getelementptr inbounds %struct.Reg, %struct.Reg* %2329, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2330 to i64*
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 1
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %2333 to i32*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 1
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %2336 to i64*
  %2337 = load i64, i64* %RAX.i114
  %2338 = load i32, i32* %EAX.i113
  %2339 = zext i32 %2338 to i64
  %2340 = load i64, i64* %PC.i112
  %2341 = add i64 %2340, 2
  store i64 %2341, i64* %PC.i112
  %2342 = xor i64 %2339, %2337
  %2343 = trunc i64 %2342 to i32
  %2344 = and i64 %2342, 4294967295
  store i64 %2344, i64* %RAX.i114, align 8
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2345, align 1
  %2346 = and i32 %2343, 255
  %2347 = call i32 @llvm.ctpop.i32(i32 %2346)
  %2348 = trunc i32 %2347 to i8
  %2349 = and i8 %2348, 1
  %2350 = xor i8 %2349, 1
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2350, i8* %2351, align 1
  %2352 = icmp eq i32 %2343, 0
  %2353 = zext i1 %2352 to i8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2353, i8* %2354, align 1
  %2355 = lshr i32 %2343, 31
  %2356 = trunc i32 %2355 to i8
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2356, i8* %2357, align 1
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2358, align 1
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2359, align 1
  store %struct.Memory* %loadMem_4dcc4b, %struct.Memory** %MEMORY
  %loadMem_4dcc4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 33
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %2362 to i64*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 1
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %2365 to i32*
  %2366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2367 = getelementptr inbounds %struct.GPR, %struct.GPR* %2366, i32 0, i32 9
  %2368 = getelementptr inbounds %struct.Reg, %struct.Reg* %2367, i32 0, i32 0
  %RSI.i111 = bitcast %union.anon* %2368 to i64*
  %2369 = load i32, i32* %EAX.i110
  %2370 = zext i32 %2369 to i64
  %2371 = load i64, i64* %PC.i109
  %2372 = add i64 %2371, 2
  store i64 %2372, i64* %PC.i109
  %2373 = and i64 %2370, 4294967295
  store i64 %2373, i64* %RSI.i111, align 8
  store %struct.Memory* %loadMem_4dcc4d, %struct.Memory** %MEMORY
  %loadMem_4dcc4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %2376 to i64*
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2378 = getelementptr inbounds %struct.GPR, %struct.GPR* %2377, i32 0, i32 11
  %2379 = getelementptr inbounds %struct.Reg, %struct.Reg* %2378, i32 0, i32 0
  %RDI.i107 = bitcast %union.anon* %2379 to i64*
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 15
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %RBP.i108
  %2384 = sub i64 %2383, 40
  %2385 = load i64, i64* %PC.i106
  %2386 = add i64 %2385, 3
  store i64 %2386, i64* %PC.i106
  %2387 = inttoptr i64 %2384 to i32*
  %2388 = load i32, i32* %2387
  %2389 = zext i32 %2388 to i64
  store i64 %2389, i64* %RDI.i107, align 8
  store %struct.Memory* %loadMem_4dcc4f, %struct.Memory** %MEMORY
  %loadMem1_4dcc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 33
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2392 to i64*
  %2393 = load i64, i64* %PC.i105
  %2394 = add i64 %2393, -520466
  %2395 = load i64, i64* %PC.i105
  %2396 = add i64 %2395, 5
  %2397 = load i64, i64* %PC.i105
  %2398 = add i64 %2397, 5
  store i64 %2398, i64* %PC.i105
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2400 = load i64, i64* %2399, align 8
  %2401 = add i64 %2400, -8
  %2402 = inttoptr i64 %2401 to i64*
  store i64 %2396, i64* %2402
  store i64 %2401, i64* %2399, align 8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2394, i64* %2403, align 8
  store %struct.Memory* %loadMem1_4dcc52, %struct.Memory** %MEMORY
  %loadMem2_4dcc52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dcc52 = load i64, i64* %3
  %call2_4dcc52 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_4dcc52, %struct.Memory* %loadMem2_4dcc52)
  store %struct.Memory* %call2_4dcc52, %struct.Memory** %MEMORY
  %loadMem_4dcc57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 33
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 11
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %EDI.i103 = bitcast %union.anon* %2409 to i32*
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2411 = getelementptr inbounds %struct.GPR, %struct.GPR* %2410, i32 0, i32 11
  %2412 = getelementptr inbounds %struct.Reg, %struct.Reg* %2411, i32 0, i32 0
  %RDI.i104 = bitcast %union.anon* %2412 to i64*
  %2413 = load i64, i64* %RDI.i104
  %2414 = load i32, i32* %EDI.i103
  %2415 = zext i32 %2414 to i64
  %2416 = load i64, i64* %PC.i102
  %2417 = add i64 %2416, 2
  store i64 %2417, i64* %PC.i102
  %2418 = xor i64 %2415, %2413
  %2419 = trunc i64 %2418 to i32
  %2420 = and i64 %2418, 4294967295
  store i64 %2420, i64* %RDI.i104, align 8
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2421, align 1
  %2422 = and i32 %2419, 255
  %2423 = call i32 @llvm.ctpop.i32(i32 %2422)
  %2424 = trunc i32 %2423 to i8
  %2425 = and i8 %2424, 1
  %2426 = xor i8 %2425, 1
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2426, i8* %2427, align 1
  %2428 = icmp eq i32 %2419, 0
  %2429 = zext i1 %2428 to i8
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2429, i8* %2430, align 1
  %2431 = lshr i32 %2419, 31
  %2432 = trunc i32 %2431 to i8
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2432, i8* %2433, align 1
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2434, align 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2435, align 1
  store %struct.Memory* %loadMem_4dcc57, %struct.Memory** %MEMORY
  %loadMem_4dcc59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 5
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %2442 = bitcast %union.anon* %2441 to %struct.anon.2*
  %CL.i100 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2442, i32 0, i32 0
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 11
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %2446 = bitcast %union.anon* %2445 to %struct.anon.2*
  %DIL.i101 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2446, i32 0, i32 0
  %2447 = load i8, i8* %DIL.i101
  %2448 = zext i8 %2447 to i64
  %2449 = load i64, i64* %PC.i99
  %2450 = add i64 %2449, 3
  store i64 %2450, i64* %PC.i99
  store i8 %2447, i8* %CL.i100, align 1
  store %struct.Memory* %loadMem_4dcc59, %struct.Memory** %MEMORY
  %loadMem_4dcc5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 1
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %EAX.i98 = bitcast %union.anon* %2456 to i32*
  %2457 = load i32, i32* %EAX.i98
  %2458 = zext i32 %2457 to i64
  %2459 = load i64, i64* %PC.i97
  %2460 = add i64 %2459, 3
  store i64 %2460, i64* %PC.i97
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2461, align 1
  %2462 = and i32 %2457, 255
  %2463 = call i32 @llvm.ctpop.i32(i32 %2462)
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = xor i8 %2465, 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2466, i8* %2467, align 1
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2468, align 1
  %2469 = icmp eq i32 %2457, 0
  %2470 = zext i1 %2469 to i8
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2470, i8* %2471, align 1
  %2472 = lshr i32 %2457, 31
  %2473 = trunc i32 %2472 to i8
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2473, i8* %2474, align 1
  %2475 = lshr i32 %2457, 31
  %2476 = xor i32 %2472, %2475
  %2477 = add i32 %2476, %2475
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2479, i8* %2480, align 1
  store %struct.Memory* %loadMem_4dcc5c, %struct.Memory** %MEMORY
  %loadMem_4dcc5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 5
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %2487 = bitcast %union.anon* %2486 to %struct.anon.2*
  %CL.i95 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2487, i32 0, i32 0
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i96
  %2492 = sub i64 %2491, 61
  %2493 = load i8, i8* %CL.i95
  %2494 = zext i8 %2493 to i64
  %2495 = load i64, i64* %PC.i94
  %2496 = add i64 %2495, 3
  store i64 %2496, i64* %PC.i94
  %2497 = inttoptr i64 %2492 to i8*
  store i8 %2493, i8* %2497
  store %struct.Memory* %loadMem_4dcc5f, %struct.Memory** %MEMORY
  %loadMem_4dcc62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 33
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %2500 to i64*
  %2501 = load i64, i64* %PC.i93
  %2502 = add i64 %2501, 174
  %2503 = load i64, i64* %PC.i93
  %2504 = add i64 %2503, 6
  %2505 = load i64, i64* %PC.i93
  %2506 = add i64 %2505, 6
  store i64 %2506, i64* %PC.i93
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2508 = load i8, i8* %2507, align 1
  %2509 = icmp eq i8 %2508, 0
  %2510 = zext i1 %2509 to i8
  store i8 %2510, i8* %BRANCH_TAKEN, align 1
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2512 = select i1 %2509, i64 %2502, i64 %2504
  store i64 %2512, i64* %2511, align 8
  store %struct.Memory* %loadMem_4dcc62, %struct.Memory** %MEMORY
  %loadBr_4dcc62 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcc62 = icmp eq i8 %loadBr_4dcc62, 1
  br i1 %cmpBr_4dcc62, label %block_.L_4dcd10, label %block_.L_4dcc68

block_.L_4dcc68:                                  ; preds = %block_.L_4dcc4b, %block_4dcc46
  %loadMem_4dcc68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 33
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2515 to i64*
  %2516 = load i64, i64* %PC.i92
  %2517 = add i64 %2516, 8
  store i64 %2517, i64* %PC.i92
  %2518 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2519, align 1
  %2520 = and i32 %2518, 255
  %2521 = call i32 @llvm.ctpop.i32(i32 %2520)
  %2522 = trunc i32 %2521 to i8
  %2523 = and i8 %2522, 1
  %2524 = xor i8 %2523, 1
  %2525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2524, i8* %2525, align 1
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2526, align 1
  %2527 = icmp eq i32 %2518, 0
  %2528 = zext i1 %2527 to i8
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2528, i8* %2529, align 1
  %2530 = lshr i32 %2518, 31
  %2531 = trunc i32 %2530 to i8
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2531, i8* %2532, align 1
  %2533 = lshr i32 %2518, 31
  %2534 = xor i32 %2530, %2533
  %2535 = add i32 %2534, %2533
  %2536 = icmp eq i32 %2535, 2
  %2537 = zext i1 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2537, i8* %2538, align 1
  store %struct.Memory* %loadMem_4dcc68, %struct.Memory** %MEMORY
  %loadMem_4dcc70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 33
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2541 to i64*
  %2542 = load i64, i64* %PC.i91
  %2543 = add i64 %2542, 52
  %2544 = load i64, i64* %PC.i91
  %2545 = add i64 %2544, 6
  %2546 = load i64, i64* %PC.i91
  %2547 = add i64 %2546, 6
  store i64 %2547, i64* %PC.i91
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2549 = load i8, i8* %2548, align 1
  %2550 = icmp eq i8 %2549, 0
  %2551 = zext i1 %2550 to i8
  store i8 %2551, i8* %BRANCH_TAKEN, align 1
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2553 = select i1 %2550, i64 %2543, i64 %2545
  store i64 %2553, i64* %2552, align 8
  store %struct.Memory* %loadMem_4dcc70, %struct.Memory** %MEMORY
  %loadBr_4dcc70 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcc70 = icmp eq i8 %loadBr_4dcc70, 1
  br i1 %cmpBr_4dcc70, label %block_.L_4dcca4, label %block_4dcc76

block_4dcc76:                                     ; preds = %block_.L_4dcc68
  %loadMem_4dcc76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 33
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %2556 to i64*
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 1
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %EAX.i89 = bitcast %union.anon* %2559 to i32*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 1
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %RAX.i90
  %2564 = load i32, i32* %EAX.i89
  %2565 = zext i32 %2564 to i64
  %2566 = load i64, i64* %PC.i88
  %2567 = add i64 %2566, 2
  store i64 %2567, i64* %PC.i88
  %2568 = xor i64 %2565, %2563
  %2569 = trunc i64 %2568 to i32
  %2570 = and i64 %2568, 4294967295
  store i64 %2570, i64* %RAX.i90, align 8
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2571, align 1
  %2572 = and i32 %2569, 255
  %2573 = call i32 @llvm.ctpop.i32(i32 %2572)
  %2574 = trunc i32 %2573 to i8
  %2575 = and i8 %2574, 1
  %2576 = xor i8 %2575, 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2576, i8* %2577, align 1
  %2578 = icmp eq i32 %2569, 0
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2569, 31
  %2582 = trunc i32 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2582, i8* %2583, align 1
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2584, align 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2585, align 1
  store %struct.Memory* %loadMem_4dcc76, %struct.Memory** %MEMORY
  %loadMem_4dcc78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2587 = getelementptr inbounds %struct.GPR, %struct.GPR* %2586, i32 0, i32 33
  %2588 = getelementptr inbounds %struct.Reg, %struct.Reg* %2587, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2588 to i64*
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 1
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %2592 = bitcast %union.anon* %2591 to %struct.anon.2*
  %AL.i86 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2592, i32 0, i32 0
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2594 = getelementptr inbounds %struct.GPR, %struct.GPR* %2593, i32 0, i32 5
  %2595 = getelementptr inbounds %struct.Reg, %struct.Reg* %2594, i32 0, i32 0
  %2596 = bitcast %union.anon* %2595 to %struct.anon.2*
  %CL.i87 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2596, i32 0, i32 0
  %2597 = load i8, i8* %AL.i86
  %2598 = zext i8 %2597 to i64
  %2599 = load i64, i64* %PC.i85
  %2600 = add i64 %2599, 2
  store i64 %2600, i64* %PC.i85
  store i8 %2597, i8* %CL.i87, align 1
  store %struct.Memory* %loadMem_4dcc78, %struct.Memory** %MEMORY
  %loadMem_4dcc7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2602 = getelementptr inbounds %struct.GPR, %struct.GPR* %2601, i32 0, i32 33
  %2603 = getelementptr inbounds %struct.Reg, %struct.Reg* %2602, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2603 to i64*
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 7
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %RDX.i84 = bitcast %union.anon* %2606 to i64*
  %2607 = load i64, i64* %PC.i83
  %2608 = add i64 %2607, 10
  store i64 %2608, i64* %PC.i83
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDX.i84, align 8
  store %struct.Memory* %loadMem_4dcc7a, %struct.Memory** %MEMORY
  %loadMem_4dcc84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 9
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RSI.i81 = bitcast %union.anon* %2614 to i64*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 15
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %RBP.i82 = bitcast %union.anon* %2617 to i64*
  %2618 = load i64, i64* %RBP.i82
  %2619 = sub i64 %2618, 32
  %2620 = load i64, i64* %PC.i80
  %2621 = add i64 %2620, 4
  store i64 %2621, i64* %PC.i80
  %2622 = inttoptr i64 %2619 to i32*
  %2623 = load i32, i32* %2622
  %2624 = sext i32 %2623 to i64
  store i64 %2624, i64* %RSI.i81, align 8
  store %struct.Memory* %loadMem_4dcc84, %struct.Memory** %MEMORY
  %loadMem_4dcc88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 9
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RSI.i79 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RSI.i79
  %2632 = load i64, i64* %PC.i78
  %2633 = add i64 %2632, 7
  store i64 %2633, i64* %PC.i78
  %2634 = sext i64 %2631 to i128
  %2635 = and i128 %2634, -18446744073709551616
  %2636 = zext i64 %2631 to i128
  %2637 = or i128 %2635, %2636
  %2638 = mul i128 380, %2637
  %2639 = trunc i128 %2638 to i64
  store i64 %2639, i64* %RSI.i79, align 8
  %2640 = sext i64 %2639 to i128
  %2641 = icmp ne i128 %2640, %2638
  %2642 = zext i1 %2641 to i8
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2642, i8* %2643, align 1
  %2644 = trunc i128 %2638 to i32
  %2645 = and i32 %2644, 255
  %2646 = call i32 @llvm.ctpop.i32(i32 %2645)
  %2647 = trunc i32 %2646 to i8
  %2648 = and i8 %2647, 1
  %2649 = xor i8 %2648, 1
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2649, i8* %2650, align 1
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2651, align 1
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2652, align 1
  %2653 = lshr i64 %2639, 63
  %2654 = trunc i64 %2653 to i8
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2654, i8* %2655, align 1
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2642, i8* %2656, align 1
  store %struct.Memory* %loadMem_4dcc88, %struct.Memory** %MEMORY
  %loadMem_4dcc8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2658 = getelementptr inbounds %struct.GPR, %struct.GPR* %2657, i32 0, i32 33
  %2659 = getelementptr inbounds %struct.Reg, %struct.Reg* %2658, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2659 to i64*
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 7
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %RDX.i76 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 9
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RSI.i77 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %RDX.i76
  %2667 = load i64, i64* %RSI.i77
  %2668 = load i64, i64* %PC.i75
  %2669 = add i64 %2668, 3
  store i64 %2669, i64* %PC.i75
  %2670 = add i64 %2667, %2666
  store i64 %2670, i64* %RDX.i76, align 8
  %2671 = icmp ult i64 %2670, %2666
  %2672 = icmp ult i64 %2670, %2667
  %2673 = or i1 %2671, %2672
  %2674 = zext i1 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2674, i8* %2675, align 1
  %2676 = trunc i64 %2670 to i32
  %2677 = and i32 %2676, 255
  %2678 = call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2681, i8* %2682, align 1
  %2683 = xor i64 %2667, %2666
  %2684 = xor i64 %2683, %2670
  %2685 = lshr i64 %2684, 4
  %2686 = trunc i64 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2687, i8* %2688, align 1
  %2689 = icmp eq i64 %2670, 0
  %2690 = zext i1 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i64 %2670, 63
  %2693 = trunc i64 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2693, i8* %2694, align 1
  %2695 = lshr i64 %2666, 63
  %2696 = lshr i64 %2667, 63
  %2697 = xor i64 %2692, %2695
  %2698 = xor i64 %2692, %2696
  %2699 = add i64 %2697, %2698
  %2700 = icmp eq i64 %2699, 2
  %2701 = zext i1 %2700 to i8
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2701, i8* %2702, align 1
  store %struct.Memory* %loadMem_4dcc8f, %struct.Memory** %MEMORY
  %loadMem_4dcc92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2704 = getelementptr inbounds %struct.GPR, %struct.GPR* %2703, i32 0, i32 33
  %2705 = getelementptr inbounds %struct.Reg, %struct.Reg* %2704, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2705 to i64*
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 7
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %2708 to i64*
  %2709 = load i64, i64* %RDX.i74
  %2710 = add i64 %2709, 100
  %2711 = load i64, i64* %PC.i73
  %2712 = add i64 %2711, 4
  store i64 %2712, i64* %PC.i73
  %2713 = inttoptr i64 %2710 to i32*
  %2714 = load i32, i32* %2713
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2715, align 1
  %2716 = and i32 %2714, 255
  %2717 = call i32 @llvm.ctpop.i32(i32 %2716)
  %2718 = trunc i32 %2717 to i8
  %2719 = and i8 %2718, 1
  %2720 = xor i8 %2719, 1
  %2721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2720, i8* %2721, align 1
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2722, align 1
  %2723 = icmp eq i32 %2714, 0
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2724, i8* %2725, align 1
  %2726 = lshr i32 %2714, 31
  %2727 = trunc i32 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2727, i8* %2728, align 1
  %2729 = lshr i32 %2714, 31
  %2730 = xor i32 %2726, %2729
  %2731 = add i32 %2730, %2729
  %2732 = icmp eq i32 %2731, 2
  %2733 = zext i1 %2732 to i8
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2733, i8* %2734, align 1
  store %struct.Memory* %loadMem_4dcc92, %struct.Memory** %MEMORY
  %loadMem_4dcc96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 5
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %2741 = bitcast %union.anon* %2740 to %struct.anon.2*
  %CL.i71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2741, i32 0, i32 0
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 15
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %2744 to i64*
  %2745 = load i64, i64* %RBP.i72
  %2746 = sub i64 %2745, 61
  %2747 = load i8, i8* %CL.i71
  %2748 = zext i8 %2747 to i64
  %2749 = load i64, i64* %PC.i70
  %2750 = add i64 %2749, 3
  store i64 %2750, i64* %PC.i70
  %2751 = inttoptr i64 %2746 to i8*
  store i8 %2747, i8* %2751
  store %struct.Memory* %loadMem_4dcc96, %struct.Memory** %MEMORY
  %loadMem_4dcc99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2754 to i64*
  %2755 = load i64, i64* %PC.i69
  %2756 = add i64 %2755, 119
  %2757 = load i64, i64* %PC.i69
  %2758 = add i64 %2757, 6
  %2759 = load i64, i64* %PC.i69
  %2760 = add i64 %2759, 6
  store i64 %2760, i64* %PC.i69
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2762 = load i8, i8* %2761, align 1
  %2763 = icmp eq i8 %2762, 0
  %2764 = zext i1 %2763 to i8
  store i8 %2764, i8* %BRANCH_TAKEN, align 1
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2766 = select i1 %2763, i64 %2756, i64 %2758
  store i64 %2766, i64* %2765, align 8
  store %struct.Memory* %loadMem_4dcc99, %struct.Memory** %MEMORY
  %loadBr_4dcc99 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dcc99 = icmp eq i8 %loadBr_4dcc99, 1
  br i1 %cmpBr_4dcc99, label %block_.L_4dcd10, label %block_4dcc9f

block_4dcc9f:                                     ; preds = %block_4dcc76
  %loadMem_4dcc9f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 33
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %PC.i68
  %2771 = add i64 %2770, 34
  %2772 = load i64, i64* %PC.i68
  %2773 = add i64 %2772, 5
  store i64 %2773, i64* %PC.i68
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2771, i64* %2774, align 8
  store %struct.Memory* %loadMem_4dcc9f, %struct.Memory** %MEMORY
  br label %block_.L_4dccc1

block_.L_4dcca4:                                  ; preds = %block_.L_4dcc68
  %loadMem_4dcca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 33
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 1
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %2780 to i32*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 1
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %2783 to i64*
  %2784 = load i64, i64* %RAX.i67
  %2785 = load i32, i32* %EAX.i66
  %2786 = zext i32 %2785 to i64
  %2787 = load i64, i64* %PC.i65
  %2788 = add i64 %2787, 2
  store i64 %2788, i64* %PC.i65
  %2789 = xor i64 %2786, %2784
  %2790 = trunc i64 %2789 to i32
  %2791 = and i64 %2789, 4294967295
  store i64 %2791, i64* %RAX.i67, align 8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2792, align 1
  %2793 = and i32 %2790, 255
  %2794 = call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2797, i8* %2798, align 1
  %2799 = icmp eq i32 %2790, 0
  %2800 = zext i1 %2799 to i8
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2800, i8* %2801, align 1
  %2802 = lshr i32 %2790, 31
  %2803 = trunc i32 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2803, i8* %2804, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2806, align 1
  store %struct.Memory* %loadMem_4dcca4, %struct.Memory** %MEMORY
  %loadMem_4dcca6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 1
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %EAX.i63 = bitcast %union.anon* %2812 to i32*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 9
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RSI.i64 = bitcast %union.anon* %2815 to i64*
  %2816 = load i32, i32* %EAX.i63
  %2817 = zext i32 %2816 to i64
  %2818 = load i64, i64* %PC.i62
  %2819 = add i64 %2818, 2
  store i64 %2819, i64* %PC.i62
  %2820 = and i64 %2817, 4294967295
  store i64 %2820, i64* %RSI.i64, align 8
  store %struct.Memory* %loadMem_4dcca6, %struct.Memory** %MEMORY
  %loadMem_4dcca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 33
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 11
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RDI.i60 = bitcast %union.anon* %2826 to i64*
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2828 = getelementptr inbounds %struct.GPR, %struct.GPR* %2827, i32 0, i32 15
  %2829 = getelementptr inbounds %struct.Reg, %struct.Reg* %2828, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %2829 to i64*
  %2830 = load i64, i64* %RBP.i61
  %2831 = sub i64 %2830, 32
  %2832 = load i64, i64* %PC.i59
  %2833 = add i64 %2832, 3
  store i64 %2833, i64* %PC.i59
  %2834 = inttoptr i64 %2831 to i32*
  %2835 = load i32, i32* %2834
  %2836 = zext i32 %2835 to i64
  store i64 %2836, i64* %RDI.i60, align 8
  store %struct.Memory* %loadMem_4dcca8, %struct.Memory** %MEMORY
  %loadMem1_4dccab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2838 = getelementptr inbounds %struct.GPR, %struct.GPR* %2837, i32 0, i32 33
  %2839 = getelementptr inbounds %struct.Reg, %struct.Reg* %2838, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2839 to i64*
  %2840 = load i64, i64* %PC.i58
  %2841 = add i64 %2840, -520555
  %2842 = load i64, i64* %PC.i58
  %2843 = add i64 %2842, 5
  %2844 = load i64, i64* %PC.i58
  %2845 = add i64 %2844, 5
  store i64 %2845, i64* %PC.i58
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2847 = load i64, i64* %2846, align 8
  %2848 = add i64 %2847, -8
  %2849 = inttoptr i64 %2848 to i64*
  store i64 %2843, i64* %2849
  store i64 %2848, i64* %2846, align 8
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2841, i64* %2850, align 8
  store %struct.Memory* %loadMem1_4dccab, %struct.Memory** %MEMORY
  %loadMem2_4dccab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dccab = load i64, i64* %3
  %call2_4dccab = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_4dccab, %struct.Memory* %loadMem2_4dccab)
  store %struct.Memory* %call2_4dccab, %struct.Memory** %MEMORY
  %loadMem_4dccb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 11
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2856 to i32*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 11
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RDI.i57 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %RDI.i57
  %2861 = load i32, i32* %EDI.i
  %2862 = zext i32 %2861 to i64
  %2863 = load i64, i64* %PC.i56
  %2864 = add i64 %2863, 2
  store i64 %2864, i64* %PC.i56
  %2865 = xor i64 %2862, %2860
  %2866 = trunc i64 %2865 to i32
  %2867 = and i64 %2865, 4294967295
  store i64 %2867, i64* %RDI.i57, align 8
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2868, align 1
  %2869 = and i32 %2866, 255
  %2870 = call i32 @llvm.ctpop.i32(i32 %2869)
  %2871 = trunc i32 %2870 to i8
  %2872 = and i8 %2871, 1
  %2873 = xor i8 %2872, 1
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2873, i8* %2874, align 1
  %2875 = icmp eq i32 %2866, 0
  %2876 = zext i1 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2876, i8* %2877, align 1
  %2878 = lshr i32 %2866, 31
  %2879 = trunc i32 %2878 to i8
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2879, i8* %2880, align 1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2881, align 1
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2882, align 1
  store %struct.Memory* %loadMem_4dccb0, %struct.Memory** %MEMORY
  %loadMem_4dccb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 5
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %2889 = bitcast %union.anon* %2888 to %struct.anon.2*
  %CL.i55 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2889, i32 0, i32 0
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 11
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %2893 = bitcast %union.anon* %2892 to %struct.anon.2*
  %DIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2893, i32 0, i32 0
  %2894 = load i8, i8* %DIL.i
  %2895 = zext i8 %2894 to i64
  %2896 = load i64, i64* %PC.i54
  %2897 = add i64 %2896, 3
  store i64 %2897, i64* %PC.i54
  store i8 %2894, i8* %CL.i55, align 1
  store %struct.Memory* %loadMem_4dccb2, %struct.Memory** %MEMORY
  %loadMem_4dccb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 33
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 1
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %EAX.i53 = bitcast %union.anon* %2903 to i32*
  %2904 = load i32, i32* %EAX.i53
  %2905 = zext i32 %2904 to i64
  %2906 = load i64, i64* %PC.i52
  %2907 = add i64 %2906, 3
  store i64 %2907, i64* %PC.i52
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2908, align 1
  %2909 = and i32 %2904, 255
  %2910 = call i32 @llvm.ctpop.i32(i32 %2909)
  %2911 = trunc i32 %2910 to i8
  %2912 = and i8 %2911, 1
  %2913 = xor i8 %2912, 1
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2913, i8* %2914, align 1
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2915, align 1
  %2916 = icmp eq i32 %2904, 0
  %2917 = zext i1 %2916 to i8
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2917, i8* %2918, align 1
  %2919 = lshr i32 %2904, 31
  %2920 = trunc i32 %2919 to i8
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2920, i8* %2921, align 1
  %2922 = lshr i32 %2904, 31
  %2923 = xor i32 %2919, %2922
  %2924 = add i32 %2923, %2922
  %2925 = icmp eq i32 %2924, 2
  %2926 = zext i1 %2925 to i8
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2926, i8* %2927, align 1
  store %struct.Memory* %loadMem_4dccb5, %struct.Memory** %MEMORY
  %loadMem_4dccb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 5
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %2934 = bitcast %union.anon* %2933 to %struct.anon.2*
  %CL.i50 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2934, i32 0, i32 0
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 15
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RBP.i51
  %2939 = sub i64 %2938, 61
  %2940 = load i8, i8* %CL.i50
  %2941 = zext i8 %2940 to i64
  %2942 = load i64, i64* %PC.i49
  %2943 = add i64 %2942, 3
  store i64 %2943, i64* %PC.i49
  %2944 = inttoptr i64 %2939 to i8*
  store i8 %2940, i8* %2944
  store %struct.Memory* %loadMem_4dccb8, %struct.Memory** %MEMORY
  %loadMem_4dccbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 33
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2947 to i64*
  %2948 = load i64, i64* %PC.i48
  %2949 = add i64 %2948, 85
  %2950 = load i64, i64* %PC.i48
  %2951 = add i64 %2950, 6
  %2952 = load i64, i64* %PC.i48
  %2953 = add i64 %2952, 6
  store i64 %2953, i64* %PC.i48
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2955 = load i8, i8* %2954, align 1
  %2956 = icmp eq i8 %2955, 0
  %2957 = zext i1 %2956 to i8
  store i8 %2957, i8* %BRANCH_TAKEN, align 1
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2959 = select i1 %2956, i64 %2949, i64 %2951
  store i64 %2959, i64* %2958, align 8
  store %struct.Memory* %loadMem_4dccbb, %struct.Memory** %MEMORY
  %loadBr_4dccbb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dccbb = icmp eq i8 %loadBr_4dccbb, 1
  br i1 %cmpBr_4dccbb, label %block_.L_4dcd10, label %block_.L_4dccc1

block_.L_4dccc1:                                  ; preds = %block_.L_4dcca4, %block_4dcc9f
  %loadMem_4dccc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2961 = getelementptr inbounds %struct.GPR, %struct.GPR* %2960, i32 0, i32 33
  %2962 = getelementptr inbounds %struct.Reg, %struct.Reg* %2961, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %2962 to i64*
  %2963 = load i64, i64* %PC.i47
  %2964 = add i64 %2963, 8
  store i64 %2964, i64* %PC.i47
  %2965 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2966, align 1
  %2967 = and i32 %2965, 255
  %2968 = call i32 @llvm.ctpop.i32(i32 %2967)
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = xor i8 %2970, 1
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2971, i8* %2972, align 1
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2973, align 1
  %2974 = icmp eq i32 %2965, 0
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2975, i8* %2976, align 1
  %2977 = lshr i32 %2965, 31
  %2978 = trunc i32 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2978, i8* %2979, align 1
  %2980 = lshr i32 %2965, 31
  %2981 = xor i32 %2977, %2980
  %2982 = add i32 %2981, %2980
  %2983 = icmp eq i32 %2982, 2
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2984, i8* %2985, align 1
  store %struct.Memory* %loadMem_4dccc1, %struct.Memory** %MEMORY
  %loadMem_4dccc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %PC.i46
  %2990 = add i64 %2989, 41
  %2991 = load i64, i64* %PC.i46
  %2992 = add i64 %2991, 6
  %2993 = load i64, i64* %PC.i46
  %2994 = add i64 %2993, 6
  store i64 %2994, i64* %PC.i46
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2996 = load i8, i8* %2995, align 1
  %2997 = icmp eq i8 %2996, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %BRANCH_TAKEN, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3000 = select i1 %2997, i64 %2990, i64 %2992
  store i64 %3000, i64* %2999, align 8
  store %struct.Memory* %loadMem_4dccc9, %struct.Memory** %MEMORY
  %loadBr_4dccc9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4dccc9 = icmp eq i8 %loadBr_4dccc9, 1
  br i1 %cmpBr_4dccc9, label %block_.L_4dccf2, label %block_4dcccf

block_4dcccf:                                     ; preds = %block_.L_4dccc1
  %loadMem_4dcccf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %3006 to i64*
  %3007 = load i64, i64* %PC.i44
  %3008 = add i64 %3007, 10
  store i64 %3008, i64* %PC.i44
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_4dcccf, %struct.Memory** %MEMORY
  %loadMem_4dccd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3010 = getelementptr inbounds %struct.GPR, %struct.GPR* %3009, i32 0, i32 33
  %3011 = getelementptr inbounds %struct.Reg, %struct.Reg* %3010, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3011 to i64*
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 5
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 15
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %RBP.i43
  %3019 = sub i64 %3018, 36
  %3020 = load i64, i64* %PC.i41
  %3021 = add i64 %3020, 4
  store i64 %3021, i64* %PC.i41
  %3022 = inttoptr i64 %3019 to i32*
  %3023 = load i32, i32* %3022
  %3024 = sext i32 %3023 to i64
  store i64 %3024, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_4dccd9, %struct.Memory** %MEMORY
  %loadMem_4dccdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 5
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3030 to i64*
  %3031 = load i64, i64* %RCX.i40
  %3032 = load i64, i64* %PC.i39
  %3033 = add i64 %3032, 7
  store i64 %3033, i64* %PC.i39
  %3034 = sext i64 %3031 to i128
  %3035 = and i128 %3034, -18446744073709551616
  %3036 = zext i64 %3031 to i128
  %3037 = or i128 %3035, %3036
  %3038 = mul i128 380, %3037
  %3039 = trunc i128 %3038 to i64
  store i64 %3039, i64* %RCX.i40, align 8
  %3040 = sext i64 %3039 to i128
  %3041 = icmp ne i128 %3040, %3038
  %3042 = zext i1 %3041 to i8
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3042, i8* %3043, align 1
  %3044 = trunc i128 %3038 to i32
  %3045 = and i32 %3044, 255
  %3046 = call i32 @llvm.ctpop.i32(i32 %3045)
  %3047 = trunc i32 %3046 to i8
  %3048 = and i8 %3047, 1
  %3049 = xor i8 %3048, 1
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3049, i8* %3050, align 1
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3051, align 1
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3052, align 1
  %3053 = lshr i64 %3039, 63
  %3054 = trunc i64 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3054, i8* %3055, align 1
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3042, i8* %3056, align 1
  store %struct.Memory* %loadMem_4dccdd, %struct.Memory** %MEMORY
  %loadMem_4dcce4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 1
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %3062 to i64*
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 5
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %RAX.i38
  %3067 = load i64, i64* %RCX.i
  %3068 = load i64, i64* %PC.i37
  %3069 = add i64 %3068, 3
  store i64 %3069, i64* %PC.i37
  %3070 = add i64 %3067, %3066
  store i64 %3070, i64* %RAX.i38, align 8
  %3071 = icmp ult i64 %3070, %3066
  %3072 = icmp ult i64 %3070, %3067
  %3073 = or i1 %3071, %3072
  %3074 = zext i1 %3073 to i8
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3074, i8* %3075, align 1
  %3076 = trunc i64 %3070 to i32
  %3077 = and i32 %3076, 255
  %3078 = call i32 @llvm.ctpop.i32(i32 %3077)
  %3079 = trunc i32 %3078 to i8
  %3080 = and i8 %3079, 1
  %3081 = xor i8 %3080, 1
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3081, i8* %3082, align 1
  %3083 = xor i64 %3067, %3066
  %3084 = xor i64 %3083, %3070
  %3085 = lshr i64 %3084, 4
  %3086 = trunc i64 %3085 to i8
  %3087 = and i8 %3086, 1
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3087, i8* %3088, align 1
  %3089 = icmp eq i64 %3070, 0
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3090, i8* %3091, align 1
  %3092 = lshr i64 %3070, 63
  %3093 = trunc i64 %3092 to i8
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3093, i8* %3094, align 1
  %3095 = lshr i64 %3066, 63
  %3096 = lshr i64 %3067, 63
  %3097 = xor i64 %3092, %3095
  %3098 = xor i64 %3092, %3096
  %3099 = add i64 %3097, %3098
  %3100 = icmp eq i64 %3099, 2
  %3101 = zext i1 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3101, i8* %3102, align 1
  store %struct.Memory* %loadMem_4dcce4, %struct.Memory** %MEMORY
  %loadMem_4dcce7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3105 to i64*
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 1
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 7
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3111 to i64*
  %3112 = load i64, i64* %RAX.i36
  %3113 = add i64 %3112, 100
  %3114 = load i64, i64* %PC.i35
  %3115 = add i64 %3114, 3
  store i64 %3115, i64* %PC.i35
  %3116 = inttoptr i64 %3113 to i32*
  %3117 = load i32, i32* %3116
  %3118 = zext i32 %3117 to i64
  store i64 %3118, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4dcce7, %struct.Memory** %MEMORY
  %loadMem_4dccea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 7
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3124 to i32*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 15
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %RBP.i34
  %3129 = sub i64 %3128, 68
  %3130 = load i32, i32* %EDX.i
  %3131 = zext i32 %3130 to i64
  %3132 = load i64, i64* %PC.i33
  %3133 = add i64 %3132, 3
  store i64 %3133, i64* %PC.i33
  %3134 = inttoptr i64 %3129 to i32*
  store i32 %3130, i32* %3134
  store %struct.Memory* %loadMem_4dccea, %struct.Memory** %MEMORY
  %loadMem_4dcced = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3137 to i64*
  %3138 = load i64, i64* %PC.i32
  %3139 = add i64 %3138, 20
  %3140 = load i64, i64* %PC.i32
  %3141 = add i64 %3140, 5
  store i64 %3141, i64* %PC.i32
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3139, i64* %3142, align 8
  store %struct.Memory* %loadMem_4dcced, %struct.Memory** %MEMORY
  br label %block_.L_4dcd01

block_.L_4dccf2:                                  ; preds = %block_.L_4dccc1
  %loadMem_4dccf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3144 = getelementptr inbounds %struct.GPR, %struct.GPR* %3143, i32 0, i32 33
  %3145 = getelementptr inbounds %struct.Reg, %struct.Reg* %3144, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3145 to i64*
  %3146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3147 = getelementptr inbounds %struct.GPR, %struct.GPR* %3146, i32 0, i32 1
  %3148 = getelementptr inbounds %struct.Reg, %struct.Reg* %3147, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %3148 to i32*
  %3149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3150 = getelementptr inbounds %struct.GPR, %struct.GPR* %3149, i32 0, i32 1
  %3151 = getelementptr inbounds %struct.Reg, %struct.Reg* %3150, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %3151 to i64*
  %3152 = load i64, i64* %RAX.i31
  %3153 = load i32, i32* %EAX.i30
  %3154 = zext i32 %3153 to i64
  %3155 = load i64, i64* %PC.i29
  %3156 = add i64 %3155, 2
  store i64 %3156, i64* %PC.i29
  %3157 = xor i64 %3154, %3152
  %3158 = trunc i64 %3157 to i32
  %3159 = and i64 %3157, 4294967295
  store i64 %3159, i64* %RAX.i31, align 8
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3160, align 1
  %3161 = and i32 %3158, 255
  %3162 = call i32 @llvm.ctpop.i32(i32 %3161)
  %3163 = trunc i32 %3162 to i8
  %3164 = and i8 %3163, 1
  %3165 = xor i8 %3164, 1
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3165, i8* %3166, align 1
  %3167 = icmp eq i32 %3158, 0
  %3168 = zext i1 %3167 to i8
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3168, i8* %3169, align 1
  %3170 = lshr i32 %3158, 31
  %3171 = trunc i32 %3170 to i8
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3171, i8* %3172, align 1
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3173, align 1
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3174, align 1
  store %struct.Memory* %loadMem_4dccf2, %struct.Memory** %MEMORY
  %loadMem_4dccf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3176 = getelementptr inbounds %struct.GPR, %struct.GPR* %3175, i32 0, i32 33
  %3177 = getelementptr inbounds %struct.Reg, %struct.Reg* %3176, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3177 to i64*
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 1
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %EAX.i28 = bitcast %union.anon* %3180 to i32*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 9
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3183 to i64*
  %3184 = load i32, i32* %EAX.i28
  %3185 = zext i32 %3184 to i64
  %3186 = load i64, i64* %PC.i27
  %3187 = add i64 %3186, 2
  store i64 %3187, i64* %PC.i27
  %3188 = and i64 %3185, 4294967295
  store i64 %3188, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4dccf4, %struct.Memory** %MEMORY
  %loadMem_4dccf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 11
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3194 to i64*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 15
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3197 to i64*
  %3198 = load i64, i64* %RBP.i26
  %3199 = sub i64 %3198, 36
  %3200 = load i64, i64* %PC.i25
  %3201 = add i64 %3200, 3
  store i64 %3201, i64* %PC.i25
  %3202 = inttoptr i64 %3199 to i32*
  %3203 = load i32, i32* %3202
  %3204 = zext i32 %3203 to i64
  store i64 %3204, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4dccf6, %struct.Memory** %MEMORY
  %loadMem1_4dccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %PC.i24
  %3209 = add i64 %3208, -520633
  %3210 = load i64, i64* %PC.i24
  %3211 = add i64 %3210, 5
  %3212 = load i64, i64* %PC.i24
  %3213 = add i64 %3212, 5
  store i64 %3213, i64* %PC.i24
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3215 = load i64, i64* %3214, align 8
  %3216 = add i64 %3215, -8
  %3217 = inttoptr i64 %3216 to i64*
  store i64 %3211, i64* %3217
  store i64 %3216, i64* %3214, align 8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3209, i64* %3218, align 8
  store %struct.Memory* %loadMem1_4dccf9, %struct.Memory** %MEMORY
  %loadMem2_4dccf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4dccf9 = load i64, i64* %3
  %call2_4dccf9 = call %struct.Memory* @sub_45db40.attack(%struct.State* %0, i64 %loadPC_4dccf9, %struct.Memory* %loadMem2_4dccf9)
  store %struct.Memory* %call2_4dccf9, %struct.Memory** %MEMORY
  %loadMem_4dccfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 33
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 1
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %3224 to i32*
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 15
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %RBP.i23
  %3229 = sub i64 %3228, 68
  %3230 = load i32, i32* %EAX.i22
  %3231 = zext i32 %3230 to i64
  %3232 = load i64, i64* %PC.i21
  %3233 = add i64 %3232, 3
  store i64 %3233, i64* %PC.i21
  %3234 = inttoptr i64 %3229 to i32*
  store i32 %3230, i32* %3234
  store %struct.Memory* %loadMem_4dccfe, %struct.Memory** %MEMORY
  br label %block_.L_4dcd01

block_.L_4dcd01:                                  ; preds = %block_.L_4dccf2, %block_4dcccf
  %loadMem_4dcd01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3236 = getelementptr inbounds %struct.GPR, %struct.GPR* %3235, i32 0, i32 33
  %3237 = getelementptr inbounds %struct.Reg, %struct.Reg* %3236, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %3237 to i64*
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3239 = getelementptr inbounds %struct.GPR, %struct.GPR* %3238, i32 0, i32 1
  %3240 = getelementptr inbounds %struct.Reg, %struct.Reg* %3239, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %3240 to i64*
  %3241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3242 = getelementptr inbounds %struct.GPR, %struct.GPR* %3241, i32 0, i32 15
  %3243 = getelementptr inbounds %struct.Reg, %struct.Reg* %3242, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %3243 to i64*
  %3244 = load i64, i64* %RBP.i20
  %3245 = sub i64 %3244, 68
  %3246 = load i64, i64* %PC.i18
  %3247 = add i64 %3246, 3
  store i64 %3247, i64* %PC.i18
  %3248 = inttoptr i64 %3245 to i32*
  %3249 = load i32, i32* %3248
  %3250 = zext i32 %3249 to i64
  store i64 %3250, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_4dcd01, %struct.Memory** %MEMORY
  %loadMem_4dcd04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 1
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3256 to i32*
  %3257 = load i32, i32* %EAX.i
  %3258 = zext i32 %3257 to i64
  %3259 = load i64, i64* %PC.i17
  %3260 = add i64 %3259, 3
  store i64 %3260, i64* %PC.i17
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3261, align 1
  %3262 = and i32 %3257, 255
  %3263 = call i32 @llvm.ctpop.i32(i32 %3262)
  %3264 = trunc i32 %3263 to i8
  %3265 = and i8 %3264, 1
  %3266 = xor i8 %3265, 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3266, i8* %3267, align 1
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3268, align 1
  %3269 = icmp eq i32 %3257, 0
  %3270 = zext i1 %3269 to i8
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3270, i8* %3271, align 1
  %3272 = lshr i32 %3257, 31
  %3273 = trunc i32 %3272 to i8
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3273, i8* %3274, align 1
  %3275 = lshr i32 %3257, 31
  %3276 = xor i32 %3272, %3275
  %3277 = add i32 %3276, %3275
  %3278 = icmp eq i32 %3277, 2
  %3279 = zext i1 %3278 to i8
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3279, i8* %3280, align 1
  store %struct.Memory* %loadMem_4dcd04, %struct.Memory** %MEMORY
  %loadMem_4dcd07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3282 = getelementptr inbounds %struct.GPR, %struct.GPR* %3281, i32 0, i32 33
  %3283 = getelementptr inbounds %struct.Reg, %struct.Reg* %3282, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %3283 to i64*
  %3284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3285 = getelementptr inbounds %struct.GPR, %struct.GPR* %3284, i32 0, i32 5
  %3286 = getelementptr inbounds %struct.Reg, %struct.Reg* %3285, i32 0, i32 0
  %3287 = bitcast %union.anon* %3286 to %struct.anon.2*
  %CL.i16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3287, i32 0, i32 0
  %3288 = load i64, i64* %PC.i15
  %3289 = add i64 %3288, 3
  store i64 %3289, i64* %PC.i15
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3291 = load i8, i8* %3290, align 1
  %3292 = icmp eq i8 %3291, 0
  %3293 = zext i1 %3292 to i8
  store i8 %3293, i8* %CL.i16, align 1
  store %struct.Memory* %loadMem_4dcd07, %struct.Memory** %MEMORY
  %loadMem_4dcd0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 5
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %3300 = bitcast %union.anon* %3299 to %struct.anon.2*
  %CL.i14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3300, i32 0, i32 0
  %3301 = load i8, i8* %CL.i14
  %3302 = zext i8 %3301 to i64
  %3303 = load i64, i64* %PC.i13
  %3304 = add i64 %3303, 3
  store i64 %3304, i64* %PC.i13
  %3305 = xor i64 255, %3302
  %3306 = trunc i64 %3305 to i8
  store i8 %3306, i8* %CL.i14, align 1
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3307, align 1
  %3308 = trunc i64 %3305 to i32
  %3309 = and i32 %3308, 255
  %3310 = call i32 @llvm.ctpop.i32(i32 %3309)
  %3311 = trunc i32 %3310 to i8
  %3312 = and i8 %3311, 1
  %3313 = xor i8 %3312, 1
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3313, i8* %3314, align 1
  %3315 = icmp eq i8 %3306, 0
  %3316 = zext i1 %3315 to i8
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3316, i8* %3317, align 1
  %3318 = lshr i8 %3306, 7
  %3319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3318, i8* %3319, align 1
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3320, align 1
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3321, align 1
  store %struct.Memory* %loadMem_4dcd0a, %struct.Memory** %MEMORY
  %loadMem_4dcd0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %3324 to i64*
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 5
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %3328 = bitcast %union.anon* %3327 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3328, i32 0, i32 0
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RBP.i12
  %3333 = sub i64 %3332, 61
  %3334 = load i8, i8* %CL.i
  %3335 = zext i8 %3334 to i64
  %3336 = load i64, i64* %PC.i11
  %3337 = add i64 %3336, 3
  store i64 %3337, i64* %PC.i11
  %3338 = inttoptr i64 %3333 to i8*
  store i8 %3334, i8* %3338
  store %struct.Memory* %loadMem_4dcd0d, %struct.Memory** %MEMORY
  br label %block_.L_4dcd10

block_.L_4dcd10:                                  ; preds = %block_.L_4dcd01, %block_.L_4dcca4, %block_4dcc76, %block_.L_4dcc4b, %block_4dcc1d, %block_4dcbe7, %block_4dcbbf, %entry
  %loadMem_4dcd10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 33
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 1
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %3345 = bitcast %union.anon* %3344 to %struct.anon.2*
  %AL.i9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3345, i32 0, i32 0
  %3346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3347 = getelementptr inbounds %struct.GPR, %struct.GPR* %3346, i32 0, i32 15
  %3348 = getelementptr inbounds %struct.Reg, %struct.Reg* %3347, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %3348 to i64*
  %3349 = load i64, i64* %RBP.i10
  %3350 = sub i64 %3349, 61
  %3351 = load i64, i64* %PC.i8
  %3352 = add i64 %3351, 3
  store i64 %3352, i64* %PC.i8
  %3353 = inttoptr i64 %3350 to i8*
  %3354 = load i8, i8* %3353
  store i8 %3354, i8* %AL.i9, align 1
  store %struct.Memory* %loadMem_4dcd10, %struct.Memory** %MEMORY
  %loadMem_4dcd13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 1
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %3361 = bitcast %union.anon* %3360 to %struct.anon.2*
  %AL.i7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3361, i32 0, i32 0
  %3362 = load i8, i8* %AL.i7
  %3363 = zext i8 %3362 to i64
  %3364 = load i64, i64* %PC.i6
  %3365 = add i64 %3364, 2
  store i64 %3365, i64* %PC.i6
  %3366 = and i64 1, %3363
  %3367 = trunc i64 %3366 to i8
  store i8 %3367, i8* %AL.i7, align 1
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3368, align 1
  %3369 = trunc i64 %3366 to i32
  %3370 = and i32 %3369, 255
  %3371 = call i32 @llvm.ctpop.i32(i32 %3370)
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = xor i8 %3373, 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3374, i8* %3375, align 1
  %3376 = icmp eq i8 %3367, 0
  %3377 = zext i1 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3377, i8* %3378, align 1
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3379, align 1
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3380, align 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3381, align 1
  store %struct.Memory* %loadMem_4dcd13, %struct.Memory** %MEMORY
  %loadMem_4dcd15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 33
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3384 to i64*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 1
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %3388 = bitcast %union.anon* %3387 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3388, i32 0, i32 0
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 1
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3391 to i64*
  %3392 = load i8, i8* %AL.i
  %3393 = zext i8 %3392 to i64
  %3394 = load i64, i64* %PC.i5
  %3395 = add i64 %3394, 3
  store i64 %3395, i64* %PC.i5
  %3396 = and i64 %3393, 255
  store i64 %3396, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4dcd15, %struct.Memory** %MEMORY
  %loadMem_4dcd18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 33
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 13
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RSP.i
  %3404 = load i64, i64* %PC.i4
  %3405 = add i64 %3404, 4
  store i64 %3405, i64* %PC.i4
  %3406 = add i64 80, %3403
  store i64 %3406, i64* %RSP.i, align 8
  %3407 = icmp ult i64 %3406, %3403
  %3408 = icmp ult i64 %3406, 80
  %3409 = or i1 %3407, %3408
  %3410 = zext i1 %3409 to i8
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3410, i8* %3411, align 1
  %3412 = trunc i64 %3406 to i32
  %3413 = and i32 %3412, 255
  %3414 = call i32 @llvm.ctpop.i32(i32 %3413)
  %3415 = trunc i32 %3414 to i8
  %3416 = and i8 %3415, 1
  %3417 = xor i8 %3416, 1
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3417, i8* %3418, align 1
  %3419 = xor i64 80, %3403
  %3420 = xor i64 %3419, %3406
  %3421 = lshr i64 %3420, 4
  %3422 = trunc i64 %3421 to i8
  %3423 = and i8 %3422, 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3423, i8* %3424, align 1
  %3425 = icmp eq i64 %3406, 0
  %3426 = zext i1 %3425 to i8
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3426, i8* %3427, align 1
  %3428 = lshr i64 %3406, 63
  %3429 = trunc i64 %3428 to i8
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3429, i8* %3430, align 1
  %3431 = lshr i64 %3403, 63
  %3432 = xor i64 %3428, %3431
  %3433 = add i64 %3432, %3428
  %3434 = icmp eq i64 %3433, 2
  %3435 = zext i1 %3434 to i8
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3435, i8* %3436, align 1
  store %struct.Memory* %loadMem_4dcd18, %struct.Memory** %MEMORY
  %loadMem_4dcd1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 15
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %PC.i2
  %3444 = add i64 %3443, 1
  store i64 %3444, i64* %PC.i2
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3446 = load i64, i64* %3445, align 8
  %3447 = add i64 %3446, 8
  %3448 = inttoptr i64 %3446 to i64*
  %3449 = load i64, i64* %3448
  store i64 %3449, i64* %RBP.i3, align 8
  store i64 %3447, i64* %3445, align 8
  store %struct.Memory* %loadMem_4dcd1c, %struct.Memory** %MEMORY
  %loadMem_4dcd1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 33
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %PC.i1
  %3454 = add i64 %3453, 1
  store i64 %3454, i64* %PC.i1
  %3455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3457 = load i64, i64* %3456, align 8
  %3458 = inttoptr i64 %3457 to i64*
  %3459 = load i64, i64* %3458
  store i64 %3459, i64* %3455, align 8
  %3460 = add i64 %3457, 8
  store i64 %3460, i64* %3456, align 8
  store %struct.Memory* %loadMem_4dcd1d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4dcd1d
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

define %struct.Memory* @routine_movl__esi__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb59db0___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
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

define %struct.Memory* @routine_addl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb59dd0___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0xb5a250___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl__ecx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb59df0___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_0xb5a2b0___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11903664
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb5a730___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11904816
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb5a6f0___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11904752
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_0xb5a710___r8_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %R8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_callq_.somewhere(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RCX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 5
  store i64 %10, i64* %PC
  store i64 1, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movb__cl___r9b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 19
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R9B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = trunc i64 %12 to i32
  %18 = add i32 %13, %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movb__r9b__MINUS0x3d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R9B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 61
  %15 = load i8, i8* %R9B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jg_.L_4dcd10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4dcc0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__cl___r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 17
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R8B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__r8b__MINUS0x3d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R8B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 61
  %15 = load i8, i8* %R8B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4dcd10(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0xb54ce4(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %9, align 1
  %10 = and i32 %8, 255
  %11 = call i32 @llvm.ctpop.i32(i32 %10)
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %14, i8* %15, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %16, align 1
  %17 = icmp eq i32 %8, 0
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %18, i8* %19, align 1
  %20 = lshr i32 %8, 31
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %21, i8* %22, align 1
  %23 = lshr i32 %8, 31
  %24 = xor i32 %20, %23
  %25 = add i32 %24, %23
  %26 = icmp eq i32 %25, 2
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4dcc4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x17c___rsi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RSI, align 8
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

define %struct.Memory* @routine_addq__rsi___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RSI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x64__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 100
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

define %struct.Memory* @routine_movb__cl__MINUS0x3d__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 61
  %15 = load i8, i8* %CL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4dcc68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.attack(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__edi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDI, align 8
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

define %struct.Memory* @routine_movb__dil___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 11
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %DIL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4dcca4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4dccc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4dccf2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0xb0eff0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0xb0eff0_type* @G__0xb0eff0 to i64), i64* %RAX, align 8
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

define %struct.Memory* @routine_imulq__0x17c___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 380, %15
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

define %struct.Memory* @routine_movl_0x64__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4dcd01(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_setne__cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorb__0xff___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = xor i64 255, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %CL, align 1
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
  %27 = lshr i8 %15, 7
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %27, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %29, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x3d__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 61
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
