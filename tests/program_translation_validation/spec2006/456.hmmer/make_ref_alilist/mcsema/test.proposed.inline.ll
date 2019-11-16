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
%G__0x45594d_type = type <{ [8 x i8] }>
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
@G__0x45594d = global %G__0x45594d_type zeroinitializer

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
define %struct.Memory* @make_ref_alilist(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_402210 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_402210, %struct.Memory** %MEMORY
  %loadMem_402211 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i21 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i21
  %27 = load i64, i64* %PC.i20
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i20
  store i64 %26, i64* %RBP.i22, align 8
  store %struct.Memory* %loadMem_402211, %struct.Memory** %MEMORY
  %loadMem_402214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i520 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i520
  %36 = load i64, i64* %PC.i519
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i519
  %38 = sub i64 %35, 128
  store i64 %38, i64* %RSP.i520, align 8
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
  store %struct.Memory* %loadMem_402214, %struct.Memory** %MEMORY
  %loadMem_40221b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i554
  %77 = add i64 %76, 16
  %78 = load i64, i64* %PC.i552
  %79 = add i64 %78, 4
  store i64 %79, i64* %PC.i552
  %80 = inttoptr i64 %77 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_40221b, %struct.Memory** %MEMORY
  %loadMem_40221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 21
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %R10.i585 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %PC.i584
  %89 = add i64 %88, 10
  store i64 %89, i64* %PC.i584
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %R10.i585, align 8
  store %struct.Memory* %loadMem_40221f, %struct.Memory** %MEMORY
  %loadMem_402229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 33
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %92 to i64*
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 23
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %R11D.i583 = bitcast %union.anon* %95 to i32*
  %96 = bitcast i32* %R11D.i583 to i64*
  %97 = load i64, i64* %PC.i582
  %98 = add i64 %97, 6
  store i64 %98, i64* %PC.i582
  store i64 236, i64* %96, align 8
  store %struct.Memory* %loadMem_402229, %struct.Memory** %MEMORY
  %loadMem_40222f = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RDI.i580 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i581 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i581
  %109 = sub i64 %108, 8
  %110 = load i64, i64* %RDI.i580
  %111 = load i64, i64* %PC.i579
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i579
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_40222f, %struct.Memory** %MEMORY
  %loadMem_402233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 9
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RSI.i577 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i578
  %124 = sub i64 %123, 16
  %125 = load i64, i64* %RSI.i577
  %126 = load i64, i64* %PC.i576
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i576
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_402233, %struct.Memory** %MEMORY
  %loadMem_402237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 7
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RDX.i574 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i575
  %139 = sub i64 %138, 24
  %140 = load i64, i64* %RDX.i574
  %141 = load i64, i64* %PC.i573
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i573
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  store %struct.Memory* %loadMem_402237, %struct.Memory** %MEMORY
  %loadMem_40223b = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RCX.i571 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i572
  %154 = sub i64 %153, 32
  %155 = load i64, i64* %RCX.i571
  %156 = load i64, i64* %PC.i570
  %157 = add i64 %156, 4
  store i64 %157, i64* %PC.i570
  %158 = inttoptr i64 %154 to i64*
  store i64 %155, i64* %158
  store %struct.Memory* %loadMem_40223b, %struct.Memory** %MEMORY
  %loadMem_40223f = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i569 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 17
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R8.i = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i569
  %169 = sub i64 %168, 40
  %170 = load i64, i64* %R8.i
  %171 = load i64, i64* %PC.i568
  %172 = add i64 %171, 4
  store i64 %172, i64* %PC.i568
  %173 = inttoptr i64 %169 to i64*
  store i64 %170, i64* %173
  store %struct.Memory* %loadMem_40223f, %struct.Memory** %MEMORY
  %loadMem_402243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 19
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %R9.i = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i567
  %184 = sub i64 %183, 48
  %185 = load i64, i64* %R9.i
  %186 = load i64, i64* %PC.i566
  %187 = add i64 %186, 4
  store i64 %187, i64* %PC.i566
  %188 = inttoptr i64 %184 to i64*
  store i64 %185, i64* %188
  store %struct.Memory* %loadMem_402243, %struct.Memory** %MEMORY
  %loadMem_402247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 33
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 1
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RAX.i564 = bitcast %union.anon* %194 to i64*
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 15
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %RBP.i565 = bitcast %union.anon* %197 to i64*
  %198 = load i64, i64* %RBP.i565
  %199 = sub i64 %198, 56
  %200 = load i64, i64* %RAX.i564
  %201 = load i64, i64* %PC.i563
  %202 = add i64 %201, 4
  store i64 %202, i64* %PC.i563
  %203 = inttoptr i64 %199 to i64*
  store i64 %200, i64* %203
  store %struct.Memory* %loadMem_402247, %struct.Memory** %MEMORY
  %loadMem_40224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 33
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 11
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RDI.i561 = bitcast %union.anon* %209 to i64*
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 15
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %212 to i64*
  %213 = load i64, i64* %RBP.i562
  %214 = sub i64 %213, 32
  %215 = load i64, i64* %PC.i560
  %216 = add i64 %215, 4
  store i64 %216, i64* %PC.i560
  %217 = inttoptr i64 %214 to i64*
  %218 = load i64, i64* %217
  store i64 %218, i64* %RDI.i561, align 8
  store %struct.Memory* %loadMem_40224b, %struct.Memory** %MEMORY
  %loadMem_40224f = load %struct.Memory*, %struct.Memory** %MEMORY
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 33
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 23
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %224 to i32*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 15
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %227 to i64*
  %228 = load i64, i64* %RBP.i559
  %229 = sub i64 %228, 96
  %230 = load i32, i32* %R11D.i
  %231 = zext i32 %230 to i64
  %232 = load i64, i64* %PC.i558
  %233 = add i64 %232, 4
  store i64 %233, i64* %PC.i558
  %234 = inttoptr i64 %229 to i32*
  store i32 %230, i32* %234
  store %struct.Memory* %loadMem_40224f, %struct.Memory** %MEMORY
  %loadMem_402253 = load %struct.Memory*, %struct.Memory** %MEMORY
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 33
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %237 to i64*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 15
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 21
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %R10.i = bitcast %union.anon* %243 to i64*
  %244 = load i64, i64* %RBP.i557
  %245 = sub i64 %244, 104
  %246 = load i64, i64* %R10.i
  %247 = load i64, i64* %PC.i556
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i556
  %249 = inttoptr i64 %245 to i64*
  store i64 %246, i64* %249
  store %struct.Memory* %loadMem_402253, %struct.Memory** %MEMORY
  %loadMem1_402257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %251 = getelementptr inbounds %struct.GPR, %struct.GPR* %250, i32 0, i32 33
  %252 = getelementptr inbounds %struct.Reg, %struct.Reg* %251, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %252 to i64*
  %253 = load i64, i64* %PC.i555
  %254 = add i64 %253, -3575
  %255 = load i64, i64* %PC.i555
  %256 = add i64 %255, 5
  %257 = load i64, i64* %PC.i555
  %258 = add i64 %257, 5
  store i64 %258, i64* %PC.i555
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = add i64 %260, -8
  %262 = inttoptr i64 %261 to i64*
  store i64 %256, i64* %262
  store i64 %261, i64* %259, align 8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %254, i64* %263, align 8
  store %struct.Memory* %loadMem1_402257, %struct.Memory** %MEMORY
  %loadMem2_402257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402257 = load i64, i64* %3
  %264 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_402257)
  store %struct.Memory* %264, %struct.Memory** %MEMORY
  %loadMem_40225c = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RAX.i551
  %272 = load i64, i64* %PC.i550
  %273 = add i64 %272, 4
  store i64 %273, i64* %PC.i550
  %274 = shl i64 %271, 1
  %275 = icmp slt i64 %274, 0
  %276 = shl i64 %274, 1
  store i64 %276, i64* %RAX.i551, align 8
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %278 = zext i1 %275 to i8
  store i8 %278, i8* %277, align 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %280 = trunc i64 %276 to i32
  %281 = and i32 %280, 254
  %282 = call i32 @llvm.ctpop.i32(i32 %281)
  %283 = trunc i32 %282 to i8
  %284 = and i8 %283, 1
  %285 = xor i8 %284, 1
  store i8 %285, i8* %279, align 1
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %286, align 1
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %288 = icmp eq i64 %276, 0
  %289 = zext i1 %288 to i8
  store i8 %289, i8* %287, align 1
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %291 = lshr i64 %276, 63
  %292 = trunc i64 %291 to i8
  store i8 %292, i8* %290, align 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %293, align 1
  store %struct.Memory* %loadMem_40225c, %struct.Memory** %MEMORY
  %loadMem_402260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 11
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RDI.i548 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 15
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %302 to i64*
  %303 = load i64, i64* %RBP.i549
  %304 = sub i64 %303, 104
  %305 = load i64, i64* %PC.i547
  %306 = add i64 %305, 4
  store i64 %306, i64* %PC.i547
  %307 = inttoptr i64 %304 to i64*
  %308 = load i64, i64* %307
  store i64 %308, i64* %RDI.i548, align 8
  store %struct.Memory* %loadMem_402260, %struct.Memory** %MEMORY
  %loadMem_402264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 9
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RSI.i545 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 15
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %317 to i64*
  %318 = load i64, i64* %RBP.i546
  %319 = sub i64 %318, 96
  %320 = load i64, i64* %PC.i544
  %321 = add i64 %320, 3
  store i64 %321, i64* %PC.i544
  %322 = inttoptr i64 %319 to i32*
  %323 = load i32, i32* %322
  %324 = zext i32 %323 to i64
  store i64 %324, i64* %RSI.i545, align 8
  store %struct.Memory* %loadMem_402264, %struct.Memory** %MEMORY
  %loadMem_402267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 33
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %327 to i64*
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 1
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 7
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RAX.i542
  %335 = load i64, i64* %PC.i541
  %336 = add i64 %335, 3
  store i64 %336, i64* %PC.i541
  store i64 %334, i64* %RDX.i543, align 8
  store %struct.Memory* %loadMem_402267, %struct.Memory** %MEMORY
  %loadMem1_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 33
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %PC.i540
  %341 = add i64 %340, 278006
  %342 = load i64, i64* %PC.i540
  %343 = add i64 %342, 5
  %344 = load i64, i64* %PC.i540
  %345 = add i64 %344, 5
  store i64 %345, i64* %PC.i540
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  %348 = add i64 %347, -8
  %349 = inttoptr i64 %348 to i64*
  store i64 %343, i64* %349
  store i64 %348, i64* %346, align 8
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %341, i64* %350, align 8
  store %struct.Memory* %loadMem1_40226a, %struct.Memory** %MEMORY
  %loadMem2_40226a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40226a = load i64, i64* %3
  %call2_40226a = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_40226a, %struct.Memory* %loadMem2_40226a)
  store %struct.Memory* %call2_40226a, %struct.Memory** %MEMORY
  %loadMem_40226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 11
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RDI.i539 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %PC.i538
  %358 = add i64 %357, 10
  store i64 %358, i64* %PC.i538
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %RDI.i539, align 8
  store %struct.Memory* %loadMem_40226f, %struct.Memory** %MEMORY
  %loadMem_402279 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 9
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RSI.i537 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %PC.i536
  %366 = add i64 %365, 5
  store i64 %366, i64* %PC.i536
  store i64 237, i64* %RSI.i537, align 8
  store %struct.Memory* %loadMem_402279, %struct.Memory** %MEMORY
  %loadMem_40227e = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i535 = bitcast %union.anon* %375 to i64*
  %376 = load i64, i64* %RBP.i535
  %377 = sub i64 %376, 64
  %378 = load i64, i64* %RAX.i534
  %379 = load i64, i64* %PC.i533
  %380 = add i64 %379, 4
  store i64 %380, i64* %PC.i533
  %381 = inttoptr i64 %377 to i64*
  store i64 %378, i64* %381
  store %struct.Memory* %loadMem_40227e, %struct.Memory** %MEMORY
  %loadMem_402282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 33
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %384 to i64*
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %386 = getelementptr inbounds %struct.GPR, %struct.GPR* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.Reg, %struct.Reg* %386, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %387 to i64*
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 15
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %390 to i64*
  %391 = load i64, i64* %RBP.i532
  %392 = sub i64 %391, 32
  %393 = load i64, i64* %PC.i530
  %394 = add i64 %393, 4
  store i64 %394, i64* %PC.i530
  %395 = inttoptr i64 %392 to i64*
  %396 = load i64, i64* %395
  store i64 %396, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_402282, %struct.Memory** %MEMORY
  %loadMem_402286 = load %struct.Memory*, %struct.Memory** %MEMORY
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 33
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %399 to i64*
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 11
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %RDI.i528 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 15
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RBP.i529
  %407 = sub i64 %406, 112
  %408 = load i64, i64* %RDI.i528
  %409 = load i64, i64* %PC.i527
  %410 = add i64 %409, 4
  store i64 %410, i64* %PC.i527
  %411 = inttoptr i64 %407 to i64*
  store i64 %408, i64* %411
  store %struct.Memory* %loadMem_402286, %struct.Memory** %MEMORY
  %loadMem_40228a = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 1
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 11
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RDI.i526 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %RAX.i525
  %422 = load i64, i64* %PC.i524
  %423 = add i64 %422, 3
  store i64 %423, i64* %PC.i524
  store i64 %421, i64* %RDI.i526, align 8
  store %struct.Memory* %loadMem_40228a, %struct.Memory** %MEMORY
  %loadMem_40228d = load %struct.Memory*, %struct.Memory** %MEMORY
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 33
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %426 to i64*
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 9
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %429 to i32*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 15
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RBP.i523 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RBP.i523
  %434 = sub i64 %433, 116
  %435 = load i32, i32* %ESI.i
  %436 = zext i32 %435 to i64
  %437 = load i64, i64* %PC.i522
  %438 = add i64 %437, 3
  store i64 %438, i64* %PC.i522
  %439 = inttoptr i64 %434 to i32*
  store i32 %435, i32* %439
  store %struct.Memory* %loadMem_40228d, %struct.Memory** %MEMORY
  %loadMem1_402290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %PC.i521
  %444 = add i64 %443, -3632
  %445 = load i64, i64* %PC.i521
  %446 = add i64 %445, 5
  %447 = load i64, i64* %PC.i521
  %448 = add i64 %447, 5
  store i64 %448, i64* %PC.i521
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %450 = load i64, i64* %449, align 8
  %451 = add i64 %450, -8
  %452 = inttoptr i64 %451 to i64*
  store i64 %446, i64* %452
  store i64 %451, i64* %449, align 8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %444, i64* %453, align 8
  store %struct.Memory* %loadMem1_402290, %struct.Memory** %MEMORY
  %loadMem2_402290 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_402290 = load i64, i64* %3
  %454 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_402290)
  store %struct.Memory* %454, %struct.Memory** %MEMORY
  %loadMem_402295 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 1
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %460 to i64*
  %461 = load i64, i64* %RAX.i518
  %462 = load i64, i64* %PC.i517
  %463 = add i64 %462, 4
  store i64 %463, i64* %PC.i517
  %464 = shl i64 %461, 1
  %465 = icmp slt i64 %464, 0
  %466 = shl i64 %464, 1
  store i64 %466, i64* %RAX.i518, align 8
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %468 = zext i1 %465 to i8
  store i8 %468, i8* %467, align 1
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %470 = trunc i64 %466 to i32
  %471 = and i32 %470, 254
  %472 = call i32 @llvm.ctpop.i32(i32 %471)
  %473 = trunc i32 %472 to i8
  %474 = and i8 %473, 1
  %475 = xor i8 %474, 1
  store i8 %475, i8* %469, align 1
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %476, align 1
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %478 = icmp eq i64 %466, 0
  %479 = zext i1 %478 to i8
  store i8 %479, i8* %477, align 1
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %481 = lshr i64 %466, 63
  %482 = trunc i64 %481 to i8
  store i8 %482, i8* %480, align 1
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %483, align 1
  store %struct.Memory* %loadMem_402295, %struct.Memory** %MEMORY
  %loadMem_402299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 33
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %486 to i64*
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 11
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %RDI.i515 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 15
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %492 to i64*
  %493 = load i64, i64* %RBP.i516
  %494 = sub i64 %493, 112
  %495 = load i64, i64* %PC.i514
  %496 = add i64 %495, 4
  store i64 %496, i64* %PC.i514
  %497 = inttoptr i64 %494 to i64*
  %498 = load i64, i64* %497
  store i64 %498, i64* %RDI.i515, align 8
  store %struct.Memory* %loadMem_402299, %struct.Memory** %MEMORY
  %loadMem_40229d = load %struct.Memory*, %struct.Memory** %MEMORY
  %499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %500 = getelementptr inbounds %struct.GPR, %struct.GPR* %499, i32 0, i32 33
  %501 = getelementptr inbounds %struct.Reg, %struct.Reg* %500, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %501 to i64*
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 9
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %RSI.i512 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 15
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %507 to i64*
  %508 = load i64, i64* %RBP.i513
  %509 = sub i64 %508, 116
  %510 = load i64, i64* %PC.i511
  %511 = add i64 %510, 3
  store i64 %511, i64* %PC.i511
  %512 = inttoptr i64 %509 to i32*
  %513 = load i32, i32* %512
  %514 = zext i32 %513 to i64
  store i64 %514, i64* %RSI.i512, align 8
  store %struct.Memory* %loadMem_40229d, %struct.Memory** %MEMORY
  %loadMem_4022a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %516 = getelementptr inbounds %struct.GPR, %struct.GPR* %515, i32 0, i32 33
  %517 = getelementptr inbounds %struct.Reg, %struct.Reg* %516, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %517 to i64*
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %519 = getelementptr inbounds %struct.GPR, %struct.GPR* %518, i32 0, i32 1
  %520 = getelementptr inbounds %struct.Reg, %struct.Reg* %519, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %520 to i64*
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %522 = getelementptr inbounds %struct.GPR, %struct.GPR* %521, i32 0, i32 7
  %523 = getelementptr inbounds %struct.Reg, %struct.Reg* %522, i32 0, i32 0
  %RDX.i510 = bitcast %union.anon* %523 to i64*
  %524 = load i64, i64* %RAX.i509
  %525 = load i64, i64* %PC.i508
  %526 = add i64 %525, 3
  store i64 %526, i64* %PC.i508
  store i64 %524, i64* %RDX.i510, align 8
  store %struct.Memory* %loadMem_4022a0, %struct.Memory** %MEMORY
  %loadMem1_4022a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %528 = getelementptr inbounds %struct.GPR, %struct.GPR* %527, i32 0, i32 33
  %529 = getelementptr inbounds %struct.Reg, %struct.Reg* %528, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %529 to i64*
  %530 = load i64, i64* %PC.i507
  %531 = add i64 %530, 277949
  %532 = load i64, i64* %PC.i507
  %533 = add i64 %532, 5
  %534 = load i64, i64* %PC.i507
  %535 = add i64 %534, 5
  store i64 %535, i64* %PC.i507
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %537 = load i64, i64* %536, align 8
  %538 = add i64 %537, -8
  %539 = inttoptr i64 %538 to i64*
  store i64 %533, i64* %539
  store i64 %538, i64* %536, align 8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %531, i64* %540, align 8
  store %struct.Memory* %loadMem1_4022a3, %struct.Memory** %MEMORY
  %loadMem2_4022a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4022a3 = load i64, i64* %3
  %call2_4022a3 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_4022a3, %struct.Memory* %loadMem2_4022a3)
  store %struct.Memory* %call2_4022a3, %struct.Memory** %MEMORY
  %loadMem_4022a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %542 = getelementptr inbounds %struct.GPR, %struct.GPR* %541, i32 0, i32 33
  %543 = getelementptr inbounds %struct.Reg, %struct.Reg* %542, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %543 to i64*
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %545 = getelementptr inbounds %struct.GPR, %struct.GPR* %544, i32 0, i32 1
  %546 = getelementptr inbounds %struct.Reg, %struct.Reg* %545, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %546 to i64*
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 15
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %549 to i64*
  %550 = load i64, i64* %RBP.i506
  %551 = sub i64 %550, 88
  %552 = load i64, i64* %RAX.i505
  %553 = load i64, i64* %PC.i504
  %554 = add i64 %553, 4
  store i64 %554, i64* %PC.i504
  %555 = inttoptr i64 %551 to i64*
  store i64 %552, i64* %555
  store %struct.Memory* %loadMem_4022a8, %struct.Memory** %MEMORY
  %loadMem_4022ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %558 to i64*
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 15
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %561 to i64*
  %562 = load i64, i64* %RBP.i503
  %563 = sub i64 %562, 72
  %564 = load i64, i64* %PC.i502
  %565 = add i64 %564, 7
  store i64 %565, i64* %PC.i502
  %566 = inttoptr i64 %563 to i32*
  store i32 0, i32* %566
  store %struct.Memory* %loadMem_4022ac, %struct.Memory** %MEMORY
  %loadMem_4022b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %568 = getelementptr inbounds %struct.GPR, %struct.GPR* %567, i32 0, i32 33
  %569 = getelementptr inbounds %struct.Reg, %struct.Reg* %568, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %569 to i64*
  %570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %571 = getelementptr inbounds %struct.GPR, %struct.GPR* %570, i32 0, i32 15
  %572 = getelementptr inbounds %struct.Reg, %struct.Reg* %571, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %572 to i64*
  %573 = load i64, i64* %RBP.i501
  %574 = sub i64 %573, 68
  %575 = load i64, i64* %PC.i500
  %576 = add i64 %575, 7
  store i64 %576, i64* %PC.i500
  %577 = inttoptr i64 %574 to i32*
  store i32 0, i32* %577
  store %struct.Memory* %loadMem_4022b3, %struct.Memory** %MEMORY
  br label %block_.L_4022ba

block_.L_4022ba:                                  ; preds = %block_.L_402367, %entry
  %loadMem_4022ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 33
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %580 to i64*
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 1
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 15
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RBP.i499 = bitcast %union.anon* %586 to i64*
  %587 = load i64, i64* %RBP.i499
  %588 = sub i64 %587, 16
  %589 = load i64, i64* %PC.i497
  %590 = add i64 %589, 4
  store i64 %590, i64* %PC.i497
  %591 = inttoptr i64 %588 to i64*
  %592 = load i64, i64* %591
  store i64 %592, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_4022ba, %struct.Memory** %MEMORY
  %loadMem_4022be = load %struct.Memory*, %struct.Memory** %MEMORY
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 33
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %595 to i64*
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %597 = getelementptr inbounds %struct.GPR, %struct.GPR* %596, i32 0, i32 5
  %598 = getelementptr inbounds %struct.Reg, %struct.Reg* %597, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %598 to i64*
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %600 = getelementptr inbounds %struct.GPR, %struct.GPR* %599, i32 0, i32 15
  %601 = getelementptr inbounds %struct.Reg, %struct.Reg* %600, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %601 to i64*
  %602 = load i64, i64* %RBP.i496
  %603 = sub i64 %602, 68
  %604 = load i64, i64* %PC.i494
  %605 = add i64 %604, 4
  store i64 %605, i64* %PC.i494
  %606 = inttoptr i64 %603 to i32*
  %607 = load i32, i32* %606
  %608 = sext i32 %607 to i64
  store i64 %608, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_4022be, %struct.Memory** %MEMORY
  %loadMem_4022c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %610 = getelementptr inbounds %struct.GPR, %struct.GPR* %609, i32 0, i32 33
  %611 = getelementptr inbounds %struct.Reg, %struct.Reg* %610, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %611 to i64*
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 1
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 5
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 7
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RDX.i493 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RAX.i491
  %622 = load i64, i64* %RCX.i492
  %623 = add i64 %622, %621
  %624 = load i64, i64* %PC.i490
  %625 = add i64 %624, 4
  store i64 %625, i64* %PC.i490
  %626 = inttoptr i64 %623 to i8*
  %627 = load i8, i8* %626
  %628 = sext i8 %627 to i64
  %629 = and i64 %628, 4294967295
  store i64 %629, i64* %RDX.i493, align 8
  store %struct.Memory* %loadMem_4022c2, %struct.Memory** %MEMORY
  %loadMem_4022c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %631 = getelementptr inbounds %struct.GPR, %struct.GPR* %630, i32 0, i32 33
  %632 = getelementptr inbounds %struct.Reg, %struct.Reg* %631, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %632 to i64*
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 7
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %EDX.i489 = bitcast %union.anon* %635 to i32*
  %636 = load i32, i32* %EDX.i489
  %637 = zext i32 %636 to i64
  %638 = load i64, i64* %PC.i488
  %639 = add i64 %638, 3
  store i64 %639, i64* %PC.i488
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %640, align 1
  %641 = and i32 %636, 255
  %642 = call i32 @llvm.ctpop.i32(i32 %641)
  %643 = trunc i32 %642 to i8
  %644 = and i8 %643, 1
  %645 = xor i8 %644, 1
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %645, i8* %646, align 1
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %647, align 1
  %648 = icmp eq i32 %636, 0
  %649 = zext i1 %648 to i8
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %649, i8* %650, align 1
  %651 = lshr i32 %636, 31
  %652 = trunc i32 %651 to i8
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %652, i8* %653, align 1
  %654 = lshr i32 %636, 31
  %655 = xor i32 %651, %654
  %656 = add i32 %655, %654
  %657 = icmp eq i32 %656, 2
  %658 = zext i1 %657 to i8
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %658, i8* %659, align 1
  store %struct.Memory* %loadMem_4022c6, %struct.Memory** %MEMORY
  %loadMem_4022c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %PC.i487
  %664 = add i64 %663, 172
  %665 = load i64, i64* %PC.i487
  %666 = add i64 %665, 6
  %667 = load i64, i64* %PC.i487
  %668 = add i64 %667, 6
  store i64 %668, i64* %PC.i487
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %670 = load i8, i8* %669, align 1
  store i8 %670, i8* %BRANCH_TAKEN, align 1
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %672 = icmp ne i8 %670, 0
  %673 = select i1 %672, i64 %664, i64 %666
  store i64 %673, i64* %671, align 8
  store %struct.Memory* %loadMem_4022c9, %struct.Memory** %MEMORY
  %loadBr_4022c9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4022c9 = icmp eq i8 %loadBr_4022c9, 1
  br i1 %cmpBr_4022c9, label %block_.L_402375, label %block_4022cf

block_4022cf:                                     ; preds = %block_.L_4022ba
  %loadMem_4022cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %675 = getelementptr inbounds %struct.GPR, %struct.GPR* %674, i32 0, i32 33
  %676 = getelementptr inbounds %struct.Reg, %struct.Reg* %675, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %676 to i64*
  %677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %678 = getelementptr inbounds %struct.GPR, %struct.GPR* %677, i32 0, i32 1
  %679 = getelementptr inbounds %struct.Reg, %struct.Reg* %678, i32 0, i32 0
  %RAX.i485 = bitcast %union.anon* %679 to i64*
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %681 = getelementptr inbounds %struct.GPR, %struct.GPR* %680, i32 0, i32 15
  %682 = getelementptr inbounds %struct.Reg, %struct.Reg* %681, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %682 to i64*
  %683 = load i64, i64* %RBP.i486
  %684 = sub i64 %683, 16
  %685 = load i64, i64* %PC.i484
  %686 = add i64 %685, 4
  store i64 %686, i64* %PC.i484
  %687 = inttoptr i64 %684 to i64*
  %688 = load i64, i64* %687
  store i64 %688, i64* %RAX.i485, align 8
  store %struct.Memory* %loadMem_4022cf, %struct.Memory** %MEMORY
  %loadMem_4022d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %690 = getelementptr inbounds %struct.GPR, %struct.GPR* %689, i32 0, i32 33
  %691 = getelementptr inbounds %struct.Reg, %struct.Reg* %690, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %691 to i64*
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %693 = getelementptr inbounds %struct.GPR, %struct.GPR* %692, i32 0, i32 5
  %694 = getelementptr inbounds %struct.Reg, %struct.Reg* %693, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %694 to i64*
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 15
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %RBP.i483 = bitcast %union.anon* %697 to i64*
  %698 = load i64, i64* %RBP.i483
  %699 = sub i64 %698, 68
  %700 = load i64, i64* %PC.i481
  %701 = add i64 %700, 4
  store i64 %701, i64* %PC.i481
  %702 = inttoptr i64 %699 to i32*
  %703 = load i32, i32* %702
  %704 = sext i32 %703 to i64
  store i64 %704, i64* %RCX.i482, align 8
  store %struct.Memory* %loadMem_4022d3, %struct.Memory** %MEMORY
  %loadMem_4022d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %706 = getelementptr inbounds %struct.GPR, %struct.GPR* %705, i32 0, i32 33
  %707 = getelementptr inbounds %struct.Reg, %struct.Reg* %706, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %707 to i64*
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %709 = getelementptr inbounds %struct.GPR, %struct.GPR* %708, i32 0, i32 1
  %710 = getelementptr inbounds %struct.Reg, %struct.Reg* %709, i32 0, i32 0
  %RAX.i478 = bitcast %union.anon* %710 to i64*
  %711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %712 = getelementptr inbounds %struct.GPR, %struct.GPR* %711, i32 0, i32 5
  %713 = getelementptr inbounds %struct.Reg, %struct.Reg* %712, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %713 to i64*
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 7
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %RDX.i480 = bitcast %union.anon* %716 to i64*
  %717 = load i64, i64* %RAX.i478
  %718 = load i64, i64* %RCX.i479
  %719 = add i64 %718, %717
  %720 = load i64, i64* %PC.i477
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i477
  %722 = inttoptr i64 %719 to i8*
  %723 = load i8, i8* %722
  %724 = sext i8 %723 to i64
  %725 = and i64 %724, 4294967295
  store i64 %725, i64* %RDX.i480, align 8
  store %struct.Memory* %loadMem_4022d7, %struct.Memory** %MEMORY
  %loadMem_4022db = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 7
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %EDX.i476 = bitcast %union.anon* %731 to i32*
  %732 = load i32, i32* %EDX.i476
  %733 = zext i32 %732 to i64
  %734 = load i64, i64* %PC.i475
  %735 = add i64 %734, 3
  store i64 %735, i64* %PC.i475
  %736 = sub i32 %732, 32
  %737 = icmp ult i32 %732, 32
  %738 = zext i1 %737 to i8
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %738, i8* %739, align 1
  %740 = and i32 %736, 255
  %741 = call i32 @llvm.ctpop.i32(i32 %740)
  %742 = trunc i32 %741 to i8
  %743 = and i8 %742, 1
  %744 = xor i8 %743, 1
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %744, i8* %745, align 1
  %746 = xor i64 32, %733
  %747 = trunc i64 %746 to i32
  %748 = xor i32 %747, %736
  %749 = lshr i32 %748, 4
  %750 = trunc i32 %749 to i8
  %751 = and i8 %750, 1
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %751, i8* %752, align 1
  %753 = icmp eq i32 %736, 0
  %754 = zext i1 %753 to i8
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %754, i8* %755, align 1
  %756 = lshr i32 %736, 31
  %757 = trunc i32 %756 to i8
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %757, i8* %758, align 1
  %759 = lshr i32 %732, 31
  %760 = xor i32 %756, %759
  %761 = add i32 %760, %759
  %762 = icmp eq i32 %761, 2
  %763 = zext i1 %762 to i8
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %763, i8* %764, align 1
  store %struct.Memory* %loadMem_4022db, %struct.Memory** %MEMORY
  %loadMem_4022de = load %struct.Memory*, %struct.Memory** %MEMORY
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 33
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %767 to i64*
  %768 = load i64, i64* %PC.i474
  %769 = add i64 %768, 132
  %770 = load i64, i64* %PC.i474
  %771 = add i64 %770, 6
  %772 = load i64, i64* %PC.i474
  %773 = add i64 %772, 6
  store i64 %773, i64* %PC.i474
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %775 = load i8, i8* %774, align 1
  store i8 %775, i8* %BRANCH_TAKEN, align 1
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %777 = icmp ne i8 %775, 0
  %778 = select i1 %777, i64 %769, i64 %771
  store i64 %778, i64* %776, align 8
  store %struct.Memory* %loadMem_4022de, %struct.Memory** %MEMORY
  %loadBr_4022de = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4022de = icmp eq i8 %loadBr_4022de, 1
  br i1 %cmpBr_4022de, label %block_.L_402362, label %block_4022e4

block_4022e4:                                     ; preds = %block_4022cf
  %loadMem_4022e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %780 = getelementptr inbounds %struct.GPR, %struct.GPR* %779, i32 0, i32 33
  %781 = getelementptr inbounds %struct.Reg, %struct.Reg* %780, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %781 to i64*
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 1
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 15
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RBP.i473 = bitcast %union.anon* %787 to i64*
  %788 = load i64, i64* %RBP.i473
  %789 = sub i64 %788, 16
  %790 = load i64, i64* %PC.i471
  %791 = add i64 %790, 4
  store i64 %791, i64* %PC.i471
  %792 = inttoptr i64 %789 to i64*
  %793 = load i64, i64* %792
  store i64 %793, i64* %RAX.i472, align 8
  store %struct.Memory* %loadMem_4022e4, %struct.Memory** %MEMORY
  %loadMem_4022e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 5
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RCX.i469 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 15
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %RBP.i470
  %804 = sub i64 %803, 68
  %805 = load i64, i64* %PC.i468
  %806 = add i64 %805, 4
  store i64 %806, i64* %PC.i468
  %807 = inttoptr i64 %804 to i32*
  %808 = load i32, i32* %807
  %809 = sext i32 %808 to i64
  store i64 %809, i64* %RCX.i469, align 8
  store %struct.Memory* %loadMem_4022e8, %struct.Memory** %MEMORY
  %loadMem_4022ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 5
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %818 to i64*
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 7
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %821 to i64*
  %822 = load i64, i64* %RAX.i465
  %823 = load i64, i64* %RCX.i466
  %824 = add i64 %823, %822
  %825 = load i64, i64* %PC.i464
  %826 = add i64 %825, 4
  store i64 %826, i64* %PC.i464
  %827 = inttoptr i64 %824 to i8*
  %828 = load i8, i8* %827
  %829 = sext i8 %828 to i64
  %830 = and i64 %829, 4294967295
  store i64 %830, i64* %RDX.i467, align 8
  store %struct.Memory* %loadMem_4022ec, %struct.Memory** %MEMORY
  %loadMem_4022f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 7
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %EDX.i463 = bitcast %union.anon* %836 to i32*
  %837 = load i32, i32* %EDX.i463
  %838 = zext i32 %837 to i64
  %839 = load i64, i64* %PC.i462
  %840 = add i64 %839, 3
  store i64 %840, i64* %PC.i462
  %841 = sub i32 %837, 46
  %842 = icmp ult i32 %837, 46
  %843 = zext i1 %842 to i8
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %843, i8* %844, align 1
  %845 = and i32 %841, 255
  %846 = call i32 @llvm.ctpop.i32(i32 %845)
  %847 = trunc i32 %846 to i8
  %848 = and i8 %847, 1
  %849 = xor i8 %848, 1
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %849, i8* %850, align 1
  %851 = xor i64 46, %838
  %852 = trunc i64 %851 to i32
  %853 = xor i32 %852, %841
  %854 = lshr i32 %853, 4
  %855 = trunc i32 %854 to i8
  %856 = and i8 %855, 1
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %856, i8* %857, align 1
  %858 = icmp eq i32 %841, 0
  %859 = zext i1 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %859, i8* %860, align 1
  %861 = lshr i32 %841, 31
  %862 = trunc i32 %861 to i8
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %862, i8* %863, align 1
  %864 = lshr i32 %837, 31
  %865 = xor i32 %861, %864
  %866 = add i32 %865, %864
  %867 = icmp eq i32 %866, 2
  %868 = zext i1 %867 to i8
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %868, i8* %869, align 1
  store %struct.Memory* %loadMem_4022f0, %struct.Memory** %MEMORY
  %loadMem_4022f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %PC.i461
  %874 = add i64 %873, 111
  %875 = load i64, i64* %PC.i461
  %876 = add i64 %875, 6
  %877 = load i64, i64* %PC.i461
  %878 = add i64 %877, 6
  store i64 %878, i64* %PC.i461
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %880 = load i8, i8* %879, align 1
  store i8 %880, i8* %BRANCH_TAKEN, align 1
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %882 = icmp ne i8 %880, 0
  %883 = select i1 %882, i64 %874, i64 %876
  store i64 %883, i64* %881, align 8
  store %struct.Memory* %loadMem_4022f3, %struct.Memory** %MEMORY
  %loadBr_4022f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4022f3 = icmp eq i8 %loadBr_4022f3, 1
  br i1 %cmpBr_4022f3, label %block_.L_402362, label %block_4022f9

block_4022f9:                                     ; preds = %block_4022e4
  %loadMem_4022f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 1
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 15
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RBP.i460
  %894 = sub i64 %893, 16
  %895 = load i64, i64* %PC.i458
  %896 = add i64 %895, 4
  store i64 %896, i64* %PC.i458
  %897 = inttoptr i64 %894 to i64*
  %898 = load i64, i64* %897
  store i64 %898, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_4022f9, %struct.Memory** %MEMORY
  %loadMem_4022fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 5
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RCX.i456 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %RBP.i457
  %909 = sub i64 %908, 68
  %910 = load i64, i64* %PC.i455
  %911 = add i64 %910, 4
  store i64 %911, i64* %PC.i455
  %912 = inttoptr i64 %909 to i32*
  %913 = load i32, i32* %912
  %914 = sext i32 %913 to i64
  store i64 %914, i64* %RCX.i456, align 8
  store %struct.Memory* %loadMem_4022fd, %struct.Memory** %MEMORY
  %loadMem_402301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %917 to i64*
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %919 = getelementptr inbounds %struct.GPR, %struct.GPR* %918, i32 0, i32 1
  %920 = getelementptr inbounds %struct.Reg, %struct.Reg* %919, i32 0, i32 0
  %RAX.i452 = bitcast %union.anon* %920 to i64*
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 5
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %RCX.i453 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 7
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RDX.i454 = bitcast %union.anon* %926 to i64*
  %927 = load i64, i64* %RAX.i452
  %928 = load i64, i64* %RCX.i453
  %929 = add i64 %928, %927
  %930 = load i64, i64* %PC.i451
  %931 = add i64 %930, 4
  store i64 %931, i64* %PC.i451
  %932 = inttoptr i64 %929 to i8*
  %933 = load i8, i8* %932
  %934 = sext i8 %933 to i64
  %935 = and i64 %934, 4294967295
  store i64 %935, i64* %RDX.i454, align 8
  store %struct.Memory* %loadMem_402301, %struct.Memory** %MEMORY
  %loadMem_402305 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 7
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %EDX.i450 = bitcast %union.anon* %941 to i32*
  %942 = load i32, i32* %EDX.i450
  %943 = zext i32 %942 to i64
  %944 = load i64, i64* %PC.i449
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC.i449
  %946 = sub i32 %942, 95
  %947 = icmp ult i32 %942, 95
  %948 = zext i1 %947 to i8
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %948, i8* %949, align 1
  %950 = and i32 %946, 255
  %951 = call i32 @llvm.ctpop.i32(i32 %950)
  %952 = trunc i32 %951 to i8
  %953 = and i8 %952, 1
  %954 = xor i8 %953, 1
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %954, i8* %955, align 1
  %956 = xor i64 95, %943
  %957 = trunc i64 %956 to i32
  %958 = xor i32 %957, %946
  %959 = lshr i32 %958, 4
  %960 = trunc i32 %959 to i8
  %961 = and i8 %960, 1
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %961, i8* %962, align 1
  %963 = icmp eq i32 %946, 0
  %964 = zext i1 %963 to i8
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %964, i8* %965, align 1
  %966 = lshr i32 %946, 31
  %967 = trunc i32 %966 to i8
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %967, i8* %968, align 1
  %969 = lshr i32 %942, 31
  %970 = xor i32 %966, %969
  %971 = add i32 %970, %969
  %972 = icmp eq i32 %971, 2
  %973 = zext i1 %972 to i8
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %973, i8* %974, align 1
  store %struct.Memory* %loadMem_402305, %struct.Memory** %MEMORY
  %loadMem_402308 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %977 to i64*
  %978 = load i64, i64* %PC.i448
  %979 = add i64 %978, 90
  %980 = load i64, i64* %PC.i448
  %981 = add i64 %980, 6
  %982 = load i64, i64* %PC.i448
  %983 = add i64 %982, 6
  store i64 %983, i64* %PC.i448
  %984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %985 = load i8, i8* %984, align 1
  store i8 %985, i8* %BRANCH_TAKEN, align 1
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %987 = icmp ne i8 %985, 0
  %988 = select i1 %987, i64 %979, i64 %981
  store i64 %988, i64* %986, align 8
  store %struct.Memory* %loadMem_402308, %struct.Memory** %MEMORY
  %loadBr_402308 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402308 = icmp eq i8 %loadBr_402308, 1
  br i1 %cmpBr_402308, label %block_.L_402362, label %block_40230e

block_40230e:                                     ; preds = %block_4022f9
  %loadMem_40230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 1
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i447
  %999 = sub i64 %998, 16
  %1000 = load i64, i64* %PC.i445
  %1001 = add i64 %1000, 4
  store i64 %1001, i64* %PC.i445
  %1002 = inttoptr i64 %999 to i64*
  %1003 = load i64, i64* %1002
  store i64 %1003, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_40230e, %struct.Memory** %MEMORY
  %loadMem_402312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 5
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %1009 to i64*
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1011 = getelementptr inbounds %struct.GPR, %struct.GPR* %1010, i32 0, i32 15
  %1012 = getelementptr inbounds %struct.Reg, %struct.Reg* %1011, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %1012 to i64*
  %1013 = load i64, i64* %RBP.i444
  %1014 = sub i64 %1013, 68
  %1015 = load i64, i64* %PC.i442
  %1016 = add i64 %1015, 4
  store i64 %1016, i64* %PC.i442
  %1017 = inttoptr i64 %1014 to i32*
  %1018 = load i32, i32* %1017
  %1019 = sext i32 %1018 to i64
  store i64 %1019, i64* %RCX.i443, align 8
  store %struct.Memory* %loadMem_402312, %struct.Memory** %MEMORY
  %loadMem_402316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 33
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %1022 to i64*
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1024 = getelementptr inbounds %struct.GPR, %struct.GPR* %1023, i32 0, i32 1
  %1025 = getelementptr inbounds %struct.Reg, %struct.Reg* %1024, i32 0, i32 0
  %RAX.i439 = bitcast %union.anon* %1025 to i64*
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1027 = getelementptr inbounds %struct.GPR, %struct.GPR* %1026, i32 0, i32 5
  %1028 = getelementptr inbounds %struct.Reg, %struct.Reg* %1027, i32 0, i32 0
  %RCX.i440 = bitcast %union.anon* %1028 to i64*
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 7
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %RDX.i441 = bitcast %union.anon* %1031 to i64*
  %1032 = load i64, i64* %RAX.i439
  %1033 = load i64, i64* %RCX.i440
  %1034 = add i64 %1033, %1032
  %1035 = load i64, i64* %PC.i438
  %1036 = add i64 %1035, 4
  store i64 %1036, i64* %PC.i438
  %1037 = inttoptr i64 %1034 to i8*
  %1038 = load i8, i8* %1037
  %1039 = sext i8 %1038 to i64
  %1040 = and i64 %1039, 4294967295
  store i64 %1040, i64* %RDX.i441, align 8
  store %struct.Memory* %loadMem_402316, %struct.Memory** %MEMORY
  %loadMem_40231a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %1043 to i64*
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 7
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %EDX.i437 = bitcast %union.anon* %1046 to i32*
  %1047 = load i32, i32* %EDX.i437
  %1048 = zext i32 %1047 to i64
  %1049 = load i64, i64* %PC.i436
  %1050 = add i64 %1049, 3
  store i64 %1050, i64* %PC.i436
  %1051 = sub i32 %1047, 45
  %1052 = icmp ult i32 %1047, 45
  %1053 = zext i1 %1052 to i8
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1053, i8* %1054, align 1
  %1055 = and i32 %1051, 255
  %1056 = call i32 @llvm.ctpop.i32(i32 %1055)
  %1057 = trunc i32 %1056 to i8
  %1058 = and i8 %1057, 1
  %1059 = xor i8 %1058, 1
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1059, i8* %1060, align 1
  %1061 = xor i64 45, %1048
  %1062 = trunc i64 %1061 to i32
  %1063 = xor i32 %1062, %1051
  %1064 = lshr i32 %1063, 4
  %1065 = trunc i32 %1064 to i8
  %1066 = and i8 %1065, 1
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1066, i8* %1067, align 1
  %1068 = icmp eq i32 %1051, 0
  %1069 = zext i1 %1068 to i8
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1069, i8* %1070, align 1
  %1071 = lshr i32 %1051, 31
  %1072 = trunc i32 %1071 to i8
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1072, i8* %1073, align 1
  %1074 = lshr i32 %1047, 31
  %1075 = xor i32 %1071, %1074
  %1076 = add i32 %1075, %1074
  %1077 = icmp eq i32 %1076, 2
  %1078 = zext i1 %1077 to i8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1078, i8* %1079, align 1
  store %struct.Memory* %loadMem_40231a, %struct.Memory** %MEMORY
  %loadMem_40231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 33
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %1082 to i64*
  %1083 = load i64, i64* %PC.i435
  %1084 = add i64 %1083, 69
  %1085 = load i64, i64* %PC.i435
  %1086 = add i64 %1085, 6
  %1087 = load i64, i64* %PC.i435
  %1088 = add i64 %1087, 6
  store i64 %1088, i64* %PC.i435
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1090 = load i8, i8* %1089, align 1
  store i8 %1090, i8* %BRANCH_TAKEN, align 1
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1092 = icmp ne i8 %1090, 0
  %1093 = select i1 %1092, i64 %1084, i64 %1086
  store i64 %1093, i64* %1091, align 8
  store %struct.Memory* %loadMem_40231d, %struct.Memory** %MEMORY
  %loadBr_40231d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40231d = icmp eq i8 %loadBr_40231d, 1
  br i1 %cmpBr_40231d, label %block_.L_402362, label %block_402323

block_402323:                                     ; preds = %block_40230e
  %loadMem_402323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 1
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RAX.i433 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 15
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %1102 to i64*
  %1103 = load i64, i64* %RBP.i434
  %1104 = sub i64 %1103, 16
  %1105 = load i64, i64* %PC.i432
  %1106 = add i64 %1105, 4
  store i64 %1106, i64* %PC.i432
  %1107 = inttoptr i64 %1104 to i64*
  %1108 = load i64, i64* %1107
  store i64 %1108, i64* %RAX.i433, align 8
  store %struct.Memory* %loadMem_402323, %struct.Memory** %MEMORY
  %loadMem_402327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 33
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1111 to i64*
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 5
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %RCX.i430 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 15
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RBP.i431 = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RBP.i431
  %1119 = sub i64 %1118, 68
  %1120 = load i64, i64* %PC.i429
  %1121 = add i64 %1120, 4
  store i64 %1121, i64* %PC.i429
  %1122 = inttoptr i64 %1119 to i32*
  %1123 = load i32, i32* %1122
  %1124 = sext i32 %1123 to i64
  store i64 %1124, i64* %RCX.i430, align 8
  store %struct.Memory* %loadMem_402327, %struct.Memory** %MEMORY
  %loadMem_40232b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 33
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %1127 to i64*
  %1128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1129 = getelementptr inbounds %struct.GPR, %struct.GPR* %1128, i32 0, i32 1
  %1130 = getelementptr inbounds %struct.Reg, %struct.Reg* %1129, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %1130 to i64*
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 5
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %RCX.i427 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 7
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RDX.i428 = bitcast %union.anon* %1136 to i64*
  %1137 = load i64, i64* %RAX.i426
  %1138 = load i64, i64* %RCX.i427
  %1139 = add i64 %1138, %1137
  %1140 = load i64, i64* %PC.i425
  %1141 = add i64 %1140, 4
  store i64 %1141, i64* %PC.i425
  %1142 = inttoptr i64 %1139 to i8*
  %1143 = load i8, i8* %1142
  %1144 = sext i8 %1143 to i64
  %1145 = and i64 %1144, 4294967295
  store i64 %1145, i64* %RDX.i428, align 8
  store %struct.Memory* %loadMem_40232b, %struct.Memory** %MEMORY
  %loadMem_40232f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1147 = getelementptr inbounds %struct.GPR, %struct.GPR* %1146, i32 0, i32 33
  %1148 = getelementptr inbounds %struct.Reg, %struct.Reg* %1147, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %1148 to i64*
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 7
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %EDX.i424 = bitcast %union.anon* %1151 to i32*
  %1152 = load i32, i32* %EDX.i424
  %1153 = zext i32 %1152 to i64
  %1154 = load i64, i64* %PC.i423
  %1155 = add i64 %1154, 3
  store i64 %1155, i64* %PC.i423
  %1156 = sub i32 %1152, 126
  %1157 = icmp ult i32 %1152, 126
  %1158 = zext i1 %1157 to i8
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1158, i8* %1159, align 1
  %1160 = and i32 %1156, 255
  %1161 = call i32 @llvm.ctpop.i32(i32 %1160)
  %1162 = trunc i32 %1161 to i8
  %1163 = and i8 %1162, 1
  %1164 = xor i8 %1163, 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1164, i8* %1165, align 1
  %1166 = xor i64 126, %1153
  %1167 = trunc i64 %1166 to i32
  %1168 = xor i32 %1167, %1156
  %1169 = lshr i32 %1168, 4
  %1170 = trunc i32 %1169 to i8
  %1171 = and i8 %1170, 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1171, i8* %1172, align 1
  %1173 = icmp eq i32 %1156, 0
  %1174 = zext i1 %1173 to i8
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1174, i8* %1175, align 1
  %1176 = lshr i32 %1156, 31
  %1177 = trunc i32 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1177, i8* %1178, align 1
  %1179 = lshr i32 %1152, 31
  %1180 = xor i32 %1176, %1179
  %1181 = add i32 %1180, %1179
  %1182 = icmp eq i32 %1181, 2
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1183, i8* %1184, align 1
  store %struct.Memory* %loadMem_40232f, %struct.Memory** %MEMORY
  %loadMem_402332 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %1187 to i64*
  %1188 = load i64, i64* %PC.i422
  %1189 = add i64 %1188, 48
  %1190 = load i64, i64* %PC.i422
  %1191 = add i64 %1190, 6
  %1192 = load i64, i64* %PC.i422
  %1193 = add i64 %1192, 6
  store i64 %1193, i64* %PC.i422
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1195 = load i8, i8* %1194, align 1
  store i8 %1195, i8* %BRANCH_TAKEN, align 1
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1197 = icmp ne i8 %1195, 0
  %1198 = select i1 %1197, i64 %1189, i64 %1191
  store i64 %1198, i64* %1196, align 8
  store %struct.Memory* %loadMem_402332, %struct.Memory** %MEMORY
  %loadBr_402332 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402332 = icmp eq i8 %loadBr_402332, 1
  br i1 %cmpBr_402332, label %block_.L_402362, label %block_402338

block_402338:                                     ; preds = %block_402323
  %loadMem_402338 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1200 = getelementptr inbounds %struct.GPR, %struct.GPR* %1199, i32 0, i32 33
  %1201 = getelementptr inbounds %struct.Reg, %struct.Reg* %1200, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %1201 to i64*
  %1202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1203 = getelementptr inbounds %struct.GPR, %struct.GPR* %1202, i32 0, i32 1
  %1204 = getelementptr inbounds %struct.Reg, %struct.Reg* %1203, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %1204 to i32*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 1
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %1207 to i64*
  %1208 = load i64, i64* %RAX.i421
  %1209 = load i32, i32* %EAX.i420
  %1210 = zext i32 %1209 to i64
  %1211 = load i64, i64* %PC.i419
  %1212 = add i64 %1211, 2
  store i64 %1212, i64* %PC.i419
  %1213 = xor i64 %1210, %1208
  %1214 = trunc i64 %1213 to i32
  %1215 = and i64 %1213, 4294967295
  store i64 %1215, i64* %RAX.i421, align 8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1216, align 1
  %1217 = and i32 %1214, 255
  %1218 = call i32 @llvm.ctpop.i32(i32 %1217)
  %1219 = trunc i32 %1218 to i8
  %1220 = and i8 %1219, 1
  %1221 = xor i8 %1220, 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1221, i8* %1222, align 1
  %1223 = icmp eq i32 %1214, 0
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i32 %1214, 31
  %1227 = trunc i32 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1227, i8* %1228, align 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1229, align 1
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1230, align 1
  store %struct.Memory* %loadMem_402338, %struct.Memory** %MEMORY
  %loadMem_40233a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 33
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1233 to i64*
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 5
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %1236 to i64*
  %1237 = load i64, i64* %PC.i417
  %1238 = add i64 %1237, 5
  store i64 %1238, i64* %PC.i417
  store i64 1, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_40233a, %struct.Memory** %MEMORY
  %loadMem_40233f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 7
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i416
  %1249 = sub i64 %1248, 8
  %1250 = load i64, i64* %PC.i414
  %1251 = add i64 %1250, 4
  store i64 %1251, i64* %PC.i414
  %1252 = inttoptr i64 %1249 to i64*
  %1253 = load i64, i64* %1252
  store i64 %1253, i64* %RDX.i415, align 8
  store %struct.Memory* %loadMem_40233f, %struct.Memory** %MEMORY
  %loadMem_402343 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 9
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RSI.i412 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 15
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %RBP.i413
  %1264 = sub i64 %1263, 68
  %1265 = load i64, i64* %PC.i411
  %1266 = add i64 %1265, 4
  store i64 %1266, i64* %PC.i411
  %1267 = inttoptr i64 %1264 to i32*
  %1268 = load i32, i32* %1267
  %1269 = sext i32 %1268 to i64
  store i64 %1269, i64* %RSI.i412, align 8
  store %struct.Memory* %loadMem_402343, %struct.Memory** %MEMORY
  %loadMem_402347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1271 = getelementptr inbounds %struct.GPR, %struct.GPR* %1270, i32 0, i32 33
  %1272 = getelementptr inbounds %struct.Reg, %struct.Reg* %1271, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %1272 to i64*
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1274 = getelementptr inbounds %struct.GPR, %struct.GPR* %1273, i32 0, i32 7
  %1275 = getelementptr inbounds %struct.Reg, %struct.Reg* %1274, i32 0, i32 0
  %RDX.i409 = bitcast %union.anon* %1275 to i64*
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1277 = getelementptr inbounds %struct.GPR, %struct.GPR* %1276, i32 0, i32 9
  %1278 = getelementptr inbounds %struct.Reg, %struct.Reg* %1277, i32 0, i32 0
  %RSI.i410 = bitcast %union.anon* %1278 to i64*
  %1279 = load i64, i64* %RDX.i409
  %1280 = load i64, i64* %RSI.i410
  %1281 = mul i64 %1280, 4
  %1282 = add i64 %1281, %1279
  %1283 = load i64, i64* %PC.i408
  %1284 = add i64 %1283, 4
  store i64 %1284, i64* %PC.i408
  %1285 = inttoptr i64 %1282 to i32*
  %1286 = load i32, i32* %1285
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1287, align 1
  %1288 = and i32 %1286, 255
  %1289 = call i32 @llvm.ctpop.i32(i32 %1288)
  %1290 = trunc i32 %1289 to i8
  %1291 = and i8 %1290, 1
  %1292 = xor i8 %1291, 1
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1292, i8* %1293, align 1
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1294, align 1
  %1295 = icmp eq i32 %1286, 0
  %1296 = zext i1 %1295 to i8
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1296, i8* %1297, align 1
  %1298 = lshr i32 %1286, 31
  %1299 = trunc i32 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1299, i8* %1300, align 1
  %1301 = lshr i32 %1286, 31
  %1302 = xor i32 %1298, %1301
  %1303 = add i32 %1302, %1301
  %1304 = icmp eq i32 %1303, 2
  %1305 = zext i1 %1304 to i8
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1305, i8* %1306, align 1
  store %struct.Memory* %loadMem_402347, %struct.Memory** %MEMORY
  %loadMem_40234b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 33
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 5
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %ECX.i406 = bitcast %union.anon* %1312 to i32*
  %1313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1314 = getelementptr inbounds %struct.GPR, %struct.GPR* %1313, i32 0, i32 1
  %1315 = getelementptr inbounds %struct.Reg, %struct.Reg* %1314, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %1315 to i64*
  %1316 = load i32, i32* %ECX.i406
  %1317 = zext i32 %1316 to i64
  %1318 = load i64, i64* %PC.i405
  %1319 = add i64 %1318, 3
  store i64 %1319, i64* %PC.i405
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1321 = load i8, i8* %1320, align 1
  %1322 = icmp eq i8 %1321, 0
  %1323 = load i64, i64* %RAX.i407, align 8
  %1324 = select i1 %1322, i64 %1317, i64 %1323
  %1325 = and i64 %1324, 4294967295
  store i64 %1325, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_40234b, %struct.Memory** %MEMORY
  %loadMem_40234e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 7
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RDX.i403 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 15
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %1334 to i64*
  %1335 = load i64, i64* %RBP.i404
  %1336 = sub i64 %1335, 88
  %1337 = load i64, i64* %PC.i402
  %1338 = add i64 %1337, 4
  store i64 %1338, i64* %PC.i402
  %1339 = inttoptr i64 %1336 to i64*
  %1340 = load i64, i64* %1339
  store i64 %1340, i64* %RDX.i403, align 8
  store %struct.Memory* %loadMem_40234e, %struct.Memory** %MEMORY
  %loadMem_402352 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 33
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 9
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RSI.i400 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 15
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %1349 to i64*
  %1350 = load i64, i64* %RBP.i401
  %1351 = sub i64 %1350, 72
  %1352 = load i64, i64* %PC.i399
  %1353 = add i64 %1352, 4
  store i64 %1353, i64* %PC.i399
  %1354 = inttoptr i64 %1351 to i32*
  %1355 = load i32, i32* %1354
  %1356 = sext i32 %1355 to i64
  store i64 %1356, i64* %RSI.i400, align 8
  store %struct.Memory* %loadMem_402352, %struct.Memory** %MEMORY
  %loadMem_402356 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %EAX.i397 = bitcast %union.anon* %1362 to i32*
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1364 = getelementptr inbounds %struct.GPR, %struct.GPR* %1363, i32 0, i32 7
  %1365 = getelementptr inbounds %struct.Reg, %struct.Reg* %1364, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %1365 to i64*
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 9
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %RDX.i398
  %1370 = load i64, i64* %RSI.i
  %1371 = mul i64 %1370, 4
  %1372 = add i64 %1371, %1369
  %1373 = load i32, i32* %EAX.i397
  %1374 = zext i32 %1373 to i64
  %1375 = load i64, i64* %PC.i396
  %1376 = add i64 %1375, 3
  store i64 %1376, i64* %PC.i396
  %1377 = inttoptr i64 %1372 to i32*
  store i32 %1373, i32* %1377
  store %struct.Memory* %loadMem_402356, %struct.Memory** %MEMORY
  %loadMem_402359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1380 to i64*
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1382 = getelementptr inbounds %struct.GPR, %struct.GPR* %1381, i32 0, i32 1
  %1383 = getelementptr inbounds %struct.Reg, %struct.Reg* %1382, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %1383 to i64*
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 15
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1386 to i64*
  %1387 = load i64, i64* %RBP.i395
  %1388 = sub i64 %1387, 72
  %1389 = load i64, i64* %PC.i393
  %1390 = add i64 %1389, 3
  store i64 %1390, i64* %PC.i393
  %1391 = inttoptr i64 %1388 to i32*
  %1392 = load i32, i32* %1391
  %1393 = zext i32 %1392 to i64
  store i64 %1393, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_402359, %struct.Memory** %MEMORY
  %loadMem_40235c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1395 = getelementptr inbounds %struct.GPR, %struct.GPR* %1394, i32 0, i32 33
  %1396 = getelementptr inbounds %struct.Reg, %struct.Reg* %1395, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %1396 to i64*
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 1
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %RAX.i392 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %RAX.i392
  %1401 = load i64, i64* %PC.i391
  %1402 = add i64 %1401, 3
  store i64 %1402, i64* %PC.i391
  %1403 = trunc i64 %1400 to i32
  %1404 = add i32 1, %1403
  %1405 = zext i32 %1404 to i64
  store i64 %1405, i64* %RAX.i392, align 8
  %1406 = icmp ult i32 %1404, %1403
  %1407 = icmp ult i32 %1404, 1
  %1408 = or i1 %1406, %1407
  %1409 = zext i1 %1408 to i8
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1409, i8* %1410, align 1
  %1411 = and i32 %1404, 255
  %1412 = call i32 @llvm.ctpop.i32(i32 %1411)
  %1413 = trunc i32 %1412 to i8
  %1414 = and i8 %1413, 1
  %1415 = xor i8 %1414, 1
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1415, i8* %1416, align 1
  %1417 = xor i64 1, %1400
  %1418 = trunc i64 %1417 to i32
  %1419 = xor i32 %1418, %1404
  %1420 = lshr i32 %1419, 4
  %1421 = trunc i32 %1420 to i8
  %1422 = and i8 %1421, 1
  %1423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1422, i8* %1423, align 1
  %1424 = icmp eq i32 %1404, 0
  %1425 = zext i1 %1424 to i8
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1425, i8* %1426, align 1
  %1427 = lshr i32 %1404, 31
  %1428 = trunc i32 %1427 to i8
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1428, i8* %1429, align 1
  %1430 = lshr i32 %1403, 31
  %1431 = xor i32 %1427, %1430
  %1432 = add i32 %1431, %1427
  %1433 = icmp eq i32 %1432, 2
  %1434 = zext i1 %1433 to i8
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1434, i8* %1435, align 1
  store %struct.Memory* %loadMem_40235c, %struct.Memory** %MEMORY
  %loadMem_40235f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1437 = getelementptr inbounds %struct.GPR, %struct.GPR* %1436, i32 0, i32 33
  %1438 = getelementptr inbounds %struct.Reg, %struct.Reg* %1437, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %1438 to i64*
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1440 = getelementptr inbounds %struct.GPR, %struct.GPR* %1439, i32 0, i32 1
  %1441 = getelementptr inbounds %struct.Reg, %struct.Reg* %1440, i32 0, i32 0
  %EAX.i389 = bitcast %union.anon* %1441 to i32*
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1443 = getelementptr inbounds %struct.GPR, %struct.GPR* %1442, i32 0, i32 15
  %1444 = getelementptr inbounds %struct.Reg, %struct.Reg* %1443, i32 0, i32 0
  %RBP.i390 = bitcast %union.anon* %1444 to i64*
  %1445 = load i64, i64* %RBP.i390
  %1446 = sub i64 %1445, 72
  %1447 = load i32, i32* %EAX.i389
  %1448 = zext i32 %1447 to i64
  %1449 = load i64, i64* %PC.i388
  %1450 = add i64 %1449, 3
  store i64 %1450, i64* %PC.i388
  %1451 = inttoptr i64 %1446 to i32*
  store i32 %1447, i32* %1451
  store %struct.Memory* %loadMem_40235f, %struct.Memory** %MEMORY
  br label %block_.L_402362

block_.L_402362:                                  ; preds = %block_402338, %block_402323, %block_40230e, %block_4022f9, %block_4022e4, %block_4022cf
  %loadMem_402362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1453 = getelementptr inbounds %struct.GPR, %struct.GPR* %1452, i32 0, i32 33
  %1454 = getelementptr inbounds %struct.Reg, %struct.Reg* %1453, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1454 to i64*
  %1455 = load i64, i64* %PC.i387
  %1456 = add i64 %1455, 5
  %1457 = load i64, i64* %PC.i387
  %1458 = add i64 %1457, 5
  store i64 %1458, i64* %PC.i387
  %1459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1456, i64* %1459, align 8
  store %struct.Memory* %loadMem_402362, %struct.Memory** %MEMORY
  br label %block_.L_402367

block_.L_402367:                                  ; preds = %block_.L_402362
  %loadMem_402367 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 33
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 1
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1465 to i64*
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1467 = getelementptr inbounds %struct.GPR, %struct.GPR* %1466, i32 0, i32 15
  %1468 = getelementptr inbounds %struct.Reg, %struct.Reg* %1467, i32 0, i32 0
  %RBP.i386 = bitcast %union.anon* %1468 to i64*
  %1469 = load i64, i64* %RBP.i386
  %1470 = sub i64 %1469, 68
  %1471 = load i64, i64* %PC.i384
  %1472 = add i64 %1471, 3
  store i64 %1472, i64* %PC.i384
  %1473 = inttoptr i64 %1470 to i32*
  %1474 = load i32, i32* %1473
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RAX.i385, align 8
  store %struct.Memory* %loadMem_402367, %struct.Memory** %MEMORY
  %loadMem_40236a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 33
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 1
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %RAX.i383
  %1483 = load i64, i64* %PC.i382
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i382
  %1485 = trunc i64 %1482 to i32
  %1486 = add i32 1, %1485
  %1487 = zext i32 %1486 to i64
  store i64 %1487, i64* %RAX.i383, align 8
  %1488 = icmp ult i32 %1486, %1485
  %1489 = icmp ult i32 %1486, 1
  %1490 = or i1 %1488, %1489
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
  %1499 = xor i64 1, %1482
  %1500 = trunc i64 %1499 to i32
  %1501 = xor i32 %1500, %1486
  %1502 = lshr i32 %1501, 4
  %1503 = trunc i32 %1502 to i8
  %1504 = and i8 %1503, 1
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1504, i8* %1505, align 1
  %1506 = icmp eq i32 %1486, 0
  %1507 = zext i1 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i32 %1486, 31
  %1510 = trunc i32 %1509 to i8
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1510, i8* %1511, align 1
  %1512 = lshr i32 %1485, 31
  %1513 = xor i32 %1509, %1512
  %1514 = add i32 %1513, %1509
  %1515 = icmp eq i32 %1514, 2
  %1516 = zext i1 %1515 to i8
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1516, i8* %1517, align 1
  store %struct.Memory* %loadMem_40236a, %struct.Memory** %MEMORY
  %loadMem_40236d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 1
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %EAX.i380 = bitcast %union.anon* %1523 to i32*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 15
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %1526 to i64*
  %1527 = load i64, i64* %RBP.i381
  %1528 = sub i64 %1527, 68
  %1529 = load i32, i32* %EAX.i380
  %1530 = zext i32 %1529 to i64
  %1531 = load i64, i64* %PC.i379
  %1532 = add i64 %1531, 3
  store i64 %1532, i64* %PC.i379
  %1533 = inttoptr i64 %1528 to i32*
  store i32 %1529, i32* %1533
  store %struct.Memory* %loadMem_40236d, %struct.Memory** %MEMORY
  %loadMem_402370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1536 to i64*
  %1537 = load i64, i64* %PC.i378
  %1538 = add i64 %1537, -182
  %1539 = load i64, i64* %PC.i378
  %1540 = add i64 %1539, 5
  store i64 %1540, i64* %PC.i378
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1538, i64* %1541, align 8
  store %struct.Memory* %loadMem_402370, %struct.Memory** %MEMORY
  br label %block_.L_4022ba

block_.L_402375:                                  ; preds = %block_.L_4022ba
  %loadMem_402375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 15
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %1547 to i64*
  %1548 = load i64, i64* %RBP.i377
  %1549 = sub i64 %1548, 92
  %1550 = load i64, i64* %PC.i376
  %1551 = add i64 %1550, 7
  store i64 %1551, i64* %PC.i376
  %1552 = inttoptr i64 %1549 to i32*
  store i32 0, i32* %1552
  store %struct.Memory* %loadMem_402375, %struct.Memory** %MEMORY
  %loadMem_40237c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 33
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 15
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %1558 to i64*
  %1559 = load i64, i64* %RBP.i375
  %1560 = sub i64 %1559, 76
  %1561 = load i64, i64* %PC.i374
  %1562 = add i64 %1561, 7
  store i64 %1562, i64* %PC.i374
  %1563 = inttoptr i64 %1560 to i32*
  store i32 0, i32* %1563
  store %struct.Memory* %loadMem_40237c, %struct.Memory** %MEMORY
  %loadMem_402383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 15
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RBP.i373 = bitcast %union.anon* %1569 to i64*
  %1570 = load i64, i64* %RBP.i373
  %1571 = sub i64 %1570, 72
  %1572 = load i64, i64* %PC.i372
  %1573 = add i64 %1572, 7
  store i64 %1573, i64* %PC.i372
  %1574 = inttoptr i64 %1571 to i32*
  store i32 0, i32* %1574
  store %struct.Memory* %loadMem_402383, %struct.Memory** %MEMORY
  %loadMem_40238a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 15
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %1580 to i64*
  %1581 = load i64, i64* %RBP.i371
  %1582 = sub i64 %1581, 68
  %1583 = load i64, i64* %PC.i370
  %1584 = add i64 %1583, 7
  store i64 %1584, i64* %PC.i370
  %1585 = inttoptr i64 %1582 to i32*
  store i32 0, i32* %1585
  store %struct.Memory* %loadMem_40238a, %struct.Memory** %MEMORY
  br label %block_.L_402391

block_.L_402391:                                  ; preds = %block_.L_40259d, %block_.L_402375
  %loadMem_402391 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 1
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RAX.i368 = bitcast %union.anon* %1591 to i64*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 15
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %RBP.i369
  %1596 = sub i64 %1595, 32
  %1597 = load i64, i64* %PC.i367
  %1598 = add i64 %1597, 4
  store i64 %1598, i64* %PC.i367
  %1599 = inttoptr i64 %1596 to i64*
  %1600 = load i64, i64* %1599
  store i64 %1600, i64* %RAX.i368, align 8
  store %struct.Memory* %loadMem_402391, %struct.Memory** %MEMORY
  %loadMem_402395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 33
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1603 to i64*
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1605 = getelementptr inbounds %struct.GPR, %struct.GPR* %1604, i32 0, i32 5
  %1606 = getelementptr inbounds %struct.Reg, %struct.Reg* %1605, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %1606 to i64*
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 15
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1609 to i64*
  %1610 = load i64, i64* %RBP.i366
  %1611 = sub i64 %1610, 68
  %1612 = load i64, i64* %PC.i364
  %1613 = add i64 %1612, 4
  store i64 %1613, i64* %PC.i364
  %1614 = inttoptr i64 %1611 to i32*
  %1615 = load i32, i32* %1614
  %1616 = sext i32 %1615 to i64
  store i64 %1616, i64* %RCX.i365, align 8
  store %struct.Memory* %loadMem_402395, %struct.Memory** %MEMORY
  %loadMem_402399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 1
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 5
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 7
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RDX.i363 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %RAX.i361
  %1630 = load i64, i64* %RCX.i362
  %1631 = add i64 %1630, %1629
  %1632 = load i64, i64* %PC.i360
  %1633 = add i64 %1632, 4
  store i64 %1633, i64* %PC.i360
  %1634 = inttoptr i64 %1631 to i8*
  %1635 = load i8, i8* %1634
  %1636 = sext i8 %1635 to i64
  %1637 = and i64 %1636, 4294967295
  store i64 %1637, i64* %RDX.i363, align 8
  store %struct.Memory* %loadMem_402399, %struct.Memory** %MEMORY
  %loadMem_40239d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 33
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1640 to i64*
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 7
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %EDX.i359 = bitcast %union.anon* %1643 to i32*
  %1644 = load i32, i32* %EDX.i359
  %1645 = zext i32 %1644 to i64
  %1646 = load i64, i64* %PC.i358
  %1647 = add i64 %1646, 3
  store i64 %1647, i64* %PC.i358
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1648, align 1
  %1649 = and i32 %1644, 255
  %1650 = call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1653, i8* %1654, align 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1655, align 1
  %1656 = icmp eq i32 %1644, 0
  %1657 = zext i1 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1657, i8* %1658, align 1
  %1659 = lshr i32 %1644, 31
  %1660 = trunc i32 %1659 to i8
  %1661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1660, i8* %1661, align 1
  %1662 = lshr i32 %1644, 31
  %1663 = xor i32 %1659, %1662
  %1664 = add i32 %1663, %1662
  %1665 = icmp eq i32 %1664, 2
  %1666 = zext i1 %1665 to i8
  %1667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1666, i8* %1667, align 1
  store %struct.Memory* %loadMem_40239d, %struct.Memory** %MEMORY
  %loadMem_4023a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %1670 to i64*
  %1671 = load i64, i64* %PC.i357
  %1672 = add i64 %1671, 523
  %1673 = load i64, i64* %PC.i357
  %1674 = add i64 %1673, 6
  %1675 = load i64, i64* %PC.i357
  %1676 = add i64 %1675, 6
  store i64 %1676, i64* %PC.i357
  %1677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1678 = load i8, i8* %1677, align 1
  store i8 %1678, i8* %BRANCH_TAKEN, align 1
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1680 = icmp ne i8 %1678, 0
  %1681 = select i1 %1680, i64 %1672, i64 %1674
  store i64 %1681, i64* %1679, align 8
  store %struct.Memory* %loadMem_4023a0, %struct.Memory** %MEMORY
  %loadBr_4023a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4023a0 = icmp eq i8 %loadBr_4023a0, 1
  br i1 %cmpBr_4023a0, label %block_.L_4025ab, label %block_4023a6

block_4023a6:                                     ; preds = %block_.L_402391
  %loadMem_4023a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 1
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 15
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %1690 to i64*
  %1691 = load i64, i64* %RBP.i356
  %1692 = sub i64 %1691, 32
  %1693 = load i64, i64* %PC.i354
  %1694 = add i64 %1693, 4
  store i64 %1694, i64* %PC.i354
  %1695 = inttoptr i64 %1692 to i64*
  %1696 = load i64, i64* %1695
  store i64 %1696, i64* %RAX.i355, align 8
  store %struct.Memory* %loadMem_4023a6, %struct.Memory** %MEMORY
  %loadMem_4023aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 5
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RCX.i352 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RBP.i353
  %1707 = sub i64 %1706, 68
  %1708 = load i64, i64* %PC.i351
  %1709 = add i64 %1708, 4
  store i64 %1709, i64* %PC.i351
  %1710 = inttoptr i64 %1707 to i32*
  %1711 = load i32, i32* %1710
  %1712 = sext i32 %1711 to i64
  store i64 %1712, i64* %RCX.i352, align 8
  store %struct.Memory* %loadMem_4023aa, %struct.Memory** %MEMORY
  %loadMem_4023ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 5
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RCX.i349 = bitcast %union.anon* %1721 to i64*
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1723 = getelementptr inbounds %struct.GPR, %struct.GPR* %1722, i32 0, i32 7
  %1724 = getelementptr inbounds %struct.Reg, %struct.Reg* %1723, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %1724 to i64*
  %1725 = load i64, i64* %RAX.i348
  %1726 = load i64, i64* %RCX.i349
  %1727 = add i64 %1726, %1725
  %1728 = load i64, i64* %PC.i347
  %1729 = add i64 %1728, 4
  store i64 %1729, i64* %PC.i347
  %1730 = inttoptr i64 %1727 to i8*
  %1731 = load i8, i8* %1730
  %1732 = sext i8 %1731 to i64
  %1733 = and i64 %1732, 4294967295
  store i64 %1733, i64* %RDX.i350, align 8
  store %struct.Memory* %loadMem_4023ae, %struct.Memory** %MEMORY
  %loadMem_4023b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1735 = getelementptr inbounds %struct.GPR, %struct.GPR* %1734, i32 0, i32 33
  %1736 = getelementptr inbounds %struct.Reg, %struct.Reg* %1735, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1736 to i64*
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 7
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %EDX.i346 = bitcast %union.anon* %1739 to i32*
  %1740 = load i32, i32* %EDX.i346
  %1741 = zext i32 %1740 to i64
  %1742 = load i64, i64* %PC.i345
  %1743 = add i64 %1742, 3
  store i64 %1743, i64* %PC.i345
  %1744 = sub i32 %1740, 32
  %1745 = icmp ult i32 %1740, 32
  %1746 = zext i1 %1745 to i8
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1746, i8* %1747, align 1
  %1748 = and i32 %1744, 255
  %1749 = call i32 @llvm.ctpop.i32(i32 %1748)
  %1750 = trunc i32 %1749 to i8
  %1751 = and i8 %1750, 1
  %1752 = xor i8 %1751, 1
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1752, i8* %1753, align 1
  %1754 = xor i64 32, %1741
  %1755 = trunc i64 %1754 to i32
  %1756 = xor i32 %1755, %1744
  %1757 = lshr i32 %1756, 4
  %1758 = trunc i32 %1757 to i8
  %1759 = and i8 %1758, 1
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1759, i8* %1760, align 1
  %1761 = icmp eq i32 %1744, 0
  %1762 = zext i1 %1761 to i8
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1762, i8* %1763, align 1
  %1764 = lshr i32 %1744, 31
  %1765 = trunc i32 %1764 to i8
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1765, i8* %1766, align 1
  %1767 = lshr i32 %1740, 31
  %1768 = xor i32 %1764, %1767
  %1769 = add i32 %1768, %1767
  %1770 = icmp eq i32 %1769, 2
  %1771 = zext i1 %1770 to i8
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1771, i8* %1772, align 1
  store %struct.Memory* %loadMem_4023b2, %struct.Memory** %MEMORY
  %loadMem_4023b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1774 = getelementptr inbounds %struct.GPR, %struct.GPR* %1773, i32 0, i32 33
  %1775 = getelementptr inbounds %struct.Reg, %struct.Reg* %1774, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %1775 to i64*
  %1776 = load i64, i64* %PC.i344
  %1777 = add i64 %1776, 255
  %1778 = load i64, i64* %PC.i344
  %1779 = add i64 %1778, 6
  %1780 = load i64, i64* %PC.i344
  %1781 = add i64 %1780, 6
  store i64 %1781, i64* %PC.i344
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1783 = load i8, i8* %1782, align 1
  store i8 %1783, i8* %BRANCH_TAKEN, align 1
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1785 = icmp ne i8 %1783, 0
  %1786 = select i1 %1785, i64 %1777, i64 %1779
  store i64 %1786, i64* %1784, align 8
  store %struct.Memory* %loadMem_4023b5, %struct.Memory** %MEMORY
  %loadBr_4023b5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4023b5 = icmp eq i8 %loadBr_4023b5, 1
  br i1 %cmpBr_4023b5, label %block_.L_4024b4, label %block_4023bb

block_4023bb:                                     ; preds = %block_4023a6
  %loadMem_4023bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 33
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 1
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 15
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RBP.i343 = bitcast %union.anon* %1795 to i64*
  %1796 = load i64, i64* %RBP.i343
  %1797 = sub i64 %1796, 32
  %1798 = load i64, i64* %PC.i341
  %1799 = add i64 %1798, 4
  store i64 %1799, i64* %PC.i341
  %1800 = inttoptr i64 %1797 to i64*
  %1801 = load i64, i64* %1800
  store i64 %1801, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_4023bb, %struct.Memory** %MEMORY
  %loadMem_4023bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 33
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 5
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %1807 to i64*
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 15
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %RBP.i340 = bitcast %union.anon* %1810 to i64*
  %1811 = load i64, i64* %RBP.i340
  %1812 = sub i64 %1811, 68
  %1813 = load i64, i64* %PC.i338
  %1814 = add i64 %1813, 4
  store i64 %1814, i64* %PC.i338
  %1815 = inttoptr i64 %1812 to i32*
  %1816 = load i32, i32* %1815
  %1817 = sext i32 %1816 to i64
  store i64 %1817, i64* %RCX.i339, align 8
  store %struct.Memory* %loadMem_4023bf, %struct.Memory** %MEMORY
  %loadMem_4023c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 33
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 1
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RAX.i335 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 5
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RCX.i336 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 7
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RDX.i337 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i335
  %1831 = load i64, i64* %RCX.i336
  %1832 = add i64 %1831, %1830
  %1833 = load i64, i64* %PC.i334
  %1834 = add i64 %1833, 4
  store i64 %1834, i64* %PC.i334
  %1835 = inttoptr i64 %1832 to i8*
  %1836 = load i8, i8* %1835
  %1837 = sext i8 %1836 to i64
  %1838 = and i64 %1837, 4294967295
  store i64 %1838, i64* %RDX.i337, align 8
  store %struct.Memory* %loadMem_4023c3, %struct.Memory** %MEMORY
  %loadMem_4023c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 7
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %EDX.i333 = bitcast %union.anon* %1844 to i32*
  %1845 = load i32, i32* %EDX.i333
  %1846 = zext i32 %1845 to i64
  %1847 = load i64, i64* %PC.i332
  %1848 = add i64 %1847, 3
  store i64 %1848, i64* %PC.i332
  %1849 = sub i32 %1845, 46
  %1850 = icmp ult i32 %1845, 46
  %1851 = zext i1 %1850 to i8
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1851, i8* %1852, align 1
  %1853 = and i32 %1849, 255
  %1854 = call i32 @llvm.ctpop.i32(i32 %1853)
  %1855 = trunc i32 %1854 to i8
  %1856 = and i8 %1855, 1
  %1857 = xor i8 %1856, 1
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1857, i8* %1858, align 1
  %1859 = xor i64 46, %1846
  %1860 = trunc i64 %1859 to i32
  %1861 = xor i32 %1860, %1849
  %1862 = lshr i32 %1861, 4
  %1863 = trunc i32 %1862 to i8
  %1864 = and i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1864, i8* %1865, align 1
  %1866 = icmp eq i32 %1849, 0
  %1867 = zext i1 %1866 to i8
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1867, i8* %1868, align 1
  %1869 = lshr i32 %1849, 31
  %1870 = trunc i32 %1869 to i8
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1870, i8* %1871, align 1
  %1872 = lshr i32 %1845, 31
  %1873 = xor i32 %1869, %1872
  %1874 = add i32 %1873, %1872
  %1875 = icmp eq i32 %1874, 2
  %1876 = zext i1 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1876, i8* %1877, align 1
  store %struct.Memory* %loadMem_4023c7, %struct.Memory** %MEMORY
  %loadMem_4023ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1879 = getelementptr inbounds %struct.GPR, %struct.GPR* %1878, i32 0, i32 33
  %1880 = getelementptr inbounds %struct.Reg, %struct.Reg* %1879, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1880 to i64*
  %1881 = load i64, i64* %PC.i331
  %1882 = add i64 %1881, 234
  %1883 = load i64, i64* %PC.i331
  %1884 = add i64 %1883, 6
  %1885 = load i64, i64* %PC.i331
  %1886 = add i64 %1885, 6
  store i64 %1886, i64* %PC.i331
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1888 = load i8, i8* %1887, align 1
  store i8 %1888, i8* %BRANCH_TAKEN, align 1
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1890 = icmp ne i8 %1888, 0
  %1891 = select i1 %1890, i64 %1882, i64 %1884
  store i64 %1891, i64* %1889, align 8
  store %struct.Memory* %loadMem_4023ca, %struct.Memory** %MEMORY
  %loadBr_4023ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4023ca = icmp eq i8 %loadBr_4023ca, 1
  br i1 %cmpBr_4023ca, label %block_.L_4024b4, label %block_4023d0

block_4023d0:                                     ; preds = %block_4023bb
  %loadMem_4023d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %1897 to i64*
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 15
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %1900 to i64*
  %1901 = load i64, i64* %RBP.i330
  %1902 = sub i64 %1901, 32
  %1903 = load i64, i64* %PC.i328
  %1904 = add i64 %1903, 4
  store i64 %1904, i64* %PC.i328
  %1905 = inttoptr i64 %1902 to i64*
  %1906 = load i64, i64* %1905
  store i64 %1906, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_4023d0, %struct.Memory** %MEMORY
  %loadMem_4023d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1908 = getelementptr inbounds %struct.GPR, %struct.GPR* %1907, i32 0, i32 33
  %1909 = getelementptr inbounds %struct.Reg, %struct.Reg* %1908, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1909 to i64*
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 5
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 15
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %1915 to i64*
  %1916 = load i64, i64* %RBP.i327
  %1917 = sub i64 %1916, 68
  %1918 = load i64, i64* %PC.i325
  %1919 = add i64 %1918, 4
  store i64 %1919, i64* %PC.i325
  %1920 = inttoptr i64 %1917 to i32*
  %1921 = load i32, i32* %1920
  %1922 = sext i32 %1921 to i64
  store i64 %1922, i64* %RCX.i326, align 8
  store %struct.Memory* %loadMem_4023d4, %struct.Memory** %MEMORY
  %loadMem_4023d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 33
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %1925 to i64*
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 1
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 5
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %1931 to i64*
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 7
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %1934 to i64*
  %1935 = load i64, i64* %RAX.i322
  %1936 = load i64, i64* %RCX.i323
  %1937 = add i64 %1936, %1935
  %1938 = load i64, i64* %PC.i321
  %1939 = add i64 %1938, 4
  store i64 %1939, i64* %PC.i321
  %1940 = inttoptr i64 %1937 to i8*
  %1941 = load i8, i8* %1940
  %1942 = sext i8 %1941 to i64
  %1943 = and i64 %1942, 4294967295
  store i64 %1943, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_4023d8, %struct.Memory** %MEMORY
  %loadMem_4023dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 33
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 7
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %EDX.i320 = bitcast %union.anon* %1949 to i32*
  %1950 = load i32, i32* %EDX.i320
  %1951 = zext i32 %1950 to i64
  %1952 = load i64, i64* %PC.i319
  %1953 = add i64 %1952, 3
  store i64 %1953, i64* %PC.i319
  %1954 = sub i32 %1950, 95
  %1955 = icmp ult i32 %1950, 95
  %1956 = zext i1 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1956, i8* %1957, align 1
  %1958 = and i32 %1954, 255
  %1959 = call i32 @llvm.ctpop.i32(i32 %1958)
  %1960 = trunc i32 %1959 to i8
  %1961 = and i8 %1960, 1
  %1962 = xor i8 %1961, 1
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1962, i8* %1963, align 1
  %1964 = xor i64 95, %1951
  %1965 = trunc i64 %1964 to i32
  %1966 = xor i32 %1965, %1954
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1969, i8* %1970, align 1
  %1971 = icmp eq i32 %1954, 0
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1972, i8* %1973, align 1
  %1974 = lshr i32 %1954, 31
  %1975 = trunc i32 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1975, i8* %1976, align 1
  %1977 = lshr i32 %1950, 31
  %1978 = xor i32 %1974, %1977
  %1979 = add i32 %1978, %1977
  %1980 = icmp eq i32 %1979, 2
  %1981 = zext i1 %1980 to i8
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1981, i8* %1982, align 1
  store %struct.Memory* %loadMem_4023dc, %struct.Memory** %MEMORY
  %loadMem_4023df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 33
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %PC.i318
  %1987 = add i64 %1986, 213
  %1988 = load i64, i64* %PC.i318
  %1989 = add i64 %1988, 6
  %1990 = load i64, i64* %PC.i318
  %1991 = add i64 %1990, 6
  store i64 %1991, i64* %PC.i318
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1993 = load i8, i8* %1992, align 1
  store i8 %1993, i8* %BRANCH_TAKEN, align 1
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1995 = icmp ne i8 %1993, 0
  %1996 = select i1 %1995, i64 %1987, i64 %1989
  store i64 %1996, i64* %1994, align 8
  store %struct.Memory* %loadMem_4023df, %struct.Memory** %MEMORY
  %loadBr_4023df = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4023df = icmp eq i8 %loadBr_4023df, 1
  br i1 %cmpBr_4023df, label %block_.L_4024b4, label %block_4023e5

block_4023e5:                                     ; preds = %block_4023d0
  %loadMem_4023e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 33
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 1
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %2002 to i64*
  %2003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2004 = getelementptr inbounds %struct.GPR, %struct.GPR* %2003, i32 0, i32 15
  %2005 = getelementptr inbounds %struct.Reg, %struct.Reg* %2004, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %2005 to i64*
  %2006 = load i64, i64* %RBP.i317
  %2007 = sub i64 %2006, 32
  %2008 = load i64, i64* %PC.i315
  %2009 = add i64 %2008, 4
  store i64 %2009, i64* %PC.i315
  %2010 = inttoptr i64 %2007 to i64*
  %2011 = load i64, i64* %2010
  store i64 %2011, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_4023e5, %struct.Memory** %MEMORY
  %loadMem_4023e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 33
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %2014 to i64*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 5
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 15
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %2020 to i64*
  %2021 = load i64, i64* %RBP.i314
  %2022 = sub i64 %2021, 68
  %2023 = load i64, i64* %PC.i312
  %2024 = add i64 %2023, 4
  store i64 %2024, i64* %PC.i312
  %2025 = inttoptr i64 %2022 to i32*
  %2026 = load i32, i32* %2025
  %2027 = sext i32 %2026 to i64
  store i64 %2027, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_4023e9, %struct.Memory** %MEMORY
  %loadMem_4023ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 33
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %2030 to i64*
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 1
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 5
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 7
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RAX.i309
  %2041 = load i64, i64* %RCX.i310
  %2042 = add i64 %2041, %2040
  %2043 = load i64, i64* %PC.i308
  %2044 = add i64 %2043, 4
  store i64 %2044, i64* %PC.i308
  %2045 = inttoptr i64 %2042 to i8*
  %2046 = load i8, i8* %2045
  %2047 = sext i8 %2046 to i64
  %2048 = and i64 %2047, 4294967295
  store i64 %2048, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_4023ed, %struct.Memory** %MEMORY
  %loadMem_4023f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2050 = getelementptr inbounds %struct.GPR, %struct.GPR* %2049, i32 0, i32 33
  %2051 = getelementptr inbounds %struct.Reg, %struct.Reg* %2050, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %2051 to i64*
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2053 = getelementptr inbounds %struct.GPR, %struct.GPR* %2052, i32 0, i32 7
  %2054 = getelementptr inbounds %struct.Reg, %struct.Reg* %2053, i32 0, i32 0
  %EDX.i307 = bitcast %union.anon* %2054 to i32*
  %2055 = load i32, i32* %EDX.i307
  %2056 = zext i32 %2055 to i64
  %2057 = load i64, i64* %PC.i306
  %2058 = add i64 %2057, 3
  store i64 %2058, i64* %PC.i306
  %2059 = sub i32 %2055, 45
  %2060 = icmp ult i32 %2055, 45
  %2061 = zext i1 %2060 to i8
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2061, i8* %2062, align 1
  %2063 = and i32 %2059, 255
  %2064 = call i32 @llvm.ctpop.i32(i32 %2063)
  %2065 = trunc i32 %2064 to i8
  %2066 = and i8 %2065, 1
  %2067 = xor i8 %2066, 1
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2067, i8* %2068, align 1
  %2069 = xor i64 45, %2056
  %2070 = trunc i64 %2069 to i32
  %2071 = xor i32 %2070, %2059
  %2072 = lshr i32 %2071, 4
  %2073 = trunc i32 %2072 to i8
  %2074 = and i8 %2073, 1
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2074, i8* %2075, align 1
  %2076 = icmp eq i32 %2059, 0
  %2077 = zext i1 %2076 to i8
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2077, i8* %2078, align 1
  %2079 = lshr i32 %2059, 31
  %2080 = trunc i32 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2080, i8* %2081, align 1
  %2082 = lshr i32 %2055, 31
  %2083 = xor i32 %2079, %2082
  %2084 = add i32 %2083, %2082
  %2085 = icmp eq i32 %2084, 2
  %2086 = zext i1 %2085 to i8
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2086, i8* %2087, align 1
  store %struct.Memory* %loadMem_4023f1, %struct.Memory** %MEMORY
  %loadMem_4023f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 33
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %PC.i305
  %2092 = add i64 %2091, 192
  %2093 = load i64, i64* %PC.i305
  %2094 = add i64 %2093, 6
  %2095 = load i64, i64* %PC.i305
  %2096 = add i64 %2095, 6
  store i64 %2096, i64* %PC.i305
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2098 = load i8, i8* %2097, align 1
  store i8 %2098, i8* %BRANCH_TAKEN, align 1
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2100 = icmp ne i8 %2098, 0
  %2101 = select i1 %2100, i64 %2092, i64 %2094
  store i64 %2101, i64* %2099, align 8
  store %struct.Memory* %loadMem_4023f4, %struct.Memory** %MEMORY
  %loadBr_4023f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4023f4 = icmp eq i8 %loadBr_4023f4, 1
  br i1 %cmpBr_4023f4, label %block_.L_4024b4, label %block_4023fa

block_4023fa:                                     ; preds = %block_4023e5
  %loadMem_4023fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 1
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 15
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RBP.i304
  %2112 = sub i64 %2111, 32
  %2113 = load i64, i64* %PC.i302
  %2114 = add i64 %2113, 4
  store i64 %2114, i64* %PC.i302
  %2115 = inttoptr i64 %2112 to i64*
  %2116 = load i64, i64* %2115
  store i64 %2116, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_4023fa, %struct.Memory** %MEMORY
  %loadMem_4023fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2118 = getelementptr inbounds %struct.GPR, %struct.GPR* %2117, i32 0, i32 33
  %2119 = getelementptr inbounds %struct.Reg, %struct.Reg* %2118, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2119 to i64*
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 5
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %RCX.i300 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 15
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %2125 to i64*
  %2126 = load i64, i64* %RBP.i301
  %2127 = sub i64 %2126, 68
  %2128 = load i64, i64* %PC.i299
  %2129 = add i64 %2128, 4
  store i64 %2129, i64* %PC.i299
  %2130 = inttoptr i64 %2127 to i32*
  %2131 = load i32, i32* %2130
  %2132 = sext i32 %2131 to i64
  store i64 %2132, i64* %RCX.i300, align 8
  store %struct.Memory* %loadMem_4023fe, %struct.Memory** %MEMORY
  %loadMem_402402 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 1
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %2138 to i64*
  %2139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2140 = getelementptr inbounds %struct.GPR, %struct.GPR* %2139, i32 0, i32 5
  %2141 = getelementptr inbounds %struct.Reg, %struct.Reg* %2140, i32 0, i32 0
  %RCX.i297 = bitcast %union.anon* %2141 to i64*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2143 = getelementptr inbounds %struct.GPR, %struct.GPR* %2142, i32 0, i32 7
  %2144 = getelementptr inbounds %struct.Reg, %struct.Reg* %2143, i32 0, i32 0
  %RDX.i298 = bitcast %union.anon* %2144 to i64*
  %2145 = load i64, i64* %RAX.i296
  %2146 = load i64, i64* %RCX.i297
  %2147 = add i64 %2146, %2145
  %2148 = load i64, i64* %PC.i295
  %2149 = add i64 %2148, 4
  store i64 %2149, i64* %PC.i295
  %2150 = inttoptr i64 %2147 to i8*
  %2151 = load i8, i8* %2150
  %2152 = sext i8 %2151 to i64
  %2153 = and i64 %2152, 4294967295
  store i64 %2153, i64* %RDX.i298, align 8
  store %struct.Memory* %loadMem_402402, %struct.Memory** %MEMORY
  %loadMem_402406 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2156 to i64*
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 7
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %EDX.i294 = bitcast %union.anon* %2159 to i32*
  %2160 = load i32, i32* %EDX.i294
  %2161 = zext i32 %2160 to i64
  %2162 = load i64, i64* %PC.i293
  %2163 = add i64 %2162, 3
  store i64 %2163, i64* %PC.i293
  %2164 = sub i32 %2160, 126
  %2165 = icmp ult i32 %2160, 126
  %2166 = zext i1 %2165 to i8
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2166, i8* %2167, align 1
  %2168 = and i32 %2164, 255
  %2169 = call i32 @llvm.ctpop.i32(i32 %2168)
  %2170 = trunc i32 %2169 to i8
  %2171 = and i8 %2170, 1
  %2172 = xor i8 %2171, 1
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2172, i8* %2173, align 1
  %2174 = xor i64 126, %2161
  %2175 = trunc i64 %2174 to i32
  %2176 = xor i32 %2175, %2164
  %2177 = lshr i32 %2176, 4
  %2178 = trunc i32 %2177 to i8
  %2179 = and i8 %2178, 1
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2179, i8* %2180, align 1
  %2181 = icmp eq i32 %2164, 0
  %2182 = zext i1 %2181 to i8
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2182, i8* %2183, align 1
  %2184 = lshr i32 %2164, 31
  %2185 = trunc i32 %2184 to i8
  %2186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2185, i8* %2186, align 1
  %2187 = lshr i32 %2160, 31
  %2188 = xor i32 %2184, %2187
  %2189 = add i32 %2188, %2187
  %2190 = icmp eq i32 %2189, 2
  %2191 = zext i1 %2190 to i8
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2191, i8* %2192, align 1
  store %struct.Memory* %loadMem_402406, %struct.Memory** %MEMORY
  %loadMem_402409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2195 to i64*
  %2196 = load i64, i64* %PC.i292
  %2197 = add i64 %2196, 171
  %2198 = load i64, i64* %PC.i292
  %2199 = add i64 %2198, 6
  %2200 = load i64, i64* %PC.i292
  %2201 = add i64 %2200, 6
  store i64 %2201, i64* %PC.i292
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2203 = load i8, i8* %2202, align 1
  store i8 %2203, i8* %BRANCH_TAKEN, align 1
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2205 = icmp ne i8 %2203, 0
  %2206 = select i1 %2205, i64 %2197, i64 %2199
  store i64 %2206, i64* %2204, align 8
  store %struct.Memory* %loadMem_402409, %struct.Memory** %MEMORY
  %loadBr_402409 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402409 = icmp eq i8 %loadBr_402409, 1
  br i1 %cmpBr_402409, label %block_.L_4024b4, label %block_40240f

block_40240f:                                     ; preds = %block_4023fa
  %loadMem_40240f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2208 = getelementptr inbounds %struct.GPR, %struct.GPR* %2207, i32 0, i32 33
  %2209 = getelementptr inbounds %struct.Reg, %struct.Reg* %2208, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2209 to i64*
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2211 = getelementptr inbounds %struct.GPR, %struct.GPR* %2210, i32 0, i32 1
  %2212 = getelementptr inbounds %struct.Reg, %struct.Reg* %2211, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %2212 to i64*
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 15
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2215 to i64*
  %2216 = load i64, i64* %RBP.i291
  %2217 = sub i64 %2216, 88
  %2218 = load i64, i64* %PC.i289
  %2219 = add i64 %2218, 4
  store i64 %2219, i64* %PC.i289
  %2220 = inttoptr i64 %2217 to i64*
  %2221 = load i64, i64* %2220
  store i64 %2221, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_40240f, %struct.Memory** %MEMORY
  %loadMem_402413 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2223 = getelementptr inbounds %struct.GPR, %struct.GPR* %2222, i32 0, i32 33
  %2224 = getelementptr inbounds %struct.Reg, %struct.Reg* %2223, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2224 to i64*
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 5
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 15
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2230 to i64*
  %2231 = load i64, i64* %RBP.i288
  %2232 = sub i64 %2231, 72
  %2233 = load i64, i64* %PC.i286
  %2234 = add i64 %2233, 4
  store i64 %2234, i64* %PC.i286
  %2235 = inttoptr i64 %2232 to i32*
  %2236 = load i32, i32* %2235
  %2237 = sext i32 %2236 to i64
  store i64 %2237, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_402413, %struct.Memory** %MEMORY
  %loadMem_402417 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 33
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2240 to i64*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 1
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 5
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RCX.i285 = bitcast %union.anon* %2246 to i64*
  %2247 = load i64, i64* %RAX.i284
  %2248 = load i64, i64* %RCX.i285
  %2249 = mul i64 %2248, 4
  %2250 = add i64 %2249, %2247
  %2251 = load i64, i64* %PC.i283
  %2252 = add i64 %2251, 4
  store i64 %2252, i64* %PC.i283
  %2253 = inttoptr i64 %2250 to i32*
  %2254 = load i32, i32* %2253
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2255, align 1
  %2256 = and i32 %2254, 255
  %2257 = call i32 @llvm.ctpop.i32(i32 %2256)
  %2258 = trunc i32 %2257 to i8
  %2259 = and i8 %2258, 1
  %2260 = xor i8 %2259, 1
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2260, i8* %2261, align 1
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2262, align 1
  %2263 = icmp eq i32 %2254, 0
  %2264 = zext i1 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2264, i8* %2265, align 1
  %2266 = lshr i32 %2254, 31
  %2267 = trunc i32 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2267, i8* %2268, align 1
  %2269 = lshr i32 %2254, 31
  %2270 = xor i32 %2266, %2269
  %2271 = add i32 %2270, %2269
  %2272 = icmp eq i32 %2271, 2
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2273, i8* %2274, align 1
  store %struct.Memory* %loadMem_402417, %struct.Memory** %MEMORY
  %loadMem_40241b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2277 to i64*
  %2278 = load i64, i64* %PC.i282
  %2279 = add i64 %2278, 153
  %2280 = load i64, i64* %PC.i282
  %2281 = add i64 %2280, 6
  %2282 = load i64, i64* %PC.i282
  %2283 = add i64 %2282, 6
  store i64 %2283, i64* %PC.i282
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2285 = load i8, i8* %2284, align 1
  store i8 %2285, i8* %BRANCH_TAKEN, align 1
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2287 = icmp ne i8 %2285, 0
  %2288 = select i1 %2287, i64 %2279, i64 %2281
  store i64 %2288, i64* %2286, align 8
  store %struct.Memory* %loadMem_40241b, %struct.Memory** %MEMORY
  %loadBr_40241b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40241b = icmp eq i8 %loadBr_40241b, 1
  br i1 %cmpBr_40241b, label %block_.L_4024b4, label %block_402421

block_402421:                                     ; preds = %block_40240f
  %loadMem_402421 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i280 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i281
  %2299 = sub i64 %2298, 40
  %2300 = load i64, i64* %PC.i279
  %2301 = add i64 %2300, 4
  store i64 %2301, i64* %PC.i279
  %2302 = inttoptr i64 %2299 to i64*
  %2303 = load i64, i64* %2302
  store i64 %2303, i64* %RAX.i280, align 8
  store %struct.Memory* %loadMem_402421, %struct.Memory** %MEMORY
  %loadMem_402425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 5
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RCX.i277 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2311 = getelementptr inbounds %struct.GPR, %struct.GPR* %2310, i32 0, i32 15
  %2312 = getelementptr inbounds %struct.Reg, %struct.Reg* %2311, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %2312 to i64*
  %2313 = load i64, i64* %RBP.i278
  %2314 = sub i64 %2313, 68
  %2315 = load i64, i64* %PC.i276
  %2316 = add i64 %2315, 4
  store i64 %2316, i64* %PC.i276
  %2317 = inttoptr i64 %2314 to i32*
  %2318 = load i32, i32* %2317
  %2319 = sext i32 %2318 to i64
  store i64 %2319, i64* %RCX.i277, align 8
  store %struct.Memory* %loadMem_402425, %struct.Memory** %MEMORY
  %loadMem_402429 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %2322 to i64*
  %2323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2324 = getelementptr inbounds %struct.GPR, %struct.GPR* %2323, i32 0, i32 1
  %2325 = getelementptr inbounds %struct.Reg, %struct.Reg* %2324, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2325 to i64*
  %2326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2327 = getelementptr inbounds %struct.GPR, %struct.GPR* %2326, i32 0, i32 5
  %2328 = getelementptr inbounds %struct.Reg, %struct.Reg* %2327, i32 0, i32 0
  %RCX.i274 = bitcast %union.anon* %2328 to i64*
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 7
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %RDX.i275 = bitcast %union.anon* %2331 to i64*
  %2332 = load i64, i64* %RAX.i273
  %2333 = load i64, i64* %RCX.i274
  %2334 = add i64 %2333, %2332
  %2335 = load i64, i64* %PC.i272
  %2336 = add i64 %2335, 4
  store i64 %2336, i64* %PC.i272
  %2337 = inttoptr i64 %2334 to i8*
  %2338 = load i8, i8* %2337
  %2339 = sext i8 %2338 to i64
  %2340 = and i64 %2339, 4294967295
  store i64 %2340, i64* %RDX.i275, align 8
  store %struct.Memory* %loadMem_402429, %struct.Memory** %MEMORY
  %loadMem_40242d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 7
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %EDX.i271 = bitcast %union.anon* %2346 to i32*
  %2347 = load i32, i32* %EDX.i271
  %2348 = zext i32 %2347 to i64
  %2349 = load i64, i64* %PC.i270
  %2350 = add i64 %2349, 3
  store i64 %2350, i64* %PC.i270
  %2351 = sub i32 %2347, 32
  %2352 = icmp ult i32 %2347, 32
  %2353 = zext i1 %2352 to i8
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2353, i8* %2354, align 1
  %2355 = and i32 %2351, 255
  %2356 = call i32 @llvm.ctpop.i32(i32 %2355)
  %2357 = trunc i32 %2356 to i8
  %2358 = and i8 %2357, 1
  %2359 = xor i8 %2358, 1
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2359, i8* %2360, align 1
  %2361 = xor i64 32, %2348
  %2362 = trunc i64 %2361 to i32
  %2363 = xor i32 %2362, %2351
  %2364 = lshr i32 %2363, 4
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2366, i8* %2367, align 1
  %2368 = icmp eq i32 %2351, 0
  %2369 = zext i1 %2368 to i8
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2369, i8* %2370, align 1
  %2371 = lshr i32 %2351, 31
  %2372 = trunc i32 %2371 to i8
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2372, i8* %2373, align 1
  %2374 = lshr i32 %2347, 31
  %2375 = xor i32 %2371, %2374
  %2376 = add i32 %2375, %2374
  %2377 = icmp eq i32 %2376, 2
  %2378 = zext i1 %2377 to i8
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2378, i8* %2379, align 1
  store %struct.Memory* %loadMem_40242d, %struct.Memory** %MEMORY
  %loadMem_402430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2381 = getelementptr inbounds %struct.GPR, %struct.GPR* %2380, i32 0, i32 33
  %2382 = getelementptr inbounds %struct.Reg, %struct.Reg* %2381, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2382 to i64*
  %2383 = load i64, i64* %PC.i269
  %2384 = add i64 %2383, 90
  %2385 = load i64, i64* %PC.i269
  %2386 = add i64 %2385, 6
  %2387 = load i64, i64* %PC.i269
  %2388 = add i64 %2387, 6
  store i64 %2388, i64* %PC.i269
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2390 = load i8, i8* %2389, align 1
  store i8 %2390, i8* %BRANCH_TAKEN, align 1
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2392 = icmp ne i8 %2390, 0
  %2393 = select i1 %2392, i64 %2384, i64 %2386
  store i64 %2393, i64* %2391, align 8
  store %struct.Memory* %loadMem_402430, %struct.Memory** %MEMORY
  %loadBr_402430 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402430 = icmp eq i8 %loadBr_402430, 1
  br i1 %cmpBr_402430, label %block_.L_40248a, label %block_402436

block_402436:                                     ; preds = %block_402421
  %loadMem_402436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 33
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2396 to i64*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 1
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 15
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RBP.i268
  %2404 = sub i64 %2403, 40
  %2405 = load i64, i64* %PC.i266
  %2406 = add i64 %2405, 4
  store i64 %2406, i64* %PC.i266
  %2407 = inttoptr i64 %2404 to i64*
  %2408 = load i64, i64* %2407
  store i64 %2408, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_402436, %struct.Memory** %MEMORY
  %loadMem_40243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 5
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %RCX.i264 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 15
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RBP.i265
  %2419 = sub i64 %2418, 68
  %2420 = load i64, i64* %PC.i263
  %2421 = add i64 %2420, 4
  store i64 %2421, i64* %PC.i263
  %2422 = inttoptr i64 %2419 to i32*
  %2423 = load i32, i32* %2422
  %2424 = sext i32 %2423 to i64
  store i64 %2424, i64* %RCX.i264, align 8
  store %struct.Memory* %loadMem_40243a, %struct.Memory** %MEMORY
  %loadMem_40243e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 1
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %2430 to i64*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 5
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RCX.i261 = bitcast %union.anon* %2433 to i64*
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 7
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %RDX.i262 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %RAX.i260
  %2438 = load i64, i64* %RCX.i261
  %2439 = add i64 %2438, %2437
  %2440 = load i64, i64* %PC.i259
  %2441 = add i64 %2440, 4
  store i64 %2441, i64* %PC.i259
  %2442 = inttoptr i64 %2439 to i8*
  %2443 = load i8, i8* %2442
  %2444 = sext i8 %2443 to i64
  %2445 = and i64 %2444, 4294967295
  store i64 %2445, i64* %RDX.i262, align 8
  store %struct.Memory* %loadMem_40243e, %struct.Memory** %MEMORY
  %loadMem_402442 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 33
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 7
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %EDX.i258 = bitcast %union.anon* %2451 to i32*
  %2452 = load i32, i32* %EDX.i258
  %2453 = zext i32 %2452 to i64
  %2454 = load i64, i64* %PC.i257
  %2455 = add i64 %2454, 3
  store i64 %2455, i64* %PC.i257
  %2456 = sub i32 %2452, 46
  %2457 = icmp ult i32 %2452, 46
  %2458 = zext i1 %2457 to i8
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2458, i8* %2459, align 1
  %2460 = and i32 %2456, 255
  %2461 = call i32 @llvm.ctpop.i32(i32 %2460)
  %2462 = trunc i32 %2461 to i8
  %2463 = and i8 %2462, 1
  %2464 = xor i8 %2463, 1
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2464, i8* %2465, align 1
  %2466 = xor i64 46, %2453
  %2467 = trunc i64 %2466 to i32
  %2468 = xor i32 %2467, %2456
  %2469 = lshr i32 %2468, 4
  %2470 = trunc i32 %2469 to i8
  %2471 = and i8 %2470, 1
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2471, i8* %2472, align 1
  %2473 = icmp eq i32 %2456, 0
  %2474 = zext i1 %2473 to i8
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2474, i8* %2475, align 1
  %2476 = lshr i32 %2456, 31
  %2477 = trunc i32 %2476 to i8
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2477, i8* %2478, align 1
  %2479 = lshr i32 %2452, 31
  %2480 = xor i32 %2476, %2479
  %2481 = add i32 %2480, %2479
  %2482 = icmp eq i32 %2481, 2
  %2483 = zext i1 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2483, i8* %2484, align 1
  store %struct.Memory* %loadMem_402442, %struct.Memory** %MEMORY
  %loadMem_402445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %2487 to i64*
  %2488 = load i64, i64* %PC.i256
  %2489 = add i64 %2488, 69
  %2490 = load i64, i64* %PC.i256
  %2491 = add i64 %2490, 6
  %2492 = load i64, i64* %PC.i256
  %2493 = add i64 %2492, 6
  store i64 %2493, i64* %PC.i256
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2495 = load i8, i8* %2494, align 1
  store i8 %2495, i8* %BRANCH_TAKEN, align 1
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2497 = icmp ne i8 %2495, 0
  %2498 = select i1 %2497, i64 %2489, i64 %2491
  store i64 %2498, i64* %2496, align 8
  store %struct.Memory* %loadMem_402445, %struct.Memory** %MEMORY
  %loadBr_402445 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402445 = icmp eq i8 %loadBr_402445, 1
  br i1 %cmpBr_402445, label %block_.L_40248a, label %block_40244b

block_40244b:                                     ; preds = %block_402436
  %loadMem_40244b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2500 = getelementptr inbounds %struct.GPR, %struct.GPR* %2499, i32 0, i32 33
  %2501 = getelementptr inbounds %struct.Reg, %struct.Reg* %2500, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2501 to i64*
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2503 = getelementptr inbounds %struct.GPR, %struct.GPR* %2502, i32 0, i32 1
  %2504 = getelementptr inbounds %struct.Reg, %struct.Reg* %2503, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %2504 to i64*
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2506 = getelementptr inbounds %struct.GPR, %struct.GPR* %2505, i32 0, i32 15
  %2507 = getelementptr inbounds %struct.Reg, %struct.Reg* %2506, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %2507 to i64*
  %2508 = load i64, i64* %RBP.i255
  %2509 = sub i64 %2508, 40
  %2510 = load i64, i64* %PC.i253
  %2511 = add i64 %2510, 4
  store i64 %2511, i64* %PC.i253
  %2512 = inttoptr i64 %2509 to i64*
  %2513 = load i64, i64* %2512
  store i64 %2513, i64* %RAX.i254, align 8
  store %struct.Memory* %loadMem_40244b, %struct.Memory** %MEMORY
  %loadMem_40244f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2518 = getelementptr inbounds %struct.GPR, %struct.GPR* %2517, i32 0, i32 5
  %2519 = getelementptr inbounds %struct.Reg, %struct.Reg* %2518, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %2519 to i64*
  %2520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2521 = getelementptr inbounds %struct.GPR, %struct.GPR* %2520, i32 0, i32 15
  %2522 = getelementptr inbounds %struct.Reg, %struct.Reg* %2521, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2522 to i64*
  %2523 = load i64, i64* %RBP.i252
  %2524 = sub i64 %2523, 68
  %2525 = load i64, i64* %PC.i250
  %2526 = add i64 %2525, 4
  store i64 %2526, i64* %PC.i250
  %2527 = inttoptr i64 %2524 to i32*
  %2528 = load i32, i32* %2527
  %2529 = sext i32 %2528 to i64
  store i64 %2529, i64* %RCX.i251, align 8
  store %struct.Memory* %loadMem_40244f, %struct.Memory** %MEMORY
  %loadMem_402453 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2534 = getelementptr inbounds %struct.GPR, %struct.GPR* %2533, i32 0, i32 1
  %2535 = getelementptr inbounds %struct.Reg, %struct.Reg* %2534, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2535 to i64*
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 5
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %RCX.i248 = bitcast %union.anon* %2538 to i64*
  %2539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2540 = getelementptr inbounds %struct.GPR, %struct.GPR* %2539, i32 0, i32 7
  %2541 = getelementptr inbounds %struct.Reg, %struct.Reg* %2540, i32 0, i32 0
  %RDX.i249 = bitcast %union.anon* %2541 to i64*
  %2542 = load i64, i64* %RAX.i247
  %2543 = load i64, i64* %RCX.i248
  %2544 = add i64 %2543, %2542
  %2545 = load i64, i64* %PC.i246
  %2546 = add i64 %2545, 4
  store i64 %2546, i64* %PC.i246
  %2547 = inttoptr i64 %2544 to i8*
  %2548 = load i8, i8* %2547
  %2549 = sext i8 %2548 to i64
  %2550 = and i64 %2549, 4294967295
  store i64 %2550, i64* %RDX.i249, align 8
  store %struct.Memory* %loadMem_402453, %struct.Memory** %MEMORY
  %loadMem_402457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2552 = getelementptr inbounds %struct.GPR, %struct.GPR* %2551, i32 0, i32 33
  %2553 = getelementptr inbounds %struct.Reg, %struct.Reg* %2552, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2553 to i64*
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2555 = getelementptr inbounds %struct.GPR, %struct.GPR* %2554, i32 0, i32 7
  %2556 = getelementptr inbounds %struct.Reg, %struct.Reg* %2555, i32 0, i32 0
  %EDX.i245 = bitcast %union.anon* %2556 to i32*
  %2557 = load i32, i32* %EDX.i245
  %2558 = zext i32 %2557 to i64
  %2559 = load i64, i64* %PC.i244
  %2560 = add i64 %2559, 3
  store i64 %2560, i64* %PC.i244
  %2561 = sub i32 %2557, 95
  %2562 = icmp ult i32 %2557, 95
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2563, i8* %2564, align 1
  %2565 = and i32 %2561, 255
  %2566 = call i32 @llvm.ctpop.i32(i32 %2565)
  %2567 = trunc i32 %2566 to i8
  %2568 = and i8 %2567, 1
  %2569 = xor i8 %2568, 1
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2569, i8* %2570, align 1
  %2571 = xor i64 95, %2558
  %2572 = trunc i64 %2571 to i32
  %2573 = xor i32 %2572, %2561
  %2574 = lshr i32 %2573, 4
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2576, i8* %2577, align 1
  %2578 = icmp eq i32 %2561, 0
  %2579 = zext i1 %2578 to i8
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2579, i8* %2580, align 1
  %2581 = lshr i32 %2561, 31
  %2582 = trunc i32 %2581 to i8
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2582, i8* %2583, align 1
  %2584 = lshr i32 %2557, 31
  %2585 = xor i32 %2581, %2584
  %2586 = add i32 %2585, %2584
  %2587 = icmp eq i32 %2586, 2
  %2588 = zext i1 %2587 to i8
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2588, i8* %2589, align 1
  store %struct.Memory* %loadMem_402457, %struct.Memory** %MEMORY
  %loadMem_40245a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2591 = getelementptr inbounds %struct.GPR, %struct.GPR* %2590, i32 0, i32 33
  %2592 = getelementptr inbounds %struct.Reg, %struct.Reg* %2591, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2592 to i64*
  %2593 = load i64, i64* %PC.i243
  %2594 = add i64 %2593, 48
  %2595 = load i64, i64* %PC.i243
  %2596 = add i64 %2595, 6
  %2597 = load i64, i64* %PC.i243
  %2598 = add i64 %2597, 6
  store i64 %2598, i64* %PC.i243
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2600 = load i8, i8* %2599, align 1
  store i8 %2600, i8* %BRANCH_TAKEN, align 1
  %2601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2602 = icmp ne i8 %2600, 0
  %2603 = select i1 %2602, i64 %2594, i64 %2596
  store i64 %2603, i64* %2601, align 8
  store %struct.Memory* %loadMem_40245a, %struct.Memory** %MEMORY
  %loadBr_40245a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40245a = icmp eq i8 %loadBr_40245a, 1
  br i1 %cmpBr_40245a, label %block_.L_40248a, label %block_402460

block_402460:                                     ; preds = %block_40244b
  %loadMem_402460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2605 = getelementptr inbounds %struct.GPR, %struct.GPR* %2604, i32 0, i32 33
  %2606 = getelementptr inbounds %struct.Reg, %struct.Reg* %2605, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2606 to i64*
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2608 = getelementptr inbounds %struct.GPR, %struct.GPR* %2607, i32 0, i32 1
  %2609 = getelementptr inbounds %struct.Reg, %struct.Reg* %2608, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %2609 to i64*
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 15
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %2612 to i64*
  %2613 = load i64, i64* %RBP.i242
  %2614 = sub i64 %2613, 40
  %2615 = load i64, i64* %PC.i240
  %2616 = add i64 %2615, 4
  store i64 %2616, i64* %PC.i240
  %2617 = inttoptr i64 %2614 to i64*
  %2618 = load i64, i64* %2617
  store i64 %2618, i64* %RAX.i241, align 8
  store %struct.Memory* %loadMem_402460, %struct.Memory** %MEMORY
  %loadMem_402464 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 33
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 5
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RCX.i238 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 15
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %2627 to i64*
  %2628 = load i64, i64* %RBP.i239
  %2629 = sub i64 %2628, 68
  %2630 = load i64, i64* %PC.i237
  %2631 = add i64 %2630, 4
  store i64 %2631, i64* %PC.i237
  %2632 = inttoptr i64 %2629 to i32*
  %2633 = load i32, i32* %2632
  %2634 = sext i32 %2633 to i64
  store i64 %2634, i64* %RCX.i238, align 8
  store %struct.Memory* %loadMem_402464, %struct.Memory** %MEMORY
  %loadMem_402468 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2636 = getelementptr inbounds %struct.GPR, %struct.GPR* %2635, i32 0, i32 33
  %2637 = getelementptr inbounds %struct.Reg, %struct.Reg* %2636, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %2637 to i64*
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 1
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 5
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 7
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %RDX.i236 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %RAX.i234
  %2648 = load i64, i64* %RCX.i235
  %2649 = add i64 %2648, %2647
  %2650 = load i64, i64* %PC.i233
  %2651 = add i64 %2650, 4
  store i64 %2651, i64* %PC.i233
  %2652 = inttoptr i64 %2649 to i8*
  %2653 = load i8, i8* %2652
  %2654 = sext i8 %2653 to i64
  %2655 = and i64 %2654, 4294967295
  store i64 %2655, i64* %RDX.i236, align 8
  store %struct.Memory* %loadMem_402468, %struct.Memory** %MEMORY
  %loadMem_40246c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 7
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %2661 to i32*
  %2662 = load i32, i32* %EDX.i232
  %2663 = zext i32 %2662 to i64
  %2664 = load i64, i64* %PC.i231
  %2665 = add i64 %2664, 3
  store i64 %2665, i64* %PC.i231
  %2666 = sub i32 %2662, 45
  %2667 = icmp ult i32 %2662, 45
  %2668 = zext i1 %2667 to i8
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2668, i8* %2669, align 1
  %2670 = and i32 %2666, 255
  %2671 = call i32 @llvm.ctpop.i32(i32 %2670)
  %2672 = trunc i32 %2671 to i8
  %2673 = and i8 %2672, 1
  %2674 = xor i8 %2673, 1
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2674, i8* %2675, align 1
  %2676 = xor i64 45, %2663
  %2677 = trunc i64 %2676 to i32
  %2678 = xor i32 %2677, %2666
  %2679 = lshr i32 %2678, 4
  %2680 = trunc i32 %2679 to i8
  %2681 = and i8 %2680, 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2681, i8* %2682, align 1
  %2683 = icmp eq i32 %2666, 0
  %2684 = zext i1 %2683 to i8
  %2685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2684, i8* %2685, align 1
  %2686 = lshr i32 %2666, 31
  %2687 = trunc i32 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2687, i8* %2688, align 1
  %2689 = lshr i32 %2662, 31
  %2690 = xor i32 %2686, %2689
  %2691 = add i32 %2690, %2689
  %2692 = icmp eq i32 %2691, 2
  %2693 = zext i1 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2693, i8* %2694, align 1
  store %struct.Memory* %loadMem_40246c, %struct.Memory** %MEMORY
  %loadMem_40246f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 33
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %2697 to i64*
  %2698 = load i64, i64* %PC.i230
  %2699 = add i64 %2698, 27
  %2700 = load i64, i64* %PC.i230
  %2701 = add i64 %2700, 6
  %2702 = load i64, i64* %PC.i230
  %2703 = add i64 %2702, 6
  store i64 %2703, i64* %PC.i230
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2705 = load i8, i8* %2704, align 1
  store i8 %2705, i8* %BRANCH_TAKEN, align 1
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2707 = icmp ne i8 %2705, 0
  %2708 = select i1 %2707, i64 %2699, i64 %2701
  store i64 %2708, i64* %2706, align 8
  store %struct.Memory* %loadMem_40246f, %struct.Memory** %MEMORY
  %loadBr_40246f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40246f = icmp eq i8 %loadBr_40246f, 1
  br i1 %cmpBr_40246f, label %block_.L_40248a, label %block_402475

block_402475:                                     ; preds = %block_402460
  %loadMem_402475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2710 = getelementptr inbounds %struct.GPR, %struct.GPR* %2709, i32 0, i32 33
  %2711 = getelementptr inbounds %struct.Reg, %struct.Reg* %2710, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %2711 to i64*
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2713 = getelementptr inbounds %struct.GPR, %struct.GPR* %2712, i32 0, i32 1
  %2714 = getelementptr inbounds %struct.Reg, %struct.Reg* %2713, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %2714 to i64*
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2716 = getelementptr inbounds %struct.GPR, %struct.GPR* %2715, i32 0, i32 15
  %2717 = getelementptr inbounds %struct.Reg, %struct.Reg* %2716, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %2717 to i64*
  %2718 = load i64, i64* %RBP.i229
  %2719 = sub i64 %2718, 40
  %2720 = load i64, i64* %PC.i227
  %2721 = add i64 %2720, 4
  store i64 %2721, i64* %PC.i227
  %2722 = inttoptr i64 %2719 to i64*
  %2723 = load i64, i64* %2722
  store i64 %2723, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_402475, %struct.Memory** %MEMORY
  %loadMem_402479 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 5
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %RCX.i225 = bitcast %union.anon* %2729 to i64*
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 15
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %RBP.i226
  %2734 = sub i64 %2733, 68
  %2735 = load i64, i64* %PC.i224
  %2736 = add i64 %2735, 4
  store i64 %2736, i64* %PC.i224
  %2737 = inttoptr i64 %2734 to i32*
  %2738 = load i32, i32* %2737
  %2739 = sext i32 %2738 to i64
  store i64 %2739, i64* %RCX.i225, align 8
  store %struct.Memory* %loadMem_402479, %struct.Memory** %MEMORY
  %loadMem_40247d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2741 = getelementptr inbounds %struct.GPR, %struct.GPR* %2740, i32 0, i32 33
  %2742 = getelementptr inbounds %struct.Reg, %struct.Reg* %2741, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2742 to i64*
  %2743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2744 = getelementptr inbounds %struct.GPR, %struct.GPR* %2743, i32 0, i32 1
  %2745 = getelementptr inbounds %struct.Reg, %struct.Reg* %2744, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %2745 to i64*
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 5
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %2748 to i64*
  %2749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2750 = getelementptr inbounds %struct.GPR, %struct.GPR* %2749, i32 0, i32 7
  %2751 = getelementptr inbounds %struct.Reg, %struct.Reg* %2750, i32 0, i32 0
  %RDX.i223 = bitcast %union.anon* %2751 to i64*
  %2752 = load i64, i64* %RAX.i221
  %2753 = load i64, i64* %RCX.i222
  %2754 = add i64 %2753, %2752
  %2755 = load i64, i64* %PC.i220
  %2756 = add i64 %2755, 4
  store i64 %2756, i64* %PC.i220
  %2757 = inttoptr i64 %2754 to i8*
  %2758 = load i8, i8* %2757
  %2759 = sext i8 %2758 to i64
  %2760 = and i64 %2759, 4294967295
  store i64 %2760, i64* %RDX.i223, align 8
  store %struct.Memory* %loadMem_40247d, %struct.Memory** %MEMORY
  %loadMem_402481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 7
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %EDX.i219 = bitcast %union.anon* %2766 to i32*
  %2767 = load i32, i32* %EDX.i219
  %2768 = zext i32 %2767 to i64
  %2769 = load i64, i64* %PC.i218
  %2770 = add i64 %2769, 3
  store i64 %2770, i64* %PC.i218
  %2771 = sub i32 %2767, 126
  %2772 = icmp ult i32 %2767, 126
  %2773 = zext i1 %2772 to i8
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2773, i8* %2774, align 1
  %2775 = and i32 %2771, 255
  %2776 = call i32 @llvm.ctpop.i32(i32 %2775)
  %2777 = trunc i32 %2776 to i8
  %2778 = and i8 %2777, 1
  %2779 = xor i8 %2778, 1
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2779, i8* %2780, align 1
  %2781 = xor i64 126, %2768
  %2782 = trunc i64 %2781 to i32
  %2783 = xor i32 %2782, %2771
  %2784 = lshr i32 %2783, 4
  %2785 = trunc i32 %2784 to i8
  %2786 = and i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2786, i8* %2787, align 1
  %2788 = icmp eq i32 %2771, 0
  %2789 = zext i1 %2788 to i8
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2789, i8* %2790, align 1
  %2791 = lshr i32 %2771, 31
  %2792 = trunc i32 %2791 to i8
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2792, i8* %2793, align 1
  %2794 = lshr i32 %2767, 31
  %2795 = xor i32 %2791, %2794
  %2796 = add i32 %2795, %2794
  %2797 = icmp eq i32 %2796, 2
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2798, i8* %2799, align 1
  store %struct.Memory* %loadMem_402481, %struct.Memory** %MEMORY
  %loadMem_402484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2802 to i64*
  %2803 = load i64, i64* %PC.i217
  %2804 = add i64 %2803, 19
  %2805 = load i64, i64* %PC.i217
  %2806 = add i64 %2805, 6
  %2807 = load i64, i64* %PC.i217
  %2808 = add i64 %2807, 6
  store i64 %2808, i64* %PC.i217
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2810 = load i8, i8* %2809, align 1
  %2811 = icmp eq i8 %2810, 0
  %2812 = zext i1 %2811 to i8
  store i8 %2812, i8* %BRANCH_TAKEN, align 1
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2814 = select i1 %2811, i64 %2804, i64 %2806
  store i64 %2814, i64* %2813, align 8
  store %struct.Memory* %loadMem_402484, %struct.Memory** %MEMORY
  %loadBr_402484 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402484 = icmp eq i8 %loadBr_402484, 1
  br i1 %cmpBr_402484, label %block_.L_402497, label %block_.L_40248a

block_.L_40248a:                                  ; preds = %block_402475, %block_402460, %block_40244b, %block_402436, %block_402421
  %loadMem_40248a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2816 = getelementptr inbounds %struct.GPR, %struct.GPR* %2815, i32 0, i32 33
  %2817 = getelementptr inbounds %struct.Reg, %struct.Reg* %2816, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %2817 to i64*
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 1
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %PC.i215
  %2822 = add i64 %2821, 5
  store i64 %2822, i64* %PC.i215
  store i64 4294967295, i64* %RAX.i216, align 8
  store %struct.Memory* %loadMem_40248a, %struct.Memory** %MEMORY
  %loadMem_40248f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 1
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %EAX.i213 = bitcast %union.anon* %2828 to i32*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 15
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %2831 to i64*
  %2832 = load i64, i64* %RBP.i214
  %2833 = sub i64 %2832, 120
  %2834 = load i32, i32* %EAX.i213
  %2835 = zext i32 %2834 to i64
  %2836 = load i64, i64* %PC.i212
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i212
  %2838 = inttoptr i64 %2833 to i32*
  store i32 %2834, i32* %2838
  store %struct.Memory* %loadMem_40248f, %struct.Memory** %MEMORY
  %loadMem_402492 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2840 = getelementptr inbounds %struct.GPR, %struct.GPR* %2839, i32 0, i32 33
  %2841 = getelementptr inbounds %struct.Reg, %struct.Reg* %2840, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2841 to i64*
  %2842 = load i64, i64* %PC.i211
  %2843 = add i64 %2842, 11
  %2844 = load i64, i64* %PC.i211
  %2845 = add i64 %2844, 5
  store i64 %2845, i64* %PC.i211
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2843, i64* %2846, align 8
  store %struct.Memory* %loadMem_402492, %struct.Memory** %MEMORY
  br label %block_.L_40249d

block_.L_402497:                                  ; preds = %block_402475
  %loadMem_402497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 1
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2852 to i64*
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2854 = getelementptr inbounds %struct.GPR, %struct.GPR* %2853, i32 0, i32 15
  %2855 = getelementptr inbounds %struct.Reg, %struct.Reg* %2854, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2855 to i64*
  %2856 = load i64, i64* %RBP.i210
  %2857 = sub i64 %2856, 76
  %2858 = load i64, i64* %PC.i208
  %2859 = add i64 %2858, 3
  store i64 %2859, i64* %PC.i208
  %2860 = inttoptr i64 %2857 to i32*
  %2861 = load i32, i32* %2860
  %2862 = zext i32 %2861 to i64
  store i64 %2862, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_402497, %struct.Memory** %MEMORY
  %loadMem_40249a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 1
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %EAX.i206 = bitcast %union.anon* %2868 to i32*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 15
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %2871 to i64*
  %2872 = load i64, i64* %RBP.i207
  %2873 = sub i64 %2872, 120
  %2874 = load i32, i32* %EAX.i206
  %2875 = zext i32 %2874 to i64
  %2876 = load i64, i64* %PC.i205
  %2877 = add i64 %2876, 3
  store i64 %2877, i64* %PC.i205
  %2878 = inttoptr i64 %2873 to i32*
  store i32 %2874, i32* %2878
  store %struct.Memory* %loadMem_40249a, %struct.Memory** %MEMORY
  br label %block_.L_40249d

block_.L_40249d:                                  ; preds = %block_.L_402497, %block_.L_40248a
  %loadMem_40249d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2880 = getelementptr inbounds %struct.GPR, %struct.GPR* %2879, i32 0, i32 33
  %2881 = getelementptr inbounds %struct.Reg, %struct.Reg* %2880, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %2881 to i64*
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2883 = getelementptr inbounds %struct.GPR, %struct.GPR* %2882, i32 0, i32 1
  %2884 = getelementptr inbounds %struct.Reg, %struct.Reg* %2883, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %2884 to i64*
  %2885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2886 = getelementptr inbounds %struct.GPR, %struct.GPR* %2885, i32 0, i32 15
  %2887 = getelementptr inbounds %struct.Reg, %struct.Reg* %2886, i32 0, i32 0
  %RBP.i204 = bitcast %union.anon* %2887 to i64*
  %2888 = load i64, i64* %RBP.i204
  %2889 = sub i64 %2888, 120
  %2890 = load i64, i64* %PC.i202
  %2891 = add i64 %2890, 3
  store i64 %2891, i64* %PC.i202
  %2892 = inttoptr i64 %2889 to i32*
  %2893 = load i32, i32* %2892
  %2894 = zext i32 %2893 to i64
  store i64 %2894, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_40249d, %struct.Memory** %MEMORY
  %loadMem_4024a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 33
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %2897 to i64*
  %2898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2899 = getelementptr inbounds %struct.GPR, %struct.GPR* %2898, i32 0, i32 5
  %2900 = getelementptr inbounds %struct.Reg, %struct.Reg* %2899, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %2900 to i64*
  %2901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2902 = getelementptr inbounds %struct.GPR, %struct.GPR* %2901, i32 0, i32 15
  %2903 = getelementptr inbounds %struct.Reg, %struct.Reg* %2902, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %2903 to i64*
  %2904 = load i64, i64* %RBP.i201
  %2905 = sub i64 %2904, 64
  %2906 = load i64, i64* %PC.i199
  %2907 = add i64 %2906, 4
  store i64 %2907, i64* %PC.i199
  %2908 = inttoptr i64 %2905 to i64*
  %2909 = load i64, i64* %2908
  store i64 %2909, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_4024a0, %struct.Memory** %MEMORY
  %loadMem_4024a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 33
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 7
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %2915 to i64*
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2917 = getelementptr inbounds %struct.GPR, %struct.GPR* %2916, i32 0, i32 15
  %2918 = getelementptr inbounds %struct.Reg, %struct.Reg* %2917, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %2918 to i64*
  %2919 = load i64, i64* %RBP.i198
  %2920 = sub i64 %2919, 92
  %2921 = load i64, i64* %PC.i196
  %2922 = add i64 %2921, 4
  store i64 %2922, i64* %PC.i196
  %2923 = inttoptr i64 %2920 to i32*
  %2924 = load i32, i32* %2923
  %2925 = sext i32 %2924 to i64
  store i64 %2925, i64* %RDX.i197, align 8
  store %struct.Memory* %loadMem_4024a4, %struct.Memory** %MEMORY
  %loadMem_4024a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2927 = getelementptr inbounds %struct.GPR, %struct.GPR* %2926, i32 0, i32 33
  %2928 = getelementptr inbounds %struct.Reg, %struct.Reg* %2927, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2928 to i64*
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 1
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %EAX.i193 = bitcast %union.anon* %2931 to i32*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 5
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2936 = getelementptr inbounds %struct.GPR, %struct.GPR* %2935, i32 0, i32 7
  %2937 = getelementptr inbounds %struct.Reg, %struct.Reg* %2936, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %2937 to i64*
  %2938 = load i64, i64* %RCX.i194
  %2939 = load i64, i64* %RDX.i195
  %2940 = mul i64 %2939, 4
  %2941 = add i64 %2940, %2938
  %2942 = load i32, i32* %EAX.i193
  %2943 = zext i32 %2942 to i64
  %2944 = load i64, i64* %PC.i192
  %2945 = add i64 %2944, 3
  store i64 %2945, i64* %PC.i192
  %2946 = inttoptr i64 %2941 to i32*
  store i32 %2942, i32* %2946
  store %struct.Memory* %loadMem_4024a8, %struct.Memory** %MEMORY
  %loadMem_4024ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 1
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 15
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RBP.i191 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %RBP.i191
  %2957 = sub i64 %2956, 92
  %2958 = load i64, i64* %PC.i189
  %2959 = add i64 %2958, 3
  store i64 %2959, i64* %PC.i189
  %2960 = inttoptr i64 %2957 to i32*
  %2961 = load i32, i32* %2960
  %2962 = zext i32 %2961 to i64
  store i64 %2962, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_4024ab, %struct.Memory** %MEMORY
  %loadMem_4024ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2964 = getelementptr inbounds %struct.GPR, %struct.GPR* %2963, i32 0, i32 33
  %2965 = getelementptr inbounds %struct.Reg, %struct.Reg* %2964, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %2965 to i64*
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 1
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %2968 to i64*
  %2969 = load i64, i64* %RAX.i188
  %2970 = load i64, i64* %PC.i187
  %2971 = add i64 %2970, 3
  store i64 %2971, i64* %PC.i187
  %2972 = trunc i64 %2969 to i32
  %2973 = add i32 1, %2972
  %2974 = zext i32 %2973 to i64
  store i64 %2974, i64* %RAX.i188, align 8
  %2975 = icmp ult i32 %2973, %2972
  %2976 = icmp ult i32 %2973, 1
  %2977 = or i1 %2975, %2976
  %2978 = zext i1 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2978, i8* %2979, align 1
  %2980 = and i32 %2973, 255
  %2981 = call i32 @llvm.ctpop.i32(i32 %2980)
  %2982 = trunc i32 %2981 to i8
  %2983 = and i8 %2982, 1
  %2984 = xor i8 %2983, 1
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2984, i8* %2985, align 1
  %2986 = xor i64 1, %2969
  %2987 = trunc i64 %2986 to i32
  %2988 = xor i32 %2987, %2973
  %2989 = lshr i32 %2988, 4
  %2990 = trunc i32 %2989 to i8
  %2991 = and i8 %2990, 1
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2991, i8* %2992, align 1
  %2993 = icmp eq i32 %2973, 0
  %2994 = zext i1 %2993 to i8
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2994, i8* %2995, align 1
  %2996 = lshr i32 %2973, 31
  %2997 = trunc i32 %2996 to i8
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2997, i8* %2998, align 1
  %2999 = lshr i32 %2972, 31
  %3000 = xor i32 %2996, %2999
  %3001 = add i32 %3000, %2996
  %3002 = icmp eq i32 %3001, 2
  %3003 = zext i1 %3002 to i8
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3003, i8* %3004, align 1
  store %struct.Memory* %loadMem_4024ae, %struct.Memory** %MEMORY
  %loadMem_4024b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3007 to i64*
  %3008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3009 = getelementptr inbounds %struct.GPR, %struct.GPR* %3008, i32 0, i32 1
  %3010 = getelementptr inbounds %struct.Reg, %struct.Reg* %3009, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %3010 to i32*
  %3011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3012 = getelementptr inbounds %struct.GPR, %struct.GPR* %3011, i32 0, i32 15
  %3013 = getelementptr inbounds %struct.Reg, %struct.Reg* %3012, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %3013 to i64*
  %3014 = load i64, i64* %RBP.i186
  %3015 = sub i64 %3014, 92
  %3016 = load i32, i32* %EAX.i185
  %3017 = zext i32 %3016 to i64
  %3018 = load i64, i64* %PC.i184
  %3019 = add i64 %3018, 3
  store i64 %3019, i64* %PC.i184
  %3020 = inttoptr i64 %3015 to i32*
  store i32 %3016, i32* %3020
  store %struct.Memory* %loadMem_4024b1, %struct.Memory** %MEMORY
  br label %block_.L_4024b4

block_.L_4024b4:                                  ; preds = %block_.L_40249d, %block_40240f, %block_4023fa, %block_4023e5, %block_4023d0, %block_4023bb, %block_4023a6
  %loadMem_4024b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 33
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 1
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %3026 to i64*
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3028 = getelementptr inbounds %struct.GPR, %struct.GPR* %3027, i32 0, i32 15
  %3029 = getelementptr inbounds %struct.Reg, %struct.Reg* %3028, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3029 to i64*
  %3030 = load i64, i64* %RBP.i183
  %3031 = sub i64 %3030, 32
  %3032 = load i64, i64* %PC.i181
  %3033 = add i64 %3032, 4
  store i64 %3033, i64* %PC.i181
  %3034 = inttoptr i64 %3031 to i64*
  %3035 = load i64, i64* %3034
  store i64 %3035, i64* %RAX.i182, align 8
  store %struct.Memory* %loadMem_4024b4, %struct.Memory** %MEMORY
  %loadMem_4024b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3037 = getelementptr inbounds %struct.GPR, %struct.GPR* %3036, i32 0, i32 33
  %3038 = getelementptr inbounds %struct.Reg, %struct.Reg* %3037, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3038 to i64*
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3040 = getelementptr inbounds %struct.GPR, %struct.GPR* %3039, i32 0, i32 5
  %3041 = getelementptr inbounds %struct.Reg, %struct.Reg* %3040, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %3041 to i64*
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 15
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3044 to i64*
  %3045 = load i64, i64* %RBP.i180
  %3046 = sub i64 %3045, 68
  %3047 = load i64, i64* %PC.i178
  %3048 = add i64 %3047, 4
  store i64 %3048, i64* %PC.i178
  %3049 = inttoptr i64 %3046 to i32*
  %3050 = load i32, i32* %3049
  %3051 = sext i32 %3050 to i64
  store i64 %3051, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_4024b8, %struct.Memory** %MEMORY
  %loadMem_4024bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 33
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3054 to i64*
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3056 = getelementptr inbounds %struct.GPR, %struct.GPR* %3055, i32 0, i32 1
  %3057 = getelementptr inbounds %struct.Reg, %struct.Reg* %3056, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %3057 to i64*
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 5
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 7
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RDX.i177 = bitcast %union.anon* %3063 to i64*
  %3064 = load i64, i64* %RAX.i175
  %3065 = load i64, i64* %RCX.i176
  %3066 = add i64 %3065, %3064
  %3067 = load i64, i64* %PC.i174
  %3068 = add i64 %3067, 4
  store i64 %3068, i64* %PC.i174
  %3069 = inttoptr i64 %3066 to i8*
  %3070 = load i8, i8* %3069
  %3071 = sext i8 %3070 to i64
  %3072 = and i64 %3071, 4294967295
  store i64 %3072, i64* %RDX.i177, align 8
  store %struct.Memory* %loadMem_4024bc, %struct.Memory** %MEMORY
  %loadMem_4024c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3074 = getelementptr inbounds %struct.GPR, %struct.GPR* %3073, i32 0, i32 33
  %3075 = getelementptr inbounds %struct.Reg, %struct.Reg* %3074, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3075 to i64*
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 7
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %EDX.i173 = bitcast %union.anon* %3078 to i32*
  %3079 = load i32, i32* %EDX.i173
  %3080 = zext i32 %3079 to i64
  %3081 = load i64, i64* %PC.i172
  %3082 = add i64 %3081, 3
  store i64 %3082, i64* %PC.i172
  %3083 = sub i32 %3079, 32
  %3084 = icmp ult i32 %3079, 32
  %3085 = zext i1 %3084 to i8
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3085, i8* %3086, align 1
  %3087 = and i32 %3083, 255
  %3088 = call i32 @llvm.ctpop.i32(i32 %3087)
  %3089 = trunc i32 %3088 to i8
  %3090 = and i8 %3089, 1
  %3091 = xor i8 %3090, 1
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3091, i8* %3092, align 1
  %3093 = xor i64 32, %3080
  %3094 = trunc i64 %3093 to i32
  %3095 = xor i32 %3094, %3083
  %3096 = lshr i32 %3095, 4
  %3097 = trunc i32 %3096 to i8
  %3098 = and i8 %3097, 1
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3098, i8* %3099, align 1
  %3100 = icmp eq i32 %3083, 0
  %3101 = zext i1 %3100 to i8
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3101, i8* %3102, align 1
  %3103 = lshr i32 %3083, 31
  %3104 = trunc i32 %3103 to i8
  %3105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3104, i8* %3105, align 1
  %3106 = lshr i32 %3079, 31
  %3107 = xor i32 %3103, %3106
  %3108 = add i32 %3107, %3106
  %3109 = icmp eq i32 %3108, 2
  %3110 = zext i1 %3109 to i8
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3110, i8* %3111, align 1
  store %struct.Memory* %loadMem_4024c0, %struct.Memory** %MEMORY
  %loadMem_4024c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %PC.i171
  %3116 = add i64 %3115, 99
  %3117 = load i64, i64* %PC.i171
  %3118 = add i64 %3117, 6
  %3119 = load i64, i64* %PC.i171
  %3120 = add i64 %3119, 6
  store i64 %3120, i64* %PC.i171
  %3121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3122 = load i8, i8* %3121, align 1
  store i8 %3122, i8* %BRANCH_TAKEN, align 1
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3124 = icmp ne i8 %3122, 0
  %3125 = select i1 %3124, i64 %3116, i64 %3118
  store i64 %3125, i64* %3123, align 8
  store %struct.Memory* %loadMem_4024c3, %struct.Memory** %MEMORY
  %loadBr_4024c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024c3 = icmp eq i8 %loadBr_4024c3, 1
  br i1 %cmpBr_4024c3, label %block_.L_402526, label %block_4024c9

block_4024c9:                                     ; preds = %block_.L_4024b4
  %loadMem_4024c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3127 = getelementptr inbounds %struct.GPR, %struct.GPR* %3126, i32 0, i32 33
  %3128 = getelementptr inbounds %struct.Reg, %struct.Reg* %3127, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3128 to i64*
  %3129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3130 = getelementptr inbounds %struct.GPR, %struct.GPR* %3129, i32 0, i32 1
  %3131 = getelementptr inbounds %struct.Reg, %struct.Reg* %3130, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %3131 to i64*
  %3132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3133 = getelementptr inbounds %struct.GPR, %struct.GPR* %3132, i32 0, i32 15
  %3134 = getelementptr inbounds %struct.Reg, %struct.Reg* %3133, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %3134 to i64*
  %3135 = load i64, i64* %RBP.i170
  %3136 = sub i64 %3135, 32
  %3137 = load i64, i64* %PC.i168
  %3138 = add i64 %3137, 4
  store i64 %3138, i64* %PC.i168
  %3139 = inttoptr i64 %3136 to i64*
  %3140 = load i64, i64* %3139
  store i64 %3140, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_4024c9, %struct.Memory** %MEMORY
  %loadMem_4024cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 5
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RCX.i166 = bitcast %union.anon* %3146 to i64*
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3148 = getelementptr inbounds %struct.GPR, %struct.GPR* %3147, i32 0, i32 15
  %3149 = getelementptr inbounds %struct.Reg, %struct.Reg* %3148, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %3149 to i64*
  %3150 = load i64, i64* %RBP.i167
  %3151 = sub i64 %3150, 68
  %3152 = load i64, i64* %PC.i165
  %3153 = add i64 %3152, 4
  store i64 %3153, i64* %PC.i165
  %3154 = inttoptr i64 %3151 to i32*
  %3155 = load i32, i32* %3154
  %3156 = sext i32 %3155 to i64
  store i64 %3156, i64* %RCX.i166, align 8
  store %struct.Memory* %loadMem_4024cd, %struct.Memory** %MEMORY
  %loadMem_4024d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3158 = getelementptr inbounds %struct.GPR, %struct.GPR* %3157, i32 0, i32 33
  %3159 = getelementptr inbounds %struct.Reg, %struct.Reg* %3158, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %3159 to i64*
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 1
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %3162 to i64*
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 5
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %3165 to i64*
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 7
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %RAX.i162
  %3170 = load i64, i64* %RCX.i163
  %3171 = add i64 %3170, %3169
  %3172 = load i64, i64* %PC.i161
  %3173 = add i64 %3172, 4
  store i64 %3173, i64* %PC.i161
  %3174 = inttoptr i64 %3171 to i8*
  %3175 = load i8, i8* %3174
  %3176 = sext i8 %3175 to i64
  %3177 = and i64 %3176, 4294967295
  store i64 %3177, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_4024d1, %struct.Memory** %MEMORY
  %loadMem_4024d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 7
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %EDX.i160 = bitcast %union.anon* %3183 to i32*
  %3184 = load i32, i32* %EDX.i160
  %3185 = zext i32 %3184 to i64
  %3186 = load i64, i64* %PC.i159
  %3187 = add i64 %3186, 3
  store i64 %3187, i64* %PC.i159
  %3188 = sub i32 %3184, 46
  %3189 = icmp ult i32 %3184, 46
  %3190 = zext i1 %3189 to i8
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3190, i8* %3191, align 1
  %3192 = and i32 %3188, 255
  %3193 = call i32 @llvm.ctpop.i32(i32 %3192)
  %3194 = trunc i32 %3193 to i8
  %3195 = and i8 %3194, 1
  %3196 = xor i8 %3195, 1
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3196, i8* %3197, align 1
  %3198 = xor i64 46, %3185
  %3199 = trunc i64 %3198 to i32
  %3200 = xor i32 %3199, %3188
  %3201 = lshr i32 %3200, 4
  %3202 = trunc i32 %3201 to i8
  %3203 = and i8 %3202, 1
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3203, i8* %3204, align 1
  %3205 = icmp eq i32 %3188, 0
  %3206 = zext i1 %3205 to i8
  %3207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3206, i8* %3207, align 1
  %3208 = lshr i32 %3188, 31
  %3209 = trunc i32 %3208 to i8
  %3210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3209, i8* %3210, align 1
  %3211 = lshr i32 %3184, 31
  %3212 = xor i32 %3208, %3211
  %3213 = add i32 %3212, %3211
  %3214 = icmp eq i32 %3213, 2
  %3215 = zext i1 %3214 to i8
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3215, i8* %3216, align 1
  store %struct.Memory* %loadMem_4024d5, %struct.Memory** %MEMORY
  %loadMem_4024d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3218 = getelementptr inbounds %struct.GPR, %struct.GPR* %3217, i32 0, i32 33
  %3219 = getelementptr inbounds %struct.Reg, %struct.Reg* %3218, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %3219 to i64*
  %3220 = load i64, i64* %PC.i158
  %3221 = add i64 %3220, 78
  %3222 = load i64, i64* %PC.i158
  %3223 = add i64 %3222, 6
  %3224 = load i64, i64* %PC.i158
  %3225 = add i64 %3224, 6
  store i64 %3225, i64* %PC.i158
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3227 = load i8, i8* %3226, align 1
  store i8 %3227, i8* %BRANCH_TAKEN, align 1
  %3228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3229 = icmp ne i8 %3227, 0
  %3230 = select i1 %3229, i64 %3221, i64 %3223
  store i64 %3230, i64* %3228, align 8
  store %struct.Memory* %loadMem_4024d8, %struct.Memory** %MEMORY
  %loadBr_4024d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024d8 = icmp eq i8 %loadBr_4024d8, 1
  br i1 %cmpBr_4024d8, label %block_.L_402526, label %block_4024de

block_4024de:                                     ; preds = %block_4024c9
  %loadMem_4024de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 1
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 15
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RBP.i157
  %3241 = sub i64 %3240, 32
  %3242 = load i64, i64* %PC.i155
  %3243 = add i64 %3242, 4
  store i64 %3243, i64* %PC.i155
  %3244 = inttoptr i64 %3241 to i64*
  %3245 = load i64, i64* %3244
  store i64 %3245, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_4024de, %struct.Memory** %MEMORY
  %loadMem_4024e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3248 to i64*
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3250 = getelementptr inbounds %struct.GPR, %struct.GPR* %3249, i32 0, i32 5
  %3251 = getelementptr inbounds %struct.Reg, %struct.Reg* %3250, i32 0, i32 0
  %RCX.i153 = bitcast %union.anon* %3251 to i64*
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3253 = getelementptr inbounds %struct.GPR, %struct.GPR* %3252, i32 0, i32 15
  %3254 = getelementptr inbounds %struct.Reg, %struct.Reg* %3253, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %3254 to i64*
  %3255 = load i64, i64* %RBP.i154
  %3256 = sub i64 %3255, 68
  %3257 = load i64, i64* %PC.i152
  %3258 = add i64 %3257, 4
  store i64 %3258, i64* %PC.i152
  %3259 = inttoptr i64 %3256 to i32*
  %3260 = load i32, i32* %3259
  %3261 = sext i32 %3260 to i64
  store i64 %3261, i64* %RCX.i153, align 8
  store %struct.Memory* %loadMem_4024e2, %struct.Memory** %MEMORY
  %loadMem_4024e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3263 = getelementptr inbounds %struct.GPR, %struct.GPR* %3262, i32 0, i32 33
  %3264 = getelementptr inbounds %struct.Reg, %struct.Reg* %3263, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3264 to i64*
  %3265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3266 = getelementptr inbounds %struct.GPR, %struct.GPR* %3265, i32 0, i32 1
  %3267 = getelementptr inbounds %struct.Reg, %struct.Reg* %3266, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %3267 to i64*
  %3268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3269 = getelementptr inbounds %struct.GPR, %struct.GPR* %3268, i32 0, i32 5
  %3270 = getelementptr inbounds %struct.Reg, %struct.Reg* %3269, i32 0, i32 0
  %RCX.i150 = bitcast %union.anon* %3270 to i64*
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 7
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %RAX.i149
  %3275 = load i64, i64* %RCX.i150
  %3276 = add i64 %3275, %3274
  %3277 = load i64, i64* %PC.i148
  %3278 = add i64 %3277, 4
  store i64 %3278, i64* %PC.i148
  %3279 = inttoptr i64 %3276 to i8*
  %3280 = load i8, i8* %3279
  %3281 = sext i8 %3280 to i64
  %3282 = and i64 %3281, 4294967295
  store i64 %3282, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_4024e6, %struct.Memory** %MEMORY
  %loadMem_4024ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 33
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3285 to i64*
  %3286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3287 = getelementptr inbounds %struct.GPR, %struct.GPR* %3286, i32 0, i32 7
  %3288 = getelementptr inbounds %struct.Reg, %struct.Reg* %3287, i32 0, i32 0
  %EDX.i147 = bitcast %union.anon* %3288 to i32*
  %3289 = load i32, i32* %EDX.i147
  %3290 = zext i32 %3289 to i64
  %3291 = load i64, i64* %PC.i146
  %3292 = add i64 %3291, 3
  store i64 %3292, i64* %PC.i146
  %3293 = sub i32 %3289, 95
  %3294 = icmp ult i32 %3289, 95
  %3295 = zext i1 %3294 to i8
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3295, i8* %3296, align 1
  %3297 = and i32 %3293, 255
  %3298 = call i32 @llvm.ctpop.i32(i32 %3297)
  %3299 = trunc i32 %3298 to i8
  %3300 = and i8 %3299, 1
  %3301 = xor i8 %3300, 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3301, i8* %3302, align 1
  %3303 = xor i64 95, %3290
  %3304 = trunc i64 %3303 to i32
  %3305 = xor i32 %3304, %3293
  %3306 = lshr i32 %3305, 4
  %3307 = trunc i32 %3306 to i8
  %3308 = and i8 %3307, 1
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3308, i8* %3309, align 1
  %3310 = icmp eq i32 %3293, 0
  %3311 = zext i1 %3310 to i8
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3311, i8* %3312, align 1
  %3313 = lshr i32 %3293, 31
  %3314 = trunc i32 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3314, i8* %3315, align 1
  %3316 = lshr i32 %3289, 31
  %3317 = xor i32 %3313, %3316
  %3318 = add i32 %3317, %3316
  %3319 = icmp eq i32 %3318, 2
  %3320 = zext i1 %3319 to i8
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3320, i8* %3321, align 1
  store %struct.Memory* %loadMem_4024ea, %struct.Memory** %MEMORY
  %loadMem_4024ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3323 = getelementptr inbounds %struct.GPR, %struct.GPR* %3322, i32 0, i32 33
  %3324 = getelementptr inbounds %struct.Reg, %struct.Reg* %3323, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3324 to i64*
  %3325 = load i64, i64* %PC.i145
  %3326 = add i64 %3325, 57
  %3327 = load i64, i64* %PC.i145
  %3328 = add i64 %3327, 6
  %3329 = load i64, i64* %PC.i145
  %3330 = add i64 %3329, 6
  store i64 %3330, i64* %PC.i145
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3332 = load i8, i8* %3331, align 1
  store i8 %3332, i8* %BRANCH_TAKEN, align 1
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3334 = icmp ne i8 %3332, 0
  %3335 = select i1 %3334, i64 %3326, i64 %3328
  store i64 %3335, i64* %3333, align 8
  store %struct.Memory* %loadMem_4024ed, %struct.Memory** %MEMORY
  %loadBr_4024ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4024ed = icmp eq i8 %loadBr_4024ed, 1
  br i1 %cmpBr_4024ed, label %block_.L_402526, label %block_4024f3

block_4024f3:                                     ; preds = %block_4024de
  %loadMem_4024f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3341 to i64*
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3343 = getelementptr inbounds %struct.GPR, %struct.GPR* %3342, i32 0, i32 15
  %3344 = getelementptr inbounds %struct.Reg, %struct.Reg* %3343, i32 0, i32 0
  %RBP.i144 = bitcast %union.anon* %3344 to i64*
  %3345 = load i64, i64* %RBP.i144
  %3346 = sub i64 %3345, 32
  %3347 = load i64, i64* %PC.i142
  %3348 = add i64 %3347, 4
  store i64 %3348, i64* %PC.i142
  %3349 = inttoptr i64 %3346 to i64*
  %3350 = load i64, i64* %3349
  store i64 %3350, i64* %RAX.i143, align 8
  store %struct.Memory* %loadMem_4024f3, %struct.Memory** %MEMORY
  %loadMem_4024f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %3353 to i64*
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 5
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %RCX.i140 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 15
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RBP.i141
  %3361 = sub i64 %3360, 68
  %3362 = load i64, i64* %PC.i139
  %3363 = add i64 %3362, 4
  store i64 %3363, i64* %PC.i139
  %3364 = inttoptr i64 %3361 to i32*
  %3365 = load i32, i32* %3364
  %3366 = sext i32 %3365 to i64
  store i64 %3366, i64* %RCX.i140, align 8
  store %struct.Memory* %loadMem_4024f7, %struct.Memory** %MEMORY
  %loadMem_4024fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3368 = getelementptr inbounds %struct.GPR, %struct.GPR* %3367, i32 0, i32 33
  %3369 = getelementptr inbounds %struct.Reg, %struct.Reg* %3368, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3369 to i64*
  %3370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3371 = getelementptr inbounds %struct.GPR, %struct.GPR* %3370, i32 0, i32 1
  %3372 = getelementptr inbounds %struct.Reg, %struct.Reg* %3371, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %3372 to i64*
  %3373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3374 = getelementptr inbounds %struct.GPR, %struct.GPR* %3373, i32 0, i32 5
  %3375 = getelementptr inbounds %struct.Reg, %struct.Reg* %3374, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %3375 to i64*
  %3376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3377 = getelementptr inbounds %struct.GPR, %struct.GPR* %3376, i32 0, i32 7
  %3378 = getelementptr inbounds %struct.Reg, %struct.Reg* %3377, i32 0, i32 0
  %RDX.i138 = bitcast %union.anon* %3378 to i64*
  %3379 = load i64, i64* %RAX.i136
  %3380 = load i64, i64* %RCX.i137
  %3381 = add i64 %3380, %3379
  %3382 = load i64, i64* %PC.i135
  %3383 = add i64 %3382, 4
  store i64 %3383, i64* %PC.i135
  %3384 = inttoptr i64 %3381 to i8*
  %3385 = load i8, i8* %3384
  %3386 = sext i8 %3385 to i64
  %3387 = and i64 %3386, 4294967295
  store i64 %3387, i64* %RDX.i138, align 8
  store %struct.Memory* %loadMem_4024fb, %struct.Memory** %MEMORY
  %loadMem_4024ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3389 = getelementptr inbounds %struct.GPR, %struct.GPR* %3388, i32 0, i32 33
  %3390 = getelementptr inbounds %struct.Reg, %struct.Reg* %3389, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %3390 to i64*
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3392 = getelementptr inbounds %struct.GPR, %struct.GPR* %3391, i32 0, i32 7
  %3393 = getelementptr inbounds %struct.Reg, %struct.Reg* %3392, i32 0, i32 0
  %EDX.i134 = bitcast %union.anon* %3393 to i32*
  %3394 = load i32, i32* %EDX.i134
  %3395 = zext i32 %3394 to i64
  %3396 = load i64, i64* %PC.i133
  %3397 = add i64 %3396, 3
  store i64 %3397, i64* %PC.i133
  %3398 = sub i32 %3394, 45
  %3399 = icmp ult i32 %3394, 45
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3400, i8* %3401, align 1
  %3402 = and i32 %3398, 255
  %3403 = call i32 @llvm.ctpop.i32(i32 %3402)
  %3404 = trunc i32 %3403 to i8
  %3405 = and i8 %3404, 1
  %3406 = xor i8 %3405, 1
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3406, i8* %3407, align 1
  %3408 = xor i64 45, %3395
  %3409 = trunc i64 %3408 to i32
  %3410 = xor i32 %3409, %3398
  %3411 = lshr i32 %3410, 4
  %3412 = trunc i32 %3411 to i8
  %3413 = and i8 %3412, 1
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3413, i8* %3414, align 1
  %3415 = icmp eq i32 %3398, 0
  %3416 = zext i1 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3416, i8* %3417, align 1
  %3418 = lshr i32 %3398, 31
  %3419 = trunc i32 %3418 to i8
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3419, i8* %3420, align 1
  %3421 = lshr i32 %3394, 31
  %3422 = xor i32 %3418, %3421
  %3423 = add i32 %3422, %3421
  %3424 = icmp eq i32 %3423, 2
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3425, i8* %3426, align 1
  store %struct.Memory* %loadMem_4024ff, %struct.Memory** %MEMORY
  %loadMem_402502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3429 to i64*
  %3430 = load i64, i64* %PC.i132
  %3431 = add i64 %3430, 36
  %3432 = load i64, i64* %PC.i132
  %3433 = add i64 %3432, 6
  %3434 = load i64, i64* %PC.i132
  %3435 = add i64 %3434, 6
  store i64 %3435, i64* %PC.i132
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3437 = load i8, i8* %3436, align 1
  store i8 %3437, i8* %BRANCH_TAKEN, align 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3439 = icmp ne i8 %3437, 0
  %3440 = select i1 %3439, i64 %3431, i64 %3433
  store i64 %3440, i64* %3438, align 8
  store %struct.Memory* %loadMem_402502, %struct.Memory** %MEMORY
  %loadBr_402502 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402502 = icmp eq i8 %loadBr_402502, 1
  br i1 %cmpBr_402502, label %block_.L_402526, label %block_402508

block_402508:                                     ; preds = %block_4024f3
  %loadMem_402508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3442 = getelementptr inbounds %struct.GPR, %struct.GPR* %3441, i32 0, i32 33
  %3443 = getelementptr inbounds %struct.Reg, %struct.Reg* %3442, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3443 to i64*
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3445 = getelementptr inbounds %struct.GPR, %struct.GPR* %3444, i32 0, i32 1
  %3446 = getelementptr inbounds %struct.Reg, %struct.Reg* %3445, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %3446 to i64*
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 15
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %3449 to i64*
  %3450 = load i64, i64* %RBP.i131
  %3451 = sub i64 %3450, 32
  %3452 = load i64, i64* %PC.i129
  %3453 = add i64 %3452, 4
  store i64 %3453, i64* %PC.i129
  %3454 = inttoptr i64 %3451 to i64*
  %3455 = load i64, i64* %3454
  store i64 %3455, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_402508, %struct.Memory** %MEMORY
  %loadMem_40250c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3457 = getelementptr inbounds %struct.GPR, %struct.GPR* %3456, i32 0, i32 33
  %3458 = getelementptr inbounds %struct.Reg, %struct.Reg* %3457, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3458 to i64*
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 5
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %3464 to i64*
  %3465 = load i64, i64* %RBP.i128
  %3466 = sub i64 %3465, 68
  %3467 = load i64, i64* %PC.i126
  %3468 = add i64 %3467, 4
  store i64 %3468, i64* %PC.i126
  %3469 = inttoptr i64 %3466 to i32*
  %3470 = load i32, i32* %3469
  %3471 = sext i32 %3470 to i64
  store i64 %3471, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_40250c, %struct.Memory** %MEMORY
  %loadMem_402510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 33
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %3474 to i64*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 1
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %3477 to i64*
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 5
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 7
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %3483 to i64*
  %3484 = load i64, i64* %RAX.i123
  %3485 = load i64, i64* %RCX.i124
  %3486 = add i64 %3485, %3484
  %3487 = load i64, i64* %PC.i122
  %3488 = add i64 %3487, 4
  store i64 %3488, i64* %PC.i122
  %3489 = inttoptr i64 %3486 to i8*
  %3490 = load i8, i8* %3489
  %3491 = sext i8 %3490 to i64
  %3492 = and i64 %3491, 4294967295
  store i64 %3492, i64* %RDX.i125, align 8
  store %struct.Memory* %loadMem_402510, %struct.Memory** %MEMORY
  %loadMem_402514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %3495 to i64*
  %3496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3497 = getelementptr inbounds %struct.GPR, %struct.GPR* %3496, i32 0, i32 7
  %3498 = getelementptr inbounds %struct.Reg, %struct.Reg* %3497, i32 0, i32 0
  %EDX.i121 = bitcast %union.anon* %3498 to i32*
  %3499 = load i32, i32* %EDX.i121
  %3500 = zext i32 %3499 to i64
  %3501 = load i64, i64* %PC.i120
  %3502 = add i64 %3501, 3
  store i64 %3502, i64* %PC.i120
  %3503 = sub i32 %3499, 126
  %3504 = icmp ult i32 %3499, 126
  %3505 = zext i1 %3504 to i8
  %3506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3505, i8* %3506, align 1
  %3507 = and i32 %3503, 255
  %3508 = call i32 @llvm.ctpop.i32(i32 %3507)
  %3509 = trunc i32 %3508 to i8
  %3510 = and i8 %3509, 1
  %3511 = xor i8 %3510, 1
  %3512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3511, i8* %3512, align 1
  %3513 = xor i64 126, %3500
  %3514 = trunc i64 %3513 to i32
  %3515 = xor i32 %3514, %3503
  %3516 = lshr i32 %3515, 4
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3518, i8* %3519, align 1
  %3520 = icmp eq i32 %3503, 0
  %3521 = zext i1 %3520 to i8
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3521, i8* %3522, align 1
  %3523 = lshr i32 %3503, 31
  %3524 = trunc i32 %3523 to i8
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3524, i8* %3525, align 1
  %3526 = lshr i32 %3499, 31
  %3527 = xor i32 %3523, %3526
  %3528 = add i32 %3527, %3526
  %3529 = icmp eq i32 %3528, 2
  %3530 = zext i1 %3529 to i8
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3530, i8* %3531, align 1
  store %struct.Memory* %loadMem_402514, %struct.Memory** %MEMORY
  %loadMem_402517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 33
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %PC.i119
  %3536 = add i64 %3535, 15
  %3537 = load i64, i64* %PC.i119
  %3538 = add i64 %3537, 6
  %3539 = load i64, i64* %PC.i119
  %3540 = add i64 %3539, 6
  store i64 %3540, i64* %PC.i119
  %3541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3542 = load i8, i8* %3541, align 1
  store i8 %3542, i8* %BRANCH_TAKEN, align 1
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3544 = icmp ne i8 %3542, 0
  %3545 = select i1 %3544, i64 %3536, i64 %3538
  store i64 %3545, i64* %3543, align 8
  store %struct.Memory* %loadMem_402517, %struct.Memory** %MEMORY
  %loadBr_402517 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402517 = icmp eq i8 %loadBr_402517, 1
  br i1 %cmpBr_402517, label %block_.L_402526, label %block_40251d

block_40251d:                                     ; preds = %block_402508
  %loadMem_40251d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 1
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 15
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %3554 to i64*
  %3555 = load i64, i64* %RBP.i118
  %3556 = sub i64 %3555, 72
  %3557 = load i64, i64* %PC.i116
  %3558 = add i64 %3557, 3
  store i64 %3558, i64* %PC.i116
  %3559 = inttoptr i64 %3556 to i32*
  %3560 = load i32, i32* %3559
  %3561 = zext i32 %3560 to i64
  store i64 %3561, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_40251d, %struct.Memory** %MEMORY
  %loadMem_402520 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 1
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RAX.i115
  %3569 = load i64, i64* %PC.i114
  %3570 = add i64 %3569, 3
  store i64 %3570, i64* %PC.i114
  %3571 = trunc i64 %3568 to i32
  %3572 = add i32 1, %3571
  %3573 = zext i32 %3572 to i64
  store i64 %3573, i64* %RAX.i115, align 8
  %3574 = icmp ult i32 %3572, %3571
  %3575 = icmp ult i32 %3572, 1
  %3576 = or i1 %3574, %3575
  %3577 = zext i1 %3576 to i8
  %3578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3577, i8* %3578, align 1
  %3579 = and i32 %3572, 255
  %3580 = call i32 @llvm.ctpop.i32(i32 %3579)
  %3581 = trunc i32 %3580 to i8
  %3582 = and i8 %3581, 1
  %3583 = xor i8 %3582, 1
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3583, i8* %3584, align 1
  %3585 = xor i64 1, %3568
  %3586 = trunc i64 %3585 to i32
  %3587 = xor i32 %3586, %3572
  %3588 = lshr i32 %3587, 4
  %3589 = trunc i32 %3588 to i8
  %3590 = and i8 %3589, 1
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3590, i8* %3591, align 1
  %3592 = icmp eq i32 %3572, 0
  %3593 = zext i1 %3592 to i8
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3593, i8* %3594, align 1
  %3595 = lshr i32 %3572, 31
  %3596 = trunc i32 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3596, i8* %3597, align 1
  %3598 = lshr i32 %3571, 31
  %3599 = xor i32 %3595, %3598
  %3600 = add i32 %3599, %3595
  %3601 = icmp eq i32 %3600, 2
  %3602 = zext i1 %3601 to i8
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3602, i8* %3603, align 1
  store %struct.Memory* %loadMem_402520, %struct.Memory** %MEMORY
  %loadMem_402523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 1
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %3609 to i32*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 15
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %3612 to i64*
  %3613 = load i64, i64* %RBP.i113
  %3614 = sub i64 %3613, 72
  %3615 = load i32, i32* %EAX.i112
  %3616 = zext i32 %3615 to i64
  %3617 = load i64, i64* %PC.i111
  %3618 = add i64 %3617, 3
  store i64 %3618, i64* %PC.i111
  %3619 = inttoptr i64 %3614 to i32*
  store i32 %3615, i32* %3619
  store %struct.Memory* %loadMem_402523, %struct.Memory** %MEMORY
  br label %block_.L_402526

block_.L_402526:                                  ; preds = %block_40251d, %block_402508, %block_4024f3, %block_4024de, %block_4024c9, %block_.L_4024b4
  %loadMem_402526 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3621 = getelementptr inbounds %struct.GPR, %struct.GPR* %3620, i32 0, i32 33
  %3622 = getelementptr inbounds %struct.Reg, %struct.Reg* %3621, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3622 to i64*
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 1
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 15
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %RBP.i110
  %3630 = sub i64 %3629, 40
  %3631 = load i64, i64* %PC.i108
  %3632 = add i64 %3631, 4
  store i64 %3632, i64* %PC.i108
  %3633 = inttoptr i64 %3630 to i64*
  %3634 = load i64, i64* %3633
  store i64 %3634, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_402526, %struct.Memory** %MEMORY
  %loadMem_40252a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3636 = getelementptr inbounds %struct.GPR, %struct.GPR* %3635, i32 0, i32 33
  %3637 = getelementptr inbounds %struct.Reg, %struct.Reg* %3636, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3637 to i64*
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 5
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 15
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %3643 to i64*
  %3644 = load i64, i64* %RBP.i107
  %3645 = sub i64 %3644, 68
  %3646 = load i64, i64* %PC.i105
  %3647 = add i64 %3646, 4
  store i64 %3647, i64* %PC.i105
  %3648 = inttoptr i64 %3645 to i32*
  %3649 = load i32, i32* %3648
  %3650 = sext i32 %3649 to i64
  store i64 %3650, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_40252a, %struct.Memory** %MEMORY
  %loadMem_40252e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3652 = getelementptr inbounds %struct.GPR, %struct.GPR* %3651, i32 0, i32 33
  %3653 = getelementptr inbounds %struct.Reg, %struct.Reg* %3652, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %3653 to i64*
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3655 = getelementptr inbounds %struct.GPR, %struct.GPR* %3654, i32 0, i32 1
  %3656 = getelementptr inbounds %struct.Reg, %struct.Reg* %3655, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %3656 to i64*
  %3657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3658 = getelementptr inbounds %struct.GPR, %struct.GPR* %3657, i32 0, i32 5
  %3659 = getelementptr inbounds %struct.Reg, %struct.Reg* %3658, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %3659 to i64*
  %3660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3661 = getelementptr inbounds %struct.GPR, %struct.GPR* %3660, i32 0, i32 7
  %3662 = getelementptr inbounds %struct.Reg, %struct.Reg* %3661, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %3662 to i64*
  %3663 = load i64, i64* %RAX.i102
  %3664 = load i64, i64* %RCX.i103
  %3665 = add i64 %3664, %3663
  %3666 = load i64, i64* %PC.i101
  %3667 = add i64 %3666, 4
  store i64 %3667, i64* %PC.i101
  %3668 = inttoptr i64 %3665 to i8*
  %3669 = load i8, i8* %3668
  %3670 = sext i8 %3669 to i64
  %3671 = and i64 %3670, 4294967295
  store i64 %3671, i64* %RDX.i104, align 8
  store %struct.Memory* %loadMem_40252e, %struct.Memory** %MEMORY
  %loadMem_402532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 7
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %EDX.i100 = bitcast %union.anon* %3677 to i32*
  %3678 = load i32, i32* %EDX.i100
  %3679 = zext i32 %3678 to i64
  %3680 = load i64, i64* %PC.i99
  %3681 = add i64 %3680, 3
  store i64 %3681, i64* %PC.i99
  %3682 = sub i32 %3678, 32
  %3683 = icmp ult i32 %3678, 32
  %3684 = zext i1 %3683 to i8
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3684, i8* %3685, align 1
  %3686 = and i32 %3682, 255
  %3687 = call i32 @llvm.ctpop.i32(i32 %3686)
  %3688 = trunc i32 %3687 to i8
  %3689 = and i8 %3688, 1
  %3690 = xor i8 %3689, 1
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3690, i8* %3691, align 1
  %3692 = xor i64 32, %3679
  %3693 = trunc i64 %3692 to i32
  %3694 = xor i32 %3693, %3682
  %3695 = lshr i32 %3694, 4
  %3696 = trunc i32 %3695 to i8
  %3697 = and i8 %3696, 1
  %3698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3697, i8* %3698, align 1
  %3699 = icmp eq i32 %3682, 0
  %3700 = zext i1 %3699 to i8
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3700, i8* %3701, align 1
  %3702 = lshr i32 %3682, 31
  %3703 = trunc i32 %3702 to i8
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3703, i8* %3704, align 1
  %3705 = lshr i32 %3678, 31
  %3706 = xor i32 %3702, %3705
  %3707 = add i32 %3706, %3705
  %3708 = icmp eq i32 %3707, 2
  %3709 = zext i1 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3709, i8* %3710, align 1
  store %struct.Memory* %loadMem_402532, %struct.Memory** %MEMORY
  %loadMem_402535 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3712 = getelementptr inbounds %struct.GPR, %struct.GPR* %3711, i32 0, i32 33
  %3713 = getelementptr inbounds %struct.Reg, %struct.Reg* %3712, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %3713 to i64*
  %3714 = load i64, i64* %PC.i98
  %3715 = add i64 %3714, 99
  %3716 = load i64, i64* %PC.i98
  %3717 = add i64 %3716, 6
  %3718 = load i64, i64* %PC.i98
  %3719 = add i64 %3718, 6
  store i64 %3719, i64* %PC.i98
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3721 = load i8, i8* %3720, align 1
  store i8 %3721, i8* %BRANCH_TAKEN, align 1
  %3722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3723 = icmp ne i8 %3721, 0
  %3724 = select i1 %3723, i64 %3715, i64 %3717
  store i64 %3724, i64* %3722, align 8
  store %struct.Memory* %loadMem_402535, %struct.Memory** %MEMORY
  %loadBr_402535 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402535 = icmp eq i8 %loadBr_402535, 1
  br i1 %cmpBr_402535, label %block_.L_402598, label %block_40253b

block_40253b:                                     ; preds = %block_.L_402526
  %loadMem_40253b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 33
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %3727 to i64*
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3729 = getelementptr inbounds %struct.GPR, %struct.GPR* %3728, i32 0, i32 1
  %3730 = getelementptr inbounds %struct.Reg, %struct.Reg* %3729, i32 0, i32 0
  %RAX.i96 = bitcast %union.anon* %3730 to i64*
  %3731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3732 = getelementptr inbounds %struct.GPR, %struct.GPR* %3731, i32 0, i32 15
  %3733 = getelementptr inbounds %struct.Reg, %struct.Reg* %3732, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %3733 to i64*
  %3734 = load i64, i64* %RBP.i97
  %3735 = sub i64 %3734, 40
  %3736 = load i64, i64* %PC.i95
  %3737 = add i64 %3736, 4
  store i64 %3737, i64* %PC.i95
  %3738 = inttoptr i64 %3735 to i64*
  %3739 = load i64, i64* %3738
  store i64 %3739, i64* %RAX.i96, align 8
  store %struct.Memory* %loadMem_40253b, %struct.Memory** %MEMORY
  %loadMem_40253f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 5
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %3745 to i64*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 15
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %RBP.i94
  %3750 = sub i64 %3749, 68
  %3751 = load i64, i64* %PC.i92
  %3752 = add i64 %3751, 4
  store i64 %3752, i64* %PC.i92
  %3753 = inttoptr i64 %3750 to i32*
  %3754 = load i32, i32* %3753
  %3755 = sext i32 %3754 to i64
  store i64 %3755, i64* %RCX.i93, align 8
  store %struct.Memory* %loadMem_40253f, %struct.Memory** %MEMORY
  %loadMem_402543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3757 = getelementptr inbounds %struct.GPR, %struct.GPR* %3756, i32 0, i32 33
  %3758 = getelementptr inbounds %struct.Reg, %struct.Reg* %3757, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3758 to i64*
  %3759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3760 = getelementptr inbounds %struct.GPR, %struct.GPR* %3759, i32 0, i32 1
  %3761 = getelementptr inbounds %struct.Reg, %struct.Reg* %3760, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %3761 to i64*
  %3762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3763 = getelementptr inbounds %struct.GPR, %struct.GPR* %3762, i32 0, i32 5
  %3764 = getelementptr inbounds %struct.Reg, %struct.Reg* %3763, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %3764 to i64*
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3766 = getelementptr inbounds %struct.GPR, %struct.GPR* %3765, i32 0, i32 7
  %3767 = getelementptr inbounds %struct.Reg, %struct.Reg* %3766, i32 0, i32 0
  %RDX.i91 = bitcast %union.anon* %3767 to i64*
  %3768 = load i64, i64* %RAX.i89
  %3769 = load i64, i64* %RCX.i90
  %3770 = add i64 %3769, %3768
  %3771 = load i64, i64* %PC.i88
  %3772 = add i64 %3771, 4
  store i64 %3772, i64* %PC.i88
  %3773 = inttoptr i64 %3770 to i8*
  %3774 = load i8, i8* %3773
  %3775 = sext i8 %3774 to i64
  %3776 = and i64 %3775, 4294967295
  store i64 %3776, i64* %RDX.i91, align 8
  store %struct.Memory* %loadMem_402543, %struct.Memory** %MEMORY
  %loadMem_402547 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3778 = getelementptr inbounds %struct.GPR, %struct.GPR* %3777, i32 0, i32 33
  %3779 = getelementptr inbounds %struct.Reg, %struct.Reg* %3778, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %3779 to i64*
  %3780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3781 = getelementptr inbounds %struct.GPR, %struct.GPR* %3780, i32 0, i32 7
  %3782 = getelementptr inbounds %struct.Reg, %struct.Reg* %3781, i32 0, i32 0
  %EDX.i87 = bitcast %union.anon* %3782 to i32*
  %3783 = load i32, i32* %EDX.i87
  %3784 = zext i32 %3783 to i64
  %3785 = load i64, i64* %PC.i86
  %3786 = add i64 %3785, 3
  store i64 %3786, i64* %PC.i86
  %3787 = sub i32 %3783, 46
  %3788 = icmp ult i32 %3783, 46
  %3789 = zext i1 %3788 to i8
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3789, i8* %3790, align 1
  %3791 = and i32 %3787, 255
  %3792 = call i32 @llvm.ctpop.i32(i32 %3791)
  %3793 = trunc i32 %3792 to i8
  %3794 = and i8 %3793, 1
  %3795 = xor i8 %3794, 1
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3795, i8* %3796, align 1
  %3797 = xor i64 46, %3784
  %3798 = trunc i64 %3797 to i32
  %3799 = xor i32 %3798, %3787
  %3800 = lshr i32 %3799, 4
  %3801 = trunc i32 %3800 to i8
  %3802 = and i8 %3801, 1
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3802, i8* %3803, align 1
  %3804 = icmp eq i32 %3787, 0
  %3805 = zext i1 %3804 to i8
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3805, i8* %3806, align 1
  %3807 = lshr i32 %3787, 31
  %3808 = trunc i32 %3807 to i8
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3808, i8* %3809, align 1
  %3810 = lshr i32 %3783, 31
  %3811 = xor i32 %3807, %3810
  %3812 = add i32 %3811, %3810
  %3813 = icmp eq i32 %3812, 2
  %3814 = zext i1 %3813 to i8
  %3815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3814, i8* %3815, align 1
  store %struct.Memory* %loadMem_402547, %struct.Memory** %MEMORY
  %loadMem_40254a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3818 to i64*
  %3819 = load i64, i64* %PC.i85
  %3820 = add i64 %3819, 78
  %3821 = load i64, i64* %PC.i85
  %3822 = add i64 %3821, 6
  %3823 = load i64, i64* %PC.i85
  %3824 = add i64 %3823, 6
  store i64 %3824, i64* %PC.i85
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3826 = load i8, i8* %3825, align 1
  store i8 %3826, i8* %BRANCH_TAKEN, align 1
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3828 = icmp ne i8 %3826, 0
  %3829 = select i1 %3828, i64 %3820, i64 %3822
  store i64 %3829, i64* %3827, align 8
  store %struct.Memory* %loadMem_40254a, %struct.Memory** %MEMORY
  %loadBr_40254a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40254a = icmp eq i8 %loadBr_40254a, 1
  br i1 %cmpBr_40254a, label %block_.L_402598, label %block_402550

block_402550:                                     ; preds = %block_40253b
  %loadMem_402550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3831 = getelementptr inbounds %struct.GPR, %struct.GPR* %3830, i32 0, i32 33
  %3832 = getelementptr inbounds %struct.Reg, %struct.Reg* %3831, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3832 to i64*
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 1
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3835 to i64*
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 15
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %3838 to i64*
  %3839 = load i64, i64* %RBP.i84
  %3840 = sub i64 %3839, 40
  %3841 = load i64, i64* %PC.i82
  %3842 = add i64 %3841, 4
  store i64 %3842, i64* %PC.i82
  %3843 = inttoptr i64 %3840 to i64*
  %3844 = load i64, i64* %3843
  store i64 %3844, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_402550, %struct.Memory** %MEMORY
  %loadMem_402554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3846 = getelementptr inbounds %struct.GPR, %struct.GPR* %3845, i32 0, i32 33
  %3847 = getelementptr inbounds %struct.Reg, %struct.Reg* %3846, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %3847 to i64*
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 5
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 15
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %RBP.i81
  %3855 = sub i64 %3854, 68
  %3856 = load i64, i64* %PC.i79
  %3857 = add i64 %3856, 4
  store i64 %3857, i64* %PC.i79
  %3858 = inttoptr i64 %3855 to i32*
  %3859 = load i32, i32* %3858
  %3860 = sext i32 %3859 to i64
  store i64 %3860, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_402554, %struct.Memory** %MEMORY
  %loadMem_402558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3862 = getelementptr inbounds %struct.GPR, %struct.GPR* %3861, i32 0, i32 33
  %3863 = getelementptr inbounds %struct.Reg, %struct.Reg* %3862, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %3863 to i64*
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3865 = getelementptr inbounds %struct.GPR, %struct.GPR* %3864, i32 0, i32 1
  %3866 = getelementptr inbounds %struct.Reg, %struct.Reg* %3865, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %3866 to i64*
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 5
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 7
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RDX.i78 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %RAX.i76
  %3874 = load i64, i64* %RCX.i77
  %3875 = add i64 %3874, %3873
  %3876 = load i64, i64* %PC.i75
  %3877 = add i64 %3876, 4
  store i64 %3877, i64* %PC.i75
  %3878 = inttoptr i64 %3875 to i8*
  %3879 = load i8, i8* %3878
  %3880 = sext i8 %3879 to i64
  %3881 = and i64 %3880, 4294967295
  store i64 %3881, i64* %RDX.i78, align 8
  store %struct.Memory* %loadMem_402558, %struct.Memory** %MEMORY
  %loadMem_40255c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3883 = getelementptr inbounds %struct.GPR, %struct.GPR* %3882, i32 0, i32 33
  %3884 = getelementptr inbounds %struct.Reg, %struct.Reg* %3883, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3884 to i64*
  %3885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3886 = getelementptr inbounds %struct.GPR, %struct.GPR* %3885, i32 0, i32 7
  %3887 = getelementptr inbounds %struct.Reg, %struct.Reg* %3886, i32 0, i32 0
  %EDX.i74 = bitcast %union.anon* %3887 to i32*
  %3888 = load i32, i32* %EDX.i74
  %3889 = zext i32 %3888 to i64
  %3890 = load i64, i64* %PC.i73
  %3891 = add i64 %3890, 3
  store i64 %3891, i64* %PC.i73
  %3892 = sub i32 %3888, 95
  %3893 = icmp ult i32 %3888, 95
  %3894 = zext i1 %3893 to i8
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3894, i8* %3895, align 1
  %3896 = and i32 %3892, 255
  %3897 = call i32 @llvm.ctpop.i32(i32 %3896)
  %3898 = trunc i32 %3897 to i8
  %3899 = and i8 %3898, 1
  %3900 = xor i8 %3899, 1
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3900, i8* %3901, align 1
  %3902 = xor i64 95, %3889
  %3903 = trunc i64 %3902 to i32
  %3904 = xor i32 %3903, %3892
  %3905 = lshr i32 %3904, 4
  %3906 = trunc i32 %3905 to i8
  %3907 = and i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3907, i8* %3908, align 1
  %3909 = icmp eq i32 %3892, 0
  %3910 = zext i1 %3909 to i8
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3910, i8* %3911, align 1
  %3912 = lshr i32 %3892, 31
  %3913 = trunc i32 %3912 to i8
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3913, i8* %3914, align 1
  %3915 = lshr i32 %3888, 31
  %3916 = xor i32 %3912, %3915
  %3917 = add i32 %3916, %3915
  %3918 = icmp eq i32 %3917, 2
  %3919 = zext i1 %3918 to i8
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3919, i8* %3920, align 1
  store %struct.Memory* %loadMem_40255c, %struct.Memory** %MEMORY
  %loadMem_40255f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3922 = getelementptr inbounds %struct.GPR, %struct.GPR* %3921, i32 0, i32 33
  %3923 = getelementptr inbounds %struct.Reg, %struct.Reg* %3922, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3923 to i64*
  %3924 = load i64, i64* %PC.i72
  %3925 = add i64 %3924, 57
  %3926 = load i64, i64* %PC.i72
  %3927 = add i64 %3926, 6
  %3928 = load i64, i64* %PC.i72
  %3929 = add i64 %3928, 6
  store i64 %3929, i64* %PC.i72
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3931 = load i8, i8* %3930, align 1
  store i8 %3931, i8* %BRANCH_TAKEN, align 1
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3933 = icmp ne i8 %3931, 0
  %3934 = select i1 %3933, i64 %3925, i64 %3927
  store i64 %3934, i64* %3932, align 8
  store %struct.Memory* %loadMem_40255f, %struct.Memory** %MEMORY
  %loadBr_40255f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40255f = icmp eq i8 %loadBr_40255f, 1
  br i1 %cmpBr_40255f, label %block_.L_402598, label %block_402565

block_402565:                                     ; preds = %block_402550
  %loadMem_402565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 33
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 1
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 15
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %3943 to i64*
  %3944 = load i64, i64* %RBP.i71
  %3945 = sub i64 %3944, 40
  %3946 = load i64, i64* %PC.i69
  %3947 = add i64 %3946, 4
  store i64 %3947, i64* %PC.i69
  %3948 = inttoptr i64 %3945 to i64*
  %3949 = load i64, i64* %3948
  store i64 %3949, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_402565, %struct.Memory** %MEMORY
  %loadMem_402569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3951 = getelementptr inbounds %struct.GPR, %struct.GPR* %3950, i32 0, i32 33
  %3952 = getelementptr inbounds %struct.Reg, %struct.Reg* %3951, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3952 to i64*
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3954 = getelementptr inbounds %struct.GPR, %struct.GPR* %3953, i32 0, i32 5
  %3955 = getelementptr inbounds %struct.Reg, %struct.Reg* %3954, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %3955 to i64*
  %3956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3957 = getelementptr inbounds %struct.GPR, %struct.GPR* %3956, i32 0, i32 15
  %3958 = getelementptr inbounds %struct.Reg, %struct.Reg* %3957, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3958 to i64*
  %3959 = load i64, i64* %RBP.i68
  %3960 = sub i64 %3959, 68
  %3961 = load i64, i64* %PC.i66
  %3962 = add i64 %3961, 4
  store i64 %3962, i64* %PC.i66
  %3963 = inttoptr i64 %3960 to i32*
  %3964 = load i32, i32* %3963
  %3965 = sext i32 %3964 to i64
  store i64 %3965, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_402569, %struct.Memory** %MEMORY
  %loadMem_40256d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 33
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3970 = getelementptr inbounds %struct.GPR, %struct.GPR* %3969, i32 0, i32 1
  %3971 = getelementptr inbounds %struct.Reg, %struct.Reg* %3970, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %3971 to i64*
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 5
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 7
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %3977 to i64*
  %3978 = load i64, i64* %RAX.i63
  %3979 = load i64, i64* %RCX.i64
  %3980 = add i64 %3979, %3978
  %3981 = load i64, i64* %PC.i62
  %3982 = add i64 %3981, 4
  store i64 %3982, i64* %PC.i62
  %3983 = inttoptr i64 %3980 to i8*
  %3984 = load i8, i8* %3983
  %3985 = sext i8 %3984 to i64
  %3986 = and i64 %3985, 4294967295
  store i64 %3986, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_40256d, %struct.Memory** %MEMORY
  %loadMem_402571 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 33
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3989 to i64*
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 7
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %EDX.i61 = bitcast %union.anon* %3992 to i32*
  %3993 = load i32, i32* %EDX.i61
  %3994 = zext i32 %3993 to i64
  %3995 = load i64, i64* %PC.i60
  %3996 = add i64 %3995, 3
  store i64 %3996, i64* %PC.i60
  %3997 = sub i32 %3993, 45
  %3998 = icmp ult i32 %3993, 45
  %3999 = zext i1 %3998 to i8
  %4000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3999, i8* %4000, align 1
  %4001 = and i32 %3997, 255
  %4002 = call i32 @llvm.ctpop.i32(i32 %4001)
  %4003 = trunc i32 %4002 to i8
  %4004 = and i8 %4003, 1
  %4005 = xor i8 %4004, 1
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4005, i8* %4006, align 1
  %4007 = xor i64 45, %3994
  %4008 = trunc i64 %4007 to i32
  %4009 = xor i32 %4008, %3997
  %4010 = lshr i32 %4009, 4
  %4011 = trunc i32 %4010 to i8
  %4012 = and i8 %4011, 1
  %4013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4012, i8* %4013, align 1
  %4014 = icmp eq i32 %3997, 0
  %4015 = zext i1 %4014 to i8
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4015, i8* %4016, align 1
  %4017 = lshr i32 %3997, 31
  %4018 = trunc i32 %4017 to i8
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4018, i8* %4019, align 1
  %4020 = lshr i32 %3993, 31
  %4021 = xor i32 %4017, %4020
  %4022 = add i32 %4021, %4020
  %4023 = icmp eq i32 %4022, 2
  %4024 = zext i1 %4023 to i8
  %4025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4024, i8* %4025, align 1
  store %struct.Memory* %loadMem_402571, %struct.Memory** %MEMORY
  %loadMem_402574 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4027 = getelementptr inbounds %struct.GPR, %struct.GPR* %4026, i32 0, i32 33
  %4028 = getelementptr inbounds %struct.Reg, %struct.Reg* %4027, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4028 to i64*
  %4029 = load i64, i64* %PC.i59
  %4030 = add i64 %4029, 36
  %4031 = load i64, i64* %PC.i59
  %4032 = add i64 %4031, 6
  %4033 = load i64, i64* %PC.i59
  %4034 = add i64 %4033, 6
  store i64 %4034, i64* %PC.i59
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4036 = load i8, i8* %4035, align 1
  store i8 %4036, i8* %BRANCH_TAKEN, align 1
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4038 = icmp ne i8 %4036, 0
  %4039 = select i1 %4038, i64 %4030, i64 %4032
  store i64 %4039, i64* %4037, align 8
  store %struct.Memory* %loadMem_402574, %struct.Memory** %MEMORY
  %loadBr_402574 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402574 = icmp eq i8 %loadBr_402574, 1
  br i1 %cmpBr_402574, label %block_.L_402598, label %block_40257a

block_40257a:                                     ; preds = %block_402565
  %loadMem_40257a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4041 = getelementptr inbounds %struct.GPR, %struct.GPR* %4040, i32 0, i32 33
  %4042 = getelementptr inbounds %struct.Reg, %struct.Reg* %4041, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4042 to i64*
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4044 = getelementptr inbounds %struct.GPR, %struct.GPR* %4043, i32 0, i32 1
  %4045 = getelementptr inbounds %struct.Reg, %struct.Reg* %4044, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %4045 to i64*
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4047 = getelementptr inbounds %struct.GPR, %struct.GPR* %4046, i32 0, i32 15
  %4048 = getelementptr inbounds %struct.Reg, %struct.Reg* %4047, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4048 to i64*
  %4049 = load i64, i64* %RBP.i58
  %4050 = sub i64 %4049, 40
  %4051 = load i64, i64* %PC.i56
  %4052 = add i64 %4051, 4
  store i64 %4052, i64* %PC.i56
  %4053 = inttoptr i64 %4050 to i64*
  %4054 = load i64, i64* %4053
  store i64 %4054, i64* %RAX.i57, align 8
  store %struct.Memory* %loadMem_40257a, %struct.Memory** %MEMORY
  %loadMem_40257e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4056 = getelementptr inbounds %struct.GPR, %struct.GPR* %4055, i32 0, i32 33
  %4057 = getelementptr inbounds %struct.Reg, %struct.Reg* %4056, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %4057 to i64*
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4059 = getelementptr inbounds %struct.GPR, %struct.GPR* %4058, i32 0, i32 5
  %4060 = getelementptr inbounds %struct.Reg, %struct.Reg* %4059, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %4060 to i64*
  %4061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4062 = getelementptr inbounds %struct.GPR, %struct.GPR* %4061, i32 0, i32 15
  %4063 = getelementptr inbounds %struct.Reg, %struct.Reg* %4062, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4063 to i64*
  %4064 = load i64, i64* %RBP.i55
  %4065 = sub i64 %4064, 68
  %4066 = load i64, i64* %PC.i53
  %4067 = add i64 %4066, 4
  store i64 %4067, i64* %PC.i53
  %4068 = inttoptr i64 %4065 to i32*
  %4069 = load i32, i32* %4068
  %4070 = sext i32 %4069 to i64
  store i64 %4070, i64* %RCX.i54, align 8
  store %struct.Memory* %loadMem_40257e, %struct.Memory** %MEMORY
  %loadMem_402582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 33
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 1
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 5
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RCX.i51 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 7
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RDX.i52 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RAX.i50
  %4084 = load i64, i64* %RCX.i51
  %4085 = add i64 %4084, %4083
  %4086 = load i64, i64* %PC.i49
  %4087 = add i64 %4086, 4
  store i64 %4087, i64* %PC.i49
  %4088 = inttoptr i64 %4085 to i8*
  %4089 = load i8, i8* %4088
  %4090 = sext i8 %4089 to i64
  %4091 = and i64 %4090, 4294967295
  store i64 %4091, i64* %RDX.i52, align 8
  store %struct.Memory* %loadMem_402582, %struct.Memory** %MEMORY
  %loadMem_402586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 7
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4097 to i32*
  %4098 = load i32, i32* %EDX.i
  %4099 = zext i32 %4098 to i64
  %4100 = load i64, i64* %PC.i48
  %4101 = add i64 %4100, 3
  store i64 %4101, i64* %PC.i48
  %4102 = sub i32 %4098, 126
  %4103 = icmp ult i32 %4098, 126
  %4104 = zext i1 %4103 to i8
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4104, i8* %4105, align 1
  %4106 = and i32 %4102, 255
  %4107 = call i32 @llvm.ctpop.i32(i32 %4106)
  %4108 = trunc i32 %4107 to i8
  %4109 = and i8 %4108, 1
  %4110 = xor i8 %4109, 1
  %4111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4110, i8* %4111, align 1
  %4112 = xor i64 126, %4099
  %4113 = trunc i64 %4112 to i32
  %4114 = xor i32 %4113, %4102
  %4115 = lshr i32 %4114, 4
  %4116 = trunc i32 %4115 to i8
  %4117 = and i8 %4116, 1
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4117, i8* %4118, align 1
  %4119 = icmp eq i32 %4102, 0
  %4120 = zext i1 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4120, i8* %4121, align 1
  %4122 = lshr i32 %4102, 31
  %4123 = trunc i32 %4122 to i8
  %4124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4123, i8* %4124, align 1
  %4125 = lshr i32 %4098, 31
  %4126 = xor i32 %4122, %4125
  %4127 = add i32 %4126, %4125
  %4128 = icmp eq i32 %4127, 2
  %4129 = zext i1 %4128 to i8
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4129, i8* %4130, align 1
  store %struct.Memory* %loadMem_402586, %struct.Memory** %MEMORY
  %loadMem_402589 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %PC.i47
  %4135 = add i64 %4134, 15
  %4136 = load i64, i64* %PC.i47
  %4137 = add i64 %4136, 6
  %4138 = load i64, i64* %PC.i47
  %4139 = add i64 %4138, 6
  store i64 %4139, i64* %PC.i47
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4141 = load i8, i8* %4140, align 1
  store i8 %4141, i8* %BRANCH_TAKEN, align 1
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4143 = icmp ne i8 %4141, 0
  %4144 = select i1 %4143, i64 %4135, i64 %4137
  store i64 %4144, i64* %4142, align 8
  store %struct.Memory* %loadMem_402589, %struct.Memory** %MEMORY
  %loadBr_402589 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_402589 = icmp eq i8 %loadBr_402589, 1
  br i1 %cmpBr_402589, label %block_.L_402598, label %block_40258f

block_40258f:                                     ; preds = %block_40257a
  %loadMem_40258f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 33
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %4147 to i64*
  %4148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4149 = getelementptr inbounds %struct.GPR, %struct.GPR* %4148, i32 0, i32 1
  %4150 = getelementptr inbounds %struct.Reg, %struct.Reg* %4149, i32 0, i32 0
  %RAX.i45 = bitcast %union.anon* %4150 to i64*
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 15
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %4153 to i64*
  %4154 = load i64, i64* %RBP.i46
  %4155 = sub i64 %4154, 76
  %4156 = load i64, i64* %PC.i44
  %4157 = add i64 %4156, 3
  store i64 %4157, i64* %PC.i44
  %4158 = inttoptr i64 %4155 to i32*
  %4159 = load i32, i32* %4158
  %4160 = zext i32 %4159 to i64
  store i64 %4160, i64* %RAX.i45, align 8
  store %struct.Memory* %loadMem_40258f, %struct.Memory** %MEMORY
  %loadMem_402592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4162 = getelementptr inbounds %struct.GPR, %struct.GPR* %4161, i32 0, i32 33
  %4163 = getelementptr inbounds %struct.Reg, %struct.Reg* %4162, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %4163 to i64*
  %4164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4165 = getelementptr inbounds %struct.GPR, %struct.GPR* %4164, i32 0, i32 1
  %4166 = getelementptr inbounds %struct.Reg, %struct.Reg* %4165, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %4166 to i64*
  %4167 = load i64, i64* %RAX.i43
  %4168 = load i64, i64* %PC.i42
  %4169 = add i64 %4168, 3
  store i64 %4169, i64* %PC.i42
  %4170 = trunc i64 %4167 to i32
  %4171 = add i32 1, %4170
  %4172 = zext i32 %4171 to i64
  store i64 %4172, i64* %RAX.i43, align 8
  %4173 = icmp ult i32 %4171, %4170
  %4174 = icmp ult i32 %4171, 1
  %4175 = or i1 %4173, %4174
  %4176 = zext i1 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4176, i8* %4177, align 1
  %4178 = and i32 %4171, 255
  %4179 = call i32 @llvm.ctpop.i32(i32 %4178)
  %4180 = trunc i32 %4179 to i8
  %4181 = and i8 %4180, 1
  %4182 = xor i8 %4181, 1
  %4183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4182, i8* %4183, align 1
  %4184 = xor i64 1, %4167
  %4185 = trunc i64 %4184 to i32
  %4186 = xor i32 %4185, %4171
  %4187 = lshr i32 %4186, 4
  %4188 = trunc i32 %4187 to i8
  %4189 = and i8 %4188, 1
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4189, i8* %4190, align 1
  %4191 = icmp eq i32 %4171, 0
  %4192 = zext i1 %4191 to i8
  %4193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4192, i8* %4193, align 1
  %4194 = lshr i32 %4171, 31
  %4195 = trunc i32 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4195, i8* %4196, align 1
  %4197 = lshr i32 %4170, 31
  %4198 = xor i32 %4194, %4197
  %4199 = add i32 %4198, %4194
  %4200 = icmp eq i32 %4199, 2
  %4201 = zext i1 %4200 to i8
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4201, i8* %4202, align 1
  store %struct.Memory* %loadMem_402592, %struct.Memory** %MEMORY
  %loadMem_402595 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 33
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 1
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %EAX.i40 = bitcast %union.anon* %4208 to i32*
  %4209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4210 = getelementptr inbounds %struct.GPR, %struct.GPR* %4209, i32 0, i32 15
  %4211 = getelementptr inbounds %struct.Reg, %struct.Reg* %4210, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %4211 to i64*
  %4212 = load i64, i64* %RBP.i41
  %4213 = sub i64 %4212, 76
  %4214 = load i32, i32* %EAX.i40
  %4215 = zext i32 %4214 to i64
  %4216 = load i64, i64* %PC.i39
  %4217 = add i64 %4216, 3
  store i64 %4217, i64* %PC.i39
  %4218 = inttoptr i64 %4213 to i32*
  store i32 %4214, i32* %4218
  store %struct.Memory* %loadMem_402595, %struct.Memory** %MEMORY
  br label %block_.L_402598

block_.L_402598:                                  ; preds = %block_40258f, %block_40257a, %block_402565, %block_402550, %block_40253b, %block_.L_402526
  %loadMem_402598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %PC.i38
  %4223 = add i64 %4222, 5
  %4224 = load i64, i64* %PC.i38
  %4225 = add i64 %4224, 5
  store i64 %4225, i64* %PC.i38
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4223, i64* %4226, align 8
  store %struct.Memory* %loadMem_402598, %struct.Memory** %MEMORY
  br label %block_.L_40259d

block_.L_40259d:                                  ; preds = %block_.L_402598
  %loadMem_40259d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4229 to i64*
  %4230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4231 = getelementptr inbounds %struct.GPR, %struct.GPR* %4230, i32 0, i32 1
  %4232 = getelementptr inbounds %struct.Reg, %struct.Reg* %4231, i32 0, i32 0
  %RAX.i36 = bitcast %union.anon* %4232 to i64*
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 15
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4235 to i64*
  %4236 = load i64, i64* %RBP.i37
  %4237 = sub i64 %4236, 68
  %4238 = load i64, i64* %PC.i35
  %4239 = add i64 %4238, 3
  store i64 %4239, i64* %PC.i35
  %4240 = inttoptr i64 %4237 to i32*
  %4241 = load i32, i32* %4240
  %4242 = zext i32 %4241 to i64
  store i64 %4242, i64* %RAX.i36, align 8
  store %struct.Memory* %loadMem_40259d, %struct.Memory** %MEMORY
  %loadMem_4025a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 33
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %4245 to i64*
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4247 = getelementptr inbounds %struct.GPR, %struct.GPR* %4246, i32 0, i32 1
  %4248 = getelementptr inbounds %struct.Reg, %struct.Reg* %4247, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %4248 to i64*
  %4249 = load i64, i64* %RAX.i34
  %4250 = load i64, i64* %PC.i33
  %4251 = add i64 %4250, 3
  store i64 %4251, i64* %PC.i33
  %4252 = trunc i64 %4249 to i32
  %4253 = add i32 1, %4252
  %4254 = zext i32 %4253 to i64
  store i64 %4254, i64* %RAX.i34, align 8
  %4255 = icmp ult i32 %4253, %4252
  %4256 = icmp ult i32 %4253, 1
  %4257 = or i1 %4255, %4256
  %4258 = zext i1 %4257 to i8
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4258, i8* %4259, align 1
  %4260 = and i32 %4253, 255
  %4261 = call i32 @llvm.ctpop.i32(i32 %4260)
  %4262 = trunc i32 %4261 to i8
  %4263 = and i8 %4262, 1
  %4264 = xor i8 %4263, 1
  %4265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4264, i8* %4265, align 1
  %4266 = xor i64 1, %4249
  %4267 = trunc i64 %4266 to i32
  %4268 = xor i32 %4267, %4253
  %4269 = lshr i32 %4268, 4
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4271, i8* %4272, align 1
  %4273 = icmp eq i32 %4253, 0
  %4274 = zext i1 %4273 to i8
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4274, i8* %4275, align 1
  %4276 = lshr i32 %4253, 31
  %4277 = trunc i32 %4276 to i8
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4277, i8* %4278, align 1
  %4279 = lshr i32 %4252, 31
  %4280 = xor i32 %4276, %4279
  %4281 = add i32 %4280, %4276
  %4282 = icmp eq i32 %4281, 2
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4283, i8* %4284, align 1
  store %struct.Memory* %loadMem_4025a0, %struct.Memory** %MEMORY
  %loadMem_4025a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 1
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4290 to i32*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 15
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %RBP.i32
  %4295 = sub i64 %4294, 68
  %4296 = load i32, i32* %EAX.i
  %4297 = zext i32 %4296 to i64
  %4298 = load i64, i64* %PC.i31
  %4299 = add i64 %4298, 3
  store i64 %4299, i64* %PC.i31
  %4300 = inttoptr i64 %4295 to i32*
  store i32 %4296, i32* %4300
  store %struct.Memory* %loadMem_4025a3, %struct.Memory** %MEMORY
  %loadMem_4025a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %4303 to i64*
  %4304 = load i64, i64* %PC.i30
  %4305 = add i64 %4304, -533
  %4306 = load i64, i64* %PC.i30
  %4307 = add i64 %4306, 5
  store i64 %4307, i64* %PC.i30
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4305, i64* %4308, align 8
  store %struct.Memory* %loadMem_4025a6, %struct.Memory** %MEMORY
  br label %block_.L_402391

block_.L_4025ab:                                  ; preds = %block_.L_402391
  %loadMem_4025ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %4311 to i64*
  %4312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4313 = getelementptr inbounds %struct.GPR, %struct.GPR* %4312, i32 0, i32 1
  %4314 = getelementptr inbounds %struct.Reg, %struct.Reg* %4313, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %4314 to i64*
  %4315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4316 = getelementptr inbounds %struct.GPR, %struct.GPR* %4315, i32 0, i32 15
  %4317 = getelementptr inbounds %struct.Reg, %struct.Reg* %4316, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %4317 to i64*
  %4318 = load i64, i64* %RBP.i29
  %4319 = sub i64 %4318, 88
  %4320 = load i64, i64* %PC.i27
  %4321 = add i64 %4320, 4
  store i64 %4321, i64* %PC.i27
  %4322 = inttoptr i64 %4319 to i64*
  %4323 = load i64, i64* %4322
  store i64 %4323, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_4025ab, %struct.Memory** %MEMORY
  %loadMem_4025af = load %struct.Memory*, %struct.Memory** %MEMORY
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 33
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 1
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 11
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RDI.i26 = bitcast %union.anon* %4332 to i64*
  %4333 = load i64, i64* %RAX.i25
  %4334 = load i64, i64* %PC.i24
  %4335 = add i64 %4334, 3
  store i64 %4335, i64* %PC.i24
  store i64 %4333, i64* %RDI.i26, align 8
  store %struct.Memory* %loadMem_4025af, %struct.Memory** %MEMORY
  %loadMem1_4025b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 33
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4338 to i64*
  %4339 = load i64, i64* %PC.i23
  %4340 = add i64 %4339, -4658
  %4341 = load i64, i64* %PC.i23
  %4342 = add i64 %4341, 5
  %4343 = load i64, i64* %PC.i23
  %4344 = add i64 %4343, 5
  store i64 %4344, i64* %PC.i23
  %4345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4346 = load i64, i64* %4345, align 8
  %4347 = add i64 %4346, -8
  %4348 = inttoptr i64 %4347 to i64*
  store i64 %4342, i64* %4348
  store i64 %4347, i64* %4345, align 8
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4340, i64* %4349, align 8
  store %struct.Memory* %loadMem1_4025b2, %struct.Memory** %MEMORY
  %loadMem2_4025b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4025b2 = load i64, i64* %3
  %4350 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @free to i64), %struct.Memory* %loadMem2_4025b2)
  store %struct.Memory* %4350, %struct.Memory** %MEMORY
  %loadMem_4025b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 33
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 1
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %PC.i19
  %4358 = add i64 %4357, 5
  store i64 %4358, i64* %PC.i19
  store i64 1, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4025b7, %struct.Memory** %MEMORY
  %loadMem_4025bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 5
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i18
  %4369 = sub i64 %4368, 92
  %4370 = load i64, i64* %PC.i17
  %4371 = add i64 %4370, 3
  store i64 %4371, i64* %PC.i17
  %4372 = inttoptr i64 %4369 to i32*
  %4373 = load i32, i32* %4372
  %4374 = zext i32 %4373 to i64
  store i64 %4374, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4025bc, %struct.Memory** %MEMORY
  %loadMem_4025bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 11
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RDI.i15 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 15
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %RBP.i16
  %4385 = sub i64 %4384, 56
  %4386 = load i64, i64* %PC.i14
  %4387 = add i64 %4386, 4
  store i64 %4387, i64* %PC.i14
  %4388 = inttoptr i64 %4385 to i64*
  %4389 = load i64, i64* %4388
  store i64 %4389, i64* %RDI.i15, align 8
  store %struct.Memory* %loadMem_4025bf, %struct.Memory** %MEMORY
  %loadMem_4025c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4391 = getelementptr inbounds %struct.GPR, %struct.GPR* %4390, i32 0, i32 33
  %4392 = getelementptr inbounds %struct.Reg, %struct.Reg* %4391, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4392 to i64*
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4394 = getelementptr inbounds %struct.GPR, %struct.GPR* %4393, i32 0, i32 5
  %4395 = getelementptr inbounds %struct.Reg, %struct.Reg* %4394, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4395 to i32*
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4397 = getelementptr inbounds %struct.GPR, %struct.GPR* %4396, i32 0, i32 11
  %4398 = getelementptr inbounds %struct.Reg, %struct.Reg* %4397, i32 0, i32 0
  %RDI.i13 = bitcast %union.anon* %4398 to i64*
  %4399 = load i64, i64* %RDI.i13
  %4400 = load i32, i32* %ECX.i
  %4401 = zext i32 %4400 to i64
  %4402 = load i64, i64* %PC.i12
  %4403 = add i64 %4402, 2
  store i64 %4403, i64* %PC.i12
  %4404 = inttoptr i64 %4399 to i32*
  store i32 %4400, i32* %4404
  store %struct.Memory* %loadMem_4025c3, %struct.Memory** %MEMORY
  %loadMem_4025c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4406 = getelementptr inbounds %struct.GPR, %struct.GPR* %4405, i32 0, i32 33
  %4407 = getelementptr inbounds %struct.Reg, %struct.Reg* %4406, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4407 to i64*
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 11
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %RDI.i10 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 15
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %RBP.i11
  %4415 = sub i64 %4414, 64
  %4416 = load i64, i64* %PC.i9
  %4417 = add i64 %4416, 4
  store i64 %4417, i64* %PC.i9
  %4418 = inttoptr i64 %4415 to i64*
  %4419 = load i64, i64* %4418
  store i64 %4419, i64* %RDI.i10, align 8
  store %struct.Memory* %loadMem_4025c5, %struct.Memory** %MEMORY
  %loadMem_4025c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4421 = getelementptr inbounds %struct.GPR, %struct.GPR* %4420, i32 0, i32 33
  %4422 = getelementptr inbounds %struct.Reg, %struct.Reg* %4421, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %4422 to i64*
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4424 = getelementptr inbounds %struct.GPR, %struct.GPR* %4423, i32 0, i32 7
  %4425 = getelementptr inbounds %struct.Reg, %struct.Reg* %4424, i32 0, i32 0
  %RDX.i7 = bitcast %union.anon* %4425 to i64*
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4427 = getelementptr inbounds %struct.GPR, %struct.GPR* %4426, i32 0, i32 15
  %4428 = getelementptr inbounds %struct.Reg, %struct.Reg* %4427, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %4428 to i64*
  %4429 = load i64, i64* %RBP.i8
  %4430 = sub i64 %4429, 48
  %4431 = load i64, i64* %PC.i6
  %4432 = add i64 %4431, 4
  store i64 %4432, i64* %PC.i6
  %4433 = inttoptr i64 %4430 to i64*
  %4434 = load i64, i64* %4433
  store i64 %4434, i64* %RDX.i7, align 8
  store %struct.Memory* %loadMem_4025c9, %struct.Memory** %MEMORY
  %loadMem_4025cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4436 = getelementptr inbounds %struct.GPR, %struct.GPR* %4435, i32 0, i32 33
  %4437 = getelementptr inbounds %struct.Reg, %struct.Reg* %4436, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4437 to i64*
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4439 = getelementptr inbounds %struct.GPR, %struct.GPR* %4438, i32 0, i32 7
  %4440 = getelementptr inbounds %struct.Reg, %struct.Reg* %4439, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4440 to i64*
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4442 = getelementptr inbounds %struct.GPR, %struct.GPR* %4441, i32 0, i32 11
  %4443 = getelementptr inbounds %struct.Reg, %struct.Reg* %4442, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4443 to i64*
  %4444 = load i64, i64* %RDX.i
  %4445 = load i64, i64* %RDI.i
  %4446 = load i64, i64* %PC.i5
  %4447 = add i64 %4446, 3
  store i64 %4447, i64* %PC.i5
  %4448 = inttoptr i64 %4444 to i64*
  store i64 %4445, i64* %4448
  store %struct.Memory* %loadMem_4025cd, %struct.Memory** %MEMORY
  %loadMem_4025d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 33
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4451 to i64*
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 13
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4454 to i64*
  %4455 = load i64, i64* %RSP.i
  %4456 = load i64, i64* %PC.i4
  %4457 = add i64 %4456, 7
  store i64 %4457, i64* %PC.i4
  %4458 = add i64 128, %4455
  store i64 %4458, i64* %RSP.i, align 8
  %4459 = icmp ult i64 %4458, %4455
  %4460 = icmp ult i64 %4458, 128
  %4461 = or i1 %4459, %4460
  %4462 = zext i1 %4461 to i8
  %4463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4462, i8* %4463, align 1
  %4464 = trunc i64 %4458 to i32
  %4465 = and i32 %4464, 255
  %4466 = call i32 @llvm.ctpop.i32(i32 %4465)
  %4467 = trunc i32 %4466 to i8
  %4468 = and i8 %4467, 1
  %4469 = xor i8 %4468, 1
  %4470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4469, i8* %4470, align 1
  %4471 = xor i64 128, %4455
  %4472 = xor i64 %4471, %4458
  %4473 = lshr i64 %4472, 4
  %4474 = trunc i64 %4473 to i8
  %4475 = and i8 %4474, 1
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4475, i8* %4476, align 1
  %4477 = icmp eq i64 %4458, 0
  %4478 = zext i1 %4477 to i8
  %4479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4478, i8* %4479, align 1
  %4480 = lshr i64 %4458, 63
  %4481 = trunc i64 %4480 to i8
  %4482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4481, i8* %4482, align 1
  %4483 = lshr i64 %4455, 63
  %4484 = xor i64 %4480, %4483
  %4485 = add i64 %4484, %4480
  %4486 = icmp eq i64 %4485, 2
  %4487 = zext i1 %4486 to i8
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4487, i8* %4488, align 1
  store %struct.Memory* %loadMem_4025d0, %struct.Memory** %MEMORY
  %loadMem_4025d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4490 = getelementptr inbounds %struct.GPR, %struct.GPR* %4489, i32 0, i32 33
  %4491 = getelementptr inbounds %struct.Reg, %struct.Reg* %4490, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4491 to i64*
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4493 = getelementptr inbounds %struct.GPR, %struct.GPR* %4492, i32 0, i32 15
  %4494 = getelementptr inbounds %struct.Reg, %struct.Reg* %4493, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4494 to i64*
  %4495 = load i64, i64* %PC.i2
  %4496 = add i64 %4495, 1
  store i64 %4496, i64* %PC.i2
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4498 = load i64, i64* %4497, align 8
  %4499 = add i64 %4498, 8
  %4500 = inttoptr i64 %4498 to i64*
  %4501 = load i64, i64* %4500
  store i64 %4501, i64* %RBP.i3, align 8
  store i64 %4499, i64* %4497, align 8
  store %struct.Memory* %loadMem_4025d7, %struct.Memory** %MEMORY
  %loadMem_4025d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 33
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4504 to i64*
  %4505 = load i64, i64* %PC.i1
  %4506 = add i64 %4505, 1
  store i64 %4506, i64* %PC.i1
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4509 = load i64, i64* %4508, align 8
  %4510 = inttoptr i64 %4509 to i64*
  %4511 = load i64, i64* %4510
  store i64 %4511, i64* %4507, align 8
  %4512 = add i64 %4509, 8
  store i64 %4512, i64* %4508, align 8
  store %struct.Memory* %loadMem_4025d8, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4025d8
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

define %struct.Memory* @routine_movq_0x10__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x45594d___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R10 = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xec___r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R11D to i64*
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 236, i64* %9, align 8
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

define %struct.Memory* @routine_movq__r9__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %R9
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 23
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R11D = bitcast %union.anon* %8 to i32*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.strlen_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x68__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__0x45594d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xed___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 237, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movq__rdi__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
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

define %struct.Memory* @routine_movl__esi__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x70__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x74__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 116
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 72
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 68
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, %15
  %18 = load i64, i64* %PC
  %19 = add i64 %18, 4
  store i64 %19, i64* %PC
  %20 = inttoptr i64 %17 to i8*
  %21 = load i8, i8* %20
  %22 = sext i8 %21 to i64
  %23 = and i64 %22, 4294967295
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
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

define %struct.Memory* @routine_je_.L_402375(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x20___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 32
  %14 = icmp ult i32 %9, 32
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
  %23 = xor i64 32, %10
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

define %struct.Memory* @routine_je_.L_402362(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 46
  %14 = icmp ult i32 %9, 46
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
  %23 = xor i64 46, %10
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

define %struct.Memory* @routine_cmpl__0x5f___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 95
  %14 = icmp ult i32 %9, 95
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
  %23 = xor i64 95, %10
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

define %struct.Memory* @routine_cmpl__0x2d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 45
  %14 = icmp ult i32 %9, 45
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
  %23 = xor i64 45, %10
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

define %struct.Memory* @routine_cmpl__0x7e___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %EDX = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %EDX
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
  store i64 %12, i64* %PC
  %13 = sub i32 %9, 126
  %14 = icmp ult i32 %9, 126
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
  %23 = xor i64 126, %10
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmovnel__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %17 = load i8, i8* %16, align 1
  %18 = icmp eq i8 %17, 0
  %19 = load i64, i64* %RAX, align 8
  %20 = select i1 %18, i64 %13, i64 %19
  %21 = and i64 %20, 4294967295
  store i64 %21, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rdx__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 9
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RSI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RDX
  %16 = load i64, i64* %RSI
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

define %struct.Memory* @routine_movl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_402367(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4022ba(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 76
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4025ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4024b4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  %19 = load i32, i32* %18
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %20, align 1
  %21 = and i32 %19, 255
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %25, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = icmp eq i32 %19, 0
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %19, 31
  %32 = trunc i32 %31 to i8
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %32, i8* %33, align 1
  %34 = lshr i32 %19, 31
  %35 = xor i32 %31, %34
  %36 = add i32 %35, %34
  %37 = icmp eq i32 %36, 2
  %38 = zext i1 %37 to i8
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %38, i8* %39, align 1
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

define %struct.Memory* @routine_je_.L_40248a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_402497(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40249d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x4c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x78__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
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

define %struct.Memory* @routine_movslq_MINUS0x5c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_402526(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_402598(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40259d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_402391(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.free_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x38__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx____rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDI
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x40__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdi____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
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
