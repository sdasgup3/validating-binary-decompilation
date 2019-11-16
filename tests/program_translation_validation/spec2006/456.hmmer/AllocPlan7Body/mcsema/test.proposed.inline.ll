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
%G__0x4590ec_type = type <{ [8 x i8] }>
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
@G__0x4590ec = global %G__0x4590ec_type zeroinitializer

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

declare %struct.Memory* @sub_446060.sre_malloc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @AllocPlan7Body(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_431fd0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_431fd0, %struct.Memory** %MEMORY
  %loadMem_431fd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i807 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i807
  %27 = load i64, i64* %PC.i806
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i806
  store i64 %26, i64* %RBP.i808, align 8
  store %struct.Memory* %loadMem_431fd1, %struct.Memory** %MEMORY
  %loadMem_431fd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i805 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i805
  %36 = load i64, i64* %PC.i804
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i804
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i805, align 8
  %39 = icmp ult i64 %35, 32
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
  %49 = xor i64 32, %35
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
  store %struct.Memory* %loadMem_431fd4, %struct.Memory** %MEMORY
  %loadMem_431fd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i802
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i802
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RAX.i803, align 8
  store %struct.Memory* %loadMem_431fd8, %struct.Memory** %MEMORY
  %loadMem_431fe2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i801 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i800
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC.i800
  store i64 111, i64* %RCX.i801, align 8
  store %struct.Memory* %loadMem_431fe2, %struct.Memory** %MEMORY
  %loadMem_431fe7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 11
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RDI.i798 = bitcast %union.anon* %88 to i64*
  %89 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %90 = getelementptr inbounds %struct.GPR, %struct.GPR* %89, i32 0, i32 15
  %91 = getelementptr inbounds %struct.Reg, %struct.Reg* %90, i32 0, i32 0
  %RBP.i799 = bitcast %union.anon* %91 to i64*
  %92 = load i64, i64* %RBP.i799
  %93 = sub i64 %92, 8
  %94 = load i64, i64* %RDI.i798
  %95 = load i64, i64* %PC.i797
  %96 = add i64 %95, 4
  store i64 %96, i64* %PC.i797
  %97 = inttoptr i64 %93 to i64*
  store i64 %94, i64* %97
  store %struct.Memory* %loadMem_431fe7, %struct.Memory** %MEMORY
  %loadMem_431feb = load %struct.Memory*, %struct.Memory** %MEMORY
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %99 = getelementptr inbounds %struct.GPR, %struct.GPR* %98, i32 0, i32 33
  %100 = getelementptr inbounds %struct.Reg, %struct.Reg* %99, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %100 to i64*
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 9
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %ESI.i795 = bitcast %union.anon* %103 to i32*
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 15
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %106 to i64*
  %107 = load i64, i64* %RBP.i796
  %108 = sub i64 %107, 12
  %109 = load i32, i32* %ESI.i795
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i794
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i794
  %113 = inttoptr i64 %108 to i32*
  store i32 %109, i32* %113
  store %struct.Memory* %loadMem_431feb, %struct.Memory** %MEMORY
  %loadMem_431fee = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RSI.i792 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i793 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i793
  %124 = sub i64 %123, 12
  %125 = load i64, i64* %PC.i791
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC.i791
  %127 = inttoptr i64 %124 to i32*
  %128 = load i32, i32* %127
  %129 = zext i32 %128 to i64
  store i64 %129, i64* %RSI.i792, align 8
  store %struct.Memory* %loadMem_431fee, %struct.Memory** %MEMORY
  %loadMem_431ff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 11
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %RDI.i789 = bitcast %union.anon* %135 to i64*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 15
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %138 to i64*
  %139 = load i64, i64* %RBP.i790
  %140 = sub i64 %139, 8
  %141 = load i64, i64* %PC.i788
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i788
  %143 = inttoptr i64 %140 to i64*
  %144 = load i64, i64* %143
  store i64 %144, i64* %RDI.i789, align 8
  store %struct.Memory* %loadMem_431ff1, %struct.Memory** %MEMORY
  %loadMem_431ff5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i785 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 9
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %ESI.i786 = bitcast %union.anon* %150 to i32*
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 11
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %RDI.i787 = bitcast %union.anon* %153 to i64*
  %154 = load i64, i64* %RDI.i787
  %155 = add i64 %154, 136
  %156 = load i32, i32* %ESI.i786
  %157 = zext i32 %156 to i64
  %158 = load i64, i64* %PC.i785
  %159 = add i64 %158, 6
  store i64 %159, i64* %PC.i785
  %160 = inttoptr i64 %155 to i32*
  store i32 %156, i32* %160
  store %struct.Memory* %loadMem_431ff5, %struct.Memory** %MEMORY
  %loadMem_431ffb = load %struct.Memory*, %struct.Memory** %MEMORY
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 33
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %PC.i782 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RSI.i783 = bitcast %union.anon* %166 to i64*
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 15
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %RBP.i784 = bitcast %union.anon* %169 to i64*
  %170 = load i64, i64* %RBP.i784
  %171 = sub i64 %170, 12
  %172 = load i64, i64* %PC.i782
  %173 = add i64 %172, 3
  store i64 %173, i64* %PC.i782
  %174 = inttoptr i64 %171 to i32*
  %175 = load i32, i32* %174
  %176 = zext i32 %175 to i64
  store i64 %176, i64* %RSI.i783, align 8
  store %struct.Memory* %loadMem_431ffb, %struct.Memory** %MEMORY
  %loadMem_431ffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 9
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RSI.i781 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RSI.i781
  %184 = load i64, i64* %PC.i780
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC.i780
  %186 = trunc i64 %183 to i32
  %187 = add i32 2, %186
  %188 = zext i32 %187 to i64
  store i64 %188, i64* %RSI.i781, align 8
  %189 = icmp ult i32 %187, %186
  %190 = icmp ult i32 %187, 2
  %191 = or i1 %189, %190
  %192 = zext i1 %191 to i8
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %192, i8* %193, align 1
  %194 = and i32 %187, 255
  %195 = call i32 @llvm.ctpop.i32(i32 %194)
  %196 = trunc i32 %195 to i8
  %197 = and i8 %196, 1
  %198 = xor i8 %197, 1
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %198, i8* %199, align 1
  %200 = xor i64 2, %183
  %201 = trunc i64 %200 to i32
  %202 = xor i32 %201, %187
  %203 = lshr i32 %202, 4
  %204 = trunc i32 %203 to i8
  %205 = and i8 %204, 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %205, i8* %206, align 1
  %207 = icmp eq i32 %187, 0
  %208 = zext i1 %207 to i8
  %209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %208, i8* %209, align 1
  %210 = lshr i32 %187, 31
  %211 = trunc i32 %210 to i8
  %212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %211, i8* %212, align 1
  %213 = lshr i32 %186, 31
  %214 = xor i32 %210, %213
  %215 = add i32 %214, %210
  %216 = icmp eq i32 %215, 2
  %217 = zext i1 %216 to i8
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %217, i8* %218, align 1
  store %struct.Memory* %loadMem_431ffe, %struct.Memory** %MEMORY
  %loadMem_432001 = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %224 to i32*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 11
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RDI.i779 = bitcast %union.anon* %227 to i64*
  %228 = load i32, i32* %ESI.i
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC.i778
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC.i778
  %232 = shl i64 %229, 32
  %233 = ashr exact i64 %232, 32
  store i64 %233, i64* %RDI.i779, align 8
  store %struct.Memory* %loadMem_432001, %struct.Memory** %MEMORY
  %loadMem_432004 = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 11
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RDI.i777 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RDI.i777
  %241 = load i64, i64* %PC.i776
  %242 = add i64 %241, 4
  store i64 %242, i64* %PC.i776
  store %struct.Memory* %loadMem_432004, %struct.Memory** %MEMORY
  %loadMem_432008 = load %struct.Memory*, %struct.Memory** %MEMORY
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 33
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %245 to i64*
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 11
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %RDI.i774 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 15
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RBP.i775 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %RBP.i775
  %253 = sub i64 %252, 32
  %254 = load i64, i64* %RDI.i774
  %255 = load i64, i64* %PC.i773
  %256 = add i64 %255, 4
  store i64 %256, i64* %PC.i773
  %257 = inttoptr i64 %253 to i64*
  store i64 %254, i64* %257
  store %struct.Memory* %loadMem_432008, %struct.Memory** %MEMORY
  %loadMem_43200c = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i770 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RAX.i771 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 11
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RDI.i772 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %RAX.i771
  %268 = load i64, i64* %PC.i770
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i770
  store i64 %267, i64* %RDI.i772, align 8
  store %struct.Memory* %loadMem_43200c, %struct.Memory** %MEMORY
  %loadMem_43200f = load %struct.Memory*, %struct.Memory** %MEMORY
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %271 = getelementptr inbounds %struct.GPR, %struct.GPR* %270, i32 0, i32 33
  %272 = getelementptr inbounds %struct.Reg, %struct.Reg* %271, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %272 to i64*
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %274 = getelementptr inbounds %struct.GPR, %struct.GPR* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.Reg, %struct.Reg* %274, i32 0, i32 0
  %ECX.i768 = bitcast %union.anon* %275 to i32*
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 9
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %RSI.i769 = bitcast %union.anon* %278 to i64*
  %279 = load i32, i32* %ECX.i768
  %280 = zext i32 %279 to i64
  %281 = load i64, i64* %PC.i767
  %282 = add i64 %281, 2
  store i64 %282, i64* %PC.i767
  %283 = and i64 %280, 4294967295
  store i64 %283, i64* %RSI.i769, align 8
  store %struct.Memory* %loadMem_43200f, %struct.Memory** %MEMORY
  %loadMem_432011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %285 = getelementptr inbounds %struct.GPR, %struct.GPR* %284, i32 0, i32 33
  %286 = getelementptr inbounds %struct.Reg, %struct.Reg* %285, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %286 to i64*
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 7
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %RDX.i765 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 15
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RBP.i766 = bitcast %union.anon* %292 to i64*
  %293 = load i64, i64* %RBP.i766
  %294 = sub i64 %293, 32
  %295 = load i64, i64* %PC.i764
  %296 = add i64 %295, 4
  store i64 %296, i64* %PC.i764
  %297 = inttoptr i64 %294 to i64*
  %298 = load i64, i64* %297
  store i64 %298, i64* %RDX.i765, align 8
  store %struct.Memory* %loadMem_432011, %struct.Memory** %MEMORY
  %loadMem1_432015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 33
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %PC.i763
  %303 = add i64 %302, 81995
  %304 = load i64, i64* %PC.i763
  %305 = add i64 %304, 5
  %306 = load i64, i64* %PC.i763
  %307 = add i64 %306, 5
  store i64 %307, i64* %PC.i763
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = add i64 %309, -8
  %311 = inttoptr i64 %310 to i64*
  store i64 %305, i64* %311
  store i64 %310, i64* %308, align 8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %303, i64* %312, align 8
  store %struct.Memory* %loadMem1_432015, %struct.Memory** %MEMORY
  %loadMem2_432015 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432015 = load i64, i64* %3
  %call2_432015 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432015, %struct.Memory* %loadMem2_432015)
  store %struct.Memory* %call2_432015, %struct.Memory** %MEMORY
  %loadMem_43201a = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 11
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RDI.i762 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %PC.i761
  %320 = add i64 %319, 10
  store i64 %320, i64* %PC.i761
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i762, align 8
  store %struct.Memory* %loadMem_43201a, %struct.Memory** %MEMORY
  %loadMem_432024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 33
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %323 to i64*
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 9
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %RSI.i760 = bitcast %union.anon* %326 to i64*
  %327 = load i64, i64* %PC.i759
  %328 = add i64 %327, 5
  store i64 %328, i64* %PC.i759
  store i64 112, i64* %RSI.i760, align 8
  store %struct.Memory* %loadMem_432024, %struct.Memory** %MEMORY
  %loadMem_432029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 33
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RDX.i757 = bitcast %union.anon* %334 to i64*
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 15
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %337 to i64*
  %338 = load i64, i64* %RBP.i758
  %339 = sub i64 %338, 8
  %340 = load i64, i64* %PC.i756
  %341 = add i64 %340, 4
  store i64 %341, i64* %PC.i756
  %342 = inttoptr i64 %339 to i64*
  %343 = load i64, i64* %342
  store i64 %343, i64* %RDX.i757, align 8
  store %struct.Memory* %loadMem_432029, %struct.Memory** %MEMORY
  %loadMem_43202d = load %struct.Memory*, %struct.Memory** %MEMORY
  %344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %345 = getelementptr inbounds %struct.GPR, %struct.GPR* %344, i32 0, i32 33
  %346 = getelementptr inbounds %struct.Reg, %struct.Reg* %345, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %346 to i64*
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %RAX.i754 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 7
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RDX.i755 = bitcast %union.anon* %352 to i64*
  %353 = load i64, i64* %RDX.i755
  %354 = add i64 %353, 24
  %355 = load i64, i64* %RAX.i754
  %356 = load i64, i64* %PC.i753
  %357 = add i64 %356, 4
  store i64 %357, i64* %PC.i753
  %358 = inttoptr i64 %354 to i64*
  store i64 %355, i64* %358
  store %struct.Memory* %loadMem_43202d, %struct.Memory** %MEMORY
  %loadMem_432031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 5
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RCX.i751 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 15
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RBP.i752 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %RBP.i752
  %369 = sub i64 %368, 12
  %370 = load i64, i64* %PC.i750
  %371 = add i64 %370, 3
  store i64 %371, i64* %PC.i750
  %372 = inttoptr i64 %369 to i32*
  %373 = load i32, i32* %372
  %374 = zext i32 %373 to i64
  store i64 %374, i64* %RCX.i751, align 8
  store %struct.Memory* %loadMem_432031, %struct.Memory** %MEMORY
  %loadMem_432034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 5
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RCX.i749 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %RCX.i749
  %382 = load i64, i64* %PC.i748
  %383 = add i64 %382, 3
  store i64 %383, i64* %PC.i748
  %384 = trunc i64 %381 to i32
  %385 = add i32 2, %384
  %386 = zext i32 %385 to i64
  store i64 %386, i64* %RCX.i749, align 8
  %387 = icmp ult i32 %385, %384
  %388 = icmp ult i32 %385, 2
  %389 = or i1 %387, %388
  %390 = zext i1 %389 to i8
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %390, i8* %391, align 1
  %392 = and i32 %385, 255
  %393 = call i32 @llvm.ctpop.i32(i32 %392)
  %394 = trunc i32 %393 to i8
  %395 = and i8 %394, 1
  %396 = xor i8 %395, 1
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %396, i8* %397, align 1
  %398 = xor i64 2, %381
  %399 = trunc i64 %398 to i32
  %400 = xor i32 %399, %385
  %401 = lshr i32 %400, 4
  %402 = trunc i32 %401 to i8
  %403 = and i8 %402, 1
  %404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %403, i8* %404, align 1
  %405 = icmp eq i32 %385, 0
  %406 = zext i1 %405 to i8
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %406, i8* %407, align 1
  %408 = lshr i32 %385, 31
  %409 = trunc i32 %408 to i8
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %409, i8* %410, align 1
  %411 = lshr i32 %384, 31
  %412 = xor i32 %408, %411
  %413 = add i32 %412, %408
  %414 = icmp eq i32 %413, 2
  %415 = zext i1 %414 to i8
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %415, i8* %416, align 1
  store %struct.Memory* %loadMem_432034, %struct.Memory** %MEMORY
  %loadMem_432037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 33
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %419 to i64*
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %ECX.i746 = bitcast %union.anon* %422 to i32*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RAX.i747 = bitcast %union.anon* %425 to i64*
  %426 = load i32, i32* %ECX.i746
  %427 = zext i32 %426 to i64
  %428 = load i64, i64* %PC.i745
  %429 = add i64 %428, 3
  store i64 %429, i64* %PC.i745
  %430 = shl i64 %427, 32
  %431 = ashr exact i64 %430, 32
  store i64 %431, i64* %RAX.i747, align 8
  store %struct.Memory* %loadMem_432037, %struct.Memory** %MEMORY
  %loadMem_43203a = load %struct.Memory*, %struct.Memory** %MEMORY
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 33
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %RAX.i744
  %439 = load i64, i64* %PC.i743
  %440 = add i64 %439, 4
  store i64 %440, i64* %PC.i743
  store %struct.Memory* %loadMem_43203a, %struct.Memory** %MEMORY
  %loadMem_43203e = load %struct.Memory*, %struct.Memory** %MEMORY
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 33
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %443 to i64*
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %446 to i64*
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %448 = getelementptr inbounds %struct.GPR, %struct.GPR* %447, i32 0, i32 7
  %449 = getelementptr inbounds %struct.Reg, %struct.Reg* %448, i32 0, i32 0
  %RDX.i742 = bitcast %union.anon* %449 to i64*
  %450 = load i64, i64* %RAX.i741
  %451 = load i64, i64* %PC.i740
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i740
  store i64 %450, i64* %RDX.i742, align 8
  store %struct.Memory* %loadMem_43203e, %struct.Memory** %MEMORY
  %loadMem1_432041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %PC.i739
  %457 = add i64 %456, 81951
  %458 = load i64, i64* %PC.i739
  %459 = add i64 %458, 5
  %460 = load i64, i64* %PC.i739
  %461 = add i64 %460, 5
  store i64 %461, i64* %PC.i739
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %463 = load i64, i64* %462, align 8
  %464 = add i64 %463, -8
  %465 = inttoptr i64 %464 to i64*
  store i64 %459, i64* %465
  store i64 %464, i64* %462, align 8
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %457, i64* %466, align 8
  store %struct.Memory* %loadMem1_432041, %struct.Memory** %MEMORY
  %loadMem2_432041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432041 = load i64, i64* %3
  %call2_432041 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432041, %struct.Memory* %loadMem2_432041)
  store %struct.Memory* %call2_432041, %struct.Memory** %MEMORY
  %loadMem_432046 = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 11
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RDI.i738 = bitcast %union.anon* %472 to i64*
  %473 = load i64, i64* %PC.i737
  %474 = add i64 %473, 10
  store i64 %474, i64* %PC.i737
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i738, align 8
  store %struct.Memory* %loadMem_432046, %struct.Memory** %MEMORY
  %loadMem_432050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 9
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RSI.i736 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %PC.i735
  %482 = add i64 %481, 5
  store i64 %482, i64* %PC.i735
  store i64 113, i64* %RSI.i736, align 8
  store %struct.Memory* %loadMem_432050, %struct.Memory** %MEMORY
  %loadMem_432055 = load %struct.Memory*, %struct.Memory** %MEMORY
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 33
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %PC.i732 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 7
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RDX.i733 = bitcast %union.anon* %488 to i64*
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 15
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %RBP.i734
  %493 = sub i64 %492, 8
  %494 = load i64, i64* %PC.i732
  %495 = add i64 %494, 4
  store i64 %495, i64* %PC.i732
  %496 = inttoptr i64 %493 to i64*
  %497 = load i64, i64* %496
  store i64 %497, i64* %RDX.i733, align 8
  store %struct.Memory* %loadMem_432055, %struct.Memory** %MEMORY
  %loadMem_432059 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i729 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i730 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 7
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RDX.i731 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RDX.i731
  %508 = add i64 %507, 32
  %509 = load i64, i64* %RAX.i730
  %510 = load i64, i64* %PC.i729
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC.i729
  %512 = inttoptr i64 %508 to i64*
  store i64 %509, i64* %512
  store %struct.Memory* %loadMem_432059, %struct.Memory** %MEMORY
  %loadMem_43205d = load %struct.Memory*, %struct.Memory** %MEMORY
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %514 = getelementptr inbounds %struct.GPR, %struct.GPR* %513, i32 0, i32 33
  %515 = getelementptr inbounds %struct.Reg, %struct.Reg* %514, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %515 to i64*
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 5
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %RCX.i727 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 15
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RBP.i728 = bitcast %union.anon* %521 to i64*
  %522 = load i64, i64* %RBP.i728
  %523 = sub i64 %522, 12
  %524 = load i64, i64* %PC.i726
  %525 = add i64 %524, 3
  store i64 %525, i64* %PC.i726
  %526 = inttoptr i64 %523 to i32*
  %527 = load i32, i32* %526
  %528 = zext i32 %527 to i64
  store i64 %528, i64* %RCX.i727, align 8
  store %struct.Memory* %loadMem_43205d, %struct.Memory** %MEMORY
  %loadMem_432060 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %531 to i64*
  %532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %533 = getelementptr inbounds %struct.GPR, %struct.GPR* %532, i32 0, i32 5
  %534 = getelementptr inbounds %struct.Reg, %struct.Reg* %533, i32 0, i32 0
  %RCX.i725 = bitcast %union.anon* %534 to i64*
  %535 = load i64, i64* %RCX.i725
  %536 = load i64, i64* %PC.i724
  %537 = add i64 %536, 3
  store i64 %537, i64* %PC.i724
  %538 = trunc i64 %535 to i32
  %539 = add i32 2, %538
  %540 = zext i32 %539 to i64
  store i64 %540, i64* %RCX.i725, align 8
  %541 = icmp ult i32 %539, %538
  %542 = icmp ult i32 %539, 2
  %543 = or i1 %541, %542
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %544, i8* %545, align 1
  %546 = and i32 %539, 255
  %547 = call i32 @llvm.ctpop.i32(i32 %546)
  %548 = trunc i32 %547 to i8
  %549 = and i8 %548, 1
  %550 = xor i8 %549, 1
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %550, i8* %551, align 1
  %552 = xor i64 2, %535
  %553 = trunc i64 %552 to i32
  %554 = xor i32 %553, %539
  %555 = lshr i32 %554, 4
  %556 = trunc i32 %555 to i8
  %557 = and i8 %556, 1
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %557, i8* %558, align 1
  %559 = icmp eq i32 %539, 0
  %560 = zext i1 %559 to i8
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %560, i8* %561, align 1
  %562 = lshr i32 %539, 31
  %563 = trunc i32 %562 to i8
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %563, i8* %564, align 1
  %565 = lshr i32 %538, 31
  %566 = xor i32 %562, %565
  %567 = add i32 %566, %562
  %568 = icmp eq i32 %567, 2
  %569 = zext i1 %568 to i8
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %569, i8* %570, align 1
  store %struct.Memory* %loadMem_432060, %struct.Memory** %MEMORY
  %loadMem_432063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 5
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %ECX.i722 = bitcast %union.anon* %576 to i32*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 1
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RAX.i723 = bitcast %union.anon* %579 to i64*
  %580 = load i32, i32* %ECX.i722
  %581 = zext i32 %580 to i64
  %582 = load i64, i64* %PC.i721
  %583 = add i64 %582, 3
  store i64 %583, i64* %PC.i721
  %584 = shl i64 %581, 32
  %585 = ashr exact i64 %584, 32
  store i64 %585, i64* %RAX.i723, align 8
  store %struct.Memory* %loadMem_432063, %struct.Memory** %MEMORY
  %loadMem_432066 = load %struct.Memory*, %struct.Memory** %MEMORY
  %586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %587 = getelementptr inbounds %struct.GPR, %struct.GPR* %586, i32 0, i32 33
  %588 = getelementptr inbounds %struct.Reg, %struct.Reg* %587, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %588 to i64*
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %590 = getelementptr inbounds %struct.GPR, %struct.GPR* %589, i32 0, i32 1
  %591 = getelementptr inbounds %struct.Reg, %struct.Reg* %590, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %591 to i64*
  %592 = load i64, i64* %RAX.i720
  %593 = load i64, i64* %PC.i719
  %594 = add i64 %593, 4
  store i64 %594, i64* %PC.i719
  store %struct.Memory* %loadMem_432066, %struct.Memory** %MEMORY
  %loadMem_43206a = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RAX.i717 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 7
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RDX.i718 = bitcast %union.anon* %603 to i64*
  %604 = load i64, i64* %RAX.i717
  %605 = load i64, i64* %PC.i716
  %606 = add i64 %605, 3
  store i64 %606, i64* %PC.i716
  store i64 %604, i64* %RDX.i718, align 8
  store %struct.Memory* %loadMem_43206a, %struct.Memory** %MEMORY
  %loadMem1_43206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %609 to i64*
  %610 = load i64, i64* %PC.i715
  %611 = add i64 %610, 81907
  %612 = load i64, i64* %PC.i715
  %613 = add i64 %612, 5
  %614 = load i64, i64* %PC.i715
  %615 = add i64 %614, 5
  store i64 %615, i64* %PC.i715
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %617 = load i64, i64* %616, align 8
  %618 = add i64 %617, -8
  %619 = inttoptr i64 %618 to i64*
  store i64 %613, i64* %619
  store i64 %618, i64* %616, align 8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %611, i64* %620, align 8
  store %struct.Memory* %loadMem1_43206d, %struct.Memory** %MEMORY
  %loadMem2_43206d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43206d = load i64, i64* %3
  %call2_43206d = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43206d, %struct.Memory* %loadMem2_43206d)
  store %struct.Memory* %call2_43206d, %struct.Memory** %MEMORY
  %loadMem_432072 = load %struct.Memory*, %struct.Memory** %MEMORY
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 33
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %623 to i64*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 11
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RDI.i714 = bitcast %union.anon* %626 to i64*
  %627 = load i64, i64* %PC.i713
  %628 = add i64 %627, 10
  store i64 %628, i64* %PC.i713
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i714, align 8
  store %struct.Memory* %loadMem_432072, %struct.Memory** %MEMORY
  %loadMem_43207c = load %struct.Memory*, %struct.Memory** %MEMORY
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 33
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 9
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RSI.i712 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %PC.i711
  %636 = add i64 %635, 5
  store i64 %636, i64* %PC.i711
  store i64 114, i64* %RSI.i712, align 8
  store %struct.Memory* %loadMem_43207c, %struct.Memory** %MEMORY
  %loadMem_432081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %639 to i64*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 7
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RDX.i709 = bitcast %union.anon* %642 to i64*
  %643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %644 = getelementptr inbounds %struct.GPR, %struct.GPR* %643, i32 0, i32 15
  %645 = getelementptr inbounds %struct.Reg, %struct.Reg* %644, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %645 to i64*
  %646 = load i64, i64* %RBP.i710
  %647 = sub i64 %646, 8
  %648 = load i64, i64* %PC.i708
  %649 = add i64 %648, 4
  store i64 %649, i64* %PC.i708
  %650 = inttoptr i64 %647 to i64*
  %651 = load i64, i64* %650
  store i64 %651, i64* %RDX.i709, align 8
  store %struct.Memory* %loadMem_432081, %struct.Memory** %MEMORY
  %loadMem_432085 = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %654 to i64*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 1
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RAX.i706 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 7
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RDX.i707
  %662 = add i64 %661, 40
  %663 = load i64, i64* %RAX.i706
  %664 = load i64, i64* %PC.i705
  %665 = add i64 %664, 4
  store i64 %665, i64* %PC.i705
  %666 = inttoptr i64 %662 to i64*
  store i64 %663, i64* %666
  store %struct.Memory* %loadMem_432085, %struct.Memory** %MEMORY
  %loadMem_432089 = load %struct.Memory*, %struct.Memory** %MEMORY
  %667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %668 = getelementptr inbounds %struct.GPR, %struct.GPR* %667, i32 0, i32 33
  %669 = getelementptr inbounds %struct.Reg, %struct.Reg* %668, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %669 to i64*
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 5
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %RCX.i703 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 15
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %675 to i64*
  %676 = load i64, i64* %RBP.i704
  %677 = sub i64 %676, 12
  %678 = load i64, i64* %PC.i702
  %679 = add i64 %678, 3
  store i64 %679, i64* %PC.i702
  %680 = inttoptr i64 %677 to i32*
  %681 = load i32, i32* %680
  %682 = zext i32 %681 to i64
  store i64 %682, i64* %RCX.i703, align 8
  store %struct.Memory* %loadMem_432089, %struct.Memory** %MEMORY
  %loadMem_43208c = load %struct.Memory*, %struct.Memory** %MEMORY
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %684 = getelementptr inbounds %struct.GPR, %struct.GPR* %683, i32 0, i32 33
  %685 = getelementptr inbounds %struct.Reg, %struct.Reg* %684, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %685 to i64*
  %686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %687 = getelementptr inbounds %struct.GPR, %struct.GPR* %686, i32 0, i32 5
  %688 = getelementptr inbounds %struct.Reg, %struct.Reg* %687, i32 0, i32 0
  %RCX.i701 = bitcast %union.anon* %688 to i64*
  %689 = load i64, i64* %RCX.i701
  %690 = load i64, i64* %PC.i700
  %691 = add i64 %690, 3
  store i64 %691, i64* %PC.i700
  %692 = trunc i64 %689 to i32
  %693 = add i32 1, %692
  %694 = zext i32 %693 to i64
  store i64 %694, i64* %RCX.i701, align 8
  %695 = icmp ult i32 %693, %692
  %696 = icmp ult i32 %693, 1
  %697 = or i1 %695, %696
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %698, i8* %699, align 1
  %700 = and i32 %693, 255
  %701 = call i32 @llvm.ctpop.i32(i32 %700)
  %702 = trunc i32 %701 to i8
  %703 = and i8 %702, 1
  %704 = xor i8 %703, 1
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %704, i8* %705, align 1
  %706 = xor i64 1, %689
  %707 = trunc i64 %706 to i32
  %708 = xor i32 %707, %693
  %709 = lshr i32 %708, 4
  %710 = trunc i32 %709 to i8
  %711 = and i8 %710, 1
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %711, i8* %712, align 1
  %713 = icmp eq i32 %693, 0
  %714 = zext i1 %713 to i8
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %714, i8* %715, align 1
  %716 = lshr i32 %693, 31
  %717 = trunc i32 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %717, i8* %718, align 1
  %719 = lshr i32 %692, 31
  %720 = xor i32 %716, %719
  %721 = add i32 %720, %716
  %722 = icmp eq i32 %721, 2
  %723 = zext i1 %722 to i8
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %723, i8* %724, align 1
  store %struct.Memory* %loadMem_43208c, %struct.Memory** %MEMORY
  %loadMem_43208f = load %struct.Memory*, %struct.Memory** %MEMORY
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %726 = getelementptr inbounds %struct.GPR, %struct.GPR* %725, i32 0, i32 33
  %727 = getelementptr inbounds %struct.Reg, %struct.Reg* %726, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %727 to i64*
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 5
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %ECX.i698 = bitcast %union.anon* %730 to i32*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %732 = getelementptr inbounds %struct.GPR, %struct.GPR* %731, i32 0, i32 1
  %733 = getelementptr inbounds %struct.Reg, %struct.Reg* %732, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %733 to i64*
  %734 = load i32, i32* %ECX.i698
  %735 = zext i32 %734 to i64
  %736 = load i64, i64* %PC.i697
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC.i697
  %738 = shl i64 %735, 32
  %739 = ashr exact i64 %738, 32
  store i64 %739, i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_43208f, %struct.Memory** %MEMORY
  %loadMem_432092 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %745 to i64*
  %746 = load i64, i64* %RAX.i696
  %747 = load i64, i64* %PC.i695
  %748 = add i64 %747, 4
  store i64 %748, i64* %PC.i695
  %749 = shl i64 %746, 1
  %750 = icmp slt i64 %749, 0
  %751 = shl i64 %749, 1
  store i64 %751, i64* %RAX.i696, align 8
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %753 = zext i1 %750 to i8
  store i8 %753, i8* %752, align 1
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %755 = trunc i64 %751 to i32
  %756 = and i32 %755, 254
  %757 = call i32 @llvm.ctpop.i32(i32 %756)
  %758 = trunc i32 %757 to i8
  %759 = and i8 %758, 1
  %760 = xor i8 %759, 1
  store i8 %760, i8* %754, align 1
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %761, align 1
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %763 = icmp eq i64 %751, 0
  %764 = zext i1 %763 to i8
  store i8 %764, i8* %762, align 1
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %766 = lshr i64 %751, 63
  %767 = trunc i64 %766 to i8
  store i8 %767, i8* %765, align 1
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %768, align 1
  store %struct.Memory* %loadMem_432092, %struct.Memory** %MEMORY
  %loadMem_432096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RAX.i693 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 7
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RDX.i694 = bitcast %union.anon* %777 to i64*
  %778 = load i64, i64* %RAX.i693
  %779 = load i64, i64* %PC.i692
  %780 = add i64 %779, 3
  store i64 %780, i64* %PC.i692
  store i64 %778, i64* %RDX.i694, align 8
  store %struct.Memory* %loadMem_432096, %struct.Memory** %MEMORY
  %loadMem1_432099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %783 to i64*
  %784 = load i64, i64* %PC.i691
  %785 = add i64 %784, 81863
  %786 = load i64, i64* %PC.i691
  %787 = add i64 %786, 5
  %788 = load i64, i64* %PC.i691
  %789 = add i64 %788, 5
  store i64 %789, i64* %PC.i691
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %791 = load i64, i64* %790, align 8
  %792 = add i64 %791, -8
  %793 = inttoptr i64 %792 to i64*
  store i64 %787, i64* %793
  store i64 %792, i64* %790, align 8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %785, i64* %794, align 8
  store %struct.Memory* %loadMem1_432099, %struct.Memory** %MEMORY
  %loadMem2_432099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432099 = load i64, i64* %3
  %call2_432099 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432099, %struct.Memory* %loadMem2_432099)
  store %struct.Memory* %call2_432099, %struct.Memory** %MEMORY
  %loadMem_43209e = load %struct.Memory*, %struct.Memory** %MEMORY
  %795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %796 = getelementptr inbounds %struct.GPR, %struct.GPR* %795, i32 0, i32 33
  %797 = getelementptr inbounds %struct.Reg, %struct.Reg* %796, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %797 to i64*
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 11
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %RDI.i690 = bitcast %union.anon* %800 to i64*
  %801 = load i64, i64* %PC.i689
  %802 = add i64 %801, 10
  store i64 %802, i64* %PC.i689
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i690, align 8
  store %struct.Memory* %loadMem_43209e, %struct.Memory** %MEMORY
  %loadMem_4320a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %804 = getelementptr inbounds %struct.GPR, %struct.GPR* %803, i32 0, i32 33
  %805 = getelementptr inbounds %struct.Reg, %struct.Reg* %804, i32 0, i32 0
  %PC.i687 = bitcast %union.anon* %805 to i64*
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %807 = getelementptr inbounds %struct.GPR, %struct.GPR* %806, i32 0, i32 9
  %808 = getelementptr inbounds %struct.Reg, %struct.Reg* %807, i32 0, i32 0
  %RSI.i688 = bitcast %union.anon* %808 to i64*
  %809 = load i64, i64* %PC.i687
  %810 = add i64 %809, 5
  store i64 %810, i64* %PC.i687
  store i64 116, i64* %RSI.i688, align 8
  store %struct.Memory* %loadMem_4320a8, %struct.Memory** %MEMORY
  %loadMem_4320ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %812 = getelementptr inbounds %struct.GPR, %struct.GPR* %811, i32 0, i32 33
  %813 = getelementptr inbounds %struct.Reg, %struct.Reg* %812, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %813 to i64*
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 7
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %RDX.i685 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 15
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RBP.i686 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RBP.i686
  %821 = sub i64 %820, 8
  %822 = load i64, i64* %PC.i684
  %823 = add i64 %822, 4
  store i64 %823, i64* %PC.i684
  %824 = inttoptr i64 %821 to i64*
  %825 = load i64, i64* %824
  store i64 %825, i64* %RDX.i685, align 8
  store %struct.Memory* %loadMem_4320ad, %struct.Memory** %MEMORY
  %loadMem_4320b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RAX.i682 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 7
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RDX.i683
  %836 = add i64 %835, 72
  %837 = load i64, i64* %RAX.i682
  %838 = load i64, i64* %PC.i681
  %839 = add i64 %838, 4
  store i64 %839, i64* %PC.i681
  %840 = inttoptr i64 %836 to i64*
  store i64 %837, i64* %840
  store %struct.Memory* %loadMem_4320b1, %struct.Memory** %MEMORY
  %loadMem_4320b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 15
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RBP.i680
  %851 = sub i64 %850, 12
  %852 = load i64, i64* %PC.i678
  %853 = add i64 %852, 4
  store i64 %853, i64* %PC.i678
  %854 = inttoptr i64 %851 to i32*
  %855 = load i32, i32* %854
  %856 = sext i32 %855 to i64
  store i64 %856, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_4320b5, %struct.Memory** %MEMORY
  %loadMem_4320b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 1
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %862 to i64*
  %863 = load i64, i64* %RAX.i677
  %864 = load i64, i64* %PC.i676
  %865 = add i64 %864, 4
  store i64 %865, i64* %PC.i676
  %866 = shl i64 %863, 2
  %867 = icmp slt i64 %866, 0
  %868 = shl i64 %866, 1
  store i64 %868, i64* %RAX.i677, align 8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %870 = zext i1 %867 to i8
  store i8 %870, i8* %869, align 1
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %872 = trunc i64 %868 to i32
  %873 = and i32 %872, 254
  %874 = call i32 @llvm.ctpop.i32(i32 %873)
  %875 = trunc i32 %874 to i8
  %876 = and i8 %875, 1
  %877 = xor i8 %876, 1
  store i8 %877, i8* %871, align 1
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %878, align 1
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %880 = icmp eq i64 %868, 0
  %881 = zext i1 %880 to i8
  store i8 %881, i8* %879, align 1
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %883 = lshr i64 %868, 63
  %884 = trunc i64 %883 to i8
  store i8 %884, i8* %882, align 1
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %885, align 1
  store %struct.Memory* %loadMem_4320b9, %struct.Memory** %MEMORY
  %loadMem_4320bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 7
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RDX.i675 = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %RAX.i674
  %896 = load i64, i64* %PC.i673
  %897 = add i64 %896, 3
  store i64 %897, i64* %PC.i673
  store i64 %895, i64* %RDX.i675, align 8
  store %struct.Memory* %loadMem_4320bd, %struct.Memory** %MEMORY
  %loadMem1_4320c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 33
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %900 to i64*
  %901 = load i64, i64* %PC.i672
  %902 = add i64 %901, 81824
  %903 = load i64, i64* %PC.i672
  %904 = add i64 %903, 5
  %905 = load i64, i64* %PC.i672
  %906 = add i64 %905, 5
  store i64 %906, i64* %PC.i672
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %908 = load i64, i64* %907, align 8
  %909 = add i64 %908, -8
  %910 = inttoptr i64 %909 to i64*
  store i64 %904, i64* %910
  store i64 %909, i64* %907, align 8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %902, i64* %911, align 8
  store %struct.Memory* %loadMem1_4320c0, %struct.Memory** %MEMORY
  %loadMem2_4320c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320c0 = load i64, i64* %3
  %call2_4320c0 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4320c0, %struct.Memory* %loadMem2_4320c0)
  store %struct.Memory* %call2_4320c0, %struct.Memory** %MEMORY
  %loadMem_4320c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %913 = getelementptr inbounds %struct.GPR, %struct.GPR* %912, i32 0, i32 33
  %914 = getelementptr inbounds %struct.Reg, %struct.Reg* %913, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %914 to i64*
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 11
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %RDI.i671 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i670
  %919 = add i64 %918, 10
  store i64 %919, i64* %PC.i670
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i671, align 8
  store %struct.Memory* %loadMem_4320c5, %struct.Memory** %MEMORY
  %loadMem_4320cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 9
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RSI.i669 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %PC.i668
  %927 = add i64 %926, 5
  store i64 %927, i64* %PC.i668
  store i64 117, i64* %RSI.i669, align 8
  store %struct.Memory* %loadMem_4320cf, %struct.Memory** %MEMORY
  %loadMem_4320d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 7
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RDX.i666 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 15
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RBP.i667
  %938 = sub i64 %937, 8
  %939 = load i64, i64* %PC.i665
  %940 = add i64 %939, 4
  store i64 %940, i64* %PC.i665
  %941 = inttoptr i64 %938 to i64*
  %942 = load i64, i64* %941
  store i64 %942, i64* %RDX.i666, align 8
  store %struct.Memory* %loadMem_4320d4, %struct.Memory** %MEMORY
  %loadMem_4320d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 1
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 7
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %RDX.i664 = bitcast %union.anon* %951 to i64*
  %952 = load i64, i64* %RDX.i664
  %953 = add i64 %952, 144
  %954 = load i64, i64* %RAX.i663
  %955 = load i64, i64* %PC.i662
  %956 = add i64 %955, 7
  store i64 %956, i64* %PC.i662
  %957 = inttoptr i64 %953 to i64*
  store i64 %954, i64* %957
  store %struct.Memory* %loadMem_4320d8, %struct.Memory** %MEMORY
  %loadMem_4320df = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 5
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RCX.i660 = bitcast %union.anon* %963 to i64*
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 15
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %RBP.i661 = bitcast %union.anon* %966 to i64*
  %967 = load i64, i64* %RBP.i661
  %968 = sub i64 %967, 12
  %969 = load i64, i64* %PC.i659
  %970 = add i64 %969, 3
  store i64 %970, i64* %PC.i659
  %971 = inttoptr i64 %968 to i32*
  %972 = load i32, i32* %971
  %973 = zext i32 %972 to i64
  store i64 %973, i64* %RCX.i660, align 8
  store %struct.Memory* %loadMem_4320df, %struct.Memory** %MEMORY
  %loadMem_4320e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 5
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RCX.i658 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RCX.i658
  %981 = load i64, i64* %PC.i657
  %982 = add i64 %981, 3
  store i64 %982, i64* %PC.i657
  %983 = trunc i64 %980 to i32
  %984 = add i32 1, %983
  %985 = zext i32 %984 to i64
  store i64 %985, i64* %RCX.i658, align 8
  %986 = icmp ult i32 %984, %983
  %987 = icmp ult i32 %984, 1
  %988 = or i1 %986, %987
  %989 = zext i1 %988 to i8
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %989, i8* %990, align 1
  %991 = and i32 %984, 255
  %992 = call i32 @llvm.ctpop.i32(i32 %991)
  %993 = trunc i32 %992 to i8
  %994 = and i8 %993, 1
  %995 = xor i8 %994, 1
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %995, i8* %996, align 1
  %997 = xor i64 1, %980
  %998 = trunc i64 %997 to i32
  %999 = xor i32 %998, %984
  %1000 = lshr i32 %999, 4
  %1001 = trunc i32 %1000 to i8
  %1002 = and i8 %1001, 1
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1002, i8* %1003, align 1
  %1004 = icmp eq i32 %984, 0
  %1005 = zext i1 %1004 to i8
  %1006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1005, i8* %1006, align 1
  %1007 = lshr i32 %984, 31
  %1008 = trunc i32 %1007 to i8
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1008, i8* %1009, align 1
  %1010 = lshr i32 %983, 31
  %1011 = xor i32 %1007, %1010
  %1012 = add i32 %1011, %1007
  %1013 = icmp eq i32 %1012, 2
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1014, i8* %1015, align 1
  store %struct.Memory* %loadMem_4320e2, %struct.Memory** %MEMORY
  %loadMem_4320e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 33
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 5
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %ECX.i655 = bitcast %union.anon* %1021 to i32*
  %1022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1023 = getelementptr inbounds %struct.GPR, %struct.GPR* %1022, i32 0, i32 1
  %1024 = getelementptr inbounds %struct.Reg, %struct.Reg* %1023, i32 0, i32 0
  %RAX.i656 = bitcast %union.anon* %1024 to i64*
  %1025 = load i32, i32* %ECX.i655
  %1026 = zext i32 %1025 to i64
  %1027 = load i64, i64* %PC.i654
  %1028 = add i64 %1027, 3
  store i64 %1028, i64* %PC.i654
  %1029 = shl i64 %1026, 32
  %1030 = ashr exact i64 %1029, 32
  store i64 %1030, i64* %RAX.i656, align 8
  store %struct.Memory* %loadMem_4320e5, %struct.Memory** %MEMORY
  %loadMem_4320e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 1
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RAX.i653 = bitcast %union.anon* %1036 to i64*
  %1037 = load i64, i64* %RAX.i653
  %1038 = load i64, i64* %PC.i652
  %1039 = add i64 %1038, 4
  store i64 %1039, i64* %PC.i652
  %1040 = shl i64 %1037, 2
  %1041 = icmp slt i64 %1040, 0
  %1042 = shl i64 %1040, 1
  store i64 %1042, i64* %RAX.i653, align 8
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1044 = zext i1 %1041 to i8
  store i8 %1044, i8* %1043, align 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1046 = trunc i64 %1042 to i32
  %1047 = and i32 %1046, 254
  %1048 = call i32 @llvm.ctpop.i32(i32 %1047)
  %1049 = trunc i32 %1048 to i8
  %1050 = and i8 %1049, 1
  %1051 = xor i8 %1050, 1
  store i8 %1051, i8* %1045, align 1
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1052, align 1
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1054 = icmp eq i64 %1042, 0
  %1055 = zext i1 %1054 to i8
  store i8 %1055, i8* %1053, align 1
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1057 = lshr i64 %1042, 63
  %1058 = trunc i64 %1057 to i8
  store i8 %1058, i8* %1056, align 1
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1059, align 1
  store %struct.Memory* %loadMem_4320e8, %struct.Memory** %MEMORY
  %loadMem_4320ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 33
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 1
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %1065 to i64*
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1067 = getelementptr inbounds %struct.GPR, %struct.GPR* %1066, i32 0, i32 7
  %1068 = getelementptr inbounds %struct.Reg, %struct.Reg* %1067, i32 0, i32 0
  %RDX.i651 = bitcast %union.anon* %1068 to i64*
  %1069 = load i64, i64* %RAX.i650
  %1070 = load i64, i64* %PC.i649
  %1071 = add i64 %1070, 3
  store i64 %1071, i64* %PC.i649
  store i64 %1069, i64* %RDX.i651, align 8
  store %struct.Memory* %loadMem_4320ec, %struct.Memory** %MEMORY
  %loadMem1_4320ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %1074 to i64*
  %1075 = load i64, i64* %PC.i648
  %1076 = add i64 %1075, 81777
  %1077 = load i64, i64* %PC.i648
  %1078 = add i64 %1077, 5
  %1079 = load i64, i64* %PC.i648
  %1080 = add i64 %1079, 5
  store i64 %1080, i64* %PC.i648
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1082 = load i64, i64* %1081, align 8
  %1083 = add i64 %1082, -8
  %1084 = inttoptr i64 %1083 to i64*
  store i64 %1078, i64* %1084
  store i64 %1083, i64* %1081, align 8
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1076, i64* %1085, align 8
  store %struct.Memory* %loadMem1_4320ef, %struct.Memory** %MEMORY
  %loadMem2_4320ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4320ef = load i64, i64* %3
  %call2_4320ef = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4320ef, %struct.Memory* %loadMem2_4320ef)
  store %struct.Memory* %call2_4320ef, %struct.Memory** %MEMORY
  %loadMem_4320f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 33
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1088 to i64*
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1090 = getelementptr inbounds %struct.GPR, %struct.GPR* %1089, i32 0, i32 11
  %1091 = getelementptr inbounds %struct.Reg, %struct.Reg* %1090, i32 0, i32 0
  %RDI.i647 = bitcast %union.anon* %1091 to i64*
  %1092 = load i64, i64* %PC.i646
  %1093 = add i64 %1092, 10
  store i64 %1093, i64* %PC.i646
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i647, align 8
  store %struct.Memory* %loadMem_4320f4, %struct.Memory** %MEMORY
  %loadMem_4320fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 9
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RSI.i645 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %PC.i644
  %1101 = add i64 %1100, 5
  store i64 %1101, i64* %PC.i644
  store i64 118, i64* %RSI.i645, align 8
  store %struct.Memory* %loadMem_4320fe, %struct.Memory** %MEMORY
  %loadMem_432103 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 7
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RDX.i642 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 15
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %1110 to i64*
  %1111 = load i64, i64* %RBP.i643
  %1112 = sub i64 %1111, 8
  %1113 = load i64, i64* %PC.i641
  %1114 = add i64 %1113, 4
  store i64 %1114, i64* %PC.i641
  %1115 = inttoptr i64 %1112 to i64*
  %1116 = load i64, i64* %1115
  store i64 %1116, i64* %RDX.i642, align 8
  store %struct.Memory* %loadMem_432103, %struct.Memory** %MEMORY
  %loadMem_432107 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 1
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 7
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RDX.i640 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RDX.i640
  %1127 = add i64 %1126, 152
  %1128 = load i64, i64* %RAX.i639
  %1129 = load i64, i64* %PC.i638
  %1130 = add i64 %1129, 7
  store i64 %1130, i64* %PC.i638
  %1131 = inttoptr i64 %1127 to i64*
  store i64 %1128, i64* %1131
  store %struct.Memory* %loadMem_432107, %struct.Memory** %MEMORY
  %loadMem_43210e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1133 = getelementptr inbounds %struct.GPR, %struct.GPR* %1132, i32 0, i32 33
  %1134 = getelementptr inbounds %struct.Reg, %struct.Reg* %1133, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1134 to i64*
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 1
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 15
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %RBP.i637 = bitcast %union.anon* %1140 to i64*
  %1141 = load i64, i64* %RBP.i637
  %1142 = sub i64 %1141, 12
  %1143 = load i64, i64* %PC.i635
  %1144 = add i64 %1143, 4
  store i64 %1144, i64* %PC.i635
  %1145 = inttoptr i64 %1142 to i32*
  %1146 = load i32, i32* %1145
  %1147 = sext i32 %1146 to i64
  store i64 %1147, i64* %RAX.i636, align 8
  store %struct.Memory* %loadMem_43210e, %struct.Memory** %MEMORY
  %loadMem_432112 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 1
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RAX.i634
  %1155 = load i64, i64* %PC.i633
  %1156 = add i64 %1155, 4
  store i64 %1156, i64* %PC.i633
  %1157 = shl i64 %1154, 2
  %1158 = icmp slt i64 %1157, 0
  %1159 = shl i64 %1157, 1
  store i64 %1159, i64* %RAX.i634, align 8
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1161 = zext i1 %1158 to i8
  store i8 %1161, i8* %1160, align 1
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1163 = trunc i64 %1159 to i32
  %1164 = and i32 %1163, 254
  %1165 = call i32 @llvm.ctpop.i32(i32 %1164)
  %1166 = trunc i32 %1165 to i8
  %1167 = and i8 %1166, 1
  %1168 = xor i8 %1167, 1
  store i8 %1168, i8* %1162, align 1
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1169, align 1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1171 = icmp eq i64 %1159, 0
  %1172 = zext i1 %1171 to i8
  store i8 %1172, i8* %1170, align 1
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1174 = lshr i64 %1159, 63
  %1175 = trunc i64 %1174 to i8
  store i8 %1175, i8* %1173, align 1
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1176, align 1
  store %struct.Memory* %loadMem_432112, %struct.Memory** %MEMORY
  %loadMem_432116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 33
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1179 to i64*
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 1
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %RAX.i631 = bitcast %union.anon* %1182 to i64*
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1184 = getelementptr inbounds %struct.GPR, %struct.GPR* %1183, i32 0, i32 7
  %1185 = getelementptr inbounds %struct.Reg, %struct.Reg* %1184, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %1185 to i64*
  %1186 = load i64, i64* %RAX.i631
  %1187 = load i64, i64* %PC.i630
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %PC.i630
  store i64 %1186, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_432116, %struct.Memory** %MEMORY
  %loadMem1_432119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1190 = getelementptr inbounds %struct.GPR, %struct.GPR* %1189, i32 0, i32 33
  %1191 = getelementptr inbounds %struct.Reg, %struct.Reg* %1190, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1191 to i64*
  %1192 = load i64, i64* %PC.i629
  %1193 = add i64 %1192, 81735
  %1194 = load i64, i64* %PC.i629
  %1195 = add i64 %1194, 5
  %1196 = load i64, i64* %PC.i629
  %1197 = add i64 %1196, 5
  store i64 %1197, i64* %PC.i629
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1199 = load i64, i64* %1198, align 8
  %1200 = add i64 %1199, -8
  %1201 = inttoptr i64 %1200 to i64*
  store i64 %1195, i64* %1201
  store i64 %1200, i64* %1198, align 8
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1193, i64* %1202, align 8
  store %struct.Memory* %loadMem1_432119, %struct.Memory** %MEMORY
  %loadMem2_432119 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432119 = load i64, i64* %3
  %call2_432119 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432119, %struct.Memory* %loadMem2_432119)
  store %struct.Memory* %call2_432119, %struct.Memory** %MEMORY
  %loadMem_43211e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1204 = getelementptr inbounds %struct.GPR, %struct.GPR* %1203, i32 0, i32 33
  %1205 = getelementptr inbounds %struct.Reg, %struct.Reg* %1204, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1205 to i64*
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1207 = getelementptr inbounds %struct.GPR, %struct.GPR* %1206, i32 0, i32 11
  %1208 = getelementptr inbounds %struct.Reg, %struct.Reg* %1207, i32 0, i32 0
  %RDI.i628 = bitcast %union.anon* %1208 to i64*
  %1209 = load i64, i64* %PC.i627
  %1210 = add i64 %1209, 10
  store i64 %1210, i64* %PC.i627
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i628, align 8
  store %struct.Memory* %loadMem_43211e, %struct.Memory** %MEMORY
  %loadMem_432128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 33
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %1213 to i64*
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1215 = getelementptr inbounds %struct.GPR, %struct.GPR* %1214, i32 0, i32 9
  %1216 = getelementptr inbounds %struct.Reg, %struct.Reg* %1215, i32 0, i32 0
  %RSI.i626 = bitcast %union.anon* %1216 to i64*
  %1217 = load i64, i64* %PC.i625
  %1218 = add i64 %1217, 5
  store i64 %1218, i64* %PC.i625
  store i64 119, i64* %RSI.i626, align 8
  store %struct.Memory* %loadMem_432128, %struct.Memory** %MEMORY
  %loadMem_43212d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 7
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %RDX.i623 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 15
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %1227 to i64*
  %1228 = load i64, i64* %RBP.i624
  %1229 = sub i64 %1228, 8
  %1230 = load i64, i64* %PC.i622
  %1231 = add i64 %1230, 4
  store i64 %1231, i64* %PC.i622
  %1232 = inttoptr i64 %1229 to i64*
  %1233 = load i64, i64* %1232
  store i64 %1233, i64* %RDX.i623, align 8
  store %struct.Memory* %loadMem_43212d, %struct.Memory** %MEMORY
  %loadMem_432131 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 1
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 7
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RDX.i621 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RDX.i621
  %1244 = add i64 %1243, 160
  %1245 = load i64, i64* %RAX.i620
  %1246 = load i64, i64* %PC.i619
  %1247 = add i64 %1246, 7
  store i64 %1247, i64* %PC.i619
  %1248 = inttoptr i64 %1244 to i64*
  store i64 %1245, i64* %1248
  store %struct.Memory* %loadMem_432131, %struct.Memory** %MEMORY
  %loadMem_432138 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 5
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RCX.i617 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 15
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %RBP.i618
  %1259 = sub i64 %1258, 12
  %1260 = load i64, i64* %PC.i616
  %1261 = add i64 %1260, 4
  store i64 %1261, i64* %PC.i616
  %1262 = inttoptr i64 %1259 to i32*
  %1263 = load i32, i32* %1262
  %1264 = sext i32 %1263 to i64
  %1265 = mul i64 %1264, 7
  %1266 = trunc i64 %1265 to i32
  %1267 = and i64 %1265, 4294967295
  store i64 %1267, i64* %RCX.i617, align 8
  %1268 = shl i64 %1265, 32
  %1269 = ashr exact i64 %1268, 32
  %1270 = icmp ne i64 %1269, %1265
  %1271 = zext i1 %1270 to i8
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1271, i8* %1272, align 1
  %1273 = and i32 %1266, 255
  %1274 = call i32 @llvm.ctpop.i32(i32 %1273)
  %1275 = trunc i32 %1274 to i8
  %1276 = and i8 %1275, 1
  %1277 = xor i8 %1276, 1
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1277, i8* %1278, align 1
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1279, align 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1280, align 1
  %1281 = lshr i32 %1266, 31
  %1282 = trunc i32 %1281 to i8
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1282, i8* %1283, align 1
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1271, i8* %1284, align 1
  store %struct.Memory* %loadMem_432138, %struct.Memory** %MEMORY
  %loadMem_43213c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 5
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %ECX.i614 = bitcast %union.anon* %1290 to i32*
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1292 = getelementptr inbounds %struct.GPR, %struct.GPR* %1291, i32 0, i32 1
  %1293 = getelementptr inbounds %struct.Reg, %struct.Reg* %1292, i32 0, i32 0
  %RAX.i615 = bitcast %union.anon* %1293 to i64*
  %1294 = load i32, i32* %ECX.i614
  %1295 = zext i32 %1294 to i64
  %1296 = load i64, i64* %PC.i613
  %1297 = add i64 %1296, 3
  store i64 %1297, i64* %PC.i613
  %1298 = shl i64 %1295, 32
  %1299 = ashr exact i64 %1298, 32
  store i64 %1299, i64* %RAX.i615, align 8
  store %struct.Memory* %loadMem_43213c, %struct.Memory** %MEMORY
  %loadMem_43213f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i611 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 1
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RAX.i612 = bitcast %union.anon* %1305 to i64*
  %1306 = load i64, i64* %RAX.i612
  %1307 = load i64, i64* %PC.i611
  %1308 = add i64 %1307, 4
  store i64 %1308, i64* %PC.i611
  %1309 = shl i64 %1306, 1
  %1310 = icmp slt i64 %1309, 0
  %1311 = shl i64 %1309, 1
  store i64 %1311, i64* %RAX.i612, align 8
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1313 = zext i1 %1310 to i8
  store i8 %1313, i8* %1312, align 1
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1315 = trunc i64 %1311 to i32
  %1316 = and i32 %1315, 254
  %1317 = call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  store i8 %1320, i8* %1314, align 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1321, align 1
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1323 = icmp eq i64 %1311, 0
  %1324 = zext i1 %1323 to i8
  store i8 %1324, i8* %1322, align 1
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1326 = lshr i64 %1311, 63
  %1327 = trunc i64 %1326 to i8
  store i8 %1327, i8* %1325, align 1
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1328, align 1
  store %struct.Memory* %loadMem_43213f, %struct.Memory** %MEMORY
  %loadMem_432143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 1
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RAX.i609 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 7
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RDX.i610 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %RAX.i609
  %1339 = load i64, i64* %PC.i608
  %1340 = add i64 %1339, 3
  store i64 %1340, i64* %PC.i608
  store i64 %1338, i64* %RDX.i610, align 8
  store %struct.Memory* %loadMem_432143, %struct.Memory** %MEMORY
  %loadMem1_432146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %PC.i607
  %1345 = add i64 %1344, 81690
  %1346 = load i64, i64* %PC.i607
  %1347 = add i64 %1346, 5
  %1348 = load i64, i64* %PC.i607
  %1349 = add i64 %1348, 5
  store i64 %1349, i64* %PC.i607
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1351 = load i64, i64* %1350, align 8
  %1352 = add i64 %1351, -8
  %1353 = inttoptr i64 %1352 to i64*
  store i64 %1347, i64* %1353
  store i64 %1352, i64* %1350, align 8
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1345, i64* %1354, align 8
  store %struct.Memory* %loadMem1_432146, %struct.Memory** %MEMORY
  %loadMem2_432146 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432146 = load i64, i64* %3
  %call2_432146 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432146, %struct.Memory* %loadMem2_432146)
  store %struct.Memory* %call2_432146, %struct.Memory** %MEMORY
  %loadMem_43214b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 11
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RDI.i606 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %PC.i605
  %1362 = add i64 %1361, 10
  store i64 %1362, i64* %PC.i605
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i606, align 8
  store %struct.Memory* %loadMem_43214b, %struct.Memory** %MEMORY
  %loadMem_432155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 33
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 9
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RSI.i604 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i603
  %1370 = add i64 %1369, 5
  store i64 %1370, i64* %PC.i603
  store i64 120, i64* %RSI.i604, align 8
  store %struct.Memory* %loadMem_432155, %struct.Memory** %MEMORY
  %loadMem_43215a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 33
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 7
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RDX.i601 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 15
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %RBP.i602
  %1381 = sub i64 %1380, 8
  %1382 = load i64, i64* %PC.i600
  %1383 = add i64 %1382, 4
  store i64 %1383, i64* %PC.i600
  %1384 = inttoptr i64 %1381 to i64*
  %1385 = load i64, i64* %1384
  store i64 %1385, i64* %RDX.i601, align 8
  store %struct.Memory* %loadMem_43215a, %struct.Memory** %MEMORY
  %loadMem_43215e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 7
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %1391 to i64*
  %1392 = load i64, i64* %RDX.i599
  %1393 = add i64 %1392, 144
  %1394 = load i64, i64* %PC.i598
  %1395 = add i64 %1394, 7
  store i64 %1395, i64* %PC.i598
  %1396 = inttoptr i64 %1393 to i64*
  %1397 = load i64, i64* %1396
  store i64 %1397, i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_43215e, %struct.Memory** %MEMORY
  %loadMem_432165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 33
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 1
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RAX.i596 = bitcast %union.anon* %1403 to i64*
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1405 = getelementptr inbounds %struct.GPR, %struct.GPR* %1404, i32 0, i32 7
  %1406 = getelementptr inbounds %struct.Reg, %struct.Reg* %1405, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %1406 to i64*
  %1407 = load i64, i64* %RDX.i597
  %1408 = load i64, i64* %RAX.i596
  %1409 = load i64, i64* %PC.i595
  %1410 = add i64 %1409, 3
  store i64 %1410, i64* %PC.i595
  %1411 = inttoptr i64 %1407 to i64*
  store i64 %1408, i64* %1411
  store %struct.Memory* %loadMem_432165, %struct.Memory** %MEMORY
  %loadMem_432168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 5
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RCX.i593 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 15
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RBP.i594
  %1422 = sub i64 %1421, 12
  %1423 = load i64, i64* %PC.i592
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i592
  %1425 = inttoptr i64 %1422 to i32*
  %1426 = load i32, i32* %1425
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RCX.i593, align 8
  store %struct.Memory* %loadMem_432168, %struct.Memory** %MEMORY
  %loadMem_43216b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1429 = getelementptr inbounds %struct.GPR, %struct.GPR* %1428, i32 0, i32 33
  %1430 = getelementptr inbounds %struct.Reg, %struct.Reg* %1429, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %1430 to i64*
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 5
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %RCX.i591 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %RCX.i591
  %1435 = load i64, i64* %PC.i590
  %1436 = add i64 %1435, 3
  store i64 %1436, i64* %PC.i590
  %1437 = trunc i64 %1434 to i32
  %1438 = add i32 1, %1437
  %1439 = zext i32 %1438 to i64
  store i64 %1439, i64* %RCX.i591, align 8
  %1440 = icmp ult i32 %1438, %1437
  %1441 = icmp ult i32 %1438, 1
  %1442 = or i1 %1440, %1441
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1443, i8* %1444, align 1
  %1445 = and i32 %1438, 255
  %1446 = call i32 @llvm.ctpop.i32(i32 %1445)
  %1447 = trunc i32 %1446 to i8
  %1448 = and i8 %1447, 1
  %1449 = xor i8 %1448, 1
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1449, i8* %1450, align 1
  %1451 = xor i64 1, %1434
  %1452 = trunc i64 %1451 to i32
  %1453 = xor i32 %1452, %1438
  %1454 = lshr i32 %1453, 4
  %1455 = trunc i32 %1454 to i8
  %1456 = and i8 %1455, 1
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1456, i8* %1457, align 1
  %1458 = icmp eq i32 %1438, 0
  %1459 = zext i1 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1459, i8* %1460, align 1
  %1461 = lshr i32 %1438, 31
  %1462 = trunc i32 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1462, i8* %1463, align 1
  %1464 = lshr i32 %1437, 31
  %1465 = xor i32 %1461, %1464
  %1466 = add i32 %1465, %1461
  %1467 = icmp eq i32 %1466, 2
  %1468 = zext i1 %1467 to i8
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1468, i8* %1469, align 1
  store %struct.Memory* %loadMem_43216b, %struct.Memory** %MEMORY
  %loadMem_43216e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 5
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %ECX.i588 = bitcast %union.anon* %1475 to i32*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 5
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RCX.i589 = bitcast %union.anon* %1478 to i64*
  %1479 = load i32, i32* %ECX.i588
  %1480 = zext i32 %1479 to i64
  %1481 = load i64, i64* %PC.i587
  %1482 = add i64 %1481, 3
  store i64 %1482, i64* %PC.i587
  %1483 = shl i64 %1480, 32
  %1484 = ashr exact i64 %1483, 32
  %1485 = mul i64 20, %1484
  %1486 = trunc i64 %1485 to i32
  %1487 = and i64 %1485, 4294967295
  store i64 %1487, i64* %RCX.i589, align 8
  %1488 = shl i64 %1485, 32
  %1489 = ashr exact i64 %1488, 32
  %1490 = icmp ne i64 %1489, %1485
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1491, i8* %1492, align 1
  %1493 = and i32 %1486, 255
  %1494 = call i32 @llvm.ctpop.i32(i32 %1493)
  %1495 = trunc i32 %1494 to i8
  %1496 = and i8 %1495, 1
  %1497 = xor i8 %1496, 1
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1497, i8* %1498, align 1
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1499, align 1
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1500, align 1
  %1501 = lshr i32 %1486, 31
  %1502 = trunc i32 %1501 to i8
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1502, i8* %1503, align 1
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1504, align 1
  store %struct.Memory* %loadMem_43216e, %struct.Memory** %MEMORY
  %loadMem_432171 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1506 = getelementptr inbounds %struct.GPR, %struct.GPR* %1505, i32 0, i32 33
  %1507 = getelementptr inbounds %struct.Reg, %struct.Reg* %1506, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %1507 to i64*
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1509 = getelementptr inbounds %struct.GPR, %struct.GPR* %1508, i32 0, i32 5
  %1510 = getelementptr inbounds %struct.Reg, %struct.Reg* %1509, i32 0, i32 0
  %ECX.i585 = bitcast %union.anon* %1510 to i32*
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 1
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %RAX.i586 = bitcast %union.anon* %1513 to i64*
  %1514 = load i32, i32* %ECX.i585
  %1515 = zext i32 %1514 to i64
  %1516 = load i64, i64* %PC.i584
  %1517 = add i64 %1516, 3
  store i64 %1517, i64* %PC.i584
  %1518 = shl i64 %1515, 32
  %1519 = ashr exact i64 %1518, 32
  store i64 %1519, i64* %RAX.i586, align 8
  store %struct.Memory* %loadMem_432171, %struct.Memory** %MEMORY
  %loadMem_432174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 1
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %RAX.i583 = bitcast %union.anon* %1525 to i64*
  %1526 = load i64, i64* %RAX.i583
  %1527 = load i64, i64* %PC.i582
  %1528 = add i64 %1527, 4
  store i64 %1528, i64* %PC.i582
  %1529 = shl i64 %1526, 1
  %1530 = icmp slt i64 %1529, 0
  %1531 = shl i64 %1529, 1
  store i64 %1531, i64* %RAX.i583, align 8
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1533 = zext i1 %1530 to i8
  store i8 %1533, i8* %1532, align 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1535 = trunc i64 %1531 to i32
  %1536 = and i32 %1535, 254
  %1537 = call i32 @llvm.ctpop.i32(i32 %1536)
  %1538 = trunc i32 %1537 to i8
  %1539 = and i8 %1538, 1
  %1540 = xor i8 %1539, 1
  store i8 %1540, i8* %1534, align 1
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1541, align 1
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1543 = icmp eq i64 %1531, 0
  %1544 = zext i1 %1543 to i8
  store i8 %1544, i8* %1542, align 1
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1546 = lshr i64 %1531, 63
  %1547 = trunc i64 %1546 to i8
  store i8 %1547, i8* %1545, align 1
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1548, align 1
  store %struct.Memory* %loadMem_432174, %struct.Memory** %MEMORY
  %loadMem_432178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1550 = getelementptr inbounds %struct.GPR, %struct.GPR* %1549, i32 0, i32 33
  %1551 = getelementptr inbounds %struct.Reg, %struct.Reg* %1550, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %1551 to i64*
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1553 = getelementptr inbounds %struct.GPR, %struct.GPR* %1552, i32 0, i32 1
  %1554 = getelementptr inbounds %struct.Reg, %struct.Reg* %1553, i32 0, i32 0
  %RAX.i580 = bitcast %union.anon* %1554 to i64*
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1556 = getelementptr inbounds %struct.GPR, %struct.GPR* %1555, i32 0, i32 7
  %1557 = getelementptr inbounds %struct.Reg, %struct.Reg* %1556, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %1557 to i64*
  %1558 = load i64, i64* %RAX.i580
  %1559 = load i64, i64* %PC.i579
  %1560 = add i64 %1559, 3
  store i64 %1560, i64* %PC.i579
  store i64 %1558, i64* %RDX.i581, align 8
  store %struct.Memory* %loadMem_432178, %struct.Memory** %MEMORY
  %loadMem1_43217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %PC.i578
  %1565 = add i64 %1564, 81637
  %1566 = load i64, i64* %PC.i578
  %1567 = add i64 %1566, 5
  %1568 = load i64, i64* %PC.i578
  %1569 = add i64 %1568, 5
  store i64 %1569, i64* %PC.i578
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1571 = load i64, i64* %1570, align 8
  %1572 = add i64 %1571, -8
  %1573 = inttoptr i64 %1572 to i64*
  store i64 %1567, i64* %1573
  store i64 %1572, i64* %1570, align 8
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1565, i64* %1574, align 8
  store %struct.Memory* %loadMem1_43217b, %struct.Memory** %MEMORY
  %loadMem2_43217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43217b = load i64, i64* %3
  %call2_43217b = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43217b, %struct.Memory* %loadMem2_43217b)
  store %struct.Memory* %call2_43217b, %struct.Memory** %MEMORY
  %loadMem_432180 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 11
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RDI.i577 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %PC.i576
  %1582 = add i64 %1581, 10
  store i64 %1582, i64* %PC.i576
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i577, align 8
  store %struct.Memory* %loadMem_432180, %struct.Memory** %MEMORY
  %loadMem_43218a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 9
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RSI.i575 = bitcast %union.anon* %1588 to i64*
  %1589 = load i64, i64* %PC.i574
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %PC.i574
  store i64 121, i64* %RSI.i575, align 8
  store %struct.Memory* %loadMem_43218a, %struct.Memory** %MEMORY
  %loadMem_43218f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1592 = getelementptr inbounds %struct.GPR, %struct.GPR* %1591, i32 0, i32 33
  %1593 = getelementptr inbounds %struct.Reg, %struct.Reg* %1592, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %1593 to i64*
  %1594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1595 = getelementptr inbounds %struct.GPR, %struct.GPR* %1594, i32 0, i32 7
  %1596 = getelementptr inbounds %struct.Reg, %struct.Reg* %1595, i32 0, i32 0
  %RDX.i572 = bitcast %union.anon* %1596 to i64*
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 15
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %1599 to i64*
  %1600 = load i64, i64* %RBP.i573
  %1601 = sub i64 %1600, 8
  %1602 = load i64, i64* %PC.i571
  %1603 = add i64 %1602, 4
  store i64 %1603, i64* %PC.i571
  %1604 = inttoptr i64 %1601 to i64*
  %1605 = load i64, i64* %1604
  store i64 %1605, i64* %RDX.i572, align 8
  store %struct.Memory* %loadMem_43218f, %struct.Memory** %MEMORY
  %loadMem_432193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 33
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1608 to i64*
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 7
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %RDX.i570 = bitcast %union.anon* %1611 to i64*
  %1612 = load i64, i64* %RDX.i570
  %1613 = add i64 %1612, 152
  %1614 = load i64, i64* %PC.i569
  %1615 = add i64 %1614, 7
  store i64 %1615, i64* %PC.i569
  %1616 = inttoptr i64 %1613 to i64*
  %1617 = load i64, i64* %1616
  store i64 %1617, i64* %RDX.i570, align 8
  store %struct.Memory* %loadMem_432193, %struct.Memory** %MEMORY
  %loadMem_43219a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 1
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 7
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RDX.i568 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RDX.i568
  %1628 = load i64, i64* %RAX.i567
  %1629 = load i64, i64* %PC.i566
  %1630 = add i64 %1629, 3
  store i64 %1630, i64* %PC.i566
  %1631 = inttoptr i64 %1627 to i64*
  store i64 %1628, i64* %1631
  store %struct.Memory* %loadMem_43219a, %struct.Memory** %MEMORY
  %loadMem_43219d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 33
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 5
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RCX.i564 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 15
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RBP.i565
  %1642 = sub i64 %1641, 12
  %1643 = load i64, i64* %PC.i563
  %1644 = add i64 %1643, 4
  store i64 %1644, i64* %PC.i563
  %1645 = inttoptr i64 %1642 to i32*
  %1646 = load i32, i32* %1645
  %1647 = sext i32 %1646 to i64
  %1648 = mul i64 %1647, 20
  %1649 = trunc i64 %1648 to i32
  %1650 = and i64 %1648, 4294967295
  store i64 %1650, i64* %RCX.i564, align 8
  %1651 = shl i64 %1648, 32
  %1652 = ashr exact i64 %1651, 32
  %1653 = icmp ne i64 %1652, %1648
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1654, i8* %1655, align 1
  %1656 = and i32 %1649, 255
  %1657 = call i32 @llvm.ctpop.i32(i32 %1656)
  %1658 = trunc i32 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = xor i8 %1659, 1
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1660, i8* %1661, align 1
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1662, align 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1663, align 1
  %1664 = lshr i32 %1649, 31
  %1665 = trunc i32 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1665, i8* %1666, align 1
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1654, i8* %1667, align 1
  store %struct.Memory* %loadMem_43219d, %struct.Memory** %MEMORY
  %loadMem_4321a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 5
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %ECX.i561 = bitcast %union.anon* %1673 to i32*
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1675 = getelementptr inbounds %struct.GPR, %struct.GPR* %1674, i32 0, i32 1
  %1676 = getelementptr inbounds %struct.Reg, %struct.Reg* %1675, i32 0, i32 0
  %RAX.i562 = bitcast %union.anon* %1676 to i64*
  %1677 = load i32, i32* %ECX.i561
  %1678 = zext i32 %1677 to i64
  %1679 = load i64, i64* %PC.i560
  %1680 = add i64 %1679, 3
  store i64 %1680, i64* %PC.i560
  %1681 = shl i64 %1678, 32
  %1682 = ashr exact i64 %1681, 32
  store i64 %1682, i64* %RAX.i562, align 8
  store %struct.Memory* %loadMem_4321a1, %struct.Memory** %MEMORY
  %loadMem_4321a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1684 = getelementptr inbounds %struct.GPR, %struct.GPR* %1683, i32 0, i32 33
  %1685 = getelementptr inbounds %struct.Reg, %struct.Reg* %1684, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %1685 to i64*
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1687 = getelementptr inbounds %struct.GPR, %struct.GPR* %1686, i32 0, i32 1
  %1688 = getelementptr inbounds %struct.Reg, %struct.Reg* %1687, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %1688 to i64*
  %1689 = load i64, i64* %RAX.i559
  %1690 = load i64, i64* %PC.i558
  %1691 = add i64 %1690, 4
  store i64 %1691, i64* %PC.i558
  %1692 = shl i64 %1689, 1
  %1693 = icmp slt i64 %1692, 0
  %1694 = shl i64 %1692, 1
  store i64 %1694, i64* %RAX.i559, align 8
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1696 = zext i1 %1693 to i8
  store i8 %1696, i8* %1695, align 1
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1698 = trunc i64 %1694 to i32
  %1699 = and i32 %1698, 254
  %1700 = call i32 @llvm.ctpop.i32(i32 %1699)
  %1701 = trunc i32 %1700 to i8
  %1702 = and i8 %1701, 1
  %1703 = xor i8 %1702, 1
  store i8 %1703, i8* %1697, align 1
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1704, align 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1706 = icmp eq i64 %1694, 0
  %1707 = zext i1 %1706 to i8
  store i8 %1707, i8* %1705, align 1
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1709 = lshr i64 %1694, 63
  %1710 = trunc i64 %1709 to i8
  store i8 %1710, i8* %1708, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1711, align 1
  store %struct.Memory* %loadMem_4321a4, %struct.Memory** %MEMORY
  %loadMem_4321a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 33
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %1714 to i64*
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 1
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %RAX.i556 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 7
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RAX.i556
  %1722 = load i64, i64* %PC.i555
  %1723 = add i64 %1722, 3
  store i64 %1723, i64* %PC.i555
  store i64 %1721, i64* %RDX.i557, align 8
  store %struct.Memory* %loadMem_4321a8, %struct.Memory** %MEMORY
  %loadMem1_4321ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 33
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1726 to i64*
  %1727 = load i64, i64* %PC.i554
  %1728 = add i64 %1727, 81589
  %1729 = load i64, i64* %PC.i554
  %1730 = add i64 %1729, 5
  %1731 = load i64, i64* %PC.i554
  %1732 = add i64 %1731, 5
  store i64 %1732, i64* %PC.i554
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1734 = load i64, i64* %1733, align 8
  %1735 = add i64 %1734, -8
  %1736 = inttoptr i64 %1735 to i64*
  store i64 %1730, i64* %1736
  store i64 %1735, i64* %1733, align 8
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1728, i64* %1737, align 8
  store %struct.Memory* %loadMem1_4321ab, %struct.Memory** %MEMORY
  %loadMem2_4321ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4321ab = load i64, i64* %3
  %call2_4321ab = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4321ab, %struct.Memory* %loadMem2_4321ab)
  store %struct.Memory* %call2_4321ab, %struct.Memory** %MEMORY
  %loadMem_4321b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 11
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %RDI.i553 = bitcast %union.anon* %1743 to i64*
  %1744 = load i64, i64* %PC.i552
  %1745 = add i64 %1744, 10
  store i64 %1745, i64* %PC.i552
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i553, align 8
  store %struct.Memory* %loadMem_4321b0, %struct.Memory** %MEMORY
  %loadMem_4321ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1747 = getelementptr inbounds %struct.GPR, %struct.GPR* %1746, i32 0, i32 33
  %1748 = getelementptr inbounds %struct.Reg, %struct.Reg* %1747, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %1748 to i64*
  %1749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1750 = getelementptr inbounds %struct.GPR, %struct.GPR* %1749, i32 0, i32 9
  %1751 = getelementptr inbounds %struct.Reg, %struct.Reg* %1750, i32 0, i32 0
  %RSI.i551 = bitcast %union.anon* %1751 to i64*
  %1752 = load i64, i64* %PC.i550
  %1753 = add i64 %1752, 5
  store i64 %1753, i64* %PC.i550
  store i64 123, i64* %RSI.i551, align 8
  store %struct.Memory* %loadMem_4321ba, %struct.Memory** %MEMORY
  %loadMem_4321bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 5
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RCX.i549 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %PC.i548
  %1761 = add i64 %1760, 5
  store i64 %1761, i64* %PC.i548
  store i64 56, i64* %RCX.i549, align 8
  store %struct.Memory* %loadMem_4321bf, %struct.Memory** %MEMORY
  %loadMem_4321c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1763 = getelementptr inbounds %struct.GPR, %struct.GPR* %1762, i32 0, i32 33
  %1764 = getelementptr inbounds %struct.Reg, %struct.Reg* %1763, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %1764 to i64*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1766 = getelementptr inbounds %struct.GPR, %struct.GPR* %1765, i32 0, i32 5
  %1767 = getelementptr inbounds %struct.Reg, %struct.Reg* %1766, i32 0, i32 0
  %ECX.i546 = bitcast %union.anon* %1767 to i32*
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 7
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %RDX.i547 = bitcast %union.anon* %1770 to i64*
  %1771 = load i32, i32* %ECX.i546
  %1772 = zext i32 %1771 to i64
  %1773 = load i64, i64* %PC.i545
  %1774 = add i64 %1773, 2
  store i64 %1774, i64* %PC.i545
  %1775 = and i64 %1772, 4294967295
  store i64 %1775, i64* %RDX.i547, align 8
  store %struct.Memory* %loadMem_4321c4, %struct.Memory** %MEMORY
  %loadMem_4321c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1777 = getelementptr inbounds %struct.GPR, %struct.GPR* %1776, i32 0, i32 33
  %1778 = getelementptr inbounds %struct.Reg, %struct.Reg* %1777, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %1778 to i64*
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 15
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %RBP.i543 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 17
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %R8.i544 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RBP.i543
  %1786 = sub i64 %1785, 8
  %1787 = load i64, i64* %PC.i542
  %1788 = add i64 %1787, 4
  store i64 %1788, i64* %PC.i542
  %1789 = inttoptr i64 %1786 to i64*
  %1790 = load i64, i64* %1789
  store i64 %1790, i64* %R8.i544, align 8
  store %struct.Memory* %loadMem_4321c6, %struct.Memory** %MEMORY
  %loadMem_4321ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 17
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %R8.i541 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %R8.i541
  %1798 = add i64 %1797, 160
  %1799 = load i64, i64* %PC.i540
  %1800 = add i64 %1799, 7
  store i64 %1800, i64* %PC.i540
  %1801 = inttoptr i64 %1798 to i64*
  %1802 = load i64, i64* %1801
  store i64 %1802, i64* %R8.i541, align 8
  store %struct.Memory* %loadMem_4321ca, %struct.Memory** %MEMORY
  %loadMem_4321d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 33
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %1805 to i64*
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 1
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 17
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %R8.i539 = bitcast %union.anon* %1811 to i64*
  %1812 = load i64, i64* %R8.i539
  %1813 = load i64, i64* %RAX.i538
  %1814 = load i64, i64* %PC.i537
  %1815 = add i64 %1814, 3
  store i64 %1815, i64* %PC.i537
  %1816 = inttoptr i64 %1812 to i64*
  store i64 %1813, i64* %1816
  store %struct.Memory* %loadMem_4321d1, %struct.Memory** %MEMORY
  %loadMem1_4321d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1818 = getelementptr inbounds %struct.GPR, %struct.GPR* %1817, i32 0, i32 33
  %1819 = getelementptr inbounds %struct.Reg, %struct.Reg* %1818, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %1819 to i64*
  %1820 = load i64, i64* %PC.i536
  %1821 = add i64 %1820, 81548
  %1822 = load i64, i64* %PC.i536
  %1823 = add i64 %1822, 5
  %1824 = load i64, i64* %PC.i536
  %1825 = add i64 %1824, 5
  store i64 %1825, i64* %PC.i536
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1827 = load i64, i64* %1826, align 8
  %1828 = add i64 %1827, -8
  %1829 = inttoptr i64 %1828 to i64*
  store i64 %1823, i64* %1829
  store i64 %1828, i64* %1826, align 8
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1821, i64* %1830, align 8
  store %struct.Memory* %loadMem1_4321d4, %struct.Memory** %MEMORY
  %loadMem2_4321d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4321d4 = load i64, i64* %3
  %call2_4321d4 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4321d4, %struct.Memory* %loadMem2_4321d4)
  store %struct.Memory* %call2_4321d4, %struct.Memory** %MEMORY
  %loadMem_4321d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 11
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RDI.i535 = bitcast %union.anon* %1836 to i64*
  %1837 = load i64, i64* %PC.i534
  %1838 = add i64 %1837, 10
  store i64 %1838, i64* %PC.i534
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i535, align 8
  store %struct.Memory* %loadMem_4321d9, %struct.Memory** %MEMORY
  %loadMem_4321e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 9
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %RSI.i533 = bitcast %union.anon* %1844 to i64*
  %1845 = load i64, i64* %PC.i532
  %1846 = add i64 %1845, 5
  store i64 %1846, i64* %PC.i532
  store i64 124, i64* %RSI.i533, align 8
  store %struct.Memory* %loadMem_4321e3, %struct.Memory** %MEMORY
  %loadMem_4321e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1848 = getelementptr inbounds %struct.GPR, %struct.GPR* %1847, i32 0, i32 33
  %1849 = getelementptr inbounds %struct.Reg, %struct.Reg* %1848, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %1849 to i64*
  %1850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1851 = getelementptr inbounds %struct.GPR, %struct.GPR* %1850, i32 0, i32 5
  %1852 = getelementptr inbounds %struct.Reg, %struct.Reg* %1851, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %1852 to i64*
  %1853 = load i64, i64* %PC.i530
  %1854 = add i64 %1853, 5
  store i64 %1854, i64* %PC.i530
  store i64 192, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_4321e8, %struct.Memory** %MEMORY
  %loadMem_4321ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 33
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 5
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %ECX.i528 = bitcast %union.anon* %1860 to i32*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1862 = getelementptr inbounds %struct.GPR, %struct.GPR* %1861, i32 0, i32 7
  %1863 = getelementptr inbounds %struct.Reg, %struct.Reg* %1862, i32 0, i32 0
  %RDX.i529 = bitcast %union.anon* %1863 to i64*
  %1864 = load i32, i32* %ECX.i528
  %1865 = zext i32 %1864 to i64
  %1866 = load i64, i64* %PC.i527
  %1867 = add i64 %1866, 2
  store i64 %1867, i64* %PC.i527
  %1868 = and i64 %1865, 4294967295
  store i64 %1868, i64* %RDX.i529, align 8
  store %struct.Memory* %loadMem_4321ed, %struct.Memory** %MEMORY
  %loadMem_4321ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 15
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 17
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %R8.i526 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %RBP.i525
  %1879 = sub i64 %1878, 8
  %1880 = load i64, i64* %PC.i524
  %1881 = add i64 %1880, 4
  store i64 %1881, i64* %PC.i524
  %1882 = inttoptr i64 %1879 to i64*
  %1883 = load i64, i64* %1882
  store i64 %1883, i64* %R8.i526, align 8
  store %struct.Memory* %loadMem_4321ef, %struct.Memory** %MEMORY
  %loadMem_4321f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 1
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 17
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %R8.i523 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %R8.i523
  %1894 = add i64 %1893, 312
  %1895 = load i64, i64* %RAX.i522
  %1896 = load i64, i64* %PC.i521
  %1897 = add i64 %1896, 7
  store i64 %1897, i64* %PC.i521
  %1898 = inttoptr i64 %1894 to i64*
  store i64 %1895, i64* %1898
  store %struct.Memory* %loadMem_4321f3, %struct.Memory** %MEMORY
  %loadMem1_4321fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %PC.i520
  %1903 = add i64 %1902, 81510
  %1904 = load i64, i64* %PC.i520
  %1905 = add i64 %1904, 5
  %1906 = load i64, i64* %PC.i520
  %1907 = add i64 %1906, 5
  store i64 %1907, i64* %PC.i520
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1909 = load i64, i64* %1908, align 8
  %1910 = add i64 %1909, -8
  %1911 = inttoptr i64 %1910 to i64*
  store i64 %1905, i64* %1911
  store i64 %1910, i64* %1908, align 8
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1903, i64* %1912, align 8
  store %struct.Memory* %loadMem1_4321fa, %struct.Memory** %MEMORY
  %loadMem2_4321fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4321fa = load i64, i64* %3
  %call2_4321fa = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4321fa, %struct.Memory* %loadMem2_4321fa)
  store %struct.Memory* %call2_4321fa, %struct.Memory** %MEMORY
  %loadMem_4321ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 11
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RDI.i519 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %PC.i518
  %1920 = add i64 %1919, 10
  store i64 %1920, i64* %PC.i518
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i519, align 8
  store %struct.Memory* %loadMem_4321ff, %struct.Memory** %MEMORY
  %loadMem_432209 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1922 = getelementptr inbounds %struct.GPR, %struct.GPR* %1921, i32 0, i32 33
  %1923 = getelementptr inbounds %struct.Reg, %struct.Reg* %1922, i32 0, i32 0
  %PC.i516 = bitcast %union.anon* %1923 to i64*
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 9
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %RSI.i517 = bitcast %union.anon* %1926 to i64*
  %1927 = load i64, i64* %PC.i516
  %1928 = add i64 %1927, 5
  store i64 %1928, i64* %PC.i516
  store i64 125, i64* %RSI.i517, align 8
  store %struct.Memory* %loadMem_432209, %struct.Memory** %MEMORY
  %loadMem_43220e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 33
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 5
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %PC.i514
  %1936 = add i64 %1935, 5
  store i64 %1936, i64* %PC.i514
  store i64 192, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_43220e, %struct.Memory** %MEMORY
  %loadMem_432213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1938 = getelementptr inbounds %struct.GPR, %struct.GPR* %1937, i32 0, i32 33
  %1939 = getelementptr inbounds %struct.Reg, %struct.Reg* %1938, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %1939 to i64*
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1941 = getelementptr inbounds %struct.GPR, %struct.GPR* %1940, i32 0, i32 5
  %1942 = getelementptr inbounds %struct.Reg, %struct.Reg* %1941, i32 0, i32 0
  %ECX.i512 = bitcast %union.anon* %1942 to i32*
  %1943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1944 = getelementptr inbounds %struct.GPR, %struct.GPR* %1943, i32 0, i32 7
  %1945 = getelementptr inbounds %struct.Reg, %struct.Reg* %1944, i32 0, i32 0
  %RDX.i513 = bitcast %union.anon* %1945 to i64*
  %1946 = load i32, i32* %ECX.i512
  %1947 = zext i32 %1946 to i64
  %1948 = load i64, i64* %PC.i511
  %1949 = add i64 %1948, 2
  store i64 %1949, i64* %PC.i511
  %1950 = and i64 %1947, 4294967295
  store i64 %1950, i64* %RDX.i513, align 8
  store %struct.Memory* %loadMem_432213, %struct.Memory** %MEMORY
  %loadMem_432215 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1952 = getelementptr inbounds %struct.GPR, %struct.GPR* %1951, i32 0, i32 33
  %1953 = getelementptr inbounds %struct.Reg, %struct.Reg* %1952, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %1953 to i64*
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 15
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 17
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %R8.i510 = bitcast %union.anon* %1959 to i64*
  %1960 = load i64, i64* %RBP.i509
  %1961 = sub i64 %1960, 8
  %1962 = load i64, i64* %PC.i508
  %1963 = add i64 %1962, 4
  store i64 %1963, i64* %PC.i508
  %1964 = inttoptr i64 %1961 to i64*
  %1965 = load i64, i64* %1964
  store i64 %1965, i64* %R8.i510, align 8
  store %struct.Memory* %loadMem_432215, %struct.Memory** %MEMORY
  %loadMem_432219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1967 = getelementptr inbounds %struct.GPR, %struct.GPR* %1966, i32 0, i32 33
  %1968 = getelementptr inbounds %struct.Reg, %struct.Reg* %1967, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %1968 to i64*
  %1969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1970 = getelementptr inbounds %struct.GPR, %struct.GPR* %1969, i32 0, i32 1
  %1971 = getelementptr inbounds %struct.Reg, %struct.Reg* %1970, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %1971 to i64*
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1973 = getelementptr inbounds %struct.GPR, %struct.GPR* %1972, i32 0, i32 17
  %1974 = getelementptr inbounds %struct.Reg, %struct.Reg* %1973, i32 0, i32 0
  %R8.i = bitcast %union.anon* %1974 to i64*
  %1975 = load i64, i64* %R8.i
  %1976 = add i64 %1975, 320
  %1977 = load i64, i64* %RAX.i507
  %1978 = load i64, i64* %PC.i506
  %1979 = add i64 %1978, 7
  store i64 %1979, i64* %PC.i506
  %1980 = inttoptr i64 %1976 to i64*
  store i64 %1977, i64* %1980
  store %struct.Memory* %loadMem_432219, %struct.Memory** %MEMORY
  %loadMem1_432220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 33
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %PC.i505
  %1985 = add i64 %1984, 81472
  %1986 = load i64, i64* %PC.i505
  %1987 = add i64 %1986, 5
  %1988 = load i64, i64* %PC.i505
  %1989 = add i64 %1988, 5
  store i64 %1989, i64* %PC.i505
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1991 = load i64, i64* %1990, align 8
  %1992 = add i64 %1991, -8
  %1993 = inttoptr i64 %1992 to i64*
  store i64 %1987, i64* %1993
  store i64 %1992, i64* %1990, align 8
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1985, i64* %1994, align 8
  store %struct.Memory* %loadMem1_432220, %struct.Memory** %MEMORY
  %loadMem2_432220 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432220 = load i64, i64* %3
  %call2_432220 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432220, %struct.Memory* %loadMem2_432220)
  store %struct.Memory* %call2_432220, %struct.Memory** %MEMORY
  %loadMem_432225 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 11
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RDI.i504 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %PC.i503
  %2002 = add i64 %2001, 10
  store i64 %2002, i64* %PC.i503
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i504, align 8
  store %struct.Memory* %loadMem_432225, %struct.Memory** %MEMORY
  %loadMem_43222f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 33
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2005 to i64*
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 9
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %RSI.i502 = bitcast %union.anon* %2008 to i64*
  %2009 = load i64, i64* %PC.i501
  %2010 = add i64 %2009, 5
  store i64 %2010, i64* %PC.i501
  store i64 126, i64* %RSI.i502, align 8
  store %struct.Memory* %loadMem_43222f, %struct.Memory** %MEMORY
  %loadMem_432234 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2012 = getelementptr inbounds %struct.GPR, %struct.GPR* %2011, i32 0, i32 33
  %2013 = getelementptr inbounds %struct.Reg, %struct.Reg* %2012, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2013 to i64*
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 7
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %RDX.i499 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 15
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %2019 to i64*
  %2020 = load i64, i64* %RBP.i500
  %2021 = sub i64 %2020, 8
  %2022 = load i64, i64* %PC.i498
  %2023 = add i64 %2022, 4
  store i64 %2023, i64* %PC.i498
  %2024 = inttoptr i64 %2021 to i64*
  %2025 = load i64, i64* %2024
  store i64 %2025, i64* %RDX.i499, align 8
  store %struct.Memory* %loadMem_432234, %struct.Memory** %MEMORY
  %loadMem_432238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 7
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RDX.i497
  %2036 = add i64 %2035, 328
  %2037 = load i64, i64* %RAX.i496
  %2038 = load i64, i64* %PC.i495
  %2039 = add i64 %2038, 7
  store i64 %2039, i64* %PC.i495
  %2040 = inttoptr i64 %2036 to i64*
  store i64 %2037, i64* %2040
  store %struct.Memory* %loadMem_432238, %struct.Memory** %MEMORY
  %loadMem_43223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 33
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 5
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RCX.i493 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 15
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RBP.i494 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RBP.i494
  %2051 = sub i64 %2050, 12
  %2052 = load i64, i64* %PC.i492
  %2053 = add i64 %2052, 4
  store i64 %2053, i64* %PC.i492
  %2054 = inttoptr i64 %2051 to i32*
  %2055 = load i32, i32* %2054
  %2056 = sext i32 %2055 to i64
  %2057 = mul i64 %2056, 7
  %2058 = trunc i64 %2057 to i32
  %2059 = and i64 %2057, 4294967295
  store i64 %2059, i64* %RCX.i493, align 8
  %2060 = shl i64 %2057, 32
  %2061 = ashr exact i64 %2060, 32
  %2062 = icmp ne i64 %2061, %2057
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2063, i8* %2064, align 1
  %2065 = and i32 %2058, 255
  %2066 = call i32 @llvm.ctpop.i32(i32 %2065)
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = xor i8 %2068, 1
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2069, i8* %2070, align 1
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2071, align 1
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2072, align 1
  %2073 = lshr i32 %2058, 31
  %2074 = trunc i32 %2073 to i8
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2074, i8* %2075, align 1
  %2076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2063, i8* %2076, align 1
  store %struct.Memory* %loadMem_43223f, %struct.Memory** %MEMORY
  %loadMem_432243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2078 = getelementptr inbounds %struct.GPR, %struct.GPR* %2077, i32 0, i32 33
  %2079 = getelementptr inbounds %struct.Reg, %struct.Reg* %2078, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %2079 to i64*
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 5
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %ECX.i490 = bitcast %union.anon* %2082 to i32*
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 1
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %2085 to i64*
  %2086 = load i32, i32* %ECX.i490
  %2087 = zext i32 %2086 to i64
  %2088 = load i64, i64* %PC.i489
  %2089 = add i64 %2088, 3
  store i64 %2089, i64* %PC.i489
  %2090 = shl i64 %2087, 32
  %2091 = ashr exact i64 %2090, 32
  store i64 %2091, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_432243, %struct.Memory** %MEMORY
  %loadMem_432246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 33
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %2094 to i64*
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 1
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %RAX.i488 = bitcast %union.anon* %2097 to i64*
  %2098 = load i64, i64* %RAX.i488
  %2099 = load i64, i64* %PC.i487
  %2100 = add i64 %2099, 4
  store i64 %2100, i64* %PC.i487
  %2101 = shl i64 %2098, 1
  %2102 = icmp slt i64 %2101, 0
  %2103 = shl i64 %2101, 1
  store i64 %2103, i64* %RAX.i488, align 8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2105 = zext i1 %2102 to i8
  store i8 %2105, i8* %2104, align 1
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2107 = trunc i64 %2103 to i32
  %2108 = and i32 %2107, 254
  %2109 = call i32 @llvm.ctpop.i32(i32 %2108)
  %2110 = trunc i32 %2109 to i8
  %2111 = and i8 %2110, 1
  %2112 = xor i8 %2111, 1
  store i8 %2112, i8* %2106, align 1
  %2113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2113, align 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2115 = icmp eq i64 %2103, 0
  %2116 = zext i1 %2115 to i8
  store i8 %2116, i8* %2114, align 1
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2118 = lshr i64 %2103, 63
  %2119 = trunc i64 %2118 to i8
  store i8 %2119, i8* %2117, align 1
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2120, align 1
  store %struct.Memory* %loadMem_432246, %struct.Memory** %MEMORY
  %loadMem_43224a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 1
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %2126 to i64*
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 7
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %RDX.i486 = bitcast %union.anon* %2129 to i64*
  %2130 = load i64, i64* %RAX.i485
  %2131 = load i64, i64* %PC.i484
  %2132 = add i64 %2131, 3
  store i64 %2132, i64* %PC.i484
  store i64 %2130, i64* %RDX.i486, align 8
  store %struct.Memory* %loadMem_43224a, %struct.Memory** %MEMORY
  %loadMem1_43224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %PC.i483
  %2137 = add i64 %2136, 81427
  %2138 = load i64, i64* %PC.i483
  %2139 = add i64 %2138, 5
  %2140 = load i64, i64* %PC.i483
  %2141 = add i64 %2140, 5
  store i64 %2141, i64* %PC.i483
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2143 = load i64, i64* %2142, align 8
  %2144 = add i64 %2143, -8
  %2145 = inttoptr i64 %2144 to i64*
  store i64 %2139, i64* %2145
  store i64 %2144, i64* %2142, align 8
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2137, i64* %2146, align 8
  store %struct.Memory* %loadMem1_43224d, %struct.Memory** %MEMORY
  %loadMem2_43224d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43224d = load i64, i64* %3
  %call2_43224d = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43224d, %struct.Memory* %loadMem2_43224d)
  store %struct.Memory* %call2_43224d, %struct.Memory** %MEMORY
  %loadMem_432252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 33
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %2149 to i64*
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 11
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %RDI.i482 = bitcast %union.anon* %2152 to i64*
  %2153 = load i64, i64* %PC.i481
  %2154 = add i64 %2153, 10
  store i64 %2154, i64* %PC.i481
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i482, align 8
  store %struct.Memory* %loadMem_432252, %struct.Memory** %MEMORY
  %loadMem_43225c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2156 = getelementptr inbounds %struct.GPR, %struct.GPR* %2155, i32 0, i32 33
  %2157 = getelementptr inbounds %struct.Reg, %struct.Reg* %2156, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %2157 to i64*
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 9
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %RSI.i480 = bitcast %union.anon* %2160 to i64*
  %2161 = load i64, i64* %PC.i479
  %2162 = add i64 %2161, 5
  store i64 %2162, i64* %PC.i479
  store i64 127, i64* %RSI.i480, align 8
  store %struct.Memory* %loadMem_43225c, %struct.Memory** %MEMORY
  %loadMem_432261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 33
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 7
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %2168 to i64*
  %2169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2170 = getelementptr inbounds %struct.GPR, %struct.GPR* %2169, i32 0, i32 15
  %2171 = getelementptr inbounds %struct.Reg, %struct.Reg* %2170, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %2171 to i64*
  %2172 = load i64, i64* %RBP.i478
  %2173 = sub i64 %2172, 8
  %2174 = load i64, i64* %PC.i476
  %2175 = add i64 %2174, 4
  store i64 %2175, i64* %PC.i476
  %2176 = inttoptr i64 %2173 to i64*
  %2177 = load i64, i64* %2176
  store i64 %2177, i64* %RDX.i477, align 8
  store %struct.Memory* %loadMem_432261, %struct.Memory** %MEMORY
  %loadMem_432265 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 33
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 1
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 7
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RDX.i475 = bitcast %union.anon* %2186 to i64*
  %2187 = load i64, i64* %RDX.i475
  %2188 = add i64 %2187, 384
  %2189 = load i64, i64* %RAX.i474
  %2190 = load i64, i64* %PC.i473
  %2191 = add i64 %2190, 7
  store i64 %2191, i64* %PC.i473
  %2192 = inttoptr i64 %2188 to i64*
  store i64 %2189, i64* %2192
  store %struct.Memory* %loadMem_432265, %struct.Memory** %MEMORY
  %loadMem_43226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 5
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %RCX.i471 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 15
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %RBP.i472
  %2203 = sub i64 %2202, 12
  %2204 = load i64, i64* %PC.i470
  %2205 = add i64 %2204, 3
  store i64 %2205, i64* %PC.i470
  %2206 = inttoptr i64 %2203 to i32*
  %2207 = load i32, i32* %2206
  %2208 = zext i32 %2207 to i64
  store i64 %2208, i64* %RCX.i471, align 8
  store %struct.Memory* %loadMem_43226c, %struct.Memory** %MEMORY
  %loadMem_43226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 5
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %2214 to i64*
  %2215 = load i64, i64* %RCX.i469
  %2216 = load i64, i64* %PC.i468
  %2217 = add i64 %2216, 3
  store i64 %2217, i64* %PC.i468
  %2218 = trunc i64 %2215 to i32
  %2219 = add i32 1, %2218
  %2220 = zext i32 %2219 to i64
  store i64 %2220, i64* %RCX.i469, align 8
  %2221 = icmp ult i32 %2219, %2218
  %2222 = icmp ult i32 %2219, 1
  %2223 = or i1 %2221, %2222
  %2224 = zext i1 %2223 to i8
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2224, i8* %2225, align 1
  %2226 = and i32 %2219, 255
  %2227 = call i32 @llvm.ctpop.i32(i32 %2226)
  %2228 = trunc i32 %2227 to i8
  %2229 = and i8 %2228, 1
  %2230 = xor i8 %2229, 1
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2230, i8* %2231, align 1
  %2232 = xor i64 1, %2215
  %2233 = trunc i64 %2232 to i32
  %2234 = xor i32 %2233, %2219
  %2235 = lshr i32 %2234, 4
  %2236 = trunc i32 %2235 to i8
  %2237 = and i8 %2236, 1
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2237, i8* %2238, align 1
  %2239 = icmp eq i32 %2219, 0
  %2240 = zext i1 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2240, i8* %2241, align 1
  %2242 = lshr i32 %2219, 31
  %2243 = trunc i32 %2242 to i8
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2243, i8* %2244, align 1
  %2245 = lshr i32 %2218, 31
  %2246 = xor i32 %2242, %2245
  %2247 = add i32 %2246, %2242
  %2248 = icmp eq i32 %2247, 2
  %2249 = zext i1 %2248 to i8
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2249, i8* %2250, align 1
  store %struct.Memory* %loadMem_43226f, %struct.Memory** %MEMORY
  %loadMem_432272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2252 = getelementptr inbounds %struct.GPR, %struct.GPR* %2251, i32 0, i32 33
  %2253 = getelementptr inbounds %struct.Reg, %struct.Reg* %2252, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %2253 to i64*
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 5
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %ECX.i466 = bitcast %union.anon* %2256 to i32*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 5
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %RCX.i467 = bitcast %union.anon* %2259 to i64*
  %2260 = load i32, i32* %ECX.i466
  %2261 = zext i32 %2260 to i64
  %2262 = load i64, i64* %PC.i465
  %2263 = add i64 %2262, 3
  store i64 %2263, i64* %PC.i465
  %2264 = shl i64 %2261, 32
  %2265 = ashr exact i64 %2264, 32
  %2266 = mul i64 24, %2265
  %2267 = trunc i64 %2266 to i32
  %2268 = and i64 %2266, 4294967295
  store i64 %2268, i64* %RCX.i467, align 8
  %2269 = shl i64 %2266, 32
  %2270 = ashr exact i64 %2269, 32
  %2271 = icmp ne i64 %2270, %2266
  %2272 = zext i1 %2271 to i8
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2272, i8* %2273, align 1
  %2274 = and i32 %2267, 255
  %2275 = call i32 @llvm.ctpop.i32(i32 %2274)
  %2276 = trunc i32 %2275 to i8
  %2277 = and i8 %2276, 1
  %2278 = xor i8 %2277, 1
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2278, i8* %2279, align 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2280, align 1
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2281, align 1
  %2282 = lshr i32 %2267, 31
  %2283 = trunc i32 %2282 to i8
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2283, i8* %2284, align 1
  %2285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2272, i8* %2285, align 1
  store %struct.Memory* %loadMem_432272, %struct.Memory** %MEMORY
  %loadMem_432275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 33
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 5
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %ECX.i463 = bitcast %union.anon* %2291 to i32*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i464 = bitcast %union.anon* %2294 to i64*
  %2295 = load i32, i32* %ECX.i463
  %2296 = zext i32 %2295 to i64
  %2297 = load i64, i64* %PC.i462
  %2298 = add i64 %2297, 3
  store i64 %2298, i64* %PC.i462
  %2299 = shl i64 %2296, 32
  %2300 = ashr exact i64 %2299, 32
  store i64 %2300, i64* %RAX.i464, align 8
  store %struct.Memory* %loadMem_432275, %struct.Memory** %MEMORY
  %loadMem_432278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 1
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %2306 to i64*
  %2307 = load i64, i64* %RAX.i461
  %2308 = load i64, i64* %PC.i460
  %2309 = add i64 %2308, 4
  store i64 %2309, i64* %PC.i460
  %2310 = shl i64 %2307, 1
  %2311 = icmp slt i64 %2310, 0
  %2312 = shl i64 %2310, 1
  store i64 %2312, i64* %RAX.i461, align 8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2314 = zext i1 %2311 to i8
  store i8 %2314, i8* %2313, align 1
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2316 = trunc i64 %2312 to i32
  %2317 = and i32 %2316, 254
  %2318 = call i32 @llvm.ctpop.i32(i32 %2317)
  %2319 = trunc i32 %2318 to i8
  %2320 = and i8 %2319, 1
  %2321 = xor i8 %2320, 1
  store i8 %2321, i8* %2315, align 1
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2322, align 1
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2324 = icmp eq i64 %2312, 0
  %2325 = zext i1 %2324 to i8
  store i8 %2325, i8* %2323, align 1
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2327 = lshr i64 %2312, 63
  %2328 = trunc i64 %2327 to i8
  store i8 %2328, i8* %2326, align 1
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2329, align 1
  store %struct.Memory* %loadMem_432278, %struct.Memory** %MEMORY
  %loadMem_43227c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 33
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %2332 to i64*
  %2333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2334 = getelementptr inbounds %struct.GPR, %struct.GPR* %2333, i32 0, i32 1
  %2335 = getelementptr inbounds %struct.Reg, %struct.Reg* %2334, i32 0, i32 0
  %RAX.i458 = bitcast %union.anon* %2335 to i64*
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2337 = getelementptr inbounds %struct.GPR, %struct.GPR* %2336, i32 0, i32 7
  %2338 = getelementptr inbounds %struct.Reg, %struct.Reg* %2337, i32 0, i32 0
  %RDX.i459 = bitcast %union.anon* %2338 to i64*
  %2339 = load i64, i64* %RAX.i458
  %2340 = load i64, i64* %PC.i457
  %2341 = add i64 %2340, 3
  store i64 %2341, i64* %PC.i457
  store i64 %2339, i64* %RDX.i459, align 8
  store %struct.Memory* %loadMem_43227c, %struct.Memory** %MEMORY
  %loadMem1_43227f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2343 = getelementptr inbounds %struct.GPR, %struct.GPR* %2342, i32 0, i32 33
  %2344 = getelementptr inbounds %struct.Reg, %struct.Reg* %2343, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2344 to i64*
  %2345 = load i64, i64* %PC.i456
  %2346 = add i64 %2345, 81377
  %2347 = load i64, i64* %PC.i456
  %2348 = add i64 %2347, 5
  %2349 = load i64, i64* %PC.i456
  %2350 = add i64 %2349, 5
  store i64 %2350, i64* %PC.i456
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2352 = load i64, i64* %2351, align 8
  %2353 = add i64 %2352, -8
  %2354 = inttoptr i64 %2353 to i64*
  store i64 %2348, i64* %2354
  store i64 %2353, i64* %2351, align 8
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2346, i64* %2355, align 8
  store %struct.Memory* %loadMem1_43227f, %struct.Memory** %MEMORY
  %loadMem2_43227f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43227f = load i64, i64* %3
  %call2_43227f = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_43227f, %struct.Memory* %loadMem2_43227f)
  store %struct.Memory* %call2_43227f, %struct.Memory** %MEMORY
  %loadMem_432284 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 11
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RDI.i455 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %PC.i454
  %2363 = add i64 %2362, 10
  store i64 %2363, i64* %PC.i454
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i455, align 8
  store %struct.Memory* %loadMem_432284, %struct.Memory** %MEMORY
  %loadMem_43228e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 9
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RSI.i453 = bitcast %union.anon* %2369 to i64*
  %2370 = load i64, i64* %PC.i452
  %2371 = add i64 %2370, 5
  store i64 %2371, i64* %PC.i452
  store i64 128, i64* %RSI.i453, align 8
  store %struct.Memory* %loadMem_43228e, %struct.Memory** %MEMORY
  %loadMem_432293 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 7
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RDX.i450 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 15
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %2380 to i64*
  %2381 = load i64, i64* %RBP.i451
  %2382 = sub i64 %2381, 8
  %2383 = load i64, i64* %PC.i449
  %2384 = add i64 %2383, 4
  store i64 %2384, i64* %PC.i449
  %2385 = inttoptr i64 %2382 to i64*
  %2386 = load i64, i64* %2385
  store i64 %2386, i64* %RDX.i450, align 8
  store %struct.Memory* %loadMem_432293, %struct.Memory** %MEMORY
  %loadMem_432297 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 1
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RAX.i447 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 7
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RDX.i448 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RDX.i448
  %2397 = add i64 %2396, 392
  %2398 = load i64, i64* %RAX.i447
  %2399 = load i64, i64* %PC.i446
  %2400 = add i64 %2399, 7
  store i64 %2400, i64* %PC.i446
  %2401 = inttoptr i64 %2397 to i64*
  store i64 %2398, i64* %2401
  store %struct.Memory* %loadMem_432297, %struct.Memory** %MEMORY
  %loadMem_43229e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2403 = getelementptr inbounds %struct.GPR, %struct.GPR* %2402, i32 0, i32 33
  %2404 = getelementptr inbounds %struct.Reg, %struct.Reg* %2403, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %2404 to i64*
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 5
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 15
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %2410 to i64*
  %2411 = load i64, i64* %RBP.i445
  %2412 = sub i64 %2411, 12
  %2413 = load i64, i64* %PC.i443
  %2414 = add i64 %2413, 4
  store i64 %2414, i64* %PC.i443
  %2415 = inttoptr i64 %2412 to i32*
  %2416 = load i32, i32* %2415
  %2417 = sext i32 %2416 to i64
  %2418 = mul i64 %2417, 24
  %2419 = trunc i64 %2418 to i32
  %2420 = and i64 %2418, 4294967295
  store i64 %2420, i64* %RCX.i444, align 8
  %2421 = shl i64 %2418, 32
  %2422 = ashr exact i64 %2421, 32
  %2423 = icmp ne i64 %2422, %2418
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2424, i8* %2425, align 1
  %2426 = and i32 %2419, 255
  %2427 = call i32 @llvm.ctpop.i32(i32 %2426)
  %2428 = trunc i32 %2427 to i8
  %2429 = and i8 %2428, 1
  %2430 = xor i8 %2429, 1
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2430, i8* %2431, align 1
  %2432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2432, align 1
  %2433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2433, align 1
  %2434 = lshr i32 %2419, 31
  %2435 = trunc i32 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2435, i8* %2436, align 1
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2424, i8* %2437, align 1
  store %struct.Memory* %loadMem_43229e, %struct.Memory** %MEMORY
  %loadMem_4322a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 33
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 5
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %ECX.i441 = bitcast %union.anon* %2443 to i32*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 1
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %2446 to i64*
  %2447 = load i32, i32* %ECX.i441
  %2448 = zext i32 %2447 to i64
  %2449 = load i64, i64* %PC.i440
  %2450 = add i64 %2449, 3
  store i64 %2450, i64* %PC.i440
  %2451 = shl i64 %2448, 32
  %2452 = ashr exact i64 %2451, 32
  store i64 %2452, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_4322a2, %struct.Memory** %MEMORY
  %loadMem_4322a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 33
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 1
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RAX.i439
  %2460 = load i64, i64* %PC.i438
  %2461 = add i64 %2460, 4
  store i64 %2461, i64* %PC.i438
  %2462 = shl i64 %2459, 1
  %2463 = icmp slt i64 %2462, 0
  %2464 = shl i64 %2462, 1
  store i64 %2464, i64* %RAX.i439, align 8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2466 = zext i1 %2463 to i8
  store i8 %2466, i8* %2465, align 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2468 = trunc i64 %2464 to i32
  %2469 = and i32 %2468, 254
  %2470 = call i32 @llvm.ctpop.i32(i32 %2469)
  %2471 = trunc i32 %2470 to i8
  %2472 = and i8 %2471, 1
  %2473 = xor i8 %2472, 1
  store i8 %2473, i8* %2467, align 1
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2474, align 1
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2476 = icmp eq i64 %2464, 0
  %2477 = zext i1 %2476 to i8
  store i8 %2477, i8* %2475, align 1
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2479 = lshr i64 %2464, 63
  %2480 = trunc i64 %2479 to i8
  store i8 %2480, i8* %2478, align 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2481, align 1
  store %struct.Memory* %loadMem_4322a5, %struct.Memory** %MEMORY
  %loadMem_4322a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 1
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RAX.i436 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 7
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RAX.i436
  %2492 = load i64, i64* %PC.i435
  %2493 = add i64 %2492, 3
  store i64 %2493, i64* %PC.i435
  store i64 %2491, i64* %RDX.i437, align 8
  store %struct.Memory* %loadMem_4322a9, %struct.Memory** %MEMORY
  %loadMem1_4322ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %2496 to i64*
  %2497 = load i64, i64* %PC.i434
  %2498 = add i64 %2497, 81332
  %2499 = load i64, i64* %PC.i434
  %2500 = add i64 %2499, 5
  %2501 = load i64, i64* %PC.i434
  %2502 = add i64 %2501, 5
  store i64 %2502, i64* %PC.i434
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2504 = load i64, i64* %2503, align 8
  %2505 = add i64 %2504, -8
  %2506 = inttoptr i64 %2505 to i64*
  store i64 %2500, i64* %2506
  store i64 %2505, i64* %2503, align 8
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2498, i64* %2507, align 8
  store %struct.Memory* %loadMem1_4322ac, %struct.Memory** %MEMORY
  %loadMem2_4322ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4322ac = load i64, i64* %3
  %call2_4322ac = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4322ac, %struct.Memory* %loadMem2_4322ac)
  store %struct.Memory* %call2_4322ac, %struct.Memory** %MEMORY
  %loadMem_4322b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 33
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 7
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RDX.i432 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 15
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %2516 to i64*
  %2517 = load i64, i64* %RBP.i433
  %2518 = sub i64 %2517, 8
  %2519 = load i64, i64* %PC.i431
  %2520 = add i64 %2519, 4
  store i64 %2520, i64* %PC.i431
  %2521 = inttoptr i64 %2518 to i64*
  %2522 = load i64, i64* %2521
  store i64 %2522, i64* %RDX.i432, align 8
  store %struct.Memory* %loadMem_4322b1, %struct.Memory** %MEMORY
  %loadMem_4322b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2524 = getelementptr inbounds %struct.GPR, %struct.GPR* %2523, i32 0, i32 33
  %2525 = getelementptr inbounds %struct.Reg, %struct.Reg* %2524, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %2525 to i64*
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 1
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %RAX.i429 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 7
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RDX.i430 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %RDX.i430
  %2533 = add i64 %2532, 400
  %2534 = load i64, i64* %RAX.i429
  %2535 = load i64, i64* %PC.i428
  %2536 = add i64 %2535, 7
  store i64 %2536, i64* %PC.i428
  %2537 = inttoptr i64 %2533 to i64*
  store i64 %2534, i64* %2537
  store %struct.Memory* %loadMem_4322b5, %struct.Memory** %MEMORY
  %loadMem_4322bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2539 = getelementptr inbounds %struct.GPR, %struct.GPR* %2538, i32 0, i32 33
  %2540 = getelementptr inbounds %struct.Reg, %struct.Reg* %2539, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %2540 to i64*
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 1
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 15
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %2546 to i64*
  %2547 = load i64, i64* %RBP.i427
  %2548 = sub i64 %2547, 8
  %2549 = load i64, i64* %PC.i425
  %2550 = add i64 %2549, 4
  store i64 %2550, i64* %PC.i425
  %2551 = inttoptr i64 %2548 to i64*
  %2552 = load i64, i64* %2551
  store i64 %2552, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_4322bc, %struct.Memory** %MEMORY
  %loadMem_4322c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %2558 to i64*
  %2559 = load i64, i64* %RAX.i424
  %2560 = add i64 %2559, 384
  %2561 = load i64, i64* %PC.i423
  %2562 = add i64 %2561, 7
  store i64 %2562, i64* %PC.i423
  %2563 = inttoptr i64 %2560 to i64*
  %2564 = load i64, i64* %2563
  store i64 %2564, i64* %RAX.i424, align 8
  store %struct.Memory* %loadMem_4322c0, %struct.Memory** %MEMORY
  %loadMem_4322c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 7
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RDX.i421 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 15
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %RBP.i422
  %2575 = sub i64 %2574, 8
  %2576 = load i64, i64* %PC.i420
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %PC.i420
  %2578 = inttoptr i64 %2575 to i64*
  %2579 = load i64, i64* %2578
  store i64 %2579, i64* %RDX.i421, align 8
  store %struct.Memory* %loadMem_4322c7, %struct.Memory** %MEMORY
  %loadMem_4322cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 33
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %2582 to i64*
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2584 = getelementptr inbounds %struct.GPR, %struct.GPR* %2583, i32 0, i32 7
  %2585 = getelementptr inbounds %struct.Reg, %struct.Reg* %2584, i32 0, i32 0
  %RDX.i419 = bitcast %union.anon* %2585 to i64*
  %2586 = load i64, i64* %RDX.i419
  %2587 = add i64 %2586, 312
  %2588 = load i64, i64* %PC.i418
  %2589 = add i64 %2588, 7
  store i64 %2589, i64* %PC.i418
  %2590 = inttoptr i64 %2587 to i64*
  %2591 = load i64, i64* %2590
  store i64 %2591, i64* %RDX.i419, align 8
  store %struct.Memory* %loadMem_4322cb, %struct.Memory** %MEMORY
  %loadMem_4322d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 33
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 1
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 7
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RDX.i417 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %RDX.i417
  %2602 = load i64, i64* %RAX.i416
  %2603 = load i64, i64* %PC.i415
  %2604 = add i64 %2603, 3
  store i64 %2604, i64* %PC.i415
  %2605 = inttoptr i64 %2601 to i64*
  store i64 %2602, i64* %2605
  store %struct.Memory* %loadMem_4322d2, %struct.Memory** %MEMORY
  %loadMem_4322d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 33
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %2608 to i64*
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 1
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 15
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %RBP.i414
  %2616 = sub i64 %2615, 8
  %2617 = load i64, i64* %PC.i412
  %2618 = add i64 %2617, 4
  store i64 %2618, i64* %PC.i412
  %2619 = inttoptr i64 %2616 to i64*
  %2620 = load i64, i64* %2619
  store i64 %2620, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_4322d5, %struct.Memory** %MEMORY
  %loadMem_4322d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 33
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 1
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RAX.i411
  %2628 = add i64 %2627, 392
  %2629 = load i64, i64* %PC.i410
  %2630 = add i64 %2629, 7
  store i64 %2630, i64* %PC.i410
  %2631 = inttoptr i64 %2628 to i64*
  %2632 = load i64, i64* %2631
  store i64 %2632, i64* %RAX.i411, align 8
  store %struct.Memory* %loadMem_4322d9, %struct.Memory** %MEMORY
  %loadMem_4322e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 7
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RDX.i408 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i409
  %2643 = sub i64 %2642, 8
  %2644 = load i64, i64* %PC.i407
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i407
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RDX.i408, align 8
  store %struct.Memory* %loadMem_4322e0, %struct.Memory** %MEMORY
  %loadMem_4322e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 7
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RDX.i406 = bitcast %union.anon* %2653 to i64*
  %2654 = load i64, i64* %RDX.i406
  %2655 = add i64 %2654, 320
  %2656 = load i64, i64* %PC.i405
  %2657 = add i64 %2656, 7
  store i64 %2657, i64* %PC.i405
  %2658 = inttoptr i64 %2655 to i64*
  %2659 = load i64, i64* %2658
  store i64 %2659, i64* %RDX.i406, align 8
  store %struct.Memory* %loadMem_4322e4, %struct.Memory** %MEMORY
  %loadMem_4322eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 1
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 7
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %2668 to i64*
  %2669 = load i64, i64* %RDX.i404
  %2670 = load i64, i64* %RAX.i403
  %2671 = load i64, i64* %PC.i402
  %2672 = add i64 %2671, 3
  store i64 %2672, i64* %PC.i402
  %2673 = inttoptr i64 %2669 to i64*
  store i64 %2670, i64* %2673
  store %struct.Memory* %loadMem_4322eb, %struct.Memory** %MEMORY
  %loadMem_4322ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2675 = getelementptr inbounds %struct.GPR, %struct.GPR* %2674, i32 0, i32 33
  %2676 = getelementptr inbounds %struct.Reg, %struct.Reg* %2675, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %2676 to i64*
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 1
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %RAX.i400 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 15
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %2682 to i64*
  %2683 = load i64, i64* %RBP.i401
  %2684 = sub i64 %2683, 8
  %2685 = load i64, i64* %PC.i399
  %2686 = add i64 %2685, 4
  store i64 %2686, i64* %PC.i399
  %2687 = inttoptr i64 %2684 to i64*
  %2688 = load i64, i64* %2687
  store i64 %2688, i64* %RAX.i400, align 8
  store %struct.Memory* %loadMem_4322ee, %struct.Memory** %MEMORY
  %loadMem_4322f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 33
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 1
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RAX.i398 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RAX.i398
  %2696 = add i64 %2695, 400
  %2697 = load i64, i64* %PC.i397
  %2698 = add i64 %2697, 7
  store i64 %2698, i64* %PC.i397
  %2699 = inttoptr i64 %2696 to i64*
  %2700 = load i64, i64* %2699
  store i64 %2700, i64* %RAX.i398, align 8
  store %struct.Memory* %loadMem_4322f2, %struct.Memory** %MEMORY
  %loadMem_4322f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %2703 to i64*
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 7
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %RDX.i395 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 15
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RBP.i396 = bitcast %union.anon* %2709 to i64*
  %2710 = load i64, i64* %RBP.i396
  %2711 = sub i64 %2710, 8
  %2712 = load i64, i64* %PC.i394
  %2713 = add i64 %2712, 4
  store i64 %2713, i64* %PC.i394
  %2714 = inttoptr i64 %2711 to i64*
  %2715 = load i64, i64* %2714
  store i64 %2715, i64* %RDX.i395, align 8
  store %struct.Memory* %loadMem_4322f9, %struct.Memory** %MEMORY
  %loadMem_4322fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 7
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RDX.i393 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %RDX.i393
  %2723 = add i64 %2722, 328
  %2724 = load i64, i64* %PC.i392
  %2725 = add i64 %2724, 7
  store i64 %2725, i64* %PC.i392
  %2726 = inttoptr i64 %2723 to i64*
  %2727 = load i64, i64* %2726
  store i64 %2727, i64* %RDX.i393, align 8
  store %struct.Memory* %loadMem_4322fd, %struct.Memory** %MEMORY
  %loadMem_432304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 33
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %2730 to i64*
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 1
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %RAX.i390 = bitcast %union.anon* %2733 to i64*
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2735 = getelementptr inbounds %struct.GPR, %struct.GPR* %2734, i32 0, i32 7
  %2736 = getelementptr inbounds %struct.Reg, %struct.Reg* %2735, i32 0, i32 0
  %RDX.i391 = bitcast %union.anon* %2736 to i64*
  %2737 = load i64, i64* %RDX.i391
  %2738 = load i64, i64* %RAX.i390
  %2739 = load i64, i64* %PC.i389
  %2740 = add i64 %2739, 3
  store i64 %2740, i64* %PC.i389
  %2741 = inttoptr i64 %2737 to i64*
  store i64 %2738, i64* %2741
  store %struct.Memory* %loadMem_432304, %struct.Memory** %MEMORY
  %loadMem_432307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 33
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %2744 to i64*
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 15
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %2747 to i64*
  %2748 = load i64, i64* %RBP.i388
  %2749 = sub i64 %2748, 16
  %2750 = load i64, i64* %PC.i387
  %2751 = add i64 %2750, 7
  store i64 %2751, i64* %PC.i387
  %2752 = inttoptr i64 %2749 to i32*
  store i32 1, i32* %2752
  store %struct.Memory* %loadMem_432307, %struct.Memory** %MEMORY
  br label %block_.L_43230e

block_.L_43230e:                                  ; preds = %block_.L_4323b8, %entry
  %loadMem_43230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 33
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 1
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 15
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RBP.i386
  %2763 = sub i64 %2762, 16
  %2764 = load i64, i64* %PC.i384
  %2765 = add i64 %2764, 3
  store i64 %2765, i64* %PC.i384
  %2766 = inttoptr i64 %2763 to i32*
  %2767 = load i32, i32* %2766
  %2768 = zext i32 %2767 to i64
  store i64 %2768, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_43230e, %struct.Memory** %MEMORY
  %loadMem_432311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 33
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 1
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %2774 to i32*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 15
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %2777 to i64*
  %2778 = load i32, i32* %EAX.i382
  %2779 = zext i32 %2778 to i64
  %2780 = load i64, i64* %RBP.i383
  %2781 = sub i64 %2780, 12
  %2782 = load i64, i64* %PC.i381
  %2783 = add i64 %2782, 3
  store i64 %2783, i64* %PC.i381
  %2784 = inttoptr i64 %2781 to i32*
  %2785 = load i32, i32* %2784
  %2786 = sub i32 %2778, %2785
  %2787 = icmp ult i32 %2778, %2785
  %2788 = zext i1 %2787 to i8
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2788, i8* %2789, align 1
  %2790 = and i32 %2786, 255
  %2791 = call i32 @llvm.ctpop.i32(i32 %2790)
  %2792 = trunc i32 %2791 to i8
  %2793 = and i8 %2792, 1
  %2794 = xor i8 %2793, 1
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2794, i8* %2795, align 1
  %2796 = xor i32 %2785, %2778
  %2797 = xor i32 %2796, %2786
  %2798 = lshr i32 %2797, 4
  %2799 = trunc i32 %2798 to i8
  %2800 = and i8 %2799, 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2800, i8* %2801, align 1
  %2802 = icmp eq i32 %2786, 0
  %2803 = zext i1 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2803, i8* %2804, align 1
  %2805 = lshr i32 %2786, 31
  %2806 = trunc i32 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2806, i8* %2807, align 1
  %2808 = lshr i32 %2778, 31
  %2809 = lshr i32 %2785, 31
  %2810 = xor i32 %2809, %2808
  %2811 = xor i32 %2805, %2808
  %2812 = add i32 %2811, %2810
  %2813 = icmp eq i32 %2812, 2
  %2814 = zext i1 %2813 to i8
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2814, i8* %2815, align 1
  store %struct.Memory* %loadMem_432311, %struct.Memory** %MEMORY
  %loadMem_432314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 33
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %2818 to i64*
  %2819 = load i64, i64* %PC.i380
  %2820 = add i64 %2819, 178
  %2821 = load i64, i64* %PC.i380
  %2822 = add i64 %2821, 6
  %2823 = load i64, i64* %PC.i380
  %2824 = add i64 %2823, 6
  store i64 %2824, i64* %PC.i380
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2826 = load i8, i8* %2825, align 1
  %2827 = icmp eq i8 %2826, 0
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2829 = load i8, i8* %2828, align 1
  %2830 = icmp ne i8 %2829, 0
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2832 = load i8, i8* %2831, align 1
  %2833 = icmp ne i8 %2832, 0
  %2834 = xor i1 %2830, %2833
  %2835 = xor i1 %2834, true
  %2836 = and i1 %2827, %2835
  %2837 = zext i1 %2836 to i8
  store i8 %2837, i8* %BRANCH_TAKEN, align 1
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2839 = select i1 %2836, i64 %2820, i64 %2822
  store i64 %2839, i64* %2838, align 8
  store %struct.Memory* %loadMem_432314, %struct.Memory** %MEMORY
  %loadBr_432314 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432314 = icmp eq i8 %loadBr_432314, 1
  br i1 %cmpBr_432314, label %block_.L_4323c6, label %block_43231a

block_43231a:                                     ; preds = %block_.L_43230e
  %loadMem_43231a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2841 = getelementptr inbounds %struct.GPR, %struct.GPR* %2840, i32 0, i32 33
  %2842 = getelementptr inbounds %struct.Reg, %struct.Reg* %2841, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %2842 to i64*
  %2843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2844 = getelementptr inbounds %struct.GPR, %struct.GPR* %2843, i32 0, i32 1
  %2845 = getelementptr inbounds %struct.Reg, %struct.Reg* %2844, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %2845 to i64*
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 15
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %2848 to i64*
  %2849 = load i64, i64* %RBP.i379
  %2850 = sub i64 %2849, 8
  %2851 = load i64, i64* %PC.i377
  %2852 = add i64 %2851, 4
  store i64 %2852, i64* %PC.i377
  %2853 = inttoptr i64 %2850 to i64*
  %2854 = load i64, i64* %2853
  store i64 %2854, i64* %RAX.i378, align 8
  store %struct.Memory* %loadMem_43231a, %struct.Memory** %MEMORY
  %loadMem_43231e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2856 = getelementptr inbounds %struct.GPR, %struct.GPR* %2855, i32 0, i32 33
  %2857 = getelementptr inbounds %struct.Reg, %struct.Reg* %2856, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %2857 to i64*
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 1
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %2860 to i64*
  %2861 = load i64, i64* %RAX.i376
  %2862 = add i64 %2861, 152
  %2863 = load i64, i64* %PC.i375
  %2864 = add i64 %2863, 7
  store i64 %2864, i64* %PC.i375
  %2865 = inttoptr i64 %2862 to i64*
  %2866 = load i64, i64* %2865
  store i64 %2866, i64* %RAX.i376, align 8
  store %struct.Memory* %loadMem_43231e, %struct.Memory** %MEMORY
  %loadMem_432325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 1
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RAX.i374
  %2874 = load i64, i64* %PC.i373
  %2875 = add i64 %2874, 3
  store i64 %2875, i64* %PC.i373
  %2876 = inttoptr i64 %2873 to i64*
  %2877 = load i64, i64* %2876
  store i64 %2877, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_432325, %struct.Memory** %MEMORY
  %loadMem_432328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 5
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RCX.i371 = bitcast %union.anon* %2883 to i64*
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 15
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %2886 to i64*
  %2887 = load i64, i64* %RBP.i372
  %2888 = sub i64 %2887, 16
  %2889 = load i64, i64* %PC.i370
  %2890 = add i64 %2889, 4
  store i64 %2890, i64* %PC.i370
  %2891 = inttoptr i64 %2888 to i32*
  %2892 = load i32, i32* %2891
  %2893 = sext i32 %2892 to i64
  %2894 = mul i64 %2893, 20
  %2895 = trunc i64 %2894 to i32
  %2896 = and i64 %2894, 4294967295
  store i64 %2896, i64* %RCX.i371, align 8
  %2897 = shl i64 %2894, 32
  %2898 = ashr exact i64 %2897, 32
  %2899 = icmp ne i64 %2898, %2894
  %2900 = zext i1 %2899 to i8
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2900, i8* %2901, align 1
  %2902 = and i32 %2895, 255
  %2903 = call i32 @llvm.ctpop.i32(i32 %2902)
  %2904 = trunc i32 %2903 to i8
  %2905 = and i8 %2904, 1
  %2906 = xor i8 %2905, 1
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2906, i8* %2907, align 1
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2908, align 1
  %2909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2909, align 1
  %2910 = lshr i32 %2895, 31
  %2911 = trunc i32 %2910 to i8
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2911, i8* %2912, align 1
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2900, i8* %2913, align 1
  store %struct.Memory* %loadMem_432328, %struct.Memory** %MEMORY
  %loadMem_43232c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 5
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %ECX.i368 = bitcast %union.anon* %2919 to i32*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 7
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RDX.i369 = bitcast %union.anon* %2922 to i64*
  %2923 = load i32, i32* %ECX.i368
  %2924 = zext i32 %2923 to i64
  %2925 = load i64, i64* %PC.i367
  %2926 = add i64 %2925, 3
  store i64 %2926, i64* %PC.i367
  %2927 = shl i64 %2924, 32
  %2928 = ashr exact i64 %2927, 32
  store i64 %2928, i64* %RDX.i369, align 8
  store %struct.Memory* %loadMem_43232c, %struct.Memory** %MEMORY
  %loadMem_43232f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 7
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %2934 to i64*
  %2935 = load i64, i64* %RDX.i366
  %2936 = load i64, i64* %PC.i365
  %2937 = add i64 %2936, 4
  store i64 %2937, i64* %PC.i365
  %2938 = shl i64 %2935, 1
  %2939 = icmp slt i64 %2938, 0
  %2940 = shl i64 %2938, 1
  store i64 %2940, i64* %RDX.i366, align 8
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2942 = zext i1 %2939 to i8
  store i8 %2942, i8* %2941, align 1
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2944 = trunc i64 %2940 to i32
  %2945 = and i32 %2944, 254
  %2946 = call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  store i8 %2949, i8* %2943, align 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2950, align 1
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2952 = icmp eq i64 %2940, 0
  %2953 = zext i1 %2952 to i8
  store i8 %2953, i8* %2951, align 1
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2955 = lshr i64 %2940, 63
  %2956 = trunc i64 %2955 to i8
  store i8 %2956, i8* %2954, align 1
  %2957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2957, align 1
  store %struct.Memory* %loadMem_43232f, %struct.Memory** %MEMORY
  %loadMem_432333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 33
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %2960 to i64*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 1
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 7
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RDX.i364 = bitcast %union.anon* %2966 to i64*
  %2967 = load i64, i64* %RAX.i363
  %2968 = load i64, i64* %RDX.i364
  %2969 = load i64, i64* %PC.i362
  %2970 = add i64 %2969, 3
  store i64 %2970, i64* %PC.i362
  %2971 = add i64 %2968, %2967
  store i64 %2971, i64* %RAX.i363, align 8
  %2972 = icmp ult i64 %2971, %2967
  %2973 = icmp ult i64 %2971, %2968
  %2974 = or i1 %2972, %2973
  %2975 = zext i1 %2974 to i8
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2975, i8* %2976, align 1
  %2977 = trunc i64 %2971 to i32
  %2978 = and i32 %2977, 255
  %2979 = call i32 @llvm.ctpop.i32(i32 %2978)
  %2980 = trunc i32 %2979 to i8
  %2981 = and i8 %2980, 1
  %2982 = xor i8 %2981, 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2982, i8* %2983, align 1
  %2984 = xor i64 %2968, %2967
  %2985 = xor i64 %2984, %2971
  %2986 = lshr i64 %2985, 4
  %2987 = trunc i64 %2986 to i8
  %2988 = and i8 %2987, 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2988, i8* %2989, align 1
  %2990 = icmp eq i64 %2971, 0
  %2991 = zext i1 %2990 to i8
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2991, i8* %2992, align 1
  %2993 = lshr i64 %2971, 63
  %2994 = trunc i64 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i64 %2967, 63
  %2997 = lshr i64 %2968, 63
  %2998 = xor i64 %2993, %2996
  %2999 = xor i64 %2993, %2997
  %3000 = add i64 %2998, %2999
  %3001 = icmp eq i64 %3000, 2
  %3002 = zext i1 %3001 to i8
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3002, i8* %3003, align 1
  store %struct.Memory* %loadMem_432333, %struct.Memory** %MEMORY
  %loadMem_432336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 33
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 7
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %3009 to i64*
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 15
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3012 to i64*
  %3013 = load i64, i64* %RBP.i361
  %3014 = sub i64 %3013, 8
  %3015 = load i64, i64* %PC.i359
  %3016 = add i64 %3015, 4
  store i64 %3016, i64* %PC.i359
  %3017 = inttoptr i64 %3014 to i64*
  %3018 = load i64, i64* %3017
  store i64 %3018, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_432336, %struct.Memory** %MEMORY
  %loadMem_43233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 33
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 7
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RDX.i358
  %3026 = add i64 %3025, 152
  %3027 = load i64, i64* %PC.i357
  %3028 = add i64 %3027, 7
  store i64 %3028, i64* %PC.i357
  %3029 = inttoptr i64 %3026 to i64*
  %3030 = load i64, i64* %3029
  store i64 %3030, i64* %RDX.i358, align 8
  store %struct.Memory* %loadMem_43233a, %struct.Memory** %MEMORY
  %loadMem_432341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 9
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RSI.i355 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 15
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i356
  %3041 = sub i64 %3040, 16
  %3042 = load i64, i64* %PC.i354
  %3043 = add i64 %3042, 4
  store i64 %3043, i64* %PC.i354
  %3044 = inttoptr i64 %3041 to i32*
  %3045 = load i32, i32* %3044
  %3046 = sext i32 %3045 to i64
  store i64 %3046, i64* %RSI.i355, align 8
  store %struct.Memory* %loadMem_432341, %struct.Memory** %MEMORY
  %loadMem_432345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3048 = getelementptr inbounds %struct.GPR, %struct.GPR* %3047, i32 0, i32 33
  %3049 = getelementptr inbounds %struct.Reg, %struct.Reg* %3048, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %3049 to i64*
  %3050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3051 = getelementptr inbounds %struct.GPR, %struct.GPR* %3050, i32 0, i32 1
  %3052 = getelementptr inbounds %struct.Reg, %struct.Reg* %3051, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %3052 to i64*
  %3053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3054 = getelementptr inbounds %struct.GPR, %struct.GPR* %3053, i32 0, i32 7
  %3055 = getelementptr inbounds %struct.Reg, %struct.Reg* %3054, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %3055 to i64*
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 9
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %RSI.i353 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %RDX.i352
  %3060 = load i64, i64* %RSI.i353
  %3061 = mul i64 %3060, 8
  %3062 = add i64 %3061, %3059
  %3063 = load i64, i64* %RAX.i351
  %3064 = load i64, i64* %PC.i350
  %3065 = add i64 %3064, 4
  store i64 %3065, i64* %PC.i350
  %3066 = inttoptr i64 %3062 to i64*
  store i64 %3063, i64* %3066
  store %struct.Memory* %loadMem_432345, %struct.Memory** %MEMORY
  %loadMem_432349 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 33
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %3069 to i64*
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3071 = getelementptr inbounds %struct.GPR, %struct.GPR* %3070, i32 0, i32 5
  %3072 = getelementptr inbounds %struct.Reg, %struct.Reg* %3071, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %3072 to i64*
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 15
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %3075 to i64*
  %3076 = load i64, i64* %RBP.i349
  %3077 = sub i64 %3076, 16
  %3078 = load i64, i64* %PC.i347
  %3079 = add i64 %3078, 3
  store i64 %3079, i64* %PC.i347
  %3080 = inttoptr i64 %3077 to i32*
  %3081 = load i32, i32* %3080
  %3082 = zext i32 %3081 to i64
  store i64 %3082, i64* %RCX.i348, align 8
  store %struct.Memory* %loadMem_432349, %struct.Memory** %MEMORY
  %loadMem_43234c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 5
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %ECX.i345 = bitcast %union.anon* %3088 to i32*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 15
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RBP.i346 = bitcast %union.anon* %3091 to i64*
  %3092 = load i32, i32* %ECX.i345
  %3093 = zext i32 %3092 to i64
  %3094 = load i64, i64* %RBP.i346
  %3095 = sub i64 %3094, 12
  %3096 = load i64, i64* %PC.i344
  %3097 = add i64 %3096, 3
  store i64 %3097, i64* %PC.i344
  %3098 = inttoptr i64 %3095 to i32*
  %3099 = load i32, i32* %3098
  %3100 = sub i32 %3092, %3099
  %3101 = icmp ult i32 %3092, %3099
  %3102 = zext i1 %3101 to i8
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3102, i8* %3103, align 1
  %3104 = and i32 %3100, 255
  %3105 = call i32 @llvm.ctpop.i32(i32 %3104)
  %3106 = trunc i32 %3105 to i8
  %3107 = and i8 %3106, 1
  %3108 = xor i8 %3107, 1
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3108, i8* %3109, align 1
  %3110 = xor i32 %3099, %3092
  %3111 = xor i32 %3110, %3100
  %3112 = lshr i32 %3111, 4
  %3113 = trunc i32 %3112 to i8
  %3114 = and i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3114, i8* %3115, align 1
  %3116 = icmp eq i32 %3100, 0
  %3117 = zext i1 %3116 to i8
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3117, i8* %3118, align 1
  %3119 = lshr i32 %3100, 31
  %3120 = trunc i32 %3119 to i8
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3120, i8* %3121, align 1
  %3122 = lshr i32 %3092, 31
  %3123 = lshr i32 %3099, 31
  %3124 = xor i32 %3123, %3122
  %3125 = xor i32 %3119, %3122
  %3126 = add i32 %3125, %3124
  %3127 = icmp eq i32 %3126, 2
  %3128 = zext i1 %3127 to i8
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3128, i8* %3129, align 1
  store %struct.Memory* %loadMem_43234c, %struct.Memory** %MEMORY
  %loadMem_43234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3131 = getelementptr inbounds %struct.GPR, %struct.GPR* %3130, i32 0, i32 33
  %3132 = getelementptr inbounds %struct.Reg, %struct.Reg* %3131, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %3132 to i64*
  %3133 = load i64, i64* %PC.i343
  %3134 = add i64 %3133, 100
  %3135 = load i64, i64* %PC.i343
  %3136 = add i64 %3135, 6
  %3137 = load i64, i64* %PC.i343
  %3138 = add i64 %3137, 6
  store i64 %3138, i64* %PC.i343
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3140 = load i8, i8* %3139, align 1
  %3141 = icmp ne i8 %3140, 0
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3143 = load i8, i8* %3142, align 1
  %3144 = icmp ne i8 %3143, 0
  %3145 = xor i1 %3141, %3144
  %3146 = xor i1 %3145, true
  %3147 = zext i1 %3146 to i8
  store i8 %3147, i8* %BRANCH_TAKEN, align 1
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3149 = select i1 %3145, i64 %3136, i64 %3134
  store i64 %3149, i64* %3148, align 8
  store %struct.Memory* %loadMem_43234f, %struct.Memory** %MEMORY
  %loadBr_43234f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43234f = icmp eq i8 %loadBr_43234f, 1
  br i1 %cmpBr_43234f, label %block_.L_4323b3, label %block_432355

block_432355:                                     ; preds = %block_43231a
  %loadMem_432355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3151 = getelementptr inbounds %struct.GPR, %struct.GPR* %3150, i32 0, i32 33
  %3152 = getelementptr inbounds %struct.Reg, %struct.Reg* %3151, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %3152 to i64*
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3154 = getelementptr inbounds %struct.GPR, %struct.GPR* %3153, i32 0, i32 1
  %3155 = getelementptr inbounds %struct.Reg, %struct.Reg* %3154, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %3155 to i64*
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 15
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %3158 to i64*
  %3159 = load i64, i64* %RBP.i342
  %3160 = sub i64 %3159, 8
  %3161 = load i64, i64* %PC.i340
  %3162 = add i64 %3161, 4
  store i64 %3162, i64* %PC.i340
  %3163 = inttoptr i64 %3160 to i64*
  %3164 = load i64, i64* %3163
  store i64 %3164, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_432355, %struct.Memory** %MEMORY
  %loadMem_432359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3166 = getelementptr inbounds %struct.GPR, %struct.GPR* %3165, i32 0, i32 33
  %3167 = getelementptr inbounds %struct.Reg, %struct.Reg* %3166, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %3167 to i64*
  %3168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3169 = getelementptr inbounds %struct.GPR, %struct.GPR* %3168, i32 0, i32 1
  %3170 = getelementptr inbounds %struct.Reg, %struct.Reg* %3169, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %3170 to i64*
  %3171 = load i64, i64* %RAX.i339
  %3172 = add i64 %3171, 160
  %3173 = load i64, i64* %PC.i338
  %3174 = add i64 %3173, 7
  store i64 %3174, i64* %PC.i338
  %3175 = inttoptr i64 %3172 to i64*
  %3176 = load i64, i64* %3175
  store i64 %3176, i64* %RAX.i339, align 8
  store %struct.Memory* %loadMem_432359, %struct.Memory** %MEMORY
  %loadMem_432360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 33
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %3179 to i64*
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 1
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %3182 to i64*
  %3183 = load i64, i64* %RAX.i337
  %3184 = load i64, i64* %PC.i336
  %3185 = add i64 %3184, 3
  store i64 %3185, i64* %PC.i336
  %3186 = inttoptr i64 %3183 to i64*
  %3187 = load i64, i64* %3186
  store i64 %3187, i64* %RAX.i337, align 8
  store %struct.Memory* %loadMem_432360, %struct.Memory** %MEMORY
  %loadMem_432363 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 33
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 5
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 15
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RBP.i335
  %3198 = sub i64 %3197, 16
  %3199 = load i64, i64* %PC.i333
  %3200 = add i64 %3199, 4
  store i64 %3200, i64* %PC.i333
  %3201 = inttoptr i64 %3198 to i32*
  %3202 = load i32, i32* %3201
  %3203 = sext i32 %3202 to i64
  %3204 = mul i64 %3203, 20
  %3205 = trunc i64 %3204 to i32
  %3206 = and i64 %3204, 4294967295
  store i64 %3206, i64* %RCX.i334, align 8
  %3207 = shl i64 %3204, 32
  %3208 = ashr exact i64 %3207, 32
  %3209 = icmp ne i64 %3208, %3204
  %3210 = zext i1 %3209 to i8
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3210, i8* %3211, align 1
  %3212 = and i32 %3205, 255
  %3213 = call i32 @llvm.ctpop.i32(i32 %3212)
  %3214 = trunc i32 %3213 to i8
  %3215 = and i8 %3214, 1
  %3216 = xor i8 %3215, 1
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3216, i8* %3217, align 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3218, align 1
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3219, align 1
  %3220 = lshr i32 %3205, 31
  %3221 = trunc i32 %3220 to i8
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3221, i8* %3222, align 1
  %3223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3210, i8* %3223, align 1
  store %struct.Memory* %loadMem_432363, %struct.Memory** %MEMORY
  %loadMem_432367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 33
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %3226 to i64*
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 5
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %ECX.i331 = bitcast %union.anon* %3229 to i32*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 7
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %3232 to i64*
  %3233 = load i32, i32* %ECX.i331
  %3234 = zext i32 %3233 to i64
  %3235 = load i64, i64* %PC.i330
  %3236 = add i64 %3235, 3
  store i64 %3236, i64* %PC.i330
  %3237 = shl i64 %3234, 32
  %3238 = ashr exact i64 %3237, 32
  store i64 %3238, i64* %RDX.i332, align 8
  store %struct.Memory* %loadMem_432367, %struct.Memory** %MEMORY
  %loadMem_43236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 7
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %RDX.i329
  %3246 = load i64, i64* %PC.i328
  %3247 = add i64 %3246, 4
  store i64 %3247, i64* %PC.i328
  %3248 = shl i64 %3245, 1
  %3249 = icmp slt i64 %3248, 0
  %3250 = shl i64 %3248, 1
  store i64 %3250, i64* %RDX.i329, align 8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3252 = zext i1 %3249 to i8
  store i8 %3252, i8* %3251, align 1
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3254 = trunc i64 %3250 to i32
  %3255 = and i32 %3254, 254
  %3256 = call i32 @llvm.ctpop.i32(i32 %3255)
  %3257 = trunc i32 %3256 to i8
  %3258 = and i8 %3257, 1
  %3259 = xor i8 %3258, 1
  store i8 %3259, i8* %3253, align 1
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3260, align 1
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3262 = icmp eq i64 %3250, 0
  %3263 = zext i1 %3262 to i8
  store i8 %3263, i8* %3261, align 1
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3265 = lshr i64 %3250, 63
  %3266 = trunc i64 %3265 to i8
  store i8 %3266, i8* %3264, align 1
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3267, align 1
  store %struct.Memory* %loadMem_43236a, %struct.Memory** %MEMORY
  %loadMem_43236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 33
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 1
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %3273 to i64*
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 7
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %3276 to i64*
  %3277 = load i64, i64* %RAX.i326
  %3278 = load i64, i64* %RDX.i327
  %3279 = load i64, i64* %PC.i325
  %3280 = add i64 %3279, 3
  store i64 %3280, i64* %PC.i325
  %3281 = add i64 %3278, %3277
  store i64 %3281, i64* %RAX.i326, align 8
  %3282 = icmp ult i64 %3281, %3277
  %3283 = icmp ult i64 %3281, %3278
  %3284 = or i1 %3282, %3283
  %3285 = zext i1 %3284 to i8
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3285, i8* %3286, align 1
  %3287 = trunc i64 %3281 to i32
  %3288 = and i32 %3287, 255
  %3289 = call i32 @llvm.ctpop.i32(i32 %3288)
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = xor i8 %3291, 1
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3292, i8* %3293, align 1
  %3294 = xor i64 %3278, %3277
  %3295 = xor i64 %3294, %3281
  %3296 = lshr i64 %3295, 4
  %3297 = trunc i64 %3296 to i8
  %3298 = and i8 %3297, 1
  %3299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3298, i8* %3299, align 1
  %3300 = icmp eq i64 %3281, 0
  %3301 = zext i1 %3300 to i8
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3301, i8* %3302, align 1
  %3303 = lshr i64 %3281, 63
  %3304 = trunc i64 %3303 to i8
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3304, i8* %3305, align 1
  %3306 = lshr i64 %3277, 63
  %3307 = lshr i64 %3278, 63
  %3308 = xor i64 %3303, %3306
  %3309 = xor i64 %3303, %3307
  %3310 = add i64 %3308, %3309
  %3311 = icmp eq i64 %3310, 2
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3312, i8* %3313, align 1
  store %struct.Memory* %loadMem_43236e, %struct.Memory** %MEMORY
  %loadMem_432371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 33
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %3316 to i64*
  %3317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3318 = getelementptr inbounds %struct.GPR, %struct.GPR* %3317, i32 0, i32 7
  %3319 = getelementptr inbounds %struct.Reg, %struct.Reg* %3318, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %3319 to i64*
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 15
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %3322 to i64*
  %3323 = load i64, i64* %RBP.i324
  %3324 = sub i64 %3323, 8
  %3325 = load i64, i64* %PC.i322
  %3326 = add i64 %3325, 4
  store i64 %3326, i64* %PC.i322
  %3327 = inttoptr i64 %3324 to i64*
  %3328 = load i64, i64* %3327
  store i64 %3328, i64* %RDX.i323, align 8
  store %struct.Memory* %loadMem_432371, %struct.Memory** %MEMORY
  %loadMem_432375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 7
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RDX.i321 = bitcast %union.anon* %3334 to i64*
  %3335 = load i64, i64* %RDX.i321
  %3336 = add i64 %3335, 160
  %3337 = load i64, i64* %PC.i320
  %3338 = add i64 %3337, 7
  store i64 %3338, i64* %PC.i320
  %3339 = inttoptr i64 %3336 to i64*
  %3340 = load i64, i64* %3339
  store i64 %3340, i64* %RDX.i321, align 8
  store %struct.Memory* %loadMem_432375, %struct.Memory** %MEMORY
  %loadMem_43237c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 33
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 9
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RSI.i318 = bitcast %union.anon* %3346 to i64*
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 15
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %RBP.i319
  %3351 = sub i64 %3350, 16
  %3352 = load i64, i64* %PC.i317
  %3353 = add i64 %3352, 4
  store i64 %3353, i64* %PC.i317
  %3354 = inttoptr i64 %3351 to i32*
  %3355 = load i32, i32* %3354
  %3356 = sext i32 %3355 to i64
  store i64 %3356, i64* %RSI.i318, align 8
  store %struct.Memory* %loadMem_43237c, %struct.Memory** %MEMORY
  %loadMem_432380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 33
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 1
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 7
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %RDX.i315 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 9
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %3368 to i64*
  %3369 = load i64, i64* %RDX.i315
  %3370 = load i64, i64* %RSI.i316
  %3371 = mul i64 %3370, 8
  %3372 = add i64 %3371, %3369
  %3373 = load i64, i64* %RAX.i314
  %3374 = load i64, i64* %PC.i313
  %3375 = add i64 %3374, 4
  store i64 %3375, i64* %PC.i313
  %3376 = inttoptr i64 %3372 to i64*
  store i64 %3373, i64* %3376
  store %struct.Memory* %loadMem_432380, %struct.Memory** %MEMORY
  %loadMem_432384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 33
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %3379 to i64*
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3381 = getelementptr inbounds %struct.GPR, %struct.GPR* %3380, i32 0, i32 1
  %3382 = getelementptr inbounds %struct.Reg, %struct.Reg* %3381, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %3382 to i64*
  %3383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3384 = getelementptr inbounds %struct.GPR, %struct.GPR* %3383, i32 0, i32 15
  %3385 = getelementptr inbounds %struct.Reg, %struct.Reg* %3384, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %3385 to i64*
  %3386 = load i64, i64* %RBP.i312
  %3387 = sub i64 %3386, 8
  %3388 = load i64, i64* %PC.i310
  %3389 = add i64 %3388, 4
  store i64 %3389, i64* %PC.i310
  %3390 = inttoptr i64 %3387 to i64*
  %3391 = load i64, i64* %3390
  store i64 %3391, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_432384, %struct.Memory** %MEMORY
  %loadMem_432388 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 33
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 1
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RAX.i309
  %3399 = add i64 %3398, 144
  %3400 = load i64, i64* %PC.i308
  %3401 = add i64 %3400, 7
  store i64 %3401, i64* %PC.i308
  %3402 = inttoptr i64 %3399 to i64*
  %3403 = load i64, i64* %3402
  store i64 %3403, i64* %RAX.i309, align 8
  store %struct.Memory* %loadMem_432388, %struct.Memory** %MEMORY
  %loadMem_43238f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 33
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 1
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %RAX.i307 = bitcast %union.anon* %3409 to i64*
  %3410 = load i64, i64* %RAX.i307
  %3411 = load i64, i64* %PC.i306
  %3412 = add i64 %3411, 3
  store i64 %3412, i64* %PC.i306
  %3413 = inttoptr i64 %3410 to i64*
  %3414 = load i64, i64* %3413
  store i64 %3414, i64* %RAX.i307, align 8
  store %struct.Memory* %loadMem_43238f, %struct.Memory** %MEMORY
  %loadMem_432392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3416 = getelementptr inbounds %struct.GPR, %struct.GPR* %3415, i32 0, i32 33
  %3417 = getelementptr inbounds %struct.Reg, %struct.Reg* %3416, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %3417 to i64*
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 5
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %3420 to i64*
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3422 = getelementptr inbounds %struct.GPR, %struct.GPR* %3421, i32 0, i32 15
  %3423 = getelementptr inbounds %struct.Reg, %struct.Reg* %3422, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %3423 to i64*
  %3424 = load i64, i64* %RBP.i305
  %3425 = sub i64 %3424, 16
  %3426 = load i64, i64* %PC.i303
  %3427 = add i64 %3426, 4
  store i64 %3427, i64* %PC.i303
  %3428 = inttoptr i64 %3425 to i32*
  %3429 = load i32, i32* %3428
  %3430 = sext i32 %3429 to i64
  %3431 = mul i64 %3430, 7
  %3432 = trunc i64 %3431 to i32
  %3433 = and i64 %3431, 4294967295
  store i64 %3433, i64* %RCX.i304, align 8
  %3434 = shl i64 %3431, 32
  %3435 = ashr exact i64 %3434, 32
  %3436 = icmp ne i64 %3435, %3431
  %3437 = zext i1 %3436 to i8
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3437, i8* %3438, align 1
  %3439 = and i32 %3432, 255
  %3440 = call i32 @llvm.ctpop.i32(i32 %3439)
  %3441 = trunc i32 %3440 to i8
  %3442 = and i8 %3441, 1
  %3443 = xor i8 %3442, 1
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3443, i8* %3444, align 1
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3445, align 1
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3446, align 1
  %3447 = lshr i32 %3432, 31
  %3448 = trunc i32 %3447 to i8
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3448, i8* %3449, align 1
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3437, i8* %3450, align 1
  store %struct.Memory* %loadMem_432392, %struct.Memory** %MEMORY
  %loadMem_432396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 33
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %3453 to i64*
  %3454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3455 = getelementptr inbounds %struct.GPR, %struct.GPR* %3454, i32 0, i32 5
  %3456 = getelementptr inbounds %struct.Reg, %struct.Reg* %3455, i32 0, i32 0
  %ECX.i301 = bitcast %union.anon* %3456 to i32*
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3458 = getelementptr inbounds %struct.GPR, %struct.GPR* %3457, i32 0, i32 7
  %3459 = getelementptr inbounds %struct.Reg, %struct.Reg* %3458, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %3459 to i64*
  %3460 = load i32, i32* %ECX.i301
  %3461 = zext i32 %3460 to i64
  %3462 = load i64, i64* %PC.i300
  %3463 = add i64 %3462, 3
  store i64 %3463, i64* %PC.i300
  %3464 = shl i64 %3461, 32
  %3465 = ashr exact i64 %3464, 32
  store i64 %3465, i64* %RDX.i302, align 8
  store %struct.Memory* %loadMem_432396, %struct.Memory** %MEMORY
  %loadMem_432399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3467 = getelementptr inbounds %struct.GPR, %struct.GPR* %3466, i32 0, i32 33
  %3468 = getelementptr inbounds %struct.Reg, %struct.Reg* %3467, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %3468 to i64*
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 7
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %3471 to i64*
  %3472 = load i64, i64* %RDX.i299
  %3473 = load i64, i64* %PC.i298
  %3474 = add i64 %3473, 4
  store i64 %3474, i64* %PC.i298
  %3475 = shl i64 %3472, 1
  %3476 = icmp slt i64 %3475, 0
  %3477 = shl i64 %3475, 1
  store i64 %3477, i64* %RDX.i299, align 8
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3479 = zext i1 %3476 to i8
  store i8 %3479, i8* %3478, align 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3481 = trunc i64 %3477 to i32
  %3482 = and i32 %3481, 254
  %3483 = call i32 @llvm.ctpop.i32(i32 %3482)
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = xor i8 %3485, 1
  store i8 %3486, i8* %3480, align 1
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3487, align 1
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3489 = icmp eq i64 %3477, 0
  %3490 = zext i1 %3489 to i8
  store i8 %3490, i8* %3488, align 1
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3492 = lshr i64 %3477, 63
  %3493 = trunc i64 %3492 to i8
  store i8 %3493, i8* %3491, align 1
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3494, align 1
  store %struct.Memory* %loadMem_432399, %struct.Memory** %MEMORY
  %loadMem_43239d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 33
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 1
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 7
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RDX.i297 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %RAX.i296
  %3505 = load i64, i64* %RDX.i297
  %3506 = load i64, i64* %PC.i295
  %3507 = add i64 %3506, 3
  store i64 %3507, i64* %PC.i295
  %3508 = add i64 %3505, %3504
  store i64 %3508, i64* %RAX.i296, align 8
  %3509 = icmp ult i64 %3508, %3504
  %3510 = icmp ult i64 %3508, %3505
  %3511 = or i1 %3509, %3510
  %3512 = zext i1 %3511 to i8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3512, i8* %3513, align 1
  %3514 = trunc i64 %3508 to i32
  %3515 = and i32 %3514, 255
  %3516 = call i32 @llvm.ctpop.i32(i32 %3515)
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  %3519 = xor i8 %3518, 1
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3519, i8* %3520, align 1
  %3521 = xor i64 %3505, %3504
  %3522 = xor i64 %3521, %3508
  %3523 = lshr i64 %3522, 4
  %3524 = trunc i64 %3523 to i8
  %3525 = and i8 %3524, 1
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3525, i8* %3526, align 1
  %3527 = icmp eq i64 %3508, 0
  %3528 = zext i1 %3527 to i8
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3528, i8* %3529, align 1
  %3530 = lshr i64 %3508, 63
  %3531 = trunc i64 %3530 to i8
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3531, i8* %3532, align 1
  %3533 = lshr i64 %3504, 63
  %3534 = lshr i64 %3505, 63
  %3535 = xor i64 %3530, %3533
  %3536 = xor i64 %3530, %3534
  %3537 = add i64 %3535, %3536
  %3538 = icmp eq i64 %3537, 2
  %3539 = zext i1 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3539, i8* %3540, align 1
  store %struct.Memory* %loadMem_43239d, %struct.Memory** %MEMORY
  %loadMem_4323a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3542 = getelementptr inbounds %struct.GPR, %struct.GPR* %3541, i32 0, i32 33
  %3543 = getelementptr inbounds %struct.Reg, %struct.Reg* %3542, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %3543 to i64*
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 7
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %RDX.i293 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 15
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %RBP.i294
  %3551 = sub i64 %3550, 8
  %3552 = load i64, i64* %PC.i292
  %3553 = add i64 %3552, 4
  store i64 %3553, i64* %PC.i292
  %3554 = inttoptr i64 %3551 to i64*
  %3555 = load i64, i64* %3554
  store i64 %3555, i64* %RDX.i293, align 8
  store %struct.Memory* %loadMem_4323a0, %struct.Memory** %MEMORY
  %loadMem_4323a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3557 = getelementptr inbounds %struct.GPR, %struct.GPR* %3556, i32 0, i32 33
  %3558 = getelementptr inbounds %struct.Reg, %struct.Reg* %3557, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %3558 to i64*
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 7
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %RDX.i291 = bitcast %union.anon* %3561 to i64*
  %3562 = load i64, i64* %RDX.i291
  %3563 = add i64 %3562, 144
  %3564 = load i64, i64* %PC.i290
  %3565 = add i64 %3564, 7
  store i64 %3565, i64* %PC.i290
  %3566 = inttoptr i64 %3563 to i64*
  %3567 = load i64, i64* %3566
  store i64 %3567, i64* %RDX.i291, align 8
  store %struct.Memory* %loadMem_4323a4, %struct.Memory** %MEMORY
  %loadMem_4323ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 9
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RSI.i288 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 15
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %3576 to i64*
  %3577 = load i64, i64* %RBP.i289
  %3578 = sub i64 %3577, 16
  %3579 = load i64, i64* %PC.i287
  %3580 = add i64 %3579, 4
  store i64 %3580, i64* %PC.i287
  %3581 = inttoptr i64 %3578 to i32*
  %3582 = load i32, i32* %3581
  %3583 = sext i32 %3582 to i64
  store i64 %3583, i64* %RSI.i288, align 8
  store %struct.Memory* %loadMem_4323ab, %struct.Memory** %MEMORY
  %loadMem_4323af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 33
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %3586 to i64*
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 1
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %3589 to i64*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 7
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RDX.i285 = bitcast %union.anon* %3592 to i64*
  %3593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3594 = getelementptr inbounds %struct.GPR, %struct.GPR* %3593, i32 0, i32 9
  %3595 = getelementptr inbounds %struct.Reg, %struct.Reg* %3594, i32 0, i32 0
  %RSI.i286 = bitcast %union.anon* %3595 to i64*
  %3596 = load i64, i64* %RDX.i285
  %3597 = load i64, i64* %RSI.i286
  %3598 = mul i64 %3597, 8
  %3599 = add i64 %3598, %3596
  %3600 = load i64, i64* %RAX.i284
  %3601 = load i64, i64* %PC.i283
  %3602 = add i64 %3601, 4
  store i64 %3602, i64* %PC.i283
  %3603 = inttoptr i64 %3599 to i64*
  store i64 %3600, i64* %3603
  store %struct.Memory* %loadMem_4323af, %struct.Memory** %MEMORY
  br label %block_.L_4323b3

block_.L_4323b3:                                  ; preds = %block_432355, %block_43231a
  %loadMem_4323b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %3606 to i64*
  %3607 = load i64, i64* %PC.i282
  %3608 = add i64 %3607, 5
  %3609 = load i64, i64* %PC.i282
  %3610 = add i64 %3609, 5
  store i64 %3610, i64* %PC.i282
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3608, i64* %3611, align 8
  store %struct.Memory* %loadMem_4323b3, %struct.Memory** %MEMORY
  br label %block_.L_4323b8

block_.L_4323b8:                                  ; preds = %block_.L_4323b3
  %loadMem_4323b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3613 = getelementptr inbounds %struct.GPR, %struct.GPR* %3612, i32 0, i32 33
  %3614 = getelementptr inbounds %struct.Reg, %struct.Reg* %3613, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %3614 to i64*
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3616 = getelementptr inbounds %struct.GPR, %struct.GPR* %3615, i32 0, i32 1
  %3617 = getelementptr inbounds %struct.Reg, %struct.Reg* %3616, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %3617 to i64*
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3619 = getelementptr inbounds %struct.GPR, %struct.GPR* %3618, i32 0, i32 15
  %3620 = getelementptr inbounds %struct.Reg, %struct.Reg* %3619, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %3620 to i64*
  %3621 = load i64, i64* %RBP.i281
  %3622 = sub i64 %3621, 16
  %3623 = load i64, i64* %PC.i279
  %3624 = add i64 %3623, 3
  store i64 %3624, i64* %PC.i279
  %3625 = inttoptr i64 %3622 to i32*
  %3626 = load i32, i32* %3625
  %3627 = zext i32 %3626 to i64
  store i64 %3627, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_4323b8, %struct.Memory** %MEMORY
  %loadMem_4323bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 33
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %3630 to i64*
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3632 = getelementptr inbounds %struct.GPR, %struct.GPR* %3631, i32 0, i32 1
  %3633 = getelementptr inbounds %struct.Reg, %struct.Reg* %3632, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %3633 to i64*
  %3634 = load i64, i64* %RAX.i278
  %3635 = load i64, i64* %PC.i277
  %3636 = add i64 %3635, 3
  store i64 %3636, i64* %PC.i277
  %3637 = trunc i64 %3634 to i32
  %3638 = add i32 1, %3637
  %3639 = zext i32 %3638 to i64
  store i64 %3639, i64* %RAX.i278, align 8
  %3640 = icmp ult i32 %3638, %3637
  %3641 = icmp ult i32 %3638, 1
  %3642 = or i1 %3640, %3641
  %3643 = zext i1 %3642 to i8
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3643, i8* %3644, align 1
  %3645 = and i32 %3638, 255
  %3646 = call i32 @llvm.ctpop.i32(i32 %3645)
  %3647 = trunc i32 %3646 to i8
  %3648 = and i8 %3647, 1
  %3649 = xor i8 %3648, 1
  %3650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3649, i8* %3650, align 1
  %3651 = xor i64 1, %3634
  %3652 = trunc i64 %3651 to i32
  %3653 = xor i32 %3652, %3638
  %3654 = lshr i32 %3653, 4
  %3655 = trunc i32 %3654 to i8
  %3656 = and i8 %3655, 1
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3656, i8* %3657, align 1
  %3658 = icmp eq i32 %3638, 0
  %3659 = zext i1 %3658 to i8
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3659, i8* %3660, align 1
  %3661 = lshr i32 %3638, 31
  %3662 = trunc i32 %3661 to i8
  %3663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3662, i8* %3663, align 1
  %3664 = lshr i32 %3637, 31
  %3665 = xor i32 %3661, %3664
  %3666 = add i32 %3665, %3661
  %3667 = icmp eq i32 %3666, 2
  %3668 = zext i1 %3667 to i8
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3668, i8* %3669, align 1
  store %struct.Memory* %loadMem_4323bb, %struct.Memory** %MEMORY
  %loadMem_4323be = load %struct.Memory*, %struct.Memory** %MEMORY
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 33
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 1
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %EAX.i275 = bitcast %union.anon* %3675 to i32*
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 15
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %3678 to i64*
  %3679 = load i64, i64* %RBP.i276
  %3680 = sub i64 %3679, 16
  %3681 = load i32, i32* %EAX.i275
  %3682 = zext i32 %3681 to i64
  %3683 = load i64, i64* %PC.i274
  %3684 = add i64 %3683, 3
  store i64 %3684, i64* %PC.i274
  %3685 = inttoptr i64 %3680 to i32*
  store i32 %3681, i32* %3685
  store %struct.Memory* %loadMem_4323be, %struct.Memory** %MEMORY
  %loadMem_4323c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 33
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %3688 to i64*
  %3689 = load i64, i64* %PC.i273
  %3690 = add i64 %3689, -179
  %3691 = load i64, i64* %PC.i273
  %3692 = add i64 %3691, 5
  store i64 %3692, i64* %PC.i273
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3690, i64* %3693, align 8
  store %struct.Memory* %loadMem_4323c1, %struct.Memory** %MEMORY
  br label %block_.L_43230e

block_.L_4323c6:                                  ; preds = %block_.L_43230e
  %loadMem_4323c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3695 = getelementptr inbounds %struct.GPR, %struct.GPR* %3694, i32 0, i32 33
  %3696 = getelementptr inbounds %struct.Reg, %struct.Reg* %3695, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %3696 to i64*
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3698 = getelementptr inbounds %struct.GPR, %struct.GPR* %3697, i32 0, i32 15
  %3699 = getelementptr inbounds %struct.Reg, %struct.Reg* %3698, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %3699 to i64*
  %3700 = load i64, i64* %RBP.i272
  %3701 = sub i64 %3700, 20
  %3702 = load i64, i64* %PC.i271
  %3703 = add i64 %3702, 7
  store i64 %3703, i64* %PC.i271
  %3704 = inttoptr i64 %3701 to i32*
  store i32 1, i32* %3704
  store %struct.Memory* %loadMem_4323c6, %struct.Memory** %MEMORY
  br label %block_.L_4323cd

block_.L_4323cd:                                  ; preds = %block_4323d7, %block_.L_4323c6
  %loadMem_4323cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3706 = getelementptr inbounds %struct.GPR, %struct.GPR* %3705, i32 0, i32 33
  %3707 = getelementptr inbounds %struct.Reg, %struct.Reg* %3706, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %3707 to i64*
  %3708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3709 = getelementptr inbounds %struct.GPR, %struct.GPR* %3708, i32 0, i32 15
  %3710 = getelementptr inbounds %struct.Reg, %struct.Reg* %3709, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %3710 to i64*
  %3711 = load i64, i64* %RBP.i270
  %3712 = sub i64 %3711, 20
  %3713 = load i64, i64* %PC.i269
  %3714 = add i64 %3713, 4
  store i64 %3714, i64* %PC.i269
  %3715 = inttoptr i64 %3712 to i32*
  %3716 = load i32, i32* %3715
  %3717 = sub i32 %3716, 24
  %3718 = icmp ult i32 %3716, 24
  %3719 = zext i1 %3718 to i8
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3719, i8* %3720, align 1
  %3721 = and i32 %3717, 255
  %3722 = call i32 @llvm.ctpop.i32(i32 %3721)
  %3723 = trunc i32 %3722 to i8
  %3724 = and i8 %3723, 1
  %3725 = xor i8 %3724, 1
  %3726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3725, i8* %3726, align 1
  %3727 = xor i32 %3716, 24
  %3728 = xor i32 %3727, %3717
  %3729 = lshr i32 %3728, 4
  %3730 = trunc i32 %3729 to i8
  %3731 = and i8 %3730, 1
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3731, i8* %3732, align 1
  %3733 = icmp eq i32 %3717, 0
  %3734 = zext i1 %3733 to i8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3734, i8* %3735, align 1
  %3736 = lshr i32 %3717, 31
  %3737 = trunc i32 %3736 to i8
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3737, i8* %3738, align 1
  %3739 = lshr i32 %3716, 31
  %3740 = xor i32 %3736, %3739
  %3741 = add i32 %3740, %3739
  %3742 = icmp eq i32 %3741, 2
  %3743 = zext i1 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3743, i8* %3744, align 1
  store %struct.Memory* %loadMem_4323cd, %struct.Memory** %MEMORY
  %loadMem_4323d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %3747 to i64*
  %3748 = load i64, i64* %PC.i268
  %3749 = add i64 %3748, 125
  %3750 = load i64, i64* %PC.i268
  %3751 = add i64 %3750, 6
  %3752 = load i64, i64* %PC.i268
  %3753 = add i64 %3752, 6
  store i64 %3753, i64* %PC.i268
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3755 = load i8, i8* %3754, align 1
  %3756 = icmp ne i8 %3755, 0
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3758 = load i8, i8* %3757, align 1
  %3759 = icmp ne i8 %3758, 0
  %3760 = xor i1 %3756, %3759
  %3761 = xor i1 %3760, true
  %3762 = zext i1 %3761 to i8
  store i8 %3762, i8* %BRANCH_TAKEN, align 1
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3764 = select i1 %3760, i64 %3751, i64 %3749
  store i64 %3764, i64* %3763, align 8
  store %struct.Memory* %loadMem_4323d1, %struct.Memory** %MEMORY
  %loadBr_4323d1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4323d1 = icmp eq i8 %loadBr_4323d1, 1
  br i1 %cmpBr_4323d1, label %block_.L_43244e, label %block_4323d7

block_4323d7:                                     ; preds = %block_.L_4323cd
  %loadMem_4323d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 33
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %3767 to i64*
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3769 = getelementptr inbounds %struct.GPR, %struct.GPR* %3768, i32 0, i32 1
  %3770 = getelementptr inbounds %struct.Reg, %struct.Reg* %3769, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %3770 to i64*
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3772 = getelementptr inbounds %struct.GPR, %struct.GPR* %3771, i32 0, i32 15
  %3773 = getelementptr inbounds %struct.Reg, %struct.Reg* %3772, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %3773 to i64*
  %3774 = load i64, i64* %RBP.i267
  %3775 = sub i64 %3774, 8
  %3776 = load i64, i64* %PC.i265
  %3777 = add i64 %3776, 4
  store i64 %3777, i64* %PC.i265
  %3778 = inttoptr i64 %3775 to i64*
  %3779 = load i64, i64* %3778
  store i64 %3779, i64* %RAX.i266, align 8
  store %struct.Memory* %loadMem_4323d7, %struct.Memory** %MEMORY
  %loadMem_4323db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 33
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %3782 to i64*
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3784 = getelementptr inbounds %struct.GPR, %struct.GPR* %3783, i32 0, i32 1
  %3785 = getelementptr inbounds %struct.Reg, %struct.Reg* %3784, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %3785 to i64*
  %3786 = load i64, i64* %RAX.i264
  %3787 = add i64 %3786, 320
  %3788 = load i64, i64* %PC.i263
  %3789 = add i64 %3788, 7
  store i64 %3789, i64* %PC.i263
  %3790 = inttoptr i64 %3787 to i64*
  %3791 = load i64, i64* %3790
  store i64 %3791, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_4323db, %struct.Memory** %MEMORY
  %loadMem_4323e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 1
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %RAX.i262
  %3799 = load i64, i64* %PC.i261
  %3800 = add i64 %3799, 3
  store i64 %3800, i64* %PC.i261
  %3801 = inttoptr i64 %3798 to i64*
  %3802 = load i64, i64* %3801
  store i64 %3802, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_4323e2, %struct.Memory** %MEMORY
  %loadMem_4323e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 5
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %3808 to i64*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 15
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %3811 to i64*
  %3812 = load i64, i64* %RBP.i260
  %3813 = sub i64 %3812, 20
  %3814 = load i64, i64* %PC.i258
  %3815 = add i64 %3814, 3
  store i64 %3815, i64* %PC.i258
  %3816 = inttoptr i64 %3813 to i32*
  %3817 = load i32, i32* %3816
  %3818 = zext i32 %3817 to i64
  store i64 %3818, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_4323e5, %struct.Memory** %MEMORY
  %loadMem_4323e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 7
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %3824 to i64*
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 15
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %3827 to i64*
  %3828 = load i64, i64* %RBP.i257
  %3829 = sub i64 %3828, 12
  %3830 = load i64, i64* %PC.i255
  %3831 = add i64 %3830, 3
  store i64 %3831, i64* %PC.i255
  %3832 = inttoptr i64 %3829 to i32*
  %3833 = load i32, i32* %3832
  %3834 = zext i32 %3833 to i64
  store i64 %3834, i64* %RDX.i256, align 8
  store %struct.Memory* %loadMem_4323e8, %struct.Memory** %MEMORY
  %loadMem_4323eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 7
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %3840 to i64*
  %3841 = load i64, i64* %RDX.i254
  %3842 = load i64, i64* %PC.i253
  %3843 = add i64 %3842, 3
  store i64 %3843, i64* %PC.i253
  %3844 = trunc i64 %3841 to i32
  %3845 = add i32 1, %3844
  %3846 = zext i32 %3845 to i64
  store i64 %3846, i64* %RDX.i254, align 8
  %3847 = icmp ult i32 %3845, %3844
  %3848 = icmp ult i32 %3845, 1
  %3849 = or i1 %3847, %3848
  %3850 = zext i1 %3849 to i8
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3850, i8* %3851, align 1
  %3852 = and i32 %3845, 255
  %3853 = call i32 @llvm.ctpop.i32(i32 %3852)
  %3854 = trunc i32 %3853 to i8
  %3855 = and i8 %3854, 1
  %3856 = xor i8 %3855, 1
  %3857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3856, i8* %3857, align 1
  %3858 = xor i64 1, %3841
  %3859 = trunc i64 %3858 to i32
  %3860 = xor i32 %3859, %3845
  %3861 = lshr i32 %3860, 4
  %3862 = trunc i32 %3861 to i8
  %3863 = and i8 %3862, 1
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3863, i8* %3864, align 1
  %3865 = icmp eq i32 %3845, 0
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3866, i8* %3867, align 1
  %3868 = lshr i32 %3845, 31
  %3869 = trunc i32 %3868 to i8
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3869, i8* %3870, align 1
  %3871 = lshr i32 %3844, 31
  %3872 = xor i32 %3868, %3871
  %3873 = add i32 %3872, %3868
  %3874 = icmp eq i32 %3873, 2
  %3875 = zext i1 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3875, i8* %3876, align 1
  store %struct.Memory* %loadMem_4323eb, %struct.Memory** %MEMORY
  %loadMem_4323ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 7
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %3882 to i32*
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3884 = getelementptr inbounds %struct.GPR, %struct.GPR* %3883, i32 0, i32 5
  %3885 = getelementptr inbounds %struct.Reg, %struct.Reg* %3884, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %3885 to i64*
  %3886 = load i64, i64* %RCX.i252
  %3887 = load i32, i32* %EDX.i
  %3888 = zext i32 %3887 to i64
  %3889 = load i64, i64* %PC.i251
  %3890 = add i64 %3889, 3
  store i64 %3890, i64* %PC.i251
  %3891 = shl i64 %3886, 32
  %3892 = ashr exact i64 %3891, 32
  %3893 = shl i64 %3888, 32
  %3894 = ashr exact i64 %3893, 32
  %3895 = mul i64 %3894, %3892
  %3896 = trunc i64 %3895 to i32
  %3897 = and i64 %3895, 4294967295
  store i64 %3897, i64* %RCX.i252, align 8
  %3898 = shl i64 %3895, 32
  %3899 = ashr exact i64 %3898, 32
  %3900 = icmp ne i64 %3899, %3895
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3901, i8* %3902, align 1
  %3903 = and i32 %3896, 255
  %3904 = call i32 @llvm.ctpop.i32(i32 %3903)
  %3905 = trunc i32 %3904 to i8
  %3906 = and i8 %3905, 1
  %3907 = xor i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3907, i8* %3908, align 1
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3909, align 1
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3910, align 1
  %3911 = lshr i32 %3896, 31
  %3912 = trunc i32 %3911 to i8
  %3913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3912, i8* %3913, align 1
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3901, i8* %3914, align 1
  store %struct.Memory* %loadMem_4323ee, %struct.Memory** %MEMORY
  %loadMem_4323f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3916 = getelementptr inbounds %struct.GPR, %struct.GPR* %3915, i32 0, i32 33
  %3917 = getelementptr inbounds %struct.Reg, %struct.Reg* %3916, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %3917 to i64*
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3919 = getelementptr inbounds %struct.GPR, %struct.GPR* %3918, i32 0, i32 5
  %3920 = getelementptr inbounds %struct.Reg, %struct.Reg* %3919, i32 0, i32 0
  %ECX.i249 = bitcast %union.anon* %3920 to i32*
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 9
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %RSI.i250 = bitcast %union.anon* %3923 to i64*
  %3924 = load i32, i32* %ECX.i249
  %3925 = zext i32 %3924 to i64
  %3926 = load i64, i64* %PC.i248
  %3927 = add i64 %3926, 3
  store i64 %3927, i64* %PC.i248
  %3928 = shl i64 %3925, 32
  %3929 = ashr exact i64 %3928, 32
  store i64 %3929, i64* %RSI.i250, align 8
  store %struct.Memory* %loadMem_4323f1, %struct.Memory** %MEMORY
  %loadMem_4323f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 33
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 9
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %RSI.i247 = bitcast %union.anon* %3935 to i64*
  %3936 = load i64, i64* %RSI.i247
  %3937 = load i64, i64* %PC.i246
  %3938 = add i64 %3937, 4
  store i64 %3938, i64* %PC.i246
  %3939 = shl i64 %3936, 1
  %3940 = icmp slt i64 %3939, 0
  %3941 = shl i64 %3939, 1
  store i64 %3941, i64* %RSI.i247, align 8
  %3942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3943 = zext i1 %3940 to i8
  store i8 %3943, i8* %3942, align 1
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3945 = trunc i64 %3941 to i32
  %3946 = and i32 %3945, 254
  %3947 = call i32 @llvm.ctpop.i32(i32 %3946)
  %3948 = trunc i32 %3947 to i8
  %3949 = and i8 %3948, 1
  %3950 = xor i8 %3949, 1
  store i8 %3950, i8* %3944, align 1
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3951, align 1
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3953 = icmp eq i64 %3941, 0
  %3954 = zext i1 %3953 to i8
  store i8 %3954, i8* %3952, align 1
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3956 = lshr i64 %3941, 63
  %3957 = trunc i64 %3956 to i8
  store i8 %3957, i8* %3955, align 1
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3958, align 1
  store %struct.Memory* %loadMem_4323f4, %struct.Memory** %MEMORY
  %loadMem_4323f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3960 = getelementptr inbounds %struct.GPR, %struct.GPR* %3959, i32 0, i32 33
  %3961 = getelementptr inbounds %struct.Reg, %struct.Reg* %3960, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %3961 to i64*
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 1
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 9
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %RSI.i245 = bitcast %union.anon* %3967 to i64*
  %3968 = load i64, i64* %RAX.i244
  %3969 = load i64, i64* %RSI.i245
  %3970 = load i64, i64* %PC.i243
  %3971 = add i64 %3970, 3
  store i64 %3971, i64* %PC.i243
  %3972 = add i64 %3969, %3968
  store i64 %3972, i64* %RAX.i244, align 8
  %3973 = icmp ult i64 %3972, %3968
  %3974 = icmp ult i64 %3972, %3969
  %3975 = or i1 %3973, %3974
  %3976 = zext i1 %3975 to i8
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3976, i8* %3977, align 1
  %3978 = trunc i64 %3972 to i32
  %3979 = and i32 %3978, 255
  %3980 = call i32 @llvm.ctpop.i32(i32 %3979)
  %3981 = trunc i32 %3980 to i8
  %3982 = and i8 %3981, 1
  %3983 = xor i8 %3982, 1
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3983, i8* %3984, align 1
  %3985 = xor i64 %3969, %3968
  %3986 = xor i64 %3985, %3972
  %3987 = lshr i64 %3986, 4
  %3988 = trunc i64 %3987 to i8
  %3989 = and i8 %3988, 1
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3989, i8* %3990, align 1
  %3991 = icmp eq i64 %3972, 0
  %3992 = zext i1 %3991 to i8
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3992, i8* %3993, align 1
  %3994 = lshr i64 %3972, 63
  %3995 = trunc i64 %3994 to i8
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3995, i8* %3996, align 1
  %3997 = lshr i64 %3968, 63
  %3998 = lshr i64 %3969, 63
  %3999 = xor i64 %3994, %3997
  %4000 = xor i64 %3994, %3998
  %4001 = add i64 %3999, %4000
  %4002 = icmp eq i64 %4001, 2
  %4003 = zext i1 %4002 to i8
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4003, i8* %4004, align 1
  store %struct.Memory* %loadMem_4323f8, %struct.Memory** %MEMORY
  %loadMem_4323fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %4007 to i64*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 9
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RSI.i241 = bitcast %union.anon* %4010 to i64*
  %4011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4012 = getelementptr inbounds %struct.GPR, %struct.GPR* %4011, i32 0, i32 15
  %4013 = getelementptr inbounds %struct.Reg, %struct.Reg* %4012, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %4013 to i64*
  %4014 = load i64, i64* %RBP.i242
  %4015 = sub i64 %4014, 8
  %4016 = load i64, i64* %PC.i240
  %4017 = add i64 %4016, 4
  store i64 %4017, i64* %PC.i240
  %4018 = inttoptr i64 %4015 to i64*
  %4019 = load i64, i64* %4018
  store i64 %4019, i64* %RSI.i241, align 8
  store %struct.Memory* %loadMem_4323fb, %struct.Memory** %MEMORY
  %loadMem_4323ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4021 = getelementptr inbounds %struct.GPR, %struct.GPR* %4020, i32 0, i32 33
  %4022 = getelementptr inbounds %struct.Reg, %struct.Reg* %4021, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4022 to i64*
  %4023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4024 = getelementptr inbounds %struct.GPR, %struct.GPR* %4023, i32 0, i32 9
  %4025 = getelementptr inbounds %struct.Reg, %struct.Reg* %4024, i32 0, i32 0
  %RSI.i239 = bitcast %union.anon* %4025 to i64*
  %4026 = load i64, i64* %RSI.i239
  %4027 = add i64 %4026, 320
  %4028 = load i64, i64* %PC.i238
  %4029 = add i64 %4028, 7
  store i64 %4029, i64* %PC.i238
  %4030 = inttoptr i64 %4027 to i64*
  %4031 = load i64, i64* %4030
  store i64 %4031, i64* %RSI.i239, align 8
  store %struct.Memory* %loadMem_4323ff, %struct.Memory** %MEMORY
  %loadMem_432406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4033 = getelementptr inbounds %struct.GPR, %struct.GPR* %4032, i32 0, i32 33
  %4034 = getelementptr inbounds %struct.Reg, %struct.Reg* %4033, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4034 to i64*
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4036 = getelementptr inbounds %struct.GPR, %struct.GPR* %4035, i32 0, i32 11
  %4037 = getelementptr inbounds %struct.Reg, %struct.Reg* %4036, i32 0, i32 0
  %RDI.i236 = bitcast %union.anon* %4037 to i64*
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4039 = getelementptr inbounds %struct.GPR, %struct.GPR* %4038, i32 0, i32 15
  %4040 = getelementptr inbounds %struct.Reg, %struct.Reg* %4039, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %4040 to i64*
  %4041 = load i64, i64* %RBP.i237
  %4042 = sub i64 %4041, 20
  %4043 = load i64, i64* %PC.i235
  %4044 = add i64 %4043, 4
  store i64 %4044, i64* %PC.i235
  %4045 = inttoptr i64 %4042 to i32*
  %4046 = load i32, i32* %4045
  %4047 = sext i32 %4046 to i64
  store i64 %4047, i64* %RDI.i236, align 8
  store %struct.Memory* %loadMem_432406, %struct.Memory** %MEMORY
  %loadMem_43240a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 1
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %4053 to i64*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 9
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RSI.i233 = bitcast %union.anon* %4056 to i64*
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4058 = getelementptr inbounds %struct.GPR, %struct.GPR* %4057, i32 0, i32 11
  %4059 = getelementptr inbounds %struct.Reg, %struct.Reg* %4058, i32 0, i32 0
  %RDI.i234 = bitcast %union.anon* %4059 to i64*
  %4060 = load i64, i64* %RSI.i233
  %4061 = load i64, i64* %RDI.i234
  %4062 = mul i64 %4061, 8
  %4063 = add i64 %4062, %4060
  %4064 = load i64, i64* %RAX.i232
  %4065 = load i64, i64* %PC.i231
  %4066 = add i64 %4065, 4
  store i64 %4066, i64* %PC.i231
  %4067 = inttoptr i64 %4063 to i64*
  store i64 %4064, i64* %4067
  store %struct.Memory* %loadMem_43240a, %struct.Memory** %MEMORY
  %loadMem_43240e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4069 = getelementptr inbounds %struct.GPR, %struct.GPR* %4068, i32 0, i32 33
  %4070 = getelementptr inbounds %struct.Reg, %struct.Reg* %4069, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %4070 to i64*
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 1
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 15
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %4076 to i64*
  %4077 = load i64, i64* %RBP.i230
  %4078 = sub i64 %4077, 8
  %4079 = load i64, i64* %PC.i228
  %4080 = add i64 %4079, 4
  store i64 %4080, i64* %PC.i228
  %4081 = inttoptr i64 %4078 to i64*
  %4082 = load i64, i64* %4081
  store i64 %4082, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_43240e, %struct.Memory** %MEMORY
  %loadMem_432412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 33
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4085 to i64*
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4087 = getelementptr inbounds %struct.GPR, %struct.GPR* %4086, i32 0, i32 1
  %4088 = getelementptr inbounds %struct.Reg, %struct.Reg* %4087, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %4088 to i64*
  %4089 = load i64, i64* %RAX.i227
  %4090 = add i64 %4089, 328
  %4091 = load i64, i64* %PC.i226
  %4092 = add i64 %4091, 7
  store i64 %4092, i64* %PC.i226
  %4093 = inttoptr i64 %4090 to i64*
  %4094 = load i64, i64* %4093
  store i64 %4094, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_432412, %struct.Memory** %MEMORY
  %loadMem_432419 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 33
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4099 = getelementptr inbounds %struct.GPR, %struct.GPR* %4098, i32 0, i32 1
  %4100 = getelementptr inbounds %struct.Reg, %struct.Reg* %4099, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %4100 to i64*
  %4101 = load i64, i64* %RAX.i225
  %4102 = load i64, i64* %PC.i224
  %4103 = add i64 %4102, 3
  store i64 %4103, i64* %PC.i224
  %4104 = inttoptr i64 %4101 to i64*
  %4105 = load i64, i64* %4104
  store i64 %4105, i64* %RAX.i225, align 8
  store %struct.Memory* %loadMem_432419, %struct.Memory** %MEMORY
  %loadMem_43241c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4107 = getelementptr inbounds %struct.GPR, %struct.GPR* %4106, i32 0, i32 33
  %4108 = getelementptr inbounds %struct.Reg, %struct.Reg* %4107, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %4108 to i64*
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 5
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 15
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %4114 to i64*
  %4115 = load i64, i64* %RBP.i223
  %4116 = sub i64 %4115, 20
  %4117 = load i64, i64* %PC.i221
  %4118 = add i64 %4117, 3
  store i64 %4118, i64* %PC.i221
  %4119 = inttoptr i64 %4116 to i32*
  %4120 = load i32, i32* %4119
  %4121 = zext i32 %4120 to i64
  store i64 %4121, i64* %RCX.i222, align 8
  store %struct.Memory* %loadMem_43241c, %struct.Memory** %MEMORY
  %loadMem_43241f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 33
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %4124 to i64*
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 5
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 15
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %RCX.i219
  %4132 = load i64, i64* %RBP.i220
  %4133 = sub i64 %4132, 12
  %4134 = load i64, i64* %PC.i218
  %4135 = add i64 %4134, 4
  store i64 %4135, i64* %PC.i218
  %4136 = inttoptr i64 %4133 to i32*
  %4137 = load i32, i32* %4136
  %4138 = shl i64 %4131, 32
  %4139 = ashr exact i64 %4138, 32
  %4140 = sext i32 %4137 to i64
  %4141 = mul i64 %4140, %4139
  %4142 = trunc i64 %4141 to i32
  %4143 = and i64 %4141, 4294967295
  store i64 %4143, i64* %RCX.i219, align 8
  %4144 = shl i64 %4141, 32
  %4145 = ashr exact i64 %4144, 32
  %4146 = icmp ne i64 %4145, %4141
  %4147 = zext i1 %4146 to i8
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4147, i8* %4148, align 1
  %4149 = and i32 %4142, 255
  %4150 = call i32 @llvm.ctpop.i32(i32 %4149)
  %4151 = trunc i32 %4150 to i8
  %4152 = and i8 %4151, 1
  %4153 = xor i8 %4152, 1
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4153, i8* %4154, align 1
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4155, align 1
  %4156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4156, align 1
  %4157 = lshr i32 %4142, 31
  %4158 = trunc i32 %4157 to i8
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4158, i8* %4159, align 1
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4147, i8* %4160, align 1
  store %struct.Memory* %loadMem_43241f, %struct.Memory** %MEMORY
  %loadMem_432423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 33
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 5
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %ECX.i216 = bitcast %union.anon* %4166 to i32*
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 9
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %4169 to i64*
  %4170 = load i32, i32* %ECX.i216
  %4171 = zext i32 %4170 to i64
  %4172 = load i64, i64* %PC.i215
  %4173 = add i64 %4172, 3
  store i64 %4173, i64* %PC.i215
  %4174 = shl i64 %4171, 32
  %4175 = ashr exact i64 %4174, 32
  store i64 %4175, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_432423, %struct.Memory** %MEMORY
  %loadMem_432426 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 33
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 9
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RSI.i214 = bitcast %union.anon* %4181 to i64*
  %4182 = load i64, i64* %RSI.i214
  %4183 = load i64, i64* %PC.i213
  %4184 = add i64 %4183, 4
  store i64 %4184, i64* %PC.i213
  %4185 = shl i64 %4182, 1
  %4186 = icmp slt i64 %4185, 0
  %4187 = shl i64 %4185, 1
  store i64 %4187, i64* %RSI.i214, align 8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4189 = zext i1 %4186 to i8
  store i8 %4189, i8* %4188, align 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4191 = trunc i64 %4187 to i32
  %4192 = and i32 %4191, 254
  %4193 = call i32 @llvm.ctpop.i32(i32 %4192)
  %4194 = trunc i32 %4193 to i8
  %4195 = and i8 %4194, 1
  %4196 = xor i8 %4195, 1
  store i8 %4196, i8* %4190, align 1
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4197, align 1
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4199 = icmp eq i64 %4187, 0
  %4200 = zext i1 %4199 to i8
  store i8 %4200, i8* %4198, align 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4202 = lshr i64 %4187, 63
  %4203 = trunc i64 %4202 to i8
  store i8 %4203, i8* %4201, align 1
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4204, align 1
  store %struct.Memory* %loadMem_432426, %struct.Memory** %MEMORY
  %loadMem_43242a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 33
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %4207 to i64*
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4209 = getelementptr inbounds %struct.GPR, %struct.GPR* %4208, i32 0, i32 1
  %4210 = getelementptr inbounds %struct.Reg, %struct.Reg* %4209, i32 0, i32 0
  %RAX.i211 = bitcast %union.anon* %4210 to i64*
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4212 = getelementptr inbounds %struct.GPR, %struct.GPR* %4211, i32 0, i32 9
  %4213 = getelementptr inbounds %struct.Reg, %struct.Reg* %4212, i32 0, i32 0
  %RSI.i212 = bitcast %union.anon* %4213 to i64*
  %4214 = load i64, i64* %RAX.i211
  %4215 = load i64, i64* %RSI.i212
  %4216 = load i64, i64* %PC.i210
  %4217 = add i64 %4216, 3
  store i64 %4217, i64* %PC.i210
  %4218 = add i64 %4215, %4214
  store i64 %4218, i64* %RAX.i211, align 8
  %4219 = icmp ult i64 %4218, %4214
  %4220 = icmp ult i64 %4218, %4215
  %4221 = or i1 %4219, %4220
  %4222 = zext i1 %4221 to i8
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4222, i8* %4223, align 1
  %4224 = trunc i64 %4218 to i32
  %4225 = and i32 %4224, 255
  %4226 = call i32 @llvm.ctpop.i32(i32 %4225)
  %4227 = trunc i32 %4226 to i8
  %4228 = and i8 %4227, 1
  %4229 = xor i8 %4228, 1
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4229, i8* %4230, align 1
  %4231 = xor i64 %4215, %4214
  %4232 = xor i64 %4231, %4218
  %4233 = lshr i64 %4232, 4
  %4234 = trunc i64 %4233 to i8
  %4235 = and i8 %4234, 1
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4235, i8* %4236, align 1
  %4237 = icmp eq i64 %4218, 0
  %4238 = zext i1 %4237 to i8
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4238, i8* %4239, align 1
  %4240 = lshr i64 %4218, 63
  %4241 = trunc i64 %4240 to i8
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4241, i8* %4242, align 1
  %4243 = lshr i64 %4214, 63
  %4244 = lshr i64 %4215, 63
  %4245 = xor i64 %4240, %4243
  %4246 = xor i64 %4240, %4244
  %4247 = add i64 %4245, %4246
  %4248 = icmp eq i64 %4247, 2
  %4249 = zext i1 %4248 to i8
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4249, i8* %4250, align 1
  store %struct.Memory* %loadMem_43242a, %struct.Memory** %MEMORY
  %loadMem_43242d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 9
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RSI.i208 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 15
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %RBP.i209
  %4261 = sub i64 %4260, 8
  %4262 = load i64, i64* %PC.i207
  %4263 = add i64 %4262, 4
  store i64 %4263, i64* %PC.i207
  %4264 = inttoptr i64 %4261 to i64*
  %4265 = load i64, i64* %4264
  store i64 %4265, i64* %RSI.i208, align 8
  store %struct.Memory* %loadMem_43242d, %struct.Memory** %MEMORY
  %loadMem_432431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 33
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %4268 to i64*
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 9
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %RSI.i206 = bitcast %union.anon* %4271 to i64*
  %4272 = load i64, i64* %RSI.i206
  %4273 = add i64 %4272, 328
  %4274 = load i64, i64* %PC.i205
  %4275 = add i64 %4274, 7
  store i64 %4275, i64* %PC.i205
  %4276 = inttoptr i64 %4273 to i64*
  %4277 = load i64, i64* %4276
  store i64 %4277, i64* %RSI.i206, align 8
  store %struct.Memory* %loadMem_432431, %struct.Memory** %MEMORY
  %loadMem_432438 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 33
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %4280 to i64*
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 11
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %RDI.i203 = bitcast %union.anon* %4283 to i64*
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4285 = getelementptr inbounds %struct.GPR, %struct.GPR* %4284, i32 0, i32 15
  %4286 = getelementptr inbounds %struct.Reg, %struct.Reg* %4285, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %4286 to i64*
  %4287 = load i64, i64* %RBP.i204
  %4288 = sub i64 %4287, 20
  %4289 = load i64, i64* %PC.i202
  %4290 = add i64 %4289, 4
  store i64 %4290, i64* %PC.i202
  %4291 = inttoptr i64 %4288 to i32*
  %4292 = load i32, i32* %4291
  %4293 = sext i32 %4292 to i64
  store i64 %4293, i64* %RDI.i203, align 8
  store %struct.Memory* %loadMem_432438, %struct.Memory** %MEMORY
  %loadMem_43243c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 33
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 1
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RAX.i199 = bitcast %union.anon* %4299 to i64*
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 9
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %RSI.i200 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 11
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RDI.i201 = bitcast %union.anon* %4305 to i64*
  %4306 = load i64, i64* %RSI.i200
  %4307 = load i64, i64* %RDI.i201
  %4308 = mul i64 %4307, 8
  %4309 = add i64 %4308, %4306
  %4310 = load i64, i64* %RAX.i199
  %4311 = load i64, i64* %PC.i198
  %4312 = add i64 %4311, 4
  store i64 %4312, i64* %PC.i198
  %4313 = inttoptr i64 %4309 to i64*
  store i64 %4310, i64* %4313
  store %struct.Memory* %loadMem_43243c, %struct.Memory** %MEMORY
  %loadMem_432440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i197
  %4324 = sub i64 %4323, 20
  %4325 = load i64, i64* %PC.i195
  %4326 = add i64 %4325, 3
  store i64 %4326, i64* %PC.i195
  %4327 = inttoptr i64 %4324 to i32*
  %4328 = load i32, i32* %4327
  %4329 = zext i32 %4328 to i64
  store i64 %4329, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_432440, %struct.Memory** %MEMORY
  %loadMem_432443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 1
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RAX.i194
  %4337 = load i64, i64* %PC.i193
  %4338 = add i64 %4337, 3
  store i64 %4338, i64* %PC.i193
  %4339 = trunc i64 %4336 to i32
  %4340 = add i32 1, %4339
  %4341 = zext i32 %4340 to i64
  store i64 %4341, i64* %RAX.i194, align 8
  %4342 = icmp ult i32 %4340, %4339
  %4343 = icmp ult i32 %4340, 1
  %4344 = or i1 %4342, %4343
  %4345 = zext i1 %4344 to i8
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4345, i8* %4346, align 1
  %4347 = and i32 %4340, 255
  %4348 = call i32 @llvm.ctpop.i32(i32 %4347)
  %4349 = trunc i32 %4348 to i8
  %4350 = and i8 %4349, 1
  %4351 = xor i8 %4350, 1
  %4352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4351, i8* %4352, align 1
  %4353 = xor i64 1, %4336
  %4354 = trunc i64 %4353 to i32
  %4355 = xor i32 %4354, %4340
  %4356 = lshr i32 %4355, 4
  %4357 = trunc i32 %4356 to i8
  %4358 = and i8 %4357, 1
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4358, i8* %4359, align 1
  %4360 = icmp eq i32 %4340, 0
  %4361 = zext i1 %4360 to i8
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4361, i8* %4362, align 1
  %4363 = lshr i32 %4340, 31
  %4364 = trunc i32 %4363 to i8
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4364, i8* %4365, align 1
  %4366 = lshr i32 %4339, 31
  %4367 = xor i32 %4363, %4366
  %4368 = add i32 %4367, %4363
  %4369 = icmp eq i32 %4368, 2
  %4370 = zext i1 %4369 to i8
  %4371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4370, i8* %4371, align 1
  store %struct.Memory* %loadMem_432443, %struct.Memory** %MEMORY
  %loadMem_432446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4373 = getelementptr inbounds %struct.GPR, %struct.GPR* %4372, i32 0, i32 33
  %4374 = getelementptr inbounds %struct.Reg, %struct.Reg* %4373, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %4374 to i64*
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 1
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %EAX.i191 = bitcast %union.anon* %4377 to i32*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 15
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %4380 to i64*
  %4381 = load i64, i64* %RBP.i192
  %4382 = sub i64 %4381, 20
  %4383 = load i32, i32* %EAX.i191
  %4384 = zext i32 %4383 to i64
  %4385 = load i64, i64* %PC.i190
  %4386 = add i64 %4385, 3
  store i64 %4386, i64* %PC.i190
  %4387 = inttoptr i64 %4382 to i32*
  store i32 %4383, i32* %4387
  store %struct.Memory* %loadMem_432446, %struct.Memory** %MEMORY
  %loadMem_432449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 33
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %4390 to i64*
  %4391 = load i64, i64* %PC.i189
  %4392 = add i64 %4391, -124
  %4393 = load i64, i64* %PC.i189
  %4394 = add i64 %4393, 5
  store i64 %4394, i64* %PC.i189
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4392, i64* %4395, align 8
  store %struct.Memory* %loadMem_432449, %struct.Memory** %MEMORY
  br label %block_.L_4323cd

block_.L_43244e:                                  ; preds = %block_.L_4323cd
  %loadMem_43244e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 33
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %4398 to i64*
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 15
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %4401 to i64*
  %4402 = load i64, i64* %RBP.i188
  %4403 = sub i64 %4402, 20
  %4404 = load i64, i64* %PC.i187
  %4405 = add i64 %4404, 7
  store i64 %4405, i64* %PC.i187
  %4406 = inttoptr i64 %4403 to i32*
  store i32 0, i32* %4406
  store %struct.Memory* %loadMem_43244e, %struct.Memory** %MEMORY
  br label %block_.L_432455

block_.L_432455:                                  ; preds = %block_43245f, %block_.L_43244e
  %loadMem_432455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4408 = getelementptr inbounds %struct.GPR, %struct.GPR* %4407, i32 0, i32 33
  %4409 = getelementptr inbounds %struct.Reg, %struct.Reg* %4408, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %4409 to i64*
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 15
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %4412 to i64*
  %4413 = load i64, i64* %RBP.i186
  %4414 = sub i64 %4413, 20
  %4415 = load i64, i64* %PC.i185
  %4416 = add i64 %4415, 4
  store i64 %4416, i64* %PC.i185
  %4417 = inttoptr i64 %4414 to i32*
  %4418 = load i32, i32* %4417
  %4419 = sub i32 %4418, 7
  %4420 = icmp ult i32 %4418, 7
  %4421 = zext i1 %4420 to i8
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4421, i8* %4422, align 1
  %4423 = and i32 %4419, 255
  %4424 = call i32 @llvm.ctpop.i32(i32 %4423)
  %4425 = trunc i32 %4424 to i8
  %4426 = and i8 %4425, 1
  %4427 = xor i8 %4426, 1
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4427, i8* %4428, align 1
  %4429 = xor i32 %4418, 7
  %4430 = xor i32 %4429, %4419
  %4431 = lshr i32 %4430, 4
  %4432 = trunc i32 %4431 to i8
  %4433 = and i8 %4432, 1
  %4434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4433, i8* %4434, align 1
  %4435 = icmp eq i32 %4419, 0
  %4436 = zext i1 %4435 to i8
  %4437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4436, i8* %4437, align 1
  %4438 = lshr i32 %4419, 31
  %4439 = trunc i32 %4438 to i8
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4439, i8* %4440, align 1
  %4441 = lshr i32 %4418, 31
  %4442 = xor i32 %4438, %4441
  %4443 = add i32 %4442, %4441
  %4444 = icmp eq i32 %4443, 2
  %4445 = zext i1 %4444 to i8
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4445, i8* %4446, align 1
  store %struct.Memory* %loadMem_432455, %struct.Memory** %MEMORY
  %loadMem_432459 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 33
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %4449 to i64*
  %4450 = load i64, i64* %PC.i184
  %4451 = add i64 %4450, 70
  %4452 = load i64, i64* %PC.i184
  %4453 = add i64 %4452, 6
  %4454 = load i64, i64* %PC.i184
  %4455 = add i64 %4454, 6
  store i64 %4455, i64* %PC.i184
  %4456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4457 = load i8, i8* %4456, align 1
  %4458 = icmp ne i8 %4457, 0
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4460 = load i8, i8* %4459, align 1
  %4461 = icmp ne i8 %4460, 0
  %4462 = xor i1 %4458, %4461
  %4463 = xor i1 %4462, true
  %4464 = zext i1 %4463 to i8
  store i8 %4464, i8* %BRANCH_TAKEN, align 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4466 = select i1 %4462, i64 %4453, i64 %4451
  store i64 %4466, i64* %4465, align 8
  store %struct.Memory* %loadMem_432459, %struct.Memory** %MEMORY
  %loadBr_432459 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_432459 = icmp eq i8 %loadBr_432459, 1
  br i1 %cmpBr_432459, label %block_.L_43249f, label %block_43245f

block_43245f:                                     ; preds = %block_.L_432455
  %loadMem_43245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 33
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %4469 to i64*
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4471 = getelementptr inbounds %struct.GPR, %struct.GPR* %4470, i32 0, i32 1
  %4472 = getelementptr inbounds %struct.Reg, %struct.Reg* %4471, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %4472 to i64*
  %4473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4474 = getelementptr inbounds %struct.GPR, %struct.GPR* %4473, i32 0, i32 15
  %4475 = getelementptr inbounds %struct.Reg, %struct.Reg* %4474, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %4475 to i64*
  %4476 = load i64, i64* %RBP.i183
  %4477 = sub i64 %4476, 8
  %4478 = load i64, i64* %PC.i181
  %4479 = add i64 %4478, 4
  store i64 %4479, i64* %PC.i181
  %4480 = inttoptr i64 %4477 to i64*
  %4481 = load i64, i64* %4480
  store i64 %4481, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_43245f, %struct.Memory** %MEMORY
  %loadMem_432463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4483 = getelementptr inbounds %struct.GPR, %struct.GPR* %4482, i32 0, i32 33
  %4484 = getelementptr inbounds %struct.Reg, %struct.Reg* %4483, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %4484 to i64*
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 1
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %4487 to i64*
  %4488 = load i64, i64* %RAX.i180
  %4489 = add i64 %4488, 312
  %4490 = load i64, i64* %PC.i179
  %4491 = add i64 %4490, 7
  store i64 %4491, i64* %PC.i179
  %4492 = inttoptr i64 %4489 to i64*
  %4493 = load i64, i64* %4492
  store i64 %4493, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_432463, %struct.Memory** %MEMORY
  %loadMem_43246a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4498 = getelementptr inbounds %struct.GPR, %struct.GPR* %4497, i32 0, i32 1
  %4499 = getelementptr inbounds %struct.Reg, %struct.Reg* %4498, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %4499 to i64*
  %4500 = load i64, i64* %RAX.i178
  %4501 = load i64, i64* %PC.i177
  %4502 = add i64 %4501, 3
  store i64 %4502, i64* %PC.i177
  %4503 = inttoptr i64 %4500 to i64*
  %4504 = load i64, i64* %4503
  store i64 %4504, i64* %RAX.i178, align 8
  store %struct.Memory* %loadMem_43246a, %struct.Memory** %MEMORY
  %loadMem_43246d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 33
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %4507 to i64*
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4509 = getelementptr inbounds %struct.GPR, %struct.GPR* %4508, i32 0, i32 5
  %4510 = getelementptr inbounds %struct.Reg, %struct.Reg* %4509, i32 0, i32 0
  %RCX.i175 = bitcast %union.anon* %4510 to i64*
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4512 = getelementptr inbounds %struct.GPR, %struct.GPR* %4511, i32 0, i32 15
  %4513 = getelementptr inbounds %struct.Reg, %struct.Reg* %4512, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %4513 to i64*
  %4514 = load i64, i64* %RBP.i176
  %4515 = sub i64 %4514, 20
  %4516 = load i64, i64* %PC.i174
  %4517 = add i64 %4516, 3
  store i64 %4517, i64* %PC.i174
  %4518 = inttoptr i64 %4515 to i32*
  %4519 = load i32, i32* %4518
  %4520 = zext i32 %4519 to i64
  store i64 %4520, i64* %RCX.i175, align 8
  store %struct.Memory* %loadMem_43246d, %struct.Memory** %MEMORY
  %loadMem_432470 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 33
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %4523 to i64*
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4525 = getelementptr inbounds %struct.GPR, %struct.GPR* %4524, i32 0, i32 5
  %4526 = getelementptr inbounds %struct.Reg, %struct.Reg* %4525, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %4526 to i64*
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 15
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %RBP.i173 = bitcast %union.anon* %4529 to i64*
  %4530 = load i64, i64* %RCX.i172
  %4531 = load i64, i64* %RBP.i173
  %4532 = sub i64 %4531, 12
  %4533 = load i64, i64* %PC.i171
  %4534 = add i64 %4533, 4
  store i64 %4534, i64* %PC.i171
  %4535 = inttoptr i64 %4532 to i32*
  %4536 = load i32, i32* %4535
  %4537 = shl i64 %4530, 32
  %4538 = ashr exact i64 %4537, 32
  %4539 = sext i32 %4536 to i64
  %4540 = mul i64 %4539, %4538
  %4541 = trunc i64 %4540 to i32
  %4542 = and i64 %4540, 4294967295
  store i64 %4542, i64* %RCX.i172, align 8
  %4543 = shl i64 %4540, 32
  %4544 = ashr exact i64 %4543, 32
  %4545 = icmp ne i64 %4544, %4540
  %4546 = zext i1 %4545 to i8
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4546, i8* %4547, align 1
  %4548 = and i32 %4541, 255
  %4549 = call i32 @llvm.ctpop.i32(i32 %4548)
  %4550 = trunc i32 %4549 to i8
  %4551 = and i8 %4550, 1
  %4552 = xor i8 %4551, 1
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4552, i8* %4553, align 1
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4554, align 1
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4555, align 1
  %4556 = lshr i32 %4541, 31
  %4557 = trunc i32 %4556 to i8
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4557, i8* %4558, align 1
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4546, i8* %4559, align 1
  store %struct.Memory* %loadMem_432470, %struct.Memory** %MEMORY
  %loadMem_432474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4561 = getelementptr inbounds %struct.GPR, %struct.GPR* %4560, i32 0, i32 33
  %4562 = getelementptr inbounds %struct.Reg, %struct.Reg* %4561, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %4562 to i64*
  %4563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4564 = getelementptr inbounds %struct.GPR, %struct.GPR* %4563, i32 0, i32 5
  %4565 = getelementptr inbounds %struct.Reg, %struct.Reg* %4564, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4565 to i32*
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 7
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %4568 to i64*
  %4569 = load i32, i32* %ECX.i
  %4570 = zext i32 %4569 to i64
  %4571 = load i64, i64* %PC.i169
  %4572 = add i64 %4571, 3
  store i64 %4572, i64* %PC.i169
  %4573 = shl i64 %4570, 32
  %4574 = ashr exact i64 %4573, 32
  store i64 %4574, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_432474, %struct.Memory** %MEMORY
  %loadMem_432477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4576 = getelementptr inbounds %struct.GPR, %struct.GPR* %4575, i32 0, i32 33
  %4577 = getelementptr inbounds %struct.Reg, %struct.Reg* %4576, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %4577 to i64*
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4579 = getelementptr inbounds %struct.GPR, %struct.GPR* %4578, i32 0, i32 7
  %4580 = getelementptr inbounds %struct.Reg, %struct.Reg* %4579, i32 0, i32 0
  %RDX.i168 = bitcast %union.anon* %4580 to i64*
  %4581 = load i64, i64* %RDX.i168
  %4582 = load i64, i64* %PC.i167
  %4583 = add i64 %4582, 4
  store i64 %4583, i64* %PC.i167
  %4584 = shl i64 %4581, 1
  %4585 = icmp slt i64 %4584, 0
  %4586 = shl i64 %4584, 1
  store i64 %4586, i64* %RDX.i168, align 8
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4588 = zext i1 %4585 to i8
  store i8 %4588, i8* %4587, align 1
  %4589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4590 = trunc i64 %4586 to i32
  %4591 = and i32 %4590, 254
  %4592 = call i32 @llvm.ctpop.i32(i32 %4591)
  %4593 = trunc i32 %4592 to i8
  %4594 = and i8 %4593, 1
  %4595 = xor i8 %4594, 1
  store i8 %4595, i8* %4589, align 1
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4596, align 1
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4598 = icmp eq i64 %4586, 0
  %4599 = zext i1 %4598 to i8
  store i8 %4599, i8* %4597, align 1
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4601 = lshr i64 %4586, 63
  %4602 = trunc i64 %4601 to i8
  store i8 %4602, i8* %4600, align 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4603, align 1
  store %struct.Memory* %loadMem_432477, %struct.Memory** %MEMORY
  %loadMem_43247b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4605 = getelementptr inbounds %struct.GPR, %struct.GPR* %4604, i32 0, i32 33
  %4606 = getelementptr inbounds %struct.Reg, %struct.Reg* %4605, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %4606 to i64*
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4608 = getelementptr inbounds %struct.GPR, %struct.GPR* %4607, i32 0, i32 1
  %4609 = getelementptr inbounds %struct.Reg, %struct.Reg* %4608, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %4609 to i64*
  %4610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4611 = getelementptr inbounds %struct.GPR, %struct.GPR* %4610, i32 0, i32 7
  %4612 = getelementptr inbounds %struct.Reg, %struct.Reg* %4611, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %4612 to i64*
  %4613 = load i64, i64* %RAX.i165
  %4614 = load i64, i64* %RDX.i166
  %4615 = load i64, i64* %PC.i164
  %4616 = add i64 %4615, 3
  store i64 %4616, i64* %PC.i164
  %4617 = add i64 %4614, %4613
  store i64 %4617, i64* %RAX.i165, align 8
  %4618 = icmp ult i64 %4617, %4613
  %4619 = icmp ult i64 %4617, %4614
  %4620 = or i1 %4618, %4619
  %4621 = zext i1 %4620 to i8
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4621, i8* %4622, align 1
  %4623 = trunc i64 %4617 to i32
  %4624 = and i32 %4623, 255
  %4625 = call i32 @llvm.ctpop.i32(i32 %4624)
  %4626 = trunc i32 %4625 to i8
  %4627 = and i8 %4626, 1
  %4628 = xor i8 %4627, 1
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4628, i8* %4629, align 1
  %4630 = xor i64 %4614, %4613
  %4631 = xor i64 %4630, %4617
  %4632 = lshr i64 %4631, 4
  %4633 = trunc i64 %4632 to i8
  %4634 = and i8 %4633, 1
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4634, i8* %4635, align 1
  %4636 = icmp eq i64 %4617, 0
  %4637 = zext i1 %4636 to i8
  %4638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4637, i8* %4638, align 1
  %4639 = lshr i64 %4617, 63
  %4640 = trunc i64 %4639 to i8
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4640, i8* %4641, align 1
  %4642 = lshr i64 %4613, 63
  %4643 = lshr i64 %4614, 63
  %4644 = xor i64 %4639, %4642
  %4645 = xor i64 %4639, %4643
  %4646 = add i64 %4644, %4645
  %4647 = icmp eq i64 %4646, 2
  %4648 = zext i1 %4647 to i8
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4648, i8* %4649, align 1
  store %struct.Memory* %loadMem_43247b, %struct.Memory** %MEMORY
  %loadMem_43247e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4651 = getelementptr inbounds %struct.GPR, %struct.GPR* %4650, i32 0, i32 33
  %4652 = getelementptr inbounds %struct.Reg, %struct.Reg* %4651, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %4652 to i64*
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4654 = getelementptr inbounds %struct.GPR, %struct.GPR* %4653, i32 0, i32 7
  %4655 = getelementptr inbounds %struct.Reg, %struct.Reg* %4654, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %4655 to i64*
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 15
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %4658 to i64*
  %4659 = load i64, i64* %RBP.i163
  %4660 = sub i64 %4659, 8
  %4661 = load i64, i64* %PC.i161
  %4662 = add i64 %4661, 4
  store i64 %4662, i64* %PC.i161
  %4663 = inttoptr i64 %4660 to i64*
  %4664 = load i64, i64* %4663
  store i64 %4664, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_43247e, %struct.Memory** %MEMORY
  %loadMem_432482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 33
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 7
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RDX.i160 = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %RDX.i160
  %4672 = add i64 %4671, 312
  %4673 = load i64, i64* %PC.i159
  %4674 = add i64 %4673, 7
  store i64 %4674, i64* %PC.i159
  %4675 = inttoptr i64 %4672 to i64*
  %4676 = load i64, i64* %4675
  store i64 %4676, i64* %RDX.i160, align 8
  store %struct.Memory* %loadMem_432482, %struct.Memory** %MEMORY
  %loadMem_432489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 33
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 9
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RSI.i157 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 15
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %4685 to i64*
  %4686 = load i64, i64* %RBP.i158
  %4687 = sub i64 %4686, 20
  %4688 = load i64, i64* %PC.i156
  %4689 = add i64 %4688, 4
  store i64 %4689, i64* %PC.i156
  %4690 = inttoptr i64 %4687 to i32*
  %4691 = load i32, i32* %4690
  %4692 = sext i32 %4691 to i64
  store i64 %4692, i64* %RSI.i157, align 8
  store %struct.Memory* %loadMem_432489, %struct.Memory** %MEMORY
  %loadMem_43248d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 33
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 1
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RAX.i153 = bitcast %union.anon* %4698 to i64*
  %4699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4700 = getelementptr inbounds %struct.GPR, %struct.GPR* %4699, i32 0, i32 7
  %4701 = getelementptr inbounds %struct.Reg, %struct.Reg* %4700, i32 0, i32 0
  %RDX.i154 = bitcast %union.anon* %4701 to i64*
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 9
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %RSI.i155 = bitcast %union.anon* %4704 to i64*
  %4705 = load i64, i64* %RDX.i154
  %4706 = load i64, i64* %RSI.i155
  %4707 = mul i64 %4706, 8
  %4708 = add i64 %4707, %4705
  %4709 = load i64, i64* %RAX.i153
  %4710 = load i64, i64* %PC.i152
  %4711 = add i64 %4710, 4
  store i64 %4711, i64* %PC.i152
  %4712 = inttoptr i64 %4708 to i64*
  store i64 %4709, i64* %4712
  store %struct.Memory* %loadMem_43248d, %struct.Memory** %MEMORY
  %loadMem_432491 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 33
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 1
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 15
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %4721 to i64*
  %4722 = load i64, i64* %RBP.i151
  %4723 = sub i64 %4722, 20
  %4724 = load i64, i64* %PC.i149
  %4725 = add i64 %4724, 3
  store i64 %4725, i64* %PC.i149
  %4726 = inttoptr i64 %4723 to i32*
  %4727 = load i32, i32* %4726
  %4728 = zext i32 %4727 to i64
  store i64 %4728, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_432491, %struct.Memory** %MEMORY
  %loadMem_432494 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 33
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 1
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RAX.i148 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %RAX.i148
  %4736 = load i64, i64* %PC.i147
  %4737 = add i64 %4736, 3
  store i64 %4737, i64* %PC.i147
  %4738 = trunc i64 %4735 to i32
  %4739 = add i32 1, %4738
  %4740 = zext i32 %4739 to i64
  store i64 %4740, i64* %RAX.i148, align 8
  %4741 = icmp ult i32 %4739, %4738
  %4742 = icmp ult i32 %4739, 1
  %4743 = or i1 %4741, %4742
  %4744 = zext i1 %4743 to i8
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4744, i8* %4745, align 1
  %4746 = and i32 %4739, 255
  %4747 = call i32 @llvm.ctpop.i32(i32 %4746)
  %4748 = trunc i32 %4747 to i8
  %4749 = and i8 %4748, 1
  %4750 = xor i8 %4749, 1
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4750, i8* %4751, align 1
  %4752 = xor i64 1, %4735
  %4753 = trunc i64 %4752 to i32
  %4754 = xor i32 %4753, %4739
  %4755 = lshr i32 %4754, 4
  %4756 = trunc i32 %4755 to i8
  %4757 = and i8 %4756, 1
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4757, i8* %4758, align 1
  %4759 = icmp eq i32 %4739, 0
  %4760 = zext i1 %4759 to i8
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4760, i8* %4761, align 1
  %4762 = lshr i32 %4739, 31
  %4763 = trunc i32 %4762 to i8
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4763, i8* %4764, align 1
  %4765 = lshr i32 %4738, 31
  %4766 = xor i32 %4762, %4765
  %4767 = add i32 %4766, %4762
  %4768 = icmp eq i32 %4767, 2
  %4769 = zext i1 %4768 to i8
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4769, i8* %4770, align 1
  store %struct.Memory* %loadMem_432494, %struct.Memory** %MEMORY
  %loadMem_432497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4772 = getelementptr inbounds %struct.GPR, %struct.GPR* %4771, i32 0, i32 33
  %4773 = getelementptr inbounds %struct.Reg, %struct.Reg* %4772, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %4773 to i64*
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 1
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %EAX.i145 = bitcast %union.anon* %4776 to i32*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 15
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %4779 to i64*
  %4780 = load i64, i64* %RBP.i146
  %4781 = sub i64 %4780, 20
  %4782 = load i32, i32* %EAX.i145
  %4783 = zext i32 %4782 to i64
  %4784 = load i64, i64* %PC.i144
  %4785 = add i64 %4784, 3
  store i64 %4785, i64* %PC.i144
  %4786 = inttoptr i64 %4781 to i32*
  store i32 %4782, i32* %4786
  store %struct.Memory* %loadMem_432497, %struct.Memory** %MEMORY
  %loadMem_43249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4788 = getelementptr inbounds %struct.GPR, %struct.GPR* %4787, i32 0, i32 33
  %4789 = getelementptr inbounds %struct.Reg, %struct.Reg* %4788, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %4789 to i64*
  %4790 = load i64, i64* %PC.i143
  %4791 = add i64 %4790, -69
  %4792 = load i64, i64* %PC.i143
  %4793 = add i64 %4792, 5
  store i64 %4793, i64* %PC.i143
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4791, i64* %4794, align 8
  store %struct.Memory* %loadMem_43249a, %struct.Memory** %MEMORY
  br label %block_.L_432455

block_.L_43249f:                                  ; preds = %block_.L_432455
  %loadMem_43249f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 33
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %4797 to i64*
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 15
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %4800 to i64*
  %4801 = load i64, i64* %RBP.i142
  %4802 = sub i64 %4801, 20
  %4803 = load i64, i64* %PC.i141
  %4804 = add i64 %4803, 7
  store i64 %4804, i64* %PC.i141
  %4805 = inttoptr i64 %4802 to i32*
  store i32 0, i32* %4805
  store %struct.Memory* %loadMem_43249f, %struct.Memory** %MEMORY
  br label %block_.L_4324a6

block_.L_4324a6:                                  ; preds = %block_4324b0, %block_.L_43249f
  %loadMem_4324a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 15
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %RBP.i140
  %4813 = sub i64 %4812, 20
  %4814 = load i64, i64* %PC.i139
  %4815 = add i64 %4814, 4
  store i64 %4815, i64* %PC.i139
  %4816 = inttoptr i64 %4813 to i32*
  %4817 = load i32, i32* %4816
  %4818 = sub i32 %4817, 7
  %4819 = icmp ult i32 %4817, 7
  %4820 = zext i1 %4819 to i8
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4820, i8* %4821, align 1
  %4822 = and i32 %4818, 255
  %4823 = call i32 @llvm.ctpop.i32(i32 %4822)
  %4824 = trunc i32 %4823 to i8
  %4825 = and i8 %4824, 1
  %4826 = xor i8 %4825, 1
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4826, i8* %4827, align 1
  %4828 = xor i32 %4817, 7
  %4829 = xor i32 %4828, %4818
  %4830 = lshr i32 %4829, 4
  %4831 = trunc i32 %4830 to i8
  %4832 = and i8 %4831, 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4832, i8* %4833, align 1
  %4834 = icmp eq i32 %4818, 0
  %4835 = zext i1 %4834 to i8
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4835, i8* %4836, align 1
  %4837 = lshr i32 %4818, 31
  %4838 = trunc i32 %4837 to i8
  %4839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4838, i8* %4839, align 1
  %4840 = lshr i32 %4817, 31
  %4841 = xor i32 %4837, %4840
  %4842 = add i32 %4841, %4840
  %4843 = icmp eq i32 %4842, 2
  %4844 = zext i1 %4843 to i8
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4844, i8* %4845, align 1
  store %struct.Memory* %loadMem_4324a6, %struct.Memory** %MEMORY
  %loadMem_4324aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4847 = getelementptr inbounds %struct.GPR, %struct.GPR* %4846, i32 0, i32 33
  %4848 = getelementptr inbounds %struct.Reg, %struct.Reg* %4847, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %4848 to i64*
  %4849 = load i64, i64* %PC.i138
  %4850 = add i64 %4849, 45
  %4851 = load i64, i64* %PC.i138
  %4852 = add i64 %4851, 6
  %4853 = load i64, i64* %PC.i138
  %4854 = add i64 %4853, 6
  store i64 %4854, i64* %PC.i138
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4856 = load i8, i8* %4855, align 1
  %4857 = icmp ne i8 %4856, 0
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4859 = load i8, i8* %4858, align 1
  %4860 = icmp ne i8 %4859, 0
  %4861 = xor i1 %4857, %4860
  %4862 = xor i1 %4861, true
  %4863 = zext i1 %4862 to i8
  store i8 %4863, i8* %BRANCH_TAKEN, align 1
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4865 = select i1 %4861, i64 %4852, i64 %4850
  store i64 %4865, i64* %4864, align 8
  store %struct.Memory* %loadMem_4324aa, %struct.Memory** %MEMORY
  %loadBr_4324aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4324aa = icmp eq i8 %loadBr_4324aa, 1
  br i1 %cmpBr_4324aa, label %block_.L_4324d7, label %block_4324b0

block_4324b0:                                     ; preds = %block_.L_4324a6
  %loadMem_4324b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4867 = getelementptr inbounds %struct.GPR, %struct.GPR* %4866, i32 0, i32 33
  %4868 = getelementptr inbounds %struct.Reg, %struct.Reg* %4867, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %4868 to i64*
  %4869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4870 = getelementptr inbounds %struct.GPR, %struct.GPR* %4869, i32 0, i32 1
  %4871 = getelementptr inbounds %struct.Reg, %struct.Reg* %4870, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %4871 to i64*
  %4872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4873 = getelementptr inbounds %struct.GPR, %struct.GPR* %4872, i32 0, i32 15
  %4874 = getelementptr inbounds %struct.Reg, %struct.Reg* %4873, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %4874 to i64*
  %4875 = load i64, i64* %RBP.i137
  %4876 = sub i64 %4875, 8
  %4877 = load i64, i64* %PC.i135
  %4878 = add i64 %4877, 4
  store i64 %4878, i64* %PC.i135
  %4879 = inttoptr i64 %4876 to i64*
  %4880 = load i64, i64* %4879
  store i64 %4880, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_4324b0, %struct.Memory** %MEMORY
  %loadMem_4324b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4882 = getelementptr inbounds %struct.GPR, %struct.GPR* %4881, i32 0, i32 33
  %4883 = getelementptr inbounds %struct.Reg, %struct.Reg* %4882, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %4883 to i64*
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4885 = getelementptr inbounds %struct.GPR, %struct.GPR* %4884, i32 0, i32 1
  %4886 = getelementptr inbounds %struct.Reg, %struct.Reg* %4885, i32 0, i32 0
  %RAX.i134 = bitcast %union.anon* %4886 to i64*
  %4887 = load i64, i64* %RAX.i134
  %4888 = add i64 %4887, 312
  %4889 = load i64, i64* %PC.i133
  %4890 = add i64 %4889, 7
  store i64 %4890, i64* %PC.i133
  %4891 = inttoptr i64 %4888 to i64*
  %4892 = load i64, i64* %4891
  store i64 %4892, i64* %RAX.i134, align 8
  store %struct.Memory* %loadMem_4324b4, %struct.Memory** %MEMORY
  %loadMem_4324bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 5
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RCX.i131 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 15
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %4901 to i64*
  %4902 = load i64, i64* %RBP.i132
  %4903 = sub i64 %4902, 20
  %4904 = load i64, i64* %PC.i130
  %4905 = add i64 %4904, 4
  store i64 %4905, i64* %PC.i130
  %4906 = inttoptr i64 %4903 to i32*
  %4907 = load i32, i32* %4906
  %4908 = sext i32 %4907 to i64
  store i64 %4908, i64* %RCX.i131, align 8
  store %struct.Memory* %loadMem_4324bb, %struct.Memory** %MEMORY
  %loadMem_4324bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4910 = getelementptr inbounds %struct.GPR, %struct.GPR* %4909, i32 0, i32 33
  %4911 = getelementptr inbounds %struct.Reg, %struct.Reg* %4910, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %4911 to i64*
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 1
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %4914 to i64*
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 5
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %RCX.i129 = bitcast %union.anon* %4917 to i64*
  %4918 = load i64, i64* %RAX.i128
  %4919 = load i64, i64* %RCX.i129
  %4920 = mul i64 %4919, 8
  %4921 = add i64 %4920, %4918
  %4922 = load i64, i64* %PC.i127
  %4923 = add i64 %4922, 4
  store i64 %4923, i64* %PC.i127
  %4924 = inttoptr i64 %4921 to i64*
  %4925 = load i64, i64* %4924
  store i64 %4925, i64* %RAX.i128, align 8
  store %struct.Memory* %loadMem_4324bf, %struct.Memory** %MEMORY
  %loadMem_4324c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 33
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %4928 to i64*
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 1
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %4931 to i64*
  %4932 = load i64, i64* %RAX.i126
  %4933 = load i64, i64* %PC.i125
  %4934 = add i64 %4933, 6
  store i64 %4934, i64* %PC.i125
  %4935 = inttoptr i64 %4932 to i32*
  store i32 -987654321, i32* %4935
  store %struct.Memory* %loadMem_4324c3, %struct.Memory** %MEMORY
  %loadMem_4324c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4937 = getelementptr inbounds %struct.GPR, %struct.GPR* %4936, i32 0, i32 33
  %4938 = getelementptr inbounds %struct.Reg, %struct.Reg* %4937, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %4938 to i64*
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 1
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 15
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %4944 to i64*
  %4945 = load i64, i64* %RBP.i124
  %4946 = sub i64 %4945, 20
  %4947 = load i64, i64* %PC.i122
  %4948 = add i64 %4947, 3
  store i64 %4948, i64* %PC.i122
  %4949 = inttoptr i64 %4946 to i32*
  %4950 = load i32, i32* %4949
  %4951 = zext i32 %4950 to i64
  store i64 %4951, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_4324c9, %struct.Memory** %MEMORY
  %loadMem_4324cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 33
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 1
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %4957 to i64*
  %4958 = load i64, i64* %RAX.i121
  %4959 = load i64, i64* %PC.i120
  %4960 = add i64 %4959, 3
  store i64 %4960, i64* %PC.i120
  %4961 = trunc i64 %4958 to i32
  %4962 = add i32 1, %4961
  %4963 = zext i32 %4962 to i64
  store i64 %4963, i64* %RAX.i121, align 8
  %4964 = icmp ult i32 %4962, %4961
  %4965 = icmp ult i32 %4962, 1
  %4966 = or i1 %4964, %4965
  %4967 = zext i1 %4966 to i8
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4967, i8* %4968, align 1
  %4969 = and i32 %4962, 255
  %4970 = call i32 @llvm.ctpop.i32(i32 %4969)
  %4971 = trunc i32 %4970 to i8
  %4972 = and i8 %4971, 1
  %4973 = xor i8 %4972, 1
  %4974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4973, i8* %4974, align 1
  %4975 = xor i64 1, %4958
  %4976 = trunc i64 %4975 to i32
  %4977 = xor i32 %4976, %4962
  %4978 = lshr i32 %4977, 4
  %4979 = trunc i32 %4978 to i8
  %4980 = and i8 %4979, 1
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4980, i8* %4981, align 1
  %4982 = icmp eq i32 %4962, 0
  %4983 = zext i1 %4982 to i8
  %4984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4983, i8* %4984, align 1
  %4985 = lshr i32 %4962, 31
  %4986 = trunc i32 %4985 to i8
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4986, i8* %4987, align 1
  %4988 = lshr i32 %4961, 31
  %4989 = xor i32 %4985, %4988
  %4990 = add i32 %4989, %4985
  %4991 = icmp eq i32 %4990, 2
  %4992 = zext i1 %4991 to i8
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4992, i8* %4993, align 1
  store %struct.Memory* %loadMem_4324cc, %struct.Memory** %MEMORY
  %loadMem_4324cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 33
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %4996 to i64*
  %4997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4998 = getelementptr inbounds %struct.GPR, %struct.GPR* %4997, i32 0, i32 1
  %4999 = getelementptr inbounds %struct.Reg, %struct.Reg* %4998, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %4999 to i32*
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5001 = getelementptr inbounds %struct.GPR, %struct.GPR* %5000, i32 0, i32 15
  %5002 = getelementptr inbounds %struct.Reg, %struct.Reg* %5001, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %5002 to i64*
  %5003 = load i64, i64* %RBP.i119
  %5004 = sub i64 %5003, 20
  %5005 = load i32, i32* %EAX.i118
  %5006 = zext i32 %5005 to i64
  %5007 = load i64, i64* %PC.i117
  %5008 = add i64 %5007, 3
  store i64 %5008, i64* %PC.i117
  %5009 = inttoptr i64 %5004 to i32*
  store i32 %5005, i32* %5009
  store %struct.Memory* %loadMem_4324cf, %struct.Memory** %MEMORY
  %loadMem_4324d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5011 = getelementptr inbounds %struct.GPR, %struct.GPR* %5010, i32 0, i32 33
  %5012 = getelementptr inbounds %struct.Reg, %struct.Reg* %5011, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %5012 to i64*
  %5013 = load i64, i64* %PC.i116
  %5014 = add i64 %5013, -44
  %5015 = load i64, i64* %PC.i116
  %5016 = add i64 %5015, 5
  store i64 %5016, i64* %PC.i116
  %5017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5014, i64* %5017, align 8
  store %struct.Memory* %loadMem_4324d2, %struct.Memory** %MEMORY
  br label %block_.L_4324a6

block_.L_4324d7:                                  ; preds = %block_.L_4324a6
  %loadMem_4324d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 33
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %5020 to i64*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 11
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %RDI.i115 = bitcast %union.anon* %5023 to i64*
  %5024 = load i64, i64* %PC.i114
  %5025 = add i64 %5024, 10
  store i64 %5025, i64* %PC.i114
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i115, align 8
  store %struct.Memory* %loadMem_4324d7, %struct.Memory** %MEMORY
  %loadMem_4324e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5027 = getelementptr inbounds %struct.GPR, %struct.GPR* %5026, i32 0, i32 33
  %5028 = getelementptr inbounds %struct.Reg, %struct.Reg* %5027, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5028 to i64*
  %5029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5030 = getelementptr inbounds %struct.GPR, %struct.GPR* %5029, i32 0, i32 9
  %5031 = getelementptr inbounds %struct.Reg, %struct.Reg* %5030, i32 0, i32 0
  %RSI.i113 = bitcast %union.anon* %5031 to i64*
  %5032 = load i64, i64* %PC.i112
  %5033 = add i64 %5032, 5
  store i64 %5033, i64* %PC.i112
  store i64 157, i64* %RSI.i113, align 8
  store %struct.Memory* %loadMem_4324e1, %struct.Memory** %MEMORY
  %loadMem_4324e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5035 = getelementptr inbounds %struct.GPR, %struct.GPR* %5034, i32 0, i32 33
  %5036 = getelementptr inbounds %struct.Reg, %struct.Reg* %5035, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5036 to i64*
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5038 = getelementptr inbounds %struct.GPR, %struct.GPR* %5037, i32 0, i32 1
  %5039 = getelementptr inbounds %struct.Reg, %struct.Reg* %5038, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %5039 to i64*
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5041 = getelementptr inbounds %struct.GPR, %struct.GPR* %5040, i32 0, i32 15
  %5042 = getelementptr inbounds %struct.Reg, %struct.Reg* %5041, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5042 to i64*
  %5043 = load i64, i64* %RBP.i111
  %5044 = sub i64 %5043, 12
  %5045 = load i64, i64* %PC.i109
  %5046 = add i64 %5045, 3
  store i64 %5046, i64* %PC.i109
  %5047 = inttoptr i64 %5044 to i32*
  %5048 = load i32, i32* %5047
  %5049 = zext i32 %5048 to i64
  store i64 %5049, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_4324e6, %struct.Memory** %MEMORY
  %loadMem_4324e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 33
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %5052 to i64*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 1
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %5055 to i64*
  %5056 = load i64, i64* %RAX.i108
  %5057 = load i64, i64* %PC.i107
  %5058 = add i64 %5057, 3
  store i64 %5058, i64* %PC.i107
  %5059 = trunc i64 %5056 to i32
  %5060 = add i32 1, %5059
  %5061 = zext i32 %5060 to i64
  store i64 %5061, i64* %RAX.i108, align 8
  %5062 = icmp ult i32 %5060, %5059
  %5063 = icmp ult i32 %5060, 1
  %5064 = or i1 %5062, %5063
  %5065 = zext i1 %5064 to i8
  %5066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5065, i8* %5066, align 1
  %5067 = and i32 %5060, 255
  %5068 = call i32 @llvm.ctpop.i32(i32 %5067)
  %5069 = trunc i32 %5068 to i8
  %5070 = and i8 %5069, 1
  %5071 = xor i8 %5070, 1
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5071, i8* %5072, align 1
  %5073 = xor i64 1, %5056
  %5074 = trunc i64 %5073 to i32
  %5075 = xor i32 %5074, %5060
  %5076 = lshr i32 %5075, 4
  %5077 = trunc i32 %5076 to i8
  %5078 = and i8 %5077, 1
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5078, i8* %5079, align 1
  %5080 = icmp eq i32 %5060, 0
  %5081 = zext i1 %5080 to i8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5081, i8* %5082, align 1
  %5083 = lshr i32 %5060, 31
  %5084 = trunc i32 %5083 to i8
  %5085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5084, i8* %5085, align 1
  %5086 = lshr i32 %5059, 31
  %5087 = xor i32 %5083, %5086
  %5088 = add i32 %5087, %5083
  %5089 = icmp eq i32 %5088, 2
  %5090 = zext i1 %5089 to i8
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5090, i8* %5091, align 1
  store %struct.Memory* %loadMem_4324e9, %struct.Memory** %MEMORY
  %loadMem_4324ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 33
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 1
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %5097 to i32*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 5
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %5100 to i64*
  %5101 = load i32, i32* %EAX.i
  %5102 = zext i32 %5101 to i64
  %5103 = load i64, i64* %PC.i105
  %5104 = add i64 %5103, 3
  store i64 %5104, i64* %PC.i105
  %5105 = shl i64 %5102, 32
  %5106 = ashr exact i64 %5105, 32
  store i64 %5106, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_4324ec, %struct.Memory** %MEMORY
  %loadMem_4324ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 33
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 5
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RCX.i104 = bitcast %union.anon* %5112 to i64*
  %5113 = load i64, i64* %RCX.i104
  %5114 = load i64, i64* %PC.i103
  %5115 = add i64 %5114, 4
  store i64 %5115, i64* %PC.i103
  %5116 = shl i64 %5113, 1
  %5117 = icmp slt i64 %5116, 0
  %5118 = shl i64 %5116, 1
  store i64 %5118, i64* %RCX.i104, align 8
  %5119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5120 = zext i1 %5117 to i8
  store i8 %5120, i8* %5119, align 1
  %5121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5122 = trunc i64 %5118 to i32
  %5123 = and i32 %5122, 254
  %5124 = call i32 @llvm.ctpop.i32(i32 %5123)
  %5125 = trunc i32 %5124 to i8
  %5126 = and i8 %5125, 1
  %5127 = xor i8 %5126, 1
  store i8 %5127, i8* %5121, align 1
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5128, align 1
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5130 = icmp eq i64 %5118, 0
  %5131 = zext i1 %5130 to i8
  store i8 %5131, i8* %5129, align 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5133 = lshr i64 %5118, 63
  %5134 = trunc i64 %5133 to i8
  store i8 %5134, i8* %5132, align 1
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5135, align 1
  store %struct.Memory* %loadMem_4324ef, %struct.Memory** %MEMORY
  %loadMem_4324f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5137 = getelementptr inbounds %struct.GPR, %struct.GPR* %5136, i32 0, i32 33
  %5138 = getelementptr inbounds %struct.Reg, %struct.Reg* %5137, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5138 to i64*
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5140 = getelementptr inbounds %struct.GPR, %struct.GPR* %5139, i32 0, i32 5
  %5141 = getelementptr inbounds %struct.Reg, %struct.Reg* %5140, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %5141 to i64*
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 7
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %RDX.i102 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %RCX.i101
  %5146 = load i64, i64* %PC.i100
  %5147 = add i64 %5146, 3
  store i64 %5147, i64* %PC.i100
  store i64 %5145, i64* %RDX.i102, align 8
  store %struct.Memory* %loadMem_4324f3, %struct.Memory** %MEMORY
  %loadMem1_4324f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %5150 to i64*
  %5151 = load i64, i64* %PC.i99
  %5152 = add i64 %5151, 80746
  %5153 = load i64, i64* %PC.i99
  %5154 = add i64 %5153, 5
  %5155 = load i64, i64* %PC.i99
  %5156 = add i64 %5155, 5
  store i64 %5156, i64* %PC.i99
  %5157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5158 = load i64, i64* %5157, align 8
  %5159 = add i64 %5158, -8
  %5160 = inttoptr i64 %5159 to i64*
  store i64 %5154, i64* %5160
  store i64 %5159, i64* %5157, align 8
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5152, i64* %5161, align 8
  store %struct.Memory* %loadMem1_4324f6, %struct.Memory** %MEMORY
  %loadMem2_4324f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4324f6 = load i64, i64* %3
  %call2_4324f6 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4324f6, %struct.Memory* %loadMem2_4324f6)
  store %struct.Memory* %call2_4324f6, %struct.Memory** %MEMORY
  %loadMem_4324fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5163 = getelementptr inbounds %struct.GPR, %struct.GPR* %5162, i32 0, i32 33
  %5164 = getelementptr inbounds %struct.Reg, %struct.Reg* %5163, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5164 to i64*
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 11
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %RDI.i98 = bitcast %union.anon* %5167 to i64*
  %5168 = load i64, i64* %PC.i97
  %5169 = add i64 %5168, 10
  store i64 %5169, i64* %PC.i97
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i98, align 8
  store %struct.Memory* %loadMem_4324fb, %struct.Memory** %MEMORY
  %loadMem_432505 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 9
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %5175 to i64*
  %5176 = load i64, i64* %PC.i95
  %5177 = add i64 %5176, 5
  store i64 %5177, i64* %PC.i95
  store i64 158, i64* %RSI.i96, align 8
  store %struct.Memory* %loadMem_432505, %struct.Memory** %MEMORY
  %loadMem_43250a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5179 = getelementptr inbounds %struct.GPR, %struct.GPR* %5178, i32 0, i32 33
  %5180 = getelementptr inbounds %struct.Reg, %struct.Reg* %5179, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %5180 to i64*
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5182 = getelementptr inbounds %struct.GPR, %struct.GPR* %5181, i32 0, i32 5
  %5183 = getelementptr inbounds %struct.Reg, %struct.Reg* %5182, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %5183 to i64*
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5185 = getelementptr inbounds %struct.GPR, %struct.GPR* %5184, i32 0, i32 15
  %5186 = getelementptr inbounds %struct.Reg, %struct.Reg* %5185, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %5186 to i64*
  %5187 = load i64, i64* %RBP.i94
  %5188 = sub i64 %5187, 8
  %5189 = load i64, i64* %PC.i92
  %5190 = add i64 %5189, 4
  store i64 %5190, i64* %PC.i92
  %5191 = inttoptr i64 %5188 to i64*
  %5192 = load i64, i64* %5191
  store i64 %5192, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_43250a, %struct.Memory** %MEMORY
  %loadMem_43250e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5194 = getelementptr inbounds %struct.GPR, %struct.GPR* %5193, i32 0, i32 33
  %5195 = getelementptr inbounds %struct.Reg, %struct.Reg* %5194, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %5195 to i64*
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 1
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 5
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %5201 to i64*
  %5202 = load i64, i64* %RCX.i91
  %5203 = add i64 %5202, 208
  %5204 = load i64, i64* %RAX.i90
  %5205 = load i64, i64* %PC.i89
  %5206 = add i64 %5205, 7
  store i64 %5206, i64* %PC.i89
  %5207 = inttoptr i64 %5203 to i64*
  store i64 %5204, i64* %5207
  store %struct.Memory* %loadMem_43250e, %struct.Memory** %MEMORY
  %loadMem_432515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5209 = getelementptr inbounds %struct.GPR, %struct.GPR* %5208, i32 0, i32 33
  %5210 = getelementptr inbounds %struct.Reg, %struct.Reg* %5209, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %5210 to i64*
  %5211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5212 = getelementptr inbounds %struct.GPR, %struct.GPR* %5211, i32 0, i32 17
  %5213 = getelementptr inbounds %struct.Reg, %struct.Reg* %5212, i32 0, i32 0
  %R8D.i87 = bitcast %union.anon* %5213 to i32*
  %5214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5215 = getelementptr inbounds %struct.GPR, %struct.GPR* %5214, i32 0, i32 15
  %5216 = getelementptr inbounds %struct.Reg, %struct.Reg* %5215, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %5216 to i64*
  %5217 = bitcast i32* %R8D.i87 to i64*
  %5218 = load i64, i64* %RBP.i88
  %5219 = sub i64 %5218, 12
  %5220 = load i64, i64* %PC.i86
  %5221 = add i64 %5220, 4
  store i64 %5221, i64* %PC.i86
  %5222 = inttoptr i64 %5219 to i32*
  %5223 = load i32, i32* %5222
  %5224 = zext i32 %5223 to i64
  store i64 %5224, i64* %5217, align 8
  store %struct.Memory* %loadMem_432515, %struct.Memory** %MEMORY
  %loadMem_432519 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 33
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 17
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %R8D.i85 = bitcast %union.anon* %5230 to i32*
  %5231 = bitcast i32* %R8D.i85 to i64*
  %5232 = load i32, i32* %R8D.i85
  %5233 = zext i32 %5232 to i64
  %5234 = load i64, i64* %PC.i84
  %5235 = add i64 %5234, 4
  store i64 %5235, i64* %PC.i84
  %5236 = add i32 1, %5232
  %5237 = zext i32 %5236 to i64
  store i64 %5237, i64* %5231, align 8
  %5238 = icmp ult i32 %5236, %5232
  %5239 = icmp ult i32 %5236, 1
  %5240 = or i1 %5238, %5239
  %5241 = zext i1 %5240 to i8
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5241, i8* %5242, align 1
  %5243 = and i32 %5236, 255
  %5244 = call i32 @llvm.ctpop.i32(i32 %5243)
  %5245 = trunc i32 %5244 to i8
  %5246 = and i8 %5245, 1
  %5247 = xor i8 %5246, 1
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5247, i8* %5248, align 1
  %5249 = xor i64 1, %5233
  %5250 = trunc i64 %5249 to i32
  %5251 = xor i32 %5250, %5236
  %5252 = lshr i32 %5251, 4
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5254, i8* %5255, align 1
  %5256 = icmp eq i32 %5236, 0
  %5257 = zext i1 %5256 to i8
  %5258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5257, i8* %5258, align 1
  %5259 = lshr i32 %5236, 31
  %5260 = trunc i32 %5259 to i8
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5260, i8* %5261, align 1
  %5262 = lshr i32 %5232, 31
  %5263 = xor i32 %5259, %5262
  %5264 = add i32 %5263, %5259
  %5265 = icmp eq i32 %5264, 2
  %5266 = zext i1 %5265 to i8
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5266, i8* %5267, align 1
  store %struct.Memory* %loadMem_432519, %struct.Memory** %MEMORY
  %loadMem_43251d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5269 = getelementptr inbounds %struct.GPR, %struct.GPR* %5268, i32 0, i32 33
  %5270 = getelementptr inbounds %struct.Reg, %struct.Reg* %5269, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %5270 to i64*
  %5271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5272 = getelementptr inbounds %struct.GPR, %struct.GPR* %5271, i32 0, i32 17
  %5273 = getelementptr inbounds %struct.Reg, %struct.Reg* %5272, i32 0, i32 0
  %R8D.i82 = bitcast %union.anon* %5273 to i32*
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 1
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %5276 to i64*
  %5277 = load i32, i32* %R8D.i82
  %5278 = zext i32 %5277 to i64
  %5279 = load i64, i64* %PC.i81
  %5280 = add i64 %5279, 3
  store i64 %5280, i64* %PC.i81
  %5281 = shl i64 %5278, 32
  %5282 = ashr exact i64 %5281, 32
  store i64 %5282, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_43251d, %struct.Memory** %MEMORY
  %loadMem_432520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 1
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %5288 to i64*
  %5289 = load i64, i64* %RAX.i80
  %5290 = load i64, i64* %PC.i79
  %5291 = add i64 %5290, 4
  store i64 %5291, i64* %PC.i79
  %5292 = shl i64 %5289, 1
  %5293 = icmp slt i64 %5292, 0
  %5294 = shl i64 %5292, 1
  store i64 %5294, i64* %RAX.i80, align 8
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5296 = zext i1 %5293 to i8
  store i8 %5296, i8* %5295, align 1
  %5297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5298 = trunc i64 %5294 to i32
  %5299 = and i32 %5298, 254
  %5300 = call i32 @llvm.ctpop.i32(i32 %5299)
  %5301 = trunc i32 %5300 to i8
  %5302 = and i8 %5301, 1
  %5303 = xor i8 %5302, 1
  store i8 %5303, i8* %5297, align 1
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5304, align 1
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5306 = icmp eq i64 %5294, 0
  %5307 = zext i1 %5306 to i8
  store i8 %5307, i8* %5305, align 1
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5309 = lshr i64 %5294, 63
  %5310 = trunc i64 %5309 to i8
  store i8 %5310, i8* %5308, align 1
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5311, align 1
  store %struct.Memory* %loadMem_432520, %struct.Memory** %MEMORY
  %loadMem_432524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5313 = getelementptr inbounds %struct.GPR, %struct.GPR* %5312, i32 0, i32 33
  %5314 = getelementptr inbounds %struct.Reg, %struct.Reg* %5313, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5314 to i64*
  %5315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5316 = getelementptr inbounds %struct.GPR, %struct.GPR* %5315, i32 0, i32 1
  %5317 = getelementptr inbounds %struct.Reg, %struct.Reg* %5316, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %5317 to i64*
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 7
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %5320 to i64*
  %5321 = load i64, i64* %RAX.i77
  %5322 = load i64, i64* %PC.i76
  %5323 = add i64 %5322, 3
  store i64 %5323, i64* %PC.i76
  store i64 %5321, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_432524, %struct.Memory** %MEMORY
  %loadMem1_432527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5325 = getelementptr inbounds %struct.GPR, %struct.GPR* %5324, i32 0, i32 33
  %5326 = getelementptr inbounds %struct.Reg, %struct.Reg* %5325, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %5326 to i64*
  %5327 = load i64, i64* %PC.i75
  %5328 = add i64 %5327, 80697
  %5329 = load i64, i64* %PC.i75
  %5330 = add i64 %5329, 5
  %5331 = load i64, i64* %PC.i75
  %5332 = add i64 %5331, 5
  store i64 %5332, i64* %PC.i75
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5334 = load i64, i64* %5333, align 8
  %5335 = add i64 %5334, -8
  %5336 = inttoptr i64 %5335 to i64*
  store i64 %5330, i64* %5336
  store i64 %5335, i64* %5333, align 8
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5328, i64* %5337, align 8
  store %struct.Memory* %loadMem1_432527, %struct.Memory** %MEMORY
  %loadMem2_432527 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432527 = load i64, i64* %3
  %call2_432527 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432527, %struct.Memory* %loadMem2_432527)
  store %struct.Memory* %call2_432527, %struct.Memory** %MEMORY
  %loadMem_43252c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5339 = getelementptr inbounds %struct.GPR, %struct.GPR* %5338, i32 0, i32 33
  %5340 = getelementptr inbounds %struct.Reg, %struct.Reg* %5339, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5340 to i64*
  %5341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5342 = getelementptr inbounds %struct.GPR, %struct.GPR* %5341, i32 0, i32 11
  %5343 = getelementptr inbounds %struct.Reg, %struct.Reg* %5342, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %5343 to i64*
  %5344 = load i64, i64* %PC.i73
  %5345 = add i64 %5344, 10
  store i64 %5345, i64* %PC.i73
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_43252c, %struct.Memory** %MEMORY
  %loadMem_432536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5347 = getelementptr inbounds %struct.GPR, %struct.GPR* %5346, i32 0, i32 33
  %5348 = getelementptr inbounds %struct.Reg, %struct.Reg* %5347, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %5348 to i64*
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 9
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %RSI.i72 = bitcast %union.anon* %5351 to i64*
  %5352 = load i64, i64* %PC.i71
  %5353 = add i64 %5352, 5
  store i64 %5353, i64* %PC.i71
  store i64 160, i64* %RSI.i72, align 8
  store %struct.Memory* %loadMem_432536, %struct.Memory** %MEMORY
  %loadMem_43253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5355 = getelementptr inbounds %struct.GPR, %struct.GPR* %5354, i32 0, i32 33
  %5356 = getelementptr inbounds %struct.Reg, %struct.Reg* %5355, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %5356 to i64*
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5358 = getelementptr inbounds %struct.GPR, %struct.GPR* %5357, i32 0, i32 5
  %5359 = getelementptr inbounds %struct.Reg, %struct.Reg* %5358, i32 0, i32 0
  %RCX.i69 = bitcast %union.anon* %5359 to i64*
  %5360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5361 = getelementptr inbounds %struct.GPR, %struct.GPR* %5360, i32 0, i32 15
  %5362 = getelementptr inbounds %struct.Reg, %struct.Reg* %5361, i32 0, i32 0
  %RBP.i70 = bitcast %union.anon* %5362 to i64*
  %5363 = load i64, i64* %RBP.i70
  %5364 = sub i64 %5363, 8
  %5365 = load i64, i64* %PC.i68
  %5366 = add i64 %5365, 4
  store i64 %5366, i64* %PC.i68
  %5367 = inttoptr i64 %5364 to i64*
  %5368 = load i64, i64* %5367
  store i64 %5368, i64* %RCX.i69, align 8
  store %struct.Memory* %loadMem_43253b, %struct.Memory** %MEMORY
  %loadMem_43253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 33
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %5371 to i64*
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 1
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %5374 to i64*
  %5375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5376 = getelementptr inbounds %struct.GPR, %struct.GPR* %5375, i32 0, i32 5
  %5377 = getelementptr inbounds %struct.Reg, %struct.Reg* %5376, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %5377 to i64*
  %5378 = load i64, i64* %RCX.i67
  %5379 = add i64 %5378, 216
  %5380 = load i64, i64* %RAX.i66
  %5381 = load i64, i64* %PC.i65
  %5382 = add i64 %5381, 7
  store i64 %5382, i64* %PC.i65
  %5383 = inttoptr i64 %5379 to i64*
  store i64 %5380, i64* %5383
  store %struct.Memory* %loadMem_43253f, %struct.Memory** %MEMORY
  %loadMem_432546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %5386 to i64*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 17
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %R8D.i63 = bitcast %union.anon* %5389 to i32*
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5391 = getelementptr inbounds %struct.GPR, %struct.GPR* %5390, i32 0, i32 15
  %5392 = getelementptr inbounds %struct.Reg, %struct.Reg* %5391, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %5392 to i64*
  %5393 = bitcast i32* %R8D.i63 to i64*
  %5394 = load i64, i64* %RBP.i64
  %5395 = sub i64 %5394, 12
  %5396 = load i64, i64* %PC.i62
  %5397 = add i64 %5396, 4
  store i64 %5397, i64* %PC.i62
  %5398 = inttoptr i64 %5395 to i32*
  %5399 = load i32, i32* %5398
  %5400 = zext i32 %5399 to i64
  store i64 %5400, i64* %5393, align 8
  store %struct.Memory* %loadMem_432546, %struct.Memory** %MEMORY
  %loadMem_43254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5402 = getelementptr inbounds %struct.GPR, %struct.GPR* %5401, i32 0, i32 33
  %5403 = getelementptr inbounds %struct.Reg, %struct.Reg* %5402, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %5403 to i64*
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5405 = getelementptr inbounds %struct.GPR, %struct.GPR* %5404, i32 0, i32 17
  %5406 = getelementptr inbounds %struct.Reg, %struct.Reg* %5405, i32 0, i32 0
  %R8D.i61 = bitcast %union.anon* %5406 to i32*
  %5407 = bitcast i32* %R8D.i61 to i64*
  %5408 = load i32, i32* %R8D.i61
  %5409 = zext i32 %5408 to i64
  %5410 = load i64, i64* %PC.i60
  %5411 = add i64 %5410, 4
  store i64 %5411, i64* %PC.i60
  %5412 = add i32 1, %5408
  %5413 = zext i32 %5412 to i64
  store i64 %5413, i64* %5407, align 8
  %5414 = icmp ult i32 %5412, %5408
  %5415 = icmp ult i32 %5412, 1
  %5416 = or i1 %5414, %5415
  %5417 = zext i1 %5416 to i8
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5417, i8* %5418, align 1
  %5419 = and i32 %5412, 255
  %5420 = call i32 @llvm.ctpop.i32(i32 %5419)
  %5421 = trunc i32 %5420 to i8
  %5422 = and i8 %5421, 1
  %5423 = xor i8 %5422, 1
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5423, i8* %5424, align 1
  %5425 = xor i64 1, %5409
  %5426 = trunc i64 %5425 to i32
  %5427 = xor i32 %5426, %5412
  %5428 = lshr i32 %5427, 4
  %5429 = trunc i32 %5428 to i8
  %5430 = and i8 %5429, 1
  %5431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5430, i8* %5431, align 1
  %5432 = icmp eq i32 %5412, 0
  %5433 = zext i1 %5432 to i8
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5433, i8* %5434, align 1
  %5435 = lshr i32 %5412, 31
  %5436 = trunc i32 %5435 to i8
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5436, i8* %5437, align 1
  %5438 = lshr i32 %5408, 31
  %5439 = xor i32 %5435, %5438
  %5440 = add i32 %5439, %5435
  %5441 = icmp eq i32 %5440, 2
  %5442 = zext i1 %5441 to i8
  %5443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5442, i8* %5443, align 1
  store %struct.Memory* %loadMem_43254a, %struct.Memory** %MEMORY
  %loadMem_43254e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5445 = getelementptr inbounds %struct.GPR, %struct.GPR* %5444, i32 0, i32 33
  %5446 = getelementptr inbounds %struct.Reg, %struct.Reg* %5445, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %5446 to i64*
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5448 = getelementptr inbounds %struct.GPR, %struct.GPR* %5447, i32 0, i32 17
  %5449 = getelementptr inbounds %struct.Reg, %struct.Reg* %5448, i32 0, i32 0
  %R8D.i58 = bitcast %union.anon* %5449 to i32*
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5451 = getelementptr inbounds %struct.GPR, %struct.GPR* %5450, i32 0, i32 1
  %5452 = getelementptr inbounds %struct.Reg, %struct.Reg* %5451, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %5452 to i64*
  %5453 = load i32, i32* %R8D.i58
  %5454 = zext i32 %5453 to i64
  %5455 = load i64, i64* %PC.i57
  %5456 = add i64 %5455, 3
  store i64 %5456, i64* %PC.i57
  %5457 = shl i64 %5454, 32
  %5458 = ashr exact i64 %5457, 32
  store i64 %5458, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_43254e, %struct.Memory** %MEMORY
  %loadMem_432551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 33
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5461 to i64*
  %5462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5463 = getelementptr inbounds %struct.GPR, %struct.GPR* %5462, i32 0, i32 1
  %5464 = getelementptr inbounds %struct.Reg, %struct.Reg* %5463, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %5464 to i64*
  %5465 = load i64, i64* %RAX.i56
  %5466 = load i64, i64* %PC.i55
  %5467 = add i64 %5466, 4
  store i64 %5467, i64* %PC.i55
  %5468 = shl i64 %5465, 1
  %5469 = icmp slt i64 %5468, 0
  %5470 = shl i64 %5468, 1
  store i64 %5470, i64* %RAX.i56, align 8
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5472 = zext i1 %5469 to i8
  store i8 %5472, i8* %5471, align 1
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5474 = trunc i64 %5470 to i32
  %5475 = and i32 %5474, 254
  %5476 = call i32 @llvm.ctpop.i32(i32 %5475)
  %5477 = trunc i32 %5476 to i8
  %5478 = and i8 %5477, 1
  %5479 = xor i8 %5478, 1
  store i8 %5479, i8* %5473, align 1
  %5480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5480, align 1
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5482 = icmp eq i64 %5470, 0
  %5483 = zext i1 %5482 to i8
  store i8 %5483, i8* %5481, align 1
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5485 = lshr i64 %5470, 63
  %5486 = trunc i64 %5485 to i8
  store i8 %5486, i8* %5484, align 1
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5487, align 1
  store %struct.Memory* %loadMem_432551, %struct.Memory** %MEMORY
  %loadMem_432555 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 1
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 7
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RDX.i54 = bitcast %union.anon* %5496 to i64*
  %5497 = load i64, i64* %RAX.i53
  %5498 = load i64, i64* %PC.i52
  %5499 = add i64 %5498, 3
  store i64 %5499, i64* %PC.i52
  store i64 %5497, i64* %RDX.i54, align 8
  store %struct.Memory* %loadMem_432555, %struct.Memory** %MEMORY
  %loadMem1_432558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 33
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %5502 to i64*
  %5503 = load i64, i64* %PC.i51
  %5504 = add i64 %5503, 80648
  %5505 = load i64, i64* %PC.i51
  %5506 = add i64 %5505, 5
  %5507 = load i64, i64* %PC.i51
  %5508 = add i64 %5507, 5
  store i64 %5508, i64* %PC.i51
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5510 = load i64, i64* %5509, align 8
  %5511 = add i64 %5510, -8
  %5512 = inttoptr i64 %5511 to i64*
  store i64 %5506, i64* %5512
  store i64 %5511, i64* %5509, align 8
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5504, i64* %5513, align 8
  store %struct.Memory* %loadMem1_432558, %struct.Memory** %MEMORY
  %loadMem2_432558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432558 = load i64, i64* %3
  %call2_432558 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432558, %struct.Memory* %loadMem2_432558)
  store %struct.Memory* %call2_432558, %struct.Memory** %MEMORY
  %loadMem_43255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5515 = getelementptr inbounds %struct.GPR, %struct.GPR* %5514, i32 0, i32 33
  %5516 = getelementptr inbounds %struct.Reg, %struct.Reg* %5515, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %5516 to i64*
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 11
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %5519 to i64*
  %5520 = load i64, i64* %PC.i50
  %5521 = add i64 %5520, 10
  store i64 %5521, i64* %PC.i50
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_43255d, %struct.Memory** %MEMORY
  %loadMem_432567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 33
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %5524 to i64*
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 9
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %5527 to i64*
  %5528 = load i64, i64* %PC.i49
  %5529 = add i64 %5528, 5
  store i64 %5529, i64* %PC.i49
  store i64 161, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_432567, %struct.Memory** %MEMORY
  %loadMem_43256c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 33
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %5532 to i64*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 5
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 15
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %5538 to i64*
  %5539 = load i64, i64* %RBP.i48
  %5540 = sub i64 %5539, 8
  %5541 = load i64, i64* %PC.i46
  %5542 = add i64 %5541, 4
  store i64 %5542, i64* %PC.i46
  %5543 = inttoptr i64 %5540 to i64*
  %5544 = load i64, i64* %5543
  store i64 %5544, i64* %RCX.i47, align 8
  store %struct.Memory* %loadMem_43256c, %struct.Memory** %MEMORY
  %loadMem_432570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5546 = getelementptr inbounds %struct.GPR, %struct.GPR* %5545, i32 0, i32 33
  %5547 = getelementptr inbounds %struct.Reg, %struct.Reg* %5546, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %5547 to i64*
  %5548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5549 = getelementptr inbounds %struct.GPR, %struct.GPR* %5548, i32 0, i32 1
  %5550 = getelementptr inbounds %struct.Reg, %struct.Reg* %5549, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %5550 to i64*
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 5
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %5553 to i64*
  %5554 = load i64, i64* %RCX.i45
  %5555 = add i64 %5554, 408
  %5556 = load i64, i64* %RAX.i44
  %5557 = load i64, i64* %PC.i43
  %5558 = add i64 %5557, 7
  store i64 %5558, i64* %PC.i43
  %5559 = inttoptr i64 %5555 to i64*
  store i64 %5556, i64* %5559
  store %struct.Memory* %loadMem_432570, %struct.Memory** %MEMORY
  %loadMem_432577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %5562 to i64*
  %5563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5564 = getelementptr inbounds %struct.GPR, %struct.GPR* %5563, i32 0, i32 17
  %5565 = getelementptr inbounds %struct.Reg, %struct.Reg* %5564, i32 0, i32 0
  %R8D.i41 = bitcast %union.anon* %5565 to i32*
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 15
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %5568 to i64*
  %5569 = bitcast i32* %R8D.i41 to i64*
  %5570 = load i64, i64* %RBP.i42
  %5571 = sub i64 %5570, 12
  %5572 = load i64, i64* %PC.i40
  %5573 = add i64 %5572, 4
  store i64 %5573, i64* %PC.i40
  %5574 = inttoptr i64 %5571 to i32*
  %5575 = load i32, i32* %5574
  %5576 = zext i32 %5575 to i64
  store i64 %5576, i64* %5569, align 8
  store %struct.Memory* %loadMem_432577, %struct.Memory** %MEMORY
  %loadMem_43257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 33
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 17
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %R8D.i39 = bitcast %union.anon* %5582 to i32*
  %5583 = bitcast i32* %R8D.i39 to i64*
  %5584 = load i32, i32* %R8D.i39
  %5585 = zext i32 %5584 to i64
  %5586 = load i64, i64* %PC.i38
  %5587 = add i64 %5586, 4
  store i64 %5587, i64* %PC.i38
  %5588 = add i32 1, %5584
  %5589 = zext i32 %5588 to i64
  store i64 %5589, i64* %5583, align 8
  %5590 = icmp ult i32 %5588, %5584
  %5591 = icmp ult i32 %5588, 1
  %5592 = or i1 %5590, %5591
  %5593 = zext i1 %5592 to i8
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5593, i8* %5594, align 1
  %5595 = and i32 %5588, 255
  %5596 = call i32 @llvm.ctpop.i32(i32 %5595)
  %5597 = trunc i32 %5596 to i8
  %5598 = and i8 %5597, 1
  %5599 = xor i8 %5598, 1
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5599, i8* %5600, align 1
  %5601 = xor i64 1, %5585
  %5602 = trunc i64 %5601 to i32
  %5603 = xor i32 %5602, %5588
  %5604 = lshr i32 %5603, 4
  %5605 = trunc i32 %5604 to i8
  %5606 = and i8 %5605, 1
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5606, i8* %5607, align 1
  %5608 = icmp eq i32 %5588, 0
  %5609 = zext i1 %5608 to i8
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5609, i8* %5610, align 1
  %5611 = lshr i32 %5588, 31
  %5612 = trunc i32 %5611 to i8
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5612, i8* %5613, align 1
  %5614 = lshr i32 %5584, 31
  %5615 = xor i32 %5611, %5614
  %5616 = add i32 %5615, %5611
  %5617 = icmp eq i32 %5616, 2
  %5618 = zext i1 %5617 to i8
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5618, i8* %5619, align 1
  store %struct.Memory* %loadMem_43257b, %struct.Memory** %MEMORY
  %loadMem_43257f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 33
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %5622 to i64*
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5624 = getelementptr inbounds %struct.GPR, %struct.GPR* %5623, i32 0, i32 17
  %5625 = getelementptr inbounds %struct.Reg, %struct.Reg* %5624, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %5625 to i32*
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 1
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %5628 to i64*
  %5629 = load i32, i32* %R8D.i
  %5630 = zext i32 %5629 to i64
  %5631 = load i64, i64* %PC.i36
  %5632 = add i64 %5631, 3
  store i64 %5632, i64* %PC.i36
  %5633 = shl i64 %5630, 32
  %5634 = ashr exact i64 %5633, 32
  store i64 %5634, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_43257f, %struct.Memory** %MEMORY
  %loadMem_432582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %5637 to i64*
  %5638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5639 = getelementptr inbounds %struct.GPR, %struct.GPR* %5638, i32 0, i32 1
  %5640 = getelementptr inbounds %struct.Reg, %struct.Reg* %5639, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %5640 to i64*
  %5641 = load i64, i64* %RAX.i35
  %5642 = load i64, i64* %PC.i34
  %5643 = add i64 %5642, 4
  store i64 %5643, i64* %PC.i34
  %5644 = shl i64 %5641, 1
  %5645 = icmp slt i64 %5644, 0
  %5646 = shl i64 %5644, 1
  store i64 %5646, i64* %RAX.i35, align 8
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5648 = zext i1 %5645 to i8
  store i8 %5648, i8* %5647, align 1
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5650 = trunc i64 %5646 to i32
  %5651 = and i32 %5650, 254
  %5652 = call i32 @llvm.ctpop.i32(i32 %5651)
  %5653 = trunc i32 %5652 to i8
  %5654 = and i8 %5653, 1
  %5655 = xor i8 %5654, 1
  store i8 %5655, i8* %5649, align 1
  %5656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5656, align 1
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5658 = icmp eq i64 %5646, 0
  %5659 = zext i1 %5658 to i8
  store i8 %5659, i8* %5657, align 1
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5661 = lshr i64 %5646, 63
  %5662 = trunc i64 %5661 to i8
  store i8 %5662, i8* %5660, align 1
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5663, align 1
  store %struct.Memory* %loadMem_432582, %struct.Memory** %MEMORY
  %loadMem_432586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 33
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %5666 to i64*
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5668 = getelementptr inbounds %struct.GPR, %struct.GPR* %5667, i32 0, i32 1
  %5669 = getelementptr inbounds %struct.Reg, %struct.Reg* %5668, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %5669 to i64*
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 7
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %5672 to i64*
  %5673 = load i64, i64* %RAX.i33
  %5674 = load i64, i64* %PC.i32
  %5675 = add i64 %5674, 3
  store i64 %5675, i64* %PC.i32
  store i64 %5673, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_432586, %struct.Memory** %MEMORY
  %loadMem1_432589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5677 = getelementptr inbounds %struct.GPR, %struct.GPR* %5676, i32 0, i32 33
  %5678 = getelementptr inbounds %struct.Reg, %struct.Reg* %5677, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %5678 to i64*
  %5679 = load i64, i64* %PC.i31
  %5680 = add i64 %5679, 80599
  %5681 = load i64, i64* %PC.i31
  %5682 = add i64 %5681, 5
  %5683 = load i64, i64* %PC.i31
  %5684 = add i64 %5683, 5
  store i64 %5684, i64* %PC.i31
  %5685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5686 = load i64, i64* %5685, align 8
  %5687 = add i64 %5686, -8
  %5688 = inttoptr i64 %5687 to i64*
  store i64 %5682, i64* %5688
  store i64 %5687, i64* %5685, align 8
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5680, i64* %5689, align 8
  store %struct.Memory* %loadMem1_432589, %struct.Memory** %MEMORY
  %loadMem2_432589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_432589 = load i64, i64* %3
  %call2_432589 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_432589, %struct.Memory* %loadMem2_432589)
  store %struct.Memory* %call2_432589, %struct.Memory** %MEMORY
  %loadMem_43258e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5691 = getelementptr inbounds %struct.GPR, %struct.GPR* %5690, i32 0, i32 33
  %5692 = getelementptr inbounds %struct.Reg, %struct.Reg* %5691, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %5692 to i64*
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 5
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %RCX.i29 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 15
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %5698 to i64*
  %5699 = load i64, i64* %RBP.i30
  %5700 = sub i64 %5699, 8
  %5701 = load i64, i64* %PC.i28
  %5702 = add i64 %5701, 4
  store i64 %5702, i64* %PC.i28
  %5703 = inttoptr i64 %5700 to i64*
  %5704 = load i64, i64* %5703
  store i64 %5704, i64* %RCX.i29, align 8
  store %struct.Memory* %loadMem_43258e, %struct.Memory** %MEMORY
  %loadMem_432592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5706 = getelementptr inbounds %struct.GPR, %struct.GPR* %5705, i32 0, i32 33
  %5707 = getelementptr inbounds %struct.Reg, %struct.Reg* %5706, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %5707 to i64*
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5709 = getelementptr inbounds %struct.GPR, %struct.GPR* %5708, i32 0, i32 1
  %5710 = getelementptr inbounds %struct.Reg, %struct.Reg* %5709, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %5710 to i64*
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5712 = getelementptr inbounds %struct.GPR, %struct.GPR* %5711, i32 0, i32 5
  %5713 = getelementptr inbounds %struct.Reg, %struct.Reg* %5712, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %5713 to i64*
  %5714 = load i64, i64* %RCX.i27
  %5715 = add i64 %5714, 416
  %5716 = load i64, i64* %RAX.i26
  %5717 = load i64, i64* %PC.i25
  %5718 = add i64 %5717, 7
  store i64 %5718, i64* %PC.i25
  %5719 = inttoptr i64 %5715 to i64*
  store i64 %5716, i64* %5719
  store %struct.Memory* %loadMem_432592, %struct.Memory** %MEMORY
  %loadMem_432599 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 33
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5724 = getelementptr inbounds %struct.GPR, %struct.GPR* %5723, i32 0, i32 1
  %5725 = getelementptr inbounds %struct.Reg, %struct.Reg* %5724, i32 0, i32 0
  %RAX.i23 = bitcast %union.anon* %5725 to i64*
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5727 = getelementptr inbounds %struct.GPR, %struct.GPR* %5726, i32 0, i32 15
  %5728 = getelementptr inbounds %struct.Reg, %struct.Reg* %5727, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %5728 to i64*
  %5729 = load i64, i64* %RBP.i24
  %5730 = sub i64 %5729, 8
  %5731 = load i64, i64* %PC.i22
  %5732 = add i64 %5731, 4
  store i64 %5732, i64* %PC.i22
  %5733 = inttoptr i64 %5730 to i64*
  %5734 = load i64, i64* %5733
  store i64 %5734, i64* %RAX.i23, align 8
  store %struct.Memory* %loadMem_432599, %struct.Memory** %MEMORY
  %loadMem_43259d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5736 = getelementptr inbounds %struct.GPR, %struct.GPR* %5735, i32 0, i32 33
  %5737 = getelementptr inbounds %struct.Reg, %struct.Reg* %5736, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %5737 to i64*
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 1
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %RAX.i21 = bitcast %union.anon* %5740 to i64*
  %5741 = load i64, i64* %RAX.i21
  %5742 = add i64 %5741, 408
  %5743 = load i64, i64* %PC.i20
  %5744 = add i64 %5743, 7
  store i64 %5744, i64* %PC.i20
  %5745 = inttoptr i64 %5742 to i64*
  %5746 = load i64, i64* %5745
  store i64 %5746, i64* %RAX.i21, align 8
  store %struct.Memory* %loadMem_43259d, %struct.Memory** %MEMORY
  %loadMem_4325a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5748 = getelementptr inbounds %struct.GPR, %struct.GPR* %5747, i32 0, i32 33
  %5749 = getelementptr inbounds %struct.Reg, %struct.Reg* %5748, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5749 to i64*
  %5750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5751 = getelementptr inbounds %struct.GPR, %struct.GPR* %5750, i32 0, i32 5
  %5752 = getelementptr inbounds %struct.Reg, %struct.Reg* %5751, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %5752 to i64*
  %5753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5754 = getelementptr inbounds %struct.GPR, %struct.GPR* %5753, i32 0, i32 15
  %5755 = getelementptr inbounds %struct.Reg, %struct.Reg* %5754, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %5755 to i64*
  %5756 = load i64, i64* %RBP.i19
  %5757 = sub i64 %5756, 8
  %5758 = load i64, i64* %PC.i17
  %5759 = add i64 %5758, 4
  store i64 %5759, i64* %PC.i17
  %5760 = inttoptr i64 %5757 to i64*
  %5761 = load i64, i64* %5760
  store i64 %5761, i64* %RCX.i18, align 8
  store %struct.Memory* %loadMem_4325a4, %struct.Memory** %MEMORY
  %loadMem_4325a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 33
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5764 to i64*
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 1
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %5767 to i64*
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 5
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %RCX.i16 = bitcast %union.anon* %5770 to i64*
  %5771 = load i64, i64* %RCX.i16
  %5772 = add i64 %5771, 368
  %5773 = load i64, i64* %RAX.i15
  %5774 = load i64, i64* %PC.i14
  %5775 = add i64 %5774, 7
  store i64 %5775, i64* %PC.i14
  %5776 = inttoptr i64 %5772 to i64*
  store i64 %5773, i64* %5776
  store %struct.Memory* %loadMem_4325a8, %struct.Memory** %MEMORY
  %loadMem_4325af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 33
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5779 to i64*
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5781 = getelementptr inbounds %struct.GPR, %struct.GPR* %5780, i32 0, i32 1
  %5782 = getelementptr inbounds %struct.Reg, %struct.Reg* %5781, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %5782 to i64*
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5784 = getelementptr inbounds %struct.GPR, %struct.GPR* %5783, i32 0, i32 15
  %5785 = getelementptr inbounds %struct.Reg, %struct.Reg* %5784, i32 0, i32 0
  %RBP.i13 = bitcast %union.anon* %5785 to i64*
  %5786 = load i64, i64* %RBP.i13
  %5787 = sub i64 %5786, 8
  %5788 = load i64, i64* %PC.i11
  %5789 = add i64 %5788, 4
  store i64 %5789, i64* %PC.i11
  %5790 = inttoptr i64 %5787 to i64*
  %5791 = load i64, i64* %5790
  store i64 %5791, i64* %RAX.i12, align 8
  store %struct.Memory* %loadMem_4325af, %struct.Memory** %MEMORY
  %loadMem_4325b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 33
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5794 to i64*
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5796 = getelementptr inbounds %struct.GPR, %struct.GPR* %5795, i32 0, i32 1
  %5797 = getelementptr inbounds %struct.Reg, %struct.Reg* %5796, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %5797 to i64*
  %5798 = load i64, i64* %RAX.i10
  %5799 = add i64 %5798, 416
  %5800 = load i64, i64* %PC.i9
  %5801 = add i64 %5800, 7
  store i64 %5801, i64* %PC.i9
  %5802 = inttoptr i64 %5799 to i64*
  %5803 = load i64, i64* %5802
  store i64 %5803, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_4325b3, %struct.Memory** %MEMORY
  %loadMem_4325ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 5
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %RCX.i7 = bitcast %union.anon* %5809 to i64*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5812 to i64*
  %5813 = load i64, i64* %RBP.i8
  %5814 = sub i64 %5813, 8
  %5815 = load i64, i64* %PC.i6
  %5816 = add i64 %5815, 4
  store i64 %5816, i64* %PC.i6
  %5817 = inttoptr i64 %5814 to i64*
  %5818 = load i64, i64* %5817
  store i64 %5818, i64* %RCX.i7, align 8
  store %struct.Memory* %loadMem_4325ba, %struct.Memory** %MEMORY
  %loadMem_4325be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5820 = getelementptr inbounds %struct.GPR, %struct.GPR* %5819, i32 0, i32 33
  %5821 = getelementptr inbounds %struct.Reg, %struct.Reg* %5820, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5821 to i64*
  %5822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5823 = getelementptr inbounds %struct.GPR, %struct.GPR* %5822, i32 0, i32 1
  %5824 = getelementptr inbounds %struct.Reg, %struct.Reg* %5823, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5824 to i64*
  %5825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5826 = getelementptr inbounds %struct.GPR, %struct.GPR* %5825, i32 0, i32 5
  %5827 = getelementptr inbounds %struct.Reg, %struct.Reg* %5826, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %5827 to i64*
  %5828 = load i64, i64* %RCX.i
  %5829 = add i64 %5828, 376
  %5830 = load i64, i64* %RAX.i
  %5831 = load i64, i64* %PC.i5
  %5832 = add i64 %5831, 7
  store i64 %5832, i64* %PC.i5
  %5833 = inttoptr i64 %5829 to i64*
  store i64 %5830, i64* %5833
  store %struct.Memory* %loadMem_4325be, %struct.Memory** %MEMORY
  %loadMem_4325c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5835 = getelementptr inbounds %struct.GPR, %struct.GPR* %5834, i32 0, i32 33
  %5836 = getelementptr inbounds %struct.Reg, %struct.Reg* %5835, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5836 to i64*
  %5837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5838 = getelementptr inbounds %struct.GPR, %struct.GPR* %5837, i32 0, i32 13
  %5839 = getelementptr inbounds %struct.Reg, %struct.Reg* %5838, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5839 to i64*
  %5840 = load i64, i64* %RSP.i
  %5841 = load i64, i64* %PC.i4
  %5842 = add i64 %5841, 4
  store i64 %5842, i64* %PC.i4
  %5843 = add i64 32, %5840
  store i64 %5843, i64* %RSP.i, align 8
  %5844 = icmp ult i64 %5843, %5840
  %5845 = icmp ult i64 %5843, 32
  %5846 = or i1 %5844, %5845
  %5847 = zext i1 %5846 to i8
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5847, i8* %5848, align 1
  %5849 = trunc i64 %5843 to i32
  %5850 = and i32 %5849, 255
  %5851 = call i32 @llvm.ctpop.i32(i32 %5850)
  %5852 = trunc i32 %5851 to i8
  %5853 = and i8 %5852, 1
  %5854 = xor i8 %5853, 1
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5854, i8* %5855, align 1
  %5856 = xor i64 32, %5840
  %5857 = xor i64 %5856, %5843
  %5858 = lshr i64 %5857, 4
  %5859 = trunc i64 %5858 to i8
  %5860 = and i8 %5859, 1
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5860, i8* %5861, align 1
  %5862 = icmp eq i64 %5843, 0
  %5863 = zext i1 %5862 to i8
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5863, i8* %5864, align 1
  %5865 = lshr i64 %5843, 63
  %5866 = trunc i64 %5865 to i8
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5866, i8* %5867, align 1
  %5868 = lshr i64 %5840, 63
  %5869 = xor i64 %5865, %5868
  %5870 = add i64 %5869, %5865
  %5871 = icmp eq i64 %5870, 2
  %5872 = zext i1 %5871 to i8
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5872, i8* %5873, align 1
  store %struct.Memory* %loadMem_4325c5, %struct.Memory** %MEMORY
  %loadMem_4325c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 33
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 15
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %PC.i2
  %5881 = add i64 %5880, 1
  store i64 %5881, i64* %PC.i2
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5883 = load i64, i64* %5882, align 8
  %5884 = add i64 %5883, 8
  %5885 = inttoptr i64 %5883 to i64*
  %5886 = load i64, i64* %5885
  store i64 %5886, i64* %RBP.i3, align 8
  store i64 %5884, i64* %5882, align 8
  store %struct.Memory* %loadMem_4325c9, %struct.Memory** %MEMORY
  %loadMem_4325ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5889 to i64*
  %5890 = load i64, i64* %PC.i1
  %5891 = add i64 %5890, 1
  store i64 %5891, i64* %PC.i1
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5893 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5894 = load i64, i64* %5893, align 8
  %5895 = inttoptr i64 %5894 to i64*
  %5896 = load i64, i64* %5895
  store i64 %5896, i64* %5892, align 8
  %5897 = add i64 %5894, 8
  store i64 %5897, i64* %5893, align 8
  store %struct.Memory* %loadMem_4325ca, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4325ca
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

define %struct.Memory* @routine_subq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 32
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 32
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
  %23 = xor i64 32, %9
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

define %struct.Memory* @routine_movq__0x4590ec___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x6f___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 111, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__esi__0x88__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 136
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x0___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.sre_malloc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq__0x4590ec___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4590ec_type* @G__0x4590ec to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x70___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 112, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x18__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_addl__0x2___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__0x71___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 113, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x20__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 32
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x72___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 114, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x28__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 40
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_shlq__0x2___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x74___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 116, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x48__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RAX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x75___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 117, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x90__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x76___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 118, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x98__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 152
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x77___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 119, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0xa0__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 160
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x7__MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 7
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x78___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 120, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x90__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14___ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 20, %17
  %19 = trunc i64 %18 to i32
  %20 = and i64 %18, 4294967295
  store i64 %20, i64* %RCX, align 8
  %21 = shl i64 %18, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp ne i64 %22, %18
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %24, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x79___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 121, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x98__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7b___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 123, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x38___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 56, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xa0__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %R8
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %RAX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7c___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 124, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 192, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x138__r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 312
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 125, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x140__r8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = add i64 %12, 320
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7e___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 126, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x148__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 328
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x7f___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 127, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x180__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 384
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x18___ecx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  %18 = mul i64 24, %17
  %19 = trunc i64 %18 to i32
  %20 = and i64 %18, 4294967295
  store i64 %20, i64* %RCX, align 8
  %21 = shl i64 %18, 32
  %22 = ashr exact i64 %21, 32
  %23 = icmp ne i64 %22, %18
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %19, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = trunc i32 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %24, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x80___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 128, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x188__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 392
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x18__MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 24
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x190__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_0x180__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 384
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x138__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x188__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 392
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x190__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jg_.L_4323c6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x14__MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = mul i64 %18, 20
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
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

define %struct.Memory* @routine_shlq__0x2___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RDX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rdx__rsi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
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

define %struct.Memory* @routine_jge_.L_4323b3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xa0__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__0x7__MINUS0x10__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %19 = mul i64 %18, 7
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RCX, align 8
  %22 = shl i64 %19, 32
  %23 = ashr exact i64 %22, 32
  %24 = icmp ne i64 %23, %19
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
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %25, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4323b8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_43230e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x18__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 24
  %16 = icmp ult i32 %14, 24
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
  %25 = xor i32 %14, 24
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

define %struct.Memory* @routine_jge_.L_43244e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x140__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_imull__edx___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RCX
  %13 = load i32, i32* %EDX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = shl i64 %12, 32
  %18 = ashr exact i64 %17, 32
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = mul i64 %20, %18
  %22 = trunc i64 %21 to i32
  %23 = and i64 %21, 4294967295
  store i64 %23, i64* %RCX, align 8
  %24 = shl i64 %21, 32
  %25 = ashr exact i64 %24, 32
  %26 = icmp ne i64 %25, %21
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %27, i8* %28, align 1
  %29 = and i32 %22, 255
  %30 = call i32 @llvm.ctpop.i32(i32 %29)
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = xor i8 %32, 1
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %33, i8* %34, align 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %36, align 1
  %37 = lshr i32 %22, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %27, i8* %40, align 1
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

define %struct.Memory* @routine_shlq__0x2___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RSI, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__rsi___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movq_MINUS0x8__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x140__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 320
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rsi__rdi_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RSI
  %16 = load i64, i64* %RDI
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %RAX
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 4
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %18 to i64*
  store i64 %19, i64* %22
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = shl i64 %12, 32
  %20 = ashr exact i64 %19, 32
  %21 = sext i32 %18 to i64
  %22 = mul i64 %21, %20
  %23 = trunc i64 %22 to i32
  %24 = and i64 %22, 4294967295
  store i64 %24, i64* %RCX, align 8
  %25 = shl i64 %22, 32
  %26 = ashr exact i64 %25, 32
  %27 = icmp ne i64 %26, %22
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %23, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %37, align 1
  %38 = lshr i32 %23, 31
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %39, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %28, i8* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x148__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 328
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_jmpq_.L_4323cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x7__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_43249f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x138__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 312
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_432455(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_4324d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq___rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xc521974f____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 -987654321, i32* %12
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4324a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x9d___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 157, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x2___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 1
  %13 = icmp slt i64 %12, 0
  %14 = shl i64 %12, 1
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %16 = zext i1 %13 to i8
  store i8 %16, i8* %15, align 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = trunc i64 %14 to i32
  %19 = and i32 %18, 254
  %20 = call i32 @llvm.ctpop.i32(i32 %19)
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  %23 = xor i8 %22, 1
  store i8 %23, i8* %17, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %26 = icmp eq i64 %14, 0
  %27 = zext i1 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %29 = lshr i64 %14, 63
  %30 = trunc i64 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %31, align 1
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

define %struct.Memory* @routine_movl__0x9e___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 158, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rax__0xd0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 208
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i32, i32* %R8D
  %11 = zext i32 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = add i32 1, %10
  %15 = zext i32 %14 to i64
  store i64 %15, i64* %9, align 8
  %16 = icmp ult i32 %14, %10
  %17 = icmp ult i32 %14, 1
  %18 = or i1 %16, %17
  %19 = zext i1 %18 to i8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %19, i8* %20, align 1
  %21 = and i32 %14, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = xor i64 1, %11
  %28 = trunc i64 %27 to i32
  %29 = xor i32 %28, %14
  %30 = lshr i32 %29, 4
  %31 = trunc i32 %30 to i8
  %32 = and i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %32, i8* %33, align 1
  %34 = icmp eq i32 %14, 0
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %35, i8* %36, align 1
  %37 = lshr i32 %14, 31
  %38 = trunc i32 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %38, i8* %39, align 1
  %40 = lshr i32 %10, 31
  %41 = xor i32 %37, %40
  %42 = add i32 %41, %37
  %43 = icmp eq i32 %42, 2
  %44 = zext i1 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %44, i8* %45, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__r8d___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 160, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0xd8__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 216
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xa1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 161, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x198__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 408
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x1a0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 416
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x198__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 408
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x170__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 368
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1a0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 416
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__0x178__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 376
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x20___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 32
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
  %25 = xor i64 32, %9
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
