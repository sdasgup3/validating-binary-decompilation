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
%G_0x7ae438_type = type <{ [4 x i8] }>
%G__0x57c91c_type = type <{ [8 x i8] }>
%G__0x57c9d4_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x7ae438 = global %G_0x7ae438_type zeroinitializer
@G__0x57c91c = global %G__0x57c91c_type zeroinitializer
@G__0x57c9d4 = global %G__0x57c9d4_type zeroinitializer

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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_408b90.clear_board(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @gnugo_clear_board(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42e430 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42e430, %struct.Memory** %MEMORY
  %loadMem_42e431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i34 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i34
  %27 = load i64, i64* %PC.i33
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i33
  store i64 %26, i64* %RBP.i35, align 8
  store %struct.Memory* %loadMem_42e431, %struct.Memory** %MEMORY
  %loadMem_42e434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i32 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i32
  %36 = load i64, i64* %PC.i31
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i31
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP.i32, align 8
  %39 = icmp ult i64 %35, 16
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
  %49 = xor i64 16, %35
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
  store %struct.Memory* %loadMem_42e434, %struct.Memory** %MEMORY
  %loadMem_42e438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i29
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i29
  store i64 5, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_42e438, %struct.Memory** %MEMORY
  %loadMem_42e43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i28
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i27
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i27
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_42e43d, %struct.Memory** %MEMORY
  %loadMem_42e440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %96 to i32*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %99 to i64*
  %100 = load i32, i32* %EAX.i25
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %RBP.i26
  %103 = sub i64 %102, 4
  %104 = load i64, i64* %PC.i24
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i24
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106
  %108 = sub i32 %100, %107
  %109 = icmp ult i32 %100, %107
  %110 = zext i1 %109 to i8
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %110, i8* %111, align 1
  %112 = and i32 %108, 255
  %113 = call i32 @llvm.ctpop.i32(i32 %112)
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %116, i8* %117, align 1
  %118 = xor i32 %107, %100
  %119 = xor i32 %118, %108
  %120 = lshr i32 %119, 4
  %121 = trunc i32 %120 to i8
  %122 = and i8 %121, 1
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %122, i8* %123, align 1
  %124 = icmp eq i32 %108, 0
  %125 = zext i1 %124 to i8
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %125, i8* %126, align 1
  %127 = lshr i32 %108, 31
  %128 = trunc i32 %127 to i8
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %128, i8* %129, align 1
  %130 = lshr i32 %100, 31
  %131 = lshr i32 %107, 31
  %132 = xor i32 %131, %130
  %133 = xor i32 %127, %130
  %134 = add i32 %133, %132
  %135 = icmp eq i32 %134, 2
  %136 = zext i1 %135 to i8
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %136, i8* %137, align 1
  store %struct.Memory* %loadMem_42e440, %struct.Memory** %MEMORY
  %loadMem_42e443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %139 = getelementptr inbounds %struct.GPR, %struct.GPR* %138, i32 0, i32 33
  %140 = getelementptr inbounds %struct.Reg, %struct.Reg* %139, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %140 to i64*
  %141 = load i64, i64* %PC.i23
  %142 = add i64 %141, 21
  %143 = load i64, i64* %PC.i23
  %144 = add i64 %143, 6
  %145 = load i64, i64* %PC.i23
  %146 = add i64 %145, 6
  store i64 %146, i64* %PC.i23
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %148 = load i8, i8* %147, align 1
  %149 = icmp eq i8 %148, 0
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %151 = load i8, i8* %150, align 1
  %152 = icmp ne i8 %151, 0
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %154 = load i8, i8* %153, align 1
  %155 = icmp ne i8 %154, 0
  %156 = xor i1 %152, %155
  %157 = xor i1 %156, true
  %158 = and i1 %149, %157
  %159 = zext i1 %158 to i8
  store i8 %159, i8* %BRANCH_TAKEN, align 1
  %160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %161 = select i1 %158, i64 %142, i64 %144
  store i64 %161, i64* %160, align 8
  store %struct.Memory* %loadMem_42e443, %struct.Memory** %MEMORY
  %loadBr_42e443 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e443 = icmp eq i8 %loadBr_42e443, 1
  br i1 %cmpBr_42e443, label %block_.L_42e458, label %block_42e449

block_42e449:                                     ; preds = %entry
  %loadMem_42e449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i22
  %169 = sub i64 %168, 4
  %170 = load i64, i64* %PC.i21
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC.i21
  %172 = inttoptr i64 %169 to i32*
  %173 = load i32, i32* %172
  %174 = sub i32 %173, 19
  %175 = icmp ult i32 %173, 19
  %176 = zext i1 %175 to i8
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %176, i8* %177, align 1
  %178 = and i32 %174, 255
  %179 = call i32 @llvm.ctpop.i32(i32 %178)
  %180 = trunc i32 %179 to i8
  %181 = and i8 %180, 1
  %182 = xor i8 %181, 1
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %182, i8* %183, align 1
  %184 = xor i32 %173, 19
  %185 = xor i32 %184, %174
  %186 = lshr i32 %185, 4
  %187 = trunc i32 %186 to i8
  %188 = and i8 %187, 1
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %188, i8* %189, align 1
  %190 = icmp eq i32 %174, 0
  %191 = zext i1 %190 to i8
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %191, i8* %192, align 1
  %193 = lshr i32 %174, 31
  %194 = trunc i32 %193 to i8
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %194, i8* %195, align 1
  %196 = lshr i32 %173, 31
  %197 = xor i32 %193, %196
  %198 = add i32 %197, %196
  %199 = icmp eq i32 %198, 2
  %200 = zext i1 %199 to i8
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %200, i8* %201, align 1
  store %struct.Memory* %loadMem_42e449, %struct.Memory** %MEMORY
  %loadMem_42e44d = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %204 to i64*
  %205 = load i64, i64* %PC.i20
  %206 = add i64 %205, 11
  %207 = load i64, i64* %PC.i20
  %208 = add i64 %207, 6
  %209 = load i64, i64* %PC.i20
  %210 = add i64 %209, 6
  store i64 %210, i64* %PC.i20
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %212 = load i8, i8* %211, align 1
  %213 = icmp eq i8 %212, 0
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %215 = load i8, i8* %214, align 1
  %216 = icmp ne i8 %215, 0
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %218 = load i8, i8* %217, align 1
  %219 = icmp ne i8 %218, 0
  %220 = xor i1 %216, %219
  %221 = xor i1 %220, true
  %222 = and i1 %213, %221
  %223 = zext i1 %222 to i8
  store i8 %223, i8* %BRANCH_TAKEN, align 1
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %225 = select i1 %222, i64 %206, i64 %208
  store i64 %225, i64* %224, align 8
  store %struct.Memory* %loadMem_42e44d, %struct.Memory** %MEMORY
  %loadBr_42e44d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42e44d = icmp eq i8 %loadBr_42e44d, 1
  br i1 %cmpBr_42e44d, label %block_.L_42e458, label %block_42e453

block_42e453:                                     ; preds = %block_42e449
  %loadMem_42e453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %227 = getelementptr inbounds %struct.GPR, %struct.GPR* %226, i32 0, i32 33
  %228 = getelementptr inbounds %struct.Reg, %struct.Reg* %227, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %228 to i64*
  %229 = load i64, i64* %PC.i19
  %230 = add i64 %229, 45
  %231 = load i64, i64* %PC.i19
  %232 = add i64 %231, 5
  store i64 %232, i64* %PC.i19
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %230, i64* %233, align 8
  store %struct.Memory* %loadMem_42e453, %struct.Memory** %MEMORY
  br label %block_.L_42e480

block_.L_42e458:                                  ; preds = %block_42e449, %entry
  %loadMem_42e458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 11
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %PC.i18
  %241 = add i64 %240, 10
  store i64 %241, i64* %PC.i18
  store i64 ptrtoint (%G__0x57c91c_type* @G__0x57c91c to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_42e458, %struct.Memory** %MEMORY
  %loadMem_42e462 = load %struct.Memory*, %struct.Memory** %MEMORY
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %243 = getelementptr inbounds %struct.GPR, %struct.GPR* %242, i32 0, i32 33
  %244 = getelementptr inbounds %struct.Reg, %struct.Reg* %243, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %244 to i64*
  %245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %246 = getelementptr inbounds %struct.GPR, %struct.GPR* %245, i32 0, i32 9
  %247 = getelementptr inbounds %struct.Reg, %struct.Reg* %246, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %247 to i64*
  %248 = load i64, i64* %PC.i17
  %249 = add i64 %248, 5
  store i64 %249, i64* %PC.i17
  store i64 57, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_42e462, %struct.Memory** %MEMORY
  %loadMem_42e467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %252 to i64*
  %253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %254 = getelementptr inbounds %struct.GPR, %struct.GPR* %253, i32 0, i32 7
  %255 = getelementptr inbounds %struct.Reg, %struct.Reg* %254, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %255 to i64*
  %256 = load i64, i64* %PC.i16
  %257 = add i64 %256, 10
  store i64 %257, i64* %PC.i16
  store i64 ptrtoint (%G__0x57c9d4_type* @G__0x57c9d4 to i64), i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_42e467, %struct.Memory** %MEMORY
  %loadMem_42e471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %PC.i14
  %265 = add i64 %264, 5
  store i64 %265, i64* %PC.i14
  store i64 4294967295, i64* %RAX.i15, align 8
  store %struct.Memory* %loadMem_42e471, %struct.Memory** %MEMORY
  %loadMem_42e476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %EAX.i13 = bitcast %union.anon* %271 to i32*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %274 to i64*
  %275 = load i32, i32* %EAX.i13
  %276 = zext i32 %275 to i64
  %277 = load i64, i64* %PC.i12
  %278 = add i64 %277, 2
  store i64 %278, i64* %PC.i12
  %279 = and i64 %276, 4294967295
  store i64 %279, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_42e476, %struct.Memory** %MEMORY
  %loadMem_42e478 = load %struct.Memory*, %struct.Memory** %MEMORY
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 33
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %EAX.i11 = bitcast %union.anon* %285 to i32*
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 17
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %288 to i32*
  %289 = bitcast i32* %R8D.i to i64*
  %290 = load i32, i32* %EAX.i11
  %291 = zext i32 %290 to i64
  %292 = load i64, i64* %PC.i10
  %293 = add i64 %292, 3
  store i64 %293, i64* %PC.i10
  %294 = and i64 %291, 4294967295
  store i64 %294, i64* %289, align 8
  store %struct.Memory* %loadMem_42e478, %struct.Memory** %MEMORY
  %loadMem1_42e47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %297 to i64*
  %298 = load i64, i64* %PC.i9
  %299 = add i64 %298, 146453
  %300 = load i64, i64* %PC.i9
  %301 = add i64 %300, 5
  %302 = load i64, i64* %PC.i9
  %303 = add i64 %302, 5
  store i64 %303, i64* %PC.i9
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %305 = load i64, i64* %304, align 8
  %306 = add i64 %305, -8
  %307 = inttoptr i64 %306 to i64*
  store i64 %301, i64* %307
  store i64 %306, i64* %304, align 8
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %299, i64* %308, align 8
  store %struct.Memory* %loadMem1_42e47b, %struct.Memory** %MEMORY
  %loadMem2_42e47b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e47b = load i64, i64* %3
  %call2_42e47b = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_42e47b, %struct.Memory* %loadMem2_42e47b)
  store %struct.Memory* %call2_42e47b, %struct.Memory** %MEMORY
  br label %block_.L_42e480

block_.L_42e480:                                  ; preds = %block_.L_42e458, %block_42e453
  %loadMem_42e480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 15
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RBP.i8
  %319 = sub i64 %318, 4
  %320 = load i64, i64* %PC.i7
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i7
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_42e480, %struct.Memory** %MEMORY
  %loadMem_42e483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %330 to i32*
  %331 = load i32, i32* %EAX.i
  %332 = zext i32 %331 to i64
  %333 = load i64, i64* %PC.i6
  %334 = add i64 %333, 7
  store i64 %334, i64* %PC.i6
  store i32 %331, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  store %struct.Memory* %loadMem_42e483, %struct.Memory** %MEMORY
  %loadMem1_42e48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %PC.i5
  %339 = add i64 %338, -153850
  %340 = load i64, i64* %PC.i5
  %341 = add i64 %340, 5
  %342 = load i64, i64* %PC.i5
  %343 = add i64 %342, 5
  store i64 %343, i64* %PC.i5
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %345, -8
  %347 = inttoptr i64 %346 to i64*
  store i64 %341, i64* %347
  store i64 %346, i64* %344, align 8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %339, i64* %348, align 8
  store %struct.Memory* %loadMem1_42e48a, %struct.Memory** %MEMORY
  %loadMem2_42e48a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_42e48a = load i64, i64* %3
  %call2_42e48a = call %struct.Memory* @sub_408b90.clear_board(%struct.State* %0, i64 %loadPC_42e48a, %struct.Memory* %loadMem2_42e48a)
  store %struct.Memory* %call2_42e48a, %struct.Memory** %MEMORY
  %loadMem_42e48f = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %351 to i64*
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 13
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %354 to i64*
  %355 = load i64, i64* %RSP.i
  %356 = load i64, i64* %PC.i4
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i4
  %358 = add i64 16, %355
  store i64 %358, i64* %RSP.i, align 8
  %359 = icmp ult i64 %358, %355
  %360 = icmp ult i64 %358, 16
  %361 = or i1 %359, %360
  %362 = zext i1 %361 to i8
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %362, i8* %363, align 1
  %364 = trunc i64 %358 to i32
  %365 = and i32 %364, 255
  %366 = call i32 @llvm.ctpop.i32(i32 %365)
  %367 = trunc i32 %366 to i8
  %368 = and i8 %367, 1
  %369 = xor i8 %368, 1
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %369, i8* %370, align 1
  %371 = xor i64 16, %355
  %372 = xor i64 %371, %358
  %373 = lshr i64 %372, 4
  %374 = trunc i64 %373 to i8
  %375 = and i8 %374, 1
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %375, i8* %376, align 1
  %377 = icmp eq i64 %358, 0
  %378 = zext i1 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %378, i8* %379, align 1
  %380 = lshr i64 %358, 63
  %381 = trunc i64 %380 to i8
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %381, i8* %382, align 1
  %383 = lshr i64 %355, 63
  %384 = xor i64 %380, %383
  %385 = add i64 %384, %380
  %386 = icmp eq i64 %385, 2
  %387 = zext i1 %386 to i8
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %387, i8* %388, align 1
  store %struct.Memory* %loadMem_42e48f, %struct.Memory** %MEMORY
  %loadMem_42e493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 33
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 15
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %PC.i2
  %396 = add i64 %395, 1
  store i64 %396, i64* %PC.i2
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %398 = load i64, i64* %397, align 8
  %399 = add i64 %398, 8
  %400 = inttoptr i64 %398 to i64*
  %401 = load i64, i64* %400
  store i64 %401, i64* %RBP.i3, align 8
  store i64 %399, i64* %397, align 8
  store %struct.Memory* %loadMem_42e493, %struct.Memory** %MEMORY
  %loadMem_42e494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i1
  %406 = add i64 %405, 1
  store i64 %406, i64* %PC.i1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %409 = load i64, i64* %408, align 8
  %410 = inttoptr i64 %409 to i64*
  %411 = load i64, i64* %410
  store i64 %411, i64* %407, align 8
  %412 = add i64 %409, 8
  store i64 %412, i64* %408, align 8
  store %struct.Memory* %loadMem_42e494, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42e494
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

define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 16
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 16
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
  %23 = xor i64 16, %9
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

define %struct.Memory* @routine_movl__0x5___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 5, i64* %RAX, align 8
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

define %struct.Memory* @routine_jg_.L_42e458(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x13__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 19
  %16 = icmp ult i32 %14, 19
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
  %25 = xor i32 %14, 19
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

define %struct.Memory* @routine_jmpq_.L_42e480(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57c91c___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57c91c_type* @G__0x57c91c to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x39___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 57, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57c9d4___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x57c9d4_type* @G__0x57c9d4 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abortgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x7ae438(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 %9, i32* bitcast (%G_0x7ae438_type* @G_0x7ae438 to i32*)
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.clear_board(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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
