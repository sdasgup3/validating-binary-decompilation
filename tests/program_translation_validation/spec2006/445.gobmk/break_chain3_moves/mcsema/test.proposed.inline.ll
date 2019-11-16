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
%G_0xb54ce4_type = type <{ [4 x i8] }>
%G_0xb8af28_type = type <{ [4 x i8] }>
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
@G_0xb54ce4 = global %G_0xb54ce4_type zeroinitializer
@G_0xb8af28 = global %G_0xb8af28_type zeroinitializer

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

declare %struct.Memory* @sub_413c20.chainlinks2(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f840.findlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4115b0.approxlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @break_chain3_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_468d50 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_468d50, %struct.Memory** %MEMORY
  %loadMem_468d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i459 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i459
  %27 = load i64, i64* %PC.i458
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i458
  store i64 %26, i64* %RBP.i460, align 8
  store %struct.Memory* %loadMem_468d51, %struct.Memory** %MEMORY
  %loadMem_468d54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i515 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i515
  %36 = load i64, i64* %PC.i514
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i514
  %38 = sub i64 %35, 2560
  store i64 %38, i64* %RSP.i515, align 8
  %39 = icmp ult i64 %35, 2560
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
  %49 = xor i64 2560, %35
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
  store %struct.Memory* %loadMem_468d54, %struct.Memory** %MEMORY
  %loadMem_468d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i512
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i512
  store i64 3, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_468d5b, %struct.Memory** %MEMORY
  %loadMem_468d60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i510 = bitcast %union.anon* %80 to i64*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i511 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i511
  %85 = sub i64 %84, 688
  %86 = load i64, i64* %PC.i509
  %87 = add i64 %86, 7
  store i64 %87, i64* %PC.i509
  store i64 %85, i64* %RCX.i510, align 8
  store %struct.Memory* %loadMem_468d60, %struct.Memory** %MEMORY
  %loadMem_468d67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 33
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %90 to i64*
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 7
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %EDX.i507 = bitcast %union.anon* %93 to i32*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 7
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RDX.i508 = bitcast %union.anon* %96 to i64*
  %97 = load i64, i64* %RDX.i508
  %98 = load i32, i32* %EDX.i507
  %99 = zext i32 %98 to i64
  %100 = load i64, i64* %PC.i506
  %101 = add i64 %100, 2
  store i64 %101, i64* %PC.i506
  %102 = xor i64 %99, %97
  %103 = trunc i64 %102 to i32
  %104 = and i64 %102, 4294967295
  store i64 %104, i64* %RDX.i508, align 8
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %105, align 1
  %106 = and i32 %103, 255
  %107 = call i32 @llvm.ctpop.i32(i32 %106)
  %108 = trunc i32 %107 to i8
  %109 = and i8 %108, 1
  %110 = xor i8 %109, 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %110, i8* %111, align 1
  %112 = icmp eq i32 %103, 0
  %113 = zext i1 %112 to i8
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %113, i8* %114, align 1
  %115 = lshr i32 %103, 31
  %116 = trunc i32 %115 to i8
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %116, i8* %117, align 1
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %118, align 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %119, align 1
  store %struct.Memory* %loadMem_468d67, %struct.Memory** %MEMORY
  %loadMem_468d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 33
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %122 to i64*
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %124 = getelementptr inbounds %struct.GPR, %struct.GPR* %123, i32 0, i32 17
  %125 = getelementptr inbounds %struct.Reg, %struct.Reg* %124, i32 0, i32 0
  %R8D.i505 = bitcast %union.anon* %125 to i32*
  %126 = bitcast i32* %R8D.i505 to i64*
  %127 = load i64, i64* %PC.i504
  %128 = add i64 %127, 6
  store i64 %128, i64* %PC.i504
  store i64 1600, i64* %126, align 8
  store %struct.Memory* %loadMem_468d69, %struct.Memory** %MEMORY
  %loadMem_468d6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 17
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %134 to i32*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 19
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %137 to i32*
  %138 = bitcast i32* %R9D.i to i64*
  %139 = load i32, i32* %R8D.i
  %140 = zext i32 %139 to i64
  %141 = load i64, i64* %PC.i503
  %142 = add i64 %141, 3
  store i64 %142, i64* %PC.i503
  %143 = and i64 %140, 4294967295
  store i64 %143, i64* %138, align 8
  store %struct.Memory* %loadMem_468d6f, %struct.Memory** %MEMORY
  %loadMem_468d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 21
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %R10.i502 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i501
  %154 = sub i64 %153, 2512
  %155 = load i64, i64* %PC.i500
  %156 = add i64 %155, 7
  store i64 %156, i64* %PC.i500
  store i64 %154, i64* %R10.i502, align 8
  store %struct.Memory* %loadMem_468d72, %struct.Memory** %MEMORY
  %loadMem_468d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 33
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %159 to i64*
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %161 = getelementptr inbounds %struct.GPR, %struct.GPR* %160, i32 0, i32 11
  %162 = getelementptr inbounds %struct.Reg, %struct.Reg* %161, i32 0, i32 0
  %EDI.i498 = bitcast %union.anon* %162 to i32*
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 15
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %165 to i64*
  %166 = load i64, i64* %RBP.i499
  %167 = sub i64 %166, 4
  %168 = load i32, i32* %EDI.i498
  %169 = zext i32 %168 to i64
  %170 = load i64, i64* %PC.i497
  %171 = add i64 %170, 3
  store i64 %171, i64* %PC.i497
  %172 = inttoptr i64 %167 to i32*
  store i32 %168, i32* %172
  store %struct.Memory* %loadMem_468d79, %struct.Memory** %MEMORY
  %loadMem_468d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %174 = getelementptr inbounds %struct.GPR, %struct.GPR* %173, i32 0, i32 33
  %175 = getelementptr inbounds %struct.Reg, %struct.Reg* %174, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %175 to i64*
  %176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %177 = getelementptr inbounds %struct.GPR, %struct.GPR* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.Reg, %struct.Reg* %177, i32 0, i32 0
  %RSI.i495 = bitcast %union.anon* %178 to i64*
  %179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %180 = getelementptr inbounds %struct.GPR, %struct.GPR* %179, i32 0, i32 15
  %181 = getelementptr inbounds %struct.Reg, %struct.Reg* %180, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %181 to i64*
  %182 = load i64, i64* %RBP.i496
  %183 = sub i64 %182, 16
  %184 = load i64, i64* %RSI.i495
  %185 = load i64, i64* %PC.i494
  %186 = add i64 %185, 4
  store i64 %186, i64* %PC.i494
  %187 = inttoptr i64 %183 to i64*
  store i64 %184, i64* %187
  store %struct.Memory* %loadMem_468d7c, %struct.Memory** %MEMORY
  %loadMem_468d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 9
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RSI.i492 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 15
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %RBP.i493
  %198 = sub i64 %197, 4
  %199 = load i64, i64* %PC.i491
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC.i491
  %201 = inttoptr i64 %198 to i32*
  %202 = load i32, i32* %201
  %203 = sext i32 %202 to i64
  store i64 %203, i64* %RSI.i492, align 8
  store %struct.Memory* %loadMem_468d80, %struct.Memory** %MEMORY
  %loadMem_468d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 9
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RSI.i489 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 11
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RDI.i490 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RSI.i489
  %214 = add i64 %213, 12099168
  %215 = load i64, i64* %PC.i488
  %216 = add i64 %215, 8
  store i64 %216, i64* %PC.i488
  %217 = inttoptr i64 %214 to i8*
  %218 = load i8, i8* %217
  %219 = zext i8 %218 to i64
  store i64 %219, i64* %RDI.i490, align 8
  store %struct.Memory* %loadMem_468d84, %struct.Memory** %MEMORY
  %loadMem_468d8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 33
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 11
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %EDI.i486 = bitcast %union.anon* %225 to i32*
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 15
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %RBP.i487
  %230 = sub i64 %229, 20
  %231 = load i32, i32* %EDI.i486
  %232 = zext i32 %231 to i64
  %233 = load i64, i64* %PC.i485
  %234 = add i64 %233, 3
  store i64 %234, i64* %PC.i485
  %235 = inttoptr i64 %230 to i32*
  store i32 %231, i32* %235
  store %struct.Memory* %loadMem_468d8c, %struct.Memory** %MEMORY
  %loadMem_468d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 33
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %EAX.i483 = bitcast %union.anon* %241 to i32*
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 11
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %RDI.i484 = bitcast %union.anon* %244 to i64*
  %245 = load i32, i32* %EAX.i483
  %246 = zext i32 %245 to i64
  %247 = load i64, i64* %PC.i482
  %248 = add i64 %247, 2
  store i64 %248, i64* %PC.i482
  %249 = and i64 %246, 4294967295
  store i64 %249, i64* %RDI.i484, align 8
  store %struct.Memory* %loadMem_468d8f, %struct.Memory** %MEMORY
  %loadMem_468d91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 11
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RDI.i480 = bitcast %union.anon* %255 to i64*
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 15
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %RDI.i480
  %260 = load i64, i64* %RBP.i481
  %261 = sub i64 %260, 20
  %262 = load i64, i64* %PC.i479
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC.i479
  %264 = trunc i64 %259 to i32
  %265 = inttoptr i64 %261 to i32*
  %266 = load i32, i32* %265
  %267 = sub i32 %264, %266
  %268 = zext i32 %267 to i64
  store i64 %268, i64* %RDI.i480, align 8
  %269 = icmp ult i32 %264, %266
  %270 = zext i1 %269 to i8
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %270, i8* %271, align 1
  %272 = and i32 %267, 255
  %273 = call i32 @llvm.ctpop.i32(i32 %272)
  %274 = trunc i32 %273 to i8
  %275 = and i8 %274, 1
  %276 = xor i8 %275, 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %276, i8* %277, align 1
  %278 = xor i32 %266, %264
  %279 = xor i32 %278, %267
  %280 = lshr i32 %279, 4
  %281 = trunc i32 %280 to i8
  %282 = and i8 %281, 1
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %282, i8* %283, align 1
  %284 = icmp eq i32 %267, 0
  %285 = zext i1 %284 to i8
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %285, i8* %286, align 1
  %287 = lshr i32 %267, 31
  %288 = trunc i32 %287 to i8
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %288, i8* %289, align 1
  %290 = lshr i32 %264, 31
  %291 = lshr i32 %266, 31
  %292 = xor i32 %291, %290
  %293 = xor i32 %287, %290
  %294 = add i32 %293, %292
  %295 = icmp eq i32 %294, 2
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %296, i8* %297, align 1
  store %struct.Memory* %loadMem_468d91, %struct.Memory** %MEMORY
  %loadMem_468d94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 11
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %303 to i32*
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 15
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %306 to i64*
  %307 = load i64, i64* %RBP.i478
  %308 = sub i64 %307, 24
  %309 = load i32, i32* %EDI.i
  %310 = zext i32 %309 to i64
  %311 = load i64, i64* %PC.i477
  %312 = add i64 %311, 3
  store i64 %312, i64* %PC.i477
  %313 = inttoptr i64 %308 to i32*
  store i32 %309, i32* %313
  store %struct.Memory* %loadMem_468d94, %struct.Memory** %MEMORY
  %loadMem_468d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 33
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RBP.i476
  %321 = sub i64 %320, 36
  %322 = load i64, i64* %PC.i475
  %323 = add i64 %322, 7
  store i64 %323, i64* %PC.i475
  %324 = inttoptr i64 %321 to i32*
  store i32 0, i32* %324
  store %struct.Memory* %loadMem_468d97, %struct.Memory** %MEMORY
  %loadMem_468d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 11
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RDI.i474 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 21
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %R10.i = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %R10.i
  %335 = load i64, i64* %PC.i473
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC.i473
  store i64 %334, i64* %RDI.i474, align 8
  store %struct.Memory* %loadMem_468d9e, %struct.Memory** %MEMORY
  %loadMem_468da1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %339 to i64*
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 7
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %EDX.i471 = bitcast %union.anon* %342 to i32*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 9
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %RSI.i472 = bitcast %union.anon* %345 to i64*
  %346 = load i32, i32* %EDX.i471
  %347 = zext i32 %346 to i64
  %348 = load i64, i64* %PC.i470
  %349 = add i64 %348, 2
  store i64 %349, i64* %PC.i470
  %350 = and i64 %347, 4294967295
  store i64 %350, i64* %RSI.i472, align 8
  store %struct.Memory* %loadMem_468da1, %struct.Memory** %MEMORY
  %loadMem_468da3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RDX.i469 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 19
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %R9.i = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %R9.i
  %361 = load i64, i64* %PC.i468
  %362 = add i64 %361, 3
  store i64 %362, i64* %PC.i468
  store i64 %360, i64* %RDX.i469, align 8
  store %struct.Memory* %loadMem_468da3, %struct.Memory** %MEMORY
  %loadMem_468da6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 5
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %368 to i64*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 15
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RBP.i467 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %RBP.i467
  %373 = sub i64 %372, 2544
  %374 = load i64, i64* %RCX.i466
  %375 = load i64, i64* %PC.i465
  %376 = add i64 %375, 7
  store i64 %376, i64* %PC.i465
  %377 = inttoptr i64 %373 to i64*
  store i64 %374, i64* %377
  store %struct.Memory* %loadMem_468da6, %struct.Memory** %MEMORY
  %loadMem_468dad = load %struct.Memory*, %struct.Memory** %MEMORY
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 33
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %EAX.i463 = bitcast %union.anon* %383 to i32*
  %384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %385 = getelementptr inbounds %struct.GPR, %struct.GPR* %384, i32 0, i32 15
  %386 = getelementptr inbounds %struct.Reg, %struct.Reg* %385, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %386 to i64*
  %387 = load i64, i64* %RBP.i464
  %388 = sub i64 %387, 2548
  %389 = load i32, i32* %EAX.i463
  %390 = zext i32 %389 to i64
  %391 = load i64, i64* %PC.i462
  %392 = add i64 %391, 6
  store i64 %392, i64* %PC.i462
  %393 = inttoptr i64 %388 to i32*
  store i32 %389, i32* %393
  store %struct.Memory* %loadMem_468dad, %struct.Memory** %MEMORY
  %loadMem1_468db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 33
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %PC.i461
  %398 = add i64 %397, -425283
  %399 = load i64, i64* %PC.i461
  %400 = add i64 %399, 5
  %401 = load i64, i64* %PC.i461
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC.i461
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %404 = load i64, i64* %403, align 8
  %405 = add i64 %404, -8
  %406 = inttoptr i64 %405 to i64*
  store i64 %400, i64* %406
  store i64 %405, i64* %403, align 8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %398, i64* %407, align 8
  store %struct.Memory* %loadMem1_468db3, %struct.Memory** %MEMORY
  %loadMem2_468db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468db3 = load i64, i64* %3
  %408 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_468db3)
  store %struct.Memory* %408, %struct.Memory** %MEMORY
  %loadMem_468db8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 11
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RDI.i456 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 15
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %417 to i64*
  %418 = load i64, i64* %RBP.i457
  %419 = sub i64 %418, 4
  %420 = load i64, i64* %PC.i455
  %421 = add i64 %420, 3
  store i64 %421, i64* %PC.i455
  %422 = inttoptr i64 %419 to i32*
  %423 = load i32, i32* %422
  %424 = zext i32 %423 to i64
  store i64 %424, i64* %RDI.i456, align 8
  store %struct.Memory* %loadMem_468db8, %struct.Memory** %MEMORY
  %loadMem_468dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %426 = getelementptr inbounds %struct.GPR, %struct.GPR* %425, i32 0, i32 33
  %427 = getelementptr inbounds %struct.Reg, %struct.Reg* %426, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %427 to i64*
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %429 = getelementptr inbounds %struct.GPR, %struct.GPR* %428, i32 0, i32 9
  %430 = getelementptr inbounds %struct.Reg, %struct.Reg* %429, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %430 to i64*
  %431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %432 = getelementptr inbounds %struct.GPR, %struct.GPR* %431, i32 0, i32 15
  %433 = getelementptr inbounds %struct.Reg, %struct.Reg* %432, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %433 to i64*
  %434 = load i64, i64* %RBP.i454
  %435 = sub i64 %434, 2544
  %436 = load i64, i64* %PC.i452
  %437 = add i64 %436, 7
  store i64 %437, i64* %PC.i452
  %438 = inttoptr i64 %435 to i64*
  %439 = load i64, i64* %438
  store i64 %439, i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_468dbb, %struct.Memory** %MEMORY
  %loadMem_468dc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 7
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i451
  %450 = sub i64 %449, 2548
  %451 = load i64, i64* %PC.i449
  %452 = add i64 %451, 6
  store i64 %452, i64* %PC.i449
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RDX.i450, align 8
  store %struct.Memory* %loadMem_468dc2, %struct.Memory** %MEMORY
  %loadMem1_468dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %PC.i448
  %460 = add i64 %459, -348584
  %461 = load i64, i64* %PC.i448
  %462 = add i64 %461, 5
  %463 = load i64, i64* %PC.i448
  %464 = add i64 %463, 5
  store i64 %464, i64* %PC.i448
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = add i64 %466, -8
  %468 = inttoptr i64 %467 to i64*
  store i64 %462, i64* %468
  store i64 %467, i64* %465, align 8
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %460, i64* %469, align 8
  store %struct.Memory* %loadMem1_468dc8, %struct.Memory** %MEMORY
  %loadMem2_468dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468dc8 = load i64, i64* %3
  %call2_468dc8 = call %struct.Memory* @sub_413c20.chainlinks2(%struct.State* %0, i64 %loadPC_468dc8, %struct.Memory* %loadMem2_468dc8)
  store %struct.Memory* %call2_468dc8, %struct.Memory** %MEMORY
  %loadMem_468dcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 1
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %EAX.i446 = bitcast %union.anon* %475 to i32*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 15
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %478 to i64*
  %479 = load i64, i64* %RBP.i447
  %480 = sub i64 %479, 48
  %481 = load i32, i32* %EAX.i446
  %482 = zext i32 %481 to i64
  %483 = load i64, i64* %PC.i445
  %484 = add i64 %483, 3
  store i64 %484, i64* %PC.i445
  %485 = inttoptr i64 %480 to i32*
  store i32 %481, i32* %485
  store %struct.Memory* %loadMem_468dcd, %struct.Memory** %MEMORY
  %loadMem_468dd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 33
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i444
  %493 = sub i64 %492, 28
  %494 = load i64, i64* %PC.i443
  %495 = add i64 %494, 7
  store i64 %495, i64* %PC.i443
  %496 = inttoptr i64 %493 to i32*
  store i32 0, i32* %496
  store %struct.Memory* %loadMem_468dd0, %struct.Memory** %MEMORY
  br label %block_.L_468dd7

block_.L_468dd7:                                  ; preds = %block_.L_46903f, %entry
  %loadMem_468dd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %498 = getelementptr inbounds %struct.GPR, %struct.GPR* %497, i32 0, i32 33
  %499 = getelementptr inbounds %struct.Reg, %struct.Reg* %498, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %499 to i64*
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 1
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %RAX.i441 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 15
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %505 to i64*
  %506 = load i64, i64* %RBP.i442
  %507 = sub i64 %506, 28
  %508 = load i64, i64* %PC.i440
  %509 = add i64 %508, 3
  store i64 %509, i64* %PC.i440
  %510 = inttoptr i64 %507 to i32*
  %511 = load i32, i32* %510
  %512 = zext i32 %511 to i64
  store i64 %512, i64* %RAX.i441, align 8
  store %struct.Memory* %loadMem_468dd7, %struct.Memory** %MEMORY
  %loadMem_468dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %EAX.i438 = bitcast %union.anon* %518 to i32*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RBP.i439 = bitcast %union.anon* %521 to i64*
  %522 = load i32, i32* %EAX.i438
  %523 = zext i32 %522 to i64
  %524 = load i64, i64* %RBP.i439
  %525 = sub i64 %524, 48
  %526 = load i64, i64* %PC.i437
  %527 = add i64 %526, 3
  store i64 %527, i64* %PC.i437
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528
  %530 = sub i32 %522, %529
  %531 = icmp ult i32 %522, %529
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %532, i8* %533, align 1
  %534 = and i32 %530, 255
  %535 = call i32 @llvm.ctpop.i32(i32 %534)
  %536 = trunc i32 %535 to i8
  %537 = and i8 %536, 1
  %538 = xor i8 %537, 1
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %538, i8* %539, align 1
  %540 = xor i32 %529, %522
  %541 = xor i32 %540, %530
  %542 = lshr i32 %541, 4
  %543 = trunc i32 %542 to i8
  %544 = and i8 %543, 1
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %544, i8* %545, align 1
  %546 = icmp eq i32 %530, 0
  %547 = zext i1 %546 to i8
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %547, i8* %548, align 1
  %549 = lshr i32 %530, 31
  %550 = trunc i32 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %550, i8* %551, align 1
  %552 = lshr i32 %522, 31
  %553 = lshr i32 %529, 31
  %554 = xor i32 %553, %552
  %555 = xor i32 %549, %552
  %556 = add i32 %555, %554
  %557 = icmp eq i32 %556, 2
  %558 = zext i1 %557 to i8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %558, i8* %559, align 1
  store %struct.Memory* %loadMem_468dda, %struct.Memory** %MEMORY
  %loadMem_468ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %562 to i64*
  %563 = load i64, i64* %PC.i436
  %564 = add i64 %563, 624
  %565 = load i64, i64* %PC.i436
  %566 = add i64 %565, 6
  %567 = load i64, i64* %PC.i436
  %568 = add i64 %567, 6
  store i64 %568, i64* %PC.i436
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %570 = load i8, i8* %569, align 1
  %571 = icmp ne i8 %570, 0
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %573 = load i8, i8* %572, align 1
  %574 = icmp ne i8 %573, 0
  %575 = xor i1 %571, %574
  %576 = xor i1 %575, true
  %577 = zext i1 %576 to i8
  store i8 %577, i8* %BRANCH_TAKEN, align 1
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %579 = select i1 %575, i64 %566, i64 %564
  store i64 %579, i64* %578, align 8
  store %struct.Memory* %loadMem_468ddd, %struct.Memory** %MEMORY
  %loadBr_468ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ddd = icmp eq i8 %loadBr_468ddd, 1
  br i1 %cmpBr_468ddd, label %block_.L_46904d, label %block_468de3

block_468de3:                                     ; preds = %block_.L_468dd7
  %loadMem_468de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 33
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %582 to i64*
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %584 = getelementptr inbounds %struct.GPR, %struct.GPR* %583, i32 0, i32 9
  %585 = getelementptr inbounds %struct.Reg, %struct.Reg* %584, i32 0, i32 0
  %RSI.i435 = bitcast %union.anon* %585 to i64*
  %586 = load i64, i64* %PC.i434
  %587 = add i64 %586, 5
  store i64 %587, i64* %PC.i434
  store i64 3, i64* %RSI.i435, align 8
  store %struct.Memory* %loadMem_468de3, %struct.Memory** %MEMORY
  %loadMem_468de8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 7
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RBP.i433
  %598 = sub i64 %597, 700
  %599 = load i64, i64* %PC.i431
  %600 = add i64 %599, 7
  store i64 %600, i64* %PC.i431
  store i64 %598, i64* %RDX.i432, align 8
  store %struct.Memory* %loadMem_468de8, %struct.Memory** %MEMORY
  %loadMem_468def = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 15
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RBP.i430 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RBP.i430
  %608 = sub i64 %607, 2516
  %609 = load i64, i64* %PC.i429
  %610 = add i64 %609, 10
  store i64 %610, i64* %PC.i429
  %611 = inttoptr i64 %608 to i32*
  store i32 0, i32* %611
  store %struct.Memory* %loadMem_468def, %struct.Memory** %MEMORY
  %loadMem_468df9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 15
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %617 to i64*
  %618 = load i64, i64* %RBP.i428
  %619 = sub i64 %618, 2520
  %620 = load i64, i64* %PC.i427
  %621 = add i64 %620, 10
  store i64 %621, i64* %PC.i427
  %622 = inttoptr i64 %619 to i32*
  store i32 0, i32* %622
  store %struct.Memory* %loadMem_468df9, %struct.Memory** %MEMORY
  %loadMem_468e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 33
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %625 to i64*
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 15
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %628 to i64*
  %629 = load i64, i64* %RBP.i426
  %630 = sub i64 %629, 2524
  %631 = load i64, i64* %PC.i425
  %632 = add i64 %631, 10
  store i64 %632, i64* %PC.i425
  %633 = inttoptr i64 %630 to i32*
  store i32 0, i32* %633
  store %struct.Memory* %loadMem_468e03, %struct.Memory** %MEMORY
  %loadMem_468e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 1
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 15
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RBP.i424 = bitcast %union.anon* %642 to i64*
  %643 = load i64, i64* %RBP.i424
  %644 = sub i64 %643, 28
  %645 = load i64, i64* %PC.i422
  %646 = add i64 %645, 4
  store i64 %646, i64* %PC.i422
  %647 = inttoptr i64 %644 to i32*
  %648 = load i32, i32* %647
  %649 = sext i32 %648 to i64
  store i64 %649, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_468e0d, %struct.Memory** %MEMORY
  %loadMem_468e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 33
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %652 to i64*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 1
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RAX.i419 = bitcast %union.anon* %655 to i64*
  %656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %657 = getelementptr inbounds %struct.GPR, %struct.GPR* %656, i32 0, i32 5
  %658 = getelementptr inbounds %struct.Reg, %struct.Reg* %657, i32 0, i32 0
  %RCX.i420 = bitcast %union.anon* %658 to i64*
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 15
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %RBP.i421 = bitcast %union.anon* %661 to i64*
  %662 = load i64, i64* %RBP.i421
  %663 = load i64, i64* %RAX.i419
  %664 = mul i64 %663, 4
  %665 = add i64 %662, -688
  %666 = add i64 %665, %664
  %667 = load i64, i64* %PC.i418
  %668 = add i64 %667, 7
  store i64 %668, i64* %PC.i418
  %669 = inttoptr i64 %666 to i32*
  %670 = load i32, i32* %669
  %671 = zext i32 %670 to i64
  store i64 %671, i64* %RCX.i420, align 8
  store %struct.Memory* %loadMem_468e11, %struct.Memory** %MEMORY
  %loadMem_468e18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 5
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %ECX.i416 = bitcast %union.anon* %677 to i32*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i417 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RBP.i417
  %682 = sub i64 %681, 44
  %683 = load i32, i32* %ECX.i416
  %684 = zext i32 %683 to i64
  %685 = load i64, i64* %PC.i415
  %686 = add i64 %685, 3
  store i64 %686, i64* %PC.i415
  %687 = inttoptr i64 %682 to i32*
  store i32 %683, i32* %687
  store %struct.Memory* %loadMem_468e18, %struct.Memory** %MEMORY
  %loadMem_468e1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 11
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RDI.i413 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i414
  %698 = sub i64 %697, 44
  %699 = load i64, i64* %PC.i412
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC.i412
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RDI.i413, align 8
  store %struct.Memory* %loadMem_468e1b, %struct.Memory** %MEMORY
  %loadMem1_468e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %706 to i64*
  %707 = load i64, i64* %PC.i411
  %708 = add i64 %707, -366046
  %709 = load i64, i64* %PC.i411
  %710 = add i64 %709, 5
  %711 = load i64, i64* %PC.i411
  %712 = add i64 %711, 5
  store i64 %712, i64* %PC.i411
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %714 = load i64, i64* %713, align 8
  %715 = add i64 %714, -8
  %716 = inttoptr i64 %715 to i64*
  store i64 %710, i64* %716
  store i64 %715, i64* %713, align 8
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %708, i64* %717, align 8
  store %struct.Memory* %loadMem1_468e1e, %struct.Memory** %MEMORY
  %loadMem2_468e1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468e1e = load i64, i64* %3
  %call2_468e1e = call %struct.Memory* @sub_40f840.findlib(%struct.State* %0, i64 %loadPC_468e1e, %struct.Memory* %loadMem2_468e1e)
  store %struct.Memory* %call2_468e1e, %struct.Memory** %MEMORY
  %loadMem_468e23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %719 = getelementptr inbounds %struct.GPR, %struct.GPR* %718, i32 0, i32 33
  %720 = getelementptr inbounds %struct.Reg, %struct.Reg* %719, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %720 to i64*
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 7
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %723 to i64*
  %724 = load i64, i64* %PC.i409
  %725 = add i64 %724, 5
  store i64 %725, i64* %PC.i409
  store i64 4, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_468e23, %struct.Memory** %MEMORY
  %loadMem_468e28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 5
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %ECX.i407 = bitcast %union.anon* %731 to i32*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 5
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RCX.i408
  %736 = load i32, i32* %ECX.i407
  %737 = zext i32 %736 to i64
  %738 = load i64, i64* %PC.i406
  %739 = add i64 %738, 2
  store i64 %739, i64* %PC.i406
  %740 = xor i64 %737, %735
  %741 = trunc i64 %740 to i32
  %742 = and i64 %740, 4294967295
  store i64 %742, i64* %RCX.i408, align 8
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %743, align 1
  %744 = and i32 %741, 255
  %745 = call i32 @llvm.ctpop.i32(i32 %744)
  %746 = trunc i32 %745 to i8
  %747 = and i8 %746, 1
  %748 = xor i8 %747, 1
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %748, i8* %749, align 1
  %750 = icmp eq i32 %741, 0
  %751 = zext i1 %750 to i8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %751, i8* %752, align 1
  %753 = lshr i32 %741, 31
  %754 = trunc i32 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %754, i8* %755, align 1
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %756, align 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %757, align 1
  store %struct.Memory* %loadMem_468e28, %struct.Memory** %MEMORY
  %loadMem_468e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 11
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RDI.i404 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 15
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %766 to i64*
  %767 = load i64, i64* %RBP.i405
  %768 = sub i64 %767, 700
  %769 = load i64, i64* %PC.i403
  %770 = add i64 %769, 6
  store i64 %770, i64* %PC.i403
  %771 = inttoptr i64 %768 to i32*
  %772 = load i32, i32* %771
  %773 = zext i32 %772 to i64
  store i64 %773, i64* %RDI.i404, align 8
  store %struct.Memory* %loadMem_468e2a, %struct.Memory** %MEMORY
  %loadMem_468e30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 9
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RSI.i401 = bitcast %union.anon* %779 to i64*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 15
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %782 to i64*
  %783 = load i64, i64* %RBP.i402
  %784 = sub i64 %783, 24
  %785 = load i64, i64* %PC.i400
  %786 = add i64 %785, 3
  store i64 %786, i64* %PC.i400
  %787 = inttoptr i64 %784 to i32*
  %788 = load i32, i32* %787
  %789 = zext i32 %788 to i64
  store i64 %789, i64* %RSI.i401, align 8
  store %struct.Memory* %loadMem_468e30, %struct.Memory** %MEMORY
  %loadMem_468e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %EAX.i398 = bitcast %union.anon* %795 to i32*
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 15
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %798 to i64*
  %799 = load i64, i64* %RBP.i399
  %800 = sub i64 %799, 2552
  %801 = load i32, i32* %EAX.i398
  %802 = zext i32 %801 to i64
  %803 = load i64, i64* %PC.i397
  %804 = add i64 %803, 6
  store i64 %804, i64* %PC.i397
  %805 = inttoptr i64 %800 to i32*
  store i32 %801, i32* %805
  store %struct.Memory* %loadMem_468e33, %struct.Memory** %MEMORY
  %loadMem1_468e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 33
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %PC.i396
  %810 = add i64 %809, -358537
  %811 = load i64, i64* %PC.i396
  %812 = add i64 %811, 5
  %813 = load i64, i64* %PC.i396
  %814 = add i64 %813, 5
  store i64 %814, i64* %PC.i396
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %816 = load i64, i64* %815, align 8
  %817 = add i64 %816, -8
  %818 = inttoptr i64 %817 to i64*
  store i64 %812, i64* %818
  store i64 %817, i64* %815, align 8
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %810, i64* %819, align 8
  store %struct.Memory* %loadMem1_468e39, %struct.Memory** %MEMORY
  %loadMem2_468e39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468e39 = load i64, i64* %3
  %call2_468e39 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_468e39, %struct.Memory* %loadMem2_468e39)
  store %struct.Memory* %call2_468e39, %struct.Memory** %MEMORY
  %loadMem_468e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %821 = getelementptr inbounds %struct.GPR, %struct.GPR* %820, i32 0, i32 33
  %822 = getelementptr inbounds %struct.Reg, %struct.Reg* %821, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %822 to i64*
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %824 = getelementptr inbounds %struct.GPR, %struct.GPR* %823, i32 0, i32 7
  %825 = getelementptr inbounds %struct.Reg, %struct.Reg* %824, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %825 to i64*
  %826 = load i64, i64* %PC.i394
  %827 = add i64 %826, 5
  store i64 %827, i64* %PC.i394
  store i64 4, i64* %RDX.i395, align 8
  store %struct.Memory* %loadMem_468e3e, %struct.Memory** %MEMORY
  %loadMem_468e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 33
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 9
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %ESI.i392 = bitcast %union.anon* %833 to i32*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 9
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RSI.i393
  %838 = load i32, i32* %ESI.i392
  %839 = zext i32 %838 to i64
  %840 = load i64, i64* %PC.i391
  %841 = add i64 %840, 2
  store i64 %841, i64* %PC.i391
  %842 = xor i64 %839, %837
  %843 = trunc i64 %842 to i32
  %844 = and i64 %842, 4294967295
  store i64 %844, i64* %RSI.i393, align 8
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %845, align 1
  %846 = and i32 %843, 255
  %847 = call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %850, i8* %851, align 1
  %852 = icmp eq i32 %843, 0
  %853 = zext i1 %852 to i8
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %853, i8* %854, align 1
  %855 = lshr i32 %843, 31
  %856 = trunc i32 %855 to i8
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %856, i8* %857, align 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %858, align 1
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %859, align 1
  store %struct.Memory* %loadMem_468e43, %struct.Memory** %MEMORY
  %loadMem_468e45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 33
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %862 to i64*
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 9
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %ESI.i389 = bitcast %union.anon* %865 to i32*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 5
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %868 to i64*
  %869 = load i32, i32* %ESI.i389
  %870 = zext i32 %869 to i64
  %871 = load i64, i64* %PC.i388
  %872 = add i64 %871, 2
  store i64 %872, i64* %PC.i388
  %873 = and i64 %870, 4294967295
  store i64 %873, i64* %RCX.i390, align 8
  store %struct.Memory* %loadMem_468e45, %struct.Memory** %MEMORY
  %loadMem_468e47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %EAX.i386 = bitcast %union.anon* %879 to i32*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 15
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RBP.i387
  %884 = sub i64 %883, 2516
  %885 = load i32, i32* %EAX.i386
  %886 = zext i32 %885 to i64
  %887 = load i64, i64* %PC.i385
  %888 = add i64 %887, 6
  store i64 %888, i64* %PC.i385
  %889 = inttoptr i64 %884 to i32*
  store i32 %885, i32* %889
  store %struct.Memory* %loadMem_468e47, %struct.Memory** %MEMORY
  %loadMem_468e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 33
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %892 to i64*
  %893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %894 = getelementptr inbounds %struct.GPR, %struct.GPR* %893, i32 0, i32 11
  %895 = getelementptr inbounds %struct.Reg, %struct.Reg* %894, i32 0, i32 0
  %RDI.i383 = bitcast %union.anon* %895 to i64*
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %897 = getelementptr inbounds %struct.GPR, %struct.GPR* %896, i32 0, i32 15
  %898 = getelementptr inbounds %struct.Reg, %struct.Reg* %897, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %898 to i64*
  %899 = load i64, i64* %RBP.i384
  %900 = sub i64 %899, 696
  %901 = load i64, i64* %PC.i382
  %902 = add i64 %901, 6
  store i64 %902, i64* %PC.i382
  %903 = inttoptr i64 %900 to i32*
  %904 = load i32, i32* %903
  %905 = zext i32 %904 to i64
  store i64 %905, i64* %RDI.i383, align 8
  store %struct.Memory* %loadMem_468e4d, %struct.Memory** %MEMORY
  %loadMem_468e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %907 = getelementptr inbounds %struct.GPR, %struct.GPR* %906, i32 0, i32 33
  %908 = getelementptr inbounds %struct.Reg, %struct.Reg* %907, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %908 to i64*
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %910 = getelementptr inbounds %struct.GPR, %struct.GPR* %909, i32 0, i32 9
  %911 = getelementptr inbounds %struct.Reg, %struct.Reg* %910, i32 0, i32 0
  %RSI.i380 = bitcast %union.anon* %911 to i64*
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 15
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %914 to i64*
  %915 = load i64, i64* %RBP.i381
  %916 = sub i64 %915, 24
  %917 = load i64, i64* %PC.i379
  %918 = add i64 %917, 3
  store i64 %918, i64* %PC.i379
  %919 = inttoptr i64 %916 to i32*
  %920 = load i32, i32* %919
  %921 = zext i32 %920 to i64
  store i64 %921, i64* %RSI.i380, align 8
  store %struct.Memory* %loadMem_468e53, %struct.Memory** %MEMORY
  %loadMem1_468e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 33
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %PC.i378
  %926 = add i64 %925, -358566
  %927 = load i64, i64* %PC.i378
  %928 = add i64 %927, 5
  %929 = load i64, i64* %PC.i378
  %930 = add i64 %929, 5
  store i64 %930, i64* %PC.i378
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %932 = load i64, i64* %931, align 8
  %933 = add i64 %932, -8
  %934 = inttoptr i64 %933 to i64*
  store i64 %928, i64* %934
  store i64 %933, i64* %931, align 8
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %926, i64* %935, align 8
  store %struct.Memory* %loadMem1_468e56, %struct.Memory** %MEMORY
  %loadMem2_468e56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468e56 = load i64, i64* %3
  %call2_468e56 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_468e56, %struct.Memory* %loadMem2_468e56)
  store %struct.Memory* %call2_468e56, %struct.Memory** %MEMORY
  %loadMem_468e5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %941 to i32*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 15
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RBP.i377
  %946 = sub i64 %945, 2520
  %947 = load i32, i32* %EAX.i376
  %948 = zext i32 %947 to i64
  %949 = load i64, i64* %PC.i375
  %950 = add i64 %949, 6
  store i64 %950, i64* %PC.i375
  %951 = inttoptr i64 %946 to i32*
  store i32 %947, i32* %951
  store %struct.Memory* %loadMem_468e5b, %struct.Memory** %MEMORY
  %loadMem_468e61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 33
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 15
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RBP.i374
  %959 = sub i64 %958, 2516
  %960 = load i64, i64* %PC.i373
  %961 = add i64 %960, 7
  store i64 %961, i64* %PC.i373
  %962 = inttoptr i64 %959 to i32*
  %963 = load i32, i32* %962
  %964 = sub i32 %963, 4
  %965 = icmp ult i32 %963, 4
  %966 = zext i1 %965 to i8
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %966, i8* %967, align 1
  %968 = and i32 %964, 255
  %969 = call i32 @llvm.ctpop.i32(i32 %968)
  %970 = trunc i32 %969 to i8
  %971 = and i8 %970, 1
  %972 = xor i8 %971, 1
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %972, i8* %973, align 1
  %974 = xor i32 %963, 4
  %975 = xor i32 %974, %964
  %976 = lshr i32 %975, 4
  %977 = trunc i32 %976 to i8
  %978 = and i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %978, i8* %979, align 1
  %980 = icmp eq i32 %964, 0
  %981 = zext i1 %980 to i8
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %981, i8* %982, align 1
  %983 = lshr i32 %964, 31
  %984 = trunc i32 %983 to i8
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %984, i8* %985, align 1
  %986 = lshr i32 %963, 31
  %987 = xor i32 %983, %986
  %988 = add i32 %987, %986
  %989 = icmp eq i32 %988, 2
  %990 = zext i1 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %990, i8* %991, align 1
  store %struct.Memory* %loadMem_468e61, %struct.Memory** %MEMORY
  %loadMem_468e68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 33
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %994 to i64*
  %995 = load i64, i64* %PC.i372
  %996 = add i64 %995, 24
  %997 = load i64, i64* %PC.i372
  %998 = add i64 %997, 6
  %999 = load i64, i64* %PC.i372
  %1000 = add i64 %999, 6
  store i64 %1000, i64* %PC.i372
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1002 = load i8, i8* %1001, align 1
  %1003 = icmp ne i8 %1002, 0
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1005 = load i8, i8* %1004, align 1
  %1006 = icmp ne i8 %1005, 0
  %1007 = xor i1 %1003, %1006
  %1008 = zext i1 %1007 to i8
  store i8 %1008, i8* %BRANCH_TAKEN, align 1
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1010 = select i1 %1007, i64 %996, i64 %998
  store i64 %1010, i64* %1009, align 8
  store %struct.Memory* %loadMem_468e68, %struct.Memory** %MEMORY
  %loadBr_468e68 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468e68 = icmp eq i8 %loadBr_468e68, 1
  br i1 %cmpBr_468e68, label %block_.L_468e80, label %block_468e6e

block_468e6e:                                     ; preds = %block_468de3
  %loadMem_468e6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 33
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1013 to i64*
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1015 = getelementptr inbounds %struct.GPR, %struct.GPR* %1014, i32 0, i32 15
  %1016 = getelementptr inbounds %struct.Reg, %struct.Reg* %1015, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %1016 to i64*
  %1017 = load i64, i64* %RBP.i371
  %1018 = sub i64 %1017, 2520
  %1019 = load i64, i64* %PC.i370
  %1020 = add i64 %1019, 7
  store i64 %1020, i64* %PC.i370
  %1021 = inttoptr i64 %1018 to i32*
  %1022 = load i32, i32* %1021
  %1023 = sub i32 %1022, 4
  %1024 = icmp ult i32 %1022, 4
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1025, i8* %1026, align 1
  %1027 = and i32 %1023, 255
  %1028 = call i32 @llvm.ctpop.i32(i32 %1027)
  %1029 = trunc i32 %1028 to i8
  %1030 = and i8 %1029, 1
  %1031 = xor i8 %1030, 1
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1031, i8* %1032, align 1
  %1033 = xor i32 %1022, 4
  %1034 = xor i32 %1033, %1023
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1
  %1039 = icmp eq i32 %1023, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1
  %1042 = lshr i32 %1023, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1
  %1045 = lshr i32 %1022, 31
  %1046 = xor i32 %1042, %1045
  %1047 = add i32 %1046, %1045
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1050, align 1
  store %struct.Memory* %loadMem_468e6e, %struct.Memory** %MEMORY
  %loadMem_468e75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %PC.i369
  %1055 = add i64 %1054, 11
  %1056 = load i64, i64* %PC.i369
  %1057 = add i64 %1056, 6
  %1058 = load i64, i64* %PC.i369
  %1059 = add i64 %1058, 6
  store i64 %1059, i64* %PC.i369
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1061 = load i8, i8* %1060, align 1
  %1062 = icmp ne i8 %1061, 0
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1064 = load i8, i8* %1063, align 1
  %1065 = icmp ne i8 %1064, 0
  %1066 = xor i1 %1062, %1065
  %1067 = zext i1 %1066 to i8
  store i8 %1067, i8* %BRANCH_TAKEN, align 1
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1069 = select i1 %1066, i64 %1055, i64 %1057
  store i64 %1069, i64* %1068, align 8
  store %struct.Memory* %loadMem_468e75, %struct.Memory** %MEMORY
  %loadBr_468e75 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468e75 = icmp eq i8 %loadBr_468e75, 1
  br i1 %cmpBr_468e75, label %block_.L_468e80, label %block_468e7b

block_468e7b:                                     ; preds = %block_468e6e
  %loadMem_468e7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %PC.i368
  %1074 = add i64 %1073, 452
  %1075 = load i64, i64* %PC.i368
  %1076 = add i64 %1075, 5
  store i64 %1076, i64* %PC.i368
  %1077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1074, i64* %1077, align 8
  store %struct.Memory* %loadMem_468e7b, %struct.Memory** %MEMORY
  br label %block_.L_46903f

block_.L_468e80:                                  ; preds = %block_468e6e, %block_468de3
  %loadMem_468e80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 7
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RDX.i367 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %PC.i366
  %1085 = add i64 %1084, 5
  store i64 %1085, i64* %PC.i366
  store i64 4, i64* %RDX.i367, align 8
  store %struct.Memory* %loadMem_468e80, %struct.Memory** %MEMORY
  %loadMem_468e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 1
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %EAX.i364 = bitcast %union.anon* %1091 to i32*
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 1
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %1094 to i64*
  %1095 = load i64, i64* %RAX.i365
  %1096 = load i32, i32* %EAX.i364
  %1097 = zext i32 %1096 to i64
  %1098 = load i64, i64* %PC.i363
  %1099 = add i64 %1098, 2
  store i64 %1099, i64* %PC.i363
  %1100 = xor i64 %1097, %1095
  %1101 = trunc i64 %1100 to i32
  %1102 = and i64 %1100, 4294967295
  store i64 %1102, i64* %RAX.i365, align 8
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1103, align 1
  %1104 = and i32 %1101, 255
  %1105 = call i32 @llvm.ctpop.i32(i32 %1104)
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = xor i8 %1107, 1
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1108, i8* %1109, align 1
  %1110 = icmp eq i32 %1101, 0
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1111, i8* %1112, align 1
  %1113 = lshr i32 %1101, 31
  %1114 = trunc i32 %1113 to i8
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1114, i8* %1115, align 1
  %1116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1116, align 1
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1117, align 1
  store %struct.Memory* %loadMem_468e85, %struct.Memory** %MEMORY
  %loadMem_468e87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 33
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1120 to i64*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 1
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %1123 to i32*
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 5
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %1126 to i64*
  %1127 = load i32, i32* %EAX.i361
  %1128 = zext i32 %1127 to i64
  %1129 = load i64, i64* %PC.i360
  %1130 = add i64 %1129, 2
  store i64 %1130, i64* %PC.i360
  %1131 = and i64 %1128, 4294967295
  store i64 %1131, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_468e87, %struct.Memory** %MEMORY
  %loadMem_468e89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 11
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RDI.i358 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 15
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %1140 to i64*
  %1141 = load i64, i64* %RBP.i359
  %1142 = sub i64 %1141, 692
  %1143 = load i64, i64* %PC.i357
  %1144 = add i64 %1143, 6
  store i64 %1144, i64* %PC.i357
  %1145 = inttoptr i64 %1142 to i32*
  %1146 = load i32, i32* %1145
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RDI.i358, align 8
  store %struct.Memory* %loadMem_468e89, %struct.Memory** %MEMORY
  %loadMem_468e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 9
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RSI.i355 = bitcast %union.anon* %1153 to i64*
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1155 = getelementptr inbounds %struct.GPR, %struct.GPR* %1154, i32 0, i32 15
  %1156 = getelementptr inbounds %struct.Reg, %struct.Reg* %1155, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1156 to i64*
  %1157 = load i64, i64* %RBP.i356
  %1158 = sub i64 %1157, 24
  %1159 = load i64, i64* %PC.i354
  %1160 = add i64 %1159, 3
  store i64 %1160, i64* %PC.i354
  %1161 = inttoptr i64 %1158 to i32*
  %1162 = load i32, i32* %1161
  %1163 = zext i32 %1162 to i64
  store i64 %1163, i64* %RSI.i355, align 8
  store %struct.Memory* %loadMem_468e8f, %struct.Memory** %MEMORY
  %loadMem1_468e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1165 = getelementptr inbounds %struct.GPR, %struct.GPR* %1164, i32 0, i32 33
  %1166 = getelementptr inbounds %struct.Reg, %struct.Reg* %1165, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %1166 to i64*
  %1167 = load i64, i64* %PC.i353
  %1168 = add i64 %1167, -358626
  %1169 = load i64, i64* %PC.i353
  %1170 = add i64 %1169, 5
  %1171 = load i64, i64* %PC.i353
  %1172 = add i64 %1171, 5
  store i64 %1172, i64* %PC.i353
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1174 = load i64, i64* %1173, align 8
  %1175 = add i64 %1174, -8
  %1176 = inttoptr i64 %1175 to i64*
  store i64 %1170, i64* %1176
  store i64 %1175, i64* %1173, align 8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1168, i64* %1177, align 8
  store %struct.Memory* %loadMem1_468e92, %struct.Memory** %MEMORY
  %loadMem2_468e92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_468e92 = load i64, i64* %3
  %call2_468e92 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_468e92, %struct.Memory* %loadMem2_468e92)
  store %struct.Memory* %call2_468e92, %struct.Memory** %MEMORY
  %loadMem_468e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 1
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %EAX.i351 = bitcast %union.anon* %1183 to i32*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 15
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RBP.i352
  %1188 = sub i64 %1187, 2524
  %1189 = load i32, i32* %EAX.i351
  %1190 = zext i32 %1189 to i64
  %1191 = load i64, i64* %PC.i350
  %1192 = add i64 %1191, 6
  store i64 %1192, i64* %PC.i350
  %1193 = inttoptr i64 %1188 to i32*
  store i32 %1189, i32* %1193
  store %struct.Memory* %loadMem_468e97, %struct.Memory** %MEMORY
  %loadMem_468e9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 15
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RBP.i349
  %1201 = sub i64 %1200, 2516
  %1202 = load i64, i64* %PC.i348
  %1203 = add i64 %1202, 7
  store i64 %1203, i64* %PC.i348
  %1204 = inttoptr i64 %1201 to i32*
  %1205 = load i32, i32* %1204
  %1206 = sub i32 %1205, 4
  %1207 = icmp ult i32 %1205, 4
  %1208 = zext i1 %1207 to i8
  %1209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1208, i8* %1209, align 1
  %1210 = and i32 %1206, 255
  %1211 = call i32 @llvm.ctpop.i32(i32 %1210)
  %1212 = trunc i32 %1211 to i8
  %1213 = and i8 %1212, 1
  %1214 = xor i8 %1213, 1
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1214, i8* %1215, align 1
  %1216 = xor i32 %1205, 4
  %1217 = xor i32 %1216, %1206
  %1218 = lshr i32 %1217, 4
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1220, i8* %1221, align 1
  %1222 = icmp eq i32 %1206, 0
  %1223 = zext i1 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1223, i8* %1224, align 1
  %1225 = lshr i32 %1206, 31
  %1226 = trunc i32 %1225 to i8
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1226, i8* %1227, align 1
  %1228 = lshr i32 %1205, 31
  %1229 = xor i32 %1225, %1228
  %1230 = add i32 %1229, %1228
  %1231 = icmp eq i32 %1230, 2
  %1232 = zext i1 %1231 to i8
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1232, i8* %1233, align 1
  store %struct.Memory* %loadMem_468e9d, %struct.Memory** %MEMORY
  %loadMem_468ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1236 to i64*
  %1237 = load i64, i64* %PC.i347
  %1238 = add i64 %1237, 19
  %1239 = load i64, i64* %PC.i347
  %1240 = add i64 %1239, 6
  %1241 = load i64, i64* %PC.i347
  %1242 = add i64 %1241, 6
  store i64 %1242, i64* %PC.i347
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1244 = load i8, i8* %1243, align 1
  %1245 = icmp ne i8 %1244, 0
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1247 = load i8, i8* %1246, align 1
  %1248 = icmp ne i8 %1247, 0
  %1249 = xor i1 %1245, %1248
  %1250 = xor i1 %1249, true
  %1251 = zext i1 %1250 to i8
  store i8 %1251, i8* %BRANCH_TAKEN, align 1
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1253 = select i1 %1249, i64 %1240, i64 %1238
  store i64 %1253, i64* %1252, align 8
  store %struct.Memory* %loadMem_468ea4, %struct.Memory** %MEMORY
  %loadBr_468ea4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ea4 = icmp eq i8 %loadBr_468ea4, 1
  br i1 %cmpBr_468ea4, label %block_.L_468eb7, label %block_468eaa

block_468eaa:                                     ; preds = %block_.L_468e80
  %loadMem_468eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 15
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %RBP.i346
  %1261 = sub i64 %1260, 2520
  %1262 = load i64, i64* %PC.i345
  %1263 = add i64 %1262, 7
  store i64 %1263, i64* %PC.i345
  %1264 = inttoptr i64 %1261 to i32*
  %1265 = load i32, i32* %1264
  %1266 = sub i32 %1265, 4
  %1267 = icmp ult i32 %1265, 4
  %1268 = zext i1 %1267 to i8
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1268, i8* %1269, align 1
  %1270 = and i32 %1266, 255
  %1271 = call i32 @llvm.ctpop.i32(i32 %1270)
  %1272 = trunc i32 %1271 to i8
  %1273 = and i8 %1272, 1
  %1274 = xor i8 %1273, 1
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1274, i8* %1275, align 1
  %1276 = xor i32 %1265, 4
  %1277 = xor i32 %1276, %1266
  %1278 = lshr i32 %1277, 4
  %1279 = trunc i32 %1278 to i8
  %1280 = and i8 %1279, 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1280, i8* %1281, align 1
  %1282 = icmp eq i32 %1266, 0
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1266, 31
  %1286 = trunc i32 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1286, i8* %1287, align 1
  %1288 = lshr i32 %1265, 31
  %1289 = xor i32 %1285, %1288
  %1290 = add i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1292, i8* %1293, align 1
  store %struct.Memory* %loadMem_468eaa, %struct.Memory** %MEMORY
  %loadMem_468eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %PC.i344
  %1298 = add i64 %1297, 24
  %1299 = load i64, i64* %PC.i344
  %1300 = add i64 %1299, 6
  %1301 = load i64, i64* %PC.i344
  %1302 = add i64 %1301, 6
  store i64 %1302, i64* %PC.i344
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1304 = load i8, i8* %1303, align 1
  %1305 = icmp ne i8 %1304, 0
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1307 = load i8, i8* %1306, align 1
  %1308 = icmp ne i8 %1307, 0
  %1309 = xor i1 %1305, %1308
  %1310 = zext i1 %1309 to i8
  store i8 %1310, i8* %BRANCH_TAKEN, align 1
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1312 = select i1 %1309, i64 %1298, i64 %1300
  store i64 %1312, i64* %1311, align 8
  store %struct.Memory* %loadMem_468eb1, %struct.Memory** %MEMORY
  %loadBr_468eb1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468eb1 = icmp eq i8 %loadBr_468eb1, 1
  br i1 %cmpBr_468eb1, label %block_.L_468ec9, label %block_.L_468eb7

block_.L_468eb7:                                  ; preds = %block_468eaa, %block_.L_468e80
  %loadMem_468eb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 33
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1315 to i64*
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1317 = getelementptr inbounds %struct.GPR, %struct.GPR* %1316, i32 0, i32 15
  %1318 = getelementptr inbounds %struct.Reg, %struct.Reg* %1317, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1318 to i64*
  %1319 = load i64, i64* %RBP.i343
  %1320 = sub i64 %1319, 2524
  %1321 = load i64, i64* %PC.i342
  %1322 = add i64 %1321, 7
  store i64 %1322, i64* %PC.i342
  %1323 = inttoptr i64 %1320 to i32*
  %1324 = load i32, i32* %1323
  %1325 = sub i32 %1324, 4
  %1326 = icmp ult i32 %1324, 4
  %1327 = zext i1 %1326 to i8
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1327, i8* %1328, align 1
  %1329 = and i32 %1325, 255
  %1330 = call i32 @llvm.ctpop.i32(i32 %1329)
  %1331 = trunc i32 %1330 to i8
  %1332 = and i8 %1331, 1
  %1333 = xor i8 %1332, 1
  %1334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1333, i8* %1334, align 1
  %1335 = xor i32 %1324, 4
  %1336 = xor i32 %1335, %1325
  %1337 = lshr i32 %1336, 4
  %1338 = trunc i32 %1337 to i8
  %1339 = and i8 %1338, 1
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1339, i8* %1340, align 1
  %1341 = icmp eq i32 %1325, 0
  %1342 = zext i1 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1342, i8* %1343, align 1
  %1344 = lshr i32 %1325, 31
  %1345 = trunc i32 %1344 to i8
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1345, i8* %1346, align 1
  %1347 = lshr i32 %1324, 31
  %1348 = xor i32 %1344, %1347
  %1349 = add i32 %1348, %1347
  %1350 = icmp eq i32 %1349, 2
  %1351 = zext i1 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1351, i8* %1352, align 1
  store %struct.Memory* %loadMem_468eb7, %struct.Memory** %MEMORY
  %loadMem_468ebe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1354 = getelementptr inbounds %struct.GPR, %struct.GPR* %1353, i32 0, i32 33
  %1355 = getelementptr inbounds %struct.Reg, %struct.Reg* %1354, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1355 to i64*
  %1356 = load i64, i64* %PC.i341
  %1357 = add i64 %1356, 11
  %1358 = load i64, i64* %PC.i341
  %1359 = add i64 %1358, 6
  %1360 = load i64, i64* %PC.i341
  %1361 = add i64 %1360, 6
  store i64 %1361, i64* %PC.i341
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1363 = load i8, i8* %1362, align 1
  %1364 = icmp ne i8 %1363, 0
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1366 = load i8, i8* %1365, align 1
  %1367 = icmp ne i8 %1366, 0
  %1368 = xor i1 %1364, %1367
  %1369 = zext i1 %1368 to i8
  store i8 %1369, i8* %BRANCH_TAKEN, align 1
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1371 = select i1 %1368, i64 %1357, i64 %1359
  store i64 %1371, i64* %1370, align 8
  store %struct.Memory* %loadMem_468ebe, %struct.Memory** %MEMORY
  %loadBr_468ebe = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ebe = icmp eq i8 %loadBr_468ebe, 1
  br i1 %cmpBr_468ebe, label %block_.L_468ec9, label %block_468ec4

block_468ec4:                                     ; preds = %block_.L_468eb7
  %loadMem_468ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1373 = getelementptr inbounds %struct.GPR, %struct.GPR* %1372, i32 0, i32 33
  %1374 = getelementptr inbounds %struct.Reg, %struct.Reg* %1373, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1374 to i64*
  %1375 = load i64, i64* %PC.i340
  %1376 = add i64 %1375, 379
  %1377 = load i64, i64* %PC.i340
  %1378 = add i64 %1377, 5
  store i64 %1378, i64* %PC.i340
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1376, i64* %1379, align 8
  store %struct.Memory* %loadMem_468ec4, %struct.Memory** %MEMORY
  br label %block_.L_46903f

block_.L_468ec9:                                  ; preds = %block_.L_468eb7, %block_468eaa
  %loadMem_468ec9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 15
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %RBP.i339
  %1387 = sub i64 %1386, 2516
  %1388 = load i64, i64* %PC.i338
  %1389 = add i64 %1388, 7
  store i64 %1389, i64* %PC.i338
  %1390 = inttoptr i64 %1387 to i32*
  %1391 = load i32, i32* %1390
  %1392 = sub i32 %1391, 4
  %1393 = icmp ult i32 %1391, 4
  %1394 = zext i1 %1393 to i8
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1394, i8* %1395, align 1
  %1396 = and i32 %1392, 255
  %1397 = call i32 @llvm.ctpop.i32(i32 %1396)
  %1398 = trunc i32 %1397 to i8
  %1399 = and i8 %1398, 1
  %1400 = xor i8 %1399, 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1400, i8* %1401, align 1
  %1402 = xor i32 %1391, 4
  %1403 = xor i32 %1402, %1392
  %1404 = lshr i32 %1403, 4
  %1405 = trunc i32 %1404 to i8
  %1406 = and i8 %1405, 1
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1406, i8* %1407, align 1
  %1408 = icmp eq i32 %1392, 0
  %1409 = zext i1 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1409, i8* %1410, align 1
  %1411 = lshr i32 %1392, 31
  %1412 = trunc i32 %1411 to i8
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1412, i8* %1413, align 1
  %1414 = lshr i32 %1391, 31
  %1415 = xor i32 %1411, %1414
  %1416 = add i32 %1415, %1414
  %1417 = icmp eq i32 %1416, 2
  %1418 = zext i1 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1418, i8* %1419, align 1
  store %struct.Memory* %loadMem_468ec9, %struct.Memory** %MEMORY
  %loadMem_468ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 33
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %PC.i337
  %1424 = add i64 %1423, 77
  %1425 = load i64, i64* %PC.i337
  %1426 = add i64 %1425, 6
  %1427 = load i64, i64* %PC.i337
  %1428 = add i64 %1427, 6
  store i64 %1428, i64* %PC.i337
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1430 = load i8, i8* %1429, align 1
  %1431 = icmp ne i8 %1430, 0
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1433 = load i8, i8* %1432, align 1
  %1434 = icmp ne i8 %1433, 0
  %1435 = xor i1 %1431, %1434
  %1436 = zext i1 %1435 to i8
  store i8 %1436, i8* %BRANCH_TAKEN, align 1
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1438 = select i1 %1435, i64 %1424, i64 %1426
  store i64 %1438, i64* %1437, align 8
  store %struct.Memory* %loadMem_468ed0, %struct.Memory** %MEMORY
  %loadBr_468ed0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ed0 = icmp eq i8 %loadBr_468ed0, 1
  br i1 %cmpBr_468ed0, label %block_.L_468f1d, label %block_468ed6

block_468ed6:                                     ; preds = %block_.L_468ec9
  %loadMem_468ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 33
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1441 to i64*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 1
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %1444 to i64*
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 15
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %RBP.i336 = bitcast %union.anon* %1447 to i64*
  %1448 = load i64, i64* %RBP.i336
  %1449 = sub i64 %1448, 700
  %1450 = load i64, i64* %PC.i334
  %1451 = add i64 %1450, 7
  store i64 %1451, i64* %PC.i334
  %1452 = inttoptr i64 %1449 to i32*
  %1453 = load i32, i32* %1452
  %1454 = sext i32 %1453 to i64
  store i64 %1454, i64* %RAX.i335, align 8
  store %struct.Memory* %loadMem_468ed6, %struct.Memory** %MEMORY
  %loadMem_468edd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 1
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 15
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %1463 to i64*
  %1464 = load i64, i64* %RBP.i333
  %1465 = load i64, i64* %RAX.i332
  %1466 = mul i64 %1465, 4
  %1467 = add i64 %1464, -2512
  %1468 = add i64 %1467, %1466
  %1469 = load i64, i64* %PC.i331
  %1470 = add i64 %1469, 8
  store i64 %1470, i64* %PC.i331
  %1471 = inttoptr i64 %1468 to i32*
  %1472 = load i32, i32* %1471
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1473, align 1
  %1474 = and i32 %1472, 255
  %1475 = call i32 @llvm.ctpop.i32(i32 %1474)
  %1476 = trunc i32 %1475 to i8
  %1477 = and i8 %1476, 1
  %1478 = xor i8 %1477, 1
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1478, i8* %1479, align 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1480, align 1
  %1481 = icmp eq i32 %1472, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i32 %1472, 31
  %1485 = trunc i32 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i32 %1472, 31
  %1488 = xor i32 %1484, %1487
  %1489 = add i32 %1488, %1487
  %1490 = icmp eq i32 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1
  store %struct.Memory* %loadMem_468edd, %struct.Memory** %MEMORY
  %loadMem_468ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1495 to i64*
  %1496 = load i64, i64* %PC.i330
  %1497 = add i64 %1496, 56
  %1498 = load i64, i64* %PC.i330
  %1499 = add i64 %1498, 6
  %1500 = load i64, i64* %PC.i330
  %1501 = add i64 %1500, 6
  store i64 %1501, i64* %PC.i330
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1503 = load i8, i8* %1502, align 1
  %1504 = icmp eq i8 %1503, 0
  %1505 = zext i1 %1504 to i8
  store i8 %1505, i8* %BRANCH_TAKEN, align 1
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1507 = select i1 %1504, i64 %1497, i64 %1499
  store i64 %1507, i64* %1506, align 8
  store %struct.Memory* %loadMem_468ee5, %struct.Memory** %MEMORY
  %loadBr_468ee5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468ee5 = icmp eq i8 %loadBr_468ee5, 1
  br i1 %cmpBr_468ee5, label %block_.L_468f1d, label %block_468eeb

block_468eeb:                                     ; preds = %block_468ed6
  %loadMem_468eeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 33
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %1510 to i64*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 1
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RAX.i328 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 15
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %RBP.i329
  %1518 = sub i64 %1517, 700
  %1519 = load i64, i64* %PC.i327
  %1520 = add i64 %1519, 7
  store i64 %1520, i64* %PC.i327
  %1521 = inttoptr i64 %1518 to i32*
  %1522 = load i32, i32* %1521
  %1523 = sext i32 %1522 to i64
  store i64 %1523, i64* %RAX.i328, align 8
  store %struct.Memory* %loadMem_468eeb, %struct.Memory** %MEMORY
  %loadMem_468ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 33
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %1526 to i64*
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 1
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %RAX.i325 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 15
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %1532 to i64*
  %1533 = load i64, i64* %RBP.i326
  %1534 = load i64, i64* %RAX.i325
  %1535 = mul i64 %1534, 4
  %1536 = add i64 %1533, -2512
  %1537 = add i64 %1536, %1535
  %1538 = load i64, i64* %PC.i324
  %1539 = add i64 %1538, 11
  store i64 %1539, i64* %PC.i324
  %1540 = inttoptr i64 %1537 to i32*
  store i32 1, i32* %1540
  store %struct.Memory* %loadMem_468ef2, %struct.Memory** %MEMORY
  %loadMem_468efd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 33
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 5
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 15
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RBP.i323
  %1551 = sub i64 %1550, 700
  %1552 = load i64, i64* %PC.i321
  %1553 = add i64 %1552, 6
  store i64 %1553, i64* %PC.i321
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554
  %1556 = zext i32 %1555 to i64
  store i64 %1556, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_468efd, %struct.Memory** %MEMORY
  %loadMem_468f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 33
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1559 to i64*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 7
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %1562 to i64*
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1564 = getelementptr inbounds %struct.GPR, %struct.GPR* %1563, i32 0, i32 15
  %1565 = getelementptr inbounds %struct.Reg, %struct.Reg* %1564, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %1565 to i64*
  %1566 = load i64, i64* %RBP.i320
  %1567 = sub i64 %1566, 36
  %1568 = load i64, i64* %PC.i318
  %1569 = add i64 %1568, 3
  store i64 %1569, i64* %PC.i318
  %1570 = inttoptr i64 %1567 to i32*
  %1571 = load i32, i32* %1570
  %1572 = zext i32 %1571 to i64
  store i64 %1572, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_468f03, %struct.Memory** %MEMORY
  %loadMem_468f06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 7
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %EDX.i316 = bitcast %union.anon* %1578 to i32*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1580 = getelementptr inbounds %struct.GPR, %struct.GPR* %1579, i32 0, i32 9
  %1581 = getelementptr inbounds %struct.Reg, %struct.Reg* %1580, i32 0, i32 0
  %RSI.i317 = bitcast %union.anon* %1581 to i64*
  %1582 = load i32, i32* %EDX.i316
  %1583 = zext i32 %1582 to i64
  %1584 = load i64, i64* %PC.i315
  %1585 = add i64 %1584, 2
  store i64 %1585, i64* %PC.i315
  %1586 = and i64 %1583, 4294967295
  store i64 %1586, i64* %RSI.i317, align 8
  store %struct.Memory* %loadMem_468f06, %struct.Memory** %MEMORY
  %loadMem_468f08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 33
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 9
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RSI.i314 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RSI.i314
  %1594 = load i64, i64* %PC.i313
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i313
  %1596 = trunc i64 %1593 to i32
  %1597 = add i32 1, %1596
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RSI.i314, align 8
  %1599 = icmp ult i32 %1597, %1596
  %1600 = icmp ult i32 %1597, 1
  %1601 = or i1 %1599, %1600
  %1602 = zext i1 %1601 to i8
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1602, i8* %1603, align 1
  %1604 = and i32 %1597, 255
  %1605 = call i32 @llvm.ctpop.i32(i32 %1604)
  %1606 = trunc i32 %1605 to i8
  %1607 = and i8 %1606, 1
  %1608 = xor i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1608, i8* %1609, align 1
  %1610 = xor i64 1, %1593
  %1611 = trunc i64 %1610 to i32
  %1612 = xor i32 %1611, %1597
  %1613 = lshr i32 %1612, 4
  %1614 = trunc i32 %1613 to i8
  %1615 = and i8 %1614, 1
  %1616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1615, i8* %1616, align 1
  %1617 = icmp eq i32 %1597, 0
  %1618 = zext i1 %1617 to i8
  %1619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1618, i8* %1619, align 1
  %1620 = lshr i32 %1597, 31
  %1621 = trunc i32 %1620 to i8
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1621, i8* %1622, align 1
  %1623 = lshr i32 %1596, 31
  %1624 = xor i32 %1620, %1623
  %1625 = add i32 %1624, %1620
  %1626 = icmp eq i32 %1625, 2
  %1627 = zext i1 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1627, i8* %1628, align 1
  store %struct.Memory* %loadMem_468f08, %struct.Memory** %MEMORY
  %loadMem_468f0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 9
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %ESI.i311 = bitcast %union.anon* %1634 to i32*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 15
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %RBP.i312
  %1639 = sub i64 %1638, 36
  %1640 = load i32, i32* %ESI.i311
  %1641 = zext i32 %1640 to i64
  %1642 = load i64, i64* %PC.i310
  %1643 = add i64 %1642, 3
  store i64 %1643, i64* %PC.i310
  %1644 = inttoptr i64 %1639 to i32*
  store i32 %1640, i32* %1644
  store %struct.Memory* %loadMem_468f0b, %struct.Memory** %MEMORY
  %loadMem_468f0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 33
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1647 to i64*
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 7
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %EDX.i308 = bitcast %union.anon* %1650 to i32*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 1
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %1653 to i64*
  %1654 = load i32, i32* %EDX.i308
  %1655 = zext i32 %1654 to i64
  %1656 = load i64, i64* %PC.i307
  %1657 = add i64 %1656, 3
  store i64 %1657, i64* %PC.i307
  %1658 = shl i64 %1655, 32
  %1659 = ashr exact i64 %1658, 32
  store i64 %1659, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_468f0e, %struct.Memory** %MEMORY
  %loadMem_468f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 33
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 5
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %ECX.i304 = bitcast %union.anon* %1665 to i32*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 1
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 15
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RBP.i306
  %1673 = load i64, i64* %RAX.i305
  %1674 = mul i64 %1673, 4
  %1675 = add i64 %1672, -912
  %1676 = add i64 %1675, %1674
  %1677 = load i32, i32* %ECX.i304
  %1678 = zext i32 %1677 to i64
  %1679 = load i64, i64* %PC.i303
  %1680 = add i64 %1679, 7
  store i64 %1680, i64* %PC.i303
  %1681 = inttoptr i64 %1676 to i32*
  store i32 %1677, i32* %1681
  store %struct.Memory* %loadMem_468f11, %struct.Memory** %MEMORY
  %loadMem_468f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %1684 to i64*
  %1685 = load i64, i64* %PC.i302
  %1686 = add i64 %1685, 295
  %1687 = load i64, i64* %PC.i302
  %1688 = add i64 %1687, 5
  store i64 %1688, i64* %PC.i302
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1686, i64* %1689, align 8
  store %struct.Memory* %loadMem_468f18, %struct.Memory** %MEMORY
  br label %block_.L_46903f

block_.L_468f1d:                                  ; preds = %block_468ed6, %block_.L_468ec9
  %loadMem_468f1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 33
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 15
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %1695 to i64*
  %1696 = load i64, i64* %RBP.i301
  %1697 = sub i64 %1696, 2520
  %1698 = load i64, i64* %PC.i300
  %1699 = add i64 %1698, 7
  store i64 %1699, i64* %PC.i300
  %1700 = inttoptr i64 %1697 to i32*
  %1701 = load i32, i32* %1700
  %1702 = sub i32 %1701, 4
  %1703 = icmp ult i32 %1701, 4
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1704, i8* %1705, align 1
  %1706 = and i32 %1702, 255
  %1707 = call i32 @llvm.ctpop.i32(i32 %1706)
  %1708 = trunc i32 %1707 to i8
  %1709 = and i8 %1708, 1
  %1710 = xor i8 %1709, 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1710, i8* %1711, align 1
  %1712 = xor i32 %1701, 4
  %1713 = xor i32 %1712, %1702
  %1714 = lshr i32 %1713, 4
  %1715 = trunc i32 %1714 to i8
  %1716 = and i8 %1715, 1
  %1717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1716, i8* %1717, align 1
  %1718 = icmp eq i32 %1702, 0
  %1719 = zext i1 %1718 to i8
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1719, i8* %1720, align 1
  %1721 = lshr i32 %1702, 31
  %1722 = trunc i32 %1721 to i8
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1722, i8* %1723, align 1
  %1724 = lshr i32 %1701, 31
  %1725 = xor i32 %1721, %1724
  %1726 = add i32 %1725, %1724
  %1727 = icmp eq i32 %1726, 2
  %1728 = zext i1 %1727 to i8
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1728, i8* %1729, align 1
  store %struct.Memory* %loadMem_468f1d, %struct.Memory** %MEMORY
  %loadMem_468f24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1731 = getelementptr inbounds %struct.GPR, %struct.GPR* %1730, i32 0, i32 33
  %1732 = getelementptr inbounds %struct.Reg, %struct.Reg* %1731, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %1732 to i64*
  %1733 = load i64, i64* %PC.i299
  %1734 = add i64 %1733, 77
  %1735 = load i64, i64* %PC.i299
  %1736 = add i64 %1735, 6
  %1737 = load i64, i64* %PC.i299
  %1738 = add i64 %1737, 6
  store i64 %1738, i64* %PC.i299
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1740 = load i8, i8* %1739, align 1
  %1741 = icmp ne i8 %1740, 0
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1743 = load i8, i8* %1742, align 1
  %1744 = icmp ne i8 %1743, 0
  %1745 = xor i1 %1741, %1744
  %1746 = zext i1 %1745 to i8
  store i8 %1746, i8* %BRANCH_TAKEN, align 1
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1748 = select i1 %1745, i64 %1734, i64 %1736
  store i64 %1748, i64* %1747, align 8
  store %struct.Memory* %loadMem_468f24, %struct.Memory** %MEMORY
  %loadBr_468f24 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468f24 = icmp eq i8 %loadBr_468f24, 1
  br i1 %cmpBr_468f24, label %block_.L_468f71, label %block_468f2a

block_468f2a:                                     ; preds = %block_.L_468f1d
  %loadMem_468f2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 33
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1751 to i64*
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 1
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 15
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %1757 to i64*
  %1758 = load i64, i64* %RBP.i298
  %1759 = sub i64 %1758, 696
  %1760 = load i64, i64* %PC.i296
  %1761 = add i64 %1760, 7
  store i64 %1761, i64* %PC.i296
  %1762 = inttoptr i64 %1759 to i32*
  %1763 = load i32, i32* %1762
  %1764 = sext i32 %1763 to i64
  store i64 %1764, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_468f2a, %struct.Memory** %MEMORY
  %loadMem_468f31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 33
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %1767 to i64*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 1
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RAX.i294 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 15
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %RBP.i295 = bitcast %union.anon* %1773 to i64*
  %1774 = load i64, i64* %RBP.i295
  %1775 = load i64, i64* %RAX.i294
  %1776 = mul i64 %1775, 4
  %1777 = add i64 %1774, -2512
  %1778 = add i64 %1777, %1776
  %1779 = load i64, i64* %PC.i293
  %1780 = add i64 %1779, 8
  store i64 %1780, i64* %PC.i293
  %1781 = inttoptr i64 %1778 to i32*
  %1782 = load i32, i32* %1781
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1783, align 1
  %1784 = and i32 %1782, 255
  %1785 = call i32 @llvm.ctpop.i32(i32 %1784)
  %1786 = trunc i32 %1785 to i8
  %1787 = and i8 %1786, 1
  %1788 = xor i8 %1787, 1
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1788, i8* %1789, align 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1790, align 1
  %1791 = icmp eq i32 %1782, 0
  %1792 = zext i1 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1792, i8* %1793, align 1
  %1794 = lshr i32 %1782, 31
  %1795 = trunc i32 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1795, i8* %1796, align 1
  %1797 = lshr i32 %1782, 31
  %1798 = xor i32 %1794, %1797
  %1799 = add i32 %1798, %1797
  %1800 = icmp eq i32 %1799, 2
  %1801 = zext i1 %1800 to i8
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1801, i8* %1802, align 1
  store %struct.Memory* %loadMem_468f31, %struct.Memory** %MEMORY
  %loadMem_468f39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %PC.i292
  %1807 = add i64 %1806, 56
  %1808 = load i64, i64* %PC.i292
  %1809 = add i64 %1808, 6
  %1810 = load i64, i64* %PC.i292
  %1811 = add i64 %1810, 6
  store i64 %1811, i64* %PC.i292
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1813 = load i8, i8* %1812, align 1
  %1814 = icmp eq i8 %1813, 0
  %1815 = zext i1 %1814 to i8
  store i8 %1815, i8* %BRANCH_TAKEN, align 1
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1817 = select i1 %1814, i64 %1807, i64 %1809
  store i64 %1817, i64* %1816, align 8
  store %struct.Memory* %loadMem_468f39, %struct.Memory** %MEMORY
  %loadBr_468f39 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468f39 = icmp eq i8 %loadBr_468f39, 1
  br i1 %cmpBr_468f39, label %block_.L_468f71, label %block_468f3f

block_468f3f:                                     ; preds = %block_468f2a
  %loadMem_468f3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 1
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 15
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %1826 to i64*
  %1827 = load i64, i64* %RBP.i291
  %1828 = sub i64 %1827, 696
  %1829 = load i64, i64* %PC.i289
  %1830 = add i64 %1829, 7
  store i64 %1830, i64* %PC.i289
  %1831 = inttoptr i64 %1828 to i32*
  %1832 = load i32, i32* %1831
  %1833 = sext i32 %1832 to i64
  store i64 %1833, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_468f3f, %struct.Memory** %MEMORY
  %loadMem_468f46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 33
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 1
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RAX.i287 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 15
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %1842 to i64*
  %1843 = load i64, i64* %RBP.i288
  %1844 = load i64, i64* %RAX.i287
  %1845 = mul i64 %1844, 4
  %1846 = add i64 %1843, -2512
  %1847 = add i64 %1846, %1845
  %1848 = load i64, i64* %PC.i286
  %1849 = add i64 %1848, 11
  store i64 %1849, i64* %PC.i286
  %1850 = inttoptr i64 %1847 to i32*
  store i32 1, i32* %1850
  store %struct.Memory* %loadMem_468f46, %struct.Memory** %MEMORY
  %loadMem_468f51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 5
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 15
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RBP.i285
  %1861 = sub i64 %1860, 696
  %1862 = load i64, i64* %PC.i283
  %1863 = add i64 %1862, 6
  store i64 %1863, i64* %PC.i283
  %1864 = inttoptr i64 %1861 to i32*
  %1865 = load i32, i32* %1864
  %1866 = zext i32 %1865 to i64
  store i64 %1866, i64* %RCX.i284, align 8
  store %struct.Memory* %loadMem_468f51, %struct.Memory** %MEMORY
  %loadMem_468f57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 7
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %1872 to i64*
  %1873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1874 = getelementptr inbounds %struct.GPR, %struct.GPR* %1873, i32 0, i32 15
  %1875 = getelementptr inbounds %struct.Reg, %struct.Reg* %1874, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %1875 to i64*
  %1876 = load i64, i64* %RBP.i282
  %1877 = sub i64 %1876, 36
  %1878 = load i64, i64* %PC.i280
  %1879 = add i64 %1878, 3
  store i64 %1879, i64* %PC.i280
  %1880 = inttoptr i64 %1877 to i32*
  %1881 = load i32, i32* %1880
  %1882 = zext i32 %1881 to i64
  store i64 %1882, i64* %RDX.i281, align 8
  store %struct.Memory* %loadMem_468f57, %struct.Memory** %MEMORY
  %loadMem_468f5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 33
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 7
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %EDX.i278 = bitcast %union.anon* %1888 to i32*
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1890 = getelementptr inbounds %struct.GPR, %struct.GPR* %1889, i32 0, i32 9
  %1891 = getelementptr inbounds %struct.Reg, %struct.Reg* %1890, i32 0, i32 0
  %RSI.i279 = bitcast %union.anon* %1891 to i64*
  %1892 = load i32, i32* %EDX.i278
  %1893 = zext i32 %1892 to i64
  %1894 = load i64, i64* %PC.i277
  %1895 = add i64 %1894, 2
  store i64 %1895, i64* %PC.i277
  %1896 = and i64 %1893, 4294967295
  store i64 %1896, i64* %RSI.i279, align 8
  store %struct.Memory* %loadMem_468f5a, %struct.Memory** %MEMORY
  %loadMem_468f5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i275 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1901 = getelementptr inbounds %struct.GPR, %struct.GPR* %1900, i32 0, i32 9
  %1902 = getelementptr inbounds %struct.Reg, %struct.Reg* %1901, i32 0, i32 0
  %RSI.i276 = bitcast %union.anon* %1902 to i64*
  %1903 = load i64, i64* %RSI.i276
  %1904 = load i64, i64* %PC.i275
  %1905 = add i64 %1904, 3
  store i64 %1905, i64* %PC.i275
  %1906 = trunc i64 %1903 to i32
  %1907 = add i32 1, %1906
  %1908 = zext i32 %1907 to i64
  store i64 %1908, i64* %RSI.i276, align 8
  %1909 = icmp ult i32 %1907, %1906
  %1910 = icmp ult i32 %1907, 1
  %1911 = or i1 %1909, %1910
  %1912 = zext i1 %1911 to i8
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1912, i8* %1913, align 1
  %1914 = and i32 %1907, 255
  %1915 = call i32 @llvm.ctpop.i32(i32 %1914)
  %1916 = trunc i32 %1915 to i8
  %1917 = and i8 %1916, 1
  %1918 = xor i8 %1917, 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1918, i8* %1919, align 1
  %1920 = xor i64 1, %1903
  %1921 = trunc i64 %1920 to i32
  %1922 = xor i32 %1921, %1907
  %1923 = lshr i32 %1922, 4
  %1924 = trunc i32 %1923 to i8
  %1925 = and i8 %1924, 1
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1925, i8* %1926, align 1
  %1927 = icmp eq i32 %1907, 0
  %1928 = zext i1 %1927 to i8
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1928, i8* %1929, align 1
  %1930 = lshr i32 %1907, 31
  %1931 = trunc i32 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1931, i8* %1932, align 1
  %1933 = lshr i32 %1906, 31
  %1934 = xor i32 %1930, %1933
  %1935 = add i32 %1934, %1930
  %1936 = icmp eq i32 %1935, 2
  %1937 = zext i1 %1936 to i8
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1937, i8* %1938, align 1
  store %struct.Memory* %loadMem_468f5c, %struct.Memory** %MEMORY
  %loadMem_468f5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 9
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %ESI.i273 = bitcast %union.anon* %1944 to i32*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i274 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i274
  %1949 = sub i64 %1948, 36
  %1950 = load i32, i32* %ESI.i273
  %1951 = zext i32 %1950 to i64
  %1952 = load i64, i64* %PC.i272
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %PC.i272
  %1954 = inttoptr i64 %1949 to i32*
  store i32 %1950, i32* %1954
  store %struct.Memory* %loadMem_468f5f, %struct.Memory** %MEMORY
  %loadMem_468f62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 7
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %EDX.i270 = bitcast %union.anon* %1960 to i32*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 1
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RAX.i271 = bitcast %union.anon* %1963 to i64*
  %1964 = load i32, i32* %EDX.i270
  %1965 = zext i32 %1964 to i64
  %1966 = load i64, i64* %PC.i269
  %1967 = add i64 %1966, 3
  store i64 %1967, i64* %PC.i269
  %1968 = shl i64 %1965, 32
  %1969 = ashr exact i64 %1968, 32
  store i64 %1969, i64* %RAX.i271, align 8
  store %struct.Memory* %loadMem_468f62, %struct.Memory** %MEMORY
  %loadMem_468f65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 33
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %1972 to i64*
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 5
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %ECX.i266 = bitcast %union.anon* %1975 to i32*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 1
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 15
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %1981 to i64*
  %1982 = load i64, i64* %RBP.i268
  %1983 = load i64, i64* %RAX.i267
  %1984 = mul i64 %1983, 4
  %1985 = add i64 %1982, -912
  %1986 = add i64 %1985, %1984
  %1987 = load i32, i32* %ECX.i266
  %1988 = zext i32 %1987 to i64
  %1989 = load i64, i64* %PC.i265
  %1990 = add i64 %1989, 7
  store i64 %1990, i64* %PC.i265
  %1991 = inttoptr i64 %1986 to i32*
  store i32 %1987, i32* %1991
  store %struct.Memory* %loadMem_468f65, %struct.Memory** %MEMORY
  %loadMem_468f6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1994 to i64*
  %1995 = load i64, i64* %PC.i264
  %1996 = add i64 %1995, 211
  %1997 = load i64, i64* %PC.i264
  %1998 = add i64 %1997, 5
  store i64 %1998, i64* %PC.i264
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1996, i64* %1999, align 8
  store %struct.Memory* %loadMem_468f6c, %struct.Memory** %MEMORY
  br label %block_.L_46903f

block_.L_468f71:                                  ; preds = %block_468f2a, %block_.L_468f1d
  %loadMem_468f71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 33
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 15
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %2005 to i64*
  %2006 = load i64, i64* %RBP.i263
  %2007 = sub i64 %2006, 2524
  %2008 = load i64, i64* %PC.i262
  %2009 = add i64 %2008, 7
  store i64 %2009, i64* %PC.i262
  %2010 = inttoptr i64 %2007 to i32*
  %2011 = load i32, i32* %2010
  %2012 = sub i32 %2011, 4
  %2013 = icmp ult i32 %2011, 4
  %2014 = zext i1 %2013 to i8
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2014, i8* %2015, align 1
  %2016 = and i32 %2012, 255
  %2017 = call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2020, i8* %2021, align 1
  %2022 = xor i32 %2011, 4
  %2023 = xor i32 %2022, %2012
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2026, i8* %2027, align 1
  %2028 = icmp eq i32 %2012, 0
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2029, i8* %2030, align 1
  %2031 = lshr i32 %2012, 31
  %2032 = trunc i32 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2032, i8* %2033, align 1
  %2034 = lshr i32 %2011, 31
  %2035 = xor i32 %2031, %2034
  %2036 = add i32 %2035, %2034
  %2037 = icmp eq i32 %2036, 2
  %2038 = zext i1 %2037 to i8
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2038, i8* %2039, align 1
  store %struct.Memory* %loadMem_468f71, %struct.Memory** %MEMORY
  %loadMem_468f78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2042 to i64*
  %2043 = load i64, i64* %PC.i261
  %2044 = add i64 %2043, 77
  %2045 = load i64, i64* %PC.i261
  %2046 = add i64 %2045, 6
  %2047 = load i64, i64* %PC.i261
  %2048 = add i64 %2047, 6
  store i64 %2048, i64* %PC.i261
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2050 = load i8, i8* %2049, align 1
  %2051 = icmp ne i8 %2050, 0
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2053 = load i8, i8* %2052, align 1
  %2054 = icmp ne i8 %2053, 0
  %2055 = xor i1 %2051, %2054
  %2056 = zext i1 %2055 to i8
  store i8 %2056, i8* %BRANCH_TAKEN, align 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2058 = select i1 %2055, i64 %2044, i64 %2046
  store i64 %2058, i64* %2057, align 8
  store %struct.Memory* %loadMem_468f78, %struct.Memory** %MEMORY
  %loadBr_468f78 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468f78 = icmp eq i8 %loadBr_468f78, 1
  br i1 %cmpBr_468f78, label %block_.L_468fc5, label %block_468f7e

block_468f7e:                                     ; preds = %block_.L_468f71
  %loadMem_468f7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 1
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 15
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RBP.i260
  %2069 = sub i64 %2068, 692
  %2070 = load i64, i64* %PC.i258
  %2071 = add i64 %2070, 7
  store i64 %2071, i64* %PC.i258
  %2072 = inttoptr i64 %2069 to i32*
  %2073 = load i32, i32* %2072
  %2074 = sext i32 %2073 to i64
  store i64 %2074, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_468f7e, %struct.Memory** %MEMORY
  %loadMem_468f85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 33
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2077 to i64*
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 1
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 15
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %RBP.i257
  %2085 = load i64, i64* %RAX.i256
  %2086 = mul i64 %2085, 4
  %2087 = add i64 %2084, -2512
  %2088 = add i64 %2087, %2086
  %2089 = load i64, i64* %PC.i255
  %2090 = add i64 %2089, 8
  store i64 %2090, i64* %PC.i255
  %2091 = inttoptr i64 %2088 to i32*
  %2092 = load i32, i32* %2091
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2093, align 1
  %2094 = and i32 %2092, 255
  %2095 = call i32 @llvm.ctpop.i32(i32 %2094)
  %2096 = trunc i32 %2095 to i8
  %2097 = and i8 %2096, 1
  %2098 = xor i8 %2097, 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2098, i8* %2099, align 1
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2100, align 1
  %2101 = icmp eq i32 %2092, 0
  %2102 = zext i1 %2101 to i8
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2102, i8* %2103, align 1
  %2104 = lshr i32 %2092, 31
  %2105 = trunc i32 %2104 to i8
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2105, i8* %2106, align 1
  %2107 = lshr i32 %2092, 31
  %2108 = xor i32 %2104, %2107
  %2109 = add i32 %2108, %2107
  %2110 = icmp eq i32 %2109, 2
  %2111 = zext i1 %2110 to i8
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2111, i8* %2112, align 1
  store %struct.Memory* %loadMem_468f85, %struct.Memory** %MEMORY
  %loadMem_468f8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2114 = getelementptr inbounds %struct.GPR, %struct.GPR* %2113, i32 0, i32 33
  %2115 = getelementptr inbounds %struct.Reg, %struct.Reg* %2114, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2115 to i64*
  %2116 = load i64, i64* %PC.i254
  %2117 = add i64 %2116, 56
  %2118 = load i64, i64* %PC.i254
  %2119 = add i64 %2118, 6
  %2120 = load i64, i64* %PC.i254
  %2121 = add i64 %2120, 6
  store i64 %2121, i64* %PC.i254
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2123 = load i8, i8* %2122, align 1
  %2124 = icmp eq i8 %2123, 0
  %2125 = zext i1 %2124 to i8
  store i8 %2125, i8* %BRANCH_TAKEN, align 1
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2127 = select i1 %2124, i64 %2117, i64 %2119
  store i64 %2127, i64* %2126, align 8
  store %struct.Memory* %loadMem_468f8d, %struct.Memory** %MEMORY
  %loadBr_468f8d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468f8d = icmp eq i8 %loadBr_468f8d, 1
  br i1 %cmpBr_468f8d, label %block_.L_468fc5, label %block_468f93

block_468f93:                                     ; preds = %block_468f7e
  %loadMem_468f93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2130 to i64*
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2132 = getelementptr inbounds %struct.GPR, %struct.GPR* %2131, i32 0, i32 1
  %2133 = getelementptr inbounds %struct.Reg, %struct.Reg* %2132, i32 0, i32 0
  %RAX.i252 = bitcast %union.anon* %2133 to i64*
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2135 = getelementptr inbounds %struct.GPR, %struct.GPR* %2134, i32 0, i32 15
  %2136 = getelementptr inbounds %struct.Reg, %struct.Reg* %2135, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %2136 to i64*
  %2137 = load i64, i64* %RBP.i253
  %2138 = sub i64 %2137, 692
  %2139 = load i64, i64* %PC.i251
  %2140 = add i64 %2139, 7
  store i64 %2140, i64* %PC.i251
  %2141 = inttoptr i64 %2138 to i32*
  %2142 = load i32, i32* %2141
  %2143 = sext i32 %2142 to i64
  store i64 %2143, i64* %RAX.i252, align 8
  store %struct.Memory* %loadMem_468f93, %struct.Memory** %MEMORY
  %loadMem_468f9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 33
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2146 to i64*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 1
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 15
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %RBP.i250
  %2154 = load i64, i64* %RAX.i249
  %2155 = mul i64 %2154, 4
  %2156 = add i64 %2153, -2512
  %2157 = add i64 %2156, %2155
  %2158 = load i64, i64* %PC.i248
  %2159 = add i64 %2158, 11
  store i64 %2159, i64* %PC.i248
  %2160 = inttoptr i64 %2157 to i32*
  store i32 1, i32* %2160
  store %struct.Memory* %loadMem_468f9a, %struct.Memory** %MEMORY
  %loadMem_468fa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 5
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 15
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %2169 to i64*
  %2170 = load i64, i64* %RBP.i247
  %2171 = sub i64 %2170, 692
  %2172 = load i64, i64* %PC.i245
  %2173 = add i64 %2172, 6
  store i64 %2173, i64* %PC.i245
  %2174 = inttoptr i64 %2171 to i32*
  %2175 = load i32, i32* %2174
  %2176 = zext i32 %2175 to i64
  store i64 %2176, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_468fa5, %struct.Memory** %MEMORY
  %loadMem_468fab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 33
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 7
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RDX.i243 = bitcast %union.anon* %2182 to i64*
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 15
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %RBP.i244
  %2187 = sub i64 %2186, 36
  %2188 = load i64, i64* %PC.i242
  %2189 = add i64 %2188, 3
  store i64 %2189, i64* %PC.i242
  %2190 = inttoptr i64 %2187 to i32*
  %2191 = load i32, i32* %2190
  %2192 = zext i32 %2191 to i64
  store i64 %2192, i64* %RDX.i243, align 8
  store %struct.Memory* %loadMem_468fab, %struct.Memory** %MEMORY
  %loadMem_468fae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 7
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %EDX.i240 = bitcast %union.anon* %2198 to i32*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 9
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %2201 to i64*
  %2202 = load i32, i32* %EDX.i240
  %2203 = zext i32 %2202 to i64
  %2204 = load i64, i64* %PC.i239
  %2205 = add i64 %2204, 2
  store i64 %2205, i64* %PC.i239
  %2206 = and i64 %2203, 4294967295
  store i64 %2206, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_468fae, %struct.Memory** %MEMORY
  %loadMem_468fb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 9
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RSI.i238 = bitcast %union.anon* %2212 to i64*
  %2213 = load i64, i64* %RSI.i238
  %2214 = load i64, i64* %PC.i237
  %2215 = add i64 %2214, 3
  store i64 %2215, i64* %PC.i237
  %2216 = trunc i64 %2213 to i32
  %2217 = add i32 1, %2216
  %2218 = zext i32 %2217 to i64
  store i64 %2218, i64* %RSI.i238, align 8
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
  store %struct.Memory* %loadMem_468fb0, %struct.Memory** %MEMORY
  %loadMem_468fb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2250 = getelementptr inbounds %struct.GPR, %struct.GPR* %2249, i32 0, i32 33
  %2251 = getelementptr inbounds %struct.Reg, %struct.Reg* %2250, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2251 to i64*
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2253 = getelementptr inbounds %struct.GPR, %struct.GPR* %2252, i32 0, i32 9
  %2254 = getelementptr inbounds %struct.Reg, %struct.Reg* %2253, i32 0, i32 0
  %ESI.i235 = bitcast %union.anon* %2254 to i32*
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 15
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %2257 to i64*
  %2258 = load i64, i64* %RBP.i236
  %2259 = sub i64 %2258, 36
  %2260 = load i32, i32* %ESI.i235
  %2261 = zext i32 %2260 to i64
  %2262 = load i64, i64* %PC.i234
  %2263 = add i64 %2262, 3
  store i64 %2263, i64* %PC.i234
  %2264 = inttoptr i64 %2259 to i32*
  store i32 %2260, i32* %2264
  store %struct.Memory* %loadMem_468fb3, %struct.Memory** %MEMORY
  %loadMem_468fb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2266 = getelementptr inbounds %struct.GPR, %struct.GPR* %2265, i32 0, i32 33
  %2267 = getelementptr inbounds %struct.Reg, %struct.Reg* %2266, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2267 to i64*
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 7
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %2270 to i32*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 1
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %2273 to i64*
  %2274 = load i32, i32* %EDX.i232
  %2275 = zext i32 %2274 to i64
  %2276 = load i64, i64* %PC.i231
  %2277 = add i64 %2276, 3
  store i64 %2277, i64* %PC.i231
  %2278 = shl i64 %2275, 32
  %2279 = ashr exact i64 %2278, 32
  store i64 %2279, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_468fb6, %struct.Memory** %MEMORY
  %loadMem_468fb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2281 = getelementptr inbounds %struct.GPR, %struct.GPR* %2280, i32 0, i32 33
  %2282 = getelementptr inbounds %struct.Reg, %struct.Reg* %2281, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2282 to i64*
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 5
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %ECX.i228 = bitcast %union.anon* %2285 to i32*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 1
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 15
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RBP.i230
  %2293 = load i64, i64* %RAX.i229
  %2294 = mul i64 %2293, 4
  %2295 = add i64 %2292, -912
  %2296 = add i64 %2295, %2294
  %2297 = load i32, i32* %ECX.i228
  %2298 = zext i32 %2297 to i64
  %2299 = load i64, i64* %PC.i227
  %2300 = add i64 %2299, 7
  store i64 %2300, i64* %PC.i227
  %2301 = inttoptr i64 %2296 to i32*
  store i32 %2297, i32* %2301
  store %struct.Memory* %loadMem_468fb9, %struct.Memory** %MEMORY
  %loadMem_468fc0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 33
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %PC.i226
  %2306 = add i64 %2305, 127
  %2307 = load i64, i64* %PC.i226
  %2308 = add i64 %2307, 5
  store i64 %2308, i64* %PC.i226
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2306, i64* %2309, align 8
  store %struct.Memory* %loadMem_468fc0, %struct.Memory** %MEMORY
  br label %block_.L_46903f

block_.L_468fc5:                                  ; preds = %block_468f7e, %block_.L_468f71
  %loadMem_468fc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 33
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2312 to i64*
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 15
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %RBP.i225
  %2317 = sub i64 %2316, 32
  %2318 = load i64, i64* %PC.i224
  %2319 = add i64 %2318, 7
  store i64 %2319, i64* %PC.i224
  %2320 = inttoptr i64 %2317 to i32*
  store i32 0, i32* %2320
  store %struct.Memory* %loadMem_468fc5, %struct.Memory** %MEMORY
  br label %block_.L_468fcc

block_.L_468fcc:                                  ; preds = %block_.L_46902c, %block_.L_468fc5
  %loadMem_468fcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 15
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %2326 to i64*
  %2327 = load i64, i64* %RBP.i223
  %2328 = sub i64 %2327, 32
  %2329 = load i64, i64* %PC.i222
  %2330 = add i64 %2329, 4
  store i64 %2330, i64* %PC.i222
  %2331 = inttoptr i64 %2328 to i32*
  %2332 = load i32, i32* %2331
  %2333 = sub i32 %2332, 3
  %2334 = icmp ult i32 %2332, 3
  %2335 = zext i1 %2334 to i8
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2335, i8* %2336, align 1
  %2337 = and i32 %2333, 255
  %2338 = call i32 @llvm.ctpop.i32(i32 %2337)
  %2339 = trunc i32 %2338 to i8
  %2340 = and i8 %2339, 1
  %2341 = xor i8 %2340, 1
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2341, i8* %2342, align 1
  %2343 = xor i32 %2332, 3
  %2344 = xor i32 %2343, %2333
  %2345 = lshr i32 %2344, 4
  %2346 = trunc i32 %2345 to i8
  %2347 = and i8 %2346, 1
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2347, i8* %2348, align 1
  %2349 = icmp eq i32 %2333, 0
  %2350 = zext i1 %2349 to i8
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2350, i8* %2351, align 1
  %2352 = lshr i32 %2333, 31
  %2353 = trunc i32 %2352 to i8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2353, i8* %2354, align 1
  %2355 = lshr i32 %2332, 31
  %2356 = xor i32 %2352, %2355
  %2357 = add i32 %2356, %2355
  %2358 = icmp eq i32 %2357, 2
  %2359 = zext i1 %2358 to i8
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2359, i8* %2360, align 1
  store %struct.Memory* %loadMem_468fcc, %struct.Memory** %MEMORY
  %loadMem_468fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %PC.i221
  %2365 = add i64 %2364, 106
  %2366 = load i64, i64* %PC.i221
  %2367 = add i64 %2366, 6
  %2368 = load i64, i64* %PC.i221
  %2369 = add i64 %2368, 6
  store i64 %2369, i64* %PC.i221
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2371 = load i8, i8* %2370, align 1
  %2372 = icmp ne i8 %2371, 0
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2374 = load i8, i8* %2373, align 1
  %2375 = icmp ne i8 %2374, 0
  %2376 = xor i1 %2372, %2375
  %2377 = xor i1 %2376, true
  %2378 = zext i1 %2377 to i8
  store i8 %2378, i8* %BRANCH_TAKEN, align 1
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2380 = select i1 %2376, i64 %2367, i64 %2365
  store i64 %2380, i64* %2379, align 8
  store %struct.Memory* %loadMem_468fd0, %struct.Memory** %MEMORY
  %loadBr_468fd0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468fd0 = icmp eq i8 %loadBr_468fd0, 1
  br i1 %cmpBr_468fd0, label %block_.L_46903a, label %block_468fd6

block_468fd6:                                     ; preds = %block_.L_468fcc
  %loadMem_468fd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 1
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %2386 to i64*
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 15
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %2389 to i64*
  %2390 = load i64, i64* %RBP.i220
  %2391 = sub i64 %2390, 32
  %2392 = load i64, i64* %PC.i218
  %2393 = add i64 %2392, 4
  store i64 %2393, i64* %PC.i218
  %2394 = inttoptr i64 %2391 to i32*
  %2395 = load i32, i32* %2394
  %2396 = sext i32 %2395 to i64
  store i64 %2396, i64* %RAX.i219, align 8
  store %struct.Memory* %loadMem_468fd6, %struct.Memory** %MEMORY
  %loadMem_468fda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %2402 to i64*
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 15
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %2405 to i64*
  %2406 = load i64, i64* %RBP.i217
  %2407 = load i64, i64* %RAX.i216
  %2408 = mul i64 %2407, 4
  %2409 = add i64 %2406, -700
  %2410 = add i64 %2409, %2408
  %2411 = load i64, i64* %PC.i215
  %2412 = add i64 %2411, 8
  store i64 %2412, i64* %PC.i215
  %2413 = inttoptr i64 %2410 to i32*
  %2414 = load i32, i32* %2413
  %2415 = sext i32 %2414 to i64
  store i64 %2415, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_468fda, %struct.Memory** %MEMORY
  %loadMem_468fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 1
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 15
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2424 to i64*
  %2425 = load i64, i64* %RBP.i214
  %2426 = load i64, i64* %RAX.i213
  %2427 = mul i64 %2426, 4
  %2428 = add i64 %2425, -2512
  %2429 = add i64 %2428, %2427
  %2430 = load i64, i64* %PC.i212
  %2431 = add i64 %2430, 8
  store i64 %2431, i64* %PC.i212
  %2432 = inttoptr i64 %2429 to i32*
  %2433 = load i32, i32* %2432
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2434, align 1
  %2435 = and i32 %2433, 255
  %2436 = call i32 @llvm.ctpop.i32(i32 %2435)
  %2437 = trunc i32 %2436 to i8
  %2438 = and i8 %2437, 1
  %2439 = xor i8 %2438, 1
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2439, i8* %2440, align 1
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2441, align 1
  %2442 = icmp eq i32 %2433, 0
  %2443 = zext i1 %2442 to i8
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2443, i8* %2444, align 1
  %2445 = lshr i32 %2433, 31
  %2446 = trunc i32 %2445 to i8
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2446, i8* %2447, align 1
  %2448 = lshr i32 %2433, 31
  %2449 = xor i32 %2445, %2448
  %2450 = add i32 %2449, %2448
  %2451 = icmp eq i32 %2450, 2
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2452, i8* %2453, align 1
  store %struct.Memory* %loadMem_468fe2, %struct.Memory** %MEMORY
  %loadMem_468fea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 33
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %PC.i211
  %2458 = add i64 %2457, 61
  %2459 = load i64, i64* %PC.i211
  %2460 = add i64 %2459, 6
  %2461 = load i64, i64* %PC.i211
  %2462 = add i64 %2461, 6
  store i64 %2462, i64* %PC.i211
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2464 = load i8, i8* %2463, align 1
  %2465 = icmp eq i8 %2464, 0
  %2466 = zext i1 %2465 to i8
  store i8 %2466, i8* %BRANCH_TAKEN, align 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2468 = select i1 %2465, i64 %2458, i64 %2460
  store i64 %2468, i64* %2467, align 8
  store %struct.Memory* %loadMem_468fea, %struct.Memory** %MEMORY
  %loadBr_468fea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_468fea = icmp eq i8 %loadBr_468fea, 1
  br i1 %cmpBr_468fea, label %block_.L_469027, label %block_468ff0

block_468ff0:                                     ; preds = %block_468fd6
  %loadMem_468ff0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 33
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2471 to i64*
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2473 = getelementptr inbounds %struct.GPR, %struct.GPR* %2472, i32 0, i32 1
  %2474 = getelementptr inbounds %struct.Reg, %struct.Reg* %2473, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2474 to i64*
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2476 = getelementptr inbounds %struct.GPR, %struct.GPR* %2475, i32 0, i32 15
  %2477 = getelementptr inbounds %struct.Reg, %struct.Reg* %2476, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2477 to i64*
  %2478 = load i64, i64* %RBP.i210
  %2479 = sub i64 %2478, 32
  %2480 = load i64, i64* %PC.i208
  %2481 = add i64 %2480, 4
  store i64 %2481, i64* %PC.i208
  %2482 = inttoptr i64 %2479 to i32*
  %2483 = load i32, i32* %2482
  %2484 = sext i32 %2483 to i64
  store i64 %2484, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_468ff0, %struct.Memory** %MEMORY
  %loadMem_468ff4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 1
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 15
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RBP.i207
  %2495 = load i64, i64* %RAX.i206
  %2496 = mul i64 %2495, 4
  %2497 = add i64 %2494, -700
  %2498 = add i64 %2497, %2496
  %2499 = load i64, i64* %PC.i205
  %2500 = add i64 %2499, 8
  store i64 %2500, i64* %PC.i205
  %2501 = inttoptr i64 %2498 to i32*
  %2502 = load i32, i32* %2501
  %2503 = sext i32 %2502 to i64
  store i64 %2503, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_468ff4, %struct.Memory** %MEMORY
  %loadMem_468ffc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 33
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 1
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %2509 to i64*
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 15
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %2512 to i64*
  %2513 = load i64, i64* %RBP.i204
  %2514 = load i64, i64* %RAX.i203
  %2515 = mul i64 %2514, 4
  %2516 = add i64 %2513, -2512
  %2517 = add i64 %2516, %2515
  %2518 = load i64, i64* %PC.i202
  %2519 = add i64 %2518, 11
  store i64 %2519, i64* %PC.i202
  %2520 = inttoptr i64 %2517 to i32*
  store i32 1, i32* %2520
  store %struct.Memory* %loadMem_468ffc, %struct.Memory** %MEMORY
  %loadMem_469007 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 33
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2523 to i64*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 1
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 15
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %2529 to i64*
  %2530 = load i64, i64* %RBP.i201
  %2531 = sub i64 %2530, 32
  %2532 = load i64, i64* %PC.i199
  %2533 = add i64 %2532, 4
  store i64 %2533, i64* %PC.i199
  %2534 = inttoptr i64 %2531 to i32*
  %2535 = load i32, i32* %2534
  %2536 = sext i32 %2535 to i64
  store i64 %2536, i64* %RAX.i200, align 8
  store %struct.Memory* %loadMem_469007, %struct.Memory** %MEMORY
  %loadMem_46900b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 1
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 5
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RBP.i198
  %2550 = load i64, i64* %RAX.i196
  %2551 = mul i64 %2550, 4
  %2552 = add i64 %2549, -700
  %2553 = add i64 %2552, %2551
  %2554 = load i64, i64* %PC.i195
  %2555 = add i64 %2554, 7
  store i64 %2555, i64* %PC.i195
  %2556 = inttoptr i64 %2553 to i32*
  %2557 = load i32, i32* %2556
  %2558 = zext i32 %2557 to i64
  store i64 %2558, i64* %RCX.i197, align 8
  store %struct.Memory* %loadMem_46900b, %struct.Memory** %MEMORY
  %loadMem_469012 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 33
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2561 to i64*
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 7
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %RDX.i193 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 15
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %RBP.i194
  %2569 = sub i64 %2568, 36
  %2570 = load i64, i64* %PC.i192
  %2571 = add i64 %2570, 3
  store i64 %2571, i64* %PC.i192
  %2572 = inttoptr i64 %2569 to i32*
  %2573 = load i32, i32* %2572
  %2574 = zext i32 %2573 to i64
  store i64 %2574, i64* %RDX.i193, align 8
  store %struct.Memory* %loadMem_469012, %struct.Memory** %MEMORY
  %loadMem_469015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2576 = getelementptr inbounds %struct.GPR, %struct.GPR* %2575, i32 0, i32 33
  %2577 = getelementptr inbounds %struct.Reg, %struct.Reg* %2576, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2577 to i64*
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2579 = getelementptr inbounds %struct.GPR, %struct.GPR* %2578, i32 0, i32 7
  %2580 = getelementptr inbounds %struct.Reg, %struct.Reg* %2579, i32 0, i32 0
  %EDX.i190 = bitcast %union.anon* %2580 to i32*
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 9
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %RSI.i191 = bitcast %union.anon* %2583 to i64*
  %2584 = load i32, i32* %EDX.i190
  %2585 = zext i32 %2584 to i64
  %2586 = load i64, i64* %PC.i189
  %2587 = add i64 %2586, 2
  store i64 %2587, i64* %PC.i189
  %2588 = and i64 %2585, 4294967295
  store i64 %2588, i64* %RSI.i191, align 8
  store %struct.Memory* %loadMem_469015, %struct.Memory** %MEMORY
  %loadMem_469017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 9
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RSI.i188 = bitcast %union.anon* %2594 to i64*
  %2595 = load i64, i64* %RSI.i188
  %2596 = load i64, i64* %PC.i187
  %2597 = add i64 %2596, 3
  store i64 %2597, i64* %PC.i187
  %2598 = trunc i64 %2595 to i32
  %2599 = add i32 1, %2598
  %2600 = zext i32 %2599 to i64
  store i64 %2600, i64* %RSI.i188, align 8
  %2601 = icmp ult i32 %2599, %2598
  %2602 = icmp ult i32 %2599, 1
  %2603 = or i1 %2601, %2602
  %2604 = zext i1 %2603 to i8
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2604, i8* %2605, align 1
  %2606 = and i32 %2599, 255
  %2607 = call i32 @llvm.ctpop.i32(i32 %2606)
  %2608 = trunc i32 %2607 to i8
  %2609 = and i8 %2608, 1
  %2610 = xor i8 %2609, 1
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2610, i8* %2611, align 1
  %2612 = xor i64 1, %2595
  %2613 = trunc i64 %2612 to i32
  %2614 = xor i32 %2613, %2599
  %2615 = lshr i32 %2614, 4
  %2616 = trunc i32 %2615 to i8
  %2617 = and i8 %2616, 1
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2617, i8* %2618, align 1
  %2619 = icmp eq i32 %2599, 0
  %2620 = zext i1 %2619 to i8
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2620, i8* %2621, align 1
  %2622 = lshr i32 %2599, 31
  %2623 = trunc i32 %2622 to i8
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2623, i8* %2624, align 1
  %2625 = lshr i32 %2598, 31
  %2626 = xor i32 %2622, %2625
  %2627 = add i32 %2626, %2622
  %2628 = icmp eq i32 %2627, 2
  %2629 = zext i1 %2628 to i8
  %2630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2629, i8* %2630, align 1
  store %struct.Memory* %loadMem_469017, %struct.Memory** %MEMORY
  %loadMem_46901a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 9
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2636 to i32*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 15
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %RBP.i186
  %2641 = sub i64 %2640, 36
  %2642 = load i32, i32* %ESI.i
  %2643 = zext i32 %2642 to i64
  %2644 = load i64, i64* %PC.i185
  %2645 = add i64 %2644, 3
  store i64 %2645, i64* %PC.i185
  %2646 = inttoptr i64 %2641 to i32*
  store i32 %2642, i32* %2646
  store %struct.Memory* %loadMem_46901a, %struct.Memory** %MEMORY
  %loadMem_46901d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 33
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 7
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %EDX.i183 = bitcast %union.anon* %2652 to i32*
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 1
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %2655 to i64*
  %2656 = load i32, i32* %EDX.i183
  %2657 = zext i32 %2656 to i64
  %2658 = load i64, i64* %PC.i182
  %2659 = add i64 %2658, 3
  store i64 %2659, i64* %PC.i182
  %2660 = shl i64 %2657, 32
  %2661 = ashr exact i64 %2660, 32
  store i64 %2661, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_46901d, %struct.Memory** %MEMORY
  %loadMem_469020 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 5
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %ECX.i179 = bitcast %union.anon* %2667 to i32*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 1
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %2670 to i64*
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 15
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %RBP.i181 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %RBP.i181
  %2675 = load i64, i64* %RAX.i180
  %2676 = mul i64 %2675, 4
  %2677 = add i64 %2674, -912
  %2678 = add i64 %2677, %2676
  %2679 = load i32, i32* %ECX.i179
  %2680 = zext i32 %2679 to i64
  %2681 = load i64, i64* %PC.i178
  %2682 = add i64 %2681, 7
  store i64 %2682, i64* %PC.i178
  %2683 = inttoptr i64 %2678 to i32*
  store i32 %2679, i32* %2683
  store %struct.Memory* %loadMem_469020, %struct.Memory** %MEMORY
  br label %block_.L_469027

block_.L_469027:                                  ; preds = %block_468ff0, %block_468fd6
  %loadMem_469027 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i177
  %2688 = add i64 %2687, 5
  %2689 = load i64, i64* %PC.i177
  %2690 = add i64 %2689, 5
  store i64 %2690, i64* %PC.i177
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2688, i64* %2691, align 8
  store %struct.Memory* %loadMem_469027, %struct.Memory** %MEMORY
  br label %block_.L_46902c

block_.L_46902c:                                  ; preds = %block_.L_469027
  %loadMem_46902c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 1
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 15
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %RBP.i176
  %2702 = sub i64 %2701, 32
  %2703 = load i64, i64* %PC.i174
  %2704 = add i64 %2703, 3
  store i64 %2704, i64* %PC.i174
  %2705 = inttoptr i64 %2702 to i32*
  %2706 = load i32, i32* %2705
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_46902c, %struct.Memory** %MEMORY
  %loadMem_46902f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 1
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %2713 to i64*
  %2714 = load i64, i64* %RAX.i173
  %2715 = load i64, i64* %PC.i172
  %2716 = add i64 %2715, 3
  store i64 %2716, i64* %PC.i172
  %2717 = trunc i64 %2714 to i32
  %2718 = add i32 1, %2717
  %2719 = zext i32 %2718 to i64
  store i64 %2719, i64* %RAX.i173, align 8
  %2720 = icmp ult i32 %2718, %2717
  %2721 = icmp ult i32 %2718, 1
  %2722 = or i1 %2720, %2721
  %2723 = zext i1 %2722 to i8
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2723, i8* %2724, align 1
  %2725 = and i32 %2718, 255
  %2726 = call i32 @llvm.ctpop.i32(i32 %2725)
  %2727 = trunc i32 %2726 to i8
  %2728 = and i8 %2727, 1
  %2729 = xor i8 %2728, 1
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2729, i8* %2730, align 1
  %2731 = xor i64 1, %2714
  %2732 = trunc i64 %2731 to i32
  %2733 = xor i32 %2732, %2718
  %2734 = lshr i32 %2733, 4
  %2735 = trunc i32 %2734 to i8
  %2736 = and i8 %2735, 1
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2736, i8* %2737, align 1
  %2738 = icmp eq i32 %2718, 0
  %2739 = zext i1 %2738 to i8
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2739, i8* %2740, align 1
  %2741 = lshr i32 %2718, 31
  %2742 = trunc i32 %2741 to i8
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2742, i8* %2743, align 1
  %2744 = lshr i32 %2717, 31
  %2745 = xor i32 %2741, %2744
  %2746 = add i32 %2745, %2741
  %2747 = icmp eq i32 %2746, 2
  %2748 = zext i1 %2747 to i8
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2748, i8* %2749, align 1
  store %struct.Memory* %loadMem_46902f, %struct.Memory** %MEMORY
  %loadMem_469032 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 1
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %EAX.i170 = bitcast %union.anon* %2755 to i32*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 15
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %2758 to i64*
  %2759 = load i64, i64* %RBP.i171
  %2760 = sub i64 %2759, 32
  %2761 = load i32, i32* %EAX.i170
  %2762 = zext i32 %2761 to i64
  %2763 = load i64, i64* %PC.i169
  %2764 = add i64 %2763, 3
  store i64 %2764, i64* %PC.i169
  %2765 = inttoptr i64 %2760 to i32*
  store i32 %2761, i32* %2765
  store %struct.Memory* %loadMem_469032, %struct.Memory** %MEMORY
  %loadMem_469035 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %2768 to i64*
  %2769 = load i64, i64* %PC.i168
  %2770 = add i64 %2769, -105
  %2771 = load i64, i64* %PC.i168
  %2772 = add i64 %2771, 5
  store i64 %2772, i64* %PC.i168
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2770, i64* %2773, align 8
  store %struct.Memory* %loadMem_469035, %struct.Memory** %MEMORY
  br label %block_.L_468fcc

block_.L_46903a:                                  ; preds = %block_.L_468fcc
  %loadMem_46903a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 33
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2776 to i64*
  %2777 = load i64, i64* %PC.i167
  %2778 = add i64 %2777, 5
  %2779 = load i64, i64* %PC.i167
  %2780 = add i64 %2779, 5
  store i64 %2780, i64* %PC.i167
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2778, i64* %2781, align 8
  store %struct.Memory* %loadMem_46903a, %struct.Memory** %MEMORY
  br label %block_.L_46903f

block_.L_46903f:                                  ; preds = %block_.L_46903a, %block_468f93, %block_468f3f, %block_468eeb, %block_468ec4, %block_468e7b
  %loadMem_46903f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 1
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %2787 to i64*
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 15
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %2790 to i64*
  %2791 = load i64, i64* %RBP.i166
  %2792 = sub i64 %2791, 28
  %2793 = load i64, i64* %PC.i164
  %2794 = add i64 %2793, 3
  store i64 %2794, i64* %PC.i164
  %2795 = inttoptr i64 %2792 to i32*
  %2796 = load i32, i32* %2795
  %2797 = zext i32 %2796 to i64
  store i64 %2797, i64* %RAX.i165, align 8
  store %struct.Memory* %loadMem_46903f, %struct.Memory** %MEMORY
  %loadMem_469042 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2799 = getelementptr inbounds %struct.GPR, %struct.GPR* %2798, i32 0, i32 33
  %2800 = getelementptr inbounds %struct.Reg, %struct.Reg* %2799, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %2800 to i64*
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 1
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %2803 to i64*
  %2804 = load i64, i64* %RAX.i163
  %2805 = load i64, i64* %PC.i162
  %2806 = add i64 %2805, 3
  store i64 %2806, i64* %PC.i162
  %2807 = trunc i64 %2804 to i32
  %2808 = add i32 1, %2807
  %2809 = zext i32 %2808 to i64
  store i64 %2809, i64* %RAX.i163, align 8
  %2810 = icmp ult i32 %2808, %2807
  %2811 = icmp ult i32 %2808, 1
  %2812 = or i1 %2810, %2811
  %2813 = zext i1 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2813, i8* %2814, align 1
  %2815 = and i32 %2808, 255
  %2816 = call i32 @llvm.ctpop.i32(i32 %2815)
  %2817 = trunc i32 %2816 to i8
  %2818 = and i8 %2817, 1
  %2819 = xor i8 %2818, 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2819, i8* %2820, align 1
  %2821 = xor i64 1, %2804
  %2822 = trunc i64 %2821 to i32
  %2823 = xor i32 %2822, %2808
  %2824 = lshr i32 %2823, 4
  %2825 = trunc i32 %2824 to i8
  %2826 = and i8 %2825, 1
  %2827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2826, i8* %2827, align 1
  %2828 = icmp eq i32 %2808, 0
  %2829 = zext i1 %2828 to i8
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2829, i8* %2830, align 1
  %2831 = lshr i32 %2808, 31
  %2832 = trunc i32 %2831 to i8
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2832, i8* %2833, align 1
  %2834 = lshr i32 %2807, 31
  %2835 = xor i32 %2831, %2834
  %2836 = add i32 %2835, %2831
  %2837 = icmp eq i32 %2836, 2
  %2838 = zext i1 %2837 to i8
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2838, i8* %2839, align 1
  store %struct.Memory* %loadMem_469042, %struct.Memory** %MEMORY
  %loadMem_469045 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 1
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %2845 to i32*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 15
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RBP.i161
  %2850 = sub i64 %2849, 28
  %2851 = load i32, i32* %EAX.i160
  %2852 = zext i32 %2851 to i64
  %2853 = load i64, i64* %PC.i159
  %2854 = add i64 %2853, 3
  store i64 %2854, i64* %PC.i159
  %2855 = inttoptr i64 %2850 to i32*
  store i32 %2851, i32* %2855
  store %struct.Memory* %loadMem_469045, %struct.Memory** %MEMORY
  %loadMem_469048 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %2858 to i64*
  %2859 = load i64, i64* %PC.i158
  %2860 = add i64 %2859, -625
  %2861 = load i64, i64* %PC.i158
  %2862 = add i64 %2861, 5
  store i64 %2862, i64* %PC.i158
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2860, i64* %2863, align 8
  store %struct.Memory* %loadMem_469048, %struct.Memory** %MEMORY
  br label %block_.L_468dd7

block_.L_46904d:                                  ; preds = %block_.L_468dd7
  %loadMem_46904d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2865 = getelementptr inbounds %struct.GPR, %struct.GPR* %2864, i32 0, i32 33
  %2866 = getelementptr inbounds %struct.Reg, %struct.Reg* %2865, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %2866 to i64*
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 15
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %2869 to i64*
  %2870 = load i64, i64* %RBP.i157
  %2871 = sub i64 %2870, 40
  %2872 = load i64, i64* %PC.i156
  %2873 = add i64 %2872, 7
  store i64 %2873, i64* %PC.i156
  %2874 = inttoptr i64 %2871 to i32*
  store i32 0, i32* %2874
  store %struct.Memory* %loadMem_46904d, %struct.Memory** %MEMORY
  br label %block_.L_469054

block_.L_469054:                                  ; preds = %block_.L_469199, %block_.L_46904d
  %loadMem_469054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2876 = getelementptr inbounds %struct.GPR, %struct.GPR* %2875, i32 0, i32 33
  %2877 = getelementptr inbounds %struct.Reg, %struct.Reg* %2876, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2877 to i64*
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 1
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 15
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RBP.i155
  %2885 = sub i64 %2884, 40
  %2886 = load i64, i64* %PC.i153
  %2887 = add i64 %2886, 3
  store i64 %2887, i64* %PC.i153
  %2888 = inttoptr i64 %2885 to i32*
  %2889 = load i32, i32* %2888
  %2890 = zext i32 %2889 to i64
  store i64 %2890, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_469054, %struct.Memory** %MEMORY
  %loadMem_469057 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2895 = getelementptr inbounds %struct.GPR, %struct.GPR* %2894, i32 0, i32 1
  %2896 = getelementptr inbounds %struct.Reg, %struct.Reg* %2895, i32 0, i32 0
  %EAX.i151 = bitcast %union.anon* %2896 to i32*
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 15
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %2899 to i64*
  %2900 = load i32, i32* %EAX.i151
  %2901 = zext i32 %2900 to i64
  %2902 = load i64, i64* %RBP.i152
  %2903 = sub i64 %2902, 36
  %2904 = load i64, i64* %PC.i150
  %2905 = add i64 %2904, 3
  store i64 %2905, i64* %PC.i150
  %2906 = inttoptr i64 %2903 to i32*
  %2907 = load i32, i32* %2906
  %2908 = sub i32 %2900, %2907
  %2909 = icmp ult i32 %2900, %2907
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2910, i8* %2911, align 1
  %2912 = and i32 %2908, 255
  %2913 = call i32 @llvm.ctpop.i32(i32 %2912)
  %2914 = trunc i32 %2913 to i8
  %2915 = and i8 %2914, 1
  %2916 = xor i8 %2915, 1
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2916, i8* %2917, align 1
  %2918 = xor i32 %2907, %2900
  %2919 = xor i32 %2918, %2908
  %2920 = lshr i32 %2919, 4
  %2921 = trunc i32 %2920 to i8
  %2922 = and i8 %2921, 1
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2922, i8* %2923, align 1
  %2924 = icmp eq i32 %2908, 0
  %2925 = zext i1 %2924 to i8
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2925, i8* %2926, align 1
  %2927 = lshr i32 %2908, 31
  %2928 = trunc i32 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2928, i8* %2929, align 1
  %2930 = lshr i32 %2900, 31
  %2931 = lshr i32 %2907, 31
  %2932 = xor i32 %2931, %2930
  %2933 = xor i32 %2927, %2930
  %2934 = add i32 %2933, %2932
  %2935 = icmp eq i32 %2934, 2
  %2936 = zext i1 %2935 to i8
  %2937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2936, i8* %2937, align 1
  store %struct.Memory* %loadMem_469057, %struct.Memory** %MEMORY
  %loadMem_46905a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %2940 to i64*
  %2941 = load i64, i64* %PC.i149
  %2942 = add i64 %2941, 333
  %2943 = load i64, i64* %PC.i149
  %2944 = add i64 %2943, 6
  %2945 = load i64, i64* %PC.i149
  %2946 = add i64 %2945, 6
  store i64 %2946, i64* %PC.i149
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2948 = load i8, i8* %2947, align 1
  %2949 = icmp ne i8 %2948, 0
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2951 = load i8, i8* %2950, align 1
  %2952 = icmp ne i8 %2951, 0
  %2953 = xor i1 %2949, %2952
  %2954 = xor i1 %2953, true
  %2955 = zext i1 %2954 to i8
  store i8 %2955, i8* %BRANCH_TAKEN, align 1
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2957 = select i1 %2953, i64 %2944, i64 %2942
  store i64 %2957, i64* %2956, align 8
  store %struct.Memory* %loadMem_46905a, %struct.Memory** %MEMORY
  %loadBr_46905a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46905a = icmp eq i8 %loadBr_46905a, 1
  br i1 %cmpBr_46905a, label %block_.L_4691a7, label %block_469060

block_469060:                                     ; preds = %block_.L_469054
  %loadMem_469060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 15
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %RBP.i148
  %2968 = sub i64 %2967, 40
  %2969 = load i64, i64* %PC.i146
  %2970 = add i64 %2969, 4
  store i64 %2970, i64* %PC.i146
  %2971 = inttoptr i64 %2968 to i32*
  %2972 = load i32, i32* %2971
  %2973 = sext i32 %2972 to i64
  store i64 %2973, i64* %RAX.i147, align 8
  store %struct.Memory* %loadMem_469060, %struct.Memory** %MEMORY
  %loadMem_469064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 33
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %2976 to i64*
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 1
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 5
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %2982 to i64*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 15
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %RBP.i145
  %2987 = load i64, i64* %RAX.i143
  %2988 = mul i64 %2987, 4
  %2989 = add i64 %2986, -912
  %2990 = add i64 %2989, %2988
  %2991 = load i64, i64* %PC.i142
  %2992 = add i64 %2991, 7
  store i64 %2992, i64* %PC.i142
  %2993 = inttoptr i64 %2990 to i32*
  %2994 = load i32, i32* %2993
  %2995 = zext i32 %2994 to i64
  store i64 %2995, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_469064, %struct.Memory** %MEMORY
  %loadMem_46906b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 33
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2998 to i64*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 5
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %ECX.i140 = bitcast %union.anon* %3001 to i32*
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3003 = getelementptr inbounds %struct.GPR, %struct.GPR* %3002, i32 0, i32 15
  %3004 = getelementptr inbounds %struct.Reg, %struct.Reg* %3003, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3004 to i64*
  %3005 = load i64, i64* %RBP.i141
  %3006 = sub i64 %3005, 2528
  %3007 = load i32, i32* %ECX.i140
  %3008 = zext i32 %3007 to i64
  %3009 = load i64, i64* %PC.i139
  %3010 = add i64 %3009, 6
  store i64 %3010, i64* %PC.i139
  %3011 = inttoptr i64 %3006 to i32*
  store i32 %3007, i32* %3011
  store %struct.Memory* %loadMem_46906b, %struct.Memory** %MEMORY
  %loadMem_469071 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3013 = getelementptr inbounds %struct.GPR, %struct.GPR* %3012, i32 0, i32 33
  %3014 = getelementptr inbounds %struct.Reg, %struct.Reg* %3013, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3014 to i64*
  %3015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3016 = getelementptr inbounds %struct.GPR, %struct.GPR* %3015, i32 0, i32 5
  %3017 = getelementptr inbounds %struct.Reg, %struct.Reg* %3016, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %3017 to i64*
  %3018 = load i64, i64* %PC.i137
  %3019 = add i64 %3018, 7
  store i64 %3019, i64* %PC.i137
  %3020 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %3021 = zext i32 %3020 to i64
  store i64 %3021, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_469071, %struct.Memory** %MEMORY
  %loadMem_469078 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 33
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %3024 to i64*
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 5
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %3027 to i32*
  %3028 = load i32, i32* %ECX.i
  %3029 = zext i32 %3028 to i64
  %3030 = load i64, i64* %PC.i136
  %3031 = add i64 %3030, 7
  store i64 %3031, i64* %PC.i136
  %3032 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*)
  %3033 = sub i32 %3028, %3032
  %3034 = icmp ult i32 %3028, %3032
  %3035 = zext i1 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3035, i8* %3036, align 1
  %3037 = and i32 %3033, 255
  %3038 = call i32 @llvm.ctpop.i32(i32 %3037)
  %3039 = trunc i32 %3038 to i8
  %3040 = and i8 %3039, 1
  %3041 = xor i8 %3040, 1
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3041, i8* %3042, align 1
  %3043 = xor i32 %3032, %3028
  %3044 = xor i32 %3043, %3033
  %3045 = lshr i32 %3044, 4
  %3046 = trunc i32 %3045 to i8
  %3047 = and i8 %3046, 1
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3047, i8* %3048, align 1
  %3049 = icmp eq i32 %3033, 0
  %3050 = zext i1 %3049 to i8
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3050, i8* %3051, align 1
  %3052 = lshr i32 %3033, 31
  %3053 = trunc i32 %3052 to i8
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3053, i8* %3054, align 1
  %3055 = lshr i32 %3028, 31
  %3056 = lshr i32 %3032, 31
  %3057 = xor i32 %3056, %3055
  %3058 = xor i32 %3052, %3055
  %3059 = add i32 %3058, %3057
  %3060 = icmp eq i32 %3059, 2
  %3061 = zext i1 %3060 to i8
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3061, i8* %3062, align 1
  store %struct.Memory* %loadMem_469078, %struct.Memory** %MEMORY
  %loadMem_46907f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3064 = getelementptr inbounds %struct.GPR, %struct.GPR* %3063, i32 0, i32 33
  %3065 = getelementptr inbounds %struct.Reg, %struct.Reg* %3064, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3065 to i64*
  %3066 = load i64, i64* %PC.i135
  %3067 = add i64 %3066, 38
  %3068 = load i64, i64* %PC.i135
  %3069 = add i64 %3068, 6
  %3070 = load i64, i64* %PC.i135
  %3071 = add i64 %3070, 6
  store i64 %3071, i64* %PC.i135
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3073 = load i8, i8* %3072, align 1
  %3074 = icmp ne i8 %3073, 0
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3076 = load i8, i8* %3075, align 1
  %3077 = icmp ne i8 %3076, 0
  %3078 = xor i1 %3074, %3077
  %3079 = zext i1 %3078 to i8
  store i8 %3079, i8* %BRANCH_TAKEN, align 1
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3081 = select i1 %3078, i64 %3067, i64 %3069
  store i64 %3081, i64* %3080, align 8
  store %struct.Memory* %loadMem_46907f, %struct.Memory** %MEMORY
  %loadBr_46907f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46907f = icmp eq i8 %loadBr_46907f, 1
  br i1 %cmpBr_46907f, label %block_.L_4690a5, label %block_469085

block_469085:                                     ; preds = %block_469060
  %loadMem_469085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 33
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3084 to i64*
  %3085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3086 = getelementptr inbounds %struct.GPR, %struct.GPR* %3085, i32 0, i32 7
  %3087 = getelementptr inbounds %struct.Reg, %struct.Reg* %3086, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %3087 to i64*
  %3088 = load i64, i64* %PC.i133
  %3089 = add i64 %3088, 5
  store i64 %3089, i64* %PC.i133
  store i64 2, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_469085, %struct.Memory** %MEMORY
  %loadMem_46908a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3091 = getelementptr inbounds %struct.GPR, %struct.GPR* %3090, i32 0, i32 33
  %3092 = getelementptr inbounds %struct.Reg, %struct.Reg* %3091, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %3092 to i64*
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 1
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %EAX.i131 = bitcast %union.anon* %3095 to i32*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RAX.i132
  %3100 = load i32, i32* %EAX.i131
  %3101 = zext i32 %3100 to i64
  %3102 = load i64, i64* %PC.i130
  %3103 = add i64 %3102, 2
  store i64 %3103, i64* %PC.i130
  %3104 = xor i64 %3101, %3099
  %3105 = trunc i64 %3104 to i32
  %3106 = and i64 %3104, 4294967295
  store i64 %3106, i64* %RAX.i132, align 8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3107, align 1
  %3108 = and i32 %3105, 255
  %3109 = call i32 @llvm.ctpop.i32(i32 %3108)
  %3110 = trunc i32 %3109 to i8
  %3111 = and i8 %3110, 1
  %3112 = xor i8 %3111, 1
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3112, i8* %3113, align 1
  %3114 = icmp eq i32 %3105, 0
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3115, i8* %3116, align 1
  %3117 = lshr i32 %3105, 31
  %3118 = trunc i32 %3117 to i8
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3118, i8* %3119, align 1
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3120, align 1
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3121, align 1
  store %struct.Memory* %loadMem_46908a, %struct.Memory** %MEMORY
  %loadMem_46908c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 1
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %EAX.i128 = bitcast %union.anon* %3127 to i32*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 5
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %3130 to i64*
  %3131 = load i32, i32* %EAX.i128
  %3132 = zext i32 %3131 to i64
  %3133 = load i64, i64* %PC.i127
  %3134 = add i64 %3133, 2
  store i64 %3134, i64* %PC.i127
  %3135 = and i64 %3132, 4294967295
  store i64 %3135, i64* %RCX.i129, align 8
  store %struct.Memory* %loadMem_46908c, %struct.Memory** %MEMORY
  %loadMem_46908e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 11
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 15
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RBP.i126
  %3146 = sub i64 %3145, 2528
  %3147 = load i64, i64* %PC.i125
  %3148 = add i64 %3147, 6
  store i64 %3148, i64* %PC.i125
  %3149 = inttoptr i64 %3146 to i32*
  %3150 = load i32, i32* %3149
  %3151 = zext i32 %3150 to i64
  store i64 %3151, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_46908e, %struct.Memory** %MEMORY
  %loadMem_469094 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 9
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 15
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %RBP.i124
  %3162 = sub i64 %3161, 20
  %3163 = load i64, i64* %PC.i123
  %3164 = add i64 %3163, 3
  store i64 %3164, i64* %PC.i123
  %3165 = inttoptr i64 %3162 to i32*
  %3166 = load i32, i32* %3165
  %3167 = zext i32 %3166 to i64
  store i64 %3167, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_469094, %struct.Memory** %MEMORY
  %loadMem1_469097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 33
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %PC.i122
  %3172 = add i64 %3171, -359143
  %3173 = load i64, i64* %PC.i122
  %3174 = add i64 %3173, 5
  %3175 = load i64, i64* %PC.i122
  %3176 = add i64 %3175, 5
  store i64 %3176, i64* %PC.i122
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3178 = load i64, i64* %3177, align 8
  %3179 = add i64 %3178, -8
  %3180 = inttoptr i64 %3179 to i64*
  store i64 %3174, i64* %3180
  store i64 %3179, i64* %3177, align 8
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3172, i64* %3181, align 8
  store %struct.Memory* %loadMem1_469097, %struct.Memory** %MEMORY
  %loadMem2_469097 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_469097 = load i64, i64* %3
  %call2_469097 = call %struct.Memory* @sub_4115b0.approxlib(%struct.State* %0, i64 %loadPC_469097, %struct.Memory* %loadMem2_469097)
  store %struct.Memory* %call2_469097, %struct.Memory** %MEMORY
  %loadMem_46909c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 1
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %3187 to i32*
  %3188 = load i32, i32* %EAX.i121
  %3189 = zext i32 %3188 to i64
  %3190 = load i64, i64* %PC.i120
  %3191 = add i64 %3190, 3
  store i64 %3191, i64* %PC.i120
  %3192 = sub i32 %3188, 1
  %3193 = icmp ult i32 %3188, 1
  %3194 = zext i1 %3193 to i8
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3194, i8* %3195, align 1
  %3196 = and i32 %3192, 255
  %3197 = call i32 @llvm.ctpop.i32(i32 %3196)
  %3198 = trunc i32 %3197 to i8
  %3199 = and i8 %3198, 1
  %3200 = xor i8 %3199, 1
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3200, i8* %3201, align 1
  %3202 = xor i64 1, %3189
  %3203 = trunc i64 %3202 to i32
  %3204 = xor i32 %3203, %3192
  %3205 = lshr i32 %3204, 4
  %3206 = trunc i32 %3205 to i8
  %3207 = and i8 %3206, 1
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3207, i8* %3208, align 1
  %3209 = icmp eq i32 %3192, 0
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3210, i8* %3211, align 1
  %3212 = lshr i32 %3192, 31
  %3213 = trunc i32 %3212 to i8
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3213, i8* %3214, align 1
  %3215 = lshr i32 %3188, 31
  %3216 = xor i32 %3212, %3215
  %3217 = add i32 %3216, %3215
  %3218 = icmp eq i32 %3217, 2
  %3219 = zext i1 %3218 to i8
  %3220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3219, i8* %3220, align 1
  store %struct.Memory* %loadMem_46909c, %struct.Memory** %MEMORY
  %loadMem_46909f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %PC.i119
  %3225 = add i64 %3224, 245
  %3226 = load i64, i64* %PC.i119
  %3227 = add i64 %3226, 6
  %3228 = load i64, i64* %PC.i119
  %3229 = add i64 %3228, 6
  store i64 %3229, i64* %PC.i119
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3231 = load i8, i8* %3230, align 1
  %3232 = icmp ne i8 %3231, 0
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3234 = load i8, i8* %3233, align 1
  %3235 = icmp ne i8 %3234, 0
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3237 = load i8, i8* %3236, align 1
  %3238 = icmp ne i8 %3237, 0
  %3239 = xor i1 %3235, %3238
  %3240 = or i1 %3232, %3239
  %3241 = zext i1 %3240 to i8
  store i8 %3241, i8* %BRANCH_TAKEN, align 1
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3243 = select i1 %3240, i64 %3225, i64 %3227
  store i64 %3243, i64* %3242, align 8
  store %struct.Memory* %loadMem_46909f, %struct.Memory** %MEMORY
  %loadBr_46909f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46909f = icmp eq i8 %loadBr_46909f, 1
  br i1 %cmpBr_46909f, label %block_.L_469194, label %block_.L_4690a5

block_.L_4690a5:                                  ; preds = %block_469085, %block_469060
  %loadMem_4690a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3245 = getelementptr inbounds %struct.GPR, %struct.GPR* %3244, i32 0, i32 33
  %3246 = getelementptr inbounds %struct.Reg, %struct.Reg* %3245, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3246 to i64*
  %3247 = load i64, i64* %PC.i118
  %3248 = add i64 %3247, 5
  %3249 = load i64, i64* %PC.i118
  %3250 = add i64 %3249, 5
  store i64 %3250, i64* %PC.i118
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3248, i64* %3251, align 8
  store %struct.Memory* %loadMem_4690a5, %struct.Memory** %MEMORY
  br label %block_.L_4690aa

block_.L_4690aa:                                  ; preds = %block_.L_4690a5
  %loadMem_4690aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 33
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3254 to i64*
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3256 = getelementptr inbounds %struct.GPR, %struct.GPR* %3255, i32 0, i32 15
  %3257 = getelementptr inbounds %struct.Reg, %struct.Reg* %3256, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %3257 to i64*
  %3258 = load i64, i64* %RBP.i117
  %3259 = sub i64 %3258, 2532
  %3260 = load i64, i64* %PC.i116
  %3261 = add i64 %3260, 10
  store i64 %3261, i64* %PC.i116
  %3262 = inttoptr i64 %3259 to i32*
  store i32 0, i32* %3262
  store %struct.Memory* %loadMem_4690aa, %struct.Memory** %MEMORY
  br label %block_.L_4690b4

block_.L_4690b4:                                  ; preds = %block_.L_46910a, %block_.L_4690aa
  %loadMem_4690b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 1
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 15
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %3271 to i64*
  %3272 = load i64, i64* %RBP.i115
  %3273 = sub i64 %3272, 2532
  %3274 = load i64, i64* %PC.i113
  %3275 = add i64 %3274, 6
  store i64 %3275, i64* %PC.i113
  %3276 = inttoptr i64 %3273 to i32*
  %3277 = load i32, i32* %3276
  %3278 = zext i32 %3277 to i64
  store i64 %3278, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_4690b4, %struct.Memory** %MEMORY
  %loadMem_4690ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 33
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3281 to i64*
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3283 = getelementptr inbounds %struct.GPR, %struct.GPR* %3282, i32 0, i32 5
  %3284 = getelementptr inbounds %struct.Reg, %struct.Reg* %3283, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %3284 to i64*
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 15
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %3287 to i64*
  %3288 = load i64, i64* %RBP.i112
  %3289 = sub i64 %3288, 16
  %3290 = load i64, i64* %PC.i110
  %3291 = add i64 %3290, 4
  store i64 %3291, i64* %PC.i110
  %3292 = inttoptr i64 %3289 to i64*
  %3293 = load i64, i64* %3292
  store i64 %3293, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_4690ba, %struct.Memory** %MEMORY
  %loadMem_4690be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 33
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %3296 to i64*
  %3297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3298 = getelementptr inbounds %struct.GPR, %struct.GPR* %3297, i32 0, i32 1
  %3299 = getelementptr inbounds %struct.Reg, %struct.Reg* %3298, i32 0, i32 0
  %EAX.i108 = bitcast %union.anon* %3299 to i32*
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3301 = getelementptr inbounds %struct.GPR, %struct.GPR* %3300, i32 0, i32 5
  %3302 = getelementptr inbounds %struct.Reg, %struct.Reg* %3301, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %3302 to i64*
  %3303 = load i32, i32* %EAX.i108
  %3304 = zext i32 %3303 to i64
  %3305 = load i64, i64* %RCX.i109
  %3306 = add i64 %3305, 400
  %3307 = load i64, i64* %PC.i107
  %3308 = add i64 %3307, 6
  store i64 %3308, i64* %PC.i107
  %3309 = inttoptr i64 %3306 to i32*
  %3310 = load i32, i32* %3309
  %3311 = sub i32 %3303, %3310
  %3312 = icmp ult i32 %3303, %3310
  %3313 = zext i1 %3312 to i8
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3313, i8* %3314, align 1
  %3315 = and i32 %3311, 255
  %3316 = call i32 @llvm.ctpop.i32(i32 %3315)
  %3317 = trunc i32 %3316 to i8
  %3318 = and i8 %3317, 1
  %3319 = xor i8 %3318, 1
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3319, i8* %3320, align 1
  %3321 = xor i32 %3310, %3303
  %3322 = xor i32 %3321, %3311
  %3323 = lshr i32 %3322, 4
  %3324 = trunc i32 %3323 to i8
  %3325 = and i8 %3324, 1
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3325, i8* %3326, align 1
  %3327 = icmp eq i32 %3311, 0
  %3328 = zext i1 %3327 to i8
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3328, i8* %3329, align 1
  %3330 = lshr i32 %3311, 31
  %3331 = trunc i32 %3330 to i8
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3331, i8* %3332, align 1
  %3333 = lshr i32 %3303, 31
  %3334 = lshr i32 %3310, 31
  %3335 = xor i32 %3334, %3333
  %3336 = xor i32 %3330, %3333
  %3337 = add i32 %3336, %3335
  %3338 = icmp eq i32 %3337, 2
  %3339 = zext i1 %3338 to i8
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3339, i8* %3340, align 1
  store %struct.Memory* %loadMem_4690be, %struct.Memory** %MEMORY
  %loadMem_4690c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3343 to i64*
  %3344 = load i64, i64* %PC.i106
  %3345 = add i64 %3344, 90
  %3346 = load i64, i64* %PC.i106
  %3347 = add i64 %3346, 6
  %3348 = load i64, i64* %PC.i106
  %3349 = add i64 %3348, 6
  store i64 %3349, i64* %PC.i106
  %3350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3351 = load i8, i8* %3350, align 1
  %3352 = icmp ne i8 %3351, 0
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3354 = load i8, i8* %3353, align 1
  %3355 = icmp ne i8 %3354, 0
  %3356 = xor i1 %3352, %3355
  %3357 = xor i1 %3356, true
  %3358 = zext i1 %3357 to i8
  store i8 %3358, i8* %BRANCH_TAKEN, align 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3360 = select i1 %3356, i64 %3347, i64 %3345
  store i64 %3360, i64* %3359, align 8
  store %struct.Memory* %loadMem_4690c4, %struct.Memory** %MEMORY
  %loadBr_4690c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4690c4 = icmp eq i8 %loadBr_4690c4, 1
  br i1 %cmpBr_4690c4, label %block_.L_46911e, label %block_4690ca

block_4690ca:                                     ; preds = %block_.L_4690b4
  %loadMem_4690ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 33
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3363 to i64*
  %3364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3365 = getelementptr inbounds %struct.GPR, %struct.GPR* %3364, i32 0, i32 1
  %3366 = getelementptr inbounds %struct.Reg, %struct.Reg* %3365, i32 0, i32 0
  %RAX.i104 = bitcast %union.anon* %3366 to i64*
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 15
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %3369 to i64*
  %3370 = load i64, i64* %RBP.i105
  %3371 = sub i64 %3370, 16
  %3372 = load i64, i64* %PC.i103
  %3373 = add i64 %3372, 4
  store i64 %3373, i64* %PC.i103
  %3374 = inttoptr i64 %3371 to i64*
  %3375 = load i64, i64* %3374
  store i64 %3375, i64* %RAX.i104, align 8
  store %struct.Memory* %loadMem_4690ca, %struct.Memory** %MEMORY
  %loadMem_4690ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 33
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %3378 to i64*
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 5
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 15
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %3384 to i64*
  %3385 = load i64, i64* %RBP.i102
  %3386 = sub i64 %3385, 2532
  %3387 = load i64, i64* %PC.i100
  %3388 = add i64 %3387, 7
  store i64 %3388, i64* %PC.i100
  %3389 = inttoptr i64 %3386 to i32*
  %3390 = load i32, i32* %3389
  %3391 = sext i32 %3390 to i64
  store i64 %3391, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_4690ce, %struct.Memory** %MEMORY
  %loadMem_4690d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 1
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %3397 to i64*
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3399 = getelementptr inbounds %struct.GPR, %struct.GPR* %3398, i32 0, i32 5
  %3400 = getelementptr inbounds %struct.Reg, %struct.Reg* %3399, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %3400 to i64*
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 7
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %RDX.i99 = bitcast %union.anon* %3403 to i64*
  %3404 = load i64, i64* %RAX.i97
  %3405 = load i64, i64* %RCX.i98
  %3406 = mul i64 %3405, 4
  %3407 = add i64 %3406, %3404
  %3408 = load i64, i64* %PC.i96
  %3409 = add i64 %3408, 3
  store i64 %3409, i64* %PC.i96
  %3410 = inttoptr i64 %3407 to i32*
  %3411 = load i32, i32* %3410
  %3412 = zext i32 %3411 to i64
  store i64 %3412, i64* %RDX.i99, align 8
  store %struct.Memory* %loadMem_4690d5, %struct.Memory** %MEMORY
  %loadMem_4690d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 33
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %3415 to i64*
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3417 = getelementptr inbounds %struct.GPR, %struct.GPR* %3416, i32 0, i32 7
  %3418 = getelementptr inbounds %struct.Reg, %struct.Reg* %3417, i32 0, i32 0
  %EDX.i94 = bitcast %union.anon* %3418 to i32*
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 15
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %3421 to i64*
  %3422 = load i32, i32* %EDX.i94
  %3423 = zext i32 %3422 to i64
  %3424 = load i64, i64* %RBP.i95
  %3425 = sub i64 %3424, 2528
  %3426 = load i64, i64* %PC.i93
  %3427 = add i64 %3426, 6
  store i64 %3427, i64* %PC.i93
  %3428 = inttoptr i64 %3425 to i32*
  %3429 = load i32, i32* %3428
  %3430 = sub i32 %3422, %3429
  %3431 = icmp ult i32 %3422, %3429
  %3432 = zext i1 %3431 to i8
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3432, i8* %3433, align 1
  %3434 = and i32 %3430, 255
  %3435 = call i32 @llvm.ctpop.i32(i32 %3434)
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  %3438 = xor i8 %3437, 1
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3438, i8* %3439, align 1
  %3440 = xor i32 %3429, %3422
  %3441 = xor i32 %3440, %3430
  %3442 = lshr i32 %3441, 4
  %3443 = trunc i32 %3442 to i8
  %3444 = and i8 %3443, 1
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3444, i8* %3445, align 1
  %3446 = icmp eq i32 %3430, 0
  %3447 = zext i1 %3446 to i8
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3447, i8* %3448, align 1
  %3449 = lshr i32 %3430, 31
  %3450 = trunc i32 %3449 to i8
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3450, i8* %3451, align 1
  %3452 = lshr i32 %3422, 31
  %3453 = lshr i32 %3429, 31
  %3454 = xor i32 %3453, %3452
  %3455 = xor i32 %3449, %3452
  %3456 = add i32 %3455, %3454
  %3457 = icmp eq i32 %3456, 2
  %3458 = zext i1 %3457 to i8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3458, i8* %3459, align 1
  store %struct.Memory* %loadMem_4690d8, %struct.Memory** %MEMORY
  %loadMem_4690de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3461 = getelementptr inbounds %struct.GPR, %struct.GPR* %3460, i32 0, i32 33
  %3462 = getelementptr inbounds %struct.Reg, %struct.Reg* %3461, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3462 to i64*
  %3463 = load i64, i64* %PC.i92
  %3464 = add i64 %3463, 39
  %3465 = load i64, i64* %PC.i92
  %3466 = add i64 %3465, 6
  %3467 = load i64, i64* %PC.i92
  %3468 = add i64 %3467, 6
  store i64 %3468, i64* %PC.i92
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3470 = load i8, i8* %3469, align 1
  %3471 = icmp eq i8 %3470, 0
  %3472 = zext i1 %3471 to i8
  store i8 %3472, i8* %BRANCH_TAKEN, align 1
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3474 = select i1 %3471, i64 %3464, i64 %3466
  store i64 %3474, i64* %3473, align 8
  store %struct.Memory* %loadMem_4690de, %struct.Memory** %MEMORY
  %loadBr_4690de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4690de = icmp eq i8 %loadBr_4690de, 1
  br i1 %cmpBr_4690de, label %block_.L_469105, label %block_4690e4

block_4690e4:                                     ; preds = %block_4690ca
  %loadMem_4690e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 33
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 1
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 15
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RBP.i91
  %3485 = sub i64 %3484, 16
  %3486 = load i64, i64* %PC.i89
  %3487 = add i64 %3486, 4
  store i64 %3487, i64* %PC.i89
  %3488 = inttoptr i64 %3485 to i64*
  %3489 = load i64, i64* %3488
  store i64 %3489, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_4690e4, %struct.Memory** %MEMORY
  %loadMem_4690e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 33
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3492 to i64*
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 5
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 15
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %3498 to i64*
  %3499 = load i64, i64* %RBP.i88
  %3500 = sub i64 %3499, 2532
  %3501 = load i64, i64* %PC.i86
  %3502 = add i64 %3501, 7
  store i64 %3502, i64* %PC.i86
  %3503 = inttoptr i64 %3500 to i32*
  %3504 = load i32, i32* %3503
  %3505 = sext i32 %3504 to i64
  store i64 %3505, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_4690e8, %struct.Memory** %MEMORY
  %loadMem_4690ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3507 = getelementptr inbounds %struct.GPR, %struct.GPR* %3506, i32 0, i32 33
  %3508 = getelementptr inbounds %struct.Reg, %struct.Reg* %3507, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3508 to i64*
  %3509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3510 = getelementptr inbounds %struct.GPR, %struct.GPR* %3509, i32 0, i32 1
  %3511 = getelementptr inbounds %struct.Reg, %struct.Reg* %3510, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3511 to i64*
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3513 = getelementptr inbounds %struct.GPR, %struct.GPR* %3512, i32 0, i32 5
  %3514 = getelementptr inbounds %struct.Reg, %struct.Reg* %3513, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %3514 to i64*
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3516 = getelementptr inbounds %struct.GPR, %struct.GPR* %3515, i32 0, i32 7
  %3517 = getelementptr inbounds %struct.Reg, %struct.Reg* %3516, i32 0, i32 0
  %RDX.i85 = bitcast %union.anon* %3517 to i64*
  %3518 = load i64, i64* %RAX.i83
  %3519 = load i64, i64* %RCX.i84
  %3520 = mul i64 %3519, 4
  %3521 = add i64 %3518, 200
  %3522 = add i64 %3521, %3520
  %3523 = load i64, i64* %PC.i82
  %3524 = add i64 %3523, 7
  store i64 %3524, i64* %PC.i82
  %3525 = inttoptr i64 %3522 to i32*
  %3526 = load i32, i32* %3525
  %3527 = zext i32 %3526 to i64
  store i64 %3527, i64* %RDX.i85, align 8
  store %struct.Memory* %loadMem_4690ef, %struct.Memory** %MEMORY
  %loadMem_4690f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 7
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %3533 to i64*
  %3534 = load i64, i64* %RDX.i81
  %3535 = load i64, i64* %PC.i80
  %3536 = add i64 %3535, 3
  store i64 %3536, i64* %PC.i80
  %3537 = trunc i64 %3534 to i32
  %3538 = add i32 -2, %3537
  %3539 = zext i32 %3538 to i64
  store i64 %3539, i64* %RDX.i81, align 8
  %3540 = icmp ult i32 %3538, %3537
  %3541 = icmp ult i32 %3538, -2
  %3542 = or i1 %3540, %3541
  %3543 = zext i1 %3542 to i8
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3543, i8* %3544, align 1
  %3545 = and i32 %3538, 255
  %3546 = call i32 @llvm.ctpop.i32(i32 %3545)
  %3547 = trunc i32 %3546 to i8
  %3548 = and i8 %3547, 1
  %3549 = xor i8 %3548, 1
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3549, i8* %3550, align 1
  %3551 = xor i64 -2, %3534
  %3552 = trunc i64 %3551 to i32
  %3553 = xor i32 %3552, %3538
  %3554 = lshr i32 %3553, 4
  %3555 = trunc i32 %3554 to i8
  %3556 = and i8 %3555, 1
  %3557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3556, i8* %3557, align 1
  %3558 = icmp eq i32 %3538, 0
  %3559 = zext i1 %3558 to i8
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3559, i8* %3560, align 1
  %3561 = lshr i32 %3538, 31
  %3562 = trunc i32 %3561 to i8
  %3563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3562, i8* %3563, align 1
  %3564 = lshr i32 %3537, 31
  %3565 = xor i32 %3561, %3564
  %3566 = xor i32 %3561, 1
  %3567 = add i32 %3565, %3566
  %3568 = icmp eq i32 %3567, 2
  %3569 = zext i1 %3568 to i8
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3569, i8* %3570, align 1
  store %struct.Memory* %loadMem_4690f6, %struct.Memory** %MEMORY
  %loadMem_4690f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 33
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 7
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3576 to i32*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 1
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RAX.i78 = bitcast %union.anon* %3579 to i64*
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 5
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %3582 to i64*
  %3583 = load i64, i64* %RAX.i78
  %3584 = load i64, i64* %RCX.i79
  %3585 = mul i64 %3584, 4
  %3586 = add i64 %3583, 200
  %3587 = add i64 %3586, %3585
  %3588 = load i32, i32* %EDX.i
  %3589 = zext i32 %3588 to i64
  %3590 = load i64, i64* %PC.i77
  %3591 = add i64 %3590, 7
  store i64 %3591, i64* %PC.i77
  %3592 = inttoptr i64 %3587 to i32*
  store i32 %3588, i32* %3592
  store %struct.Memory* %loadMem_4690f9, %struct.Memory** %MEMORY
  %loadMem_469100 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 33
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %PC.i76
  %3597 = add i64 %3596, 30
  %3598 = load i64, i64* %PC.i76
  %3599 = add i64 %3598, 5
  store i64 %3599, i64* %PC.i76
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3597, i64* %3600, align 8
  store %struct.Memory* %loadMem_469100, %struct.Memory** %MEMORY
  br label %block_.L_46911e

block_.L_469105:                                  ; preds = %block_4690ca
  %loadMem_469105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3602 = getelementptr inbounds %struct.GPR, %struct.GPR* %3601, i32 0, i32 33
  %3603 = getelementptr inbounds %struct.Reg, %struct.Reg* %3602, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3603 to i64*
  %3604 = load i64, i64* %PC.i75
  %3605 = add i64 %3604, 5
  %3606 = load i64, i64* %PC.i75
  %3607 = add i64 %3606, 5
  store i64 %3607, i64* %PC.i75
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3605, i64* %3608, align 8
  store %struct.Memory* %loadMem_469105, %struct.Memory** %MEMORY
  br label %block_.L_46910a

block_.L_46910a:                                  ; preds = %block_.L_469105
  %loadMem_46910a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3610 = getelementptr inbounds %struct.GPR, %struct.GPR* %3609, i32 0, i32 33
  %3611 = getelementptr inbounds %struct.Reg, %struct.Reg* %3610, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3611 to i64*
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 1
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 15
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %3617 to i64*
  %3618 = load i64, i64* %RBP.i74
  %3619 = sub i64 %3618, 2532
  %3620 = load i64, i64* %PC.i72
  %3621 = add i64 %3620, 6
  store i64 %3621, i64* %PC.i72
  %3622 = inttoptr i64 %3619 to i32*
  %3623 = load i32, i32* %3622
  %3624 = zext i32 %3623 to i64
  store i64 %3624, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_46910a, %struct.Memory** %MEMORY
  %loadMem_469110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 33
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3627 to i64*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 1
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %RAX.i71
  %3632 = load i64, i64* %PC.i70
  %3633 = add i64 %3632, 3
  store i64 %3633, i64* %PC.i70
  %3634 = trunc i64 %3631 to i32
  %3635 = add i32 1, %3634
  %3636 = zext i32 %3635 to i64
  store i64 %3636, i64* %RAX.i71, align 8
  %3637 = icmp ult i32 %3635, %3634
  %3638 = icmp ult i32 %3635, 1
  %3639 = or i1 %3637, %3638
  %3640 = zext i1 %3639 to i8
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3640, i8* %3641, align 1
  %3642 = and i32 %3635, 255
  %3643 = call i32 @llvm.ctpop.i32(i32 %3642)
  %3644 = trunc i32 %3643 to i8
  %3645 = and i8 %3644, 1
  %3646 = xor i8 %3645, 1
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3646, i8* %3647, align 1
  %3648 = xor i64 1, %3631
  %3649 = trunc i64 %3648 to i32
  %3650 = xor i32 %3649, %3635
  %3651 = lshr i32 %3650, 4
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3653, i8* %3654, align 1
  %3655 = icmp eq i32 %3635, 0
  %3656 = zext i1 %3655 to i8
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3656, i8* %3657, align 1
  %3658 = lshr i32 %3635, 31
  %3659 = trunc i32 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i32 %3634, 31
  %3662 = xor i32 %3658, %3661
  %3663 = add i32 %3662, %3658
  %3664 = icmp eq i32 %3663, 2
  %3665 = zext i1 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3665, i8* %3666, align 1
  store %struct.Memory* %loadMem_469110, %struct.Memory** %MEMORY
  %loadMem_469113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 1
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %3672 to i32*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i69
  %3677 = sub i64 %3676, 2532
  %3678 = load i32, i32* %EAX.i68
  %3679 = zext i32 %3678 to i64
  %3680 = load i64, i64* %PC.i67
  %3681 = add i64 %3680, 6
  store i64 %3681, i64* %PC.i67
  %3682 = inttoptr i64 %3677 to i32*
  store i32 %3678, i32* %3682
  store %struct.Memory* %loadMem_469113, %struct.Memory** %MEMORY
  %loadMem_469119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3685 to i64*
  %3686 = load i64, i64* %PC.i66
  %3687 = add i64 %3686, -101
  %3688 = load i64, i64* %PC.i66
  %3689 = add i64 %3688, 5
  store i64 %3689, i64* %PC.i66
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3687, i64* %3690, align 8
  store %struct.Memory* %loadMem_469119, %struct.Memory** %MEMORY
  br label %block_.L_4690b4

block_.L_46911e:                                  ; preds = %block_4690e4, %block_.L_4690b4
  %loadMem_46911e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3692 = getelementptr inbounds %struct.GPR, %struct.GPR* %3691, i32 0, i32 33
  %3693 = getelementptr inbounds %struct.Reg, %struct.Reg* %3692, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3693 to i64*
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 1
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 15
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RBP.i65
  %3701 = sub i64 %3700, 2532
  %3702 = load i64, i64* %PC.i63
  %3703 = add i64 %3702, 6
  store i64 %3703, i64* %PC.i63
  %3704 = inttoptr i64 %3701 to i32*
  %3705 = load i32, i32* %3704
  %3706 = zext i32 %3705 to i64
  store i64 %3706, i64* %RAX.i64, align 8
  store %struct.Memory* %loadMem_46911e, %struct.Memory** %MEMORY
  %loadMem_469124 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3708 = getelementptr inbounds %struct.GPR, %struct.GPR* %3707, i32 0, i32 33
  %3709 = getelementptr inbounds %struct.Reg, %struct.Reg* %3708, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3709 to i64*
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3711 = getelementptr inbounds %struct.GPR, %struct.GPR* %3710, i32 0, i32 5
  %3712 = getelementptr inbounds %struct.Reg, %struct.Reg* %3711, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %3712 to i64*
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 15
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3715 to i64*
  %3716 = load i64, i64* %RBP.i62
  %3717 = sub i64 %3716, 16
  %3718 = load i64, i64* %PC.i60
  %3719 = add i64 %3718, 4
  store i64 %3719, i64* %PC.i60
  %3720 = inttoptr i64 %3717 to i64*
  %3721 = load i64, i64* %3720
  store i64 %3721, i64* %RCX.i61, align 8
  store %struct.Memory* %loadMem_469124, %struct.Memory** %MEMORY
  %loadMem_469128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3723 = getelementptr inbounds %struct.GPR, %struct.GPR* %3722, i32 0, i32 33
  %3724 = getelementptr inbounds %struct.Reg, %struct.Reg* %3723, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %3724 to i64*
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 1
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %EAX.i58 = bitcast %union.anon* %3727 to i32*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 5
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RCX.i59 = bitcast %union.anon* %3730 to i64*
  %3731 = load i32, i32* %EAX.i58
  %3732 = zext i32 %3731 to i64
  %3733 = load i64, i64* %RCX.i59
  %3734 = add i64 %3733, 400
  %3735 = load i64, i64* %PC.i57
  %3736 = add i64 %3735, 6
  store i64 %3736, i64* %PC.i57
  %3737 = inttoptr i64 %3734 to i32*
  %3738 = load i32, i32* %3737
  %3739 = sub i32 %3731, %3738
  %3740 = icmp ult i32 %3731, %3738
  %3741 = zext i1 %3740 to i8
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3741, i8* %3742, align 1
  %3743 = and i32 %3739, 255
  %3744 = call i32 @llvm.ctpop.i32(i32 %3743)
  %3745 = trunc i32 %3744 to i8
  %3746 = and i8 %3745, 1
  %3747 = xor i8 %3746, 1
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3747, i8* %3748, align 1
  %3749 = xor i32 %3738, %3731
  %3750 = xor i32 %3749, %3739
  %3751 = lshr i32 %3750, 4
  %3752 = trunc i32 %3751 to i8
  %3753 = and i8 %3752, 1
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3753, i8* %3754, align 1
  %3755 = icmp eq i32 %3739, 0
  %3756 = zext i1 %3755 to i8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3756, i8* %3757, align 1
  %3758 = lshr i32 %3739, 31
  %3759 = trunc i32 %3758 to i8
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3759, i8* %3760, align 1
  %3761 = lshr i32 %3731, 31
  %3762 = lshr i32 %3738, 31
  %3763 = xor i32 %3762, %3761
  %3764 = xor i32 %3758, %3761
  %3765 = add i32 %3764, %3763
  %3766 = icmp eq i32 %3765, 2
  %3767 = zext i1 %3766 to i8
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3767, i8* %3768, align 1
  store %struct.Memory* %loadMem_469128, %struct.Memory** %MEMORY
  %loadMem_46912e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %PC.i56
  %3773 = add i64 %3772, 92
  %3774 = load i64, i64* %PC.i56
  %3775 = add i64 %3774, 6
  %3776 = load i64, i64* %PC.i56
  %3777 = add i64 %3776, 6
  store i64 %3777, i64* %PC.i56
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3779 = load i8, i8* %3778, align 1
  %3780 = icmp eq i8 %3779, 0
  %3781 = zext i1 %3780 to i8
  store i8 %3781, i8* %BRANCH_TAKEN, align 1
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3783 = select i1 %3780, i64 %3773, i64 %3775
  store i64 %3783, i64* %3782, align 8
  store %struct.Memory* %loadMem_46912e, %struct.Memory** %MEMORY
  %loadBr_46912e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46912e = icmp eq i8 %loadBr_46912e, 1
  br i1 %cmpBr_46912e, label %block_.L_46918a, label %block_469134

block_469134:                                     ; preds = %block_.L_46911e
  %loadMem_469134 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 1
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %3789 to i64*
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3791 = getelementptr inbounds %struct.GPR, %struct.GPR* %3790, i32 0, i32 15
  %3792 = getelementptr inbounds %struct.Reg, %struct.Reg* %3791, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %3792 to i64*
  %3793 = load i64, i64* %RBP.i55
  %3794 = sub i64 %3793, 16
  %3795 = load i64, i64* %PC.i53
  %3796 = add i64 %3795, 4
  store i64 %3796, i64* %PC.i53
  %3797 = inttoptr i64 %3794 to i64*
  %3798 = load i64, i64* %3797
  store i64 %3798, i64* %RAX.i54, align 8
  store %struct.Memory* %loadMem_469134, %struct.Memory** %MEMORY
  %loadMem_469138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 33
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 1
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %3804 to i64*
  %3805 = load i64, i64* %RAX.i52
  %3806 = add i64 %3805, 400
  %3807 = load i64, i64* %PC.i51
  %3808 = add i64 %3807, 7
  store i64 %3808, i64* %PC.i51
  %3809 = inttoptr i64 %3806 to i32*
  %3810 = load i32, i32* %3809
  %3811 = sub i32 %3810, 50
  %3812 = icmp ult i32 %3810, 50
  %3813 = zext i1 %3812 to i8
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3813, i8* %3814, align 1
  %3815 = and i32 %3811, 255
  %3816 = call i32 @llvm.ctpop.i32(i32 %3815)
  %3817 = trunc i32 %3816 to i8
  %3818 = and i8 %3817, 1
  %3819 = xor i8 %3818, 1
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3819, i8* %3820, align 1
  %3821 = xor i32 %3810, 50
  %3822 = xor i32 %3821, %3811
  %3823 = lshr i32 %3822, 4
  %3824 = trunc i32 %3823 to i8
  %3825 = and i8 %3824, 1
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3825, i8* %3826, align 1
  %3827 = icmp eq i32 %3811, 0
  %3828 = zext i1 %3827 to i8
  %3829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3828, i8* %3829, align 1
  %3830 = lshr i32 %3811, 31
  %3831 = trunc i32 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3831, i8* %3832, align 1
  %3833 = lshr i32 %3810, 31
  %3834 = xor i32 %3830, %3833
  %3835 = add i32 %3834, %3833
  %3836 = icmp eq i32 %3835, 2
  %3837 = zext i1 %3836 to i8
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3837, i8* %3838, align 1
  store %struct.Memory* %loadMem_469138, %struct.Memory** %MEMORY
  %loadMem_46913f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3840 = getelementptr inbounds %struct.GPR, %struct.GPR* %3839, i32 0, i32 33
  %3841 = getelementptr inbounds %struct.Reg, %struct.Reg* %3840, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3841 to i64*
  %3842 = load i64, i64* %PC.i50
  %3843 = add i64 %3842, 75
  %3844 = load i64, i64* %PC.i50
  %3845 = add i64 %3844, 6
  %3846 = load i64, i64* %PC.i50
  %3847 = add i64 %3846, 6
  store i64 %3847, i64* %PC.i50
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3849 = load i8, i8* %3848, align 1
  %3850 = icmp ne i8 %3849, 0
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3852 = load i8, i8* %3851, align 1
  %3853 = icmp ne i8 %3852, 0
  %3854 = xor i1 %3850, %3853
  %3855 = xor i1 %3854, true
  %3856 = zext i1 %3855 to i8
  store i8 %3856, i8* %BRANCH_TAKEN, align 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3858 = select i1 %3854, i64 %3845, i64 %3843
  store i64 %3858, i64* %3857, align 8
  store %struct.Memory* %loadMem_46913f, %struct.Memory** %MEMORY
  %loadBr_46913f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46913f = icmp eq i8 %loadBr_46913f, 1
  br i1 %cmpBr_46913f, label %block_.L_46918a, label %block_469145

block_469145:                                     ; preds = %block_469134
  %loadMem_469145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 1
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3866 = getelementptr inbounds %struct.GPR, %struct.GPR* %3865, i32 0, i32 15
  %3867 = getelementptr inbounds %struct.Reg, %struct.Reg* %3866, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3867 to i64*
  %3868 = load i64, i64* %RBP.i49
  %3869 = sub i64 %3868, 2528
  %3870 = load i64, i64* %PC.i47
  %3871 = add i64 %3870, 6
  store i64 %3871, i64* %PC.i47
  %3872 = inttoptr i64 %3869 to i32*
  %3873 = load i32, i32* %3872
  %3874 = zext i32 %3873 to i64
  store i64 %3874, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_469145, %struct.Memory** %MEMORY
  %loadMem_46914b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 5
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 15
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %RBP.i46
  %3885 = sub i64 %3884, 16
  %3886 = load i64, i64* %PC.i44
  %3887 = add i64 %3886, 4
  store i64 %3887, i64* %PC.i44
  %3888 = inttoptr i64 %3885 to i64*
  %3889 = load i64, i64* %3888
  store i64 %3889, i64* %RCX.i45, align 8
  store %struct.Memory* %loadMem_46914b, %struct.Memory** %MEMORY
  %loadMem_46914f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 7
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 15
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3898 to i64*
  %3899 = load i64, i64* %RBP.i43
  %3900 = sub i64 %3899, 16
  %3901 = load i64, i64* %PC.i41
  %3902 = add i64 %3901, 4
  store i64 %3902, i64* %PC.i41
  %3903 = inttoptr i64 %3900 to i64*
  %3904 = load i64, i64* %3903
  store i64 %3904, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_46914f, %struct.Memory** %MEMORY
  %loadMem_469153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 7
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RDX.i40 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %RDX.i40
  %3912 = add i64 %3911, 400
  %3913 = load i64, i64* %PC.i39
  %3914 = add i64 %3913, 7
  store i64 %3914, i64* %PC.i39
  %3915 = inttoptr i64 %3912 to i32*
  %3916 = load i32, i32* %3915
  %3917 = sext i32 %3916 to i64
  store i64 %3917, i64* %RDX.i40, align 8
  store %struct.Memory* %loadMem_469153, %struct.Memory** %MEMORY
  %loadMem_46915a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 33
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %3920 to i64*
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 1
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %EAX.i36 = bitcast %union.anon* %3923 to i32*
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3925 = getelementptr inbounds %struct.GPR, %struct.GPR* %3924, i32 0, i32 5
  %3926 = getelementptr inbounds %struct.Reg, %struct.Reg* %3925, i32 0, i32 0
  %RCX.i37 = bitcast %union.anon* %3926 to i64*
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 7
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %RDX.i38 = bitcast %union.anon* %3929 to i64*
  %3930 = load i64, i64* %RCX.i37
  %3931 = load i64, i64* %RDX.i38
  %3932 = mul i64 %3931, 4
  %3933 = add i64 %3932, %3930
  %3934 = load i32, i32* %EAX.i36
  %3935 = zext i32 %3934 to i64
  %3936 = load i64, i64* %PC.i35
  %3937 = add i64 %3936, 3
  store i64 %3937, i64* %PC.i35
  %3938 = inttoptr i64 %3933 to i32*
  store i32 %3934, i32* %3938
  store %struct.Memory* %loadMem_46915a, %struct.Memory** %MEMORY
  %loadMem_46915d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3940 = getelementptr inbounds %struct.GPR, %struct.GPR* %3939, i32 0, i32 33
  %3941 = getelementptr inbounds %struct.Reg, %struct.Reg* %3940, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3941 to i64*
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3943 = getelementptr inbounds %struct.GPR, %struct.GPR* %3942, i32 0, i32 5
  %3944 = getelementptr inbounds %struct.Reg, %struct.Reg* %3943, i32 0, i32 0
  %RCX.i33 = bitcast %union.anon* %3944 to i64*
  %3945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3946 = getelementptr inbounds %struct.GPR, %struct.GPR* %3945, i32 0, i32 15
  %3947 = getelementptr inbounds %struct.Reg, %struct.Reg* %3946, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %3947 to i64*
  %3948 = load i64, i64* %RBP.i34
  %3949 = sub i64 %3948, 16
  %3950 = load i64, i64* %PC.i32
  %3951 = add i64 %3950, 4
  store i64 %3951, i64* %PC.i32
  %3952 = inttoptr i64 %3949 to i64*
  %3953 = load i64, i64* %3952
  store i64 %3953, i64* %RCX.i33, align 8
  store %struct.Memory* %loadMem_46915d, %struct.Memory** %MEMORY
  %loadMem_469161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 7
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RDX.i30 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 15
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3962 to i64*
  %3963 = load i64, i64* %RBP.i31
  %3964 = sub i64 %3963, 16
  %3965 = load i64, i64* %PC.i29
  %3966 = add i64 %3965, 4
  store i64 %3966, i64* %PC.i29
  %3967 = inttoptr i64 %3964 to i64*
  %3968 = load i64, i64* %3967
  store i64 %3968, i64* %RDX.i30, align 8
  store %struct.Memory* %loadMem_469161, %struct.Memory** %MEMORY
  %loadMem_469165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 33
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 7
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RDX.i28 = bitcast %union.anon* %3974 to i64*
  %3975 = load i64, i64* %RDX.i28
  %3976 = add i64 %3975, 400
  %3977 = load i64, i64* %PC.i27
  %3978 = add i64 %3977, 7
  store i64 %3978, i64* %PC.i27
  %3979 = inttoptr i64 %3976 to i32*
  %3980 = load i32, i32* %3979
  %3981 = sext i32 %3980 to i64
  store i64 %3981, i64* %RDX.i28, align 8
  store %struct.Memory* %loadMem_469165, %struct.Memory** %MEMORY
  %loadMem_46916c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 33
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %3984 to i64*
  %3985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3986 = getelementptr inbounds %struct.GPR, %struct.GPR* %3985, i32 0, i32 5
  %3987 = getelementptr inbounds %struct.Reg, %struct.Reg* %3986, i32 0, i32 0
  %RCX.i26 = bitcast %union.anon* %3987 to i64*
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 7
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3990 to i64*
  %3991 = load i64, i64* %RCX.i26
  %3992 = load i64, i64* %RDX.i
  %3993 = mul i64 %3992, 4
  %3994 = add i64 %3991, 200
  %3995 = add i64 %3994, %3993
  %3996 = load i64, i64* %PC.i25
  %3997 = add i64 %3996, 11
  store i64 %3997, i64* %PC.i25
  %3998 = inttoptr i64 %3995 to i32*
  store i32 -2, i32* %3998
  store %struct.Memory* %loadMem_46916c, %struct.Memory** %MEMORY
  %loadMem_469177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 5
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 15
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %4007 to i64*
  %4008 = load i64, i64* %RBP.i24
  %4009 = sub i64 %4008, 16
  %4010 = load i64, i64* %PC.i22
  %4011 = add i64 %4010, 4
  store i64 %4011, i64* %PC.i22
  %4012 = inttoptr i64 %4009 to i64*
  %4013 = load i64, i64* %4012
  store i64 %4013, i64* %RCX.i23, align 8
  store %struct.Memory* %loadMem_469177, %struct.Memory** %MEMORY
  %loadMem_46917b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4015 = getelementptr inbounds %struct.GPR, %struct.GPR* %4014, i32 0, i32 33
  %4016 = getelementptr inbounds %struct.Reg, %struct.Reg* %4015, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4016 to i64*
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4018 = getelementptr inbounds %struct.GPR, %struct.GPR* %4017, i32 0, i32 1
  %4019 = getelementptr inbounds %struct.Reg, %struct.Reg* %4018, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4019 to i64*
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 5
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %4022 to i64*
  %4023 = load i64, i64* %RCX.i21
  %4024 = add i64 %4023, 400
  %4025 = load i64, i64* %PC.i19
  %4026 = add i64 %4025, 6
  store i64 %4026, i64* %PC.i19
  %4027 = inttoptr i64 %4024 to i32*
  %4028 = load i32, i32* %4027
  %4029 = zext i32 %4028 to i64
  store i64 %4029, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_46917b, %struct.Memory** %MEMORY
  %loadMem_469181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4031 = getelementptr inbounds %struct.GPR, %struct.GPR* %4030, i32 0, i32 33
  %4032 = getelementptr inbounds %struct.Reg, %struct.Reg* %4031, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4032 to i64*
  %4033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4034 = getelementptr inbounds %struct.GPR, %struct.GPR* %4033, i32 0, i32 1
  %4035 = getelementptr inbounds %struct.Reg, %struct.Reg* %4034, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %4035 to i64*
  %4036 = load i64, i64* %RAX.i18
  %4037 = load i64, i64* %PC.i17
  %4038 = add i64 %4037, 3
  store i64 %4038, i64* %PC.i17
  %4039 = trunc i64 %4036 to i32
  %4040 = add i32 1, %4039
  %4041 = zext i32 %4040 to i64
  store i64 %4041, i64* %RAX.i18, align 8
  %4042 = icmp ult i32 %4040, %4039
  %4043 = icmp ult i32 %4040, 1
  %4044 = or i1 %4042, %4043
  %4045 = zext i1 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4045, i8* %4046, align 1
  %4047 = and i32 %4040, 255
  %4048 = call i32 @llvm.ctpop.i32(i32 %4047)
  %4049 = trunc i32 %4048 to i8
  %4050 = and i8 %4049, 1
  %4051 = xor i8 %4050, 1
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4051, i8* %4052, align 1
  %4053 = xor i64 1, %4036
  %4054 = trunc i64 %4053 to i32
  %4055 = xor i32 %4054, %4040
  %4056 = lshr i32 %4055, 4
  %4057 = trunc i32 %4056 to i8
  %4058 = and i8 %4057, 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4058, i8* %4059, align 1
  %4060 = icmp eq i32 %4040, 0
  %4061 = zext i1 %4060 to i8
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4061, i8* %4062, align 1
  %4063 = lshr i32 %4040, 31
  %4064 = trunc i32 %4063 to i8
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4064, i8* %4065, align 1
  %4066 = lshr i32 %4039, 31
  %4067 = xor i32 %4063, %4066
  %4068 = add i32 %4067, %4063
  %4069 = icmp eq i32 %4068, 2
  %4070 = zext i1 %4069 to i8
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4070, i8* %4071, align 1
  store %struct.Memory* %loadMem_469181, %struct.Memory** %MEMORY
  %loadMem_469184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4073 = getelementptr inbounds %struct.GPR, %struct.GPR* %4072, i32 0, i32 33
  %4074 = getelementptr inbounds %struct.Reg, %struct.Reg* %4073, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4074 to i64*
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4076 = getelementptr inbounds %struct.GPR, %struct.GPR* %4075, i32 0, i32 1
  %4077 = getelementptr inbounds %struct.Reg, %struct.Reg* %4076, i32 0, i32 0
  %EAX.i16 = bitcast %union.anon* %4077 to i32*
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4079 = getelementptr inbounds %struct.GPR, %struct.GPR* %4078, i32 0, i32 5
  %4080 = getelementptr inbounds %struct.Reg, %struct.Reg* %4079, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4080 to i64*
  %4081 = load i64, i64* %RCX.i
  %4082 = add i64 %4081, 400
  %4083 = load i32, i32* %EAX.i16
  %4084 = zext i32 %4083 to i64
  %4085 = load i64, i64* %PC.i15
  %4086 = add i64 %4085, 6
  store i64 %4086, i64* %PC.i15
  %4087 = inttoptr i64 %4082 to i32*
  store i32 %4083, i32* %4087
  store %struct.Memory* %loadMem_469184, %struct.Memory** %MEMORY
  br label %block_.L_46918a

block_.L_46918a:                                  ; preds = %block_469145, %block_469134, %block_.L_46911e
  %loadMem_46918a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4089 = getelementptr inbounds %struct.GPR, %struct.GPR* %4088, i32 0, i32 33
  %4090 = getelementptr inbounds %struct.Reg, %struct.Reg* %4089, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4090 to i64*
  %4091 = load i64, i64* %PC.i14
  %4092 = add i64 %4091, 5
  %4093 = load i64, i64* %PC.i14
  %4094 = add i64 %4093, 5
  store i64 %4094, i64* %PC.i14
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4092, i64* %4095, align 8
  store %struct.Memory* %loadMem_46918a, %struct.Memory** %MEMORY
  br label %block_.L_46918f

block_.L_46918f:                                  ; preds = %block_.L_46918a
  %loadMem_46918f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 33
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %4098 to i64*
  %4099 = load i64, i64* %PC.i13
  %4100 = add i64 %4099, 5
  %4101 = load i64, i64* %PC.i13
  %4102 = add i64 %4101, 5
  store i64 %4102, i64* %PC.i13
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4100, i64* %4103, align 8
  store %struct.Memory* %loadMem_46918f, %struct.Memory** %MEMORY
  br label %block_.L_469194

block_.L_469194:                                  ; preds = %block_.L_46918f, %block_469085
  %loadMem_469194 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4106 to i64*
  %4107 = load i64, i64* %PC.i12
  %4108 = add i64 %4107, 5
  %4109 = load i64, i64* %PC.i12
  %4110 = add i64 %4109, 5
  store i64 %4110, i64* %PC.i12
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4108, i64* %4111, align 8
  store %struct.Memory* %loadMem_469194, %struct.Memory** %MEMORY
  br label %block_.L_469199

block_.L_469199:                                  ; preds = %block_.L_469194
  %loadMem_469199 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 33
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 1
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4117 to i64*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 15
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %RBP.i11
  %4122 = sub i64 %4121, 40
  %4123 = load i64, i64* %PC.i9
  %4124 = add i64 %4123, 3
  store i64 %4124, i64* %PC.i9
  %4125 = inttoptr i64 %4122 to i32*
  %4126 = load i32, i32* %4125
  %4127 = zext i32 %4126 to i64
  store i64 %4127, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_469199, %struct.Memory** %MEMORY
  %loadMem_46919c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 1
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %RAX.i
  %4135 = load i64, i64* %PC.i8
  %4136 = add i64 %4135, 3
  store i64 %4136, i64* %PC.i8
  %4137 = trunc i64 %4134 to i32
  %4138 = add i32 1, %4137
  %4139 = zext i32 %4138 to i64
  store i64 %4139, i64* %RAX.i, align 8
  %4140 = icmp ult i32 %4138, %4137
  %4141 = icmp ult i32 %4138, 1
  %4142 = or i1 %4140, %4141
  %4143 = zext i1 %4142 to i8
  %4144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4143, i8* %4144, align 1
  %4145 = and i32 %4138, 255
  %4146 = call i32 @llvm.ctpop.i32(i32 %4145)
  %4147 = trunc i32 %4146 to i8
  %4148 = and i8 %4147, 1
  %4149 = xor i8 %4148, 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4149, i8* %4150, align 1
  %4151 = xor i64 1, %4134
  %4152 = trunc i64 %4151 to i32
  %4153 = xor i32 %4152, %4138
  %4154 = lshr i32 %4153, 4
  %4155 = trunc i32 %4154 to i8
  %4156 = and i8 %4155, 1
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4156, i8* %4157, align 1
  %4158 = icmp eq i32 %4138, 0
  %4159 = zext i1 %4158 to i8
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4159, i8* %4160, align 1
  %4161 = lshr i32 %4138, 31
  %4162 = trunc i32 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4162, i8* %4163, align 1
  %4164 = lshr i32 %4137, 31
  %4165 = xor i32 %4161, %4164
  %4166 = add i32 %4165, %4161
  %4167 = icmp eq i32 %4166, 2
  %4168 = zext i1 %4167 to i8
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4168, i8* %4169, align 1
  store %struct.Memory* %loadMem_46919c, %struct.Memory** %MEMORY
  %loadMem_46919f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 33
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 1
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4175 to i32*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 15
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %4178 to i64*
  %4179 = load i64, i64* %RBP.i7
  %4180 = sub i64 %4179, 40
  %4181 = load i32, i32* %EAX.i
  %4182 = zext i32 %4181 to i64
  %4183 = load i64, i64* %PC.i6
  %4184 = add i64 %4183, 3
  store i64 %4184, i64* %PC.i6
  %4185 = inttoptr i64 %4180 to i32*
  store i32 %4181, i32* %4185
  store %struct.Memory* %loadMem_46919f, %struct.Memory** %MEMORY
  %loadMem_4691a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %PC.i5
  %4190 = add i64 %4189, -334
  %4191 = load i64, i64* %PC.i5
  %4192 = add i64 %4191, 5
  store i64 %4192, i64* %PC.i5
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4190, i64* %4193, align 8
  store %struct.Memory* %loadMem_4691a2, %struct.Memory** %MEMORY
  br label %block_.L_469054

block_.L_4691a7:                                  ; preds = %block_.L_469054
  %loadMem_4691a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4195 = getelementptr inbounds %struct.GPR, %struct.GPR* %4194, i32 0, i32 33
  %4196 = getelementptr inbounds %struct.Reg, %struct.Reg* %4195, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4196 to i64*
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 13
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4199 to i64*
  %4200 = load i64, i64* %RSP.i
  %4201 = load i64, i64* %PC.i4
  %4202 = add i64 %4201, 7
  store i64 %4202, i64* %PC.i4
  %4203 = add i64 2560, %4200
  store i64 %4203, i64* %RSP.i, align 8
  %4204 = icmp ult i64 %4203, %4200
  %4205 = icmp ult i64 %4203, 2560
  %4206 = or i1 %4204, %4205
  %4207 = zext i1 %4206 to i8
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4207, i8* %4208, align 1
  %4209 = trunc i64 %4203 to i32
  %4210 = and i32 %4209, 255
  %4211 = call i32 @llvm.ctpop.i32(i32 %4210)
  %4212 = trunc i32 %4211 to i8
  %4213 = and i8 %4212, 1
  %4214 = xor i8 %4213, 1
  %4215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4214, i8* %4215, align 1
  %4216 = xor i64 2560, %4200
  %4217 = xor i64 %4216, %4203
  %4218 = lshr i64 %4217, 4
  %4219 = trunc i64 %4218 to i8
  %4220 = and i8 %4219, 1
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4220, i8* %4221, align 1
  %4222 = icmp eq i64 %4203, 0
  %4223 = zext i1 %4222 to i8
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4223, i8* %4224, align 1
  %4225 = lshr i64 %4203, 63
  %4226 = trunc i64 %4225 to i8
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4226, i8* %4227, align 1
  %4228 = lshr i64 %4200, 63
  %4229 = xor i64 %4225, %4228
  %4230 = add i64 %4229, %4225
  %4231 = icmp eq i64 %4230, 2
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4232, i8* %4233, align 1
  store %struct.Memory* %loadMem_4691a7, %struct.Memory** %MEMORY
  %loadMem_4691ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 33
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4236 to i64*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 15
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4239 to i64*
  %4240 = load i64, i64* %PC.i2
  %4241 = add i64 %4240, 1
  store i64 %4241, i64* %PC.i2
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4243 = load i64, i64* %4242, align 8
  %4244 = add i64 %4243, 8
  %4245 = inttoptr i64 %4243 to i64*
  %4246 = load i64, i64* %4245
  store i64 %4246, i64* %RBP.i3, align 8
  store i64 %4244, i64* %4242, align 8
  store %struct.Memory* %loadMem_4691ae, %struct.Memory** %MEMORY
  %loadMem_4691af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 33
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4249 to i64*
  %4250 = load i64, i64* %PC.i1
  %4251 = add i64 %4250, 1
  store i64 %4251, i64* %PC.i1
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4254 = load i64, i64* %4253, align 8
  %4255 = inttoptr i64 %4254 to i64*
  %4256 = load i64, i64* %4255
  store i64 %4256, i64* %4252, align 8
  %4257 = add i64 %4254, 8
  store i64 %4257, i64* %4253, align 8
  store %struct.Memory* %loadMem_4691af, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4691af
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

define %struct.Memory* @routine_subq__0xa00___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 2560
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 2560
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
  %23 = xor i64 2560, %9
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

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x2b0__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 688
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0x640___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1600, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R9D to i64*
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x9d0__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2512
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R10, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rsi_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x14__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__0x0__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 36
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__MINUS0x9f0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2544
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9f4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2548
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x9f0__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2544
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9f4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2548
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.chainlinks2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 48
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

define %struct.Memory* @routine_jge_.L_46904d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_leaq_MINUS0x2bc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x9d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2516
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x9d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x9dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2524
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x1c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2b0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -688
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.findlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9f8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2552
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.approxlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_xorl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = xor i64 %14, %12
  %18 = trunc i64 %17 to i32
  %19 = and i64 %17, 4294967295
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2516
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2520
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x9d4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2516
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jl_.L_468e80(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x9d8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jmpq_.L_46903f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2524
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_468eb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jl_.L_468ec9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x9dc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2524
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jl_.L_468f1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x9d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -2512
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

define %struct.Memory* @routine_jne_.L_468f1d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x9d0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -2512
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x2bc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 700
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__ecx__MINUS0x390__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -912
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

define %struct.Memory* @routine_jl_.L_468f71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2b8__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_468f71(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2b8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 696
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jl_.L_468fc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2b4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_468fc5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2b4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jge_.L_46903a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x2bc__rbp__rax_4____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, -700
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

define %struct.Memory* @routine_jne_.L_469027(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2bc__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -700
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

define %struct.Memory* @routine_jmpq_.L_46902c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468fcc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_468dd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 40
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_jge_.L_4691a7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x390__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, -912
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

define %struct.Memory* @routine_movl__ecx__MINUS0x9e0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2528
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb54ce4___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0xb54ce4_type* @G_0xb54ce4 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0xb8af28___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = load i32, i32* bitcast (%G_0xb8af28_type* @G_0xb8af28 to i32*)
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

define %struct.Memory* @routine_jl_.L_4690a5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9e0__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jle_.L_469194(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4690aa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x9e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9e4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 400
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_46911e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x9e4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2532
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_MINUS0x9e0__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 2528
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jne_.L_469105(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
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

define %struct.Memory* @routine_addl__0xfffffffe___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = trunc i64 %9 to i32
  %13 = add i32 -2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -2
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
  %26 = xor i64 -2, %9
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

define %struct.Memory* @routine_movl__edx__0xc8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 200
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46911e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46910a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x9e4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2532
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4690b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_46918a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x32__0x190__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 50
  %16 = icmp ult i32 %14, 50
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
  %25 = xor i32 %14, 50
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

define %struct.Memory* @routine_jge_.L_46918a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x9e0__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2528
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_movslq_0x190__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EAX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xfffffffe__0xc8__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 200
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 -2, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x190__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_46918f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469194(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469199(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_469054(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xa00___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 2560, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 2560
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
  %25 = xor i64 2560, %9
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
