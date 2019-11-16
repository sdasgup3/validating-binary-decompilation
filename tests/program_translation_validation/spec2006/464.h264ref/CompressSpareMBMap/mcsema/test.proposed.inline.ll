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
%G_0x6cb900_type = type <{ [8 x i8] }>
%G__0x4ac700_type = type <{ [8 x i8] }>
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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer
@G__0x4ac700 = global %G__0x4ac700_type zeroinitializer

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

declare %struct.Memory* @sub_4ad1f0.writeSyntaxElement2Buf_UVLC(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @CompressSpareMBMap(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4a0110 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4a0110, %struct.Memory** %MEMORY
  %loadMem_4a0111 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i128 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i129 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i128
  %27 = load i64, i64* %PC.i127
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i127
  store i64 %26, i64* %RBP.i129, align 8
  store %struct.Memory* %loadMem_4a0111, %struct.Memory** %MEMORY
  %loadMem_4a0114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i160 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i160
  %36 = load i64, i64* %PC.i159
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i159
  %38 = sub i64 %35, 176
  store i64 %38, i64* %RSP.i160, align 8
  %39 = icmp ult i64 %35, 176
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
  %49 = xor i64 176, %35
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
  store %struct.Memory* %loadMem_4a0114, %struct.Memory** %MEMORY
  %loadMem_4a011b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i322
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i322
  store i64 2, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_4a011b, %struct.Memory** %MEMORY
  %loadMem_4a0120 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 5
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %80 to i64*
  %81 = load i64, i64* %PC.i502
  %82 = add i64 %81, 5
  store i64 %82, i64* %PC.i502
  store i64 16, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_4a0120, %struct.Memory** %MEMORY
  %loadMem_4a0125 = load %struct.Memory*, %struct.Memory** %MEMORY
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 33
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %85 to i64*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RDX.i680 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %PC.i679
  %90 = add i64 %89, 10
  store i64 %90, i64* %PC.i679
  store i64 ptrtoint (%G__0x4ac700_type* @G__0x4ac700 to i64), i64* %RDX.i680, align 8
  store %struct.Memory* %loadMem_4a0125, %struct.Memory** %MEMORY
  %loadMem_4a012f = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RDI.i711 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i712
  %101 = sub i64 %100, 8
  %102 = load i64, i64* %RDI.i711
  %103 = load i64, i64* %PC.i710
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i710
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_4a012f, %struct.Memory** %MEMORY
  %loadMem_4a0133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i761 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 9
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RSI.i762 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i763 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i763
  %116 = sub i64 %115, 16
  %117 = load i64, i64* %RSI.i762
  %118 = load i64, i64* %PC.i761
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i761
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  store %struct.Memory* %loadMem_4a0133, %struct.Memory** %MEMORY
  %loadMem_4a0137 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 9
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RSI.i770 = bitcast %union.anon* %126 to i64*
  %127 = load i64, i64* %PC.i769
  %128 = add i64 %127, 8
  store i64 %128, i64* %PC.i769
  %129 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %129, i64* %RSI.i770, align 8
  store %struct.Memory* %loadMem_4a0137, %struct.Memory** %MEMORY
  %loadMem_4a013f = load %struct.Memory*, %struct.Memory** %MEMORY
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 33
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %134 = getelementptr inbounds %struct.GPR, %struct.GPR* %133, i32 0, i32 17
  %135 = getelementptr inbounds %struct.Reg, %struct.Reg* %134, i32 0, i32 0
  %R8D.i784 = bitcast %union.anon* %135 to i32*
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 9
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %RSI.i785 = bitcast %union.anon* %138 to i64*
  %139 = bitcast i32* %R8D.i784 to i64*
  %140 = load i64, i64* %RSI.i785
  %141 = add i64 %140, 60
  %142 = load i64, i64* %PC.i783
  %143 = add i64 %142, 4
  store i64 %143, i64* %PC.i783
  %144 = inttoptr i64 %141 to i32*
  %145 = load i32, i32* %144
  %146 = zext i32 %145 to i64
  store i64 %146, i64* %139, align 8
  store %struct.Memory* %loadMem_4a013f, %struct.Memory** %MEMORY
  %loadMem_4a0143 = load %struct.Memory*, %struct.Memory** %MEMORY
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 33
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %EAX.i796 = bitcast %union.anon* %152 to i32*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 15
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %155 to i64*
  %156 = load i64, i64* %RBP.i797
  %157 = sub i64 %156, 136
  %158 = load i32, i32* %EAX.i796
  %159 = zext i32 %158 to i64
  %160 = load i64, i64* %PC.i795
  %161 = add i64 %160, 6
  store i64 %161, i64* %PC.i795
  %162 = inttoptr i64 %157 to i32*
  store i32 %158, i32* %162
  store %struct.Memory* %loadMem_4a0143, %struct.Memory** %MEMORY
  %loadMem_4a0149 = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %165 to i64*
  %166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %167 = getelementptr inbounds %struct.GPR, %struct.GPR* %166, i32 0, i32 17
  %168 = getelementptr inbounds %struct.Reg, %struct.Reg* %167, i32 0, i32 0
  %R8D.i839 = bitcast %union.anon* %168 to i32*
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 1
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %171 to i64*
  %172 = load i32, i32* %R8D.i839
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* %PC.i838
  %175 = add i64 %174, 3
  store i64 %175, i64* %PC.i838
  %176 = and i64 %173, 4294967295
  store i64 %176, i64* %RAX.i840, align 8
  store %struct.Memory* %loadMem_4a0149, %struct.Memory** %MEMORY
  %loadMem_4a014c = load %struct.Memory*, %struct.Memory** %MEMORY
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 33
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %179 to i64*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 7
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RDX.i857 = bitcast %union.anon* %182 to i64*
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 15
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %RBP.i858 = bitcast %union.anon* %185 to i64*
  %186 = load i64, i64* %RBP.i858
  %187 = sub i64 %186, 144
  %188 = load i64, i64* %RDX.i857
  %189 = load i64, i64* %PC.i856
  %190 = add i64 %189, 7
  store i64 %190, i64* %PC.i856
  %191 = inttoptr i64 %187 to i64*
  store i64 %188, i64* %191
  store %struct.Memory* %loadMem_4a014c, %struct.Memory** %MEMORY
  %loadMem_4a0153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 33
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %PC.i859
  %196 = add i64 %195, 1
  store i64 %196, i64* %PC.i859
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %199 = bitcast %union.anon* %198 to i32*
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = lshr i64 %201, 32
  store i64 %202, i64* %197, align 8
  store %struct.Memory* %loadMem_4a0153, %struct.Memory** %MEMORY
  %loadMem_4a0154 = load %struct.Memory*, %struct.Memory** %MEMORY
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 33
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %205 to i64*
  %206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %207 = getelementptr inbounds %struct.GPR, %struct.GPR* %206, i32 0, i32 5
  %208 = getelementptr inbounds %struct.Reg, %struct.Reg* %207, i32 0, i32 0
  %ECX.i854 = bitcast %union.anon* %208 to i32*
  %209 = load i32, i32* %ECX.i854
  %210 = zext i32 %209 to i64
  %211 = load i64, i64* %PC.i853
  %212 = add i64 %211, 2
  store i64 %212, i64* %PC.i853
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %214 = bitcast %union.anon* %213 to i32*
  %215 = load i32, i32* %214, align 8
  %216 = zext i32 %215 to i64
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %218 = bitcast %union.anon* %217 to i32*
  %219 = load i32, i32* %218, align 8
  %220 = zext i32 %219 to i64
  %221 = shl i64 %210, 32
  %222 = ashr exact i64 %221, 32
  %223 = shl i64 %220, 32
  %224 = or i64 %223, %216
  %225 = sdiv i64 %224, %222
  %226 = shl i64 %225, 32
  %227 = ashr exact i64 %226, 32
  %228 = icmp eq i64 %225, %227
  br i1 %228, label %233, label %229

; <label>:229:                                    ; preds = %entry
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %231, %struct.Memory* %loadMem_4a0154)
  br label %routine_idivl__ecx.exit855

; <label>:233:                                    ; preds = %entry
  %234 = srem i64 %224, %222
  %235 = getelementptr inbounds %union.anon, %union.anon* %213, i64 0, i32 0
  %236 = and i64 %225, 4294967295
  store i64 %236, i64* %235, align 8
  %237 = getelementptr inbounds %union.anon, %union.anon* %217, i64 0, i32 0
  %238 = and i64 %234, 4294967295
  store i64 %238, i64* %237, align 8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %239, align 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %240, align 1
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %241, align 1
  %242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %242, align 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %243, align 1
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %244, align 1
  br label %routine_idivl__ecx.exit855

routine_idivl__ecx.exit855:                       ; preds = %229, %233
  %245 = phi %struct.Memory* [ %232, %229 ], [ %loadMem_4a0154, %233 ]
  store %struct.Memory* %245, %struct.Memory** %MEMORY
  %loadMem_4a0156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i851 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 9
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RSI.i852 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %PC.i851
  %253 = add i64 %252, 8
  store i64 %253, i64* %PC.i851
  %254 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %254, i64* %RSI.i852, align 8
  store %struct.Memory* %loadMem_4a0156, %struct.Memory** %MEMORY
  %loadMem_4a015e = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 17
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %R8D.i849 = bitcast %union.anon* %260 to i32*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RSI.i850 = bitcast %union.anon* %263 to i64*
  %264 = bitcast i32* %R8D.i849 to i64*
  %265 = load i64, i64* %RSI.i850
  %266 = add i64 %265, 52
  %267 = load i64, i64* %PC.i848
  %268 = add i64 %267, 4
  store i64 %268, i64* %PC.i848
  %269 = inttoptr i64 %266 to i32*
  %270 = load i32, i32* %269
  %271 = zext i32 %270 to i64
  store i64 %271, i64* %264, align 8
  store %struct.Memory* %loadMem_4a015e, %struct.Memory** %MEMORY
  %loadMem_4a0162 = load %struct.Memory*, %struct.Memory** %MEMORY
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 33
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %274 to i64*
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %276 = getelementptr inbounds %struct.GPR, %struct.GPR* %275, i32 0, i32 1
  %277 = getelementptr inbounds %struct.Reg, %struct.Reg* %276, i32 0, i32 0
  %EAX.i846 = bitcast %union.anon* %277 to i32*
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 15
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %280 to i64*
  %281 = load i64, i64* %RBP.i847
  %282 = sub i64 %281, 148
  %283 = load i32, i32* %EAX.i846
  %284 = zext i32 %283 to i64
  %285 = load i64, i64* %PC.i845
  %286 = add i64 %285, 6
  store i64 %286, i64* %PC.i845
  %287 = inttoptr i64 %282 to i32*
  store i32 %283, i32* %287
  store %struct.Memory* %loadMem_4a0162, %struct.Memory** %MEMORY
  %loadMem_4a0168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 33
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %290 to i64*
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 17
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %R8D.i843 = bitcast %union.anon* %293 to i32*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i844 = bitcast %union.anon* %296 to i64*
  %297 = load i32, i32* %R8D.i843
  %298 = zext i32 %297 to i64
  %299 = load i64, i64* %PC.i842
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC.i842
  %301 = and i64 %298, 4294967295
  store i64 %301, i64* %RAX.i844, align 8
  store %struct.Memory* %loadMem_4a0168, %struct.Memory** %MEMORY
  %loadMem_4a016b = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %304 to i64*
  %305 = load i64, i64* %PC.i841
  %306 = add i64 %305, 1
  store i64 %306, i64* %PC.i841
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %309 = bitcast %union.anon* %308 to i32*
  %310 = load i32, i32* %309, align 8
  %311 = sext i32 %310 to i64
  %312 = lshr i64 %311, 32
  store i64 %312, i64* %307, align 8
  store %struct.Memory* %loadMem_4a016b, %struct.Memory** %MEMORY
  %loadMem_4a016c = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 5
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %ECX.i836 = bitcast %union.anon* %318 to i32*
  %319 = load i32, i32* %ECX.i836
  %320 = zext i32 %319 to i64
  %321 = load i64, i64* %PC.i835
  %322 = add i64 %321, 2
  store i64 %322, i64* %PC.i835
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %324 = bitcast %union.anon* %323 to i32*
  %325 = load i32, i32* %324, align 8
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %328 = bitcast %union.anon* %327 to i32*
  %329 = load i32, i32* %328, align 8
  %330 = zext i32 %329 to i64
  %331 = shl i64 %320, 32
  %332 = ashr exact i64 %331, 32
  %333 = shl i64 %330, 32
  %334 = or i64 %333, %326
  %335 = sdiv i64 %334, %332
  %336 = shl i64 %335, 32
  %337 = ashr exact i64 %336, 32
  %338 = icmp eq i64 %335, %337
  br i1 %338, label %343, label %339

; <label>:339:                                    ; preds = %routine_idivl__ecx.exit855
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %341 = load i64, i64* %340, align 8
  %342 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %341, %struct.Memory* %loadMem_4a016c)
  br label %routine_idivl__ecx.exit837

; <label>:343:                                    ; preds = %routine_idivl__ecx.exit855
  %344 = srem i64 %334, %332
  %345 = getelementptr inbounds %union.anon, %union.anon* %323, i64 0, i32 0
  %346 = and i64 %335, 4294967295
  store i64 %346, i64* %345, align 8
  %347 = getelementptr inbounds %union.anon, %union.anon* %327, i64 0, i32 0
  %348 = and i64 %344, 4294967295
  store i64 %348, i64* %347, align 8
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %349, align 1
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %350, align 1
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %351, align 1
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %352, align 1
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %353, align 1
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %354, align 1
  br label %routine_idivl__ecx.exit837

routine_idivl__ecx.exit837:                       ; preds = %339, %343
  %355 = phi %struct.Memory* [ %342, %339 ], [ %loadMem_4a016c, %343 ]
  store %struct.Memory* %355, %struct.Memory** %MEMORY
  %loadMem_4a016e = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %358 to i64*
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 17
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %R8D.i833 = bitcast %union.anon* %361 to i32*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i834 = bitcast %union.anon* %364 to i64*
  %365 = bitcast i32* %R8D.i833 to i64*
  %366 = load i64, i64* %RBP.i834
  %367 = sub i64 %366, 148
  %368 = load i64, i64* %PC.i832
  %369 = add i64 %368, 7
  store i64 %369, i64* %PC.i832
  %370 = inttoptr i64 %367 to i32*
  %371 = load i32, i32* %370
  %372 = zext i32 %371 to i64
  store i64 %372, i64* %365, align 8
  store %struct.Memory* %loadMem_4a016e, %struct.Memory** %MEMORY
  %loadMem_4a0175 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 1
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %EAX.i830 = bitcast %union.anon* %378 to i32*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 17
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %R8D.i831 = bitcast %union.anon* %381 to i32*
  %382 = bitcast i32* %R8D.i831 to i64*
  %383 = load i32, i32* %R8D.i831
  %384 = zext i32 %383 to i64
  %385 = load i32, i32* %EAX.i830
  %386 = zext i32 %385 to i64
  %387 = load i64, i64* %PC.i829
  %388 = add i64 %387, 4
  store i64 %388, i64* %PC.i829
  %389 = shl i64 %384, 32
  %390 = ashr exact i64 %389, 32
  %391 = shl i64 %386, 32
  %392 = ashr exact i64 %391, 32
  %393 = mul i64 %392, %390
  %394 = trunc i64 %393 to i32
  %395 = and i64 %393, 4294967295
  store i64 %395, i64* %382, align 8
  %396 = shl i64 %393, 32
  %397 = ashr exact i64 %396, 32
  %398 = icmp ne i64 %397, %393
  %399 = zext i1 %398 to i8
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %399, i8* %400, align 1
  %401 = and i32 %394, 255
  %402 = call i32 @llvm.ctpop.i32(i32 %401)
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = xor i8 %404, 1
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %405, i8* %406, align 1
  %407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %407, align 1
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %408, align 1
  %409 = lshr i32 %394, 31
  %410 = trunc i32 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %410, i8* %411, align 1
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %399, i8* %412, align 1
  store %struct.Memory* %loadMem_4a0175, %struct.Memory** %MEMORY
  %loadMem_4a0179 = load %struct.Memory*, %struct.Memory** %MEMORY
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 33
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %415 to i64*
  %416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %417 = getelementptr inbounds %struct.GPR, %struct.GPR* %416, i32 0, i32 17
  %418 = getelementptr inbounds %struct.Reg, %struct.Reg* %417, i32 0, i32 0
  %R8D.i827 = bitcast %union.anon* %418 to i32*
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 15
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %RBP.i828 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %RBP.i828
  %423 = sub i64 %422, 124
  %424 = load i32, i32* %R8D.i827
  %425 = zext i32 %424 to i64
  %426 = load i64, i64* %PC.i826
  %427 = add i64 %426, 4
  store i64 %427, i64* %PC.i826
  %428 = inttoptr i64 %423 to i32*
  store i32 %424, i32* %428
  store %struct.Memory* %loadMem_4a0179, %struct.Memory** %MEMORY
  %loadMem_4a017d = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i824 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 15
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %434 to i64*
  %435 = load i64, i64* %RBP.i825
  %436 = sub i64 %435, 128
  %437 = load i64, i64* %PC.i824
  %438 = add i64 %437, 7
  store i64 %438, i64* %PC.i824
  %439 = inttoptr i64 %436 to i32*
  store i32 0, i32* %439
  store %struct.Memory* %loadMem_4a017d, %struct.Memory** %MEMORY
  %loadMem_4a0184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 15
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RBP.i823 = bitcast %union.anon* %445 to i64*
  %446 = load i64, i64* %RBP.i823
  %447 = sub i64 %446, 88
  %448 = load i64, i64* %PC.i822
  %449 = add i64 %448, 7
  store i64 %449, i64* %PC.i822
  %450 = inttoptr i64 %447 to i32*
  store i32 0, i32* %450
  store %struct.Memory* %loadMem_4a0184, %struct.Memory** %MEMORY
  %loadMem_4a018b = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 9
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RSI.i820 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 15
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RBP.i821 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %RBP.i821
  %461 = sub i64 %460, 144
  %462 = load i64, i64* %PC.i819
  %463 = add i64 %462, 7
  store i64 %463, i64* %PC.i819
  %464 = inttoptr i64 %461 to i64*
  %465 = load i64, i64* %464
  store i64 %465, i64* %RSI.i820, align 8
  store %struct.Memory* %loadMem_4a018b, %struct.Memory** %MEMORY
  %loadMem_4a0192 = load %struct.Memory*, %struct.Memory** %MEMORY
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 33
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %468 to i64*
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 9
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %RSI.i817 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 15
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %RBP.i818
  %476 = sub i64 %475, 56
  %477 = load i64, i64* %RSI.i817
  %478 = load i64, i64* %PC.i816
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC.i816
  %480 = inttoptr i64 %476 to i64*
  store i64 %477, i64* %480
  store %struct.Memory* %loadMem_4a0192, %struct.Memory** %MEMORY
  %loadMem_4a0196 = load %struct.Memory*, %struct.Memory** %MEMORY
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 33
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %483 to i64*
  %484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %485 = getelementptr inbounds %struct.GPR, %struct.GPR* %484, i32 0, i32 15
  %486 = getelementptr inbounds %struct.Reg, %struct.Reg* %485, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %486 to i64*
  %487 = load i64, i64* %RBP.i815
  %488 = sub i64 %487, 28
  %489 = load i64, i64* %PC.i814
  %490 = add i64 %489, 7
  store i64 %490, i64* %PC.i814
  %491 = inttoptr i64 %488 to i32*
  store i32 0, i32* %491
  store %struct.Memory* %loadMem_4a0196, %struct.Memory** %MEMORY
  %loadMem_4a019d = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 15
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %497 to i64*
  %498 = load i64, i64* %RBP.i813
  %499 = sub i64 %498, 32
  %500 = load i64, i64* %PC.i812
  %501 = add i64 %500, 7
  store i64 %501, i64* %PC.i812
  %502 = inttoptr i64 %499 to i32*
  store i32 0, i32* %502
  store %struct.Memory* %loadMem_4a019d, %struct.Memory** %MEMORY
  %loadMem_4a01a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i811
  %510 = sub i64 %509, 36
  %511 = load i64, i64* %PC.i810
  %512 = add i64 %511, 7
  store i64 %512, i64* %PC.i810
  %513 = inttoptr i64 %510 to i32*
  store i32 1, i32* %513
  store %struct.Memory* %loadMem_4a01a4, %struct.Memory** %MEMORY
  %loadMem_4a01ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i807 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RAX.i808 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 15
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RBP.i809
  %524 = sub i64 %523, 32
  %525 = load i64, i64* %PC.i807
  %526 = add i64 %525, 3
  store i64 %526, i64* %PC.i807
  %527 = inttoptr i64 %524 to i32*
  %528 = load i32, i32* %527
  %529 = zext i32 %528 to i64
  store i64 %529, i64* %RAX.i808, align 8
  store %struct.Memory* %loadMem_4a01ab, %struct.Memory** %MEMORY
  %loadMem_4a01ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %531 = getelementptr inbounds %struct.GPR, %struct.GPR* %530, i32 0, i32 33
  %532 = getelementptr inbounds %struct.Reg, %struct.Reg* %531, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %532 to i64*
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 1
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %EAX.i805 = bitcast %union.anon* %535 to i32*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 15
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %RBP.i806 = bitcast %union.anon* %538 to i64*
  %539 = load i64, i64* %RBP.i806
  %540 = sub i64 %539, 40
  %541 = load i32, i32* %EAX.i805
  %542 = zext i32 %541 to i64
  %543 = load i64, i64* %PC.i804
  %544 = add i64 %543, 3
  store i64 %544, i64* %PC.i804
  %545 = inttoptr i64 %540 to i32*
  store i32 %541, i32* %545
  store %struct.Memory* %loadMem_4a01ae, %struct.Memory** %MEMORY
  %loadMem_4a01b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 11
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RDI.i803 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %PC.i802
  %553 = add i64 %552, 8
  store i64 %553, i64* %PC.i802
  %554 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %554, i64* %RDI.i803, align 8
  store %struct.Memory* %loadMem_4a01b1, %struct.Memory** %MEMORY
  %loadMem_4a01b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 33
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %557 to i64*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 1
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RAX.i800 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 11
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RDI.i801 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RDI.i801
  %565 = add i64 %564, 52
  %566 = load i64, i64* %PC.i799
  %567 = add i64 %566, 3
  store i64 %567, i64* %PC.i799
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %RAX.i800, align 8
  store %struct.Memory* %loadMem_4a01b9, %struct.Memory** %MEMORY
  %loadMem_4a01bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %PC.i798
  %575 = add i64 %574, 1
  store i64 %575, i64* %PC.i798
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %578 = bitcast %union.anon* %577 to i32*
  %579 = load i32, i32* %578, align 8
  %580 = sext i32 %579 to i64
  %581 = lshr i64 %580, 32
  store i64 %581, i64* %576, align 8
  store %struct.Memory* %loadMem_4a01bc, %struct.Memory** %MEMORY
  %loadMem_4a01bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 5
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %ECX.i793 = bitcast %union.anon* %587 to i32*
  %588 = load i32, i32* %ECX.i793
  %589 = zext i32 %588 to i64
  %590 = load i64, i64* %PC.i792
  %591 = add i64 %590, 2
  store i64 %591, i64* %PC.i792
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %593 = bitcast %union.anon* %592 to i32*
  %594 = load i32, i32* %593, align 8
  %595 = zext i32 %594 to i64
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %597 = bitcast %union.anon* %596 to i32*
  %598 = load i32, i32* %597, align 8
  %599 = zext i32 %598 to i64
  %600 = shl i64 %589, 32
  %601 = ashr exact i64 %600, 32
  %602 = shl i64 %599, 32
  %603 = or i64 %602, %595
  %604 = sdiv i64 %603, %601
  %605 = shl i64 %604, 32
  %606 = ashr exact i64 %605, 32
  %607 = icmp eq i64 %604, %606
  br i1 %607, label %612, label %608

; <label>:608:                                    ; preds = %routine_idivl__ecx.exit837
  %609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %610 = load i64, i64* %609, align 8
  %611 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %610, %struct.Memory* %loadMem_4a01bd)
  br label %routine_idivl__ecx.exit794

; <label>:612:                                    ; preds = %routine_idivl__ecx.exit837
  %613 = srem i64 %603, %601
  %614 = getelementptr inbounds %union.anon, %union.anon* %592, i64 0, i32 0
  %615 = and i64 %604, 4294967295
  store i64 %615, i64* %614, align 8
  %616 = getelementptr inbounds %union.anon, %union.anon* %596, i64 0, i32 0
  %617 = and i64 %613, 4294967295
  store i64 %617, i64* %616, align 8
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %618, align 1
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %619, align 1
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %620, align 1
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %621, align 1
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %622, align 1
  %623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %623, align 1
  br label %routine_idivl__ecx.exit794

routine_idivl__ecx.exit794:                       ; preds = %608, %612
  %624 = phi %struct.Memory* [ %611, %608 ], [ %loadMem_4a01bd, %612 ]
  store %struct.Memory* %624, %struct.Memory** %MEMORY
  %loadMem_4a01bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %626 = getelementptr inbounds %struct.GPR, %struct.GPR* %625, i32 0, i32 33
  %627 = getelementptr inbounds %struct.Reg, %struct.Reg* %626, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %627 to i64*
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 1
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %RAX.i791 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %RAX.i791
  %632 = load i64, i64* %PC.i790
  %633 = add i64 %632, 3
  store i64 %633, i64* %PC.i790
  %634 = trunc i64 %631 to i32
  %635 = sub i32 %634, 1
  %636 = zext i32 %635 to i64
  store i64 %636, i64* %RAX.i791, align 8
  %637 = icmp ult i32 %634, 1
  %638 = zext i1 %637 to i8
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %638, i8* %639, align 1
  %640 = and i32 %635, 255
  %641 = call i32 @llvm.ctpop.i32(i32 %640)
  %642 = trunc i32 %641 to i8
  %643 = and i8 %642, 1
  %644 = xor i8 %643, 1
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %644, i8* %645, align 1
  %646 = xor i64 1, %631
  %647 = trunc i64 %646 to i32
  %648 = xor i32 %647, %635
  %649 = lshr i32 %648, 4
  %650 = trunc i32 %649 to i8
  %651 = and i8 %650, 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %651, i8* %652, align 1
  %653 = icmp eq i32 %635, 0
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %654, i8* %655, align 1
  %656 = lshr i32 %635, 31
  %657 = trunc i32 %656 to i8
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %657, i8* %658, align 1
  %659 = lshr i32 %634, 31
  %660 = xor i32 %656, %659
  %661 = add i32 %660, %659
  %662 = icmp eq i32 %661, 2
  %663 = zext i1 %662 to i8
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %663, i8* %664, align 1
  store %struct.Memory* %loadMem_4a01bf, %struct.Memory** %MEMORY
  %loadMem_4a01c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %667 to i64*
  %668 = load i64, i64* %PC.i789
  %669 = add i64 %668, 1
  store i64 %669, i64* %PC.i789
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %672 = bitcast %union.anon* %671 to i32*
  %673 = load i32, i32* %672, align 8
  %674 = sext i32 %673 to i64
  %675 = lshr i64 %674, 32
  store i64 %675, i64* %670, align 8
  store %struct.Memory* %loadMem_4a01c2, %struct.Memory** %MEMORY
  %loadMem_4a01c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 17
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %R8D.i787 = bitcast %union.anon* %681 to i32*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 15
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RBP.i788 = bitcast %union.anon* %684 to i64*
  %685 = bitcast i32* %R8D.i787 to i64*
  %686 = load i64, i64* %RBP.i788
  %687 = sub i64 %686, 136
  %688 = load i64, i64* %PC.i786
  %689 = add i64 %688, 7
  store i64 %689, i64* %PC.i786
  %690 = inttoptr i64 %687 to i32*
  %691 = load i32, i32* %690
  %692 = zext i32 %691 to i64
  store i64 %692, i64* %685, align 8
  store %struct.Memory* %loadMem_4a01c3, %struct.Memory** %MEMORY
  %loadMem_4a01ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %694 = getelementptr inbounds %struct.GPR, %struct.GPR* %693, i32 0, i32 33
  %695 = getelementptr inbounds %struct.Reg, %struct.Reg* %694, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %695 to i64*
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %697 = getelementptr inbounds %struct.GPR, %struct.GPR* %696, i32 0, i32 17
  %698 = getelementptr inbounds %struct.Reg, %struct.Reg* %697, i32 0, i32 0
  %R8D.i781 = bitcast %union.anon* %698 to i32*
  %699 = load i32, i32* %R8D.i781
  %700 = zext i32 %699 to i64
  %701 = load i64, i64* %PC.i780
  %702 = add i64 %701, 3
  store i64 %702, i64* %PC.i780
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %704 = bitcast %union.anon* %703 to i32*
  %705 = load i32, i32* %704, align 8
  %706 = zext i32 %705 to i64
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %708 = bitcast %union.anon* %707 to i32*
  %709 = load i32, i32* %708, align 8
  %710 = zext i32 %709 to i64
  %711 = shl i64 %700, 32
  %712 = ashr exact i64 %711, 32
  %713 = shl i64 %710, 32
  %714 = or i64 %713, %706
  %715 = sdiv i64 %714, %712
  %716 = shl i64 %715, 32
  %717 = ashr exact i64 %716, 32
  %718 = icmp eq i64 %715, %717
  br i1 %718, label %723, label %719

; <label>:719:                                    ; preds = %routine_idivl__ecx.exit794
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %721 = load i64, i64* %720, align 8
  %722 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %721, %struct.Memory* %loadMem_4a01ca)
  br label %routine_idivl__r8d.exit782

; <label>:723:                                    ; preds = %routine_idivl__ecx.exit794
  %724 = srem i64 %714, %712
  %725 = getelementptr inbounds %union.anon, %union.anon* %703, i64 0, i32 0
  %726 = and i64 %715, 4294967295
  store i64 %726, i64* %725, align 8
  %727 = getelementptr inbounds %union.anon, %union.anon* %707, i64 0, i32 0
  %728 = and i64 %724, 4294967295
  store i64 %728, i64* %727, align 8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %729, align 1
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %730, align 1
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %731, align 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %732, align 1
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %733, align 1
  %734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %734, align 1
  br label %routine_idivl__r8d.exit782

routine_idivl__r8d.exit782:                       ; preds = %719, %723
  %735 = phi %struct.Memory* [ %722, %719 ], [ %loadMem_4a01ca, %723 ]
  store %struct.Memory* %735, %struct.Memory** %MEMORY
  %loadMem_4a01cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 1
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %EAX.i778 = bitcast %union.anon* %741 to i32*
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 15
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %RBP.i779 = bitcast %union.anon* %744 to i64*
  %745 = load i64, i64* %RBP.i779
  %746 = sub i64 %745, 92
  %747 = load i32, i32* %EAX.i778
  %748 = zext i32 %747 to i64
  %749 = load i64, i64* %PC.i777
  %750 = add i64 %749, 3
  store i64 %750, i64* %PC.i777
  %751 = inttoptr i64 %746 to i32*
  store i32 %747, i32* %751
  store %struct.Memory* %loadMem_4a01cd, %struct.Memory** %MEMORY
  %loadMem_4a01d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %754 to i64*
  %755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %756 = getelementptr inbounds %struct.GPR, %struct.GPR* %755, i32 0, i32 11
  %757 = getelementptr inbounds %struct.Reg, %struct.Reg* %756, i32 0, i32 0
  %RDI.i776 = bitcast %union.anon* %757 to i64*
  %758 = load i64, i64* %PC.i775
  %759 = add i64 %758, 8
  store i64 %759, i64* %PC.i775
  %760 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %760, i64* %RDI.i776, align 8
  store %struct.Memory* %loadMem_4a01d0, %struct.Memory** %MEMORY
  %loadMem_4a01d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 33
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 1
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 11
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RDI.i774 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %RDI.i774
  %771 = add i64 %770, 60
  %772 = load i64, i64* %PC.i772
  %773 = add i64 %772, 3
  store i64 %773, i64* %PC.i772
  %774 = inttoptr i64 %771 to i32*
  %775 = load i32, i32* %774
  %776 = zext i32 %775 to i64
  store i64 %776, i64* %RAX.i773, align 8
  store %struct.Memory* %loadMem_4a01d8, %struct.Memory** %MEMORY
  %loadMem_4a01db = load %struct.Memory*, %struct.Memory** %MEMORY
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 33
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %PC.i771
  %781 = add i64 %780, 1
  store i64 %781, i64* %PC.i771
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %784 = bitcast %union.anon* %783 to i32*
  %785 = load i32, i32* %784, align 8
  %786 = sext i32 %785 to i64
  %787 = lshr i64 %786, 32
  store i64 %787, i64* %782, align 8
  store %struct.Memory* %loadMem_4a01db, %struct.Memory** %MEMORY
  %loadMem_4a01dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 33
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %PC.i767 = bitcast %union.anon* %790 to i64*
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 5
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %ECX.i768 = bitcast %union.anon* %793 to i32*
  %794 = load i32, i32* %ECX.i768
  %795 = zext i32 %794 to i64
  %796 = load i64, i64* %PC.i767
  %797 = add i64 %796, 2
  store i64 %797, i64* %PC.i767
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %799 = bitcast %union.anon* %798 to i32*
  %800 = load i32, i32* %799, align 8
  %801 = zext i32 %800 to i64
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %803 = bitcast %union.anon* %802 to i32*
  %804 = load i32, i32* %803, align 8
  %805 = zext i32 %804 to i64
  %806 = shl i64 %795, 32
  %807 = ashr exact i64 %806, 32
  %808 = shl i64 %805, 32
  %809 = or i64 %808, %801
  %810 = sdiv i64 %809, %807
  %811 = shl i64 %810, 32
  %812 = ashr exact i64 %811, 32
  %813 = icmp eq i64 %810, %812
  br i1 %813, label %818, label %814

; <label>:814:                                    ; preds = %routine_idivl__r8d.exit782
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %816 = load i64, i64* %815, align 8
  %817 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %816, %struct.Memory* %loadMem_4a01dc)
  br label %routine_idivl__ecx.exit

; <label>:818:                                    ; preds = %routine_idivl__r8d.exit782
  %819 = srem i64 %809, %807
  %820 = getelementptr inbounds %union.anon, %union.anon* %798, i64 0, i32 0
  %821 = and i64 %810, 4294967295
  store i64 %821, i64* %820, align 8
  %822 = getelementptr inbounds %union.anon, %union.anon* %802, i64 0, i32 0
  %823 = and i64 %819, 4294967295
  store i64 %823, i64* %822, align 8
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %824, align 1
  %825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %825, align 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %826, align 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %827, align 1
  %828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %828, align 1
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %829, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %814, %818
  %830 = phi %struct.Memory* [ %817, %814 ], [ %loadMem_4a01dc, %818 ]
  store %struct.Memory* %830, %struct.Memory** %MEMORY
  %loadMem_4a01de = load %struct.Memory*, %struct.Memory** %MEMORY
  %831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %832 = getelementptr inbounds %struct.GPR, %struct.GPR* %831, i32 0, i32 33
  %833 = getelementptr inbounds %struct.Reg, %struct.Reg* %832, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %833 to i64*
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %835 = getelementptr inbounds %struct.GPR, %struct.GPR* %834, i32 0, i32 1
  %836 = getelementptr inbounds %struct.Reg, %struct.Reg* %835, i32 0, i32 0
  %RAX.i766 = bitcast %union.anon* %836 to i64*
  %837 = load i64, i64* %RAX.i766
  %838 = load i64, i64* %PC.i765
  %839 = add i64 %838, 3
  store i64 %839, i64* %PC.i765
  %840 = trunc i64 %837 to i32
  %841 = sub i32 %840, 1
  %842 = zext i32 %841 to i64
  store i64 %842, i64* %RAX.i766, align 8
  %843 = icmp ult i32 %840, 1
  %844 = zext i1 %843 to i8
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %844, i8* %845, align 1
  %846 = and i32 %841, 255
  %847 = call i32 @llvm.ctpop.i32(i32 %846)
  %848 = trunc i32 %847 to i8
  %849 = and i8 %848, 1
  %850 = xor i8 %849, 1
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %850, i8* %851, align 1
  %852 = xor i64 1, %837
  %853 = trunc i64 %852 to i32
  %854 = xor i32 %853, %841
  %855 = lshr i32 %854, 4
  %856 = trunc i32 %855 to i8
  %857 = and i8 %856, 1
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %857, i8* %858, align 1
  %859 = icmp eq i32 %841, 0
  %860 = zext i1 %859 to i8
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %860, i8* %861, align 1
  %862 = lshr i32 %841, 31
  %863 = trunc i32 %862 to i8
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %863, i8* %864, align 1
  %865 = lshr i32 %840, 31
  %866 = xor i32 %862, %865
  %867 = add i32 %866, %865
  %868 = icmp eq i32 %867, 2
  %869 = zext i1 %868 to i8
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %869, i8* %870, align 1
  store %struct.Memory* %loadMem_4a01de, %struct.Memory** %MEMORY
  %loadMem_4a01e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %872 = getelementptr inbounds %struct.GPR, %struct.GPR* %871, i32 0, i32 33
  %873 = getelementptr inbounds %struct.Reg, %struct.Reg* %872, i32 0, i32 0
  %PC.i764 = bitcast %union.anon* %873 to i64*
  %874 = load i64, i64* %PC.i764
  %875 = add i64 %874, 1
  store i64 %875, i64* %PC.i764
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %878 = bitcast %union.anon* %877 to i32*
  %879 = load i32, i32* %878, align 8
  %880 = sext i32 %879 to i64
  %881 = lshr i64 %880, 32
  store i64 %881, i64* %876, align 8
  store %struct.Memory* %loadMem_4a01e1, %struct.Memory** %MEMORY
  %loadMem_4a01e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 33
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 17
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %887 to i32*
  %888 = load i32, i32* %R8D.i
  %889 = zext i32 %888 to i64
  %890 = load i64, i64* %PC.i760
  %891 = add i64 %890, 3
  store i64 %891, i64* %PC.i760
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %893 = bitcast %union.anon* %892 to i32*
  %894 = load i32, i32* %893, align 8
  %895 = zext i32 %894 to i64
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %897 = bitcast %union.anon* %896 to i32*
  %898 = load i32, i32* %897, align 8
  %899 = zext i32 %898 to i64
  %900 = shl i64 %889, 32
  %901 = ashr exact i64 %900, 32
  %902 = shl i64 %899, 32
  %903 = or i64 %902, %895
  %904 = sdiv i64 %903, %901
  %905 = shl i64 %904, 32
  %906 = ashr exact i64 %905, 32
  %907 = icmp eq i64 %904, %906
  br i1 %907, label %912, label %908

; <label>:908:                                    ; preds = %routine_idivl__ecx.exit
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %910 = load i64, i64* %909, align 8
  %911 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %910, %struct.Memory* %loadMem_4a01e2)
  br label %routine_idivl__r8d.exit

; <label>:912:                                    ; preds = %routine_idivl__ecx.exit
  %913 = srem i64 %903, %901
  %914 = getelementptr inbounds %union.anon, %union.anon* %892, i64 0, i32 0
  %915 = and i64 %904, 4294967295
  store i64 %915, i64* %914, align 8
  %916 = getelementptr inbounds %union.anon, %union.anon* %896, i64 0, i32 0
  %917 = and i64 %913, 4294967295
  store i64 %917, i64* %916, align 8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %918, align 1
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %919, align 1
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %920, align 1
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %921, align 1
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %922, align 1
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %923, align 1
  br label %routine_idivl__r8d.exit

routine_idivl__r8d.exit:                          ; preds = %908, %912
  %924 = phi %struct.Memory* [ %911, %908 ], [ %loadMem_4a01e2, %912 ]
  store %struct.Memory* %924, %struct.Memory** %MEMORY
  %loadMem_4a01e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %926 = getelementptr inbounds %struct.GPR, %struct.GPR* %925, i32 0, i32 33
  %927 = getelementptr inbounds %struct.Reg, %struct.Reg* %926, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %927 to i64*
  %928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %929 = getelementptr inbounds %struct.GPR, %struct.GPR* %928, i32 0, i32 1
  %930 = getelementptr inbounds %struct.Reg, %struct.Reg* %929, i32 0, i32 0
  %EAX.i758 = bitcast %union.anon* %930 to i32*
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 15
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %RBP.i759 = bitcast %union.anon* %933 to i64*
  %934 = load i64, i64* %RBP.i759
  %935 = sub i64 %934, 96
  %936 = load i32, i32* %EAX.i758
  %937 = zext i32 %936 to i64
  %938 = load i64, i64* %PC.i757
  %939 = add i64 %938, 3
  store i64 %939, i64* %PC.i757
  %940 = inttoptr i64 %935 to i32*
  store i32 %936, i32* %940
  store %struct.Memory* %loadMem_4a01e5, %struct.Memory** %MEMORY
  %loadMem_4a01e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 33
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %943 to i64*
  %944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %945 = getelementptr inbounds %struct.GPR, %struct.GPR* %944, i32 0, i32 1
  %946 = getelementptr inbounds %struct.Reg, %struct.Reg* %945, i32 0, i32 0
  %RAX.i755 = bitcast %union.anon* %946 to i64*
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 15
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %RBP.i756 = bitcast %union.anon* %949 to i64*
  %950 = load i64, i64* %RBP.i756
  %951 = sub i64 %950, 92
  %952 = load i64, i64* %PC.i754
  %953 = add i64 %952, 3
  store i64 %953, i64* %PC.i754
  %954 = inttoptr i64 %951 to i32*
  %955 = load i32, i32* %954
  %956 = zext i32 %955 to i64
  store i64 %956, i64* %RAX.i755, align 8
  store %struct.Memory* %loadMem_4a01e8, %struct.Memory** %MEMORY
  %loadMem_4a01eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 33
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %959 to i64*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 1
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %EAX.i752 = bitcast %union.anon* %962 to i32*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 15
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %965 to i64*
  %966 = load i64, i64* %RBP.i753
  %967 = sub i64 %966, 104
  %968 = load i32, i32* %EAX.i752
  %969 = zext i32 %968 to i64
  %970 = load i64, i64* %PC.i751
  %971 = add i64 %970, 3
  store i64 %971, i64* %PC.i751
  %972 = inttoptr i64 %967 to i32*
  store i32 %968, i32* %972
  store %struct.Memory* %loadMem_4a01eb, %struct.Memory** %MEMORY
  %loadMem_4a01ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 33
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %975 to i64*
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 1
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %EAX.i749 = bitcast %union.anon* %978 to i32*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 15
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RBP.i750
  %983 = sub i64 %982, 100
  %984 = load i32, i32* %EAX.i749
  %985 = zext i32 %984 to i64
  %986 = load i64, i64* %PC.i748
  %987 = add i64 %986, 3
  store i64 %987, i64* %PC.i748
  %988 = inttoptr i64 %983 to i32*
  store i32 %984, i32* %988
  store %struct.Memory* %loadMem_4a01ee, %struct.Memory** %MEMORY
  %loadMem_4a01f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %990 = getelementptr inbounds %struct.GPR, %struct.GPR* %989, i32 0, i32 33
  %991 = getelementptr inbounds %struct.Reg, %struct.Reg* %990, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %991 to i64*
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %993 = getelementptr inbounds %struct.GPR, %struct.GPR* %992, i32 0, i32 1
  %994 = getelementptr inbounds %struct.Reg, %struct.Reg* %993, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %994 to i64*
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %996 = getelementptr inbounds %struct.GPR, %struct.GPR* %995, i32 0, i32 15
  %997 = getelementptr inbounds %struct.Reg, %struct.Reg* %996, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %997 to i64*
  %998 = load i64, i64* %RBP.i747
  %999 = sub i64 %998, 96
  %1000 = load i64, i64* %PC.i745
  %1001 = add i64 %1000, 3
  store i64 %1001, i64* %PC.i745
  %1002 = inttoptr i64 %999 to i32*
  %1003 = load i32, i32* %1002
  %1004 = zext i32 %1003 to i64
  store i64 %1004, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_4a01f1, %struct.Memory** %MEMORY
  %loadMem_4a01f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %EAX.i743 = bitcast %union.anon* %1010 to i32*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 15
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RBP.i744 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %RBP.i744
  %1015 = sub i64 %1014, 108
  %1016 = load i32, i32* %EAX.i743
  %1017 = zext i32 %1016 to i64
  %1018 = load i64, i64* %PC.i742
  %1019 = add i64 %1018, 3
  store i64 %1019, i64* %PC.i742
  %1020 = inttoptr i64 %1015 to i32*
  store i32 %1016, i32* %1020
  store %struct.Memory* %loadMem_4a01f4, %struct.Memory** %MEMORY
  %loadMem_4a01f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 33
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 1
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %EAX.i740 = bitcast %union.anon* %1026 to i32*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 15
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1029 to i64*
  %1030 = load i64, i64* %RBP.i741
  %1031 = sub i64 %1030, 112
  %1032 = load i32, i32* %EAX.i740
  %1033 = zext i32 %1032 to i64
  %1034 = load i64, i64* %PC.i739
  %1035 = add i64 %1034, 3
  store i64 %1035, i64* %PC.i739
  %1036 = inttoptr i64 %1031 to i32*
  store i32 %1032, i32* %1036
  store %struct.Memory* %loadMem_4a01f7, %struct.Memory** %MEMORY
  %loadMem_4a01fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 15
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %RBP.i738
  %1044 = sub i64 %1043, 116
  %1045 = load i64, i64* %PC.i737
  %1046 = add i64 %1045, 7
  store i64 %1046, i64* %PC.i737
  %1047 = inttoptr i64 %1044 to i32*
  store i32 0, i32* %1047
  store %struct.Memory* %loadMem_4a01fa, %struct.Memory** %MEMORY
  %loadMem_4a0201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1049 = getelementptr inbounds %struct.GPR, %struct.GPR* %1048, i32 0, i32 33
  %1050 = getelementptr inbounds %struct.Reg, %struct.Reg* %1049, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1050 to i64*
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 15
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %RBP.i736 = bitcast %union.anon* %1053 to i64*
  %1054 = load i64, i64* %RBP.i736
  %1055 = sub i64 %1054, 120
  %1056 = load i64, i64* %PC.i735
  %1057 = add i64 %1056, 7
  store i64 %1057, i64* %PC.i735
  %1058 = inttoptr i64 %1055 to i32*
  store i32 1, i32* %1058
  store %struct.Memory* %loadMem_4a0201, %struct.Memory** %MEMORY
  %loadMem_4a0208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 33
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 15
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RBP.i734 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RBP.i734
  %1066 = sub i64 %1065, 20
  %1067 = load i64, i64* %PC.i733
  %1068 = add i64 %1067, 7
  store i64 %1068, i64* %PC.i733
  %1069 = inttoptr i64 %1066 to i32*
  store i32 0, i32* %1069
  store %struct.Memory* %loadMem_4a0208, %struct.Memory** %MEMORY
  br label %block_.L_4a020f

block_.L_4a020f:                                  ; preds = %block_.L_4a058a, %routine_idivl__r8d.exit
  %loadMem_4a020f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %RAX.i732 = bitcast %union.anon* %1075 to i64*
  %1076 = load i64, i64* %PC.i731
  %1077 = add i64 %1076, 5
  store i64 %1077, i64* %PC.i731
  store i64 16, i64* %RAX.i732, align 8
  store %struct.Memory* %loadMem_4a020f, %struct.Memory** %MEMORY
  %loadMem_4a0214 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 33
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 5
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %1083 to i64*
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 15
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %RBP.i730 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %RBP.i730
  %1088 = sub i64 %1087, 20
  %1089 = load i64, i64* %PC.i728
  %1090 = add i64 %1089, 3
  store i64 %1090, i64* %PC.i728
  %1091 = inttoptr i64 %1088 to i32*
  %1092 = load i32, i32* %1091
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RCX.i729, align 8
  store %struct.Memory* %loadMem_4a0214, %struct.Memory** %MEMORY
  %loadMem_4a0217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 33
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %PC.i726 = bitcast %union.anon* %1096 to i64*
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 7
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %RDX.i727 = bitcast %union.anon* %1099 to i64*
  %1100 = load i64, i64* %PC.i726
  %1101 = add i64 %1100, 8
  store i64 %1101, i64* %PC.i726
  %1102 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1102, i64* %RDX.i727, align 8
  store %struct.Memory* %loadMem_4a0217, %struct.Memory** %MEMORY
  %loadMem_4a021f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1104 = getelementptr inbounds %struct.GPR, %struct.GPR* %1103, i32 0, i32 33
  %1105 = getelementptr inbounds %struct.Reg, %struct.Reg* %1104, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1105 to i64*
  %1106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1107 = getelementptr inbounds %struct.GPR, %struct.GPR* %1106, i32 0, i32 7
  %1108 = getelementptr inbounds %struct.Reg, %struct.Reg* %1107, i32 0, i32 0
  %RDX.i724 = bitcast %union.anon* %1108 to i64*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1110 = getelementptr inbounds %struct.GPR, %struct.GPR* %1109, i32 0, i32 9
  %1111 = getelementptr inbounds %struct.Reg, %struct.Reg* %1110, i32 0, i32 0
  %RSI.i725 = bitcast %union.anon* %1111 to i64*
  %1112 = load i64, i64* %RDX.i724
  %1113 = add i64 %1112, 60
  %1114 = load i64, i64* %PC.i723
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i723
  %1116 = inttoptr i64 %1113 to i32*
  %1117 = load i32, i32* %1116
  %1118 = zext i32 %1117 to i64
  store i64 %1118, i64* %RSI.i725, align 8
  store %struct.Memory* %loadMem_4a021f, %struct.Memory** %MEMORY
  %loadMem_4a0222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1120 = getelementptr inbounds %struct.GPR, %struct.GPR* %1119, i32 0, i32 33
  %1121 = getelementptr inbounds %struct.Reg, %struct.Reg* %1120, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %1121 to i64*
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1123 = getelementptr inbounds %struct.GPR, %struct.GPR* %1122, i32 0, i32 1
  %1124 = getelementptr inbounds %struct.Reg, %struct.Reg* %1123, i32 0, i32 0
  %EAX.i721 = bitcast %union.anon* %1124 to i32*
  %1125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1126 = getelementptr inbounds %struct.GPR, %struct.GPR* %1125, i32 0, i32 15
  %1127 = getelementptr inbounds %struct.Reg, %struct.Reg* %1126, i32 0, i32 0
  %RBP.i722 = bitcast %union.anon* %1127 to i64*
  %1128 = load i64, i64* %RBP.i722
  %1129 = sub i64 %1128, 152
  %1130 = load i32, i32* %EAX.i721
  %1131 = zext i32 %1130 to i64
  %1132 = load i64, i64* %PC.i720
  %1133 = add i64 %1132, 6
  store i64 %1133, i64* %PC.i720
  %1134 = inttoptr i64 %1129 to i32*
  store i32 %1130, i32* %1134
  store %struct.Memory* %loadMem_4a0222, %struct.Memory** %MEMORY
  %loadMem_4a0228 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1136 = getelementptr inbounds %struct.GPR, %struct.GPR* %1135, i32 0, i32 33
  %1137 = getelementptr inbounds %struct.Reg, %struct.Reg* %1136, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1137 to i64*
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1139 = getelementptr inbounds %struct.GPR, %struct.GPR* %1138, i32 0, i32 9
  %1140 = getelementptr inbounds %struct.Reg, %struct.Reg* %1139, i32 0, i32 0
  %ESI.i718 = bitcast %union.anon* %1140 to i32*
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1142 = getelementptr inbounds %struct.GPR, %struct.GPR* %1141, i32 0, i32 1
  %1143 = getelementptr inbounds %struct.Reg, %struct.Reg* %1142, i32 0, i32 0
  %RAX.i719 = bitcast %union.anon* %1143 to i64*
  %1144 = load i32, i32* %ESI.i718
  %1145 = zext i32 %1144 to i64
  %1146 = load i64, i64* %PC.i717
  %1147 = add i64 %1146, 2
  store i64 %1147, i64* %PC.i717
  %1148 = and i64 %1145, 4294967295
  store i64 %1148, i64* %RAX.i719, align 8
  store %struct.Memory* %loadMem_4a0228, %struct.Memory** %MEMORY
  %loadMem_4a022a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1151 to i64*
  %1152 = load i64, i64* %PC.i716
  %1153 = add i64 %1152, 1
  store i64 %1153, i64* %PC.i716
  %1154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1156 = bitcast %union.anon* %1155 to i32*
  %1157 = load i32, i32* %1156, align 8
  %1158 = sext i32 %1157 to i64
  %1159 = lshr i64 %1158, 32
  store i64 %1159, i64* %1154, align 8
  store %struct.Memory* %loadMem_4a022a, %struct.Memory** %MEMORY
  %loadMem_4a022b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 9
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RSI.i714 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RBP.i715
  %1170 = sub i64 %1169, 152
  %1171 = load i64, i64* %PC.i713
  %1172 = add i64 %1171, 6
  store i64 %1172, i64* %PC.i713
  %1173 = inttoptr i64 %1170 to i32*
  %1174 = load i32, i32* %1173
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RSI.i714, align 8
  store %struct.Memory* %loadMem_4a022b, %struct.Memory** %MEMORY
  %loadMem_4a0231 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 9
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %ESI.i708 = bitcast %union.anon* %1181 to i32*
  %1182 = load i32, i32* %ESI.i708
  %1183 = zext i32 %1182 to i64
  %1184 = load i64, i64* %PC.i707
  %1185 = add i64 %1184, 2
  store i64 %1185, i64* %PC.i707
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1187 = bitcast %union.anon* %1186 to i32*
  %1188 = load i32, i32* %1187, align 8
  %1189 = zext i32 %1188 to i64
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1191 = bitcast %union.anon* %1190 to i32*
  %1192 = load i32, i32* %1191, align 8
  %1193 = zext i32 %1192 to i64
  %1194 = shl i64 %1183, 32
  %1195 = ashr exact i64 %1194, 32
  %1196 = shl i64 %1193, 32
  %1197 = or i64 %1196, %1189
  %1198 = sdiv i64 %1197, %1195
  %1199 = shl i64 %1198, 32
  %1200 = ashr exact i64 %1199, 32
  %1201 = icmp eq i64 %1198, %1200
  br i1 %1201, label %1206, label %1202

; <label>:1202:                                   ; preds = %block_.L_4a020f
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1204 = load i64, i64* %1203, align 8
  %1205 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1204, %struct.Memory* %loadMem_4a0231)
  br label %routine_idivl__esi.exit709

; <label>:1206:                                   ; preds = %block_.L_4a020f
  %1207 = srem i64 %1197, %1195
  %1208 = getelementptr inbounds %union.anon, %union.anon* %1186, i64 0, i32 0
  %1209 = and i64 %1198, 4294967295
  store i64 %1209, i64* %1208, align 8
  %1210 = getelementptr inbounds %union.anon, %union.anon* %1190, i64 0, i32 0
  %1211 = and i64 %1207, 4294967295
  store i64 %1211, i64* %1210, align 8
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1212, align 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1213, align 1
  %1214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1214, align 1
  %1215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1215, align 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1216, align 1
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1217, align 1
  br label %routine_idivl__esi.exit709

routine_idivl__esi.exit709:                       ; preds = %1202, %1206
  %1218 = phi %struct.Memory* [ %1205, %1202 ], [ %loadMem_4a0231, %1206 ]
  store %struct.Memory* %1218, %struct.Memory** %MEMORY
  %loadMem_4a0233 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1220 = getelementptr inbounds %struct.GPR, %struct.GPR* %1219, i32 0, i32 33
  %1221 = getelementptr inbounds %struct.Reg, %struct.Reg* %1220, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1221 to i64*
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1223 = getelementptr inbounds %struct.GPR, %struct.GPR* %1222, i32 0, i32 1
  %1224 = getelementptr inbounds %struct.Reg, %struct.Reg* %1223, i32 0, i32 0
  %EAX.i705 = bitcast %union.anon* %1224 to i32*
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 5
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %ECX.i706 = bitcast %union.anon* %1227 to i32*
  %1228 = load i32, i32* %ECX.i706
  %1229 = zext i32 %1228 to i64
  %1230 = load i32, i32* %EAX.i705
  %1231 = zext i32 %1230 to i64
  %1232 = load i64, i64* %PC.i704
  %1233 = add i64 %1232, 2
  store i64 %1233, i64* %PC.i704
  %1234 = sub i32 %1228, %1230
  %1235 = icmp ult i32 %1228, %1230
  %1236 = zext i1 %1235 to i8
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1236, i8* %1237, align 1
  %1238 = and i32 %1234, 255
  %1239 = call i32 @llvm.ctpop.i32(i32 %1238)
  %1240 = trunc i32 %1239 to i8
  %1241 = and i8 %1240, 1
  %1242 = xor i8 %1241, 1
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1242, i8* %1243, align 1
  %1244 = xor i64 %1231, %1229
  %1245 = trunc i64 %1244 to i32
  %1246 = xor i32 %1245, %1234
  %1247 = lshr i32 %1246, 4
  %1248 = trunc i32 %1247 to i8
  %1249 = and i8 %1248, 1
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1249, i8* %1250, align 1
  %1251 = icmp eq i32 %1234, 0
  %1252 = zext i1 %1251 to i8
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1252, i8* %1253, align 1
  %1254 = lshr i32 %1234, 31
  %1255 = trunc i32 %1254 to i8
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1255, i8* %1256, align 1
  %1257 = lshr i32 %1228, 31
  %1258 = lshr i32 %1230, 31
  %1259 = xor i32 %1258, %1257
  %1260 = xor i32 %1254, %1257
  %1261 = add i32 %1260, %1259
  %1262 = icmp eq i32 %1261, 2
  %1263 = zext i1 %1262 to i8
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1263, i8* %1264, align 1
  store %struct.Memory* %loadMem_4a0233, %struct.Memory** %MEMORY
  %loadMem_4a0235 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1267 to i64*
  %1268 = load i64, i64* %PC.i703
  %1269 = add i64 %1268, 867
  %1270 = load i64, i64* %PC.i703
  %1271 = add i64 %1270, 6
  %1272 = load i64, i64* %PC.i703
  %1273 = add i64 %1272, 6
  store i64 %1273, i64* %PC.i703
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1275 = load i8, i8* %1274, align 1
  %1276 = icmp ne i8 %1275, 0
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1278 = load i8, i8* %1277, align 1
  %1279 = icmp ne i8 %1278, 0
  %1280 = xor i1 %1276, %1279
  %1281 = xor i1 %1280, true
  %1282 = zext i1 %1281 to i8
  store i8 %1282, i8* %BRANCH_TAKEN, align 1
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1284 = select i1 %1280, i64 %1271, i64 %1269
  store i64 %1284, i64* %1283, align 8
  store %struct.Memory* %loadMem_4a0235, %struct.Memory** %MEMORY
  %loadBr_4a0235 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0235 = icmp eq i8 %loadBr_4a0235, 1
  br i1 %cmpBr_4a0235, label %block_.L_4a0598, label %block_4a023b

block_4a023b:                                     ; preds = %routine_idivl__esi.exit709
  %loadMem_4a023b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1286 = getelementptr inbounds %struct.GPR, %struct.GPR* %1285, i32 0, i32 33
  %1287 = getelementptr inbounds %struct.Reg, %struct.Reg* %1286, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1287 to i64*
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1289 = getelementptr inbounds %struct.GPR, %struct.GPR* %1288, i32 0, i32 15
  %1290 = getelementptr inbounds %struct.Reg, %struct.Reg* %1289, i32 0, i32 0
  %RBP.i702 = bitcast %union.anon* %1290 to i64*
  %1291 = load i64, i64* %RBP.i702
  %1292 = sub i64 %1291, 24
  %1293 = load i64, i64* %PC.i701
  %1294 = add i64 %1293, 7
  store i64 %1294, i64* %PC.i701
  %1295 = inttoptr i64 %1292 to i32*
  store i32 0, i32* %1295
  store %struct.Memory* %loadMem_4a023b, %struct.Memory** %MEMORY
  br label %block_.L_4a0242

block_.L_4a0242:                                  ; preds = %block_.L_4a0577, %block_4a023b
  %loadMem_4a0242 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1297 = getelementptr inbounds %struct.GPR, %struct.GPR* %1296, i32 0, i32 33
  %1298 = getelementptr inbounds %struct.Reg, %struct.Reg* %1297, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1298 to i64*
  %1299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1300 = getelementptr inbounds %struct.GPR, %struct.GPR* %1299, i32 0, i32 1
  %1301 = getelementptr inbounds %struct.Reg, %struct.Reg* %1300, i32 0, i32 0
  %RAX.i700 = bitcast %union.anon* %1301 to i64*
  %1302 = load i64, i64* %PC.i699
  %1303 = add i64 %1302, 5
  store i64 %1303, i64* %PC.i699
  store i64 16, i64* %RAX.i700, align 8
  store %struct.Memory* %loadMem_4a0242, %struct.Memory** %MEMORY
  %loadMem_4a0247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 33
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %PC.i696 = bitcast %union.anon* %1306 to i64*
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1308 = getelementptr inbounds %struct.GPR, %struct.GPR* %1307, i32 0, i32 5
  %1309 = getelementptr inbounds %struct.Reg, %struct.Reg* %1308, i32 0, i32 0
  %RCX.i697 = bitcast %union.anon* %1309 to i64*
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1311 = getelementptr inbounds %struct.GPR, %struct.GPR* %1310, i32 0, i32 15
  %1312 = getelementptr inbounds %struct.Reg, %struct.Reg* %1311, i32 0, i32 0
  %RBP.i698 = bitcast %union.anon* %1312 to i64*
  %1313 = load i64, i64* %RBP.i698
  %1314 = sub i64 %1313, 24
  %1315 = load i64, i64* %PC.i696
  %1316 = add i64 %1315, 3
  store i64 %1316, i64* %PC.i696
  %1317 = inttoptr i64 %1314 to i32*
  %1318 = load i32, i32* %1317
  %1319 = zext i32 %1318 to i64
  store i64 %1319, i64* %RCX.i697, align 8
  store %struct.Memory* %loadMem_4a0247, %struct.Memory** %MEMORY
  %loadMem_4a024a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 33
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1322 to i64*
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1324 = getelementptr inbounds %struct.GPR, %struct.GPR* %1323, i32 0, i32 7
  %1325 = getelementptr inbounds %struct.Reg, %struct.Reg* %1324, i32 0, i32 0
  %RDX.i695 = bitcast %union.anon* %1325 to i64*
  %1326 = load i64, i64* %PC.i694
  %1327 = add i64 %1326, 8
  store i64 %1327, i64* %PC.i694
  %1328 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1328, i64* %RDX.i695, align 8
  store %struct.Memory* %loadMem_4a024a, %struct.Memory** %MEMORY
  %loadMem_4a0252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 33
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1333 = getelementptr inbounds %struct.GPR, %struct.GPR* %1332, i32 0, i32 7
  %1334 = getelementptr inbounds %struct.Reg, %struct.Reg* %1333, i32 0, i32 0
  %RDX.i692 = bitcast %union.anon* %1334 to i64*
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1336 = getelementptr inbounds %struct.GPR, %struct.GPR* %1335, i32 0, i32 9
  %1337 = getelementptr inbounds %struct.Reg, %struct.Reg* %1336, i32 0, i32 0
  %RSI.i693 = bitcast %union.anon* %1337 to i64*
  %1338 = load i64, i64* %RDX.i692
  %1339 = add i64 %1338, 52
  %1340 = load i64, i64* %PC.i691
  %1341 = add i64 %1340, 3
  store i64 %1341, i64* %PC.i691
  %1342 = inttoptr i64 %1339 to i32*
  %1343 = load i32, i32* %1342
  %1344 = zext i32 %1343 to i64
  store i64 %1344, i64* %RSI.i693, align 8
  store %struct.Memory* %loadMem_4a0252, %struct.Memory** %MEMORY
  %loadMem_4a0255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 33
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 1
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %EAX.i689 = bitcast %union.anon* %1350 to i32*
  %1351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1352 = getelementptr inbounds %struct.GPR, %struct.GPR* %1351, i32 0, i32 15
  %1353 = getelementptr inbounds %struct.Reg, %struct.Reg* %1352, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1353 to i64*
  %1354 = load i64, i64* %RBP.i690
  %1355 = sub i64 %1354, 156
  %1356 = load i32, i32* %EAX.i689
  %1357 = zext i32 %1356 to i64
  %1358 = load i64, i64* %PC.i688
  %1359 = add i64 %1358, 6
  store i64 %1359, i64* %PC.i688
  %1360 = inttoptr i64 %1355 to i32*
  store i32 %1356, i32* %1360
  store %struct.Memory* %loadMem_4a0255, %struct.Memory** %MEMORY
  %loadMem_4a025b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1362 = getelementptr inbounds %struct.GPR, %struct.GPR* %1361, i32 0, i32 33
  %1363 = getelementptr inbounds %struct.Reg, %struct.Reg* %1362, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1363 to i64*
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 9
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %ESI.i686 = bitcast %union.anon* %1366 to i32*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 1
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %1369 to i64*
  %1370 = load i32, i32* %ESI.i686
  %1371 = zext i32 %1370 to i64
  %1372 = load i64, i64* %PC.i685
  %1373 = add i64 %1372, 2
  store i64 %1373, i64* %PC.i685
  %1374 = and i64 %1371, 4294967295
  store i64 %1374, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_4a025b, %struct.Memory** %MEMORY
  %loadMem_4a025d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1377 to i64*
  %1378 = load i64, i64* %PC.i684
  %1379 = add i64 %1378, 1
  store i64 %1379, i64* %PC.i684
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1382 = bitcast %union.anon* %1381 to i32*
  %1383 = load i32, i32* %1382, align 8
  %1384 = sext i32 %1383 to i64
  %1385 = lshr i64 %1384, 32
  store i64 %1385, i64* %1380, align 8
  store %struct.Memory* %loadMem_4a025d, %struct.Memory** %MEMORY
  %loadMem_4a025e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1387 = getelementptr inbounds %struct.GPR, %struct.GPR* %1386, i32 0, i32 33
  %1388 = getelementptr inbounds %struct.Reg, %struct.Reg* %1387, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1388 to i64*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1390 = getelementptr inbounds %struct.GPR, %struct.GPR* %1389, i32 0, i32 9
  %1391 = getelementptr inbounds %struct.Reg, %struct.Reg* %1390, i32 0, i32 0
  %RSI.i682 = bitcast %union.anon* %1391 to i64*
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 15
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %1394 to i64*
  %1395 = load i64, i64* %RBP.i683
  %1396 = sub i64 %1395, 156
  %1397 = load i64, i64* %PC.i681
  %1398 = add i64 %1397, 6
  store i64 %1398, i64* %PC.i681
  %1399 = inttoptr i64 %1396 to i32*
  %1400 = load i32, i32* %1399
  %1401 = zext i32 %1400 to i64
  store i64 %1401, i64* %RSI.i682, align 8
  store %struct.Memory* %loadMem_4a025e, %struct.Memory** %MEMORY
  %loadMem_4a0264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 33
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %1404 to i64*
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1406 = getelementptr inbounds %struct.GPR, %struct.GPR* %1405, i32 0, i32 9
  %1407 = getelementptr inbounds %struct.Reg, %struct.Reg* %1406, i32 0, i32 0
  %ESI.i677 = bitcast %union.anon* %1407 to i32*
  %1408 = load i32, i32* %ESI.i677
  %1409 = zext i32 %1408 to i64
  %1410 = load i64, i64* %PC.i676
  %1411 = add i64 %1410, 2
  store i64 %1411, i64* %PC.i676
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1413 = bitcast %union.anon* %1412 to i32*
  %1414 = load i32, i32* %1413, align 8
  %1415 = zext i32 %1414 to i64
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1417 = bitcast %union.anon* %1416 to i32*
  %1418 = load i32, i32* %1417, align 8
  %1419 = zext i32 %1418 to i64
  %1420 = shl i64 %1409, 32
  %1421 = ashr exact i64 %1420, 32
  %1422 = shl i64 %1419, 32
  %1423 = or i64 %1422, %1415
  %1424 = sdiv i64 %1423, %1421
  %1425 = shl i64 %1424, 32
  %1426 = ashr exact i64 %1425, 32
  %1427 = icmp eq i64 %1424, %1426
  br i1 %1427, label %1432, label %1428

; <label>:1428:                                   ; preds = %block_.L_4a0242
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1430 = load i64, i64* %1429, align 8
  %1431 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1430, %struct.Memory* %loadMem_4a0264)
  br label %routine_idivl__esi.exit678

; <label>:1432:                                   ; preds = %block_.L_4a0242
  %1433 = srem i64 %1423, %1421
  %1434 = getelementptr inbounds %union.anon, %union.anon* %1412, i64 0, i32 0
  %1435 = and i64 %1424, 4294967295
  store i64 %1435, i64* %1434, align 8
  %1436 = getelementptr inbounds %union.anon, %union.anon* %1416, i64 0, i32 0
  %1437 = and i64 %1433, 4294967295
  store i64 %1437, i64* %1436, align 8
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1438, align 1
  %1439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1439, align 1
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1440, align 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1441, align 1
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1442, align 1
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1443, align 1
  br label %routine_idivl__esi.exit678

routine_idivl__esi.exit678:                       ; preds = %1428, %1432
  %1444 = phi %struct.Memory* [ %1431, %1428 ], [ %loadMem_4a0264, %1432 ]
  store %struct.Memory* %1444, %struct.Memory** %MEMORY
  %loadMem_4a0266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1446 = getelementptr inbounds %struct.GPR, %struct.GPR* %1445, i32 0, i32 33
  %1447 = getelementptr inbounds %struct.Reg, %struct.Reg* %1446, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %1447 to i64*
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1449 = getelementptr inbounds %struct.GPR, %struct.GPR* %1448, i32 0, i32 1
  %1450 = getelementptr inbounds %struct.Reg, %struct.Reg* %1449, i32 0, i32 0
  %EAX.i674 = bitcast %union.anon* %1450 to i32*
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1452 = getelementptr inbounds %struct.GPR, %struct.GPR* %1451, i32 0, i32 5
  %1453 = getelementptr inbounds %struct.Reg, %struct.Reg* %1452, i32 0, i32 0
  %ECX.i675 = bitcast %union.anon* %1453 to i32*
  %1454 = load i32, i32* %ECX.i675
  %1455 = zext i32 %1454 to i64
  %1456 = load i32, i32* %EAX.i674
  %1457 = zext i32 %1456 to i64
  %1458 = load i64, i64* %PC.i673
  %1459 = add i64 %1458, 2
  store i64 %1459, i64* %PC.i673
  %1460 = sub i32 %1454, %1456
  %1461 = icmp ult i32 %1454, %1456
  %1462 = zext i1 %1461 to i8
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1462, i8* %1463, align 1
  %1464 = and i32 %1460, 255
  %1465 = call i32 @llvm.ctpop.i32(i32 %1464)
  %1466 = trunc i32 %1465 to i8
  %1467 = and i8 %1466, 1
  %1468 = xor i8 %1467, 1
  %1469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1468, i8* %1469, align 1
  %1470 = xor i64 %1457, %1455
  %1471 = trunc i64 %1470 to i32
  %1472 = xor i32 %1471, %1460
  %1473 = lshr i32 %1472, 4
  %1474 = trunc i32 %1473 to i8
  %1475 = and i8 %1474, 1
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1475, i8* %1476, align 1
  %1477 = icmp eq i32 %1460, 0
  %1478 = zext i1 %1477 to i8
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1478, i8* %1479, align 1
  %1480 = lshr i32 %1460, 31
  %1481 = trunc i32 %1480 to i8
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1481, i8* %1482, align 1
  %1483 = lshr i32 %1454, 31
  %1484 = lshr i32 %1456, 31
  %1485 = xor i32 %1484, %1483
  %1486 = xor i32 %1480, %1483
  %1487 = add i32 %1486, %1485
  %1488 = icmp eq i32 %1487, 2
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1489, i8* %1490, align 1
  store %struct.Memory* %loadMem_4a0266, %struct.Memory** %MEMORY
  %loadMem_4a0268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %1493 to i64*
  %1494 = load i64, i64* %PC.i672
  %1495 = add i64 %1494, 797
  %1496 = load i64, i64* %PC.i672
  %1497 = add i64 %1496, 6
  %1498 = load i64, i64* %PC.i672
  %1499 = add i64 %1498, 6
  store i64 %1499, i64* %PC.i672
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1501 = load i8, i8* %1500, align 1
  %1502 = icmp ne i8 %1501, 0
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1504 = load i8, i8* %1503, align 1
  %1505 = icmp ne i8 %1504, 0
  %1506 = xor i1 %1502, %1505
  %1507 = xor i1 %1506, true
  %1508 = zext i1 %1507 to i8
  store i8 %1508, i8* %BRANCH_TAKEN, align 1
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1510 = select i1 %1506, i64 %1497, i64 %1495
  store i64 %1510, i64* %1509, align 8
  store %struct.Memory* %loadMem_4a0268, %struct.Memory** %MEMORY
  %loadBr_4a0268 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0268 = icmp eq i8 %loadBr_4a0268, 1
  br i1 %cmpBr_4a0268, label %block_.L_4a0585, label %block_4a026e

block_4a026e:                                     ; preds = %routine_idivl__esi.exit678
  %loadMem_4a026e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 15
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RBP.i671
  %1521 = sub i64 %1520, 8
  %1522 = load i64, i64* %PC.i669
  %1523 = add i64 %1522, 4
  store i64 %1523, i64* %PC.i669
  %1524 = inttoptr i64 %1521 to i64*
  %1525 = load i64, i64* %1524
  store i64 %1525, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_4a026e, %struct.Memory** %MEMORY
  %loadMem_4a0272 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 33
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %1528 to i64*
  %1529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1530 = getelementptr inbounds %struct.GPR, %struct.GPR* %1529, i32 0, i32 5
  %1531 = getelementptr inbounds %struct.Reg, %struct.Reg* %1530, i32 0, i32 0
  %RCX.i667 = bitcast %union.anon* %1531 to i64*
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 15
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %1534 to i64*
  %1535 = load i64, i64* %RBP.i668
  %1536 = sub i64 %1535, 96
  %1537 = load i64, i64* %PC.i666
  %1538 = add i64 %1537, 4
  store i64 %1538, i64* %PC.i666
  %1539 = inttoptr i64 %1536 to i32*
  %1540 = load i32, i32* %1539
  %1541 = sext i32 %1540 to i64
  store i64 %1541, i64* %RCX.i667, align 8
  store %struct.Memory* %loadMem_4a0272, %struct.Memory** %MEMORY
  %loadMem_4a0276 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %1547 to i64*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 5
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RCX.i665 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RAX.i664
  %1552 = load i64, i64* %RCX.i665
  %1553 = mul i64 %1552, 8
  %1554 = add i64 %1553, %1551
  %1555 = load i64, i64* %PC.i663
  %1556 = add i64 %1555, 4
  store i64 %1556, i64* %PC.i663
  %1557 = inttoptr i64 %1554 to i64*
  %1558 = load i64, i64* %1557
  store i64 %1558, i64* %RAX.i664, align 8
  store %struct.Memory* %loadMem_4a0276, %struct.Memory** %MEMORY
  %loadMem_4a027a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1560 = getelementptr inbounds %struct.GPR, %struct.GPR* %1559, i32 0, i32 33
  %1561 = getelementptr inbounds %struct.Reg, %struct.Reg* %1560, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1561 to i64*
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1563 = getelementptr inbounds %struct.GPR, %struct.GPR* %1562, i32 0, i32 5
  %1564 = getelementptr inbounds %struct.Reg, %struct.Reg* %1563, i32 0, i32 0
  %RCX.i661 = bitcast %union.anon* %1564 to i64*
  %1565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1566 = getelementptr inbounds %struct.GPR, %struct.GPR* %1565, i32 0, i32 15
  %1567 = getelementptr inbounds %struct.Reg, %struct.Reg* %1566, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %1567 to i64*
  %1568 = load i64, i64* %RBP.i662
  %1569 = sub i64 %1568, 92
  %1570 = load i64, i64* %PC.i660
  %1571 = add i64 %1570, 4
  store i64 %1571, i64* %PC.i660
  %1572 = inttoptr i64 %1569 to i32*
  %1573 = load i32, i32* %1572
  %1574 = sext i32 %1573 to i64
  store i64 %1574, i64* %RCX.i661, align 8
  store %struct.Memory* %loadMem_4a027a, %struct.Memory** %MEMORY
  %loadMem_4a027e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1577 to i64*
  %1578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1579 = getelementptr inbounds %struct.GPR, %struct.GPR* %1578, i32 0, i32 1
  %1580 = getelementptr inbounds %struct.Reg, %struct.Reg* %1579, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1580 to i64*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1582 = getelementptr inbounds %struct.GPR, %struct.GPR* %1581, i32 0, i32 5
  %1583 = getelementptr inbounds %struct.Reg, %struct.Reg* %1582, i32 0, i32 0
  %RCX.i658 = bitcast %union.anon* %1583 to i64*
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 7
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %RAX.i657
  %1588 = load i64, i64* %RCX.i658
  %1589 = add i64 %1588, %1587
  %1590 = load i64, i64* %PC.i656
  %1591 = add i64 %1590, 4
  store i64 %1591, i64* %PC.i656
  %1592 = inttoptr i64 %1589 to i8*
  %1593 = load i8, i8* %1592
  %1594 = zext i8 %1593 to i64
  store i64 %1594, i64* %RDX.i659, align 8
  store %struct.Memory* %loadMem_4a027e, %struct.Memory** %MEMORY
  %loadMem_4a0282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 7
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %EDX.i654 = bitcast %union.anon* %1600 to i32*
  %1601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1602 = getelementptr inbounds %struct.GPR, %struct.GPR* %1601, i32 0, i32 15
  %1603 = getelementptr inbounds %struct.Reg, %struct.Reg* %1602, i32 0, i32 0
  %RBP.i655 = bitcast %union.anon* %1603 to i64*
  %1604 = load i32, i32* %EDX.i654
  %1605 = zext i32 %1604 to i64
  %1606 = load i64, i64* %RBP.i655
  %1607 = sub i64 %1606, 40
  %1608 = load i64, i64* %PC.i653
  %1609 = add i64 %1608, 3
  store i64 %1609, i64* %PC.i653
  %1610 = inttoptr i64 %1607 to i32*
  %1611 = load i32, i32* %1610
  %1612 = sub i32 %1604, %1611
  %1613 = icmp ult i32 %1604, %1611
  %1614 = zext i1 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1614, i8* %1615, align 1
  %1616 = and i32 %1612, 255
  %1617 = call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1620, i8* %1621, align 1
  %1622 = xor i32 %1611, %1604
  %1623 = xor i32 %1622, %1612
  %1624 = lshr i32 %1623, 4
  %1625 = trunc i32 %1624 to i8
  %1626 = and i8 %1625, 1
  %1627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1626, i8* %1627, align 1
  %1628 = icmp eq i32 %1612, 0
  %1629 = zext i1 %1628 to i8
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1629, i8* %1630, align 1
  %1631 = lshr i32 %1612, 31
  %1632 = trunc i32 %1631 to i8
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1632, i8* %1633, align 1
  %1634 = lshr i32 %1604, 31
  %1635 = lshr i32 %1611, 31
  %1636 = xor i32 %1635, %1634
  %1637 = xor i32 %1631, %1634
  %1638 = add i32 %1637, %1636
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1640, i8* %1641, align 1
  store %struct.Memory* %loadMem_4a0282, %struct.Memory** %MEMORY
  %loadMem_4a0285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %PC.i652
  %1646 = add i64 %1645, 20
  %1647 = load i64, i64* %PC.i652
  %1648 = add i64 %1647, 6
  %1649 = load i64, i64* %PC.i652
  %1650 = add i64 %1649, 6
  store i64 %1650, i64* %PC.i652
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1652 = load i8, i8* %1651, align 1
  %1653 = icmp eq i8 %1652, 0
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %BRANCH_TAKEN, align 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1656 = select i1 %1653, i64 %1646, i64 %1648
  store i64 %1656, i64* %1655, align 8
  store %struct.Memory* %loadMem_4a0285, %struct.Memory** %MEMORY
  %loadBr_4a0285 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0285 = icmp eq i8 %loadBr_4a0285, 1
  br i1 %cmpBr_4a0285, label %block_.L_4a0299, label %block_4a028b

block_4a028b:                                     ; preds = %block_4a026e
  %loadMem_4a028b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 1
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %RAX.i650 = bitcast %union.anon* %1662 to i64*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 15
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RBP.i651
  %1667 = sub i64 %1666, 28
  %1668 = load i64, i64* %PC.i649
  %1669 = add i64 %1668, 3
  store i64 %1669, i64* %PC.i649
  %1670 = inttoptr i64 %1667 to i32*
  %1671 = load i32, i32* %1670
  %1672 = zext i32 %1671 to i64
  store i64 %1672, i64* %RAX.i650, align 8
  store %struct.Memory* %loadMem_4a028b, %struct.Memory** %MEMORY
  %loadMem_4a028e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1674 = getelementptr inbounds %struct.GPR, %struct.GPR* %1673, i32 0, i32 33
  %1675 = getelementptr inbounds %struct.Reg, %struct.Reg* %1674, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %1675 to i64*
  %1676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1677 = getelementptr inbounds %struct.GPR, %struct.GPR* %1676, i32 0, i32 1
  %1678 = getelementptr inbounds %struct.Reg, %struct.Reg* %1677, i32 0, i32 0
  %RAX.i648 = bitcast %union.anon* %1678 to i64*
  %1679 = load i64, i64* %RAX.i648
  %1680 = load i64, i64* %PC.i647
  %1681 = add i64 %1680, 3
  store i64 %1681, i64* %PC.i647
  %1682 = trunc i64 %1679 to i32
  %1683 = add i32 1, %1682
  %1684 = zext i32 %1683 to i64
  store i64 %1684, i64* %RAX.i648, align 8
  %1685 = icmp ult i32 %1683, %1682
  %1686 = icmp ult i32 %1683, 1
  %1687 = or i1 %1685, %1686
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1688, i8* %1689, align 1
  %1690 = and i32 %1683, 255
  %1691 = call i32 @llvm.ctpop.i32(i32 %1690)
  %1692 = trunc i32 %1691 to i8
  %1693 = and i8 %1692, 1
  %1694 = xor i8 %1693, 1
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1694, i8* %1695, align 1
  %1696 = xor i64 1, %1679
  %1697 = trunc i64 %1696 to i32
  %1698 = xor i32 %1697, %1683
  %1699 = lshr i32 %1698, 4
  %1700 = trunc i32 %1699 to i8
  %1701 = and i8 %1700, 1
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1701, i8* %1702, align 1
  %1703 = icmp eq i32 %1683, 0
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1704, i8* %1705, align 1
  %1706 = lshr i32 %1683, 31
  %1707 = trunc i32 %1706 to i8
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1707, i8* %1708, align 1
  %1709 = lshr i32 %1682, 31
  %1710 = xor i32 %1706, %1709
  %1711 = add i32 %1710, %1706
  %1712 = icmp eq i32 %1711, 2
  %1713 = zext i1 %1712 to i8
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1713, i8* %1714, align 1
  store %struct.Memory* %loadMem_4a028e, %struct.Memory** %MEMORY
  %loadMem_4a0291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 1
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %EAX.i645 = bitcast %union.anon* %1720 to i32*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 15
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RBP.i646 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RBP.i646
  %1725 = sub i64 %1724, 28
  %1726 = load i32, i32* %EAX.i645
  %1727 = zext i32 %1726 to i64
  %1728 = load i64, i64* %PC.i644
  %1729 = add i64 %1728, 3
  store i64 %1729, i64* %PC.i644
  %1730 = inttoptr i64 %1725 to i32*
  store i32 %1726, i32* %1730
  store %struct.Memory* %loadMem_4a0291, %struct.Memory** %MEMORY
  %loadMem_4a0294 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1732 = getelementptr inbounds %struct.GPR, %struct.GPR* %1731, i32 0, i32 33
  %1733 = getelementptr inbounds %struct.Reg, %struct.Reg* %1732, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1733 to i64*
  %1734 = load i64, i64* %PC.i643
  %1735 = add i64 %1734, 37
  %1736 = load i64, i64* %PC.i643
  %1737 = add i64 %1736, 5
  store i64 %1737, i64* %PC.i643
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1735, i64* %1738, align 8
  store %struct.Memory* %loadMem_4a0294, %struct.Memory** %MEMORY
  br label %block_.L_4a02b9

block_.L_4a0299:                                  ; preds = %block_4a026e
  %loadMem_4a0299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1740 = getelementptr inbounds %struct.GPR, %struct.GPR* %1739, i32 0, i32 33
  %1741 = getelementptr inbounds %struct.Reg, %struct.Reg* %1740, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1741 to i64*
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 11
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %RDI.i641 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 15
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1747 to i64*
  %1748 = load i64, i64* %RBP.i642
  %1749 = sub i64 %1748, 88
  %1750 = load i64, i64* %PC.i640
  %1751 = add i64 %1750, 4
  store i64 %1751, i64* %PC.i640
  store i64 %1749, i64* %RDI.i641, align 8
  store %struct.Memory* %loadMem_4a0299, %struct.Memory** %MEMORY
  %loadMem_4a029d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1753 = getelementptr inbounds %struct.GPR, %struct.GPR* %1752, i32 0, i32 33
  %1754 = getelementptr inbounds %struct.Reg, %struct.Reg* %1753, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1754 to i64*
  %1755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1756 = getelementptr inbounds %struct.GPR, %struct.GPR* %1755, i32 0, i32 1
  %1757 = getelementptr inbounds %struct.Reg, %struct.Reg* %1756, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %1757 to i64*
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 15
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %RBP.i639 = bitcast %union.anon* %1760 to i64*
  %1761 = load i64, i64* %RBP.i639
  %1762 = sub i64 %1761, 28
  %1763 = load i64, i64* %PC.i637
  %1764 = add i64 %1763, 3
  store i64 %1764, i64* %PC.i637
  %1765 = inttoptr i64 %1762 to i32*
  %1766 = load i32, i32* %1765
  %1767 = zext i32 %1766 to i64
  store i64 %1767, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_4a029d, %struct.Memory** %MEMORY
  %loadMem_4a02a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1769 = getelementptr inbounds %struct.GPR, %struct.GPR* %1768, i32 0, i32 33
  %1770 = getelementptr inbounds %struct.Reg, %struct.Reg* %1769, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1770 to i64*
  %1771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1772 = getelementptr inbounds %struct.GPR, %struct.GPR* %1771, i32 0, i32 1
  %1773 = getelementptr inbounds %struct.Reg, %struct.Reg* %1772, i32 0, i32 0
  %EAX.i635 = bitcast %union.anon* %1773 to i32*
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 15
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1776 to i64*
  %1777 = load i64, i64* %RBP.i636
  %1778 = sub i64 %1777, 84
  %1779 = load i32, i32* %EAX.i635
  %1780 = zext i32 %1779 to i64
  %1781 = load i64, i64* %PC.i634
  %1782 = add i64 %1781, 3
  store i64 %1782, i64* %PC.i634
  %1783 = inttoptr i64 %1778 to i32*
  store i32 %1779, i32* %1783
  store %struct.Memory* %loadMem_4a02a0, %struct.Memory** %MEMORY
  %loadMem_4a02a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 9
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RSI.i632 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 15
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RBP.i633
  %1794 = sub i64 %1793, 16
  %1795 = load i64, i64* %PC.i631
  %1796 = add i64 %1795, 4
  store i64 %1796, i64* %PC.i631
  %1797 = inttoptr i64 %1794 to i64*
  %1798 = load i64, i64* %1797
  store i64 %1798, i64* %RSI.i632, align 8
  store %struct.Memory* %loadMem_4a02a3, %struct.Memory** %MEMORY
  %loadMem1_4a02a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1801 to i64*
  %1802 = load i64, i64* %PC.i630
  %1803 = add i64 %1802, 53065
  %1804 = load i64, i64* %PC.i630
  %1805 = add i64 %1804, 5
  %1806 = load i64, i64* %PC.i630
  %1807 = add i64 %1806, 5
  store i64 %1807, i64* %PC.i630
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1809 = load i64, i64* %1808, align 8
  %1810 = add i64 %1809, -8
  %1811 = inttoptr i64 %1810 to i64*
  store i64 %1805, i64* %1811
  store i64 %1810, i64* %1808, align 8
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1803, i64* %1812, align 8
  store %struct.Memory* %loadMem1_4a02a7, %struct.Memory** %MEMORY
  %loadMem2_4a02a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a02a7 = load i64, i64* %3
  %call2_4a02a7 = call %struct.Memory* @sub_4ad1f0.writeSyntaxElement2Buf_UVLC(%struct.State* %0, i64 %loadPC_4a02a7, %struct.Memory* %loadMem2_4a02a7)
  store %struct.Memory* %call2_4a02a7, %struct.Memory** %MEMORY
  %loadMem_4a02ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 33
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1815 to i64*
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 1
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 15
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RBP.i629 = bitcast %union.anon* %1821 to i64*
  %1822 = load i64, i64* %RAX.i628
  %1823 = load i64, i64* %RBP.i629
  %1824 = sub i64 %1823, 128
  %1825 = load i64, i64* %PC.i627
  %1826 = add i64 %1825, 3
  store i64 %1826, i64* %PC.i627
  %1827 = trunc i64 %1822 to i32
  %1828 = inttoptr i64 %1824 to i32*
  %1829 = load i32, i32* %1828
  %1830 = add i32 %1829, %1827
  %1831 = zext i32 %1830 to i64
  store i64 %1831, i64* %RAX.i628, align 8
  %1832 = icmp ult i32 %1830, %1827
  %1833 = icmp ult i32 %1830, %1829
  %1834 = or i1 %1832, %1833
  %1835 = zext i1 %1834 to i8
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1835, i8* %1836, align 1
  %1837 = and i32 %1830, 255
  %1838 = call i32 @llvm.ctpop.i32(i32 %1837)
  %1839 = trunc i32 %1838 to i8
  %1840 = and i8 %1839, 1
  %1841 = xor i8 %1840, 1
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1841, i8* %1842, align 1
  %1843 = xor i32 %1829, %1827
  %1844 = xor i32 %1843, %1830
  %1845 = lshr i32 %1844, 4
  %1846 = trunc i32 %1845 to i8
  %1847 = and i8 %1846, 1
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1847, i8* %1848, align 1
  %1849 = icmp eq i32 %1830, 0
  %1850 = zext i1 %1849 to i8
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1850, i8* %1851, align 1
  %1852 = lshr i32 %1830, 31
  %1853 = trunc i32 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1853, i8* %1854, align 1
  %1855 = lshr i32 %1827, 31
  %1856 = lshr i32 %1829, 31
  %1857 = xor i32 %1852, %1855
  %1858 = xor i32 %1852, %1856
  %1859 = add i32 %1857, %1858
  %1860 = icmp eq i32 %1859, 2
  %1861 = zext i1 %1860 to i8
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1861, i8* %1862, align 1
  store %struct.Memory* %loadMem_4a02ac, %struct.Memory** %MEMORY
  %loadMem_4a02af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 1
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %EAX.i625 = bitcast %union.anon* %1868 to i32*
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 15
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1871 to i64*
  %1872 = load i64, i64* %RBP.i626
  %1873 = sub i64 %1872, 128
  %1874 = load i32, i32* %EAX.i625
  %1875 = zext i32 %1874 to i64
  %1876 = load i64, i64* %PC.i624
  %1877 = add i64 %1876, 3
  store i64 %1877, i64* %PC.i624
  %1878 = inttoptr i64 %1873 to i32*
  store i32 %1874, i32* %1878
  store %struct.Memory* %loadMem_4a02af, %struct.Memory** %MEMORY
  %loadMem_4a02b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 15
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RBP.i623 = bitcast %union.anon* %1884 to i64*
  %1885 = load i64, i64* %RBP.i623
  %1886 = sub i64 %1885, 28
  %1887 = load i64, i64* %PC.i622
  %1888 = add i64 %1887, 7
  store i64 %1888, i64* %PC.i622
  %1889 = inttoptr i64 %1886 to i32*
  store i32 0, i32* %1889
  store %struct.Memory* %loadMem_4a02b2, %struct.Memory** %MEMORY
  br label %block_.L_4a02b9

block_.L_4a02b9:                                  ; preds = %block_.L_4a0299, %block_4a028b
  %loadMem_4a02b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 15
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %RBP.i621
  %1897 = sub i64 %1896, 116
  %1898 = load i64, i64* %PC.i620
  %1899 = add i64 %1898, 4
  store i64 %1899, i64* %PC.i620
  %1900 = inttoptr i64 %1897 to i32*
  %1901 = load i32, i32* %1900
  %1902 = sub i32 %1901, -1
  %1903 = icmp ult i32 %1901, -1
  %1904 = zext i1 %1903 to i8
  %1905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1904, i8* %1905, align 1
  %1906 = and i32 %1902, 255
  %1907 = call i32 @llvm.ctpop.i32(i32 %1906)
  %1908 = trunc i32 %1907 to i8
  %1909 = and i8 %1908, 1
  %1910 = xor i8 %1909, 1
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1910, i8* %1911, align 1
  %1912 = xor i32 %1901, -1
  %1913 = xor i32 %1912, %1902
  %1914 = lshr i32 %1913, 4
  %1915 = trunc i32 %1914 to i8
  %1916 = and i8 %1915, 1
  %1917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1916, i8* %1917, align 1
  %1918 = icmp eq i32 %1902, 0
  %1919 = zext i1 %1918 to i8
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1919, i8* %1920, align 1
  %1921 = lshr i32 %1902, 31
  %1922 = trunc i32 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1922, i8* %1923, align 1
  %1924 = lshr i32 %1901, 31
  %1925 = xor i32 %1924, 1
  %1926 = xor i32 %1921, %1924
  %1927 = add i32 %1926, %1925
  %1928 = icmp eq i32 %1927, 2
  %1929 = zext i1 %1928 to i8
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1929, i8* %1930, align 1
  store %struct.Memory* %loadMem_4a02b9, %struct.Memory** %MEMORY
  %loadMem_4a02bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 33
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %PC.i619
  %1935 = add i64 %1934, 148
  %1936 = load i64, i64* %PC.i619
  %1937 = add i64 %1936, 6
  %1938 = load i64, i64* %PC.i619
  %1939 = add i64 %1938, 6
  store i64 %1939, i64* %PC.i619
  %1940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1941 = load i8, i8* %1940, align 1
  %1942 = icmp eq i8 %1941, 0
  %1943 = zext i1 %1942 to i8
  store i8 %1943, i8* %BRANCH_TAKEN, align 1
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1945 = select i1 %1942, i64 %1935, i64 %1937
  store i64 %1945, i64* %1944, align 8
  store %struct.Memory* %loadMem_4a02bd, %struct.Memory** %MEMORY
  %loadBr_4a02bd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a02bd = icmp eq i8 %loadBr_4a02bd, 1
  br i1 %cmpBr_4a02bd, label %block_.L_4a0351, label %block_4a02c3

block_4a02c3:                                     ; preds = %block_.L_4a02b9
  %loadMem_4a02c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1947 = getelementptr inbounds %struct.GPR, %struct.GPR* %1946, i32 0, i32 33
  %1948 = getelementptr inbounds %struct.Reg, %struct.Reg* %1947, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1948 to i64*
  %1949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1950 = getelementptr inbounds %struct.GPR, %struct.GPR* %1949, i32 0, i32 15
  %1951 = getelementptr inbounds %struct.Reg, %struct.Reg* %1950, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %1951 to i64*
  %1952 = load i64, i64* %RBP.i618
  %1953 = sub i64 %1952, 120
  %1954 = load i64, i64* %PC.i617
  %1955 = add i64 %1954, 4
  store i64 %1955, i64* %PC.i617
  %1956 = inttoptr i64 %1953 to i32*
  %1957 = load i32, i32* %1956
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1958, align 1
  %1959 = and i32 %1957, 255
  %1960 = call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1963, i8* %1964, align 1
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1965, align 1
  %1966 = icmp eq i32 %1957, 0
  %1967 = zext i1 %1966 to i8
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1967, i8* %1968, align 1
  %1969 = lshr i32 %1957, 31
  %1970 = trunc i32 %1969 to i8
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1970, i8* %1971, align 1
  %1972 = lshr i32 %1957, 31
  %1973 = xor i32 %1969, %1972
  %1974 = add i32 %1973, %1972
  %1975 = icmp eq i32 %1974, 2
  %1976 = zext i1 %1975 to i8
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1976, i8* %1977, align 1
  store %struct.Memory* %loadMem_4a02c3, %struct.Memory** %MEMORY
  %loadMem_4a02c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 33
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %1980 to i64*
  %1981 = load i64, i64* %PC.i616
  %1982 = add i64 %1981, 138
  %1983 = load i64, i64* %PC.i616
  %1984 = add i64 %1983, 6
  %1985 = load i64, i64* %PC.i616
  %1986 = add i64 %1985, 6
  store i64 %1986, i64* %PC.i616
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1988 = load i8, i8* %1987, align 1
  %1989 = icmp eq i8 %1988, 0
  %1990 = zext i1 %1989 to i8
  store i8 %1990, i8* %BRANCH_TAKEN, align 1
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1992 = select i1 %1989, i64 %1982, i64 %1984
  store i64 %1992, i64* %1991, align 8
  store %struct.Memory* %loadMem_4a02c7, %struct.Memory** %MEMORY
  %loadBr_4a02c7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a02c7 = icmp eq i8 %loadBr_4a02c7, 1
  br i1 %cmpBr_4a02c7, label %block_.L_4a0351, label %block_4a02cd

block_4a02cd:                                     ; preds = %block_4a02c3
  %loadMem_4a02cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1994 = getelementptr inbounds %struct.GPR, %struct.GPR* %1993, i32 0, i32 33
  %1995 = getelementptr inbounds %struct.Reg, %struct.Reg* %1994, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1995 to i64*
  %1996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1997 = getelementptr inbounds %struct.GPR, %struct.GPR* %1996, i32 0, i32 1
  %1998 = getelementptr inbounds %struct.Reg, %struct.Reg* %1997, i32 0, i32 0
  %RAX.i614 = bitcast %union.anon* %1998 to i64*
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 15
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %2001 to i64*
  %2002 = load i64, i64* %RBP.i615
  %2003 = sub i64 %2002, 92
  %2004 = load i64, i64* %PC.i613
  %2005 = add i64 %2004, 3
  store i64 %2005, i64* %PC.i613
  %2006 = inttoptr i64 %2003 to i32*
  %2007 = load i32, i32* %2006
  %2008 = zext i32 %2007 to i64
  store i64 %2008, i64* %RAX.i614, align 8
  store %struct.Memory* %loadMem_4a02cd, %struct.Memory** %MEMORY
  %loadMem_4a02d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 33
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2013 = getelementptr inbounds %struct.GPR, %struct.GPR* %2012, i32 0, i32 1
  %2014 = getelementptr inbounds %struct.Reg, %struct.Reg* %2013, i32 0, i32 0
  %EAX.i611 = bitcast %union.anon* %2014 to i32*
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 15
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %2017 to i64*
  %2018 = load i32, i32* %EAX.i611
  %2019 = zext i32 %2018 to i64
  %2020 = load i64, i64* %RBP.i612
  %2021 = sub i64 %2020, 100
  %2022 = load i64, i64* %PC.i610
  %2023 = add i64 %2022, 3
  store i64 %2023, i64* %PC.i610
  %2024 = inttoptr i64 %2021 to i32*
  %2025 = load i32, i32* %2024
  %2026 = sub i32 %2018, %2025
  %2027 = icmp ult i32 %2018, %2025
  %2028 = zext i1 %2027 to i8
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2028, i8* %2029, align 1
  %2030 = and i32 %2026, 255
  %2031 = call i32 @llvm.ctpop.i32(i32 %2030)
  %2032 = trunc i32 %2031 to i8
  %2033 = and i8 %2032, 1
  %2034 = xor i8 %2033, 1
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2034, i8* %2035, align 1
  %2036 = xor i32 %2025, %2018
  %2037 = xor i32 %2036, %2026
  %2038 = lshr i32 %2037, 4
  %2039 = trunc i32 %2038 to i8
  %2040 = and i8 %2039, 1
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2040, i8* %2041, align 1
  %2042 = icmp eq i32 %2026, 0
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2043, i8* %2044, align 1
  %2045 = lshr i32 %2026, 31
  %2046 = trunc i32 %2045 to i8
  %2047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2046, i8* %2047, align 1
  %2048 = lshr i32 %2018, 31
  %2049 = lshr i32 %2025, 31
  %2050 = xor i32 %2049, %2048
  %2051 = xor i32 %2045, %2048
  %2052 = add i32 %2051, %2050
  %2053 = icmp eq i32 %2052, 2
  %2054 = zext i1 %2053 to i8
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2054, i8* %2055, align 1
  store %struct.Memory* %loadMem_4a02d0, %struct.Memory** %MEMORY
  %loadMem_4a02d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2057 = getelementptr inbounds %struct.GPR, %struct.GPR* %2056, i32 0, i32 33
  %2058 = getelementptr inbounds %struct.Reg, %struct.Reg* %2057, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2058 to i64*
  %2059 = load i64, i64* %PC.i609
  %2060 = add i64 %2059, 20
  %2061 = load i64, i64* %PC.i609
  %2062 = add i64 %2061, 6
  %2063 = load i64, i64* %PC.i609
  %2064 = add i64 %2063, 6
  store i64 %2064, i64* %PC.i609
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2066 = load i8, i8* %2065, align 1
  %2067 = icmp ne i8 %2066, 0
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2069 = load i8, i8* %2068, align 1
  %2070 = icmp ne i8 %2069, 0
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2072 = load i8, i8* %2071, align 1
  %2073 = icmp ne i8 %2072, 0
  %2074 = xor i1 %2070, %2073
  %2075 = or i1 %2067, %2074
  %2076 = zext i1 %2075 to i8
  store i8 %2076, i8* %BRANCH_TAKEN, align 1
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2078 = select i1 %2075, i64 %2060, i64 %2062
  store i64 %2078, i64* %2077, align 8
  store %struct.Memory* %loadMem_4a02d3, %struct.Memory** %MEMORY
  %loadBr_4a02d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a02d3 = icmp eq i8 %loadBr_4a02d3, 1
  br i1 %cmpBr_4a02d3, label %block_.L_4a02e7, label %block_4a02d9

block_4a02d9:                                     ; preds = %block_4a02cd
  %loadMem_4a02d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 1
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 15
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %RBP.i608
  %2089 = sub i64 %2088, 92
  %2090 = load i64, i64* %PC.i606
  %2091 = add i64 %2090, 3
  store i64 %2091, i64* %PC.i606
  %2092 = inttoptr i64 %2089 to i32*
  %2093 = load i32, i32* %2092
  %2094 = zext i32 %2093 to i64
  store i64 %2094, i64* %RAX.i607, align 8
  store %struct.Memory* %loadMem_4a02d9, %struct.Memory** %MEMORY
  %loadMem_4a02dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2096 = getelementptr inbounds %struct.GPR, %struct.GPR* %2095, i32 0, i32 33
  %2097 = getelementptr inbounds %struct.Reg, %struct.Reg* %2096, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2097 to i64*
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 1
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %RAX.i605
  %2102 = load i64, i64* %PC.i604
  %2103 = add i64 %2102, 3
  store i64 %2103, i64* %PC.i604
  %2104 = trunc i64 %2101 to i32
  %2105 = add i32 -1, %2104
  %2106 = zext i32 %2105 to i64
  store i64 %2106, i64* %RAX.i605, align 8
  %2107 = icmp ult i32 %2105, %2104
  %2108 = icmp ult i32 %2105, -1
  %2109 = or i1 %2107, %2108
  %2110 = zext i1 %2109 to i8
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2110, i8* %2111, align 1
  %2112 = and i32 %2105, 255
  %2113 = call i32 @llvm.ctpop.i32(i32 %2112)
  %2114 = trunc i32 %2113 to i8
  %2115 = and i8 %2114, 1
  %2116 = xor i8 %2115, 1
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2116, i8* %2117, align 1
  %2118 = xor i64 -1, %2101
  %2119 = trunc i64 %2118 to i32
  %2120 = xor i32 %2119, %2105
  %2121 = lshr i32 %2120, 4
  %2122 = trunc i32 %2121 to i8
  %2123 = and i8 %2122, 1
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2123, i8* %2124, align 1
  %2125 = icmp eq i32 %2105, 0
  %2126 = zext i1 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2126, i8* %2127, align 1
  %2128 = lshr i32 %2105, 31
  %2129 = trunc i32 %2128 to i8
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2129, i8* %2130, align 1
  %2131 = lshr i32 %2104, 31
  %2132 = xor i32 %2128, %2131
  %2133 = xor i32 %2128, 1
  %2134 = add i32 %2132, %2133
  %2135 = icmp eq i32 %2134, 2
  %2136 = zext i1 %2135 to i8
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2136, i8* %2137, align 1
  store %struct.Memory* %loadMem_4a02dc, %struct.Memory** %MEMORY
  %loadMem_4a02df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 33
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2140 to i64*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 1
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %EAX.i602 = bitcast %union.anon* %2143 to i32*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 15
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %RBP.i603 = bitcast %union.anon* %2146 to i64*
  %2147 = load i64, i64* %RBP.i603
  %2148 = sub i64 %2147, 92
  %2149 = load i32, i32* %EAX.i602
  %2150 = zext i32 %2149 to i64
  %2151 = load i64, i64* %PC.i601
  %2152 = add i64 %2151, 3
  store i64 %2152, i64* %PC.i601
  %2153 = inttoptr i64 %2148 to i32*
  store i32 %2149, i32* %2153
  store %struct.Memory* %loadMem_4a02df, %struct.Memory** %MEMORY
  %loadMem_4a02e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 33
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %PC.i600
  %2158 = add i64 %2157, 106
  %2159 = load i64, i64* %PC.i600
  %2160 = add i64 %2159, 5
  store i64 %2160, i64* %PC.i600
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2158, i64* %2161, align 8
  store %struct.Memory* %loadMem_4a02e2, %struct.Memory** %MEMORY
  br label %block_.L_4a034c

block_.L_4a02e7:                                  ; preds = %block_4a02cd
  %loadMem_4a02e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2163 = getelementptr inbounds %struct.GPR, %struct.GPR* %2162, i32 0, i32 33
  %2164 = getelementptr inbounds %struct.Reg, %struct.Reg* %2163, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2164 to i64*
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 15
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %RBP.i599
  %2169 = sub i64 %2168, 92
  %2170 = load i64, i64* %PC.i598
  %2171 = add i64 %2170, 4
  store i64 %2171, i64* %PC.i598
  %2172 = inttoptr i64 %2169 to i32*
  %2173 = load i32, i32* %2172
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2174, align 1
  %2175 = and i32 %2173, 255
  %2176 = call i32 @llvm.ctpop.i32(i32 %2175)
  %2177 = trunc i32 %2176 to i8
  %2178 = and i8 %2177, 1
  %2179 = xor i8 %2178, 1
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2179, i8* %2180, align 1
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2181, align 1
  %2182 = icmp eq i32 %2173, 0
  %2183 = zext i1 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2183, i8* %2184, align 1
  %2185 = lshr i32 %2173, 31
  %2186 = trunc i32 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2186, i8* %2187, align 1
  %2188 = lshr i32 %2173, 31
  %2189 = xor i32 %2185, %2188
  %2190 = add i32 %2189, %2188
  %2191 = icmp eq i32 %2190, 2
  %2192 = zext i1 %2191 to i8
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2192, i8* %2193, align 1
  store %struct.Memory* %loadMem_4a02e7, %struct.Memory** %MEMORY
  %loadMem_4a02eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2195 = getelementptr inbounds %struct.GPR, %struct.GPR* %2194, i32 0, i32 33
  %2196 = getelementptr inbounds %struct.Reg, %struct.Reg* %2195, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2196 to i64*
  %2197 = load i64, i64* %PC.i597
  %2198 = add i64 %2197, 43
  %2199 = load i64, i64* %PC.i597
  %2200 = add i64 %2199, 6
  %2201 = load i64, i64* %PC.i597
  %2202 = add i64 %2201, 6
  store i64 %2202, i64* %PC.i597
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2204 = load i8, i8* %2203, align 1
  %2205 = icmp eq i8 %2204, 0
  %2206 = zext i1 %2205 to i8
  store i8 %2206, i8* %BRANCH_TAKEN, align 1
  %2207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2208 = select i1 %2205, i64 %2198, i64 %2200
  store i64 %2208, i64* %2207, align 8
  store %struct.Memory* %loadMem_4a02eb, %struct.Memory** %MEMORY
  %loadBr_4a02eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a02eb = icmp eq i8 %loadBr_4a02eb, 1
  br i1 %cmpBr_4a02eb, label %block_.L_4a0316, label %block_4a02f1

block_4a02f1:                                     ; preds = %block_.L_4a02e7
  %loadMem_4a02f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2210 = getelementptr inbounds %struct.GPR, %struct.GPR* %2209, i32 0, i32 33
  %2211 = getelementptr inbounds %struct.Reg, %struct.Reg* %2210, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2211 to i64*
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 1
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 15
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RBP.i596
  %2219 = sub i64 %2218, 108
  %2220 = load i64, i64* %PC.i594
  %2221 = add i64 %2220, 3
  store i64 %2221, i64* %PC.i594
  %2222 = inttoptr i64 %2219 to i32*
  %2223 = load i32, i32* %2222
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RAX.i595, align 8
  store %struct.Memory* %loadMem_4a02f1, %struct.Memory** %MEMORY
  %loadMem_4a02f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2226 = getelementptr inbounds %struct.GPR, %struct.GPR* %2225, i32 0, i32 33
  %2227 = getelementptr inbounds %struct.Reg, %struct.Reg* %2226, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2227 to i64*
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 1
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %RAX.i593 = bitcast %union.anon* %2230 to i64*
  %2231 = load i64, i64* %RAX.i593
  %2232 = load i64, i64* %PC.i592
  %2233 = add i64 %2232, 3
  store i64 %2233, i64* %PC.i592
  %2234 = trunc i64 %2231 to i32
  %2235 = add i32 1, %2234
  %2236 = zext i32 %2235 to i64
  store i64 %2236, i64* %RAX.i593, align 8
  %2237 = icmp ult i32 %2235, %2234
  %2238 = icmp ult i32 %2235, 1
  %2239 = or i1 %2237, %2238
  %2240 = zext i1 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2240, i8* %2241, align 1
  %2242 = and i32 %2235, 255
  %2243 = call i32 @llvm.ctpop.i32(i32 %2242)
  %2244 = trunc i32 %2243 to i8
  %2245 = and i8 %2244, 1
  %2246 = xor i8 %2245, 1
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2246, i8* %2247, align 1
  %2248 = xor i64 1, %2231
  %2249 = trunc i64 %2248 to i32
  %2250 = xor i32 %2249, %2235
  %2251 = lshr i32 %2250, 4
  %2252 = trunc i32 %2251 to i8
  %2253 = and i8 %2252, 1
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2253, i8* %2254, align 1
  %2255 = icmp eq i32 %2235, 0
  %2256 = zext i1 %2255 to i8
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2256, i8* %2257, align 1
  %2258 = lshr i32 %2235, 31
  %2259 = trunc i32 %2258 to i8
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2259, i8* %2260, align 1
  %2261 = lshr i32 %2234, 31
  %2262 = xor i32 %2258, %2261
  %2263 = add i32 %2262, %2258
  %2264 = icmp eq i32 %2263, 2
  %2265 = zext i1 %2264 to i8
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2265, i8* %2266, align 1
  store %struct.Memory* %loadMem_4a02f4, %struct.Memory** %MEMORY
  %loadMem_4a02f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %EAX.i590 = bitcast %union.anon* %2272 to i32*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 15
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %2275 to i64*
  %2276 = load i64, i64* %RBP.i591
  %2277 = sub i64 %2276, 96
  %2278 = load i32, i32* %EAX.i590
  %2279 = zext i32 %2278 to i64
  %2280 = load i64, i64* %PC.i589
  %2281 = add i64 %2280, 3
  store i64 %2281, i64* %PC.i589
  %2282 = inttoptr i64 %2277 to i32*
  store i32 %2278, i32* %2282
  store %struct.Memory* %loadMem_4a02f7, %struct.Memory** %MEMORY
  %loadMem_4a02fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2284 = getelementptr inbounds %struct.GPR, %struct.GPR* %2283, i32 0, i32 33
  %2285 = getelementptr inbounds %struct.Reg, %struct.Reg* %2284, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2285 to i64*
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2287 = getelementptr inbounds %struct.GPR, %struct.GPR* %2286, i32 0, i32 1
  %2288 = getelementptr inbounds %struct.Reg, %struct.Reg* %2287, i32 0, i32 0
  %RAX.i587 = bitcast %union.anon* %2288 to i64*
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 15
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %RBP.i588 = bitcast %union.anon* %2291 to i64*
  %2292 = load i64, i64* %RBP.i588
  %2293 = sub i64 %2292, 108
  %2294 = load i64, i64* %PC.i586
  %2295 = add i64 %2294, 3
  store i64 %2295, i64* %PC.i586
  %2296 = inttoptr i64 %2293 to i32*
  %2297 = load i32, i32* %2296
  %2298 = zext i32 %2297 to i64
  store i64 %2298, i64* %RAX.i587, align 8
  store %struct.Memory* %loadMem_4a02fa, %struct.Memory** %MEMORY
  %loadMem_4a02fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2300 = getelementptr inbounds %struct.GPR, %struct.GPR* %2299, i32 0, i32 33
  %2301 = getelementptr inbounds %struct.Reg, %struct.Reg* %2300, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2301 to i64*
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2303 = getelementptr inbounds %struct.GPR, %struct.GPR* %2302, i32 0, i32 1
  %2304 = getelementptr inbounds %struct.Reg, %struct.Reg* %2303, i32 0, i32 0
  %RAX.i585 = bitcast %union.anon* %2304 to i64*
  %2305 = load i64, i64* %RAX.i585
  %2306 = load i64, i64* %PC.i584
  %2307 = add i64 %2306, 3
  store i64 %2307, i64* %PC.i584
  %2308 = trunc i64 %2305 to i32
  %2309 = add i32 1, %2308
  %2310 = zext i32 %2309 to i64
  store i64 %2310, i64* %RAX.i585, align 8
  %2311 = icmp ult i32 %2309, %2308
  %2312 = icmp ult i32 %2309, 1
  %2313 = or i1 %2311, %2312
  %2314 = zext i1 %2313 to i8
  %2315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2314, i8* %2315, align 1
  %2316 = and i32 %2309, 255
  %2317 = call i32 @llvm.ctpop.i32(i32 %2316)
  %2318 = trunc i32 %2317 to i8
  %2319 = and i8 %2318, 1
  %2320 = xor i8 %2319, 1
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2320, i8* %2321, align 1
  %2322 = xor i64 1, %2305
  %2323 = trunc i64 %2322 to i32
  %2324 = xor i32 %2323, %2309
  %2325 = lshr i32 %2324, 4
  %2326 = trunc i32 %2325 to i8
  %2327 = and i8 %2326, 1
  %2328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2327, i8* %2328, align 1
  %2329 = icmp eq i32 %2309, 0
  %2330 = zext i1 %2329 to i8
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2330, i8* %2331, align 1
  %2332 = lshr i32 %2309, 31
  %2333 = trunc i32 %2332 to i8
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2333, i8* %2334, align 1
  %2335 = lshr i32 %2308, 31
  %2336 = xor i32 %2332, %2335
  %2337 = add i32 %2336, %2332
  %2338 = icmp eq i32 %2337, 2
  %2339 = zext i1 %2338 to i8
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2339, i8* %2340, align 1
  store %struct.Memory* %loadMem_4a02fd, %struct.Memory** %MEMORY
  %loadMem_4a0300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2342 = getelementptr inbounds %struct.GPR, %struct.GPR* %2341, i32 0, i32 33
  %2343 = getelementptr inbounds %struct.Reg, %struct.Reg* %2342, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2343 to i64*
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2345 = getelementptr inbounds %struct.GPR, %struct.GPR* %2344, i32 0, i32 1
  %2346 = getelementptr inbounds %struct.Reg, %struct.Reg* %2345, i32 0, i32 0
  %EAX.i582 = bitcast %union.anon* %2346 to i32*
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 15
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %RBP.i583 = bitcast %union.anon* %2349 to i64*
  %2350 = load i64, i64* %RBP.i583
  %2351 = sub i64 %2350, 108
  %2352 = load i32, i32* %EAX.i582
  %2353 = zext i32 %2352 to i64
  %2354 = load i64, i64* %PC.i581
  %2355 = add i64 %2354, 3
  store i64 %2355, i64* %PC.i581
  %2356 = inttoptr i64 %2351 to i32*
  store i32 %2352, i32* %2356
  store %struct.Memory* %loadMem_4a0300, %struct.Memory** %MEMORY
  %loadMem_4a0303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 33
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 15
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RBP.i580 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %RBP.i580
  %2364 = sub i64 %2363, 116
  %2365 = load i64, i64* %PC.i579
  %2366 = add i64 %2365, 7
  store i64 %2366, i64* %PC.i579
  %2367 = inttoptr i64 %2364 to i32*
  store i32 1, i32* %2367
  store %struct.Memory* %loadMem_4a0303, %struct.Memory** %MEMORY
  %loadMem_4a030a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RBP.i578
  %2375 = sub i64 %2374, 120
  %2376 = load i64, i64* %PC.i577
  %2377 = add i64 %2376, 7
  store i64 %2377, i64* %PC.i577
  %2378 = inttoptr i64 %2375 to i32*
  store i32 0, i32* %2378
  store %struct.Memory* %loadMem_4a030a, %struct.Memory** %MEMORY
  %loadMem_4a0311 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2381 to i64*
  %2382 = load i64, i64* %PC.i576
  %2383 = add i64 %2382, 54
  %2384 = load i64, i64* %PC.i576
  %2385 = add i64 %2384, 5
  store i64 %2385, i64* %PC.i576
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2383, i64* %2386, align 8
  store %struct.Memory* %loadMem_4a0311, %struct.Memory** %MEMORY
  br label %block_.L_4a0347

block_.L_4a0316:                                  ; preds = %block_.L_4a02e7
  %loadMem_4a0316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2388 = getelementptr inbounds %struct.GPR, %struct.GPR* %2387, i32 0, i32 33
  %2389 = getelementptr inbounds %struct.Reg, %struct.Reg* %2388, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2389 to i64*
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2391 = getelementptr inbounds %struct.GPR, %struct.GPR* %2390, i32 0, i32 1
  %2392 = getelementptr inbounds %struct.Reg, %struct.Reg* %2391, i32 0, i32 0
  %RAX.i574 = bitcast %union.anon* %2392 to i64*
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2394 = getelementptr inbounds %struct.GPR, %struct.GPR* %2393, i32 0, i32 15
  %2395 = getelementptr inbounds %struct.Reg, %struct.Reg* %2394, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2395 to i64*
  %2396 = load i64, i64* %RBP.i575
  %2397 = sub i64 %2396, 92
  %2398 = load i64, i64* %PC.i573
  %2399 = add i64 %2398, 3
  store i64 %2399, i64* %PC.i573
  %2400 = inttoptr i64 %2397 to i32*
  %2401 = load i32, i32* %2400
  %2402 = zext i32 %2401 to i64
  store i64 %2402, i64* %RAX.i574, align 8
  store %struct.Memory* %loadMem_4a0316, %struct.Memory** %MEMORY
  %loadMem_4a0319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i570 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 1
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %EAX.i571 = bitcast %union.anon* %2408 to i32*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 15
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RBP.i572 = bitcast %union.anon* %2411 to i64*
  %2412 = load i32, i32* %EAX.i571
  %2413 = zext i32 %2412 to i64
  %2414 = load i64, i64* %RBP.i572
  %2415 = sub i64 %2414, 100
  %2416 = load i64, i64* %PC.i570
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %PC.i570
  %2418 = inttoptr i64 %2415 to i32*
  %2419 = load i32, i32* %2418
  %2420 = sub i32 %2412, %2419
  %2421 = icmp ult i32 %2412, %2419
  %2422 = zext i1 %2421 to i8
  %2423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2422, i8* %2423, align 1
  %2424 = and i32 %2420, 255
  %2425 = call i32 @llvm.ctpop.i32(i32 %2424)
  %2426 = trunc i32 %2425 to i8
  %2427 = and i8 %2426, 1
  %2428 = xor i8 %2427, 1
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2428, i8* %2429, align 1
  %2430 = xor i32 %2419, %2412
  %2431 = xor i32 %2430, %2420
  %2432 = lshr i32 %2431, 4
  %2433 = trunc i32 %2432 to i8
  %2434 = and i8 %2433, 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2434, i8* %2435, align 1
  %2436 = icmp eq i32 %2420, 0
  %2437 = zext i1 %2436 to i8
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2437, i8* %2438, align 1
  %2439 = lshr i32 %2420, 31
  %2440 = trunc i32 %2439 to i8
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2440, i8* %2441, align 1
  %2442 = lshr i32 %2412, 31
  %2443 = lshr i32 %2419, 31
  %2444 = xor i32 %2443, %2442
  %2445 = xor i32 %2439, %2442
  %2446 = add i32 %2445, %2444
  %2447 = icmp eq i32 %2446, 2
  %2448 = zext i1 %2447 to i8
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2448, i8* %2449, align 1
  store %struct.Memory* %loadMem_4a0319, %struct.Memory** %MEMORY
  %loadMem_4a031c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2451 = getelementptr inbounds %struct.GPR, %struct.GPR* %2450, i32 0, i32 33
  %2452 = getelementptr inbounds %struct.Reg, %struct.Reg* %2451, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2452 to i64*
  %2453 = load i64, i64* %PC.i569
  %2454 = add i64 %2453, 38
  %2455 = load i64, i64* %PC.i569
  %2456 = add i64 %2455, 6
  %2457 = load i64, i64* %PC.i569
  %2458 = add i64 %2457, 6
  store i64 %2458, i64* %PC.i569
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2460 = load i8, i8* %2459, align 1
  %2461 = icmp eq i8 %2460, 0
  %2462 = zext i1 %2461 to i8
  store i8 %2462, i8* %BRANCH_TAKEN, align 1
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2464 = select i1 %2461, i64 %2454, i64 %2456
  store i64 %2464, i64* %2463, align 8
  store %struct.Memory* %loadMem_4a031c, %struct.Memory** %MEMORY
  %loadBr_4a031c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a031c = icmp eq i8 %loadBr_4a031c, 1
  br i1 %cmpBr_4a031c, label %block_.L_4a0342, label %block_4a0322

block_4a0322:                                     ; preds = %block_.L_4a0316
  %loadMem_4a0322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 33
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2467 to i64*
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 1
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 15
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RBP.i568 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %RBP.i568
  %2475 = sub i64 %2474, 92
  %2476 = load i64, i64* %PC.i566
  %2477 = add i64 %2476, 3
  store i64 %2477, i64* %PC.i566
  %2478 = inttoptr i64 %2475 to i32*
  %2479 = load i32, i32* %2478
  %2480 = zext i32 %2479 to i64
  store i64 %2480, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_4a0322, %struct.Memory** %MEMORY
  %loadMem_4a0325 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2483 to i64*
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2485 = getelementptr inbounds %struct.GPR, %struct.GPR* %2484, i32 0, i32 1
  %2486 = getelementptr inbounds %struct.Reg, %struct.Reg* %2485, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %2486 to i64*
  %2487 = load i64, i64* %RAX.i565
  %2488 = load i64, i64* %PC.i564
  %2489 = add i64 %2488, 3
  store i64 %2489, i64* %PC.i564
  %2490 = trunc i64 %2487 to i32
  %2491 = add i32 -1, %2490
  %2492 = zext i32 %2491 to i64
  store i64 %2492, i64* %RAX.i565, align 8
  %2493 = icmp ult i32 %2491, %2490
  %2494 = icmp ult i32 %2491, -1
  %2495 = or i1 %2493, %2494
  %2496 = zext i1 %2495 to i8
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2496, i8* %2497, align 1
  %2498 = and i32 %2491, 255
  %2499 = call i32 @llvm.ctpop.i32(i32 %2498)
  %2500 = trunc i32 %2499 to i8
  %2501 = and i8 %2500, 1
  %2502 = xor i8 %2501, 1
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2502, i8* %2503, align 1
  %2504 = xor i64 -1, %2487
  %2505 = trunc i64 %2504 to i32
  %2506 = xor i32 %2505, %2491
  %2507 = lshr i32 %2506, 4
  %2508 = trunc i32 %2507 to i8
  %2509 = and i8 %2508, 1
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2509, i8* %2510, align 1
  %2511 = icmp eq i32 %2491, 0
  %2512 = zext i1 %2511 to i8
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2512, i8* %2513, align 1
  %2514 = lshr i32 %2491, 31
  %2515 = trunc i32 %2514 to i8
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2515, i8* %2516, align 1
  %2517 = lshr i32 %2490, 31
  %2518 = xor i32 %2514, %2517
  %2519 = xor i32 %2514, 1
  %2520 = add i32 %2518, %2519
  %2521 = icmp eq i32 %2520, 2
  %2522 = zext i1 %2521 to i8
  %2523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2522, i8* %2523, align 1
  store %struct.Memory* %loadMem_4a0325, %struct.Memory** %MEMORY
  %loadMem_4a0328 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 1
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %EAX.i562 = bitcast %union.anon* %2529 to i32*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 15
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RBP.i563
  %2534 = sub i64 %2533, 92
  %2535 = load i32, i32* %EAX.i562
  %2536 = zext i32 %2535 to i64
  %2537 = load i64, i64* %PC.i561
  %2538 = add i64 %2537, 3
  store i64 %2538, i64* %PC.i561
  %2539 = inttoptr i64 %2534 to i32*
  store i32 %2535, i32* %2539
  store %struct.Memory* %loadMem_4a0328, %struct.Memory** %MEMORY
  %loadMem_4a032b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i559 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i560 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RBP.i560
  %2550 = sub i64 %2549, 100
  %2551 = load i64, i64* %PC.i558
  %2552 = add i64 %2551, 3
  store i64 %2552, i64* %PC.i558
  %2553 = inttoptr i64 %2550 to i32*
  %2554 = load i32, i32* %2553
  %2555 = zext i32 %2554 to i64
  store i64 %2555, i64* %RAX.i559, align 8
  store %struct.Memory* %loadMem_4a032b, %struct.Memory** %MEMORY
  %loadMem_4a032e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 1
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %2561 to i64*
  %2562 = load i64, i64* %RAX.i557
  %2563 = load i64, i64* %PC.i556
  %2564 = add i64 %2563, 3
  store i64 %2564, i64* %PC.i556
  %2565 = trunc i64 %2562 to i32
  %2566 = add i32 -1, %2565
  %2567 = zext i32 %2566 to i64
  store i64 %2567, i64* %RAX.i557, align 8
  %2568 = icmp ult i32 %2566, %2565
  %2569 = icmp ult i32 %2566, -1
  %2570 = or i1 %2568, %2569
  %2571 = zext i1 %2570 to i8
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2571, i8* %2572, align 1
  %2573 = and i32 %2566, 255
  %2574 = call i32 @llvm.ctpop.i32(i32 %2573)
  %2575 = trunc i32 %2574 to i8
  %2576 = and i8 %2575, 1
  %2577 = xor i8 %2576, 1
  %2578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2577, i8* %2578, align 1
  %2579 = xor i64 -1, %2562
  %2580 = trunc i64 %2579 to i32
  %2581 = xor i32 %2580, %2566
  %2582 = lshr i32 %2581, 4
  %2583 = trunc i32 %2582 to i8
  %2584 = and i8 %2583, 1
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2584, i8* %2585, align 1
  %2586 = icmp eq i32 %2566, 0
  %2587 = zext i1 %2586 to i8
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2587, i8* %2588, align 1
  %2589 = lshr i32 %2566, 31
  %2590 = trunc i32 %2589 to i8
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2590, i8* %2591, align 1
  %2592 = lshr i32 %2565, 31
  %2593 = xor i32 %2589, %2592
  %2594 = xor i32 %2589, 1
  %2595 = add i32 %2593, %2594
  %2596 = icmp eq i32 %2595, 2
  %2597 = zext i1 %2596 to i8
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2597, i8* %2598, align 1
  store %struct.Memory* %loadMem_4a032e, %struct.Memory** %MEMORY
  %loadMem_4a0331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2600 = getelementptr inbounds %struct.GPR, %struct.GPR* %2599, i32 0, i32 33
  %2601 = getelementptr inbounds %struct.Reg, %struct.Reg* %2600, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2601 to i64*
  %2602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2603 = getelementptr inbounds %struct.GPR, %struct.GPR* %2602, i32 0, i32 1
  %2604 = getelementptr inbounds %struct.Reg, %struct.Reg* %2603, i32 0, i32 0
  %EAX.i554 = bitcast %union.anon* %2604 to i32*
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 15
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2607 to i64*
  %2608 = load i64, i64* %RBP.i555
  %2609 = sub i64 %2608, 100
  %2610 = load i32, i32* %EAX.i554
  %2611 = zext i32 %2610 to i64
  %2612 = load i64, i64* %PC.i553
  %2613 = add i64 %2612, 3
  store i64 %2613, i64* %PC.i553
  %2614 = inttoptr i64 %2609 to i32*
  store i32 %2610, i32* %2614
  store %struct.Memory* %loadMem_4a0331, %struct.Memory** %MEMORY
  %loadMem_4a0334 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2616 = getelementptr inbounds %struct.GPR, %struct.GPR* %2615, i32 0, i32 33
  %2617 = getelementptr inbounds %struct.Reg, %struct.Reg* %2616, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2617 to i64*
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 15
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %RBP.i552
  %2622 = sub i64 %2621, 116
  %2623 = load i64, i64* %PC.i551
  %2624 = add i64 %2623, 7
  store i64 %2624, i64* %PC.i551
  %2625 = inttoptr i64 %2622 to i32*
  store i32 0, i32* %2625
  store %struct.Memory* %loadMem_4a0334, %struct.Memory** %MEMORY
  %loadMem_4a033b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 33
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i550
  %2633 = sub i64 %2632, 120
  %2634 = load i64, i64* %PC.i549
  %2635 = add i64 %2634, 7
  store i64 %2635, i64* %PC.i549
  %2636 = inttoptr i64 %2633 to i32*
  store i32 1, i32* %2636
  store %struct.Memory* %loadMem_4a033b, %struct.Memory** %MEMORY
  br label %block_.L_4a0342

block_.L_4a0342:                                  ; preds = %block_4a0322, %block_.L_4a0316
  %loadMem_4a0342 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %PC.i548
  %2641 = add i64 %2640, 5
  %2642 = load i64, i64* %PC.i548
  %2643 = add i64 %2642, 5
  store i64 %2643, i64* %PC.i548
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2641, i64* %2644, align 8
  store %struct.Memory* %loadMem_4a0342, %struct.Memory** %MEMORY
  br label %block_.L_4a0347

block_.L_4a0347:                                  ; preds = %block_.L_4a0342, %block_4a02f1
  %loadMem_4a0347 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2646 = getelementptr inbounds %struct.GPR, %struct.GPR* %2645, i32 0, i32 33
  %2647 = getelementptr inbounds %struct.Reg, %struct.Reg* %2646, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2647 to i64*
  %2648 = load i64, i64* %PC.i547
  %2649 = add i64 %2648, 5
  %2650 = load i64, i64* %PC.i547
  %2651 = add i64 %2650, 5
  store i64 %2651, i64* %PC.i547
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2649, i64* %2652, align 8
  store %struct.Memory* %loadMem_4a0347, %struct.Memory** %MEMORY
  br label %block_.L_4a034c

block_.L_4a034c:                                  ; preds = %block_.L_4a0347, %block_4a02d9
  %loadMem_4a034c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2654 = getelementptr inbounds %struct.GPR, %struct.GPR* %2653, i32 0, i32 33
  %2655 = getelementptr inbounds %struct.Reg, %struct.Reg* %2654, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2655 to i64*
  %2656 = load i64, i64* %PC.i546
  %2657 = add i64 %2656, 550
  %2658 = load i64, i64* %PC.i546
  %2659 = add i64 %2658, 5
  store i64 %2659, i64* %PC.i546
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2657, i64* %2660, align 8
  store %struct.Memory* %loadMem_4a034c, %struct.Memory** %MEMORY
  br label %block_.L_4a0572

block_.L_4a0351:                                  ; preds = %block_4a02c3, %block_.L_4a02b9
  %loadMem_4a0351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2662 = getelementptr inbounds %struct.GPR, %struct.GPR* %2661, i32 0, i32 33
  %2663 = getelementptr inbounds %struct.Reg, %struct.Reg* %2662, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2663 to i64*
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 15
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %RBP.i545
  %2668 = sub i64 %2667, 116
  %2669 = load i64, i64* %PC.i544
  %2670 = add i64 %2669, 4
  store i64 %2670, i64* %PC.i544
  %2671 = inttoptr i64 %2668 to i32*
  %2672 = load i32, i32* %2671
  %2673 = sub i32 %2672, 1
  %2674 = icmp ult i32 %2672, 1
  %2675 = zext i1 %2674 to i8
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2675, i8* %2676, align 1
  %2677 = and i32 %2673, 255
  %2678 = call i32 @llvm.ctpop.i32(i32 %2677)
  %2679 = trunc i32 %2678 to i8
  %2680 = and i8 %2679, 1
  %2681 = xor i8 %2680, 1
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2681, i8* %2682, align 1
  %2683 = xor i32 %2672, 1
  %2684 = xor i32 %2683, %2673
  %2685 = lshr i32 %2684, 4
  %2686 = trunc i32 %2685 to i8
  %2687 = and i8 %2686, 1
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2687, i8* %2688, align 1
  %2689 = icmp eq i32 %2673, 0
  %2690 = zext i1 %2689 to i8
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2690, i8* %2691, align 1
  %2692 = lshr i32 %2673, 31
  %2693 = trunc i32 %2692 to i8
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2693, i8* %2694, align 1
  %2695 = lshr i32 %2672, 31
  %2696 = xor i32 %2692, %2695
  %2697 = add i32 %2696, %2695
  %2698 = icmp eq i32 %2697, 2
  %2699 = zext i1 %2698 to i8
  %2700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2699, i8* %2700, align 1
  store %struct.Memory* %loadMem_4a0351, %struct.Memory** %MEMORY
  %loadMem_4a0355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2702 = getelementptr inbounds %struct.GPR, %struct.GPR* %2701, i32 0, i32 33
  %2703 = getelementptr inbounds %struct.Reg, %struct.Reg* %2702, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2703 to i64*
  %2704 = load i64, i64* %PC.i543
  %2705 = add i64 %2704, 185
  %2706 = load i64, i64* %PC.i543
  %2707 = add i64 %2706, 6
  %2708 = load i64, i64* %PC.i543
  %2709 = add i64 %2708, 6
  store i64 %2709, i64* %PC.i543
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2711 = load i8, i8* %2710, align 1
  %2712 = icmp eq i8 %2711, 0
  %2713 = zext i1 %2712 to i8
  store i8 %2713, i8* %BRANCH_TAKEN, align 1
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2715 = select i1 %2712, i64 %2705, i64 %2707
  store i64 %2715, i64* %2714, align 8
  store %struct.Memory* %loadMem_4a0355, %struct.Memory** %MEMORY
  %loadBr_4a0355 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0355 = icmp eq i8 %loadBr_4a0355, 1
  br i1 %cmpBr_4a0355, label %block_.L_4a040e, label %block_4a035b

block_4a035b:                                     ; preds = %block_.L_4a0351
  %loadMem_4a035b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2717 = getelementptr inbounds %struct.GPR, %struct.GPR* %2716, i32 0, i32 33
  %2718 = getelementptr inbounds %struct.Reg, %struct.Reg* %2717, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2718 to i64*
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2720 = getelementptr inbounds %struct.GPR, %struct.GPR* %2719, i32 0, i32 15
  %2721 = getelementptr inbounds %struct.Reg, %struct.Reg* %2720, i32 0, i32 0
  %RBP.i542 = bitcast %union.anon* %2721 to i64*
  %2722 = load i64, i64* %RBP.i542
  %2723 = sub i64 %2722, 120
  %2724 = load i64, i64* %PC.i541
  %2725 = add i64 %2724, 4
  store i64 %2725, i64* %PC.i541
  %2726 = inttoptr i64 %2723 to i32*
  %2727 = load i32, i32* %2726
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2728, align 1
  %2729 = and i32 %2727, 255
  %2730 = call i32 @llvm.ctpop.i32(i32 %2729)
  %2731 = trunc i32 %2730 to i8
  %2732 = and i8 %2731, 1
  %2733 = xor i8 %2732, 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2733, i8* %2734, align 1
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2735, align 1
  %2736 = icmp eq i32 %2727, 0
  %2737 = zext i1 %2736 to i8
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2737, i8* %2738, align 1
  %2739 = lshr i32 %2727, 31
  %2740 = trunc i32 %2739 to i8
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2740, i8* %2741, align 1
  %2742 = lshr i32 %2727, 31
  %2743 = xor i32 %2739, %2742
  %2744 = add i32 %2743, %2742
  %2745 = icmp eq i32 %2744, 2
  %2746 = zext i1 %2745 to i8
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2746, i8* %2747, align 1
  store %struct.Memory* %loadMem_4a035b, %struct.Memory** %MEMORY
  %loadMem_4a035f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 33
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %PC.i540
  %2752 = add i64 %2751, 175
  %2753 = load i64, i64* %PC.i540
  %2754 = add i64 %2753, 6
  %2755 = load i64, i64* %PC.i540
  %2756 = add i64 %2755, 6
  store i64 %2756, i64* %PC.i540
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2758 = load i8, i8* %2757, align 1
  %2759 = icmp eq i8 %2758, 0
  %2760 = zext i1 %2759 to i8
  store i8 %2760, i8* %BRANCH_TAKEN, align 1
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2762 = select i1 %2759, i64 %2752, i64 %2754
  store i64 %2762, i64* %2761, align 8
  store %struct.Memory* %loadMem_4a035f, %struct.Memory** %MEMORY
  %loadBr_4a035f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a035f = icmp eq i8 %loadBr_4a035f, 1
  br i1 %cmpBr_4a035f, label %block_.L_4a040e, label %block_4a0365

block_4a0365:                                     ; preds = %block_4a035b
  %loadMem_4a0365 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 33
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 1
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 15
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2771 to i64*
  %2772 = load i64, i64* %RBP.i539
  %2773 = sub i64 %2772, 92
  %2774 = load i64, i64* %PC.i537
  %2775 = add i64 %2774, 3
  store i64 %2775, i64* %PC.i537
  %2776 = inttoptr i64 %2773 to i32*
  %2777 = load i32, i32* %2776
  %2778 = zext i32 %2777 to i64
  store i64 %2778, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_4a0365, %struct.Memory** %MEMORY
  %loadMem_4a0368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2780 = getelementptr inbounds %struct.GPR, %struct.GPR* %2779, i32 0, i32 33
  %2781 = getelementptr inbounds %struct.Reg, %struct.Reg* %2780, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2781 to i64*
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 1
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %2784 to i32*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 15
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2787 to i64*
  %2788 = load i32, i32* %EAX.i535
  %2789 = zext i32 %2788 to i64
  %2790 = load i64, i64* %RBP.i536
  %2791 = sub i64 %2790, 104
  %2792 = load i64, i64* %PC.i534
  %2793 = add i64 %2792, 3
  store i64 %2793, i64* %PC.i534
  %2794 = inttoptr i64 %2791 to i32*
  %2795 = load i32, i32* %2794
  %2796 = sub i32 %2788, %2795
  %2797 = icmp ult i32 %2788, %2795
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2798, i8* %2799, align 1
  %2800 = and i32 %2796, 255
  %2801 = call i32 @llvm.ctpop.i32(i32 %2800)
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = xor i8 %2803, 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2804, i8* %2805, align 1
  %2806 = xor i32 %2795, %2788
  %2807 = xor i32 %2806, %2796
  %2808 = lshr i32 %2807, 4
  %2809 = trunc i32 %2808 to i8
  %2810 = and i8 %2809, 1
  %2811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2810, i8* %2811, align 1
  %2812 = icmp eq i32 %2796, 0
  %2813 = zext i1 %2812 to i8
  %2814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2813, i8* %2814, align 1
  %2815 = lshr i32 %2796, 31
  %2816 = trunc i32 %2815 to i8
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2816, i8* %2817, align 1
  %2818 = lshr i32 %2788, 31
  %2819 = lshr i32 %2795, 31
  %2820 = xor i32 %2819, %2818
  %2821 = xor i32 %2815, %2818
  %2822 = add i32 %2821, %2820
  %2823 = icmp eq i32 %2822, 2
  %2824 = zext i1 %2823 to i8
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2824, i8* %2825, align 1
  store %struct.Memory* %loadMem_4a0368, %struct.Memory** %MEMORY
  %loadMem_4a036b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %PC.i533
  %2830 = add i64 %2829, 20
  %2831 = load i64, i64* %PC.i533
  %2832 = add i64 %2831, 6
  %2833 = load i64, i64* %PC.i533
  %2834 = add i64 %2833, 6
  store i64 %2834, i64* %PC.i533
  %2835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2836 = load i8, i8* %2835, align 1
  %2837 = icmp ne i8 %2836, 0
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2839 = load i8, i8* %2838, align 1
  %2840 = icmp ne i8 %2839, 0
  %2841 = xor i1 %2837, %2840
  %2842 = xor i1 %2841, true
  %2843 = zext i1 %2842 to i8
  store i8 %2843, i8* %BRANCH_TAKEN, align 1
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2845 = select i1 %2841, i64 %2832, i64 %2830
  store i64 %2845, i64* %2844, align 8
  store %struct.Memory* %loadMem_4a036b, %struct.Memory** %MEMORY
  %loadBr_4a036b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a036b = icmp eq i8 %loadBr_4a036b, 1
  br i1 %cmpBr_4a036b, label %block_.L_4a037f, label %block_4a0371

block_4a0371:                                     ; preds = %block_4a0365
  %loadMem_4a0371 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2847 = getelementptr inbounds %struct.GPR, %struct.GPR* %2846, i32 0, i32 33
  %2848 = getelementptr inbounds %struct.Reg, %struct.Reg* %2847, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2848 to i64*
  %2849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2850 = getelementptr inbounds %struct.GPR, %struct.GPR* %2849, i32 0, i32 1
  %2851 = getelementptr inbounds %struct.Reg, %struct.Reg* %2850, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %2851 to i64*
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2853 = getelementptr inbounds %struct.GPR, %struct.GPR* %2852, i32 0, i32 15
  %2854 = getelementptr inbounds %struct.Reg, %struct.Reg* %2853, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %2854 to i64*
  %2855 = load i64, i64* %RBP.i532
  %2856 = sub i64 %2855, 92
  %2857 = load i64, i64* %PC.i530
  %2858 = add i64 %2857, 3
  store i64 %2858, i64* %PC.i530
  %2859 = inttoptr i64 %2856 to i32*
  %2860 = load i32, i32* %2859
  %2861 = zext i32 %2860 to i64
  store i64 %2861, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_4a0371, %struct.Memory** %MEMORY
  %loadMem_4a0374 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2863 = getelementptr inbounds %struct.GPR, %struct.GPR* %2862, i32 0, i32 33
  %2864 = getelementptr inbounds %struct.Reg, %struct.Reg* %2863, i32 0, i32 0
  %PC.i528 = bitcast %union.anon* %2864 to i64*
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 1
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %RAX.i529 = bitcast %union.anon* %2867 to i64*
  %2868 = load i64, i64* %RAX.i529
  %2869 = load i64, i64* %PC.i528
  %2870 = add i64 %2869, 3
  store i64 %2870, i64* %PC.i528
  %2871 = trunc i64 %2868 to i32
  %2872 = add i32 1, %2871
  %2873 = zext i32 %2872 to i64
  store i64 %2873, i64* %RAX.i529, align 8
  %2874 = icmp ult i32 %2872, %2871
  %2875 = icmp ult i32 %2872, 1
  %2876 = or i1 %2874, %2875
  %2877 = zext i1 %2876 to i8
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2877, i8* %2878, align 1
  %2879 = and i32 %2872, 255
  %2880 = call i32 @llvm.ctpop.i32(i32 %2879)
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = xor i8 %2882, 1
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2883, i8* %2884, align 1
  %2885 = xor i64 1, %2868
  %2886 = trunc i64 %2885 to i32
  %2887 = xor i32 %2886, %2872
  %2888 = lshr i32 %2887, 4
  %2889 = trunc i32 %2888 to i8
  %2890 = and i8 %2889, 1
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2890, i8* %2891, align 1
  %2892 = icmp eq i32 %2872, 0
  %2893 = zext i1 %2892 to i8
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2893, i8* %2894, align 1
  %2895 = lshr i32 %2872, 31
  %2896 = trunc i32 %2895 to i8
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2896, i8* %2897, align 1
  %2898 = lshr i32 %2871, 31
  %2899 = xor i32 %2895, %2898
  %2900 = add i32 %2899, %2895
  %2901 = icmp eq i32 %2900, 2
  %2902 = zext i1 %2901 to i8
  %2903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2902, i8* %2903, align 1
  store %struct.Memory* %loadMem_4a0374, %struct.Memory** %MEMORY
  %loadMem_4a0377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2905 = getelementptr inbounds %struct.GPR, %struct.GPR* %2904, i32 0, i32 33
  %2906 = getelementptr inbounds %struct.Reg, %struct.Reg* %2905, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %2906 to i64*
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 1
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %EAX.i526 = bitcast %union.anon* %2909 to i32*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 15
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RBP.i527 = bitcast %union.anon* %2912 to i64*
  %2913 = load i64, i64* %RBP.i527
  %2914 = sub i64 %2913, 92
  %2915 = load i32, i32* %EAX.i526
  %2916 = zext i32 %2915 to i64
  %2917 = load i64, i64* %PC.i525
  %2918 = add i64 %2917, 3
  store i64 %2918, i64* %PC.i525
  %2919 = inttoptr i64 %2914 to i32*
  store i32 %2915, i32* %2919
  store %struct.Memory* %loadMem_4a0377, %struct.Memory** %MEMORY
  %loadMem_4a037a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %PC.i524
  %2924 = add i64 %2923, 143
  %2925 = load i64, i64* %PC.i524
  %2926 = add i64 %2925, 5
  store i64 %2926, i64* %PC.i524
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2924, i64* %2927, align 8
  store %struct.Memory* %loadMem_4a037a, %struct.Memory** %MEMORY
  br label %block_.L_4a0409

block_.L_4a037f:                                  ; preds = %block_4a0365
  %loadMem_4a037f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 33
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 1
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %PC.i522
  %2935 = add i64 %2934, 5
  store i64 %2935, i64* %PC.i522
  store i64 16, i64* %RAX.i523, align 8
  store %struct.Memory* %loadMem_4a037f, %struct.Memory** %MEMORY
  %loadMem_4a0384 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 33
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 5
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %RCX.i520 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 15
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %2944 to i64*
  %2945 = load i64, i64* %RBP.i521
  %2946 = sub i64 %2945, 92
  %2947 = load i64, i64* %PC.i519
  %2948 = add i64 %2947, 3
  store i64 %2948, i64* %PC.i519
  %2949 = inttoptr i64 %2946 to i32*
  %2950 = load i32, i32* %2949
  %2951 = zext i32 %2950 to i64
  store i64 %2951, i64* %RCX.i520, align 8
  store %struct.Memory* %loadMem_4a0384, %struct.Memory** %MEMORY
  %loadMem_4a0387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2954 to i64*
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 7
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %2957 to i64*
  %2958 = load i64, i64* %PC.i517
  %2959 = add i64 %2958, 8
  store i64 %2959, i64* %PC.i517
  %2960 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2960, i64* %RDX.i518, align 8
  store %struct.Memory* %loadMem_4a0387, %struct.Memory** %MEMORY
  %loadMem_4a038f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 33
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2963 to i64*
  %2964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2965 = getelementptr inbounds %struct.GPR, %struct.GPR* %2964, i32 0, i32 7
  %2966 = getelementptr inbounds %struct.Reg, %struct.Reg* %2965, i32 0, i32 0
  %RDX.i515 = bitcast %union.anon* %2966 to i64*
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2968 = getelementptr inbounds %struct.GPR, %struct.GPR* %2967, i32 0, i32 9
  %2969 = getelementptr inbounds %struct.Reg, %struct.Reg* %2968, i32 0, i32 0
  %RSI.i516 = bitcast %union.anon* %2969 to i64*
  %2970 = load i64, i64* %RDX.i515
  %2971 = add i64 %2970, 52
  %2972 = load i64, i64* %PC.i514
  %2973 = add i64 %2972, 3
  store i64 %2973, i64* %PC.i514
  %2974 = inttoptr i64 %2971 to i32*
  %2975 = load i32, i32* %2974
  %2976 = zext i32 %2975 to i64
  store i64 %2976, i64* %RSI.i516, align 8
  store %struct.Memory* %loadMem_4a038f, %struct.Memory** %MEMORY
  %loadMem_4a0392 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2978 = getelementptr inbounds %struct.GPR, %struct.GPR* %2977, i32 0, i32 33
  %2979 = getelementptr inbounds %struct.Reg, %struct.Reg* %2978, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %2979 to i64*
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2981 = getelementptr inbounds %struct.GPR, %struct.GPR* %2980, i32 0, i32 1
  %2982 = getelementptr inbounds %struct.Reg, %struct.Reg* %2981, i32 0, i32 0
  %EAX.i512 = bitcast %union.anon* %2982 to i32*
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2984 = getelementptr inbounds %struct.GPR, %struct.GPR* %2983, i32 0, i32 15
  %2985 = getelementptr inbounds %struct.Reg, %struct.Reg* %2984, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %2985 to i64*
  %2986 = load i64, i64* %RBP.i513
  %2987 = sub i64 %2986, 160
  %2988 = load i32, i32* %EAX.i512
  %2989 = zext i32 %2988 to i64
  %2990 = load i64, i64* %PC.i511
  %2991 = add i64 %2990, 6
  store i64 %2991, i64* %PC.i511
  %2992 = inttoptr i64 %2987 to i32*
  store i32 %2988, i32* %2992
  store %struct.Memory* %loadMem_4a0392, %struct.Memory** %MEMORY
  %loadMem_4a0398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 33
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %2995 to i64*
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2997 = getelementptr inbounds %struct.GPR, %struct.GPR* %2996, i32 0, i32 9
  %2998 = getelementptr inbounds %struct.Reg, %struct.Reg* %2997, i32 0, i32 0
  %ESI.i509 = bitcast %union.anon* %2998 to i32*
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3000 = getelementptr inbounds %struct.GPR, %struct.GPR* %2999, i32 0, i32 1
  %3001 = getelementptr inbounds %struct.Reg, %struct.Reg* %3000, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %3001 to i64*
  %3002 = load i32, i32* %ESI.i509
  %3003 = zext i32 %3002 to i64
  %3004 = load i64, i64* %PC.i508
  %3005 = add i64 %3004, 2
  store i64 %3005, i64* %PC.i508
  %3006 = and i64 %3003, 4294967295
  store i64 %3006, i64* %RAX.i510, align 8
  store %struct.Memory* %loadMem_4a0398, %struct.Memory** %MEMORY
  %loadMem_4a039a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 33
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %PC.i507
  %3011 = add i64 %3010, 1
  store i64 %3011, i64* %PC.i507
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3014 = bitcast %union.anon* %3013 to i32*
  %3015 = load i32, i32* %3014, align 8
  %3016 = sext i32 %3015 to i64
  %3017 = lshr i64 %3016, 32
  store i64 %3017, i64* %3012, align 8
  store %struct.Memory* %loadMem_4a039a, %struct.Memory** %MEMORY
  %loadMem_4a039b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 9
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RSI.i505 = bitcast %union.anon* %3023 to i64*
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3025 = getelementptr inbounds %struct.GPR, %struct.GPR* %3024, i32 0, i32 15
  %3026 = getelementptr inbounds %struct.Reg, %struct.Reg* %3025, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %3026 to i64*
  %3027 = load i64, i64* %RBP.i506
  %3028 = sub i64 %3027, 160
  %3029 = load i64, i64* %PC.i504
  %3030 = add i64 %3029, 6
  store i64 %3030, i64* %PC.i504
  %3031 = inttoptr i64 %3028 to i32*
  %3032 = load i32, i32* %3031
  %3033 = zext i32 %3032 to i64
  store i64 %3033, i64* %RSI.i505, align 8
  store %struct.Memory* %loadMem_4a039b, %struct.Memory** %MEMORY
  %loadMem_4a03a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 33
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 9
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %ESI.i500 = bitcast %union.anon* %3039 to i32*
  %3040 = load i32, i32* %ESI.i500
  %3041 = zext i32 %3040 to i64
  %3042 = load i64, i64* %PC.i499
  %3043 = add i64 %3042, 2
  store i64 %3043, i64* %PC.i499
  %3044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3045 = bitcast %union.anon* %3044 to i32*
  %3046 = load i32, i32* %3045, align 8
  %3047 = zext i32 %3046 to i64
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3049 = bitcast %union.anon* %3048 to i32*
  %3050 = load i32, i32* %3049, align 8
  %3051 = zext i32 %3050 to i64
  %3052 = shl i64 %3041, 32
  %3053 = ashr exact i64 %3052, 32
  %3054 = shl i64 %3051, 32
  %3055 = or i64 %3054, %3047
  %3056 = sdiv i64 %3055, %3053
  %3057 = shl i64 %3056, 32
  %3058 = ashr exact i64 %3057, 32
  %3059 = icmp eq i64 %3056, %3058
  br i1 %3059, label %3064, label %3060

; <label>:3060:                                   ; preds = %block_.L_4a037f
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3062 = load i64, i64* %3061, align 8
  %3063 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3062, %struct.Memory* %loadMem_4a03a1)
  br label %routine_idivl__esi.exit501

; <label>:3064:                                   ; preds = %block_.L_4a037f
  %3065 = srem i64 %3055, %3053
  %3066 = getelementptr inbounds %union.anon, %union.anon* %3044, i64 0, i32 0
  %3067 = and i64 %3056, 4294967295
  store i64 %3067, i64* %3066, align 8
  %3068 = getelementptr inbounds %union.anon, %union.anon* %3048, i64 0, i32 0
  %3069 = and i64 %3065, 4294967295
  store i64 %3069, i64* %3068, align 8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3070, align 1
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3071, align 1
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3072, align 1
  %3073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3073, align 1
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3074, align 1
  %3075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3075, align 1
  br label %routine_idivl__esi.exit501

routine_idivl__esi.exit501:                       ; preds = %3060, %3064
  %3076 = phi %struct.Memory* [ %3063, %3060 ], [ %loadMem_4a03a1, %3064 ]
  store %struct.Memory* %3076, %struct.Memory** %MEMORY
  %loadMem_4a03a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 1
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %3082 to i64*
  %3083 = load i64, i64* %RAX.i498
  %3084 = load i64, i64* %PC.i497
  %3085 = add i64 %3084, 3
  store i64 %3085, i64* %PC.i497
  %3086 = trunc i64 %3083 to i32
  %3087 = sub i32 %3086, 1
  %3088 = zext i32 %3087 to i64
  store i64 %3088, i64* %RAX.i498, align 8
  %3089 = icmp ult i32 %3086, 1
  %3090 = zext i1 %3089 to i8
  %3091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3090, i8* %3091, align 1
  %3092 = and i32 %3087, 255
  %3093 = call i32 @llvm.ctpop.i32(i32 %3092)
  %3094 = trunc i32 %3093 to i8
  %3095 = and i8 %3094, 1
  %3096 = xor i8 %3095, 1
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3096, i8* %3097, align 1
  %3098 = xor i64 1, %3083
  %3099 = trunc i64 %3098 to i32
  %3100 = xor i32 %3099, %3087
  %3101 = lshr i32 %3100, 4
  %3102 = trunc i32 %3101 to i8
  %3103 = and i8 %3102, 1
  %3104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3103, i8* %3104, align 1
  %3105 = icmp eq i32 %3087, 0
  %3106 = zext i1 %3105 to i8
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3106, i8* %3107, align 1
  %3108 = lshr i32 %3087, 31
  %3109 = trunc i32 %3108 to i8
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3109, i8* %3110, align 1
  %3111 = lshr i32 %3086, 31
  %3112 = xor i32 %3108, %3111
  %3113 = add i32 %3112, %3111
  %3114 = icmp eq i32 %3113, 2
  %3115 = zext i1 %3114 to i8
  %3116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3115, i8* %3116, align 1
  store %struct.Memory* %loadMem_4a03a3, %struct.Memory** %MEMORY
  %loadMem_4a03a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3118 = getelementptr inbounds %struct.GPR, %struct.GPR* %3117, i32 0, i32 33
  %3119 = getelementptr inbounds %struct.Reg, %struct.Reg* %3118, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3119 to i64*
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 1
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %EAX.i495 = bitcast %union.anon* %3122 to i32*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 5
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %ECX.i496 = bitcast %union.anon* %3125 to i32*
  %3126 = load i32, i32* %ECX.i496
  %3127 = zext i32 %3126 to i64
  %3128 = load i32, i32* %EAX.i495
  %3129 = zext i32 %3128 to i64
  %3130 = load i64, i64* %PC.i494
  %3131 = add i64 %3130, 2
  store i64 %3131, i64* %PC.i494
  %3132 = sub i32 %3126, %3128
  %3133 = icmp ult i32 %3126, %3128
  %3134 = zext i1 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3134, i8* %3135, align 1
  %3136 = and i32 %3132, 255
  %3137 = call i32 @llvm.ctpop.i32(i32 %3136)
  %3138 = trunc i32 %3137 to i8
  %3139 = and i8 %3138, 1
  %3140 = xor i8 %3139, 1
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3140, i8* %3141, align 1
  %3142 = xor i64 %3129, %3127
  %3143 = trunc i64 %3142 to i32
  %3144 = xor i32 %3143, %3132
  %3145 = lshr i32 %3144, 4
  %3146 = trunc i32 %3145 to i8
  %3147 = and i8 %3146, 1
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3147, i8* %3148, align 1
  %3149 = icmp eq i32 %3132, 0
  %3150 = zext i1 %3149 to i8
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3150, i8* %3151, align 1
  %3152 = lshr i32 %3132, 31
  %3153 = trunc i32 %3152 to i8
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3153, i8* %3154, align 1
  %3155 = lshr i32 %3126, 31
  %3156 = lshr i32 %3128, 31
  %3157 = xor i32 %3156, %3155
  %3158 = xor i32 %3152, %3155
  %3159 = add i32 %3158, %3157
  %3160 = icmp eq i32 %3159, 2
  %3161 = zext i1 %3160 to i8
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3161, i8* %3162, align 1
  store %struct.Memory* %loadMem_4a03a6, %struct.Memory** %MEMORY
  %loadMem_4a03a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3164 = getelementptr inbounds %struct.GPR, %struct.GPR* %3163, i32 0, i32 33
  %3165 = getelementptr inbounds %struct.Reg, %struct.Reg* %3164, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3165 to i64*
  %3166 = load i64, i64* %PC.i493
  %3167 = add i64 %3166, 43
  %3168 = load i64, i64* %PC.i493
  %3169 = add i64 %3168, 6
  %3170 = load i64, i64* %PC.i493
  %3171 = add i64 %3170, 6
  store i64 %3171, i64* %PC.i493
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3173 = load i8, i8* %3172, align 1
  %3174 = icmp eq i8 %3173, 0
  %3175 = zext i1 %3174 to i8
  store i8 %3175, i8* %BRANCH_TAKEN, align 1
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3177 = select i1 %3174, i64 %3167, i64 %3169
  store i64 %3177, i64* %3176, align 8
  store %struct.Memory* %loadMem_4a03a8, %struct.Memory** %MEMORY
  %loadBr_4a03a8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a03a8 = icmp eq i8 %loadBr_4a03a8, 1
  br i1 %cmpBr_4a03a8, label %block_.L_4a03d3, label %block_4a03ae

block_4a03ae:                                     ; preds = %routine_idivl__esi.exit501
  %loadMem_4a03ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3179 = getelementptr inbounds %struct.GPR, %struct.GPR* %3178, i32 0, i32 33
  %3180 = getelementptr inbounds %struct.Reg, %struct.Reg* %3179, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3180 to i64*
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3182 = getelementptr inbounds %struct.GPR, %struct.GPR* %3181, i32 0, i32 1
  %3183 = getelementptr inbounds %struct.Reg, %struct.Reg* %3182, i32 0, i32 0
  %RAX.i491 = bitcast %union.anon* %3183 to i64*
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3185 = getelementptr inbounds %struct.GPR, %struct.GPR* %3184, i32 0, i32 15
  %3186 = getelementptr inbounds %struct.Reg, %struct.Reg* %3185, i32 0, i32 0
  %RBP.i492 = bitcast %union.anon* %3186 to i64*
  %3187 = load i64, i64* %RBP.i492
  %3188 = sub i64 %3187, 112
  %3189 = load i64, i64* %PC.i490
  %3190 = add i64 %3189, 3
  store i64 %3190, i64* %PC.i490
  %3191 = inttoptr i64 %3188 to i32*
  %3192 = load i32, i32* %3191
  %3193 = zext i32 %3192 to i64
  store i64 %3193, i64* %RAX.i491, align 8
  store %struct.Memory* %loadMem_4a03ae, %struct.Memory** %MEMORY
  %loadMem_4a03b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 1
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %3199 to i64*
  %3200 = load i64, i64* %RAX.i489
  %3201 = load i64, i64* %PC.i488
  %3202 = add i64 %3201, 3
  store i64 %3202, i64* %PC.i488
  %3203 = trunc i64 %3200 to i32
  %3204 = sub i32 %3203, 1
  %3205 = zext i32 %3204 to i64
  store i64 %3205, i64* %RAX.i489, align 8
  %3206 = icmp ult i32 %3203, 1
  %3207 = zext i1 %3206 to i8
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3207, i8* %3208, align 1
  %3209 = and i32 %3204, 255
  %3210 = call i32 @llvm.ctpop.i32(i32 %3209)
  %3211 = trunc i32 %3210 to i8
  %3212 = and i8 %3211, 1
  %3213 = xor i8 %3212, 1
  %3214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3213, i8* %3214, align 1
  %3215 = xor i64 1, %3200
  %3216 = trunc i64 %3215 to i32
  %3217 = xor i32 %3216, %3204
  %3218 = lshr i32 %3217, 4
  %3219 = trunc i32 %3218 to i8
  %3220 = and i8 %3219, 1
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3220, i8* %3221, align 1
  %3222 = icmp eq i32 %3204, 0
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3223, i8* %3224, align 1
  %3225 = lshr i32 %3204, 31
  %3226 = trunc i32 %3225 to i8
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3226, i8* %3227, align 1
  %3228 = lshr i32 %3203, 31
  %3229 = xor i32 %3225, %3228
  %3230 = add i32 %3229, %3228
  %3231 = icmp eq i32 %3230, 2
  %3232 = zext i1 %3231 to i8
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3232, i8* %3233, align 1
  store %struct.Memory* %loadMem_4a03b1, %struct.Memory** %MEMORY
  %loadMem_4a03b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 33
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 1
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %EAX.i486 = bitcast %union.anon* %3239 to i32*
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3241 = getelementptr inbounds %struct.GPR, %struct.GPR* %3240, i32 0, i32 15
  %3242 = getelementptr inbounds %struct.Reg, %struct.Reg* %3241, i32 0, i32 0
  %RBP.i487 = bitcast %union.anon* %3242 to i64*
  %3243 = load i64, i64* %RBP.i487
  %3244 = sub i64 %3243, 96
  %3245 = load i32, i32* %EAX.i486
  %3246 = zext i32 %3245 to i64
  %3247 = load i64, i64* %PC.i485
  %3248 = add i64 %3247, 3
  store i64 %3248, i64* %PC.i485
  %3249 = inttoptr i64 %3244 to i32*
  store i32 %3245, i32* %3249
  store %struct.Memory* %loadMem_4a03b4, %struct.Memory** %MEMORY
  %loadMem_4a03b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 33
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3252 to i64*
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3254 = getelementptr inbounds %struct.GPR, %struct.GPR* %3253, i32 0, i32 1
  %3255 = getelementptr inbounds %struct.Reg, %struct.Reg* %3254, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %3255 to i64*
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3257 = getelementptr inbounds %struct.GPR, %struct.GPR* %3256, i32 0, i32 15
  %3258 = getelementptr inbounds %struct.Reg, %struct.Reg* %3257, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3258 to i64*
  %3259 = load i64, i64* %RBP.i484
  %3260 = sub i64 %3259, 112
  %3261 = load i64, i64* %PC.i482
  %3262 = add i64 %3261, 3
  store i64 %3262, i64* %PC.i482
  %3263 = inttoptr i64 %3260 to i32*
  %3264 = load i32, i32* %3263
  %3265 = zext i32 %3264 to i64
  store i64 %3265, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_4a03b7, %struct.Memory** %MEMORY
  %loadMem_4a03ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 33
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3268 to i64*
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3270 = getelementptr inbounds %struct.GPR, %struct.GPR* %3269, i32 0, i32 1
  %3271 = getelementptr inbounds %struct.Reg, %struct.Reg* %3270, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %3271 to i64*
  %3272 = load i64, i64* %RAX.i481
  %3273 = load i64, i64* %PC.i480
  %3274 = add i64 %3273, 3
  store i64 %3274, i64* %PC.i480
  %3275 = trunc i64 %3272 to i32
  %3276 = add i32 -1, %3275
  %3277 = zext i32 %3276 to i64
  store i64 %3277, i64* %RAX.i481, align 8
  %3278 = icmp ult i32 %3276, %3275
  %3279 = icmp ult i32 %3276, -1
  %3280 = or i1 %3278, %3279
  %3281 = zext i1 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3281, i8* %3282, align 1
  %3283 = and i32 %3276, 255
  %3284 = call i32 @llvm.ctpop.i32(i32 %3283)
  %3285 = trunc i32 %3284 to i8
  %3286 = and i8 %3285, 1
  %3287 = xor i8 %3286, 1
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3287, i8* %3288, align 1
  %3289 = xor i64 -1, %3272
  %3290 = trunc i64 %3289 to i32
  %3291 = xor i32 %3290, %3276
  %3292 = lshr i32 %3291, 4
  %3293 = trunc i32 %3292 to i8
  %3294 = and i8 %3293, 1
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3294, i8* %3295, align 1
  %3296 = icmp eq i32 %3276, 0
  %3297 = zext i1 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3297, i8* %3298, align 1
  %3299 = lshr i32 %3276, 31
  %3300 = trunc i32 %3299 to i8
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3300, i8* %3301, align 1
  %3302 = lshr i32 %3275, 31
  %3303 = xor i32 %3299, %3302
  %3304 = xor i32 %3299, 1
  %3305 = add i32 %3303, %3304
  %3306 = icmp eq i32 %3305, 2
  %3307 = zext i1 %3306 to i8
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3307, i8* %3308, align 1
  store %struct.Memory* %loadMem_4a03ba, %struct.Memory** %MEMORY
  %loadMem_4a03bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3310 = getelementptr inbounds %struct.GPR, %struct.GPR* %3309, i32 0, i32 33
  %3311 = getelementptr inbounds %struct.Reg, %struct.Reg* %3310, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3311 to i64*
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3313 = getelementptr inbounds %struct.GPR, %struct.GPR* %3312, i32 0, i32 1
  %3314 = getelementptr inbounds %struct.Reg, %struct.Reg* %3313, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %3314 to i32*
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3316 = getelementptr inbounds %struct.GPR, %struct.GPR* %3315, i32 0, i32 15
  %3317 = getelementptr inbounds %struct.Reg, %struct.Reg* %3316, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3317 to i64*
  %3318 = load i64, i64* %RBP.i479
  %3319 = sub i64 %3318, 112
  %3320 = load i32, i32* %EAX.i478
  %3321 = zext i32 %3320 to i64
  %3322 = load i64, i64* %PC.i477
  %3323 = add i64 %3322, 3
  store i64 %3323, i64* %PC.i477
  %3324 = inttoptr i64 %3319 to i32*
  store i32 %3320, i32* %3324
  store %struct.Memory* %loadMem_4a03bd, %struct.Memory** %MEMORY
  %loadMem_4a03c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 15
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RBP.i476 = bitcast %union.anon* %3330 to i64*
  %3331 = load i64, i64* %RBP.i476
  %3332 = sub i64 %3331, 116
  %3333 = load i64, i64* %PC.i475
  %3334 = add i64 %3333, 7
  store i64 %3334, i64* %PC.i475
  %3335 = inttoptr i64 %3332 to i32*
  store i32 -1, i32* %3335
  store %struct.Memory* %loadMem_4a03c0, %struct.Memory** %MEMORY
  %loadMem_4a03c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 15
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %3341 to i64*
  %3342 = load i64, i64* %RBP.i474
  %3343 = sub i64 %3342, 120
  %3344 = load i64, i64* %PC.i473
  %3345 = add i64 %3344, 7
  store i64 %3345, i64* %PC.i473
  %3346 = inttoptr i64 %3343 to i32*
  store i32 0, i32* %3346
  store %struct.Memory* %loadMem_4a03c7, %struct.Memory** %MEMORY
  %loadMem_4a03ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3348 = getelementptr inbounds %struct.GPR, %struct.GPR* %3347, i32 0, i32 33
  %3349 = getelementptr inbounds %struct.Reg, %struct.Reg* %3348, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3349 to i64*
  %3350 = load i64, i64* %PC.i472
  %3351 = add i64 %3350, 54
  %3352 = load i64, i64* %PC.i472
  %3353 = add i64 %3352, 5
  store i64 %3353, i64* %PC.i472
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3351, i64* %3354, align 8
  store %struct.Memory* %loadMem_4a03ce, %struct.Memory** %MEMORY
  br label %block_.L_4a0404

block_.L_4a03d3:                                  ; preds = %routine_idivl__esi.exit501
  %loadMem_4a03d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3356 = getelementptr inbounds %struct.GPR, %struct.GPR* %3355, i32 0, i32 33
  %3357 = getelementptr inbounds %struct.Reg, %struct.Reg* %3356, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3357 to i64*
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3359 = getelementptr inbounds %struct.GPR, %struct.GPR* %3358, i32 0, i32 1
  %3360 = getelementptr inbounds %struct.Reg, %struct.Reg* %3359, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %3360 to i64*
  %3361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3362 = getelementptr inbounds %struct.GPR, %struct.GPR* %3361, i32 0, i32 15
  %3363 = getelementptr inbounds %struct.Reg, %struct.Reg* %3362, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %3363 to i64*
  %3364 = load i64, i64* %RBP.i471
  %3365 = sub i64 %3364, 92
  %3366 = load i64, i64* %PC.i469
  %3367 = add i64 %3366, 3
  store i64 %3367, i64* %PC.i469
  %3368 = inttoptr i64 %3365 to i32*
  %3369 = load i32, i32* %3368
  %3370 = zext i32 %3369 to i64
  store i64 %3370, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_4a03d3, %struct.Memory** %MEMORY
  %loadMem_4a03d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 1
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %EAX.i467 = bitcast %union.anon* %3376 to i32*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 15
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RBP.i468 = bitcast %union.anon* %3379 to i64*
  %3380 = load i32, i32* %EAX.i467
  %3381 = zext i32 %3380 to i64
  %3382 = load i64, i64* %RBP.i468
  %3383 = sub i64 %3382, 104
  %3384 = load i64, i64* %PC.i466
  %3385 = add i64 %3384, 3
  store i64 %3385, i64* %PC.i466
  %3386 = inttoptr i64 %3383 to i32*
  %3387 = load i32, i32* %3386
  %3388 = sub i32 %3380, %3387
  %3389 = icmp ult i32 %3380, %3387
  %3390 = zext i1 %3389 to i8
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3390, i8* %3391, align 1
  %3392 = and i32 %3388, 255
  %3393 = call i32 @llvm.ctpop.i32(i32 %3392)
  %3394 = trunc i32 %3393 to i8
  %3395 = and i8 %3394, 1
  %3396 = xor i8 %3395, 1
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3396, i8* %3397, align 1
  %3398 = xor i32 %3387, %3380
  %3399 = xor i32 %3398, %3388
  %3400 = lshr i32 %3399, 4
  %3401 = trunc i32 %3400 to i8
  %3402 = and i8 %3401, 1
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3402, i8* %3403, align 1
  %3404 = icmp eq i32 %3388, 0
  %3405 = zext i1 %3404 to i8
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3405, i8* %3406, align 1
  %3407 = lshr i32 %3388, 31
  %3408 = trunc i32 %3407 to i8
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3408, i8* %3409, align 1
  %3410 = lshr i32 %3380, 31
  %3411 = lshr i32 %3387, 31
  %3412 = xor i32 %3411, %3410
  %3413 = xor i32 %3407, %3410
  %3414 = add i32 %3413, %3412
  %3415 = icmp eq i32 %3414, 2
  %3416 = zext i1 %3415 to i8
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3416, i8* %3417, align 1
  store %struct.Memory* %loadMem_4a03d6, %struct.Memory** %MEMORY
  %loadMem_4a03d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3419 = getelementptr inbounds %struct.GPR, %struct.GPR* %3418, i32 0, i32 33
  %3420 = getelementptr inbounds %struct.Reg, %struct.Reg* %3419, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3420 to i64*
  %3421 = load i64, i64* %PC.i465
  %3422 = add i64 %3421, 38
  %3423 = load i64, i64* %PC.i465
  %3424 = add i64 %3423, 6
  %3425 = load i64, i64* %PC.i465
  %3426 = add i64 %3425, 6
  store i64 %3426, i64* %PC.i465
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3428 = load i8, i8* %3427, align 1
  %3429 = icmp eq i8 %3428, 0
  %3430 = zext i1 %3429 to i8
  store i8 %3430, i8* %BRANCH_TAKEN, align 1
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3432 = select i1 %3429, i64 %3422, i64 %3424
  store i64 %3432, i64* %3431, align 8
  store %struct.Memory* %loadMem_4a03d9, %struct.Memory** %MEMORY
  %loadBr_4a03d9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a03d9 = icmp eq i8 %loadBr_4a03d9, 1
  br i1 %cmpBr_4a03d9, label %block_.L_4a03ff, label %block_4a03df

block_4a03df:                                     ; preds = %block_.L_4a03d3
  %loadMem_4a03df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3434 = getelementptr inbounds %struct.GPR, %struct.GPR* %3433, i32 0, i32 33
  %3435 = getelementptr inbounds %struct.Reg, %struct.Reg* %3434, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3435 to i64*
  %3436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3437 = getelementptr inbounds %struct.GPR, %struct.GPR* %3436, i32 0, i32 1
  %3438 = getelementptr inbounds %struct.Reg, %struct.Reg* %3437, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %3438 to i64*
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 15
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %3441 to i64*
  %3442 = load i64, i64* %RBP.i464
  %3443 = sub i64 %3442, 92
  %3444 = load i64, i64* %PC.i462
  %3445 = add i64 %3444, 3
  store i64 %3445, i64* %PC.i462
  %3446 = inttoptr i64 %3443 to i32*
  %3447 = load i32, i32* %3446
  %3448 = zext i32 %3447 to i64
  store i64 %3448, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_4a03df, %struct.Memory** %MEMORY
  %loadMem_4a03e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 33
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3451 to i64*
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3453 = getelementptr inbounds %struct.GPR, %struct.GPR* %3452, i32 0, i32 1
  %3454 = getelementptr inbounds %struct.Reg, %struct.Reg* %3453, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %3454 to i64*
  %3455 = load i64, i64* %RAX.i461
  %3456 = load i64, i64* %PC.i460
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i460
  %3458 = trunc i64 %3455 to i32
  %3459 = add i32 1, %3458
  %3460 = zext i32 %3459 to i64
  store i64 %3460, i64* %RAX.i461, align 8
  %3461 = icmp ult i32 %3459, %3458
  %3462 = icmp ult i32 %3459, 1
  %3463 = or i1 %3461, %3462
  %3464 = zext i1 %3463 to i8
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3464, i8* %3465, align 1
  %3466 = and i32 %3459, 255
  %3467 = call i32 @llvm.ctpop.i32(i32 %3466)
  %3468 = trunc i32 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = xor i8 %3469, 1
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3470, i8* %3471, align 1
  %3472 = xor i64 1, %3455
  %3473 = trunc i64 %3472 to i32
  %3474 = xor i32 %3473, %3459
  %3475 = lshr i32 %3474, 4
  %3476 = trunc i32 %3475 to i8
  %3477 = and i8 %3476, 1
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3477, i8* %3478, align 1
  %3479 = icmp eq i32 %3459, 0
  %3480 = zext i1 %3479 to i8
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3480, i8* %3481, align 1
  %3482 = lshr i32 %3459, 31
  %3483 = trunc i32 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3483, i8* %3484, align 1
  %3485 = lshr i32 %3458, 31
  %3486 = xor i32 %3482, %3485
  %3487 = add i32 %3486, %3482
  %3488 = icmp eq i32 %3487, 2
  %3489 = zext i1 %3488 to i8
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3489, i8* %3490, align 1
  store %struct.Memory* %loadMem_4a03e2, %struct.Memory** %MEMORY
  %loadMem_4a03e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 33
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3493 to i64*
  %3494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3495 = getelementptr inbounds %struct.GPR, %struct.GPR* %3494, i32 0, i32 1
  %3496 = getelementptr inbounds %struct.Reg, %struct.Reg* %3495, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %3496 to i32*
  %3497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3498 = getelementptr inbounds %struct.GPR, %struct.GPR* %3497, i32 0, i32 15
  %3499 = getelementptr inbounds %struct.Reg, %struct.Reg* %3498, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %3499 to i64*
  %3500 = load i64, i64* %RBP.i459
  %3501 = sub i64 %3500, 92
  %3502 = load i32, i32* %EAX.i458
  %3503 = zext i32 %3502 to i64
  %3504 = load i64, i64* %PC.i457
  %3505 = add i64 %3504, 3
  store i64 %3505, i64* %PC.i457
  %3506 = inttoptr i64 %3501 to i32*
  store i32 %3502, i32* %3506
  store %struct.Memory* %loadMem_4a03e5, %struct.Memory** %MEMORY
  %loadMem_4a03e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 1
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RAX.i455 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 15
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RBP.i456 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RBP.i456
  %3517 = sub i64 %3516, 104
  %3518 = load i64, i64* %PC.i454
  %3519 = add i64 %3518, 3
  store i64 %3519, i64* %PC.i454
  %3520 = inttoptr i64 %3517 to i32*
  %3521 = load i32, i32* %3520
  %3522 = zext i32 %3521 to i64
  store i64 %3522, i64* %RAX.i455, align 8
  store %struct.Memory* %loadMem_4a03e8, %struct.Memory** %MEMORY
  %loadMem_4a03eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3524 = getelementptr inbounds %struct.GPR, %struct.GPR* %3523, i32 0, i32 33
  %3525 = getelementptr inbounds %struct.Reg, %struct.Reg* %3524, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3525 to i64*
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 1
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3528 to i64*
  %3529 = load i64, i64* %RAX.i453
  %3530 = load i64, i64* %PC.i452
  %3531 = add i64 %3530, 3
  store i64 %3531, i64* %PC.i452
  %3532 = trunc i64 %3529 to i32
  %3533 = add i32 1, %3532
  %3534 = zext i32 %3533 to i64
  store i64 %3534, i64* %RAX.i453, align 8
  %3535 = icmp ult i32 %3533, %3532
  %3536 = icmp ult i32 %3533, 1
  %3537 = or i1 %3535, %3536
  %3538 = zext i1 %3537 to i8
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3538, i8* %3539, align 1
  %3540 = and i32 %3533, 255
  %3541 = call i32 @llvm.ctpop.i32(i32 %3540)
  %3542 = trunc i32 %3541 to i8
  %3543 = and i8 %3542, 1
  %3544 = xor i8 %3543, 1
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3544, i8* %3545, align 1
  %3546 = xor i64 1, %3529
  %3547 = trunc i64 %3546 to i32
  %3548 = xor i32 %3547, %3533
  %3549 = lshr i32 %3548, 4
  %3550 = trunc i32 %3549 to i8
  %3551 = and i8 %3550, 1
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3551, i8* %3552, align 1
  %3553 = icmp eq i32 %3533, 0
  %3554 = zext i1 %3553 to i8
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3554, i8* %3555, align 1
  %3556 = lshr i32 %3533, 31
  %3557 = trunc i32 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3557, i8* %3558, align 1
  %3559 = lshr i32 %3532, 31
  %3560 = xor i32 %3556, %3559
  %3561 = add i32 %3560, %3556
  %3562 = icmp eq i32 %3561, 2
  %3563 = zext i1 %3562 to i8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3563, i8* %3564, align 1
  store %struct.Memory* %loadMem_4a03eb, %struct.Memory** %MEMORY
  %loadMem_4a03ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 1
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %3570 to i32*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i451
  %3575 = sub i64 %3574, 104
  %3576 = load i32, i32* %EAX.i450
  %3577 = zext i32 %3576 to i64
  %3578 = load i64, i64* %PC.i449
  %3579 = add i64 %3578, 3
  store i64 %3579, i64* %PC.i449
  %3580 = inttoptr i64 %3575 to i32*
  store i32 %3576, i32* %3580
  store %struct.Memory* %loadMem_4a03ee, %struct.Memory** %MEMORY
  %loadMem_4a03f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 15
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RBP.i448 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RBP.i448
  %3588 = sub i64 %3587, 116
  %3589 = load i64, i64* %PC.i447
  %3590 = add i64 %3589, 7
  store i64 %3590, i64* %PC.i447
  %3591 = inttoptr i64 %3588 to i32*
  store i32 0, i32* %3591
  store %struct.Memory* %loadMem_4a03f1, %struct.Memory** %MEMORY
  %loadMem_4a03f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 15
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RBP.i446 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %RBP.i446
  %3599 = sub i64 %3598, 120
  %3600 = load i64, i64* %PC.i445
  %3601 = add i64 %3600, 7
  store i64 %3601, i64* %PC.i445
  %3602 = inttoptr i64 %3599 to i32*
  store i32 -1, i32* %3602
  store %struct.Memory* %loadMem_4a03f8, %struct.Memory** %MEMORY
  br label %block_.L_4a03ff

block_.L_4a03ff:                                  ; preds = %block_4a03df, %block_.L_4a03d3
  %loadMem_4a03ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3604 = getelementptr inbounds %struct.GPR, %struct.GPR* %3603, i32 0, i32 33
  %3605 = getelementptr inbounds %struct.Reg, %struct.Reg* %3604, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3605 to i64*
  %3606 = load i64, i64* %PC.i444
  %3607 = add i64 %3606, 5
  %3608 = load i64, i64* %PC.i444
  %3609 = add i64 %3608, 5
  store i64 %3609, i64* %PC.i444
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3607, i64* %3610, align 8
  store %struct.Memory* %loadMem_4a03ff, %struct.Memory** %MEMORY
  br label %block_.L_4a0404

block_.L_4a0404:                                  ; preds = %block_.L_4a03ff, %block_4a03ae
  %loadMem_4a0404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3612 = getelementptr inbounds %struct.GPR, %struct.GPR* %3611, i32 0, i32 33
  %3613 = getelementptr inbounds %struct.Reg, %struct.Reg* %3612, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3613 to i64*
  %3614 = load i64, i64* %PC.i443
  %3615 = add i64 %3614, 5
  %3616 = load i64, i64* %PC.i443
  %3617 = add i64 %3616, 5
  store i64 %3617, i64* %PC.i443
  %3618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3615, i64* %3618, align 8
  store %struct.Memory* %loadMem_4a0404, %struct.Memory** %MEMORY
  br label %block_.L_4a0409

block_.L_4a0409:                                  ; preds = %block_.L_4a0404, %block_4a0371
  %loadMem_4a0409 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3621 to i64*
  %3622 = load i64, i64* %PC.i442
  %3623 = add i64 %3622, 356
  %3624 = load i64, i64* %PC.i442
  %3625 = add i64 %3624, 5
  store i64 %3625, i64* %PC.i442
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3623, i64* %3626, align 8
  store %struct.Memory* %loadMem_4a0409, %struct.Memory** %MEMORY
  br label %block_.L_4a056d

block_.L_4a040e:                                  ; preds = %block_4a035b, %block_.L_4a0351
  %loadMem_4a040e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 33
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3629 to i64*
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3631 = getelementptr inbounds %struct.GPR, %struct.GPR* %3630, i32 0, i32 15
  %3632 = getelementptr inbounds %struct.Reg, %struct.Reg* %3631, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %3632 to i64*
  %3633 = load i64, i64* %RBP.i441
  %3634 = sub i64 %3633, 116
  %3635 = load i64, i64* %PC.i440
  %3636 = add i64 %3635, 4
  store i64 %3636, i64* %PC.i440
  %3637 = inttoptr i64 %3634 to i32*
  %3638 = load i32, i32* %3637
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3639, align 1
  %3640 = and i32 %3638, 255
  %3641 = call i32 @llvm.ctpop.i32(i32 %3640)
  %3642 = trunc i32 %3641 to i8
  %3643 = and i8 %3642, 1
  %3644 = xor i8 %3643, 1
  %3645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3644, i8* %3645, align 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3646, align 1
  %3647 = icmp eq i32 %3638, 0
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3648, i8* %3649, align 1
  %3650 = lshr i32 %3638, 31
  %3651 = trunc i32 %3650 to i8
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3651, i8* %3652, align 1
  %3653 = lshr i32 %3638, 31
  %3654 = xor i32 %3650, %3653
  %3655 = add i32 %3654, %3653
  %3656 = icmp eq i32 %3655, 2
  %3657 = zext i1 %3656 to i8
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3657, i8* %3658, align 1
  store %struct.Memory* %loadMem_4a040e, %struct.Memory** %MEMORY
  %loadMem_4a0412 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3661 to i64*
  %3662 = load i64, i64* %PC.i439
  %3663 = add i64 %3662, 148
  %3664 = load i64, i64* %PC.i439
  %3665 = add i64 %3664, 6
  %3666 = load i64, i64* %PC.i439
  %3667 = add i64 %3666, 6
  store i64 %3667, i64* %PC.i439
  %3668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3669 = load i8, i8* %3668, align 1
  %3670 = icmp eq i8 %3669, 0
  %3671 = zext i1 %3670 to i8
  store i8 %3671, i8* %BRANCH_TAKEN, align 1
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3673 = select i1 %3670, i64 %3663, i64 %3665
  store i64 %3673, i64* %3672, align 8
  store %struct.Memory* %loadMem_4a0412, %struct.Memory** %MEMORY
  %loadBr_4a0412 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0412 = icmp eq i8 %loadBr_4a0412, 1
  br i1 %cmpBr_4a0412, label %block_.L_4a04a6, label %block_4a0418

block_4a0418:                                     ; preds = %block_.L_4a040e
  %loadMem_4a0418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 33
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %3676 to i64*
  %3677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3678 = getelementptr inbounds %struct.GPR, %struct.GPR* %3677, i32 0, i32 15
  %3679 = getelementptr inbounds %struct.Reg, %struct.Reg* %3678, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %3679 to i64*
  %3680 = load i64, i64* %RBP.i438
  %3681 = sub i64 %3680, 120
  %3682 = load i64, i64* %PC.i437
  %3683 = add i64 %3682, 4
  store i64 %3683, i64* %PC.i437
  %3684 = inttoptr i64 %3681 to i32*
  %3685 = load i32, i32* %3684
  %3686 = sub i32 %3685, -1
  %3687 = icmp ult i32 %3685, -1
  %3688 = zext i1 %3687 to i8
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3688, i8* %3689, align 1
  %3690 = and i32 %3686, 255
  %3691 = call i32 @llvm.ctpop.i32(i32 %3690)
  %3692 = trunc i32 %3691 to i8
  %3693 = and i8 %3692, 1
  %3694 = xor i8 %3693, 1
  %3695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3694, i8* %3695, align 1
  %3696 = xor i32 %3685, -1
  %3697 = xor i32 %3696, %3686
  %3698 = lshr i32 %3697, 4
  %3699 = trunc i32 %3698 to i8
  %3700 = and i8 %3699, 1
  %3701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3700, i8* %3701, align 1
  %3702 = icmp eq i32 %3686, 0
  %3703 = zext i1 %3702 to i8
  %3704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3703, i8* %3704, align 1
  %3705 = lshr i32 %3686, 31
  %3706 = trunc i32 %3705 to i8
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3706, i8* %3707, align 1
  %3708 = lshr i32 %3685, 31
  %3709 = xor i32 %3708, 1
  %3710 = xor i32 %3705, %3708
  %3711 = add i32 %3710, %3709
  %3712 = icmp eq i32 %3711, 2
  %3713 = zext i1 %3712 to i8
  %3714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3713, i8* %3714, align 1
  store %struct.Memory* %loadMem_4a0418, %struct.Memory** %MEMORY
  %loadMem_4a041c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3717 to i64*
  %3718 = load i64, i64* %PC.i436
  %3719 = add i64 %3718, 138
  %3720 = load i64, i64* %PC.i436
  %3721 = add i64 %3720, 6
  %3722 = load i64, i64* %PC.i436
  %3723 = add i64 %3722, 6
  store i64 %3723, i64* %PC.i436
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3725 = load i8, i8* %3724, align 1
  %3726 = icmp eq i8 %3725, 0
  %3727 = zext i1 %3726 to i8
  store i8 %3727, i8* %BRANCH_TAKEN, align 1
  %3728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3729 = select i1 %3726, i64 %3719, i64 %3721
  store i64 %3729, i64* %3728, align 8
  store %struct.Memory* %loadMem_4a041c, %struct.Memory** %MEMORY
  %loadBr_4a041c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a041c = icmp eq i8 %loadBr_4a041c, 1
  br i1 %cmpBr_4a041c, label %block_.L_4a04a6, label %block_4a0422

block_4a0422:                                     ; preds = %block_4a0418
  %loadMem_4a0422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 33
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3732 to i64*
  %3733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3734 = getelementptr inbounds %struct.GPR, %struct.GPR* %3733, i32 0, i32 1
  %3735 = getelementptr inbounds %struct.Reg, %struct.Reg* %3734, i32 0, i32 0
  %RAX.i434 = bitcast %union.anon* %3735 to i64*
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3737 = getelementptr inbounds %struct.GPR, %struct.GPR* %3736, i32 0, i32 15
  %3738 = getelementptr inbounds %struct.Reg, %struct.Reg* %3737, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %3738 to i64*
  %3739 = load i64, i64* %RBP.i435
  %3740 = sub i64 %3739, 96
  %3741 = load i64, i64* %PC.i433
  %3742 = add i64 %3741, 3
  store i64 %3742, i64* %PC.i433
  %3743 = inttoptr i64 %3740 to i32*
  %3744 = load i32, i32* %3743
  %3745 = zext i32 %3744 to i64
  store i64 %3745, i64* %RAX.i434, align 8
  store %struct.Memory* %loadMem_4a0422, %struct.Memory** %MEMORY
  %loadMem_4a0425 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 33
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3748 to i64*
  %3749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3750 = getelementptr inbounds %struct.GPR, %struct.GPR* %3749, i32 0, i32 1
  %3751 = getelementptr inbounds %struct.Reg, %struct.Reg* %3750, i32 0, i32 0
  %EAX.i431 = bitcast %union.anon* %3751 to i32*
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 15
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %3754 to i64*
  %3755 = load i32, i32* %EAX.i431
  %3756 = zext i32 %3755 to i64
  %3757 = load i64, i64* %RBP.i432
  %3758 = sub i64 %3757, 112
  %3759 = load i64, i64* %PC.i430
  %3760 = add i64 %3759, 3
  store i64 %3760, i64* %PC.i430
  %3761 = inttoptr i64 %3758 to i32*
  %3762 = load i32, i32* %3761
  %3763 = sub i32 %3755, %3762
  %3764 = icmp ult i32 %3755, %3762
  %3765 = zext i1 %3764 to i8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3765, i8* %3766, align 1
  %3767 = and i32 %3763, 255
  %3768 = call i32 @llvm.ctpop.i32(i32 %3767)
  %3769 = trunc i32 %3768 to i8
  %3770 = and i8 %3769, 1
  %3771 = xor i8 %3770, 1
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3771, i8* %3772, align 1
  %3773 = xor i32 %3762, %3755
  %3774 = xor i32 %3773, %3763
  %3775 = lshr i32 %3774, 4
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3777, i8* %3778, align 1
  %3779 = icmp eq i32 %3763, 0
  %3780 = zext i1 %3779 to i8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3780, i8* %3781, align 1
  %3782 = lshr i32 %3763, 31
  %3783 = trunc i32 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3783, i8* %3784, align 1
  %3785 = lshr i32 %3755, 31
  %3786 = lshr i32 %3762, 31
  %3787 = xor i32 %3786, %3785
  %3788 = xor i32 %3782, %3785
  %3789 = add i32 %3788, %3787
  %3790 = icmp eq i32 %3789, 2
  %3791 = zext i1 %3790 to i8
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3791, i8* %3792, align 1
  store %struct.Memory* %loadMem_4a0425, %struct.Memory** %MEMORY
  %loadMem_4a0428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3795 to i64*
  %3796 = load i64, i64* %PC.i429
  %3797 = add i64 %3796, 20
  %3798 = load i64, i64* %PC.i429
  %3799 = add i64 %3798, 6
  %3800 = load i64, i64* %PC.i429
  %3801 = add i64 %3800, 6
  store i64 %3801, i64* %PC.i429
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3803 = load i8, i8* %3802, align 1
  %3804 = icmp ne i8 %3803, 0
  %3805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3806 = load i8, i8* %3805, align 1
  %3807 = icmp ne i8 %3806, 0
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3809 = load i8, i8* %3808, align 1
  %3810 = icmp ne i8 %3809, 0
  %3811 = xor i1 %3807, %3810
  %3812 = or i1 %3804, %3811
  %3813 = zext i1 %3812 to i8
  store i8 %3813, i8* %BRANCH_TAKEN, align 1
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3815 = select i1 %3812, i64 %3797, i64 %3799
  store i64 %3815, i64* %3814, align 8
  store %struct.Memory* %loadMem_4a0428, %struct.Memory** %MEMORY
  %loadBr_4a0428 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0428 = icmp eq i8 %loadBr_4a0428, 1
  br i1 %cmpBr_4a0428, label %block_.L_4a043c, label %block_4a042e

block_4a042e:                                     ; preds = %block_4a0422
  %loadMem_4a042e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3817 = getelementptr inbounds %struct.GPR, %struct.GPR* %3816, i32 0, i32 33
  %3818 = getelementptr inbounds %struct.Reg, %struct.Reg* %3817, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %3818 to i64*
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 1
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %RAX.i427 = bitcast %union.anon* %3821 to i64*
  %3822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3823 = getelementptr inbounds %struct.GPR, %struct.GPR* %3822, i32 0, i32 15
  %3824 = getelementptr inbounds %struct.Reg, %struct.Reg* %3823, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %3824 to i64*
  %3825 = load i64, i64* %RBP.i428
  %3826 = sub i64 %3825, 96
  %3827 = load i64, i64* %PC.i426
  %3828 = add i64 %3827, 3
  store i64 %3828, i64* %PC.i426
  %3829 = inttoptr i64 %3826 to i32*
  %3830 = load i32, i32* %3829
  %3831 = zext i32 %3830 to i64
  store i64 %3831, i64* %RAX.i427, align 8
  store %struct.Memory* %loadMem_4a042e, %struct.Memory** %MEMORY
  %loadMem_4a0431 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3833 = getelementptr inbounds %struct.GPR, %struct.GPR* %3832, i32 0, i32 33
  %3834 = getelementptr inbounds %struct.Reg, %struct.Reg* %3833, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3834 to i64*
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 1
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %3837 to i64*
  %3838 = load i64, i64* %RAX.i425
  %3839 = load i64, i64* %PC.i424
  %3840 = add i64 %3839, 3
  store i64 %3840, i64* %PC.i424
  %3841 = trunc i64 %3838 to i32
  %3842 = add i32 -1, %3841
  %3843 = zext i32 %3842 to i64
  store i64 %3843, i64* %RAX.i425, align 8
  %3844 = icmp ult i32 %3842, %3841
  %3845 = icmp ult i32 %3842, -1
  %3846 = or i1 %3844, %3845
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3847, i8* %3848, align 1
  %3849 = and i32 %3842, 255
  %3850 = call i32 @llvm.ctpop.i32(i32 %3849)
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  %3853 = xor i8 %3852, 1
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3853, i8* %3854, align 1
  %3855 = xor i64 -1, %3838
  %3856 = trunc i64 %3855 to i32
  %3857 = xor i32 %3856, %3842
  %3858 = lshr i32 %3857, 4
  %3859 = trunc i32 %3858 to i8
  %3860 = and i8 %3859, 1
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3860, i8* %3861, align 1
  %3862 = icmp eq i32 %3842, 0
  %3863 = zext i1 %3862 to i8
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3863, i8* %3864, align 1
  %3865 = lshr i32 %3842, 31
  %3866 = trunc i32 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3866, i8* %3867, align 1
  %3868 = lshr i32 %3841, 31
  %3869 = xor i32 %3865, %3868
  %3870 = xor i32 %3865, 1
  %3871 = add i32 %3869, %3870
  %3872 = icmp eq i32 %3871, 2
  %3873 = zext i1 %3872 to i8
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3873, i8* %3874, align 1
  store %struct.Memory* %loadMem_4a0431, %struct.Memory** %MEMORY
  %loadMem_4a0434 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 1
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %EAX.i422 = bitcast %union.anon* %3880 to i32*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 15
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RBP.i423 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %RBP.i423
  %3885 = sub i64 %3884, 96
  %3886 = load i32, i32* %EAX.i422
  %3887 = zext i32 %3886 to i64
  %3888 = load i64, i64* %PC.i421
  %3889 = add i64 %3888, 3
  store i64 %3889, i64* %PC.i421
  %3890 = inttoptr i64 %3885 to i32*
  store i32 %3886, i32* %3890
  store %struct.Memory* %loadMem_4a0434, %struct.Memory** %MEMORY
  %loadMem_4a0437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3892 = getelementptr inbounds %struct.GPR, %struct.GPR* %3891, i32 0, i32 33
  %3893 = getelementptr inbounds %struct.Reg, %struct.Reg* %3892, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3893 to i64*
  %3894 = load i64, i64* %PC.i420
  %3895 = add i64 %3894, 106
  %3896 = load i64, i64* %PC.i420
  %3897 = add i64 %3896, 5
  store i64 %3897, i64* %PC.i420
  %3898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3895, i64* %3898, align 8
  store %struct.Memory* %loadMem_4a0437, %struct.Memory** %MEMORY
  br label %block_.L_4a04a1

block_.L_4a043c:                                  ; preds = %block_4a0422
  %loadMem_4a043c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 33
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3901 to i64*
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3903 = getelementptr inbounds %struct.GPR, %struct.GPR* %3902, i32 0, i32 15
  %3904 = getelementptr inbounds %struct.Reg, %struct.Reg* %3903, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3904 to i64*
  %3905 = load i64, i64* %RBP.i419
  %3906 = sub i64 %3905, 96
  %3907 = load i64, i64* %PC.i418
  %3908 = add i64 %3907, 4
  store i64 %3908, i64* %PC.i418
  %3909 = inttoptr i64 %3906 to i32*
  %3910 = load i32, i32* %3909
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3911, align 1
  %3912 = and i32 %3910, 255
  %3913 = call i32 @llvm.ctpop.i32(i32 %3912)
  %3914 = trunc i32 %3913 to i8
  %3915 = and i8 %3914, 1
  %3916 = xor i8 %3915, 1
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3916, i8* %3917, align 1
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3918, align 1
  %3919 = icmp eq i32 %3910, 0
  %3920 = zext i1 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3920, i8* %3921, align 1
  %3922 = lshr i32 %3910, 31
  %3923 = trunc i32 %3922 to i8
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3923, i8* %3924, align 1
  %3925 = lshr i32 %3910, 31
  %3926 = xor i32 %3922, %3925
  %3927 = add i32 %3926, %3925
  %3928 = icmp eq i32 %3927, 2
  %3929 = zext i1 %3928 to i8
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3929, i8* %3930, align 1
  store %struct.Memory* %loadMem_4a043c, %struct.Memory** %MEMORY
  %loadMem_4a0440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 33
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %PC.i417
  %3935 = add i64 %3934, 43
  %3936 = load i64, i64* %PC.i417
  %3937 = add i64 %3936, 6
  %3938 = load i64, i64* %PC.i417
  %3939 = add i64 %3938, 6
  store i64 %3939, i64* %PC.i417
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3941 = load i8, i8* %3940, align 1
  %3942 = icmp eq i8 %3941, 0
  %3943 = zext i1 %3942 to i8
  store i8 %3943, i8* %BRANCH_TAKEN, align 1
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3945 = select i1 %3942, i64 %3935, i64 %3937
  store i64 %3945, i64* %3944, align 8
  store %struct.Memory* %loadMem_4a0440, %struct.Memory** %MEMORY
  %loadBr_4a0440 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0440 = icmp eq i8 %loadBr_4a0440, 1
  br i1 %cmpBr_4a0440, label %block_.L_4a046b, label %block_4a0446

block_4a0446:                                     ; preds = %block_.L_4a043c
  %loadMem_4a0446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 33
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %3948 to i64*
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 1
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 15
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %3954 to i64*
  %3955 = load i64, i64* %RBP.i416
  %3956 = sub i64 %3955, 100
  %3957 = load i64, i64* %PC.i414
  %3958 = add i64 %3957, 3
  store i64 %3958, i64* %PC.i414
  %3959 = inttoptr i64 %3956 to i32*
  %3960 = load i32, i32* %3959
  %3961 = zext i32 %3960 to i64
  store i64 %3961, i64* %RAX.i415, align 8
  store %struct.Memory* %loadMem_4a0446, %struct.Memory** %MEMORY
  %loadMem_4a0449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3963 = getelementptr inbounds %struct.GPR, %struct.GPR* %3962, i32 0, i32 33
  %3964 = getelementptr inbounds %struct.Reg, %struct.Reg* %3963, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3964 to i64*
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 1
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3967 to i64*
  %3968 = load i64, i64* %RAX.i413
  %3969 = load i64, i64* %PC.i412
  %3970 = add i64 %3969, 3
  store i64 %3970, i64* %PC.i412
  %3971 = trunc i64 %3968 to i32
  %3972 = sub i32 %3971, 1
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RAX.i413, align 8
  %3974 = icmp ult i32 %3971, 1
  %3975 = zext i1 %3974 to i8
  %3976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3975, i8* %3976, align 1
  %3977 = and i32 %3972, 255
  %3978 = call i32 @llvm.ctpop.i32(i32 %3977)
  %3979 = trunc i32 %3978 to i8
  %3980 = and i8 %3979, 1
  %3981 = xor i8 %3980, 1
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3981, i8* %3982, align 1
  %3983 = xor i64 1, %3968
  %3984 = trunc i64 %3983 to i32
  %3985 = xor i32 %3984, %3972
  %3986 = lshr i32 %3985, 4
  %3987 = trunc i32 %3986 to i8
  %3988 = and i8 %3987, 1
  %3989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3988, i8* %3989, align 1
  %3990 = icmp eq i32 %3972, 0
  %3991 = zext i1 %3990 to i8
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3991, i8* %3992, align 1
  %3993 = lshr i32 %3972, 31
  %3994 = trunc i32 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3994, i8* %3995, align 1
  %3996 = lshr i32 %3971, 31
  %3997 = xor i32 %3993, %3996
  %3998 = add i32 %3997, %3996
  %3999 = icmp eq i32 %3998, 2
  %4000 = zext i1 %3999 to i8
  %4001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4000, i8* %4001, align 1
  store %struct.Memory* %loadMem_4a0449, %struct.Memory** %MEMORY
  %loadMem_4a044c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 33
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %4004 to i64*
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 1
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %EAX.i410 = bitcast %union.anon* %4007 to i32*
  %4008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4009 = getelementptr inbounds %struct.GPR, %struct.GPR* %4008, i32 0, i32 15
  %4010 = getelementptr inbounds %struct.Reg, %struct.Reg* %4009, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %4010 to i64*
  %4011 = load i64, i64* %RBP.i411
  %4012 = sub i64 %4011, 92
  %4013 = load i32, i32* %EAX.i410
  %4014 = zext i32 %4013 to i64
  %4015 = load i64, i64* %PC.i409
  %4016 = add i64 %4015, 3
  store i64 %4016, i64* %PC.i409
  %4017 = inttoptr i64 %4012 to i32*
  store i32 %4013, i32* %4017
  store %struct.Memory* %loadMem_4a044c, %struct.Memory** %MEMORY
  %loadMem_4a044f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 1
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 15
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RBP.i408
  %4028 = sub i64 %4027, 100
  %4029 = load i64, i64* %PC.i406
  %4030 = add i64 %4029, 3
  store i64 %4030, i64* %PC.i406
  %4031 = inttoptr i64 %4028 to i32*
  %4032 = load i32, i32* %4031
  %4033 = zext i32 %4032 to i64
  store i64 %4033, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_4a044f, %struct.Memory** %MEMORY
  %loadMem_4a0452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 1
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RAX.i405
  %4041 = load i64, i64* %PC.i404
  %4042 = add i64 %4041, 3
  store i64 %4042, i64* %PC.i404
  %4043 = trunc i64 %4040 to i32
  %4044 = add i32 -1, %4043
  %4045 = zext i32 %4044 to i64
  store i64 %4045, i64* %RAX.i405, align 8
  %4046 = icmp ult i32 %4044, %4043
  %4047 = icmp ult i32 %4044, -1
  %4048 = or i1 %4046, %4047
  %4049 = zext i1 %4048 to i8
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4049, i8* %4050, align 1
  %4051 = and i32 %4044, 255
  %4052 = call i32 @llvm.ctpop.i32(i32 %4051)
  %4053 = trunc i32 %4052 to i8
  %4054 = and i8 %4053, 1
  %4055 = xor i8 %4054, 1
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4055, i8* %4056, align 1
  %4057 = xor i64 -1, %4040
  %4058 = trunc i64 %4057 to i32
  %4059 = xor i32 %4058, %4044
  %4060 = lshr i32 %4059, 4
  %4061 = trunc i32 %4060 to i8
  %4062 = and i8 %4061, 1
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4062, i8* %4063, align 1
  %4064 = icmp eq i32 %4044, 0
  %4065 = zext i1 %4064 to i8
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4065, i8* %4066, align 1
  %4067 = lshr i32 %4044, 31
  %4068 = trunc i32 %4067 to i8
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4068, i8* %4069, align 1
  %4070 = lshr i32 %4043, 31
  %4071 = xor i32 %4067, %4070
  %4072 = xor i32 %4067, 1
  %4073 = add i32 %4071, %4072
  %4074 = icmp eq i32 %4073, 2
  %4075 = zext i1 %4074 to i8
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4075, i8* %4076, align 1
  store %struct.Memory* %loadMem_4a0452, %struct.Memory** %MEMORY
  %loadMem_4a0455 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 1
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %EAX.i402 = bitcast %union.anon* %4082 to i32*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 15
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RBP.i403
  %4087 = sub i64 %4086, 100
  %4088 = load i32, i32* %EAX.i402
  %4089 = zext i32 %4088 to i64
  %4090 = load i64, i64* %PC.i401
  %4091 = add i64 %4090, 3
  store i64 %4091, i64* %PC.i401
  %4092 = inttoptr i64 %4087 to i32*
  store i32 %4088, i32* %4092
  store %struct.Memory* %loadMem_4a0455, %struct.Memory** %MEMORY
  %loadMem_4a0458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 33
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 15
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %RBP.i400 = bitcast %union.anon* %4098 to i64*
  %4099 = load i64, i64* %RBP.i400
  %4100 = sub i64 %4099, 116
  %4101 = load i64, i64* %PC.i399
  %4102 = add i64 %4101, 7
  store i64 %4102, i64* %PC.i399
  %4103 = inttoptr i64 %4100 to i32*
  store i32 0, i32* %4103
  store %struct.Memory* %loadMem_4a0458, %struct.Memory** %MEMORY
  %loadMem_4a045f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4105 = getelementptr inbounds %struct.GPR, %struct.GPR* %4104, i32 0, i32 33
  %4106 = getelementptr inbounds %struct.Reg, %struct.Reg* %4105, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %4106 to i64*
  %4107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4108 = getelementptr inbounds %struct.GPR, %struct.GPR* %4107, i32 0, i32 15
  %4109 = getelementptr inbounds %struct.Reg, %struct.Reg* %4108, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %4109 to i64*
  %4110 = load i64, i64* %RBP.i398
  %4111 = sub i64 %4110, 120
  %4112 = load i64, i64* %PC.i397
  %4113 = add i64 %4112, 7
  store i64 %4113, i64* %PC.i397
  %4114 = inttoptr i64 %4111 to i32*
  store i32 1, i32* %4114
  store %struct.Memory* %loadMem_4a045f, %struct.Memory** %MEMORY
  %loadMem_4a0466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 33
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %PC.i396
  %4119 = add i64 %4118, 54
  %4120 = load i64, i64* %PC.i396
  %4121 = add i64 %4120, 5
  store i64 %4121, i64* %PC.i396
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4119, i64* %4122, align 8
  store %struct.Memory* %loadMem_4a0466, %struct.Memory** %MEMORY
  br label %block_.L_4a049c

block_.L_4a046b:                                  ; preds = %block_.L_4a043c
  %loadMem_4a046b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 33
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %4125 to i64*
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4127 = getelementptr inbounds %struct.GPR, %struct.GPR* %4126, i32 0, i32 1
  %4128 = getelementptr inbounds %struct.Reg, %struct.Reg* %4127, i32 0, i32 0
  %RAX.i394 = bitcast %union.anon* %4128 to i64*
  %4129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4130 = getelementptr inbounds %struct.GPR, %struct.GPR* %4129, i32 0, i32 15
  %4131 = getelementptr inbounds %struct.Reg, %struct.Reg* %4130, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %4131 to i64*
  %4132 = load i64, i64* %RBP.i395
  %4133 = sub i64 %4132, 96
  %4134 = load i64, i64* %PC.i393
  %4135 = add i64 %4134, 3
  store i64 %4135, i64* %PC.i393
  %4136 = inttoptr i64 %4133 to i32*
  %4137 = load i32, i32* %4136
  %4138 = zext i32 %4137 to i64
  store i64 %4138, i64* %RAX.i394, align 8
  store %struct.Memory* %loadMem_4a046b, %struct.Memory** %MEMORY
  %loadMem_4a046e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 1
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %4144 to i32*
  %4145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4146 = getelementptr inbounds %struct.GPR, %struct.GPR* %4145, i32 0, i32 15
  %4147 = getelementptr inbounds %struct.Reg, %struct.Reg* %4146, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %4147 to i64*
  %4148 = load i32, i32* %EAX.i391
  %4149 = zext i32 %4148 to i64
  %4150 = load i64, i64* %RBP.i392
  %4151 = sub i64 %4150, 112
  %4152 = load i64, i64* %PC.i390
  %4153 = add i64 %4152, 3
  store i64 %4153, i64* %PC.i390
  %4154 = inttoptr i64 %4151 to i32*
  %4155 = load i32, i32* %4154
  %4156 = sub i32 %4148, %4155
  %4157 = icmp ult i32 %4148, %4155
  %4158 = zext i1 %4157 to i8
  %4159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4158, i8* %4159, align 1
  %4160 = and i32 %4156, 255
  %4161 = call i32 @llvm.ctpop.i32(i32 %4160)
  %4162 = trunc i32 %4161 to i8
  %4163 = and i8 %4162, 1
  %4164 = xor i8 %4163, 1
  %4165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4164, i8* %4165, align 1
  %4166 = xor i32 %4155, %4148
  %4167 = xor i32 %4166, %4156
  %4168 = lshr i32 %4167, 4
  %4169 = trunc i32 %4168 to i8
  %4170 = and i8 %4169, 1
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4170, i8* %4171, align 1
  %4172 = icmp eq i32 %4156, 0
  %4173 = zext i1 %4172 to i8
  %4174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4173, i8* %4174, align 1
  %4175 = lshr i32 %4156, 31
  %4176 = trunc i32 %4175 to i8
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4176, i8* %4177, align 1
  %4178 = lshr i32 %4148, 31
  %4179 = lshr i32 %4155, 31
  %4180 = xor i32 %4179, %4178
  %4181 = xor i32 %4175, %4178
  %4182 = add i32 %4181, %4180
  %4183 = icmp eq i32 %4182, 2
  %4184 = zext i1 %4183 to i8
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4184, i8* %4185, align 1
  store %struct.Memory* %loadMem_4a046e, %struct.Memory** %MEMORY
  %loadMem_4a0471 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4187 = getelementptr inbounds %struct.GPR, %struct.GPR* %4186, i32 0, i32 33
  %4188 = getelementptr inbounds %struct.Reg, %struct.Reg* %4187, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4188 to i64*
  %4189 = load i64, i64* %PC.i389
  %4190 = add i64 %4189, 38
  %4191 = load i64, i64* %PC.i389
  %4192 = add i64 %4191, 6
  %4193 = load i64, i64* %PC.i389
  %4194 = add i64 %4193, 6
  store i64 %4194, i64* %PC.i389
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4196 = load i8, i8* %4195, align 1
  %4197 = icmp eq i8 %4196, 0
  %4198 = zext i1 %4197 to i8
  store i8 %4198, i8* %BRANCH_TAKEN, align 1
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4200 = select i1 %4197, i64 %4190, i64 %4192
  store i64 %4200, i64* %4199, align 8
  store %struct.Memory* %loadMem_4a0471, %struct.Memory** %MEMORY
  %loadBr_4a0471 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0471 = icmp eq i8 %loadBr_4a0471, 1
  br i1 %cmpBr_4a0471, label %block_.L_4a0497, label %block_4a0477

block_4a0477:                                     ; preds = %block_.L_4a046b
  %loadMem_4a0477 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4202 = getelementptr inbounds %struct.GPR, %struct.GPR* %4201, i32 0, i32 33
  %4203 = getelementptr inbounds %struct.Reg, %struct.Reg* %4202, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4203 to i64*
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 1
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 15
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %4209 to i64*
  %4210 = load i64, i64* %RBP.i388
  %4211 = sub i64 %4210, 96
  %4212 = load i64, i64* %PC.i386
  %4213 = add i64 %4212, 3
  store i64 %4213, i64* %PC.i386
  %4214 = inttoptr i64 %4211 to i32*
  %4215 = load i32, i32* %4214
  %4216 = zext i32 %4215 to i64
  store i64 %4216, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_4a0477, %struct.Memory** %MEMORY
  %loadMem_4a047a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 1
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %RAX.i385
  %4224 = load i64, i64* %PC.i384
  %4225 = add i64 %4224, 3
  store i64 %4225, i64* %PC.i384
  %4226 = trunc i64 %4223 to i32
  %4227 = add i32 -1, %4226
  %4228 = zext i32 %4227 to i64
  store i64 %4228, i64* %RAX.i385, align 8
  %4229 = icmp ult i32 %4227, %4226
  %4230 = icmp ult i32 %4227, -1
  %4231 = or i1 %4229, %4230
  %4232 = zext i1 %4231 to i8
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4232, i8* %4233, align 1
  %4234 = and i32 %4227, 255
  %4235 = call i32 @llvm.ctpop.i32(i32 %4234)
  %4236 = trunc i32 %4235 to i8
  %4237 = and i8 %4236, 1
  %4238 = xor i8 %4237, 1
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4238, i8* %4239, align 1
  %4240 = xor i64 -1, %4223
  %4241 = trunc i64 %4240 to i32
  %4242 = xor i32 %4241, %4227
  %4243 = lshr i32 %4242, 4
  %4244 = trunc i32 %4243 to i8
  %4245 = and i8 %4244, 1
  %4246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4245, i8* %4246, align 1
  %4247 = icmp eq i32 %4227, 0
  %4248 = zext i1 %4247 to i8
  %4249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4248, i8* %4249, align 1
  %4250 = lshr i32 %4227, 31
  %4251 = trunc i32 %4250 to i8
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4251, i8* %4252, align 1
  %4253 = lshr i32 %4226, 31
  %4254 = xor i32 %4250, %4253
  %4255 = xor i32 %4250, 1
  %4256 = add i32 %4254, %4255
  %4257 = icmp eq i32 %4256, 2
  %4258 = zext i1 %4257 to i8
  %4259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4258, i8* %4259, align 1
  store %struct.Memory* %loadMem_4a047a, %struct.Memory** %MEMORY
  %loadMem_4a047d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4261 = getelementptr inbounds %struct.GPR, %struct.GPR* %4260, i32 0, i32 33
  %4262 = getelementptr inbounds %struct.Reg, %struct.Reg* %4261, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %4262 to i64*
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 1
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %EAX.i382 = bitcast %union.anon* %4265 to i32*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 15
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RBP.i383 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %RBP.i383
  %4270 = sub i64 %4269, 96
  %4271 = load i32, i32* %EAX.i382
  %4272 = zext i32 %4271 to i64
  %4273 = load i64, i64* %PC.i381
  %4274 = add i64 %4273, 3
  store i64 %4274, i64* %PC.i381
  %4275 = inttoptr i64 %4270 to i32*
  store i32 %4271, i32* %4275
  store %struct.Memory* %loadMem_4a047d, %struct.Memory** %MEMORY
  %loadMem_4a0480 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 33
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4278 to i64*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 1
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %4281 to i64*
  %4282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4283 = getelementptr inbounds %struct.GPR, %struct.GPR* %4282, i32 0, i32 15
  %4284 = getelementptr inbounds %struct.Reg, %struct.Reg* %4283, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %4284 to i64*
  %4285 = load i64, i64* %RBP.i380
  %4286 = sub i64 %4285, 112
  %4287 = load i64, i64* %PC.i378
  %4288 = add i64 %4287, 3
  store i64 %4288, i64* %PC.i378
  %4289 = inttoptr i64 %4286 to i32*
  %4290 = load i32, i32* %4289
  %4291 = zext i32 %4290 to i64
  store i64 %4291, i64* %RAX.i379, align 8
  store %struct.Memory* %loadMem_4a0480, %struct.Memory** %MEMORY
  %loadMem_4a0483 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4293 = getelementptr inbounds %struct.GPR, %struct.GPR* %4292, i32 0, i32 33
  %4294 = getelementptr inbounds %struct.Reg, %struct.Reg* %4293, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4294 to i64*
  %4295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4296 = getelementptr inbounds %struct.GPR, %struct.GPR* %4295, i32 0, i32 1
  %4297 = getelementptr inbounds %struct.Reg, %struct.Reg* %4296, i32 0, i32 0
  %RAX.i377 = bitcast %union.anon* %4297 to i64*
  %4298 = load i64, i64* %RAX.i377
  %4299 = load i64, i64* %PC.i376
  %4300 = add i64 %4299, 3
  store i64 %4300, i64* %PC.i376
  %4301 = trunc i64 %4298 to i32
  %4302 = add i32 -1, %4301
  %4303 = zext i32 %4302 to i64
  store i64 %4303, i64* %RAX.i377, align 8
  %4304 = icmp ult i32 %4302, %4301
  %4305 = icmp ult i32 %4302, -1
  %4306 = or i1 %4304, %4305
  %4307 = zext i1 %4306 to i8
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4307, i8* %4308, align 1
  %4309 = and i32 %4302, 255
  %4310 = call i32 @llvm.ctpop.i32(i32 %4309)
  %4311 = trunc i32 %4310 to i8
  %4312 = and i8 %4311, 1
  %4313 = xor i8 %4312, 1
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4313, i8* %4314, align 1
  %4315 = xor i64 -1, %4298
  %4316 = trunc i64 %4315 to i32
  %4317 = xor i32 %4316, %4302
  %4318 = lshr i32 %4317, 4
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4320, i8* %4321, align 1
  %4322 = icmp eq i32 %4302, 0
  %4323 = zext i1 %4322 to i8
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4323, i8* %4324, align 1
  %4325 = lshr i32 %4302, 31
  %4326 = trunc i32 %4325 to i8
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4326, i8* %4327, align 1
  %4328 = lshr i32 %4301, 31
  %4329 = xor i32 %4325, %4328
  %4330 = xor i32 %4325, 1
  %4331 = add i32 %4329, %4330
  %4332 = icmp eq i32 %4331, 2
  %4333 = zext i1 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4333, i8* %4334, align 1
  store %struct.Memory* %loadMem_4a0483, %struct.Memory** %MEMORY
  %loadMem_4a0486 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 33
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4337 to i64*
  %4338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4339 = getelementptr inbounds %struct.GPR, %struct.GPR* %4338, i32 0, i32 1
  %4340 = getelementptr inbounds %struct.Reg, %struct.Reg* %4339, i32 0, i32 0
  %EAX.i374 = bitcast %union.anon* %4340 to i32*
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 15
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %4343 to i64*
  %4344 = load i64, i64* %RBP.i375
  %4345 = sub i64 %4344, 112
  %4346 = load i32, i32* %EAX.i374
  %4347 = zext i32 %4346 to i64
  %4348 = load i64, i64* %PC.i373
  %4349 = add i64 %4348, 3
  store i64 %4349, i64* %PC.i373
  %4350 = inttoptr i64 %4345 to i32*
  store i32 %4346, i32* %4350
  store %struct.Memory* %loadMem_4a0486, %struct.Memory** %MEMORY
  %loadMem_4a0489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 33
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %PC.i371 = bitcast %union.anon* %4353 to i64*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 15
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %4356 to i64*
  %4357 = load i64, i64* %RBP.i372
  %4358 = sub i64 %4357, 116
  %4359 = load i64, i64* %PC.i371
  %4360 = add i64 %4359, 7
  store i64 %4360, i64* %PC.i371
  %4361 = inttoptr i64 %4358 to i32*
  store i32 -1, i32* %4361
  store %struct.Memory* %loadMem_4a0489, %struct.Memory** %MEMORY
  %loadMem_4a0490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 15
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RBP.i370 = bitcast %union.anon* %4367 to i64*
  %4368 = load i64, i64* %RBP.i370
  %4369 = sub i64 %4368, 120
  %4370 = load i64, i64* %PC.i369
  %4371 = add i64 %4370, 7
  store i64 %4371, i64* %PC.i369
  %4372 = inttoptr i64 %4369 to i32*
  store i32 0, i32* %4372
  store %struct.Memory* %loadMem_4a0490, %struct.Memory** %MEMORY
  br label %block_.L_4a0497

block_.L_4a0497:                                  ; preds = %block_4a0477, %block_.L_4a046b
  %loadMem_4a0497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4375 to i64*
  %4376 = load i64, i64* %PC.i368
  %4377 = add i64 %4376, 5
  %4378 = load i64, i64* %PC.i368
  %4379 = add i64 %4378, 5
  store i64 %4379, i64* %PC.i368
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4377, i64* %4380, align 8
  store %struct.Memory* %loadMem_4a0497, %struct.Memory** %MEMORY
  br label %block_.L_4a049c

block_.L_4a049c:                                  ; preds = %block_.L_4a0497, %block_4a0446
  %loadMem_4a049c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 33
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4383 to i64*
  %4384 = load i64, i64* %PC.i367
  %4385 = add i64 %4384, 5
  %4386 = load i64, i64* %PC.i367
  %4387 = add i64 %4386, 5
  store i64 %4387, i64* %PC.i367
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4385, i64* %4388, align 8
  store %struct.Memory* %loadMem_4a049c, %struct.Memory** %MEMORY
  br label %block_.L_4a04a1

block_.L_4a04a1:                                  ; preds = %block_.L_4a049c, %block_4a042e
  %loadMem_4a04a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4390 = getelementptr inbounds %struct.GPR, %struct.GPR* %4389, i32 0, i32 33
  %4391 = getelementptr inbounds %struct.Reg, %struct.Reg* %4390, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4391 to i64*
  %4392 = load i64, i64* %PC.i366
  %4393 = add i64 %4392, 199
  %4394 = load i64, i64* %PC.i366
  %4395 = add i64 %4394, 5
  store i64 %4395, i64* %PC.i366
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4393, i64* %4396, align 8
  store %struct.Memory* %loadMem_4a04a1, %struct.Memory** %MEMORY
  br label %block_.L_4a0568

block_.L_4a04a6:                                  ; preds = %block_4a0418, %block_.L_4a040e
  %loadMem_4a04a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 33
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4399 to i64*
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4401 = getelementptr inbounds %struct.GPR, %struct.GPR* %4400, i32 0, i32 15
  %4402 = getelementptr inbounds %struct.Reg, %struct.Reg* %4401, i32 0, i32 0
  %RBP.i365 = bitcast %union.anon* %4402 to i64*
  %4403 = load i64, i64* %RBP.i365
  %4404 = sub i64 %4403, 116
  %4405 = load i64, i64* %PC.i364
  %4406 = add i64 %4405, 4
  store i64 %4406, i64* %PC.i364
  %4407 = inttoptr i64 %4404 to i32*
  %4408 = load i32, i32* %4407
  %4409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4409, align 1
  %4410 = and i32 %4408, 255
  %4411 = call i32 @llvm.ctpop.i32(i32 %4410)
  %4412 = trunc i32 %4411 to i8
  %4413 = and i8 %4412, 1
  %4414 = xor i8 %4413, 1
  %4415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4414, i8* %4415, align 1
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4416, align 1
  %4417 = icmp eq i32 %4408, 0
  %4418 = zext i1 %4417 to i8
  %4419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4418, i8* %4419, align 1
  %4420 = lshr i32 %4408, 31
  %4421 = trunc i32 %4420 to i8
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4421, i8* %4422, align 1
  %4423 = lshr i32 %4408, 31
  %4424 = xor i32 %4420, %4423
  %4425 = add i32 %4424, %4423
  %4426 = icmp eq i32 %4425, 2
  %4427 = zext i1 %4426 to i8
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4427, i8* %4428, align 1
  store %struct.Memory* %loadMem_4a04a6, %struct.Memory** %MEMORY
  %loadMem_4a04aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4430 = getelementptr inbounds %struct.GPR, %struct.GPR* %4429, i32 0, i32 33
  %4431 = getelementptr inbounds %struct.Reg, %struct.Reg* %4430, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %4431 to i64*
  %4432 = load i64, i64* %PC.i363
  %4433 = add i64 %4432, 185
  %4434 = load i64, i64* %PC.i363
  %4435 = add i64 %4434, 6
  %4436 = load i64, i64* %PC.i363
  %4437 = add i64 %4436, 6
  store i64 %4437, i64* %PC.i363
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4439 = load i8, i8* %4438, align 1
  %4440 = icmp eq i8 %4439, 0
  %4441 = zext i1 %4440 to i8
  store i8 %4441, i8* %BRANCH_TAKEN, align 1
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4443 = select i1 %4440, i64 %4433, i64 %4435
  store i64 %4443, i64* %4442, align 8
  store %struct.Memory* %loadMem_4a04aa, %struct.Memory** %MEMORY
  %loadBr_4a04aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a04aa = icmp eq i8 %loadBr_4a04aa, 1
  br i1 %cmpBr_4a04aa, label %block_.L_4a0563, label %block_4a04b0

block_4a04b0:                                     ; preds = %block_.L_4a04a6
  %loadMem_4a04b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4445 = getelementptr inbounds %struct.GPR, %struct.GPR* %4444, i32 0, i32 33
  %4446 = getelementptr inbounds %struct.Reg, %struct.Reg* %4445, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4446 to i64*
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4448 = getelementptr inbounds %struct.GPR, %struct.GPR* %4447, i32 0, i32 15
  %4449 = getelementptr inbounds %struct.Reg, %struct.Reg* %4448, i32 0, i32 0
  %RBP.i362 = bitcast %union.anon* %4449 to i64*
  %4450 = load i64, i64* %RBP.i362
  %4451 = sub i64 %4450, 120
  %4452 = load i64, i64* %PC.i361
  %4453 = add i64 %4452, 4
  store i64 %4453, i64* %PC.i361
  %4454 = inttoptr i64 %4451 to i32*
  %4455 = load i32, i32* %4454
  %4456 = sub i32 %4455, 1
  %4457 = icmp ult i32 %4455, 1
  %4458 = zext i1 %4457 to i8
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4458, i8* %4459, align 1
  %4460 = and i32 %4456, 255
  %4461 = call i32 @llvm.ctpop.i32(i32 %4460)
  %4462 = trunc i32 %4461 to i8
  %4463 = and i8 %4462, 1
  %4464 = xor i8 %4463, 1
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4464, i8* %4465, align 1
  %4466 = xor i32 %4455, 1
  %4467 = xor i32 %4466, %4456
  %4468 = lshr i32 %4467, 4
  %4469 = trunc i32 %4468 to i8
  %4470 = and i8 %4469, 1
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4470, i8* %4471, align 1
  %4472 = icmp eq i32 %4456, 0
  %4473 = zext i1 %4472 to i8
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4473, i8* %4474, align 1
  %4475 = lshr i32 %4456, 31
  %4476 = trunc i32 %4475 to i8
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4476, i8* %4477, align 1
  %4478 = lshr i32 %4455, 31
  %4479 = xor i32 %4475, %4478
  %4480 = add i32 %4479, %4478
  %4481 = icmp eq i32 %4480, 2
  %4482 = zext i1 %4481 to i8
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4482, i8* %4483, align 1
  store %struct.Memory* %loadMem_4a04b0, %struct.Memory** %MEMORY
  %loadMem_4a04b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4486 to i64*
  %4487 = load i64, i64* %PC.i360
  %4488 = add i64 %4487, 175
  %4489 = load i64, i64* %PC.i360
  %4490 = add i64 %4489, 6
  %4491 = load i64, i64* %PC.i360
  %4492 = add i64 %4491, 6
  store i64 %4492, i64* %PC.i360
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4494 = load i8, i8* %4493, align 1
  %4495 = icmp eq i8 %4494, 0
  %4496 = zext i1 %4495 to i8
  store i8 %4496, i8* %BRANCH_TAKEN, align 1
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4498 = select i1 %4495, i64 %4488, i64 %4490
  store i64 %4498, i64* %4497, align 8
  store %struct.Memory* %loadMem_4a04b4, %struct.Memory** %MEMORY
  %loadBr_4a04b4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a04b4 = icmp eq i8 %loadBr_4a04b4, 1
  br i1 %cmpBr_4a04b4, label %block_.L_4a0563, label %block_4a04ba

block_4a04ba:                                     ; preds = %block_4a04b0
  %loadMem_4a04ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 33
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4501 to i64*
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4503 = getelementptr inbounds %struct.GPR, %struct.GPR* %4502, i32 0, i32 1
  %4504 = getelementptr inbounds %struct.Reg, %struct.Reg* %4503, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %4504 to i64*
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4506 = getelementptr inbounds %struct.GPR, %struct.GPR* %4505, i32 0, i32 15
  %4507 = getelementptr inbounds %struct.Reg, %struct.Reg* %4506, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %4507 to i64*
  %4508 = load i64, i64* %RBP.i359
  %4509 = sub i64 %4508, 96
  %4510 = load i64, i64* %PC.i357
  %4511 = add i64 %4510, 3
  store i64 %4511, i64* %PC.i357
  %4512 = inttoptr i64 %4509 to i32*
  %4513 = load i32, i32* %4512
  %4514 = zext i32 %4513 to i64
  store i64 %4514, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_4a04ba, %struct.Memory** %MEMORY
  %loadMem_4a04bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 33
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4517 to i64*
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4519 = getelementptr inbounds %struct.GPR, %struct.GPR* %4518, i32 0, i32 1
  %4520 = getelementptr inbounds %struct.Reg, %struct.Reg* %4519, i32 0, i32 0
  %EAX.i355 = bitcast %union.anon* %4520 to i32*
  %4521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4522 = getelementptr inbounds %struct.GPR, %struct.GPR* %4521, i32 0, i32 15
  %4523 = getelementptr inbounds %struct.Reg, %struct.Reg* %4522, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %4523 to i64*
  %4524 = load i32, i32* %EAX.i355
  %4525 = zext i32 %4524 to i64
  %4526 = load i64, i64* %RBP.i356
  %4527 = sub i64 %4526, 108
  %4528 = load i64, i64* %PC.i354
  %4529 = add i64 %4528, 3
  store i64 %4529, i64* %PC.i354
  %4530 = inttoptr i64 %4527 to i32*
  %4531 = load i32, i32* %4530
  %4532 = sub i32 %4524, %4531
  %4533 = icmp ult i32 %4524, %4531
  %4534 = zext i1 %4533 to i8
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4534, i8* %4535, align 1
  %4536 = and i32 %4532, 255
  %4537 = call i32 @llvm.ctpop.i32(i32 %4536)
  %4538 = trunc i32 %4537 to i8
  %4539 = and i8 %4538, 1
  %4540 = xor i8 %4539, 1
  %4541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4540, i8* %4541, align 1
  %4542 = xor i32 %4531, %4524
  %4543 = xor i32 %4542, %4532
  %4544 = lshr i32 %4543, 4
  %4545 = trunc i32 %4544 to i8
  %4546 = and i8 %4545, 1
  %4547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4546, i8* %4547, align 1
  %4548 = icmp eq i32 %4532, 0
  %4549 = zext i1 %4548 to i8
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4549, i8* %4550, align 1
  %4551 = lshr i32 %4532, 31
  %4552 = trunc i32 %4551 to i8
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4552, i8* %4553, align 1
  %4554 = lshr i32 %4524, 31
  %4555 = lshr i32 %4531, 31
  %4556 = xor i32 %4555, %4554
  %4557 = xor i32 %4551, %4554
  %4558 = add i32 %4557, %4556
  %4559 = icmp eq i32 %4558, 2
  %4560 = zext i1 %4559 to i8
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4560, i8* %4561, align 1
  store %struct.Memory* %loadMem_4a04bd, %struct.Memory** %MEMORY
  %loadMem_4a04c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4563 = getelementptr inbounds %struct.GPR, %struct.GPR* %4562, i32 0, i32 33
  %4564 = getelementptr inbounds %struct.Reg, %struct.Reg* %4563, i32 0, i32 0
  %PC.i353 = bitcast %union.anon* %4564 to i64*
  %4565 = load i64, i64* %PC.i353
  %4566 = add i64 %4565, 20
  %4567 = load i64, i64* %PC.i353
  %4568 = add i64 %4567, 6
  %4569 = load i64, i64* %PC.i353
  %4570 = add i64 %4569, 6
  store i64 %4570, i64* %PC.i353
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4572 = load i8, i8* %4571, align 1
  %4573 = icmp ne i8 %4572, 0
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4575 = load i8, i8* %4574, align 1
  %4576 = icmp ne i8 %4575, 0
  %4577 = xor i1 %4573, %4576
  %4578 = xor i1 %4577, true
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %BRANCH_TAKEN, align 1
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4581 = select i1 %4577, i64 %4568, i64 %4566
  store i64 %4581, i64* %4580, align 8
  store %struct.Memory* %loadMem_4a04c0, %struct.Memory** %MEMORY
  %loadBr_4a04c0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a04c0 = icmp eq i8 %loadBr_4a04c0, 1
  br i1 %cmpBr_4a04c0, label %block_.L_4a04d4, label %block_4a04c6

block_4a04c6:                                     ; preds = %block_4a04ba
  %loadMem_4a04c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4583 = getelementptr inbounds %struct.GPR, %struct.GPR* %4582, i32 0, i32 33
  %4584 = getelementptr inbounds %struct.Reg, %struct.Reg* %4583, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %4584 to i64*
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 1
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 15
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RBP.i352 = bitcast %union.anon* %4590 to i64*
  %4591 = load i64, i64* %RBP.i352
  %4592 = sub i64 %4591, 96
  %4593 = load i64, i64* %PC.i350
  %4594 = add i64 %4593, 3
  store i64 %4594, i64* %PC.i350
  %4595 = inttoptr i64 %4592 to i32*
  %4596 = load i32, i32* %4595
  %4597 = zext i32 %4596 to i64
  store i64 %4597, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_4a04c6, %struct.Memory** %MEMORY
  %loadMem_4a04c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4599 = getelementptr inbounds %struct.GPR, %struct.GPR* %4598, i32 0, i32 33
  %4600 = getelementptr inbounds %struct.Reg, %struct.Reg* %4599, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4600 to i64*
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4602 = getelementptr inbounds %struct.GPR, %struct.GPR* %4601, i32 0, i32 1
  %4603 = getelementptr inbounds %struct.Reg, %struct.Reg* %4602, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %4603 to i64*
  %4604 = load i64, i64* %RAX.i349
  %4605 = load i64, i64* %PC.i348
  %4606 = add i64 %4605, 3
  store i64 %4606, i64* %PC.i348
  %4607 = trunc i64 %4604 to i32
  %4608 = add i32 1, %4607
  %4609 = zext i32 %4608 to i64
  store i64 %4609, i64* %RAX.i349, align 8
  %4610 = icmp ult i32 %4608, %4607
  %4611 = icmp ult i32 %4608, 1
  %4612 = or i1 %4610, %4611
  %4613 = zext i1 %4612 to i8
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4613, i8* %4614, align 1
  %4615 = and i32 %4608, 255
  %4616 = call i32 @llvm.ctpop.i32(i32 %4615)
  %4617 = trunc i32 %4616 to i8
  %4618 = and i8 %4617, 1
  %4619 = xor i8 %4618, 1
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4619, i8* %4620, align 1
  %4621 = xor i64 1, %4604
  %4622 = trunc i64 %4621 to i32
  %4623 = xor i32 %4622, %4608
  %4624 = lshr i32 %4623, 4
  %4625 = trunc i32 %4624 to i8
  %4626 = and i8 %4625, 1
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4626, i8* %4627, align 1
  %4628 = icmp eq i32 %4608, 0
  %4629 = zext i1 %4628 to i8
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4629, i8* %4630, align 1
  %4631 = lshr i32 %4608, 31
  %4632 = trunc i32 %4631 to i8
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4632, i8* %4633, align 1
  %4634 = lshr i32 %4607, 31
  %4635 = xor i32 %4631, %4634
  %4636 = add i32 %4635, %4631
  %4637 = icmp eq i32 %4636, 2
  %4638 = zext i1 %4637 to i8
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4638, i8* %4639, align 1
  store %struct.Memory* %loadMem_4a04c9, %struct.Memory** %MEMORY
  %loadMem_4a04cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 33
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 1
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %EAX.i346 = bitcast %union.anon* %4645 to i32*
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 15
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4648 to i64*
  %4649 = load i64, i64* %RBP.i347
  %4650 = sub i64 %4649, 96
  %4651 = load i32, i32* %EAX.i346
  %4652 = zext i32 %4651 to i64
  %4653 = load i64, i64* %PC.i345
  %4654 = add i64 %4653, 3
  store i64 %4654, i64* %PC.i345
  %4655 = inttoptr i64 %4650 to i32*
  store i32 %4651, i32* %4655
  store %struct.Memory* %loadMem_4a04cc, %struct.Memory** %MEMORY
  %loadMem_4a04cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4657 = getelementptr inbounds %struct.GPR, %struct.GPR* %4656, i32 0, i32 33
  %4658 = getelementptr inbounds %struct.Reg, %struct.Reg* %4657, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %4658 to i64*
  %4659 = load i64, i64* %PC.i344
  %4660 = add i64 %4659, 143
  %4661 = load i64, i64* %PC.i344
  %4662 = add i64 %4661, 5
  store i64 %4662, i64* %PC.i344
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4660, i64* %4663, align 8
  store %struct.Memory* %loadMem_4a04cf, %struct.Memory** %MEMORY
  br label %block_.L_4a055e

block_.L_4a04d4:                                  ; preds = %block_4a04ba
  %loadMem_4a04d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 33
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 1
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RAX.i343 = bitcast %union.anon* %4669 to i64*
  %4670 = load i64, i64* %PC.i342
  %4671 = add i64 %4670, 5
  store i64 %4671, i64* %PC.i342
  store i64 16, i64* %RAX.i343, align 8
  store %struct.Memory* %loadMem_4a04d4, %struct.Memory** %MEMORY
  %loadMem_4a04d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4673 = getelementptr inbounds %struct.GPR, %struct.GPR* %4672, i32 0, i32 33
  %4674 = getelementptr inbounds %struct.Reg, %struct.Reg* %4673, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4674 to i64*
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 5
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 15
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %4680 to i64*
  %4681 = load i64, i64* %RBP.i341
  %4682 = sub i64 %4681, 96
  %4683 = load i64, i64* %PC.i339
  %4684 = add i64 %4683, 3
  store i64 %4684, i64* %PC.i339
  %4685 = inttoptr i64 %4682 to i32*
  %4686 = load i32, i32* %4685
  %4687 = zext i32 %4686 to i64
  store i64 %4687, i64* %RCX.i340, align 8
  store %struct.Memory* %loadMem_4a04d9, %struct.Memory** %MEMORY
  %loadMem_4a04dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4689 = getelementptr inbounds %struct.GPR, %struct.GPR* %4688, i32 0, i32 33
  %4690 = getelementptr inbounds %struct.Reg, %struct.Reg* %4689, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4690 to i64*
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 7
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %RDX.i338 = bitcast %union.anon* %4693 to i64*
  %4694 = load i64, i64* %PC.i337
  %4695 = add i64 %4694, 8
  store i64 %4695, i64* %PC.i337
  %4696 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4696, i64* %RDX.i338, align 8
  store %struct.Memory* %loadMem_4a04dc, %struct.Memory** %MEMORY
  %loadMem_4a04e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4698 = getelementptr inbounds %struct.GPR, %struct.GPR* %4697, i32 0, i32 33
  %4699 = getelementptr inbounds %struct.Reg, %struct.Reg* %4698, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4699 to i64*
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 7
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %RDX.i335 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 9
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RSI.i336 = bitcast %union.anon* %4705 to i64*
  %4706 = load i64, i64* %RDX.i335
  %4707 = add i64 %4706, 60
  %4708 = load i64, i64* %PC.i334
  %4709 = add i64 %4708, 3
  store i64 %4709, i64* %PC.i334
  %4710 = inttoptr i64 %4707 to i32*
  %4711 = load i32, i32* %4710
  %4712 = zext i32 %4711 to i64
  store i64 %4712, i64* %RSI.i336, align 8
  store %struct.Memory* %loadMem_4a04e4, %struct.Memory** %MEMORY
  %loadMem_4a04e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4714 = getelementptr inbounds %struct.GPR, %struct.GPR* %4713, i32 0, i32 33
  %4715 = getelementptr inbounds %struct.Reg, %struct.Reg* %4714, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4715 to i64*
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 1
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %EAX.i332 = bitcast %union.anon* %4718 to i32*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 15
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %4721 to i64*
  %4722 = load i64, i64* %RBP.i333
  %4723 = sub i64 %4722, 164
  %4724 = load i32, i32* %EAX.i332
  %4725 = zext i32 %4724 to i64
  %4726 = load i64, i64* %PC.i331
  %4727 = add i64 %4726, 6
  store i64 %4727, i64* %PC.i331
  %4728 = inttoptr i64 %4723 to i32*
  store i32 %4724, i32* %4728
  store %struct.Memory* %loadMem_4a04e7, %struct.Memory** %MEMORY
  %loadMem_4a04ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 33
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 9
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %ESI.i329 = bitcast %union.anon* %4734 to i32*
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4736 = getelementptr inbounds %struct.GPR, %struct.GPR* %4735, i32 0, i32 1
  %4737 = getelementptr inbounds %struct.Reg, %struct.Reg* %4736, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %4737 to i64*
  %4738 = load i32, i32* %ESI.i329
  %4739 = zext i32 %4738 to i64
  %4740 = load i64, i64* %PC.i328
  %4741 = add i64 %4740, 2
  store i64 %4741, i64* %PC.i328
  %4742 = and i64 %4739, 4294967295
  store i64 %4742, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_4a04ed, %struct.Memory** %MEMORY
  %loadMem_4a04ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 33
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4745 to i64*
  %4746 = load i64, i64* %PC.i327
  %4747 = add i64 %4746, 1
  store i64 %4747, i64* %PC.i327
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4750 = bitcast %union.anon* %4749 to i32*
  %4751 = load i32, i32* %4750, align 8
  %4752 = sext i32 %4751 to i64
  %4753 = lshr i64 %4752, 32
  store i64 %4753, i64* %4748, align 8
  store %struct.Memory* %loadMem_4a04ef, %struct.Memory** %MEMORY
  %loadMem_4a04f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 33
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4756 to i64*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 9
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RSI.i325 = bitcast %union.anon* %4759 to i64*
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 15
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %4762 to i64*
  %4763 = load i64, i64* %RBP.i326
  %4764 = sub i64 %4763, 164
  %4765 = load i64, i64* %PC.i324
  %4766 = add i64 %4765, 6
  store i64 %4766, i64* %PC.i324
  %4767 = inttoptr i64 %4764 to i32*
  %4768 = load i32, i32* %4767
  %4769 = zext i32 %4768 to i64
  store i64 %4769, i64* %RSI.i325, align 8
  store %struct.Memory* %loadMem_4a04f0, %struct.Memory** %MEMORY
  %loadMem_4a04f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4771 = getelementptr inbounds %struct.GPR, %struct.GPR* %4770, i32 0, i32 33
  %4772 = getelementptr inbounds %struct.Reg, %struct.Reg* %4771, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %4772 to i64*
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 9
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %ESI.i320 = bitcast %union.anon* %4775 to i32*
  %4776 = load i32, i32* %ESI.i320
  %4777 = zext i32 %4776 to i64
  %4778 = load i64, i64* %PC.i319
  %4779 = add i64 %4778, 2
  store i64 %4779, i64* %PC.i319
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %4781 = bitcast %union.anon* %4780 to i32*
  %4782 = load i32, i32* %4781, align 8
  %4783 = zext i32 %4782 to i64
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %4785 = bitcast %union.anon* %4784 to i32*
  %4786 = load i32, i32* %4785, align 8
  %4787 = zext i32 %4786 to i64
  %4788 = shl i64 %4777, 32
  %4789 = ashr exact i64 %4788, 32
  %4790 = shl i64 %4787, 32
  %4791 = or i64 %4790, %4783
  %4792 = sdiv i64 %4791, %4789
  %4793 = shl i64 %4792, 32
  %4794 = ashr exact i64 %4793, 32
  %4795 = icmp eq i64 %4792, %4794
  br i1 %4795, label %4800, label %4796

; <label>:4796:                                   ; preds = %block_.L_4a04d4
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4798 = load i64, i64* %4797, align 8
  %4799 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %4798, %struct.Memory* %loadMem_4a04f6)
  br label %routine_idivl__esi.exit321

; <label>:4800:                                   ; preds = %block_.L_4a04d4
  %4801 = srem i64 %4791, %4789
  %4802 = getelementptr inbounds %union.anon, %union.anon* %4780, i64 0, i32 0
  %4803 = and i64 %4792, 4294967295
  store i64 %4803, i64* %4802, align 8
  %4804 = getelementptr inbounds %union.anon, %union.anon* %4784, i64 0, i32 0
  %4805 = and i64 %4801, 4294967295
  store i64 %4805, i64* %4804, align 8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4806, align 1
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %4807, align 1
  %4808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4808, align 1
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4809, align 1
  %4810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %4810, align 1
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4811, align 1
  br label %routine_idivl__esi.exit321

routine_idivl__esi.exit321:                       ; preds = %4796, %4800
  %4812 = phi %struct.Memory* [ %4799, %4796 ], [ %loadMem_4a04f6, %4800 ]
  store %struct.Memory* %4812, %struct.Memory** %MEMORY
  %loadMem_4a04f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4814 = getelementptr inbounds %struct.GPR, %struct.GPR* %4813, i32 0, i32 33
  %4815 = getelementptr inbounds %struct.Reg, %struct.Reg* %4814, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4815 to i64*
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4817 = getelementptr inbounds %struct.GPR, %struct.GPR* %4816, i32 0, i32 1
  %4818 = getelementptr inbounds %struct.Reg, %struct.Reg* %4817, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %4818 to i64*
  %4819 = load i64, i64* %RAX.i318
  %4820 = load i64, i64* %PC.i317
  %4821 = add i64 %4820, 3
  store i64 %4821, i64* %PC.i317
  %4822 = trunc i64 %4819 to i32
  %4823 = sub i32 %4822, 1
  %4824 = zext i32 %4823 to i64
  store i64 %4824, i64* %RAX.i318, align 8
  %4825 = icmp ult i32 %4822, 1
  %4826 = zext i1 %4825 to i8
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4826, i8* %4827, align 1
  %4828 = and i32 %4823, 255
  %4829 = call i32 @llvm.ctpop.i32(i32 %4828)
  %4830 = trunc i32 %4829 to i8
  %4831 = and i8 %4830, 1
  %4832 = xor i8 %4831, 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4832, i8* %4833, align 1
  %4834 = xor i64 1, %4819
  %4835 = trunc i64 %4834 to i32
  %4836 = xor i32 %4835, %4823
  %4837 = lshr i32 %4836, 4
  %4838 = trunc i32 %4837 to i8
  %4839 = and i8 %4838, 1
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4839, i8* %4840, align 1
  %4841 = icmp eq i32 %4823, 0
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4842, i8* %4843, align 1
  %4844 = lshr i32 %4823, 31
  %4845 = trunc i32 %4844 to i8
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4845, i8* %4846, align 1
  %4847 = lshr i32 %4822, 31
  %4848 = xor i32 %4844, %4847
  %4849 = add i32 %4848, %4847
  %4850 = icmp eq i32 %4849, 2
  %4851 = zext i1 %4850 to i8
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4851, i8* %4852, align 1
  store %struct.Memory* %loadMem_4a04f8, %struct.Memory** %MEMORY
  %loadMem_4a04fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4854 = getelementptr inbounds %struct.GPR, %struct.GPR* %4853, i32 0, i32 33
  %4855 = getelementptr inbounds %struct.Reg, %struct.Reg* %4854, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %4855 to i64*
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4857 = getelementptr inbounds %struct.GPR, %struct.GPR* %4856, i32 0, i32 1
  %4858 = getelementptr inbounds %struct.Reg, %struct.Reg* %4857, i32 0, i32 0
  %EAX.i315 = bitcast %union.anon* %4858 to i32*
  %4859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4860 = getelementptr inbounds %struct.GPR, %struct.GPR* %4859, i32 0, i32 5
  %4861 = getelementptr inbounds %struct.Reg, %struct.Reg* %4860, i32 0, i32 0
  %ECX.i316 = bitcast %union.anon* %4861 to i32*
  %4862 = load i32, i32* %ECX.i316
  %4863 = zext i32 %4862 to i64
  %4864 = load i32, i32* %EAX.i315
  %4865 = zext i32 %4864 to i64
  %4866 = load i64, i64* %PC.i314
  %4867 = add i64 %4866, 2
  store i64 %4867, i64* %PC.i314
  %4868 = sub i32 %4862, %4864
  %4869 = icmp ult i32 %4862, %4864
  %4870 = zext i1 %4869 to i8
  %4871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4870, i8* %4871, align 1
  %4872 = and i32 %4868, 255
  %4873 = call i32 @llvm.ctpop.i32(i32 %4872)
  %4874 = trunc i32 %4873 to i8
  %4875 = and i8 %4874, 1
  %4876 = xor i8 %4875, 1
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4876, i8* %4877, align 1
  %4878 = xor i64 %4865, %4863
  %4879 = trunc i64 %4878 to i32
  %4880 = xor i32 %4879, %4868
  %4881 = lshr i32 %4880, 4
  %4882 = trunc i32 %4881 to i8
  %4883 = and i8 %4882, 1
  %4884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4883, i8* %4884, align 1
  %4885 = icmp eq i32 %4868, 0
  %4886 = zext i1 %4885 to i8
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4886, i8* %4887, align 1
  %4888 = lshr i32 %4868, 31
  %4889 = trunc i32 %4888 to i8
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4889, i8* %4890, align 1
  %4891 = lshr i32 %4862, 31
  %4892 = lshr i32 %4864, 31
  %4893 = xor i32 %4892, %4891
  %4894 = xor i32 %4888, %4891
  %4895 = add i32 %4894, %4893
  %4896 = icmp eq i32 %4895, 2
  %4897 = zext i1 %4896 to i8
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4897, i8* %4898, align 1
  store %struct.Memory* %loadMem_4a04fb, %struct.Memory** %MEMORY
  %loadMem_4a04fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 33
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4901 to i64*
  %4902 = load i64, i64* %PC.i313
  %4903 = add i64 %4902, 43
  %4904 = load i64, i64* %PC.i313
  %4905 = add i64 %4904, 6
  %4906 = load i64, i64* %PC.i313
  %4907 = add i64 %4906, 6
  store i64 %4907, i64* %PC.i313
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4909 = load i8, i8* %4908, align 1
  %4910 = icmp eq i8 %4909, 0
  %4911 = zext i1 %4910 to i8
  store i8 %4911, i8* %BRANCH_TAKEN, align 1
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4913 = select i1 %4910, i64 %4903, i64 %4905
  store i64 %4913, i64* %4912, align 8
  store %struct.Memory* %loadMem_4a04fd, %struct.Memory** %MEMORY
  %loadBr_4a04fd = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a04fd = icmp eq i8 %loadBr_4a04fd, 1
  br i1 %cmpBr_4a04fd, label %block_.L_4a0528, label %block_4a0503

block_4a0503:                                     ; preds = %routine_idivl__esi.exit321
  %loadMem_4a0503 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 1
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 15
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %4922 to i64*
  %4923 = load i64, i64* %RBP.i312
  %4924 = sub i64 %4923, 104
  %4925 = load i64, i64* %PC.i310
  %4926 = add i64 %4925, 3
  store i64 %4926, i64* %PC.i310
  %4927 = inttoptr i64 %4924 to i32*
  %4928 = load i32, i32* %4927
  %4929 = zext i32 %4928 to i64
  store i64 %4929, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_4a0503, %struct.Memory** %MEMORY
  %loadMem_4a0506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 33
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 1
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %4935 to i64*
  %4936 = load i64, i64* %RAX.i309
  %4937 = load i64, i64* %PC.i308
  %4938 = add i64 %4937, 3
  store i64 %4938, i64* %PC.i308
  %4939 = trunc i64 %4936 to i32
  %4940 = add i32 1, %4939
  %4941 = zext i32 %4940 to i64
  store i64 %4941, i64* %RAX.i309, align 8
  %4942 = icmp ult i32 %4940, %4939
  %4943 = icmp ult i32 %4940, 1
  %4944 = or i1 %4942, %4943
  %4945 = zext i1 %4944 to i8
  %4946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4945, i8* %4946, align 1
  %4947 = and i32 %4940, 255
  %4948 = call i32 @llvm.ctpop.i32(i32 %4947)
  %4949 = trunc i32 %4948 to i8
  %4950 = and i8 %4949, 1
  %4951 = xor i8 %4950, 1
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4951, i8* %4952, align 1
  %4953 = xor i64 1, %4936
  %4954 = trunc i64 %4953 to i32
  %4955 = xor i32 %4954, %4940
  %4956 = lshr i32 %4955, 4
  %4957 = trunc i32 %4956 to i8
  %4958 = and i8 %4957, 1
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4958, i8* %4959, align 1
  %4960 = icmp eq i32 %4940, 0
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4961, i8* %4962, align 1
  %4963 = lshr i32 %4940, 31
  %4964 = trunc i32 %4963 to i8
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4964, i8* %4965, align 1
  %4966 = lshr i32 %4939, 31
  %4967 = xor i32 %4963, %4966
  %4968 = add i32 %4967, %4963
  %4969 = icmp eq i32 %4968, 2
  %4970 = zext i1 %4969 to i8
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4970, i8* %4971, align 1
  store %struct.Memory* %loadMem_4a0506, %struct.Memory** %MEMORY
  %loadMem_4a0509 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 33
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4974 to i64*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 1
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %4977 to i32*
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 15
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %4980 to i64*
  %4981 = load i64, i64* %RBP.i307
  %4982 = sub i64 %4981, 92
  %4983 = load i32, i32* %EAX.i306
  %4984 = zext i32 %4983 to i64
  %4985 = load i64, i64* %PC.i305
  %4986 = add i64 %4985, 3
  store i64 %4986, i64* %PC.i305
  %4987 = inttoptr i64 %4982 to i32*
  store i32 %4983, i32* %4987
  store %struct.Memory* %loadMem_4a0509, %struct.Memory** %MEMORY
  %loadMem_4a050c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4989 = getelementptr inbounds %struct.GPR, %struct.GPR* %4988, i32 0, i32 33
  %4990 = getelementptr inbounds %struct.Reg, %struct.Reg* %4989, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4990 to i64*
  %4991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4992 = getelementptr inbounds %struct.GPR, %struct.GPR* %4991, i32 0, i32 1
  %4993 = getelementptr inbounds %struct.Reg, %struct.Reg* %4992, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %4993 to i64*
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4995 = getelementptr inbounds %struct.GPR, %struct.GPR* %4994, i32 0, i32 15
  %4996 = getelementptr inbounds %struct.Reg, %struct.Reg* %4995, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4996 to i64*
  %4997 = load i64, i64* %RBP.i304
  %4998 = sub i64 %4997, 104
  %4999 = load i64, i64* %PC.i302
  %5000 = add i64 %4999, 3
  store i64 %5000, i64* %PC.i302
  %5001 = inttoptr i64 %4998 to i32*
  %5002 = load i32, i32* %5001
  %5003 = zext i32 %5002 to i64
  store i64 %5003, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_4a050c, %struct.Memory** %MEMORY
  %loadMem_4a050f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 1
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RAX.i301
  %5011 = load i64, i64* %PC.i300
  %5012 = add i64 %5011, 3
  store i64 %5012, i64* %PC.i300
  %5013 = trunc i64 %5010 to i32
  %5014 = add i32 1, %5013
  %5015 = zext i32 %5014 to i64
  store i64 %5015, i64* %RAX.i301, align 8
  %5016 = icmp ult i32 %5014, %5013
  %5017 = icmp ult i32 %5014, 1
  %5018 = or i1 %5016, %5017
  %5019 = zext i1 %5018 to i8
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5019, i8* %5020, align 1
  %5021 = and i32 %5014, 255
  %5022 = call i32 @llvm.ctpop.i32(i32 %5021)
  %5023 = trunc i32 %5022 to i8
  %5024 = and i8 %5023, 1
  %5025 = xor i8 %5024, 1
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5025, i8* %5026, align 1
  %5027 = xor i64 1, %5010
  %5028 = trunc i64 %5027 to i32
  %5029 = xor i32 %5028, %5014
  %5030 = lshr i32 %5029, 4
  %5031 = trunc i32 %5030 to i8
  %5032 = and i8 %5031, 1
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5032, i8* %5033, align 1
  %5034 = icmp eq i32 %5014, 0
  %5035 = zext i1 %5034 to i8
  %5036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5035, i8* %5036, align 1
  %5037 = lshr i32 %5014, 31
  %5038 = trunc i32 %5037 to i8
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5038, i8* %5039, align 1
  %5040 = lshr i32 %5013, 31
  %5041 = xor i32 %5037, %5040
  %5042 = add i32 %5041, %5037
  %5043 = icmp eq i32 %5042, 2
  %5044 = zext i1 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5044, i8* %5045, align 1
  store %struct.Memory* %loadMem_4a050f, %struct.Memory** %MEMORY
  %loadMem_4a0512 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 33
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5048 to i64*
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5050 = getelementptr inbounds %struct.GPR, %struct.GPR* %5049, i32 0, i32 1
  %5051 = getelementptr inbounds %struct.Reg, %struct.Reg* %5050, i32 0, i32 0
  %EAX.i298 = bitcast %union.anon* %5051 to i32*
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5053 = getelementptr inbounds %struct.GPR, %struct.GPR* %5052, i32 0, i32 15
  %5054 = getelementptr inbounds %struct.Reg, %struct.Reg* %5053, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %5054 to i64*
  %5055 = load i64, i64* %RBP.i299
  %5056 = sub i64 %5055, 104
  %5057 = load i32, i32* %EAX.i298
  %5058 = zext i32 %5057 to i64
  %5059 = load i64, i64* %PC.i297
  %5060 = add i64 %5059, 3
  store i64 %5060, i64* %PC.i297
  %5061 = inttoptr i64 %5056 to i32*
  store i32 %5057, i32* %5061
  store %struct.Memory* %loadMem_4a0512, %struct.Memory** %MEMORY
  %loadMem_4a0515 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5063 = getelementptr inbounds %struct.GPR, %struct.GPR* %5062, i32 0, i32 33
  %5064 = getelementptr inbounds %struct.Reg, %struct.Reg* %5063, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5064 to i64*
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5066 = getelementptr inbounds %struct.GPR, %struct.GPR* %5065, i32 0, i32 15
  %5067 = getelementptr inbounds %struct.Reg, %struct.Reg* %5066, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5067 to i64*
  %5068 = load i64, i64* %RBP.i296
  %5069 = sub i64 %5068, 116
  %5070 = load i64, i64* %PC.i295
  %5071 = add i64 %5070, 7
  store i64 %5071, i64* %PC.i295
  %5072 = inttoptr i64 %5069 to i32*
  store i32 0, i32* %5072
  store %struct.Memory* %loadMem_4a0515, %struct.Memory** %MEMORY
  %loadMem_4a051c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5074 = getelementptr inbounds %struct.GPR, %struct.GPR* %5073, i32 0, i32 33
  %5075 = getelementptr inbounds %struct.Reg, %struct.Reg* %5074, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5075 to i64*
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 15
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %5078 to i64*
  %5079 = load i64, i64* %RBP.i294
  %5080 = sub i64 %5079, 120
  %5081 = load i64, i64* %PC.i293
  %5082 = add i64 %5081, 7
  store i64 %5082, i64* %PC.i293
  %5083 = inttoptr i64 %5080 to i32*
  store i32 -1, i32* %5083
  store %struct.Memory* %loadMem_4a051c, %struct.Memory** %MEMORY
  %loadMem_4a0523 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 33
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5086 to i64*
  %5087 = load i64, i64* %PC.i292
  %5088 = add i64 %5087, 54
  %5089 = load i64, i64* %PC.i292
  %5090 = add i64 %5089, 5
  store i64 %5090, i64* %PC.i292
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5088, i64* %5091, align 8
  store %struct.Memory* %loadMem_4a0523, %struct.Memory** %MEMORY
  br label %block_.L_4a0559

block_.L_4a0528:                                  ; preds = %routine_idivl__esi.exit321
  %loadMem_4a0528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5093 = getelementptr inbounds %struct.GPR, %struct.GPR* %5092, i32 0, i32 33
  %5094 = getelementptr inbounds %struct.Reg, %struct.Reg* %5093, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %5094 to i64*
  %5095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5096 = getelementptr inbounds %struct.GPR, %struct.GPR* %5095, i32 0, i32 1
  %5097 = getelementptr inbounds %struct.Reg, %struct.Reg* %5096, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %5097 to i64*
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5099 = getelementptr inbounds %struct.GPR, %struct.GPR* %5098, i32 0, i32 15
  %5100 = getelementptr inbounds %struct.Reg, %struct.Reg* %5099, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %5100 to i64*
  %5101 = load i64, i64* %RBP.i291
  %5102 = sub i64 %5101, 96
  %5103 = load i64, i64* %PC.i289
  %5104 = add i64 %5103, 3
  store i64 %5104, i64* %PC.i289
  %5105 = inttoptr i64 %5102 to i32*
  %5106 = load i32, i32* %5105
  %5107 = zext i32 %5106 to i64
  store i64 %5107, i64* %RAX.i290, align 8
  store %struct.Memory* %loadMem_4a0528, %struct.Memory** %MEMORY
  %loadMem_4a052b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5109 = getelementptr inbounds %struct.GPR, %struct.GPR* %5108, i32 0, i32 33
  %5110 = getelementptr inbounds %struct.Reg, %struct.Reg* %5109, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5110 to i64*
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 1
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %EAX.i287 = bitcast %union.anon* %5113 to i32*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 15
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %5116 to i64*
  %5117 = load i32, i32* %EAX.i287
  %5118 = zext i32 %5117 to i64
  %5119 = load i64, i64* %RBP.i288
  %5120 = sub i64 %5119, 108
  %5121 = load i64, i64* %PC.i286
  %5122 = add i64 %5121, 3
  store i64 %5122, i64* %PC.i286
  %5123 = inttoptr i64 %5120 to i32*
  %5124 = load i32, i32* %5123
  %5125 = sub i32 %5117, %5124
  %5126 = icmp ult i32 %5117, %5124
  %5127 = zext i1 %5126 to i8
  %5128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5127, i8* %5128, align 1
  %5129 = and i32 %5125, 255
  %5130 = call i32 @llvm.ctpop.i32(i32 %5129)
  %5131 = trunc i32 %5130 to i8
  %5132 = and i8 %5131, 1
  %5133 = xor i8 %5132, 1
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5133, i8* %5134, align 1
  %5135 = xor i32 %5124, %5117
  %5136 = xor i32 %5135, %5125
  %5137 = lshr i32 %5136, 4
  %5138 = trunc i32 %5137 to i8
  %5139 = and i8 %5138, 1
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5139, i8* %5140, align 1
  %5141 = icmp eq i32 %5125, 0
  %5142 = zext i1 %5141 to i8
  %5143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5142, i8* %5143, align 1
  %5144 = lshr i32 %5125, 31
  %5145 = trunc i32 %5144 to i8
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5145, i8* %5146, align 1
  %5147 = lshr i32 %5117, 31
  %5148 = lshr i32 %5124, 31
  %5149 = xor i32 %5148, %5147
  %5150 = xor i32 %5144, %5147
  %5151 = add i32 %5150, %5149
  %5152 = icmp eq i32 %5151, 2
  %5153 = zext i1 %5152 to i8
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5153, i8* %5154, align 1
  store %struct.Memory* %loadMem_4a052b, %struct.Memory** %MEMORY
  %loadMem_4a052e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 33
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %5157 to i64*
  %5158 = load i64, i64* %PC.i285
  %5159 = add i64 %5158, 38
  %5160 = load i64, i64* %PC.i285
  %5161 = add i64 %5160, 6
  %5162 = load i64, i64* %PC.i285
  %5163 = add i64 %5162, 6
  store i64 %5163, i64* %PC.i285
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5165 = load i8, i8* %5164, align 1
  %5166 = icmp eq i8 %5165, 0
  %5167 = zext i1 %5166 to i8
  store i8 %5167, i8* %BRANCH_TAKEN, align 1
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5169 = select i1 %5166, i64 %5159, i64 %5161
  store i64 %5169, i64* %5168, align 8
  store %struct.Memory* %loadMem_4a052e, %struct.Memory** %MEMORY
  %loadBr_4a052e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a052e = icmp eq i8 %loadBr_4a052e, 1
  br i1 %cmpBr_4a052e, label %block_.L_4a0554, label %block_4a0534

block_4a0534:                                     ; preds = %block_.L_4a0528
  %loadMem_4a0534 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 33
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5172 to i64*
  %5173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5174 = getelementptr inbounds %struct.GPR, %struct.GPR* %5173, i32 0, i32 1
  %5175 = getelementptr inbounds %struct.Reg, %struct.Reg* %5174, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %5175 to i64*
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 15
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %RBP.i284 = bitcast %union.anon* %5178 to i64*
  %5179 = load i64, i64* %RBP.i284
  %5180 = sub i64 %5179, 96
  %5181 = load i64, i64* %PC.i282
  %5182 = add i64 %5181, 3
  store i64 %5182, i64* %PC.i282
  %5183 = inttoptr i64 %5180 to i32*
  %5184 = load i32, i32* %5183
  %5185 = zext i32 %5184 to i64
  store i64 %5185, i64* %RAX.i283, align 8
  store %struct.Memory* %loadMem_4a0534, %struct.Memory** %MEMORY
  %loadMem_4a0537 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5187 = getelementptr inbounds %struct.GPR, %struct.GPR* %5186, i32 0, i32 33
  %5188 = getelementptr inbounds %struct.Reg, %struct.Reg* %5187, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5188 to i64*
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 1
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %5191 to i64*
  %5192 = load i64, i64* %RAX.i281
  %5193 = load i64, i64* %PC.i280
  %5194 = add i64 %5193, 3
  store i64 %5194, i64* %PC.i280
  %5195 = trunc i64 %5192 to i32
  %5196 = add i32 1, %5195
  %5197 = zext i32 %5196 to i64
  store i64 %5197, i64* %RAX.i281, align 8
  %5198 = icmp ult i32 %5196, %5195
  %5199 = icmp ult i32 %5196, 1
  %5200 = or i1 %5198, %5199
  %5201 = zext i1 %5200 to i8
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5201, i8* %5202, align 1
  %5203 = and i32 %5196, 255
  %5204 = call i32 @llvm.ctpop.i32(i32 %5203)
  %5205 = trunc i32 %5204 to i8
  %5206 = and i8 %5205, 1
  %5207 = xor i8 %5206, 1
  %5208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5207, i8* %5208, align 1
  %5209 = xor i64 1, %5192
  %5210 = trunc i64 %5209 to i32
  %5211 = xor i32 %5210, %5196
  %5212 = lshr i32 %5211, 4
  %5213 = trunc i32 %5212 to i8
  %5214 = and i8 %5213, 1
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5214, i8* %5215, align 1
  %5216 = icmp eq i32 %5196, 0
  %5217 = zext i1 %5216 to i8
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5217, i8* %5218, align 1
  %5219 = lshr i32 %5196, 31
  %5220 = trunc i32 %5219 to i8
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5220, i8* %5221, align 1
  %5222 = lshr i32 %5195, 31
  %5223 = xor i32 %5219, %5222
  %5224 = add i32 %5223, %5219
  %5225 = icmp eq i32 %5224, 2
  %5226 = zext i1 %5225 to i8
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5226, i8* %5227, align 1
  store %struct.Memory* %loadMem_4a0537, %struct.Memory** %MEMORY
  %loadMem_4a053a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5229 = getelementptr inbounds %struct.GPR, %struct.GPR* %5228, i32 0, i32 33
  %5230 = getelementptr inbounds %struct.Reg, %struct.Reg* %5229, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5230 to i64*
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 1
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %EAX.i278 = bitcast %union.anon* %5233 to i32*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 15
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %5236 to i64*
  %5237 = load i64, i64* %RBP.i279
  %5238 = sub i64 %5237, 96
  %5239 = load i32, i32* %EAX.i278
  %5240 = zext i32 %5239 to i64
  %5241 = load i64, i64* %PC.i277
  %5242 = add i64 %5241, 3
  store i64 %5242, i64* %PC.i277
  %5243 = inttoptr i64 %5238 to i32*
  store i32 %5239, i32* %5243
  store %struct.Memory* %loadMem_4a053a, %struct.Memory** %MEMORY
  %loadMem_4a053d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5245 = getelementptr inbounds %struct.GPR, %struct.GPR* %5244, i32 0, i32 33
  %5246 = getelementptr inbounds %struct.Reg, %struct.Reg* %5245, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5246 to i64*
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 1
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 15
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %5252 to i64*
  %5253 = load i64, i64* %RBP.i276
  %5254 = sub i64 %5253, 108
  %5255 = load i64, i64* %PC.i274
  %5256 = add i64 %5255, 3
  store i64 %5256, i64* %PC.i274
  %5257 = inttoptr i64 %5254 to i32*
  %5258 = load i32, i32* %5257
  %5259 = zext i32 %5258 to i64
  store i64 %5259, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_4a053d, %struct.Memory** %MEMORY
  %loadMem_4a0540 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 33
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5262 to i64*
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 1
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %5265 to i64*
  %5266 = load i64, i64* %RAX.i273
  %5267 = load i64, i64* %PC.i272
  %5268 = add i64 %5267, 3
  store i64 %5268, i64* %PC.i272
  %5269 = trunc i64 %5266 to i32
  %5270 = add i32 1, %5269
  %5271 = zext i32 %5270 to i64
  store i64 %5271, i64* %RAX.i273, align 8
  %5272 = icmp ult i32 %5270, %5269
  %5273 = icmp ult i32 %5270, 1
  %5274 = or i1 %5272, %5273
  %5275 = zext i1 %5274 to i8
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5275, i8* %5276, align 1
  %5277 = and i32 %5270, 255
  %5278 = call i32 @llvm.ctpop.i32(i32 %5277)
  %5279 = trunc i32 %5278 to i8
  %5280 = and i8 %5279, 1
  %5281 = xor i8 %5280, 1
  %5282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5281, i8* %5282, align 1
  %5283 = xor i64 1, %5266
  %5284 = trunc i64 %5283 to i32
  %5285 = xor i32 %5284, %5270
  %5286 = lshr i32 %5285, 4
  %5287 = trunc i32 %5286 to i8
  %5288 = and i8 %5287, 1
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5288, i8* %5289, align 1
  %5290 = icmp eq i32 %5270, 0
  %5291 = zext i1 %5290 to i8
  %5292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5291, i8* %5292, align 1
  %5293 = lshr i32 %5270, 31
  %5294 = trunc i32 %5293 to i8
  %5295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5294, i8* %5295, align 1
  %5296 = lshr i32 %5269, 31
  %5297 = xor i32 %5293, %5296
  %5298 = add i32 %5297, %5293
  %5299 = icmp eq i32 %5298, 2
  %5300 = zext i1 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5300, i8* %5301, align 1
  store %struct.Memory* %loadMem_4a0540, %struct.Memory** %MEMORY
  %loadMem_4a0543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 33
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 1
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %EAX.i270 = bitcast %union.anon* %5307 to i32*
  %5308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5309 = getelementptr inbounds %struct.GPR, %struct.GPR* %5308, i32 0, i32 15
  %5310 = getelementptr inbounds %struct.Reg, %struct.Reg* %5309, i32 0, i32 0
  %RBP.i271 = bitcast %union.anon* %5310 to i64*
  %5311 = load i64, i64* %RBP.i271
  %5312 = sub i64 %5311, 108
  %5313 = load i32, i32* %EAX.i270
  %5314 = zext i32 %5313 to i64
  %5315 = load i64, i64* %PC.i269
  %5316 = add i64 %5315, 3
  store i64 %5316, i64* %PC.i269
  %5317 = inttoptr i64 %5312 to i32*
  store i32 %5313, i32* %5317
  store %struct.Memory* %loadMem_4a0543, %struct.Memory** %MEMORY
  %loadMem_4a0546 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 15
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %5323 to i64*
  %5324 = load i64, i64* %RBP.i268
  %5325 = sub i64 %5324, 116
  %5326 = load i64, i64* %PC.i267
  %5327 = add i64 %5326, 7
  store i64 %5327, i64* %PC.i267
  %5328 = inttoptr i64 %5325 to i32*
  store i32 1, i32* %5328
  store %struct.Memory* %loadMem_4a0546, %struct.Memory** %MEMORY
  %loadMem_4a054d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5330 = getelementptr inbounds %struct.GPR, %struct.GPR* %5329, i32 0, i32 33
  %5331 = getelementptr inbounds %struct.Reg, %struct.Reg* %5330, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %5331 to i64*
  %5332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5333 = getelementptr inbounds %struct.GPR, %struct.GPR* %5332, i32 0, i32 15
  %5334 = getelementptr inbounds %struct.Reg, %struct.Reg* %5333, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5334 to i64*
  %5335 = load i64, i64* %RBP.i266
  %5336 = sub i64 %5335, 120
  %5337 = load i64, i64* %PC.i265
  %5338 = add i64 %5337, 7
  store i64 %5338, i64* %PC.i265
  %5339 = inttoptr i64 %5336 to i32*
  store i32 0, i32* %5339
  store %struct.Memory* %loadMem_4a054d, %struct.Memory** %MEMORY
  br label %block_.L_4a0554

block_.L_4a0554:                                  ; preds = %block_4a0534, %block_.L_4a0528
  %loadMem_4a0554 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5341 = getelementptr inbounds %struct.GPR, %struct.GPR* %5340, i32 0, i32 33
  %5342 = getelementptr inbounds %struct.Reg, %struct.Reg* %5341, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5342 to i64*
  %5343 = load i64, i64* %PC.i264
  %5344 = add i64 %5343, 5
  %5345 = load i64, i64* %PC.i264
  %5346 = add i64 %5345, 5
  store i64 %5346, i64* %PC.i264
  %5347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5344, i64* %5347, align 8
  store %struct.Memory* %loadMem_4a0554, %struct.Memory** %MEMORY
  br label %block_.L_4a0559

block_.L_4a0559:                                  ; preds = %block_.L_4a0554, %block_4a0503
  %loadMem_4a0559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 33
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5350 to i64*
  %5351 = load i64, i64* %PC.i263
  %5352 = add i64 %5351, 5
  %5353 = load i64, i64* %PC.i263
  %5354 = add i64 %5353, 5
  store i64 %5354, i64* %PC.i263
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5352, i64* %5355, align 8
  store %struct.Memory* %loadMem_4a0559, %struct.Memory** %MEMORY
  br label %block_.L_4a055e

block_.L_4a055e:                                  ; preds = %block_.L_4a0559, %block_4a04c6
  %loadMem_4a055e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5357 = getelementptr inbounds %struct.GPR, %struct.GPR* %5356, i32 0, i32 33
  %5358 = getelementptr inbounds %struct.Reg, %struct.Reg* %5357, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %5358 to i64*
  %5359 = load i64, i64* %PC.i262
  %5360 = add i64 %5359, 5
  %5361 = load i64, i64* %PC.i262
  %5362 = add i64 %5361, 5
  store i64 %5362, i64* %PC.i262
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5360, i64* %5363, align 8
  store %struct.Memory* %loadMem_4a055e, %struct.Memory** %MEMORY
  br label %block_.L_4a0563

block_.L_4a0563:                                  ; preds = %block_.L_4a055e, %block_4a04b0, %block_.L_4a04a6
  %loadMem_4a0563 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5366 to i64*
  %5367 = load i64, i64* %PC.i261
  %5368 = add i64 %5367, 5
  %5369 = load i64, i64* %PC.i261
  %5370 = add i64 %5369, 5
  store i64 %5370, i64* %PC.i261
  %5371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5368, i64* %5371, align 8
  store %struct.Memory* %loadMem_4a0563, %struct.Memory** %MEMORY
  br label %block_.L_4a0568

block_.L_4a0568:                                  ; preds = %block_.L_4a0563, %block_.L_4a04a1
  %loadMem_4a0568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5373 = getelementptr inbounds %struct.GPR, %struct.GPR* %5372, i32 0, i32 33
  %5374 = getelementptr inbounds %struct.Reg, %struct.Reg* %5373, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %5374 to i64*
  %5375 = load i64, i64* %PC.i260
  %5376 = add i64 %5375, 5
  %5377 = load i64, i64* %PC.i260
  %5378 = add i64 %5377, 5
  store i64 %5378, i64* %PC.i260
  %5379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5376, i64* %5379, align 8
  store %struct.Memory* %loadMem_4a0568, %struct.Memory** %MEMORY
  br label %block_.L_4a056d

block_.L_4a056d:                                  ; preds = %block_.L_4a0568, %block_.L_4a0409
  %loadMem_4a056d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5381 = getelementptr inbounds %struct.GPR, %struct.GPR* %5380, i32 0, i32 33
  %5382 = getelementptr inbounds %struct.Reg, %struct.Reg* %5381, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5382 to i64*
  %5383 = load i64, i64* %PC.i259
  %5384 = add i64 %5383, 5
  %5385 = load i64, i64* %PC.i259
  %5386 = add i64 %5385, 5
  store i64 %5386, i64* %PC.i259
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5384, i64* %5387, align 8
  store %struct.Memory* %loadMem_4a056d, %struct.Memory** %MEMORY
  br label %block_.L_4a0572

block_.L_4a0572:                                  ; preds = %block_.L_4a056d, %block_.L_4a034c
  %loadMem_4a0572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 33
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5390 to i64*
  %5391 = load i64, i64* %PC.i258
  %5392 = add i64 %5391, 5
  %5393 = load i64, i64* %PC.i258
  %5394 = add i64 %5393, 5
  store i64 %5394, i64* %PC.i258
  %5395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5392, i64* %5395, align 8
  store %struct.Memory* %loadMem_4a0572, %struct.Memory** %MEMORY
  br label %block_.L_4a0577

block_.L_4a0577:                                  ; preds = %block_.L_4a0572
  %loadMem_4a0577 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 33
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5398 to i64*
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5400 = getelementptr inbounds %struct.GPR, %struct.GPR* %5399, i32 0, i32 1
  %5401 = getelementptr inbounds %struct.Reg, %struct.Reg* %5400, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %5401 to i64*
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5403 = getelementptr inbounds %struct.GPR, %struct.GPR* %5402, i32 0, i32 15
  %5404 = getelementptr inbounds %struct.Reg, %struct.Reg* %5403, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5404 to i64*
  %5405 = load i64, i64* %RBP.i257
  %5406 = sub i64 %5405, 24
  %5407 = load i64, i64* %PC.i255
  %5408 = add i64 %5407, 3
  store i64 %5408, i64* %PC.i255
  %5409 = inttoptr i64 %5406 to i32*
  %5410 = load i32, i32* %5409
  %5411 = zext i32 %5410 to i64
  store i64 %5411, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_4a0577, %struct.Memory** %MEMORY
  %loadMem_4a057a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5413 = getelementptr inbounds %struct.GPR, %struct.GPR* %5412, i32 0, i32 33
  %5414 = getelementptr inbounds %struct.Reg, %struct.Reg* %5413, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5414 to i64*
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 1
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %RAX.i254 = bitcast %union.anon* %5417 to i64*
  %5418 = load i64, i64* %RAX.i254
  %5419 = load i64, i64* %PC.i253
  %5420 = add i64 %5419, 3
  store i64 %5420, i64* %PC.i253
  %5421 = trunc i64 %5418 to i32
  %5422 = add i32 1, %5421
  %5423 = zext i32 %5422 to i64
  store i64 %5423, i64* %RAX.i254, align 8
  %5424 = icmp ult i32 %5422, %5421
  %5425 = icmp ult i32 %5422, 1
  %5426 = or i1 %5424, %5425
  %5427 = zext i1 %5426 to i8
  %5428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5427, i8* %5428, align 1
  %5429 = and i32 %5422, 255
  %5430 = call i32 @llvm.ctpop.i32(i32 %5429)
  %5431 = trunc i32 %5430 to i8
  %5432 = and i8 %5431, 1
  %5433 = xor i8 %5432, 1
  %5434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5433, i8* %5434, align 1
  %5435 = xor i64 1, %5418
  %5436 = trunc i64 %5435 to i32
  %5437 = xor i32 %5436, %5422
  %5438 = lshr i32 %5437, 4
  %5439 = trunc i32 %5438 to i8
  %5440 = and i8 %5439, 1
  %5441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5440, i8* %5441, align 1
  %5442 = icmp eq i32 %5422, 0
  %5443 = zext i1 %5442 to i8
  %5444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5443, i8* %5444, align 1
  %5445 = lshr i32 %5422, 31
  %5446 = trunc i32 %5445 to i8
  %5447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5446, i8* %5447, align 1
  %5448 = lshr i32 %5421, 31
  %5449 = xor i32 %5445, %5448
  %5450 = add i32 %5449, %5445
  %5451 = icmp eq i32 %5450, 2
  %5452 = zext i1 %5451 to i8
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5452, i8* %5453, align 1
  store %struct.Memory* %loadMem_4a057a, %struct.Memory** %MEMORY
  %loadMem_4a057d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5455 = getelementptr inbounds %struct.GPR, %struct.GPR* %5454, i32 0, i32 33
  %5456 = getelementptr inbounds %struct.Reg, %struct.Reg* %5455, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5456 to i64*
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 1
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %5459 to i32*
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 15
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %5462 to i64*
  %5463 = load i64, i64* %RBP.i252
  %5464 = sub i64 %5463, 24
  %5465 = load i32, i32* %EAX.i251
  %5466 = zext i32 %5465 to i64
  %5467 = load i64, i64* %PC.i250
  %5468 = add i64 %5467, 3
  store i64 %5468, i64* %PC.i250
  %5469 = inttoptr i64 %5464 to i32*
  store i32 %5465, i32* %5469
  store %struct.Memory* %loadMem_4a057d, %struct.Memory** %MEMORY
  %loadMem_4a0580 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5472 to i64*
  %5473 = load i64, i64* %PC.i249
  %5474 = add i64 %5473, -830
  %5475 = load i64, i64* %PC.i249
  %5476 = add i64 %5475, 5
  store i64 %5476, i64* %PC.i249
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5474, i64* %5477, align 8
  store %struct.Memory* %loadMem_4a0580, %struct.Memory** %MEMORY
  br label %block_.L_4a0242

block_.L_4a0585:                                  ; preds = %routine_idivl__esi.exit678
  %loadMem_4a0585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5480 to i64*
  %5481 = load i64, i64* %PC.i248
  %5482 = add i64 %5481, 5
  %5483 = load i64, i64* %PC.i248
  %5484 = add i64 %5483, 5
  store i64 %5484, i64* %PC.i248
  %5485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5482, i64* %5485, align 8
  store %struct.Memory* %loadMem_4a0585, %struct.Memory** %MEMORY
  br label %block_.L_4a058a

block_.L_4a058a:                                  ; preds = %block_.L_4a0585
  %loadMem_4a058a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5487 = getelementptr inbounds %struct.GPR, %struct.GPR* %5486, i32 0, i32 33
  %5488 = getelementptr inbounds %struct.Reg, %struct.Reg* %5487, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5488 to i64*
  %5489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5490 = getelementptr inbounds %struct.GPR, %struct.GPR* %5489, i32 0, i32 1
  %5491 = getelementptr inbounds %struct.Reg, %struct.Reg* %5490, i32 0, i32 0
  %RAX.i246 = bitcast %union.anon* %5491 to i64*
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 15
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %5494 to i64*
  %5495 = load i64, i64* %RBP.i247
  %5496 = sub i64 %5495, 20
  %5497 = load i64, i64* %PC.i245
  %5498 = add i64 %5497, 3
  store i64 %5498, i64* %PC.i245
  %5499 = inttoptr i64 %5496 to i32*
  %5500 = load i32, i32* %5499
  %5501 = zext i32 %5500 to i64
  store i64 %5501, i64* %RAX.i246, align 8
  store %struct.Memory* %loadMem_4a058a, %struct.Memory** %MEMORY
  %loadMem_4a058d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5503 = getelementptr inbounds %struct.GPR, %struct.GPR* %5502, i32 0, i32 33
  %5504 = getelementptr inbounds %struct.Reg, %struct.Reg* %5503, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %5504 to i64*
  %5505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5506 = getelementptr inbounds %struct.GPR, %struct.GPR* %5505, i32 0, i32 1
  %5507 = getelementptr inbounds %struct.Reg, %struct.Reg* %5506, i32 0, i32 0
  %RAX.i244 = bitcast %union.anon* %5507 to i64*
  %5508 = load i64, i64* %RAX.i244
  %5509 = load i64, i64* %PC.i243
  %5510 = add i64 %5509, 3
  store i64 %5510, i64* %PC.i243
  %5511 = trunc i64 %5508 to i32
  %5512 = add i32 1, %5511
  %5513 = zext i32 %5512 to i64
  store i64 %5513, i64* %RAX.i244, align 8
  %5514 = icmp ult i32 %5512, %5511
  %5515 = icmp ult i32 %5512, 1
  %5516 = or i1 %5514, %5515
  %5517 = zext i1 %5516 to i8
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5517, i8* %5518, align 1
  %5519 = and i32 %5512, 255
  %5520 = call i32 @llvm.ctpop.i32(i32 %5519)
  %5521 = trunc i32 %5520 to i8
  %5522 = and i8 %5521, 1
  %5523 = xor i8 %5522, 1
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5523, i8* %5524, align 1
  %5525 = xor i64 1, %5508
  %5526 = trunc i64 %5525 to i32
  %5527 = xor i32 %5526, %5512
  %5528 = lshr i32 %5527, 4
  %5529 = trunc i32 %5528 to i8
  %5530 = and i8 %5529, 1
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5530, i8* %5531, align 1
  %5532 = icmp eq i32 %5512, 0
  %5533 = zext i1 %5532 to i8
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5533, i8* %5534, align 1
  %5535 = lshr i32 %5512, 31
  %5536 = trunc i32 %5535 to i8
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5536, i8* %5537, align 1
  %5538 = lshr i32 %5511, 31
  %5539 = xor i32 %5535, %5538
  %5540 = add i32 %5539, %5535
  %5541 = icmp eq i32 %5540, 2
  %5542 = zext i1 %5541 to i8
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5542, i8* %5543, align 1
  store %struct.Memory* %loadMem_4a058d, %struct.Memory** %MEMORY
  %loadMem_4a0590 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5545 = getelementptr inbounds %struct.GPR, %struct.GPR* %5544, i32 0, i32 33
  %5546 = getelementptr inbounds %struct.Reg, %struct.Reg* %5545, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5546 to i64*
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5548 = getelementptr inbounds %struct.GPR, %struct.GPR* %5547, i32 0, i32 1
  %5549 = getelementptr inbounds %struct.Reg, %struct.Reg* %5548, i32 0, i32 0
  %EAX.i241 = bitcast %union.anon* %5549 to i32*
  %5550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5551 = getelementptr inbounds %struct.GPR, %struct.GPR* %5550, i32 0, i32 15
  %5552 = getelementptr inbounds %struct.Reg, %struct.Reg* %5551, i32 0, i32 0
  %RBP.i242 = bitcast %union.anon* %5552 to i64*
  %5553 = load i64, i64* %RBP.i242
  %5554 = sub i64 %5553, 20
  %5555 = load i32, i32* %EAX.i241
  %5556 = zext i32 %5555 to i64
  %5557 = load i64, i64* %PC.i240
  %5558 = add i64 %5557, 3
  store i64 %5558, i64* %PC.i240
  %5559 = inttoptr i64 %5554 to i32*
  store i32 %5555, i32* %5559
  store %struct.Memory* %loadMem_4a0590, %struct.Memory** %MEMORY
  %loadMem_4a0593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5561 = getelementptr inbounds %struct.GPR, %struct.GPR* %5560, i32 0, i32 33
  %5562 = getelementptr inbounds %struct.Reg, %struct.Reg* %5561, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %5562 to i64*
  %5563 = load i64, i64* %PC.i239
  %5564 = add i64 %5563, -900
  %5565 = load i64, i64* %PC.i239
  %5566 = add i64 %5565, 5
  store i64 %5566, i64* %PC.i239
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5564, i64* %5567, align 8
  store %struct.Memory* %loadMem_4a0593, %struct.Memory** %MEMORY
  br label %block_.L_4a020f

block_.L_4a0598:                                  ; preds = %routine_idivl__esi.exit709
  %loadMem_4a0598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 33
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 15
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RBP.i238 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RBP.i238
  %5575 = sub i64 %5574, 28
  %5576 = load i64, i64* %PC.i237
  %5577 = add i64 %5576, 4
  store i64 %5577, i64* %PC.i237
  %5578 = inttoptr i64 %5575 to i32*
  %5579 = load i32, i32* %5578
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5580, align 1
  %5581 = and i32 %5579, 255
  %5582 = call i32 @llvm.ctpop.i32(i32 %5581)
  %5583 = trunc i32 %5582 to i8
  %5584 = and i8 %5583, 1
  %5585 = xor i8 %5584, 1
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5585, i8* %5586, align 1
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5587, align 1
  %5588 = icmp eq i32 %5579, 0
  %5589 = zext i1 %5588 to i8
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5589, i8* %5590, align 1
  %5591 = lshr i32 %5579, 31
  %5592 = trunc i32 %5591 to i8
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5592, i8* %5593, align 1
  %5594 = lshr i32 %5579, 31
  %5595 = xor i32 %5591, %5594
  %5596 = add i32 %5595, %5594
  %5597 = icmp eq i32 %5596, 2
  %5598 = zext i1 %5597 to i8
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5598, i8* %5599, align 1
  store %struct.Memory* %loadMem_4a0598, %struct.Memory** %MEMORY
  %loadMem_4a059c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 33
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %PC.i236
  %5604 = add i64 %5603, 31
  %5605 = load i64, i64* %PC.i236
  %5606 = add i64 %5605, 6
  %5607 = load i64, i64* %PC.i236
  %5608 = add i64 %5607, 6
  store i64 %5608, i64* %PC.i236
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5610 = load i8, i8* %5609, align 1
  store i8 %5610, i8* %BRANCH_TAKEN, align 1
  %5611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5612 = icmp ne i8 %5610, 0
  %5613 = select i1 %5612, i64 %5604, i64 %5606
  store i64 %5613, i64* %5611, align 8
  store %struct.Memory* %loadMem_4a059c, %struct.Memory** %MEMORY
  %loadBr_4a059c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a059c = icmp eq i8 %loadBr_4a059c, 1
  br i1 %cmpBr_4a059c, label %block_.L_4a05bb, label %block_4a05a2

block_4a05a2:                                     ; preds = %block_.L_4a0598
  %loadMem_4a05a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5615 = getelementptr inbounds %struct.GPR, %struct.GPR* %5614, i32 0, i32 33
  %5616 = getelementptr inbounds %struct.Reg, %struct.Reg* %5615, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5616 to i64*
  %5617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5618 = getelementptr inbounds %struct.GPR, %struct.GPR* %5617, i32 0, i32 11
  %5619 = getelementptr inbounds %struct.Reg, %struct.Reg* %5618, i32 0, i32 0
  %RDI.i234 = bitcast %union.anon* %5619 to i64*
  %5620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5621 = getelementptr inbounds %struct.GPR, %struct.GPR* %5620, i32 0, i32 15
  %5622 = getelementptr inbounds %struct.Reg, %struct.Reg* %5621, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %5622 to i64*
  %5623 = load i64, i64* %RBP.i235
  %5624 = sub i64 %5623, 88
  %5625 = load i64, i64* %PC.i233
  %5626 = add i64 %5625, 4
  store i64 %5626, i64* %PC.i233
  store i64 %5624, i64* %RDI.i234, align 8
  store %struct.Memory* %loadMem_4a05a2, %struct.Memory** %MEMORY
  %loadMem_4a05a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 1
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 15
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %RBP.i232
  %5637 = sub i64 %5636, 28
  %5638 = load i64, i64* %PC.i230
  %5639 = add i64 %5638, 3
  store i64 %5639, i64* %PC.i230
  %5640 = inttoptr i64 %5637 to i32*
  %5641 = load i32, i32* %5640
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_4a05a6, %struct.Memory** %MEMORY
  %loadMem_4a05a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 1
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %EAX.i228 = bitcast %union.anon* %5648 to i32*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 15
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %RBP.i229
  %5653 = sub i64 %5652, 84
  %5654 = load i32, i32* %EAX.i228
  %5655 = zext i32 %5654 to i64
  %5656 = load i64, i64* %PC.i227
  %5657 = add i64 %5656, 3
  store i64 %5657, i64* %PC.i227
  %5658 = inttoptr i64 %5653 to i32*
  store i32 %5654, i32* %5658
  store %struct.Memory* %loadMem_4a05a9, %struct.Memory** %MEMORY
  %loadMem_4a05ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %5659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5660 = getelementptr inbounds %struct.GPR, %struct.GPR* %5659, i32 0, i32 33
  %5661 = getelementptr inbounds %struct.Reg, %struct.Reg* %5660, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5661 to i64*
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 9
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %RSI.i225 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 15
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %5667 to i64*
  %5668 = load i64, i64* %RBP.i226
  %5669 = sub i64 %5668, 16
  %5670 = load i64, i64* %PC.i224
  %5671 = add i64 %5670, 4
  store i64 %5671, i64* %PC.i224
  %5672 = inttoptr i64 %5669 to i64*
  %5673 = load i64, i64* %5672
  store i64 %5673, i64* %RSI.i225, align 8
  store %struct.Memory* %loadMem_4a05ac, %struct.Memory** %MEMORY
  %loadMem1_4a05b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5676 to i64*
  %5677 = load i64, i64* %PC.i223
  %5678 = add i64 %5677, 52288
  %5679 = load i64, i64* %PC.i223
  %5680 = add i64 %5679, 5
  %5681 = load i64, i64* %PC.i223
  %5682 = add i64 %5681, 5
  store i64 %5682, i64* %PC.i223
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5684 = load i64, i64* %5683, align 8
  %5685 = add i64 %5684, -8
  %5686 = inttoptr i64 %5685 to i64*
  store i64 %5680, i64* %5686
  store i64 %5685, i64* %5683, align 8
  %5687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5678, i64* %5687, align 8
  store %struct.Memory* %loadMem1_4a05b0, %struct.Memory** %MEMORY
  %loadMem2_4a05b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4a05b0 = load i64, i64* %3
  %call2_4a05b0 = call %struct.Memory* @sub_4ad1f0.writeSyntaxElement2Buf_UVLC(%struct.State* %0, i64 %loadPC_4a05b0, %struct.Memory* %loadMem2_4a05b0)
  store %struct.Memory* %call2_4a05b0, %struct.Memory** %MEMORY
  %loadMem_4a05b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5689 = getelementptr inbounds %struct.GPR, %struct.GPR* %5688, i32 0, i32 33
  %5690 = getelementptr inbounds %struct.Reg, %struct.Reg* %5689, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %5690 to i64*
  %5691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5692 = getelementptr inbounds %struct.GPR, %struct.GPR* %5691, i32 0, i32 1
  %5693 = getelementptr inbounds %struct.Reg, %struct.Reg* %5692, i32 0, i32 0
  %RAX.i221 = bitcast %union.anon* %5693 to i64*
  %5694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5695 = getelementptr inbounds %struct.GPR, %struct.GPR* %5694, i32 0, i32 15
  %5696 = getelementptr inbounds %struct.Reg, %struct.Reg* %5695, i32 0, i32 0
  %RBP.i222 = bitcast %union.anon* %5696 to i64*
  %5697 = load i64, i64* %RAX.i221
  %5698 = load i64, i64* %RBP.i222
  %5699 = sub i64 %5698, 128
  %5700 = load i64, i64* %PC.i220
  %5701 = add i64 %5700, 3
  store i64 %5701, i64* %PC.i220
  %5702 = trunc i64 %5697 to i32
  %5703 = inttoptr i64 %5699 to i32*
  %5704 = load i32, i32* %5703
  %5705 = add i32 %5704, %5702
  %5706 = zext i32 %5705 to i64
  store i64 %5706, i64* %RAX.i221, align 8
  %5707 = icmp ult i32 %5705, %5702
  %5708 = icmp ult i32 %5705, %5704
  %5709 = or i1 %5707, %5708
  %5710 = zext i1 %5709 to i8
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5710, i8* %5711, align 1
  %5712 = and i32 %5705, 255
  %5713 = call i32 @llvm.ctpop.i32(i32 %5712)
  %5714 = trunc i32 %5713 to i8
  %5715 = and i8 %5714, 1
  %5716 = xor i8 %5715, 1
  %5717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5716, i8* %5717, align 1
  %5718 = xor i32 %5704, %5702
  %5719 = xor i32 %5718, %5705
  %5720 = lshr i32 %5719, 4
  %5721 = trunc i32 %5720 to i8
  %5722 = and i8 %5721, 1
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5722, i8* %5723, align 1
  %5724 = icmp eq i32 %5705, 0
  %5725 = zext i1 %5724 to i8
  %5726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5725, i8* %5726, align 1
  %5727 = lshr i32 %5705, 31
  %5728 = trunc i32 %5727 to i8
  %5729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5728, i8* %5729, align 1
  %5730 = lshr i32 %5702, 31
  %5731 = lshr i32 %5704, 31
  %5732 = xor i32 %5727, %5730
  %5733 = xor i32 %5727, %5731
  %5734 = add i32 %5732, %5733
  %5735 = icmp eq i32 %5734, 2
  %5736 = zext i1 %5735 to i8
  %5737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5736, i8* %5737, align 1
  store %struct.Memory* %loadMem_4a05b5, %struct.Memory** %MEMORY
  %loadMem_4a05b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5739 = getelementptr inbounds %struct.GPR, %struct.GPR* %5738, i32 0, i32 33
  %5740 = getelementptr inbounds %struct.Reg, %struct.Reg* %5739, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %5740 to i64*
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5742 = getelementptr inbounds %struct.GPR, %struct.GPR* %5741, i32 0, i32 1
  %5743 = getelementptr inbounds %struct.Reg, %struct.Reg* %5742, i32 0, i32 0
  %EAX.i218 = bitcast %union.anon* %5743 to i32*
  %5744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5745 = getelementptr inbounds %struct.GPR, %struct.GPR* %5744, i32 0, i32 15
  %5746 = getelementptr inbounds %struct.Reg, %struct.Reg* %5745, i32 0, i32 0
  %RBP.i219 = bitcast %union.anon* %5746 to i64*
  %5747 = load i64, i64* %RBP.i219
  %5748 = sub i64 %5747, 128
  %5749 = load i32, i32* %EAX.i218
  %5750 = zext i32 %5749 to i64
  %5751 = load i64, i64* %PC.i217
  %5752 = add i64 %5751, 3
  store i64 %5752, i64* %PC.i217
  %5753 = inttoptr i64 %5748 to i32*
  store i32 %5749, i32* %5753
  store %struct.Memory* %loadMem_4a05b8, %struct.Memory** %MEMORY
  br label %block_.L_4a05bb

block_.L_4a05bb:                                  ; preds = %block_4a05a2, %block_.L_4a0598
  %loadMem_4a05bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5755 = getelementptr inbounds %struct.GPR, %struct.GPR* %5754, i32 0, i32 33
  %5756 = getelementptr inbounds %struct.Reg, %struct.Reg* %5755, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5756 to i64*
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5758 = getelementptr inbounds %struct.GPR, %struct.GPR* %5757, i32 0, i32 1
  %5759 = getelementptr inbounds %struct.Reg, %struct.Reg* %5758, i32 0, i32 0
  %EAX.i215 = bitcast %union.anon* %5759 to i32*
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5761 = getelementptr inbounds %struct.GPR, %struct.GPR* %5760, i32 0, i32 1
  %5762 = getelementptr inbounds %struct.Reg, %struct.Reg* %5761, i32 0, i32 0
  %RAX.i216 = bitcast %union.anon* %5762 to i64*
  %5763 = load i64, i64* %RAX.i216
  %5764 = load i32, i32* %EAX.i215
  %5765 = zext i32 %5764 to i64
  %5766 = load i64, i64* %PC.i214
  %5767 = add i64 %5766, 2
  store i64 %5767, i64* %PC.i214
  %5768 = xor i64 %5765, %5763
  %5769 = trunc i64 %5768 to i32
  %5770 = and i64 %5768, 4294967295
  store i64 %5770, i64* %RAX.i216, align 8
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5771, align 1
  %5772 = and i32 %5769, 255
  %5773 = call i32 @llvm.ctpop.i32(i32 %5772)
  %5774 = trunc i32 %5773 to i8
  %5775 = and i8 %5774, 1
  %5776 = xor i8 %5775, 1
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5776, i8* %5777, align 1
  %5778 = icmp eq i32 %5769, 0
  %5779 = zext i1 %5778 to i8
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5779, i8* %5780, align 1
  %5781 = lshr i32 %5769, 31
  %5782 = trunc i32 %5781 to i8
  %5783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5782, i8* %5783, align 1
  %5784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5784, align 1
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5785, align 1
  store %struct.Memory* %loadMem_4a05bb, %struct.Memory** %MEMORY
  %loadMem_4a05bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5787 = getelementptr inbounds %struct.GPR, %struct.GPR* %5786, i32 0, i32 33
  %5788 = getelementptr inbounds %struct.Reg, %struct.Reg* %5787, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5788 to i64*
  %5789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5790 = getelementptr inbounds %struct.GPR, %struct.GPR* %5789, i32 0, i32 5
  %5791 = getelementptr inbounds %struct.Reg, %struct.Reg* %5790, i32 0, i32 0
  %RCX.i213 = bitcast %union.anon* %5791 to i64*
  %5792 = load i64, i64* %PC.i212
  %5793 = add i64 %5792, 5
  store i64 %5793, i64* %PC.i212
  store i64 1, i64* %RCX.i213, align 8
  store %struct.Memory* %loadMem_4a05bd, %struct.Memory** %MEMORY
  %loadMem_4a05c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5795 = getelementptr inbounds %struct.GPR, %struct.GPR* %5794, i32 0, i32 33
  %5796 = getelementptr inbounds %struct.Reg, %struct.Reg* %5795, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5796 to i64*
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5798 = getelementptr inbounds %struct.GPR, %struct.GPR* %5797, i32 0, i32 7
  %5799 = getelementptr inbounds %struct.Reg, %struct.Reg* %5798, i32 0, i32 0
  %RDX.i210 = bitcast %union.anon* %5799 to i64*
  %5800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5801 = getelementptr inbounds %struct.GPR, %struct.GPR* %5800, i32 0, i32 15
  %5802 = getelementptr inbounds %struct.Reg, %struct.Reg* %5801, i32 0, i32 0
  %RBP.i211 = bitcast %union.anon* %5802 to i64*
  %5803 = load i64, i64* %RBP.i211
  %5804 = sub i64 %5803, 128
  %5805 = load i64, i64* %PC.i209
  %5806 = add i64 %5805, 3
  store i64 %5806, i64* %PC.i209
  %5807 = inttoptr i64 %5804 to i32*
  %5808 = load i32, i32* %5807
  %5809 = zext i32 %5808 to i64
  store i64 %5809, i64* %RDX.i210, align 8
  store %struct.Memory* %loadMem_4a05c2, %struct.Memory** %MEMORY
  %loadMem_4a05c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 33
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5812 to i64*
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5814 = getelementptr inbounds %struct.GPR, %struct.GPR* %5813, i32 0, i32 7
  %5815 = getelementptr inbounds %struct.Reg, %struct.Reg* %5814, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %5815 to i32*
  %5816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5817 = getelementptr inbounds %struct.GPR, %struct.GPR* %5816, i32 0, i32 15
  %5818 = getelementptr inbounds %struct.Reg, %struct.Reg* %5817, i32 0, i32 0
  %RBP.i208 = bitcast %union.anon* %5818 to i64*
  %5819 = load i32, i32* %EDX.i
  %5820 = zext i32 %5819 to i64
  %5821 = load i64, i64* %RBP.i208
  %5822 = sub i64 %5821, 124
  %5823 = load i64, i64* %PC.i207
  %5824 = add i64 %5823, 3
  store i64 %5824, i64* %PC.i207
  %5825 = inttoptr i64 %5822 to i32*
  %5826 = load i32, i32* %5825
  %5827 = sub i32 %5819, %5826
  %5828 = icmp ult i32 %5819, %5826
  %5829 = zext i1 %5828 to i8
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5829, i8* %5830, align 1
  %5831 = and i32 %5827, 255
  %5832 = call i32 @llvm.ctpop.i32(i32 %5831)
  %5833 = trunc i32 %5832 to i8
  %5834 = and i8 %5833, 1
  %5835 = xor i8 %5834, 1
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5835, i8* %5836, align 1
  %5837 = xor i32 %5826, %5819
  %5838 = xor i32 %5837, %5827
  %5839 = lshr i32 %5838, 4
  %5840 = trunc i32 %5839 to i8
  %5841 = and i8 %5840, 1
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5841, i8* %5842, align 1
  %5843 = icmp eq i32 %5827, 0
  %5844 = zext i1 %5843 to i8
  %5845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5844, i8* %5845, align 1
  %5846 = lshr i32 %5827, 31
  %5847 = trunc i32 %5846 to i8
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5847, i8* %5848, align 1
  %5849 = lshr i32 %5819, 31
  %5850 = lshr i32 %5826, 31
  %5851 = xor i32 %5850, %5849
  %5852 = xor i32 %5846, %5849
  %5853 = add i32 %5852, %5851
  %5854 = icmp eq i32 %5853, 2
  %5855 = zext i1 %5854 to i8
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5855, i8* %5856, align 1
  store %struct.Memory* %loadMem_4a05c5, %struct.Memory** %MEMORY
  %loadMem_4a05c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5858 = getelementptr inbounds %struct.GPR, %struct.GPR* %5857, i32 0, i32 33
  %5859 = getelementptr inbounds %struct.Reg, %struct.Reg* %5858, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5859 to i64*
  %5860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5861 = getelementptr inbounds %struct.GPR, %struct.GPR* %5860, i32 0, i32 5
  %5862 = getelementptr inbounds %struct.Reg, %struct.Reg* %5861, i32 0, i32 0
  %ECX.i205 = bitcast %union.anon* %5862 to i32*
  %5863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5864 = getelementptr inbounds %struct.GPR, %struct.GPR* %5863, i32 0, i32 1
  %5865 = getelementptr inbounds %struct.Reg, %struct.Reg* %5864, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %5865 to i64*
  %5866 = load i32, i32* %ECX.i205
  %5867 = zext i32 %5866 to i64
  %5868 = load i64, i64* %PC.i204
  %5869 = add i64 %5868, 3
  store i64 %5869, i64* %PC.i204
  %5870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5871 = load i8, i8* %5870, align 1
  %5872 = icmp ne i8 %5871, 0
  %5873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5874 = load i8, i8* %5873, align 1
  %5875 = icmp ne i8 %5874, 0
  %5876 = xor i1 %5872, %5875
  %5877 = load i64, i64* %RAX.i206, align 8
  %5878 = select i1 %5876, i64 %5867, i64 %5877
  %5879 = and i64 %5878, 4294967295
  store i64 %5879, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_4a05c8, %struct.Memory** %MEMORY
  %loadMem_4a05cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 33
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %5882 to i64*
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 1
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %EAX.i202 = bitcast %union.anon* %5885 to i32*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5887 = getelementptr inbounds %struct.GPR, %struct.GPR* %5886, i32 0, i32 15
  %5888 = getelementptr inbounds %struct.Reg, %struct.Reg* %5887, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %5888 to i64*
  %5889 = load i64, i64* %RBP.i203
  %5890 = sub i64 %5889, 132
  %5891 = load i32, i32* %EAX.i202
  %5892 = zext i32 %5891 to i64
  %5893 = load i64, i64* %PC.i201
  %5894 = add i64 %5893, 6
  store i64 %5894, i64* %PC.i201
  %5895 = inttoptr i64 %5890 to i32*
  store i32 %5891, i32* %5895
  store %struct.Memory* %loadMem_4a05cb, %struct.Memory** %MEMORY
  %loadMem_4a05d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5897 = getelementptr inbounds %struct.GPR, %struct.GPR* %5896, i32 0, i32 33
  %5898 = getelementptr inbounds %struct.Reg, %struct.Reg* %5897, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5898 to i64*
  %5899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5900 = getelementptr inbounds %struct.GPR, %struct.GPR* %5899, i32 0, i32 15
  %5901 = getelementptr inbounds %struct.Reg, %struct.Reg* %5900, i32 0, i32 0
  %RBP.i200 = bitcast %union.anon* %5901 to i64*
  %5902 = load i64, i64* %RBP.i200
  %5903 = sub i64 %5902, 132
  %5904 = load i64, i64* %PC.i199
  %5905 = add i64 %5904, 7
  store i64 %5905, i64* %PC.i199
  %5906 = inttoptr i64 %5903 to i32*
  %5907 = load i32, i32* %5906
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5908, align 1
  %5909 = and i32 %5907, 255
  %5910 = call i32 @llvm.ctpop.i32(i32 %5909)
  %5911 = trunc i32 %5910 to i8
  %5912 = and i8 %5911, 1
  %5913 = xor i8 %5912, 1
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5913, i8* %5914, align 1
  %5915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5915, align 1
  %5916 = icmp eq i32 %5907, 0
  %5917 = zext i1 %5916 to i8
  %5918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5917, i8* %5918, align 1
  %5919 = lshr i32 %5907, 31
  %5920 = trunc i32 %5919 to i8
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5920, i8* %5921, align 1
  %5922 = lshr i32 %5907, 31
  %5923 = xor i32 %5919, %5922
  %5924 = add i32 %5923, %5922
  %5925 = icmp eq i32 %5924, 2
  %5926 = zext i1 %5925 to i8
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5926, i8* %5927, align 1
  store %struct.Memory* %loadMem_4a05d1, %struct.Memory** %MEMORY
  %loadMem_4a05d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 33
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5930 to i64*
  %5931 = load i64, i64* %PC.i198
  %5932 = add i64 %5931, 318
  %5933 = load i64, i64* %PC.i198
  %5934 = add i64 %5933, 6
  %5935 = load i64, i64* %PC.i198
  %5936 = add i64 %5935, 6
  store i64 %5936, i64* %PC.i198
  %5937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5938 = load i8, i8* %5937, align 1
  %5939 = icmp eq i8 %5938, 0
  %5940 = zext i1 %5939 to i8
  store i8 %5940, i8* %BRANCH_TAKEN, align 1
  %5941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5942 = select i1 %5939, i64 %5932, i64 %5934
  store i64 %5942, i64* %5941, align 8
  store %struct.Memory* %loadMem_4a05d8, %struct.Memory** %MEMORY
  %loadBr_4a05d8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a05d8 = icmp eq i8 %loadBr_4a05d8, 1
  br i1 %cmpBr_4a05d8, label %block_.L_4a0716, label %block_4a05de

block_4a05de:                                     ; preds = %block_.L_4a05bb
  %loadMem_4a05de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 33
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 1
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5950 = getelementptr inbounds %struct.GPR, %struct.GPR* %5949, i32 0, i32 15
  %5951 = getelementptr inbounds %struct.Reg, %struct.Reg* %5950, i32 0, i32 0
  %RBP.i197 = bitcast %union.anon* %5951 to i64*
  %5952 = load i64, i64* %RBP.i197
  %5953 = sub i64 %5952, 16
  %5954 = load i64, i64* %PC.i195
  %5955 = add i64 %5954, 4
  store i64 %5955, i64* %PC.i195
  %5956 = inttoptr i64 %5953 to i64*
  %5957 = load i64, i64* %5956
  store i64 %5957, i64* %RAX.i196, align 8
  store %struct.Memory* %loadMem_4a05de, %struct.Memory** %MEMORY
  %loadMem_4a05e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5959 = getelementptr inbounds %struct.GPR, %struct.GPR* %5958, i32 0, i32 33
  %5960 = getelementptr inbounds %struct.Reg, %struct.Reg* %5959, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5960 to i64*
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 1
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %RAX.i194 = bitcast %union.anon* %5963 to i64*
  %5964 = load i64, i64* %RAX.i194
  %5965 = add i64 %5964, 8
  %5966 = load i64, i64* %PC.i193
  %5967 = add i64 %5966, 4
  store i64 %5967, i64* %PC.i193
  %5968 = inttoptr i64 %5965 to i8*
  store i8 0, i8* %5968
  store %struct.Memory* %loadMem_4a05e2, %struct.Memory** %MEMORY
  %loadMem_4a05e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 33
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5971 to i64*
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 1
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %5974 to i64*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 15
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %5977 to i64*
  %5978 = load i64, i64* %RBP.i192
  %5979 = sub i64 %5978, 16
  %5980 = load i64, i64* %PC.i190
  %5981 = add i64 %5980, 4
  store i64 %5981, i64* %PC.i190
  %5982 = inttoptr i64 %5979 to i64*
  %5983 = load i64, i64* %5982
  store i64 %5983, i64* %RAX.i191, align 8
  store %struct.Memory* %loadMem_4a05e6, %struct.Memory** %MEMORY
  %loadMem_4a05ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %5984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5985 = getelementptr inbounds %struct.GPR, %struct.GPR* %5984, i32 0, i32 33
  %5986 = getelementptr inbounds %struct.Reg, %struct.Reg* %5985, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %5986 to i64*
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 1
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %5989 to i64*
  %5990 = load i64, i64* %RAX.i189
  %5991 = add i64 %5990, 4
  %5992 = load i64, i64* %PC.i188
  %5993 = add i64 %5992, 7
  store i64 %5993, i64* %PC.i188
  %5994 = inttoptr i64 %5991 to i32*
  store i32 8, i32* %5994
  store %struct.Memory* %loadMem_4a05ea, %struct.Memory** %MEMORY
  %loadMem_4a05f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5996 = getelementptr inbounds %struct.GPR, %struct.GPR* %5995, i32 0, i32 33
  %5997 = getelementptr inbounds %struct.Reg, %struct.Reg* %5996, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %5997 to i64*
  %5998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5999 = getelementptr inbounds %struct.GPR, %struct.GPR* %5998, i32 0, i32 1
  %6000 = getelementptr inbounds %struct.Reg, %struct.Reg* %5999, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %6000 to i64*
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 15
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %6003 to i64*
  %6004 = load i64, i64* %RBP.i187
  %6005 = sub i64 %6004, 16
  %6006 = load i64, i64* %PC.i185
  %6007 = add i64 %6006, 4
  store i64 %6007, i64* %PC.i185
  %6008 = inttoptr i64 %6005 to i64*
  %6009 = load i64, i64* %6008
  store i64 %6009, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_4a05f1, %struct.Memory** %MEMORY
  %loadMem_4a05f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6011 = getelementptr inbounds %struct.GPR, %struct.GPR* %6010, i32 0, i32 33
  %6012 = getelementptr inbounds %struct.Reg, %struct.Reg* %6011, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6012 to i64*
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6014 = getelementptr inbounds %struct.GPR, %struct.GPR* %6013, i32 0, i32 1
  %6015 = getelementptr inbounds %struct.Reg, %struct.Reg* %6014, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %6015 to i64*
  %6016 = load i64, i64* %RAX.i184
  %6017 = load i64, i64* %PC.i183
  %6018 = add i64 %6017, 6
  store i64 %6018, i64* %PC.i183
  %6019 = inttoptr i64 %6016 to i32*
  store i32 0, i32* %6019
  store %struct.Memory* %loadMem_4a05f5, %struct.Memory** %MEMORY
  %loadMem_4a05fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6021 = getelementptr inbounds %struct.GPR, %struct.GPR* %6020, i32 0, i32 33
  %6022 = getelementptr inbounds %struct.Reg, %struct.Reg* %6021, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6022 to i64*
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6024 = getelementptr inbounds %struct.GPR, %struct.GPR* %6023, i32 0, i32 15
  %6025 = getelementptr inbounds %struct.Reg, %struct.Reg* %6024, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6025 to i64*
  %6026 = load i64, i64* %RBP.i182
  %6027 = sub i64 %6026, 20
  %6028 = load i64, i64* %PC.i181
  %6029 = add i64 %6028, 7
  store i64 %6029, i64* %PC.i181
  %6030 = inttoptr i64 %6027 to i32*
  store i32 0, i32* %6030
  store %struct.Memory* %loadMem_4a05fb, %struct.Memory** %MEMORY
  br label %block_.L_4a0602

block_.L_4a0602:                                  ; preds = %block_.L_4a0703, %block_4a05de
  %loadMem_4a0602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6032 = getelementptr inbounds %struct.GPR, %struct.GPR* %6031, i32 0, i32 33
  %6033 = getelementptr inbounds %struct.Reg, %struct.Reg* %6032, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %6033 to i64*
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6035 = getelementptr inbounds %struct.GPR, %struct.GPR* %6034, i32 0, i32 1
  %6036 = getelementptr inbounds %struct.Reg, %struct.Reg* %6035, i32 0, i32 0
  %RAX.i180 = bitcast %union.anon* %6036 to i64*
  %6037 = load i64, i64* %PC.i179
  %6038 = add i64 %6037, 5
  store i64 %6038, i64* %PC.i179
  store i64 16, i64* %RAX.i180, align 8
  store %struct.Memory* %loadMem_4a0602, %struct.Memory** %MEMORY
  %loadMem_4a0607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 33
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 5
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RCX.i177 = bitcast %union.anon* %6044 to i64*
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6046 = getelementptr inbounds %struct.GPR, %struct.GPR* %6045, i32 0, i32 15
  %6047 = getelementptr inbounds %struct.Reg, %struct.Reg* %6046, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %6047 to i64*
  %6048 = load i64, i64* %RBP.i178
  %6049 = sub i64 %6048, 20
  %6050 = load i64, i64* %PC.i176
  %6051 = add i64 %6050, 3
  store i64 %6051, i64* %PC.i176
  %6052 = inttoptr i64 %6049 to i32*
  %6053 = load i32, i32* %6052
  %6054 = zext i32 %6053 to i64
  store i64 %6054, i64* %RCX.i177, align 8
  store %struct.Memory* %loadMem_4a0607, %struct.Memory** %MEMORY
  %loadMem_4a060a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6056 = getelementptr inbounds %struct.GPR, %struct.GPR* %6055, i32 0, i32 33
  %6057 = getelementptr inbounds %struct.Reg, %struct.Reg* %6056, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %6057 to i64*
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6059 = getelementptr inbounds %struct.GPR, %struct.GPR* %6058, i32 0, i32 7
  %6060 = getelementptr inbounds %struct.Reg, %struct.Reg* %6059, i32 0, i32 0
  %RDX.i175 = bitcast %union.anon* %6060 to i64*
  %6061 = load i64, i64* %PC.i174
  %6062 = add i64 %6061, 8
  store i64 %6062, i64* %PC.i174
  %6063 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6063, i64* %RDX.i175, align 8
  store %struct.Memory* %loadMem_4a060a, %struct.Memory** %MEMORY
  %loadMem_4a0612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 33
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6066 to i64*
  %6067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6068 = getelementptr inbounds %struct.GPR, %struct.GPR* %6067, i32 0, i32 7
  %6069 = getelementptr inbounds %struct.Reg, %struct.Reg* %6068, i32 0, i32 0
  %RDX.i172 = bitcast %union.anon* %6069 to i64*
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 9
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %RSI.i173 = bitcast %union.anon* %6072 to i64*
  %6073 = load i64, i64* %RDX.i172
  %6074 = add i64 %6073, 60
  %6075 = load i64, i64* %PC.i171
  %6076 = add i64 %6075, 3
  store i64 %6076, i64* %PC.i171
  %6077 = inttoptr i64 %6074 to i32*
  %6078 = load i32, i32* %6077
  %6079 = zext i32 %6078 to i64
  store i64 %6079, i64* %RSI.i173, align 8
  store %struct.Memory* %loadMem_4a0612, %struct.Memory** %MEMORY
  %loadMem_4a0615 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6081 = getelementptr inbounds %struct.GPR, %struct.GPR* %6080, i32 0, i32 33
  %6082 = getelementptr inbounds %struct.Reg, %struct.Reg* %6081, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6082 to i64*
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 1
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %EAX.i169 = bitcast %union.anon* %6085 to i32*
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 15
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %RBP.i170 = bitcast %union.anon* %6088 to i64*
  %6089 = load i64, i64* %RBP.i170
  %6090 = sub i64 %6089, 168
  %6091 = load i32, i32* %EAX.i169
  %6092 = zext i32 %6091 to i64
  %6093 = load i64, i64* %PC.i168
  %6094 = add i64 %6093, 6
  store i64 %6094, i64* %PC.i168
  %6095 = inttoptr i64 %6090 to i32*
  store i32 %6091, i32* %6095
  store %struct.Memory* %loadMem_4a0615, %struct.Memory** %MEMORY
  %loadMem_4a061b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6097 = getelementptr inbounds %struct.GPR, %struct.GPR* %6096, i32 0, i32 33
  %6098 = getelementptr inbounds %struct.Reg, %struct.Reg* %6097, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6098 to i64*
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 9
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %ESI.i166 = bitcast %union.anon* %6101 to i32*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 1
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %6104 to i64*
  %6105 = load i32, i32* %ESI.i166
  %6106 = zext i32 %6105 to i64
  %6107 = load i64, i64* %PC.i165
  %6108 = add i64 %6107, 2
  store i64 %6108, i64* %PC.i165
  %6109 = and i64 %6106, 4294967295
  store i64 %6109, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_4a061b, %struct.Memory** %MEMORY
  %loadMem_4a061d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 33
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6112 to i64*
  %6113 = load i64, i64* %PC.i164
  %6114 = add i64 %6113, 1
  store i64 %6114, i64* %PC.i164
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6117 = bitcast %union.anon* %6116 to i32*
  %6118 = load i32, i32* %6117, align 8
  %6119 = sext i32 %6118 to i64
  %6120 = lshr i64 %6119, 32
  store i64 %6120, i64* %6115, align 8
  store %struct.Memory* %loadMem_4a061d, %struct.Memory** %MEMORY
  %loadMem_4a061e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6122 = getelementptr inbounds %struct.GPR, %struct.GPR* %6121, i32 0, i32 33
  %6123 = getelementptr inbounds %struct.Reg, %struct.Reg* %6122, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6123 to i64*
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6125 = getelementptr inbounds %struct.GPR, %struct.GPR* %6124, i32 0, i32 9
  %6126 = getelementptr inbounds %struct.Reg, %struct.Reg* %6125, i32 0, i32 0
  %RSI.i162 = bitcast %union.anon* %6126 to i64*
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6128 = getelementptr inbounds %struct.GPR, %struct.GPR* %6127, i32 0, i32 15
  %6129 = getelementptr inbounds %struct.Reg, %struct.Reg* %6128, i32 0, i32 0
  %RBP.i163 = bitcast %union.anon* %6129 to i64*
  %6130 = load i64, i64* %RBP.i163
  %6131 = sub i64 %6130, 168
  %6132 = load i64, i64* %PC.i161
  %6133 = add i64 %6132, 6
  store i64 %6133, i64* %PC.i161
  %6134 = inttoptr i64 %6131 to i32*
  %6135 = load i32, i32* %6134
  %6136 = zext i32 %6135 to i64
  store i64 %6136, i64* %RSI.i162, align 8
  store %struct.Memory* %loadMem_4a061e, %struct.Memory** %MEMORY
  %loadMem_4a0624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6138 = getelementptr inbounds %struct.GPR, %struct.GPR* %6137, i32 0, i32 33
  %6139 = getelementptr inbounds %struct.Reg, %struct.Reg* %6138, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6139 to i64*
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6141 = getelementptr inbounds %struct.GPR, %struct.GPR* %6140, i32 0, i32 9
  %6142 = getelementptr inbounds %struct.Reg, %struct.Reg* %6141, i32 0, i32 0
  %ESI.i157 = bitcast %union.anon* %6142 to i32*
  %6143 = load i32, i32* %ESI.i157
  %6144 = zext i32 %6143 to i64
  %6145 = load i64, i64* %PC.i156
  %6146 = add i64 %6145, 2
  store i64 %6146, i64* %PC.i156
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6148 = bitcast %union.anon* %6147 to i32*
  %6149 = load i32, i32* %6148, align 8
  %6150 = zext i32 %6149 to i64
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6152 = bitcast %union.anon* %6151 to i32*
  %6153 = load i32, i32* %6152, align 8
  %6154 = zext i32 %6153 to i64
  %6155 = shl i64 %6144, 32
  %6156 = ashr exact i64 %6155, 32
  %6157 = shl i64 %6154, 32
  %6158 = or i64 %6157, %6150
  %6159 = sdiv i64 %6158, %6156
  %6160 = shl i64 %6159, 32
  %6161 = ashr exact i64 %6160, 32
  %6162 = icmp eq i64 %6159, %6161
  br i1 %6162, label %6167, label %6163

; <label>:6163:                                   ; preds = %block_.L_4a0602
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6165 = load i64, i64* %6164, align 8
  %6166 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6165, %struct.Memory* %loadMem_4a0624)
  br label %routine_idivl__esi.exit158

; <label>:6167:                                   ; preds = %block_.L_4a0602
  %6168 = srem i64 %6158, %6156
  %6169 = getelementptr inbounds %union.anon, %union.anon* %6147, i64 0, i32 0
  %6170 = and i64 %6159, 4294967295
  store i64 %6170, i64* %6169, align 8
  %6171 = getelementptr inbounds %union.anon, %union.anon* %6151, i64 0, i32 0
  %6172 = and i64 %6168, 4294967295
  store i64 %6172, i64* %6171, align 8
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6173, align 1
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6174, align 1
  %6175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6175, align 1
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6176, align 1
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6177, align 1
  %6178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6178, align 1
  br label %routine_idivl__esi.exit158

routine_idivl__esi.exit158:                       ; preds = %6163, %6167
  %6179 = phi %struct.Memory* [ %6166, %6163 ], [ %loadMem_4a0624, %6167 ]
  store %struct.Memory* %6179, %struct.Memory** %MEMORY
  %loadMem_4a0626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 33
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6182 to i64*
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 1
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %EAX.i154 = bitcast %union.anon* %6185 to i32*
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6187 = getelementptr inbounds %struct.GPR, %struct.GPR* %6186, i32 0, i32 5
  %6188 = getelementptr inbounds %struct.Reg, %struct.Reg* %6187, i32 0, i32 0
  %ECX.i155 = bitcast %union.anon* %6188 to i32*
  %6189 = load i32, i32* %ECX.i155
  %6190 = zext i32 %6189 to i64
  %6191 = load i32, i32* %EAX.i154
  %6192 = zext i32 %6191 to i64
  %6193 = load i64, i64* %PC.i153
  %6194 = add i64 %6193, 2
  store i64 %6194, i64* %PC.i153
  %6195 = sub i32 %6189, %6191
  %6196 = icmp ult i32 %6189, %6191
  %6197 = zext i1 %6196 to i8
  %6198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6197, i8* %6198, align 1
  %6199 = and i32 %6195, 255
  %6200 = call i32 @llvm.ctpop.i32(i32 %6199)
  %6201 = trunc i32 %6200 to i8
  %6202 = and i8 %6201, 1
  %6203 = xor i8 %6202, 1
  %6204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6203, i8* %6204, align 1
  %6205 = xor i64 %6192, %6190
  %6206 = trunc i64 %6205 to i32
  %6207 = xor i32 %6206, %6195
  %6208 = lshr i32 %6207, 4
  %6209 = trunc i32 %6208 to i8
  %6210 = and i8 %6209, 1
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6210, i8* %6211, align 1
  %6212 = icmp eq i32 %6195, 0
  %6213 = zext i1 %6212 to i8
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6213, i8* %6214, align 1
  %6215 = lshr i32 %6195, 31
  %6216 = trunc i32 %6215 to i8
  %6217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6216, i8* %6217, align 1
  %6218 = lshr i32 %6189, 31
  %6219 = lshr i32 %6191, 31
  %6220 = xor i32 %6219, %6218
  %6221 = xor i32 %6215, %6218
  %6222 = add i32 %6221, %6220
  %6223 = icmp eq i32 %6222, 2
  %6224 = zext i1 %6223 to i8
  %6225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6224, i8* %6225, align 1
  store %struct.Memory* %loadMem_4a0626, %struct.Memory** %MEMORY
  %loadMem_4a0628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6227 = getelementptr inbounds %struct.GPR, %struct.GPR* %6226, i32 0, i32 33
  %6228 = getelementptr inbounds %struct.Reg, %struct.Reg* %6227, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6228 to i64*
  %6229 = load i64, i64* %PC.i152
  %6230 = add i64 %6229, 233
  %6231 = load i64, i64* %PC.i152
  %6232 = add i64 %6231, 6
  %6233 = load i64, i64* %PC.i152
  %6234 = add i64 %6233, 6
  store i64 %6234, i64* %PC.i152
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6236 = load i8, i8* %6235, align 1
  %6237 = icmp ne i8 %6236, 0
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6239 = load i8, i8* %6238, align 1
  %6240 = icmp ne i8 %6239, 0
  %6241 = xor i1 %6237, %6240
  %6242 = xor i1 %6241, true
  %6243 = zext i1 %6242 to i8
  store i8 %6243, i8* %BRANCH_TAKEN, align 1
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6245 = select i1 %6241, i64 %6232, i64 %6230
  store i64 %6245, i64* %6244, align 8
  store %struct.Memory* %loadMem_4a0628, %struct.Memory** %MEMORY
  %loadBr_4a0628 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0628 = icmp eq i8 %loadBr_4a0628, 1
  br i1 %cmpBr_4a0628, label %block_.L_4a0711, label %block_4a062e

block_4a062e:                                     ; preds = %routine_idivl__esi.exit158
  %loadMem_4a062e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6247 = getelementptr inbounds %struct.GPR, %struct.GPR* %6246, i32 0, i32 33
  %6248 = getelementptr inbounds %struct.Reg, %struct.Reg* %6247, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6248 to i64*
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 15
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %6251 to i64*
  %6252 = load i64, i64* %RBP.i151
  %6253 = sub i64 %6252, 24
  %6254 = load i64, i64* %PC.i150
  %6255 = add i64 %6254, 7
  store i64 %6255, i64* %PC.i150
  %6256 = inttoptr i64 %6253 to i32*
  store i32 0, i32* %6256
  store %struct.Memory* %loadMem_4a062e, %struct.Memory** %MEMORY
  br label %block_.L_4a0635

block_.L_4a0635:                                  ; preds = %block_.L_4a06f0, %block_4a062e
  %loadMem_4a0635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6258 = getelementptr inbounds %struct.GPR, %struct.GPR* %6257, i32 0, i32 33
  %6259 = getelementptr inbounds %struct.Reg, %struct.Reg* %6258, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6259 to i64*
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 1
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6262 to i64*
  %6263 = load i64, i64* %PC.i148
  %6264 = add i64 %6263, 5
  store i64 %6264, i64* %PC.i148
  store i64 16, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_4a0635, %struct.Memory** %MEMORY
  %loadMem_4a063a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6266 = getelementptr inbounds %struct.GPR, %struct.GPR* %6265, i32 0, i32 33
  %6267 = getelementptr inbounds %struct.Reg, %struct.Reg* %6266, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6267 to i64*
  %6268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6269 = getelementptr inbounds %struct.GPR, %struct.GPR* %6268, i32 0, i32 5
  %6270 = getelementptr inbounds %struct.Reg, %struct.Reg* %6269, i32 0, i32 0
  %RCX.i146 = bitcast %union.anon* %6270 to i64*
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6272 = getelementptr inbounds %struct.GPR, %struct.GPR* %6271, i32 0, i32 15
  %6273 = getelementptr inbounds %struct.Reg, %struct.Reg* %6272, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6273 to i64*
  %6274 = load i64, i64* %RBP.i147
  %6275 = sub i64 %6274, 24
  %6276 = load i64, i64* %PC.i145
  %6277 = add i64 %6276, 3
  store i64 %6277, i64* %PC.i145
  %6278 = inttoptr i64 %6275 to i32*
  %6279 = load i32, i32* %6278
  %6280 = zext i32 %6279 to i64
  store i64 %6280, i64* %RCX.i146, align 8
  store %struct.Memory* %loadMem_4a063a, %struct.Memory** %MEMORY
  %loadMem_4a063d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6282 = getelementptr inbounds %struct.GPR, %struct.GPR* %6281, i32 0, i32 33
  %6283 = getelementptr inbounds %struct.Reg, %struct.Reg* %6282, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6283 to i64*
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6285 = getelementptr inbounds %struct.GPR, %struct.GPR* %6284, i32 0, i32 7
  %6286 = getelementptr inbounds %struct.Reg, %struct.Reg* %6285, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %6286 to i64*
  %6287 = load i64, i64* %PC.i143
  %6288 = add i64 %6287, 8
  store i64 %6288, i64* %PC.i143
  %6289 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6289, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_4a063d, %struct.Memory** %MEMORY
  %loadMem_4a0645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 33
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6292 to i64*
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 7
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %6295 to i64*
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6297 = getelementptr inbounds %struct.GPR, %struct.GPR* %6296, i32 0, i32 9
  %6298 = getelementptr inbounds %struct.Reg, %struct.Reg* %6297, i32 0, i32 0
  %RSI.i142 = bitcast %union.anon* %6298 to i64*
  %6299 = load i64, i64* %RDX.i141
  %6300 = add i64 %6299, 52
  %6301 = load i64, i64* %PC.i140
  %6302 = add i64 %6301, 3
  store i64 %6302, i64* %PC.i140
  %6303 = inttoptr i64 %6300 to i32*
  %6304 = load i32, i32* %6303
  %6305 = zext i32 %6304 to i64
  store i64 %6305, i64* %RSI.i142, align 8
  store %struct.Memory* %loadMem_4a0645, %struct.Memory** %MEMORY
  %loadMem_4a0648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6307 = getelementptr inbounds %struct.GPR, %struct.GPR* %6306, i32 0, i32 33
  %6308 = getelementptr inbounds %struct.Reg, %struct.Reg* %6307, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %6308 to i64*
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6310 = getelementptr inbounds %struct.GPR, %struct.GPR* %6309, i32 0, i32 1
  %6311 = getelementptr inbounds %struct.Reg, %struct.Reg* %6310, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %6311 to i32*
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6313 = getelementptr inbounds %struct.GPR, %struct.GPR* %6312, i32 0, i32 15
  %6314 = getelementptr inbounds %struct.Reg, %struct.Reg* %6313, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %6314 to i64*
  %6315 = load i64, i64* %RBP.i139
  %6316 = sub i64 %6315, 172
  %6317 = load i32, i32* %EAX.i138
  %6318 = zext i32 %6317 to i64
  %6319 = load i64, i64* %PC.i137
  %6320 = add i64 %6319, 6
  store i64 %6320, i64* %PC.i137
  %6321 = inttoptr i64 %6316 to i32*
  store i32 %6317, i32* %6321
  store %struct.Memory* %loadMem_4a0648, %struct.Memory** %MEMORY
  %loadMem_4a064e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 33
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6324 to i64*
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 9
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %ESI.i135 = bitcast %union.anon* %6327 to i32*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 1
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %RAX.i136 = bitcast %union.anon* %6330 to i64*
  %6331 = load i32, i32* %ESI.i135
  %6332 = zext i32 %6331 to i64
  %6333 = load i64, i64* %PC.i134
  %6334 = add i64 %6333, 2
  store i64 %6334, i64* %PC.i134
  %6335 = and i64 %6332, 4294967295
  store i64 %6335, i64* %RAX.i136, align 8
  store %struct.Memory* %loadMem_4a064e, %struct.Memory** %MEMORY
  %loadMem_4a0650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6337 = getelementptr inbounds %struct.GPR, %struct.GPR* %6336, i32 0, i32 33
  %6338 = getelementptr inbounds %struct.Reg, %struct.Reg* %6337, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %6338 to i64*
  %6339 = load i64, i64* %PC.i133
  %6340 = add i64 %6339, 1
  store i64 %6340, i64* %PC.i133
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6343 = bitcast %union.anon* %6342 to i32*
  %6344 = load i32, i32* %6343, align 8
  %6345 = sext i32 %6344 to i64
  %6346 = lshr i64 %6345, 32
  store i64 %6346, i64* %6341, align 8
  store %struct.Memory* %loadMem_4a0650, %struct.Memory** %MEMORY
  %loadMem_4a0651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6348 = getelementptr inbounds %struct.GPR, %struct.GPR* %6347, i32 0, i32 33
  %6349 = getelementptr inbounds %struct.Reg, %struct.Reg* %6348, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %6349 to i64*
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6351 = getelementptr inbounds %struct.GPR, %struct.GPR* %6350, i32 0, i32 9
  %6352 = getelementptr inbounds %struct.Reg, %struct.Reg* %6351, i32 0, i32 0
  %RSI.i131 = bitcast %union.anon* %6352 to i64*
  %6353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6354 = getelementptr inbounds %struct.GPR, %struct.GPR* %6353, i32 0, i32 15
  %6355 = getelementptr inbounds %struct.Reg, %struct.Reg* %6354, i32 0, i32 0
  %RBP.i132 = bitcast %union.anon* %6355 to i64*
  %6356 = load i64, i64* %RBP.i132
  %6357 = sub i64 %6356, 172
  %6358 = load i64, i64* %PC.i130
  %6359 = add i64 %6358, 6
  store i64 %6359, i64* %PC.i130
  %6360 = inttoptr i64 %6357 to i32*
  %6361 = load i32, i32* %6360
  %6362 = zext i32 %6361 to i64
  store i64 %6362, i64* %RSI.i131, align 8
  store %struct.Memory* %loadMem_4a0651, %struct.Memory** %MEMORY
  %loadMem_4a0657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6364 = getelementptr inbounds %struct.GPR, %struct.GPR* %6363, i32 0, i32 33
  %6365 = getelementptr inbounds %struct.Reg, %struct.Reg* %6364, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %6365 to i64*
  %6366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6367 = getelementptr inbounds %struct.GPR, %struct.GPR* %6366, i32 0, i32 9
  %6368 = getelementptr inbounds %struct.Reg, %struct.Reg* %6367, i32 0, i32 0
  %ESI.i126 = bitcast %union.anon* %6368 to i32*
  %6369 = load i32, i32* %ESI.i126
  %6370 = zext i32 %6369 to i64
  %6371 = load i64, i64* %PC.i125
  %6372 = add i64 %6371, 2
  store i64 %6372, i64* %PC.i125
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %6374 = bitcast %union.anon* %6373 to i32*
  %6375 = load i32, i32* %6374, align 8
  %6376 = zext i32 %6375 to i64
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %6378 = bitcast %union.anon* %6377 to i32*
  %6379 = load i32, i32* %6378, align 8
  %6380 = zext i32 %6379 to i64
  %6381 = shl i64 %6370, 32
  %6382 = ashr exact i64 %6381, 32
  %6383 = shl i64 %6380, 32
  %6384 = or i64 %6383, %6376
  %6385 = sdiv i64 %6384, %6382
  %6386 = shl i64 %6385, 32
  %6387 = ashr exact i64 %6386, 32
  %6388 = icmp eq i64 %6385, %6387
  br i1 %6388, label %6393, label %6389

; <label>:6389:                                   ; preds = %block_.L_4a0635
  %6390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6391 = load i64, i64* %6390, align 8
  %6392 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %6391, %struct.Memory* %loadMem_4a0657)
  br label %routine_idivl__esi.exit

; <label>:6393:                                   ; preds = %block_.L_4a0635
  %6394 = srem i64 %6384, %6382
  %6395 = getelementptr inbounds %union.anon, %union.anon* %6373, i64 0, i32 0
  %6396 = and i64 %6385, 4294967295
  store i64 %6396, i64* %6395, align 8
  %6397 = getelementptr inbounds %union.anon, %union.anon* %6377, i64 0, i32 0
  %6398 = and i64 %6394, 4294967295
  store i64 %6398, i64* %6397, align 8
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6399, align 1
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %6400, align 1
  %6401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6401, align 1
  %6402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6402, align 1
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %6403, align 1
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6404, align 1
  br label %routine_idivl__esi.exit

routine_idivl__esi.exit:                          ; preds = %6389, %6393
  %6405 = phi %struct.Memory* [ %6392, %6389 ], [ %loadMem_4a0657, %6393 ]
  store %struct.Memory* %6405, %struct.Memory** %MEMORY
  %loadMem_4a0659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6407 = getelementptr inbounds %struct.GPR, %struct.GPR* %6406, i32 0, i32 33
  %6408 = getelementptr inbounds %struct.Reg, %struct.Reg* %6407, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6408 to i64*
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 1
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %EAX.i123 = bitcast %union.anon* %6411 to i32*
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6413 = getelementptr inbounds %struct.GPR, %struct.GPR* %6412, i32 0, i32 5
  %6414 = getelementptr inbounds %struct.Reg, %struct.Reg* %6413, i32 0, i32 0
  %ECX.i124 = bitcast %union.anon* %6414 to i32*
  %6415 = load i32, i32* %ECX.i124
  %6416 = zext i32 %6415 to i64
  %6417 = load i32, i32* %EAX.i123
  %6418 = zext i32 %6417 to i64
  %6419 = load i64, i64* %PC.i122
  %6420 = add i64 %6419, 2
  store i64 %6420, i64* %PC.i122
  %6421 = sub i32 %6415, %6417
  %6422 = icmp ult i32 %6415, %6417
  %6423 = zext i1 %6422 to i8
  %6424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6423, i8* %6424, align 1
  %6425 = and i32 %6421, 255
  %6426 = call i32 @llvm.ctpop.i32(i32 %6425)
  %6427 = trunc i32 %6426 to i8
  %6428 = and i8 %6427, 1
  %6429 = xor i8 %6428, 1
  %6430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6429, i8* %6430, align 1
  %6431 = xor i64 %6418, %6416
  %6432 = trunc i64 %6431 to i32
  %6433 = xor i32 %6432, %6421
  %6434 = lshr i32 %6433, 4
  %6435 = trunc i32 %6434 to i8
  %6436 = and i8 %6435, 1
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6436, i8* %6437, align 1
  %6438 = icmp eq i32 %6421, 0
  %6439 = zext i1 %6438 to i8
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6439, i8* %6440, align 1
  %6441 = lshr i32 %6421, 31
  %6442 = trunc i32 %6441 to i8
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6442, i8* %6443, align 1
  %6444 = lshr i32 %6415, 31
  %6445 = lshr i32 %6417, 31
  %6446 = xor i32 %6445, %6444
  %6447 = xor i32 %6441, %6444
  %6448 = add i32 %6447, %6446
  %6449 = icmp eq i32 %6448, 2
  %6450 = zext i1 %6449 to i8
  %6451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6450, i8* %6451, align 1
  store %struct.Memory* %loadMem_4a0659, %struct.Memory** %MEMORY
  %loadMem_4a065b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 33
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6454 to i64*
  %6455 = load i64, i64* %PC.i121
  %6456 = add i64 %6455, 163
  %6457 = load i64, i64* %PC.i121
  %6458 = add i64 %6457, 6
  %6459 = load i64, i64* %PC.i121
  %6460 = add i64 %6459, 6
  store i64 %6460, i64* %PC.i121
  %6461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6462 = load i8, i8* %6461, align 1
  %6463 = icmp ne i8 %6462, 0
  %6464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6465 = load i8, i8* %6464, align 1
  %6466 = icmp ne i8 %6465, 0
  %6467 = xor i1 %6463, %6466
  %6468 = xor i1 %6467, true
  %6469 = zext i1 %6468 to i8
  store i8 %6469, i8* %BRANCH_TAKEN, align 1
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6471 = select i1 %6467, i64 %6458, i64 %6456
  store i64 %6471, i64* %6470, align 8
  store %struct.Memory* %loadMem_4a065b, %struct.Memory** %MEMORY
  %loadBr_4a065b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a065b = icmp eq i8 %loadBr_4a065b, 1
  br i1 %cmpBr_4a065b, label %block_.L_4a06fe, label %block_4a0661

block_4a0661:                                     ; preds = %routine_idivl__esi.exit
  %loadMem_4a0661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6473 = getelementptr inbounds %struct.GPR, %struct.GPR* %6472, i32 0, i32 33
  %6474 = getelementptr inbounds %struct.Reg, %struct.Reg* %6473, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6474 to i64*
  %6475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6476 = getelementptr inbounds %struct.GPR, %struct.GPR* %6475, i32 0, i32 1
  %6477 = getelementptr inbounds %struct.Reg, %struct.Reg* %6476, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %6477 to i64*
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 15
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %6480 to i64*
  %6481 = load i64, i64* %RBP.i120
  %6482 = sub i64 %6481, 16
  %6483 = load i64, i64* %PC.i118
  %6484 = add i64 %6483, 4
  store i64 %6484, i64* %PC.i118
  %6485 = inttoptr i64 %6482 to i64*
  %6486 = load i64, i64* %6485
  store i64 %6486, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_4a0661, %struct.Memory** %MEMORY
  %loadMem_4a0665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6488 = getelementptr inbounds %struct.GPR, %struct.GPR* %6487, i32 0, i32 33
  %6489 = getelementptr inbounds %struct.Reg, %struct.Reg* %6488, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6489 to i64*
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6491 = getelementptr inbounds %struct.GPR, %struct.GPR* %6490, i32 0, i32 1
  %6492 = getelementptr inbounds %struct.Reg, %struct.Reg* %6491, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %6492 to i64*
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 5
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %6495 to i64*
  %6496 = load i64, i64* %RAX.i116
  %6497 = add i64 %6496, 8
  %6498 = load i64, i64* %PC.i115
  %6499 = add i64 %6498, 4
  store i64 %6499, i64* %PC.i115
  %6500 = inttoptr i64 %6497 to i8*
  %6501 = load i8, i8* %6500
  %6502 = zext i8 %6501 to i64
  store i64 %6502, i64* %RCX.i117, align 8
  store %struct.Memory* %loadMem_4a0665, %struct.Memory** %MEMORY
  %loadMem_4a0669 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 33
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6505 to i64*
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 5
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %RCX.i114 = bitcast %union.anon* %6508 to i64*
  %6509 = load i64, i64* %RCX.i114
  %6510 = load i64, i64* %PC.i113
  %6511 = add i64 %6510, 2
  store i64 %6511, i64* %PC.i113
  %6512 = trunc i64 %6509 to i32
  %6513 = shl i32 %6512, 1
  %6514 = icmp slt i32 %6512, 0
  %6515 = icmp slt i32 %6513, 0
  %6516 = xor i1 %6514, %6515
  %6517 = zext i32 %6513 to i64
  store i64 %6517, i64* %RCX.i114, align 8
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6519 = zext i1 %6514 to i8
  store i8 %6519, i8* %6518, align 1
  %6520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6521 = and i32 %6513, 254
  %6522 = call i32 @llvm.ctpop.i32(i32 %6521)
  %6523 = trunc i32 %6522 to i8
  %6524 = and i8 %6523, 1
  %6525 = xor i8 %6524, 1
  store i8 %6525, i8* %6520, align 1
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6526, align 1
  %6527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6528 = icmp eq i32 %6513, 0
  %6529 = zext i1 %6528 to i8
  store i8 %6529, i8* %6527, align 1
  %6530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6531 = lshr i32 %6513, 31
  %6532 = trunc i32 %6531 to i8
  store i8 %6532, i8* %6530, align 1
  %6533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6534 = zext i1 %6516 to i8
  store i8 %6534, i8* %6533, align 1
  store %struct.Memory* %loadMem_4a0669, %struct.Memory** %MEMORY
  %loadMem_4a066c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6536 = getelementptr inbounds %struct.GPR, %struct.GPR* %6535, i32 0, i32 33
  %6537 = getelementptr inbounds %struct.Reg, %struct.Reg* %6536, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6537 to i64*
  %6538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6539 = getelementptr inbounds %struct.GPR, %struct.GPR* %6538, i32 0, i32 5
  %6540 = getelementptr inbounds %struct.Reg, %struct.Reg* %6539, i32 0, i32 0
  %6541 = bitcast %union.anon* %6540 to %struct.anon.2*
  %CL.i111 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6541, i32 0, i32 0
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 7
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %6545 = bitcast %union.anon* %6544 to %struct.anon.2*
  %DL.i112 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6545, i32 0, i32 0
  %6546 = load i8, i8* %CL.i111
  %6547 = zext i8 %6546 to i64
  %6548 = load i64, i64* %PC.i110
  %6549 = add i64 %6548, 2
  store i64 %6549, i64* %PC.i110
  store i8 %6546, i8* %DL.i112, align 1
  store %struct.Memory* %loadMem_4a066c, %struct.Memory** %MEMORY
  %loadMem_4a066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6551 = getelementptr inbounds %struct.GPR, %struct.GPR* %6550, i32 0, i32 33
  %6552 = getelementptr inbounds %struct.Reg, %struct.Reg* %6551, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6552 to i64*
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 7
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %6556 = bitcast %union.anon* %6555 to %struct.anon.2*
  %DL.i108 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6556, i32 0, i32 0
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6558 = getelementptr inbounds %struct.GPR, %struct.GPR* %6557, i32 0, i32 1
  %6559 = getelementptr inbounds %struct.Reg, %struct.Reg* %6558, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %6559 to i64*
  %6560 = load i64, i64* %RAX.i109
  %6561 = add i64 %6560, 8
  %6562 = load i8, i8* %DL.i108
  %6563 = zext i8 %6562 to i64
  %6564 = load i64, i64* %PC.i107
  %6565 = add i64 %6564, 3
  store i64 %6565, i64* %PC.i107
  %6566 = inttoptr i64 %6561 to i8*
  store i8 %6562, i8* %6566
  store %struct.Memory* %loadMem_4a066e, %struct.Memory** %MEMORY
  %loadMem_4a0671 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6568 = getelementptr inbounds %struct.GPR, %struct.GPR* %6567, i32 0, i32 33
  %6569 = getelementptr inbounds %struct.Reg, %struct.Reg* %6568, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6569 to i64*
  %6570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6571 = getelementptr inbounds %struct.GPR, %struct.GPR* %6570, i32 0, i32 1
  %6572 = getelementptr inbounds %struct.Reg, %struct.Reg* %6571, i32 0, i32 0
  %RAX.i105 = bitcast %union.anon* %6572 to i64*
  %6573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6574 = getelementptr inbounds %struct.GPR, %struct.GPR* %6573, i32 0, i32 15
  %6575 = getelementptr inbounds %struct.Reg, %struct.Reg* %6574, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %6575 to i64*
  %6576 = load i64, i64* %RBP.i106
  %6577 = sub i64 %6576, 8
  %6578 = load i64, i64* %PC.i104
  %6579 = add i64 %6578, 4
  store i64 %6579, i64* %PC.i104
  %6580 = inttoptr i64 %6577 to i64*
  %6581 = load i64, i64* %6580
  store i64 %6581, i64* %RAX.i105, align 8
  store %struct.Memory* %loadMem_4a0671, %struct.Memory** %MEMORY
  %loadMem_4a0675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6583 = getelementptr inbounds %struct.GPR, %struct.GPR* %6582, i32 0, i32 33
  %6584 = getelementptr inbounds %struct.Reg, %struct.Reg* %6583, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %6584 to i64*
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6586 = getelementptr inbounds %struct.GPR, %struct.GPR* %6585, i32 0, i32 9
  %6587 = getelementptr inbounds %struct.Reg, %struct.Reg* %6586, i32 0, i32 0
  %RSI.i102 = bitcast %union.anon* %6587 to i64*
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6589 = getelementptr inbounds %struct.GPR, %struct.GPR* %6588, i32 0, i32 15
  %6590 = getelementptr inbounds %struct.Reg, %struct.Reg* %6589, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %6590 to i64*
  %6591 = load i64, i64* %RBP.i103
  %6592 = sub i64 %6591, 20
  %6593 = load i64, i64* %PC.i101
  %6594 = add i64 %6593, 4
  store i64 %6594, i64* %PC.i101
  %6595 = inttoptr i64 %6592 to i32*
  %6596 = load i32, i32* %6595
  %6597 = sext i32 %6596 to i64
  store i64 %6597, i64* %RSI.i102, align 8
  store %struct.Memory* %loadMem_4a0675, %struct.Memory** %MEMORY
  %loadMem_4a0679 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 33
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %6600 to i64*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 1
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %6603 to i64*
  %6604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6605 = getelementptr inbounds %struct.GPR, %struct.GPR* %6604, i32 0, i32 9
  %6606 = getelementptr inbounds %struct.Reg, %struct.Reg* %6605, i32 0, i32 0
  %RSI.i100 = bitcast %union.anon* %6606 to i64*
  %6607 = load i64, i64* %RAX.i99
  %6608 = load i64, i64* %RSI.i100
  %6609 = mul i64 %6608, 8
  %6610 = add i64 %6609, %6607
  %6611 = load i64, i64* %PC.i98
  %6612 = add i64 %6611, 4
  store i64 %6612, i64* %PC.i98
  %6613 = inttoptr i64 %6610 to i64*
  %6614 = load i64, i64* %6613
  store i64 %6614, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_4a0679, %struct.Memory** %MEMORY
  %loadMem_4a067d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6616 = getelementptr inbounds %struct.GPR, %struct.GPR* %6615, i32 0, i32 33
  %6617 = getelementptr inbounds %struct.Reg, %struct.Reg* %6616, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6617 to i64*
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6619 = getelementptr inbounds %struct.GPR, %struct.GPR* %6618, i32 0, i32 9
  %6620 = getelementptr inbounds %struct.Reg, %struct.Reg* %6619, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %6620 to i64*
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6622 = getelementptr inbounds %struct.GPR, %struct.GPR* %6621, i32 0, i32 15
  %6623 = getelementptr inbounds %struct.Reg, %struct.Reg* %6622, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %6623 to i64*
  %6624 = load i64, i64* %RBP.i97
  %6625 = sub i64 %6624, 24
  %6626 = load i64, i64* %PC.i95
  %6627 = add i64 %6626, 4
  store i64 %6627, i64* %PC.i95
  %6628 = inttoptr i64 %6625 to i32*
  %6629 = load i32, i32* %6628
  %6630 = sext i32 %6629 to i64
  store i64 %6630, i64* %RSI.i96, align 8
  store %struct.Memory* %loadMem_4a067d, %struct.Memory** %MEMORY
  %loadMem_4a0681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6632 = getelementptr inbounds %struct.GPR, %struct.GPR* %6631, i32 0, i32 33
  %6633 = getelementptr inbounds %struct.Reg, %struct.Reg* %6632, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6633 to i64*
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6635 = getelementptr inbounds %struct.GPR, %struct.GPR* %6634, i32 0, i32 1
  %6636 = getelementptr inbounds %struct.Reg, %struct.Reg* %6635, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %6636 to i64*
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6638 = getelementptr inbounds %struct.GPR, %struct.GPR* %6637, i32 0, i32 9
  %6639 = getelementptr inbounds %struct.Reg, %struct.Reg* %6638, i32 0, i32 0
  %RSI.i94 = bitcast %union.anon* %6639 to i64*
  %6640 = load i64, i64* %RAX.i93
  %6641 = load i64, i64* %RSI.i94
  %6642 = add i64 %6641, %6640
  %6643 = load i64, i64* %PC.i92
  %6644 = add i64 %6643, 4
  store i64 %6644, i64* %PC.i92
  %6645 = inttoptr i64 %6642 to i8*
  %6646 = load i8, i8* %6645
  %6647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6647, align 1
  %6648 = zext i8 %6646 to i32
  %6649 = call i32 @llvm.ctpop.i32(i32 %6648)
  %6650 = trunc i32 %6649 to i8
  %6651 = and i8 %6650, 1
  %6652 = xor i8 %6651, 1
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6652, i8* %6653, align 1
  %6654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6654, align 1
  %6655 = icmp eq i8 %6646, 0
  %6656 = zext i1 %6655 to i8
  %6657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6656, i8* %6657, align 1
  %6658 = lshr i8 %6646, 7
  %6659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6658, i8* %6659, align 1
  %6660 = lshr i8 %6646, 7
  %6661 = xor i8 %6658, %6660
  %6662 = add i8 %6661, %6660
  %6663 = icmp eq i8 %6662, 2
  %6664 = zext i1 %6663 to i8
  %6665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6664, i8* %6665, align 1
  store %struct.Memory* %loadMem_4a0681, %struct.Memory** %MEMORY
  %loadMem_4a0685 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 33
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %PC.i91
  %6670 = add i64 %6669, 22
  %6671 = load i64, i64* %PC.i91
  %6672 = add i64 %6671, 6
  %6673 = load i64, i64* %PC.i91
  %6674 = add i64 %6673, 6
  store i64 %6674, i64* %PC.i91
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6676 = load i8, i8* %6675, align 1
  store i8 %6676, i8* %BRANCH_TAKEN, align 1
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6678 = icmp ne i8 %6676, 0
  %6679 = select i1 %6678, i64 %6670, i64 %6672
  store i64 %6679, i64* %6677, align 8
  store %struct.Memory* %loadMem_4a0685, %struct.Memory** %MEMORY
  %loadBr_4a0685 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a0685 = icmp eq i8 %loadBr_4a0685, 1
  br i1 %cmpBr_4a0685, label %block_.L_4a069b, label %block_4a068b

block_4a068b:                                     ; preds = %block_4a0661
  %loadMem_4a068b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6681 = getelementptr inbounds %struct.GPR, %struct.GPR* %6680, i32 0, i32 33
  %6682 = getelementptr inbounds %struct.Reg, %struct.Reg* %6681, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %6682 to i64*
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 1
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %RAX.i89 = bitcast %union.anon* %6685 to i64*
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 15
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %6688 to i64*
  %6689 = load i64, i64* %RBP.i90
  %6690 = sub i64 %6689, 16
  %6691 = load i64, i64* %PC.i88
  %6692 = add i64 %6691, 4
  store i64 %6692, i64* %PC.i88
  %6693 = inttoptr i64 %6690 to i64*
  %6694 = load i64, i64* %6693
  store i64 %6694, i64* %RAX.i89, align 8
  store %struct.Memory* %loadMem_4a068b, %struct.Memory** %MEMORY
  %loadMem_4a068f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6696 = getelementptr inbounds %struct.GPR, %struct.GPR* %6695, i32 0, i32 33
  %6697 = getelementptr inbounds %struct.Reg, %struct.Reg* %6696, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %6697 to i64*
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 1
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %6700 to i64*
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 5
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %6703 to i64*
  %6704 = load i64, i64* %RAX.i86
  %6705 = add i64 %6704, 8
  %6706 = load i64, i64* %PC.i85
  %6707 = add i64 %6706, 4
  store i64 %6707, i64* %PC.i85
  %6708 = inttoptr i64 %6705 to i8*
  %6709 = load i8, i8* %6708
  %6710 = zext i8 %6709 to i64
  store i64 %6710, i64* %RCX.i87, align 8
  store %struct.Memory* %loadMem_4a068f, %struct.Memory** %MEMORY
  %loadMem_4a0693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6712 = getelementptr inbounds %struct.GPR, %struct.GPR* %6711, i32 0, i32 33
  %6713 = getelementptr inbounds %struct.Reg, %struct.Reg* %6712, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6713 to i64*
  %6714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6715 = getelementptr inbounds %struct.GPR, %struct.GPR* %6714, i32 0, i32 5
  %6716 = getelementptr inbounds %struct.Reg, %struct.Reg* %6715, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %6716 to i64*
  %6717 = load i64, i64* %RCX.i84
  %6718 = load i64, i64* %PC.i83
  %6719 = add i64 %6718, 3
  store i64 %6719, i64* %PC.i83
  %6720 = or i64 1, %6717
  %6721 = trunc i64 %6720 to i32
  %6722 = and i64 %6720, 4294967295
  store i64 %6722, i64* %RCX.i84, align 8
  %6723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6723, align 1
  %6724 = and i32 %6721, 255
  %6725 = call i32 @llvm.ctpop.i32(i32 %6724)
  %6726 = trunc i32 %6725 to i8
  %6727 = and i8 %6726, 1
  %6728 = xor i8 %6727, 1
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6728, i8* %6729, align 1
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6730, align 1
  %6731 = lshr i32 %6721, 31
  %6732 = trunc i32 %6731 to i8
  %6733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6732, i8* %6733, align 1
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6734, align 1
  %6735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6735, align 1
  store %struct.Memory* %loadMem_4a0693, %struct.Memory** %MEMORY
  %loadMem_4a0696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6737 = getelementptr inbounds %struct.GPR, %struct.GPR* %6736, i32 0, i32 33
  %6738 = getelementptr inbounds %struct.Reg, %struct.Reg* %6737, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6738 to i64*
  %6739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6740 = getelementptr inbounds %struct.GPR, %struct.GPR* %6739, i32 0, i32 5
  %6741 = getelementptr inbounds %struct.Reg, %struct.Reg* %6740, i32 0, i32 0
  %6742 = bitcast %union.anon* %6741 to %struct.anon.2*
  %CL.i81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6742, i32 0, i32 0
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6744 = getelementptr inbounds %struct.GPR, %struct.GPR* %6743, i32 0, i32 7
  %6745 = getelementptr inbounds %struct.Reg, %struct.Reg* %6744, i32 0, i32 0
  %6746 = bitcast %union.anon* %6745 to %struct.anon.2*
  %DL.i82 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6746, i32 0, i32 0
  %6747 = load i8, i8* %CL.i81
  %6748 = zext i8 %6747 to i64
  %6749 = load i64, i64* %PC.i80
  %6750 = add i64 %6749, 2
  store i64 %6750, i64* %PC.i80
  store i8 %6747, i8* %DL.i82, align 1
  store %struct.Memory* %loadMem_4a0696, %struct.Memory** %MEMORY
  %loadMem_4a0698 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 33
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 7
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %6757 = bitcast %union.anon* %6756 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6757, i32 0, i32 0
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 1
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %6760 to i64*
  %6761 = load i64, i64* %RAX.i79
  %6762 = add i64 %6761, 8
  %6763 = load i8, i8* %DL.i
  %6764 = zext i8 %6763 to i64
  %6765 = load i64, i64* %PC.i78
  %6766 = add i64 %6765, 3
  store i64 %6766, i64* %PC.i78
  %6767 = inttoptr i64 %6762 to i8*
  store i8 %6763, i8* %6767
  store %struct.Memory* %loadMem_4a0698, %struct.Memory** %MEMORY
  br label %block_.L_4a069b

block_.L_4a069b:                                  ; preds = %block_4a068b, %block_4a0661
  %loadMem_4a069b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6769 = getelementptr inbounds %struct.GPR, %struct.GPR* %6768, i32 0, i32 33
  %6770 = getelementptr inbounds %struct.Reg, %struct.Reg* %6769, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6770 to i64*
  %6771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6772 = getelementptr inbounds %struct.GPR, %struct.GPR* %6771, i32 0, i32 1
  %6773 = getelementptr inbounds %struct.Reg, %struct.Reg* %6772, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %6773 to i64*
  %6774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6775 = getelementptr inbounds %struct.GPR, %struct.GPR* %6774, i32 0, i32 15
  %6776 = getelementptr inbounds %struct.Reg, %struct.Reg* %6775, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %6776 to i64*
  %6777 = load i64, i64* %RBP.i77
  %6778 = sub i64 %6777, 16
  %6779 = load i64, i64* %PC.i75
  %6780 = add i64 %6779, 4
  store i64 %6780, i64* %PC.i75
  %6781 = inttoptr i64 %6778 to i64*
  %6782 = load i64, i64* %6781
  store i64 %6782, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_4a069b, %struct.Memory** %MEMORY
  %loadMem_4a069f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6784 = getelementptr inbounds %struct.GPR, %struct.GPR* %6783, i32 0, i32 33
  %6785 = getelementptr inbounds %struct.Reg, %struct.Reg* %6784, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6785 to i64*
  %6786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6787 = getelementptr inbounds %struct.GPR, %struct.GPR* %6786, i32 0, i32 1
  %6788 = getelementptr inbounds %struct.Reg, %struct.Reg* %6787, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %6788 to i64*
  %6789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6790 = getelementptr inbounds %struct.GPR, %struct.GPR* %6789, i32 0, i32 5
  %6791 = getelementptr inbounds %struct.Reg, %struct.Reg* %6790, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %6791 to i64*
  %6792 = load i64, i64* %RAX.i73
  %6793 = add i64 %6792, 4
  %6794 = load i64, i64* %PC.i72
  %6795 = add i64 %6794, 3
  store i64 %6795, i64* %PC.i72
  %6796 = inttoptr i64 %6793 to i32*
  %6797 = load i32, i32* %6796
  %6798 = zext i32 %6797 to i64
  store i64 %6798, i64* %RCX.i74, align 8
  store %struct.Memory* %loadMem_4a069f, %struct.Memory** %MEMORY
  %loadMem_4a06a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6800 = getelementptr inbounds %struct.GPR, %struct.GPR* %6799, i32 0, i32 33
  %6801 = getelementptr inbounds %struct.Reg, %struct.Reg* %6800, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %6801 to i64*
  %6802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6803 = getelementptr inbounds %struct.GPR, %struct.GPR* %6802, i32 0, i32 5
  %6804 = getelementptr inbounds %struct.Reg, %struct.Reg* %6803, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6804 to i64*
  %6805 = load i64, i64* %RCX.i
  %6806 = load i64, i64* %PC.i71
  %6807 = add i64 %6806, 3
  store i64 %6807, i64* %PC.i71
  %6808 = trunc i64 %6805 to i32
  %6809 = add i32 -1, %6808
  %6810 = zext i32 %6809 to i64
  store i64 %6810, i64* %RCX.i, align 8
  %6811 = icmp ult i32 %6809, %6808
  %6812 = icmp ult i32 %6809, -1
  %6813 = or i1 %6811, %6812
  %6814 = zext i1 %6813 to i8
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6814, i8* %6815, align 1
  %6816 = and i32 %6809, 255
  %6817 = call i32 @llvm.ctpop.i32(i32 %6816)
  %6818 = trunc i32 %6817 to i8
  %6819 = and i8 %6818, 1
  %6820 = xor i8 %6819, 1
  %6821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6820, i8* %6821, align 1
  %6822 = xor i64 -1, %6805
  %6823 = trunc i64 %6822 to i32
  %6824 = xor i32 %6823, %6809
  %6825 = lshr i32 %6824, 4
  %6826 = trunc i32 %6825 to i8
  %6827 = and i8 %6826, 1
  %6828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6827, i8* %6828, align 1
  %6829 = icmp eq i32 %6809, 0
  %6830 = zext i1 %6829 to i8
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6830, i8* %6831, align 1
  %6832 = lshr i32 %6809, 31
  %6833 = trunc i32 %6832 to i8
  %6834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6833, i8* %6834, align 1
  %6835 = lshr i32 %6808, 31
  %6836 = xor i32 %6832, %6835
  %6837 = xor i32 %6832, 1
  %6838 = add i32 %6836, %6837
  %6839 = icmp eq i32 %6838, 2
  %6840 = zext i1 %6839 to i8
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6840, i8* %6841, align 1
  store %struct.Memory* %loadMem_4a06a2, %struct.Memory** %MEMORY
  %loadMem_4a06a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 5
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6847 to i32*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 1
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %RAX.i70
  %6852 = add i64 %6851, 4
  %6853 = load i32, i32* %ECX.i
  %6854 = zext i32 %6853 to i64
  %6855 = load i64, i64* %PC.i69
  %6856 = add i64 %6855, 3
  store i64 %6856, i64* %PC.i69
  %6857 = inttoptr i64 %6852 to i32*
  store i32 %6853, i32* %6857
  store %struct.Memory* %loadMem_4a06a5, %struct.Memory** %MEMORY
  %loadMem_4a06a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 33
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %6860 to i64*
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 1
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %6863 to i64*
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 15
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %6866 to i64*
  %6867 = load i64, i64* %RBP.i68
  %6868 = sub i64 %6867, 16
  %6869 = load i64, i64* %PC.i66
  %6870 = add i64 %6869, 4
  store i64 %6870, i64* %PC.i66
  %6871 = inttoptr i64 %6868 to i64*
  %6872 = load i64, i64* %6871
  store i64 %6872, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_4a06a8, %struct.Memory** %MEMORY
  %loadMem_4a06ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6874 = getelementptr inbounds %struct.GPR, %struct.GPR* %6873, i32 0, i32 33
  %6875 = getelementptr inbounds %struct.Reg, %struct.Reg* %6874, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6875 to i64*
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6877 = getelementptr inbounds %struct.GPR, %struct.GPR* %6876, i32 0, i32 1
  %6878 = getelementptr inbounds %struct.Reg, %struct.Reg* %6877, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %6878 to i64*
  %6879 = load i64, i64* %RAX.i65
  %6880 = add i64 %6879, 4
  %6881 = load i64, i64* %PC.i64
  %6882 = add i64 %6881, 4
  store i64 %6882, i64* %PC.i64
  %6883 = inttoptr i64 %6880 to i32*
  %6884 = load i32, i32* %6883
  %6885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6885, align 1
  %6886 = and i32 %6884, 255
  %6887 = call i32 @llvm.ctpop.i32(i32 %6886)
  %6888 = trunc i32 %6887 to i8
  %6889 = and i8 %6888, 1
  %6890 = xor i8 %6889, 1
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6890, i8* %6891, align 1
  %6892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6892, align 1
  %6893 = icmp eq i32 %6884, 0
  %6894 = zext i1 %6893 to i8
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6894, i8* %6895, align 1
  %6896 = lshr i32 %6884, 31
  %6897 = trunc i32 %6896 to i8
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6897, i8* %6898, align 1
  %6899 = lshr i32 %6884, 31
  %6900 = xor i32 %6896, %6899
  %6901 = add i32 %6900, %6899
  %6902 = icmp eq i32 %6901, 2
  %6903 = zext i1 %6902 to i8
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6903, i8* %6904, align 1
  store %struct.Memory* %loadMem_4a06ac, %struct.Memory** %MEMORY
  %loadMem_4a06b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6906 = getelementptr inbounds %struct.GPR, %struct.GPR* %6905, i32 0, i32 33
  %6907 = getelementptr inbounds %struct.Reg, %struct.Reg* %6906, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %6907 to i64*
  %6908 = load i64, i64* %PC.i63
  %6909 = add i64 %6908, 59
  %6910 = load i64, i64* %PC.i63
  %6911 = add i64 %6910, 6
  %6912 = load i64, i64* %PC.i63
  %6913 = add i64 %6912, 6
  store i64 %6913, i64* %PC.i63
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6915 = load i8, i8* %6914, align 1
  %6916 = icmp eq i8 %6915, 0
  %6917 = zext i1 %6916 to i8
  store i8 %6917, i8* %BRANCH_TAKEN, align 1
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6919 = select i1 %6916, i64 %6909, i64 %6911
  store i64 %6919, i64* %6918, align 8
  store %struct.Memory* %loadMem_4a06b0, %struct.Memory** %MEMORY
  %loadBr_4a06b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4a06b0 = icmp eq i8 %loadBr_4a06b0, 1
  br i1 %cmpBr_4a06b0, label %block_.L_4a06eb, label %block_4a06b6

block_4a06b6:                                     ; preds = %block_.L_4a069b
  %loadMem_4a06b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 33
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6922 to i64*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 1
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 15
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %6928 to i64*
  %6929 = load i64, i64* %RBP.i62
  %6930 = sub i64 %6929, 16
  %6931 = load i64, i64* %PC.i60
  %6932 = add i64 %6931, 4
  store i64 %6932, i64* %PC.i60
  %6933 = inttoptr i64 %6930 to i64*
  %6934 = load i64, i64* %6933
  store i64 %6934, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_4a06b6, %struct.Memory** %MEMORY
  %loadMem_4a06ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %6935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6936 = getelementptr inbounds %struct.GPR, %struct.GPR* %6935, i32 0, i32 33
  %6937 = getelementptr inbounds %struct.Reg, %struct.Reg* %6936, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6937 to i64*
  %6938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6939 = getelementptr inbounds %struct.GPR, %struct.GPR* %6938, i32 0, i32 1
  %6940 = getelementptr inbounds %struct.Reg, %struct.Reg* %6939, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %6940 to i64*
  %6941 = load i64, i64* %RAX.i59
  %6942 = add i64 %6941, 4
  %6943 = load i64, i64* %PC.i58
  %6944 = add i64 %6943, 7
  store i64 %6944, i64* %PC.i58
  %6945 = inttoptr i64 %6942 to i32*
  store i32 8, i32* %6945
  store %struct.Memory* %loadMem_4a06ba, %struct.Memory** %MEMORY
  %loadMem_4a06c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6947 = getelementptr inbounds %struct.GPR, %struct.GPR* %6946, i32 0, i32 33
  %6948 = getelementptr inbounds %struct.Reg, %struct.Reg* %6947, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6948 to i64*
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 1
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %6951 to i64*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 15
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %6954 to i64*
  %6955 = load i64, i64* %RBP.i57
  %6956 = sub i64 %6955, 16
  %6957 = load i64, i64* %PC.i55
  %6958 = add i64 %6957, 4
  store i64 %6958, i64* %PC.i55
  %6959 = inttoptr i64 %6956 to i64*
  %6960 = load i64, i64* %6959
  store i64 %6960, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_4a06c1, %struct.Memory** %MEMORY
  %loadMem_4a06c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6962 = getelementptr inbounds %struct.GPR, %struct.GPR* %6961, i32 0, i32 33
  %6963 = getelementptr inbounds %struct.Reg, %struct.Reg* %6962, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6963 to i64*
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 5
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %6967 = bitcast %union.anon* %6966 to %struct.anon.2*
  %CL.i53 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6967, i32 0, i32 0
  %6968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6969 = getelementptr inbounds %struct.GPR, %struct.GPR* %6968, i32 0, i32 1
  %6970 = getelementptr inbounds %struct.Reg, %struct.Reg* %6969, i32 0, i32 0
  %RAX.i54 = bitcast %union.anon* %6970 to i64*
  %6971 = load i64, i64* %RAX.i54
  %6972 = add i64 %6971, 8
  %6973 = load i64, i64* %PC.i52
  %6974 = add i64 %6973, 3
  store i64 %6974, i64* %PC.i52
  %6975 = inttoptr i64 %6972 to i8*
  %6976 = load i8, i8* %6975
  store i8 %6976, i8* %CL.i53, align 1
  store %struct.Memory* %loadMem_4a06c5, %struct.Memory** %MEMORY
  %loadMem_4a06c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 33
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6979 to i64*
  %6980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6981 = getelementptr inbounds %struct.GPR, %struct.GPR* %6980, i32 0, i32 1
  %6982 = getelementptr inbounds %struct.Reg, %struct.Reg* %6981, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %6982 to i64*
  %6983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6984 = getelementptr inbounds %struct.GPR, %struct.GPR* %6983, i32 0, i32 15
  %6985 = getelementptr inbounds %struct.Reg, %struct.Reg* %6984, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6985 to i64*
  %6986 = load i64, i64* %RBP.i51
  %6987 = sub i64 %6986, 16
  %6988 = load i64, i64* %PC.i49
  %6989 = add i64 %6988, 4
  store i64 %6989, i64* %PC.i49
  %6990 = inttoptr i64 %6987 to i64*
  %6991 = load i64, i64* %6990
  store i64 %6991, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_4a06c8, %struct.Memory** %MEMORY
  %loadMem_4a06cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 33
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %6994 to i64*
  %6995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6996 = getelementptr inbounds %struct.GPR, %struct.GPR* %6995, i32 0, i32 1
  %6997 = getelementptr inbounds %struct.Reg, %struct.Reg* %6996, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %6997 to i64*
  %6998 = load i64, i64* %RAX.i48
  %6999 = add i64 %6998, 32
  %7000 = load i64, i64* %PC.i47
  %7001 = add i64 %7000, 4
  store i64 %7001, i64* %PC.i47
  %7002 = inttoptr i64 %6999 to i64*
  %7003 = load i64, i64* %7002
  store i64 %7003, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_4a06cc, %struct.Memory** %MEMORY
  %loadMem_4a06d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7005 = getelementptr inbounds %struct.GPR, %struct.GPR* %7004, i32 0, i32 33
  %7006 = getelementptr inbounds %struct.Reg, %struct.Reg* %7005, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %7006 to i64*
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 7
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %RDX.i45 = bitcast %union.anon* %7009 to i64*
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 15
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %7012 to i64*
  %7013 = load i64, i64* %RBP.i46
  %7014 = sub i64 %7013, 16
  %7015 = load i64, i64* %PC.i44
  %7016 = add i64 %7015, 4
  store i64 %7016, i64* %PC.i44
  %7017 = inttoptr i64 %7014 to i64*
  %7018 = load i64, i64* %7017
  store i64 %7018, i64* %RDX.i45, align 8
  store %struct.Memory* %loadMem_4a06d0, %struct.Memory** %MEMORY
  %loadMem_4a06d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7020 = getelementptr inbounds %struct.GPR, %struct.GPR* %7019, i32 0, i32 33
  %7021 = getelementptr inbounds %struct.Reg, %struct.Reg* %7020, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7021 to i64*
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7023 = getelementptr inbounds %struct.GPR, %struct.GPR* %7022, i32 0, i32 7
  %7024 = getelementptr inbounds %struct.Reg, %struct.Reg* %7023, i32 0, i32 0
  %RDX.i43 = bitcast %union.anon* %7024 to i64*
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 9
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7027 to i64*
  %7028 = load i64, i64* %RDX.i43
  %7029 = load i64, i64* %PC.i42
  %7030 = add i64 %7029, 2
  store i64 %7030, i64* %PC.i42
  %7031 = inttoptr i64 %7028 to i32*
  %7032 = load i32, i32* %7031
  %7033 = zext i32 %7032 to i64
  store i64 %7033, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4a06d4, %struct.Memory** %MEMORY
  %loadMem_4a06d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7035 = getelementptr inbounds %struct.GPR, %struct.GPR* %7034, i32 0, i32 33
  %7036 = getelementptr inbounds %struct.Reg, %struct.Reg* %7035, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7036 to i64*
  %7037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7038 = getelementptr inbounds %struct.GPR, %struct.GPR* %7037, i32 0, i32 9
  %7039 = getelementptr inbounds %struct.Reg, %struct.Reg* %7038, i32 0, i32 0
  %ESI.i40 = bitcast %union.anon* %7039 to i32*
  %7040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7041 = getelementptr inbounds %struct.GPR, %struct.GPR* %7040, i32 0, i32 11
  %7042 = getelementptr inbounds %struct.Reg, %struct.Reg* %7041, i32 0, i32 0
  %RDI.i41 = bitcast %union.anon* %7042 to i64*
  %7043 = load i32, i32* %ESI.i40
  %7044 = zext i32 %7043 to i64
  %7045 = load i64, i64* %PC.i39
  %7046 = add i64 %7045, 2
  store i64 %7046, i64* %PC.i39
  %7047 = and i64 %7044, 4294967295
  store i64 %7047, i64* %RDI.i41, align 8
  store %struct.Memory* %loadMem_4a06d6, %struct.Memory** %MEMORY
  %loadMem_4a06d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 33
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7050 to i64*
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 11
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7053 to i64*
  %7054 = load i64, i64* %RDI.i
  %7055 = load i64, i64* %PC.i38
  %7056 = add i64 %7055, 3
  store i64 %7056, i64* %PC.i38
  %7057 = trunc i64 %7054 to i32
  %7058 = add i32 1, %7057
  %7059 = zext i32 %7058 to i64
  store i64 %7059, i64* %RDI.i, align 8
  %7060 = icmp ult i32 %7058, %7057
  %7061 = icmp ult i32 %7058, 1
  %7062 = or i1 %7060, %7061
  %7063 = zext i1 %7062 to i8
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7063, i8* %7064, align 1
  %7065 = and i32 %7058, 255
  %7066 = call i32 @llvm.ctpop.i32(i32 %7065)
  %7067 = trunc i32 %7066 to i8
  %7068 = and i8 %7067, 1
  %7069 = xor i8 %7068, 1
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7069, i8* %7070, align 1
  %7071 = xor i64 1, %7054
  %7072 = trunc i64 %7071 to i32
  %7073 = xor i32 %7072, %7058
  %7074 = lshr i32 %7073, 4
  %7075 = trunc i32 %7074 to i8
  %7076 = and i8 %7075, 1
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7076, i8* %7077, align 1
  %7078 = icmp eq i32 %7058, 0
  %7079 = zext i1 %7078 to i8
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7079, i8* %7080, align 1
  %7081 = lshr i32 %7058, 31
  %7082 = trunc i32 %7081 to i8
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7082, i8* %7083, align 1
  %7084 = lshr i32 %7057, 31
  %7085 = xor i32 %7081, %7084
  %7086 = add i32 %7085, %7081
  %7087 = icmp eq i32 %7086, 2
  %7088 = zext i1 %7087 to i8
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7088, i8* %7089, align 1
  store %struct.Memory* %loadMem_4a06d8, %struct.Memory** %MEMORY
  %loadMem_4a06db = load %struct.Memory*, %struct.Memory** %MEMORY
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7091 = getelementptr inbounds %struct.GPR, %struct.GPR* %7090, i32 0, i32 33
  %7092 = getelementptr inbounds %struct.Reg, %struct.Reg* %7091, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7092 to i64*
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7094 = getelementptr inbounds %struct.GPR, %struct.GPR* %7093, i32 0, i32 11
  %7095 = getelementptr inbounds %struct.Reg, %struct.Reg* %7094, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %7095 to i32*
  %7096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7097 = getelementptr inbounds %struct.GPR, %struct.GPR* %7096, i32 0, i32 7
  %7098 = getelementptr inbounds %struct.Reg, %struct.Reg* %7097, i32 0, i32 0
  %RDX.i37 = bitcast %union.anon* %7098 to i64*
  %7099 = load i64, i64* %RDX.i37
  %7100 = load i32, i32* %EDI.i
  %7101 = zext i32 %7100 to i64
  %7102 = load i64, i64* %PC.i36
  %7103 = add i64 %7102, 2
  store i64 %7103, i64* %PC.i36
  %7104 = inttoptr i64 %7099 to i32*
  store i32 %7100, i32* %7104
  store %struct.Memory* %loadMem_4a06db, %struct.Memory** %MEMORY
  %loadMem_4a06dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7106 = getelementptr inbounds %struct.GPR, %struct.GPR* %7105, i32 0, i32 33
  %7107 = getelementptr inbounds %struct.Reg, %struct.Reg* %7106, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7107 to i64*
  %7108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7109 = getelementptr inbounds %struct.GPR, %struct.GPR* %7108, i32 0, i32 9
  %7110 = getelementptr inbounds %struct.Reg, %struct.Reg* %7109, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7110 to i32*
  %7111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7112 = getelementptr inbounds %struct.GPR, %struct.GPR* %7111, i32 0, i32 7
  %7113 = getelementptr inbounds %struct.Reg, %struct.Reg* %7112, i32 0, i32 0
  %RDX.i35 = bitcast %union.anon* %7113 to i64*
  %7114 = load i32, i32* %ESI.i
  %7115 = zext i32 %7114 to i64
  %7116 = load i64, i64* %PC.i34
  %7117 = add i64 %7116, 3
  store i64 %7117, i64* %PC.i34
  %7118 = shl i64 %7115, 32
  %7119 = ashr exact i64 %7118, 32
  store i64 %7119, i64* %RDX.i35, align 8
  store %struct.Memory* %loadMem_4a06dd, %struct.Memory** %MEMORY
  %loadMem_4a06e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 33
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7122 to i64*
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 5
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %7126 = bitcast %union.anon* %7125 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7126, i32 0, i32 0
  %7127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7128 = getelementptr inbounds %struct.GPR, %struct.GPR* %7127, i32 0, i32 1
  %7129 = getelementptr inbounds %struct.Reg, %struct.Reg* %7128, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %7129 to i64*
  %7130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7131 = getelementptr inbounds %struct.GPR, %struct.GPR* %7130, i32 0, i32 7
  %7132 = getelementptr inbounds %struct.Reg, %struct.Reg* %7131, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7132 to i64*
  %7133 = load i64, i64* %RAX.i33
  %7134 = load i64, i64* %RDX.i
  %7135 = add i64 %7134, %7133
  %7136 = load i8, i8* %CL.i
  %7137 = zext i8 %7136 to i64
  %7138 = load i64, i64* %PC.i32
  %7139 = add i64 %7138, 3
  store i64 %7139, i64* %PC.i32
  %7140 = inttoptr i64 %7135 to i8*
  store i8 %7136, i8* %7140
  store %struct.Memory* %loadMem_4a06e0, %struct.Memory** %MEMORY
  %loadMem_4a06e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7142 = getelementptr inbounds %struct.GPR, %struct.GPR* %7141, i32 0, i32 33
  %7143 = getelementptr inbounds %struct.Reg, %struct.Reg* %7142, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7143 to i64*
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 1
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7146 to i64*
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7148 = getelementptr inbounds %struct.GPR, %struct.GPR* %7147, i32 0, i32 15
  %7149 = getelementptr inbounds %struct.Reg, %struct.Reg* %7148, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7149 to i64*
  %7150 = load i64, i64* %RBP.i31
  %7151 = sub i64 %7150, 16
  %7152 = load i64, i64* %PC.i29
  %7153 = add i64 %7152, 4
  store i64 %7153, i64* %PC.i29
  %7154 = inttoptr i64 %7151 to i64*
  %7155 = load i64, i64* %7154
  store i64 %7155, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_4a06e3, %struct.Memory** %MEMORY
  %loadMem_4a06e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 33
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7158 to i64*
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7160 = getelementptr inbounds %struct.GPR, %struct.GPR* %7159, i32 0, i32 1
  %7161 = getelementptr inbounds %struct.Reg, %struct.Reg* %7160, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7161 to i64*
  %7162 = load i64, i64* %RAX.i28
  %7163 = add i64 %7162, 8
  %7164 = load i64, i64* %PC.i27
  %7165 = add i64 %7164, 4
  store i64 %7165, i64* %PC.i27
  %7166 = inttoptr i64 %7163 to i8*
  store i8 0, i8* %7166
  store %struct.Memory* %loadMem_4a06e7, %struct.Memory** %MEMORY
  br label %block_.L_4a06eb

block_.L_4a06eb:                                  ; preds = %block_4a06b6, %block_.L_4a069b
  %loadMem_4a06eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 33
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7169 to i64*
  %7170 = load i64, i64* %PC.i26
  %7171 = add i64 %7170, 5
  %7172 = load i64, i64* %PC.i26
  %7173 = add i64 %7172, 5
  store i64 %7173, i64* %PC.i26
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7171, i64* %7174, align 8
  store %struct.Memory* %loadMem_4a06eb, %struct.Memory** %MEMORY
  br label %block_.L_4a06f0

block_.L_4a06f0:                                  ; preds = %block_.L_4a06eb
  %loadMem_4a06f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7176 = getelementptr inbounds %struct.GPR, %struct.GPR* %7175, i32 0, i32 33
  %7177 = getelementptr inbounds %struct.Reg, %struct.Reg* %7176, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7177 to i64*
  %7178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7179 = getelementptr inbounds %struct.GPR, %struct.GPR* %7178, i32 0, i32 1
  %7180 = getelementptr inbounds %struct.Reg, %struct.Reg* %7179, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %7180 to i64*
  %7181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7182 = getelementptr inbounds %struct.GPR, %struct.GPR* %7181, i32 0, i32 15
  %7183 = getelementptr inbounds %struct.Reg, %struct.Reg* %7182, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %7183 to i64*
  %7184 = load i64, i64* %RBP.i25
  %7185 = sub i64 %7184, 24
  %7186 = load i64, i64* %PC.i23
  %7187 = add i64 %7186, 3
  store i64 %7187, i64* %PC.i23
  %7188 = inttoptr i64 %7185 to i32*
  %7189 = load i32, i32* %7188
  %7190 = zext i32 %7189 to i64
  store i64 %7190, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_4a06f0, %struct.Memory** %MEMORY
  %loadMem_4a06f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7192 = getelementptr inbounds %struct.GPR, %struct.GPR* %7191, i32 0, i32 33
  %7193 = getelementptr inbounds %struct.Reg, %struct.Reg* %7192, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7193 to i64*
  %7194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7195 = getelementptr inbounds %struct.GPR, %struct.GPR* %7194, i32 0, i32 1
  %7196 = getelementptr inbounds %struct.Reg, %struct.Reg* %7195, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %7196 to i64*
  %7197 = load i64, i64* %RAX.i22
  %7198 = load i64, i64* %PC.i21
  %7199 = add i64 %7198, 3
  store i64 %7199, i64* %PC.i21
  %7200 = trunc i64 %7197 to i32
  %7201 = add i32 1, %7200
  %7202 = zext i32 %7201 to i64
  store i64 %7202, i64* %RAX.i22, align 8
  %7203 = icmp ult i32 %7201, %7200
  %7204 = icmp ult i32 %7201, 1
  %7205 = or i1 %7203, %7204
  %7206 = zext i1 %7205 to i8
  %7207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7206, i8* %7207, align 1
  %7208 = and i32 %7201, 255
  %7209 = call i32 @llvm.ctpop.i32(i32 %7208)
  %7210 = trunc i32 %7209 to i8
  %7211 = and i8 %7210, 1
  %7212 = xor i8 %7211, 1
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7212, i8* %7213, align 1
  %7214 = xor i64 1, %7197
  %7215 = trunc i64 %7214 to i32
  %7216 = xor i32 %7215, %7201
  %7217 = lshr i32 %7216, 4
  %7218 = trunc i32 %7217 to i8
  %7219 = and i8 %7218, 1
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7219, i8* %7220, align 1
  %7221 = icmp eq i32 %7201, 0
  %7222 = zext i1 %7221 to i8
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7222, i8* %7223, align 1
  %7224 = lshr i32 %7201, 31
  %7225 = trunc i32 %7224 to i8
  %7226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7225, i8* %7226, align 1
  %7227 = lshr i32 %7200, 31
  %7228 = xor i32 %7224, %7227
  %7229 = add i32 %7228, %7224
  %7230 = icmp eq i32 %7229, 2
  %7231 = zext i1 %7230 to i8
  %7232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7231, i8* %7232, align 1
  store %struct.Memory* %loadMem_4a06f3, %struct.Memory** %MEMORY
  %loadMem_4a06f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7234 = getelementptr inbounds %struct.GPR, %struct.GPR* %7233, i32 0, i32 33
  %7235 = getelementptr inbounds %struct.Reg, %struct.Reg* %7234, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7235 to i64*
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7237 = getelementptr inbounds %struct.GPR, %struct.GPR* %7236, i32 0, i32 1
  %7238 = getelementptr inbounds %struct.Reg, %struct.Reg* %7237, i32 0, i32 0
  %EAX.i19 = bitcast %union.anon* %7238 to i32*
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 15
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %7241 to i64*
  %7242 = load i64, i64* %RBP.i20
  %7243 = sub i64 %7242, 24
  %7244 = load i32, i32* %EAX.i19
  %7245 = zext i32 %7244 to i64
  %7246 = load i64, i64* %PC.i18
  %7247 = add i64 %7246, 3
  store i64 %7247, i64* %PC.i18
  %7248 = inttoptr i64 %7243 to i32*
  store i32 %7244, i32* %7248
  store %struct.Memory* %loadMem_4a06f6, %struct.Memory** %MEMORY
  %loadMem_4a06f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7250 = getelementptr inbounds %struct.GPR, %struct.GPR* %7249, i32 0, i32 33
  %7251 = getelementptr inbounds %struct.Reg, %struct.Reg* %7250, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7251 to i64*
  %7252 = load i64, i64* %PC.i17
  %7253 = add i64 %7252, -196
  %7254 = load i64, i64* %PC.i17
  %7255 = add i64 %7254, 5
  store i64 %7255, i64* %PC.i17
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7253, i64* %7256, align 8
  store %struct.Memory* %loadMem_4a06f9, %struct.Memory** %MEMORY
  br label %block_.L_4a0635

block_.L_4a06fe:                                  ; preds = %routine_idivl__esi.exit
  %loadMem_4a06fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7258 = getelementptr inbounds %struct.GPR, %struct.GPR* %7257, i32 0, i32 33
  %7259 = getelementptr inbounds %struct.Reg, %struct.Reg* %7258, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7259 to i64*
  %7260 = load i64, i64* %PC.i16
  %7261 = add i64 %7260, 5
  %7262 = load i64, i64* %PC.i16
  %7263 = add i64 %7262, 5
  store i64 %7263, i64* %PC.i16
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7261, i64* %7264, align 8
  store %struct.Memory* %loadMem_4a06fe, %struct.Memory** %MEMORY
  br label %block_.L_4a0703

block_.L_4a0703:                                  ; preds = %block_.L_4a06fe
  %loadMem_4a0703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7266 = getelementptr inbounds %struct.GPR, %struct.GPR* %7265, i32 0, i32 33
  %7267 = getelementptr inbounds %struct.Reg, %struct.Reg* %7266, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7267 to i64*
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7269 = getelementptr inbounds %struct.GPR, %struct.GPR* %7268, i32 0, i32 1
  %7270 = getelementptr inbounds %struct.Reg, %struct.Reg* %7269, i32 0, i32 0
  %RAX.i14 = bitcast %union.anon* %7270 to i64*
  %7271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7272 = getelementptr inbounds %struct.GPR, %struct.GPR* %7271, i32 0, i32 15
  %7273 = getelementptr inbounds %struct.Reg, %struct.Reg* %7272, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %7273 to i64*
  %7274 = load i64, i64* %RBP.i15
  %7275 = sub i64 %7274, 20
  %7276 = load i64, i64* %PC.i13
  %7277 = add i64 %7276, 3
  store i64 %7277, i64* %PC.i13
  %7278 = inttoptr i64 %7275 to i32*
  %7279 = load i32, i32* %7278
  %7280 = zext i32 %7279 to i64
  store i64 %7280, i64* %RAX.i14, align 8
  store %struct.Memory* %loadMem_4a0703, %struct.Memory** %MEMORY
  %loadMem_4a0706 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 33
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7283 to i64*
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 1
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %RAX.i12 = bitcast %union.anon* %7286 to i64*
  %7287 = load i64, i64* %RAX.i12
  %7288 = load i64, i64* %PC.i11
  %7289 = add i64 %7288, 3
  store i64 %7289, i64* %PC.i11
  %7290 = trunc i64 %7287 to i32
  %7291 = add i32 1, %7290
  %7292 = zext i32 %7291 to i64
  store i64 %7292, i64* %RAX.i12, align 8
  %7293 = icmp ult i32 %7291, %7290
  %7294 = icmp ult i32 %7291, 1
  %7295 = or i1 %7293, %7294
  %7296 = zext i1 %7295 to i8
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7296, i8* %7297, align 1
  %7298 = and i32 %7291, 255
  %7299 = call i32 @llvm.ctpop.i32(i32 %7298)
  %7300 = trunc i32 %7299 to i8
  %7301 = and i8 %7300, 1
  %7302 = xor i8 %7301, 1
  %7303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7302, i8* %7303, align 1
  %7304 = xor i64 1, %7287
  %7305 = trunc i64 %7304 to i32
  %7306 = xor i32 %7305, %7291
  %7307 = lshr i32 %7306, 4
  %7308 = trunc i32 %7307 to i8
  %7309 = and i8 %7308, 1
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7309, i8* %7310, align 1
  %7311 = icmp eq i32 %7291, 0
  %7312 = zext i1 %7311 to i8
  %7313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7312, i8* %7313, align 1
  %7314 = lshr i32 %7291, 31
  %7315 = trunc i32 %7314 to i8
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7315, i8* %7316, align 1
  %7317 = lshr i32 %7290, 31
  %7318 = xor i32 %7314, %7317
  %7319 = add i32 %7318, %7314
  %7320 = icmp eq i32 %7319, 2
  %7321 = zext i1 %7320 to i8
  %7322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7321, i8* %7322, align 1
  store %struct.Memory* %loadMem_4a0706, %struct.Memory** %MEMORY
  %loadMem_4a0709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7324 = getelementptr inbounds %struct.GPR, %struct.GPR* %7323, i32 0, i32 33
  %7325 = getelementptr inbounds %struct.Reg, %struct.Reg* %7324, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7325 to i64*
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7327 = getelementptr inbounds %struct.GPR, %struct.GPR* %7326, i32 0, i32 1
  %7328 = getelementptr inbounds %struct.Reg, %struct.Reg* %7327, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7328 to i32*
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7330 = getelementptr inbounds %struct.GPR, %struct.GPR* %7329, i32 0, i32 15
  %7331 = getelementptr inbounds %struct.Reg, %struct.Reg* %7330, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %7331 to i64*
  %7332 = load i64, i64* %RBP.i10
  %7333 = sub i64 %7332, 20
  %7334 = load i32, i32* %EAX.i
  %7335 = zext i32 %7334 to i64
  %7336 = load i64, i64* %PC.i9
  %7337 = add i64 %7336, 3
  store i64 %7337, i64* %PC.i9
  %7338 = inttoptr i64 %7333 to i32*
  store i32 %7334, i32* %7338
  store %struct.Memory* %loadMem_4a0709, %struct.Memory** %MEMORY
  %loadMem_4a070c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7340 = getelementptr inbounds %struct.GPR, %struct.GPR* %7339, i32 0, i32 33
  %7341 = getelementptr inbounds %struct.Reg, %struct.Reg* %7340, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7341 to i64*
  %7342 = load i64, i64* %PC.i8
  %7343 = add i64 %7342, -266
  %7344 = load i64, i64* %PC.i8
  %7345 = add i64 %7344, 5
  store i64 %7345, i64* %PC.i8
  %7346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7343, i64* %7346, align 8
  store %struct.Memory* %loadMem_4a070c, %struct.Memory** %MEMORY
  br label %block_.L_4a0602

block_.L_4a0711:                                  ; preds = %routine_idivl__esi.exit158
  %loadMem_4a0711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 33
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7349 to i64*
  %7350 = load i64, i64* %PC.i7
  %7351 = add i64 %7350, 5
  %7352 = load i64, i64* %PC.i7
  %7353 = add i64 %7352, 5
  store i64 %7353, i64* %PC.i7
  %7354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7351, i64* %7354, align 8
  store %struct.Memory* %loadMem_4a0711, %struct.Memory** %MEMORY
  br label %block_.L_4a0716

block_.L_4a0716:                                  ; preds = %block_.L_4a0711, %block_.L_4a05bb
  %loadMem_4a0716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7356 = getelementptr inbounds %struct.GPR, %struct.GPR* %7355, i32 0, i32 33
  %7357 = getelementptr inbounds %struct.Reg, %struct.Reg* %7356, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7357 to i64*
  %7358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7359 = getelementptr inbounds %struct.GPR, %struct.GPR* %7358, i32 0, i32 1
  %7360 = getelementptr inbounds %struct.Reg, %struct.Reg* %7359, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7360 to i64*
  %7361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7362 = getelementptr inbounds %struct.GPR, %struct.GPR* %7361, i32 0, i32 15
  %7363 = getelementptr inbounds %struct.Reg, %struct.Reg* %7362, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7363 to i64*
  %7364 = load i64, i64* %RBP.i6
  %7365 = sub i64 %7364, 132
  %7366 = load i64, i64* %PC.i5
  %7367 = add i64 %7366, 6
  store i64 %7367, i64* %PC.i5
  %7368 = inttoptr i64 %7365 to i32*
  %7369 = load i32, i32* %7368
  %7370 = zext i32 %7369 to i64
  store i64 %7370, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4a0716, %struct.Memory** %MEMORY
  %loadMem_4a071c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7372 = getelementptr inbounds %struct.GPR, %struct.GPR* %7371, i32 0, i32 33
  %7373 = getelementptr inbounds %struct.Reg, %struct.Reg* %7372, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7373 to i64*
  %7374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7375 = getelementptr inbounds %struct.GPR, %struct.GPR* %7374, i32 0, i32 13
  %7376 = getelementptr inbounds %struct.Reg, %struct.Reg* %7375, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7376 to i64*
  %7377 = load i64, i64* %RSP.i
  %7378 = load i64, i64* %PC.i4
  %7379 = add i64 %7378, 7
  store i64 %7379, i64* %PC.i4
  %7380 = add i64 176, %7377
  store i64 %7380, i64* %RSP.i, align 8
  %7381 = icmp ult i64 %7380, %7377
  %7382 = icmp ult i64 %7380, 176
  %7383 = or i1 %7381, %7382
  %7384 = zext i1 %7383 to i8
  %7385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7384, i8* %7385, align 1
  %7386 = trunc i64 %7380 to i32
  %7387 = and i32 %7386, 255
  %7388 = call i32 @llvm.ctpop.i32(i32 %7387)
  %7389 = trunc i32 %7388 to i8
  %7390 = and i8 %7389, 1
  %7391 = xor i8 %7390, 1
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7391, i8* %7392, align 1
  %7393 = xor i64 176, %7377
  %7394 = xor i64 %7393, %7380
  %7395 = lshr i64 %7394, 4
  %7396 = trunc i64 %7395 to i8
  %7397 = and i8 %7396, 1
  %7398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7397, i8* %7398, align 1
  %7399 = icmp eq i64 %7380, 0
  %7400 = zext i1 %7399 to i8
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7400, i8* %7401, align 1
  %7402 = lshr i64 %7380, 63
  %7403 = trunc i64 %7402 to i8
  %7404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7403, i8* %7404, align 1
  %7405 = lshr i64 %7377, 63
  %7406 = xor i64 %7402, %7405
  %7407 = add i64 %7406, %7402
  %7408 = icmp eq i64 %7407, 2
  %7409 = zext i1 %7408 to i8
  %7410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7409, i8* %7410, align 1
  store %struct.Memory* %loadMem_4a071c, %struct.Memory** %MEMORY
  %loadMem_4a0723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7412 = getelementptr inbounds %struct.GPR, %struct.GPR* %7411, i32 0, i32 33
  %7413 = getelementptr inbounds %struct.Reg, %struct.Reg* %7412, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7413 to i64*
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7415 = getelementptr inbounds %struct.GPR, %struct.GPR* %7414, i32 0, i32 15
  %7416 = getelementptr inbounds %struct.Reg, %struct.Reg* %7415, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7416 to i64*
  %7417 = load i64, i64* %PC.i2
  %7418 = add i64 %7417, 1
  store i64 %7418, i64* %PC.i2
  %7419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7420 = load i64, i64* %7419, align 8
  %7421 = add i64 %7420, 8
  %7422 = inttoptr i64 %7420 to i64*
  %7423 = load i64, i64* %7422
  store i64 %7423, i64* %RBP.i3, align 8
  store i64 %7421, i64* %7419, align 8
  store %struct.Memory* %loadMem_4a0723, %struct.Memory** %MEMORY
  %loadMem_4a0724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7425 = getelementptr inbounds %struct.GPR, %struct.GPR* %7424, i32 0, i32 33
  %7426 = getelementptr inbounds %struct.Reg, %struct.Reg* %7425, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7426 to i64*
  %7427 = load i64, i64* %PC.i1
  %7428 = add i64 %7427, 1
  store i64 %7428, i64* %PC.i1
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7431 = load i64, i64* %7430, align 8
  %7432 = inttoptr i64 %7431 to i64*
  %7433 = load i64, i64* %7432
  store i64 %7433, i64* %7429, align 8
  %7434 = add i64 %7431, 8
  store i64 %7434, i64* %7430, align 8
  store %struct.Memory* %loadMem_4a0724, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4a0724
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

define %struct.Memory* @routine_subq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 176
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 176
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
  %23 = xor i64 176, %9
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

define %struct.Memory* @routine_movl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x10___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x4ac700___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 ptrtoint (%G__0x4ac700_type* @G__0x4ac700 to i64), i64* %RDX, align 8
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

define %struct.Memory* @routine_movq_0x6cb900___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rsi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 60
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_idivl__ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_0x34__rsi____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i64, i64* %RSI
  %14 = add i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x94__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x94__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 148
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imull__eax___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R8D
  %14 = zext i32 %13 to i64
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = shl i64 %14, 32
  %20 = ashr exact i64 %19, 32
  %21 = shl i64 %16, 32
  %22 = ashr exact i64 %21, 32
  %23 = mul i64 %22, %20
  %24 = trunc i64 %23 to i32
  %25 = and i64 %23, 4294967295
  store i64 %25, i64* %12, align 8
  %26 = shl i64 %23, 32
  %27 = ashr exact i64 %26, 32
  %28 = icmp ne i64 %27, %23
  %29 = zext i1 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %29, i8* %30, align 1
  %31 = and i32 %24, 255
  %32 = call i32 @llvm.ctpop.i32(i32 %31)
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = xor i8 %34, 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %35, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %38, align 1
  %39 = lshr i32 %24, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %29, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d__MINUS0x7c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 124
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 128
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 88
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x90__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__0x1__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movq_0x6cb900___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x34__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x88__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 136
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_idivl__r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 17
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R8D = bitcast %union.anon* %8 to i32*
  %9 = load i32, i32* %R8D
  %10 = zext i32 %9 to i64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 3
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

define %struct.Memory* @routine_movl_0x3c__rdi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDI
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__eax__MINUS0x6c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
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

define %struct.Memory* @routine_movl__0x10___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_0x6cb900___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x3c__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_movl_MINUS0x98__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_jge_.L_4a0598(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
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

define %struct.Memory* @routine_movl_0x34__rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 52
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4a0585(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x60__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
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

define %struct.Memory* @routine_movzbl___rax__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %22 = zext i8 %21 to i64
  store i64 %22, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 40
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

define %struct.Memory* @routine_jne_.L_4a0299(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a02b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.writeSyntaxElement2Buf_UVLC(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x80__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 128
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4a0351(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
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

define %struct.Memory* @routine_cmpl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 100
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

define %struct.Memory* @routine_jle_.L_4a02e7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xffffffff___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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

define %struct.Memory* @routine_jmpq_.L_4a034c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a0316(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a0347(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a0342(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x64__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a0572(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
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

define %struct.Memory* @routine_jne_.L_4a040e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 104
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

define %struct.Memory* @routine_jge_.L_4a037f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a0409(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa0__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4a03d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x70__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a0404(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a03ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0xffffffff__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 -1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a056d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x74__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 116
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

define %struct.Memory* @routine_jne_.L_4a04a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xffffffff__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, -1
  %16 = icmp ult i32 %14, -1
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
  %25 = xor i32 %14, -1
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
  %38 = xor i32 %37, 1
  %39 = xor i32 %34, %37
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x70__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 112
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

define %struct.Memory* @routine_jle_.L_4a043c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a04a1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 96
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

define %struct.Memory* @routine_jne_.L_4a046b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a049c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a0497(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a0568(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a0563(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 120
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

define %struct.Memory* @routine_cmpl_MINUS0x6c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 108
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

define %struct.Memory* @routine_jge_.L_4a04d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a055e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x60__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xa4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4a0528(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a0559(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4a0554(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4a0563(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a0577(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 24
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a0242(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a058a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a020f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4a05bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x80__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x7c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 124
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

define %struct.Memory* @routine_cmovll__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = load i8, i8* %16, align 1
  %18 = icmp ne i8 %17, 0
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  %22 = xor i1 %18, %21
  %23 = load i64, i64* %RAX, align 8
  %24 = select i1 %22, i64 %13, i64 %23
  %25 = and i64 %24, 4294967295
  store i64 %25, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 132
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_jne_.L_4a0716(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i8*
  store i8 0, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x8__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 8, i32* %13
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

define %struct.Memory* @routine_movl__eax__MINUS0xa8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xa8__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4a0711(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0xac__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xac__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 172
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4a06fe(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movzbl_0x8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %14 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %21 = and i32 %13, 254
  %22 = call i32 @llvm.ctpop.i32(i32 %21)
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %20, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %28 = icmp eq i32 %13, 0
  %29 = zext i1 %28 to i8
  store i8 %29, i8* %27, align 1
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %31 = lshr i32 %13, 31
  %32 = trunc i32 %31 to i8
  store i8 %32, i8* %30, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %34 = zext i1 %16 to i8
  store i8 %34, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 2
  store i64 %17, i64* %PC
  store i8 %14, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %DL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
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

define %struct.Memory* @routine_movq___rax__rsi_8____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x18__rbp____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpb__0x0____rax__rsi_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = add i64 %13, %12
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = zext i8 %18 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
  %27 = icmp eq i8 %18, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i8 %18, 7
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i8 %18, 7
  %33 = xor i8 %30, %32
  %34 = add i8 %33, %32
  %35 = icmp eq i8 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4a069b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_orl__0x1___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 1, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RCX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, -1
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
  %26 = xor i64 -1, %9
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

define %struct.Memory* @routine_movl__ecx__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x4__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 4
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

define %struct.Memory* @routine_jne_.L_4a06eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb_0x8__rax____cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl___rdx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 2
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i32*
  %16 = load i32, i32* %15
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x1___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 3
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDI, align 8
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

define %struct.Memory* @routine_movl__edi____rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %EDI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_movb__cl____rax__rdx_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RAX = bitcast %union.anon* %12 to i64*
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 7
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RDX = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RDX
  %18 = add i64 %17, %16
  %19 = load i8, i8* %CL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4a06f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a0635(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a0703(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a0602(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4a0716(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x84__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xb0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 176, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 176
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
  %25 = xor i64 176, %9
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
