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
define %struct.Memory* @make_alilist(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_401d00 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_401d00, %struct.Memory** %MEMORY
  %loadMem_401d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i298 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i298
  %27 = load i64, i64* %PC.i297
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i297
  store i64 %26, i64* %RBP.i299, align 8
  store %struct.Memory* %loadMem_401d01, %struct.Memory** %MEMORY
  %loadMem_401d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i326 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i326
  %36 = load i64, i64* %PC.i325
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i325
  %38 = sub i64 %35, 80
  store i64 %38, i64* %RSP.i326, align 8
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
  store %struct.Memory* %loadMem_401d04, %struct.Memory** %MEMORY
  %loadMem_401d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i323
  %74 = add i64 %73, 10
  store i64 %74, i64* %PC.i323
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_401d08, %struct.Memory** %MEMORY
  %loadMem_401d12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R8D.i322 = bitcast %union.anon* %80 to i32*
  %81 = bitcast i32* %R8D.i322 to i64*
  %82 = load i64, i64* %PC.i321
  %83 = add i64 %82, 6
  store i64 %83, i64* %PC.i321
  store i64 179, i64* %81, align 8
  store %struct.Memory* %loadMem_401d12, %struct.Memory** %MEMORY
  %loadMem_401d18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 33
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %86 to i64*
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %88 = getelementptr inbounds %struct.GPR, %struct.GPR* %87, i32 0, i32 11
  %89 = getelementptr inbounds %struct.Reg, %struct.Reg* %88, i32 0, i32 0
  %RDI.i319 = bitcast %union.anon* %89 to i64*
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %91 = getelementptr inbounds %struct.GPR, %struct.GPR* %90, i32 0, i32 15
  %92 = getelementptr inbounds %struct.Reg, %struct.Reg* %91, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %92 to i64*
  %93 = load i64, i64* %RBP.i320
  %94 = sub i64 %93, 8
  %95 = load i64, i64* %RDI.i319
  %96 = load i64, i64* %PC.i318
  %97 = add i64 %96, 4
  store i64 %97, i64* %PC.i318
  %98 = inttoptr i64 %94 to i64*
  store i64 %95, i64* %98
  store %struct.Memory* %loadMem_401d18, %struct.Memory** %MEMORY
  %loadMem_401d1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 9
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %RSI.i316 = bitcast %union.anon* %104 to i64*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 15
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %107 to i64*
  %108 = load i64, i64* %RBP.i317
  %109 = sub i64 %108, 16
  %110 = load i64, i64* %RSI.i316
  %111 = load i64, i64* %PC.i315
  %112 = add i64 %111, 4
  store i64 %112, i64* %PC.i315
  %113 = inttoptr i64 %109 to i64*
  store i64 %110, i64* %113
  store %struct.Memory* %loadMem_401d1c, %struct.Memory** %MEMORY
  %loadMem_401d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 7
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %RDX.i313 = bitcast %union.anon* %119 to i64*
  %120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %121 = getelementptr inbounds %struct.GPR, %struct.GPR* %120, i32 0, i32 15
  %122 = getelementptr inbounds %struct.Reg, %struct.Reg* %121, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %122 to i64*
  %123 = load i64, i64* %RBP.i314
  %124 = sub i64 %123, 24
  %125 = load i64, i64* %RDX.i313
  %126 = load i64, i64* %PC.i312
  %127 = add i64 %126, 4
  store i64 %127, i64* %PC.i312
  %128 = inttoptr i64 %124 to i64*
  store i64 %125, i64* %128
  store %struct.Memory* %loadMem_401d20, %struct.Memory** %MEMORY
  %loadMem_401d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %130 = getelementptr inbounds %struct.GPR, %struct.GPR* %129, i32 0, i32 33
  %131 = getelementptr inbounds %struct.Reg, %struct.Reg* %130, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %131 to i64*
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 5
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %134 to i64*
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 15
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %RBP.i311 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %RBP.i311
  %139 = sub i64 %138, 32
  %140 = load i64, i64* %RCX.i310
  %141 = load i64, i64* %PC.i309
  %142 = add i64 %141, 4
  store i64 %142, i64* %PC.i309
  %143 = inttoptr i64 %139 to i64*
  store i64 %140, i64* %143
  store %struct.Memory* %loadMem_401d24, %struct.Memory** %MEMORY
  %loadMem_401d28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 11
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RDI.i307 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i308
  %154 = sub i64 %153, 8
  %155 = load i64, i64* %PC.i306
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC.i306
  %157 = inttoptr i64 %154 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %RDI.i307, align 8
  store %struct.Memory* %loadMem_401d28, %struct.Memory** %MEMORY
  %loadMem_401d2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 17
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %164 to i32*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 15
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %RBP.i305 = bitcast %union.anon* %167 to i64*
  %168 = load i64, i64* %RBP.i305
  %169 = sub i64 %168, 56
  %170 = load i32, i32* %R8D.i
  %171 = zext i32 %170 to i64
  %172 = load i64, i64* %PC.i304
  %173 = add i64 %172, 4
  store i64 %173, i64* %PC.i304
  %174 = inttoptr i64 %169 to i32*
  store i32 %170, i32* %174
  store %struct.Memory* %loadMem_401d2c, %struct.Memory** %MEMORY
  %loadMem_401d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %180 to i64*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %RBP.i303
  %185 = sub i64 %184, 64
  %186 = load i64, i64* %RAX.i302
  %187 = load i64, i64* %PC.i301
  %188 = add i64 %187, 4
  store i64 %188, i64* %PC.i301
  %189 = inttoptr i64 %185 to i64*
  store i64 %186, i64* %189
  store %struct.Memory* %loadMem_401d30, %struct.Memory** %MEMORY
  %loadMem1_401d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %PC.i300
  %194 = add i64 %193, -2260
  %195 = load i64, i64* %PC.i300
  %196 = add i64 %195, 5
  %197 = load i64, i64* %PC.i300
  %198 = add i64 %197, 5
  store i64 %198, i64* %PC.i300
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, -8
  %202 = inttoptr i64 %201 to i64*
  store i64 %196, i64* %202
  store i64 %201, i64* %199, align 8
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %194, i64* %203, align 8
  store %struct.Memory* %loadMem1_401d34, %struct.Memory** %MEMORY
  %loadMem2_401d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d34 = load i64, i64* %3
  %204 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64)* @strlen to i64), %struct.Memory* %loadMem2_401d34)
  store %struct.Memory* %204, %struct.Memory** %MEMORY
  %loadMem_401d39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %RAX.i296
  %212 = load i64, i64* %PC.i295
  %213 = add i64 %212, 4
  store i64 %213, i64* %PC.i295
  %214 = shl i64 %211, 1
  %215 = icmp slt i64 %214, 0
  %216 = shl i64 %214, 1
  store i64 %216, i64* %RAX.i296, align 8
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %218 = zext i1 %215 to i8
  store i8 %218, i8* %217, align 1
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %220 = trunc i64 %216 to i32
  %221 = and i32 %220, 254
  %222 = call i32 @llvm.ctpop.i32(i32 %221)
  %223 = trunc i32 %222 to i8
  %224 = and i8 %223, 1
  %225 = xor i8 %224, 1
  store i8 %225, i8* %219, align 1
  %226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %226, align 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %228 = icmp eq i64 %216, 0
  %229 = zext i1 %228 to i8
  store i8 %229, i8* %227, align 1
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %231 = lshr i64 %216, 63
  %232 = trunc i64 %231 to i8
  store i8 %232, i8* %230, align 1
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %233, align 1
  store %struct.Memory* %loadMem_401d39, %struct.Memory** %MEMORY
  %loadMem_401d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 11
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 15
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %242 to i64*
  %243 = load i64, i64* %RBP.i294
  %244 = sub i64 %243, 64
  %245 = load i64, i64* %PC.i293
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC.i293
  %247 = inttoptr i64 %244 to i64*
  %248 = load i64, i64* %247
  store i64 %248, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_401d3d, %struct.Memory** %MEMORY
  %loadMem_401d41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 9
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RSI.i291 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RBP.i292 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RBP.i292
  %259 = sub i64 %258, 56
  %260 = load i64, i64* %PC.i290
  %261 = add i64 %260, 3
  store i64 %261, i64* %PC.i290
  %262 = inttoptr i64 %259 to i32*
  %263 = load i32, i32* %262
  %264 = zext i32 %263 to i64
  store i64 %264, i64* %RSI.i291, align 8
  store %struct.Memory* %loadMem_401d41, %struct.Memory** %MEMORY
  %loadMem_401d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 1
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 7
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RDX.i289 = bitcast %union.anon* %273 to i64*
  %274 = load i64, i64* %RAX.i288
  %275 = load i64, i64* %PC.i287
  %276 = add i64 %275, 3
  store i64 %276, i64* %PC.i287
  store i64 %274, i64* %RDX.i289, align 8
  store %struct.Memory* %loadMem_401d44, %struct.Memory** %MEMORY
  %loadMem1_401d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %PC.i286
  %281 = add i64 %280, 279321
  %282 = load i64, i64* %PC.i286
  %283 = add i64 %282, 5
  %284 = load i64, i64* %PC.i286
  %285 = add i64 %284, 5
  store i64 %285, i64* %PC.i286
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = add i64 %287, -8
  %289 = inttoptr i64 %288 to i64*
  store i64 %283, i64* %289
  store i64 %288, i64* %286, align 8
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %281, i64* %290, align 8
  store %struct.Memory* %loadMem1_401d47, %struct.Memory** %MEMORY
  %loadMem2_401d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_401d47 = load i64, i64* %3
  %call2_401d47 = call %struct.Memory* @sub_446060.sre_malloc(%struct.State* %0, i64 %loadPC_401d47, %struct.Memory* %loadMem2_401d47)
  store %struct.Memory* %call2_401d47, %struct.Memory** %MEMORY
  %loadMem_401d4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i285
  %301 = sub i64 %300, 40
  %302 = load i64, i64* %RAX.i284
  %303 = load i64, i64* %PC.i283
  %304 = add i64 %303, 4
  store i64 %304, i64* %PC.i283
  %305 = inttoptr i64 %301 to i64*
  store i64 %302, i64* %305
  store %struct.Memory* %loadMem_401d4c, %struct.Memory** %MEMORY
  %loadMem_401d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 15
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RBP.i282
  %313 = sub i64 %312, 52
  %314 = load i64, i64* %PC.i281
  %315 = add i64 %314, 7
  store i64 %315, i64* %PC.i281
  %316 = inttoptr i64 %313 to i32*
  store i32 0, i32* %316
  store %struct.Memory* %loadMem_401d50, %struct.Memory** %MEMORY
  %loadMem_401d57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 15
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RBP.i280
  %324 = sub i64 %323, 48
  %325 = load i64, i64* %PC.i279
  %326 = add i64 %325, 7
  store i64 %326, i64* %PC.i279
  %327 = inttoptr i64 %324 to i32*
  store i32 0, i32* %327
  store %struct.Memory* %loadMem_401d57, %struct.Memory** %MEMORY
  %loadMem_401d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %329 = getelementptr inbounds %struct.GPR, %struct.GPR* %328, i32 0, i32 33
  %330 = getelementptr inbounds %struct.Reg, %struct.Reg* %329, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %330 to i64*
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 15
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %RBP.i278 = bitcast %union.anon* %333 to i64*
  %334 = load i64, i64* %RBP.i278
  %335 = sub i64 %334, 44
  %336 = load i64, i64* %PC.i277
  %337 = add i64 %336, 7
  store i64 %337, i64* %PC.i277
  %338 = inttoptr i64 %335 to i32*
  store i32 0, i32* %338
  store %struct.Memory* %loadMem_401d5e, %struct.Memory** %MEMORY
  br label %block_.L_401d65

block_.L_401d65:                                  ; preds = %block_.L_401eed, %entry
  %loadMem_401d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %344 to i64*
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 15
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %347 to i64*
  %348 = load i64, i64* %RBP.i276
  %349 = sub i64 %348, 8
  %350 = load i64, i64* %PC.i274
  %351 = add i64 %350, 4
  store i64 %351, i64* %PC.i274
  %352 = inttoptr i64 %349 to i64*
  %353 = load i64, i64* %352
  store i64 %353, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_401d65, %struct.Memory** %MEMORY
  %loadMem_401d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %359 to i64*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %362 to i64*
  %363 = load i64, i64* %RBP.i273
  %364 = sub i64 %363, 44
  %365 = load i64, i64* %PC.i271
  %366 = add i64 %365, 4
  store i64 %366, i64* %PC.i271
  %367 = inttoptr i64 %364 to i32*
  %368 = load i32, i32* %367
  %369 = sext i32 %368 to i64
  store i64 %369, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_401d69, %struct.Memory** %MEMORY
  %loadMem_401d6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 1
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 5
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 7
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %RDX.i270 = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %RAX.i268
  %383 = load i64, i64* %RCX.i269
  %384 = add i64 %383, %382
  %385 = load i64, i64* %PC.i267
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC.i267
  %387 = inttoptr i64 %384 to i8*
  %388 = load i8, i8* %387
  %389 = sext i8 %388 to i64
  %390 = and i64 %389, 4294967295
  store i64 %390, i64* %RDX.i270, align 8
  store %struct.Memory* %loadMem_401d6d, %struct.Memory** %MEMORY
  %loadMem_401d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 7
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %EDX.i266 = bitcast %union.anon* %396 to i32*
  %397 = load i32, i32* %EDX.i266
  %398 = zext i32 %397 to i64
  %399 = load i64, i64* %PC.i265
  %400 = add i64 %399, 3
  store i64 %400, i64* %PC.i265
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %401, align 1
  %402 = and i32 %397, 255
  %403 = call i32 @llvm.ctpop.i32(i32 %402)
  %404 = trunc i32 %403 to i8
  %405 = and i8 %404, 1
  %406 = xor i8 %405, 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %406, i8* %407, align 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %408, align 1
  %409 = icmp eq i32 %397, 0
  %410 = zext i1 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %397, 31
  %413 = trunc i32 %412 to i8
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %413, i8* %414, align 1
  %415 = lshr i32 %397, 31
  %416 = xor i32 %412, %415
  %417 = add i32 %416, %415
  %418 = icmp eq i32 %417, 2
  %419 = zext i1 %418 to i8
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %419, i8* %420, align 1
  store %struct.Memory* %loadMem_401d71, %struct.Memory** %MEMORY
  %loadMem_401d74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 33
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %423 to i64*
  %424 = load i64, i64* %PC.i264
  %425 = add i64 %424, 391
  %426 = load i64, i64* %PC.i264
  %427 = add i64 %426, 6
  %428 = load i64, i64* %PC.i264
  %429 = add i64 %428, 6
  store i64 %429, i64* %PC.i264
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %431 = load i8, i8* %430, align 1
  store i8 %431, i8* %BRANCH_TAKEN, align 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %433 = icmp ne i8 %431, 0
  %434 = select i1 %433, i64 %425, i64 %427
  store i64 %434, i64* %432, align 8
  store %struct.Memory* %loadMem_401d74, %struct.Memory** %MEMORY
  %loadBr_401d74 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401d74 = icmp eq i8 %loadBr_401d74, 1
  br i1 %cmpBr_401d74, label %block_.L_401efb, label %block_401d7a

block_401d7a:                                     ; preds = %block_.L_401d65
  %loadMem_401d7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i263
  %445 = sub i64 %444, 8
  %446 = load i64, i64* %PC.i261
  %447 = add i64 %446, 4
  store i64 %447, i64* %PC.i261
  %448 = inttoptr i64 %445 to i64*
  %449 = load i64, i64* %448
  store i64 %449, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_401d7a, %struct.Memory** %MEMORY
  %loadMem_401d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %451 = getelementptr inbounds %struct.GPR, %struct.GPR* %450, i32 0, i32 33
  %452 = getelementptr inbounds %struct.Reg, %struct.Reg* %451, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %452 to i64*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 5
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 15
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %458 to i64*
  %459 = load i64, i64* %RBP.i260
  %460 = sub i64 %459, 44
  %461 = load i64, i64* %PC.i258
  %462 = add i64 %461, 4
  store i64 %462, i64* %PC.i258
  %463 = inttoptr i64 %460 to i32*
  %464 = load i32, i32* %463
  %465 = sext i32 %464 to i64
  store i64 %465, i64* %RCX.i259, align 8
  store %struct.Memory* %loadMem_401d7e, %struct.Memory** %MEMORY
  %loadMem_401d82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 1
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RAX.i255 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 5
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RCX.i256 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 7
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RAX.i255
  %479 = load i64, i64* %RCX.i256
  %480 = add i64 %479, %478
  %481 = load i64, i64* %PC.i254
  %482 = add i64 %481, 4
  store i64 %482, i64* %PC.i254
  %483 = inttoptr i64 %480 to i8*
  %484 = load i8, i8* %483
  %485 = sext i8 %484 to i64
  %486 = and i64 %485, 4294967295
  store i64 %486, i64* %RDX.i257, align 8
  store %struct.Memory* %loadMem_401d82, %struct.Memory** %MEMORY
  %loadMem_401d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 7
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %EDX.i253 = bitcast %union.anon* %492 to i32*
  %493 = load i32, i32* %EDX.i253
  %494 = zext i32 %493 to i64
  %495 = load i64, i64* %PC.i252
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC.i252
  %497 = sub i32 %493, 32
  %498 = icmp ult i32 %493, 32
  %499 = zext i1 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %499, i8* %500, align 1
  %501 = and i32 %497, 255
  %502 = call i32 @llvm.ctpop.i32(i32 %501)
  %503 = trunc i32 %502 to i8
  %504 = and i8 %503, 1
  %505 = xor i8 %504, 1
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %505, i8* %506, align 1
  %507 = xor i64 32, %494
  %508 = trunc i64 %507 to i32
  %509 = xor i32 %508, %497
  %510 = lshr i32 %509, 4
  %511 = trunc i32 %510 to i8
  %512 = and i8 %511, 1
  %513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %512, i8* %513, align 1
  %514 = icmp eq i32 %497, 0
  %515 = zext i1 %514 to i8
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %515, i8* %516, align 1
  %517 = lshr i32 %497, 31
  %518 = trunc i32 %517 to i8
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %518, i8* %519, align 1
  %520 = lshr i32 %493, 31
  %521 = xor i32 %517, %520
  %522 = add i32 %521, %520
  %523 = icmp eq i32 %522, 2
  %524 = zext i1 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %524, i8* %525, align 1
  store %struct.Memory* %loadMem_401d86, %struct.Memory** %MEMORY
  %loadMem_401d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %527 = getelementptr inbounds %struct.GPR, %struct.GPR* %526, i32 0, i32 33
  %528 = getelementptr inbounds %struct.Reg, %struct.Reg* %527, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %528 to i64*
  %529 = load i64, i64* %PC.i251
  %530 = add i64 %529, 237
  %531 = load i64, i64* %PC.i251
  %532 = add i64 %531, 6
  %533 = load i64, i64* %PC.i251
  %534 = add i64 %533, 6
  store i64 %534, i64* %PC.i251
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %536 = load i8, i8* %535, align 1
  store i8 %536, i8* %BRANCH_TAKEN, align 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %538 = icmp ne i8 %536, 0
  %539 = select i1 %538, i64 %530, i64 %532
  store i64 %539, i64* %537, align 8
  store %struct.Memory* %loadMem_401d89, %struct.Memory** %MEMORY
  %loadBr_401d89 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401d89 = icmp eq i8 %loadBr_401d89, 1
  br i1 %cmpBr_401d89, label %block_.L_401e76, label %block_401d8f

block_401d8f:                                     ; preds = %block_401d7a
  %loadMem_401d8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %541 = getelementptr inbounds %struct.GPR, %struct.GPR* %540, i32 0, i32 33
  %542 = getelementptr inbounds %struct.Reg, %struct.Reg* %541, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %542 to i64*
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 1
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %RBP.i250
  %550 = sub i64 %549, 8
  %551 = load i64, i64* %PC.i248
  %552 = add i64 %551, 4
  store i64 %552, i64* %PC.i248
  %553 = inttoptr i64 %550 to i64*
  %554 = load i64, i64* %553
  store i64 %554, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_401d8f, %struct.Memory** %MEMORY
  %loadMem_401d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 5
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RCX.i246 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 15
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RBP.i247
  %565 = sub i64 %564, 44
  %566 = load i64, i64* %PC.i245
  %567 = add i64 %566, 4
  store i64 %567, i64* %PC.i245
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = sext i32 %569 to i64
  store i64 %570, i64* %RCX.i246, align 8
  store %struct.Memory* %loadMem_401d93, %struct.Memory** %MEMORY
  %loadMem_401d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 5
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %581 = getelementptr inbounds %struct.GPR, %struct.GPR* %580, i32 0, i32 7
  %582 = getelementptr inbounds %struct.Reg, %struct.Reg* %581, i32 0, i32 0
  %RDX.i244 = bitcast %union.anon* %582 to i64*
  %583 = load i64, i64* %RAX.i242
  %584 = load i64, i64* %RCX.i243
  %585 = add i64 %584, %583
  %586 = load i64, i64* %PC.i241
  %587 = add i64 %586, 4
  store i64 %587, i64* %PC.i241
  %588 = inttoptr i64 %585 to i8*
  %589 = load i8, i8* %588
  %590 = sext i8 %589 to i64
  %591 = and i64 %590, 4294967295
  store i64 %591, i64* %RDX.i244, align 8
  store %struct.Memory* %loadMem_401d97, %struct.Memory** %MEMORY
  %loadMem_401d9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 7
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %EDX.i240 = bitcast %union.anon* %597 to i32*
  %598 = load i32, i32* %EDX.i240
  %599 = zext i32 %598 to i64
  %600 = load i64, i64* %PC.i239
  %601 = add i64 %600, 3
  store i64 %601, i64* %PC.i239
  %602 = sub i32 %598, 46
  %603 = icmp ult i32 %598, 46
  %604 = zext i1 %603 to i8
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %604, i8* %605, align 1
  %606 = and i32 %602, 255
  %607 = call i32 @llvm.ctpop.i32(i32 %606)
  %608 = trunc i32 %607 to i8
  %609 = and i8 %608, 1
  %610 = xor i8 %609, 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %610, i8* %611, align 1
  %612 = xor i64 46, %599
  %613 = trunc i64 %612 to i32
  %614 = xor i32 %613, %602
  %615 = lshr i32 %614, 4
  %616 = trunc i32 %615 to i8
  %617 = and i8 %616, 1
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %617, i8* %618, align 1
  %619 = icmp eq i32 %602, 0
  %620 = zext i1 %619 to i8
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %620, i8* %621, align 1
  %622 = lshr i32 %602, 31
  %623 = trunc i32 %622 to i8
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %623, i8* %624, align 1
  %625 = lshr i32 %598, 31
  %626 = xor i32 %622, %625
  %627 = add i32 %626, %625
  %628 = icmp eq i32 %627, 2
  %629 = zext i1 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %629, i8* %630, align 1
  store %struct.Memory* %loadMem_401d9b, %struct.Memory** %MEMORY
  %loadMem_401d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 33
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %633 to i64*
  %634 = load i64, i64* %PC.i238
  %635 = add i64 %634, 216
  %636 = load i64, i64* %PC.i238
  %637 = add i64 %636, 6
  %638 = load i64, i64* %PC.i238
  %639 = add i64 %638, 6
  store i64 %639, i64* %PC.i238
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %641 = load i8, i8* %640, align 1
  store i8 %641, i8* %BRANCH_TAKEN, align 1
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %643 = icmp ne i8 %641, 0
  %644 = select i1 %643, i64 %635, i64 %637
  store i64 %644, i64* %642, align 8
  store %struct.Memory* %loadMem_401d9e, %struct.Memory** %MEMORY
  %loadBr_401d9e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401d9e = icmp eq i8 %loadBr_401d9e, 1
  br i1 %cmpBr_401d9e, label %block_.L_401e76, label %block_401da4

block_401da4:                                     ; preds = %block_401d8f
  %loadMem_401da4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 33
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 1
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %650 to i64*
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 15
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %653 to i64*
  %654 = load i64, i64* %RBP.i237
  %655 = sub i64 %654, 8
  %656 = load i64, i64* %PC.i235
  %657 = add i64 %656, 4
  store i64 %657, i64* %PC.i235
  %658 = inttoptr i64 %655 to i64*
  %659 = load i64, i64* %658
  store i64 %659, i64* %RAX.i236, align 8
  store %struct.Memory* %loadMem_401da4, %struct.Memory** %MEMORY
  %loadMem_401da8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 5
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 15
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %668 to i64*
  %669 = load i64, i64* %RBP.i234
  %670 = sub i64 %669, 44
  %671 = load i64, i64* %PC.i232
  %672 = add i64 %671, 4
  store i64 %672, i64* %PC.i232
  %673 = inttoptr i64 %670 to i32*
  %674 = load i32, i32* %673
  %675 = sext i32 %674 to i64
  store i64 %675, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_401da8, %struct.Memory** %MEMORY
  %loadMem_401dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 5
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %684 to i64*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 7
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RDX.i231 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RAX.i229
  %689 = load i64, i64* %RCX.i230
  %690 = add i64 %689, %688
  %691 = load i64, i64* %PC.i228
  %692 = add i64 %691, 4
  store i64 %692, i64* %PC.i228
  %693 = inttoptr i64 %690 to i8*
  %694 = load i8, i8* %693
  %695 = sext i8 %694 to i64
  %696 = and i64 %695, 4294967295
  store i64 %696, i64* %RDX.i231, align 8
  store %struct.Memory* %loadMem_401dac, %struct.Memory** %MEMORY
  %loadMem_401db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 7
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %EDX.i227 = bitcast %union.anon* %702 to i32*
  %703 = load i32, i32* %EDX.i227
  %704 = zext i32 %703 to i64
  %705 = load i64, i64* %PC.i226
  %706 = add i64 %705, 3
  store i64 %706, i64* %PC.i226
  %707 = sub i32 %703, 95
  %708 = icmp ult i32 %703, 95
  %709 = zext i1 %708 to i8
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %709, i8* %710, align 1
  %711 = and i32 %707, 255
  %712 = call i32 @llvm.ctpop.i32(i32 %711)
  %713 = trunc i32 %712 to i8
  %714 = and i8 %713, 1
  %715 = xor i8 %714, 1
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %715, i8* %716, align 1
  %717 = xor i64 95, %704
  %718 = trunc i64 %717 to i32
  %719 = xor i32 %718, %707
  %720 = lshr i32 %719, 4
  %721 = trunc i32 %720 to i8
  %722 = and i8 %721, 1
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %722, i8* %723, align 1
  %724 = icmp eq i32 %707, 0
  %725 = zext i1 %724 to i8
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %725, i8* %726, align 1
  %727 = lshr i32 %707, 31
  %728 = trunc i32 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %728, i8* %729, align 1
  %730 = lshr i32 %703, 31
  %731 = xor i32 %727, %730
  %732 = add i32 %731, %730
  %733 = icmp eq i32 %732, 2
  %734 = zext i1 %733 to i8
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %734, i8* %735, align 1
  store %struct.Memory* %loadMem_401db0, %struct.Memory** %MEMORY
  %loadMem_401db3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %738 to i64*
  %739 = load i64, i64* %PC.i225
  %740 = add i64 %739, 195
  %741 = load i64, i64* %PC.i225
  %742 = add i64 %741, 6
  %743 = load i64, i64* %PC.i225
  %744 = add i64 %743, 6
  store i64 %744, i64* %PC.i225
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %746 = load i8, i8* %745, align 1
  store i8 %746, i8* %BRANCH_TAKEN, align 1
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %748 = icmp ne i8 %746, 0
  %749 = select i1 %748, i64 %740, i64 %742
  store i64 %749, i64* %747, align 8
  store %struct.Memory* %loadMem_401db3, %struct.Memory** %MEMORY
  %loadBr_401db3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401db3 = icmp eq i8 %loadBr_401db3, 1
  br i1 %cmpBr_401db3, label %block_.L_401e76, label %block_401db9

block_401db9:                                     ; preds = %block_401da4
  %loadMem_401db9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %751 = getelementptr inbounds %struct.GPR, %struct.GPR* %750, i32 0, i32 33
  %752 = getelementptr inbounds %struct.Reg, %struct.Reg* %751, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %752 to i64*
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %754 = getelementptr inbounds %struct.GPR, %struct.GPR* %753, i32 0, i32 1
  %755 = getelementptr inbounds %struct.Reg, %struct.Reg* %754, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %755 to i64*
  %756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %757 = getelementptr inbounds %struct.GPR, %struct.GPR* %756, i32 0, i32 15
  %758 = getelementptr inbounds %struct.Reg, %struct.Reg* %757, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %758 to i64*
  %759 = load i64, i64* %RBP.i224
  %760 = sub i64 %759, 8
  %761 = load i64, i64* %PC.i222
  %762 = add i64 %761, 4
  store i64 %762, i64* %PC.i222
  %763 = inttoptr i64 %760 to i64*
  %764 = load i64, i64* %763
  store i64 %764, i64* %RAX.i223, align 8
  store %struct.Memory* %loadMem_401db9, %struct.Memory** %MEMORY
  %loadMem_401dbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %766 = getelementptr inbounds %struct.GPR, %struct.GPR* %765, i32 0, i32 33
  %767 = getelementptr inbounds %struct.Reg, %struct.Reg* %766, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %767 to i64*
  %768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %769 = getelementptr inbounds %struct.GPR, %struct.GPR* %768, i32 0, i32 5
  %770 = getelementptr inbounds %struct.Reg, %struct.Reg* %769, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %770 to i64*
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 15
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %RBP.i221
  %775 = sub i64 %774, 44
  %776 = load i64, i64* %PC.i219
  %777 = add i64 %776, 4
  store i64 %777, i64* %PC.i219
  %778 = inttoptr i64 %775 to i32*
  %779 = load i32, i32* %778
  %780 = sext i32 %779 to i64
  store i64 %780, i64* %RCX.i220, align 8
  store %struct.Memory* %loadMem_401dbd, %struct.Memory** %MEMORY
  %loadMem_401dc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 5
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RCX.i217 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 7
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RDX.i218 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RAX.i216
  %794 = load i64, i64* %RCX.i217
  %795 = add i64 %794, %793
  %796 = load i64, i64* %PC.i215
  %797 = add i64 %796, 4
  store i64 %797, i64* %PC.i215
  %798 = inttoptr i64 %795 to i8*
  %799 = load i8, i8* %798
  %800 = sext i8 %799 to i64
  %801 = and i64 %800, 4294967295
  store i64 %801, i64* %RDX.i218, align 8
  store %struct.Memory* %loadMem_401dc1, %struct.Memory** %MEMORY
  %loadMem_401dc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 33
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 7
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %EDX.i214 = bitcast %union.anon* %807 to i32*
  %808 = load i32, i32* %EDX.i214
  %809 = zext i32 %808 to i64
  %810 = load i64, i64* %PC.i213
  %811 = add i64 %810, 3
  store i64 %811, i64* %PC.i213
  %812 = sub i32 %808, 45
  %813 = icmp ult i32 %808, 45
  %814 = zext i1 %813 to i8
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %814, i8* %815, align 1
  %816 = and i32 %812, 255
  %817 = call i32 @llvm.ctpop.i32(i32 %816)
  %818 = trunc i32 %817 to i8
  %819 = and i8 %818, 1
  %820 = xor i8 %819, 1
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %820, i8* %821, align 1
  %822 = xor i64 45, %809
  %823 = trunc i64 %822 to i32
  %824 = xor i32 %823, %812
  %825 = lshr i32 %824, 4
  %826 = trunc i32 %825 to i8
  %827 = and i8 %826, 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %827, i8* %828, align 1
  %829 = icmp eq i32 %812, 0
  %830 = zext i1 %829 to i8
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %830, i8* %831, align 1
  %832 = lshr i32 %812, 31
  %833 = trunc i32 %832 to i8
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %833, i8* %834, align 1
  %835 = lshr i32 %808, 31
  %836 = xor i32 %832, %835
  %837 = add i32 %836, %835
  %838 = icmp eq i32 %837, 2
  %839 = zext i1 %838 to i8
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %839, i8* %840, align 1
  store %struct.Memory* %loadMem_401dc5, %struct.Memory** %MEMORY
  %loadMem_401dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %842 = getelementptr inbounds %struct.GPR, %struct.GPR* %841, i32 0, i32 33
  %843 = getelementptr inbounds %struct.Reg, %struct.Reg* %842, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %843 to i64*
  %844 = load i64, i64* %PC.i212
  %845 = add i64 %844, 174
  %846 = load i64, i64* %PC.i212
  %847 = add i64 %846, 6
  %848 = load i64, i64* %PC.i212
  %849 = add i64 %848, 6
  store i64 %849, i64* %PC.i212
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %851 = load i8, i8* %850, align 1
  store i8 %851, i8* %BRANCH_TAKEN, align 1
  %852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %853 = icmp ne i8 %851, 0
  %854 = select i1 %853, i64 %845, i64 %847
  store i64 %854, i64* %852, align 8
  store %struct.Memory* %loadMem_401dc8, %struct.Memory** %MEMORY
  %loadBr_401dc8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401dc8 = icmp eq i8 %loadBr_401dc8, 1
  br i1 %cmpBr_401dc8, label %block_.L_401e76, label %block_401dce

block_401dce:                                     ; preds = %block_401db9
  %loadMem_401dce = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 1
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RAX.i210 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 15
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %863 to i64*
  %864 = load i64, i64* %RBP.i211
  %865 = sub i64 %864, 8
  %866 = load i64, i64* %PC.i209
  %867 = add i64 %866, 4
  store i64 %867, i64* %PC.i209
  %868 = inttoptr i64 %865 to i64*
  %869 = load i64, i64* %868
  store i64 %869, i64* %RAX.i210, align 8
  store %struct.Memory* %loadMem_401dce, %struct.Memory** %MEMORY
  %loadMem_401dd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 5
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 15
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RBP.i208
  %880 = sub i64 %879, 44
  %881 = load i64, i64* %PC.i206
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i206
  %883 = inttoptr i64 %880 to i32*
  %884 = load i32, i32* %883
  %885 = sext i32 %884 to i64
  store i64 %885, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_401dd2, %struct.Memory** %MEMORY
  %loadMem_401dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 33
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 1
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 5
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %894 to i64*
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 7
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %RDX.i205 = bitcast %union.anon* %897 to i64*
  %898 = load i64, i64* %RAX.i203
  %899 = load i64, i64* %RCX.i204
  %900 = add i64 %899, %898
  %901 = load i64, i64* %PC.i202
  %902 = add i64 %901, 4
  store i64 %902, i64* %PC.i202
  %903 = inttoptr i64 %900 to i8*
  %904 = load i8, i8* %903
  %905 = sext i8 %904 to i64
  %906 = and i64 %905, 4294967295
  store i64 %906, i64* %RDX.i205, align 8
  store %struct.Memory* %loadMem_401dd6, %struct.Memory** %MEMORY
  %loadMem_401dda = load %struct.Memory*, %struct.Memory** %MEMORY
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %908 = getelementptr inbounds %struct.GPR, %struct.GPR* %907, i32 0, i32 33
  %909 = getelementptr inbounds %struct.Reg, %struct.Reg* %908, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %909 to i64*
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 7
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %EDX.i201 = bitcast %union.anon* %912 to i32*
  %913 = load i32, i32* %EDX.i201
  %914 = zext i32 %913 to i64
  %915 = load i64, i64* %PC.i200
  %916 = add i64 %915, 3
  store i64 %916, i64* %PC.i200
  %917 = sub i32 %913, 126
  %918 = icmp ult i32 %913, 126
  %919 = zext i1 %918 to i8
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %919, i8* %920, align 1
  %921 = and i32 %917, 255
  %922 = call i32 @llvm.ctpop.i32(i32 %921)
  %923 = trunc i32 %922 to i8
  %924 = and i8 %923, 1
  %925 = xor i8 %924, 1
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %925, i8* %926, align 1
  %927 = xor i64 126, %914
  %928 = trunc i64 %927 to i32
  %929 = xor i32 %928, %917
  %930 = lshr i32 %929, 4
  %931 = trunc i32 %930 to i8
  %932 = and i8 %931, 1
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %932, i8* %933, align 1
  %934 = icmp eq i32 %917, 0
  %935 = zext i1 %934 to i8
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %935, i8* %936, align 1
  %937 = lshr i32 %917, 31
  %938 = trunc i32 %937 to i8
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %938, i8* %939, align 1
  %940 = lshr i32 %913, 31
  %941 = xor i32 %937, %940
  %942 = add i32 %941, %940
  %943 = icmp eq i32 %942, 2
  %944 = zext i1 %943 to i8
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %944, i8* %945, align 1
  store %struct.Memory* %loadMem_401dda, %struct.Memory** %MEMORY
  %loadMem_401ddd = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %PC.i199
  %950 = add i64 %949, 153
  %951 = load i64, i64* %PC.i199
  %952 = add i64 %951, 6
  %953 = load i64, i64* %PC.i199
  %954 = add i64 %953, 6
  store i64 %954, i64* %PC.i199
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %956 = load i8, i8* %955, align 1
  store i8 %956, i8* %BRANCH_TAKEN, align 1
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %958 = icmp ne i8 %956, 0
  %959 = select i1 %958, i64 %950, i64 %952
  store i64 %959, i64* %957, align 8
  store %struct.Memory* %loadMem_401ddd, %struct.Memory** %MEMORY
  %loadBr_401ddd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ddd = icmp eq i8 %loadBr_401ddd, 1
  br i1 %cmpBr_401ddd, label %block_.L_401e76, label %block_401de3

block_401de3:                                     ; preds = %block_401dce
  %loadMem_401de3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 1
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RAX.i197 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i198
  %970 = sub i64 %969, 16
  %971 = load i64, i64* %PC.i196
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i196
  %973 = inttoptr i64 %970 to i64*
  %974 = load i64, i64* %973
  store i64 %974, i64* %RAX.i197, align 8
  store %struct.Memory* %loadMem_401de3, %struct.Memory** %MEMORY
  %loadMem_401de7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 33
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %977 to i64*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 5
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RCX.i194 = bitcast %union.anon* %980 to i64*
  %981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %982 = getelementptr inbounds %struct.GPR, %struct.GPR* %981, i32 0, i32 15
  %983 = getelementptr inbounds %struct.Reg, %struct.Reg* %982, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %983 to i64*
  %984 = load i64, i64* %RBP.i195
  %985 = sub i64 %984, 44
  %986 = load i64, i64* %PC.i193
  %987 = add i64 %986, 4
  store i64 %987, i64* %PC.i193
  %988 = inttoptr i64 %985 to i32*
  %989 = load i32, i32* %988
  %990 = sext i32 %989 to i64
  store i64 %990, i64* %RCX.i194, align 8
  store %struct.Memory* %loadMem_401de7, %struct.Memory** %MEMORY
  %loadMem_401deb = load %struct.Memory*, %struct.Memory** %MEMORY
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 33
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %993 to i64*
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 1
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 5
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 7
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RDX.i192 = bitcast %union.anon* %1002 to i64*
  %1003 = load i64, i64* %RAX.i190
  %1004 = load i64, i64* %RCX.i191
  %1005 = add i64 %1004, %1003
  %1006 = load i64, i64* %PC.i189
  %1007 = add i64 %1006, 4
  store i64 %1007, i64* %PC.i189
  %1008 = inttoptr i64 %1005 to i8*
  %1009 = load i8, i8* %1008
  %1010 = sext i8 %1009 to i64
  %1011 = and i64 %1010, 4294967295
  store i64 %1011, i64* %RDX.i192, align 8
  store %struct.Memory* %loadMem_401deb, %struct.Memory** %MEMORY
  %loadMem_401def = load %struct.Memory*, %struct.Memory** %MEMORY
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1013 = getelementptr inbounds %struct.GPR, %struct.GPR* %1012, i32 0, i32 33
  %1014 = getelementptr inbounds %struct.Reg, %struct.Reg* %1013, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1014 to i64*
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1016 = getelementptr inbounds %struct.GPR, %struct.GPR* %1015, i32 0, i32 7
  %1017 = getelementptr inbounds %struct.Reg, %struct.Reg* %1016, i32 0, i32 0
  %EDX.i188 = bitcast %union.anon* %1017 to i32*
  %1018 = load i32, i32* %EDX.i188
  %1019 = zext i32 %1018 to i64
  %1020 = load i64, i64* %PC.i187
  %1021 = add i64 %1020, 3
  store i64 %1021, i64* %PC.i187
  %1022 = sub i32 %1018, 32
  %1023 = icmp ult i32 %1018, 32
  %1024 = zext i1 %1023 to i8
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1024, i8* %1025, align 1
  %1026 = and i32 %1022, 255
  %1027 = call i32 @llvm.ctpop.i32(i32 %1026)
  %1028 = trunc i32 %1027 to i8
  %1029 = and i8 %1028, 1
  %1030 = xor i8 %1029, 1
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1030, i8* %1031, align 1
  %1032 = xor i64 32, %1019
  %1033 = trunc i64 %1032 to i32
  %1034 = xor i32 %1033, %1022
  %1035 = lshr i32 %1034, 4
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1037, i8* %1038, align 1
  %1039 = icmp eq i32 %1022, 0
  %1040 = zext i1 %1039 to i8
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1040, i8* %1041, align 1
  %1042 = lshr i32 %1022, 31
  %1043 = trunc i32 %1042 to i8
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1043, i8* %1044, align 1
  %1045 = lshr i32 %1018, 31
  %1046 = xor i32 %1042, %1045
  %1047 = add i32 %1046, %1045
  %1048 = icmp eq i32 %1047, 2
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1050, align 1
  store %struct.Memory* %loadMem_401def, %struct.Memory** %MEMORY
  %loadMem_401df2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %PC.i186
  %1055 = add i64 %1054, 90
  %1056 = load i64, i64* %PC.i186
  %1057 = add i64 %1056, 6
  %1058 = load i64, i64* %PC.i186
  %1059 = add i64 %1058, 6
  store i64 %1059, i64* %PC.i186
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1061 = load i8, i8* %1060, align 1
  store i8 %1061, i8* %BRANCH_TAKEN, align 1
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1063 = icmp ne i8 %1061, 0
  %1064 = select i1 %1063, i64 %1055, i64 %1057
  store i64 %1064, i64* %1062, align 8
  store %struct.Memory* %loadMem_401df2, %struct.Memory** %MEMORY
  %loadBr_401df2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401df2 = icmp eq i8 %loadBr_401df2, 1
  br i1 %cmpBr_401df2, label %block_.L_401e4c, label %block_401df8

block_401df8:                                     ; preds = %block_401de3
  %loadMem_401df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1066 = getelementptr inbounds %struct.GPR, %struct.GPR* %1065, i32 0, i32 33
  %1067 = getelementptr inbounds %struct.Reg, %struct.Reg* %1066, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %1067 to i64*
  %1068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1069 = getelementptr inbounds %struct.GPR, %struct.GPR* %1068, i32 0, i32 1
  %1070 = getelementptr inbounds %struct.Reg, %struct.Reg* %1069, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %1070 to i64*
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 15
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %RBP.i185 = bitcast %union.anon* %1073 to i64*
  %1074 = load i64, i64* %RBP.i185
  %1075 = sub i64 %1074, 16
  %1076 = load i64, i64* %PC.i183
  %1077 = add i64 %1076, 4
  store i64 %1077, i64* %PC.i183
  %1078 = inttoptr i64 %1075 to i64*
  %1079 = load i64, i64* %1078
  store i64 %1079, i64* %RAX.i184, align 8
  store %struct.Memory* %loadMem_401df8, %struct.Memory** %MEMORY
  %loadMem_401dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1081 = getelementptr inbounds %struct.GPR, %struct.GPR* %1080, i32 0, i32 33
  %1082 = getelementptr inbounds %struct.Reg, %struct.Reg* %1081, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1082 to i64*
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1084 = getelementptr inbounds %struct.GPR, %struct.GPR* %1083, i32 0, i32 5
  %1085 = getelementptr inbounds %struct.Reg, %struct.Reg* %1084, i32 0, i32 0
  %RCX.i181 = bitcast %union.anon* %1085 to i64*
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1087 = getelementptr inbounds %struct.GPR, %struct.GPR* %1086, i32 0, i32 15
  %1088 = getelementptr inbounds %struct.Reg, %struct.Reg* %1087, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %1088 to i64*
  %1089 = load i64, i64* %RBP.i182
  %1090 = sub i64 %1089, 44
  %1091 = load i64, i64* %PC.i180
  %1092 = add i64 %1091, 4
  store i64 %1092, i64* %PC.i180
  %1093 = inttoptr i64 %1090 to i32*
  %1094 = load i32, i32* %1093
  %1095 = sext i32 %1094 to i64
  store i64 %1095, i64* %RCX.i181, align 8
  store %struct.Memory* %loadMem_401dfc, %struct.Memory** %MEMORY
  %loadMem_401e00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 5
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RCX.i178 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 7
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %RAX.i177
  %1109 = load i64, i64* %RCX.i178
  %1110 = add i64 %1109, %1108
  %1111 = load i64, i64* %PC.i176
  %1112 = add i64 %1111, 4
  store i64 %1112, i64* %PC.i176
  %1113 = inttoptr i64 %1110 to i8*
  %1114 = load i8, i8* %1113
  %1115 = sext i8 %1114 to i64
  %1116 = and i64 %1115, 4294967295
  store i64 %1116, i64* %RDX.i179, align 8
  store %struct.Memory* %loadMem_401e00, %struct.Memory** %MEMORY
  %loadMem_401e04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 7
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %EDX.i175 = bitcast %union.anon* %1122 to i32*
  %1123 = load i32, i32* %EDX.i175
  %1124 = zext i32 %1123 to i64
  %1125 = load i64, i64* %PC.i174
  %1126 = add i64 %1125, 3
  store i64 %1126, i64* %PC.i174
  %1127 = sub i32 %1123, 46
  %1128 = icmp ult i32 %1123, 46
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1129, i8* %1130, align 1
  %1131 = and i32 %1127, 255
  %1132 = call i32 @llvm.ctpop.i32(i32 %1131)
  %1133 = trunc i32 %1132 to i8
  %1134 = and i8 %1133, 1
  %1135 = xor i8 %1134, 1
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1135, i8* %1136, align 1
  %1137 = xor i64 46, %1124
  %1138 = trunc i64 %1137 to i32
  %1139 = xor i32 %1138, %1127
  %1140 = lshr i32 %1139, 4
  %1141 = trunc i32 %1140 to i8
  %1142 = and i8 %1141, 1
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1142, i8* %1143, align 1
  %1144 = icmp eq i32 %1127, 0
  %1145 = zext i1 %1144 to i8
  %1146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1145, i8* %1146, align 1
  %1147 = lshr i32 %1127, 31
  %1148 = trunc i32 %1147 to i8
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1148, i8* %1149, align 1
  %1150 = lshr i32 %1123, 31
  %1151 = xor i32 %1147, %1150
  %1152 = add i32 %1151, %1150
  %1153 = icmp eq i32 %1152, 2
  %1154 = zext i1 %1153 to i8
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1154, i8* %1155, align 1
  store %struct.Memory* %loadMem_401e04, %struct.Memory** %MEMORY
  %loadMem_401e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1157 = getelementptr inbounds %struct.GPR, %struct.GPR* %1156, i32 0, i32 33
  %1158 = getelementptr inbounds %struct.Reg, %struct.Reg* %1157, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1158 to i64*
  %1159 = load i64, i64* %PC.i173
  %1160 = add i64 %1159, 69
  %1161 = load i64, i64* %PC.i173
  %1162 = add i64 %1161, 6
  %1163 = load i64, i64* %PC.i173
  %1164 = add i64 %1163, 6
  store i64 %1164, i64* %PC.i173
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1166 = load i8, i8* %1165, align 1
  store i8 %1166, i8* %BRANCH_TAKEN, align 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1168 = icmp ne i8 %1166, 0
  %1169 = select i1 %1168, i64 %1160, i64 %1162
  store i64 %1169, i64* %1167, align 8
  store %struct.Memory* %loadMem_401e07, %struct.Memory** %MEMORY
  %loadBr_401e07 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e07 = icmp eq i8 %loadBr_401e07, 1
  br i1 %cmpBr_401e07, label %block_.L_401e4c, label %block_401e0d

block_401e0d:                                     ; preds = %block_401df8
  %loadMem_401e0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1171 = getelementptr inbounds %struct.GPR, %struct.GPR* %1170, i32 0, i32 33
  %1172 = getelementptr inbounds %struct.Reg, %struct.Reg* %1171, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1172 to i64*
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1174 = getelementptr inbounds %struct.GPR, %struct.GPR* %1173, i32 0, i32 1
  %1175 = getelementptr inbounds %struct.Reg, %struct.Reg* %1174, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %1175 to i64*
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 15
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %1178 to i64*
  %1179 = load i64, i64* %RBP.i172
  %1180 = sub i64 %1179, 16
  %1181 = load i64, i64* %PC.i170
  %1182 = add i64 %1181, 4
  store i64 %1182, i64* %PC.i170
  %1183 = inttoptr i64 %1180 to i64*
  %1184 = load i64, i64* %1183
  store i64 %1184, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_401e0d, %struct.Memory** %MEMORY
  %loadMem_401e11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1186 = getelementptr inbounds %struct.GPR, %struct.GPR* %1185, i32 0, i32 33
  %1187 = getelementptr inbounds %struct.Reg, %struct.Reg* %1186, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1187 to i64*
  %1188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1189 = getelementptr inbounds %struct.GPR, %struct.GPR* %1188, i32 0, i32 5
  %1190 = getelementptr inbounds %struct.Reg, %struct.Reg* %1189, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %1190 to i64*
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1192 = getelementptr inbounds %struct.GPR, %struct.GPR* %1191, i32 0, i32 15
  %1193 = getelementptr inbounds %struct.Reg, %struct.Reg* %1192, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %1193 to i64*
  %1194 = load i64, i64* %RBP.i169
  %1195 = sub i64 %1194, 44
  %1196 = load i64, i64* %PC.i167
  %1197 = add i64 %1196, 4
  store i64 %1197, i64* %PC.i167
  %1198 = inttoptr i64 %1195 to i32*
  %1199 = load i32, i32* %1198
  %1200 = sext i32 %1199 to i64
  store i64 %1200, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_401e11, %struct.Memory** %MEMORY
  %loadMem_401e15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1202 = getelementptr inbounds %struct.GPR, %struct.GPR* %1201, i32 0, i32 33
  %1203 = getelementptr inbounds %struct.Reg, %struct.Reg* %1202, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1203 to i64*
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1205 = getelementptr inbounds %struct.GPR, %struct.GPR* %1204, i32 0, i32 1
  %1206 = getelementptr inbounds %struct.Reg, %struct.Reg* %1205, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1206 to i64*
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1208 = getelementptr inbounds %struct.GPR, %struct.GPR* %1207, i32 0, i32 5
  %1209 = getelementptr inbounds %struct.Reg, %struct.Reg* %1208, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %1209 to i64*
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 7
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %RDX.i166 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %RAX.i164
  %1214 = load i64, i64* %RCX.i165
  %1215 = add i64 %1214, %1213
  %1216 = load i64, i64* %PC.i163
  %1217 = add i64 %1216, 4
  store i64 %1217, i64* %PC.i163
  %1218 = inttoptr i64 %1215 to i8*
  %1219 = load i8, i8* %1218
  %1220 = sext i8 %1219 to i64
  %1221 = and i64 %1220, 4294967295
  store i64 %1221, i64* %RDX.i166, align 8
  store %struct.Memory* %loadMem_401e15, %struct.Memory** %MEMORY
  %loadMem_401e19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 33
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %1224 to i64*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 7
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %EDX.i162 = bitcast %union.anon* %1227 to i32*
  %1228 = load i32, i32* %EDX.i162
  %1229 = zext i32 %1228 to i64
  %1230 = load i64, i64* %PC.i161
  %1231 = add i64 %1230, 3
  store i64 %1231, i64* %PC.i161
  %1232 = sub i32 %1228, 95
  %1233 = icmp ult i32 %1228, 95
  %1234 = zext i1 %1233 to i8
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1234, i8* %1235, align 1
  %1236 = and i32 %1232, 255
  %1237 = call i32 @llvm.ctpop.i32(i32 %1236)
  %1238 = trunc i32 %1237 to i8
  %1239 = and i8 %1238, 1
  %1240 = xor i8 %1239, 1
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1240, i8* %1241, align 1
  %1242 = xor i64 95, %1229
  %1243 = trunc i64 %1242 to i32
  %1244 = xor i32 %1243, %1232
  %1245 = lshr i32 %1244, 4
  %1246 = trunc i32 %1245 to i8
  %1247 = and i8 %1246, 1
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1247, i8* %1248, align 1
  %1249 = icmp eq i32 %1232, 0
  %1250 = zext i1 %1249 to i8
  %1251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1250, i8* %1251, align 1
  %1252 = lshr i32 %1232, 31
  %1253 = trunc i32 %1252 to i8
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1253, i8* %1254, align 1
  %1255 = lshr i32 %1228, 31
  %1256 = xor i32 %1252, %1255
  %1257 = add i32 %1256, %1255
  %1258 = icmp eq i32 %1257, 2
  %1259 = zext i1 %1258 to i8
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1259, i8* %1260, align 1
  store %struct.Memory* %loadMem_401e19, %struct.Memory** %MEMORY
  %loadMem_401e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 33
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %PC.i160
  %1265 = add i64 %1264, 48
  %1266 = load i64, i64* %PC.i160
  %1267 = add i64 %1266, 6
  %1268 = load i64, i64* %PC.i160
  %1269 = add i64 %1268, 6
  store i64 %1269, i64* %PC.i160
  %1270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1271 = load i8, i8* %1270, align 1
  store i8 %1271, i8* %BRANCH_TAKEN, align 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1273 = icmp ne i8 %1271, 0
  %1274 = select i1 %1273, i64 %1265, i64 %1267
  store i64 %1274, i64* %1272, align 8
  store %struct.Memory* %loadMem_401e1c, %struct.Memory** %MEMORY
  %loadBr_401e1c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e1c = icmp eq i8 %loadBr_401e1c, 1
  br i1 %cmpBr_401e1c, label %block_.L_401e4c, label %block_401e22

block_401e22:                                     ; preds = %block_401e0d
  %loadMem_401e22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1276 = getelementptr inbounds %struct.GPR, %struct.GPR* %1275, i32 0, i32 33
  %1277 = getelementptr inbounds %struct.Reg, %struct.Reg* %1276, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1277 to i64*
  %1278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1279 = getelementptr inbounds %struct.GPR, %struct.GPR* %1278, i32 0, i32 1
  %1280 = getelementptr inbounds %struct.Reg, %struct.Reg* %1279, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %1280 to i64*
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1282 = getelementptr inbounds %struct.GPR, %struct.GPR* %1281, i32 0, i32 15
  %1283 = getelementptr inbounds %struct.Reg, %struct.Reg* %1282, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %1283 to i64*
  %1284 = load i64, i64* %RBP.i159
  %1285 = sub i64 %1284, 16
  %1286 = load i64, i64* %PC.i157
  %1287 = add i64 %1286, 4
  store i64 %1287, i64* %PC.i157
  %1288 = inttoptr i64 %1285 to i64*
  %1289 = load i64, i64* %1288
  store i64 %1289, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_401e22, %struct.Memory** %MEMORY
  %loadMem_401e26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1291 = getelementptr inbounds %struct.GPR, %struct.GPR* %1290, i32 0, i32 33
  %1292 = getelementptr inbounds %struct.Reg, %struct.Reg* %1291, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1292 to i64*
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1294 = getelementptr inbounds %struct.GPR, %struct.GPR* %1293, i32 0, i32 5
  %1295 = getelementptr inbounds %struct.Reg, %struct.Reg* %1294, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %1295 to i64*
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 15
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %1298 to i64*
  %1299 = load i64, i64* %RBP.i156
  %1300 = sub i64 %1299, 44
  %1301 = load i64, i64* %PC.i154
  %1302 = add i64 %1301, 4
  store i64 %1302, i64* %PC.i154
  %1303 = inttoptr i64 %1300 to i32*
  %1304 = load i32, i32* %1303
  %1305 = sext i32 %1304 to i64
  store i64 %1305, i64* %RCX.i155, align 8
  store %struct.Memory* %loadMem_401e26, %struct.Memory** %MEMORY
  %loadMem_401e2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %1311 to i64*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 5
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RCX.i152 = bitcast %union.anon* %1314 to i64*
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 7
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %RDX.i153 = bitcast %union.anon* %1317 to i64*
  %1318 = load i64, i64* %RAX.i151
  %1319 = load i64, i64* %RCX.i152
  %1320 = add i64 %1319, %1318
  %1321 = load i64, i64* %PC.i150
  %1322 = add i64 %1321, 4
  store i64 %1322, i64* %PC.i150
  %1323 = inttoptr i64 %1320 to i8*
  %1324 = load i8, i8* %1323
  %1325 = sext i8 %1324 to i64
  %1326 = and i64 %1325, 4294967295
  store i64 %1326, i64* %RDX.i153, align 8
  store %struct.Memory* %loadMem_401e2a, %struct.Memory** %MEMORY
  %loadMem_401e2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1329 to i64*
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 7
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %EDX.i149 = bitcast %union.anon* %1332 to i32*
  %1333 = load i32, i32* %EDX.i149
  %1334 = zext i32 %1333 to i64
  %1335 = load i64, i64* %PC.i148
  %1336 = add i64 %1335, 3
  store i64 %1336, i64* %PC.i148
  %1337 = sub i32 %1333, 45
  %1338 = icmp ult i32 %1333, 45
  %1339 = zext i1 %1338 to i8
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1339, i8* %1340, align 1
  %1341 = and i32 %1337, 255
  %1342 = call i32 @llvm.ctpop.i32(i32 %1341)
  %1343 = trunc i32 %1342 to i8
  %1344 = and i8 %1343, 1
  %1345 = xor i8 %1344, 1
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1345, i8* %1346, align 1
  %1347 = xor i64 45, %1334
  %1348 = trunc i64 %1347 to i32
  %1349 = xor i32 %1348, %1337
  %1350 = lshr i32 %1349, 4
  %1351 = trunc i32 %1350 to i8
  %1352 = and i8 %1351, 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1352, i8* %1353, align 1
  %1354 = icmp eq i32 %1337, 0
  %1355 = zext i1 %1354 to i8
  %1356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1355, i8* %1356, align 1
  %1357 = lshr i32 %1337, 31
  %1358 = trunc i32 %1357 to i8
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1358, i8* %1359, align 1
  %1360 = lshr i32 %1333, 31
  %1361 = xor i32 %1357, %1360
  %1362 = add i32 %1361, %1360
  %1363 = icmp eq i32 %1362, 2
  %1364 = zext i1 %1363 to i8
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1364, i8* %1365, align 1
  store %struct.Memory* %loadMem_401e2e, %struct.Memory** %MEMORY
  %loadMem_401e31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i147
  %1370 = add i64 %1369, 27
  %1371 = load i64, i64* %PC.i147
  %1372 = add i64 %1371, 6
  %1373 = load i64, i64* %PC.i147
  %1374 = add i64 %1373, 6
  store i64 %1374, i64* %PC.i147
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1376 = load i8, i8* %1375, align 1
  store i8 %1376, i8* %BRANCH_TAKEN, align 1
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1378 = icmp ne i8 %1376, 0
  %1379 = select i1 %1378, i64 %1370, i64 %1372
  store i64 %1379, i64* %1377, align 8
  store %struct.Memory* %loadMem_401e31, %struct.Memory** %MEMORY
  %loadBr_401e31 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e31 = icmp eq i8 %loadBr_401e31, 1
  br i1 %cmpBr_401e31, label %block_.L_401e4c, label %block_401e37

block_401e37:                                     ; preds = %block_401e22
  %loadMem_401e37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %1385 to i64*
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 15
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %1388 to i64*
  %1389 = load i64, i64* %RBP.i146
  %1390 = sub i64 %1389, 16
  %1391 = load i64, i64* %PC.i144
  %1392 = add i64 %1391, 4
  store i64 %1392, i64* %PC.i144
  %1393 = inttoptr i64 %1390 to i64*
  %1394 = load i64, i64* %1393
  store i64 %1394, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_401e37, %struct.Memory** %MEMORY
  %loadMem_401e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 33
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 5
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %1400 to i64*
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 15
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %1403 to i64*
  %1404 = load i64, i64* %RBP.i143
  %1405 = sub i64 %1404, 44
  %1406 = load i64, i64* %PC.i141
  %1407 = add i64 %1406, 4
  store i64 %1407, i64* %PC.i141
  %1408 = inttoptr i64 %1405 to i32*
  %1409 = load i32, i32* %1408
  %1410 = sext i32 %1409 to i64
  store i64 %1410, i64* %RCX.i142, align 8
  store %struct.Memory* %loadMem_401e3b, %struct.Memory** %MEMORY
  %loadMem_401e3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 33
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 1
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1418 = getelementptr inbounds %struct.GPR, %struct.GPR* %1417, i32 0, i32 5
  %1419 = getelementptr inbounds %struct.Reg, %struct.Reg* %1418, i32 0, i32 0
  %RCX.i139 = bitcast %union.anon* %1419 to i64*
  %1420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1421 = getelementptr inbounds %struct.GPR, %struct.GPR* %1420, i32 0, i32 7
  %1422 = getelementptr inbounds %struct.Reg, %struct.Reg* %1421, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %1422 to i64*
  %1423 = load i64, i64* %RAX.i138
  %1424 = load i64, i64* %RCX.i139
  %1425 = add i64 %1424, %1423
  %1426 = load i64, i64* %PC.i137
  %1427 = add i64 %1426, 4
  store i64 %1427, i64* %PC.i137
  %1428 = inttoptr i64 %1425 to i8*
  %1429 = load i8, i8* %1428
  %1430 = sext i8 %1429 to i64
  %1431 = and i64 %1430, 4294967295
  store i64 %1431, i64* %RDX.i140, align 8
  store %struct.Memory* %loadMem_401e3f, %struct.Memory** %MEMORY
  %loadMem_401e43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 7
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %EDX.i136 = bitcast %union.anon* %1437 to i32*
  %1438 = load i32, i32* %EDX.i136
  %1439 = zext i32 %1438 to i64
  %1440 = load i64, i64* %PC.i135
  %1441 = add i64 %1440, 3
  store i64 %1441, i64* %PC.i135
  %1442 = sub i32 %1438, 126
  %1443 = icmp ult i32 %1438, 126
  %1444 = zext i1 %1443 to i8
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1444, i8* %1445, align 1
  %1446 = and i32 %1442, 255
  %1447 = call i32 @llvm.ctpop.i32(i32 %1446)
  %1448 = trunc i32 %1447 to i8
  %1449 = and i8 %1448, 1
  %1450 = xor i8 %1449, 1
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1450, i8* %1451, align 1
  %1452 = xor i64 126, %1439
  %1453 = trunc i64 %1452 to i32
  %1454 = xor i32 %1453, %1442
  %1455 = lshr i32 %1454, 4
  %1456 = trunc i32 %1455 to i8
  %1457 = and i8 %1456, 1
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1457, i8* %1458, align 1
  %1459 = icmp eq i32 %1442, 0
  %1460 = zext i1 %1459 to i8
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1460, i8* %1461, align 1
  %1462 = lshr i32 %1442, 31
  %1463 = trunc i32 %1462 to i8
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1463, i8* %1464, align 1
  %1465 = lshr i32 %1438, 31
  %1466 = xor i32 %1462, %1465
  %1467 = add i32 %1466, %1465
  %1468 = icmp eq i32 %1467, 2
  %1469 = zext i1 %1468 to i8
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1469, i8* %1470, align 1
  store %struct.Memory* %loadMem_401e43, %struct.Memory** %MEMORY
  %loadMem_401e46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1472 = getelementptr inbounds %struct.GPR, %struct.GPR* %1471, i32 0, i32 33
  %1473 = getelementptr inbounds %struct.Reg, %struct.Reg* %1472, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1473 to i64*
  %1474 = load i64, i64* %PC.i134
  %1475 = add i64 %1474, 19
  %1476 = load i64, i64* %PC.i134
  %1477 = add i64 %1476, 6
  %1478 = load i64, i64* %PC.i134
  %1479 = add i64 %1478, 6
  store i64 %1479, i64* %PC.i134
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1481 = load i8, i8* %1480, align 1
  %1482 = icmp eq i8 %1481, 0
  %1483 = zext i1 %1482 to i8
  store i8 %1483, i8* %BRANCH_TAKEN, align 1
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1485 = select i1 %1482, i64 %1475, i64 %1477
  store i64 %1485, i64* %1484, align 8
  store %struct.Memory* %loadMem_401e46, %struct.Memory** %MEMORY
  %loadBr_401e46 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e46 = icmp eq i8 %loadBr_401e46, 1
  br i1 %cmpBr_401e46, label %block_.L_401e59, label %block_.L_401e4c

block_.L_401e4c:                                  ; preds = %block_401e37, %block_401e22, %block_401e0d, %block_401df8, %block_401de3
  %loadMem_401e4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1487 = getelementptr inbounds %struct.GPR, %struct.GPR* %1486, i32 0, i32 33
  %1488 = getelementptr inbounds %struct.Reg, %struct.Reg* %1487, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1488 to i64*
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 1
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %1491 to i64*
  %1492 = load i64, i64* %PC.i132
  %1493 = add i64 %1492, 5
  store i64 %1493, i64* %PC.i132
  store i64 4294967295, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_401e4c, %struct.Memory** %MEMORY
  %loadMem_401e51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 33
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 1
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %EAX.i130 = bitcast %union.anon* %1499 to i32*
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1501 = getelementptr inbounds %struct.GPR, %struct.GPR* %1500, i32 0, i32 15
  %1502 = getelementptr inbounds %struct.Reg, %struct.Reg* %1501, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %1502 to i64*
  %1503 = load i64, i64* %RBP.i131
  %1504 = sub i64 %1503, 68
  %1505 = load i32, i32* %EAX.i130
  %1506 = zext i32 %1505 to i64
  %1507 = load i64, i64* %PC.i129
  %1508 = add i64 %1507, 3
  store i64 %1508, i64* %PC.i129
  %1509 = inttoptr i64 %1504 to i32*
  store i32 %1505, i32* %1509
  store %struct.Memory* %loadMem_401e51, %struct.Memory** %MEMORY
  %loadMem_401e54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 33
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1512 to i64*
  %1513 = load i64, i64* %PC.i128
  %1514 = add i64 %1513, 11
  %1515 = load i64, i64* %PC.i128
  %1516 = add i64 %1515, 5
  store i64 %1516, i64* %PC.i128
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1514, i64* %1517, align 8
  store %struct.Memory* %loadMem_401e54, %struct.Memory** %MEMORY
  br label %block_.L_401e5f

block_.L_401e59:                                  ; preds = %block_401e37
  %loadMem_401e59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 1
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RAX.i126 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1525 = getelementptr inbounds %struct.GPR, %struct.GPR* %1524, i32 0, i32 15
  %1526 = getelementptr inbounds %struct.Reg, %struct.Reg* %1525, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %1526 to i64*
  %1527 = load i64, i64* %RBP.i127
  %1528 = sub i64 %1527, 52
  %1529 = load i64, i64* %PC.i125
  %1530 = add i64 %1529, 3
  store i64 %1530, i64* %PC.i125
  %1531 = inttoptr i64 %1528 to i32*
  %1532 = load i32, i32* %1531
  %1533 = zext i32 %1532 to i64
  store i64 %1533, i64* %RAX.i126, align 8
  store %struct.Memory* %loadMem_401e59, %struct.Memory** %MEMORY
  %loadMem_401e5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 1
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %1539 to i32*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 15
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RBP.i124
  %1544 = sub i64 %1543, 68
  %1545 = load i32, i32* %EAX.i123
  %1546 = zext i32 %1545 to i64
  %1547 = load i64, i64* %PC.i122
  %1548 = add i64 %1547, 3
  store i64 %1548, i64* %PC.i122
  %1549 = inttoptr i64 %1544 to i32*
  store i32 %1545, i32* %1549
  store %struct.Memory* %loadMem_401e5c, %struct.Memory** %MEMORY
  br label %block_.L_401e5f

block_.L_401e5f:                                  ; preds = %block_.L_401e59, %block_.L_401e4c
  %loadMem_401e5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 1
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 15
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %1558 to i64*
  %1559 = load i64, i64* %RBP.i121
  %1560 = sub i64 %1559, 68
  %1561 = load i64, i64* %PC.i119
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC.i119
  %1563 = inttoptr i64 %1560 to i32*
  %1564 = load i32, i32* %1563
  %1565 = zext i32 %1564 to i64
  store i64 %1565, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_401e5f, %struct.Memory** %MEMORY
  %loadMem_401e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1567 = getelementptr inbounds %struct.GPR, %struct.GPR* %1566, i32 0, i32 33
  %1568 = getelementptr inbounds %struct.Reg, %struct.Reg* %1567, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %1568 to i64*
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 5
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 15
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %1574 to i64*
  %1575 = load i64, i64* %RBP.i118
  %1576 = sub i64 %1575, 40
  %1577 = load i64, i64* %PC.i116
  %1578 = add i64 %1577, 4
  store i64 %1578, i64* %PC.i116
  %1579 = inttoptr i64 %1576 to i64*
  %1580 = load i64, i64* %1579
  store i64 %1580, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_401e62, %struct.Memory** %MEMORY
  %loadMem_401e66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 33
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 7
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 15
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %1589 to i64*
  %1590 = load i64, i64* %RBP.i115
  %1591 = sub i64 %1590, 48
  %1592 = load i64, i64* %PC.i113
  %1593 = add i64 %1592, 4
  store i64 %1593, i64* %PC.i113
  %1594 = inttoptr i64 %1591 to i32*
  %1595 = load i32, i32* %1594
  %1596 = sext i32 %1595 to i64
  store i64 %1596, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_401e66, %struct.Memory** %MEMORY
  %loadMem_401e6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1598 = getelementptr inbounds %struct.GPR, %struct.GPR* %1597, i32 0, i32 33
  %1599 = getelementptr inbounds %struct.Reg, %struct.Reg* %1598, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1599 to i64*
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 1
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %1602 to i32*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 5
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %1605 to i64*
  %1606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1607 = getelementptr inbounds %struct.GPR, %struct.GPR* %1606, i32 0, i32 7
  %1608 = getelementptr inbounds %struct.Reg, %struct.Reg* %1607, i32 0, i32 0
  %RDX.i112 = bitcast %union.anon* %1608 to i64*
  %1609 = load i64, i64* %RCX.i111
  %1610 = load i64, i64* %RDX.i112
  %1611 = mul i64 %1610, 4
  %1612 = add i64 %1611, %1609
  %1613 = load i32, i32* %EAX.i110
  %1614 = zext i32 %1613 to i64
  %1615 = load i64, i64* %PC.i109
  %1616 = add i64 %1615, 3
  store i64 %1616, i64* %PC.i109
  %1617 = inttoptr i64 %1612 to i32*
  store i32 %1613, i32* %1617
  store %struct.Memory* %loadMem_401e6a, %struct.Memory** %MEMORY
  %loadMem_401e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 33
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 1
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %1623 to i64*
  %1624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1625 = getelementptr inbounds %struct.GPR, %struct.GPR* %1624, i32 0, i32 15
  %1626 = getelementptr inbounds %struct.Reg, %struct.Reg* %1625, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %1626 to i64*
  %1627 = load i64, i64* %RBP.i108
  %1628 = sub i64 %1627, 48
  %1629 = load i64, i64* %PC.i106
  %1630 = add i64 %1629, 3
  store i64 %1630, i64* %PC.i106
  %1631 = inttoptr i64 %1628 to i32*
  %1632 = load i32, i32* %1631
  %1633 = zext i32 %1632 to i64
  store i64 %1633, i64* %RAX.i107, align 8
  store %struct.Memory* %loadMem_401e6d, %struct.Memory** %MEMORY
  %loadMem_401e70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1635 = getelementptr inbounds %struct.GPR, %struct.GPR* %1634, i32 0, i32 33
  %1636 = getelementptr inbounds %struct.Reg, %struct.Reg* %1635, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1636 to i64*
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 1
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %1639 to i64*
  %1640 = load i64, i64* %RAX.i105
  %1641 = load i64, i64* %PC.i104
  %1642 = add i64 %1641, 3
  store i64 %1642, i64* %PC.i104
  %1643 = trunc i64 %1640 to i32
  %1644 = add i32 1, %1643
  %1645 = zext i32 %1644 to i64
  store i64 %1645, i64* %RAX.i105, align 8
  %1646 = icmp ult i32 %1644, %1643
  %1647 = icmp ult i32 %1644, 1
  %1648 = or i1 %1646, %1647
  %1649 = zext i1 %1648 to i8
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1649, i8* %1650, align 1
  %1651 = and i32 %1644, 255
  %1652 = call i32 @llvm.ctpop.i32(i32 %1651)
  %1653 = trunc i32 %1652 to i8
  %1654 = and i8 %1653, 1
  %1655 = xor i8 %1654, 1
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1655, i8* %1656, align 1
  %1657 = xor i64 1, %1640
  %1658 = trunc i64 %1657 to i32
  %1659 = xor i32 %1658, %1644
  %1660 = lshr i32 %1659, 4
  %1661 = trunc i32 %1660 to i8
  %1662 = and i8 %1661, 1
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1662, i8* %1663, align 1
  %1664 = icmp eq i32 %1644, 0
  %1665 = zext i1 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1665, i8* %1666, align 1
  %1667 = lshr i32 %1644, 31
  %1668 = trunc i32 %1667 to i8
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1668, i8* %1669, align 1
  %1670 = lshr i32 %1643, 31
  %1671 = xor i32 %1667, %1670
  %1672 = add i32 %1671, %1667
  %1673 = icmp eq i32 %1672, 2
  %1674 = zext i1 %1673 to i8
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1674, i8* %1675, align 1
  store %struct.Memory* %loadMem_401e70, %struct.Memory** %MEMORY
  %loadMem_401e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 33
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1678 to i64*
  %1679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1680 = getelementptr inbounds %struct.GPR, %struct.GPR* %1679, i32 0, i32 1
  %1681 = getelementptr inbounds %struct.Reg, %struct.Reg* %1680, i32 0, i32 0
  %EAX.i102 = bitcast %union.anon* %1681 to i32*
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 15
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %1684 to i64*
  %1685 = load i64, i64* %RBP.i103
  %1686 = sub i64 %1685, 48
  %1687 = load i32, i32* %EAX.i102
  %1688 = zext i32 %1687 to i64
  %1689 = load i64, i64* %PC.i101
  %1690 = add i64 %1689, 3
  store i64 %1690, i64* %PC.i101
  %1691 = inttoptr i64 %1686 to i32*
  store i32 %1687, i32* %1691
  store %struct.Memory* %loadMem_401e73, %struct.Memory** %MEMORY
  br label %block_.L_401e76

block_.L_401e76:                                  ; preds = %block_.L_401e5f, %block_401dce, %block_401db9, %block_401da4, %block_401d8f, %block_401d7a
  %loadMem_401e76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 33
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 1
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %1697 to i64*
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 15
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %RBP.i100 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %RBP.i100
  %1702 = sub i64 %1701, 16
  %1703 = load i64, i64* %PC.i98
  %1704 = add i64 %1703, 4
  store i64 %1704, i64* %PC.i98
  %1705 = inttoptr i64 %1702 to i64*
  %1706 = load i64, i64* %1705
  store i64 %1706, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_401e76, %struct.Memory** %MEMORY
  %loadMem_401e7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 33
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %1709 to i64*
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1711 = getelementptr inbounds %struct.GPR, %struct.GPR* %1710, i32 0, i32 5
  %1712 = getelementptr inbounds %struct.Reg, %struct.Reg* %1711, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %1712 to i64*
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 15
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %1715 to i64*
  %1716 = load i64, i64* %RBP.i97
  %1717 = sub i64 %1716, 44
  %1718 = load i64, i64* %PC.i95
  %1719 = add i64 %1718, 4
  store i64 %1719, i64* %PC.i95
  %1720 = inttoptr i64 %1717 to i32*
  %1721 = load i32, i32* %1720
  %1722 = sext i32 %1721 to i64
  store i64 %1722, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_401e7a, %struct.Memory** %MEMORY
  %loadMem_401e7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 33
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 1
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %1728 to i64*
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 5
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %RCX.i93 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 7
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RDX.i94 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RAX.i92
  %1736 = load i64, i64* %RCX.i93
  %1737 = add i64 %1736, %1735
  %1738 = load i64, i64* %PC.i91
  %1739 = add i64 %1738, 4
  store i64 %1739, i64* %PC.i91
  %1740 = inttoptr i64 %1737 to i8*
  %1741 = load i8, i8* %1740
  %1742 = sext i8 %1741 to i64
  %1743 = and i64 %1742, 4294967295
  store i64 %1743, i64* %RDX.i94, align 8
  store %struct.Memory* %loadMem_401e7e, %struct.Memory** %MEMORY
  %loadMem_401e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 7
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %EDX.i90 = bitcast %union.anon* %1749 to i32*
  %1750 = load i32, i32* %EDX.i90
  %1751 = zext i32 %1750 to i64
  %1752 = load i64, i64* %PC.i89
  %1753 = add i64 %1752, 3
  store i64 %1753, i64* %PC.i89
  %1754 = sub i32 %1750, 32
  %1755 = icmp ult i32 %1750, 32
  %1756 = zext i1 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1756, i8* %1757, align 1
  %1758 = and i32 %1754, 255
  %1759 = call i32 @llvm.ctpop.i32(i32 %1758)
  %1760 = trunc i32 %1759 to i8
  %1761 = and i8 %1760, 1
  %1762 = xor i8 %1761, 1
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1762, i8* %1763, align 1
  %1764 = xor i64 32, %1751
  %1765 = trunc i64 %1764 to i32
  %1766 = xor i32 %1765, %1754
  %1767 = lshr i32 %1766, 4
  %1768 = trunc i32 %1767 to i8
  %1769 = and i8 %1768, 1
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1769, i8* %1770, align 1
  %1771 = icmp eq i32 %1754, 0
  %1772 = zext i1 %1771 to i8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1772, i8* %1773, align 1
  %1774 = lshr i32 %1754, 31
  %1775 = trunc i32 %1774 to i8
  %1776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1775, i8* %1776, align 1
  %1777 = lshr i32 %1750, 31
  %1778 = xor i32 %1774, %1777
  %1779 = add i32 %1778, %1777
  %1780 = icmp eq i32 %1779, 2
  %1781 = zext i1 %1780 to i8
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1781, i8* %1782, align 1
  store %struct.Memory* %loadMem_401e82, %struct.Memory** %MEMORY
  %loadMem_401e85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1785 to i64*
  %1786 = load i64, i64* %PC.i88
  %1787 = add i64 %1786, 99
  %1788 = load i64, i64* %PC.i88
  %1789 = add i64 %1788, 6
  %1790 = load i64, i64* %PC.i88
  %1791 = add i64 %1790, 6
  store i64 %1791, i64* %PC.i88
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1793 = load i8, i8* %1792, align 1
  store i8 %1793, i8* %BRANCH_TAKEN, align 1
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1795 = icmp ne i8 %1793, 0
  %1796 = select i1 %1795, i64 %1787, i64 %1789
  store i64 %1796, i64* %1794, align 8
  store %struct.Memory* %loadMem_401e85, %struct.Memory** %MEMORY
  %loadBr_401e85 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e85 = icmp eq i8 %loadBr_401e85, 1
  br i1 %cmpBr_401e85, label %block_.L_401ee8, label %block_401e8b

block_401e8b:                                     ; preds = %block_.L_401e76
  %loadMem_401e8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 33
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %1799 to i64*
  %1800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1801 = getelementptr inbounds %struct.GPR, %struct.GPR* %1800, i32 0, i32 1
  %1802 = getelementptr inbounds %struct.Reg, %struct.Reg* %1801, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %1802 to i64*
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1804 = getelementptr inbounds %struct.GPR, %struct.GPR* %1803, i32 0, i32 15
  %1805 = getelementptr inbounds %struct.Reg, %struct.Reg* %1804, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %1805 to i64*
  %1806 = load i64, i64* %RBP.i87
  %1807 = sub i64 %1806, 16
  %1808 = load i64, i64* %PC.i85
  %1809 = add i64 %1808, 4
  store i64 %1809, i64* %PC.i85
  %1810 = inttoptr i64 %1807 to i64*
  %1811 = load i64, i64* %1810
  store i64 %1811, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_401e8b, %struct.Memory** %MEMORY
  %loadMem_401e8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 33
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 5
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 15
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %1820 to i64*
  %1821 = load i64, i64* %RBP.i84
  %1822 = sub i64 %1821, 44
  %1823 = load i64, i64* %PC.i82
  %1824 = add i64 %1823, 4
  store i64 %1824, i64* %PC.i82
  %1825 = inttoptr i64 %1822 to i32*
  %1826 = load i32, i32* %1825
  %1827 = sext i32 %1826 to i64
  store i64 %1827, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_401e8f, %struct.Memory** %MEMORY
  %loadMem_401e93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 33
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %1830 to i64*
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 1
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 5
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 7
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %RDX.i81 = bitcast %union.anon* %1839 to i64*
  %1840 = load i64, i64* %RAX.i79
  %1841 = load i64, i64* %RCX.i80
  %1842 = add i64 %1841, %1840
  %1843 = load i64, i64* %PC.i78
  %1844 = add i64 %1843, 4
  store i64 %1844, i64* %PC.i78
  %1845 = inttoptr i64 %1842 to i8*
  %1846 = load i8, i8* %1845
  %1847 = sext i8 %1846 to i64
  %1848 = and i64 %1847, 4294967295
  store i64 %1848, i64* %RDX.i81, align 8
  store %struct.Memory* %loadMem_401e93, %struct.Memory** %MEMORY
  %loadMem_401e97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1850 = getelementptr inbounds %struct.GPR, %struct.GPR* %1849, i32 0, i32 33
  %1851 = getelementptr inbounds %struct.Reg, %struct.Reg* %1850, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %1851 to i64*
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 7
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %EDX.i77 = bitcast %union.anon* %1854 to i32*
  %1855 = load i32, i32* %EDX.i77
  %1856 = zext i32 %1855 to i64
  %1857 = load i64, i64* %PC.i76
  %1858 = add i64 %1857, 3
  store i64 %1858, i64* %PC.i76
  %1859 = sub i32 %1855, 46
  %1860 = icmp ult i32 %1855, 46
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1861, i8* %1862, align 1
  %1863 = and i32 %1859, 255
  %1864 = call i32 @llvm.ctpop.i32(i32 %1863)
  %1865 = trunc i32 %1864 to i8
  %1866 = and i8 %1865, 1
  %1867 = xor i8 %1866, 1
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1867, i8* %1868, align 1
  %1869 = xor i64 46, %1856
  %1870 = trunc i64 %1869 to i32
  %1871 = xor i32 %1870, %1859
  %1872 = lshr i32 %1871, 4
  %1873 = trunc i32 %1872 to i8
  %1874 = and i8 %1873, 1
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1874, i8* %1875, align 1
  %1876 = icmp eq i32 %1859, 0
  %1877 = zext i1 %1876 to i8
  %1878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1877, i8* %1878, align 1
  %1879 = lshr i32 %1859, 31
  %1880 = trunc i32 %1879 to i8
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1880, i8* %1881, align 1
  %1882 = lshr i32 %1855, 31
  %1883 = xor i32 %1879, %1882
  %1884 = add i32 %1883, %1882
  %1885 = icmp eq i32 %1884, 2
  %1886 = zext i1 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1886, i8* %1887, align 1
  store %struct.Memory* %loadMem_401e97, %struct.Memory** %MEMORY
  %loadMem_401e9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 33
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %1890 to i64*
  %1891 = load i64, i64* %PC.i75
  %1892 = add i64 %1891, 78
  %1893 = load i64, i64* %PC.i75
  %1894 = add i64 %1893, 6
  %1895 = load i64, i64* %PC.i75
  %1896 = add i64 %1895, 6
  store i64 %1896, i64* %PC.i75
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1898 = load i8, i8* %1897, align 1
  store i8 %1898, i8* %BRANCH_TAKEN, align 1
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1900 = icmp ne i8 %1898, 0
  %1901 = select i1 %1900, i64 %1892, i64 %1894
  store i64 %1901, i64* %1899, align 8
  store %struct.Memory* %loadMem_401e9a, %struct.Memory** %MEMORY
  %loadBr_401e9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401e9a = icmp eq i8 %loadBr_401e9a, 1
  br i1 %cmpBr_401e9a, label %block_.L_401ee8, label %block_401ea0

block_401ea0:                                     ; preds = %block_401e8b
  %loadMem_401ea0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 33
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %1904 to i64*
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1906 = getelementptr inbounds %struct.GPR, %struct.GPR* %1905, i32 0, i32 1
  %1907 = getelementptr inbounds %struct.Reg, %struct.Reg* %1906, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %1907 to i64*
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1909 = getelementptr inbounds %struct.GPR, %struct.GPR* %1908, i32 0, i32 15
  %1910 = getelementptr inbounds %struct.Reg, %struct.Reg* %1909, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %1910 to i64*
  %1911 = load i64, i64* %RBP.i74
  %1912 = sub i64 %1911, 16
  %1913 = load i64, i64* %PC.i72
  %1914 = add i64 %1913, 4
  store i64 %1914, i64* %PC.i72
  %1915 = inttoptr i64 %1912 to i64*
  %1916 = load i64, i64* %1915
  store i64 %1916, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_401ea0, %struct.Memory** %MEMORY
  %loadMem_401ea4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1918 = getelementptr inbounds %struct.GPR, %struct.GPR* %1917, i32 0, i32 33
  %1919 = getelementptr inbounds %struct.Reg, %struct.Reg* %1918, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %1919 to i64*
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1921 = getelementptr inbounds %struct.GPR, %struct.GPR* %1920, i32 0, i32 5
  %1922 = getelementptr inbounds %struct.Reg, %struct.Reg* %1921, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %1922 to i64*
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1924 = getelementptr inbounds %struct.GPR, %struct.GPR* %1923, i32 0, i32 15
  %1925 = getelementptr inbounds %struct.Reg, %struct.Reg* %1924, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %1925 to i64*
  %1926 = load i64, i64* %RBP.i71
  %1927 = sub i64 %1926, 44
  %1928 = load i64, i64* %PC.i69
  %1929 = add i64 %1928, 4
  store i64 %1929, i64* %PC.i69
  %1930 = inttoptr i64 %1927 to i32*
  %1931 = load i32, i32* %1930
  %1932 = sext i32 %1931 to i64
  store i64 %1932, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_401ea4, %struct.Memory** %MEMORY
  %loadMem_401ea8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1934 = getelementptr inbounds %struct.GPR, %struct.GPR* %1933, i32 0, i32 33
  %1935 = getelementptr inbounds %struct.Reg, %struct.Reg* %1934, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %1935 to i64*
  %1936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1937 = getelementptr inbounds %struct.GPR, %struct.GPR* %1936, i32 0, i32 1
  %1938 = getelementptr inbounds %struct.Reg, %struct.Reg* %1937, i32 0, i32 0
  %RAX.i66 = bitcast %union.anon* %1938 to i64*
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 5
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 7
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %1944 to i64*
  %1945 = load i64, i64* %RAX.i66
  %1946 = load i64, i64* %RCX.i67
  %1947 = add i64 %1946, %1945
  %1948 = load i64, i64* %PC.i65
  %1949 = add i64 %1948, 4
  store i64 %1949, i64* %PC.i65
  %1950 = inttoptr i64 %1947 to i8*
  %1951 = load i8, i8* %1950
  %1952 = sext i8 %1951 to i64
  %1953 = and i64 %1952, 4294967295
  store i64 %1953, i64* %RDX.i68, align 8
  store %struct.Memory* %loadMem_401ea8, %struct.Memory** %MEMORY
  %loadMem_401eac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1955 = getelementptr inbounds %struct.GPR, %struct.GPR* %1954, i32 0, i32 33
  %1956 = getelementptr inbounds %struct.Reg, %struct.Reg* %1955, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %1956 to i64*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1958 = getelementptr inbounds %struct.GPR, %struct.GPR* %1957, i32 0, i32 7
  %1959 = getelementptr inbounds %struct.Reg, %struct.Reg* %1958, i32 0, i32 0
  %EDX.i64 = bitcast %union.anon* %1959 to i32*
  %1960 = load i32, i32* %EDX.i64
  %1961 = zext i32 %1960 to i64
  %1962 = load i64, i64* %PC.i63
  %1963 = add i64 %1962, 3
  store i64 %1963, i64* %PC.i63
  %1964 = sub i32 %1960, 95
  %1965 = icmp ult i32 %1960, 95
  %1966 = zext i1 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1966, i8* %1967, align 1
  %1968 = and i32 %1964, 255
  %1969 = call i32 @llvm.ctpop.i32(i32 %1968)
  %1970 = trunc i32 %1969 to i8
  %1971 = and i8 %1970, 1
  %1972 = xor i8 %1971, 1
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1972, i8* %1973, align 1
  %1974 = xor i64 95, %1961
  %1975 = trunc i64 %1974 to i32
  %1976 = xor i32 %1975, %1964
  %1977 = lshr i32 %1976, 4
  %1978 = trunc i32 %1977 to i8
  %1979 = and i8 %1978, 1
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1979, i8* %1980, align 1
  %1981 = icmp eq i32 %1964, 0
  %1982 = zext i1 %1981 to i8
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1982, i8* %1983, align 1
  %1984 = lshr i32 %1964, 31
  %1985 = trunc i32 %1984 to i8
  %1986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1985, i8* %1986, align 1
  %1987 = lshr i32 %1960, 31
  %1988 = xor i32 %1984, %1987
  %1989 = add i32 %1988, %1987
  %1990 = icmp eq i32 %1989, 2
  %1991 = zext i1 %1990 to i8
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1991, i8* %1992, align 1
  store %struct.Memory* %loadMem_401eac, %struct.Memory** %MEMORY
  %loadMem_401eaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %1995 to i64*
  %1996 = load i64, i64* %PC.i62
  %1997 = add i64 %1996, 57
  %1998 = load i64, i64* %PC.i62
  %1999 = add i64 %1998, 6
  %2000 = load i64, i64* %PC.i62
  %2001 = add i64 %2000, 6
  store i64 %2001, i64* %PC.i62
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2003 = load i8, i8* %2002, align 1
  store i8 %2003, i8* %BRANCH_TAKEN, align 1
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2005 = icmp ne i8 %2003, 0
  %2006 = select i1 %2005, i64 %1997, i64 %1999
  store i64 %2006, i64* %2004, align 8
  store %struct.Memory* %loadMem_401eaf, %struct.Memory** %MEMORY
  %loadBr_401eaf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401eaf = icmp eq i8 %loadBr_401eaf, 1
  br i1 %cmpBr_401eaf, label %block_.L_401ee8, label %block_401eb5

block_401eb5:                                     ; preds = %block_401ea0
  %loadMem_401eb5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 33
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2009 to i64*
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 1
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %RAX.i60 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 15
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RBP.i61
  %2017 = sub i64 %2016, 16
  %2018 = load i64, i64* %PC.i59
  %2019 = add i64 %2018, 4
  store i64 %2019, i64* %PC.i59
  %2020 = inttoptr i64 %2017 to i64*
  %2021 = load i64, i64* %2020
  store i64 %2021, i64* %RAX.i60, align 8
  store %struct.Memory* %loadMem_401eb5, %struct.Memory** %MEMORY
  %loadMem_401eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2023 = getelementptr inbounds %struct.GPR, %struct.GPR* %2022, i32 0, i32 33
  %2024 = getelementptr inbounds %struct.Reg, %struct.Reg* %2023, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2024 to i64*
  %2025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2026 = getelementptr inbounds %struct.GPR, %struct.GPR* %2025, i32 0, i32 5
  %2027 = getelementptr inbounds %struct.Reg, %struct.Reg* %2026, i32 0, i32 0
  %RCX.i57 = bitcast %union.anon* %2027 to i64*
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2029 = getelementptr inbounds %struct.GPR, %struct.GPR* %2028, i32 0, i32 15
  %2030 = getelementptr inbounds %struct.Reg, %struct.Reg* %2029, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %2030 to i64*
  %2031 = load i64, i64* %RBP.i58
  %2032 = sub i64 %2031, 44
  %2033 = load i64, i64* %PC.i56
  %2034 = add i64 %2033, 4
  store i64 %2034, i64* %PC.i56
  %2035 = inttoptr i64 %2032 to i32*
  %2036 = load i32, i32* %2035
  %2037 = sext i32 %2036 to i64
  store i64 %2037, i64* %RCX.i57, align 8
  store %struct.Memory* %loadMem_401eb9, %struct.Memory** %MEMORY
  %loadMem_401ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2039 = getelementptr inbounds %struct.GPR, %struct.GPR* %2038, i32 0, i32 33
  %2040 = getelementptr inbounds %struct.Reg, %struct.Reg* %2039, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2040 to i64*
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2042 = getelementptr inbounds %struct.GPR, %struct.GPR* %2041, i32 0, i32 1
  %2043 = getelementptr inbounds %struct.Reg, %struct.Reg* %2042, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %2043 to i64*
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2045 = getelementptr inbounds %struct.GPR, %struct.GPR* %2044, i32 0, i32 5
  %2046 = getelementptr inbounds %struct.Reg, %struct.Reg* %2045, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %2046 to i64*
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2048 = getelementptr inbounds %struct.GPR, %struct.GPR* %2047, i32 0, i32 7
  %2049 = getelementptr inbounds %struct.Reg, %struct.Reg* %2048, i32 0, i32 0
  %RDX.i55 = bitcast %union.anon* %2049 to i64*
  %2050 = load i64, i64* %RAX.i53
  %2051 = load i64, i64* %RCX.i54
  %2052 = add i64 %2051, %2050
  %2053 = load i64, i64* %PC.i52
  %2054 = add i64 %2053, 4
  store i64 %2054, i64* %PC.i52
  %2055 = inttoptr i64 %2052 to i8*
  %2056 = load i8, i8* %2055
  %2057 = sext i8 %2056 to i64
  %2058 = and i64 %2057, 4294967295
  store i64 %2058, i64* %RDX.i55, align 8
  store %struct.Memory* %loadMem_401ebd, %struct.Memory** %MEMORY
  %loadMem_401ec1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 7
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %EDX.i51 = bitcast %union.anon* %2064 to i32*
  %2065 = load i32, i32* %EDX.i51
  %2066 = zext i32 %2065 to i64
  %2067 = load i64, i64* %PC.i50
  %2068 = add i64 %2067, 3
  store i64 %2068, i64* %PC.i50
  %2069 = sub i32 %2065, 45
  %2070 = icmp ult i32 %2065, 45
  %2071 = zext i1 %2070 to i8
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2071, i8* %2072, align 1
  %2073 = and i32 %2069, 255
  %2074 = call i32 @llvm.ctpop.i32(i32 %2073)
  %2075 = trunc i32 %2074 to i8
  %2076 = and i8 %2075, 1
  %2077 = xor i8 %2076, 1
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2077, i8* %2078, align 1
  %2079 = xor i64 45, %2066
  %2080 = trunc i64 %2079 to i32
  %2081 = xor i32 %2080, %2069
  %2082 = lshr i32 %2081, 4
  %2083 = trunc i32 %2082 to i8
  %2084 = and i8 %2083, 1
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2084, i8* %2085, align 1
  %2086 = icmp eq i32 %2069, 0
  %2087 = zext i1 %2086 to i8
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2087, i8* %2088, align 1
  %2089 = lshr i32 %2069, 31
  %2090 = trunc i32 %2089 to i8
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2090, i8* %2091, align 1
  %2092 = lshr i32 %2065, 31
  %2093 = xor i32 %2089, %2092
  %2094 = add i32 %2093, %2092
  %2095 = icmp eq i32 %2094, 2
  %2096 = zext i1 %2095 to i8
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2096, i8* %2097, align 1
  store %struct.Memory* %loadMem_401ec1, %struct.Memory** %MEMORY
  %loadMem_401ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %PC.i49
  %2102 = add i64 %2101, 36
  %2103 = load i64, i64* %PC.i49
  %2104 = add i64 %2103, 6
  %2105 = load i64, i64* %PC.i49
  %2106 = add i64 %2105, 6
  store i64 %2106, i64* %PC.i49
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2108 = load i8, i8* %2107, align 1
  store i8 %2108, i8* %BRANCH_TAKEN, align 1
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2110 = icmp ne i8 %2108, 0
  %2111 = select i1 %2110, i64 %2102, i64 %2104
  store i64 %2111, i64* %2109, align 8
  store %struct.Memory* %loadMem_401ec4, %struct.Memory** %MEMORY
  %loadBr_401ec4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ec4 = icmp eq i8 %loadBr_401ec4, 1
  br i1 %cmpBr_401ec4, label %block_.L_401ee8, label %block_401eca

block_401eca:                                     ; preds = %block_401eb5
  %loadMem_401eca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 1
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 15
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %RBP.i48
  %2122 = sub i64 %2121, 16
  %2123 = load i64, i64* %PC.i46
  %2124 = add i64 %2123, 4
  store i64 %2124, i64* %PC.i46
  %2125 = inttoptr i64 %2122 to i64*
  %2126 = load i64, i64* %2125
  store i64 %2126, i64* %RAX.i47, align 8
  store %struct.Memory* %loadMem_401eca, %struct.Memory** %MEMORY
  %loadMem_401ece = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 5
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 15
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %RBP.i45
  %2137 = sub i64 %2136, 44
  %2138 = load i64, i64* %PC.i43
  %2139 = add i64 %2138, 4
  store i64 %2139, i64* %PC.i43
  %2140 = inttoptr i64 %2137 to i32*
  %2141 = load i32, i32* %2140
  %2142 = sext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i44, align 8
  store %struct.Memory* %loadMem_401ece, %struct.Memory** %MEMORY
  %loadMem_401ed2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 1
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 5
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RCX.i41 = bitcast %union.anon* %2151 to i64*
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2153 = getelementptr inbounds %struct.GPR, %struct.GPR* %2152, i32 0, i32 7
  %2154 = getelementptr inbounds %struct.Reg, %struct.Reg* %2153, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %2154 to i64*
  %2155 = load i64, i64* %RAX.i40
  %2156 = load i64, i64* %RCX.i41
  %2157 = add i64 %2156, %2155
  %2158 = load i64, i64* %PC.i39
  %2159 = add i64 %2158, 4
  store i64 %2159, i64* %PC.i39
  %2160 = inttoptr i64 %2157 to i8*
  %2161 = load i8, i8* %2160
  %2162 = sext i8 %2161 to i64
  %2163 = and i64 %2162, 4294967295
  store i64 %2163, i64* %RDX.i42, align 8
  store %struct.Memory* %loadMem_401ed2, %struct.Memory** %MEMORY
  %loadMem_401ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 7
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2169 to i32*
  %2170 = load i32, i32* %EDX.i
  %2171 = zext i32 %2170 to i64
  %2172 = load i64, i64* %PC.i38
  %2173 = add i64 %2172, 3
  store i64 %2173, i64* %PC.i38
  %2174 = sub i32 %2170, 126
  %2175 = icmp ult i32 %2170, 126
  %2176 = zext i1 %2175 to i8
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2176, i8* %2177, align 1
  %2178 = and i32 %2174, 255
  %2179 = call i32 @llvm.ctpop.i32(i32 %2178)
  %2180 = trunc i32 %2179 to i8
  %2181 = and i8 %2180, 1
  %2182 = xor i8 %2181, 1
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2182, i8* %2183, align 1
  %2184 = xor i64 126, %2171
  %2185 = trunc i64 %2184 to i32
  %2186 = xor i32 %2185, %2174
  %2187 = lshr i32 %2186, 4
  %2188 = trunc i32 %2187 to i8
  %2189 = and i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2189, i8* %2190, align 1
  %2191 = icmp eq i32 %2174, 0
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2192, i8* %2193, align 1
  %2194 = lshr i32 %2174, 31
  %2195 = trunc i32 %2194 to i8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2195, i8* %2196, align 1
  %2197 = lshr i32 %2170, 31
  %2198 = xor i32 %2194, %2197
  %2199 = add i32 %2198, %2197
  %2200 = icmp eq i32 %2199, 2
  %2201 = zext i1 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2201, i8* %2202, align 1
  store %struct.Memory* %loadMem_401ed6, %struct.Memory** %MEMORY
  %loadMem_401ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2204 = getelementptr inbounds %struct.GPR, %struct.GPR* %2203, i32 0, i32 33
  %2205 = getelementptr inbounds %struct.Reg, %struct.Reg* %2204, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %2205 to i64*
  %2206 = load i64, i64* %PC.i37
  %2207 = add i64 %2206, 15
  %2208 = load i64, i64* %PC.i37
  %2209 = add i64 %2208, 6
  %2210 = load i64, i64* %PC.i37
  %2211 = add i64 %2210, 6
  store i64 %2211, i64* %PC.i37
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2213 = load i8, i8* %2212, align 1
  store i8 %2213, i8* %BRANCH_TAKEN, align 1
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2215 = icmp ne i8 %2213, 0
  %2216 = select i1 %2215, i64 %2207, i64 %2209
  store i64 %2216, i64* %2214, align 8
  store %struct.Memory* %loadMem_401ed9, %struct.Memory** %MEMORY
  %loadBr_401ed9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_401ed9 = icmp eq i8 %loadBr_401ed9, 1
  br i1 %cmpBr_401ed9, label %block_.L_401ee8, label %block_401edf

block_401edf:                                     ; preds = %block_401eca
  %loadMem_401edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 1
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RBP.i36
  %2227 = sub i64 %2226, 52
  %2228 = load i64, i64* %PC.i34
  %2229 = add i64 %2228, 3
  store i64 %2229, i64* %PC.i34
  %2230 = inttoptr i64 %2227 to i32*
  %2231 = load i32, i32* %2230
  %2232 = zext i32 %2231 to i64
  store i64 %2232, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_401edf, %struct.Memory** %MEMORY
  %loadMem_401ee2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %2238 to i64*
  %2239 = load i64, i64* %RAX.i33
  %2240 = load i64, i64* %PC.i32
  %2241 = add i64 %2240, 3
  store i64 %2241, i64* %PC.i32
  %2242 = trunc i64 %2239 to i32
  %2243 = add i32 1, %2242
  %2244 = zext i32 %2243 to i64
  store i64 %2244, i64* %RAX.i33, align 8
  %2245 = icmp ult i32 %2243, %2242
  %2246 = icmp ult i32 %2243, 1
  %2247 = or i1 %2245, %2246
  %2248 = zext i1 %2247 to i8
  %2249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2248, i8* %2249, align 1
  %2250 = and i32 %2243, 255
  %2251 = call i32 @llvm.ctpop.i32(i32 %2250)
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = xor i8 %2253, 1
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2254, i8* %2255, align 1
  %2256 = xor i64 1, %2239
  %2257 = trunc i64 %2256 to i32
  %2258 = xor i32 %2257, %2243
  %2259 = lshr i32 %2258, 4
  %2260 = trunc i32 %2259 to i8
  %2261 = and i8 %2260, 1
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2261, i8* %2262, align 1
  %2263 = icmp eq i32 %2243, 0
  %2264 = zext i1 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2264, i8* %2265, align 1
  %2266 = lshr i32 %2243, 31
  %2267 = trunc i32 %2266 to i8
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2267, i8* %2268, align 1
  %2269 = lshr i32 %2242, 31
  %2270 = xor i32 %2266, %2269
  %2271 = add i32 %2270, %2266
  %2272 = icmp eq i32 %2271, 2
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2273, i8* %2274, align 1
  store %struct.Memory* %loadMem_401ee2, %struct.Memory** %MEMORY
  %loadMem_401ee5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2276 = getelementptr inbounds %struct.GPR, %struct.GPR* %2275, i32 0, i32 33
  %2277 = getelementptr inbounds %struct.Reg, %struct.Reg* %2276, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %2277 to i64*
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2279 = getelementptr inbounds %struct.GPR, %struct.GPR* %2278, i32 0, i32 1
  %2280 = getelementptr inbounds %struct.Reg, %struct.Reg* %2279, i32 0, i32 0
  %EAX.i30 = bitcast %union.anon* %2280 to i32*
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 15
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %2283 to i64*
  %2284 = load i64, i64* %RBP.i31
  %2285 = sub i64 %2284, 52
  %2286 = load i32, i32* %EAX.i30
  %2287 = zext i32 %2286 to i64
  %2288 = load i64, i64* %PC.i29
  %2289 = add i64 %2288, 3
  store i64 %2289, i64* %PC.i29
  %2290 = inttoptr i64 %2285 to i32*
  store i32 %2286, i32* %2290
  store %struct.Memory* %loadMem_401ee5, %struct.Memory** %MEMORY
  br label %block_.L_401ee8

block_.L_401ee8:                                  ; preds = %block_401edf, %block_401eca, %block_401eb5, %block_401ea0, %block_401e8b, %block_.L_401e76
  %loadMem_401ee8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2293 to i64*
  %2294 = load i64, i64* %PC.i28
  %2295 = add i64 %2294, 5
  %2296 = load i64, i64* %PC.i28
  %2297 = add i64 %2296, 5
  store i64 %2297, i64* %PC.i28
  %2298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2295, i64* %2298, align 8
  store %struct.Memory* %loadMem_401ee8, %struct.Memory** %MEMORY
  br label %block_.L_401eed

block_.L_401eed:                                  ; preds = %block_.L_401ee8
  %loadMem_401eed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %2304 to i64*
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 15
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %RBP.i27 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %RBP.i27
  %2309 = sub i64 %2308, 44
  %2310 = load i64, i64* %PC.i25
  %2311 = add i64 %2310, 3
  store i64 %2311, i64* %PC.i25
  %2312 = inttoptr i64 %2309 to i32*
  %2313 = load i32, i32* %2312
  %2314 = zext i32 %2313 to i64
  store i64 %2314, i64* %RAX.i26, align 8
  store %struct.Memory* %loadMem_401eed, %struct.Memory** %MEMORY
  %loadMem_401ef0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2316 = getelementptr inbounds %struct.GPR, %struct.GPR* %2315, i32 0, i32 33
  %2317 = getelementptr inbounds %struct.Reg, %struct.Reg* %2316, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2317 to i64*
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2319 = getelementptr inbounds %struct.GPR, %struct.GPR* %2318, i32 0, i32 1
  %2320 = getelementptr inbounds %struct.Reg, %struct.Reg* %2319, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %2320 to i64*
  %2321 = load i64, i64* %RAX.i24
  %2322 = load i64, i64* %PC.i23
  %2323 = add i64 %2322, 3
  store i64 %2323, i64* %PC.i23
  %2324 = trunc i64 %2321 to i32
  %2325 = add i32 1, %2324
  %2326 = zext i32 %2325 to i64
  store i64 %2326, i64* %RAX.i24, align 8
  %2327 = icmp ult i32 %2325, %2324
  %2328 = icmp ult i32 %2325, 1
  %2329 = or i1 %2327, %2328
  %2330 = zext i1 %2329 to i8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2330, i8* %2331, align 1
  %2332 = and i32 %2325, 255
  %2333 = call i32 @llvm.ctpop.i32(i32 %2332)
  %2334 = trunc i32 %2333 to i8
  %2335 = and i8 %2334, 1
  %2336 = xor i8 %2335, 1
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2336, i8* %2337, align 1
  %2338 = xor i64 1, %2321
  %2339 = trunc i64 %2338 to i32
  %2340 = xor i32 %2339, %2325
  %2341 = lshr i32 %2340, 4
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2343, i8* %2344, align 1
  %2345 = icmp eq i32 %2325, 0
  %2346 = zext i1 %2345 to i8
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2346, i8* %2347, align 1
  %2348 = lshr i32 %2325, 31
  %2349 = trunc i32 %2348 to i8
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2349, i8* %2350, align 1
  %2351 = lshr i32 %2324, 31
  %2352 = xor i32 %2348, %2351
  %2353 = add i32 %2352, %2348
  %2354 = icmp eq i32 %2353, 2
  %2355 = zext i1 %2354 to i8
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2355, i8* %2356, align 1
  store %struct.Memory* %loadMem_401ef0, %struct.Memory** %MEMORY
  %loadMem_401ef3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 1
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2362 to i32*
  %2363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2364 = getelementptr inbounds %struct.GPR, %struct.GPR* %2363, i32 0, i32 15
  %2365 = getelementptr inbounds %struct.Reg, %struct.Reg* %2364, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %2365 to i64*
  %2366 = load i64, i64* %RBP.i22
  %2367 = sub i64 %2366, 44
  %2368 = load i32, i32* %EAX.i
  %2369 = zext i32 %2368 to i64
  %2370 = load i64, i64* %PC.i21
  %2371 = add i64 %2370, 3
  store i64 %2371, i64* %PC.i21
  %2372 = inttoptr i64 %2367 to i32*
  store i32 %2368, i32* %2372
  store %struct.Memory* %loadMem_401ef3, %struct.Memory** %MEMORY
  %loadMem_401ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 33
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %PC.i20
  %2377 = add i64 %2376, -401
  %2378 = load i64, i64* %PC.i20
  %2379 = add i64 %2378, 5
  store i64 %2379, i64* %PC.i20
  %2380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2377, i64* %2380, align 8
  store %struct.Memory* %loadMem_401ef6, %struct.Memory** %MEMORY
  br label %block_.L_401d65

block_.L_401efb:                                  ; preds = %block_.L_401d65
  %loadMem_401efb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 1
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %PC.i19
  %2388 = add i64 %2387, 5
  store i64 %2388, i64* %PC.i19
  store i64 1, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_401efb, %struct.Memory** %MEMORY
  %loadMem_401f00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2390 = getelementptr inbounds %struct.GPR, %struct.GPR* %2389, i32 0, i32 33
  %2391 = getelementptr inbounds %struct.Reg, %struct.Reg* %2390, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2391 to i64*
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2393 = getelementptr inbounds %struct.GPR, %struct.GPR* %2392, i32 0, i32 5
  %2394 = getelementptr inbounds %struct.Reg, %struct.Reg* %2393, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2394 to i64*
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 15
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %2397 to i64*
  %2398 = load i64, i64* %RBP.i18
  %2399 = sub i64 %2398, 48
  %2400 = load i64, i64* %PC.i17
  %2401 = add i64 %2400, 3
  store i64 %2401, i64* %PC.i17
  %2402 = inttoptr i64 %2399 to i32*
  %2403 = load i32, i32* %2402
  %2404 = zext i32 %2403 to i64
  store i64 %2404, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_401f00, %struct.Memory** %MEMORY
  %loadMem_401f03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2406 = getelementptr inbounds %struct.GPR, %struct.GPR* %2405, i32 0, i32 33
  %2407 = getelementptr inbounds %struct.Reg, %struct.Reg* %2406, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2407 to i64*
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2409 = getelementptr inbounds %struct.GPR, %struct.GPR* %2408, i32 0, i32 7
  %2410 = getelementptr inbounds %struct.Reg, %struct.Reg* %2409, i32 0, i32 0
  %RDX.i15 = bitcast %union.anon* %2410 to i64*
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2412 = getelementptr inbounds %struct.GPR, %struct.GPR* %2411, i32 0, i32 15
  %2413 = getelementptr inbounds %struct.Reg, %struct.Reg* %2412, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %2413 to i64*
  %2414 = load i64, i64* %RBP.i16
  %2415 = sub i64 %2414, 32
  %2416 = load i64, i64* %PC.i14
  %2417 = add i64 %2416, 4
  store i64 %2417, i64* %PC.i14
  %2418 = inttoptr i64 %2415 to i64*
  %2419 = load i64, i64* %2418
  store i64 %2419, i64* %RDX.i15, align 8
  store %struct.Memory* %loadMem_401f03, %struct.Memory** %MEMORY
  %loadMem_401f07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2421 = getelementptr inbounds %struct.GPR, %struct.GPR* %2420, i32 0, i32 33
  %2422 = getelementptr inbounds %struct.Reg, %struct.Reg* %2421, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2422 to i64*
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2424 = getelementptr inbounds %struct.GPR, %struct.GPR* %2423, i32 0, i32 5
  %2425 = getelementptr inbounds %struct.Reg, %struct.Reg* %2424, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2425 to i32*
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2427 = getelementptr inbounds %struct.GPR, %struct.GPR* %2426, i32 0, i32 7
  %2428 = getelementptr inbounds %struct.Reg, %struct.Reg* %2427, i32 0, i32 0
  %RDX.i13 = bitcast %union.anon* %2428 to i64*
  %2429 = load i64, i64* %RDX.i13
  %2430 = load i32, i32* %ECX.i
  %2431 = zext i32 %2430 to i64
  %2432 = load i64, i64* %PC.i12
  %2433 = add i64 %2432, 2
  store i64 %2433, i64* %PC.i12
  %2434 = inttoptr i64 %2429 to i32*
  store i32 %2430, i32* %2434
  store %struct.Memory* %loadMem_401f07, %struct.Memory** %MEMORY
  %loadMem_401f09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 7
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RDX.i10 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 15
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RBP.i11
  %2445 = sub i64 %2444, 40
  %2446 = load i64, i64* %PC.i9
  %2447 = add i64 %2446, 4
  store i64 %2447, i64* %PC.i9
  %2448 = inttoptr i64 %2445 to i64*
  %2449 = load i64, i64* %2448
  store i64 %2449, i64* %RDX.i10, align 8
  store %struct.Memory* %loadMem_401f09, %struct.Memory** %MEMORY
  %loadMem_401f0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2452 to i64*
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2454 = getelementptr inbounds %struct.GPR, %struct.GPR* %2453, i32 0, i32 9
  %2455 = getelementptr inbounds %struct.Reg, %struct.Reg* %2454, i32 0, i32 0
  %RSI.i7 = bitcast %union.anon* %2455 to i64*
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 15
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %2458 to i64*
  %2459 = load i64, i64* %RBP.i8
  %2460 = sub i64 %2459, 24
  %2461 = load i64, i64* %PC.i6
  %2462 = add i64 %2461, 4
  store i64 %2462, i64* %PC.i6
  %2463 = inttoptr i64 %2460 to i64*
  %2464 = load i64, i64* %2463
  store i64 %2464, i64* %RSI.i7, align 8
  store %struct.Memory* %loadMem_401f0d, %struct.Memory** %MEMORY
  %loadMem_401f11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 7
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 9
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %RSI.i
  %2475 = load i64, i64* %RDX.i
  %2476 = load i64, i64* %PC.i5
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i5
  %2478 = inttoptr i64 %2474 to i64*
  store i64 %2475, i64* %2478
  store %struct.Memory* %loadMem_401f11, %struct.Memory** %MEMORY
  %loadMem_401f14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 33
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2481 to i64*
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 13
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2484 to i64*
  %2485 = load i64, i64* %RSP.i
  %2486 = load i64, i64* %PC.i4
  %2487 = add i64 %2486, 4
  store i64 %2487, i64* %PC.i4
  %2488 = add i64 80, %2485
  store i64 %2488, i64* %RSP.i, align 8
  %2489 = icmp ult i64 %2488, %2485
  %2490 = icmp ult i64 %2488, 80
  %2491 = or i1 %2489, %2490
  %2492 = zext i1 %2491 to i8
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2492, i8* %2493, align 1
  %2494 = trunc i64 %2488 to i32
  %2495 = and i32 %2494, 255
  %2496 = call i32 @llvm.ctpop.i32(i32 %2495)
  %2497 = trunc i32 %2496 to i8
  %2498 = and i8 %2497, 1
  %2499 = xor i8 %2498, 1
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2499, i8* %2500, align 1
  %2501 = xor i64 80, %2485
  %2502 = xor i64 %2501, %2488
  %2503 = lshr i64 %2502, 4
  %2504 = trunc i64 %2503 to i8
  %2505 = and i8 %2504, 1
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2505, i8* %2506, align 1
  %2507 = icmp eq i64 %2488, 0
  %2508 = zext i1 %2507 to i8
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2508, i8* %2509, align 1
  %2510 = lshr i64 %2488, 63
  %2511 = trunc i64 %2510 to i8
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2511, i8* %2512, align 1
  %2513 = lshr i64 %2485, 63
  %2514 = xor i64 %2510, %2513
  %2515 = add i64 %2514, %2510
  %2516 = icmp eq i64 %2515, 2
  %2517 = zext i1 %2516 to i8
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2517, i8* %2518, align 1
  store %struct.Memory* %loadMem_401f14, %struct.Memory** %MEMORY
  %loadMem_401f18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 33
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 15
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %PC.i2
  %2526 = add i64 %2525, 1
  store i64 %2526, i64* %PC.i2
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2528 = load i64, i64* %2527, align 8
  %2529 = add i64 %2528, 8
  %2530 = inttoptr i64 %2528 to i64*
  %2531 = load i64, i64* %2530
  store i64 %2531, i64* %RBP.i3, align 8
  store i64 %2529, i64* %2527, align 8
  store %struct.Memory* %loadMem_401f18, %struct.Memory** %MEMORY
  %loadMem_401f19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %PC.i1
  %2536 = add i64 %2535, 1
  store i64 %2536, i64* %PC.i1
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2539 = load i64, i64* %2538, align 8
  %2540 = inttoptr i64 %2539 to i64*
  %2541 = load i64, i64* %2540
  store i64 %2541, i64* %2537, align 8
  %2542 = add i64 %2539, 8
  store i64 %2542, i64* %2538, align 8
  store %struct.Memory* %loadMem_401f19, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_401f19
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

define %struct.Memory* @routine_movq__0x45594d___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x45594d_type* @G__0x45594d to i64), i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xb3___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 179, i64* %9, align 8
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

define %struct.Memory* @routine_movl__r8d__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
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

define %struct.Memory* @routine_movl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 44
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_je_.L_401efb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_401e76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_401e4c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_401e59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_401e5f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_401ee8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401eed(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_401d65(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__ecx____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx____rsi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
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
