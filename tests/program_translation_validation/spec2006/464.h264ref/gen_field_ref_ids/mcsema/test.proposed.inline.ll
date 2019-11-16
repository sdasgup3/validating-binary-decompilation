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
define %struct.Memory* @gen_field_ref_ids(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4535c0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4535c0, %struct.Memory** %MEMORY
  %loadMem_4535c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i183
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i183
  store i64 %26, i64* %RBP.i184, align 8
  store %struct.Memory* %loadMem_4535c1, %struct.Memory** %MEMORY
  %loadMem_4535c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i215
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i214
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i214
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_4535c4, %struct.Memory** %MEMORY
  %loadMem_4535c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 15
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %49 to i64*
  %50 = load i64, i64* %RBP.i238
  %51 = sub i64 %50, 12
  %52 = load i64, i64* %PC.i237
  %53 = add i64 %52, 7
  store i64 %53, i64* %PC.i237
  %54 = inttoptr i64 %51 to i32*
  store i32 0, i32* %54
  store %struct.Memory* %loadMem_4535c8, %struct.Memory** %MEMORY
  br label %block_.L_4535cf

block_.L_4535cf:                                  ; preds = %block_.L_453733, %entry
  %loadMem_4535cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %56 = getelementptr inbounds %struct.GPR, %struct.GPR* %55, i32 0, i32 33
  %57 = getelementptr inbounds %struct.Reg, %struct.Reg* %56, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %57 to i64*
  %58 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %59 = getelementptr inbounds %struct.GPR, %struct.GPR* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.Reg, %struct.Reg* %59, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %60 to i64*
  %61 = load i64, i64* %PC.i235
  %62 = add i64 %61, 5
  store i64 %62, i64* %PC.i235
  store i64 4, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_4535cf, %struct.Memory** %MEMORY
  %loadMem_4535d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %63 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %64 = getelementptr inbounds %struct.GPR, %struct.GPR* %63, i32 0, i32 33
  %65 = getelementptr inbounds %struct.Reg, %struct.Reg* %64, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %65 to i64*
  %66 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %67 = getelementptr inbounds %struct.GPR, %struct.GPR* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.Reg, %struct.Reg* %67, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %68 to i64*
  %69 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %70 = getelementptr inbounds %struct.GPR, %struct.GPR* %69, i32 0, i32 15
  %71 = getelementptr inbounds %struct.Reg, %struct.Reg* %70, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %71 to i64*
  %72 = load i64, i64* %RBP.i234
  %73 = sub i64 %72, 12
  %74 = load i64, i64* %PC.i232
  %75 = add i64 %74, 3
  store i64 %75, i64* %PC.i232
  %76 = inttoptr i64 %73 to i32*
  %77 = load i32, i32* %76
  %78 = zext i32 %77 to i64
  store i64 %78, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_4535d4, %struct.Memory** %MEMORY
  %loadMem_4535d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %80 = getelementptr inbounds %struct.GPR, %struct.GPR* %79, i32 0, i32 33
  %81 = getelementptr inbounds %struct.Reg, %struct.Reg* %80, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %81 to i64*
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 7
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i231
  %89 = sub i64 %88, 8
  %90 = load i64, i64* %PC.i229
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC.i229
  %92 = inttoptr i64 %89 to i64*
  %93 = load i64, i64* %92
  store i64 %93, i64* %RDX.i230, align 8
  store %struct.Memory* %loadMem_4535d7, %struct.Memory** %MEMORY
  %loadMem_4535db = load %struct.Memory*, %struct.Memory** %MEMORY
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 33
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 7
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 9
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RSI.i228 = bitcast %union.anon* %102 to i64*
  %103 = load i64, i64* %RDX.i227
  %104 = add i64 %103, 6392
  %105 = load i64, i64* %PC.i226
  %106 = add i64 %105, 6
  store i64 %106, i64* %PC.i226
  %107 = inttoptr i64 %104 to i32*
  %108 = load i32, i32* %107
  %109 = zext i32 %108 to i64
  store i64 %109, i64* %RSI.i228, align 8
  store %struct.Memory* %loadMem_4535db, %struct.Memory** %MEMORY
  %loadMem_4535e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 33
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %112 to i64*
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %114 = getelementptr inbounds %struct.GPR, %struct.GPR* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.Reg, %struct.Reg* %114, i32 0, i32 0
  %EAX.i224 = bitcast %union.anon* %115 to i32*
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 15
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %118 to i64*
  %119 = load i64, i64* %RBP.i225
  %120 = sub i64 %119, 28
  %121 = load i32, i32* %EAX.i224
  %122 = zext i32 %121 to i64
  %123 = load i64, i64* %PC.i223
  %124 = add i64 %123, 3
  store i64 %124, i64* %PC.i223
  %125 = inttoptr i64 %120 to i32*
  store i32 %121, i32* %125
  store %struct.Memory* %loadMem_4535e1, %struct.Memory** %MEMORY
  %loadMem_4535e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %127 = getelementptr inbounds %struct.GPR, %struct.GPR* %126, i32 0, i32 33
  %128 = getelementptr inbounds %struct.Reg, %struct.Reg* %127, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %128 to i64*
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 9
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %ESI.i221 = bitcast %union.anon* %131 to i32*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %134 to i64*
  %135 = load i32, i32* %ESI.i221
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %PC.i220
  %138 = add i64 %137, 2
  store i64 %138, i64* %PC.i220
  %139 = and i64 %136, 4294967295
  store i64 %139, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_4535e4, %struct.Memory** %MEMORY
  %loadMem_4535e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %PC.i219
  %144 = add i64 %143, 1
  store i64 %144, i64* %PC.i219
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %147 = bitcast %union.anon* %146 to i32*
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = lshr i64 %149, 32
  store i64 %150, i64* %145, align 8
  store %struct.Memory* %loadMem_4535e6, %struct.Memory** %MEMORY
  %loadMem_4535e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %152 = getelementptr inbounds %struct.GPR, %struct.GPR* %151, i32 0, i32 33
  %153 = getelementptr inbounds %struct.Reg, %struct.Reg* %152, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %153 to i64*
  %154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %155 = getelementptr inbounds %struct.GPR, %struct.GPR* %154, i32 0, i32 9
  %156 = getelementptr inbounds %struct.Reg, %struct.Reg* %155, i32 0, i32 0
  %RSI.i217 = bitcast %union.anon* %156 to i64*
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %158 = getelementptr inbounds %struct.GPR, %struct.GPR* %157, i32 0, i32 15
  %159 = getelementptr inbounds %struct.Reg, %struct.Reg* %158, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %159 to i64*
  %160 = load i64, i64* %RBP.i218
  %161 = sub i64 %160, 28
  %162 = load i64, i64* %PC.i216
  %163 = add i64 %162, 3
  store i64 %163, i64* %PC.i216
  %164 = inttoptr i64 %161 to i32*
  %165 = load i32, i32* %164
  %166 = zext i32 %165 to i64
  store i64 %166, i64* %RSI.i217, align 8
  store %struct.Memory* %loadMem_4535e7, %struct.Memory** %MEMORY
  %loadMem_4535ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %168 = getelementptr inbounds %struct.GPR, %struct.GPR* %167, i32 0, i32 33
  %169 = getelementptr inbounds %struct.Reg, %struct.Reg* %168, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %169 to i64*
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %171 = getelementptr inbounds %struct.GPR, %struct.GPR* %170, i32 0, i32 9
  %172 = getelementptr inbounds %struct.Reg, %struct.Reg* %171, i32 0, i32 0
  %ESI.i212 = bitcast %union.anon* %172 to i32*
  %173 = load i32, i32* %ESI.i212
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* %PC.i211
  %176 = add i64 %175, 2
  store i64 %176, i64* %PC.i211
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %178 = bitcast %union.anon* %177 to i32*
  %179 = load i32, i32* %178, align 8
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %182 = bitcast %union.anon* %181 to i32*
  %183 = load i32, i32* %182, align 8
  %184 = zext i32 %183 to i64
  %185 = shl i64 %174, 32
  %186 = ashr exact i64 %185, 32
  %187 = shl i64 %184, 32
  %188 = or i64 %187, %180
  %189 = sdiv i64 %188, %186
  %190 = shl i64 %189, 32
  %191 = ashr exact i64 %190, 32
  %192 = icmp eq i64 %189, %191
  br i1 %192, label %197, label %193

; <label>:193:                                    ; preds = %block_.L_4535cf
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %195, %struct.Memory* %loadMem_4535ea)
  br label %routine_idivl__esi.exit213

; <label>:197:                                    ; preds = %block_.L_4535cf
  %198 = srem i64 %188, %186
  %199 = getelementptr inbounds %union.anon, %union.anon* %177, i64 0, i32 0
  %200 = and i64 %189, 4294967295
  store i64 %200, i64* %199, align 8
  %201 = getelementptr inbounds %union.anon, %union.anon* %181, i64 0, i32 0
  %202 = and i64 %198, 4294967295
  store i64 %202, i64* %201, align 8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %203, align 1
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %204, align 1
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %205, align 1
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %206, align 1
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %207, align 1
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %208, align 1
  br label %routine_idivl__esi.exit213

routine_idivl__esi.exit213:                       ; preds = %193, %197
  %209 = phi %struct.Memory* [ %196, %193 ], [ %loadMem_4535ea, %197 ]
  store %struct.Memory* %209, %struct.Memory** %MEMORY
  %loadMem_4535ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %215 to i32*
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %ECX.i210 = bitcast %union.anon* %218 to i32*
  %219 = load i32, i32* %ECX.i210
  %220 = zext i32 %219 to i64
  %221 = load i32, i32* %EAX.i209
  %222 = zext i32 %221 to i64
  %223 = load i64, i64* %PC.i208
  %224 = add i64 %223, 2
  store i64 %224, i64* %PC.i208
  %225 = sub i32 %219, %221
  %226 = icmp ult i32 %219, %221
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %227, i8* %228, align 1
  %229 = and i32 %225, 255
  %230 = call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %233, i8* %234, align 1
  %235 = xor i64 %222, %220
  %236 = trunc i64 %235 to i32
  %237 = xor i32 %236, %225
  %238 = lshr i32 %237, 4
  %239 = trunc i32 %238 to i8
  %240 = and i8 %239, 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %240, i8* %241, align 1
  %242 = icmp eq i32 %225, 0
  %243 = zext i1 %242 to i8
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %243, i8* %244, align 1
  %245 = lshr i32 %225, 31
  %246 = trunc i32 %245 to i8
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %246, i8* %247, align 1
  %248 = lshr i32 %219, 31
  %249 = lshr i32 %221, 31
  %250 = xor i32 %249, %248
  %251 = xor i32 %245, %248
  %252 = add i32 %251, %250
  %253 = icmp eq i32 %252, 2
  %254 = zext i1 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %254, i8* %255, align 1
  store %struct.Memory* %loadMem_4535ec, %struct.Memory** %MEMORY
  %loadMem_4535ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %258 to i64*
  %259 = load i64, i64* %PC.i207
  %260 = add i64 %259, 339
  %261 = load i64, i64* %PC.i207
  %262 = add i64 %261, 6
  %263 = load i64, i64* %PC.i207
  %264 = add i64 %263, 6
  store i64 %264, i64* %PC.i207
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %266 = load i8, i8* %265, align 1
  %267 = icmp ne i8 %266, 0
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %269 = load i8, i8* %268, align 1
  %270 = icmp ne i8 %269, 0
  %271 = xor i1 %267, %270
  %272 = xor i1 %271, true
  %273 = zext i1 %272 to i8
  store i8 %273, i8* %BRANCH_TAKEN, align 1
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %275 = select i1 %271, i64 %262, i64 %260
  store i64 %275, i64* %274, align 8
  store %struct.Memory* %loadMem_4535ee, %struct.Memory** %MEMORY
  %loadBr_4535ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4535ee = icmp eq i8 %loadBr_4535ee, 1
  br i1 %cmpBr_4535ee, label %block_.L_453741, label %block_4535f4

block_4535f4:                                     ; preds = %routine_idivl__esi.exit213
  %loadMem_4535f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 15
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %281 to i64*
  %282 = load i64, i64* %RBP.i206
  %283 = sub i64 %282, 16
  %284 = load i64, i64* %PC.i205
  %285 = add i64 %284, 7
  store i64 %285, i64* %PC.i205
  %286 = inttoptr i64 %283 to i32*
  store i32 0, i32* %286
  store %struct.Memory* %loadMem_4535f4, %struct.Memory** %MEMORY
  br label %block_.L_4535fb

block_.L_4535fb:                                  ; preds = %block_.L_4536e2, %block_4535f4
  %loadMem_4535fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RAX.i204 = bitcast %union.anon* %292 to i64*
  %293 = load i64, i64* %PC.i203
  %294 = add i64 %293, 5
  store i64 %294, i64* %PC.i203
  store i64 4, i64* %RAX.i204, align 8
  store %struct.Memory* %loadMem_4535fb, %struct.Memory** %MEMORY
  %loadMem_453600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 33
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 5
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 15
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RBP.i202
  %305 = sub i64 %304, 16
  %306 = load i64, i64* %PC.i200
  %307 = add i64 %306, 3
  store i64 %307, i64* %PC.i200
  %308 = inttoptr i64 %305 to i32*
  %309 = load i32, i32* %308
  %310 = zext i32 %309 to i64
  store i64 %310, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_453600, %struct.Memory** %MEMORY
  %loadMem_453603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %312 = getelementptr inbounds %struct.GPR, %struct.GPR* %311, i32 0, i32 33
  %313 = getelementptr inbounds %struct.Reg, %struct.Reg* %312, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %313 to i64*
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %315 = getelementptr inbounds %struct.GPR, %struct.GPR* %314, i32 0, i32 7
  %316 = getelementptr inbounds %struct.Reg, %struct.Reg* %315, i32 0, i32 0
  %RDX.i198 = bitcast %union.anon* %316 to i64*
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 15
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %319 to i64*
  %320 = load i64, i64* %RBP.i199
  %321 = sub i64 %320, 8
  %322 = load i64, i64* %PC.i197
  %323 = add i64 %322, 4
  store i64 %323, i64* %PC.i197
  %324 = inttoptr i64 %321 to i64*
  %325 = load i64, i64* %324
  store i64 %325, i64* %RDX.i198, align 8
  store %struct.Memory* %loadMem_453603, %struct.Memory** %MEMORY
  %loadMem_453607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 33
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %328 to i64*
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %330 = getelementptr inbounds %struct.GPR, %struct.GPR* %329, i32 0, i32 7
  %331 = getelementptr inbounds %struct.Reg, %struct.Reg* %330, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %331 to i64*
  %332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %333 = getelementptr inbounds %struct.GPR, %struct.GPR* %332, i32 0, i32 9
  %334 = getelementptr inbounds %struct.Reg, %struct.Reg* %333, i32 0, i32 0
  %RSI.i196 = bitcast %union.anon* %334 to i64*
  %335 = load i64, i64* %RDX.i195
  %336 = add i64 %335, 6396
  %337 = load i64, i64* %PC.i194
  %338 = add i64 %337, 6
  store i64 %338, i64* %PC.i194
  %339 = inttoptr i64 %336 to i32*
  %340 = load i32, i32* %339
  %341 = zext i32 %340 to i64
  store i64 %341, i64* %RSI.i196, align 8
  store %struct.Memory* %loadMem_453607, %struct.Memory** %MEMORY
  %loadMem_45360d = load %struct.Memory*, %struct.Memory** %MEMORY
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 33
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 1
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %347 to i32*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 15
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %RBP.i193
  %352 = sub i64 %351, 32
  %353 = load i32, i32* %EAX.i192
  %354 = zext i32 %353 to i64
  %355 = load i64, i64* %PC.i191
  %356 = add i64 %355, 3
  store i64 %356, i64* %PC.i191
  %357 = inttoptr i64 %352 to i32*
  store i32 %353, i32* %357
  store %struct.Memory* %loadMem_45360d, %struct.Memory** %MEMORY
  %loadMem_453610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %359 = getelementptr inbounds %struct.GPR, %struct.GPR* %358, i32 0, i32 33
  %360 = getelementptr inbounds %struct.Reg, %struct.Reg* %359, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %360 to i64*
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 9
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %ESI.i189 = bitcast %union.anon* %363 to i32*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %366 to i64*
  %367 = load i32, i32* %ESI.i189
  %368 = zext i32 %367 to i64
  %369 = load i64, i64* %PC.i188
  %370 = add i64 %369, 2
  store i64 %370, i64* %PC.i188
  %371 = and i64 %368, 4294967295
  store i64 %371, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_453610, %struct.Memory** %MEMORY
  %loadMem_453612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %374 to i64*
  %375 = load i64, i64* %PC.i187
  %376 = add i64 %375, 1
  store i64 %376, i64* %PC.i187
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %379 = bitcast %union.anon* %378 to i32*
  %380 = load i32, i32* %379, align 8
  %381 = sext i32 %380 to i64
  %382 = lshr i64 %381, 32
  store i64 %382, i64* %377, align 8
  store %struct.Memory* %loadMem_453612, %struct.Memory** %MEMORY
  %loadMem_453613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 9
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 15
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %RBP.i186
  %393 = sub i64 %392, 32
  %394 = load i64, i64* %PC.i185
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC.i185
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_453613, %struct.Memory** %MEMORY
  %loadMem_453616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 9
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %404 to i32*
  %405 = load i32, i32* %ESI.i
  %406 = zext i32 %405 to i64
  %407 = load i64, i64* %PC.i182
  %408 = add i64 %407, 2
  store i64 %408, i64* %PC.i182
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %410 = bitcast %union.anon* %409 to i32*
  %411 = load i32, i32* %410, align 8
  %412 = zext i32 %411 to i64
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %414 = bitcast %union.anon* %413 to i32*
  %415 = load i32, i32* %414, align 8
  %416 = zext i32 %415 to i64
  %417 = shl i64 %406, 32
  %418 = ashr exact i64 %417, 32
  %419 = shl i64 %416, 32
  %420 = or i64 %419, %412
  %421 = sdiv i64 %420, %418
  %422 = shl i64 %421, 32
  %423 = ashr exact i64 %422, 32
  %424 = icmp eq i64 %421, %423
  br i1 %424, label %429, label %425

; <label>:425:                                    ; preds = %block_.L_4535fb
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %427 = load i64, i64* %426, align 8
  %428 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %427, %struct.Memory* %loadMem_453616)
  br label %routine_idivl__esi.exit

; <label>:429:                                    ; preds = %block_.L_4535fb
  %430 = srem i64 %420, %418
  %431 = getelementptr inbounds %union.anon, %union.anon* %409, i64 0, i32 0
  %432 = and i64 %421, 4294967295
  store i64 %432, i64* %431, align 8
  %433 = getelementptr inbounds %union.anon, %union.anon* %413, i64 0, i32 0
  %434 = and i64 %430, 4294967295
  store i64 %434, i64* %433, align 8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %435, align 1
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %436, align 1
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %437, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %438, align 1
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %439, align 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %440, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %425, %429
  %441 = phi %struct.Memory* [ %428, %425 ], [ %loadMem_453616, %429 ]
  store %struct.Memory* %441, %struct.Memory** %MEMORY
  %loadMem_453618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %443 = getelementptr inbounds %struct.GPR, %struct.GPR* %442, i32 0, i32 33
  %444 = getelementptr inbounds %struct.Reg, %struct.Reg* %443, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %444 to i64*
  %445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %446 = getelementptr inbounds %struct.GPR, %struct.GPR* %445, i32 0, i32 1
  %447 = getelementptr inbounds %struct.Reg, %struct.Reg* %446, i32 0, i32 0
  %EAX.i181 = bitcast %union.anon* %447 to i32*
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 5
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %450 to i32*
  %451 = load i32, i32* %ECX.i
  %452 = zext i32 %451 to i64
  %453 = load i32, i32* %EAX.i181
  %454 = zext i32 %453 to i64
  %455 = load i64, i64* %PC.i180
  %456 = add i64 %455, 2
  store i64 %456, i64* %PC.i180
  %457 = sub i32 %451, %453
  %458 = icmp ult i32 %451, %453
  %459 = zext i1 %458 to i8
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %459, i8* %460, align 1
  %461 = and i32 %457, 255
  %462 = call i32 @llvm.ctpop.i32(i32 %461)
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = xor i8 %464, 1
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %465, i8* %466, align 1
  %467 = xor i64 %454, %452
  %468 = trunc i64 %467 to i32
  %469 = xor i32 %468, %457
  %470 = lshr i32 %469, 4
  %471 = trunc i32 %470 to i8
  %472 = and i8 %471, 1
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %472, i8* %473, align 1
  %474 = icmp eq i32 %457, 0
  %475 = zext i1 %474 to i8
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %475, i8* %476, align 1
  %477 = lshr i32 %457, 31
  %478 = trunc i32 %477 to i8
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %478, i8* %479, align 1
  %480 = lshr i32 %451, 31
  %481 = lshr i32 %453, 31
  %482 = xor i32 %481, %480
  %483 = xor i32 %477, %480
  %484 = add i32 %483, %482
  %485 = icmp eq i32 %484, 2
  %486 = zext i1 %485 to i8
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %486, i8* %487, align 1
  store %struct.Memory* %loadMem_453618, %struct.Memory** %MEMORY
  %loadMem_45361a = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %490 to i64*
  %491 = load i64, i64* %PC.i179
  %492 = add i64 %491, 276
  %493 = load i64, i64* %PC.i179
  %494 = add i64 %493, 6
  %495 = load i64, i64* %PC.i179
  %496 = add i64 %495, 6
  store i64 %496, i64* %PC.i179
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %498 = load i8, i8* %497, align 1
  %499 = icmp ne i8 %498, 0
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %501 = load i8, i8* %500, align 1
  %502 = icmp ne i8 %501, 0
  %503 = xor i1 %499, %502
  %504 = xor i1 %503, true
  %505 = zext i1 %504 to i8
  store i8 %505, i8* %BRANCH_TAKEN, align 1
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %507 = select i1 %503, i64 %494, i64 %492
  store i64 %507, i64* %506, align 8
  store %struct.Memory* %loadMem_45361a, %struct.Memory** %MEMORY
  %loadBr_45361a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_45361a = icmp eq i8 %loadBr_45361a, 1
  br i1 %cmpBr_45361a, label %block_.L_45372e, label %block_453620

block_453620:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_453620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 1
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 15
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %516 to i64*
  %517 = load i64, i64* %RBP.i178
  %518 = sub i64 %517, 8
  %519 = load i64, i64* %PC.i176
  %520 = add i64 %519, 4
  store i64 %520, i64* %PC.i176
  %521 = inttoptr i64 %518 to i64*
  %522 = load i64, i64* %521
  store i64 %522, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_453620, %struct.Memory** %MEMORY
  %loadMem_453624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %524 = getelementptr inbounds %struct.GPR, %struct.GPR* %523, i32 0, i32 33
  %525 = getelementptr inbounds %struct.Reg, %struct.Reg* %524, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %525 to i64*
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 1
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %528 to i64*
  %529 = load i64, i64* %RAX.i175
  %530 = add i64 %529, 6480
  %531 = load i64, i64* %PC.i174
  %532 = add i64 %531, 7
  store i64 %532, i64* %PC.i174
  %533 = inttoptr i64 %530 to i64*
  %534 = load i64, i64* %533
  store i64 %534, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_453624, %struct.Memory** %MEMORY
  %loadMem_45362b = load %struct.Memory*, %struct.Memory** %MEMORY
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %536 = getelementptr inbounds %struct.GPR, %struct.GPR* %535, i32 0, i32 33
  %537 = getelementptr inbounds %struct.Reg, %struct.Reg* %536, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %537 to i64*
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %539 = getelementptr inbounds %struct.GPR, %struct.GPR* %538, i32 0, i32 1
  %540 = getelementptr inbounds %struct.Reg, %struct.Reg* %539, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %540 to i64*
  %541 = load i64, i64* %RAX.i173
  %542 = load i64, i64* %PC.i172
  %543 = add i64 %542, 3
  store i64 %543, i64* %PC.i172
  %544 = inttoptr i64 %541 to i64*
  %545 = load i64, i64* %544
  store i64 %545, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_45362b, %struct.Memory** %MEMORY
  %loadMem_45362e = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 5
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 15
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %554 to i64*
  %555 = load i64, i64* %RBP.i171
  %556 = sub i64 %555, 12
  %557 = load i64, i64* %PC.i169
  %558 = add i64 %557, 4
  store i64 %558, i64* %PC.i169
  %559 = inttoptr i64 %556 to i32*
  %560 = load i32, i32* %559
  %561 = sext i32 %560 to i64
  store i64 %561, i64* %RCX.i170, align 8
  store %struct.Memory* %loadMem_45362e, %struct.Memory** %MEMORY
  %loadMem_453632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 1
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 5
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %570 to i64*
  %571 = load i64, i64* %RAX.i167
  %572 = load i64, i64* %RCX.i168
  %573 = mul i64 %572, 8
  %574 = add i64 %573, %571
  %575 = load i64, i64* %PC.i166
  %576 = add i64 %575, 4
  store i64 %576, i64* %PC.i166
  %577 = inttoptr i64 %574 to i64*
  %578 = load i64, i64* %577
  store i64 %578, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_453632, %struct.Memory** %MEMORY
  %loadMem_453636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 33
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %581 to i64*
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 5
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 15
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %587 to i64*
  %588 = load i64, i64* %RBP.i165
  %589 = sub i64 %588, 16
  %590 = load i64, i64* %PC.i163
  %591 = add i64 %590, 4
  store i64 %591, i64* %PC.i163
  %592 = inttoptr i64 %589 to i32*
  %593 = load i32, i32* %592
  %594 = sext i32 %593 to i64
  store i64 %594, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_453636, %struct.Memory** %MEMORY
  %loadMem_45363a = load %struct.Memory*, %struct.Memory** %MEMORY
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 33
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 1
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %603 to i64*
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 7
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %606 to i64*
  %607 = load i64, i64* %RAX.i160
  %608 = load i64, i64* %RCX.i161
  %609 = mul i64 %608, 2
  %610 = add i64 %609, %607
  %611 = load i64, i64* %PC.i159
  %612 = add i64 %611, 4
  store i64 %612, i64* %PC.i159
  %613 = inttoptr i64 %610 to i16*
  %614 = load i16, i16* %613
  %615 = sext i16 %614 to i64
  %616 = and i64 %615, 4294967295
  store i64 %616, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_45363a, %struct.Memory** %MEMORY
  %loadMem_45363e = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 7
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %EDX.i157 = bitcast %union.anon* %622 to i32*
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %624 = getelementptr inbounds %struct.GPR, %struct.GPR* %623, i32 0, i32 15
  %625 = getelementptr inbounds %struct.Reg, %struct.Reg* %624, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %625 to i64*
  %626 = load i64, i64* %RBP.i158
  %627 = sub i64 %626, 20
  %628 = load i32, i32* %EDX.i157
  %629 = zext i32 %628 to i64
  %630 = load i64, i64* %PC.i156
  %631 = add i64 %630, 3
  store i64 %631, i64* %PC.i156
  %632 = inttoptr i64 %627 to i32*
  store i32 %628, i32* %632
  store %struct.Memory* %loadMem_45363e, %struct.Memory** %MEMORY
  %loadMem_453641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 1
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i155
  %643 = sub i64 %642, 8
  %644 = load i64, i64* %PC.i153
  %645 = add i64 %644, 4
  store i64 %645, i64* %PC.i153
  %646 = inttoptr i64 %643 to i64*
  %647 = load i64, i64* %646
  store i64 %647, i64* %RAX.i154, align 8
  store %struct.Memory* %loadMem_453641, %struct.Memory** %MEMORY
  %loadMem_453645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 33
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 1
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RAX.i152
  %655 = add i64 %654, 6480
  %656 = load i64, i64* %PC.i151
  %657 = add i64 %656, 7
  store i64 %657, i64* %PC.i151
  %658 = inttoptr i64 %655 to i64*
  %659 = load i64, i64* %658
  store i64 %659, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_453645, %struct.Memory** %MEMORY
  %loadMem_45364c = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %665 to i64*
  %666 = load i64, i64* %RAX.i150
  %667 = add i64 %666, 8
  %668 = load i64, i64* %PC.i149
  %669 = add i64 %668, 4
  store i64 %669, i64* %PC.i149
  %670 = inttoptr i64 %667 to i64*
  %671 = load i64, i64* %670
  store i64 %671, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_45364c, %struct.Memory** %MEMORY
  %loadMem_453650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 33
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %674 to i64*
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 5
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %680 to i64*
  %681 = load i64, i64* %RBP.i148
  %682 = sub i64 %681, 12
  %683 = load i64, i64* %PC.i146
  %684 = add i64 %683, 4
  store i64 %684, i64* %PC.i146
  %685 = inttoptr i64 %682 to i32*
  %686 = load i32, i32* %685
  %687 = sext i32 %686 to i64
  store i64 %687, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_453650, %struct.Memory** %MEMORY
  %loadMem_453654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 5
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RAX.i144
  %698 = load i64, i64* %RCX.i145
  %699 = mul i64 %698, 8
  %700 = add i64 %699, %697
  %701 = load i64, i64* %PC.i143
  %702 = add i64 %701, 4
  store i64 %702, i64* %PC.i143
  %703 = inttoptr i64 %700 to i64*
  %704 = load i64, i64* %703
  store i64 %704, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_453654, %struct.Memory** %MEMORY
  %loadMem_453658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 5
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 15
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %713 to i64*
  %714 = load i64, i64* %RBP.i142
  %715 = sub i64 %714, 16
  %716 = load i64, i64* %PC.i140
  %717 = add i64 %716, 4
  store i64 %717, i64* %PC.i140
  %718 = inttoptr i64 %715 to i32*
  %719 = load i32, i32* %718
  %720 = sext i32 %719 to i64
  store i64 %720, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_453658, %struct.Memory** %MEMORY
  %loadMem_45365c = load %struct.Memory*, %struct.Memory** %MEMORY
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %722 = getelementptr inbounds %struct.GPR, %struct.GPR* %721, i32 0, i32 33
  %723 = getelementptr inbounds %struct.Reg, %struct.Reg* %722, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %723 to i64*
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 1
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 5
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 7
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RDX.i139 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RAX.i137
  %734 = load i64, i64* %RCX.i138
  %735 = mul i64 %734, 2
  %736 = add i64 %735, %733
  %737 = load i64, i64* %PC.i136
  %738 = add i64 %737, 4
  store i64 %738, i64* %PC.i136
  %739 = inttoptr i64 %736 to i16*
  %740 = load i16, i16* %739
  %741 = sext i16 %740 to i64
  %742 = and i64 %741, 4294967295
  store i64 %742, i64* %RDX.i139, align 8
  store %struct.Memory* %loadMem_45365c, %struct.Memory** %MEMORY
  %loadMem_453660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 33
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 7
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %748 to i32*
  %749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %750 = getelementptr inbounds %struct.GPR, %struct.GPR* %749, i32 0, i32 15
  %751 = getelementptr inbounds %struct.Reg, %struct.Reg* %750, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %751 to i64*
  %752 = load i64, i64* %RBP.i135
  %753 = sub i64 %752, 24
  %754 = load i32, i32* %EDX.i
  %755 = zext i32 %754 to i64
  %756 = load i64, i64* %PC.i134
  %757 = add i64 %756, 3
  store i64 %757, i64* %PC.i134
  %758 = inttoptr i64 %753 to i32*
  store i32 %754, i32* %758
  store %struct.Memory* %loadMem_453660, %struct.Memory** %MEMORY
  %loadMem_453663 = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 15
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RBP.i133
  %766 = sub i64 %765, 20
  %767 = load i64, i64* %PC.i132
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i132
  %769 = inttoptr i64 %766 to i32*
  %770 = load i32, i32* %769
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %771, align 1
  %772 = and i32 %770, 255
  %773 = call i32 @llvm.ctpop.i32(i32 %772)
  %774 = trunc i32 %773 to i8
  %775 = and i8 %774, 1
  %776 = xor i8 %775, 1
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %776, i8* %777, align 1
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %778, align 1
  %779 = icmp eq i32 %770, 0
  %780 = zext i1 %779 to i8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %780, i8* %781, align 1
  %782 = lshr i32 %770, 31
  %783 = trunc i32 %782 to i8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %783, i8* %784, align 1
  %785 = lshr i32 %770, 31
  %786 = xor i32 %782, %785
  %787 = add i32 %786, %785
  %788 = icmp eq i32 %787, 2
  %789 = zext i1 %788 to i8
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %789, i8* %790, align 1
  store %struct.Memory* %loadMem_453663, %struct.Memory** %MEMORY
  %loadMem_453667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %PC.i131
  %795 = add i64 %794, 28
  %796 = load i64, i64* %PC.i131
  %797 = add i64 %796, 6
  %798 = load i64, i64* %PC.i131
  %799 = add i64 %798, 6
  store i64 %799, i64* %PC.i131
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %801 = load i8, i8* %800, align 1
  %802 = icmp ne i8 %801, 0
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %804 = load i8, i8* %803, align 1
  %805 = icmp ne i8 %804, 0
  %806 = xor i1 %802, %805
  %807 = zext i1 %806 to i8
  store i8 %807, i8* %BRANCH_TAKEN, align 1
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %809 = select i1 %806, i64 %795, i64 %797
  store i64 %809, i64* %808, align 8
  store %struct.Memory* %loadMem_453667, %struct.Memory** %MEMORY
  %loadBr_453667 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_453667 = icmp eq i8 %loadBr_453667, 1
  br i1 %cmpBr_453667, label %block_.L_453683, label %block_45366d

block_45366d:                                     ; preds = %block_453620
  %loadMem_45366d = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 15
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %RBP.i130
  %820 = sub i64 %819, 8
  %821 = load i64, i64* %PC.i128
  %822 = add i64 %821, 4
  store i64 %822, i64* %PC.i128
  %823 = inttoptr i64 %820 to i64*
  %824 = load i64, i64* %823
  store i64 %824, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_45366d, %struct.Memory** %MEMORY
  %loadMem_453671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %826 = getelementptr inbounds %struct.GPR, %struct.GPR* %825, i32 0, i32 33
  %827 = getelementptr inbounds %struct.Reg, %struct.Reg* %826, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %827 to i64*
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %829 = getelementptr inbounds %struct.GPR, %struct.GPR* %828, i32 0, i32 5
  %830 = getelementptr inbounds %struct.Reg, %struct.Reg* %829, i32 0, i32 0
  %RCX.i126 = bitcast %union.anon* %830 to i64*
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 15
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %833 to i64*
  %834 = load i64, i64* %RBP.i127
  %835 = sub i64 %834, 20
  %836 = load i64, i64* %PC.i125
  %837 = add i64 %836, 4
  store i64 %837, i64* %PC.i125
  %838 = inttoptr i64 %835 to i32*
  %839 = load i32, i32* %838
  %840 = sext i32 %839 to i64
  store i64 %840, i64* %RCX.i126, align 8
  store %struct.Memory* %loadMem_453671, %struct.Memory** %MEMORY
  %loadMem_453675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %843 to i64*
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %845 = getelementptr inbounds %struct.GPR, %struct.GPR* %844, i32 0, i32 1
  %846 = getelementptr inbounds %struct.Reg, %struct.Reg* %845, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %846 to i64*
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 5
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %849 to i64*
  %850 = load i64, i64* %RAX.i123
  %851 = load i64, i64* %RCX.i124
  %852 = mul i64 %851, 8
  %853 = add i64 %850, 24
  %854 = add i64 %853, %852
  %855 = load i64, i64* %PC.i122
  %856 = add i64 %855, 5
  store i64 %856, i64* %PC.i122
  %857 = inttoptr i64 %854 to i64*
  %858 = load i64, i64* %857
  store i64 %858, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_453675, %struct.Memory** %MEMORY
  %loadMem_45367a = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %861 to i64*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 15
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RBP.i121
  %869 = sub i64 %868, 40
  %870 = load i64, i64* %RAX.i120
  %871 = load i64, i64* %PC.i119
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC.i119
  %873 = inttoptr i64 %869 to i64*
  store i64 %870, i64* %873
  store %struct.Memory* %loadMem_45367a, %struct.Memory** %MEMORY
  %loadMem_45367e = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %PC.i118
  %878 = add i64 %877, 18
  %879 = load i64, i64* %PC.i118
  %880 = add i64 %879, 5
  store i64 %880, i64* %PC.i118
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %878, i64* %881, align 8
  store %struct.Memory* %loadMem_45367e, %struct.Memory** %MEMORY
  br label %block_.L_453690

block_.L_453683:                                  ; preds = %block_453620
  %loadMem_453683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 1
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %EAX.i116 = bitcast %union.anon* %887 to i32*
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %889 = getelementptr inbounds %struct.GPR, %struct.GPR* %888, i32 0, i32 1
  %890 = getelementptr inbounds %struct.Reg, %struct.Reg* %889, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %890 to i64*
  %891 = load i64, i64* %RAX.i117
  %892 = load i32, i32* %EAX.i116
  %893 = zext i32 %892 to i64
  %894 = load i64, i64* %PC.i115
  %895 = add i64 %894, 2
  store i64 %895, i64* %PC.i115
  %896 = xor i64 %893, %891
  %897 = trunc i64 %896 to i32
  %898 = and i64 %896, 4294967295
  store i64 %898, i64* %RAX.i117, align 8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %899, align 1
  %900 = and i32 %897, 255
  %901 = call i32 @llvm.ctpop.i32(i32 %900)
  %902 = trunc i32 %901 to i8
  %903 = and i8 %902, 1
  %904 = xor i8 %903, 1
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %904, i8* %905, align 1
  %906 = icmp eq i32 %897, 0
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %907, i8* %908, align 1
  %909 = lshr i32 %897, 31
  %910 = trunc i32 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %910, i8* %911, align 1
  %912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %912, align 1
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %913, align 1
  store %struct.Memory* %loadMem_453683, %struct.Memory** %MEMORY
  %loadMem_453685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 1
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %919 to i32*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 5
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %922 to i64*
  %923 = load i32, i32* %EAX.i113
  %924 = zext i32 %923 to i64
  %925 = load i64, i64* %PC.i112
  %926 = add i64 %925, 2
  store i64 %926, i64* %PC.i112
  %927 = and i64 %924, 4294967295
  store i64 %927, i64* %RCX.i114, align 8
  store %struct.Memory* %loadMem_453685, %struct.Memory** %MEMORY
  %loadMem_453687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 33
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %930 to i64*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 5
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RCX.i110 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 15
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %936 to i64*
  %937 = load i64, i64* %RBP.i111
  %938 = sub i64 %937, 40
  %939 = load i64, i64* %RCX.i110
  %940 = load i64, i64* %PC.i109
  %941 = add i64 %940, 4
  store i64 %941, i64* %PC.i109
  %942 = inttoptr i64 %938 to i64*
  store i64 %939, i64* %942
  store %struct.Memory* %loadMem_453687, %struct.Memory** %MEMORY
  %loadMem_45368b = load %struct.Memory*, %struct.Memory** %MEMORY
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 33
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %945 to i64*
  %946 = load i64, i64* %PC.i108
  %947 = add i64 %946, 5
  %948 = load i64, i64* %PC.i108
  %949 = add i64 %948, 5
  store i64 %949, i64* %PC.i108
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %947, i64* %950, align 8
  store %struct.Memory* %loadMem_45368b, %struct.Memory** %MEMORY
  br label %block_.L_453690

block_.L_453690:                                  ; preds = %block_.L_453683, %block_45366d
  %loadMem_453690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 1
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 15
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %959 to i64*
  %960 = load i64, i64* %RBP.i107
  %961 = sub i64 %960, 40
  %962 = load i64, i64* %PC.i105
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC.i105
  %964 = inttoptr i64 %961 to i64*
  %965 = load i64, i64* %964
  store i64 %965, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_453690, %struct.Memory** %MEMORY
  %loadMem_453694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 5
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 15
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %RBP.i104
  %976 = sub i64 %975, 8
  %977 = load i64, i64* %PC.i102
  %978 = add i64 %977, 4
  store i64 %978, i64* %PC.i102
  %979 = inttoptr i64 %976 to i64*
  %980 = load i64, i64* %979
  store i64 %980, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_453694, %struct.Memory** %MEMORY
  %loadMem_453698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 33
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %983 to i64*
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %985 = getelementptr inbounds %struct.GPR, %struct.GPR* %984, i32 0, i32 5
  %986 = getelementptr inbounds %struct.Reg, %struct.Reg* %985, i32 0, i32 0
  %RCX.i101 = bitcast %union.anon* %986 to i64*
  %987 = load i64, i64* %RCX.i101
  %988 = add i64 %987, 6496
  %989 = load i64, i64* %PC.i100
  %990 = add i64 %989, 7
  store i64 %990, i64* %PC.i100
  %991 = inttoptr i64 %988 to i64*
  %992 = load i64, i64* %991
  store i64 %992, i64* %RCX.i101, align 8
  store %struct.Memory* %loadMem_453698, %struct.Memory** %MEMORY
  %loadMem_45369f = load %struct.Memory*, %struct.Memory** %MEMORY
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %994 = getelementptr inbounds %struct.GPR, %struct.GPR* %993, i32 0, i32 33
  %995 = getelementptr inbounds %struct.Reg, %struct.Reg* %994, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %995 to i64*
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 5
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %998 to i64*
  %999 = load i64, i64* %RCX.i99
  %1000 = load i64, i64* %PC.i98
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC.i98
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %RCX.i99, align 8
  store %struct.Memory* %loadMem_45369f, %struct.Memory** %MEMORY
  %loadMem_4536a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 7
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RDX.i96 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i97
  %1014 = sub i64 %1013, 12
  %1015 = load i64, i64* %PC.i95
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC.i95
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RDX.i96, align 8
  store %struct.Memory* %loadMem_4536a2, %struct.Memory** %MEMORY
  %loadMem_4536a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 5
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 7
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %1028 to i64*
  %1029 = load i64, i64* %RCX.i93
  %1030 = load i64, i64* %RDX.i94
  %1031 = mul i64 %1030, 8
  %1032 = add i64 %1031, %1029
  %1033 = load i64, i64* %PC.i92
  %1034 = add i64 %1033, 4
  store i64 %1034, i64* %PC.i92
  %1035 = inttoptr i64 %1032 to i64*
  %1036 = load i64, i64* %1035
  store i64 %1036, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_4536a6, %struct.Memory** %MEMORY
  %loadMem_4536aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 7
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RDX.i90 = bitcast %union.anon* %1042 to i64*
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 15
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %1045 to i64*
  %1046 = load i64, i64* %RBP.i91
  %1047 = sub i64 %1046, 16
  %1048 = load i64, i64* %PC.i89
  %1049 = add i64 %1048, 4
  store i64 %1049, i64* %PC.i89
  %1050 = inttoptr i64 %1047 to i32*
  %1051 = load i32, i32* %1050
  %1052 = sext i32 %1051 to i64
  store i64 %1052, i64* %RDX.i90, align 8
  store %struct.Memory* %loadMem_4536aa, %struct.Memory** %MEMORY
  %loadMem_4536ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 33
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 1
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 5
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 7
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RDX.i88 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RCX.i87
  %1066 = load i64, i64* %RDX.i88
  %1067 = mul i64 %1066, 8
  %1068 = add i64 %1067, %1065
  %1069 = load i64, i64* %RAX.i86
  %1070 = load i64, i64* %PC.i85
  %1071 = add i64 %1070, 4
  store i64 %1071, i64* %PC.i85
  %1072 = inttoptr i64 %1068 to i64*
  store i64 %1069, i64* %1072
  store %struct.Memory* %loadMem_4536ae, %struct.Memory** %MEMORY
  %loadMem_4536b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 15
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RBP.i84
  %1080 = sub i64 %1079, 24
  %1081 = load i64, i64* %PC.i83
  %1082 = add i64 %1081, 4
  store i64 %1082, i64* %PC.i83
  %1083 = inttoptr i64 %1080 to i32*
  %1084 = load i32, i32* %1083
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1085, align 1
  %1086 = and i32 %1084, 255
  %1087 = call i32 @llvm.ctpop.i32(i32 %1086)
  %1088 = trunc i32 %1087 to i8
  %1089 = and i8 %1088, 1
  %1090 = xor i8 %1089, 1
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1090, i8* %1091, align 1
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1092, align 1
  %1093 = icmp eq i32 %1084, 0
  %1094 = zext i1 %1093 to i8
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1094, i8* %1095, align 1
  %1096 = lshr i32 %1084, 31
  %1097 = trunc i32 %1096 to i8
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1097, i8* %1098, align 1
  %1099 = lshr i32 %1084, 31
  %1100 = xor i32 %1096, %1099
  %1101 = add i32 %1100, %1099
  %1102 = icmp eq i32 %1101, 2
  %1103 = zext i1 %1102 to i8
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1103, i8* %1104, align 1
  store %struct.Memory* %loadMem_4536b2, %struct.Memory** %MEMORY
  %loadMem_4536b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %PC.i82
  %1109 = add i64 %1108, 31
  %1110 = load i64, i64* %PC.i82
  %1111 = add i64 %1110, 6
  %1112 = load i64, i64* %PC.i82
  %1113 = add i64 %1112, 6
  store i64 %1113, i64* %PC.i82
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1115 = load i8, i8* %1114, align 1
  %1116 = icmp ne i8 %1115, 0
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1118 = load i8, i8* %1117, align 1
  %1119 = icmp ne i8 %1118, 0
  %1120 = xor i1 %1116, %1119
  %1121 = zext i1 %1120 to i8
  store i8 %1121, i8* %BRANCH_TAKEN, align 1
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1123 = select i1 %1120, i64 %1109, i64 %1111
  store i64 %1123, i64* %1122, align 8
  store %struct.Memory* %loadMem_4536b6, %struct.Memory** %MEMORY
  %loadBr_4536b6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4536b6 = icmp eq i8 %loadBr_4536b6, 1
  br i1 %cmpBr_4536b6, label %block_.L_4536d5, label %block_4536bc

block_4536bc:                                     ; preds = %block_.L_453690
  %loadMem_4536bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1125 = getelementptr inbounds %struct.GPR, %struct.GPR* %1124, i32 0, i32 33
  %1126 = getelementptr inbounds %struct.Reg, %struct.Reg* %1125, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %1126 to i64*
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 1
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %RAX.i80 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 15
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %1132 to i64*
  %1133 = load i64, i64* %RBP.i81
  %1134 = sub i64 %1133, 8
  %1135 = load i64, i64* %PC.i79
  %1136 = add i64 %1135, 4
  store i64 %1136, i64* %PC.i79
  %1137 = inttoptr i64 %1134 to i64*
  %1138 = load i64, i64* %1137
  store i64 %1138, i64* %RAX.i80, align 8
  store %struct.Memory* %loadMem_4536bc, %struct.Memory** %MEMORY
  %loadMem_4536c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 5
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 15
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %RBP.i78
  %1149 = sub i64 %1148, 24
  %1150 = load i64, i64* %PC.i76
  %1151 = add i64 %1150, 4
  store i64 %1151, i64* %PC.i76
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = sext i32 %1153 to i64
  store i64 %1154, i64* %RCX.i77, align 8
  store %struct.Memory* %loadMem_4536c0, %struct.Memory** %MEMORY
  %loadMem_4536c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 1
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 5
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RCX.i75 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RAX.i74
  %1165 = load i64, i64* %RCX.i75
  %1166 = mul i64 %1165, 8
  %1167 = add i64 %1164, 288
  %1168 = add i64 %1167, %1166
  %1169 = load i64, i64* %PC.i73
  %1170 = add i64 %1169, 8
  store i64 %1170, i64* %PC.i73
  %1171 = inttoptr i64 %1168 to i64*
  %1172 = load i64, i64* %1171
  store i64 %1172, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_4536c4, %struct.Memory** %MEMORY
  %loadMem_4536cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 33
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 1
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 15
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %1181 to i64*
  %1182 = load i64, i64* %RBP.i72
  %1183 = sub i64 %1182, 48
  %1184 = load i64, i64* %RAX.i71
  %1185 = load i64, i64* %PC.i70
  %1186 = add i64 %1185, 4
  store i64 %1186, i64* %PC.i70
  %1187 = inttoptr i64 %1183 to i64*
  store i64 %1184, i64* %1187
  store %struct.Memory* %loadMem_4536cc, %struct.Memory** %MEMORY
  %loadMem_4536d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 33
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1190 to i64*
  %1191 = load i64, i64* %PC.i69
  %1192 = add i64 %1191, 18
  %1193 = load i64, i64* %PC.i69
  %1194 = add i64 %1193, 5
  store i64 %1194, i64* %PC.i69
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1192, i64* %1195, align 8
  store %struct.Memory* %loadMem_4536d0, %struct.Memory** %MEMORY
  br label %block_.L_4536e2

block_.L_4536d5:                                  ; preds = %block_.L_453690
  %loadMem_4536d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %1198 to i64*
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 1
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %EAX.i67 = bitcast %union.anon* %1201 to i32*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %RAX.i68 = bitcast %union.anon* %1204 to i64*
  %1205 = load i64, i64* %RAX.i68
  %1206 = load i32, i32* %EAX.i67
  %1207 = zext i32 %1206 to i64
  %1208 = load i64, i64* %PC.i66
  %1209 = add i64 %1208, 2
  store i64 %1209, i64* %PC.i66
  %1210 = xor i64 %1207, %1205
  %1211 = trunc i64 %1210 to i32
  %1212 = and i64 %1210, 4294967295
  store i64 %1212, i64* %RAX.i68, align 8
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1213, align 1
  %1214 = and i32 %1211, 255
  %1215 = call i32 @llvm.ctpop.i32(i32 %1214)
  %1216 = trunc i32 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = xor i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1218, i8* %1219, align 1
  %1220 = icmp eq i32 %1211, 0
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i32 %1211, 31
  %1224 = trunc i32 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1224, i8* %1225, align 1
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1226, align 1
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1227, align 1
  store %struct.Memory* %loadMem_4536d5, %struct.Memory** %MEMORY
  %loadMem_4536d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 33
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1230 to i64*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %EAX.i64 = bitcast %union.anon* %1233 to i32*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 5
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %1236 to i64*
  %1237 = load i32, i32* %EAX.i64
  %1238 = zext i32 %1237 to i64
  %1239 = load i64, i64* %PC.i63
  %1240 = add i64 %1239, 2
  store i64 %1240, i64* %PC.i63
  %1241 = and i64 %1238, 4294967295
  store i64 %1241, i64* %RCX.i65, align 8
  store %struct.Memory* %loadMem_4536d7, %struct.Memory** %MEMORY
  %loadMem_4536d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 33
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 5
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RCX.i61 = bitcast %union.anon* %1247 to i64*
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1249 = getelementptr inbounds %struct.GPR, %struct.GPR* %1248, i32 0, i32 15
  %1250 = getelementptr inbounds %struct.Reg, %struct.Reg* %1249, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %1250 to i64*
  %1251 = load i64, i64* %RBP.i62
  %1252 = sub i64 %1251, 48
  %1253 = load i64, i64* %RCX.i61
  %1254 = load i64, i64* %PC.i60
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %PC.i60
  %1256 = inttoptr i64 %1252 to i64*
  store i64 %1253, i64* %1256
  store %struct.Memory* %loadMem_4536d9, %struct.Memory** %MEMORY
  %loadMem_4536dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %1259 to i64*
  %1260 = load i64, i64* %PC.i59
  %1261 = add i64 %1260, 5
  %1262 = load i64, i64* %PC.i59
  %1263 = add i64 %1262, 5
  store i64 %1263, i64* %PC.i59
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1261, i64* %1264, align 8
  store %struct.Memory* %loadMem_4536dd, %struct.Memory** %MEMORY
  br label %block_.L_4536e2

block_.L_4536e2:                                  ; preds = %block_.L_4536d5, %block_4536bc
  %loadMem_4536e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i58
  %1275 = sub i64 %1274, 48
  %1276 = load i64, i64* %PC.i56
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i56
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278
  store i64 %1279, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_4536e2, %struct.Memory** %MEMORY
  %loadMem_4536e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 5
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %1285 to i64*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 15
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %RBP.i55
  %1290 = sub i64 %1289, 8
  %1291 = load i64, i64* %PC.i53
  %1292 = add i64 %1291, 4
  store i64 %1292, i64* %PC.i53
  %1293 = inttoptr i64 %1290 to i64*
  %1294 = load i64, i64* %1293
  store i64 %1294, i64* %RCX.i54, align 8
  store %struct.Memory* %loadMem_4536e6, %struct.Memory** %MEMORY
  %loadMem_4536ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 33
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 5
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %1300 to i64*
  %1301 = load i64, i64* %RCX.i52
  %1302 = add i64 %1301, 6496
  %1303 = load i64, i64* %PC.i51
  %1304 = add i64 %1303, 7
  store i64 %1304, i64* %PC.i51
  %1305 = inttoptr i64 %1302 to i64*
  %1306 = load i64, i64* %1305
  store i64 %1306, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_4536ea, %struct.Memory** %MEMORY
  %loadMem_4536f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 33
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 5
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %RCX.i50
  %1314 = add i64 %1313, 8
  %1315 = load i64, i64* %PC.i49
  %1316 = add i64 %1315, 4
  store i64 %1316, i64* %PC.i49
  %1317 = inttoptr i64 %1314 to i64*
  %1318 = load i64, i64* %1317
  store i64 %1318, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_4536f1, %struct.Memory** %MEMORY
  %loadMem_4536f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1320 = getelementptr inbounds %struct.GPR, %struct.GPR* %1319, i32 0, i32 33
  %1321 = getelementptr inbounds %struct.Reg, %struct.Reg* %1320, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %1321 to i64*
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 7
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 15
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %1327 to i64*
  %1328 = load i64, i64* %RBP.i48
  %1329 = sub i64 %1328, 12
  %1330 = load i64, i64* %PC.i46
  %1331 = add i64 %1330, 4
  store i64 %1331, i64* %PC.i46
  %1332 = inttoptr i64 %1329 to i32*
  %1333 = load i32, i32* %1332
  %1334 = sext i32 %1333 to i64
  store i64 %1334, i64* %RDX.i47, align 8
  store %struct.Memory* %loadMem_4536f5, %struct.Memory** %MEMORY
  %loadMem_4536f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 33
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %1337 to i64*
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 5
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 7
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %RCX.i44
  %1345 = load i64, i64* %RDX.i45
  %1346 = mul i64 %1345, 8
  %1347 = add i64 %1346, %1344
  %1348 = load i64, i64* %PC.i43
  %1349 = add i64 %1348, 4
  store i64 %1349, i64* %PC.i43
  %1350 = inttoptr i64 %1347 to i64*
  %1351 = load i64, i64* %1350
  store i64 %1351, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_4536f9, %struct.Memory** %MEMORY
  %loadMem_4536fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 33
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 7
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RDX.i41 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i42
  %1362 = sub i64 %1361, 16
  %1363 = load i64, i64* %PC.i40
  %1364 = add i64 %1363, 4
  store i64 %1364, i64* %PC.i40
  %1365 = inttoptr i64 %1362 to i32*
  %1366 = load i32, i32* %1365
  %1367 = sext i32 %1366 to i64
  store i64 %1367, i64* %RDX.i41, align 8
  store %struct.Memory* %loadMem_4536fd, %struct.Memory** %MEMORY
  %loadMem_453701 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 1
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 5
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 7
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %RCX.i39
  %1381 = load i64, i64* %RDX.i
  %1382 = mul i64 %1381, 8
  %1383 = add i64 %1382, %1380
  %1384 = load i64, i64* %RAX.i38
  %1385 = load i64, i64* %PC.i37
  %1386 = add i64 %1385, 4
  store i64 %1386, i64* %PC.i37
  %1387 = inttoptr i64 %1383 to i64*
  store i64 %1384, i64* %1387
  store %struct.Memory* %loadMem_453701, %struct.Memory** %MEMORY
  %loadMem_453705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 1
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %1393 to i64*
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 15
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %1396 to i64*
  %1397 = load i64, i64* %RBP.i36
  %1398 = sub i64 %1397, 8
  %1399 = load i64, i64* %PC.i34
  %1400 = add i64 %1399, 4
  store i64 %1400, i64* %PC.i34
  %1401 = inttoptr i64 %1398 to i64*
  %1402 = load i64, i64* %1401
  store i64 %1402, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_453705, %struct.Memory** %MEMORY
  %loadMem_453709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 33
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %1405 to i64*
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1407 = getelementptr inbounds %struct.GPR, %struct.GPR* %1406, i32 0, i32 1
  %1408 = getelementptr inbounds %struct.Reg, %struct.Reg* %1407, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %1408 to i64*
  %1409 = load i64, i64* %RAX.i33
  %1410 = add i64 %1409, 6520
  %1411 = load i64, i64* %PC.i32
  %1412 = add i64 %1411, 7
  store i64 %1412, i64* %PC.i32
  %1413 = inttoptr i64 %1410 to i64*
  %1414 = load i64, i64* %1413
  store i64 %1414, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_453709, %struct.Memory** %MEMORY
  %loadMem_453710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 33
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 5
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %1420 to i64*
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 15
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %1423 to i64*
  %1424 = load i64, i64* %RBP.i31
  %1425 = sub i64 %1424, 12
  %1426 = load i64, i64* %PC.i29
  %1427 = add i64 %1426, 4
  store i64 %1427, i64* %PC.i29
  %1428 = inttoptr i64 %1425 to i32*
  %1429 = load i32, i32* %1428
  %1430 = sext i32 %1429 to i64
  store i64 %1430, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_453710, %struct.Memory** %MEMORY
  %loadMem_453714 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %1433 to i64*
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1435 = getelementptr inbounds %struct.GPR, %struct.GPR* %1434, i32 0, i32 1
  %1436 = getelementptr inbounds %struct.Reg, %struct.Reg* %1435, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %1436 to i64*
  %1437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1438 = getelementptr inbounds %struct.GPR, %struct.GPR* %1437, i32 0, i32 5
  %1439 = getelementptr inbounds %struct.Reg, %struct.Reg* %1438, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %1439 to i64*
  %1440 = load i64, i64* %RAX.i27
  %1441 = load i64, i64* %RCX.i28
  %1442 = mul i64 %1441, 8
  %1443 = add i64 %1442, %1440
  %1444 = load i64, i64* %PC.i26
  %1445 = add i64 %1444, 4
  store i64 %1445, i64* %PC.i26
  %1446 = inttoptr i64 %1443 to i64*
  %1447 = load i64, i64* %1446
  store i64 %1447, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_453714, %struct.Memory** %MEMORY
  %loadMem_453718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 33
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %1450 to i64*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %1453 to i64*
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 15
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %RBP.i25
  %1458 = sub i64 %1457, 16
  %1459 = load i64, i64* %PC.i23
  %1460 = add i64 %1459, 4
  store i64 %1460, i64* %PC.i23
  %1461 = inttoptr i64 %1458 to i32*
  %1462 = load i32, i32* %1461
  %1463 = sext i32 %1462 to i64
  store i64 %1463, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_453718, %struct.Memory** %MEMORY
  %loadMem_45371c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 1
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 5
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RAX.i22
  %1474 = load i64, i64* %RCX.i
  %1475 = add i64 %1474, %1473
  %1476 = load i64, i64* %PC.i21
  %1477 = add i64 %1476, 4
  store i64 %1477, i64* %PC.i21
  %1478 = inttoptr i64 %1475 to i8*
  store i8 1, i8* %1478
  store %struct.Memory* %loadMem_45371c, %struct.Memory** %MEMORY
  %loadMem_453720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 15
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %1487 to i64*
  %1488 = load i64, i64* %RBP.i20
  %1489 = sub i64 %1488, 16
  %1490 = load i64, i64* %PC.i18
  %1491 = add i64 %1490, 3
  store i64 %1491, i64* %PC.i18
  %1492 = inttoptr i64 %1489 to i32*
  %1493 = load i32, i32* %1492
  %1494 = zext i32 %1493 to i64
  store i64 %1494, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_453720, %struct.Memory** %MEMORY
  %loadMem_453723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 1
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RAX.i17
  %1502 = load i64, i64* %PC.i16
  %1503 = add i64 %1502, 3
  store i64 %1503, i64* %PC.i16
  %1504 = trunc i64 %1501 to i32
  %1505 = add i32 1, %1504
  %1506 = zext i32 %1505 to i64
  store i64 %1506, i64* %RAX.i17, align 8
  %1507 = icmp ult i32 %1505, %1504
  %1508 = icmp ult i32 %1505, 1
  %1509 = or i1 %1507, %1508
  %1510 = zext i1 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1510, i8* %1511, align 1
  %1512 = and i32 %1505, 255
  %1513 = call i32 @llvm.ctpop.i32(i32 %1512)
  %1514 = trunc i32 %1513 to i8
  %1515 = and i8 %1514, 1
  %1516 = xor i8 %1515, 1
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1516, i8* %1517, align 1
  %1518 = xor i64 1, %1501
  %1519 = trunc i64 %1518 to i32
  %1520 = xor i32 %1519, %1505
  %1521 = lshr i32 %1520, 4
  %1522 = trunc i32 %1521 to i8
  %1523 = and i8 %1522, 1
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1523, i8* %1524, align 1
  %1525 = icmp eq i32 %1505, 0
  %1526 = zext i1 %1525 to i8
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1526, i8* %1527, align 1
  %1528 = lshr i32 %1505, 31
  %1529 = trunc i32 %1528 to i8
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1529, i8* %1530, align 1
  %1531 = lshr i32 %1504, 31
  %1532 = xor i32 %1528, %1531
  %1533 = add i32 %1532, %1528
  %1534 = icmp eq i32 %1533, 2
  %1535 = zext i1 %1534 to i8
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1535, i8* %1536, align 1
  store %struct.Memory* %loadMem_453723, %struct.Memory** %MEMORY
  %loadMem_453726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 33
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 1
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %1542 to i32*
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1544 = getelementptr inbounds %struct.GPR, %struct.GPR* %1543, i32 0, i32 15
  %1545 = getelementptr inbounds %struct.Reg, %struct.Reg* %1544, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %1545 to i64*
  %1546 = load i64, i64* %RBP.i15
  %1547 = sub i64 %1546, 16
  %1548 = load i32, i32* %EAX.i14
  %1549 = zext i32 %1548 to i64
  %1550 = load i64, i64* %PC.i13
  %1551 = add i64 %1550, 3
  store i64 %1551, i64* %PC.i13
  %1552 = inttoptr i64 %1547 to i32*
  store i32 %1548, i32* %1552
  store %struct.Memory* %loadMem_453726, %struct.Memory** %MEMORY
  %loadMem_453729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %1555 to i64*
  %1556 = load i64, i64* %PC.i12
  %1557 = add i64 %1556, -302
  %1558 = load i64, i64* %PC.i12
  %1559 = add i64 %1558, 5
  store i64 %1559, i64* %PC.i12
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1557, i64* %1560, align 8
  store %struct.Memory* %loadMem_453729, %struct.Memory** %MEMORY
  br label %block_.L_4535fb

block_.L_45372e:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_45372e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 33
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1563 to i64*
  %1564 = load i64, i64* %PC.i11
  %1565 = add i64 %1564, 5
  %1566 = load i64, i64* %PC.i11
  %1567 = add i64 %1566, 5
  store i64 %1567, i64* %PC.i11
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1565, i64* %1568, align 8
  store %struct.Memory* %loadMem_45372e, %struct.Memory** %MEMORY
  br label %block_.L_453733

block_.L_453733:                                  ; preds = %block_.L_45372e
  %loadMem_453733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 1
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 15
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RBP.i10
  %1579 = sub i64 %1578, 12
  %1580 = load i64, i64* %PC.i8
  %1581 = add i64 %1580, 3
  store i64 %1581, i64* %PC.i8
  %1582 = inttoptr i64 %1579 to i32*
  %1583 = load i32, i32* %1582
  %1584 = zext i32 %1583 to i64
  store i64 %1584, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_453733, %struct.Memory** %MEMORY
  %loadMem_453736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 33
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %1587 to i64*
  %1588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1589 = getelementptr inbounds %struct.GPR, %struct.GPR* %1588, i32 0, i32 1
  %1590 = getelementptr inbounds %struct.Reg, %struct.Reg* %1589, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1590 to i64*
  %1591 = load i64, i64* %RAX.i
  %1592 = load i64, i64* %PC.i7
  %1593 = add i64 %1592, 3
  store i64 %1593, i64* %PC.i7
  %1594 = trunc i64 %1591 to i32
  %1595 = add i32 1, %1594
  %1596 = zext i32 %1595 to i64
  store i64 %1596, i64* %RAX.i, align 8
  %1597 = icmp ult i32 %1595, %1594
  %1598 = icmp ult i32 %1595, 1
  %1599 = or i1 %1597, %1598
  %1600 = zext i1 %1599 to i8
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1600, i8* %1601, align 1
  %1602 = and i32 %1595, 255
  %1603 = call i32 @llvm.ctpop.i32(i32 %1602)
  %1604 = trunc i32 %1603 to i8
  %1605 = and i8 %1604, 1
  %1606 = xor i8 %1605, 1
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1606, i8* %1607, align 1
  %1608 = xor i64 1, %1591
  %1609 = trunc i64 %1608 to i32
  %1610 = xor i32 %1609, %1595
  %1611 = lshr i32 %1610, 4
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1613, i8* %1614, align 1
  %1615 = icmp eq i32 %1595, 0
  %1616 = zext i1 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1616, i8* %1617, align 1
  %1618 = lshr i32 %1595, 31
  %1619 = trunc i32 %1618 to i8
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1619, i8* %1620, align 1
  %1621 = lshr i32 %1594, 31
  %1622 = xor i32 %1618, %1621
  %1623 = add i32 %1622, %1618
  %1624 = icmp eq i32 %1623, 2
  %1625 = zext i1 %1624 to i8
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1625, i8* %1626, align 1
  store %struct.Memory* %loadMem_453736, %struct.Memory** %MEMORY
  %loadMem_453739 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1628 = getelementptr inbounds %struct.GPR, %struct.GPR* %1627, i32 0, i32 33
  %1629 = getelementptr inbounds %struct.Reg, %struct.Reg* %1628, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1629 to i64*
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 1
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %1632 to i32*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 15
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %1635 to i64*
  %1636 = load i64, i64* %RBP.i6
  %1637 = sub i64 %1636, 12
  %1638 = load i32, i32* %EAX.i
  %1639 = zext i32 %1638 to i64
  %1640 = load i64, i64* %PC.i5
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC.i5
  %1642 = inttoptr i64 %1637 to i32*
  store i32 %1638, i32* %1642
  store %struct.Memory* %loadMem_453739, %struct.Memory** %MEMORY
  %loadMem_45373c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1644 = getelementptr inbounds %struct.GPR, %struct.GPR* %1643, i32 0, i32 33
  %1645 = getelementptr inbounds %struct.Reg, %struct.Reg* %1644, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1645 to i64*
  %1646 = load i64, i64* %PC.i4
  %1647 = add i64 %1646, -365
  %1648 = load i64, i64* %PC.i4
  %1649 = add i64 %1648, 5
  store i64 %1649, i64* %PC.i4
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1647, i64* %1650, align 8
  store %struct.Memory* %loadMem_45373c, %struct.Memory** %MEMORY
  br label %block_.L_4535cf

block_.L_453741:                                  ; preds = %routine_idivl__esi.exit213
  %loadMem_453741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 33
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %PC.i2
  %1658 = add i64 %1657, 1
  store i64 %1658, i64* %PC.i2
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1660 = load i64, i64* %1659, align 8
  %1661 = add i64 %1660, 8
  %1662 = inttoptr i64 %1660 to i64*
  %1663 = load i64, i64* %1662
  store i64 %1663, i64* %RBP.i3, align 8
  store i64 %1661, i64* %1659, align 8
  store %struct.Memory* %loadMem_453741, %struct.Memory** %MEMORY
  %loadMem_453742 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1665 = getelementptr inbounds %struct.GPR, %struct.GPR* %1664, i32 0, i32 33
  %1666 = getelementptr inbounds %struct.Reg, %struct.Reg* %1665, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1666 to i64*
  %1667 = load i64, i64* %PC.i1
  %1668 = add i64 %1667, 1
  store i64 %1668, i64* %PC.i1
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1671 = load i64, i64* %1670, align 8
  %1672 = inttoptr i64 %1671 to i64*
  %1673 = load i64, i64* %1672
  store i64 %1673, i64* %1669, align 8
  %1674 = add i64 %1671, 8
  store i64 %1674, i64* %1670, align 8
  store %struct.Memory* %loadMem_453742, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_453742
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0x18f8__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6392
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cltd(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 1
  store i64 %7, i64* %PC
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %10 = bitcast %union.anon* %9 to i32*
  %11 = load i32, i32* %10, align 8
  %12 = sext i32 %11 to i64
  %13 = lshr i64 %12, 32
  store i64 %13, i64* %8, align 8
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

define %struct.Memory* @routine_idivl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %ESI = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %ESI
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 2
  store i64 %12, i64* %PC
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %14 = bitcast %union.anon* %13 to i32*
  %15 = load i32, i32* %14, align 8
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %18 = bitcast %union.anon* %17 to i32*
  %19 = load i32, i32* %18, align 8
  %20 = zext i32 %19 to i64
  %21 = shl i64 %10, 32
  %22 = ashr exact i64 %21, 32
  %23 = shl i64 %20, 32
  %24 = or i64 %23, %16
  %25 = sdiv i64 %24, %22
  %26 = shl i64 %25, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp eq i64 %25, %27
  br i1 %28, label %33, label %29

; <label>:29:                                     ; preds = %block_400488
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %31, %struct.Memory* %2)
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

; <label>:33:                                     ; preds = %block_400488
  %34 = srem i64 %24, %22
  %35 = getelementptr inbounds %union.anon, %union.anon* %13, i64 0, i32 0
  %36 = and i64 %25, 4294967295
  store i64 %36, i64* %35, align 8
  %37 = getelementptr inbounds %union.anon, %union.anon* %17, i64 0, i32 0
  %38 = and i64 %34, 4294967295
  store i64 %38, i64* %37, align 8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %39, align 1
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %40, align 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %42, align 1
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %43, align 1
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %44, align 1
  br label %_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit

_ZN12_GLOBAL__N_1L10IDIVedxeaxI2RnIjEEEP6MemoryS4_R5StateT_.exit: ; preds = %29, %33
  %45 = phi %struct.Memory* [ %32, %29 ], [ %2, %33 ]
  ret %struct.Memory* %45
}

define %struct.Memory* @routine_cmpl__eax___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jge_.L_453741(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl_0x18fc__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 6396
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_45372e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6480
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

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl___rax__rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = sext i16 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jl_.L_453683(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x18__rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 24
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 5
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19
  store i64 %20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_453690(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rcx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq_0x1960__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6496
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = inttoptr i64 %9 to i64*
  %13 = load i64, i64* %12
  store i64 %13, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rcx__rdx_8____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 8
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i64, i64* %RCX
  %16 = load i64, i64* %RDX
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 24
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

define %struct.Memory* @routine_jl_.L_4536d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x120__rax__rcx_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 288
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i64*
  %20 = load i64, i64* %19
  store i64 %20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4536e2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__rcx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x8__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1978__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6520
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1____rax__rcx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  store i8 1, i8* %17
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

define %struct.Memory* @routine_jmpq_.L_4535fb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_453733(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4535cf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
