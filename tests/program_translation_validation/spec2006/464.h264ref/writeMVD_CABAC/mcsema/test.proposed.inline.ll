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
@G_0x6cb900 = global %G_0x6cb900_type zeroinitializer

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

declare %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_412730.unary_exp_golomb_mv_encode(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_401de0.biari_encode_symbol_eq_prob(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @writeMVD_CABAC(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_412160 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_412160, %struct.Memory** %MEMORY
  %loadMem_412161 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i198 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i198
  %27 = load i64, i64* %PC.i197
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i197
  store i64 %26, i64* %RBP.i199, align 8
  store %struct.Memory* %loadMem_412161, %struct.Memory** %MEMORY
  %loadMem_412164 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i439 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i439
  %36 = load i64, i64* %PC.i438
  %37 = add i64 %36, 7
  store i64 %37, i64* %PC.i438
  %38 = sub i64 %35, 160
  store i64 %38, i64* %RSP.i439, align 8
  %39 = icmp ult i64 %35, 160
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
  %49 = xor i64 160, %35
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
  store %struct.Memory* %loadMem_412164, %struct.Memory** %MEMORY
  %loadMem_41216b = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RCX.i772 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i771
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i771
  store i64 4294967295, i64* %RCX.i772, align 8
  store %struct.Memory* %loadMem_41216b, %struct.Memory** %MEMORY
  %loadMem_412170 = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 17
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %R8D.i770 = bitcast %union.anon* %80 to i32*
  %81 = bitcast i32* %R8D.i770 to i64*
  %82 = load i32, i32* %R8D.i770
  %83 = zext i32 %82 to i64
  %84 = load i32, i32* %R8D.i770
  %85 = zext i32 %84 to i64
  %86 = load i64, i64* %PC.i769
  %87 = add i64 %86, 3
  store i64 %87, i64* %PC.i769
  %88 = xor i64 %85, %83
  %89 = trunc i64 %88 to i32
  %90 = and i64 %88, 4294967295
  store i64 %90, i64* %81, align 8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %91, align 1
  %92 = and i32 %89, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1
  %98 = icmp eq i32 %89, 0
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %99, i8* %100, align 1
  %101 = lshr i32 %89, 31
  %102 = trunc i32 %101 to i8
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %102, i8* %103, align 1
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %104, align 1
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %105, align 1
  store %struct.Memory* %loadMem_412170, %struct.Memory** %MEMORY
  %loadMem_412173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 15
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RBP.i767 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 19
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %R9.i768 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i767
  %116 = sub i64 %115, 88
  %117 = load i64, i64* %PC.i766
  %118 = add i64 %117, 4
  store i64 %118, i64* %PC.i766
  store i64 %116, i64* %R9.i768, align 8
  store %struct.Memory* %loadMem_412173, %struct.Memory** %MEMORY
  %loadMem_412177 = load %struct.Memory*, %struct.Memory** %MEMORY
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 33
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %121 to i64*
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 11
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %RDI.i764 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 15
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %127 to i64*
  %128 = load i64, i64* %RBP.i765
  %129 = sub i64 %128, 8
  %130 = load i64, i64* %RDI.i764
  %131 = load i64, i64* %PC.i763
  %132 = add i64 %131, 4
  store i64 %132, i64* %PC.i763
  %133 = inttoptr i64 %129 to i64*
  store i64 %130, i64* %133
  store %struct.Memory* %loadMem_412177, %struct.Memory** %MEMORY
  %loadMem_41217b = load %struct.Memory*, %struct.Memory** %MEMORY
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %135 = getelementptr inbounds %struct.GPR, %struct.GPR* %134, i32 0, i32 33
  %136 = getelementptr inbounds %struct.Reg, %struct.Reg* %135, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %136 to i64*
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 9
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %RSI.i761 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 15
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RBP.i762 = bitcast %union.anon* %142 to i64*
  %143 = load i64, i64* %RBP.i762
  %144 = sub i64 %143, 16
  %145 = load i64, i64* %RSI.i761
  %146 = load i64, i64* %PC.i760
  %147 = add i64 %146, 4
  store i64 %147, i64* %PC.i760
  %148 = inttoptr i64 %144 to i64*
  store i64 %145, i64* %148
  store %struct.Memory* %loadMem_41217b, %struct.Memory** %MEMORY
  %loadMem_41217f = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 9
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RSI.i759 = bitcast %union.anon* %154 to i64*
  %155 = load i64, i64* %PC.i758
  %156 = add i64 %155, 8
  store i64 %156, i64* %PC.i758
  %157 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %157, i64* %RSI.i759, align 8
  store %struct.Memory* %loadMem_41217f, %struct.Memory** %MEMORY
  %loadMem_412187 = load %struct.Memory*, %struct.Memory** %MEMORY
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 33
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %160 to i64*
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %162 = getelementptr inbounds %struct.GPR, %struct.GPR* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.Reg, %struct.Reg* %162, i32 0, i32 0
  %RAX.i756 = bitcast %union.anon* %163 to i64*
  %164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %165 = getelementptr inbounds %struct.GPR, %struct.GPR* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.Reg, %struct.Reg* %165, i32 0, i32 0
  %RSI.i757 = bitcast %union.anon* %166 to i64*
  %167 = load i64, i64* %RSI.i757
  %168 = add i64 %167, 72
  %169 = load i64, i64* %PC.i755
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i755
  %171 = inttoptr i64 %168 to i32*
  %172 = load i32, i32* %171
  %173 = zext i32 %172 to i64
  store i64 %173, i64* %RAX.i756, align 8
  store %struct.Memory* %loadMem_412187, %struct.Memory** %MEMORY
  %loadMem_41218a = load %struct.Memory*, %struct.Memory** %MEMORY
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 33
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %EAX.i753 = bitcast %union.anon* %179 to i32*
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %181 = getelementptr inbounds %struct.GPR, %struct.GPR* %180, i32 0, i32 15
  %182 = getelementptr inbounds %struct.Reg, %struct.Reg* %181, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %182 to i64*
  %183 = load i64, i64* %RBP.i754
  %184 = sub i64 %183, 20
  %185 = load i32, i32* %EAX.i753
  %186 = zext i32 %185 to i64
  %187 = load i64, i64* %PC.i752
  %188 = add i64 %187, 3
  store i64 %188, i64* %PC.i752
  %189 = inttoptr i64 %184 to i32*
  store i32 %185, i32* %189
  store %struct.Memory* %loadMem_41218a, %struct.Memory** %MEMORY
  %loadMem_41218d = load %struct.Memory*, %struct.Memory** %MEMORY
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 33
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 9
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RSI.i751 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %PC.i750
  %197 = add i64 %196, 8
  store i64 %197, i64* %PC.i750
  %198 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %198, i64* %RSI.i751, align 8
  store %struct.Memory* %loadMem_41218d, %struct.Memory** %MEMORY
  %loadMem_412195 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i747 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %RAX.i748 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 9
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RSI.i749 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RSI.i749
  %209 = add i64 %208, 76
  %210 = load i64, i64* %PC.i747
  %211 = add i64 %210, 3
  store i64 %211, i64* %PC.i747
  %212 = inttoptr i64 %209 to i32*
  %213 = load i32, i32* %212
  %214 = zext i32 %213 to i64
  store i64 %214, i64* %RAX.i748, align 8
  store %struct.Memory* %loadMem_412195, %struct.Memory** %MEMORY
  %loadMem_412198 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i744 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %EAX.i745 = bitcast %union.anon* %220 to i32*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i746 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i746
  %225 = sub i64 %224, 24
  %226 = load i32, i32* %EAX.i745
  %227 = zext i32 %226 to i64
  %228 = load i64, i64* %PC.i744
  %229 = add i64 %228, 3
  store i64 %229, i64* %PC.i744
  %230 = inttoptr i64 %225 to i32*
  store i32 %226, i32* %230
  store %struct.Memory* %loadMem_412198, %struct.Memory** %MEMORY
  %loadMem_41219b = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i741 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 9
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RSI.i742 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i743 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i743
  %241 = sub i64 %240, 8
  %242 = load i64, i64* %PC.i741
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC.i741
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244
  store i64 %245, i64* %RSI.i742, align 8
  store %struct.Memory* %loadMem_41219b, %struct.Memory** %MEMORY
  %loadMem_41219f = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 1
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 9
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RSI.i740 = bitcast %union.anon* %254 to i64*
  %255 = load i64, i64* %RSI.i740
  %256 = add i64 %255, 8
  %257 = load i64, i64* %PC.i738
  %258 = add i64 %257, 3
  store i64 %258, i64* %PC.i738
  %259 = inttoptr i64 %256 to i32*
  %260 = load i32, i32* %259
  %261 = zext i32 %260 to i64
  store i64 %261, i64* %RAX.i739, align 8
  store %struct.Memory* %loadMem_41219f, %struct.Memory** %MEMORY
  %loadMem_4121a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %263 = getelementptr inbounds %struct.GPR, %struct.GPR* %262, i32 0, i32 33
  %264 = getelementptr inbounds %struct.Reg, %struct.Reg* %263, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %264 to i64*
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %RAX.i737 = bitcast %union.anon* %267 to i64*
  %268 = load i64, i64* %RAX.i737
  %269 = load i64, i64* %PC.i736
  %270 = add i64 %269, 3
  store i64 %270, i64* %PC.i736
  %271 = and i64 1, %268
  %272 = trunc i64 %271 to i32
  store i64 %271, i64* %RAX.i737, align 8
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %273, align 1
  %274 = and i32 %272, 255
  %275 = call i32 @llvm.ctpop.i32(i32 %274)
  %276 = trunc i32 %275 to i8
  %277 = and i8 %276, 1
  %278 = xor i8 %277, 1
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %278, i8* %279, align 1
  %280 = icmp eq i32 %272, 0
  %281 = zext i1 %280 to i8
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %281, i8* %282, align 1
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %283, align 1
  %284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %284, align 1
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %285, align 1
  store %struct.Memory* %loadMem_4121a2, %struct.Memory** %MEMORY
  %loadMem_4121a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %287 = getelementptr inbounds %struct.GPR, %struct.GPR* %286, i32 0, i32 33
  %288 = getelementptr inbounds %struct.Reg, %struct.Reg* %287, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %288 to i64*
  %289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %290 = getelementptr inbounds %struct.GPR, %struct.GPR* %289, i32 0, i32 1
  %291 = getelementptr inbounds %struct.Reg, %struct.Reg* %290, i32 0, i32 0
  %EAX.i734 = bitcast %union.anon* %291 to i32*
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 15
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %294 to i64*
  %295 = load i64, i64* %RBP.i735
  %296 = sub i64 %295, 56
  %297 = load i32, i32* %EAX.i734
  %298 = zext i32 %297 to i64
  %299 = load i64, i64* %PC.i733
  %300 = add i64 %299, 3
  store i64 %300, i64* %PC.i733
  %301 = inttoptr i64 %296 to i32*
  store i32 %297, i32* %301
  store %struct.Memory* %loadMem_4121a5, %struct.Memory** %MEMORY
  %loadMem_4121a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %303 = getelementptr inbounds %struct.GPR, %struct.GPR* %302, i32 0, i32 33
  %304 = getelementptr inbounds %struct.Reg, %struct.Reg* %303, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %304 to i64*
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %306 = getelementptr inbounds %struct.GPR, %struct.GPR* %305, i32 0, i32 9
  %307 = getelementptr inbounds %struct.Reg, %struct.Reg* %306, i32 0, i32 0
  %RSI.i731 = bitcast %union.anon* %307 to i64*
  %308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %309 = getelementptr inbounds %struct.GPR, %struct.GPR* %308, i32 0, i32 15
  %310 = getelementptr inbounds %struct.Reg, %struct.Reg* %309, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %310 to i64*
  %311 = load i64, i64* %RBP.i732
  %312 = sub i64 %311, 8
  %313 = load i64, i64* %PC.i730
  %314 = add i64 %313, 4
  store i64 %314, i64* %PC.i730
  %315 = inttoptr i64 %312 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %RSI.i731, align 8
  store %struct.Memory* %loadMem_4121a8, %struct.Memory** %MEMORY
  %loadMem_4121ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 9
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RSI.i729 = bitcast %union.anon* %325 to i64*
  %326 = load i64, i64* %RSI.i729
  %327 = add i64 %326, 8
  %328 = load i64, i64* %PC.i727
  %329 = add i64 %328, 3
  store i64 %329, i64* %PC.i727
  %330 = inttoptr i64 %327 to i32*
  %331 = load i32, i32* %330
  %332 = zext i32 %331 to i64
  store i64 %332, i64* %RAX.i728, align 8
  store %struct.Memory* %loadMem_4121ac, %struct.Memory** %MEMORY
  %loadMem_4121af = load %struct.Memory*, %struct.Memory** %MEMORY
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 33
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 1
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RAX.i726 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RAX.i726
  %340 = load i64, i64* %PC.i725
  %341 = add i64 %340, 2
  store i64 %341, i64* %PC.i725
  %342 = shl i64 %339, 32
  %343 = ashr i64 %342, 33
  %344 = trunc i64 %339 to i8
  %345 = and i8 %344, 1
  %346 = trunc i64 %343 to i32
  %347 = and i64 %343, 4294967295
  store i64 %347, i64* %RAX.i726, align 8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %345, i8* %348, align 1
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %350 = and i32 %346, 255
  %351 = call i32 @llvm.ctpop.i32(i32 %350)
  %352 = trunc i32 %351 to i8
  %353 = and i8 %352, 1
  %354 = xor i8 %353, 1
  store i8 %354, i8* %349, align 1
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %355, align 1
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %357 = icmp eq i32 %346, 0
  %358 = zext i1 %357 to i8
  store i8 %358, i8* %356, align 1
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %360 = lshr i32 %346, 31
  %361 = trunc i32 %360 to i8
  store i8 %361, i8* %359, align 1
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %362, align 1
  store %struct.Memory* %loadMem_4121af, %struct.Memory** %MEMORY
  %loadMem_4121b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %364 = getelementptr inbounds %struct.GPR, %struct.GPR* %363, i32 0, i32 33
  %365 = getelementptr inbounds %struct.Reg, %struct.Reg* %364, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %365 to i64*
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %367 = getelementptr inbounds %struct.GPR, %struct.GPR* %366, i32 0, i32 1
  %368 = getelementptr inbounds %struct.Reg, %struct.Reg* %367, i32 0, i32 0
  %EAX.i723 = bitcast %union.anon* %368 to i32*
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %370 = getelementptr inbounds %struct.GPR, %struct.GPR* %369, i32 0, i32 15
  %371 = getelementptr inbounds %struct.Reg, %struct.Reg* %370, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %371 to i64*
  %372 = load i64, i64* %RBP.i724
  %373 = sub i64 %372, 60
  %374 = load i32, i32* %EAX.i723
  %375 = zext i32 %374 to i64
  %376 = load i64, i64* %PC.i722
  %377 = add i64 %376, 3
  store i64 %377, i64* %PC.i722
  %378 = inttoptr i64 %373 to i32*
  store i32 %374, i32* %378
  store %struct.Memory* %loadMem_4121b2, %struct.Memory** %MEMORY
  %loadMem_4121b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 33
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %381 to i64*
  %382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %383 = getelementptr inbounds %struct.GPR, %struct.GPR* %382, i32 0, i32 9
  %384 = getelementptr inbounds %struct.Reg, %struct.Reg* %383, i32 0, i32 0
  %RSI.i721 = bitcast %union.anon* %384 to i64*
  %385 = load i64, i64* %PC.i720
  %386 = add i64 %385, 8
  store i64 %386, i64* %PC.i720
  %387 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %387, i64* %RSI.i721, align 8
  store %struct.Memory* %loadMem_4121b5, %struct.Memory** %MEMORY
  %loadMem_4121bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 9
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RSI.i719 = bitcast %union.anon* %393 to i64*
  %394 = load i64, i64* %RSI.i719
  %395 = add i64 %394, 14160
  %396 = load i64, i64* %PC.i718
  %397 = add i64 %396, 7
  store i64 %397, i64* %PC.i718
  %398 = inttoptr i64 %395 to i64*
  %399 = load i64, i64* %398
  store i64 %399, i64* %RSI.i719, align 8
  store %struct.Memory* %loadMem_4121bd, %struct.Memory** %MEMORY
  %loadMem_4121c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %401 = getelementptr inbounds %struct.GPR, %struct.GPR* %400, i32 0, i32 33
  %402 = getelementptr inbounds %struct.Reg, %struct.Reg* %401, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %402 to i64*
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 9
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %RSI.i717 = bitcast %union.anon* %405 to i64*
  %406 = load i64, i64* %RSI.i717
  %407 = add i64 %406, 32
  %408 = load i64, i64* %PC.i716
  %409 = add i64 %408, 4
  store i64 %409, i64* %PC.i716
  %410 = inttoptr i64 %407 to i64*
  %411 = load i64, i64* %410
  store i64 %411, i64* %RSI.i717, align 8
  store %struct.Memory* %loadMem_4121c4, %struct.Memory** %MEMORY
  %loadMem_4121c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 33
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %414 to i64*
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 9
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %RSI.i714 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 15
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %420 to i64*
  %421 = load i64, i64* %RBP.i715
  %422 = sub i64 %421, 120
  %423 = load i64, i64* %RSI.i714
  %424 = load i64, i64* %PC.i713
  %425 = add i64 %424, 4
  store i64 %425, i64* %PC.i713
  %426 = inttoptr i64 %422 to i64*
  store i64 %423, i64* %426
  store %struct.Memory* %loadMem_4121c8, %struct.Memory** %MEMORY
  %loadMem_4121cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 9
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RSI.i712 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %PC.i711
  %434 = add i64 %433, 8
  store i64 %434, i64* %PC.i711
  %435 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %435, i64* %RSI.i712, align 8
  store %struct.Memory* %loadMem_4121cc, %struct.Memory** %MEMORY
  %loadMem_4121d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %437 = getelementptr inbounds %struct.GPR, %struct.GPR* %436, i32 0, i32 33
  %438 = getelementptr inbounds %struct.Reg, %struct.Reg* %437, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %438 to i64*
  %439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %440 = getelementptr inbounds %struct.GPR, %struct.GPR* %439, i32 0, i32 9
  %441 = getelementptr inbounds %struct.Reg, %struct.Reg* %440, i32 0, i32 0
  %RSI.i710 = bitcast %union.anon* %441 to i64*
  %442 = load i64, i64* %RSI.i710
  %443 = add i64 %442, 14168
  %444 = load i64, i64* %PC.i709
  %445 = add i64 %444, 7
  store i64 %445, i64* %PC.i709
  %446 = inttoptr i64 %443 to i64*
  %447 = load i64, i64* %446
  store i64 %447, i64* %RSI.i710, align 8
  store %struct.Memory* %loadMem_4121d4, %struct.Memory** %MEMORY
  %loadMem_4121db = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 11
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %RDI.i708 = bitcast %union.anon* %453 to i64*
  %454 = load i64, i64* %PC.i707
  %455 = add i64 %454, 8
  store i64 %455, i64* %PC.i707
  %456 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %456, i64* %RDI.i708, align 8
  store %struct.Memory* %loadMem_4121db, %struct.Memory** %MEMORY
  %loadMem_4121e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 33
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %459 to i64*
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 11
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %RDI.i706 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %RDI.i706
  %464 = add i64 %463, 12
  %465 = load i64, i64* %PC.i705
  %466 = add i64 %465, 4
  store i64 %466, i64* %PC.i705
  %467 = inttoptr i64 %464 to i32*
  %468 = load i32, i32* %467
  %469 = sext i32 %468 to i64
  store i64 %469, i64* %RDI.i706, align 8
  store %struct.Memory* %loadMem_4121e3, %struct.Memory** %MEMORY
  %loadMem_4121e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 33
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 11
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RDI.i704 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %RDI.i704
  %477 = load i64, i64* %PC.i703
  %478 = add i64 %477, 7
  store i64 %478, i64* %PC.i703
  %479 = sext i64 %476 to i128
  %480 = and i128 %479, -18446744073709551616
  %481 = zext i64 %476 to i128
  %482 = or i128 %480, %481
  %483 = mul i128 632, %482
  %484 = trunc i128 %483 to i64
  store i64 %484, i64* %RDI.i704, align 8
  %485 = sext i64 %484 to i128
  %486 = icmp ne i128 %485, %483
  %487 = zext i1 %486 to i8
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %487, i8* %488, align 1
  %489 = trunc i128 %483 to i32
  %490 = and i32 %489, 255
  %491 = call i32 @llvm.ctpop.i32(i32 %490)
  %492 = trunc i32 %491 to i8
  %493 = and i8 %492, 1
  %494 = xor i8 %493, 1
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %494, i8* %495, align 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %496, align 1
  %497 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %497, align 1
  %498 = lshr i64 %484, 63
  %499 = trunc i64 %498 to i8
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %499, i8* %500, align 1
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %487, i8* %501, align 1
  store %struct.Memory* %loadMem_4121e7, %struct.Memory** %MEMORY
  %loadMem_4121ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 9
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RSI.i701 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 11
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RDI.i702 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RSI.i701
  %512 = load i64, i64* %RDI.i702
  %513 = load i64, i64* %PC.i700
  %514 = add i64 %513, 3
  store i64 %514, i64* %PC.i700
  %515 = add i64 %512, %511
  store i64 %515, i64* %RSI.i701, align 8
  %516 = icmp ult i64 %515, %511
  %517 = icmp ult i64 %515, %512
  %518 = or i1 %516, %517
  %519 = zext i1 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %519, i8* %520, align 1
  %521 = trunc i64 %515 to i32
  %522 = and i32 %521, 255
  %523 = call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %526, i8* %527, align 1
  %528 = xor i64 %512, %511
  %529 = xor i64 %528, %515
  %530 = lshr i64 %529, 4
  %531 = trunc i64 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1
  %534 = icmp eq i64 %515, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1
  %537 = lshr i64 %515, 63
  %538 = trunc i64 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = lshr i64 %511, 63
  %541 = lshr i64 %512, 63
  %542 = xor i64 %537, %540
  %543 = xor i64 %537, %541
  %544 = add i64 %542, %543
  %545 = icmp eq i64 %544, 2
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %547, align 1
  store %struct.Memory* %loadMem_4121ee, %struct.Memory** %MEMORY
  %loadMem_4121f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %550 to i64*
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 9
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %RSI.i698 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 15
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RBP.i699 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %RBP.i699
  %558 = sub i64 %557, 128
  %559 = load i64, i64* %RSI.i698
  %560 = load i64, i64* %PC.i697
  %561 = add i64 %560, 4
  store i64 %561, i64* %PC.i697
  %562 = inttoptr i64 %558 to i64*
  store i64 %559, i64* %562
  store %struct.Memory* %loadMem_4121f1, %struct.Memory** %MEMORY
  %loadMem_4121f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 9
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RSI.i696 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %PC.i695
  %570 = add i64 %569, 8
  store i64 %570, i64* %PC.i695
  %571 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %571, i64* %RSI.i696, align 8
  store %struct.Memory* %loadMem_4121f5, %struct.Memory** %MEMORY
  %loadMem_4121fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 9
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RSI.i693 = bitcast %union.anon* %577 to i64*
  %578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %579 = getelementptr inbounds %struct.GPR, %struct.GPR* %578, i32 0, i32 11
  %580 = getelementptr inbounds %struct.Reg, %struct.Reg* %579, i32 0, i32 0
  %RDI.i694 = bitcast %union.anon* %580 to i64*
  %581 = load i64, i64* %RSI.i693
  %582 = add i64 %581, 12
  %583 = load i64, i64* %PC.i692
  %584 = add i64 %583, 3
  store i64 %584, i64* %PC.i692
  %585 = inttoptr i64 %582 to i32*
  %586 = load i32, i32* %585
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RDI.i694, align 8
  store %struct.Memory* %loadMem_4121fd, %struct.Memory** %MEMORY
  %loadMem_412200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 33
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %590 to i64*
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %592 = getelementptr inbounds %struct.GPR, %struct.GPR* %591, i32 0, i32 9
  %593 = getelementptr inbounds %struct.Reg, %struct.Reg* %592, i32 0, i32 0
  %RSI.i690 = bitcast %union.anon* %593 to i64*
  %594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %595 = getelementptr inbounds %struct.GPR, %struct.GPR* %594, i32 0, i32 15
  %596 = getelementptr inbounds %struct.Reg, %struct.Reg* %595, i32 0, i32 0
  %RBP.i691 = bitcast %union.anon* %596 to i64*
  %597 = load i64, i64* %RBP.i691
  %598 = sub i64 %597, 20
  %599 = load i64, i64* %PC.i689
  %600 = add i64 %599, 3
  store i64 %600, i64* %PC.i689
  %601 = inttoptr i64 %598 to i32*
  %602 = load i32, i32* %601
  %603 = zext i32 %602 to i64
  store i64 %603, i64* %RSI.i690, align 8
  store %struct.Memory* %loadMem_412200, %struct.Memory** %MEMORY
  %loadMem_412203 = load %struct.Memory*, %struct.Memory** %MEMORY
  %604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %605 = getelementptr inbounds %struct.GPR, %struct.GPR* %604, i32 0, i32 33
  %606 = getelementptr inbounds %struct.Reg, %struct.Reg* %605, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %606 to i64*
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 7
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %RDX.i687 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 15
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RBP.i688 = bitcast %union.anon* %612 to i64*
  %613 = load i64, i64* %RBP.i688
  %614 = sub i64 %613, 24
  %615 = load i64, i64* %PC.i686
  %616 = add i64 %615, 3
  store i64 %616, i64* %PC.i686
  %617 = inttoptr i64 %614 to i32*
  %618 = load i32, i32* %617
  %619 = zext i32 %618 to i64
  store i64 %619, i64* %RDX.i687, align 8
  store %struct.Memory* %loadMem_412203, %struct.Memory** %MEMORY
  %loadMem1_412206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 33
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %PC.i685
  %624 = add i64 %623, 233514
  %625 = load i64, i64* %PC.i685
  %626 = add i64 %625, 5
  %627 = load i64, i64* %PC.i685
  %628 = add i64 %627, 5
  store i64 %628, i64* %PC.i685
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = add i64 %630, -8
  %632 = inttoptr i64 %631 to i64*
  store i64 %626, i64* %632
  store i64 %631, i64* %629, align 8
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %624, i64* %633, align 8
  store %struct.Memory* %loadMem1_412206, %struct.Memory** %MEMORY
  %loadMem2_412206 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412206 = load i64, i64* %3
  %call2_412206 = call %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* %0, i64 %loadPC_412206, %struct.Memory* %loadMem2_412206)
  store %struct.Memory* %call2_412206, %struct.Memory** %MEMORY
  %loadMem_41220b = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 5
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %ECX.i683 = bitcast %union.anon* %639 to i32*
  %640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %641 = getelementptr inbounds %struct.GPR, %struct.GPR* %640, i32 0, i32 5
  %642 = getelementptr inbounds %struct.Reg, %struct.Reg* %641, i32 0, i32 0
  %RCX.i684 = bitcast %union.anon* %642 to i64*
  %643 = load i64, i64* %RCX.i684
  %644 = load i32, i32* %ECX.i683
  %645 = zext i32 %644 to i64
  %646 = load i64, i64* %PC.i682
  %647 = add i64 %646, 2
  store i64 %647, i64* %PC.i682
  %648 = xor i64 %645, %643
  %649 = trunc i64 %648 to i32
  %650 = and i64 %648, 4294967295
  store i64 %650, i64* %RCX.i684, align 8
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %651, align 1
  %652 = and i32 %649, 255
  %653 = call i32 @llvm.ctpop.i32(i32 %652)
  %654 = trunc i32 %653 to i8
  %655 = and i8 %654, 1
  %656 = xor i8 %655, 1
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %656, i8* %657, align 1
  %658 = icmp eq i32 %649, 0
  %659 = zext i1 %658 to i8
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %659, i8* %660, align 1
  %661 = lshr i32 %649, 31
  %662 = trunc i32 %661 to i8
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %662, i8* %663, align 1
  %664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %664, align 1
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %665, align 1
  store %struct.Memory* %loadMem_41220b, %struct.Memory** %MEMORY
  %loadMem_41220d = load %struct.Memory*, %struct.Memory** %MEMORY
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 33
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %668 to i64*
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 17
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %671 to i32*
  %672 = bitcast i32* %R8D.i to i64*
  %673 = load i64, i64* %PC.i681
  %674 = add i64 %673, 6
  store i64 %674, i64* %PC.i681
  store i64 4294967295, i64* %672, align 8
  store %struct.Memory* %loadMem_41220d, %struct.Memory** %MEMORY
  %loadMem_412213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 15
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 19
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %R9.i = bitcast %union.anon* %683 to i64*
  %684 = load i64, i64* %RBP.i680
  %685 = sub i64 %684, 112
  %686 = load i64, i64* %PC.i679
  %687 = add i64 %686, 4
  store i64 %687, i64* %PC.i679
  store i64 %685, i64* %R9.i, align 8
  store %struct.Memory* %loadMem_412213, %struct.Memory** %MEMORY
  %loadMem_412217 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i677 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 21
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %R10.i678 = bitcast %union.anon* %693 to i64*
  %694 = load i64, i64* %PC.i677
  %695 = add i64 %694, 8
  store i64 %695, i64* %PC.i677
  %696 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %696, i64* %R10.i678, align 8
  store %struct.Memory* %loadMem_412217, %struct.Memory** %MEMORY
  %loadMem_41221f = load %struct.Memory*, %struct.Memory** %MEMORY
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 33
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %699 to i64*
  %700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %701 = getelementptr inbounds %struct.GPR, %struct.GPR* %700, i32 0, i32 11
  %702 = getelementptr inbounds %struct.Reg, %struct.Reg* %701, i32 0, i32 0
  %RDI.i676 = bitcast %union.anon* %702 to i64*
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 21
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %R10.i = bitcast %union.anon* %705 to i64*
  %706 = load i64, i64* %R10.i
  %707 = add i64 %706, 12
  %708 = load i64, i64* %PC.i675
  %709 = add i64 %708, 4
  store i64 %709, i64* %PC.i675
  %710 = inttoptr i64 %707 to i32*
  %711 = load i32, i32* %710
  %712 = zext i32 %711 to i64
  store i64 %712, i64* %RDI.i676, align 8
  store %struct.Memory* %loadMem_41221f, %struct.Memory** %MEMORY
  %loadMem_412223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 33
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %715 to i64*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 9
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RSI.i673 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 15
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RBP.i674 = bitcast %union.anon* %721 to i64*
  %722 = load i64, i64* %RBP.i674
  %723 = sub i64 %722, 20
  %724 = load i64, i64* %PC.i672
  %725 = add i64 %724, 3
  store i64 %725, i64* %PC.i672
  %726 = inttoptr i64 %723 to i32*
  %727 = load i32, i32* %726
  %728 = zext i32 %727 to i64
  store i64 %728, i64* %RSI.i673, align 8
  store %struct.Memory* %loadMem_412223, %struct.Memory** %MEMORY
  %loadMem_412226 = load %struct.Memory*, %struct.Memory** %MEMORY
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 33
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 7
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RDX.i670 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 15
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %737 to i64*
  %738 = load i64, i64* %RBP.i671
  %739 = sub i64 %738, 24
  %740 = load i64, i64* %PC.i669
  %741 = add i64 %740, 3
  store i64 %741, i64* %PC.i669
  %742 = inttoptr i64 %739 to i32*
  %743 = load i32, i32* %742
  %744 = zext i32 %743 to i64
  store i64 %744, i64* %RDX.i670, align 8
  store %struct.Memory* %loadMem_412226, %struct.Memory** %MEMORY
  %loadMem1_412229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 33
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %747 to i64*
  %748 = load i64, i64* %PC.i668
  %749 = add i64 %748, 233479
  %750 = load i64, i64* %PC.i668
  %751 = add i64 %750, 5
  %752 = load i64, i64* %PC.i668
  %753 = add i64 %752, 5
  store i64 %753, i64* %PC.i668
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %755 = load i64, i64* %754, align 8
  %756 = add i64 %755, -8
  %757 = inttoptr i64 %756 to i64*
  store i64 %751, i64* %757
  store i64 %756, i64* %754, align 8
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %749, i64* %758, align 8
  store %struct.Memory* %loadMem1_412229, %struct.Memory** %MEMORY
  %loadMem2_412229 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412229 = load i64, i64* %3
  %call2_412229 = call %struct.Memory* @sub_44b230.getLuma4x4Neighbour(%struct.State* %0, i64 %loadPC_412229, %struct.Memory* %loadMem2_412229)
  store %struct.Memory* %call2_412229, %struct.Memory** %MEMORY
  %loadMem_41222e = load %struct.Memory*, %struct.Memory** %MEMORY
  %759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %760 = getelementptr inbounds %struct.GPR, %struct.GPR* %759, i32 0, i32 33
  %761 = getelementptr inbounds %struct.Reg, %struct.Reg* %760, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %761 to i64*
  %762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %763 = getelementptr inbounds %struct.GPR, %struct.GPR* %762, i32 0, i32 15
  %764 = getelementptr inbounds %struct.Reg, %struct.Reg* %763, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %764 to i64*
  %765 = load i64, i64* %RBP.i667
  %766 = sub i64 %765, 112
  %767 = load i64, i64* %PC.i666
  %768 = add i64 %767, 4
  store i64 %768, i64* %PC.i666
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
  store %struct.Memory* %loadMem_41222e, %struct.Memory** %MEMORY
  %loadMem_412232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %792 = getelementptr inbounds %struct.GPR, %struct.GPR* %791, i32 0, i32 33
  %793 = getelementptr inbounds %struct.Reg, %struct.Reg* %792, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %793 to i64*
  %794 = load i64, i64* %PC.i665
  %795 = add i64 %794, 466
  %796 = load i64, i64* %PC.i665
  %797 = add i64 %796, 6
  %798 = load i64, i64* %PC.i665
  %799 = add i64 %798, 6
  store i64 %799, i64* %PC.i665
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %801 = load i8, i8* %800, align 1
  store i8 %801, i8* %BRANCH_TAKEN, align 1
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %803 = icmp ne i8 %801, 0
  %804 = select i1 %803, i64 %795, i64 %797
  store i64 %804, i64* %802, align 8
  store %struct.Memory* %loadMem_412232, %struct.Memory** %MEMORY
  %loadBr_412232 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412232 = icmp eq i8 %loadBr_412232, 1
  br i1 %cmpBr_412232, label %block_.L_412404, label %block_412238

block_412238:                                     ; preds = %entry
  %loadMem_412238 = load %struct.Memory*, %struct.Memory** %MEMORY
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %806 = getelementptr inbounds %struct.GPR, %struct.GPR* %805, i32 0, i32 33
  %807 = getelementptr inbounds %struct.Reg, %struct.Reg* %806, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %807 to i64*
  %808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %809 = getelementptr inbounds %struct.GPR, %struct.GPR* %808, i32 0, i32 1
  %810 = getelementptr inbounds %struct.Reg, %struct.Reg* %809, i32 0, i32 0
  %RAX.i664 = bitcast %union.anon* %810 to i64*
  %811 = load i64, i64* %PC.i663
  %812 = add i64 %811, 8
  store i64 %812, i64* %PC.i663
  %813 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %813, i64* %RAX.i664, align 8
  store %struct.Memory* %loadMem_412238, %struct.Memory** %MEMORY
  %loadMem_412240 = load %struct.Memory*, %struct.Memory** %MEMORY
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %815 = getelementptr inbounds %struct.GPR, %struct.GPR* %814, i32 0, i32 33
  %816 = getelementptr inbounds %struct.Reg, %struct.Reg* %815, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %816 to i64*
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %818 = getelementptr inbounds %struct.GPR, %struct.GPR* %817, i32 0, i32 1
  %819 = getelementptr inbounds %struct.Reg, %struct.Reg* %818, i32 0, i32 0
  %RAX.i662 = bitcast %union.anon* %819 to i64*
  %820 = load i64, i64* %RAX.i662
  %821 = add i64 %820, 14168
  %822 = load i64, i64* %PC.i661
  %823 = add i64 %822, 7
  store i64 %823, i64* %PC.i661
  %824 = inttoptr i64 %821 to i64*
  %825 = load i64, i64* %824
  store i64 %825, i64* %RAX.i662, align 8
  store %struct.Memory* %loadMem_412240, %struct.Memory** %MEMORY
  %loadMem_412247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 5
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %RCX.i659 = bitcast %union.anon* %831 to i64*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i660
  %836 = sub i64 %835, 108
  %837 = load i64, i64* %PC.i658
  %838 = add i64 %837, 4
  store i64 %838, i64* %PC.i658
  %839 = inttoptr i64 %836 to i32*
  %840 = load i32, i32* %839
  %841 = sext i32 %840 to i64
  store i64 %841, i64* %RCX.i659, align 8
  store %struct.Memory* %loadMem_412247, %struct.Memory** %MEMORY
  %loadMem_41224b = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 5
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RCX.i657 = bitcast %union.anon* %847 to i64*
  %848 = load i64, i64* %RCX.i657
  %849 = load i64, i64* %PC.i656
  %850 = add i64 %849, 7
  store i64 %850, i64* %PC.i656
  %851 = sext i64 %848 to i128
  %852 = and i128 %851, -18446744073709551616
  %853 = zext i64 %848 to i128
  %854 = or i128 %852, %853
  %855 = mul i128 632, %854
  %856 = trunc i128 %855 to i64
  store i64 %856, i64* %RCX.i657, align 8
  %857 = sext i64 %856 to i128
  %858 = icmp ne i128 %857, %855
  %859 = zext i1 %858 to i8
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %859, i8* %860, align 1
  %861 = trunc i128 %855 to i32
  %862 = and i32 %861, 255
  %863 = call i32 @llvm.ctpop.i32(i32 %862)
  %864 = trunc i32 %863 to i8
  %865 = and i8 %864, 1
  %866 = xor i8 %865, 1
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %866, i8* %867, align 1
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %868, align 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %869, align 1
  %870 = lshr i64 %856, 63
  %871 = trunc i64 %870 to i8
  %872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %871, i8* %872, align 1
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %859, i8* %873, align 1
  store %struct.Memory* %loadMem_41224b, %struct.Memory** %MEMORY
  %loadMem_412252 = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %879 to i64*
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %881 = getelementptr inbounds %struct.GPR, %struct.GPR* %880, i32 0, i32 5
  %882 = getelementptr inbounds %struct.Reg, %struct.Reg* %881, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %882 to i64*
  %883 = load i64, i64* %RAX.i654
  %884 = load i64, i64* %RCX.i655
  %885 = load i64, i64* %PC.i653
  %886 = add i64 %885, 3
  store i64 %886, i64* %PC.i653
  %887 = add i64 %884, %883
  store i64 %887, i64* %RAX.i654, align 8
  %888 = icmp ult i64 %887, %883
  %889 = icmp ult i64 %887, %884
  %890 = or i1 %888, %889
  %891 = zext i1 %890 to i8
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %891, i8* %892, align 1
  %893 = trunc i64 %887 to i32
  %894 = and i32 %893, 255
  %895 = call i32 @llvm.ctpop.i32(i32 %894)
  %896 = trunc i32 %895 to i8
  %897 = and i8 %896, 1
  %898 = xor i8 %897, 1
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %898, i8* %899, align 1
  %900 = xor i64 %884, %883
  %901 = xor i64 %900, %887
  %902 = lshr i64 %901, 4
  %903 = trunc i64 %902 to i8
  %904 = and i8 %903, 1
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %904, i8* %905, align 1
  %906 = icmp eq i64 %887, 0
  %907 = zext i1 %906 to i8
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %907, i8* %908, align 1
  %909 = lshr i64 %887, 63
  %910 = trunc i64 %909 to i8
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %910, i8* %911, align 1
  %912 = lshr i64 %883, 63
  %913 = lshr i64 %884, 63
  %914 = xor i64 %909, %912
  %915 = xor i64 %909, %913
  %916 = add i64 %914, %915
  %917 = icmp eq i64 %916, 2
  %918 = zext i1 %917 to i8
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %918, i8* %919, align 1
  store %struct.Memory* %loadMem_412252, %struct.Memory** %MEMORY
  %loadMem_412255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 1
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %RAX.i652 = bitcast %union.anon* %925 to i64*
  %926 = load i64, i64* %RAX.i652
  %927 = load i64, i64* %PC.i651
  %928 = add i64 %927, 4
  store i64 %928, i64* %PC.i651
  %929 = add i64 76, %926
  store i64 %929, i64* %RAX.i652, align 8
  %930 = icmp ult i64 %929, %926
  %931 = icmp ult i64 %929, 76
  %932 = or i1 %930, %931
  %933 = zext i1 %932 to i8
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %933, i8* %934, align 1
  %935 = trunc i64 %929 to i32
  %936 = and i32 %935, 255
  %937 = call i32 @llvm.ctpop.i32(i32 %936)
  %938 = trunc i32 %937 to i8
  %939 = and i8 %938, 1
  %940 = xor i8 %939, 1
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %940, i8* %941, align 1
  %942 = xor i64 76, %926
  %943 = xor i64 %942, %929
  %944 = lshr i64 %943, 4
  %945 = trunc i64 %944 to i8
  %946 = and i8 %945, 1
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %946, i8* %947, align 1
  %948 = icmp eq i64 %929, 0
  %949 = zext i1 %948 to i8
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %949, i8* %950, align 1
  %951 = lshr i64 %929, 63
  %952 = trunc i64 %951 to i8
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %952, i8* %953, align 1
  %954 = lshr i64 %926, 63
  %955 = xor i64 %951, %954
  %956 = add i64 %955, %951
  %957 = icmp eq i64 %956, 2
  %958 = zext i1 %957 to i8
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %958, i8* %959, align 1
  store %struct.Memory* %loadMem_412255, %struct.Memory** %MEMORY
  %loadMem_412259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 33
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %PC.i648 = bitcast %union.anon* %962 to i64*
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 5
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %RCX.i649 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i650 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i650
  %970 = sub i64 %969, 56
  %971 = load i64, i64* %PC.i648
  %972 = add i64 %971, 4
  store i64 %972, i64* %PC.i648
  %973 = inttoptr i64 %970 to i32*
  %974 = load i32, i32* %973
  %975 = sext i32 %974 to i64
  store i64 %975, i64* %RCX.i649, align 8
  store %struct.Memory* %loadMem_412259, %struct.Memory** %MEMORY
  %loadMem_41225d = load %struct.Memory*, %struct.Memory** %MEMORY
  %976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %977 = getelementptr inbounds %struct.GPR, %struct.GPR* %976, i32 0, i32 33
  %978 = getelementptr inbounds %struct.Reg, %struct.Reg* %977, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %978 to i64*
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %980 = getelementptr inbounds %struct.GPR, %struct.GPR* %979, i32 0, i32 5
  %981 = getelementptr inbounds %struct.Reg, %struct.Reg* %980, i32 0, i32 0
  %RCX.i647 = bitcast %union.anon* %981 to i64*
  %982 = load i64, i64* %RCX.i647
  %983 = load i64, i64* %PC.i646
  %984 = add i64 %983, 4
  store i64 %984, i64* %PC.i646
  %985 = shl i64 %982, 6
  %986 = icmp slt i64 %985, 0
  %987 = shl i64 %985, 1
  store i64 %987, i64* %RCX.i647, align 8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %989 = zext i1 %986 to i8
  store i8 %989, i8* %988, align 1
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %991 = trunc i64 %987 to i32
  %992 = and i32 %991, 254
  %993 = call i32 @llvm.ctpop.i32(i32 %992)
  %994 = trunc i32 %993 to i8
  %995 = and i8 %994, 1
  %996 = xor i8 %995, 1
  store i8 %996, i8* %990, align 1
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %997, align 1
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %999 = icmp eq i64 %987, 0
  %1000 = zext i1 %999 to i8
  store i8 %1000, i8* %998, align 1
  %1001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1002 = lshr i64 %987, 63
  %1003 = trunc i64 %1002 to i8
  store i8 %1003, i8* %1001, align 1
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1004, align 1
  store %struct.Memory* %loadMem_41225d, %struct.Memory** %MEMORY
  %loadMem_412261 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1006 = getelementptr inbounds %struct.GPR, %struct.GPR* %1005, i32 0, i32 33
  %1007 = getelementptr inbounds %struct.Reg, %struct.Reg* %1006, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1007 to i64*
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1012 = getelementptr inbounds %struct.GPR, %struct.GPR* %1011, i32 0, i32 5
  %1013 = getelementptr inbounds %struct.Reg, %struct.Reg* %1012, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %1013 to i64*
  %1014 = load i64, i64* %RAX.i644
  %1015 = load i64, i64* %RCX.i645
  %1016 = load i64, i64* %PC.i643
  %1017 = add i64 %1016, 3
  store i64 %1017, i64* %PC.i643
  %1018 = add i64 %1015, %1014
  store i64 %1018, i64* %RAX.i644, align 8
  %1019 = icmp ult i64 %1018, %1014
  %1020 = icmp ult i64 %1018, %1015
  %1021 = or i1 %1019, %1020
  %1022 = zext i1 %1021 to i8
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1022, i8* %1023, align 1
  %1024 = trunc i64 %1018 to i32
  %1025 = and i32 %1024, 255
  %1026 = call i32 @llvm.ctpop.i32(i32 %1025)
  %1027 = trunc i32 %1026 to i8
  %1028 = and i8 %1027, 1
  %1029 = xor i8 %1028, 1
  %1030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1029, i8* %1030, align 1
  %1031 = xor i64 %1015, %1014
  %1032 = xor i64 %1031, %1018
  %1033 = lshr i64 %1032, 4
  %1034 = trunc i64 %1033 to i8
  %1035 = and i8 %1034, 1
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1035, i8* %1036, align 1
  %1037 = icmp eq i64 %1018, 0
  %1038 = zext i1 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1038, i8* %1039, align 1
  %1040 = lshr i64 %1018, 63
  %1041 = trunc i64 %1040 to i8
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1041, i8* %1042, align 1
  %1043 = lshr i64 %1014, 63
  %1044 = lshr i64 %1015, 63
  %1045 = xor i64 %1040, %1043
  %1046 = xor i64 %1040, %1044
  %1047 = add i64 %1045, %1046
  %1048 = icmp eq i64 %1047, 2
  %1049 = zext i1 %1048 to i8
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1049, i8* %1050, align 1
  store %struct.Memory* %loadMem_412261, %struct.Memory** %MEMORY
  %loadMem_412264 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1052 = getelementptr inbounds %struct.GPR, %struct.GPR* %1051, i32 0, i32 33
  %1053 = getelementptr inbounds %struct.Reg, %struct.Reg* %1052, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1053 to i64*
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 5
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %RCX.i641 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 15
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %RBP.i642 = bitcast %union.anon* %1059 to i64*
  %1060 = load i64, i64* %RBP.i642
  %1061 = sub i64 %1060, 100
  %1062 = load i64, i64* %PC.i640
  %1063 = add i64 %1062, 4
  store i64 %1063, i64* %PC.i640
  %1064 = inttoptr i64 %1061 to i32*
  %1065 = load i32, i32* %1064
  %1066 = sext i32 %1065 to i64
  store i64 %1066, i64* %RCX.i641, align 8
  store %struct.Memory* %loadMem_412264, %struct.Memory** %MEMORY
  %loadMem_412268 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 33
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 5
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RCX.i639
  %1074 = load i64, i64* %PC.i638
  %1075 = add i64 %1074, 4
  store i64 %1075, i64* %PC.i638
  %1076 = shl i64 %1073, 4
  %1077 = icmp slt i64 %1076, 0
  %1078 = shl i64 %1076, 1
  store i64 %1078, i64* %RCX.i639, align 8
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1080 = zext i1 %1077 to i8
  store i8 %1080, i8* %1079, align 1
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1082 = trunc i64 %1078 to i32
  %1083 = and i32 %1082, 254
  %1084 = call i32 @llvm.ctpop.i32(i32 %1083)
  %1085 = trunc i32 %1084 to i8
  %1086 = and i8 %1085, 1
  %1087 = xor i8 %1086, 1
  store i8 %1087, i8* %1081, align 1
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1088, align 1
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1090 = icmp eq i64 %1078, 0
  %1091 = zext i1 %1090 to i8
  store i8 %1091, i8* %1089, align 1
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1093 = lshr i64 %1078, 63
  %1094 = trunc i64 %1093 to i8
  store i8 %1094, i8* %1092, align 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1095, align 1
  store %struct.Memory* %loadMem_412268, %struct.Memory** %MEMORY
  %loadMem_41226c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1097 = getelementptr inbounds %struct.GPR, %struct.GPR* %1096, i32 0, i32 33
  %1098 = getelementptr inbounds %struct.Reg, %struct.Reg* %1097, i32 0, i32 0
  %PC.i635 = bitcast %union.anon* %1098 to i64*
  %1099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1100 = getelementptr inbounds %struct.GPR, %struct.GPR* %1099, i32 0, i32 1
  %1101 = getelementptr inbounds %struct.Reg, %struct.Reg* %1100, i32 0, i32 0
  %RAX.i636 = bitcast %union.anon* %1101 to i64*
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 5
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %RCX.i637 = bitcast %union.anon* %1104 to i64*
  %1105 = load i64, i64* %RAX.i636
  %1106 = load i64, i64* %RCX.i637
  %1107 = load i64, i64* %PC.i635
  %1108 = add i64 %1107, 3
  store i64 %1108, i64* %PC.i635
  %1109 = add i64 %1106, %1105
  store i64 %1109, i64* %RAX.i636, align 8
  %1110 = icmp ult i64 %1109, %1105
  %1111 = icmp ult i64 %1109, %1106
  %1112 = or i1 %1110, %1111
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1113, i8* %1114, align 1
  %1115 = trunc i64 %1109 to i32
  %1116 = and i32 %1115, 255
  %1117 = call i32 @llvm.ctpop.i32(i32 %1116)
  %1118 = trunc i32 %1117 to i8
  %1119 = and i8 %1118, 1
  %1120 = xor i8 %1119, 1
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1120, i8* %1121, align 1
  %1122 = xor i64 %1106, %1105
  %1123 = xor i64 %1122, %1109
  %1124 = lshr i64 %1123, 4
  %1125 = trunc i64 %1124 to i8
  %1126 = and i8 %1125, 1
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1126, i8* %1127, align 1
  %1128 = icmp eq i64 %1109, 0
  %1129 = zext i1 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i64 %1109, 63
  %1132 = trunc i64 %1131 to i8
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1132, i8* %1133, align 1
  %1134 = lshr i64 %1105, 63
  %1135 = lshr i64 %1106, 63
  %1136 = xor i64 %1131, %1134
  %1137 = xor i64 %1131, %1135
  %1138 = add i64 %1136, %1137
  %1139 = icmp eq i64 %1138, 2
  %1140 = zext i1 %1139 to i8
  %1141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1140, i8* %1141, align 1
  store %struct.Memory* %loadMem_41226c, %struct.Memory** %MEMORY
  %loadMem_41226f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 5
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 15
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %RBP.i634 = bitcast %union.anon* %1150 to i64*
  %1151 = load i64, i64* %RBP.i634
  %1152 = sub i64 %1151, 104
  %1153 = load i64, i64* %PC.i632
  %1154 = add i64 %1153, 4
  store i64 %1154, i64* %PC.i632
  %1155 = inttoptr i64 %1152 to i32*
  %1156 = load i32, i32* %1155
  %1157 = sext i32 %1156 to i64
  store i64 %1157, i64* %RCX.i633, align 8
  store %struct.Memory* %loadMem_41226f, %struct.Memory** %MEMORY
  %loadMem_412273 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 33
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 5
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RCX.i631
  %1165 = load i64, i64* %PC.i630
  %1166 = add i64 %1165, 4
  store i64 %1166, i64* %PC.i630
  %1167 = shl i64 %1164, 2
  %1168 = icmp slt i64 %1167, 0
  %1169 = shl i64 %1167, 1
  store i64 %1169, i64* %RCX.i631, align 8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1171 = zext i1 %1168 to i8
  store i8 %1171, i8* %1170, align 1
  %1172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1173 = trunc i64 %1169 to i32
  %1174 = and i32 %1173, 254
  %1175 = call i32 @llvm.ctpop.i32(i32 %1174)
  %1176 = trunc i32 %1175 to i8
  %1177 = and i8 %1176, 1
  %1178 = xor i8 %1177, 1
  store i8 %1178, i8* %1172, align 1
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1179, align 1
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1181 = icmp eq i64 %1169, 0
  %1182 = zext i1 %1181 to i8
  store i8 %1182, i8* %1180, align 1
  %1183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1184 = lshr i64 %1169, 63
  %1185 = trunc i64 %1184 to i8
  store i8 %1185, i8* %1183, align 1
  %1186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1186, align 1
  store %struct.Memory* %loadMem_412273, %struct.Memory** %MEMORY
  %loadMem_412277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %RAX.i628 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 5
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %1195 to i64*
  %1196 = load i64, i64* %RAX.i628
  %1197 = load i64, i64* %RCX.i629
  %1198 = load i64, i64* %PC.i627
  %1199 = add i64 %1198, 3
  store i64 %1199, i64* %PC.i627
  %1200 = add i64 %1197, %1196
  store i64 %1200, i64* %RAX.i628, align 8
  %1201 = icmp ult i64 %1200, %1196
  %1202 = icmp ult i64 %1200, %1197
  %1203 = or i1 %1201, %1202
  %1204 = zext i1 %1203 to i8
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1204, i8* %1205, align 1
  %1206 = trunc i64 %1200 to i32
  %1207 = and i32 %1206, 255
  %1208 = call i32 @llvm.ctpop.i32(i32 %1207)
  %1209 = trunc i32 %1208 to i8
  %1210 = and i8 %1209, 1
  %1211 = xor i8 %1210, 1
  %1212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1211, i8* %1212, align 1
  %1213 = xor i64 %1197, %1196
  %1214 = xor i64 %1213, %1200
  %1215 = lshr i64 %1214, 4
  %1216 = trunc i64 %1215 to i8
  %1217 = and i8 %1216, 1
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1217, i8* %1218, align 1
  %1219 = icmp eq i64 %1200, 0
  %1220 = zext i1 %1219 to i8
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1220, i8* %1221, align 1
  %1222 = lshr i64 %1200, 63
  %1223 = trunc i64 %1222 to i8
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1223, i8* %1224, align 1
  %1225 = lshr i64 %1196, 63
  %1226 = lshr i64 %1197, 63
  %1227 = xor i64 %1222, %1225
  %1228 = xor i64 %1222, %1226
  %1229 = add i64 %1227, %1228
  %1230 = icmp eq i64 %1229, 2
  %1231 = zext i1 %1230 to i8
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1231, i8* %1232, align 1
  store %struct.Memory* %loadMem_412277, %struct.Memory** %MEMORY
  %loadMem_41227a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 33
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %PC.i624 = bitcast %union.anon* %1235 to i64*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 5
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RCX.i625 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 15
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %RBP.i626 = bitcast %union.anon* %1241 to i64*
  %1242 = load i64, i64* %RBP.i626
  %1243 = sub i64 %1242, 60
  %1244 = load i64, i64* %PC.i624
  %1245 = add i64 %1244, 4
  store i64 %1245, i64* %PC.i624
  %1246 = inttoptr i64 %1243 to i32*
  %1247 = load i32, i32* %1246
  %1248 = sext i32 %1247 to i64
  store i64 %1248, i64* %RCX.i625, align 8
  store %struct.Memory* %loadMem_41227a, %struct.Memory** %MEMORY
  %loadMem_41227e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i621 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i622 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 5
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RCX.i623 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %RAX.i622
  %1259 = load i64, i64* %RCX.i623
  %1260 = mul i64 %1259, 4
  %1261 = add i64 %1260, %1258
  %1262 = load i64, i64* %PC.i621
  %1263 = add i64 %1262, 4
  store i64 %1263, i64* %PC.i621
  %1264 = inttoptr i64 %1261 to i32*
  %1265 = load i32, i32* %1264
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1266, align 1
  %1267 = and i32 %1265, 255
  %1268 = call i32 @llvm.ctpop.i32(i32 %1267)
  %1269 = trunc i32 %1268 to i8
  %1270 = and i8 %1269, 1
  %1271 = xor i8 %1270, 1
  %1272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1271, i8* %1272, align 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1273, align 1
  %1274 = icmp eq i32 %1265, 0
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1275, i8* %1276, align 1
  %1277 = lshr i32 %1265, 31
  %1278 = trunc i32 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1278, i8* %1279, align 1
  %1280 = lshr i32 %1265, 31
  %1281 = xor i32 %1277, %1280
  %1282 = add i32 %1281, %1280
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1284, i8* %1285, align 1
  store %struct.Memory* %loadMem_41227e, %struct.Memory** %MEMORY
  %loadMem_412282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i620
  %1290 = add i64 %1289, 92
  %1291 = load i64, i64* %PC.i620
  %1292 = add i64 %1291, 6
  %1293 = load i64, i64* %PC.i620
  %1294 = add i64 %1293, 6
  store i64 %1294, i64* %PC.i620
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1296 = load i8, i8* %1295, align 1
  %1297 = icmp ne i8 %1296, 0
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1299 = load i8, i8* %1298, align 1
  %1300 = icmp ne i8 %1299, 0
  %1301 = xor i1 %1297, %1300
  %1302 = xor i1 %1301, true
  %1303 = zext i1 %1302 to i8
  store i8 %1303, i8* %BRANCH_TAKEN, align 1
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1305 = select i1 %1301, i64 %1292, i64 %1290
  store i64 %1305, i64* %1304, align 8
  store %struct.Memory* %loadMem_412282, %struct.Memory** %MEMORY
  %loadBr_412282 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412282 = icmp eq i8 %loadBr_412282, 1
  br i1 %cmpBr_412282, label %block_.L_4122de, label %block_412288

block_412288:                                     ; preds = %block_412238
  %loadMem_412288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1307 = getelementptr inbounds %struct.GPR, %struct.GPR* %1306, i32 0, i32 33
  %1308 = getelementptr inbounds %struct.Reg, %struct.Reg* %1307, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %1308 to i64*
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 1
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %EAX.i618 = bitcast %union.anon* %1311 to i32*
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1313 = getelementptr inbounds %struct.GPR, %struct.GPR* %1312, i32 0, i32 1
  %1314 = getelementptr inbounds %struct.Reg, %struct.Reg* %1313, i32 0, i32 0
  %RAX.i619 = bitcast %union.anon* %1314 to i64*
  %1315 = load i64, i64* %RAX.i619
  %1316 = load i32, i32* %EAX.i618
  %1317 = zext i32 %1316 to i64
  %1318 = load i64, i64* %PC.i617
  %1319 = add i64 %1318, 2
  store i64 %1319, i64* %PC.i617
  %1320 = xor i64 %1317, %1315
  %1321 = trunc i64 %1320 to i32
  %1322 = and i64 %1320, 4294967295
  store i64 %1322, i64* %RAX.i619, align 8
  %1323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1323, align 1
  %1324 = and i32 %1321, 255
  %1325 = call i32 @llvm.ctpop.i32(i32 %1324)
  %1326 = trunc i32 %1325 to i8
  %1327 = and i8 %1326, 1
  %1328 = xor i8 %1327, 1
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1328, i8* %1329, align 1
  %1330 = icmp eq i32 %1321, 0
  %1331 = zext i1 %1330 to i8
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1331, i8* %1332, align 1
  %1333 = lshr i32 %1321, 31
  %1334 = trunc i32 %1333 to i8
  %1335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1334, i8* %1335, align 1
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1336, align 1
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1337, align 1
  store %struct.Memory* %loadMem_412288, %struct.Memory** %MEMORY
  %loadMem_41228a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 5
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %1343 to i64*
  %1344 = load i64, i64* %PC.i615
  %1345 = add i64 %1344, 8
  store i64 %1345, i64* %PC.i615
  %1346 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1346, i64* %RCX.i616, align 8
  store %struct.Memory* %loadMem_41228a, %struct.Memory** %MEMORY
  %loadMem_412292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 33
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 5
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RCX.i614 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RCX.i614
  %1354 = add i64 %1353, 14168
  %1355 = load i64, i64* %PC.i613
  %1356 = add i64 %1355, 7
  store i64 %1356, i64* %PC.i613
  %1357 = inttoptr i64 %1354 to i64*
  %1358 = load i64, i64* %1357
  store i64 %1358, i64* %RCX.i614, align 8
  store %struct.Memory* %loadMem_412292, %struct.Memory** %MEMORY
  %loadMem_412299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 7
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RDX.i611 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 15
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %RBP.i612 = bitcast %union.anon* %1367 to i64*
  %1368 = load i64, i64* %RBP.i612
  %1369 = sub i64 %1368, 108
  %1370 = load i64, i64* %PC.i610
  %1371 = add i64 %1370, 4
  store i64 %1371, i64* %PC.i610
  %1372 = inttoptr i64 %1369 to i32*
  %1373 = load i32, i32* %1372
  %1374 = sext i32 %1373 to i64
  store i64 %1374, i64* %RDX.i611, align 8
  store %struct.Memory* %loadMem_412299, %struct.Memory** %MEMORY
  %loadMem_41229d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1376 = getelementptr inbounds %struct.GPR, %struct.GPR* %1375, i32 0, i32 33
  %1377 = getelementptr inbounds %struct.Reg, %struct.Reg* %1376, i32 0, i32 0
  %PC.i608 = bitcast %union.anon* %1377 to i64*
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 7
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %RDX.i609 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %RDX.i609
  %1382 = load i64, i64* %PC.i608
  %1383 = add i64 %1382, 7
  store i64 %1383, i64* %PC.i608
  %1384 = sext i64 %1381 to i128
  %1385 = and i128 %1384, -18446744073709551616
  %1386 = zext i64 %1381 to i128
  %1387 = or i128 %1385, %1386
  %1388 = mul i128 632, %1387
  %1389 = trunc i128 %1388 to i64
  store i64 %1389, i64* %RDX.i609, align 8
  %1390 = sext i64 %1389 to i128
  %1391 = icmp ne i128 %1390, %1388
  %1392 = zext i1 %1391 to i8
  %1393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1392, i8* %1393, align 1
  %1394 = trunc i128 %1388 to i32
  %1395 = and i32 %1394, 255
  %1396 = call i32 @llvm.ctpop.i32(i32 %1395)
  %1397 = trunc i32 %1396 to i8
  %1398 = and i8 %1397, 1
  %1399 = xor i8 %1398, 1
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1399, i8* %1400, align 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1401, align 1
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1402, align 1
  %1403 = lshr i64 %1389, 63
  %1404 = trunc i64 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1404, i8* %1405, align 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1392, i8* %1406, align 1
  store %struct.Memory* %loadMem_41229d, %struct.Memory** %MEMORY
  %loadMem_4122a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i605 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 5
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 7
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RDX.i607 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %RCX.i606
  %1417 = load i64, i64* %RDX.i607
  %1418 = load i64, i64* %PC.i605
  %1419 = add i64 %1418, 3
  store i64 %1419, i64* %PC.i605
  %1420 = add i64 %1417, %1416
  store i64 %1420, i64* %RCX.i606, align 8
  %1421 = icmp ult i64 %1420, %1416
  %1422 = icmp ult i64 %1420, %1417
  %1423 = or i1 %1421, %1422
  %1424 = zext i1 %1423 to i8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1424, i8* %1425, align 1
  %1426 = trunc i64 %1420 to i32
  %1427 = and i32 %1426, 255
  %1428 = call i32 @llvm.ctpop.i32(i32 %1427)
  %1429 = trunc i32 %1428 to i8
  %1430 = and i8 %1429, 1
  %1431 = xor i8 %1430, 1
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1431, i8* %1432, align 1
  %1433 = xor i64 %1417, %1416
  %1434 = xor i64 %1433, %1420
  %1435 = lshr i64 %1434, 4
  %1436 = trunc i64 %1435 to i8
  %1437 = and i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1437, i8* %1438, align 1
  %1439 = icmp eq i64 %1420, 0
  %1440 = zext i1 %1439 to i8
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1440, i8* %1441, align 1
  %1442 = lshr i64 %1420, 63
  %1443 = trunc i64 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1443, i8* %1444, align 1
  %1445 = lshr i64 %1416, 63
  %1446 = lshr i64 %1417, 63
  %1447 = xor i64 %1442, %1445
  %1448 = xor i64 %1442, %1446
  %1449 = add i64 %1447, %1448
  %1450 = icmp eq i64 %1449, 2
  %1451 = zext i1 %1450 to i8
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1451, i8* %1452, align 1
  store %struct.Memory* %loadMem_4122a4, %struct.Memory** %MEMORY
  %loadMem_4122a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1454 = getelementptr inbounds %struct.GPR, %struct.GPR* %1453, i32 0, i32 33
  %1455 = getelementptr inbounds %struct.Reg, %struct.Reg* %1454, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %1455 to i64*
  %1456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1457 = getelementptr inbounds %struct.GPR, %struct.GPR* %1456, i32 0, i32 5
  %1458 = getelementptr inbounds %struct.Reg, %struct.Reg* %1457, i32 0, i32 0
  %RCX.i604 = bitcast %union.anon* %1458 to i64*
  %1459 = load i64, i64* %RCX.i604
  %1460 = load i64, i64* %PC.i603
  %1461 = add i64 %1460, 4
  store i64 %1461, i64* %PC.i603
  %1462 = add i64 76, %1459
  store i64 %1462, i64* %RCX.i604, align 8
  %1463 = icmp ult i64 %1462, %1459
  %1464 = icmp ult i64 %1462, 76
  %1465 = or i1 %1463, %1464
  %1466 = zext i1 %1465 to i8
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1466, i8* %1467, align 1
  %1468 = trunc i64 %1462 to i32
  %1469 = and i32 %1468, 255
  %1470 = call i32 @llvm.ctpop.i32(i32 %1469)
  %1471 = trunc i32 %1470 to i8
  %1472 = and i8 %1471, 1
  %1473 = xor i8 %1472, 1
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1473, i8* %1474, align 1
  %1475 = xor i64 76, %1459
  %1476 = xor i64 %1475, %1462
  %1477 = lshr i64 %1476, 4
  %1478 = trunc i64 %1477 to i8
  %1479 = and i8 %1478, 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1479, i8* %1480, align 1
  %1481 = icmp eq i64 %1462, 0
  %1482 = zext i1 %1481 to i8
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1482, i8* %1483, align 1
  %1484 = lshr i64 %1462, 63
  %1485 = trunc i64 %1484 to i8
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1485, i8* %1486, align 1
  %1487 = lshr i64 %1459, 63
  %1488 = xor i64 %1484, %1487
  %1489 = add i64 %1488, %1484
  %1490 = icmp eq i64 %1489, 2
  %1491 = zext i1 %1490 to i8
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1491, i8* %1492, align 1
  store %struct.Memory* %loadMem_4122a7, %struct.Memory** %MEMORY
  %loadMem_4122ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1494 = getelementptr inbounds %struct.GPR, %struct.GPR* %1493, i32 0, i32 33
  %1495 = getelementptr inbounds %struct.Reg, %struct.Reg* %1494, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %1495 to i64*
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1497 = getelementptr inbounds %struct.GPR, %struct.GPR* %1496, i32 0, i32 7
  %1498 = getelementptr inbounds %struct.Reg, %struct.Reg* %1497, i32 0, i32 0
  %RDX.i601 = bitcast %union.anon* %1498 to i64*
  %1499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1500 = getelementptr inbounds %struct.GPR, %struct.GPR* %1499, i32 0, i32 15
  %1501 = getelementptr inbounds %struct.Reg, %struct.Reg* %1500, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %1501 to i64*
  %1502 = load i64, i64* %RBP.i602
  %1503 = sub i64 %1502, 56
  %1504 = load i64, i64* %PC.i600
  %1505 = add i64 %1504, 4
  store i64 %1505, i64* %PC.i600
  %1506 = inttoptr i64 %1503 to i32*
  %1507 = load i32, i32* %1506
  %1508 = sext i32 %1507 to i64
  store i64 %1508, i64* %RDX.i601, align 8
  store %struct.Memory* %loadMem_4122ab, %struct.Memory** %MEMORY
  %loadMem_4122af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 33
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %1511 to i64*
  %1512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1513 = getelementptr inbounds %struct.GPR, %struct.GPR* %1512, i32 0, i32 7
  %1514 = getelementptr inbounds %struct.Reg, %struct.Reg* %1513, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %1514 to i64*
  %1515 = load i64, i64* %RDX.i599
  %1516 = load i64, i64* %PC.i598
  %1517 = add i64 %1516, 4
  store i64 %1517, i64* %PC.i598
  %1518 = shl i64 %1515, 6
  %1519 = icmp slt i64 %1518, 0
  %1520 = shl i64 %1518, 1
  store i64 %1520, i64* %RDX.i599, align 8
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1522 = zext i1 %1519 to i8
  store i8 %1522, i8* %1521, align 1
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1524 = trunc i64 %1520 to i32
  %1525 = and i32 %1524, 254
  %1526 = call i32 @llvm.ctpop.i32(i32 %1525)
  %1527 = trunc i32 %1526 to i8
  %1528 = and i8 %1527, 1
  %1529 = xor i8 %1528, 1
  store i8 %1529, i8* %1523, align 1
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1530, align 1
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1532 = icmp eq i64 %1520, 0
  %1533 = zext i1 %1532 to i8
  store i8 %1533, i8* %1531, align 1
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1535 = lshr i64 %1520, 63
  %1536 = trunc i64 %1535 to i8
  store i8 %1536, i8* %1534, align 1
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1537, align 1
  store %struct.Memory* %loadMem_4122af, %struct.Memory** %MEMORY
  %loadMem_4122b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 33
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %1540 to i64*
  %1541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1542 = getelementptr inbounds %struct.GPR, %struct.GPR* %1541, i32 0, i32 5
  %1543 = getelementptr inbounds %struct.Reg, %struct.Reg* %1542, i32 0, i32 0
  %RCX.i596 = bitcast %union.anon* %1543 to i64*
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 7
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %RDX.i597 = bitcast %union.anon* %1546 to i64*
  %1547 = load i64, i64* %RCX.i596
  %1548 = load i64, i64* %RDX.i597
  %1549 = load i64, i64* %PC.i595
  %1550 = add i64 %1549, 3
  store i64 %1550, i64* %PC.i595
  %1551 = add i64 %1548, %1547
  store i64 %1551, i64* %RCX.i596, align 8
  %1552 = icmp ult i64 %1551, %1547
  %1553 = icmp ult i64 %1551, %1548
  %1554 = or i1 %1552, %1553
  %1555 = zext i1 %1554 to i8
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1555, i8* %1556, align 1
  %1557 = trunc i64 %1551 to i32
  %1558 = and i32 %1557, 255
  %1559 = call i32 @llvm.ctpop.i32(i32 %1558)
  %1560 = trunc i32 %1559 to i8
  %1561 = and i8 %1560, 1
  %1562 = xor i8 %1561, 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1562, i8* %1563, align 1
  %1564 = xor i64 %1548, %1547
  %1565 = xor i64 %1564, %1551
  %1566 = lshr i64 %1565, 4
  %1567 = trunc i64 %1566 to i8
  %1568 = and i8 %1567, 1
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1568, i8* %1569, align 1
  %1570 = icmp eq i64 %1551, 0
  %1571 = zext i1 %1570 to i8
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1571, i8* %1572, align 1
  %1573 = lshr i64 %1551, 63
  %1574 = trunc i64 %1573 to i8
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1574, i8* %1575, align 1
  %1576 = lshr i64 %1547, 63
  %1577 = lshr i64 %1548, 63
  %1578 = xor i64 %1573, %1576
  %1579 = xor i64 %1573, %1577
  %1580 = add i64 %1578, %1579
  %1581 = icmp eq i64 %1580, 2
  %1582 = zext i1 %1581 to i8
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1582, i8* %1583, align 1
  store %struct.Memory* %loadMem_4122b3, %struct.Memory** %MEMORY
  %loadMem_4122b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %1586 to i64*
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1588 = getelementptr inbounds %struct.GPR, %struct.GPR* %1587, i32 0, i32 7
  %1589 = getelementptr inbounds %struct.Reg, %struct.Reg* %1588, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %1589 to i64*
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 15
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %RBP.i594 = bitcast %union.anon* %1592 to i64*
  %1593 = load i64, i64* %RBP.i594
  %1594 = sub i64 %1593, 100
  %1595 = load i64, i64* %PC.i592
  %1596 = add i64 %1595, 4
  store i64 %1596, i64* %PC.i592
  %1597 = inttoptr i64 %1594 to i32*
  %1598 = load i32, i32* %1597
  %1599 = sext i32 %1598 to i64
  store i64 %1599, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_4122b6, %struct.Memory** %MEMORY
  %loadMem_4122ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %1600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1601 = getelementptr inbounds %struct.GPR, %struct.GPR* %1600, i32 0, i32 33
  %1602 = getelementptr inbounds %struct.Reg, %struct.Reg* %1601, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %1602 to i64*
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1604 = getelementptr inbounds %struct.GPR, %struct.GPR* %1603, i32 0, i32 7
  %1605 = getelementptr inbounds %struct.Reg, %struct.Reg* %1604, i32 0, i32 0
  %RDX.i591 = bitcast %union.anon* %1605 to i64*
  %1606 = load i64, i64* %RDX.i591
  %1607 = load i64, i64* %PC.i590
  %1608 = add i64 %1607, 4
  store i64 %1608, i64* %PC.i590
  %1609 = shl i64 %1606, 4
  %1610 = icmp slt i64 %1609, 0
  %1611 = shl i64 %1609, 1
  store i64 %1611, i64* %RDX.i591, align 8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1613 = zext i1 %1610 to i8
  store i8 %1613, i8* %1612, align 1
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1615 = trunc i64 %1611 to i32
  %1616 = and i32 %1615, 254
  %1617 = call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  store i8 %1620, i8* %1614, align 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1621, align 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1623 = icmp eq i64 %1611, 0
  %1624 = zext i1 %1623 to i8
  store i8 %1624, i8* %1622, align 1
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1626 = lshr i64 %1611, 63
  %1627 = trunc i64 %1626 to i8
  store i8 %1627, i8* %1625, align 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1628, align 1
  store %struct.Memory* %loadMem_4122ba, %struct.Memory** %MEMORY
  %loadMem_4122be = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 5
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RCX.i588 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 7
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RDX.i589 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %RCX.i588
  %1639 = load i64, i64* %RDX.i589
  %1640 = load i64, i64* %PC.i587
  %1641 = add i64 %1640, 3
  store i64 %1641, i64* %PC.i587
  %1642 = add i64 %1639, %1638
  store i64 %1642, i64* %RCX.i588, align 8
  %1643 = icmp ult i64 %1642, %1638
  %1644 = icmp ult i64 %1642, %1639
  %1645 = or i1 %1643, %1644
  %1646 = zext i1 %1645 to i8
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1646, i8* %1647, align 1
  %1648 = trunc i64 %1642 to i32
  %1649 = and i32 %1648, 255
  %1650 = call i32 @llvm.ctpop.i32(i32 %1649)
  %1651 = trunc i32 %1650 to i8
  %1652 = and i8 %1651, 1
  %1653 = xor i8 %1652, 1
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1653, i8* %1654, align 1
  %1655 = xor i64 %1639, %1638
  %1656 = xor i64 %1655, %1642
  %1657 = lshr i64 %1656, 4
  %1658 = trunc i64 %1657 to i8
  %1659 = and i8 %1658, 1
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1659, i8* %1660, align 1
  %1661 = icmp eq i64 %1642, 0
  %1662 = zext i1 %1661 to i8
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1662, i8* %1663, align 1
  %1664 = lshr i64 %1642, 63
  %1665 = trunc i64 %1664 to i8
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1665, i8* %1666, align 1
  %1667 = lshr i64 %1638, 63
  %1668 = lshr i64 %1639, 63
  %1669 = xor i64 %1664, %1667
  %1670 = xor i64 %1664, %1668
  %1671 = add i64 %1669, %1670
  %1672 = icmp eq i64 %1671, 2
  %1673 = zext i1 %1672 to i8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1673, i8* %1674, align 1
  store %struct.Memory* %loadMem_4122be, %struct.Memory** %MEMORY
  %loadMem_4122c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1676 = getelementptr inbounds %struct.GPR, %struct.GPR* %1675, i32 0, i32 33
  %1677 = getelementptr inbounds %struct.Reg, %struct.Reg* %1676, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %1677 to i64*
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1679 = getelementptr inbounds %struct.GPR, %struct.GPR* %1678, i32 0, i32 7
  %1680 = getelementptr inbounds %struct.Reg, %struct.Reg* %1679, i32 0, i32 0
  %RDX.i585 = bitcast %union.anon* %1680 to i64*
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 15
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %RBP.i586 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %RBP.i586
  %1685 = sub i64 %1684, 104
  %1686 = load i64, i64* %PC.i584
  %1687 = add i64 %1686, 4
  store i64 %1687, i64* %PC.i584
  %1688 = inttoptr i64 %1685 to i32*
  %1689 = load i32, i32* %1688
  %1690 = sext i32 %1689 to i64
  store i64 %1690, i64* %RDX.i585, align 8
  store %struct.Memory* %loadMem_4122c1, %struct.Memory** %MEMORY
  %loadMem_4122c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1692 = getelementptr inbounds %struct.GPR, %struct.GPR* %1691, i32 0, i32 33
  %1693 = getelementptr inbounds %struct.Reg, %struct.Reg* %1692, i32 0, i32 0
  %PC.i582 = bitcast %union.anon* %1693 to i64*
  %1694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1695 = getelementptr inbounds %struct.GPR, %struct.GPR* %1694, i32 0, i32 7
  %1696 = getelementptr inbounds %struct.Reg, %struct.Reg* %1695, i32 0, i32 0
  %RDX.i583 = bitcast %union.anon* %1696 to i64*
  %1697 = load i64, i64* %RDX.i583
  %1698 = load i64, i64* %PC.i582
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i582
  %1700 = shl i64 %1697, 2
  %1701 = icmp slt i64 %1700, 0
  %1702 = shl i64 %1700, 1
  store i64 %1702, i64* %RDX.i583, align 8
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1704 = zext i1 %1701 to i8
  store i8 %1704, i8* %1703, align 1
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1706 = trunc i64 %1702 to i32
  %1707 = and i32 %1706, 254
  %1708 = call i32 @llvm.ctpop.i32(i32 %1707)
  %1709 = trunc i32 %1708 to i8
  %1710 = and i8 %1709, 1
  %1711 = xor i8 %1710, 1
  store i8 %1711, i8* %1705, align 1
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1712, align 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1714 = icmp eq i64 %1702, 0
  %1715 = zext i1 %1714 to i8
  store i8 %1715, i8* %1713, align 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1717 = lshr i64 %1702, 63
  %1718 = trunc i64 %1717 to i8
  store i8 %1718, i8* %1716, align 1
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1719, align 1
  store %struct.Memory* %loadMem_4122c5, %struct.Memory** %MEMORY
  %loadMem_4122c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 5
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RCX.i580 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 7
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %RCX.i580
  %1730 = load i64, i64* %RDX.i581
  %1731 = load i64, i64* %PC.i579
  %1732 = add i64 %1731, 3
  store i64 %1732, i64* %PC.i579
  %1733 = add i64 %1730, %1729
  store i64 %1733, i64* %RCX.i580, align 8
  %1734 = icmp ult i64 %1733, %1729
  %1735 = icmp ult i64 %1733, %1730
  %1736 = or i1 %1734, %1735
  %1737 = zext i1 %1736 to i8
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1737, i8* %1738, align 1
  %1739 = trunc i64 %1733 to i32
  %1740 = and i32 %1739, 255
  %1741 = call i32 @llvm.ctpop.i32(i32 %1740)
  %1742 = trunc i32 %1741 to i8
  %1743 = and i8 %1742, 1
  %1744 = xor i8 %1743, 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1744, i8* %1745, align 1
  %1746 = xor i64 %1730, %1729
  %1747 = xor i64 %1746, %1733
  %1748 = lshr i64 %1747, 4
  %1749 = trunc i64 %1748 to i8
  %1750 = and i8 %1749, 1
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1750, i8* %1751, align 1
  %1752 = icmp eq i64 %1733, 0
  %1753 = zext i1 %1752 to i8
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1753, i8* %1754, align 1
  %1755 = lshr i64 %1733, 63
  %1756 = trunc i64 %1755 to i8
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1756, i8* %1757, align 1
  %1758 = lshr i64 %1729, 63
  %1759 = lshr i64 %1730, 63
  %1760 = xor i64 %1755, %1758
  %1761 = xor i64 %1755, %1759
  %1762 = add i64 %1760, %1761
  %1763 = icmp eq i64 %1762, 2
  %1764 = zext i1 %1763 to i8
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1764, i8* %1765, align 1
  store %struct.Memory* %loadMem_4122c9, %struct.Memory** %MEMORY
  %loadMem_4122cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1767 = getelementptr inbounds %struct.GPR, %struct.GPR* %1766, i32 0, i32 33
  %1768 = getelementptr inbounds %struct.Reg, %struct.Reg* %1767, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %1768 to i64*
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 7
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %RDX.i577 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 15
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RBP.i578 = bitcast %union.anon* %1774 to i64*
  %1775 = load i64, i64* %RBP.i578
  %1776 = sub i64 %1775, 60
  %1777 = load i64, i64* %PC.i576
  %1778 = add i64 %1777, 4
  store i64 %1778, i64* %PC.i576
  %1779 = inttoptr i64 %1776 to i32*
  %1780 = load i32, i32* %1779
  %1781 = sext i32 %1780 to i64
  store i64 %1781, i64* %RDX.i577, align 8
  store %struct.Memory* %loadMem_4122cc, %struct.Memory** %MEMORY
  %loadMem_4122d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 33
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %1784 to i64*
  %1785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1786 = getelementptr inbounds %struct.GPR, %struct.GPR* %1785, i32 0, i32 1
  %1787 = getelementptr inbounds %struct.Reg, %struct.Reg* %1786, i32 0, i32 0
  %RAX.i573 = bitcast %union.anon* %1787 to i64*
  %1788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1789 = getelementptr inbounds %struct.GPR, %struct.GPR* %1788, i32 0, i32 5
  %1790 = getelementptr inbounds %struct.Reg, %struct.Reg* %1789, i32 0, i32 0
  %RCX.i574 = bitcast %union.anon* %1790 to i64*
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 7
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %RDX.i575 = bitcast %union.anon* %1793 to i64*
  %1794 = load i64, i64* %RAX.i573
  %1795 = load i64, i64* %RCX.i574
  %1796 = load i64, i64* %RDX.i575
  %1797 = mul i64 %1796, 4
  %1798 = add i64 %1797, %1795
  %1799 = load i64, i64* %PC.i572
  %1800 = add i64 %1799, 3
  store i64 %1800, i64* %PC.i572
  %1801 = trunc i64 %1794 to i32
  %1802 = inttoptr i64 %1798 to i32*
  %1803 = load i32, i32* %1802
  %1804 = sub i32 %1801, %1803
  %1805 = zext i32 %1804 to i64
  store i64 %1805, i64* %RAX.i573, align 8
  %1806 = icmp ult i32 %1801, %1803
  %1807 = zext i1 %1806 to i8
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1807, i8* %1808, align 1
  %1809 = and i32 %1804, 255
  %1810 = call i32 @llvm.ctpop.i32(i32 %1809)
  %1811 = trunc i32 %1810 to i8
  %1812 = and i8 %1811, 1
  %1813 = xor i8 %1812, 1
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1813, i8* %1814, align 1
  %1815 = xor i32 %1803, %1801
  %1816 = xor i32 %1815, %1804
  %1817 = lshr i32 %1816, 4
  %1818 = trunc i32 %1817 to i8
  %1819 = and i8 %1818, 1
  %1820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1819, i8* %1820, align 1
  %1821 = icmp eq i32 %1804, 0
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1822, i8* %1823, align 1
  %1824 = lshr i32 %1804, 31
  %1825 = trunc i32 %1824 to i8
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1825, i8* %1826, align 1
  %1827 = lshr i32 %1801, 31
  %1828 = lshr i32 %1803, 31
  %1829 = xor i32 %1828, %1827
  %1830 = xor i32 %1824, %1827
  %1831 = add i32 %1830, %1829
  %1832 = icmp eq i32 %1831, 2
  %1833 = zext i1 %1832 to i8
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1833, i8* %1834, align 1
  store %struct.Memory* %loadMem_4122d0, %struct.Memory** %MEMORY
  %loadMem_4122d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 1
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %EAX.i570 = bitcast %union.anon* %1840 to i32*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i571
  %1845 = sub i64 %1844, 132
  %1846 = load i32, i32* %EAX.i570
  %1847 = zext i32 %1846 to i64
  %1848 = load i64, i64* %PC.i569
  %1849 = add i64 %1848, 6
  store i64 %1849, i64* %PC.i569
  %1850 = inttoptr i64 %1845 to i32*
  store i32 %1846, i32* %1850
  store %struct.Memory* %loadMem_4122d3, %struct.Memory** %MEMORY
  %loadMem_4122d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %PC.i568
  %1855 = add i64 %1854, 84
  %1856 = load i64, i64* %PC.i568
  %1857 = add i64 %1856, 5
  store i64 %1857, i64* %PC.i568
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1855, i64* %1858, align 8
  store %struct.Memory* %loadMem_4122d9, %struct.Memory** %MEMORY
  br label %block_.L_41232d

block_.L_4122de:                                  ; preds = %block_412238
  %loadMem_4122de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1860 = getelementptr inbounds %struct.GPR, %struct.GPR* %1859, i32 0, i32 33
  %1861 = getelementptr inbounds %struct.Reg, %struct.Reg* %1860, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %1861 to i64*
  %1862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1863 = getelementptr inbounds %struct.GPR, %struct.GPR* %1862, i32 0, i32 1
  %1864 = getelementptr inbounds %struct.Reg, %struct.Reg* %1863, i32 0, i32 0
  %RAX.i567 = bitcast %union.anon* %1864 to i64*
  %1865 = load i64, i64* %PC.i566
  %1866 = add i64 %1865, 8
  store i64 %1866, i64* %PC.i566
  %1867 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1867, i64* %RAX.i567, align 8
  store %struct.Memory* %loadMem_4122de, %struct.Memory** %MEMORY
  %loadMem_4122e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 1
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RAX.i565 = bitcast %union.anon* %1873 to i64*
  %1874 = load i64, i64* %RAX.i565
  %1875 = add i64 %1874, 14168
  %1876 = load i64, i64* %PC.i564
  %1877 = add i64 %1876, 7
  store i64 %1877, i64* %PC.i564
  %1878 = inttoptr i64 %1875 to i64*
  %1879 = load i64, i64* %1878
  store i64 %1879, i64* %RAX.i565, align 8
  store %struct.Memory* %loadMem_4122e6, %struct.Memory** %MEMORY
  %loadMem_4122ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 5
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %RCX.i562 = bitcast %union.anon* %1885 to i64*
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 15
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %RBP.i563
  %1890 = sub i64 %1889, 108
  %1891 = load i64, i64* %PC.i561
  %1892 = add i64 %1891, 4
  store i64 %1892, i64* %PC.i561
  %1893 = inttoptr i64 %1890 to i32*
  %1894 = load i32, i32* %1893
  %1895 = sext i32 %1894 to i64
  store i64 %1895, i64* %RCX.i562, align 8
  store %struct.Memory* %loadMem_4122ed, %struct.Memory** %MEMORY
  %loadMem_4122f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1897 = getelementptr inbounds %struct.GPR, %struct.GPR* %1896, i32 0, i32 33
  %1898 = getelementptr inbounds %struct.Reg, %struct.Reg* %1897, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %1898 to i64*
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 5
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %1901 to i64*
  %1902 = load i64, i64* %RCX.i560
  %1903 = load i64, i64* %PC.i559
  %1904 = add i64 %1903, 7
  store i64 %1904, i64* %PC.i559
  %1905 = sext i64 %1902 to i128
  %1906 = and i128 %1905, -18446744073709551616
  %1907 = zext i64 %1902 to i128
  %1908 = or i128 %1906, %1907
  %1909 = mul i128 632, %1908
  %1910 = trunc i128 %1909 to i64
  store i64 %1910, i64* %RCX.i560, align 8
  %1911 = sext i64 %1910 to i128
  %1912 = icmp ne i128 %1911, %1909
  %1913 = zext i1 %1912 to i8
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1913, i8* %1914, align 1
  %1915 = trunc i128 %1909 to i32
  %1916 = and i32 %1915, 255
  %1917 = call i32 @llvm.ctpop.i32(i32 %1916)
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = xor i8 %1919, 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1920, i8* %1921, align 1
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1922, align 1
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1923, align 1
  %1924 = lshr i64 %1910, 63
  %1925 = trunc i64 %1924 to i8
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1925, i8* %1926, align 1
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1913, i8* %1927, align 1
  store %struct.Memory* %loadMem_4122f1, %struct.Memory** %MEMORY
  %loadMem_4122f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 33
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 1
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RAX.i557 = bitcast %union.anon* %1933 to i64*
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1935 = getelementptr inbounds %struct.GPR, %struct.GPR* %1934, i32 0, i32 5
  %1936 = getelementptr inbounds %struct.Reg, %struct.Reg* %1935, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %1936 to i64*
  %1937 = load i64, i64* %RAX.i557
  %1938 = load i64, i64* %RCX.i558
  %1939 = load i64, i64* %PC.i556
  %1940 = add i64 %1939, 3
  store i64 %1940, i64* %PC.i556
  %1941 = add i64 %1938, %1937
  store i64 %1941, i64* %RAX.i557, align 8
  %1942 = icmp ult i64 %1941, %1937
  %1943 = icmp ult i64 %1941, %1938
  %1944 = or i1 %1942, %1943
  %1945 = zext i1 %1944 to i8
  %1946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1945, i8* %1946, align 1
  %1947 = trunc i64 %1941 to i32
  %1948 = and i32 %1947, 255
  %1949 = call i32 @llvm.ctpop.i32(i32 %1948)
  %1950 = trunc i32 %1949 to i8
  %1951 = and i8 %1950, 1
  %1952 = xor i8 %1951, 1
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1952, i8* %1953, align 1
  %1954 = xor i64 %1938, %1937
  %1955 = xor i64 %1954, %1941
  %1956 = lshr i64 %1955, 4
  %1957 = trunc i64 %1956 to i8
  %1958 = and i8 %1957, 1
  %1959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1958, i8* %1959, align 1
  %1960 = icmp eq i64 %1941, 0
  %1961 = zext i1 %1960 to i8
  %1962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1961, i8* %1962, align 1
  %1963 = lshr i64 %1941, 63
  %1964 = trunc i64 %1963 to i8
  %1965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1964, i8* %1965, align 1
  %1966 = lshr i64 %1937, 63
  %1967 = lshr i64 %1938, 63
  %1968 = xor i64 %1963, %1966
  %1969 = xor i64 %1963, %1967
  %1970 = add i64 %1968, %1969
  %1971 = icmp eq i64 %1970, 2
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1972, i8* %1973, align 1
  store %struct.Memory* %loadMem_4122f8, %struct.Memory** %MEMORY
  %loadMem_4122fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 33
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %1976 to i64*
  %1977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1978 = getelementptr inbounds %struct.GPR, %struct.GPR* %1977, i32 0, i32 1
  %1979 = getelementptr inbounds %struct.Reg, %struct.Reg* %1978, i32 0, i32 0
  %RAX.i555 = bitcast %union.anon* %1979 to i64*
  %1980 = load i64, i64* %RAX.i555
  %1981 = load i64, i64* %PC.i554
  %1982 = add i64 %1981, 4
  store i64 %1982, i64* %PC.i554
  %1983 = add i64 76, %1980
  store i64 %1983, i64* %RAX.i555, align 8
  %1984 = icmp ult i64 %1983, %1980
  %1985 = icmp ult i64 %1983, 76
  %1986 = or i1 %1984, %1985
  %1987 = zext i1 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1987, i8* %1988, align 1
  %1989 = trunc i64 %1983 to i32
  %1990 = and i32 %1989, 255
  %1991 = call i32 @llvm.ctpop.i32(i32 %1990)
  %1992 = trunc i32 %1991 to i8
  %1993 = and i8 %1992, 1
  %1994 = xor i8 %1993, 1
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1994, i8* %1995, align 1
  %1996 = xor i64 76, %1980
  %1997 = xor i64 %1996, %1983
  %1998 = lshr i64 %1997, 4
  %1999 = trunc i64 %1998 to i8
  %2000 = and i8 %1999, 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2000, i8* %2001, align 1
  %2002 = icmp eq i64 %1983, 0
  %2003 = zext i1 %2002 to i8
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2003, i8* %2004, align 1
  %2005 = lshr i64 %1983, 63
  %2006 = trunc i64 %2005 to i8
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2006, i8* %2007, align 1
  %2008 = lshr i64 %1980, 63
  %2009 = xor i64 %2005, %2008
  %2010 = add i64 %2009, %2005
  %2011 = icmp eq i64 %2010, 2
  %2012 = zext i1 %2011 to i8
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2012, i8* %2013, align 1
  store %struct.Memory* %loadMem_4122fb, %struct.Memory** %MEMORY
  %loadMem_4122ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %2014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2015 = getelementptr inbounds %struct.GPR, %struct.GPR* %2014, i32 0, i32 33
  %2016 = getelementptr inbounds %struct.Reg, %struct.Reg* %2015, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %2016 to i64*
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 5
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 15
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %2022 to i64*
  %2023 = load i64, i64* %RBP.i553
  %2024 = sub i64 %2023, 56
  %2025 = load i64, i64* %PC.i551
  %2026 = add i64 %2025, 4
  store i64 %2026, i64* %PC.i551
  %2027 = inttoptr i64 %2024 to i32*
  %2028 = load i32, i32* %2027
  %2029 = sext i32 %2028 to i64
  store i64 %2029, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_4122ff, %struct.Memory** %MEMORY
  %loadMem_412303 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 33
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %2032 to i64*
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 5
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %RCX.i550 = bitcast %union.anon* %2035 to i64*
  %2036 = load i64, i64* %RCX.i550
  %2037 = load i64, i64* %PC.i549
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i549
  %2039 = shl i64 %2036, 6
  %2040 = icmp slt i64 %2039, 0
  %2041 = shl i64 %2039, 1
  store i64 %2041, i64* %RCX.i550, align 8
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2043 = zext i1 %2040 to i8
  store i8 %2043, i8* %2042, align 1
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2045 = trunc i64 %2041 to i32
  %2046 = and i32 %2045, 254
  %2047 = call i32 @llvm.ctpop.i32(i32 %2046)
  %2048 = trunc i32 %2047 to i8
  %2049 = and i8 %2048, 1
  %2050 = xor i8 %2049, 1
  store i8 %2050, i8* %2044, align 1
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2051, align 1
  %2052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2053 = icmp eq i64 %2041, 0
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %2052, align 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2056 = lshr i64 %2041, 63
  %2057 = trunc i64 %2056 to i8
  store i8 %2057, i8* %2055, align 1
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2058, align 1
  store %struct.Memory* %loadMem_412303, %struct.Memory** %MEMORY
  %loadMem_412307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2060 = getelementptr inbounds %struct.GPR, %struct.GPR* %2059, i32 0, i32 33
  %2061 = getelementptr inbounds %struct.Reg, %struct.Reg* %2060, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %2061 to i64*
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2063 = getelementptr inbounds %struct.GPR, %struct.GPR* %2062, i32 0, i32 1
  %2064 = getelementptr inbounds %struct.Reg, %struct.Reg* %2063, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %2064 to i64*
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2066 = getelementptr inbounds %struct.GPR, %struct.GPR* %2065, i32 0, i32 5
  %2067 = getelementptr inbounds %struct.Reg, %struct.Reg* %2066, i32 0, i32 0
  %RCX.i548 = bitcast %union.anon* %2067 to i64*
  %2068 = load i64, i64* %RAX.i547
  %2069 = load i64, i64* %RCX.i548
  %2070 = load i64, i64* %PC.i546
  %2071 = add i64 %2070, 3
  store i64 %2071, i64* %PC.i546
  %2072 = add i64 %2069, %2068
  store i64 %2072, i64* %RAX.i547, align 8
  %2073 = icmp ult i64 %2072, %2068
  %2074 = icmp ult i64 %2072, %2069
  %2075 = or i1 %2073, %2074
  %2076 = zext i1 %2075 to i8
  %2077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2076, i8* %2077, align 1
  %2078 = trunc i64 %2072 to i32
  %2079 = and i32 %2078, 255
  %2080 = call i32 @llvm.ctpop.i32(i32 %2079)
  %2081 = trunc i32 %2080 to i8
  %2082 = and i8 %2081, 1
  %2083 = xor i8 %2082, 1
  %2084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2083, i8* %2084, align 1
  %2085 = xor i64 %2069, %2068
  %2086 = xor i64 %2085, %2072
  %2087 = lshr i64 %2086, 4
  %2088 = trunc i64 %2087 to i8
  %2089 = and i8 %2088, 1
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2089, i8* %2090, align 1
  %2091 = icmp eq i64 %2072, 0
  %2092 = zext i1 %2091 to i8
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2092, i8* %2093, align 1
  %2094 = lshr i64 %2072, 63
  %2095 = trunc i64 %2094 to i8
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2095, i8* %2096, align 1
  %2097 = lshr i64 %2068, 63
  %2098 = lshr i64 %2069, 63
  %2099 = xor i64 %2094, %2097
  %2100 = xor i64 %2094, %2098
  %2101 = add i64 %2099, %2100
  %2102 = icmp eq i64 %2101, 2
  %2103 = zext i1 %2102 to i8
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2103, i8* %2104, align 1
  store %struct.Memory* %loadMem_412307, %struct.Memory** %MEMORY
  %loadMem_41230a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 33
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 5
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RCX.i544 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i545
  %2115 = sub i64 %2114, 100
  %2116 = load i64, i64* %PC.i543
  %2117 = add i64 %2116, 4
  store i64 %2117, i64* %PC.i543
  %2118 = inttoptr i64 %2115 to i32*
  %2119 = load i32, i32* %2118
  %2120 = sext i32 %2119 to i64
  store i64 %2120, i64* %RCX.i544, align 8
  store %struct.Memory* %loadMem_41230a, %struct.Memory** %MEMORY
  %loadMem_41230e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 5
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RCX.i542 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RCX.i542
  %2128 = load i64, i64* %PC.i541
  %2129 = add i64 %2128, 4
  store i64 %2129, i64* %PC.i541
  %2130 = shl i64 %2127, 4
  %2131 = icmp slt i64 %2130, 0
  %2132 = shl i64 %2130, 1
  store i64 %2132, i64* %RCX.i542, align 8
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2134 = zext i1 %2131 to i8
  store i8 %2134, i8* %2133, align 1
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2136 = trunc i64 %2132 to i32
  %2137 = and i32 %2136, 254
  %2138 = call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  store i8 %2141, i8* %2135, align 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2142, align 1
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2144 = icmp eq i64 %2132, 0
  %2145 = zext i1 %2144 to i8
  store i8 %2145, i8* %2143, align 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2147 = lshr i64 %2132, 63
  %2148 = trunc i64 %2147 to i8
  store i8 %2148, i8* %2146, align 1
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2149, align 1
  store %struct.Memory* %loadMem_41230e, %struct.Memory** %MEMORY
  %loadMem_412312 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2151 = getelementptr inbounds %struct.GPR, %struct.GPR* %2150, i32 0, i32 33
  %2152 = getelementptr inbounds %struct.Reg, %struct.Reg* %2151, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2152 to i64*
  %2153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2154 = getelementptr inbounds %struct.GPR, %struct.GPR* %2153, i32 0, i32 1
  %2155 = getelementptr inbounds %struct.Reg, %struct.Reg* %2154, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %2155 to i64*
  %2156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2157 = getelementptr inbounds %struct.GPR, %struct.GPR* %2156, i32 0, i32 5
  %2158 = getelementptr inbounds %struct.Reg, %struct.Reg* %2157, i32 0, i32 0
  %RCX.i540 = bitcast %union.anon* %2158 to i64*
  %2159 = load i64, i64* %RAX.i539
  %2160 = load i64, i64* %RCX.i540
  %2161 = load i64, i64* %PC.i538
  %2162 = add i64 %2161, 3
  store i64 %2162, i64* %PC.i538
  %2163 = add i64 %2160, %2159
  store i64 %2163, i64* %RAX.i539, align 8
  %2164 = icmp ult i64 %2163, %2159
  %2165 = icmp ult i64 %2163, %2160
  %2166 = or i1 %2164, %2165
  %2167 = zext i1 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2167, i8* %2168, align 1
  %2169 = trunc i64 %2163 to i32
  %2170 = and i32 %2169, 255
  %2171 = call i32 @llvm.ctpop.i32(i32 %2170)
  %2172 = trunc i32 %2171 to i8
  %2173 = and i8 %2172, 1
  %2174 = xor i8 %2173, 1
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2174, i8* %2175, align 1
  %2176 = xor i64 %2160, %2159
  %2177 = xor i64 %2176, %2163
  %2178 = lshr i64 %2177, 4
  %2179 = trunc i64 %2178 to i8
  %2180 = and i8 %2179, 1
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2180, i8* %2181, align 1
  %2182 = icmp eq i64 %2163, 0
  %2183 = zext i1 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2183, i8* %2184, align 1
  %2185 = lshr i64 %2163, 63
  %2186 = trunc i64 %2185 to i8
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2186, i8* %2187, align 1
  %2188 = lshr i64 %2159, 63
  %2189 = lshr i64 %2160, 63
  %2190 = xor i64 %2185, %2188
  %2191 = xor i64 %2185, %2189
  %2192 = add i64 %2190, %2191
  %2193 = icmp eq i64 %2192, 2
  %2194 = zext i1 %2193 to i8
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2194, i8* %2195, align 1
  store %struct.Memory* %loadMem_412312, %struct.Memory** %MEMORY
  %loadMem_412315 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 5
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 15
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %RBP.i537 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %RBP.i537
  %2206 = sub i64 %2205, 104
  %2207 = load i64, i64* %PC.i535
  %2208 = add i64 %2207, 4
  store i64 %2208, i64* %PC.i535
  %2209 = inttoptr i64 %2206 to i32*
  %2210 = load i32, i32* %2209
  %2211 = sext i32 %2210 to i64
  store i64 %2211, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_412315, %struct.Memory** %MEMORY
  %loadMem_412319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 5
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RCX.i534 = bitcast %union.anon* %2217 to i64*
  %2218 = load i64, i64* %RCX.i534
  %2219 = load i64, i64* %PC.i533
  %2220 = add i64 %2219, 4
  store i64 %2220, i64* %PC.i533
  %2221 = shl i64 %2218, 2
  %2222 = icmp slt i64 %2221, 0
  %2223 = shl i64 %2221, 1
  store i64 %2223, i64* %RCX.i534, align 8
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2225 = zext i1 %2222 to i8
  store i8 %2225, i8* %2224, align 1
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2227 = trunc i64 %2223 to i32
  %2228 = and i32 %2227, 254
  %2229 = call i32 @llvm.ctpop.i32(i32 %2228)
  %2230 = trunc i32 %2229 to i8
  %2231 = and i8 %2230, 1
  %2232 = xor i8 %2231, 1
  store i8 %2232, i8* %2226, align 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2233, align 1
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2235 = icmp eq i64 %2223, 0
  %2236 = zext i1 %2235 to i8
  store i8 %2236, i8* %2234, align 1
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2238 = lshr i64 %2223, 63
  %2239 = trunc i64 %2238 to i8
  store i8 %2239, i8* %2237, align 1
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2240, align 1
  store %struct.Memory* %loadMem_412319, %struct.Memory** %MEMORY
  %loadMem_41231d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 1
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 5
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RAX.i531
  %2251 = load i64, i64* %RCX.i532
  %2252 = load i64, i64* %PC.i530
  %2253 = add i64 %2252, 3
  store i64 %2253, i64* %PC.i530
  %2254 = add i64 %2251, %2250
  store i64 %2254, i64* %RAX.i531, align 8
  %2255 = icmp ult i64 %2254, %2250
  %2256 = icmp ult i64 %2254, %2251
  %2257 = or i1 %2255, %2256
  %2258 = zext i1 %2257 to i8
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2258, i8* %2259, align 1
  %2260 = trunc i64 %2254 to i32
  %2261 = and i32 %2260, 255
  %2262 = call i32 @llvm.ctpop.i32(i32 %2261)
  %2263 = trunc i32 %2262 to i8
  %2264 = and i8 %2263, 1
  %2265 = xor i8 %2264, 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2265, i8* %2266, align 1
  %2267 = xor i64 %2251, %2250
  %2268 = xor i64 %2267, %2254
  %2269 = lshr i64 %2268, 4
  %2270 = trunc i64 %2269 to i8
  %2271 = and i8 %2270, 1
  %2272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2271, i8* %2272, align 1
  %2273 = icmp eq i64 %2254, 0
  %2274 = zext i1 %2273 to i8
  %2275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2274, i8* %2275, align 1
  %2276 = lshr i64 %2254, 63
  %2277 = trunc i64 %2276 to i8
  %2278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2277, i8* %2278, align 1
  %2279 = lshr i64 %2250, 63
  %2280 = lshr i64 %2251, 63
  %2281 = xor i64 %2276, %2279
  %2282 = xor i64 %2276, %2280
  %2283 = add i64 %2281, %2282
  %2284 = icmp eq i64 %2283, 2
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2285, i8* %2286, align 1
  store %struct.Memory* %loadMem_41231d, %struct.Memory** %MEMORY
  %loadMem_412320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 33
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %2289 to i64*
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 5
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %RCX.i528 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 15
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %RBP.i529
  %2297 = sub i64 %2296, 60
  %2298 = load i64, i64* %PC.i527
  %2299 = add i64 %2298, 4
  store i64 %2299, i64* %PC.i527
  %2300 = inttoptr i64 %2297 to i32*
  %2301 = load i32, i32* %2300
  %2302 = sext i32 %2301 to i64
  store i64 %2302, i64* %RCX.i528, align 8
  store %struct.Memory* %loadMem_412320, %struct.Memory** %MEMORY
  %loadMem_412324 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 33
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %2305 to i64*
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2307 = getelementptr inbounds %struct.GPR, %struct.GPR* %2306, i32 0, i32 1
  %2308 = getelementptr inbounds %struct.Reg, %struct.Reg* %2307, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %2308 to i64*
  %2309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2310 = getelementptr inbounds %struct.GPR, %struct.GPR* %2309, i32 0, i32 5
  %2311 = getelementptr inbounds %struct.Reg, %struct.Reg* %2310, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %2311 to i64*
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 7
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %RDX.i526 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %RAX.i524
  %2316 = load i64, i64* %RCX.i525
  %2317 = mul i64 %2316, 4
  %2318 = add i64 %2317, %2315
  %2319 = load i64, i64* %PC.i523
  %2320 = add i64 %2319, 3
  store i64 %2320, i64* %PC.i523
  %2321 = inttoptr i64 %2318 to i32*
  %2322 = load i32, i32* %2321
  %2323 = zext i32 %2322 to i64
  store i64 %2323, i64* %RDX.i526, align 8
  store %struct.Memory* %loadMem_412324, %struct.Memory** %MEMORY
  %loadMem_412327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 33
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 7
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %EDX.i521 = bitcast %union.anon* %2329 to i32*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i522 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RBP.i522
  %2334 = sub i64 %2333, 132
  %2335 = load i32, i32* %EDX.i521
  %2336 = zext i32 %2335 to i64
  %2337 = load i64, i64* %PC.i520
  %2338 = add i64 %2337, 6
  store i64 %2338, i64* %PC.i520
  %2339 = inttoptr i64 %2334 to i32*
  store i32 %2335, i32* %2339
  store %struct.Memory* %loadMem_412327, %struct.Memory** %MEMORY
  br label %block_.L_41232d

block_.L_41232d:                                  ; preds = %block_.L_4122de, %block_412288
  %loadMem_41232d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 33
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 1
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RAX.i518 = bitcast %union.anon* %2345 to i64*
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 15
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %RBP.i519
  %2350 = sub i64 %2349, 132
  %2351 = load i64, i64* %PC.i517
  %2352 = add i64 %2351, 6
  store i64 %2352, i64* %PC.i517
  %2353 = inttoptr i64 %2350 to i32*
  %2354 = load i32, i32* %2353
  %2355 = zext i32 %2354 to i64
  store i64 %2355, i64* %RAX.i518, align 8
  store %struct.Memory* %loadMem_41232d, %struct.Memory** %MEMORY
  %loadMem_412333 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 33
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %2358 to i64*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 1
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %EAX.i515 = bitcast %union.anon* %2361 to i32*
  %2362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2363 = getelementptr inbounds %struct.GPR, %struct.GPR* %2362, i32 0, i32 15
  %2364 = getelementptr inbounds %struct.Reg, %struct.Reg* %2363, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %2364 to i64*
  %2365 = load i64, i64* %RBP.i516
  %2366 = sub i64 %2365, 32
  %2367 = load i32, i32* %EAX.i515
  %2368 = zext i32 %2367 to i64
  %2369 = load i64, i64* %PC.i514
  %2370 = add i64 %2369, 3
  store i64 %2370, i64* %PC.i514
  %2371 = inttoptr i64 %2366 to i32*
  store i32 %2367, i32* %2371
  store %struct.Memory* %loadMem_412333, %struct.Memory** %MEMORY
  %loadMem_412336 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2373 = getelementptr inbounds %struct.GPR, %struct.GPR* %2372, i32 0, i32 33
  %2374 = getelementptr inbounds %struct.Reg, %struct.Reg* %2373, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2374 to i64*
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 5
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %RCX.i513 = bitcast %union.anon* %2377 to i64*
  %2378 = load i64, i64* %PC.i512
  %2379 = add i64 %2378, 8
  store i64 %2379, i64* %PC.i512
  %2380 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2380, i64* %RCX.i513, align 8
  store %struct.Memory* %loadMem_412336, %struct.Memory** %MEMORY
  %loadMem_41233e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 33
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2383 to i64*
  %2384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2385 = getelementptr inbounds %struct.GPR, %struct.GPR* %2384, i32 0, i32 5
  %2386 = getelementptr inbounds %struct.Reg, %struct.Reg* %2385, i32 0, i32 0
  %RCX.i511 = bitcast %union.anon* %2386 to i64*
  %2387 = load i64, i64* %RCX.i511
  %2388 = add i64 %2387, 72400
  %2389 = load i64, i64* %PC.i510
  %2390 = add i64 %2389, 7
  store i64 %2390, i64* %PC.i510
  %2391 = inttoptr i64 %2388 to i32*
  %2392 = load i32, i32* %2391
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2393, align 1
  %2394 = and i32 %2392, 255
  %2395 = call i32 @llvm.ctpop.i32(i32 %2394)
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = xor i8 %2397, 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2398, i8* %2399, align 1
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2400, align 1
  %2401 = icmp eq i32 %2392, 0
  %2402 = zext i1 %2401 to i8
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2402, i8* %2403, align 1
  %2404 = lshr i32 %2392, 31
  %2405 = trunc i32 %2404 to i8
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2405, i8* %2406, align 1
  %2407 = lshr i32 %2392, 31
  %2408 = xor i32 %2404, %2407
  %2409 = add i32 %2408, %2407
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2411, i8* %2412, align 1
  store %struct.Memory* %loadMem_41233e, %struct.Memory** %MEMORY
  %loadMem_412345 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i509 = bitcast %union.anon* %2415 to i64*
  %2416 = load i64, i64* %PC.i509
  %2417 = add i64 %2416, 186
  %2418 = load i64, i64* %PC.i509
  %2419 = add i64 %2418, 6
  %2420 = load i64, i64* %PC.i509
  %2421 = add i64 %2420, 6
  store i64 %2421, i64* %PC.i509
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2423 = load i8, i8* %2422, align 1
  store i8 %2423, i8* %BRANCH_TAKEN, align 1
  %2424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2425 = icmp ne i8 %2423, 0
  %2426 = select i1 %2425, i64 %2417, i64 %2419
  store i64 %2426, i64* %2424, align 8
  store %struct.Memory* %loadMem_412345, %struct.Memory** %MEMORY
  %loadBr_412345 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412345 = icmp eq i8 %loadBr_412345, 1
  br i1 %cmpBr_412345, label %block_.L_4123ff, label %block_41234b

block_41234b:                                     ; preds = %block_.L_41232d
  %loadMem_41234b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2429 to i64*
  %2430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2431 = getelementptr inbounds %struct.GPR, %struct.GPR* %2430, i32 0, i32 15
  %2432 = getelementptr inbounds %struct.Reg, %struct.Reg* %2431, i32 0, i32 0
  %RBP.i508 = bitcast %union.anon* %2432 to i64*
  %2433 = load i64, i64* %RBP.i508
  %2434 = sub i64 %2433, 60
  %2435 = load i64, i64* %PC.i507
  %2436 = add i64 %2435, 4
  store i64 %2436, i64* %PC.i507
  %2437 = inttoptr i64 %2434 to i32*
  %2438 = load i32, i32* %2437
  %2439 = sub i32 %2438, 1
  %2440 = icmp ult i32 %2438, 1
  %2441 = zext i1 %2440 to i8
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2441, i8* %2442, align 1
  %2443 = and i32 %2439, 255
  %2444 = call i32 @llvm.ctpop.i32(i32 %2443)
  %2445 = trunc i32 %2444 to i8
  %2446 = and i8 %2445, 1
  %2447 = xor i8 %2446, 1
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2447, i8* %2448, align 1
  %2449 = xor i32 %2438, 1
  %2450 = xor i32 %2449, %2439
  %2451 = lshr i32 %2450, 4
  %2452 = trunc i32 %2451 to i8
  %2453 = and i8 %2452, 1
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2453, i8* %2454, align 1
  %2455 = icmp eq i32 %2439, 0
  %2456 = zext i1 %2455 to i8
  %2457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2456, i8* %2457, align 1
  %2458 = lshr i32 %2439, 31
  %2459 = trunc i32 %2458 to i8
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2459, i8* %2460, align 1
  %2461 = lshr i32 %2438, 31
  %2462 = xor i32 %2458, %2461
  %2463 = add i32 %2462, %2461
  %2464 = icmp eq i32 %2463, 2
  %2465 = zext i1 %2464 to i8
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2465, i8* %2466, align 1
  store %struct.Memory* %loadMem_41234b, %struct.Memory** %MEMORY
  %loadMem_41234f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 33
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %PC.i506
  %2471 = add i64 %2470, 176
  %2472 = load i64, i64* %PC.i506
  %2473 = add i64 %2472, 6
  %2474 = load i64, i64* %PC.i506
  %2475 = add i64 %2474, 6
  store i64 %2475, i64* %PC.i506
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2477 = load i8, i8* %2476, align 1
  %2478 = icmp eq i8 %2477, 0
  %2479 = zext i1 %2478 to i8
  store i8 %2479, i8* %BRANCH_TAKEN, align 1
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2481 = select i1 %2478, i64 %2471, i64 %2473
  store i64 %2481, i64* %2480, align 8
  store %struct.Memory* %loadMem_41234f, %struct.Memory** %MEMORY
  %loadBr_41234f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41234f = icmp eq i8 %loadBr_41234f, 1
  br i1 %cmpBr_41234f, label %block_.L_4123ff, label %block_412355

block_412355:                                     ; preds = %block_41234b
  %loadMem_412355 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2483 = getelementptr inbounds %struct.GPR, %struct.GPR* %2482, i32 0, i32 33
  %2484 = getelementptr inbounds %struct.Reg, %struct.Reg* %2483, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2484 to i64*
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 1
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 15
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2490 to i64*
  %2491 = load i64, i64* %RBP.i505
  %2492 = sub i64 %2491, 128
  %2493 = load i64, i64* %PC.i503
  %2494 = add i64 %2493, 4
  store i64 %2494, i64* %PC.i503
  %2495 = inttoptr i64 %2492 to i64*
  %2496 = load i64, i64* %2495
  store i64 %2496, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_412355, %struct.Memory** %MEMORY
  %loadMem_412359 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2498 = getelementptr inbounds %struct.GPR, %struct.GPR* %2497, i32 0, i32 33
  %2499 = getelementptr inbounds %struct.Reg, %struct.Reg* %2498, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %2499 to i64*
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 1
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %RAX.i502 = bitcast %union.anon* %2502 to i64*
  %2503 = load i64, i64* %RAX.i502
  %2504 = add i64 %2503, 532
  %2505 = load i64, i64* %PC.i501
  %2506 = add i64 %2505, 7
  store i64 %2506, i64* %PC.i501
  %2507 = inttoptr i64 %2504 to i32*
  %2508 = load i32, i32* %2507
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2509, align 1
  %2510 = and i32 %2508, 255
  %2511 = call i32 @llvm.ctpop.i32(i32 %2510)
  %2512 = trunc i32 %2511 to i8
  %2513 = and i8 %2512, 1
  %2514 = xor i8 %2513, 1
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2514, i8* %2515, align 1
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2516, align 1
  %2517 = icmp eq i32 %2508, 0
  %2518 = zext i1 %2517 to i8
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2518, i8* %2519, align 1
  %2520 = lshr i32 %2508, 31
  %2521 = trunc i32 %2520 to i8
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2521, i8* %2522, align 1
  %2523 = lshr i32 %2508, 31
  %2524 = xor i32 %2520, %2523
  %2525 = add i32 %2524, %2523
  %2526 = icmp eq i32 %2525, 2
  %2527 = zext i1 %2526 to i8
  %2528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2527, i8* %2528, align 1
  store %struct.Memory* %loadMem_412359, %struct.Memory** %MEMORY
  %loadMem_412360 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 33
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2531 to i64*
  %2532 = load i64, i64* %PC.i500
  %2533 = add i64 %2532, 62
  %2534 = load i64, i64* %PC.i500
  %2535 = add i64 %2534, 6
  %2536 = load i64, i64* %PC.i500
  %2537 = add i64 %2536, 6
  store i64 %2537, i64* %PC.i500
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2539 = load i8, i8* %2538, align 1
  %2540 = icmp eq i8 %2539, 0
  %2541 = zext i1 %2540 to i8
  store i8 %2541, i8* %BRANCH_TAKEN, align 1
  %2542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2543 = select i1 %2540, i64 %2533, i64 %2535
  store i64 %2543, i64* %2542, align 8
  store %struct.Memory* %loadMem_412360, %struct.Memory** %MEMORY
  %loadBr_412360 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412360 = icmp eq i8 %loadBr_412360, 1
  br i1 %cmpBr_412360, label %block_.L_41239e, label %block_412366

block_412366:                                     ; preds = %block_412355
  %loadMem_412366 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 33
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 1
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %2549 to i64*
  %2550 = load i64, i64* %PC.i498
  %2551 = add i64 %2550, 8
  store i64 %2551, i64* %PC.i498
  %2552 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2552, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_412366, %struct.Memory** %MEMORY
  %loadMem_41236e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 33
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2555 to i64*
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 1
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %2558 to i64*
  %2559 = load i64, i64* %RAX.i497
  %2560 = add i64 %2559, 14168
  %2561 = load i64, i64* %PC.i496
  %2562 = add i64 %2561, 7
  store i64 %2562, i64* %PC.i496
  %2563 = inttoptr i64 %2560 to i64*
  %2564 = load i64, i64* %2563
  store i64 %2564, i64* %RAX.i497, align 8
  store %struct.Memory* %loadMem_41236e, %struct.Memory** %MEMORY
  %loadMem_412375 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %2567 to i64*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 5
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %2570 to i64*
  %2571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2572 = getelementptr inbounds %struct.GPR, %struct.GPR* %2571, i32 0, i32 15
  %2573 = getelementptr inbounds %struct.Reg, %struct.Reg* %2572, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %2573 to i64*
  %2574 = load i64, i64* %RBP.i495
  %2575 = sub i64 %2574, 108
  %2576 = load i64, i64* %PC.i493
  %2577 = add i64 %2576, 4
  store i64 %2577, i64* %PC.i493
  %2578 = inttoptr i64 %2575 to i32*
  %2579 = load i32, i32* %2578
  %2580 = sext i32 %2579 to i64
  store i64 %2580, i64* %RCX.i494, align 8
  store %struct.Memory* %loadMem_412375, %struct.Memory** %MEMORY
  %loadMem_412379 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2582 = getelementptr inbounds %struct.GPR, %struct.GPR* %2581, i32 0, i32 33
  %2583 = getelementptr inbounds %struct.Reg, %struct.Reg* %2582, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %2583 to i64*
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 5
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %RCX.i492 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %RCX.i492
  %2588 = load i64, i64* %PC.i491
  %2589 = add i64 %2588, 7
  store i64 %2589, i64* %PC.i491
  %2590 = sext i64 %2587 to i128
  %2591 = and i128 %2590, -18446744073709551616
  %2592 = zext i64 %2587 to i128
  %2593 = or i128 %2591, %2592
  %2594 = mul i128 632, %2593
  %2595 = trunc i128 %2594 to i64
  store i64 %2595, i64* %RCX.i492, align 8
  %2596 = sext i64 %2595 to i128
  %2597 = icmp ne i128 %2596, %2594
  %2598 = zext i1 %2597 to i8
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2598, i8* %2599, align 1
  %2600 = trunc i128 %2594 to i32
  %2601 = and i32 %2600, 255
  %2602 = call i32 @llvm.ctpop.i32(i32 %2601)
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = xor i8 %2604, 1
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2605, i8* %2606, align 1
  %2607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2607, align 1
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2608, align 1
  %2609 = lshr i64 %2595, 63
  %2610 = trunc i64 %2609 to i8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2610, i8* %2611, align 1
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2598, i8* %2612, align 1
  store %struct.Memory* %loadMem_412379, %struct.Memory** %MEMORY
  %loadMem_412380 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 33
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %PC.i488 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 1
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RAX.i489 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 5
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %2621 to i64*
  %2622 = load i64, i64* %RAX.i489
  %2623 = load i64, i64* %RCX.i490
  %2624 = load i64, i64* %PC.i488
  %2625 = add i64 %2624, 3
  store i64 %2625, i64* %PC.i488
  %2626 = add i64 %2623, %2622
  store i64 %2626, i64* %RAX.i489, align 8
  %2627 = icmp ult i64 %2626, %2622
  %2628 = icmp ult i64 %2626, %2623
  %2629 = or i1 %2627, %2628
  %2630 = zext i1 %2629 to i8
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2630, i8* %2631, align 1
  %2632 = trunc i64 %2626 to i32
  %2633 = and i32 %2632, 255
  %2634 = call i32 @llvm.ctpop.i32(i32 %2633)
  %2635 = trunc i32 %2634 to i8
  %2636 = and i8 %2635, 1
  %2637 = xor i8 %2636, 1
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2637, i8* %2638, align 1
  %2639 = xor i64 %2623, %2622
  %2640 = xor i64 %2639, %2626
  %2641 = lshr i64 %2640, 4
  %2642 = trunc i64 %2641 to i8
  %2643 = and i8 %2642, 1
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2643, i8* %2644, align 1
  %2645 = icmp eq i64 %2626, 0
  %2646 = zext i1 %2645 to i8
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2646, i8* %2647, align 1
  %2648 = lshr i64 %2626, 63
  %2649 = trunc i64 %2648 to i8
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2649, i8* %2650, align 1
  %2651 = lshr i64 %2622, 63
  %2652 = lshr i64 %2623, 63
  %2653 = xor i64 %2648, %2651
  %2654 = xor i64 %2648, %2652
  %2655 = add i64 %2653, %2654
  %2656 = icmp eq i64 %2655, 2
  %2657 = zext i1 %2656 to i8
  %2658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2657, i8* %2658, align 1
  store %struct.Memory* %loadMem_412380, %struct.Memory** %MEMORY
  %loadMem_412383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 33
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 1
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RAX.i487
  %2666 = add i64 %2665, 532
  %2667 = load i64, i64* %PC.i486
  %2668 = add i64 %2667, 7
  store i64 %2668, i64* %PC.i486
  %2669 = inttoptr i64 %2666 to i32*
  %2670 = load i32, i32* %2669
  %2671 = sub i32 %2670, 1
  %2672 = icmp ult i32 %2670, 1
  %2673 = zext i1 %2672 to i8
  %2674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2673, i8* %2674, align 1
  %2675 = and i32 %2671, 255
  %2676 = call i32 @llvm.ctpop.i32(i32 %2675)
  %2677 = trunc i32 %2676 to i8
  %2678 = and i8 %2677, 1
  %2679 = xor i8 %2678, 1
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2679, i8* %2680, align 1
  %2681 = xor i32 %2670, 1
  %2682 = xor i32 %2681, %2671
  %2683 = lshr i32 %2682, 4
  %2684 = trunc i32 %2683 to i8
  %2685 = and i8 %2684, 1
  %2686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2685, i8* %2686, align 1
  %2687 = icmp eq i32 %2671, 0
  %2688 = zext i1 %2687 to i8
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2688, i8* %2689, align 1
  %2690 = lshr i32 %2671, 31
  %2691 = trunc i32 %2690 to i8
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2691, i8* %2692, align 1
  %2693 = lshr i32 %2670, 31
  %2694 = xor i32 %2690, %2693
  %2695 = add i32 %2694, %2693
  %2696 = icmp eq i32 %2695, 2
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2697, i8* %2698, align 1
  store %struct.Memory* %loadMem_412383, %struct.Memory** %MEMORY
  %loadMem_41238a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %2701 to i64*
  %2702 = load i64, i64* %PC.i485
  %2703 = add i64 %2702, 20
  %2704 = load i64, i64* %PC.i485
  %2705 = add i64 %2704, 6
  %2706 = load i64, i64* %PC.i485
  %2707 = add i64 %2706, 6
  store i64 %2707, i64* %PC.i485
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2709 = load i8, i8* %2708, align 1
  %2710 = icmp eq i8 %2709, 0
  %2711 = zext i1 %2710 to i8
  store i8 %2711, i8* %BRANCH_TAKEN, align 1
  %2712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2713 = select i1 %2710, i64 %2703, i64 %2705
  store i64 %2713, i64* %2712, align 8
  store %struct.Memory* %loadMem_41238a, %struct.Memory** %MEMORY
  %loadBr_41238a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41238a = icmp eq i8 %loadBr_41238a, 1
  br i1 %cmpBr_41238a, label %block_.L_41239e, label %block_412390

block_412390:                                     ; preds = %block_412366
  %loadMem_412390 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i484
  %2724 = sub i64 %2723, 32
  %2725 = load i64, i64* %PC.i482
  %2726 = add i64 %2725, 3
  store i64 %2726, i64* %PC.i482
  %2727 = inttoptr i64 %2724 to i32*
  %2728 = load i32, i32* %2727
  %2729 = zext i32 %2728 to i64
  store i64 %2729, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_412390, %struct.Memory** %MEMORY
  %loadMem_412393 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 1
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %2735 to i64*
  %2736 = load i64, i64* %RAX.i481
  %2737 = load i64, i64* %PC.i480
  %2738 = add i64 %2737, 2
  store i64 %2738, i64* %PC.i480
  %2739 = trunc i64 %2736 to i32
  %2740 = shl i32 %2739, 1
  %2741 = icmp slt i32 %2739, 0
  %2742 = icmp slt i32 %2740, 0
  %2743 = xor i1 %2741, %2742
  %2744 = zext i32 %2740 to i64
  store i64 %2744, i64* %RAX.i481, align 8
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2746 = zext i1 %2741 to i8
  store i8 %2746, i8* %2745, align 1
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2748 = and i32 %2740, 254
  %2749 = call i32 @llvm.ctpop.i32(i32 %2748)
  %2750 = trunc i32 %2749 to i8
  %2751 = and i8 %2750, 1
  %2752 = xor i8 %2751, 1
  store i8 %2752, i8* %2747, align 1
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2753, align 1
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2755 = icmp eq i32 %2740, 0
  %2756 = zext i1 %2755 to i8
  store i8 %2756, i8* %2754, align 1
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2758 = lshr i32 %2740, 31
  %2759 = trunc i32 %2758 to i8
  store i8 %2759, i8* %2757, align 1
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2761 = zext i1 %2743 to i8
  store i8 %2761, i8* %2760, align 1
  store %struct.Memory* %loadMem_412393, %struct.Memory** %MEMORY
  %loadMem_412396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 33
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %2764 to i64*
  %2765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2766 = getelementptr inbounds %struct.GPR, %struct.GPR* %2765, i32 0, i32 1
  %2767 = getelementptr inbounds %struct.Reg, %struct.Reg* %2766, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %2767 to i32*
  %2768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2769 = getelementptr inbounds %struct.GPR, %struct.GPR* %2768, i32 0, i32 15
  %2770 = getelementptr inbounds %struct.Reg, %struct.Reg* %2769, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %2770 to i64*
  %2771 = load i64, i64* %RBP.i479
  %2772 = sub i64 %2771, 32
  %2773 = load i32, i32* %EAX.i478
  %2774 = zext i32 %2773 to i64
  %2775 = load i64, i64* %PC.i477
  %2776 = add i64 %2775, 3
  store i64 %2776, i64* %PC.i477
  %2777 = inttoptr i64 %2772 to i32*
  store i32 %2773, i32* %2777
  store %struct.Memory* %loadMem_412396, %struct.Memory** %MEMORY
  %loadMem_412399 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %PC.i476
  %2782 = add i64 %2781, 97
  %2783 = load i64, i64* %PC.i476
  %2784 = add i64 %2783, 5
  store i64 %2784, i64* %PC.i476
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2782, i64* %2785, align 8
  store %struct.Memory* %loadMem_412399, %struct.Memory** %MEMORY
  br label %block_.L_4123fa

block_.L_41239e:                                  ; preds = %block_412366, %block_412355
  %loadMem_41239e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %2788 to i64*
  %2789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2790 = getelementptr inbounds %struct.GPR, %struct.GPR* %2789, i32 0, i32 1
  %2791 = getelementptr inbounds %struct.Reg, %struct.Reg* %2790, i32 0, i32 0
  %RAX.i474 = bitcast %union.anon* %2791 to i64*
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2793 = getelementptr inbounds %struct.GPR, %struct.GPR* %2792, i32 0, i32 15
  %2794 = getelementptr inbounds %struct.Reg, %struct.Reg* %2793, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %2794 to i64*
  %2795 = load i64, i64* %RBP.i475
  %2796 = sub i64 %2795, 128
  %2797 = load i64, i64* %PC.i473
  %2798 = add i64 %2797, 4
  store i64 %2798, i64* %PC.i473
  %2799 = inttoptr i64 %2796 to i64*
  %2800 = load i64, i64* %2799
  store i64 %2800, i64* %RAX.i474, align 8
  store %struct.Memory* %loadMem_41239e, %struct.Memory** %MEMORY
  %loadMem_4123a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 1
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RAX.i472 = bitcast %union.anon* %2806 to i64*
  %2807 = load i64, i64* %RAX.i472
  %2808 = add i64 %2807, 532
  %2809 = load i64, i64* %PC.i471
  %2810 = add i64 %2809, 7
  store i64 %2810, i64* %PC.i471
  %2811 = inttoptr i64 %2808 to i32*
  %2812 = load i32, i32* %2811
  %2813 = sub i32 %2812, 1
  %2814 = icmp ult i32 %2812, 1
  %2815 = zext i1 %2814 to i8
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2815, i8* %2816, align 1
  %2817 = and i32 %2813, 255
  %2818 = call i32 @llvm.ctpop.i32(i32 %2817)
  %2819 = trunc i32 %2818 to i8
  %2820 = and i8 %2819, 1
  %2821 = xor i8 %2820, 1
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2821, i8* %2822, align 1
  %2823 = xor i32 %2812, 1
  %2824 = xor i32 %2823, %2813
  %2825 = lshr i32 %2824, 4
  %2826 = trunc i32 %2825 to i8
  %2827 = and i8 %2826, 1
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2827, i8* %2828, align 1
  %2829 = icmp eq i32 %2813, 0
  %2830 = zext i1 %2829 to i8
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2830, i8* %2831, align 1
  %2832 = lshr i32 %2813, 31
  %2833 = trunc i32 %2832 to i8
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2833, i8* %2834, align 1
  %2835 = lshr i32 %2812, 31
  %2836 = xor i32 %2832, %2835
  %2837 = add i32 %2836, %2835
  %2838 = icmp eq i32 %2837, 2
  %2839 = zext i1 %2838 to i8
  %2840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2839, i8* %2840, align 1
  store %struct.Memory* %loadMem_4123a2, %struct.Memory** %MEMORY
  %loadMem_4123a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %2843 to i64*
  %2844 = load i64, i64* %PC.i470
  %2845 = add i64 %2844, 76
  %2846 = load i64, i64* %PC.i470
  %2847 = add i64 %2846, 6
  %2848 = load i64, i64* %PC.i470
  %2849 = add i64 %2848, 6
  store i64 %2849, i64* %PC.i470
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2851 = load i8, i8* %2850, align 1
  %2852 = icmp eq i8 %2851, 0
  %2853 = zext i1 %2852 to i8
  store i8 %2853, i8* %BRANCH_TAKEN, align 1
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2855 = select i1 %2852, i64 %2845, i64 %2847
  store i64 %2855, i64* %2854, align 8
  store %struct.Memory* %loadMem_4123a9, %struct.Memory** %MEMORY
  %loadBr_4123a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4123a9 = icmp eq i8 %loadBr_4123a9, 1
  br i1 %cmpBr_4123a9, label %block_.L_4123f5, label %block_4123af

block_4123af:                                     ; preds = %block_.L_41239e
  %loadMem_4123af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2857 = getelementptr inbounds %struct.GPR, %struct.GPR* %2856, i32 0, i32 33
  %2858 = getelementptr inbounds %struct.Reg, %struct.Reg* %2857, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %2858 to i64*
  %2859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2860 = getelementptr inbounds %struct.GPR, %struct.GPR* %2859, i32 0, i32 1
  %2861 = getelementptr inbounds %struct.Reg, %struct.Reg* %2860, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %2861 to i64*
  %2862 = load i64, i64* %PC.i468
  %2863 = add i64 %2862, 8
  store i64 %2863, i64* %PC.i468
  %2864 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2864, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_4123af, %struct.Memory** %MEMORY
  %loadMem_4123b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2866 = getelementptr inbounds %struct.GPR, %struct.GPR* %2865, i32 0, i32 33
  %2867 = getelementptr inbounds %struct.Reg, %struct.Reg* %2866, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %2867 to i64*
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2869 = getelementptr inbounds %struct.GPR, %struct.GPR* %2868, i32 0, i32 1
  %2870 = getelementptr inbounds %struct.Reg, %struct.Reg* %2869, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %2870 to i64*
  %2871 = load i64, i64* %RAX.i467
  %2872 = add i64 %2871, 14168
  %2873 = load i64, i64* %PC.i466
  %2874 = add i64 %2873, 7
  store i64 %2874, i64* %PC.i466
  %2875 = inttoptr i64 %2872 to i64*
  %2876 = load i64, i64* %2875
  store i64 %2876, i64* %RAX.i467, align 8
  store %struct.Memory* %loadMem_4123b7, %struct.Memory** %MEMORY
  %loadMem_4123be = load %struct.Memory*, %struct.Memory** %MEMORY
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 33
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 5
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RCX.i464 = bitcast %union.anon* %2882 to i64*
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 15
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %2885 to i64*
  %2886 = load i64, i64* %RBP.i465
  %2887 = sub i64 %2886, 108
  %2888 = load i64, i64* %PC.i463
  %2889 = add i64 %2888, 4
  store i64 %2889, i64* %PC.i463
  %2890 = inttoptr i64 %2887 to i32*
  %2891 = load i32, i32* %2890
  %2892 = sext i32 %2891 to i64
  store i64 %2892, i64* %RCX.i464, align 8
  store %struct.Memory* %loadMem_4123be, %struct.Memory** %MEMORY
  %loadMem_4123c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 33
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %2895 to i64*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 5
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RCX.i462 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RCX.i462
  %2900 = load i64, i64* %PC.i461
  %2901 = add i64 %2900, 7
  store i64 %2901, i64* %PC.i461
  %2902 = sext i64 %2899 to i128
  %2903 = and i128 %2902, -18446744073709551616
  %2904 = zext i64 %2899 to i128
  %2905 = or i128 %2903, %2904
  %2906 = mul i128 632, %2905
  %2907 = trunc i128 %2906 to i64
  store i64 %2907, i64* %RCX.i462, align 8
  %2908 = sext i64 %2907 to i128
  %2909 = icmp ne i128 %2908, %2906
  %2910 = zext i1 %2909 to i8
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2910, i8* %2911, align 1
  %2912 = trunc i128 %2906 to i32
  %2913 = and i32 %2912, 255
  %2914 = call i32 @llvm.ctpop.i32(i32 %2913)
  %2915 = trunc i32 %2914 to i8
  %2916 = and i8 %2915, 1
  %2917 = xor i8 %2916, 1
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2917, i8* %2918, align 1
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2919, align 1
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2920, align 1
  %2921 = lshr i64 %2907, 63
  %2922 = trunc i64 %2921 to i8
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2922, i8* %2923, align 1
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2910, i8* %2924, align 1
  store %struct.Memory* %loadMem_4123c2, %struct.Memory** %MEMORY
  %loadMem_4123c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 33
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 1
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %2930 to i64*
  %2931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2932 = getelementptr inbounds %struct.GPR, %struct.GPR* %2931, i32 0, i32 5
  %2933 = getelementptr inbounds %struct.Reg, %struct.Reg* %2932, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %2933 to i64*
  %2934 = load i64, i64* %RAX.i459
  %2935 = load i64, i64* %RCX.i460
  %2936 = load i64, i64* %PC.i458
  %2937 = add i64 %2936, 3
  store i64 %2937, i64* %PC.i458
  %2938 = add i64 %2935, %2934
  store i64 %2938, i64* %RAX.i459, align 8
  %2939 = icmp ult i64 %2938, %2934
  %2940 = icmp ult i64 %2938, %2935
  %2941 = or i1 %2939, %2940
  %2942 = zext i1 %2941 to i8
  %2943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2942, i8* %2943, align 1
  %2944 = trunc i64 %2938 to i32
  %2945 = and i32 %2944, 255
  %2946 = call i32 @llvm.ctpop.i32(i32 %2945)
  %2947 = trunc i32 %2946 to i8
  %2948 = and i8 %2947, 1
  %2949 = xor i8 %2948, 1
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2949, i8* %2950, align 1
  %2951 = xor i64 %2935, %2934
  %2952 = xor i64 %2951, %2938
  %2953 = lshr i64 %2952, 4
  %2954 = trunc i64 %2953 to i8
  %2955 = and i8 %2954, 1
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2955, i8* %2956, align 1
  %2957 = icmp eq i64 %2938, 0
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2958, i8* %2959, align 1
  %2960 = lshr i64 %2938, 63
  %2961 = trunc i64 %2960 to i8
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2961, i8* %2962, align 1
  %2963 = lshr i64 %2934, 63
  %2964 = lshr i64 %2935, 63
  %2965 = xor i64 %2960, %2963
  %2966 = xor i64 %2960, %2964
  %2967 = add i64 %2965, %2966
  %2968 = icmp eq i64 %2967, 2
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2969, i8* %2970, align 1
  store %struct.Memory* %loadMem_4123c9, %struct.Memory** %MEMORY
  %loadMem_4123cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2972 = getelementptr inbounds %struct.GPR, %struct.GPR* %2971, i32 0, i32 33
  %2973 = getelementptr inbounds %struct.Reg, %struct.Reg* %2972, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %2973 to i64*
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2975 = getelementptr inbounds %struct.GPR, %struct.GPR* %2974, i32 0, i32 1
  %2976 = getelementptr inbounds %struct.Reg, %struct.Reg* %2975, i32 0, i32 0
  %RAX.i457 = bitcast %union.anon* %2976 to i64*
  %2977 = load i64, i64* %RAX.i457
  %2978 = add i64 %2977, 532
  %2979 = load i64, i64* %PC.i456
  %2980 = add i64 %2979, 7
  store i64 %2980, i64* %PC.i456
  %2981 = inttoptr i64 %2978 to i32*
  %2982 = load i32, i32* %2981
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2983, align 1
  %2984 = and i32 %2982, 255
  %2985 = call i32 @llvm.ctpop.i32(i32 %2984)
  %2986 = trunc i32 %2985 to i8
  %2987 = and i8 %2986, 1
  %2988 = xor i8 %2987, 1
  %2989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2988, i8* %2989, align 1
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2990, align 1
  %2991 = icmp eq i32 %2982, 0
  %2992 = zext i1 %2991 to i8
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2992, i8* %2993, align 1
  %2994 = lshr i32 %2982, 31
  %2995 = trunc i32 %2994 to i8
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2995, i8* %2996, align 1
  %2997 = lshr i32 %2982, 31
  %2998 = xor i32 %2994, %2997
  %2999 = add i32 %2998, %2997
  %3000 = icmp eq i32 %2999, 2
  %3001 = zext i1 %3000 to i8
  %3002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3001, i8* %3002, align 1
  store %struct.Memory* %loadMem_4123cc, %struct.Memory** %MEMORY
  %loadMem_4123d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3005 to i64*
  %3006 = load i64, i64* %PC.i455
  %3007 = add i64 %3006, 34
  %3008 = load i64, i64* %PC.i455
  %3009 = add i64 %3008, 6
  %3010 = load i64, i64* %PC.i455
  %3011 = add i64 %3010, 6
  store i64 %3011, i64* %PC.i455
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3013 = load i8, i8* %3012, align 1
  %3014 = icmp eq i8 %3013, 0
  %3015 = zext i1 %3014 to i8
  store i8 %3015, i8* %BRANCH_TAKEN, align 1
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3017 = select i1 %3014, i64 %3007, i64 %3009
  store i64 %3017, i64* %3016, align 8
  store %struct.Memory* %loadMem_4123d3, %struct.Memory** %MEMORY
  %loadBr_4123d3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4123d3 = icmp eq i8 %loadBr_4123d3, 1
  br i1 %cmpBr_4123d3, label %block_.L_4123f5, label %block_4123d9

block_4123d9:                                     ; preds = %block_4123af
  %loadMem_4123d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %3020 to i64*
  %3021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3022 = getelementptr inbounds %struct.GPR, %struct.GPR* %3021, i32 0, i32 1
  %3023 = getelementptr inbounds %struct.Reg, %struct.Reg* %3022, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %3023 to i64*
  %3024 = load i64, i64* %PC.i453
  %3025 = add i64 %3024, 5
  store i64 %3025, i64* %PC.i453
  store i64 2, i64* %RAX.i454, align 8
  store %struct.Memory* %loadMem_4123d9, %struct.Memory** %MEMORY
  %loadMem_4123de = load %struct.Memory*, %struct.Memory** %MEMORY
  %3026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3027 = getelementptr inbounds %struct.GPR, %struct.GPR* %3026, i32 0, i32 33
  %3028 = getelementptr inbounds %struct.Reg, %struct.Reg* %3027, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3028 to i64*
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 5
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %RCX.i451 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 15
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RBP.i452 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RBP.i452
  %3036 = sub i64 %3035, 32
  %3037 = load i64, i64* %PC.i450
  %3038 = add i64 %3037, 3
  store i64 %3038, i64* %PC.i450
  %3039 = inttoptr i64 %3036 to i32*
  %3040 = load i32, i32* %3039
  %3041 = zext i32 %3040 to i64
  store i64 %3041, i64* %RCX.i451, align 8
  store %struct.Memory* %loadMem_4123de, %struct.Memory** %MEMORY
  %loadMem_4123e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3043 = getelementptr inbounds %struct.GPR, %struct.GPR* %3042, i32 0, i32 33
  %3044 = getelementptr inbounds %struct.Reg, %struct.Reg* %3043, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3044 to i64*
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 1
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %EAX.i448 = bitcast %union.anon* %3047 to i32*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 15
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %3050 to i64*
  %3051 = load i64, i64* %RBP.i449
  %3052 = sub i64 %3051, 136
  %3053 = load i32, i32* %EAX.i448
  %3054 = zext i32 %3053 to i64
  %3055 = load i64, i64* %PC.i447
  %3056 = add i64 %3055, 6
  store i64 %3056, i64* %PC.i447
  %3057 = inttoptr i64 %3052 to i32*
  store i32 %3053, i32* %3057
  store %struct.Memory* %loadMem_4123e1, %struct.Memory** %MEMORY
  %loadMem_4123e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 5
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %ECX.i445 = bitcast %union.anon* %3063 to i32*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 1
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %3066 to i64*
  %3067 = load i32, i32* %ECX.i445
  %3068 = zext i32 %3067 to i64
  %3069 = load i64, i64* %PC.i444
  %3070 = add i64 %3069, 2
  store i64 %3070, i64* %PC.i444
  %3071 = and i64 %3068, 4294967295
  store i64 %3071, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_4123e7, %struct.Memory** %MEMORY
  %loadMem_4123e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3073 = getelementptr inbounds %struct.GPR, %struct.GPR* %3072, i32 0, i32 33
  %3074 = getelementptr inbounds %struct.Reg, %struct.Reg* %3073, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %3074 to i64*
  %3075 = load i64, i64* %PC.i443
  %3076 = add i64 %3075, 1
  store i64 %3076, i64* %PC.i443
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3079 = bitcast %union.anon* %3078 to i32*
  %3080 = load i32, i32* %3079, align 8
  %3081 = sext i32 %3080 to i64
  %3082 = lshr i64 %3081, 32
  store i64 %3082, i64* %3077, align 8
  store %struct.Memory* %loadMem_4123e9, %struct.Memory** %MEMORY
  %loadMem_4123ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3087 = getelementptr inbounds %struct.GPR, %struct.GPR* %3086, i32 0, i32 5
  %3088 = getelementptr inbounds %struct.Reg, %struct.Reg* %3087, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %3088 to i64*
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 15
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %RBP.i442 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %RBP.i442
  %3093 = sub i64 %3092, 136
  %3094 = load i64, i64* %PC.i440
  %3095 = add i64 %3094, 6
  store i64 %3095, i64* %PC.i440
  %3096 = inttoptr i64 %3093 to i32*
  %3097 = load i32, i32* %3096
  %3098 = zext i32 %3097 to i64
  store i64 %3098, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_4123ea, %struct.Memory** %MEMORY
  %loadMem_4123f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3100 = getelementptr inbounds %struct.GPR, %struct.GPR* %3099, i32 0, i32 33
  %3101 = getelementptr inbounds %struct.Reg, %struct.Reg* %3100, i32 0, i32 0
  %PC.i435 = bitcast %union.anon* %3101 to i64*
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3103 = getelementptr inbounds %struct.GPR, %struct.GPR* %3102, i32 0, i32 5
  %3104 = getelementptr inbounds %struct.Reg, %struct.Reg* %3103, i32 0, i32 0
  %ECX.i436 = bitcast %union.anon* %3104 to i32*
  %3105 = load i32, i32* %ECX.i436
  %3106 = zext i32 %3105 to i64
  %3107 = load i64, i64* %PC.i435
  %3108 = add i64 %3107, 2
  store i64 %3108, i64* %PC.i435
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %3110 = bitcast %union.anon* %3109 to i32*
  %3111 = load i32, i32* %3110, align 8
  %3112 = zext i32 %3111 to i64
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %3114 = bitcast %union.anon* %3113 to i32*
  %3115 = load i32, i32* %3114, align 8
  %3116 = zext i32 %3115 to i64
  %3117 = shl i64 %3106, 32
  %3118 = ashr exact i64 %3117, 32
  %3119 = shl i64 %3116, 32
  %3120 = or i64 %3119, %3112
  %3121 = sdiv i64 %3120, %3118
  %3122 = shl i64 %3121, 32
  %3123 = ashr exact i64 %3122, 32
  %3124 = icmp eq i64 %3121, %3123
  br i1 %3124, label %3129, label %3125

; <label>:3125:                                   ; preds = %block_4123d9
  %3126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3127 = load i64, i64* %3126, align 8
  %3128 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %3127, %struct.Memory* %loadMem_4123f0)
  br label %routine_idivl__ecx.exit437

; <label>:3129:                                   ; preds = %block_4123d9
  %3130 = srem i64 %3120, %3118
  %3131 = getelementptr inbounds %union.anon, %union.anon* %3109, i64 0, i32 0
  %3132 = and i64 %3121, 4294967295
  store i64 %3132, i64* %3131, align 8
  %3133 = getelementptr inbounds %union.anon, %union.anon* %3113, i64 0, i32 0
  %3134 = and i64 %3130, 4294967295
  store i64 %3134, i64* %3133, align 8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3135, align 1
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %3136, align 1
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3137, align 1
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3138, align 1
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %3139, align 1
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3140, align 1
  br label %routine_idivl__ecx.exit437

routine_idivl__ecx.exit437:                       ; preds = %3125, %3129
  %3141 = phi %struct.Memory* [ %3128, %3125 ], [ %loadMem_4123f0, %3129 ]
  store %struct.Memory* %3141, %struct.Memory** %MEMORY
  %loadMem_4123f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 33
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %3144 to i64*
  %3145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3146 = getelementptr inbounds %struct.GPR, %struct.GPR* %3145, i32 0, i32 1
  %3147 = getelementptr inbounds %struct.Reg, %struct.Reg* %3146, i32 0, i32 0
  %EAX.i433 = bitcast %union.anon* %3147 to i32*
  %3148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3149 = getelementptr inbounds %struct.GPR, %struct.GPR* %3148, i32 0, i32 15
  %3150 = getelementptr inbounds %struct.Reg, %struct.Reg* %3149, i32 0, i32 0
  %RBP.i434 = bitcast %union.anon* %3150 to i64*
  %3151 = load i64, i64* %RBP.i434
  %3152 = sub i64 %3151, 32
  %3153 = load i32, i32* %EAX.i433
  %3154 = zext i32 %3153 to i64
  %3155 = load i64, i64* %PC.i432
  %3156 = add i64 %3155, 3
  store i64 %3156, i64* %PC.i432
  %3157 = inttoptr i64 %3152 to i32*
  store i32 %3153, i32* %3157
  store %struct.Memory* %loadMem_4123f2, %struct.Memory** %MEMORY
  br label %block_.L_4123f5

block_.L_4123f5:                                  ; preds = %routine_idivl__ecx.exit437, %block_4123af, %block_.L_41239e
  %loadMem_4123f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 33
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %3160 to i64*
  %3161 = load i64, i64* %PC.i431
  %3162 = add i64 %3161, 5
  %3163 = load i64, i64* %PC.i431
  %3164 = add i64 %3163, 5
  store i64 %3164, i64* %PC.i431
  %3165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3162, i64* %3165, align 8
  store %struct.Memory* %loadMem_4123f5, %struct.Memory** %MEMORY
  br label %block_.L_4123fa

block_.L_4123fa:                                  ; preds = %block_.L_4123f5, %block_412390
  %loadMem_4123fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3167 = getelementptr inbounds %struct.GPR, %struct.GPR* %3166, i32 0, i32 33
  %3168 = getelementptr inbounds %struct.Reg, %struct.Reg* %3167, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3168 to i64*
  %3169 = load i64, i64* %PC.i430
  %3170 = add i64 %3169, 5
  %3171 = load i64, i64* %PC.i430
  %3172 = add i64 %3171, 5
  store i64 %3172, i64* %PC.i430
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3170, i64* %3173, align 8
  store %struct.Memory* %loadMem_4123fa, %struct.Memory** %MEMORY
  br label %block_.L_4123ff

block_.L_4123ff:                                  ; preds = %block_.L_4123fa, %block_41234b, %block_.L_41232d
  %loadMem_4123ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 33
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %PC.i429
  %3178 = add i64 %3177, 12
  %3179 = load i64, i64* %PC.i429
  %3180 = add i64 %3179, 5
  store i64 %3180, i64* %PC.i429
  %3181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3178, i64* %3181, align 8
  store %struct.Memory* %loadMem_4123ff, %struct.Memory** %MEMORY
  br label %block_.L_41240b

block_.L_412404:                                  ; preds = %entry
  %loadMem_412404 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3183 = getelementptr inbounds %struct.GPR, %struct.GPR* %3182, i32 0, i32 33
  %3184 = getelementptr inbounds %struct.Reg, %struct.Reg* %3183, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3184 to i64*
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 15
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %RBP.i428 = bitcast %union.anon* %3187 to i64*
  %3188 = load i64, i64* %RBP.i428
  %3189 = sub i64 %3188, 32
  %3190 = load i64, i64* %PC.i427
  %3191 = add i64 %3190, 7
  store i64 %3191, i64* %PC.i427
  %3192 = inttoptr i64 %3189 to i32*
  store i32 0, i32* %3192
  store %struct.Memory* %loadMem_412404, %struct.Memory** %MEMORY
  br label %block_.L_41240b

block_.L_41240b:                                  ; preds = %block_.L_412404, %block_.L_4123ff
  %loadMem_41240b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3194 = getelementptr inbounds %struct.GPR, %struct.GPR* %3193, i32 0, i32 33
  %3195 = getelementptr inbounds %struct.Reg, %struct.Reg* %3194, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %3195 to i64*
  %3196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3197 = getelementptr inbounds %struct.GPR, %struct.GPR* %3196, i32 0, i32 15
  %3198 = getelementptr inbounds %struct.Reg, %struct.Reg* %3197, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3198 to i64*
  %3199 = load i64, i64* %RBP.i426
  %3200 = sub i64 %3199, 88
  %3201 = load i64, i64* %PC.i425
  %3202 = add i64 %3201, 4
  store i64 %3202, i64* %PC.i425
  %3203 = inttoptr i64 %3200 to i32*
  %3204 = load i32, i32* %3203
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3205, align 1
  %3206 = and i32 %3204, 255
  %3207 = call i32 @llvm.ctpop.i32(i32 %3206)
  %3208 = trunc i32 %3207 to i8
  %3209 = and i8 %3208, 1
  %3210 = xor i8 %3209, 1
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3210, i8* %3211, align 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3212, align 1
  %3213 = icmp eq i32 %3204, 0
  %3214 = zext i1 %3213 to i8
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3214, i8* %3215, align 1
  %3216 = lshr i32 %3204, 31
  %3217 = trunc i32 %3216 to i8
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3217, i8* %3218, align 1
  %3219 = lshr i32 %3204, 31
  %3220 = xor i32 %3216, %3219
  %3221 = add i32 %3220, %3219
  %3222 = icmp eq i32 %3221, 2
  %3223 = zext i1 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3223, i8* %3224, align 1
  store %struct.Memory* %loadMem_41240b, %struct.Memory** %MEMORY
  %loadMem_41240f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3226 = getelementptr inbounds %struct.GPR, %struct.GPR* %3225, i32 0, i32 33
  %3227 = getelementptr inbounds %struct.Reg, %struct.Reg* %3226, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3227 to i64*
  %3228 = load i64, i64* %PC.i424
  %3229 = add i64 %3228, 466
  %3230 = load i64, i64* %PC.i424
  %3231 = add i64 %3230, 6
  %3232 = load i64, i64* %PC.i424
  %3233 = add i64 %3232, 6
  store i64 %3233, i64* %PC.i424
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3235 = load i8, i8* %3234, align 1
  store i8 %3235, i8* %BRANCH_TAKEN, align 1
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3237 = icmp ne i8 %3235, 0
  %3238 = select i1 %3237, i64 %3229, i64 %3231
  store i64 %3238, i64* %3236, align 8
  store %struct.Memory* %loadMem_41240f, %struct.Memory** %MEMORY
  %loadBr_41240f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41240f = icmp eq i8 %loadBr_41240f, 1
  br i1 %cmpBr_41240f, label %block_.L_4125e1, label %block_412415

block_412415:                                     ; preds = %block_.L_41240b
  %loadMem_412415 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3240 = getelementptr inbounds %struct.GPR, %struct.GPR* %3239, i32 0, i32 33
  %3241 = getelementptr inbounds %struct.Reg, %struct.Reg* %3240, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3241 to i64*
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 1
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %RAX.i423 = bitcast %union.anon* %3244 to i64*
  %3245 = load i64, i64* %PC.i422
  %3246 = add i64 %3245, 8
  store i64 %3246, i64* %PC.i422
  %3247 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3247, i64* %RAX.i423, align 8
  store %struct.Memory* %loadMem_412415, %struct.Memory** %MEMORY
  %loadMem_41241d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3249 = getelementptr inbounds %struct.GPR, %struct.GPR* %3248, i32 0, i32 33
  %3250 = getelementptr inbounds %struct.Reg, %struct.Reg* %3249, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %3250 to i64*
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 1
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %RAX.i421 = bitcast %union.anon* %3253 to i64*
  %3254 = load i64, i64* %RAX.i421
  %3255 = add i64 %3254, 14168
  %3256 = load i64, i64* %PC.i420
  %3257 = add i64 %3256, 7
  store i64 %3257, i64* %PC.i420
  %3258 = inttoptr i64 %3255 to i64*
  %3259 = load i64, i64* %3258
  store i64 %3259, i64* %RAX.i421, align 8
  store %struct.Memory* %loadMem_41241d, %struct.Memory** %MEMORY
  %loadMem_412424 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 5
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RCX.i418 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 15
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RBP.i419
  %3270 = sub i64 %3269, 84
  %3271 = load i64, i64* %PC.i417
  %3272 = add i64 %3271, 4
  store i64 %3272, i64* %PC.i417
  %3273 = inttoptr i64 %3270 to i32*
  %3274 = load i32, i32* %3273
  %3275 = sext i32 %3274 to i64
  store i64 %3275, i64* %RCX.i418, align 8
  store %struct.Memory* %loadMem_412424, %struct.Memory** %MEMORY
  %loadMem_412428 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3277 = getelementptr inbounds %struct.GPR, %struct.GPR* %3276, i32 0, i32 33
  %3278 = getelementptr inbounds %struct.Reg, %struct.Reg* %3277, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3278 to i64*
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3280 = getelementptr inbounds %struct.GPR, %struct.GPR* %3279, i32 0, i32 5
  %3281 = getelementptr inbounds %struct.Reg, %struct.Reg* %3280, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %3281 to i64*
  %3282 = load i64, i64* %RCX.i416
  %3283 = load i64, i64* %PC.i415
  %3284 = add i64 %3283, 7
  store i64 %3284, i64* %PC.i415
  %3285 = sext i64 %3282 to i128
  %3286 = and i128 %3285, -18446744073709551616
  %3287 = zext i64 %3282 to i128
  %3288 = or i128 %3286, %3287
  %3289 = mul i128 632, %3288
  %3290 = trunc i128 %3289 to i64
  store i64 %3290, i64* %RCX.i416, align 8
  %3291 = sext i64 %3290 to i128
  %3292 = icmp ne i128 %3291, %3289
  %3293 = zext i1 %3292 to i8
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3293, i8* %3294, align 1
  %3295 = trunc i128 %3289 to i32
  %3296 = and i32 %3295, 255
  %3297 = call i32 @llvm.ctpop.i32(i32 %3296)
  %3298 = trunc i32 %3297 to i8
  %3299 = and i8 %3298, 1
  %3300 = xor i8 %3299, 1
  %3301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3300, i8* %3301, align 1
  %3302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3302, align 1
  %3303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3303, align 1
  %3304 = lshr i64 %3290, 63
  %3305 = trunc i64 %3304 to i8
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3305, i8* %3306, align 1
  %3307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3293, i8* %3307, align 1
  store %struct.Memory* %loadMem_412428, %struct.Memory** %MEMORY
  %loadMem_41242f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 33
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 1
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3313 to i64*
  %3314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3315 = getelementptr inbounds %struct.GPR, %struct.GPR* %3314, i32 0, i32 5
  %3316 = getelementptr inbounds %struct.Reg, %struct.Reg* %3315, i32 0, i32 0
  %RCX.i414 = bitcast %union.anon* %3316 to i64*
  %3317 = load i64, i64* %RAX.i413
  %3318 = load i64, i64* %RCX.i414
  %3319 = load i64, i64* %PC.i412
  %3320 = add i64 %3319, 3
  store i64 %3320, i64* %PC.i412
  %3321 = add i64 %3318, %3317
  store i64 %3321, i64* %RAX.i413, align 8
  %3322 = icmp ult i64 %3321, %3317
  %3323 = icmp ult i64 %3321, %3318
  %3324 = or i1 %3322, %3323
  %3325 = zext i1 %3324 to i8
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3325, i8* %3326, align 1
  %3327 = trunc i64 %3321 to i32
  %3328 = and i32 %3327, 255
  %3329 = call i32 @llvm.ctpop.i32(i32 %3328)
  %3330 = trunc i32 %3329 to i8
  %3331 = and i8 %3330, 1
  %3332 = xor i8 %3331, 1
  %3333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3332, i8* %3333, align 1
  %3334 = xor i64 %3318, %3317
  %3335 = xor i64 %3334, %3321
  %3336 = lshr i64 %3335, 4
  %3337 = trunc i64 %3336 to i8
  %3338 = and i8 %3337, 1
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3338, i8* %3339, align 1
  %3340 = icmp eq i64 %3321, 0
  %3341 = zext i1 %3340 to i8
  %3342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3341, i8* %3342, align 1
  %3343 = lshr i64 %3321, 63
  %3344 = trunc i64 %3343 to i8
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3344, i8* %3345, align 1
  %3346 = lshr i64 %3317, 63
  %3347 = lshr i64 %3318, 63
  %3348 = xor i64 %3343, %3346
  %3349 = xor i64 %3343, %3347
  %3350 = add i64 %3348, %3349
  %3351 = icmp eq i64 %3350, 2
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3352, i8* %3353, align 1
  store %struct.Memory* %loadMem_41242f, %struct.Memory** %MEMORY
  %loadMem_412432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 1
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %3359 to i64*
  %3360 = load i64, i64* %RAX.i411
  %3361 = load i64, i64* %PC.i410
  %3362 = add i64 %3361, 4
  store i64 %3362, i64* %PC.i410
  %3363 = add i64 76, %3360
  store i64 %3363, i64* %RAX.i411, align 8
  %3364 = icmp ult i64 %3363, %3360
  %3365 = icmp ult i64 %3363, 76
  %3366 = or i1 %3364, %3365
  %3367 = zext i1 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3367, i8* %3368, align 1
  %3369 = trunc i64 %3363 to i32
  %3370 = and i32 %3369, 255
  %3371 = call i32 @llvm.ctpop.i32(i32 %3370)
  %3372 = trunc i32 %3371 to i8
  %3373 = and i8 %3372, 1
  %3374 = xor i8 %3373, 1
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3374, i8* %3375, align 1
  %3376 = xor i64 76, %3360
  %3377 = xor i64 %3376, %3363
  %3378 = lshr i64 %3377, 4
  %3379 = trunc i64 %3378 to i8
  %3380 = and i8 %3379, 1
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3380, i8* %3381, align 1
  %3382 = icmp eq i64 %3363, 0
  %3383 = zext i1 %3382 to i8
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3383, i8* %3384, align 1
  %3385 = lshr i64 %3363, 63
  %3386 = trunc i64 %3385 to i8
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3386, i8* %3387, align 1
  %3388 = lshr i64 %3360, 63
  %3389 = xor i64 %3385, %3388
  %3390 = add i64 %3389, %3385
  %3391 = icmp eq i64 %3390, 2
  %3392 = zext i1 %3391 to i8
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3392, i8* %3393, align 1
  store %struct.Memory* %loadMem_412432, %struct.Memory** %MEMORY
  %loadMem_412436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3395 = getelementptr inbounds %struct.GPR, %struct.GPR* %3394, i32 0, i32 33
  %3396 = getelementptr inbounds %struct.Reg, %struct.Reg* %3395, i32 0, i32 0
  %PC.i407 = bitcast %union.anon* %3396 to i64*
  %3397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3398 = getelementptr inbounds %struct.GPR, %struct.GPR* %3397, i32 0, i32 5
  %3399 = getelementptr inbounds %struct.Reg, %struct.Reg* %3398, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3399 to i64*
  %3400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3401 = getelementptr inbounds %struct.GPR, %struct.GPR* %3400, i32 0, i32 15
  %3402 = getelementptr inbounds %struct.Reg, %struct.Reg* %3401, i32 0, i32 0
  %RBP.i409 = bitcast %union.anon* %3402 to i64*
  %3403 = load i64, i64* %RBP.i409
  %3404 = sub i64 %3403, 56
  %3405 = load i64, i64* %PC.i407
  %3406 = add i64 %3405, 4
  store i64 %3406, i64* %PC.i407
  %3407 = inttoptr i64 %3404 to i32*
  %3408 = load i32, i32* %3407
  %3409 = sext i32 %3408 to i64
  store i64 %3409, i64* %RCX.i408, align 8
  store %struct.Memory* %loadMem_412436, %struct.Memory** %MEMORY
  %loadMem_41243a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3411 = getelementptr inbounds %struct.GPR, %struct.GPR* %3410, i32 0, i32 33
  %3412 = getelementptr inbounds %struct.Reg, %struct.Reg* %3411, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3412 to i64*
  %3413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3414 = getelementptr inbounds %struct.GPR, %struct.GPR* %3413, i32 0, i32 5
  %3415 = getelementptr inbounds %struct.Reg, %struct.Reg* %3414, i32 0, i32 0
  %RCX.i406 = bitcast %union.anon* %3415 to i64*
  %3416 = load i64, i64* %RCX.i406
  %3417 = load i64, i64* %PC.i405
  %3418 = add i64 %3417, 4
  store i64 %3418, i64* %PC.i405
  %3419 = shl i64 %3416, 6
  %3420 = icmp slt i64 %3419, 0
  %3421 = shl i64 %3419, 1
  store i64 %3421, i64* %RCX.i406, align 8
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3423 = zext i1 %3420 to i8
  store i8 %3423, i8* %3422, align 1
  %3424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3425 = trunc i64 %3421 to i32
  %3426 = and i32 %3425, 254
  %3427 = call i32 @llvm.ctpop.i32(i32 %3426)
  %3428 = trunc i32 %3427 to i8
  %3429 = and i8 %3428, 1
  %3430 = xor i8 %3429, 1
  store i8 %3430, i8* %3424, align 1
  %3431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3431, align 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3433 = icmp eq i64 %3421, 0
  %3434 = zext i1 %3433 to i8
  store i8 %3434, i8* %3432, align 1
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3436 = lshr i64 %3421, 63
  %3437 = trunc i64 %3436 to i8
  store i8 %3437, i8* %3435, align 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3438, align 1
  store %struct.Memory* %loadMem_41243a, %struct.Memory** %MEMORY
  %loadMem_41243e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3440 = getelementptr inbounds %struct.GPR, %struct.GPR* %3439, i32 0, i32 33
  %3441 = getelementptr inbounds %struct.Reg, %struct.Reg* %3440, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3441 to i64*
  %3442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3443 = getelementptr inbounds %struct.GPR, %struct.GPR* %3442, i32 0, i32 1
  %3444 = getelementptr inbounds %struct.Reg, %struct.Reg* %3443, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %3444 to i64*
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 5
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %3447 to i64*
  %3448 = load i64, i64* %RAX.i403
  %3449 = load i64, i64* %RCX.i404
  %3450 = load i64, i64* %PC.i402
  %3451 = add i64 %3450, 3
  store i64 %3451, i64* %PC.i402
  %3452 = add i64 %3449, %3448
  store i64 %3452, i64* %RAX.i403, align 8
  %3453 = icmp ult i64 %3452, %3448
  %3454 = icmp ult i64 %3452, %3449
  %3455 = or i1 %3453, %3454
  %3456 = zext i1 %3455 to i8
  %3457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3456, i8* %3457, align 1
  %3458 = trunc i64 %3452 to i32
  %3459 = and i32 %3458, 255
  %3460 = call i32 @llvm.ctpop.i32(i32 %3459)
  %3461 = trunc i32 %3460 to i8
  %3462 = and i8 %3461, 1
  %3463 = xor i8 %3462, 1
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3463, i8* %3464, align 1
  %3465 = xor i64 %3449, %3448
  %3466 = xor i64 %3465, %3452
  %3467 = lshr i64 %3466, 4
  %3468 = trunc i64 %3467 to i8
  %3469 = and i8 %3468, 1
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3469, i8* %3470, align 1
  %3471 = icmp eq i64 %3452, 0
  %3472 = zext i1 %3471 to i8
  %3473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3472, i8* %3473, align 1
  %3474 = lshr i64 %3452, 63
  %3475 = trunc i64 %3474 to i8
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3475, i8* %3476, align 1
  %3477 = lshr i64 %3448, 63
  %3478 = lshr i64 %3449, 63
  %3479 = xor i64 %3474, %3477
  %3480 = xor i64 %3474, %3478
  %3481 = add i64 %3479, %3480
  %3482 = icmp eq i64 %3481, 2
  %3483 = zext i1 %3482 to i8
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3483, i8* %3484, align 1
  store %struct.Memory* %loadMem_41243e, %struct.Memory** %MEMORY
  %loadMem_412441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3489 = getelementptr inbounds %struct.GPR, %struct.GPR* %3488, i32 0, i32 5
  %3490 = getelementptr inbounds %struct.Reg, %struct.Reg* %3489, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %3490 to i64*
  %3491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3492 = getelementptr inbounds %struct.GPR, %struct.GPR* %3491, i32 0, i32 15
  %3493 = getelementptr inbounds %struct.Reg, %struct.Reg* %3492, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %3493 to i64*
  %3494 = load i64, i64* %RBP.i401
  %3495 = sub i64 %3494, 76
  %3496 = load i64, i64* %PC.i399
  %3497 = add i64 %3496, 4
  store i64 %3497, i64* %PC.i399
  %3498 = inttoptr i64 %3495 to i32*
  %3499 = load i32, i32* %3498
  %3500 = sext i32 %3499 to i64
  store i64 %3500, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_412441, %struct.Memory** %MEMORY
  %loadMem_412445 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 5
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RCX.i398 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RCX.i398
  %3508 = load i64, i64* %PC.i397
  %3509 = add i64 %3508, 4
  store i64 %3509, i64* %PC.i397
  %3510 = shl i64 %3507, 4
  %3511 = icmp slt i64 %3510, 0
  %3512 = shl i64 %3510, 1
  store i64 %3512, i64* %RCX.i398, align 8
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3514 = zext i1 %3511 to i8
  store i8 %3514, i8* %3513, align 1
  %3515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3516 = trunc i64 %3512 to i32
  %3517 = and i32 %3516, 254
  %3518 = call i32 @llvm.ctpop.i32(i32 %3517)
  %3519 = trunc i32 %3518 to i8
  %3520 = and i8 %3519, 1
  %3521 = xor i8 %3520, 1
  store i8 %3521, i8* %3515, align 1
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3522, align 1
  %3523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3524 = icmp eq i64 %3512, 0
  %3525 = zext i1 %3524 to i8
  store i8 %3525, i8* %3523, align 1
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3527 = lshr i64 %3512, 63
  %3528 = trunc i64 %3527 to i8
  store i8 %3528, i8* %3526, align 1
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3529, align 1
  store %struct.Memory* %loadMem_412445, %struct.Memory** %MEMORY
  %loadMem_412449 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3531 = getelementptr inbounds %struct.GPR, %struct.GPR* %3530, i32 0, i32 33
  %3532 = getelementptr inbounds %struct.Reg, %struct.Reg* %3531, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3532 to i64*
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3534 = getelementptr inbounds %struct.GPR, %struct.GPR* %3533, i32 0, i32 1
  %3535 = getelementptr inbounds %struct.Reg, %struct.Reg* %3534, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %3535 to i64*
  %3536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3537 = getelementptr inbounds %struct.GPR, %struct.GPR* %3536, i32 0, i32 5
  %3538 = getelementptr inbounds %struct.Reg, %struct.Reg* %3537, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %3538 to i64*
  %3539 = load i64, i64* %RAX.i395
  %3540 = load i64, i64* %RCX.i396
  %3541 = load i64, i64* %PC.i394
  %3542 = add i64 %3541, 3
  store i64 %3542, i64* %PC.i394
  %3543 = add i64 %3540, %3539
  store i64 %3543, i64* %RAX.i395, align 8
  %3544 = icmp ult i64 %3543, %3539
  %3545 = icmp ult i64 %3543, %3540
  %3546 = or i1 %3544, %3545
  %3547 = zext i1 %3546 to i8
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3547, i8* %3548, align 1
  %3549 = trunc i64 %3543 to i32
  %3550 = and i32 %3549, 255
  %3551 = call i32 @llvm.ctpop.i32(i32 %3550)
  %3552 = trunc i32 %3551 to i8
  %3553 = and i8 %3552, 1
  %3554 = xor i8 %3553, 1
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3554, i8* %3555, align 1
  %3556 = xor i64 %3540, %3539
  %3557 = xor i64 %3556, %3543
  %3558 = lshr i64 %3557, 4
  %3559 = trunc i64 %3558 to i8
  %3560 = and i8 %3559, 1
  %3561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3560, i8* %3561, align 1
  %3562 = icmp eq i64 %3543, 0
  %3563 = zext i1 %3562 to i8
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3563, i8* %3564, align 1
  %3565 = lshr i64 %3543, 63
  %3566 = trunc i64 %3565 to i8
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3566, i8* %3567, align 1
  %3568 = lshr i64 %3539, 63
  %3569 = lshr i64 %3540, 63
  %3570 = xor i64 %3565, %3568
  %3571 = xor i64 %3565, %3569
  %3572 = add i64 %3570, %3571
  %3573 = icmp eq i64 %3572, 2
  %3574 = zext i1 %3573 to i8
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3574, i8* %3575, align 1
  store %struct.Memory* %loadMem_412449, %struct.Memory** %MEMORY
  %loadMem_41244c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3577 = getelementptr inbounds %struct.GPR, %struct.GPR* %3576, i32 0, i32 33
  %3578 = getelementptr inbounds %struct.Reg, %struct.Reg* %3577, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3578 to i64*
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 5
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %3581 to i64*
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3583 = getelementptr inbounds %struct.GPR, %struct.GPR* %3582, i32 0, i32 15
  %3584 = getelementptr inbounds %struct.Reg, %struct.Reg* %3583, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3584 to i64*
  %3585 = load i64, i64* %RBP.i393
  %3586 = sub i64 %3585, 80
  %3587 = load i64, i64* %PC.i391
  %3588 = add i64 %3587, 4
  store i64 %3588, i64* %PC.i391
  %3589 = inttoptr i64 %3586 to i32*
  %3590 = load i32, i32* %3589
  %3591 = sext i32 %3590 to i64
  store i64 %3591, i64* %RCX.i392, align 8
  store %struct.Memory* %loadMem_41244c, %struct.Memory** %MEMORY
  %loadMem_412450 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3593 = getelementptr inbounds %struct.GPR, %struct.GPR* %3592, i32 0, i32 33
  %3594 = getelementptr inbounds %struct.Reg, %struct.Reg* %3593, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3594 to i64*
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 5
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %RCX.i390
  %3599 = load i64, i64* %PC.i389
  %3600 = add i64 %3599, 4
  store i64 %3600, i64* %PC.i389
  %3601 = shl i64 %3598, 2
  %3602 = icmp slt i64 %3601, 0
  %3603 = shl i64 %3601, 1
  store i64 %3603, i64* %RCX.i390, align 8
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3605 = zext i1 %3602 to i8
  store i8 %3605, i8* %3604, align 1
  %3606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3607 = trunc i64 %3603 to i32
  %3608 = and i32 %3607, 254
  %3609 = call i32 @llvm.ctpop.i32(i32 %3608)
  %3610 = trunc i32 %3609 to i8
  %3611 = and i8 %3610, 1
  %3612 = xor i8 %3611, 1
  store i8 %3612, i8* %3606, align 1
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3613, align 1
  %3614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3615 = icmp eq i64 %3603, 0
  %3616 = zext i1 %3615 to i8
  store i8 %3616, i8* %3614, align 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3618 = lshr i64 %3603, 63
  %3619 = trunc i64 %3618 to i8
  store i8 %3619, i8* %3617, align 1
  %3620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3620, align 1
  store %struct.Memory* %loadMem_412450, %struct.Memory** %MEMORY
  %loadMem_412454 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3622 = getelementptr inbounds %struct.GPR, %struct.GPR* %3621, i32 0, i32 33
  %3623 = getelementptr inbounds %struct.Reg, %struct.Reg* %3622, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %3623 to i64*
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3625 = getelementptr inbounds %struct.GPR, %struct.GPR* %3624, i32 0, i32 1
  %3626 = getelementptr inbounds %struct.Reg, %struct.Reg* %3625, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %3626 to i64*
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3628 = getelementptr inbounds %struct.GPR, %struct.GPR* %3627, i32 0, i32 5
  %3629 = getelementptr inbounds %struct.Reg, %struct.Reg* %3628, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %3629 to i64*
  %3630 = load i64, i64* %RAX.i387
  %3631 = load i64, i64* %RCX.i388
  %3632 = load i64, i64* %PC.i386
  %3633 = add i64 %3632, 3
  store i64 %3633, i64* %PC.i386
  %3634 = add i64 %3631, %3630
  store i64 %3634, i64* %RAX.i387, align 8
  %3635 = icmp ult i64 %3634, %3630
  %3636 = icmp ult i64 %3634, %3631
  %3637 = or i1 %3635, %3636
  %3638 = zext i1 %3637 to i8
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3638, i8* %3639, align 1
  %3640 = trunc i64 %3634 to i32
  %3641 = and i32 %3640, 255
  %3642 = call i32 @llvm.ctpop.i32(i32 %3641)
  %3643 = trunc i32 %3642 to i8
  %3644 = and i8 %3643, 1
  %3645 = xor i8 %3644, 1
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3645, i8* %3646, align 1
  %3647 = xor i64 %3631, %3630
  %3648 = xor i64 %3647, %3634
  %3649 = lshr i64 %3648, 4
  %3650 = trunc i64 %3649 to i8
  %3651 = and i8 %3650, 1
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3651, i8* %3652, align 1
  %3653 = icmp eq i64 %3634, 0
  %3654 = zext i1 %3653 to i8
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3654, i8* %3655, align 1
  %3656 = lshr i64 %3634, 63
  %3657 = trunc i64 %3656 to i8
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3657, i8* %3658, align 1
  %3659 = lshr i64 %3630, 63
  %3660 = lshr i64 %3631, 63
  %3661 = xor i64 %3656, %3659
  %3662 = xor i64 %3656, %3660
  %3663 = add i64 %3661, %3662
  %3664 = icmp eq i64 %3663, 2
  %3665 = zext i1 %3664 to i8
  %3666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3665, i8* %3666, align 1
  store %struct.Memory* %loadMem_412454, %struct.Memory** %MEMORY
  %loadMem_412457 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 5
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RCX.i384 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i385
  %3677 = sub i64 %3676, 60
  %3678 = load i64, i64* %PC.i383
  %3679 = add i64 %3678, 4
  store i64 %3679, i64* %PC.i383
  %3680 = inttoptr i64 %3677 to i32*
  %3681 = load i32, i32* %3680
  %3682 = sext i32 %3681 to i64
  store i64 %3682, i64* %RCX.i384, align 8
  store %struct.Memory* %loadMem_412457, %struct.Memory** %MEMORY
  %loadMem_41245b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3684 = getelementptr inbounds %struct.GPR, %struct.GPR* %3683, i32 0, i32 33
  %3685 = getelementptr inbounds %struct.Reg, %struct.Reg* %3684, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %3685 to i64*
  %3686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3687 = getelementptr inbounds %struct.GPR, %struct.GPR* %3686, i32 0, i32 1
  %3688 = getelementptr inbounds %struct.Reg, %struct.Reg* %3687, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %3688 to i64*
  %3689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3690 = getelementptr inbounds %struct.GPR, %struct.GPR* %3689, i32 0, i32 5
  %3691 = getelementptr inbounds %struct.Reg, %struct.Reg* %3690, i32 0, i32 0
  %RCX.i382 = bitcast %union.anon* %3691 to i64*
  %3692 = load i64, i64* %RAX.i381
  %3693 = load i64, i64* %RCX.i382
  %3694 = mul i64 %3693, 4
  %3695 = add i64 %3694, %3692
  %3696 = load i64, i64* %PC.i380
  %3697 = add i64 %3696, 4
  store i64 %3697, i64* %PC.i380
  %3698 = inttoptr i64 %3695 to i32*
  %3699 = load i32, i32* %3698
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3700, align 1
  %3701 = and i32 %3699, 255
  %3702 = call i32 @llvm.ctpop.i32(i32 %3701)
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3705, i8* %3706, align 1
  %3707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3707, align 1
  %3708 = icmp eq i32 %3699, 0
  %3709 = zext i1 %3708 to i8
  %3710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3709, i8* %3710, align 1
  %3711 = lshr i32 %3699, 31
  %3712 = trunc i32 %3711 to i8
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3712, i8* %3713, align 1
  %3714 = lshr i32 %3699, 31
  %3715 = xor i32 %3711, %3714
  %3716 = add i32 %3715, %3714
  %3717 = icmp eq i32 %3716, 2
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3718, i8* %3719, align 1
  store %struct.Memory* %loadMem_41245b, %struct.Memory** %MEMORY
  %loadMem_41245f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3721 = getelementptr inbounds %struct.GPR, %struct.GPR* %3720, i32 0, i32 33
  %3722 = getelementptr inbounds %struct.Reg, %struct.Reg* %3721, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3722 to i64*
  %3723 = load i64, i64* %PC.i379
  %3724 = add i64 %3723, 92
  %3725 = load i64, i64* %PC.i379
  %3726 = add i64 %3725, 6
  %3727 = load i64, i64* %PC.i379
  %3728 = add i64 %3727, 6
  store i64 %3728, i64* %PC.i379
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3730 = load i8, i8* %3729, align 1
  %3731 = icmp ne i8 %3730, 0
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3733 = load i8, i8* %3732, align 1
  %3734 = icmp ne i8 %3733, 0
  %3735 = xor i1 %3731, %3734
  %3736 = xor i1 %3735, true
  %3737 = zext i1 %3736 to i8
  store i8 %3737, i8* %BRANCH_TAKEN, align 1
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3739 = select i1 %3735, i64 %3726, i64 %3724
  store i64 %3739, i64* %3738, align 8
  store %struct.Memory* %loadMem_41245f, %struct.Memory** %MEMORY
  %loadBr_41245f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41245f = icmp eq i8 %loadBr_41245f, 1
  br i1 %cmpBr_41245f, label %block_.L_4124bb, label %block_412465

block_412465:                                     ; preds = %block_412415
  %loadMem_412465 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3744 = getelementptr inbounds %struct.GPR, %struct.GPR* %3743, i32 0, i32 1
  %3745 = getelementptr inbounds %struct.Reg, %struct.Reg* %3744, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %3745 to i32*
  %3746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3747 = getelementptr inbounds %struct.GPR, %struct.GPR* %3746, i32 0, i32 1
  %3748 = getelementptr inbounds %struct.Reg, %struct.Reg* %3747, i32 0, i32 0
  %RAX.i378 = bitcast %union.anon* %3748 to i64*
  %3749 = load i64, i64* %RAX.i378
  %3750 = load i32, i32* %EAX.i377
  %3751 = zext i32 %3750 to i64
  %3752 = load i64, i64* %PC.i376
  %3753 = add i64 %3752, 2
  store i64 %3753, i64* %PC.i376
  %3754 = xor i64 %3751, %3749
  %3755 = trunc i64 %3754 to i32
  %3756 = and i64 %3754, 4294967295
  store i64 %3756, i64* %RAX.i378, align 8
  %3757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3757, align 1
  %3758 = and i32 %3755, 255
  %3759 = call i32 @llvm.ctpop.i32(i32 %3758)
  %3760 = trunc i32 %3759 to i8
  %3761 = and i8 %3760, 1
  %3762 = xor i8 %3761, 1
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3762, i8* %3763, align 1
  %3764 = icmp eq i32 %3755, 0
  %3765 = zext i1 %3764 to i8
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3765, i8* %3766, align 1
  %3767 = lshr i32 %3755, 31
  %3768 = trunc i32 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3768, i8* %3769, align 1
  %3770 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3770, align 1
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3771, align 1
  store %struct.Memory* %loadMem_412465, %struct.Memory** %MEMORY
  %loadMem_412467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 33
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 5
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %PC.i374
  %3779 = add i64 %3778, 8
  store i64 %3779, i64* %PC.i374
  %3780 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3780, i64* %RCX.i375, align 8
  store %struct.Memory* %loadMem_412467, %struct.Memory** %MEMORY
  %loadMem_41246f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 33
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 5
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %RCX.i373 = bitcast %union.anon* %3786 to i64*
  %3787 = load i64, i64* %RCX.i373
  %3788 = add i64 %3787, 14168
  %3789 = load i64, i64* %PC.i372
  %3790 = add i64 %3789, 7
  store i64 %3790, i64* %PC.i372
  %3791 = inttoptr i64 %3788 to i64*
  %3792 = load i64, i64* %3791
  store i64 %3792, i64* %RCX.i373, align 8
  store %struct.Memory* %loadMem_41246f, %struct.Memory** %MEMORY
  %loadMem_412476 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 7
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 15
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %3801 to i64*
  %3802 = load i64, i64* %RBP.i371
  %3803 = sub i64 %3802, 84
  %3804 = load i64, i64* %PC.i369
  %3805 = add i64 %3804, 4
  store i64 %3805, i64* %PC.i369
  %3806 = inttoptr i64 %3803 to i32*
  %3807 = load i32, i32* %3806
  %3808 = sext i32 %3807 to i64
  store i64 %3808, i64* %RDX.i370, align 8
  store %struct.Memory* %loadMem_412476, %struct.Memory** %MEMORY
  %loadMem_41247a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 7
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RDX.i368 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %RDX.i368
  %3816 = load i64, i64* %PC.i367
  %3817 = add i64 %3816, 7
  store i64 %3817, i64* %PC.i367
  %3818 = sext i64 %3815 to i128
  %3819 = and i128 %3818, -18446744073709551616
  %3820 = zext i64 %3815 to i128
  %3821 = or i128 %3819, %3820
  %3822 = mul i128 632, %3821
  %3823 = trunc i128 %3822 to i64
  store i64 %3823, i64* %RDX.i368, align 8
  %3824 = sext i64 %3823 to i128
  %3825 = icmp ne i128 %3824, %3822
  %3826 = zext i1 %3825 to i8
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3826, i8* %3827, align 1
  %3828 = trunc i128 %3822 to i32
  %3829 = and i32 %3828, 255
  %3830 = call i32 @llvm.ctpop.i32(i32 %3829)
  %3831 = trunc i32 %3830 to i8
  %3832 = and i8 %3831, 1
  %3833 = xor i8 %3832, 1
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3833, i8* %3834, align 1
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3835, align 1
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %3836, align 1
  %3837 = lshr i64 %3823, 63
  %3838 = trunc i64 %3837 to i8
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3838, i8* %3839, align 1
  %3840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3826, i8* %3840, align 1
  store %struct.Memory* %loadMem_41247a, %struct.Memory** %MEMORY
  %loadMem_412481 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 5
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RCX.i365 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 7
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RDX.i366 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %RCX.i365
  %3851 = load i64, i64* %RDX.i366
  %3852 = load i64, i64* %PC.i364
  %3853 = add i64 %3852, 3
  store i64 %3853, i64* %PC.i364
  %3854 = add i64 %3851, %3850
  store i64 %3854, i64* %RCX.i365, align 8
  %3855 = icmp ult i64 %3854, %3850
  %3856 = icmp ult i64 %3854, %3851
  %3857 = or i1 %3855, %3856
  %3858 = zext i1 %3857 to i8
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3858, i8* %3859, align 1
  %3860 = trunc i64 %3854 to i32
  %3861 = and i32 %3860, 255
  %3862 = call i32 @llvm.ctpop.i32(i32 %3861)
  %3863 = trunc i32 %3862 to i8
  %3864 = and i8 %3863, 1
  %3865 = xor i8 %3864, 1
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3865, i8* %3866, align 1
  %3867 = xor i64 %3851, %3850
  %3868 = xor i64 %3867, %3854
  %3869 = lshr i64 %3868, 4
  %3870 = trunc i64 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3871, i8* %3872, align 1
  %3873 = icmp eq i64 %3854, 0
  %3874 = zext i1 %3873 to i8
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3874, i8* %3875, align 1
  %3876 = lshr i64 %3854, 63
  %3877 = trunc i64 %3876 to i8
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3877, i8* %3878, align 1
  %3879 = lshr i64 %3850, 63
  %3880 = lshr i64 %3851, 63
  %3881 = xor i64 %3876, %3879
  %3882 = xor i64 %3876, %3880
  %3883 = add i64 %3881, %3882
  %3884 = icmp eq i64 %3883, 2
  %3885 = zext i1 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3885, i8* %3886, align 1
  store %struct.Memory* %loadMem_412481, %struct.Memory** %MEMORY
  %loadMem_412484 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3888 = getelementptr inbounds %struct.GPR, %struct.GPR* %3887, i32 0, i32 33
  %3889 = getelementptr inbounds %struct.Reg, %struct.Reg* %3888, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %3889 to i64*
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 5
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %RCX.i363 = bitcast %union.anon* %3892 to i64*
  %3893 = load i64, i64* %RCX.i363
  %3894 = load i64, i64* %PC.i362
  %3895 = add i64 %3894, 4
  store i64 %3895, i64* %PC.i362
  %3896 = add i64 76, %3893
  store i64 %3896, i64* %RCX.i363, align 8
  %3897 = icmp ult i64 %3896, %3893
  %3898 = icmp ult i64 %3896, 76
  %3899 = or i1 %3897, %3898
  %3900 = zext i1 %3899 to i8
  %3901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3900, i8* %3901, align 1
  %3902 = trunc i64 %3896 to i32
  %3903 = and i32 %3902, 255
  %3904 = call i32 @llvm.ctpop.i32(i32 %3903)
  %3905 = trunc i32 %3904 to i8
  %3906 = and i8 %3905, 1
  %3907 = xor i8 %3906, 1
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3907, i8* %3908, align 1
  %3909 = xor i64 76, %3893
  %3910 = xor i64 %3909, %3896
  %3911 = lshr i64 %3910, 4
  %3912 = trunc i64 %3911 to i8
  %3913 = and i8 %3912, 1
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3913, i8* %3914, align 1
  %3915 = icmp eq i64 %3896, 0
  %3916 = zext i1 %3915 to i8
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3916, i8* %3917, align 1
  %3918 = lshr i64 %3896, 63
  %3919 = trunc i64 %3918 to i8
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3919, i8* %3920, align 1
  %3921 = lshr i64 %3893, 63
  %3922 = xor i64 %3918, %3921
  %3923 = add i64 %3922, %3918
  %3924 = icmp eq i64 %3923, 2
  %3925 = zext i1 %3924 to i8
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3925, i8* %3926, align 1
  store %struct.Memory* %loadMem_412484, %struct.Memory** %MEMORY
  %loadMem_412488 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3928 = getelementptr inbounds %struct.GPR, %struct.GPR* %3927, i32 0, i32 33
  %3929 = getelementptr inbounds %struct.Reg, %struct.Reg* %3928, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %3929 to i64*
  %3930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3931 = getelementptr inbounds %struct.GPR, %struct.GPR* %3930, i32 0, i32 7
  %3932 = getelementptr inbounds %struct.Reg, %struct.Reg* %3931, i32 0, i32 0
  %RDX.i360 = bitcast %union.anon* %3932 to i64*
  %3933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3934 = getelementptr inbounds %struct.GPR, %struct.GPR* %3933, i32 0, i32 15
  %3935 = getelementptr inbounds %struct.Reg, %struct.Reg* %3934, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %3935 to i64*
  %3936 = load i64, i64* %RBP.i361
  %3937 = sub i64 %3936, 56
  %3938 = load i64, i64* %PC.i359
  %3939 = add i64 %3938, 4
  store i64 %3939, i64* %PC.i359
  %3940 = inttoptr i64 %3937 to i32*
  %3941 = load i32, i32* %3940
  %3942 = sext i32 %3941 to i64
  store i64 %3942, i64* %RDX.i360, align 8
  store %struct.Memory* %loadMem_412488, %struct.Memory** %MEMORY
  %loadMem_41248c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3944 = getelementptr inbounds %struct.GPR, %struct.GPR* %3943, i32 0, i32 33
  %3945 = getelementptr inbounds %struct.Reg, %struct.Reg* %3944, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %3945 to i64*
  %3946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3947 = getelementptr inbounds %struct.GPR, %struct.GPR* %3946, i32 0, i32 7
  %3948 = getelementptr inbounds %struct.Reg, %struct.Reg* %3947, i32 0, i32 0
  %RDX.i358 = bitcast %union.anon* %3948 to i64*
  %3949 = load i64, i64* %RDX.i358
  %3950 = load i64, i64* %PC.i357
  %3951 = add i64 %3950, 4
  store i64 %3951, i64* %PC.i357
  %3952 = shl i64 %3949, 6
  %3953 = icmp slt i64 %3952, 0
  %3954 = shl i64 %3952, 1
  store i64 %3954, i64* %RDX.i358, align 8
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3956 = zext i1 %3953 to i8
  store i8 %3956, i8* %3955, align 1
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %3958 = trunc i64 %3954 to i32
  %3959 = and i32 %3958, 254
  %3960 = call i32 @llvm.ctpop.i32(i32 %3959)
  %3961 = trunc i32 %3960 to i8
  %3962 = and i8 %3961, 1
  %3963 = xor i8 %3962, 1
  store i8 %3963, i8* %3957, align 1
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3964, align 1
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3966 = icmp eq i64 %3954, 0
  %3967 = zext i1 %3966 to i8
  store i8 %3967, i8* %3965, align 1
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3969 = lshr i64 %3954, 63
  %3970 = trunc i64 %3969 to i8
  store i8 %3970, i8* %3968, align 1
  %3971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %3971, align 1
  store %struct.Memory* %loadMem_41248c, %struct.Memory** %MEMORY
  %loadMem_412490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3973 = getelementptr inbounds %struct.GPR, %struct.GPR* %3972, i32 0, i32 33
  %3974 = getelementptr inbounds %struct.Reg, %struct.Reg* %3973, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %3974 to i64*
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 5
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 7
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %3980 to i64*
  %3981 = load i64, i64* %RCX.i355
  %3982 = load i64, i64* %RDX.i356
  %3983 = load i64, i64* %PC.i354
  %3984 = add i64 %3983, 3
  store i64 %3984, i64* %PC.i354
  %3985 = add i64 %3982, %3981
  store i64 %3985, i64* %RCX.i355, align 8
  %3986 = icmp ult i64 %3985, %3981
  %3987 = icmp ult i64 %3985, %3982
  %3988 = or i1 %3986, %3987
  %3989 = zext i1 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3989, i8* %3990, align 1
  %3991 = trunc i64 %3985 to i32
  %3992 = and i32 %3991, 255
  %3993 = call i32 @llvm.ctpop.i32(i32 %3992)
  %3994 = trunc i32 %3993 to i8
  %3995 = and i8 %3994, 1
  %3996 = xor i8 %3995, 1
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3996, i8* %3997, align 1
  %3998 = xor i64 %3982, %3981
  %3999 = xor i64 %3998, %3985
  %4000 = lshr i64 %3999, 4
  %4001 = trunc i64 %4000 to i8
  %4002 = and i8 %4001, 1
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4002, i8* %4003, align 1
  %4004 = icmp eq i64 %3985, 0
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4005, i8* %4006, align 1
  %4007 = lshr i64 %3985, 63
  %4008 = trunc i64 %4007 to i8
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4008, i8* %4009, align 1
  %4010 = lshr i64 %3981, 63
  %4011 = lshr i64 %3982, 63
  %4012 = xor i64 %4007, %4010
  %4013 = xor i64 %4007, %4011
  %4014 = add i64 %4012, %4013
  %4015 = icmp eq i64 %4014, 2
  %4016 = zext i1 %4015 to i8
  %4017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4016, i8* %4017, align 1
  store %struct.Memory* %loadMem_412490, %struct.Memory** %MEMORY
  %loadMem_412493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4019 = getelementptr inbounds %struct.GPR, %struct.GPR* %4018, i32 0, i32 33
  %4020 = getelementptr inbounds %struct.Reg, %struct.Reg* %4019, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4020 to i64*
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 7
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %RDX.i352 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4025 = getelementptr inbounds %struct.GPR, %struct.GPR* %4024, i32 0, i32 15
  %4026 = getelementptr inbounds %struct.Reg, %struct.Reg* %4025, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4026 to i64*
  %4027 = load i64, i64* %RBP.i353
  %4028 = sub i64 %4027, 76
  %4029 = load i64, i64* %PC.i351
  %4030 = add i64 %4029, 4
  store i64 %4030, i64* %PC.i351
  %4031 = inttoptr i64 %4028 to i32*
  %4032 = load i32, i32* %4031
  %4033 = sext i32 %4032 to i64
  store i64 %4033, i64* %RDX.i352, align 8
  store %struct.Memory* %loadMem_412493, %struct.Memory** %MEMORY
  %loadMem_412497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4035 = getelementptr inbounds %struct.GPR, %struct.GPR* %4034, i32 0, i32 33
  %4036 = getelementptr inbounds %struct.Reg, %struct.Reg* %4035, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4036 to i64*
  %4037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4038 = getelementptr inbounds %struct.GPR, %struct.GPR* %4037, i32 0, i32 7
  %4039 = getelementptr inbounds %struct.Reg, %struct.Reg* %4038, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %4039 to i64*
  %4040 = load i64, i64* %RDX.i350
  %4041 = load i64, i64* %PC.i349
  %4042 = add i64 %4041, 4
  store i64 %4042, i64* %PC.i349
  %4043 = shl i64 %4040, 4
  %4044 = icmp slt i64 %4043, 0
  %4045 = shl i64 %4043, 1
  store i64 %4045, i64* %RDX.i350, align 8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4047 = zext i1 %4044 to i8
  store i8 %4047, i8* %4046, align 1
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4049 = trunc i64 %4045 to i32
  %4050 = and i32 %4049, 254
  %4051 = call i32 @llvm.ctpop.i32(i32 %4050)
  %4052 = trunc i32 %4051 to i8
  %4053 = and i8 %4052, 1
  %4054 = xor i8 %4053, 1
  store i8 %4054, i8* %4048, align 1
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4055, align 1
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4057 = icmp eq i64 %4045, 0
  %4058 = zext i1 %4057 to i8
  store i8 %4058, i8* %4056, align 1
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4060 = lshr i64 %4045, 63
  %4061 = trunc i64 %4060 to i8
  store i8 %4061, i8* %4059, align 1
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4062, align 1
  store %struct.Memory* %loadMem_412497, %struct.Memory** %MEMORY
  %loadMem_41249b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4064 = getelementptr inbounds %struct.GPR, %struct.GPR* %4063, i32 0, i32 33
  %4065 = getelementptr inbounds %struct.Reg, %struct.Reg* %4064, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4065 to i64*
  %4066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4067 = getelementptr inbounds %struct.GPR, %struct.GPR* %4066, i32 0, i32 5
  %4068 = getelementptr inbounds %struct.Reg, %struct.Reg* %4067, i32 0, i32 0
  %RCX.i347 = bitcast %union.anon* %4068 to i64*
  %4069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4070 = getelementptr inbounds %struct.GPR, %struct.GPR* %4069, i32 0, i32 7
  %4071 = getelementptr inbounds %struct.Reg, %struct.Reg* %4070, i32 0, i32 0
  %RDX.i348 = bitcast %union.anon* %4071 to i64*
  %4072 = load i64, i64* %RCX.i347
  %4073 = load i64, i64* %RDX.i348
  %4074 = load i64, i64* %PC.i346
  %4075 = add i64 %4074, 3
  store i64 %4075, i64* %PC.i346
  %4076 = add i64 %4073, %4072
  store i64 %4076, i64* %RCX.i347, align 8
  %4077 = icmp ult i64 %4076, %4072
  %4078 = icmp ult i64 %4076, %4073
  %4079 = or i1 %4077, %4078
  %4080 = zext i1 %4079 to i8
  %4081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4080, i8* %4081, align 1
  %4082 = trunc i64 %4076 to i32
  %4083 = and i32 %4082, 255
  %4084 = call i32 @llvm.ctpop.i32(i32 %4083)
  %4085 = trunc i32 %4084 to i8
  %4086 = and i8 %4085, 1
  %4087 = xor i8 %4086, 1
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4087, i8* %4088, align 1
  %4089 = xor i64 %4073, %4072
  %4090 = xor i64 %4089, %4076
  %4091 = lshr i64 %4090, 4
  %4092 = trunc i64 %4091 to i8
  %4093 = and i8 %4092, 1
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4093, i8* %4094, align 1
  %4095 = icmp eq i64 %4076, 0
  %4096 = zext i1 %4095 to i8
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4096, i8* %4097, align 1
  %4098 = lshr i64 %4076, 63
  %4099 = trunc i64 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4099, i8* %4100, align 1
  %4101 = lshr i64 %4072, 63
  %4102 = lshr i64 %4073, 63
  %4103 = xor i64 %4098, %4101
  %4104 = xor i64 %4098, %4102
  %4105 = add i64 %4103, %4104
  %4106 = icmp eq i64 %4105, 2
  %4107 = zext i1 %4106 to i8
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4107, i8* %4108, align 1
  store %struct.Memory* %loadMem_41249b, %struct.Memory** %MEMORY
  %loadMem_41249e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 7
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 15
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %4117 to i64*
  %4118 = load i64, i64* %RBP.i345
  %4119 = sub i64 %4118, 80
  %4120 = load i64, i64* %PC.i343
  %4121 = add i64 %4120, 4
  store i64 %4121, i64* %PC.i343
  %4122 = inttoptr i64 %4119 to i32*
  %4123 = load i32, i32* %4122
  %4124 = sext i32 %4123 to i64
  store i64 %4124, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_41249e, %struct.Memory** %MEMORY
  %loadMem_4124a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4126 = getelementptr inbounds %struct.GPR, %struct.GPR* %4125, i32 0, i32 33
  %4127 = getelementptr inbounds %struct.Reg, %struct.Reg* %4126, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %4127 to i64*
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 7
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %4130 to i64*
  %4131 = load i64, i64* %RDX.i342
  %4132 = load i64, i64* %PC.i341
  %4133 = add i64 %4132, 4
  store i64 %4133, i64* %PC.i341
  %4134 = shl i64 %4131, 2
  %4135 = icmp slt i64 %4134, 0
  %4136 = shl i64 %4134, 1
  store i64 %4136, i64* %RDX.i342, align 8
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4138 = zext i1 %4135 to i8
  store i8 %4138, i8* %4137, align 1
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4140 = trunc i64 %4136 to i32
  %4141 = and i32 %4140, 254
  %4142 = call i32 @llvm.ctpop.i32(i32 %4141)
  %4143 = trunc i32 %4142 to i8
  %4144 = and i8 %4143, 1
  %4145 = xor i8 %4144, 1
  store i8 %4145, i8* %4139, align 1
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4146, align 1
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4148 = icmp eq i64 %4136, 0
  %4149 = zext i1 %4148 to i8
  store i8 %4149, i8* %4147, align 1
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4151 = lshr i64 %4136, 63
  %4152 = trunc i64 %4151 to i8
  store i8 %4152, i8* %4150, align 1
  %4153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4153, align 1
  store %struct.Memory* %loadMem_4124a2, %struct.Memory** %MEMORY
  %loadMem_4124a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 33
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 5
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %RCX.i339 = bitcast %union.anon* %4159 to i64*
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 7
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %RDX.i340 = bitcast %union.anon* %4162 to i64*
  %4163 = load i64, i64* %RCX.i339
  %4164 = load i64, i64* %RDX.i340
  %4165 = load i64, i64* %PC.i338
  %4166 = add i64 %4165, 3
  store i64 %4166, i64* %PC.i338
  %4167 = add i64 %4164, %4163
  store i64 %4167, i64* %RCX.i339, align 8
  %4168 = icmp ult i64 %4167, %4163
  %4169 = icmp ult i64 %4167, %4164
  %4170 = or i1 %4168, %4169
  %4171 = zext i1 %4170 to i8
  %4172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4171, i8* %4172, align 1
  %4173 = trunc i64 %4167 to i32
  %4174 = and i32 %4173, 255
  %4175 = call i32 @llvm.ctpop.i32(i32 %4174)
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  %4178 = xor i8 %4177, 1
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4178, i8* %4179, align 1
  %4180 = xor i64 %4164, %4163
  %4181 = xor i64 %4180, %4167
  %4182 = lshr i64 %4181, 4
  %4183 = trunc i64 %4182 to i8
  %4184 = and i8 %4183, 1
  %4185 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4184, i8* %4185, align 1
  %4186 = icmp eq i64 %4167, 0
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4187, i8* %4188, align 1
  %4189 = lshr i64 %4167, 63
  %4190 = trunc i64 %4189 to i8
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4190, i8* %4191, align 1
  %4192 = lshr i64 %4163, 63
  %4193 = lshr i64 %4164, 63
  %4194 = xor i64 %4189, %4192
  %4195 = xor i64 %4189, %4193
  %4196 = add i64 %4194, %4195
  %4197 = icmp eq i64 %4196, 2
  %4198 = zext i1 %4197 to i8
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4198, i8* %4199, align 1
  store %struct.Memory* %loadMem_4124a6, %struct.Memory** %MEMORY
  %loadMem_4124a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 7
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RDX.i336 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 15
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %RBP.i337
  %4210 = sub i64 %4209, 60
  %4211 = load i64, i64* %PC.i335
  %4212 = add i64 %4211, 4
  store i64 %4212, i64* %PC.i335
  %4213 = inttoptr i64 %4210 to i32*
  %4214 = load i32, i32* %4213
  %4215 = sext i32 %4214 to i64
  store i64 %4215, i64* %RDX.i336, align 8
  store %struct.Memory* %loadMem_4124a9, %struct.Memory** %MEMORY
  %loadMem_4124ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4217 = getelementptr inbounds %struct.GPR, %struct.GPR* %4216, i32 0, i32 33
  %4218 = getelementptr inbounds %struct.Reg, %struct.Reg* %4217, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4218 to i64*
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 1
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %4221 to i64*
  %4222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4223 = getelementptr inbounds %struct.GPR, %struct.GPR* %4222, i32 0, i32 5
  %4224 = getelementptr inbounds %struct.Reg, %struct.Reg* %4223, i32 0, i32 0
  %RCX.i333 = bitcast %union.anon* %4224 to i64*
  %4225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4226 = getelementptr inbounds %struct.GPR, %struct.GPR* %4225, i32 0, i32 7
  %4227 = getelementptr inbounds %struct.Reg, %struct.Reg* %4226, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %4227 to i64*
  %4228 = load i64, i64* %RAX.i332
  %4229 = load i64, i64* %RCX.i333
  %4230 = load i64, i64* %RDX.i334
  %4231 = mul i64 %4230, 4
  %4232 = add i64 %4231, %4229
  %4233 = load i64, i64* %PC.i331
  %4234 = add i64 %4233, 3
  store i64 %4234, i64* %PC.i331
  %4235 = trunc i64 %4228 to i32
  %4236 = inttoptr i64 %4232 to i32*
  %4237 = load i32, i32* %4236
  %4238 = sub i32 %4235, %4237
  %4239 = zext i32 %4238 to i64
  store i64 %4239, i64* %RAX.i332, align 8
  %4240 = icmp ult i32 %4235, %4237
  %4241 = zext i1 %4240 to i8
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4241, i8* %4242, align 1
  %4243 = and i32 %4238, 255
  %4244 = call i32 @llvm.ctpop.i32(i32 %4243)
  %4245 = trunc i32 %4244 to i8
  %4246 = and i8 %4245, 1
  %4247 = xor i8 %4246, 1
  %4248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4247, i8* %4248, align 1
  %4249 = xor i32 %4237, %4235
  %4250 = xor i32 %4249, %4238
  %4251 = lshr i32 %4250, 4
  %4252 = trunc i32 %4251 to i8
  %4253 = and i8 %4252, 1
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4253, i8* %4254, align 1
  %4255 = icmp eq i32 %4238, 0
  %4256 = zext i1 %4255 to i8
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4256, i8* %4257, align 1
  %4258 = lshr i32 %4238, 31
  %4259 = trunc i32 %4258 to i8
  %4260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4259, i8* %4260, align 1
  %4261 = lshr i32 %4235, 31
  %4262 = lshr i32 %4237, 31
  %4263 = xor i32 %4262, %4261
  %4264 = xor i32 %4258, %4261
  %4265 = add i32 %4264, %4263
  %4266 = icmp eq i32 %4265, 2
  %4267 = zext i1 %4266 to i8
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4267, i8* %4268, align 1
  store %struct.Memory* %loadMem_4124ad, %struct.Memory** %MEMORY
  %loadMem_4124b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4270 = getelementptr inbounds %struct.GPR, %struct.GPR* %4269, i32 0, i32 33
  %4271 = getelementptr inbounds %struct.Reg, %struct.Reg* %4270, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4271 to i64*
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4273 = getelementptr inbounds %struct.GPR, %struct.GPR* %4272, i32 0, i32 1
  %4274 = getelementptr inbounds %struct.Reg, %struct.Reg* %4273, i32 0, i32 0
  %EAX.i329 = bitcast %union.anon* %4274 to i32*
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 15
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %4277 to i64*
  %4278 = load i64, i64* %RBP.i330
  %4279 = sub i64 %4278, 140
  %4280 = load i32, i32* %EAX.i329
  %4281 = zext i32 %4280 to i64
  %4282 = load i64, i64* %PC.i328
  %4283 = add i64 %4282, 6
  store i64 %4283, i64* %PC.i328
  %4284 = inttoptr i64 %4279 to i32*
  store i32 %4280, i32* %4284
  store %struct.Memory* %loadMem_4124b0, %struct.Memory** %MEMORY
  %loadMem_4124b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %4287 to i64*
  %4288 = load i64, i64* %PC.i327
  %4289 = add i64 %4288, 84
  %4290 = load i64, i64* %PC.i327
  %4291 = add i64 %4290, 5
  store i64 %4291, i64* %PC.i327
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4289, i64* %4292, align 8
  store %struct.Memory* %loadMem_4124b6, %struct.Memory** %MEMORY
  br label %block_.L_41250a

block_.L_4124bb:                                  ; preds = %block_412415
  %loadMem_4124bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 1
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %4298 to i64*
  %4299 = load i64, i64* %PC.i325
  %4300 = add i64 %4299, 8
  store i64 %4300, i64* %PC.i325
  %4301 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4301, i64* %RAX.i326, align 8
  store %struct.Memory* %loadMem_4124bb, %struct.Memory** %MEMORY
  %loadMem_4124c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4303 = getelementptr inbounds %struct.GPR, %struct.GPR* %4302, i32 0, i32 33
  %4304 = getelementptr inbounds %struct.Reg, %struct.Reg* %4303, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %4304 to i64*
  %4305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4306 = getelementptr inbounds %struct.GPR, %struct.GPR* %4305, i32 0, i32 1
  %4307 = getelementptr inbounds %struct.Reg, %struct.Reg* %4306, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %4307 to i64*
  %4308 = load i64, i64* %RAX.i324
  %4309 = add i64 %4308, 14168
  %4310 = load i64, i64* %PC.i323
  %4311 = add i64 %4310, 7
  store i64 %4311, i64* %PC.i323
  %4312 = inttoptr i64 %4309 to i64*
  %4313 = load i64, i64* %4312
  store i64 %4313, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_4124c3, %struct.Memory** %MEMORY
  %loadMem_4124ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 33
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4316 to i64*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 5
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RCX.i321 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 15
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %4322 to i64*
  %4323 = load i64, i64* %RBP.i322
  %4324 = sub i64 %4323, 84
  %4325 = load i64, i64* %PC.i320
  %4326 = add i64 %4325, 4
  store i64 %4326, i64* %PC.i320
  %4327 = inttoptr i64 %4324 to i32*
  %4328 = load i32, i32* %4327
  %4329 = sext i32 %4328 to i64
  store i64 %4329, i64* %RCX.i321, align 8
  store %struct.Memory* %loadMem_4124ca, %struct.Memory** %MEMORY
  %loadMem_4124ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 33
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4332 to i64*
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 5
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %4335 to i64*
  %4336 = load i64, i64* %RCX.i319
  %4337 = load i64, i64* %PC.i318
  %4338 = add i64 %4337, 7
  store i64 %4338, i64* %PC.i318
  %4339 = sext i64 %4336 to i128
  %4340 = and i128 %4339, -18446744073709551616
  %4341 = zext i64 %4336 to i128
  %4342 = or i128 %4340, %4341
  %4343 = mul i128 632, %4342
  %4344 = trunc i128 %4343 to i64
  store i64 %4344, i64* %RCX.i319, align 8
  %4345 = sext i64 %4344 to i128
  %4346 = icmp ne i128 %4345, %4343
  %4347 = zext i1 %4346 to i8
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4347, i8* %4348, align 1
  %4349 = trunc i128 %4343 to i32
  %4350 = and i32 %4349, 255
  %4351 = call i32 @llvm.ctpop.i32(i32 %4350)
  %4352 = trunc i32 %4351 to i8
  %4353 = and i8 %4352, 1
  %4354 = xor i8 %4353, 1
  %4355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4354, i8* %4355, align 1
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4356, align 1
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %4357, align 1
  %4358 = lshr i64 %4344, 63
  %4359 = trunc i64 %4358 to i8
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4359, i8* %4360, align 1
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4347, i8* %4361, align 1
  store %struct.Memory* %loadMem_4124ce, %struct.Memory** %MEMORY
  %loadMem_4124d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 33
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %4364 to i64*
  %4365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4366 = getelementptr inbounds %struct.GPR, %struct.GPR* %4365, i32 0, i32 1
  %4367 = getelementptr inbounds %struct.Reg, %struct.Reg* %4366, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %4367 to i64*
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4369 = getelementptr inbounds %struct.GPR, %struct.GPR* %4368, i32 0, i32 5
  %4370 = getelementptr inbounds %struct.Reg, %struct.Reg* %4369, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %4370 to i64*
  %4371 = load i64, i64* %RAX.i316
  %4372 = load i64, i64* %RCX.i317
  %4373 = load i64, i64* %PC.i315
  %4374 = add i64 %4373, 3
  store i64 %4374, i64* %PC.i315
  %4375 = add i64 %4372, %4371
  store i64 %4375, i64* %RAX.i316, align 8
  %4376 = icmp ult i64 %4375, %4371
  %4377 = icmp ult i64 %4375, %4372
  %4378 = or i1 %4376, %4377
  %4379 = zext i1 %4378 to i8
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4379, i8* %4380, align 1
  %4381 = trunc i64 %4375 to i32
  %4382 = and i32 %4381, 255
  %4383 = call i32 @llvm.ctpop.i32(i32 %4382)
  %4384 = trunc i32 %4383 to i8
  %4385 = and i8 %4384, 1
  %4386 = xor i8 %4385, 1
  %4387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4386, i8* %4387, align 1
  %4388 = xor i64 %4372, %4371
  %4389 = xor i64 %4388, %4375
  %4390 = lshr i64 %4389, 4
  %4391 = trunc i64 %4390 to i8
  %4392 = and i8 %4391, 1
  %4393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4392, i8* %4393, align 1
  %4394 = icmp eq i64 %4375, 0
  %4395 = zext i1 %4394 to i8
  %4396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4395, i8* %4396, align 1
  %4397 = lshr i64 %4375, 63
  %4398 = trunc i64 %4397 to i8
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4398, i8* %4399, align 1
  %4400 = lshr i64 %4371, 63
  %4401 = lshr i64 %4372, 63
  %4402 = xor i64 %4397, %4400
  %4403 = xor i64 %4397, %4401
  %4404 = add i64 %4402, %4403
  %4405 = icmp eq i64 %4404, 2
  %4406 = zext i1 %4405 to i8
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4406, i8* %4407, align 1
  store %struct.Memory* %loadMem_4124d5, %struct.Memory** %MEMORY
  %loadMem_4124d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4409 = getelementptr inbounds %struct.GPR, %struct.GPR* %4408, i32 0, i32 33
  %4410 = getelementptr inbounds %struct.Reg, %struct.Reg* %4409, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4410 to i64*
  %4411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4412 = getelementptr inbounds %struct.GPR, %struct.GPR* %4411, i32 0, i32 1
  %4413 = getelementptr inbounds %struct.Reg, %struct.Reg* %4412, i32 0, i32 0
  %RAX.i314 = bitcast %union.anon* %4413 to i64*
  %4414 = load i64, i64* %RAX.i314
  %4415 = load i64, i64* %PC.i313
  %4416 = add i64 %4415, 4
  store i64 %4416, i64* %PC.i313
  %4417 = add i64 76, %4414
  store i64 %4417, i64* %RAX.i314, align 8
  %4418 = icmp ult i64 %4417, %4414
  %4419 = icmp ult i64 %4417, 76
  %4420 = or i1 %4418, %4419
  %4421 = zext i1 %4420 to i8
  %4422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4421, i8* %4422, align 1
  %4423 = trunc i64 %4417 to i32
  %4424 = and i32 %4423, 255
  %4425 = call i32 @llvm.ctpop.i32(i32 %4424)
  %4426 = trunc i32 %4425 to i8
  %4427 = and i8 %4426, 1
  %4428 = xor i8 %4427, 1
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4428, i8* %4429, align 1
  %4430 = xor i64 76, %4414
  %4431 = xor i64 %4430, %4417
  %4432 = lshr i64 %4431, 4
  %4433 = trunc i64 %4432 to i8
  %4434 = and i8 %4433, 1
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4434, i8* %4435, align 1
  %4436 = icmp eq i64 %4417, 0
  %4437 = zext i1 %4436 to i8
  %4438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4437, i8* %4438, align 1
  %4439 = lshr i64 %4417, 63
  %4440 = trunc i64 %4439 to i8
  %4441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4440, i8* %4441, align 1
  %4442 = lshr i64 %4414, 63
  %4443 = xor i64 %4439, %4442
  %4444 = add i64 %4443, %4439
  %4445 = icmp eq i64 %4444, 2
  %4446 = zext i1 %4445 to i8
  %4447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4446, i8* %4447, align 1
  store %struct.Memory* %loadMem_4124d8, %struct.Memory** %MEMORY
  %loadMem_4124dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 33
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4450 to i64*
  %4451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4452 = getelementptr inbounds %struct.GPR, %struct.GPR* %4451, i32 0, i32 5
  %4453 = getelementptr inbounds %struct.Reg, %struct.Reg* %4452, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %4453 to i64*
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 15
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %4456 to i64*
  %4457 = load i64, i64* %RBP.i312
  %4458 = sub i64 %4457, 56
  %4459 = load i64, i64* %PC.i310
  %4460 = add i64 %4459, 4
  store i64 %4460, i64* %PC.i310
  %4461 = inttoptr i64 %4458 to i32*
  %4462 = load i32, i32* %4461
  %4463 = sext i32 %4462 to i64
  store i64 %4463, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_4124dc, %struct.Memory** %MEMORY
  %loadMem_4124e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 33
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4466 to i64*
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4468 = getelementptr inbounds %struct.GPR, %struct.GPR* %4467, i32 0, i32 5
  %4469 = getelementptr inbounds %struct.Reg, %struct.Reg* %4468, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %4469 to i64*
  %4470 = load i64, i64* %RCX.i309
  %4471 = load i64, i64* %PC.i308
  %4472 = add i64 %4471, 4
  store i64 %4472, i64* %PC.i308
  %4473 = shl i64 %4470, 6
  %4474 = icmp slt i64 %4473, 0
  %4475 = shl i64 %4473, 1
  store i64 %4475, i64* %RCX.i309, align 8
  %4476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4477 = zext i1 %4474 to i8
  store i8 %4477, i8* %4476, align 1
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4479 = trunc i64 %4475 to i32
  %4480 = and i32 %4479, 254
  %4481 = call i32 @llvm.ctpop.i32(i32 %4480)
  %4482 = trunc i32 %4481 to i8
  %4483 = and i8 %4482, 1
  %4484 = xor i8 %4483, 1
  store i8 %4484, i8* %4478, align 1
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4485, align 1
  %4486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4487 = icmp eq i64 %4475, 0
  %4488 = zext i1 %4487 to i8
  store i8 %4488, i8* %4486, align 1
  %4489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4490 = lshr i64 %4475, 63
  %4491 = trunc i64 %4490 to i8
  store i8 %4491, i8* %4489, align 1
  %4492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4492, align 1
  store %struct.Memory* %loadMem_4124e0, %struct.Memory** %MEMORY
  %loadMem_4124e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4494 = getelementptr inbounds %struct.GPR, %struct.GPR* %4493, i32 0, i32 33
  %4495 = getelementptr inbounds %struct.Reg, %struct.Reg* %4494, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4495 to i64*
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4497 = getelementptr inbounds %struct.GPR, %struct.GPR* %4496, i32 0, i32 1
  %4498 = getelementptr inbounds %struct.Reg, %struct.Reg* %4497, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %4498 to i64*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4500 = getelementptr inbounds %struct.GPR, %struct.GPR* %4499, i32 0, i32 5
  %4501 = getelementptr inbounds %struct.Reg, %struct.Reg* %4500, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %4501 to i64*
  %4502 = load i64, i64* %RAX.i306
  %4503 = load i64, i64* %RCX.i307
  %4504 = load i64, i64* %PC.i305
  %4505 = add i64 %4504, 3
  store i64 %4505, i64* %PC.i305
  %4506 = add i64 %4503, %4502
  store i64 %4506, i64* %RAX.i306, align 8
  %4507 = icmp ult i64 %4506, %4502
  %4508 = icmp ult i64 %4506, %4503
  %4509 = or i1 %4507, %4508
  %4510 = zext i1 %4509 to i8
  %4511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4510, i8* %4511, align 1
  %4512 = trunc i64 %4506 to i32
  %4513 = and i32 %4512, 255
  %4514 = call i32 @llvm.ctpop.i32(i32 %4513)
  %4515 = trunc i32 %4514 to i8
  %4516 = and i8 %4515, 1
  %4517 = xor i8 %4516, 1
  %4518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4517, i8* %4518, align 1
  %4519 = xor i64 %4503, %4502
  %4520 = xor i64 %4519, %4506
  %4521 = lshr i64 %4520, 4
  %4522 = trunc i64 %4521 to i8
  %4523 = and i8 %4522, 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4523, i8* %4524, align 1
  %4525 = icmp eq i64 %4506, 0
  %4526 = zext i1 %4525 to i8
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4526, i8* %4527, align 1
  %4528 = lshr i64 %4506, 63
  %4529 = trunc i64 %4528 to i8
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4529, i8* %4530, align 1
  %4531 = lshr i64 %4502, 63
  %4532 = lshr i64 %4503, 63
  %4533 = xor i64 %4528, %4531
  %4534 = xor i64 %4528, %4532
  %4535 = add i64 %4533, %4534
  %4536 = icmp eq i64 %4535, 2
  %4537 = zext i1 %4536 to i8
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4537, i8* %4538, align 1
  store %struct.Memory* %loadMem_4124e4, %struct.Memory** %MEMORY
  %loadMem_4124e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4540 = getelementptr inbounds %struct.GPR, %struct.GPR* %4539, i32 0, i32 33
  %4541 = getelementptr inbounds %struct.Reg, %struct.Reg* %4540, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4541 to i64*
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 5
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %4544 to i64*
  %4545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4546 = getelementptr inbounds %struct.GPR, %struct.GPR* %4545, i32 0, i32 15
  %4547 = getelementptr inbounds %struct.Reg, %struct.Reg* %4546, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %4547 to i64*
  %4548 = load i64, i64* %RBP.i304
  %4549 = sub i64 %4548, 76
  %4550 = load i64, i64* %PC.i302
  %4551 = add i64 %4550, 4
  store i64 %4551, i64* %PC.i302
  %4552 = inttoptr i64 %4549 to i32*
  %4553 = load i32, i32* %4552
  %4554 = sext i32 %4553 to i64
  store i64 %4554, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_4124e7, %struct.Memory** %MEMORY
  %loadMem_4124eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4556 = getelementptr inbounds %struct.GPR, %struct.GPR* %4555, i32 0, i32 33
  %4557 = getelementptr inbounds %struct.Reg, %struct.Reg* %4556, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4557 to i64*
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 5
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %4560 to i64*
  %4561 = load i64, i64* %RCX.i301
  %4562 = load i64, i64* %PC.i300
  %4563 = add i64 %4562, 4
  store i64 %4563, i64* %PC.i300
  %4564 = shl i64 %4561, 4
  %4565 = icmp slt i64 %4564, 0
  %4566 = shl i64 %4564, 1
  store i64 %4566, i64* %RCX.i301, align 8
  %4567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4568 = zext i1 %4565 to i8
  store i8 %4568, i8* %4567, align 1
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4570 = trunc i64 %4566 to i32
  %4571 = and i32 %4570, 254
  %4572 = call i32 @llvm.ctpop.i32(i32 %4571)
  %4573 = trunc i32 %4572 to i8
  %4574 = and i8 %4573, 1
  %4575 = xor i8 %4574, 1
  store i8 %4575, i8* %4569, align 1
  %4576 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4576, align 1
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4578 = icmp eq i64 %4566, 0
  %4579 = zext i1 %4578 to i8
  store i8 %4579, i8* %4577, align 1
  %4580 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4581 = lshr i64 %4566, 63
  %4582 = trunc i64 %4581 to i8
  store i8 %4582, i8* %4580, align 1
  %4583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4583, align 1
  store %struct.Memory* %loadMem_4124eb, %struct.Memory** %MEMORY
  %loadMem_4124ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 1
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %4589 to i64*
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 5
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %RCX.i299 = bitcast %union.anon* %4592 to i64*
  %4593 = load i64, i64* %RAX.i298
  %4594 = load i64, i64* %RCX.i299
  %4595 = load i64, i64* %PC.i297
  %4596 = add i64 %4595, 3
  store i64 %4596, i64* %PC.i297
  %4597 = add i64 %4594, %4593
  store i64 %4597, i64* %RAX.i298, align 8
  %4598 = icmp ult i64 %4597, %4593
  %4599 = icmp ult i64 %4597, %4594
  %4600 = or i1 %4598, %4599
  %4601 = zext i1 %4600 to i8
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4601, i8* %4602, align 1
  %4603 = trunc i64 %4597 to i32
  %4604 = and i32 %4603, 255
  %4605 = call i32 @llvm.ctpop.i32(i32 %4604)
  %4606 = trunc i32 %4605 to i8
  %4607 = and i8 %4606, 1
  %4608 = xor i8 %4607, 1
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4608, i8* %4609, align 1
  %4610 = xor i64 %4594, %4593
  %4611 = xor i64 %4610, %4597
  %4612 = lshr i64 %4611, 4
  %4613 = trunc i64 %4612 to i8
  %4614 = and i8 %4613, 1
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4614, i8* %4615, align 1
  %4616 = icmp eq i64 %4597, 0
  %4617 = zext i1 %4616 to i8
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4617, i8* %4618, align 1
  %4619 = lshr i64 %4597, 63
  %4620 = trunc i64 %4619 to i8
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4620, i8* %4621, align 1
  %4622 = lshr i64 %4593, 63
  %4623 = lshr i64 %4594, 63
  %4624 = xor i64 %4619, %4622
  %4625 = xor i64 %4619, %4623
  %4626 = add i64 %4624, %4625
  %4627 = icmp eq i64 %4626, 2
  %4628 = zext i1 %4627 to i8
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4628, i8* %4629, align 1
  store %struct.Memory* %loadMem_4124ef, %struct.Memory** %MEMORY
  %loadMem_4124f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 5
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 15
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %RBP.i296
  %4640 = sub i64 %4639, 80
  %4641 = load i64, i64* %PC.i294
  %4642 = add i64 %4641, 4
  store i64 %4642, i64* %PC.i294
  %4643 = inttoptr i64 %4640 to i32*
  %4644 = load i32, i32* %4643
  %4645 = sext i32 %4644 to i64
  store i64 %4645, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_4124f2, %struct.Memory** %MEMORY
  %loadMem_4124f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4647 = getelementptr inbounds %struct.GPR, %struct.GPR* %4646, i32 0, i32 33
  %4648 = getelementptr inbounds %struct.Reg, %struct.Reg* %4647, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4648 to i64*
  %4649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4650 = getelementptr inbounds %struct.GPR, %struct.GPR* %4649, i32 0, i32 5
  %4651 = getelementptr inbounds %struct.Reg, %struct.Reg* %4650, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %4651 to i64*
  %4652 = load i64, i64* %RCX.i293
  %4653 = load i64, i64* %PC.i292
  %4654 = add i64 %4653, 4
  store i64 %4654, i64* %PC.i292
  %4655 = shl i64 %4652, 2
  %4656 = icmp slt i64 %4655, 0
  %4657 = shl i64 %4655, 1
  store i64 %4657, i64* %RCX.i293, align 8
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %4659 = zext i1 %4656 to i8
  store i8 %4659, i8* %4658, align 1
  %4660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %4661 = trunc i64 %4657 to i32
  %4662 = and i32 %4661, 254
  %4663 = call i32 @llvm.ctpop.i32(i32 %4662)
  %4664 = trunc i32 %4663 to i8
  %4665 = and i8 %4664, 1
  %4666 = xor i8 %4665, 1
  store i8 %4666, i8* %4660, align 1
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4667, align 1
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4669 = icmp eq i64 %4657, 0
  %4670 = zext i1 %4669 to i8
  store i8 %4670, i8* %4668, align 1
  %4671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4672 = lshr i64 %4657, 63
  %4673 = trunc i64 %4672 to i8
  store i8 %4673, i8* %4671, align 1
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %4674, align 1
  store %struct.Memory* %loadMem_4124f6, %struct.Memory** %MEMORY
  %loadMem_4124fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 1
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RAX.i290 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 5
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RCX.i291 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RAX.i290
  %4685 = load i64, i64* %RCX.i291
  %4686 = load i64, i64* %PC.i289
  %4687 = add i64 %4686, 3
  store i64 %4687, i64* %PC.i289
  %4688 = add i64 %4685, %4684
  store i64 %4688, i64* %RAX.i290, align 8
  %4689 = icmp ult i64 %4688, %4684
  %4690 = icmp ult i64 %4688, %4685
  %4691 = or i1 %4689, %4690
  %4692 = zext i1 %4691 to i8
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4692, i8* %4693, align 1
  %4694 = trunc i64 %4688 to i32
  %4695 = and i32 %4694, 255
  %4696 = call i32 @llvm.ctpop.i32(i32 %4695)
  %4697 = trunc i32 %4696 to i8
  %4698 = and i8 %4697, 1
  %4699 = xor i8 %4698, 1
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4699, i8* %4700, align 1
  %4701 = xor i64 %4685, %4684
  %4702 = xor i64 %4701, %4688
  %4703 = lshr i64 %4702, 4
  %4704 = trunc i64 %4703 to i8
  %4705 = and i8 %4704, 1
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4705, i8* %4706, align 1
  %4707 = icmp eq i64 %4688, 0
  %4708 = zext i1 %4707 to i8
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4708, i8* %4709, align 1
  %4710 = lshr i64 %4688, 63
  %4711 = trunc i64 %4710 to i8
  %4712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4711, i8* %4712, align 1
  %4713 = lshr i64 %4684, 63
  %4714 = lshr i64 %4685, 63
  %4715 = xor i64 %4710, %4713
  %4716 = xor i64 %4710, %4714
  %4717 = add i64 %4715, %4716
  %4718 = icmp eq i64 %4717, 2
  %4719 = zext i1 %4718 to i8
  %4720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4719, i8* %4720, align 1
  store %struct.Memory* %loadMem_4124fa, %struct.Memory** %MEMORY
  %loadMem_4124fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 33
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4723 to i64*
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4725 = getelementptr inbounds %struct.GPR, %struct.GPR* %4724, i32 0, i32 5
  %4726 = getelementptr inbounds %struct.Reg, %struct.Reg* %4725, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %4726 to i64*
  %4727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4728 = getelementptr inbounds %struct.GPR, %struct.GPR* %4727, i32 0, i32 15
  %4729 = getelementptr inbounds %struct.Reg, %struct.Reg* %4728, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %4729 to i64*
  %4730 = load i64, i64* %RBP.i288
  %4731 = sub i64 %4730, 60
  %4732 = load i64, i64* %PC.i286
  %4733 = add i64 %4732, 4
  store i64 %4733, i64* %PC.i286
  %4734 = inttoptr i64 %4731 to i32*
  %4735 = load i32, i32* %4734
  %4736 = sext i32 %4735 to i64
  store i64 %4736, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_4124fd, %struct.Memory** %MEMORY
  %loadMem_412501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 33
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 1
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %4742 to i64*
  %4743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4744 = getelementptr inbounds %struct.GPR, %struct.GPR* %4743, i32 0, i32 5
  %4745 = getelementptr inbounds %struct.Reg, %struct.Reg* %4744, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %4745 to i64*
  %4746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4747 = getelementptr inbounds %struct.GPR, %struct.GPR* %4746, i32 0, i32 7
  %4748 = getelementptr inbounds %struct.Reg, %struct.Reg* %4747, i32 0, i32 0
  %RDX.i285 = bitcast %union.anon* %4748 to i64*
  %4749 = load i64, i64* %RAX.i283
  %4750 = load i64, i64* %RCX.i284
  %4751 = mul i64 %4750, 4
  %4752 = add i64 %4751, %4749
  %4753 = load i64, i64* %PC.i282
  %4754 = add i64 %4753, 3
  store i64 %4754, i64* %PC.i282
  %4755 = inttoptr i64 %4752 to i32*
  %4756 = load i32, i32* %4755
  %4757 = zext i32 %4756 to i64
  store i64 %4757, i64* %RDX.i285, align 8
  store %struct.Memory* %loadMem_412501, %struct.Memory** %MEMORY
  %loadMem_412504 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4759 = getelementptr inbounds %struct.GPR, %struct.GPR* %4758, i32 0, i32 33
  %4760 = getelementptr inbounds %struct.Reg, %struct.Reg* %4759, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4760 to i64*
  %4761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4762 = getelementptr inbounds %struct.GPR, %struct.GPR* %4761, i32 0, i32 7
  %4763 = getelementptr inbounds %struct.Reg, %struct.Reg* %4762, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4763 to i32*
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 15
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %4766 to i64*
  %4767 = load i64, i64* %RBP.i281
  %4768 = sub i64 %4767, 140
  %4769 = load i32, i32* %EDX.i
  %4770 = zext i32 %4769 to i64
  %4771 = load i64, i64* %PC.i280
  %4772 = add i64 %4771, 6
  store i64 %4772, i64* %PC.i280
  %4773 = inttoptr i64 %4768 to i32*
  store i32 %4769, i32* %4773
  store %struct.Memory* %loadMem_412504, %struct.Memory** %MEMORY
  br label %block_.L_41250a

block_.L_41250a:                                  ; preds = %block_.L_4124bb, %block_412465
  %loadMem_41250a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4778 = getelementptr inbounds %struct.GPR, %struct.GPR* %4777, i32 0, i32 1
  %4779 = getelementptr inbounds %struct.Reg, %struct.Reg* %4778, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %4779 to i64*
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 15
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %RBP.i279 = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %RBP.i279
  %4784 = sub i64 %4783, 140
  %4785 = load i64, i64* %PC.i277
  %4786 = add i64 %4785, 6
  store i64 %4786, i64* %PC.i277
  %4787 = inttoptr i64 %4784 to i32*
  %4788 = load i32, i32* %4787
  %4789 = zext i32 %4788 to i64
  store i64 %4789, i64* %RAX.i278, align 8
  store %struct.Memory* %loadMem_41250a, %struct.Memory** %MEMORY
  %loadMem_412510 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4791 = getelementptr inbounds %struct.GPR, %struct.GPR* %4790, i32 0, i32 33
  %4792 = getelementptr inbounds %struct.Reg, %struct.Reg* %4791, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4792 to i64*
  %4793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4794 = getelementptr inbounds %struct.GPR, %struct.GPR* %4793, i32 0, i32 1
  %4795 = getelementptr inbounds %struct.Reg, %struct.Reg* %4794, i32 0, i32 0
  %EAX.i275 = bitcast %union.anon* %4795 to i32*
  %4796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4797 = getelementptr inbounds %struct.GPR, %struct.GPR* %4796, i32 0, i32 15
  %4798 = getelementptr inbounds %struct.Reg, %struct.Reg* %4797, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %4798 to i64*
  %4799 = load i64, i64* %RBP.i276
  %4800 = sub i64 %4799, 28
  %4801 = load i32, i32* %EAX.i275
  %4802 = zext i32 %4801 to i64
  %4803 = load i64, i64* %PC.i274
  %4804 = add i64 %4803, 3
  store i64 %4804, i64* %PC.i274
  %4805 = inttoptr i64 %4800 to i32*
  store i32 %4801, i32* %4805
  store %struct.Memory* %loadMem_412510, %struct.Memory** %MEMORY
  %loadMem_412513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4807 = getelementptr inbounds %struct.GPR, %struct.GPR* %4806, i32 0, i32 33
  %4808 = getelementptr inbounds %struct.Reg, %struct.Reg* %4807, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %4808 to i64*
  %4809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4810 = getelementptr inbounds %struct.GPR, %struct.GPR* %4809, i32 0, i32 5
  %4811 = getelementptr inbounds %struct.Reg, %struct.Reg* %4810, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %4811 to i64*
  %4812 = load i64, i64* %PC.i272
  %4813 = add i64 %4812, 8
  store i64 %4813, i64* %PC.i272
  %4814 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4814, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_412513, %struct.Memory** %MEMORY
  %loadMem_41251b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 5
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %4820 to i64*
  %4821 = load i64, i64* %RCX.i271
  %4822 = add i64 %4821, 72400
  %4823 = load i64, i64* %PC.i270
  %4824 = add i64 %4823, 7
  store i64 %4824, i64* %PC.i270
  %4825 = inttoptr i64 %4822 to i32*
  %4826 = load i32, i32* %4825
  %4827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4827, align 1
  %4828 = and i32 %4826, 255
  %4829 = call i32 @llvm.ctpop.i32(i32 %4828)
  %4830 = trunc i32 %4829 to i8
  %4831 = and i8 %4830, 1
  %4832 = xor i8 %4831, 1
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4832, i8* %4833, align 1
  %4834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4834, align 1
  %4835 = icmp eq i32 %4826, 0
  %4836 = zext i1 %4835 to i8
  %4837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4836, i8* %4837, align 1
  %4838 = lshr i32 %4826, 31
  %4839 = trunc i32 %4838 to i8
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4839, i8* %4840, align 1
  %4841 = lshr i32 %4826, 31
  %4842 = xor i32 %4838, %4841
  %4843 = add i32 %4842, %4841
  %4844 = icmp eq i32 %4843, 2
  %4845 = zext i1 %4844 to i8
  %4846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4845, i8* %4846, align 1
  store %struct.Memory* %loadMem_41251b, %struct.Memory** %MEMORY
  %loadMem_412522 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 33
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %4849 to i64*
  %4850 = load i64, i64* %PC.i269
  %4851 = add i64 %4850, 186
  %4852 = load i64, i64* %PC.i269
  %4853 = add i64 %4852, 6
  %4854 = load i64, i64* %PC.i269
  %4855 = add i64 %4854, 6
  store i64 %4855, i64* %PC.i269
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4857 = load i8, i8* %4856, align 1
  store i8 %4857, i8* %BRANCH_TAKEN, align 1
  %4858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4859 = icmp ne i8 %4857, 0
  %4860 = select i1 %4859, i64 %4851, i64 %4853
  store i64 %4860, i64* %4858, align 8
  store %struct.Memory* %loadMem_412522, %struct.Memory** %MEMORY
  %loadBr_412522 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412522 = icmp eq i8 %loadBr_412522, 1
  br i1 %cmpBr_412522, label %block_.L_4125dc, label %block_412528

block_412528:                                     ; preds = %block_.L_41250a
  %loadMem_412528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4862 = getelementptr inbounds %struct.GPR, %struct.GPR* %4861, i32 0, i32 33
  %4863 = getelementptr inbounds %struct.Reg, %struct.Reg* %4862, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %4863 to i64*
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 15
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %4866 to i64*
  %4867 = load i64, i64* %RBP.i268
  %4868 = sub i64 %4867, 60
  %4869 = load i64, i64* %PC.i267
  %4870 = add i64 %4869, 4
  store i64 %4870, i64* %PC.i267
  %4871 = inttoptr i64 %4868 to i32*
  %4872 = load i32, i32* %4871
  %4873 = sub i32 %4872, 1
  %4874 = icmp ult i32 %4872, 1
  %4875 = zext i1 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4875, i8* %4876, align 1
  %4877 = and i32 %4873, 255
  %4878 = call i32 @llvm.ctpop.i32(i32 %4877)
  %4879 = trunc i32 %4878 to i8
  %4880 = and i8 %4879, 1
  %4881 = xor i8 %4880, 1
  %4882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4881, i8* %4882, align 1
  %4883 = xor i32 %4872, 1
  %4884 = xor i32 %4883, %4873
  %4885 = lshr i32 %4884, 4
  %4886 = trunc i32 %4885 to i8
  %4887 = and i8 %4886, 1
  %4888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4887, i8* %4888, align 1
  %4889 = icmp eq i32 %4873, 0
  %4890 = zext i1 %4889 to i8
  %4891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4890, i8* %4891, align 1
  %4892 = lshr i32 %4873, 31
  %4893 = trunc i32 %4892 to i8
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4893, i8* %4894, align 1
  %4895 = lshr i32 %4872, 31
  %4896 = xor i32 %4892, %4895
  %4897 = add i32 %4896, %4895
  %4898 = icmp eq i32 %4897, 2
  %4899 = zext i1 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4899, i8* %4900, align 1
  store %struct.Memory* %loadMem_412528, %struct.Memory** %MEMORY
  %loadMem_41252c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4902 = getelementptr inbounds %struct.GPR, %struct.GPR* %4901, i32 0, i32 33
  %4903 = getelementptr inbounds %struct.Reg, %struct.Reg* %4902, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %4903 to i64*
  %4904 = load i64, i64* %PC.i266
  %4905 = add i64 %4904, 176
  %4906 = load i64, i64* %PC.i266
  %4907 = add i64 %4906, 6
  %4908 = load i64, i64* %PC.i266
  %4909 = add i64 %4908, 6
  store i64 %4909, i64* %PC.i266
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4911 = load i8, i8* %4910, align 1
  %4912 = icmp eq i8 %4911, 0
  %4913 = zext i1 %4912 to i8
  store i8 %4913, i8* %BRANCH_TAKEN, align 1
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4915 = select i1 %4912, i64 %4905, i64 %4907
  store i64 %4915, i64* %4914, align 8
  store %struct.Memory* %loadMem_41252c, %struct.Memory** %MEMORY
  %loadBr_41252c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41252c = icmp eq i8 %loadBr_41252c, 1
  br i1 %cmpBr_41252c, label %block_.L_4125dc, label %block_412532

block_412532:                                     ; preds = %block_412528
  %loadMem_412532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4917 = getelementptr inbounds %struct.GPR, %struct.GPR* %4916, i32 0, i32 33
  %4918 = getelementptr inbounds %struct.Reg, %struct.Reg* %4917, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %4918 to i64*
  %4919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4920 = getelementptr inbounds %struct.GPR, %struct.GPR* %4919, i32 0, i32 1
  %4921 = getelementptr inbounds %struct.Reg, %struct.Reg* %4920, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %4921 to i64*
  %4922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4923 = getelementptr inbounds %struct.GPR, %struct.GPR* %4922, i32 0, i32 15
  %4924 = getelementptr inbounds %struct.Reg, %struct.Reg* %4923, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %4924 to i64*
  %4925 = load i64, i64* %RBP.i265
  %4926 = sub i64 %4925, 128
  %4927 = load i64, i64* %PC.i263
  %4928 = add i64 %4927, 4
  store i64 %4928, i64* %PC.i263
  %4929 = inttoptr i64 %4926 to i64*
  %4930 = load i64, i64* %4929
  store i64 %4930, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_412532, %struct.Memory** %MEMORY
  %loadMem_412536 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %4933 to i64*
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 1
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %4936 to i64*
  %4937 = load i64, i64* %RAX.i262
  %4938 = add i64 %4937, 532
  %4939 = load i64, i64* %PC.i261
  %4940 = add i64 %4939, 7
  store i64 %4940, i64* %PC.i261
  %4941 = inttoptr i64 %4938 to i32*
  %4942 = load i32, i32* %4941
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4943, align 1
  %4944 = and i32 %4942, 255
  %4945 = call i32 @llvm.ctpop.i32(i32 %4944)
  %4946 = trunc i32 %4945 to i8
  %4947 = and i8 %4946, 1
  %4948 = xor i8 %4947, 1
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4948, i8* %4949, align 1
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4950, align 1
  %4951 = icmp eq i32 %4942, 0
  %4952 = zext i1 %4951 to i8
  %4953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4952, i8* %4953, align 1
  %4954 = lshr i32 %4942, 31
  %4955 = trunc i32 %4954 to i8
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4955, i8* %4956, align 1
  %4957 = lshr i32 %4942, 31
  %4958 = xor i32 %4954, %4957
  %4959 = add i32 %4958, %4957
  %4960 = icmp eq i32 %4959, 2
  %4961 = zext i1 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4961, i8* %4962, align 1
  store %struct.Memory* %loadMem_412536, %struct.Memory** %MEMORY
  %loadMem_41253d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %4965 to i64*
  %4966 = load i64, i64* %PC.i260
  %4967 = add i64 %4966, 62
  %4968 = load i64, i64* %PC.i260
  %4969 = add i64 %4968, 6
  %4970 = load i64, i64* %PC.i260
  %4971 = add i64 %4970, 6
  store i64 %4971, i64* %PC.i260
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4973 = load i8, i8* %4972, align 1
  %4974 = icmp eq i8 %4973, 0
  %4975 = zext i1 %4974 to i8
  store i8 %4975, i8* %BRANCH_TAKEN, align 1
  %4976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4977 = select i1 %4974, i64 %4967, i64 %4969
  store i64 %4977, i64* %4976, align 8
  store %struct.Memory* %loadMem_41253d, %struct.Memory** %MEMORY
  %loadBr_41253d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41253d = icmp eq i8 %loadBr_41253d, 1
  br i1 %cmpBr_41253d, label %block_.L_41257b, label %block_412543

block_412543:                                     ; preds = %block_412532
  %loadMem_412543 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4979 = getelementptr inbounds %struct.GPR, %struct.GPR* %4978, i32 0, i32 33
  %4980 = getelementptr inbounds %struct.Reg, %struct.Reg* %4979, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %4980 to i64*
  %4981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4982 = getelementptr inbounds %struct.GPR, %struct.GPR* %4981, i32 0, i32 1
  %4983 = getelementptr inbounds %struct.Reg, %struct.Reg* %4982, i32 0, i32 0
  %RAX.i259 = bitcast %union.anon* %4983 to i64*
  %4984 = load i64, i64* %PC.i258
  %4985 = add i64 %4984, 8
  store i64 %4985, i64* %PC.i258
  %4986 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4986, i64* %RAX.i259, align 8
  store %struct.Memory* %loadMem_412543, %struct.Memory** %MEMORY
  %loadMem_41254b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4988 = getelementptr inbounds %struct.GPR, %struct.GPR* %4987, i32 0, i32 33
  %4989 = getelementptr inbounds %struct.Reg, %struct.Reg* %4988, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4989 to i64*
  %4990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4991 = getelementptr inbounds %struct.GPR, %struct.GPR* %4990, i32 0, i32 1
  %4992 = getelementptr inbounds %struct.Reg, %struct.Reg* %4991, i32 0, i32 0
  %RAX.i257 = bitcast %union.anon* %4992 to i64*
  %4993 = load i64, i64* %RAX.i257
  %4994 = add i64 %4993, 14168
  %4995 = load i64, i64* %PC.i256
  %4996 = add i64 %4995, 7
  store i64 %4996, i64* %PC.i256
  %4997 = inttoptr i64 %4994 to i64*
  %4998 = load i64, i64* %4997
  store i64 %4998, i64* %RAX.i257, align 8
  store %struct.Memory* %loadMem_41254b, %struct.Memory** %MEMORY
  %loadMem_412552 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5000 = getelementptr inbounds %struct.GPR, %struct.GPR* %4999, i32 0, i32 33
  %5001 = getelementptr inbounds %struct.Reg, %struct.Reg* %5000, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %5001 to i64*
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5003 = getelementptr inbounds %struct.GPR, %struct.GPR* %5002, i32 0, i32 5
  %5004 = getelementptr inbounds %struct.Reg, %struct.Reg* %5003, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5004 to i64*
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 15
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %5007 to i64*
  %5008 = load i64, i64* %RBP.i255
  %5009 = sub i64 %5008, 84
  %5010 = load i64, i64* %PC.i253
  %5011 = add i64 %5010, 4
  store i64 %5011, i64* %PC.i253
  %5012 = inttoptr i64 %5009 to i32*
  %5013 = load i32, i32* %5012
  %5014 = sext i32 %5013 to i64
  store i64 %5014, i64* %RCX.i254, align 8
  store %struct.Memory* %loadMem_412552, %struct.Memory** %MEMORY
  %loadMem_412556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 5
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RCX.i252 = bitcast %union.anon* %5020 to i64*
  %5021 = load i64, i64* %RCX.i252
  %5022 = load i64, i64* %PC.i251
  %5023 = add i64 %5022, 7
  store i64 %5023, i64* %PC.i251
  %5024 = sext i64 %5021 to i128
  %5025 = and i128 %5024, -18446744073709551616
  %5026 = zext i64 %5021 to i128
  %5027 = or i128 %5025, %5026
  %5028 = mul i128 632, %5027
  %5029 = trunc i128 %5028 to i64
  store i64 %5029, i64* %RCX.i252, align 8
  %5030 = sext i64 %5029 to i128
  %5031 = icmp ne i128 %5030, %5028
  %5032 = zext i1 %5031 to i8
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5032, i8* %5033, align 1
  %5034 = trunc i128 %5028 to i32
  %5035 = and i32 %5034, 255
  %5036 = call i32 @llvm.ctpop.i32(i32 %5035)
  %5037 = trunc i32 %5036 to i8
  %5038 = and i8 %5037, 1
  %5039 = xor i8 %5038, 1
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5039, i8* %5040, align 1
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5041, align 1
  %5042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5042, align 1
  %5043 = lshr i64 %5029, 63
  %5044 = trunc i64 %5043 to i8
  %5045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5044, i8* %5045, align 1
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5032, i8* %5046, align 1
  store %struct.Memory* %loadMem_412556, %struct.Memory** %MEMORY
  %loadMem_41255d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5048 = getelementptr inbounds %struct.GPR, %struct.GPR* %5047, i32 0, i32 33
  %5049 = getelementptr inbounds %struct.Reg, %struct.Reg* %5048, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5049 to i64*
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5051 = getelementptr inbounds %struct.GPR, %struct.GPR* %5050, i32 0, i32 1
  %5052 = getelementptr inbounds %struct.Reg, %struct.Reg* %5051, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %5052 to i64*
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 5
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %5055 to i64*
  %5056 = load i64, i64* %RAX.i249
  %5057 = load i64, i64* %RCX.i250
  %5058 = load i64, i64* %PC.i248
  %5059 = add i64 %5058, 3
  store i64 %5059, i64* %PC.i248
  %5060 = add i64 %5057, %5056
  store i64 %5060, i64* %RAX.i249, align 8
  %5061 = icmp ult i64 %5060, %5056
  %5062 = icmp ult i64 %5060, %5057
  %5063 = or i1 %5061, %5062
  %5064 = zext i1 %5063 to i8
  %5065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5064, i8* %5065, align 1
  %5066 = trunc i64 %5060 to i32
  %5067 = and i32 %5066, 255
  %5068 = call i32 @llvm.ctpop.i32(i32 %5067)
  %5069 = trunc i32 %5068 to i8
  %5070 = and i8 %5069, 1
  %5071 = xor i8 %5070, 1
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5071, i8* %5072, align 1
  %5073 = xor i64 %5057, %5056
  %5074 = xor i64 %5073, %5060
  %5075 = lshr i64 %5074, 4
  %5076 = trunc i64 %5075 to i8
  %5077 = and i8 %5076, 1
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5077, i8* %5078, align 1
  %5079 = icmp eq i64 %5060, 0
  %5080 = zext i1 %5079 to i8
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5080, i8* %5081, align 1
  %5082 = lshr i64 %5060, 63
  %5083 = trunc i64 %5082 to i8
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5083, i8* %5084, align 1
  %5085 = lshr i64 %5056, 63
  %5086 = lshr i64 %5057, 63
  %5087 = xor i64 %5082, %5085
  %5088 = xor i64 %5082, %5086
  %5089 = add i64 %5087, %5088
  %5090 = icmp eq i64 %5089, 2
  %5091 = zext i1 %5090 to i8
  %5092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5091, i8* %5092, align 1
  store %struct.Memory* %loadMem_41255d, %struct.Memory** %MEMORY
  %loadMem_412560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 33
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 1
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5098 to i64*
  %5099 = load i64, i64* %RAX.i247
  %5100 = add i64 %5099, 532
  %5101 = load i64, i64* %PC.i246
  %5102 = add i64 %5101, 7
  store i64 %5102, i64* %PC.i246
  %5103 = inttoptr i64 %5100 to i32*
  %5104 = load i32, i32* %5103
  %5105 = sub i32 %5104, 1
  %5106 = icmp ult i32 %5104, 1
  %5107 = zext i1 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5107, i8* %5108, align 1
  %5109 = and i32 %5105, 255
  %5110 = call i32 @llvm.ctpop.i32(i32 %5109)
  %5111 = trunc i32 %5110 to i8
  %5112 = and i8 %5111, 1
  %5113 = xor i8 %5112, 1
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5113, i8* %5114, align 1
  %5115 = xor i32 %5104, 1
  %5116 = xor i32 %5115, %5105
  %5117 = lshr i32 %5116, 4
  %5118 = trunc i32 %5117 to i8
  %5119 = and i8 %5118, 1
  %5120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5119, i8* %5120, align 1
  %5121 = icmp eq i32 %5105, 0
  %5122 = zext i1 %5121 to i8
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5122, i8* %5123, align 1
  %5124 = lshr i32 %5105, 31
  %5125 = trunc i32 %5124 to i8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5125, i8* %5126, align 1
  %5127 = lshr i32 %5104, 31
  %5128 = xor i32 %5124, %5127
  %5129 = add i32 %5128, %5127
  %5130 = icmp eq i32 %5129, 2
  %5131 = zext i1 %5130 to i8
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5131, i8* %5132, align 1
  store %struct.Memory* %loadMem_412560, %struct.Memory** %MEMORY
  %loadMem_412567 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5134 = getelementptr inbounds %struct.GPR, %struct.GPR* %5133, i32 0, i32 33
  %5135 = getelementptr inbounds %struct.Reg, %struct.Reg* %5134, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %5135 to i64*
  %5136 = load i64, i64* %PC.i245
  %5137 = add i64 %5136, 20
  %5138 = load i64, i64* %PC.i245
  %5139 = add i64 %5138, 6
  %5140 = load i64, i64* %PC.i245
  %5141 = add i64 %5140, 6
  store i64 %5141, i64* %PC.i245
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5143 = load i8, i8* %5142, align 1
  %5144 = icmp eq i8 %5143, 0
  %5145 = zext i1 %5144 to i8
  store i8 %5145, i8* %BRANCH_TAKEN, align 1
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5147 = select i1 %5144, i64 %5137, i64 %5139
  store i64 %5147, i64* %5146, align 8
  store %struct.Memory* %loadMem_412567, %struct.Memory** %MEMORY
  %loadBr_412567 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412567 = icmp eq i8 %loadBr_412567, 1
  br i1 %cmpBr_412567, label %block_.L_41257b, label %block_41256d

block_41256d:                                     ; preds = %block_412543
  %loadMem_41256d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5149 = getelementptr inbounds %struct.GPR, %struct.GPR* %5148, i32 0, i32 33
  %5150 = getelementptr inbounds %struct.Reg, %struct.Reg* %5149, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %5150 to i64*
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 1
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5155 = getelementptr inbounds %struct.GPR, %struct.GPR* %5154, i32 0, i32 15
  %5156 = getelementptr inbounds %struct.Reg, %struct.Reg* %5155, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %5156 to i64*
  %5157 = load i64, i64* %RBP.i244
  %5158 = sub i64 %5157, 28
  %5159 = load i64, i64* %PC.i242
  %5160 = add i64 %5159, 3
  store i64 %5160, i64* %PC.i242
  %5161 = inttoptr i64 %5158 to i32*
  %5162 = load i32, i32* %5161
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i243, align 8
  store %struct.Memory* %loadMem_41256d, %struct.Memory** %MEMORY
  %loadMem_412570 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 33
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 1
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %RAX.i241
  %5171 = load i64, i64* %PC.i240
  %5172 = add i64 %5171, 2
  store i64 %5172, i64* %PC.i240
  %5173 = trunc i64 %5170 to i32
  %5174 = shl i32 %5173, 1
  %5175 = icmp slt i32 %5173, 0
  %5176 = icmp slt i32 %5174, 0
  %5177 = xor i1 %5175, %5176
  %5178 = zext i32 %5174 to i64
  store i64 %5178, i64* %RAX.i241, align 8
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5180 = zext i1 %5175 to i8
  store i8 %5180, i8* %5179, align 1
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5182 = and i32 %5174, 254
  %5183 = call i32 @llvm.ctpop.i32(i32 %5182)
  %5184 = trunc i32 %5183 to i8
  %5185 = and i8 %5184, 1
  %5186 = xor i8 %5185, 1
  store i8 %5186, i8* %5181, align 1
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5187, align 1
  %5188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5189 = icmp eq i32 %5174, 0
  %5190 = zext i1 %5189 to i8
  store i8 %5190, i8* %5188, align 1
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5192 = lshr i32 %5174, 31
  %5193 = trunc i32 %5192 to i8
  store i8 %5193, i8* %5191, align 1
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5195 = zext i1 %5177 to i8
  store i8 %5195, i8* %5194, align 1
  store %struct.Memory* %loadMem_412570, %struct.Memory** %MEMORY
  %loadMem_412573 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5197 = getelementptr inbounds %struct.GPR, %struct.GPR* %5196, i32 0, i32 33
  %5198 = getelementptr inbounds %struct.Reg, %struct.Reg* %5197, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5198 to i64*
  %5199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5200 = getelementptr inbounds %struct.GPR, %struct.GPR* %5199, i32 0, i32 1
  %5201 = getelementptr inbounds %struct.Reg, %struct.Reg* %5200, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %5201 to i32*
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5203 = getelementptr inbounds %struct.GPR, %struct.GPR* %5202, i32 0, i32 15
  %5204 = getelementptr inbounds %struct.Reg, %struct.Reg* %5203, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5204 to i64*
  %5205 = load i64, i64* %RBP.i239
  %5206 = sub i64 %5205, 28
  %5207 = load i32, i32* %EAX.i238
  %5208 = zext i32 %5207 to i64
  %5209 = load i64, i64* %PC.i237
  %5210 = add i64 %5209, 3
  store i64 %5210, i64* %PC.i237
  %5211 = inttoptr i64 %5206 to i32*
  store i32 %5207, i32* %5211
  store %struct.Memory* %loadMem_412573, %struct.Memory** %MEMORY
  %loadMem_412576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 33
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %5214 to i64*
  %5215 = load i64, i64* %PC.i236
  %5216 = add i64 %5215, 97
  %5217 = load i64, i64* %PC.i236
  %5218 = add i64 %5217, 5
  store i64 %5218, i64* %PC.i236
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5216, i64* %5219, align 8
  store %struct.Memory* %loadMem_412576, %struct.Memory** %MEMORY
  br label %block_.L_4125d7

block_.L_41257b:                                  ; preds = %block_412543, %block_412532
  %loadMem_41257b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 33
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %5222 to i64*
  %5223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5224 = getelementptr inbounds %struct.GPR, %struct.GPR* %5223, i32 0, i32 1
  %5225 = getelementptr inbounds %struct.Reg, %struct.Reg* %5224, i32 0, i32 0
  %RAX.i234 = bitcast %union.anon* %5225 to i64*
  %5226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5227 = getelementptr inbounds %struct.GPR, %struct.GPR* %5226, i32 0, i32 15
  %5228 = getelementptr inbounds %struct.Reg, %struct.Reg* %5227, i32 0, i32 0
  %RBP.i235 = bitcast %union.anon* %5228 to i64*
  %5229 = load i64, i64* %RBP.i235
  %5230 = sub i64 %5229, 128
  %5231 = load i64, i64* %PC.i233
  %5232 = add i64 %5231, 4
  store i64 %5232, i64* %PC.i233
  %5233 = inttoptr i64 %5230 to i64*
  %5234 = load i64, i64* %5233
  store i64 %5234, i64* %RAX.i234, align 8
  store %struct.Memory* %loadMem_41257b, %struct.Memory** %MEMORY
  %loadMem_41257f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5236 = getelementptr inbounds %struct.GPR, %struct.GPR* %5235, i32 0, i32 33
  %5237 = getelementptr inbounds %struct.Reg, %struct.Reg* %5236, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5237 to i64*
  %5238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5239 = getelementptr inbounds %struct.GPR, %struct.GPR* %5238, i32 0, i32 1
  %5240 = getelementptr inbounds %struct.Reg, %struct.Reg* %5239, i32 0, i32 0
  %RAX.i232 = bitcast %union.anon* %5240 to i64*
  %5241 = load i64, i64* %RAX.i232
  %5242 = add i64 %5241, 532
  %5243 = load i64, i64* %PC.i231
  %5244 = add i64 %5243, 7
  store i64 %5244, i64* %PC.i231
  %5245 = inttoptr i64 %5242 to i32*
  %5246 = load i32, i32* %5245
  %5247 = sub i32 %5246, 1
  %5248 = icmp ult i32 %5246, 1
  %5249 = zext i1 %5248 to i8
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5249, i8* %5250, align 1
  %5251 = and i32 %5247, 255
  %5252 = call i32 @llvm.ctpop.i32(i32 %5251)
  %5253 = trunc i32 %5252 to i8
  %5254 = and i8 %5253, 1
  %5255 = xor i8 %5254, 1
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5255, i8* %5256, align 1
  %5257 = xor i32 %5246, 1
  %5258 = xor i32 %5257, %5247
  %5259 = lshr i32 %5258, 4
  %5260 = trunc i32 %5259 to i8
  %5261 = and i8 %5260, 1
  %5262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5261, i8* %5262, align 1
  %5263 = icmp eq i32 %5247, 0
  %5264 = zext i1 %5263 to i8
  %5265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5264, i8* %5265, align 1
  %5266 = lshr i32 %5247, 31
  %5267 = trunc i32 %5266 to i8
  %5268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5267, i8* %5268, align 1
  %5269 = lshr i32 %5246, 31
  %5270 = xor i32 %5266, %5269
  %5271 = add i32 %5270, %5269
  %5272 = icmp eq i32 %5271, 2
  %5273 = zext i1 %5272 to i8
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5273, i8* %5274, align 1
  store %struct.Memory* %loadMem_41257f, %struct.Memory** %MEMORY
  %loadMem_412586 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 33
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %PC.i230
  %5279 = add i64 %5278, 76
  %5280 = load i64, i64* %PC.i230
  %5281 = add i64 %5280, 6
  %5282 = load i64, i64* %PC.i230
  %5283 = add i64 %5282, 6
  store i64 %5283, i64* %PC.i230
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5285 = load i8, i8* %5284, align 1
  %5286 = icmp eq i8 %5285, 0
  %5287 = zext i1 %5286 to i8
  store i8 %5287, i8* %BRANCH_TAKEN, align 1
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5289 = select i1 %5286, i64 %5279, i64 %5281
  store i64 %5289, i64* %5288, align 8
  store %struct.Memory* %loadMem_412586, %struct.Memory** %MEMORY
  %loadBr_412586 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412586 = icmp eq i8 %loadBr_412586, 1
  br i1 %cmpBr_412586, label %block_.L_4125d2, label %block_41258c

block_41258c:                                     ; preds = %block_.L_41257b
  %loadMem_41258c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5291 = getelementptr inbounds %struct.GPR, %struct.GPR* %5290, i32 0, i32 33
  %5292 = getelementptr inbounds %struct.Reg, %struct.Reg* %5291, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %5292 to i64*
  %5293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5294 = getelementptr inbounds %struct.GPR, %struct.GPR* %5293, i32 0, i32 1
  %5295 = getelementptr inbounds %struct.Reg, %struct.Reg* %5294, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %5295 to i64*
  %5296 = load i64, i64* %PC.i228
  %5297 = add i64 %5296, 8
  store i64 %5297, i64* %PC.i228
  %5298 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5298, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_41258c, %struct.Memory** %MEMORY
  %loadMem_412594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 1
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %5304 to i64*
  %5305 = load i64, i64* %RAX.i227
  %5306 = add i64 %5305, 14168
  %5307 = load i64, i64* %PC.i226
  %5308 = add i64 %5307, 7
  store i64 %5308, i64* %PC.i226
  %5309 = inttoptr i64 %5306 to i64*
  %5310 = load i64, i64* %5309
  store i64 %5310, i64* %RAX.i227, align 8
  store %struct.Memory* %loadMem_412594, %struct.Memory** %MEMORY
  %loadMem_41259b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5312 = getelementptr inbounds %struct.GPR, %struct.GPR* %5311, i32 0, i32 33
  %5313 = getelementptr inbounds %struct.Reg, %struct.Reg* %5312, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %5313 to i64*
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5315 = getelementptr inbounds %struct.GPR, %struct.GPR* %5314, i32 0, i32 5
  %5316 = getelementptr inbounds %struct.Reg, %struct.Reg* %5315, i32 0, i32 0
  %RCX.i224 = bitcast %union.anon* %5316 to i64*
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5318 = getelementptr inbounds %struct.GPR, %struct.GPR* %5317, i32 0, i32 15
  %5319 = getelementptr inbounds %struct.Reg, %struct.Reg* %5318, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %5319 to i64*
  %5320 = load i64, i64* %RBP.i225
  %5321 = sub i64 %5320, 84
  %5322 = load i64, i64* %PC.i223
  %5323 = add i64 %5322, 4
  store i64 %5323, i64* %PC.i223
  %5324 = inttoptr i64 %5321 to i32*
  %5325 = load i32, i32* %5324
  %5326 = sext i32 %5325 to i64
  store i64 %5326, i64* %RCX.i224, align 8
  store %struct.Memory* %loadMem_41259b, %struct.Memory** %MEMORY
  %loadMem_41259f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 33
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 5
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %RCX.i222 = bitcast %union.anon* %5332 to i64*
  %5333 = load i64, i64* %RCX.i222
  %5334 = load i64, i64* %PC.i221
  %5335 = add i64 %5334, 7
  store i64 %5335, i64* %PC.i221
  %5336 = sext i64 %5333 to i128
  %5337 = and i128 %5336, -18446744073709551616
  %5338 = zext i64 %5333 to i128
  %5339 = or i128 %5337, %5338
  %5340 = mul i128 632, %5339
  %5341 = trunc i128 %5340 to i64
  store i64 %5341, i64* %RCX.i222, align 8
  %5342 = sext i64 %5341 to i128
  %5343 = icmp ne i128 %5342, %5340
  %5344 = zext i1 %5343 to i8
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5344, i8* %5345, align 1
  %5346 = trunc i128 %5340 to i32
  %5347 = and i32 %5346, 255
  %5348 = call i32 @llvm.ctpop.i32(i32 %5347)
  %5349 = trunc i32 %5348 to i8
  %5350 = and i8 %5349, 1
  %5351 = xor i8 %5350, 1
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5351, i8* %5352, align 1
  %5353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5353, align 1
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5354, align 1
  %5355 = lshr i64 %5341, 63
  %5356 = trunc i64 %5355 to i8
  %5357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5356, i8* %5357, align 1
  %5358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5344, i8* %5358, align 1
  store %struct.Memory* %loadMem_41259f, %struct.Memory** %MEMORY
  %loadMem_4125a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5360 = getelementptr inbounds %struct.GPR, %struct.GPR* %5359, i32 0, i32 33
  %5361 = getelementptr inbounds %struct.Reg, %struct.Reg* %5360, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5361 to i64*
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5363 = getelementptr inbounds %struct.GPR, %struct.GPR* %5362, i32 0, i32 1
  %5364 = getelementptr inbounds %struct.Reg, %struct.Reg* %5363, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %5364 to i64*
  %5365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5366 = getelementptr inbounds %struct.GPR, %struct.GPR* %5365, i32 0, i32 5
  %5367 = getelementptr inbounds %struct.Reg, %struct.Reg* %5366, i32 0, i32 0
  %RCX.i220 = bitcast %union.anon* %5367 to i64*
  %5368 = load i64, i64* %RAX.i219
  %5369 = load i64, i64* %RCX.i220
  %5370 = load i64, i64* %PC.i218
  %5371 = add i64 %5370, 3
  store i64 %5371, i64* %PC.i218
  %5372 = add i64 %5369, %5368
  store i64 %5372, i64* %RAX.i219, align 8
  %5373 = icmp ult i64 %5372, %5368
  %5374 = icmp ult i64 %5372, %5369
  %5375 = or i1 %5373, %5374
  %5376 = zext i1 %5375 to i8
  %5377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5376, i8* %5377, align 1
  %5378 = trunc i64 %5372 to i32
  %5379 = and i32 %5378, 255
  %5380 = call i32 @llvm.ctpop.i32(i32 %5379)
  %5381 = trunc i32 %5380 to i8
  %5382 = and i8 %5381, 1
  %5383 = xor i8 %5382, 1
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5383, i8* %5384, align 1
  %5385 = xor i64 %5369, %5368
  %5386 = xor i64 %5385, %5372
  %5387 = lshr i64 %5386, 4
  %5388 = trunc i64 %5387 to i8
  %5389 = and i8 %5388, 1
  %5390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5389, i8* %5390, align 1
  %5391 = icmp eq i64 %5372, 0
  %5392 = zext i1 %5391 to i8
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5392, i8* %5393, align 1
  %5394 = lshr i64 %5372, 63
  %5395 = trunc i64 %5394 to i8
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5395, i8* %5396, align 1
  %5397 = lshr i64 %5368, 63
  %5398 = lshr i64 %5369, 63
  %5399 = xor i64 %5394, %5397
  %5400 = xor i64 %5394, %5398
  %5401 = add i64 %5399, %5400
  %5402 = icmp eq i64 %5401, 2
  %5403 = zext i1 %5402 to i8
  %5404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5403, i8* %5404, align 1
  store %struct.Memory* %loadMem_4125a6, %struct.Memory** %MEMORY
  %loadMem_4125a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5406 = getelementptr inbounds %struct.GPR, %struct.GPR* %5405, i32 0, i32 33
  %5407 = getelementptr inbounds %struct.Reg, %struct.Reg* %5406, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5407 to i64*
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5409 = getelementptr inbounds %struct.GPR, %struct.GPR* %5408, i32 0, i32 1
  %5410 = getelementptr inbounds %struct.Reg, %struct.Reg* %5409, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %5410 to i64*
  %5411 = load i64, i64* %RAX.i217
  %5412 = add i64 %5411, 532
  %5413 = load i64, i64* %PC.i216
  %5414 = add i64 %5413, 7
  store i64 %5414, i64* %PC.i216
  %5415 = inttoptr i64 %5412 to i32*
  %5416 = load i32, i32* %5415
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5417, align 1
  %5418 = and i32 %5416, 255
  %5419 = call i32 @llvm.ctpop.i32(i32 %5418)
  %5420 = trunc i32 %5419 to i8
  %5421 = and i8 %5420, 1
  %5422 = xor i8 %5421, 1
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5422, i8* %5423, align 1
  %5424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5424, align 1
  %5425 = icmp eq i32 %5416, 0
  %5426 = zext i1 %5425 to i8
  %5427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5426, i8* %5427, align 1
  %5428 = lshr i32 %5416, 31
  %5429 = trunc i32 %5428 to i8
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5429, i8* %5430, align 1
  %5431 = lshr i32 %5416, 31
  %5432 = xor i32 %5428, %5431
  %5433 = add i32 %5432, %5431
  %5434 = icmp eq i32 %5433, 2
  %5435 = zext i1 %5434 to i8
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5435, i8* %5436, align 1
  store %struct.Memory* %loadMem_4125a9, %struct.Memory** %MEMORY
  %loadMem_4125b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5438 = getelementptr inbounds %struct.GPR, %struct.GPR* %5437, i32 0, i32 33
  %5439 = getelementptr inbounds %struct.Reg, %struct.Reg* %5438, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5439 to i64*
  %5440 = load i64, i64* %PC.i215
  %5441 = add i64 %5440, 34
  %5442 = load i64, i64* %PC.i215
  %5443 = add i64 %5442, 6
  %5444 = load i64, i64* %PC.i215
  %5445 = add i64 %5444, 6
  store i64 %5445, i64* %PC.i215
  %5446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5447 = load i8, i8* %5446, align 1
  %5448 = icmp eq i8 %5447, 0
  %5449 = zext i1 %5448 to i8
  store i8 %5449, i8* %BRANCH_TAKEN, align 1
  %5450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5451 = select i1 %5448, i64 %5441, i64 %5443
  store i64 %5451, i64* %5450, align 8
  store %struct.Memory* %loadMem_4125b0, %struct.Memory** %MEMORY
  %loadBr_4125b0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125b0 = icmp eq i8 %loadBr_4125b0, 1
  br i1 %cmpBr_4125b0, label %block_.L_4125d2, label %block_4125b6

block_4125b6:                                     ; preds = %block_41258c
  %loadMem_4125b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 33
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %5454 to i64*
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 1
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %5457 to i64*
  %5458 = load i64, i64* %PC.i213
  %5459 = add i64 %5458, 5
  store i64 %5459, i64* %PC.i213
  store i64 2, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_4125b6, %struct.Memory** %MEMORY
  %loadMem_4125bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5461 = getelementptr inbounds %struct.GPR, %struct.GPR* %5460, i32 0, i32 33
  %5462 = getelementptr inbounds %struct.Reg, %struct.Reg* %5461, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5462 to i64*
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5464 = getelementptr inbounds %struct.GPR, %struct.GPR* %5463, i32 0, i32 5
  %5465 = getelementptr inbounds %struct.Reg, %struct.Reg* %5464, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %5465 to i64*
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5467 = getelementptr inbounds %struct.GPR, %struct.GPR* %5466, i32 0, i32 15
  %5468 = getelementptr inbounds %struct.Reg, %struct.Reg* %5467, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %5468 to i64*
  %5469 = load i64, i64* %RBP.i212
  %5470 = sub i64 %5469, 28
  %5471 = load i64, i64* %PC.i210
  %5472 = add i64 %5471, 3
  store i64 %5472, i64* %PC.i210
  %5473 = inttoptr i64 %5470 to i32*
  %5474 = load i32, i32* %5473
  %5475 = zext i32 %5474 to i64
  store i64 %5475, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_4125bb, %struct.Memory** %MEMORY
  %loadMem_4125be = load %struct.Memory*, %struct.Memory** %MEMORY
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5477 = getelementptr inbounds %struct.GPR, %struct.GPR* %5476, i32 0, i32 33
  %5478 = getelementptr inbounds %struct.Reg, %struct.Reg* %5477, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %5478 to i64*
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5480 = getelementptr inbounds %struct.GPR, %struct.GPR* %5479, i32 0, i32 1
  %5481 = getelementptr inbounds %struct.Reg, %struct.Reg* %5480, i32 0, i32 0
  %EAX.i208 = bitcast %union.anon* %5481 to i32*
  %5482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5483 = getelementptr inbounds %struct.GPR, %struct.GPR* %5482, i32 0, i32 15
  %5484 = getelementptr inbounds %struct.Reg, %struct.Reg* %5483, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %5484 to i64*
  %5485 = load i64, i64* %RBP.i209
  %5486 = sub i64 %5485, 144
  %5487 = load i32, i32* %EAX.i208
  %5488 = zext i32 %5487 to i64
  %5489 = load i64, i64* %PC.i207
  %5490 = add i64 %5489, 6
  store i64 %5490, i64* %PC.i207
  %5491 = inttoptr i64 %5486 to i32*
  store i32 %5487, i32* %5491
  store %struct.Memory* %loadMem_4125be, %struct.Memory** %MEMORY
  %loadMem_4125c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5493 = getelementptr inbounds %struct.GPR, %struct.GPR* %5492, i32 0, i32 33
  %5494 = getelementptr inbounds %struct.Reg, %struct.Reg* %5493, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5494 to i64*
  %5495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5496 = getelementptr inbounds %struct.GPR, %struct.GPR* %5495, i32 0, i32 5
  %5497 = getelementptr inbounds %struct.Reg, %struct.Reg* %5496, i32 0, i32 0
  %ECX.i205 = bitcast %union.anon* %5497 to i32*
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5499 = getelementptr inbounds %struct.GPR, %struct.GPR* %5498, i32 0, i32 1
  %5500 = getelementptr inbounds %struct.Reg, %struct.Reg* %5499, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %5500 to i64*
  %5501 = load i32, i32* %ECX.i205
  %5502 = zext i32 %5501 to i64
  %5503 = load i64, i64* %PC.i204
  %5504 = add i64 %5503, 2
  store i64 %5504, i64* %PC.i204
  %5505 = and i64 %5502, 4294967295
  store i64 %5505, i64* %RAX.i206, align 8
  store %struct.Memory* %loadMem_4125c4, %struct.Memory** %MEMORY
  %loadMem_4125c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 33
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5508 to i64*
  %5509 = load i64, i64* %PC.i203
  %5510 = add i64 %5509, 1
  store i64 %5510, i64* %PC.i203
  %5511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5513 = bitcast %union.anon* %5512 to i32*
  %5514 = load i32, i32* %5513, align 8
  %5515 = sext i32 %5514 to i64
  %5516 = lshr i64 %5515, 32
  store i64 %5516, i64* %5511, align 8
  store %struct.Memory* %loadMem_4125c6, %struct.Memory** %MEMORY
  %loadMem_4125c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5518 = getelementptr inbounds %struct.GPR, %struct.GPR* %5517, i32 0, i32 33
  %5519 = getelementptr inbounds %struct.Reg, %struct.Reg* %5518, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5519 to i64*
  %5520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5521 = getelementptr inbounds %struct.GPR, %struct.GPR* %5520, i32 0, i32 5
  %5522 = getelementptr inbounds %struct.Reg, %struct.Reg* %5521, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %5522 to i64*
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5524 = getelementptr inbounds %struct.GPR, %struct.GPR* %5523, i32 0, i32 15
  %5525 = getelementptr inbounds %struct.Reg, %struct.Reg* %5524, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5525 to i64*
  %5526 = load i64, i64* %RBP.i202
  %5527 = sub i64 %5526, 144
  %5528 = load i64, i64* %PC.i200
  %5529 = add i64 %5528, 6
  store i64 %5529, i64* %PC.i200
  %5530 = inttoptr i64 %5527 to i32*
  %5531 = load i32, i32* %5530
  %5532 = zext i32 %5531 to i64
  store i64 %5532, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_4125c7, %struct.Memory** %MEMORY
  %loadMem_4125cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5534 = getelementptr inbounds %struct.GPR, %struct.GPR* %5533, i32 0, i32 33
  %5535 = getelementptr inbounds %struct.Reg, %struct.Reg* %5534, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5535 to i64*
  %5536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5537 = getelementptr inbounds %struct.GPR, %struct.GPR* %5536, i32 0, i32 5
  %5538 = getelementptr inbounds %struct.Reg, %struct.Reg* %5537, i32 0, i32 0
  %ECX.i196 = bitcast %union.anon* %5538 to i32*
  %5539 = load i32, i32* %ECX.i196
  %5540 = zext i32 %5539 to i64
  %5541 = load i64, i64* %PC.i195
  %5542 = add i64 %5541, 2
  store i64 %5542, i64* %PC.i195
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5544 = bitcast %union.anon* %5543 to i32*
  %5545 = load i32, i32* %5544, align 8
  %5546 = zext i32 %5545 to i64
  %5547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %5548 = bitcast %union.anon* %5547 to i32*
  %5549 = load i32, i32* %5548, align 8
  %5550 = zext i32 %5549 to i64
  %5551 = shl i64 %5540, 32
  %5552 = ashr exact i64 %5551, 32
  %5553 = shl i64 %5550, 32
  %5554 = or i64 %5553, %5546
  %5555 = sdiv i64 %5554, %5552
  %5556 = shl i64 %5555, 32
  %5557 = ashr exact i64 %5556, 32
  %5558 = icmp eq i64 %5555, %5557
  br i1 %5558, label %5563, label %5559

; <label>:5559:                                   ; preds = %block_4125b6
  %5560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5561 = load i64, i64* %5560, align 8
  %5562 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %5561, %struct.Memory* %loadMem_4125cd)
  br label %routine_idivl__ecx.exit

; <label>:5563:                                   ; preds = %block_4125b6
  %5564 = srem i64 %5554, %5552
  %5565 = getelementptr inbounds %union.anon, %union.anon* %5543, i64 0, i32 0
  %5566 = and i64 %5555, 4294967295
  store i64 %5566, i64* %5565, align 8
  %5567 = getelementptr inbounds %union.anon, %union.anon* %5547, i64 0, i32 0
  %5568 = and i64 %5564, 4294967295
  store i64 %5568, i64* %5567, align 8
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5569, align 1
  %5570 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %5570, align 1
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5571, align 1
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5572, align 1
  %5573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %5573, align 1
  %5574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5574, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %5559, %5563
  %5575 = phi %struct.Memory* [ %5562, %5559 ], [ %loadMem_4125cd, %5563 ]
  store %struct.Memory* %5575, %struct.Memory** %MEMORY
  %loadMem_4125cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5577 = getelementptr inbounds %struct.GPR, %struct.GPR* %5576, i32 0, i32 33
  %5578 = getelementptr inbounds %struct.Reg, %struct.Reg* %5577, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5578 to i64*
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 1
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %EAX.i193 = bitcast %union.anon* %5581 to i32*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 15
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %5584 to i64*
  %5585 = load i64, i64* %RBP.i194
  %5586 = sub i64 %5585, 28
  %5587 = load i32, i32* %EAX.i193
  %5588 = zext i32 %5587 to i64
  %5589 = load i64, i64* %PC.i192
  %5590 = add i64 %5589, 3
  store i64 %5590, i64* %PC.i192
  %5591 = inttoptr i64 %5586 to i32*
  store i32 %5587, i32* %5591
  store %struct.Memory* %loadMem_4125cf, %struct.Memory** %MEMORY
  br label %block_.L_4125d2

block_.L_4125d2:                                  ; preds = %routine_idivl__ecx.exit, %block_41258c, %block_.L_41257b
  %loadMem_4125d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5593 = getelementptr inbounds %struct.GPR, %struct.GPR* %5592, i32 0, i32 33
  %5594 = getelementptr inbounds %struct.Reg, %struct.Reg* %5593, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %5594 to i64*
  %5595 = load i64, i64* %PC.i191
  %5596 = add i64 %5595, 5
  %5597 = load i64, i64* %PC.i191
  %5598 = add i64 %5597, 5
  store i64 %5598, i64* %PC.i191
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5596, i64* %5599, align 8
  store %struct.Memory* %loadMem_4125d2, %struct.Memory** %MEMORY
  br label %block_.L_4125d7

block_.L_4125d7:                                  ; preds = %block_.L_4125d2, %block_41256d
  %loadMem_4125d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 33
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %PC.i190
  %5604 = add i64 %5603, 5
  %5605 = load i64, i64* %PC.i190
  %5606 = add i64 %5605, 5
  store i64 %5606, i64* %PC.i190
  %5607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5604, i64* %5607, align 8
  store %struct.Memory* %loadMem_4125d7, %struct.Memory** %MEMORY
  br label %block_.L_4125dc

block_.L_4125dc:                                  ; preds = %block_.L_4125d7, %block_412528, %block_.L_41250a
  %loadMem_4125dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5609 = getelementptr inbounds %struct.GPR, %struct.GPR* %5608, i32 0, i32 33
  %5610 = getelementptr inbounds %struct.Reg, %struct.Reg* %5609, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5610 to i64*
  %5611 = load i64, i64* %PC.i189
  %5612 = add i64 %5611, 12
  %5613 = load i64, i64* %PC.i189
  %5614 = add i64 %5613, 5
  store i64 %5614, i64* %PC.i189
  %5615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5612, i64* %5615, align 8
  store %struct.Memory* %loadMem_4125dc, %struct.Memory** %MEMORY
  br label %block_.L_4125e8

block_.L_4125e1:                                  ; preds = %block_.L_41240b
  %loadMem_4125e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 33
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5618 to i64*
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 15
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %RBP.i188 = bitcast %union.anon* %5621 to i64*
  %5622 = load i64, i64* %RBP.i188
  %5623 = sub i64 %5622, 28
  %5624 = load i64, i64* %PC.i187
  %5625 = add i64 %5624, 7
  store i64 %5625, i64* %PC.i187
  %5626 = inttoptr i64 %5623 to i32*
  store i32 0, i32* %5626
  store %struct.Memory* %loadMem_4125e1, %struct.Memory** %MEMORY
  br label %block_.L_4125e8

block_.L_4125e8:                                  ; preds = %block_.L_4125e1, %block_.L_4125dc
  %loadMem_4125e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5628 = getelementptr inbounds %struct.GPR, %struct.GPR* %5627, i32 0, i32 33
  %5629 = getelementptr inbounds %struct.Reg, %struct.Reg* %5628, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5629 to i64*
  %5630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5631 = getelementptr inbounds %struct.GPR, %struct.GPR* %5630, i32 0, i32 1
  %5632 = getelementptr inbounds %struct.Reg, %struct.Reg* %5631, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %5632 to i64*
  %5633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5634 = getelementptr inbounds %struct.GPR, %struct.GPR* %5633, i32 0, i32 15
  %5635 = getelementptr inbounds %struct.Reg, %struct.Reg* %5634, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %5635 to i64*
  %5636 = load i64, i64* %RBP.i186
  %5637 = sub i64 %5636, 28
  %5638 = load i64, i64* %PC.i184
  %5639 = add i64 %5638, 3
  store i64 %5639, i64* %PC.i184
  %5640 = inttoptr i64 %5637 to i32*
  %5641 = load i32, i32* %5640
  %5642 = zext i32 %5641 to i64
  store i64 %5642, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_4125e8, %struct.Memory** %MEMORY
  %loadMem_4125eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 1
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RAX.i182 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 15
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %RAX.i182
  %5653 = load i64, i64* %RBP.i183
  %5654 = sub i64 %5653, 32
  %5655 = load i64, i64* %PC.i181
  %5656 = add i64 %5655, 3
  store i64 %5656, i64* %PC.i181
  %5657 = trunc i64 %5652 to i32
  %5658 = inttoptr i64 %5654 to i32*
  %5659 = load i32, i32* %5658
  %5660 = add i32 %5659, %5657
  %5661 = zext i32 %5660 to i64
  store i64 %5661, i64* %RAX.i182, align 8
  %5662 = icmp ult i32 %5660, %5657
  %5663 = icmp ult i32 %5660, %5659
  %5664 = or i1 %5662, %5663
  %5665 = zext i1 %5664 to i8
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5665, i8* %5666, align 1
  %5667 = and i32 %5660, 255
  %5668 = call i32 @llvm.ctpop.i32(i32 %5667)
  %5669 = trunc i32 %5668 to i8
  %5670 = and i8 %5669, 1
  %5671 = xor i8 %5670, 1
  %5672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5671, i8* %5672, align 1
  %5673 = xor i32 %5659, %5657
  %5674 = xor i32 %5673, %5660
  %5675 = lshr i32 %5674, 4
  %5676 = trunc i32 %5675 to i8
  %5677 = and i8 %5676, 1
  %5678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5677, i8* %5678, align 1
  %5679 = icmp eq i32 %5660, 0
  %5680 = zext i1 %5679 to i8
  %5681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5680, i8* %5681, align 1
  %5682 = lshr i32 %5660, 31
  %5683 = trunc i32 %5682 to i8
  %5684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5683, i8* %5684, align 1
  %5685 = lshr i32 %5657, 31
  %5686 = lshr i32 %5659, 31
  %5687 = xor i32 %5682, %5685
  %5688 = xor i32 %5682, %5686
  %5689 = add i32 %5687, %5688
  %5690 = icmp eq i32 %5689, 2
  %5691 = zext i1 %5690 to i8
  %5692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5691, i8* %5692, align 1
  store %struct.Memory* %loadMem_4125eb, %struct.Memory** %MEMORY
  %loadMem_4125ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5694 = getelementptr inbounds %struct.GPR, %struct.GPR* %5693, i32 0, i32 33
  %5695 = getelementptr inbounds %struct.Reg, %struct.Reg* %5694, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %5695 to i64*
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5697 = getelementptr inbounds %struct.GPR, %struct.GPR* %5696, i32 0, i32 1
  %5698 = getelementptr inbounds %struct.Reg, %struct.Reg* %5697, i32 0, i32 0
  %EAX.i179 = bitcast %union.anon* %5698 to i32*
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5700 = getelementptr inbounds %struct.GPR, %struct.GPR* %5699, i32 0, i32 15
  %5701 = getelementptr inbounds %struct.Reg, %struct.Reg* %5700, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %5701 to i64*
  %5702 = load i64, i64* %RBP.i180
  %5703 = sub i64 %5702, 48
  %5704 = load i32, i32* %EAX.i179
  %5705 = zext i32 %5704 to i64
  %5706 = load i64, i64* %PC.i178
  %5707 = add i64 %5706, 3
  store i64 %5707, i64* %PC.i178
  %5708 = inttoptr i64 %5703 to i32*
  store i32 %5704, i32* %5708
  store %struct.Memory* %loadMem_4125ee, %struct.Memory** %MEMORY
  %loadMem_4125f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 33
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %5711 to i64*
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 1
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %5714 to i32*
  %5715 = load i32, i32* %EAX.i177
  %5716 = zext i32 %5715 to i64
  %5717 = load i64, i64* %PC.i176
  %5718 = add i64 %5717, 3
  store i64 %5718, i64* %PC.i176
  %5719 = sub i32 %5715, 3
  %5720 = icmp ult i32 %5715, 3
  %5721 = zext i1 %5720 to i8
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5721, i8* %5722, align 1
  %5723 = and i32 %5719, 255
  %5724 = call i32 @llvm.ctpop.i32(i32 %5723)
  %5725 = trunc i32 %5724 to i8
  %5726 = and i8 %5725, 1
  %5727 = xor i8 %5726, 1
  %5728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5727, i8* %5728, align 1
  %5729 = xor i64 3, %5716
  %5730 = trunc i64 %5729 to i32
  %5731 = xor i32 %5730, %5719
  %5732 = lshr i32 %5731, 4
  %5733 = trunc i32 %5732 to i8
  %5734 = and i8 %5733, 1
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5734, i8* %5735, align 1
  %5736 = icmp eq i32 %5719, 0
  %5737 = zext i1 %5736 to i8
  %5738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5737, i8* %5738, align 1
  %5739 = lshr i32 %5719, 31
  %5740 = trunc i32 %5739 to i8
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5740, i8* %5741, align 1
  %5742 = lshr i32 %5715, 31
  %5743 = xor i32 %5739, %5742
  %5744 = add i32 %5743, %5742
  %5745 = icmp eq i32 %5744, 2
  %5746 = zext i1 %5745 to i8
  %5747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5746, i8* %5747, align 1
  store %struct.Memory* %loadMem_4125f1, %struct.Memory** %MEMORY
  %loadMem_4125f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5749 = getelementptr inbounds %struct.GPR, %struct.GPR* %5748, i32 0, i32 33
  %5750 = getelementptr inbounds %struct.Reg, %struct.Reg* %5749, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5750 to i64*
  %5751 = load i64, i64* %PC.i175
  %5752 = add i64 %5751, 18
  %5753 = load i64, i64* %PC.i175
  %5754 = add i64 %5753, 6
  %5755 = load i64, i64* %PC.i175
  %5756 = add i64 %5755, 6
  store i64 %5756, i64* %PC.i175
  %5757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5758 = load i8, i8* %5757, align 1
  %5759 = icmp ne i8 %5758, 0
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5761 = load i8, i8* %5760, align 1
  %5762 = icmp ne i8 %5761, 0
  %5763 = xor i1 %5759, %5762
  %5764 = xor i1 %5763, true
  %5765 = zext i1 %5764 to i8
  store i8 %5765, i8* %BRANCH_TAKEN, align 1
  %5766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5767 = select i1 %5763, i64 %5754, i64 %5752
  store i64 %5767, i64* %5766, align 8
  store %struct.Memory* %loadMem_4125f4, %struct.Memory** %MEMORY
  %loadBr_4125f4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4125f4 = icmp eq i8 %loadBr_4125f4, 1
  br i1 %cmpBr_4125f4, label %block_.L_412606, label %block_4125fa

block_4125fa:                                     ; preds = %block_.L_4125e8
  %loadMem_4125fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5768 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5769 = getelementptr inbounds %struct.GPR, %struct.GPR* %5768, i32 0, i32 33
  %5770 = getelementptr inbounds %struct.Reg, %struct.Reg* %5769, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5770 to i64*
  %5771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5772 = getelementptr inbounds %struct.GPR, %struct.GPR* %5771, i32 0, i32 1
  %5773 = getelementptr inbounds %struct.Reg, %struct.Reg* %5772, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %5773 to i64*
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 15
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %5776 to i64*
  %5777 = load i64, i64* %RBP.i174
  %5778 = sub i64 %5777, 60
  %5779 = load i64, i64* %PC.i172
  %5780 = add i64 %5779, 4
  store i64 %5780, i64* %PC.i172
  %5781 = inttoptr i64 %5778 to i32*
  %5782 = load i32, i32* %5781
  %5783 = sext i32 %5782 to i64
  %5784 = mul i64 %5783, 5
  %5785 = trunc i64 %5784 to i32
  %5786 = and i64 %5784, 4294967295
  store i64 %5786, i64* %RAX.i173, align 8
  %5787 = shl i64 %5784, 32
  %5788 = ashr exact i64 %5787, 32
  %5789 = icmp ne i64 %5788, %5784
  %5790 = zext i1 %5789 to i8
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5790, i8* %5791, align 1
  %5792 = and i32 %5785, 255
  %5793 = call i32 @llvm.ctpop.i32(i32 %5792)
  %5794 = trunc i32 %5793 to i8
  %5795 = and i8 %5794, 1
  %5796 = xor i8 %5795, 1
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5796, i8* %5797, align 1
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5798, align 1
  %5799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5799, align 1
  %5800 = lshr i32 %5785, 31
  %5801 = trunc i32 %5800 to i8
  %5802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5801, i8* %5802, align 1
  %5803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5790, i8* %5803, align 1
  store %struct.Memory* %loadMem_4125fa, %struct.Memory** %MEMORY
  %loadMem_4125fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 33
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5806 to i64*
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 1
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %EAX.i170 = bitcast %union.anon* %5809 to i32*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 15
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %5812 to i64*
  %5813 = load i64, i64* %RBP.i171
  %5814 = sub i64 %5813, 36
  %5815 = load i32, i32* %EAX.i170
  %5816 = zext i32 %5815 to i64
  %5817 = load i64, i64* %PC.i169
  %5818 = add i64 %5817, 3
  store i64 %5818, i64* %PC.i169
  %5819 = inttoptr i64 %5814 to i32*
  store i32 %5815, i32* %5819
  store %struct.Memory* %loadMem_4125fe, %struct.Memory** %MEMORY
  %loadMem_412601 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 33
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5822 to i64*
  %5823 = load i64, i64* %PC.i168
  %5824 = add i64 %5823, 45
  %5825 = load i64, i64* %PC.i168
  %5826 = add i64 %5825, 5
  store i64 %5826, i64* %PC.i168
  %5827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5824, i64* %5827, align 8
  store %struct.Memory* %loadMem_412601, %struct.Memory** %MEMORY
  br label %block_.L_41262e

block_.L_412606:                                  ; preds = %block_.L_4125e8
  %loadMem_412606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5829 = getelementptr inbounds %struct.GPR, %struct.GPR* %5828, i32 0, i32 33
  %5830 = getelementptr inbounds %struct.Reg, %struct.Reg* %5829, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5830 to i64*
  %5831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5832 = getelementptr inbounds %struct.GPR, %struct.GPR* %5831, i32 0, i32 15
  %5833 = getelementptr inbounds %struct.Reg, %struct.Reg* %5832, i32 0, i32 0
  %RBP.i167 = bitcast %union.anon* %5833 to i64*
  %5834 = load i64, i64* %RBP.i167
  %5835 = sub i64 %5834, 48
  %5836 = load i64, i64* %PC.i166
  %5837 = add i64 %5836, 4
  store i64 %5837, i64* %PC.i166
  %5838 = inttoptr i64 %5835 to i32*
  %5839 = load i32, i32* %5838
  %5840 = sub i32 %5839, 32
  %5841 = icmp ult i32 %5839, 32
  %5842 = zext i1 %5841 to i8
  %5843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5842, i8* %5843, align 1
  %5844 = and i32 %5840, 255
  %5845 = call i32 @llvm.ctpop.i32(i32 %5844)
  %5846 = trunc i32 %5845 to i8
  %5847 = and i8 %5846, 1
  %5848 = xor i8 %5847, 1
  %5849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5848, i8* %5849, align 1
  %5850 = xor i32 %5839, 32
  %5851 = xor i32 %5850, %5840
  %5852 = lshr i32 %5851, 4
  %5853 = trunc i32 %5852 to i8
  %5854 = and i8 %5853, 1
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5854, i8* %5855, align 1
  %5856 = icmp eq i32 %5840, 0
  %5857 = zext i1 %5856 to i8
  %5858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5857, i8* %5858, align 1
  %5859 = lshr i32 %5840, 31
  %5860 = trunc i32 %5859 to i8
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5860, i8* %5861, align 1
  %5862 = lshr i32 %5839, 31
  %5863 = xor i32 %5859, %5862
  %5864 = add i32 %5863, %5862
  %5865 = icmp eq i32 %5864, 2
  %5866 = zext i1 %5865 to i8
  %5867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5866, i8* %5867, align 1
  store %struct.Memory* %loadMem_412606, %struct.Memory** %MEMORY
  %loadMem_41260a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 33
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5870 to i64*
  %5871 = load i64, i64* %PC.i165
  %5872 = add i64 %5871, 21
  %5873 = load i64, i64* %PC.i165
  %5874 = add i64 %5873, 6
  %5875 = load i64, i64* %PC.i165
  %5876 = add i64 %5875, 6
  store i64 %5876, i64* %PC.i165
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5878 = load i8, i8* %5877, align 1
  %5879 = icmp ne i8 %5878, 0
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5881 = load i8, i8* %5880, align 1
  %5882 = icmp ne i8 %5881, 0
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5884 = load i8, i8* %5883, align 1
  %5885 = icmp ne i8 %5884, 0
  %5886 = xor i1 %5882, %5885
  %5887 = or i1 %5879, %5886
  %5888 = zext i1 %5887 to i8
  store i8 %5888, i8* %BRANCH_TAKEN, align 1
  %5889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5890 = select i1 %5887, i64 %5872, i64 %5874
  store i64 %5890, i64* %5889, align 8
  store %struct.Memory* %loadMem_41260a, %struct.Memory** %MEMORY
  %loadBr_41260a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_41260a = icmp eq i8 %loadBr_41260a, 1
  br i1 %cmpBr_41260a, label %block_.L_41261f, label %block_412610

block_412610:                                     ; preds = %block_.L_412606
  %loadMem_412610 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5892 = getelementptr inbounds %struct.GPR, %struct.GPR* %5891, i32 0, i32 33
  %5893 = getelementptr inbounds %struct.Reg, %struct.Reg* %5892, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5893 to i64*
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5895 = getelementptr inbounds %struct.GPR, %struct.GPR* %5894, i32 0, i32 1
  %5896 = getelementptr inbounds %struct.Reg, %struct.Reg* %5895, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %5896 to i64*
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5898 = getelementptr inbounds %struct.GPR, %struct.GPR* %5897, i32 0, i32 15
  %5899 = getelementptr inbounds %struct.Reg, %struct.Reg* %5898, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %5899 to i64*
  %5900 = load i64, i64* %RBP.i164
  %5901 = sub i64 %5900, 60
  %5902 = load i64, i64* %PC.i162
  %5903 = add i64 %5902, 4
  store i64 %5903, i64* %PC.i162
  %5904 = inttoptr i64 %5901 to i32*
  %5905 = load i32, i32* %5904
  %5906 = sext i32 %5905 to i64
  %5907 = mul i64 %5906, 5
  %5908 = trunc i64 %5907 to i32
  %5909 = and i64 %5907, 4294967295
  store i64 %5909, i64* %RAX.i163, align 8
  %5910 = shl i64 %5907, 32
  %5911 = ashr exact i64 %5910, 32
  %5912 = icmp ne i64 %5911, %5907
  %5913 = zext i1 %5912 to i8
  %5914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5913, i8* %5914, align 1
  %5915 = and i32 %5908, 255
  %5916 = call i32 @llvm.ctpop.i32(i32 %5915)
  %5917 = trunc i32 %5916 to i8
  %5918 = and i8 %5917, 1
  %5919 = xor i8 %5918, 1
  %5920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5919, i8* %5920, align 1
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5921, align 1
  %5922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %5922, align 1
  %5923 = lshr i32 %5908, 31
  %5924 = trunc i32 %5923 to i8
  %5925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5924, i8* %5925, align 1
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5913, i8* %5926, align 1
  store %struct.Memory* %loadMem_412610, %struct.Memory** %MEMORY
  %loadMem_412614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5928 = getelementptr inbounds %struct.GPR, %struct.GPR* %5927, i32 0, i32 33
  %5929 = getelementptr inbounds %struct.Reg, %struct.Reg* %5928, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5929 to i64*
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 1
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %RAX.i161 = bitcast %union.anon* %5932 to i64*
  %5933 = load i64, i64* %RAX.i161
  %5934 = load i64, i64* %PC.i160
  %5935 = add i64 %5934, 3
  store i64 %5935, i64* %PC.i160
  %5936 = trunc i64 %5933 to i32
  %5937 = add i32 3, %5936
  %5938 = zext i32 %5937 to i64
  store i64 %5938, i64* %RAX.i161, align 8
  %5939 = icmp ult i32 %5937, %5936
  %5940 = icmp ult i32 %5937, 3
  %5941 = or i1 %5939, %5940
  %5942 = zext i1 %5941 to i8
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5942, i8* %5943, align 1
  %5944 = and i32 %5937, 255
  %5945 = call i32 @llvm.ctpop.i32(i32 %5944)
  %5946 = trunc i32 %5945 to i8
  %5947 = and i8 %5946, 1
  %5948 = xor i8 %5947, 1
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5948, i8* %5949, align 1
  %5950 = xor i64 3, %5933
  %5951 = trunc i64 %5950 to i32
  %5952 = xor i32 %5951, %5937
  %5953 = lshr i32 %5952, 4
  %5954 = trunc i32 %5953 to i8
  %5955 = and i8 %5954, 1
  %5956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5955, i8* %5956, align 1
  %5957 = icmp eq i32 %5937, 0
  %5958 = zext i1 %5957 to i8
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5958, i8* %5959, align 1
  %5960 = lshr i32 %5937, 31
  %5961 = trunc i32 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5961, i8* %5962, align 1
  %5963 = lshr i32 %5936, 31
  %5964 = xor i32 %5960, %5963
  %5965 = add i32 %5964, %5960
  %5966 = icmp eq i32 %5965, 2
  %5967 = zext i1 %5966 to i8
  %5968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5967, i8* %5968, align 1
  store %struct.Memory* %loadMem_412614, %struct.Memory** %MEMORY
  %loadMem_412617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 33
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5971 to i64*
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 1
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %EAX.i158 = bitcast %union.anon* %5974 to i32*
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5976 = getelementptr inbounds %struct.GPR, %struct.GPR* %5975, i32 0, i32 15
  %5977 = getelementptr inbounds %struct.Reg, %struct.Reg* %5976, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %5977 to i64*
  %5978 = load i64, i64* %RBP.i159
  %5979 = sub i64 %5978, 36
  %5980 = load i32, i32* %EAX.i158
  %5981 = zext i32 %5980 to i64
  %5982 = load i64, i64* %PC.i157
  %5983 = add i64 %5982, 3
  store i64 %5983, i64* %PC.i157
  %5984 = inttoptr i64 %5979 to i32*
  store i32 %5980, i32* %5984
  store %struct.Memory* %loadMem_412617, %struct.Memory** %MEMORY
  %loadMem_41261a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 33
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %PC.i156
  %5989 = add i64 %5988, 15
  %5990 = load i64, i64* %PC.i156
  %5991 = add i64 %5990, 5
  store i64 %5991, i64* %PC.i156
  %5992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5989, i64* %5992, align 8
  store %struct.Memory* %loadMem_41261a, %struct.Memory** %MEMORY
  br label %block_.L_412629

block_.L_41261f:                                  ; preds = %block_.L_412606
  %loadMem_41261f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 33
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %5995 to i64*
  %5996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5997 = getelementptr inbounds %struct.GPR, %struct.GPR* %5996, i32 0, i32 1
  %5998 = getelementptr inbounds %struct.Reg, %struct.Reg* %5997, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %5998 to i64*
  %5999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6000 = getelementptr inbounds %struct.GPR, %struct.GPR* %5999, i32 0, i32 15
  %6001 = getelementptr inbounds %struct.Reg, %struct.Reg* %6000, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %6001 to i64*
  %6002 = load i64, i64* %RBP.i155
  %6003 = sub i64 %6002, 60
  %6004 = load i64, i64* %PC.i153
  %6005 = add i64 %6004, 4
  store i64 %6005, i64* %PC.i153
  %6006 = inttoptr i64 %6003 to i32*
  %6007 = load i32, i32* %6006
  %6008 = sext i32 %6007 to i64
  %6009 = mul i64 %6008, 5
  %6010 = trunc i64 %6009 to i32
  %6011 = and i64 %6009, 4294967295
  store i64 %6011, i64* %RAX.i154, align 8
  %6012 = shl i64 %6009, 32
  %6013 = ashr exact i64 %6012, 32
  %6014 = icmp ne i64 %6013, %6009
  %6015 = zext i1 %6014 to i8
  %6016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6015, i8* %6016, align 1
  %6017 = and i32 %6010, 255
  %6018 = call i32 @llvm.ctpop.i32(i32 %6017)
  %6019 = trunc i32 %6018 to i8
  %6020 = and i8 %6019, 1
  %6021 = xor i8 %6020, 1
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6021, i8* %6022, align 1
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6023, align 1
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %6024, align 1
  %6025 = lshr i32 %6010, 31
  %6026 = trunc i32 %6025 to i8
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6026, i8* %6027, align 1
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6015, i8* %6028, align 1
  store %struct.Memory* %loadMem_41261f, %struct.Memory** %MEMORY
  %loadMem_412623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 33
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6031 to i64*
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 1
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %6034 to i64*
  %6035 = load i64, i64* %RAX.i152
  %6036 = load i64, i64* %PC.i151
  %6037 = add i64 %6036, 3
  store i64 %6037, i64* %PC.i151
  %6038 = trunc i64 %6035 to i32
  %6039 = add i32 2, %6038
  %6040 = zext i32 %6039 to i64
  store i64 %6040, i64* %RAX.i152, align 8
  %6041 = icmp ult i32 %6039, %6038
  %6042 = icmp ult i32 %6039, 2
  %6043 = or i1 %6041, %6042
  %6044 = zext i1 %6043 to i8
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6044, i8* %6045, align 1
  %6046 = and i32 %6039, 255
  %6047 = call i32 @llvm.ctpop.i32(i32 %6046)
  %6048 = trunc i32 %6047 to i8
  %6049 = and i8 %6048, 1
  %6050 = xor i8 %6049, 1
  %6051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6050, i8* %6051, align 1
  %6052 = xor i64 2, %6035
  %6053 = trunc i64 %6052 to i32
  %6054 = xor i32 %6053, %6039
  %6055 = lshr i32 %6054, 4
  %6056 = trunc i32 %6055 to i8
  %6057 = and i8 %6056, 1
  %6058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6057, i8* %6058, align 1
  %6059 = icmp eq i32 %6039, 0
  %6060 = zext i1 %6059 to i8
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6060, i8* %6061, align 1
  %6062 = lshr i32 %6039, 31
  %6063 = trunc i32 %6062 to i8
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6063, i8* %6064, align 1
  %6065 = lshr i32 %6038, 31
  %6066 = xor i32 %6062, %6065
  %6067 = add i32 %6066, %6062
  %6068 = icmp eq i32 %6067, 2
  %6069 = zext i1 %6068 to i8
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6069, i8* %6070, align 1
  store %struct.Memory* %loadMem_412623, %struct.Memory** %MEMORY
  %loadMem_412626 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6072 = getelementptr inbounds %struct.GPR, %struct.GPR* %6071, i32 0, i32 33
  %6073 = getelementptr inbounds %struct.Reg, %struct.Reg* %6072, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6073 to i64*
  %6074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6075 = getelementptr inbounds %struct.GPR, %struct.GPR* %6074, i32 0, i32 1
  %6076 = getelementptr inbounds %struct.Reg, %struct.Reg* %6075, i32 0, i32 0
  %EAX.i149 = bitcast %union.anon* %6076 to i32*
  %6077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6078 = getelementptr inbounds %struct.GPR, %struct.GPR* %6077, i32 0, i32 15
  %6079 = getelementptr inbounds %struct.Reg, %struct.Reg* %6078, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %6079 to i64*
  %6080 = load i64, i64* %RBP.i150
  %6081 = sub i64 %6080, 36
  %6082 = load i32, i32* %EAX.i149
  %6083 = zext i32 %6082 to i64
  %6084 = load i64, i64* %PC.i148
  %6085 = add i64 %6084, 3
  store i64 %6085, i64* %PC.i148
  %6086 = inttoptr i64 %6081 to i32*
  store i32 %6082, i32* %6086
  store %struct.Memory* %loadMem_412626, %struct.Memory** %MEMORY
  br label %block_.L_412629

block_.L_412629:                                  ; preds = %block_.L_41261f, %block_412610
  %loadMem_412629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6088 = getelementptr inbounds %struct.GPR, %struct.GPR* %6087, i32 0, i32 33
  %6089 = getelementptr inbounds %struct.Reg, %struct.Reg* %6088, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %6089 to i64*
  %6090 = load i64, i64* %PC.i147
  %6091 = add i64 %6090, 5
  %6092 = load i64, i64* %PC.i147
  %6093 = add i64 %6092, 5
  store i64 %6093, i64* %PC.i147
  %6094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6091, i64* %6094, align 8
  store %struct.Memory* %loadMem_412629, %struct.Memory** %MEMORY
  br label %block_.L_41262e

block_.L_41262e:                                  ; preds = %block_.L_412629, %block_4125fa
  %loadMem_41262e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6096 = getelementptr inbounds %struct.GPR, %struct.GPR* %6095, i32 0, i32 33
  %6097 = getelementptr inbounds %struct.Reg, %struct.Reg* %6096, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6097 to i64*
  %6098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6099 = getelementptr inbounds %struct.GPR, %struct.GPR* %6098, i32 0, i32 1
  %6100 = getelementptr inbounds %struct.Reg, %struct.Reg* %6099, i32 0, i32 0
  %RAX.i145 = bitcast %union.anon* %6100 to i64*
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6102 = getelementptr inbounds %struct.GPR, %struct.GPR* %6101, i32 0, i32 15
  %6103 = getelementptr inbounds %struct.Reg, %struct.Reg* %6102, i32 0, i32 0
  %RBP.i146 = bitcast %union.anon* %6103 to i64*
  %6104 = load i64, i64* %RBP.i146
  %6105 = sub i64 %6104, 8
  %6106 = load i64, i64* %PC.i144
  %6107 = add i64 %6106, 4
  store i64 %6107, i64* %PC.i144
  %6108 = inttoptr i64 %6105 to i64*
  %6109 = load i64, i64* %6108
  store i64 %6109, i64* %RAX.i145, align 8
  store %struct.Memory* %loadMem_41262e, %struct.Memory** %MEMORY
  %loadMem_412632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6111 = getelementptr inbounds %struct.GPR, %struct.GPR* %6110, i32 0, i32 33
  %6112 = getelementptr inbounds %struct.Reg, %struct.Reg* %6111, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %6112 to i64*
  %6113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6114 = getelementptr inbounds %struct.GPR, %struct.GPR* %6113, i32 0, i32 1
  %6115 = getelementptr inbounds %struct.Reg, %struct.Reg* %6114, i32 0, i32 0
  %RAX.i142 = bitcast %union.anon* %6115 to i64*
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6117 = getelementptr inbounds %struct.GPR, %struct.GPR* %6116, i32 0, i32 5
  %6118 = getelementptr inbounds %struct.Reg, %struct.Reg* %6117, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %6118 to i64*
  %6119 = load i64, i64* %RAX.i142
  %6120 = add i64 %6119, 4
  %6121 = load i64, i64* %PC.i141
  %6122 = add i64 %6121, 3
  store i64 %6122, i64* %PC.i141
  %6123 = inttoptr i64 %6120 to i32*
  %6124 = load i32, i32* %6123
  %6125 = zext i32 %6124 to i64
  store i64 %6125, i64* %RCX.i143, align 8
  store %struct.Memory* %loadMem_412632, %struct.Memory** %MEMORY
  %loadMem_412635 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6127 = getelementptr inbounds %struct.GPR, %struct.GPR* %6126, i32 0, i32 33
  %6128 = getelementptr inbounds %struct.Reg, %struct.Reg* %6127, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6128 to i64*
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6130 = getelementptr inbounds %struct.GPR, %struct.GPR* %6129, i32 0, i32 5
  %6131 = getelementptr inbounds %struct.Reg, %struct.Reg* %6130, i32 0, i32 0
  %ECX.i139 = bitcast %union.anon* %6131 to i32*
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6133 = getelementptr inbounds %struct.GPR, %struct.GPR* %6132, i32 0, i32 15
  %6134 = getelementptr inbounds %struct.Reg, %struct.Reg* %6133, i32 0, i32 0
  %RBP.i140 = bitcast %union.anon* %6134 to i64*
  %6135 = load i64, i64* %RBP.i140
  %6136 = sub i64 %6135, 44
  %6137 = load i32, i32* %ECX.i139
  %6138 = zext i32 %6137 to i64
  %6139 = load i64, i64* %PC.i138
  %6140 = add i64 %6139, 3
  store i64 %6140, i64* %PC.i138
  %6141 = inttoptr i64 %6136 to i32*
  store i32 %6137, i32* %6141
  store %struct.Memory* %loadMem_412635, %struct.Memory** %MEMORY
  %loadMem_412638 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 33
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6144 to i64*
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 5
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %6147 to i64*
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 15
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %6150 to i64*
  %6151 = load i64, i64* %RBP.i137
  %6152 = sub i64 %6151, 36
  %6153 = load i64, i64* %PC.i135
  %6154 = add i64 %6153, 3
  store i64 %6154, i64* %PC.i135
  %6155 = inttoptr i64 %6152 to i32*
  %6156 = load i32, i32* %6155
  %6157 = zext i32 %6156 to i64
  store i64 %6157, i64* %RCX.i136, align 8
  store %struct.Memory* %loadMem_412638, %struct.Memory** %MEMORY
  %loadMem_41263b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6159 = getelementptr inbounds %struct.GPR, %struct.GPR* %6158, i32 0, i32 33
  %6160 = getelementptr inbounds %struct.Reg, %struct.Reg* %6159, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6160 to i64*
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 1
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %6163 to i64*
  %6164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6165 = getelementptr inbounds %struct.GPR, %struct.GPR* %6164, i32 0, i32 15
  %6166 = getelementptr inbounds %struct.Reg, %struct.Reg* %6165, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %6166 to i64*
  %6167 = load i64, i64* %RBP.i134
  %6168 = sub i64 %6167, 8
  %6169 = load i64, i64* %PC.i132
  %6170 = add i64 %6169, 4
  store i64 %6170, i64* %PC.i132
  %6171 = inttoptr i64 %6168 to i64*
  %6172 = load i64, i64* %6171
  store i64 %6172, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_41263b, %struct.Memory** %MEMORY
  %loadMem_41263f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 5
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %ECX.i130 = bitcast %union.anon* %6178 to i32*
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6180 = getelementptr inbounds %struct.GPR, %struct.GPR* %6179, i32 0, i32 1
  %6181 = getelementptr inbounds %struct.Reg, %struct.Reg* %6180, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %6181 to i64*
  %6182 = load i64, i64* %RAX.i131
  %6183 = add i64 %6182, 24
  %6184 = load i32, i32* %ECX.i130
  %6185 = zext i32 %6184 to i64
  %6186 = load i64, i64* %PC.i129
  %6187 = add i64 %6186, 3
  store i64 %6187, i64* %PC.i129
  %6188 = inttoptr i64 %6183 to i32*
  store i32 %6184, i32* %6188
  store %struct.Memory* %loadMem_41263f, %struct.Memory** %MEMORY
  %loadMem_412642 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6190 = getelementptr inbounds %struct.GPR, %struct.GPR* %6189, i32 0, i32 33
  %6191 = getelementptr inbounds %struct.Reg, %struct.Reg* %6190, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %6191 to i64*
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6193 = getelementptr inbounds %struct.GPR, %struct.GPR* %6192, i32 0, i32 15
  %6194 = getelementptr inbounds %struct.Reg, %struct.Reg* %6193, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %6194 to i64*
  %6195 = load i64, i64* %RBP.i128
  %6196 = sub i64 %6195, 44
  %6197 = load i64, i64* %PC.i127
  %6198 = add i64 %6197, 4
  store i64 %6198, i64* %PC.i127
  %6199 = inttoptr i64 %6196 to i32*
  %6200 = load i32, i32* %6199
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6201, align 1
  %6202 = and i32 %6200, 255
  %6203 = call i32 @llvm.ctpop.i32(i32 %6202)
  %6204 = trunc i32 %6203 to i8
  %6205 = and i8 %6204, 1
  %6206 = xor i8 %6205, 1
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6206, i8* %6207, align 1
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6208, align 1
  %6209 = icmp eq i32 %6200, 0
  %6210 = zext i1 %6209 to i8
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6210, i8* %6211, align 1
  %6212 = lshr i32 %6200, 31
  %6213 = trunc i32 %6212 to i8
  %6214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6213, i8* %6214, align 1
  %6215 = lshr i32 %6200, 31
  %6216 = xor i32 %6212, %6215
  %6217 = add i32 %6216, %6215
  %6218 = icmp eq i32 %6217, 2
  %6219 = zext i1 %6218 to i8
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6219, i8* %6220, align 1
  store %struct.Memory* %loadMem_412642, %struct.Memory** %MEMORY
  %loadMem_412646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 33
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6223 to i64*
  %6224 = load i64, i64* %PC.i126
  %6225 = add i64 %6224, 22
  %6226 = load i64, i64* %PC.i126
  %6227 = add i64 %6226, 6
  %6228 = load i64, i64* %PC.i126
  %6229 = add i64 %6228, 6
  store i64 %6229, i64* %PC.i126
  %6230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6231 = load i8, i8* %6230, align 1
  %6232 = icmp ne i8 %6231, 0
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6234 = load i8, i8* %6233, align 1
  %6235 = icmp ne i8 %6234, 0
  %6236 = xor i1 %6232, %6235
  %6237 = xor i1 %6236, true
  %6238 = zext i1 %6237 to i8
  store i8 %6238, i8* %BRANCH_TAKEN, align 1
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6240 = select i1 %6236, i64 %6227, i64 %6225
  store i64 %6240, i64* %6239, align 8
  store %struct.Memory* %loadMem_412646, %struct.Memory** %MEMORY
  %loadBr_412646 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412646 = icmp eq i8 %loadBr_412646, 1
  br i1 %cmpBr_412646, label %block_.L_41265c, label %block_41264c

block_41264c:                                     ; preds = %block_.L_41262e
  %loadMem_41264c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6242 = getelementptr inbounds %struct.GPR, %struct.GPR* %6241, i32 0, i32 33
  %6243 = getelementptr inbounds %struct.Reg, %struct.Reg* %6242, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6243 to i64*
  %6244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6245 = getelementptr inbounds %struct.GPR, %struct.GPR* %6244, i32 0, i32 1
  %6246 = getelementptr inbounds %struct.Reg, %struct.Reg* %6245, i32 0, i32 0
  %EAX.i124 = bitcast %union.anon* %6246 to i32*
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6248 = getelementptr inbounds %struct.GPR, %struct.GPR* %6247, i32 0, i32 1
  %6249 = getelementptr inbounds %struct.Reg, %struct.Reg* %6248, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %6249 to i64*
  %6250 = load i64, i64* %RAX.i125
  %6251 = load i32, i32* %EAX.i124
  %6252 = zext i32 %6251 to i64
  %6253 = load i64, i64* %PC.i123
  %6254 = add i64 %6253, 2
  store i64 %6254, i64* %PC.i123
  %6255 = xor i64 %6252, %6250
  %6256 = trunc i64 %6255 to i32
  %6257 = and i64 %6255, 4294967295
  store i64 %6257, i64* %RAX.i125, align 8
  %6258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6258, align 1
  %6259 = and i32 %6256, 255
  %6260 = call i32 @llvm.ctpop.i32(i32 %6259)
  %6261 = trunc i32 %6260 to i8
  %6262 = and i8 %6261, 1
  %6263 = xor i8 %6262, 1
  %6264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6263, i8* %6264, align 1
  %6265 = icmp eq i32 %6256, 0
  %6266 = zext i1 %6265 to i8
  %6267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6266, i8* %6267, align 1
  %6268 = lshr i32 %6256, 31
  %6269 = trunc i32 %6268 to i8
  %6270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6269, i8* %6270, align 1
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6271, align 1
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6272, align 1
  store %struct.Memory* %loadMem_41264c, %struct.Memory** %MEMORY
  %loadMem_41264e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6274 = getelementptr inbounds %struct.GPR, %struct.GPR* %6273, i32 0, i32 33
  %6275 = getelementptr inbounds %struct.Reg, %struct.Reg* %6274, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %6275 to i64*
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 1
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 15
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6281 to i64*
  %6282 = load i64, i64* %RAX.i121
  %6283 = load i64, i64* %RBP.i122
  %6284 = sub i64 %6283, 44
  %6285 = load i64, i64* %PC.i120
  %6286 = add i64 %6285, 3
  store i64 %6286, i64* %PC.i120
  %6287 = trunc i64 %6282 to i32
  %6288 = inttoptr i64 %6284 to i32*
  %6289 = load i32, i32* %6288
  %6290 = sub i32 %6287, %6289
  %6291 = zext i32 %6290 to i64
  store i64 %6291, i64* %RAX.i121, align 8
  %6292 = icmp ult i32 %6287, %6289
  %6293 = zext i1 %6292 to i8
  %6294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6293, i8* %6294, align 1
  %6295 = and i32 %6290, 255
  %6296 = call i32 @llvm.ctpop.i32(i32 %6295)
  %6297 = trunc i32 %6296 to i8
  %6298 = and i8 %6297, 1
  %6299 = xor i8 %6298, 1
  %6300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6299, i8* %6300, align 1
  %6301 = xor i32 %6289, %6287
  %6302 = xor i32 %6301, %6290
  %6303 = lshr i32 %6302, 4
  %6304 = trunc i32 %6303 to i8
  %6305 = and i8 %6304, 1
  %6306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6305, i8* %6306, align 1
  %6307 = icmp eq i32 %6290, 0
  %6308 = zext i1 %6307 to i8
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6308, i8* %6309, align 1
  %6310 = lshr i32 %6290, 31
  %6311 = trunc i32 %6310 to i8
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6311, i8* %6312, align 1
  %6313 = lshr i32 %6287, 31
  %6314 = lshr i32 %6289, 31
  %6315 = xor i32 %6314, %6313
  %6316 = xor i32 %6310, %6313
  %6317 = add i32 %6316, %6315
  %6318 = icmp eq i32 %6317, 2
  %6319 = zext i1 %6318 to i8
  %6320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6319, i8* %6320, align 1
  store %struct.Memory* %loadMem_41264e, %struct.Memory** %MEMORY
  %loadMem_412651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6322 = getelementptr inbounds %struct.GPR, %struct.GPR* %6321, i32 0, i32 33
  %6323 = getelementptr inbounds %struct.Reg, %struct.Reg* %6322, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %6323 to i64*
  %6324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6325 = getelementptr inbounds %struct.GPR, %struct.GPR* %6324, i32 0, i32 1
  %6326 = getelementptr inbounds %struct.Reg, %struct.Reg* %6325, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %6326 to i32*
  %6327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6328 = getelementptr inbounds %struct.GPR, %struct.GPR* %6327, i32 0, i32 15
  %6329 = getelementptr inbounds %struct.Reg, %struct.Reg* %6328, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %6329 to i64*
  %6330 = load i64, i64* %RBP.i119
  %6331 = sub i64 %6330, 148
  %6332 = load i32, i32* %EAX.i118
  %6333 = zext i32 %6332 to i64
  %6334 = load i64, i64* %PC.i117
  %6335 = add i64 %6334, 6
  store i64 %6335, i64* %PC.i117
  %6336 = inttoptr i64 %6331 to i32*
  store i32 %6332, i32* %6336
  store %struct.Memory* %loadMem_412651, %struct.Memory** %MEMORY
  %loadMem_412657 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 33
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6339 to i64*
  %6340 = load i64, i64* %PC.i116
  %6341 = add i64 %6340, 14
  %6342 = load i64, i64* %PC.i116
  %6343 = add i64 %6342, 5
  store i64 %6343, i64* %PC.i116
  %6344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6341, i64* %6344, align 8
  store %struct.Memory* %loadMem_412657, %struct.Memory** %MEMORY
  br label %block_.L_412665

block_.L_41265c:                                  ; preds = %block_.L_41262e
  %loadMem_41265c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6346 = getelementptr inbounds %struct.GPR, %struct.GPR* %6345, i32 0, i32 33
  %6347 = getelementptr inbounds %struct.Reg, %struct.Reg* %6346, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6347 to i64*
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6349 = getelementptr inbounds %struct.GPR, %struct.GPR* %6348, i32 0, i32 1
  %6350 = getelementptr inbounds %struct.Reg, %struct.Reg* %6349, i32 0, i32 0
  %RAX.i114 = bitcast %union.anon* %6350 to i64*
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 15
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %6353 to i64*
  %6354 = load i64, i64* %RBP.i115
  %6355 = sub i64 %6354, 44
  %6356 = load i64, i64* %PC.i113
  %6357 = add i64 %6356, 3
  store i64 %6357, i64* %PC.i113
  %6358 = inttoptr i64 %6355 to i32*
  %6359 = load i32, i32* %6358
  %6360 = zext i32 %6359 to i64
  store i64 %6360, i64* %RAX.i114, align 8
  store %struct.Memory* %loadMem_41265c, %struct.Memory** %MEMORY
  %loadMem_41265f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6362 = getelementptr inbounds %struct.GPR, %struct.GPR* %6361, i32 0, i32 33
  %6363 = getelementptr inbounds %struct.Reg, %struct.Reg* %6362, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6363 to i64*
  %6364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6365 = getelementptr inbounds %struct.GPR, %struct.GPR* %6364, i32 0, i32 1
  %6366 = getelementptr inbounds %struct.Reg, %struct.Reg* %6365, i32 0, i32 0
  %EAX.i111 = bitcast %union.anon* %6366 to i32*
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6368 = getelementptr inbounds %struct.GPR, %struct.GPR* %6367, i32 0, i32 15
  %6369 = getelementptr inbounds %struct.Reg, %struct.Reg* %6368, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %6369 to i64*
  %6370 = load i64, i64* %RBP.i112
  %6371 = sub i64 %6370, 148
  %6372 = load i32, i32* %EAX.i111
  %6373 = zext i32 %6372 to i64
  %6374 = load i64, i64* %PC.i110
  %6375 = add i64 %6374, 6
  store i64 %6375, i64* %PC.i110
  %6376 = inttoptr i64 %6371 to i32*
  store i32 %6372, i32* %6376
  store %struct.Memory* %loadMem_41265f, %struct.Memory** %MEMORY
  br label %block_.L_412665

block_.L_412665:                                  ; preds = %block_.L_41265c, %block_41264c
  %loadMem_412665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6378 = getelementptr inbounds %struct.GPR, %struct.GPR* %6377, i32 0, i32 33
  %6379 = getelementptr inbounds %struct.Reg, %struct.Reg* %6378, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %6379 to i64*
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 1
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 15
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %6385 to i64*
  %6386 = load i64, i64* %RBP.i109
  %6387 = sub i64 %6386, 148
  %6388 = load i64, i64* %PC.i107
  %6389 = add i64 %6388, 6
  store i64 %6389, i64* %PC.i107
  %6390 = inttoptr i64 %6387 to i32*
  %6391 = load i32, i32* %6390
  %6392 = zext i32 %6391 to i64
  store i64 %6392, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_412665, %struct.Memory** %MEMORY
  %loadMem_41266b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6394 = getelementptr inbounds %struct.GPR, %struct.GPR* %6393, i32 0, i32 33
  %6395 = getelementptr inbounds %struct.Reg, %struct.Reg* %6394, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6395 to i64*
  %6396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6397 = getelementptr inbounds %struct.GPR, %struct.GPR* %6396, i32 0, i32 1
  %6398 = getelementptr inbounds %struct.Reg, %struct.Reg* %6397, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6398 to i32*
  %6399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6400 = getelementptr inbounds %struct.GPR, %struct.GPR* %6399, i32 0, i32 15
  %6401 = getelementptr inbounds %struct.Reg, %struct.Reg* %6400, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %6401 to i64*
  %6402 = load i64, i64* %RBP.i106
  %6403 = sub i64 %6402, 40
  %6404 = load i32, i32* %EAX.i
  %6405 = zext i32 %6404 to i64
  %6406 = load i64, i64* %PC.i105
  %6407 = add i64 %6406, 3
  store i64 %6407, i64* %PC.i105
  %6408 = inttoptr i64 %6403 to i32*
  store i32 %6404, i32* %6408
  store %struct.Memory* %loadMem_41266b, %struct.Memory** %MEMORY
  %loadMem_41266e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6410 = getelementptr inbounds %struct.GPR, %struct.GPR* %6409, i32 0, i32 33
  %6411 = getelementptr inbounds %struct.Reg, %struct.Reg* %6410, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6411 to i64*
  %6412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6413 = getelementptr inbounds %struct.GPR, %struct.GPR* %6412, i32 0, i32 15
  %6414 = getelementptr inbounds %struct.Reg, %struct.Reg* %6413, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %6414 to i64*
  %6415 = load i64, i64* %RBP.i104
  %6416 = sub i64 %6415, 40
  %6417 = load i64, i64* %PC.i103
  %6418 = add i64 %6417, 4
  store i64 %6418, i64* %PC.i103
  %6419 = inttoptr i64 %6416 to i32*
  %6420 = load i32, i32* %6419
  %6421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6421, align 1
  %6422 = and i32 %6420, 255
  %6423 = call i32 @llvm.ctpop.i32(i32 %6422)
  %6424 = trunc i32 %6423 to i8
  %6425 = and i8 %6424, 1
  %6426 = xor i8 %6425, 1
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6426, i8* %6427, align 1
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6428, align 1
  %6429 = icmp eq i32 %6420, 0
  %6430 = zext i1 %6429 to i8
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6430, i8* %6431, align 1
  %6432 = lshr i32 %6420, 31
  %6433 = trunc i32 %6432 to i8
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6433, i8* %6434, align 1
  %6435 = lshr i32 %6420, 31
  %6436 = xor i32 %6432, %6435
  %6437 = add i32 %6436, %6435
  %6438 = icmp eq i32 %6437, 2
  %6439 = zext i1 %6438 to i8
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6439, i8* %6440, align 1
  store %struct.Memory* %loadMem_41266e, %struct.Memory** %MEMORY
  %loadMem_412672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6442 = getelementptr inbounds %struct.GPR, %struct.GPR* %6441, i32 0, i32 33
  %6443 = getelementptr inbounds %struct.Reg, %struct.Reg* %6442, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %6443 to i64*
  %6444 = load i64, i64* %PC.i102
  %6445 = add i64 %6444, 46
  %6446 = load i64, i64* %PC.i102
  %6447 = add i64 %6446, 6
  %6448 = load i64, i64* %PC.i102
  %6449 = add i64 %6448, 6
  store i64 %6449, i64* %PC.i102
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6451 = load i8, i8* %6450, align 1
  %6452 = icmp eq i8 %6451, 0
  %6453 = zext i1 %6452 to i8
  store i8 %6453, i8* %BRANCH_TAKEN, align 1
  %6454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6455 = select i1 %6452, i64 %6445, i64 %6447
  store i64 %6455, i64* %6454, align 8
  store %struct.Memory* %loadMem_412672, %struct.Memory** %MEMORY
  %loadBr_412672 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_412672 = icmp eq i8 %loadBr_412672, 1
  br i1 %cmpBr_412672, label %block_.L_4126a0, label %block_412678

block_412678:                                     ; preds = %block_.L_412665
  %loadMem_412678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 33
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6458 to i64*
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6460 = getelementptr inbounds %struct.GPR, %struct.GPR* %6459, i32 0, i32 9
  %6461 = getelementptr inbounds %struct.Reg, %struct.Reg* %6460, i32 0, i32 0
  %ESI.i100 = bitcast %union.anon* %6461 to i32*
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 9
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %RSI.i101 = bitcast %union.anon* %6464 to i64*
  %6465 = load i64, i64* %RSI.i101
  %6466 = load i32, i32* %ESI.i100
  %6467 = zext i32 %6466 to i64
  %6468 = load i64, i64* %PC.i99
  %6469 = add i64 %6468, 2
  store i64 %6469, i64* %PC.i99
  %6470 = xor i64 %6467, %6465
  %6471 = trunc i64 %6470 to i32
  %6472 = and i64 %6470, 4294967295
  store i64 %6472, i64* %RSI.i101, align 8
  %6473 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6473, align 1
  %6474 = and i32 %6471, 255
  %6475 = call i32 @llvm.ctpop.i32(i32 %6474)
  %6476 = trunc i32 %6475 to i8
  %6477 = and i8 %6476, 1
  %6478 = xor i8 %6477, 1
  %6479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6478, i8* %6479, align 1
  %6480 = icmp eq i32 %6471, 0
  %6481 = zext i1 %6480 to i8
  %6482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6481, i8* %6482, align 1
  %6483 = lshr i32 %6471, 31
  %6484 = trunc i32 %6483 to i8
  %6485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6484, i8* %6485, align 1
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6486, align 1
  %6487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6487, align 1
  store %struct.Memory* %loadMem_412678, %struct.Memory** %MEMORY
  %loadMem_41267a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6489 = getelementptr inbounds %struct.GPR, %struct.GPR* %6488, i32 0, i32 33
  %6490 = getelementptr inbounds %struct.Reg, %struct.Reg* %6489, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6490 to i64*
  %6491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6492 = getelementptr inbounds %struct.GPR, %struct.GPR* %6491, i32 0, i32 11
  %6493 = getelementptr inbounds %struct.Reg, %struct.Reg* %6492, i32 0, i32 0
  %RDI.i97 = bitcast %union.anon* %6493 to i64*
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 15
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %6496 to i64*
  %6497 = load i64, i64* %RBP.i98
  %6498 = sub i64 %6497, 16
  %6499 = load i64, i64* %PC.i96
  %6500 = add i64 %6499, 4
  store i64 %6500, i64* %PC.i96
  %6501 = inttoptr i64 %6498 to i64*
  %6502 = load i64, i64* %6501
  store i64 %6502, i64* %RDI.i97, align 8
  store %struct.Memory* %loadMem_41267a, %struct.Memory** %MEMORY
  %loadMem_41267e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6504 = getelementptr inbounds %struct.GPR, %struct.GPR* %6503, i32 0, i32 33
  %6505 = getelementptr inbounds %struct.Reg, %struct.Reg* %6504, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %6505 to i64*
  %6506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6507 = getelementptr inbounds %struct.GPR, %struct.GPR* %6506, i32 0, i32 1
  %6508 = getelementptr inbounds %struct.Reg, %struct.Reg* %6507, i32 0, i32 0
  %RAX.i94 = bitcast %union.anon* %6508 to i64*
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6510 = getelementptr inbounds %struct.GPR, %struct.GPR* %6509, i32 0, i32 15
  %6511 = getelementptr inbounds %struct.Reg, %struct.Reg* %6510, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %6511 to i64*
  %6512 = load i64, i64* %RBP.i95
  %6513 = sub i64 %6512, 120
  %6514 = load i64, i64* %PC.i93
  %6515 = add i64 %6514, 4
  store i64 %6515, i64* %PC.i93
  %6516 = inttoptr i64 %6513 to i64*
  %6517 = load i64, i64* %6516
  store i64 %6517, i64* %RAX.i94, align 8
  store %struct.Memory* %loadMem_41267e, %struct.Memory** %MEMORY
  %loadMem_412682 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6519 = getelementptr inbounds %struct.GPR, %struct.GPR* %6518, i32 0, i32 33
  %6520 = getelementptr inbounds %struct.Reg, %struct.Reg* %6519, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %6520 to i64*
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 1
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %6523 to i64*
  %6524 = load i64, i64* %RAX.i92
  %6525 = load i64, i64* %PC.i91
  %6526 = add i64 %6525, 6
  store i64 %6526, i64* %PC.i91
  %6527 = add i64 816, %6524
  store i64 %6527, i64* %RAX.i92, align 8
  %6528 = icmp ult i64 %6527, %6524
  %6529 = icmp ult i64 %6527, 816
  %6530 = or i1 %6528, %6529
  %6531 = zext i1 %6530 to i8
  %6532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6531, i8* %6532, align 1
  %6533 = trunc i64 %6527 to i32
  %6534 = and i32 %6533, 255
  %6535 = call i32 @llvm.ctpop.i32(i32 %6534)
  %6536 = trunc i32 %6535 to i8
  %6537 = and i8 %6536, 1
  %6538 = xor i8 %6537, 1
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6538, i8* %6539, align 1
  %6540 = xor i64 816, %6524
  %6541 = xor i64 %6540, %6527
  %6542 = lshr i64 %6541, 4
  %6543 = trunc i64 %6542 to i8
  %6544 = and i8 %6543, 1
  %6545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6544, i8* %6545, align 1
  %6546 = icmp eq i64 %6527, 0
  %6547 = zext i1 %6546 to i8
  %6548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6547, i8* %6548, align 1
  %6549 = lshr i64 %6527, 63
  %6550 = trunc i64 %6549 to i8
  %6551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6550, i8* %6551, align 1
  %6552 = lshr i64 %6524, 63
  %6553 = xor i64 %6549, %6552
  %6554 = add i64 %6553, %6549
  %6555 = icmp eq i64 %6554, 2
  %6556 = zext i1 %6555 to i8
  %6557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6556, i8* %6557, align 1
  store %struct.Memory* %loadMem_412682, %struct.Memory** %MEMORY
  %loadMem_412688 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6559 = getelementptr inbounds %struct.GPR, %struct.GPR* %6558, i32 0, i32 33
  %6560 = getelementptr inbounds %struct.Reg, %struct.Reg* %6559, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %6560 to i64*
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6562 = getelementptr inbounds %struct.GPR, %struct.GPR* %6561, i32 0, i32 5
  %6563 = getelementptr inbounds %struct.Reg, %struct.Reg* %6562, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %6563 to i64*
  %6564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6565 = getelementptr inbounds %struct.GPR, %struct.GPR* %6564, i32 0, i32 15
  %6566 = getelementptr inbounds %struct.Reg, %struct.Reg* %6565, i32 0, i32 0
  %RBP.i90 = bitcast %union.anon* %6566 to i64*
  %6567 = load i64, i64* %RBP.i90
  %6568 = sub i64 %6567, 36
  %6569 = load i64, i64* %PC.i88
  %6570 = add i64 %6569, 4
  store i64 %6570, i64* %PC.i88
  %6571 = inttoptr i64 %6568 to i32*
  %6572 = load i32, i32* %6571
  %6573 = sext i32 %6572 to i64
  store i64 %6573, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_412688, %struct.Memory** %MEMORY
  %loadMem_41268c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6575 = getelementptr inbounds %struct.GPR, %struct.GPR* %6574, i32 0, i32 33
  %6576 = getelementptr inbounds %struct.Reg, %struct.Reg* %6575, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6576 to i64*
  %6577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6578 = getelementptr inbounds %struct.GPR, %struct.GPR* %6577, i32 0, i32 5
  %6579 = getelementptr inbounds %struct.Reg, %struct.Reg* %6578, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %6579 to i64*
  %6580 = load i64, i64* %RCX.i87
  %6581 = load i64, i64* %PC.i86
  %6582 = add i64 %6581, 4
  store i64 %6582, i64* %PC.i86
  %6583 = shl i64 %6580, 3
  %6584 = icmp slt i64 %6583, 0
  %6585 = shl i64 %6583, 1
  store i64 %6585, i64* %RCX.i87, align 8
  %6586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6587 = zext i1 %6584 to i8
  store i8 %6587, i8* %6586, align 1
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6589 = trunc i64 %6585 to i32
  %6590 = and i32 %6589, 254
  %6591 = call i32 @llvm.ctpop.i32(i32 %6590)
  %6592 = trunc i32 %6591 to i8
  %6593 = and i8 %6592, 1
  %6594 = xor i8 %6593, 1
  store i8 %6594, i8* %6588, align 1
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6595, align 1
  %6596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6597 = icmp eq i64 %6585, 0
  %6598 = zext i1 %6597 to i8
  store i8 %6598, i8* %6596, align 1
  %6599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6600 = lshr i64 %6585, 63
  %6601 = trunc i64 %6600 to i8
  store i8 %6601, i8* %6599, align 1
  %6602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6602, align 1
  store %struct.Memory* %loadMem_41268c, %struct.Memory** %MEMORY
  %loadMem_412690 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 33
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %6605 to i64*
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 1
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %6608 to i64*
  %6609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6610 = getelementptr inbounds %struct.GPR, %struct.GPR* %6609, i32 0, i32 5
  %6611 = getelementptr inbounds %struct.Reg, %struct.Reg* %6610, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %6611 to i64*
  %6612 = load i64, i64* %RAX.i84
  %6613 = load i64, i64* %RCX.i85
  %6614 = load i64, i64* %PC.i83
  %6615 = add i64 %6614, 3
  store i64 %6615, i64* %PC.i83
  %6616 = add i64 %6613, %6612
  store i64 %6616, i64* %RAX.i84, align 8
  %6617 = icmp ult i64 %6616, %6612
  %6618 = icmp ult i64 %6616, %6613
  %6619 = or i1 %6617, %6618
  %6620 = zext i1 %6619 to i8
  %6621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6620, i8* %6621, align 1
  %6622 = trunc i64 %6616 to i32
  %6623 = and i32 %6622, 255
  %6624 = call i32 @llvm.ctpop.i32(i32 %6623)
  %6625 = trunc i32 %6624 to i8
  %6626 = and i8 %6625, 1
  %6627 = xor i8 %6626, 1
  %6628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6627, i8* %6628, align 1
  %6629 = xor i64 %6613, %6612
  %6630 = xor i64 %6629, %6616
  %6631 = lshr i64 %6630, 4
  %6632 = trunc i64 %6631 to i8
  %6633 = and i8 %6632, 1
  %6634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6633, i8* %6634, align 1
  %6635 = icmp eq i64 %6616, 0
  %6636 = zext i1 %6635 to i8
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6636, i8* %6637, align 1
  %6638 = lshr i64 %6616, 63
  %6639 = trunc i64 %6638 to i8
  %6640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6639, i8* %6640, align 1
  %6641 = lshr i64 %6612, 63
  %6642 = lshr i64 %6613, 63
  %6643 = xor i64 %6638, %6641
  %6644 = xor i64 %6638, %6642
  %6645 = add i64 %6643, %6644
  %6646 = icmp eq i64 %6645, 2
  %6647 = zext i1 %6646 to i8
  %6648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6647, i8* %6648, align 1
  store %struct.Memory* %loadMem_412690, %struct.Memory** %MEMORY
  %loadMem_412693 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6650 = getelementptr inbounds %struct.GPR, %struct.GPR* %6649, i32 0, i32 33
  %6651 = getelementptr inbounds %struct.Reg, %struct.Reg* %6650, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6651 to i64*
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 1
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %6654 to i64*
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 7
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %RDX.i82 = bitcast %union.anon* %6657 to i64*
  %6658 = load i64, i64* %RAX.i81
  %6659 = load i64, i64* %PC.i80
  %6660 = add i64 %6659, 3
  store i64 %6660, i64* %PC.i80
  store i64 %6658, i64* %RDX.i82, align 8
  store %struct.Memory* %loadMem_412693, %struct.Memory** %MEMORY
  %loadMem1_412696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6662 = getelementptr inbounds %struct.GPR, %struct.GPR* %6661, i32 0, i32 33
  %6663 = getelementptr inbounds %struct.Reg, %struct.Reg* %6662, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6663 to i64*
  %6664 = load i64, i64* %PC.i79
  %6665 = add i64 %6664, -68854
  %6666 = load i64, i64* %PC.i79
  %6667 = add i64 %6666, 5
  %6668 = load i64, i64* %PC.i79
  %6669 = add i64 %6668, 5
  store i64 %6669, i64* %PC.i79
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6671 = load i64, i64* %6670, align 8
  %6672 = add i64 %6671, -8
  %6673 = inttoptr i64 %6672 to i64*
  store i64 %6667, i64* %6673
  store i64 %6672, i64* %6670, align 8
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6665, i64* %6674, align 8
  store %struct.Memory* %loadMem1_412696, %struct.Memory** %MEMORY
  %loadMem2_412696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412696 = load i64, i64* %3
  %call2_412696 = call %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* %0, i64 %loadPC_412696, %struct.Memory* %loadMem2_412696)
  store %struct.Memory* %call2_412696, %struct.Memory** %MEMORY
  %loadMem_41269b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6676 = getelementptr inbounds %struct.GPR, %struct.GPR* %6675, i32 0, i32 33
  %6677 = getelementptr inbounds %struct.Reg, %struct.Reg* %6676, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6677 to i64*
  %6678 = load i64, i64* %PC.i78
  %6679 = add i64 %6678, 129
  %6680 = load i64, i64* %PC.i78
  %6681 = add i64 %6680, 5
  store i64 %6681, i64* %PC.i78
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6679, i64* %6682, align 8
  store %struct.Memory* %loadMem_41269b, %struct.Memory** %MEMORY
  br label %block_.L_41271c

block_.L_4126a0:                                  ; preds = %block_.L_412665
  %loadMem_4126a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6684 = getelementptr inbounds %struct.GPR, %struct.GPR* %6683, i32 0, i32 33
  %6685 = getelementptr inbounds %struct.Reg, %struct.Reg* %6684, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %6685 to i64*
  %6686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6687 = getelementptr inbounds %struct.GPR, %struct.GPR* %6686, i32 0, i32 11
  %6688 = getelementptr inbounds %struct.Reg, %struct.Reg* %6687, i32 0, i32 0
  %RDI.i76 = bitcast %union.anon* %6688 to i64*
  %6689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6690 = getelementptr inbounds %struct.GPR, %struct.GPR* %6689, i32 0, i32 15
  %6691 = getelementptr inbounds %struct.Reg, %struct.Reg* %6690, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %6691 to i64*
  %6692 = load i64, i64* %RBP.i77
  %6693 = sub i64 %6692, 16
  %6694 = load i64, i64* %PC.i75
  %6695 = add i64 %6694, 4
  store i64 %6695, i64* %PC.i75
  %6696 = inttoptr i64 %6693 to i64*
  %6697 = load i64, i64* %6696
  store i64 %6697, i64* %RDI.i76, align 8
  store %struct.Memory* %loadMem_4126a0, %struct.Memory** %MEMORY
  %loadMem_4126a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6699 = getelementptr inbounds %struct.GPR, %struct.GPR* %6698, i32 0, i32 33
  %6700 = getelementptr inbounds %struct.Reg, %struct.Reg* %6699, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %6700 to i64*
  %6701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6702 = getelementptr inbounds %struct.GPR, %struct.GPR* %6701, i32 0, i32 1
  %6703 = getelementptr inbounds %struct.Reg, %struct.Reg* %6702, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %6703 to i64*
  %6704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6705 = getelementptr inbounds %struct.GPR, %struct.GPR* %6704, i32 0, i32 15
  %6706 = getelementptr inbounds %struct.Reg, %struct.Reg* %6705, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %6706 to i64*
  %6707 = load i64, i64* %RBP.i74
  %6708 = sub i64 %6707, 120
  %6709 = load i64, i64* %PC.i72
  %6710 = add i64 %6709, 4
  store i64 %6710, i64* %PC.i72
  %6711 = inttoptr i64 %6708 to i64*
  %6712 = load i64, i64* %6711
  store i64 %6712, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_4126a4, %struct.Memory** %MEMORY
  %loadMem_4126a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6714 = getelementptr inbounds %struct.GPR, %struct.GPR* %6713, i32 0, i32 33
  %6715 = getelementptr inbounds %struct.Reg, %struct.Reg* %6714, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %6715 to i64*
  %6716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6717 = getelementptr inbounds %struct.GPR, %struct.GPR* %6716, i32 0, i32 5
  %6718 = getelementptr inbounds %struct.Reg, %struct.Reg* %6717, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %6718 to i64*
  %6719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6720 = getelementptr inbounds %struct.GPR, %struct.GPR* %6719, i32 0, i32 15
  %6721 = getelementptr inbounds %struct.Reg, %struct.Reg* %6720, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %6721 to i64*
  %6722 = load i64, i64* %RBP.i71
  %6723 = sub i64 %6722, 36
  %6724 = load i64, i64* %PC.i69
  %6725 = add i64 %6724, 4
  store i64 %6725, i64* %PC.i69
  %6726 = inttoptr i64 %6723 to i32*
  %6727 = load i32, i32* %6726
  %6728 = sext i32 %6727 to i64
  store i64 %6728, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_4126a8, %struct.Memory** %MEMORY
  %loadMem_4126ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %6729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6730 = getelementptr inbounds %struct.GPR, %struct.GPR* %6729, i32 0, i32 33
  %6731 = getelementptr inbounds %struct.Reg, %struct.Reg* %6730, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6731 to i64*
  %6732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6733 = getelementptr inbounds %struct.GPR, %struct.GPR* %6732, i32 0, i32 5
  %6734 = getelementptr inbounds %struct.Reg, %struct.Reg* %6733, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %6734 to i64*
  %6735 = load i64, i64* %RCX.i68
  %6736 = load i64, i64* %PC.i67
  %6737 = add i64 %6736, 4
  store i64 %6737, i64* %PC.i67
  %6738 = shl i64 %6735, 3
  %6739 = icmp slt i64 %6738, 0
  %6740 = shl i64 %6738, 1
  store i64 %6740, i64* %RCX.i68, align 8
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6742 = zext i1 %6739 to i8
  store i8 %6742, i8* %6741, align 1
  %6743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6744 = trunc i64 %6740 to i32
  %6745 = and i32 %6744, 254
  %6746 = call i32 @llvm.ctpop.i32(i32 %6745)
  %6747 = trunc i32 %6746 to i8
  %6748 = and i8 %6747, 1
  %6749 = xor i8 %6748, 1
  store i8 %6749, i8* %6743, align 1
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6750, align 1
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6752 = icmp eq i64 %6740, 0
  %6753 = zext i1 %6752 to i8
  store i8 %6753, i8* %6751, align 1
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6755 = lshr i64 %6740, 63
  %6756 = trunc i64 %6755 to i8
  store i8 %6756, i8* %6754, align 1
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6757, align 1
  store %struct.Memory* %loadMem_4126ac, %struct.Memory** %MEMORY
  %loadMem_4126b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6759 = getelementptr inbounds %struct.GPR, %struct.GPR* %6758, i32 0, i32 33
  %6760 = getelementptr inbounds %struct.Reg, %struct.Reg* %6759, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %6760 to i64*
  %6761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6762 = getelementptr inbounds %struct.GPR, %struct.GPR* %6761, i32 0, i32 1
  %6763 = getelementptr inbounds %struct.Reg, %struct.Reg* %6762, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %6763 to i64*
  %6764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6765 = getelementptr inbounds %struct.GPR, %struct.GPR* %6764, i32 0, i32 5
  %6766 = getelementptr inbounds %struct.Reg, %struct.Reg* %6765, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %6766 to i64*
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 7
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %RDX.i66 = bitcast %union.anon* %6769 to i64*
  %6770 = load i64, i64* %RAX.i64
  %6771 = load i64, i64* %RCX.i65
  %6772 = add i64 %6770, 816
  %6773 = add i64 %6772, %6771
  %6774 = load i64, i64* %PC.i63
  %6775 = add i64 %6774, 8
  store i64 %6775, i64* %PC.i63
  store i64 %6773, i64* %RDX.i66, align 8
  store %struct.Memory* %loadMem_4126b0, %struct.Memory** %MEMORY
  %loadMem_4126b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6777 = getelementptr inbounds %struct.GPR, %struct.GPR* %6776, i32 0, i32 33
  %6778 = getelementptr inbounds %struct.Reg, %struct.Reg* %6777, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %6778 to i64*
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6780 = getelementptr inbounds %struct.GPR, %struct.GPR* %6779, i32 0, i32 9
  %6781 = getelementptr inbounds %struct.Reg, %struct.Reg* %6780, i32 0, i32 0
  %RSI.i62 = bitcast %union.anon* %6781 to i64*
  %6782 = load i64, i64* %PC.i61
  %6783 = add i64 %6782, 5
  store i64 %6783, i64* %PC.i61
  store i64 1, i64* %RSI.i62, align 8
  store %struct.Memory* %loadMem_4126b8, %struct.Memory** %MEMORY
  %loadMem1_4126bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6785 = getelementptr inbounds %struct.GPR, %struct.GPR* %6784, i32 0, i32 33
  %6786 = getelementptr inbounds %struct.Reg, %struct.Reg* %6785, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %6786 to i64*
  %6787 = load i64, i64* %PC.i60
  %6788 = add i64 %6787, -68893
  %6789 = load i64, i64* %PC.i60
  %6790 = add i64 %6789, 5
  %6791 = load i64, i64* %PC.i60
  %6792 = add i64 %6791, 5
  store i64 %6792, i64* %PC.i60
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6794 = load i64, i64* %6793, align 8
  %6795 = add i64 %6794, -8
  %6796 = inttoptr i64 %6795 to i64*
  store i64 %6790, i64* %6796
  store i64 %6795, i64* %6793, align 8
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6788, i64* %6797, align 8
  store %struct.Memory* %loadMem1_4126bd, %struct.Memory** %MEMORY
  %loadMem2_4126bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4126bd = load i64, i64* %3
  %call2_4126bd = call %struct.Memory* @sub_4019a0.biari_encode_symbol(%struct.State* %0, i64 %loadPC_4126bd, %struct.Memory* %loadMem2_4126bd)
  store %struct.Memory* %call2_4126bd, %struct.Memory** %MEMORY
  %loadMem_4126c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6799 = getelementptr inbounds %struct.GPR, %struct.GPR* %6798, i32 0, i32 33
  %6800 = getelementptr inbounds %struct.Reg, %struct.Reg* %6799, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %6800 to i64*
  %6801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6802 = getelementptr inbounds %struct.GPR, %struct.GPR* %6801, i32 0, i32 9
  %6803 = getelementptr inbounds %struct.Reg, %struct.Reg* %6802, i32 0, i32 0
  %RSI.i58 = bitcast %union.anon* %6803 to i64*
  %6804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6805 = getelementptr inbounds %struct.GPR, %struct.GPR* %6804, i32 0, i32 15
  %6806 = getelementptr inbounds %struct.Reg, %struct.Reg* %6805, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %6806 to i64*
  %6807 = load i64, i64* %RBP.i59
  %6808 = sub i64 %6807, 40
  %6809 = load i64, i64* %PC.i57
  %6810 = add i64 %6809, 3
  store i64 %6810, i64* %PC.i57
  %6811 = inttoptr i64 %6808 to i32*
  %6812 = load i32, i32* %6811
  %6813 = zext i32 %6812 to i64
  store i64 %6813, i64* %RSI.i58, align 8
  store %struct.Memory* %loadMem_4126c2, %struct.Memory** %MEMORY
  %loadMem_4126c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6815 = getelementptr inbounds %struct.GPR, %struct.GPR* %6814, i32 0, i32 33
  %6816 = getelementptr inbounds %struct.Reg, %struct.Reg* %6815, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6816 to i64*
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 9
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %RSI.i56 = bitcast %union.anon* %6819 to i64*
  %6820 = load i64, i64* %RSI.i56
  %6821 = load i64, i64* %PC.i55
  %6822 = add i64 %6821, 2
  store i64 %6822, i64* %PC.i55
  %6823 = trunc i64 %6820 to i32
  %6824 = add i32 %6823, -1
  %6825 = zext i32 %6824 to i64
  store i64 %6825, i64* %RSI.i56, align 8
  %6826 = and i32 %6824, 255
  %6827 = call i32 @llvm.ctpop.i32(i32 %6826)
  %6828 = trunc i32 %6827 to i8
  %6829 = and i8 %6828, 1
  %6830 = xor i8 %6829, 1
  %6831 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6830, i8* %6831, align 1
  %6832 = xor i32 %6824, %6823
  %6833 = lshr i32 %6832, 4
  %6834 = trunc i32 %6833 to i8
  %6835 = and i8 %6834, 1
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6835, i8* %6836, align 1
  %6837 = icmp eq i32 %6824, 0
  %6838 = zext i1 %6837 to i8
  %6839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6838, i8* %6839, align 1
  %6840 = lshr i32 %6824, 31
  %6841 = trunc i32 %6840 to i8
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6841, i8* %6842, align 1
  %6843 = lshr i32 %6823, 31
  %6844 = xor i32 %6840, %6843
  %6845 = add i32 %6844, %6843
  %6846 = icmp eq i32 %6845, 2
  %6847 = zext i1 %6846 to i8
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6847, i8* %6848, align 1
  store %struct.Memory* %loadMem_4126c5, %struct.Memory** %MEMORY
  %loadMem_4126c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6850 = getelementptr inbounds %struct.GPR, %struct.GPR* %6849, i32 0, i32 33
  %6851 = getelementptr inbounds %struct.Reg, %struct.Reg* %6850, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6851 to i64*
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6853 = getelementptr inbounds %struct.GPR, %struct.GPR* %6852, i32 0, i32 9
  %6854 = getelementptr inbounds %struct.Reg, %struct.Reg* %6853, i32 0, i32 0
  %ESI.i53 = bitcast %union.anon* %6854 to i32*
  %6855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6856 = getelementptr inbounds %struct.GPR, %struct.GPR* %6855, i32 0, i32 15
  %6857 = getelementptr inbounds %struct.Reg, %struct.Reg* %6856, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %6857 to i64*
  %6858 = load i64, i64* %RBP.i54
  %6859 = sub i64 %6858, 40
  %6860 = load i32, i32* %ESI.i53
  %6861 = zext i32 %6860 to i64
  %6862 = load i64, i64* %PC.i52
  %6863 = add i64 %6862, 3
  store i64 %6863, i64* %PC.i52
  %6864 = inttoptr i64 %6859 to i32*
  store i32 %6860, i32* %6864
  store %struct.Memory* %loadMem_4126c7, %struct.Memory** %MEMORY
  %loadMem_4126ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6866 = getelementptr inbounds %struct.GPR, %struct.GPR* %6865, i32 0, i32 33
  %6867 = getelementptr inbounds %struct.Reg, %struct.Reg* %6866, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6867 to i64*
  %6868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6869 = getelementptr inbounds %struct.GPR, %struct.GPR* %6868, i32 0, i32 9
  %6870 = getelementptr inbounds %struct.Reg, %struct.Reg* %6869, i32 0, i32 0
  %RSI.i50 = bitcast %union.anon* %6870 to i64*
  %6871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6872 = getelementptr inbounds %struct.GPR, %struct.GPR* %6871, i32 0, i32 15
  %6873 = getelementptr inbounds %struct.Reg, %struct.Reg* %6872, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6873 to i64*
  %6874 = load i64, i64* %RBP.i51
  %6875 = sub i64 %6874, 60
  %6876 = load i64, i64* %PC.i49
  %6877 = add i64 %6876, 3
  store i64 %6877, i64* %PC.i49
  %6878 = inttoptr i64 %6875 to i32*
  %6879 = load i32, i32* %6878
  %6880 = zext i32 %6879 to i64
  store i64 %6880, i64* %RSI.i50, align 8
  store %struct.Memory* %loadMem_4126ca, %struct.Memory** %MEMORY
  %loadMem_4126cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6882 = getelementptr inbounds %struct.GPR, %struct.GPR* %6881, i32 0, i32 33
  %6883 = getelementptr inbounds %struct.Reg, %struct.Reg* %6882, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6883 to i64*
  %6884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6885 = getelementptr inbounds %struct.GPR, %struct.GPR* %6884, i32 0, i32 9
  %6886 = getelementptr inbounds %struct.Reg, %struct.Reg* %6885, i32 0, i32 0
  %ESI.i47 = bitcast %union.anon* %6886 to i32*
  %6887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6888 = getelementptr inbounds %struct.GPR, %struct.GPR* %6887, i32 0, i32 1
  %6889 = getelementptr inbounds %struct.Reg, %struct.Reg* %6888, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %6889 to i64*
  %6890 = load i32, i32* %ESI.i47
  %6891 = zext i32 %6890 to i64
  %6892 = load i64, i64* %PC.i46
  %6893 = add i64 %6892, 2
  store i64 %6893, i64* %PC.i46
  %6894 = and i64 %6891, 4294967295
  store i64 %6894, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_4126cd, %struct.Memory** %MEMORY
  %loadMem_4126cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6896 = getelementptr inbounds %struct.GPR, %struct.GPR* %6895, i32 0, i32 33
  %6897 = getelementptr inbounds %struct.Reg, %struct.Reg* %6896, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6897 to i64*
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 1
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %6900 to i64*
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6902 = getelementptr inbounds %struct.GPR, %struct.GPR* %6901, i32 0, i32 9
  %6903 = getelementptr inbounds %struct.Reg, %struct.Reg* %6902, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %6903 to i64*
  %6904 = load i64, i64* %RAX.i44
  %6905 = load i64, i64* %RAX.i44
  %6906 = mul i64 %6905, 4
  %6907 = add i64 %6906, %6904
  %6908 = load i64, i64* %PC.i43
  %6909 = add i64 %6908, 3
  store i64 %6909, i64* %PC.i43
  %6910 = and i64 %6907, 4294967295
  store i64 %6910, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_4126cf, %struct.Memory** %MEMORY
  %loadMem_4126d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6912 = getelementptr inbounds %struct.GPR, %struct.GPR* %6911, i32 0, i32 33
  %6913 = getelementptr inbounds %struct.Reg, %struct.Reg* %6912, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6913 to i64*
  %6914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6915 = getelementptr inbounds %struct.GPR, %struct.GPR* %6914, i32 0, i32 9
  %6916 = getelementptr inbounds %struct.Reg, %struct.Reg* %6915, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6916 to i32*
  %6917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6918 = getelementptr inbounds %struct.GPR, %struct.GPR* %6917, i32 0, i32 15
  %6919 = getelementptr inbounds %struct.Reg, %struct.Reg* %6918, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %6919 to i64*
  %6920 = load i64, i64* %RBP.i42
  %6921 = sub i64 %6920, 36
  %6922 = load i32, i32* %ESI.i
  %6923 = zext i32 %6922 to i64
  %6924 = load i64, i64* %PC.i41
  %6925 = add i64 %6924, 3
  store i64 %6925, i64* %PC.i41
  %6926 = inttoptr i64 %6921 to i32*
  store i32 %6922, i32* %6926
  store %struct.Memory* %loadMem_4126d2, %struct.Memory** %MEMORY
  %loadMem_4126d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6928 = getelementptr inbounds %struct.GPR, %struct.GPR* %6927, i32 0, i32 33
  %6929 = getelementptr inbounds %struct.Reg, %struct.Reg* %6928, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %6929 to i64*
  %6930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6931 = getelementptr inbounds %struct.GPR, %struct.GPR* %6930, i32 0, i32 11
  %6932 = getelementptr inbounds %struct.Reg, %struct.Reg* %6931, i32 0, i32 0
  %RDI.i39 = bitcast %union.anon* %6932 to i64*
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 15
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %6935 to i64*
  %6936 = load i64, i64* %RBP.i40
  %6937 = sub i64 %6936, 16
  %6938 = load i64, i64* %PC.i38
  %6939 = add i64 %6938, 4
  store i64 %6939, i64* %PC.i38
  %6940 = inttoptr i64 %6937 to i64*
  %6941 = load i64, i64* %6940
  store i64 %6941, i64* %RDI.i39, align 8
  store %struct.Memory* %loadMem_4126d5, %struct.Memory** %MEMORY
  %loadMem_4126d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 33
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %6944 to i64*
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6946 = getelementptr inbounds %struct.GPR, %struct.GPR* %6945, i32 0, i32 9
  %6947 = getelementptr inbounds %struct.Reg, %struct.Reg* %6946, i32 0, i32 0
  %RSI.i36 = bitcast %union.anon* %6947 to i64*
  %6948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6949 = getelementptr inbounds %struct.GPR, %struct.GPR* %6948, i32 0, i32 15
  %6950 = getelementptr inbounds %struct.Reg, %struct.Reg* %6949, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %6950 to i64*
  %6951 = load i64, i64* %RBP.i37
  %6952 = sub i64 %6951, 40
  %6953 = load i64, i64* %PC.i35
  %6954 = add i64 %6953, 3
  store i64 %6954, i64* %PC.i35
  %6955 = inttoptr i64 %6952 to i32*
  %6956 = load i32, i32* %6955
  %6957 = zext i32 %6956 to i64
  store i64 %6957, i64* %RSI.i36, align 8
  store %struct.Memory* %loadMem_4126d9, %struct.Memory** %MEMORY
  %loadMem_4126dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6959 = getelementptr inbounds %struct.GPR, %struct.GPR* %6958, i32 0, i32 33
  %6960 = getelementptr inbounds %struct.Reg, %struct.Reg* %6959, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6960 to i64*
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6962 = getelementptr inbounds %struct.GPR, %struct.GPR* %6961, i32 0, i32 1
  %6963 = getelementptr inbounds %struct.Reg, %struct.Reg* %6962, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %6963 to i64*
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 15
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %RBP.i34 = bitcast %union.anon* %6966 to i64*
  %6967 = load i64, i64* %RBP.i34
  %6968 = sub i64 %6967, 120
  %6969 = load i64, i64* %PC.i32
  %6970 = add i64 %6969, 4
  store i64 %6970, i64* %PC.i32
  %6971 = inttoptr i64 %6968 to i64*
  %6972 = load i64, i64* %6971
  store i64 %6972, i64* %RAX.i33, align 8
  store %struct.Memory* %loadMem_4126dc, %struct.Memory** %MEMORY
  %loadMem_4126e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 33
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %6975 to i64*
  %6976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6977 = getelementptr inbounds %struct.GPR, %struct.GPR* %6976, i32 0, i32 5
  %6978 = getelementptr inbounds %struct.Reg, %struct.Reg* %6977, i32 0, i32 0
  %RCX.i30 = bitcast %union.anon* %6978 to i64*
  %6979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6980 = getelementptr inbounds %struct.GPR, %struct.GPR* %6979, i32 0, i32 15
  %6981 = getelementptr inbounds %struct.Reg, %struct.Reg* %6980, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %6981 to i64*
  %6982 = load i64, i64* %RBP.i31
  %6983 = sub i64 %6982, 36
  %6984 = load i64, i64* %PC.i29
  %6985 = add i64 %6984, 4
  store i64 %6985, i64* %PC.i29
  %6986 = inttoptr i64 %6983 to i32*
  %6987 = load i32, i32* %6986
  %6988 = sext i32 %6987 to i64
  store i64 %6988, i64* %RCX.i30, align 8
  store %struct.Memory* %loadMem_4126e0, %struct.Memory** %MEMORY
  %loadMem_4126e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6990 = getelementptr inbounds %struct.GPR, %struct.GPR* %6989, i32 0, i32 33
  %6991 = getelementptr inbounds %struct.Reg, %struct.Reg* %6990, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %6991 to i64*
  %6992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6993 = getelementptr inbounds %struct.GPR, %struct.GPR* %6992, i32 0, i32 5
  %6994 = getelementptr inbounds %struct.Reg, %struct.Reg* %6993, i32 0, i32 0
  %RCX.i28 = bitcast %union.anon* %6994 to i64*
  %6995 = load i64, i64* %RCX.i28
  %6996 = load i64, i64* %PC.i27
  %6997 = add i64 %6996, 4
  store i64 %6997, i64* %PC.i27
  %6998 = shl i64 %6995, 3
  %6999 = icmp slt i64 %6998, 0
  %7000 = shl i64 %6998, 1
  store i64 %7000, i64* %RCX.i28, align 8
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7002 = zext i1 %6999 to i8
  store i8 %7002, i8* %7001, align 1
  %7003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7004 = trunc i64 %7000 to i32
  %7005 = and i32 %7004, 254
  %7006 = call i32 @llvm.ctpop.i32(i32 %7005)
  %7007 = trunc i32 %7006 to i8
  %7008 = and i8 %7007, 1
  %7009 = xor i8 %7008, 1
  store i8 %7009, i8* %7003, align 1
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7010, align 1
  %7011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7012 = icmp eq i64 %7000, 0
  %7013 = zext i1 %7012 to i8
  store i8 %7013, i8* %7011, align 1
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7015 = lshr i64 %7000, 63
  %7016 = trunc i64 %7015 to i8
  store i8 %7016, i8* %7014, align 1
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7017, align 1
  store %struct.Memory* %loadMem_4126e4, %struct.Memory** %MEMORY
  %loadMem_4126e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7019 = getelementptr inbounds %struct.GPR, %struct.GPR* %7018, i32 0, i32 33
  %7020 = getelementptr inbounds %struct.Reg, %struct.Reg* %7019, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %7020 to i64*
  %7021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7022 = getelementptr inbounds %struct.GPR, %struct.GPR* %7021, i32 0, i32 1
  %7023 = getelementptr inbounds %struct.Reg, %struct.Reg* %7022, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7023 to i64*
  %7024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7025 = getelementptr inbounds %struct.GPR, %struct.GPR* %7024, i32 0, i32 5
  %7026 = getelementptr inbounds %struct.Reg, %struct.Reg* %7025, i32 0, i32 0
  %RCX.i26 = bitcast %union.anon* %7026 to i64*
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 7
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7029 to i64*
  %7030 = load i64, i64* %RAX.i
  %7031 = load i64, i64* %RCX.i26
  %7032 = add i64 %7030, 976
  %7033 = add i64 %7032, %7031
  %7034 = load i64, i64* %PC.i25
  %7035 = add i64 %7034, 8
  store i64 %7035, i64* %PC.i25
  store i64 %7033, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4126e8, %struct.Memory** %MEMORY
  %loadMem_4126f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7037 = getelementptr inbounds %struct.GPR, %struct.GPR* %7036, i32 0, i32 33
  %7038 = getelementptr inbounds %struct.Reg, %struct.Reg* %7037, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7038 to i64*
  %7039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7040 = getelementptr inbounds %struct.GPR, %struct.GPR* %7039, i32 0, i32 5
  %7041 = getelementptr inbounds %struct.Reg, %struct.Reg* %7040, i32 0, i32 0
  %RCX.i24 = bitcast %union.anon* %7041 to i64*
  %7042 = load i64, i64* %PC.i23
  %7043 = add i64 %7042, 5
  store i64 %7043, i64* %PC.i23
  store i64 3, i64* %RCX.i24, align 8
  store %struct.Memory* %loadMem_4126f0, %struct.Memory** %MEMORY
  %loadMem1_4126f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 33
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7046 to i64*
  %7047 = load i64, i64* %PC.i22
  %7048 = add i64 %7047, 59
  %7049 = load i64, i64* %PC.i22
  %7050 = add i64 %7049, 5
  %7051 = load i64, i64* %PC.i22
  %7052 = add i64 %7051, 5
  store i64 %7052, i64* %PC.i22
  %7053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7054 = load i64, i64* %7053, align 8
  %7055 = add i64 %7054, -8
  %7056 = inttoptr i64 %7055 to i64*
  store i64 %7050, i64* %7056
  store i64 %7055, i64* %7053, align 8
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7048, i64* %7057, align 8
  store %struct.Memory* %loadMem1_4126f5, %struct.Memory** %MEMORY
  %loadMem2_4126f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4126f5 = load i64, i64* %3
  %call2_4126f5 = call %struct.Memory* @sub_412730.unary_exp_golomb_mv_encode(%struct.State* %0, i64 %loadPC_4126f5, %struct.Memory* %loadMem2_4126f5)
  store %struct.Memory* %call2_4126f5, %struct.Memory** %MEMORY
  %loadMem_4126fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 33
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 5
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %7063 to i64*
  %7064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7065 = getelementptr inbounds %struct.GPR, %struct.GPR* %7064, i32 0, i32 15
  %7066 = getelementptr inbounds %struct.Reg, %struct.Reg* %7065, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7066 to i64*
  %7067 = load i64, i64* %RBP.i21
  %7068 = sub i64 %7067, 44
  %7069 = load i64, i64* %PC.i19
  %7070 = add i64 %7069, 3
  store i64 %7070, i64* %PC.i19
  %7071 = inttoptr i64 %7068 to i32*
  %7072 = load i32, i32* %7071
  %7073 = zext i32 %7072 to i64
  store i64 %7073, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_4126fa, %struct.Memory** %MEMORY
  %loadMem_4126fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7075 = getelementptr inbounds %struct.GPR, %struct.GPR* %7074, i32 0, i32 33
  %7076 = getelementptr inbounds %struct.Reg, %struct.Reg* %7075, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7076 to i64*
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7078 = getelementptr inbounds %struct.GPR, %struct.GPR* %7077, i32 0, i32 5
  %7079 = getelementptr inbounds %struct.Reg, %struct.Reg* %7078, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %7079 to i64*
  %7080 = load i64, i64* %RCX.i18
  %7081 = load i64, i64* %PC.i17
  %7082 = add i64 %7081, 3
  store i64 %7082, i64* %PC.i17
  %7083 = and i64 %7080, 4294967295
  %7084 = lshr i64 %7083, 30
  %7085 = trunc i64 %7084 to i8
  %7086 = and i8 %7085, 1
  %7087 = lshr i64 %7084, 1
  %7088 = trunc i64 %7087 to i32
  %7089 = and i32 %7088, 2147483647
  %7090 = zext i32 %7089 to i64
  store i64 %7090, i64* %RCX.i18, align 8
  %7091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7086, i8* %7091, align 1
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %7093 = and i32 %7088, 255
  %7094 = call i32 @llvm.ctpop.i32(i32 %7093)
  %7095 = trunc i32 %7094 to i8
  %7096 = and i8 %7095, 1
  %7097 = xor i8 %7096, 1
  store i8 %7097, i8* %7092, align 1
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7098, align 1
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7100 = icmp eq i32 %7089, 0
  %7101 = zext i1 %7100 to i8
  store i8 %7101, i8* %7099, align 1
  %7102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %7102, align 1
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %7103, align 1
  store %struct.Memory* %loadMem_4126fd, %struct.Memory** %MEMORY
  %loadMem_412700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7105 = getelementptr inbounds %struct.GPR, %struct.GPR* %7104, i32 0, i32 33
  %7106 = getelementptr inbounds %struct.Reg, %struct.Reg* %7105, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %7106 to i64*
  %7107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7108 = getelementptr inbounds %struct.GPR, %struct.GPR* %7107, i32 0, i32 5
  %7109 = getelementptr inbounds %struct.Reg, %struct.Reg* %7108, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %7109 to i32*
  %7110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7111 = getelementptr inbounds %struct.GPR, %struct.GPR* %7110, i32 0, i32 15
  %7112 = getelementptr inbounds %struct.Reg, %struct.Reg* %7111, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %7112 to i64*
  %7113 = load i64, i64* %RBP.i16
  %7114 = sub i64 %7113, 52
  %7115 = load i32, i32* %ECX.i
  %7116 = zext i32 %7115 to i64
  %7117 = load i64, i64* %PC.i15
  %7118 = add i64 %7117, 3
  store i64 %7118, i64* %PC.i15
  %7119 = inttoptr i64 %7114 to i32*
  store i32 %7115, i32* %7119
  store %struct.Memory* %loadMem_412700, %struct.Memory** %MEMORY
  %loadMem_412703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7121 = getelementptr inbounds %struct.GPR, %struct.GPR* %7120, i32 0, i32 33
  %7122 = getelementptr inbounds %struct.Reg, %struct.Reg* %7121, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7122 to i64*
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7124 = getelementptr inbounds %struct.GPR, %struct.GPR* %7123, i32 0, i32 11
  %7125 = getelementptr inbounds %struct.Reg, %struct.Reg* %7124, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %7125 to i64*
  %7126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7127 = getelementptr inbounds %struct.GPR, %struct.GPR* %7126, i32 0, i32 15
  %7128 = getelementptr inbounds %struct.Reg, %struct.Reg* %7127, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %7128 to i64*
  %7129 = load i64, i64* %RBP.i14
  %7130 = sub i64 %7129, 16
  %7131 = load i64, i64* %PC.i13
  %7132 = add i64 %7131, 4
  store i64 %7132, i64* %PC.i13
  %7133 = inttoptr i64 %7130 to i64*
  %7134 = load i64, i64* %7133
  store i64 %7134, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_412703, %struct.Memory** %MEMORY
  %loadMem_412707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 33
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %7137 to i64*
  %7138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7139 = getelementptr inbounds %struct.GPR, %struct.GPR* %7138, i32 0, i32 17
  %7140 = getelementptr inbounds %struct.Reg, %struct.Reg* %7139, i32 0, i32 0
  %7141 = bitcast %union.anon* %7140 to %struct.anon.2*
  %R8B.i11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7141, i32 0, i32 0
  %7142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7143 = getelementptr inbounds %struct.GPR, %struct.GPR* %7142, i32 0, i32 15
  %7144 = getelementptr inbounds %struct.Reg, %struct.Reg* %7143, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %7144 to i64*
  %7145 = load i64, i64* %RBP.i12
  %7146 = sub i64 %7145, 52
  %7147 = load i64, i64* %PC.i10
  %7148 = add i64 %7147, 4
  store i64 %7148, i64* %PC.i10
  %7149 = inttoptr i64 %7146 to i8*
  %7150 = load i8, i8* %7149
  store i8 %7150, i8* %R8B.i11, align 1
  store %struct.Memory* %loadMem_412707, %struct.Memory** %MEMORY
  %loadMem_41270b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7152 = getelementptr inbounds %struct.GPR, %struct.GPR* %7151, i32 0, i32 33
  %7153 = getelementptr inbounds %struct.Reg, %struct.Reg* %7152, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7153 to i64*
  %7154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7155 = getelementptr inbounds %struct.GPR, %struct.GPR* %7154, i32 0, i32 17
  %7156 = getelementptr inbounds %struct.Reg, %struct.Reg* %7155, i32 0, i32 0
  %7157 = bitcast %union.anon* %7156 to %struct.anon.2*
  %R8B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7157, i32 0, i32 0
  %7158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7159 = getelementptr inbounds %struct.GPR, %struct.GPR* %7158, i32 0, i32 5
  %7160 = getelementptr inbounds %struct.Reg, %struct.Reg* %7159, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7160 to i64*
  %7161 = load i8, i8* %R8B.i
  %7162 = zext i8 %7161 to i64
  %7163 = load i64, i64* %PC.i9
  %7164 = add i64 %7163, 4
  store i64 %7164, i64* %PC.i9
  %7165 = and i64 %7162, 255
  store i64 %7165, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_41270b, %struct.Memory** %MEMORY
  %loadMem_41270f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7167 = getelementptr inbounds %struct.GPR, %struct.GPR* %7166, i32 0, i32 33
  %7168 = getelementptr inbounds %struct.Reg, %struct.Reg* %7167, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7168 to i64*
  %7169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7170 = getelementptr inbounds %struct.GPR, %struct.GPR* %7169, i32 0, i32 5
  %7171 = getelementptr inbounds %struct.Reg, %struct.Reg* %7170, i32 0, i32 0
  %CX.i = bitcast %union.anon* %7171 to i16*
  %7172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7173 = getelementptr inbounds %struct.GPR, %struct.GPR* %7172, i32 0, i32 19
  %7174 = getelementptr inbounds %struct.Reg, %struct.Reg* %7173, i32 0, i32 0
  %R9W.i8 = bitcast %union.anon* %7174 to i16*
  %7175 = load i16, i16* %CX.i
  %7176 = zext i16 %7175 to i64
  %7177 = load i64, i64* %PC.i7
  %7178 = add i64 %7177, 4
  store i64 %7178, i64* %PC.i7
  store i16 %7175, i16* %R9W.i8, align 2
  store %struct.Memory* %loadMem_41270f, %struct.Memory** %MEMORY
  %loadMem_412713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7180 = getelementptr inbounds %struct.GPR, %struct.GPR* %7179, i32 0, i32 33
  %7181 = getelementptr inbounds %struct.Reg, %struct.Reg* %7180, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7181 to i64*
  %7182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7183 = getelementptr inbounds %struct.GPR, %struct.GPR* %7182, i32 0, i32 19
  %7184 = getelementptr inbounds %struct.Reg, %struct.Reg* %7183, i32 0, i32 0
  %R9W.i = bitcast %union.anon* %7184 to i16*
  %7185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7186 = getelementptr inbounds %struct.GPR, %struct.GPR* %7185, i32 0, i32 9
  %7187 = getelementptr inbounds %struct.Reg, %struct.Reg* %7186, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7187 to i64*
  %7188 = load i16, i16* %R9W.i
  %7189 = zext i16 %7188 to i64
  %7190 = load i64, i64* %PC.i6
  %7191 = add i64 %7190, 4
  store i64 %7191, i64* %PC.i6
  %7192 = trunc i64 %7189 to i32
  %7193 = shl i32 %7192, 16
  %7194 = ashr exact i32 %7193, 16
  %7195 = zext i32 %7194 to i64
  store i64 %7195, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_412713, %struct.Memory** %MEMORY
  %loadMem1_412717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7197 = getelementptr inbounds %struct.GPR, %struct.GPR* %7196, i32 0, i32 33
  %7198 = getelementptr inbounds %struct.Reg, %struct.Reg* %7197, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7198 to i64*
  %7199 = load i64, i64* %PC.i5
  %7200 = add i64 %7199, -67895
  %7201 = load i64, i64* %PC.i5
  %7202 = add i64 %7201, 5
  %7203 = load i64, i64* %PC.i5
  %7204 = add i64 %7203, 5
  store i64 %7204, i64* %PC.i5
  %7205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7206 = load i64, i64* %7205, align 8
  %7207 = add i64 %7206, -8
  %7208 = inttoptr i64 %7207 to i64*
  store i64 %7202, i64* %7208
  store i64 %7207, i64* %7205, align 8
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7200, i64* %7209, align 8
  store %struct.Memory* %loadMem1_412717, %struct.Memory** %MEMORY
  %loadMem2_412717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_412717 = load i64, i64* %3
  %call2_412717 = call %struct.Memory* @sub_401de0.biari_encode_symbol_eq_prob(%struct.State* %0, i64 %loadPC_412717, %struct.Memory* %loadMem2_412717)
  store %struct.Memory* %call2_412717, %struct.Memory** %MEMORY
  br label %block_.L_41271c

block_.L_41271c:                                  ; preds = %block_.L_4126a0, %block_412678
  %loadMem_41271c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7211 = getelementptr inbounds %struct.GPR, %struct.GPR* %7210, i32 0, i32 33
  %7212 = getelementptr inbounds %struct.Reg, %struct.Reg* %7211, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7212 to i64*
  %7213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7214 = getelementptr inbounds %struct.GPR, %struct.GPR* %7213, i32 0, i32 13
  %7215 = getelementptr inbounds %struct.Reg, %struct.Reg* %7214, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7215 to i64*
  %7216 = load i64, i64* %RSP.i
  %7217 = load i64, i64* %PC.i4
  %7218 = add i64 %7217, 7
  store i64 %7218, i64* %PC.i4
  %7219 = add i64 160, %7216
  store i64 %7219, i64* %RSP.i, align 8
  %7220 = icmp ult i64 %7219, %7216
  %7221 = icmp ult i64 %7219, 160
  %7222 = or i1 %7220, %7221
  %7223 = zext i1 %7222 to i8
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7223, i8* %7224, align 1
  %7225 = trunc i64 %7219 to i32
  %7226 = and i32 %7225, 255
  %7227 = call i32 @llvm.ctpop.i32(i32 %7226)
  %7228 = trunc i32 %7227 to i8
  %7229 = and i8 %7228, 1
  %7230 = xor i8 %7229, 1
  %7231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7230, i8* %7231, align 1
  %7232 = xor i64 160, %7216
  %7233 = xor i64 %7232, %7219
  %7234 = lshr i64 %7233, 4
  %7235 = trunc i64 %7234 to i8
  %7236 = and i8 %7235, 1
  %7237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7236, i8* %7237, align 1
  %7238 = icmp eq i64 %7219, 0
  %7239 = zext i1 %7238 to i8
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7239, i8* %7240, align 1
  %7241 = lshr i64 %7219, 63
  %7242 = trunc i64 %7241 to i8
  %7243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7242, i8* %7243, align 1
  %7244 = lshr i64 %7216, 63
  %7245 = xor i64 %7241, %7244
  %7246 = add i64 %7245, %7241
  %7247 = icmp eq i64 %7246, 2
  %7248 = zext i1 %7247 to i8
  %7249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7248, i8* %7249, align 1
  store %struct.Memory* %loadMem_41271c, %struct.Memory** %MEMORY
  %loadMem_412723 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7251 = getelementptr inbounds %struct.GPR, %struct.GPR* %7250, i32 0, i32 33
  %7252 = getelementptr inbounds %struct.Reg, %struct.Reg* %7251, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7252 to i64*
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7254 = getelementptr inbounds %struct.GPR, %struct.GPR* %7253, i32 0, i32 15
  %7255 = getelementptr inbounds %struct.Reg, %struct.Reg* %7254, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7255 to i64*
  %7256 = load i64, i64* %PC.i2
  %7257 = add i64 %7256, 1
  store i64 %7257, i64* %PC.i2
  %7258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7259 = load i64, i64* %7258, align 8
  %7260 = add i64 %7259, 8
  %7261 = inttoptr i64 %7259 to i64*
  %7262 = load i64, i64* %7261
  store i64 %7262, i64* %RBP.i3, align 8
  store i64 %7260, i64* %7258, align 8
  store %struct.Memory* %loadMem_412723, %struct.Memory** %MEMORY
  %loadMem_412724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7264 = getelementptr inbounds %struct.GPR, %struct.GPR* %7263, i32 0, i32 33
  %7265 = getelementptr inbounds %struct.Reg, %struct.Reg* %7264, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7265 to i64*
  %7266 = load i64, i64* %PC.i1
  %7267 = add i64 %7266, 1
  store i64 %7267, i64* %PC.i1
  %7268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7270 = load i64, i64* %7269, align 8
  %7271 = inttoptr i64 %7270 to i64*
  %7272 = load i64, i64* %7271
  store i64 %7272, i64* %7268, align 8
  %7273 = add i64 %7270, 8
  store i64 %7273, i64* %7269, align 8
  store %struct.Memory* %loadMem_412724, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_412724
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

define %struct.Memory* @routine_subq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 160
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 160
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
  %23 = xor i64 160, %9
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

define %struct.Memory* @routine_movl__0xffffffff___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__r8d___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = xor i64 %13, %11
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  store i64 %18, i64* %9, align 8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %19, align 1
  %20 = and i32 %17, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %17, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %17, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %33, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x58__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
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

define %struct.Memory* @routine_movl_0x48__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 72
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

define %struct.Memory* @routine_movl_0x4c__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 76
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

define %struct.Memory* @routine_movl_0x8__rsi____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RAX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = icmp eq i32 %13, 0
  %22 = zext i1 %21 to i8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %22, i8* %23, align 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %24, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %26, align 1
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

define %struct.Memory* @routine_sarl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = shl i64 %9, 32
  %13 = ashr i64 %12, 33
  %14 = trunc i64 %9 to i8
  %15 = and i8 %14, 1
  %16 = trunc i64 %13 to i32
  %17 = and i64 %13, 4294967295
  store i64 %17, i64* %RAX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %18, align 1
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  store i8 %24, i8* %19, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %27 = icmp eq i32 %16, 0
  %28 = zext i1 %27 to i8
  store i8 %28, i8* %26, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %30 = lshr i32 %16, 31
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %29, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x3750__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x20__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 120
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x3758__rsi____rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq_0xc__rdi____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x278___rdi___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 632, %15
  %17 = trunc i128 %16 to i64
  store i64 %17, i64* %RDI, align 8
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

define %struct.Memory* @routine_addq__rdi___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RDI
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = add i64 %13, %12
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_movq__rsi__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rsi____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_movl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.getLuma4x4Neighbour(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0xffffffff___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4294967295, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x70__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i64 %13, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6cb900___r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__r10____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 112
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

define %struct.Memory* @routine_je_.L_412404(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb900___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x3758__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x278___rcx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = mul i128 632, %15
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

define %struct.Memory* @routine_addq__0x4c___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 76, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 76
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
  %25 = xor i64 76, %9
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x7___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 6
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

define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_4122de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x6cb900___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  store i64 %10, i64* %PC
  %11 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x3758__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14168
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x6c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_imulq__0x278___rdx___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 7
  store i64 %11, i64* %PC
  %12 = sext i64 %9 to i128
  %13 = and i128 %12, -18446744073709551616
  %14 = zext i64 %9 to i128
  %15 = or i128 %13, %14
  %16 = mul i128 632, %15
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

define %struct.Memory* @routine_addq__0x4c___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 76, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 76
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
  %25 = xor i64 76, %9
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x7___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 6
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

define %struct.Memory* @routine_movslq_MINUS0x64__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x5___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 4
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

define %struct.Memory* @routine_movslq_MINUS0x68__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x3___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 2
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

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl___rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = load i64, i64* %RDX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 3
  store i64 %21, i64* %PC
  %22 = trunc i64 %15 to i32
  %23 = inttoptr i64 %19 to i32*
  %24 = load i32, i32* %23
  %25 = sub i32 %22, %24
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %RAX, align 8
  %27 = icmp ult i32 %22, %24
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %25, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %24, %22
  %37 = xor i32 %36, %25
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %25, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %25, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %22, 31
  %49 = lshr i32 %24, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
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

define %struct.Memory* @routine_jmpq_.L_41232d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x84__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 132
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72400
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

define %struct.Memory* @routine_je_.L_4123ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 60
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

define %struct.Memory* @routine_jne_.L_4123ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x80__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 128
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0x214__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 532
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

define %struct.Memory* @routine_jne_.L_41239e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x214__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 532
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
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

define %struct.Memory* @routine_shll__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = shl i32 %12, 1
  %14 = icmp slt i32 %12, 0
  %15 = icmp slt i32 %13, 0
  %16 = xor i1 %14, %15
  %17 = zext i32 %13 to i64
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4123fa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4123f5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x20__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl_MINUS0x88__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_jmpq_.L_4123ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_41240b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4125e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4124bb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x54__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4c__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 76
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x50__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41250a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x8c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x8c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 140
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_4125dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4125dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_41257b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4125d7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_4125d2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x90__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4125dc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4125e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 32
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

define %struct.Memory* @routine_cmpl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 3
  %14 = icmp ult i32 %9, 3
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
  %23 = xor i64 3, %10
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

define %struct.Memory* @routine_jge_.L_412606(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_imull__0x5__MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 5
  %20 = trunc i64 %19 to i32
  %21 = and i64 %19, 4294967295
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_41262e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x20__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 32
  %16 = icmp ult i32 %14, 32
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
  %25 = xor i32 %14, 32
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

define %struct.Memory* @routine_jle_.L_41261f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 3, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 3
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
  %26 = xor i64 3, %9
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

define %struct.Memory* @routine_jmpq_.L_412629(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl__0x2___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 2, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x24__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 24
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_41265c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 44
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_412665(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x94__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4126a0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x78__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x330___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 816, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 816
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
  %25 = xor i64 816, %9
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

define %struct.Memory* @routine_shlq__0x4___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 3
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

define %struct.Memory* @routine_callq_.biari_encode_symbol(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_41271c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_leaq_0x330__rax__rcx_1____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %15, 816
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_decl__esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = add i64 %10, 2
  store i64 %11, i64* %PC
  %12 = trunc i64 %9 to i32
  %13 = add i32 %12, -1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = and i32 %13, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = xor i32 %13, %12
  %22 = lshr i32 %21, 4
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %24, i8* %25, align 1
  %26 = icmp eq i32 %13, 0
  %27 = zext i1 %26 to i8
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %27, i8* %28, align 1
  %29 = lshr i32 %13, 31
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %12, 31
  %33 = xor i32 %29, %32
  %34 = add i32 %33, %32
  %35 = icmp eq i32 %34, 2
  %36 = zext i1 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %36, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__esi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 60
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_leal___rax__rax_4____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, %12
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = and i64 %15, 4294967295
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_leaq_0x3d0__rax__rcx_1____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %15, 976
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.unary_exp_golomb_mv_encode(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_shrl__0x1f___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 30
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %22 = and i32 %17, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  store i8 %26, i8* %21, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %29 = icmp eq i32 %18, 0
  %30 = zext i1 %29 to i8
  store i8 %30, i8* %28, align 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %32, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x34__rbp____r8b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %R8B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl__r8b___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 5
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RCX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %R8B
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw__cx___r9w(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %CX = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9W = bitcast %union.anon* %11 to i16*
  %12 = load i16, i16* %CX
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  store i16 %12, i16* %R9W, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movswl__r9w___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9W = bitcast %union.anon* %8 to i16*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i16, i16* %R9W
  %13 = zext i16 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = trunc i64 %13 to i32
  %17 = shl i32 %16, 16
  %18 = ashr exact i32 %17, 16
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.biari_encode_symbol_eq_prob(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xa0___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 160, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 160
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
  %25 = xor i64 160, %9
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
