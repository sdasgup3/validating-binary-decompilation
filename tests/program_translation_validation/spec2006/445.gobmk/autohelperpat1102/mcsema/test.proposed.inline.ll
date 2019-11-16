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

declare %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_478110.play_attack_defend_n(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @autohelperpat1102(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4de620 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4de620, %struct.Memory** %MEMORY
  %loadMem_4de621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i141 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i142 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i143 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i142
  %27 = load i64, i64* %PC.i141
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i141
  store i64 %26, i64* %RBP.i143, align 8
  store %struct.Memory* %loadMem_4de621, %struct.Memory** %MEMORY
  %loadMem_4de624 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i140 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i140
  %36 = load i64, i64* %PC.i139
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i139
  %38 = sub i64 %35, 64
  store i64 %38, i64* %RSP.i140, align 8
  %39 = icmp ult i64 %35, 64
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
  %49 = xor i64 64, %35
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
  store %struct.Memory* %loadMem_4de624, %struct.Memory** %MEMORY
  %loadMem_4de628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RAX.i138 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RAX.i138
  %77 = load i32, i32* %EAX.i137
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC.i136
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC.i136
  %81 = xor i64 %78, %76
  %82 = trunc i64 %81 to i32
  %83 = and i64 %81, 4294967295
  store i64 %83, i64* %RAX.i138, align 8
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %84, align 1
  %85 = and i32 %82, 255
  %86 = call i32 @llvm.ctpop.i32(i32 %85)
  %87 = trunc i32 %86 to i8
  %88 = and i8 %87, 1
  %89 = xor i8 %88, 1
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %89, i8* %90, align 1
  %91 = icmp eq i32 %82, 0
  %92 = zext i1 %91 to i8
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %92, i8* %93, align 1
  %94 = lshr i32 %82, 31
  %95 = trunc i32 %94 to i8
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %95, i8* %96, align 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  store %struct.Memory* %loadMem_4de628, %struct.Memory** %MEMORY
  %loadMem_4de62a = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 17
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %R8D.i135 = bitcast %union.anon* %104 to i32*
  %105 = bitcast i32* %R8D.i135 to i64*
  %106 = load i64, i64* %PC.i134
  %107 = add i64 %106, 6
  store i64 %107, i64* %PC.i134
  store i64 2, i64* %105, align 8
  store %struct.Memory* %loadMem_4de62a, %struct.Memory** %MEMORY
  %loadMem_4de630 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 11
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %113 to i32*
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 15
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %116 to i64*
  %117 = load i64, i64* %RBP.i133
  %118 = sub i64 %117, 4
  %119 = load i32, i32* %EDI.i
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %PC.i132
  %122 = add i64 %121, 3
  store i64 %122, i64* %PC.i132
  %123 = inttoptr i64 %118 to i32*
  store i32 %119, i32* %123
  store %struct.Memory* %loadMem_4de630, %struct.Memory** %MEMORY
  %loadMem_4de633 = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 9
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %ESI.i130 = bitcast %union.anon* %129 to i32*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 15
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %132 to i64*
  %133 = load i64, i64* %RBP.i131
  %134 = sub i64 %133, 8
  %135 = load i32, i32* %ESI.i130
  %136 = zext i32 %135 to i64
  %137 = load i64, i64* %PC.i129
  %138 = add i64 %137, 3
  store i64 %138, i64* %PC.i129
  %139 = inttoptr i64 %134 to i32*
  store i32 %135, i32* %139
  store %struct.Memory* %loadMem_4de633, %struct.Memory** %MEMORY
  %loadMem_4de636 = load %struct.Memory*, %struct.Memory** %MEMORY
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 33
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 7
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %EDX.i127 = bitcast %union.anon* %145 to i32*
  %146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %147 = getelementptr inbounds %struct.GPR, %struct.GPR* %146, i32 0, i32 15
  %148 = getelementptr inbounds %struct.Reg, %struct.Reg* %147, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %148 to i64*
  %149 = load i64, i64* %RBP.i128
  %150 = sub i64 %149, 12
  %151 = load i32, i32* %EDX.i127
  %152 = zext i32 %151 to i64
  %153 = load i64, i64* %PC.i126
  %154 = add i64 %153, 3
  store i64 %154, i64* %PC.i126
  %155 = inttoptr i64 %150 to i32*
  store i32 %151, i32* %155
  store %struct.Memory* %loadMem_4de636, %struct.Memory** %MEMORY
  %loadMem_4de639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 33
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 5
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %ECX.i124 = bitcast %union.anon* %161 to i32*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 15
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %164 to i64*
  %165 = load i64, i64* %RBP.i125
  %166 = sub i64 %165, 16
  %167 = load i32, i32* %ECX.i124
  %168 = zext i32 %167 to i64
  %169 = load i64, i64* %PC.i123
  %170 = add i64 %169, 3
  store i64 %170, i64* %PC.i123
  %171 = inttoptr i64 %166 to i32*
  store i32 %167, i32* %171
  store %struct.Memory* %loadMem_4de639, %struct.Memory** %MEMORY
  %loadMem_4de63c = load %struct.Memory*, %struct.Memory** %MEMORY
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 33
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 19
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %R9.i122 = bitcast %union.anon* %180 to i64*
  %181 = load i64, i64* %RBP.i121
  %182 = sub i64 %181, 4
  %183 = load i64, i64* %PC.i120
  %184 = add i64 %183, 4
  store i64 %184, i64* %PC.i120
  %185 = inttoptr i64 %182 to i32*
  %186 = load i32, i32* %185
  %187 = sext i32 %186 to i64
  store i64 %187, i64* %R9.i122, align 8
  store %struct.Memory* %loadMem_4de63c, %struct.Memory** %MEMORY
  %loadMem_4de640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 33
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %190 to i64*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 19
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %R9.i119 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %R9.i119
  %198 = mul i64 %197, 4
  %199 = add i64 %198, 11904816
  %200 = load i64, i64* %PC.i117
  %201 = add i64 %200, 8
  store i64 %201, i64* %PC.i117
  %202 = inttoptr i64 %199 to i32*
  %203 = load i32, i32* %202
  %204 = zext i32 %203 to i64
  store i64 %204, i64* %RCX.i118, align 8
  store %struct.Memory* %loadMem_4de640, %struct.Memory** %MEMORY
  %loadMem_4de648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 33
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 5
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RCX.i115 = bitcast %union.anon* %210 to i64*
  %211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %212 = getelementptr inbounds %struct.GPR, %struct.GPR* %211, i32 0, i32 15
  %213 = getelementptr inbounds %struct.Reg, %struct.Reg* %212, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %213 to i64*
  %214 = load i64, i64* %RCX.i115
  %215 = load i64, i64* %RBP.i116
  %216 = sub i64 %215, 8
  %217 = load i64, i64* %PC.i114
  %218 = add i64 %217, 3
  store i64 %218, i64* %PC.i114
  %219 = trunc i64 %214 to i32
  %220 = inttoptr i64 %216 to i32*
  %221 = load i32, i32* %220
  %222 = add i32 %221, %219
  %223 = zext i32 %222 to i64
  store i64 %223, i64* %RCX.i115, align 8
  %224 = icmp ult i32 %222, %219
  %225 = icmp ult i32 %222, %221
  %226 = or i1 %224, %225
  %227 = zext i1 %226 to i8
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %227, i8* %228, align 1
  %229 = and i32 %222, 255
  %230 = call i32 @llvm.ctpop.i32(i32 %229)
  %231 = trunc i32 %230 to i8
  %232 = and i8 %231, 1
  %233 = xor i8 %232, 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %233, i8* %234, align 1
  %235 = xor i32 %221, %219
  %236 = xor i32 %235, %222
  %237 = lshr i32 %236, 4
  %238 = trunc i32 %237 to i8
  %239 = and i8 %238, 1
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %239, i8* %240, align 1
  %241 = icmp eq i32 %222, 0
  %242 = zext i1 %241 to i8
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %242, i8* %243, align 1
  %244 = lshr i32 %222, 31
  %245 = trunc i32 %244 to i8
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %245, i8* %246, align 1
  %247 = lshr i32 %219, 31
  %248 = lshr i32 %221, 31
  %249 = xor i32 %244, %247
  %250 = xor i32 %244, %248
  %251 = add i32 %249, %250
  %252 = icmp eq i32 %251, 2
  %253 = zext i1 %252 to i8
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %253, i8* %254, align 1
  store %struct.Memory* %loadMem_4de648, %struct.Memory** %MEMORY
  %loadMem_4de64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 33
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 5
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %ECX.i112 = bitcast %union.anon* %260 to i32*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 15
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %RBP.i113
  %265 = sub i64 %264, 20
  %266 = load i32, i32* %ECX.i112
  %267 = zext i32 %266 to i64
  %268 = load i64, i64* %PC.i111
  %269 = add i64 %268, 3
  store i64 %269, i64* %PC.i111
  %270 = inttoptr i64 %265 to i32*
  store i32 %266, i32* %270
  store %struct.Memory* %loadMem_4de64b, %struct.Memory** %MEMORY
  %loadMem_4de64e = load %struct.Memory*, %struct.Memory** %MEMORY
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 33
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 15
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %276 to i64*
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 19
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %R9.i110 = bitcast %union.anon* %279 to i64*
  %280 = load i64, i64* %RBP.i109
  %281 = sub i64 %280, 4
  %282 = load i64, i64* %PC.i108
  %283 = add i64 %282, 4
  store i64 %283, i64* %PC.i108
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284
  %286 = sext i32 %285 to i64
  store i64 %286, i64* %R9.i110, align 8
  store %struct.Memory* %loadMem_4de64e, %struct.Memory** %MEMORY
  %loadMem_4de652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %288 = getelementptr inbounds %struct.GPR, %struct.GPR* %287, i32 0, i32 33
  %289 = getelementptr inbounds %struct.Reg, %struct.Reg* %288, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %289 to i64*
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %291 = getelementptr inbounds %struct.GPR, %struct.GPR* %290, i32 0, i32 5
  %292 = getelementptr inbounds %struct.Reg, %struct.Reg* %291, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %292 to i64*
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 19
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %R9.i107 = bitcast %union.anon* %295 to i64*
  %296 = load i64, i64* %R9.i107
  %297 = mul i64 %296, 4
  %298 = add i64 %297, 11906032
  %299 = load i64, i64* %PC.i105
  %300 = add i64 %299, 8
  store i64 %300, i64* %PC.i105
  %301 = inttoptr i64 %298 to i32*
  %302 = load i32, i32* %301
  %303 = zext i32 %302 to i64
  store i64 %303, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_4de652, %struct.Memory** %MEMORY
  %loadMem_4de65a = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RCX.i103
  %314 = load i64, i64* %RBP.i104
  %315 = sub i64 %314, 8
  %316 = load i64, i64* %PC.i102
  %317 = add i64 %316, 3
  store i64 %317, i64* %PC.i102
  %318 = trunc i64 %313 to i32
  %319 = inttoptr i64 %315 to i32*
  %320 = load i32, i32* %319
  %321 = add i32 %320, %318
  %322 = zext i32 %321 to i64
  store i64 %322, i64* %RCX.i103, align 8
  %323 = icmp ult i32 %321, %318
  %324 = icmp ult i32 %321, %320
  %325 = or i1 %323, %324
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %326, i8* %327, align 1
  %328 = and i32 %321, 255
  %329 = call i32 @llvm.ctpop.i32(i32 %328)
  %330 = trunc i32 %329 to i8
  %331 = and i8 %330, 1
  %332 = xor i8 %331, 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %332, i8* %333, align 1
  %334 = xor i32 %320, %318
  %335 = xor i32 %334, %321
  %336 = lshr i32 %335, 4
  %337 = trunc i32 %336 to i8
  %338 = and i8 %337, 1
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %338, i8* %339, align 1
  %340 = icmp eq i32 %321, 0
  %341 = zext i1 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %341, i8* %342, align 1
  %343 = lshr i32 %321, 31
  %344 = trunc i32 %343 to i8
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %344, i8* %345, align 1
  %346 = lshr i32 %318, 31
  %347 = lshr i32 %320, 31
  %348 = xor i32 %343, %346
  %349 = xor i32 %343, %347
  %350 = add i32 %348, %349
  %351 = icmp eq i32 %350, 2
  %352 = zext i1 %351 to i8
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %352, i8* %353, align 1
  store %struct.Memory* %loadMem_4de65a, %struct.Memory** %MEMORY
  %loadMem_4de65d = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 5
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %ECX.i100 = bitcast %union.anon* %359 to i32*
  %360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %361 = getelementptr inbounds %struct.GPR, %struct.GPR* %360, i32 0, i32 15
  %362 = getelementptr inbounds %struct.Reg, %struct.Reg* %361, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %362 to i64*
  %363 = load i64, i64* %RBP.i101
  %364 = sub i64 %363, 24
  %365 = load i32, i32* %ECX.i100
  %366 = zext i32 %365 to i64
  %367 = load i64, i64* %PC.i99
  %368 = add i64 %367, 3
  store i64 %368, i64* %PC.i99
  %369 = inttoptr i64 %364 to i32*
  store i32 %365, i32* %369
  store %struct.Memory* %loadMem_4de65d, %struct.Memory** %MEMORY
  %loadMem_4de660 = load %struct.Memory*, %struct.Memory** %MEMORY
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 33
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %372 to i64*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 15
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 19
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %R9.i98 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %RBP.i97
  %380 = sub i64 %379, 4
  %381 = load i64, i64* %PC.i96
  %382 = add i64 %381, 4
  store i64 %382, i64* %PC.i96
  %383 = inttoptr i64 %380 to i32*
  %384 = load i32, i32* %383
  %385 = sext i32 %384 to i64
  store i64 %385, i64* %R9.i98, align 8
  store %struct.Memory* %loadMem_4de660, %struct.Memory** %MEMORY
  %loadMem_4de664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 5
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RCX.i94 = bitcast %union.anon* %391 to i64*
  %392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %393 = getelementptr inbounds %struct.GPR, %struct.GPR* %392, i32 0, i32 19
  %394 = getelementptr inbounds %struct.Reg, %struct.Reg* %393, i32 0, i32 0
  %R9.i95 = bitcast %union.anon* %394 to i64*
  %395 = load i64, i64* %R9.i95
  %396 = mul i64 %395, 4
  %397 = add i64 %396, 11904848
  %398 = load i64, i64* %PC.i93
  %399 = add i64 %398, 8
  store i64 %399, i64* %PC.i93
  %400 = inttoptr i64 %397 to i32*
  %401 = load i32, i32* %400
  %402 = zext i32 %401 to i64
  store i64 %402, i64* %RCX.i94, align 8
  store %struct.Memory* %loadMem_4de664, %struct.Memory** %MEMORY
  %loadMem_4de66c = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 5
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RCX.i91 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i92 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RCX.i91
  %413 = load i64, i64* %RBP.i92
  %414 = sub i64 %413, 8
  %415 = load i64, i64* %PC.i90
  %416 = add i64 %415, 3
  store i64 %416, i64* %PC.i90
  %417 = trunc i64 %412 to i32
  %418 = inttoptr i64 %414 to i32*
  %419 = load i32, i32* %418
  %420 = add i32 %419, %417
  %421 = zext i32 %420 to i64
  store i64 %421, i64* %RCX.i91, align 8
  %422 = icmp ult i32 %420, %417
  %423 = icmp ult i32 %420, %419
  %424 = or i1 %422, %423
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %425, i8* %426, align 1
  %427 = and i32 %420, 255
  %428 = call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %431, i8* %432, align 1
  %433 = xor i32 %419, %417
  %434 = xor i32 %433, %420
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %437, i8* %438, align 1
  %439 = icmp eq i32 %420, 0
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %440, i8* %441, align 1
  %442 = lshr i32 %420, 31
  %443 = trunc i32 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %417, 31
  %446 = lshr i32 %419, 31
  %447 = xor i32 %442, %445
  %448 = xor i32 %442, %446
  %449 = add i32 %447, %448
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %451, i8* %452, align 1
  store %struct.Memory* %loadMem_4de66c, %struct.Memory** %MEMORY
  %loadMem_4de66f = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %455 to i64*
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 5
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %ECX.i88 = bitcast %union.anon* %458 to i32*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 15
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %461 to i64*
  %462 = load i64, i64* %RBP.i89
  %463 = sub i64 %462, 28
  %464 = load i32, i32* %ECX.i88
  %465 = zext i32 %464 to i64
  %466 = load i64, i64* %PC.i87
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC.i87
  %468 = inttoptr i64 %463 to i32*
  store i32 %464, i32* %468
  store %struct.Memory* %loadMem_4de66f, %struct.Memory** %MEMORY
  %loadMem_4de672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %470 = getelementptr inbounds %struct.GPR, %struct.GPR* %469, i32 0, i32 33
  %471 = getelementptr inbounds %struct.Reg, %struct.Reg* %470, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %471 to i64*
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 15
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %474 to i64*
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 19
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %R9.i86 = bitcast %union.anon* %477 to i64*
  %478 = load i64, i64* %RBP.i85
  %479 = sub i64 %478, 4
  %480 = load i64, i64* %PC.i84
  %481 = add i64 %480, 4
  store i64 %481, i64* %PC.i84
  %482 = inttoptr i64 %479 to i32*
  %483 = load i32, i32* %482
  %484 = sext i32 %483 to i64
  store i64 %484, i64* %R9.i86, align 8
  store %struct.Memory* %loadMem_4de672, %struct.Memory** %MEMORY
  %loadMem_4de676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 33
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %487 to i64*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 5
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RCX.i83 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 19
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %R9.i = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %R9.i
  %495 = mul i64 %494, 4
  %496 = add i64 %495, 11903632
  %497 = load i64, i64* %PC.i82
  %498 = add i64 %497, 8
  store i64 %498, i64* %PC.i82
  %499 = inttoptr i64 %496 to i32*
  %500 = load i32, i32* %499
  %501 = zext i32 %500 to i64
  store i64 %501, i64* %RCX.i83, align 8
  store %struct.Memory* %loadMem_4de676, %struct.Memory** %MEMORY
  %loadMem_4de67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 5
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 15
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %510 to i64*
  %511 = load i64, i64* %RCX.i80
  %512 = load i64, i64* %RBP.i81
  %513 = sub i64 %512, 8
  %514 = load i64, i64* %PC.i79
  %515 = add i64 %514, 3
  store i64 %515, i64* %PC.i79
  %516 = trunc i64 %511 to i32
  %517 = inttoptr i64 %513 to i32*
  %518 = load i32, i32* %517
  %519 = add i32 %518, %516
  %520 = zext i32 %519 to i64
  store i64 %520, i64* %RCX.i80, align 8
  %521 = icmp ult i32 %519, %516
  %522 = icmp ult i32 %519, %518
  %523 = or i1 %521, %522
  %524 = zext i1 %523 to i8
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %524, i8* %525, align 1
  %526 = and i32 %519, 255
  %527 = call i32 @llvm.ctpop.i32(i32 %526)
  %528 = trunc i32 %527 to i8
  %529 = and i8 %528, 1
  %530 = xor i8 %529, 1
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %530, i8* %531, align 1
  %532 = xor i32 %518, %516
  %533 = xor i32 %532, %519
  %534 = lshr i32 %533, 4
  %535 = trunc i32 %534 to i8
  %536 = and i8 %535, 1
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %536, i8* %537, align 1
  %538 = icmp eq i32 %519, 0
  %539 = zext i1 %538 to i8
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %539, i8* %540, align 1
  %541 = lshr i32 %519, 31
  %542 = trunc i32 %541 to i8
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %542, i8* %543, align 1
  %544 = lshr i32 %516, 31
  %545 = lshr i32 %518, 31
  %546 = xor i32 %541, %544
  %547 = xor i32 %541, %545
  %548 = add i32 %546, %547
  %549 = icmp eq i32 %548, 2
  %550 = zext i1 %549 to i8
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %550, i8* %551, align 1
  store %struct.Memory* %loadMem_4de67e, %struct.Memory** %MEMORY
  %loadMem_4de681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 33
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 5
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %ECX.i77 = bitcast %union.anon* %557 to i32*
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 15
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %560 to i64*
  %561 = load i64, i64* %RBP.i78
  %562 = sub i64 %561, 32
  %563 = load i32, i32* %ECX.i77
  %564 = zext i32 %563 to i64
  %565 = load i64, i64* %PC.i76
  %566 = add i64 %565, 3
  store i64 %566, i64* %PC.i76
  %567 = inttoptr i64 %562 to i32*
  store i32 %563, i32* %567
  store %struct.Memory* %loadMem_4de681, %struct.Memory** %MEMORY
  %loadMem_4de684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 33
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %570 to i64*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 11
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RDI.i74 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 15
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %576 to i64*
  %577 = load i64, i64* %RBP.i75
  %578 = sub i64 %577, 12
  %579 = load i64, i64* %PC.i73
  %580 = add i64 %579, 3
  store i64 %580, i64* %PC.i73
  %581 = inttoptr i64 %578 to i32*
  %582 = load i32, i32* %581
  %583 = zext i32 %582 to i64
  store i64 %583, i64* %RDI.i74, align 8
  store %struct.Memory* %loadMem_4de684, %struct.Memory** %MEMORY
  %loadMem_4de687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 33
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 5
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 15
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %592 to i64*
  %593 = load i64, i64* %RBP.i72
  %594 = sub i64 %593, 8
  %595 = load i64, i64* %PC.i70
  %596 = add i64 %595, 3
  store i64 %596, i64* %PC.i70
  %597 = inttoptr i64 %594 to i32*
  %598 = load i32, i32* %597
  %599 = zext i32 %598 to i64
  store i64 %599, i64* %RCX.i71, align 8
  store %struct.Memory* %loadMem_4de687, %struct.Memory** %MEMORY
  %loadMem_4de68a = load %struct.Memory*, %struct.Memory** %MEMORY
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 33
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 7
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RDX.i68 = bitcast %union.anon* %605 to i64*
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %607 = getelementptr inbounds %struct.GPR, %struct.GPR* %606, i32 0, i32 15
  %608 = getelementptr inbounds %struct.Reg, %struct.Reg* %607, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %608 to i64*
  %609 = load i64, i64* %RBP.i69
  %610 = sub i64 %609, 28
  %611 = load i64, i64* %PC.i67
  %612 = add i64 %611, 3
  store i64 %612, i64* %PC.i67
  %613 = inttoptr i64 %610 to i32*
  %614 = load i32, i32* %613
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RDX.i68, align 8
  store %struct.Memory* %loadMem_4de68a, %struct.Memory** %MEMORY
  %loadMem_4de68d = load %struct.Memory*, %struct.Memory** %MEMORY
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 33
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 19
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %R9D.i65 = bitcast %union.anon* %621 to i32*
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %623 = getelementptr inbounds %struct.GPR, %struct.GPR* %622, i32 0, i32 15
  %624 = getelementptr inbounds %struct.Reg, %struct.Reg* %623, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %624 to i64*
  %625 = bitcast i32* %R9D.i65 to i64*
  %626 = load i64, i64* %RBP.i66
  %627 = sub i64 %626, 20
  %628 = load i64, i64* %PC.i64
  %629 = add i64 %628, 4
  store i64 %629, i64* %PC.i64
  %630 = inttoptr i64 %627 to i32*
  %631 = load i32, i32* %630
  %632 = zext i32 %631 to i64
  store i64 %632, i64* %625, align 8
  store %struct.Memory* %loadMem_4de68d, %struct.Memory** %MEMORY
  %loadMem_4de691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %634 = getelementptr inbounds %struct.GPR, %struct.GPR* %633, i32 0, i32 33
  %635 = getelementptr inbounds %struct.Reg, %struct.Reg* %634, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %635 to i64*
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 9
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %RSI.i62 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 15
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %RBP.i63
  %643 = sub i64 %642, 24
  %644 = load i64, i64* %PC.i61
  %645 = add i64 %644, 3
  store i64 %645, i64* %PC.i61
  %646 = inttoptr i64 %643 to i32*
  %647 = load i32, i32* %646
  %648 = zext i32 %647 to i64
  store i64 %648, i64* %RSI.i62, align 8
  store %struct.Memory* %loadMem_4de691, %struct.Memory** %MEMORY
  %loadMem_4de694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 33
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %651 to i64*
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 9
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %654 to i32*
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 15
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %657 to i64*
  %658 = load i64, i64* %RBP.i60
  %659 = sub i64 %658, 36
  %660 = load i32, i32* %ESI.i
  %661 = zext i32 %660 to i64
  %662 = load i64, i64* %PC.i59
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC.i59
  %664 = inttoptr i64 %659 to i32*
  store i32 %660, i32* %664
  store %struct.Memory* %loadMem_4de694, %struct.Memory** %MEMORY
  %loadMem_4de697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 33
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 1
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %EAX.i57 = bitcast %union.anon* %670 to i32*
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %672 = getelementptr inbounds %struct.GPR, %struct.GPR* %671, i32 0, i32 9
  %673 = getelementptr inbounds %struct.Reg, %struct.Reg* %672, i32 0, i32 0
  %RSI.i58 = bitcast %union.anon* %673 to i64*
  %674 = load i32, i32* %EAX.i57
  %675 = zext i32 %674 to i64
  %676 = load i64, i64* %PC.i56
  %677 = add i64 %676, 2
  store i64 %677, i64* %PC.i56
  %678 = and i64 %675, 4294967295
  store i64 %678, i64* %RSI.i58, align 8
  store %struct.Memory* %loadMem_4de697, %struct.Memory** %MEMORY
  %loadMem_4de699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 7
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %684 to i32*
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %686 = getelementptr inbounds %struct.GPR, %struct.GPR* %685, i32 0, i32 15
  %687 = getelementptr inbounds %struct.Reg, %struct.Reg* %686, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %687 to i64*
  %688 = load i64, i64* %RBP.i55
  %689 = sub i64 %688, 40
  %690 = load i32, i32* %EDX.i
  %691 = zext i32 %690 to i64
  %692 = load i64, i64* %PC.i54
  %693 = add i64 %692, 3
  store i64 %693, i64* %PC.i54
  %694 = inttoptr i64 %689 to i32*
  store i32 %690, i32* %694
  store %struct.Memory* %loadMem_4de699, %struct.Memory** %MEMORY
  %loadMem_4de69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 17
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %R8D.i52 = bitcast %union.anon* %700 to i32*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 7
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %703 to i64*
  %704 = load i32, i32* %R8D.i52
  %705 = zext i32 %704 to i64
  %706 = load i64, i64* %PC.i51
  %707 = add i64 %706, 3
  store i64 %707, i64* %PC.i51
  %708 = and i64 %705, 4294967295
  store i64 %708, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_4de69c, %struct.Memory** %MEMORY
  %loadMem_4de69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 17
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %R8D.i49 = bitcast %union.anon* %714 to i32*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %717 to i64*
  %718 = bitcast i32* %R8D.i49 to i64*
  %719 = load i64, i64* %RBP.i50
  %720 = sub i64 %719, 40
  %721 = load i64, i64* %PC.i48
  %722 = add i64 %721, 4
  store i64 %722, i64* %PC.i48
  %723 = inttoptr i64 %720 to i32*
  %724 = load i32, i32* %723
  %725 = zext i32 %724 to i64
  store i64 %725, i64* %718, align 8
  store %struct.Memory* %loadMem_4de69f, %struct.Memory** %MEMORY
  %loadMem_4de6a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 15
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %RBP.i47
  %736 = sub i64 %735, 36
  %737 = load i64, i64* %PC.i45
  %738 = add i64 %737, 3
  store i64 %738, i64* %PC.i45
  %739 = inttoptr i64 %736 to i32*
  %740 = load i32, i32* %739
  %741 = zext i32 %740 to i64
  store i64 %741, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_4de6a3, %struct.Memory** %MEMORY
  %loadMem_4de6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 1
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %EAX.i43 = bitcast %union.anon* %747 to i32*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 13
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RSP.i44 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RSP.i44
  %752 = load i32, i32* %EAX.i43
  %753 = zext i32 %752 to i64
  %754 = load i64, i64* %PC.i42
  %755 = add i64 %754, 3
  store i64 %755, i64* %PC.i42
  %756 = inttoptr i64 %751 to i32*
  store i32 %752, i32* %756
  store %struct.Memory* %loadMem_4de6a6, %struct.Memory** %MEMORY
  %loadMem_4de6a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 33
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %759 to i64*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 1
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %763 = bitcast %union.anon* %762 to %struct.anon.2*
  %AL.i41 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %763, i32 0, i32 0
  %764 = load i64, i64* %PC.i40
  %765 = add i64 %764, 2
  store i64 %765, i64* %PC.i40
  store i8 0, i8* %AL.i41, align 1
  store %struct.Memory* %loadMem_4de6a9, %struct.Memory** %MEMORY
  %loadMem1_4de6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %768 to i64*
  %769 = load i64, i64* %PC.i39
  %770 = add i64 %769, -418299
  %771 = load i64, i64* %PC.i39
  %772 = add i64 %771, 5
  %773 = load i64, i64* %PC.i39
  %774 = add i64 %773, 5
  store i64 %774, i64* %PC.i39
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %776 = load i64, i64* %775, align 8
  %777 = add i64 %776, -8
  %778 = inttoptr i64 %777 to i64*
  store i64 %772, i64* %778
  store i64 %777, i64* %775, align 8
  %779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %770, i64* %779, align 8
  store %struct.Memory* %loadMem1_4de6ab, %struct.Memory** %MEMORY
  %loadMem2_4de6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4de6ab = load i64, i64* %3
  %call2_4de6ab = call %struct.Memory* @sub_4784b0.play_attack_defend2_n(%struct.State* %0, i64 %loadPC_4de6ab, %struct.Memory* %loadMem2_4de6ab)
  store %struct.Memory* %call2_4de6ab, %struct.Memory** %MEMORY
  %loadMem_4de6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 33
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %782 to i64*
  %783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %784 = getelementptr inbounds %struct.GPR, %struct.GPR* %783, i32 0, i32 5
  %785 = getelementptr inbounds %struct.Reg, %struct.Reg* %784, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %785 to i32*
  %786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %787 = getelementptr inbounds %struct.GPR, %struct.GPR* %786, i32 0, i32 5
  %788 = getelementptr inbounds %struct.Reg, %struct.Reg* %787, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %788 to i64*
  %789 = load i64, i64* %RCX.i38
  %790 = load i32, i32* %ECX.i
  %791 = zext i32 %790 to i64
  %792 = load i64, i64* %PC.i37
  %793 = add i64 %792, 2
  store i64 %793, i64* %PC.i37
  %794 = xor i64 %791, %789
  %795 = trunc i64 %794 to i32
  %796 = and i64 %794, 4294967295
  store i64 %796, i64* %RCX.i38, align 8
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %797, align 1
  %798 = and i32 %795, 255
  %799 = call i32 @llvm.ctpop.i32(i32 %798)
  %800 = trunc i32 %799 to i8
  %801 = and i8 %800, 1
  %802 = xor i8 %801, 1
  %803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %802, i8* %803, align 1
  %804 = icmp eq i32 %795, 0
  %805 = zext i1 %804 to i8
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %805, i8* %806, align 1
  %807 = lshr i32 %795, 31
  %808 = trunc i32 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %808, i8* %809, align 1
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %810, align 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %811, align 1
  store %struct.Memory* %loadMem_4de6b0, %struct.Memory** %MEMORY
  %loadMem_4de6b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 5
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %818 = bitcast %union.anon* %817 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %818, i32 0, i32 0
  %819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %820 = getelementptr inbounds %struct.GPR, %struct.GPR* %819, i32 0, i32 21
  %821 = getelementptr inbounds %struct.Reg, %struct.Reg* %820, i32 0, i32 0
  %822 = bitcast %union.anon* %821 to %struct.anon.2*
  %R10B.i36 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %822, i32 0, i32 0
  %823 = load i8, i8* %CL.i
  %824 = zext i8 %823 to i64
  %825 = load i64, i64* %PC.i35
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC.i35
  store i8 %823, i8* %R10B.i36, align 1
  store %struct.Memory* %loadMem_4de6b2, %struct.Memory** %MEMORY
  %loadMem_4de6b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %828 = getelementptr inbounds %struct.GPR, %struct.GPR* %827, i32 0, i32 33
  %829 = getelementptr inbounds %struct.Reg, %struct.Reg* %828, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %829 to i64*
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 1
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %EAX.i34 = bitcast %union.anon* %832 to i32*
  %833 = load i32, i32* %EAX.i34
  %834 = zext i32 %833 to i64
  %835 = load i64, i64* %PC.i33
  %836 = add i64 %835, 3
  store i64 %836, i64* %PC.i33
  %837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %837, align 1
  %838 = and i32 %833, 255
  %839 = call i32 @llvm.ctpop.i32(i32 %838)
  %840 = trunc i32 %839 to i8
  %841 = and i8 %840, 1
  %842 = xor i8 %841, 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %842, i8* %843, align 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %844, align 1
  %845 = icmp eq i32 %833, 0
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %846, i8* %847, align 1
  %848 = lshr i32 %833, 31
  %849 = trunc i32 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %849, i8* %850, align 1
  %851 = lshr i32 %833, 31
  %852 = xor i32 %848, %851
  %853 = add i32 %852, %851
  %854 = icmp eq i32 %853, 2
  %855 = zext i1 %854 to i8
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %855, i8* %856, align 1
  store %struct.Memory* %loadMem_4de6b5, %struct.Memory** %MEMORY
  %loadMem_4de6b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 33
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %859 to i64*
  %860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %861 = getelementptr inbounds %struct.GPR, %struct.GPR* %860, i32 0, i32 21
  %862 = getelementptr inbounds %struct.Reg, %struct.Reg* %861, i32 0, i32 0
  %863 = bitcast %union.anon* %862 to %struct.anon.2*
  %R10B.i31 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %863, i32 0, i32 0
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i32
  %868 = sub i64 %867, 41
  %869 = load i8, i8* %R10B.i31
  %870 = zext i8 %869 to i64
  %871 = load i64, i64* %PC.i30
  %872 = add i64 %871, 4
  store i64 %872, i64* %PC.i30
  %873 = inttoptr i64 %868 to i8*
  store i8 %869, i8* %873
  store %struct.Memory* %loadMem_4de6b8, %struct.Memory** %MEMORY
  %loadMem_4de6bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %876 to i64*
  %877 = load i64, i64* %PC.i29
  %878 = add i64 %877, 48
  %879 = load i64, i64* %PC.i29
  %880 = add i64 %879, 6
  %881 = load i64, i64* %PC.i29
  %882 = add i64 %881, 6
  store i64 %882, i64* %PC.i29
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %884 = load i8, i8* %883, align 1
  %885 = icmp eq i8 %884, 0
  %886 = zext i1 %885 to i8
  store i8 %886, i8* %BRANCH_TAKEN, align 1
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %888 = select i1 %885, i64 %878, i64 %880
  store i64 %888, i64* %887, align 8
  store %struct.Memory* %loadMem_4de6bc, %struct.Memory** %MEMORY
  %loadBr_4de6bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4de6bc = icmp eq i8 %loadBr_4de6bc, 1
  br i1 %cmpBr_4de6bc, label %block_.L_4de6ec, label %block_4de6c2

block_4de6c2:                                     ; preds = %entry
  %loadMem_4de6c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 33
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %891 to i64*
  %892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %893 = getelementptr inbounds %struct.GPR, %struct.GPR* %892, i32 0, i32 9
  %894 = getelementptr inbounds %struct.Reg, %struct.Reg* %893, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %894 to i64*
  %895 = load i64, i64* %PC.i28
  %896 = add i64 %895, 5
  store i64 %896, i64* %PC.i28
  store i64 1, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_4de6c2, %struct.Memory** %MEMORY
  %loadMem_4de6c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 7
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %PC.i27
  %904 = add i64 %903, 5
  store i64 %904, i64* %PC.i27
  store i64 2, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_4de6c7, %struct.Memory** %MEMORY
  %loadMem_4de6cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 11
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 15
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RBP.i26
  %915 = sub i64 %914, 12
  %916 = load i64, i64* %PC.i25
  %917 = add i64 %916, 3
  store i64 %917, i64* %PC.i25
  %918 = inttoptr i64 %915 to i32*
  %919 = load i32, i32* %918
  %920 = zext i32 %919 to i64
  store i64 %920, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4de6cc, %struct.Memory** %MEMORY
  %loadMem_4de6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %922 = getelementptr inbounds %struct.GPR, %struct.GPR* %921, i32 0, i32 33
  %923 = getelementptr inbounds %struct.Reg, %struct.Reg* %922, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %923 to i64*
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %925 = getelementptr inbounds %struct.GPR, %struct.GPR* %924, i32 0, i32 5
  %926 = getelementptr inbounds %struct.Reg, %struct.Reg* %925, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %926 to i64*
  %927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %928 = getelementptr inbounds %struct.GPR, %struct.GPR* %927, i32 0, i32 15
  %929 = getelementptr inbounds %struct.Reg, %struct.Reg* %928, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %929 to i64*
  %930 = load i64, i64* %RBP.i24
  %931 = sub i64 %930, 32
  %932 = load i64, i64* %PC.i23
  %933 = add i64 %932, 3
  store i64 %933, i64* %PC.i23
  %934 = inttoptr i64 %931 to i32*
  %935 = load i32, i32* %934
  %936 = zext i32 %935 to i64
  store i64 %936, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_4de6cf, %struct.Memory** %MEMORY
  %loadMem_4de6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 33
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %939 to i64*
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 17
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %942 to i32*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 15
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %945 to i64*
  %946 = bitcast i32* %R8D.i to i64*
  %947 = load i64, i64* %RBP.i22
  %948 = sub i64 %947, 28
  %949 = load i64, i64* %PC.i21
  %950 = add i64 %949, 4
  store i64 %950, i64* %PC.i21
  %951 = inttoptr i64 %948 to i32*
  %952 = load i32, i32* %951
  %953 = zext i32 %952 to i64
  store i64 %953, i64* %946, align 8
  store %struct.Memory* %loadMem_4de6d2, %struct.Memory** %MEMORY
  %loadMem_4de6d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 33
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 19
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %959 to i32*
  %960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %961 = getelementptr inbounds %struct.GPR, %struct.GPR* %960, i32 0, i32 15
  %962 = getelementptr inbounds %struct.Reg, %struct.Reg* %961, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %962 to i64*
  %963 = bitcast i32* %R9D.i to i64*
  %964 = load i64, i64* %RBP.i20
  %965 = sub i64 %964, 28
  %966 = load i64, i64* %PC.i19
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC.i19
  %968 = inttoptr i64 %965 to i32*
  %969 = load i32, i32* %968
  %970 = zext i32 %969 to i64
  store i64 %970, i64* %963, align 8
  store %struct.Memory* %loadMem_4de6d6, %struct.Memory** %MEMORY
  %loadMem_4de6da = load %struct.Memory*, %struct.Memory** %MEMORY
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 33
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 1
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %977 = bitcast %union.anon* %976 to %struct.anon.2*
  %AL.i18 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %977, i32 0, i32 0
  %978 = load i64, i64* %PC.i17
  %979 = add i64 %978, 2
  store i64 %979, i64* %PC.i17
  store i8 0, i8* %AL.i18, align 1
  store %struct.Memory* %loadMem_4de6da, %struct.Memory** %MEMORY
  %loadMem1_4de6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %981 = getelementptr inbounds %struct.GPR, %struct.GPR* %980, i32 0, i32 33
  %982 = getelementptr inbounds %struct.Reg, %struct.Reg* %981, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %982 to i64*
  %983 = load i64, i64* %PC.i16
  %984 = add i64 %983, -419276
  %985 = load i64, i64* %PC.i16
  %986 = add i64 %985, 5
  %987 = load i64, i64* %PC.i16
  %988 = add i64 %987, 5
  store i64 %988, i64* %PC.i16
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %990 = load i64, i64* %989, align 8
  %991 = add i64 %990, -8
  %992 = inttoptr i64 %991 to i64*
  store i64 %986, i64* %992
  store i64 %991, i64* %989, align 8
  %993 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %984, i64* %993, align 8
  store %struct.Memory* %loadMem1_4de6dc, %struct.Memory** %MEMORY
  %loadMem2_4de6dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4de6dc = load i64, i64* %3
  %call2_4de6dc = call %struct.Memory* @sub_478110.play_attack_defend_n(%struct.State* %0, i64 %loadPC_4de6dc, %struct.Memory* %loadMem2_4de6dc)
  store %struct.Memory* %call2_4de6dc, %struct.Memory** %MEMORY
  %loadMem_4de6e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %995 = getelementptr inbounds %struct.GPR, %struct.GPR* %994, i32 0, i32 33
  %996 = getelementptr inbounds %struct.Reg, %struct.Reg* %995, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %996 to i64*
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 1
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %999 to i32*
  %1000 = load i32, i32* %EAX.i
  %1001 = zext i32 %1000 to i64
  %1002 = load i64, i64* %PC.i15
  %1003 = add i64 %1002, 3
  store i64 %1003, i64* %PC.i15
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1004, align 1
  %1005 = and i32 %1000, 255
  %1006 = call i32 @llvm.ctpop.i32(i32 %1005)
  %1007 = trunc i32 %1006 to i8
  %1008 = and i8 %1007, 1
  %1009 = xor i8 %1008, 1
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1009, i8* %1010, align 1
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1011, align 1
  %1012 = icmp eq i32 %1000, 0
  %1013 = zext i1 %1012 to i8
  %1014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1013, i8* %1014, align 1
  %1015 = lshr i32 %1000, 31
  %1016 = trunc i32 %1015 to i8
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1016, i8* %1017, align 1
  %1018 = lshr i32 %1000, 31
  %1019 = xor i32 %1015, %1018
  %1020 = add i32 %1019, %1018
  %1021 = icmp eq i32 %1020, 2
  %1022 = zext i1 %1021 to i8
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1022, i8* %1023, align 1
  store %struct.Memory* %loadMem_4de6e1, %struct.Memory** %MEMORY
  %loadMem_4de6e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 33
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %1026 to i64*
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1028 = getelementptr inbounds %struct.GPR, %struct.GPR* %1027, i32 0, i32 21
  %1029 = getelementptr inbounds %struct.Reg, %struct.Reg* %1028, i32 0, i32 0
  %1030 = bitcast %union.anon* %1029 to %struct.anon.2*
  %R10B.i14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1030, i32 0, i32 0
  %1031 = load i64, i64* %PC.i13
  %1032 = add i64 %1031, 4
  store i64 %1032, i64* %PC.i13
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1034 = load i8, i8* %1033, align 1
  %1035 = icmp eq i8 %1034, 0
  %1036 = zext i1 %1035 to i8
  store i8 %1036, i8* %R10B.i14, align 1
  store %struct.Memory* %loadMem_4de6e4, %struct.Memory** %MEMORY
  %loadMem_4de6e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 33
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 21
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %1043 = bitcast %union.anon* %1042 to %struct.anon.2*
  %R10B.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1043, i32 0, i32 0
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 15
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %1046 to i64*
  %1047 = load i64, i64* %RBP.i12
  %1048 = sub i64 %1047, 41
  %1049 = load i8, i8* %R10B.i
  %1050 = zext i8 %1049 to i64
  %1051 = load i64, i64* %PC.i11
  %1052 = add i64 %1051, 4
  store i64 %1052, i64* %PC.i11
  %1053 = inttoptr i64 %1048 to i8*
  store i8 %1049, i8* %1053
  store %struct.Memory* %loadMem_4de6e8, %struct.Memory** %MEMORY
  br label %block_.L_4de6ec

block_.L_4de6ec:                                  ; preds = %block_4de6c2, %entry
  %loadMem_4de6ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1055 = getelementptr inbounds %struct.GPR, %struct.GPR* %1054, i32 0, i32 33
  %1056 = getelementptr inbounds %struct.Reg, %struct.Reg* %1055, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %1056 to i64*
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 1
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %1060 = bitcast %union.anon* %1059 to %struct.anon.2*
  %AL.i9 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1060, i32 0, i32 0
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 15
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %1063 to i64*
  %1064 = load i64, i64* %RBP.i10
  %1065 = sub i64 %1064, 41
  %1066 = load i64, i64* %PC.i8
  %1067 = add i64 %1066, 3
  store i64 %1067, i64* %PC.i8
  %1068 = inttoptr i64 %1065 to i8*
  %1069 = load i8, i8* %1068
  store i8 %1069, i8* %AL.i9, align 1
  store %struct.Memory* %loadMem_4de6ec, %struct.Memory** %MEMORY
  %loadMem_4de6ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 33
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %1072 to i64*
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 1
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %1076 = bitcast %union.anon* %1075 to %struct.anon.2*
  %AL.i7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1076, i32 0, i32 0
  %1077 = load i8, i8* %AL.i7
  %1078 = zext i8 %1077 to i64
  %1079 = load i64, i64* %PC.i6
  %1080 = add i64 %1079, 2
  store i64 %1080, i64* %PC.i6
  %1081 = and i64 1, %1078
  %1082 = trunc i64 %1081 to i8
  store i8 %1082, i8* %AL.i7, align 1
  %1083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1083, align 1
  %1084 = trunc i64 %1081 to i32
  %1085 = and i32 %1084, 255
  %1086 = call i32 @llvm.ctpop.i32(i32 %1085)
  %1087 = trunc i32 %1086 to i8
  %1088 = and i8 %1087, 1
  %1089 = xor i8 %1088, 1
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1089, i8* %1090, align 1
  %1091 = icmp eq i8 %1082, 0
  %1092 = zext i1 %1091 to i8
  %1093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1092, i8* %1093, align 1
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1094, align 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1095, align 1
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1096, align 1
  store %struct.Memory* %loadMem_4de6ef, %struct.Memory** %MEMORY
  %loadMem_4de6f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1098 = getelementptr inbounds %struct.GPR, %struct.GPR* %1097, i32 0, i32 33
  %1099 = getelementptr inbounds %struct.Reg, %struct.Reg* %1098, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %1099 to i64*
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1101 = getelementptr inbounds %struct.GPR, %struct.GPR* %1100, i32 0, i32 1
  %1102 = getelementptr inbounds %struct.Reg, %struct.Reg* %1101, i32 0, i32 0
  %1103 = bitcast %union.anon* %1102 to %struct.anon.2*
  %AL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1103, i32 0, i32 0
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %1106 to i64*
  %1107 = load i8, i8* %AL.i
  %1108 = zext i8 %1107 to i64
  %1109 = load i64, i64* %PC.i5
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC.i5
  %1111 = and i64 %1108, 255
  store i64 %1111, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_4de6f1, %struct.Memory** %MEMORY
  %loadMem_4de6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1113 = getelementptr inbounds %struct.GPR, %struct.GPR* %1112, i32 0, i32 33
  %1114 = getelementptr inbounds %struct.Reg, %struct.Reg* %1113, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %1114 to i64*
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 13
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %1117 to i64*
  %1118 = load i64, i64* %RSP.i
  %1119 = load i64, i64* %PC.i4
  %1120 = add i64 %1119, 4
  store i64 %1120, i64* %PC.i4
  %1121 = add i64 64, %1118
  store i64 %1121, i64* %RSP.i, align 8
  %1122 = icmp ult i64 %1121, %1118
  %1123 = icmp ult i64 %1121, 64
  %1124 = or i1 %1122, %1123
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1125, i8* %1126, align 1
  %1127 = trunc i64 %1121 to i32
  %1128 = and i32 %1127, 255
  %1129 = call i32 @llvm.ctpop.i32(i32 %1128)
  %1130 = trunc i32 %1129 to i8
  %1131 = and i8 %1130, 1
  %1132 = xor i8 %1131, 1
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1132, i8* %1133, align 1
  %1134 = xor i64 64, %1118
  %1135 = xor i64 %1134, %1121
  %1136 = lshr i64 %1135, 4
  %1137 = trunc i64 %1136 to i8
  %1138 = and i8 %1137, 1
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1138, i8* %1139, align 1
  %1140 = icmp eq i64 %1121, 0
  %1141 = zext i1 %1140 to i8
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1141, i8* %1142, align 1
  %1143 = lshr i64 %1121, 63
  %1144 = trunc i64 %1143 to i8
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1144, i8* %1145, align 1
  %1146 = lshr i64 %1118, 63
  %1147 = xor i64 %1143, %1146
  %1148 = add i64 %1147, %1143
  %1149 = icmp eq i64 %1148, 2
  %1150 = zext i1 %1149 to i8
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1150, i8* %1151, align 1
  store %struct.Memory* %loadMem_4de6f4, %struct.Memory** %MEMORY
  %loadMem_4de6f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 33
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %1154 to i64*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %1157 to i64*
  %1158 = load i64, i64* %PC.i2
  %1159 = add i64 %1158, 1
  store i64 %1159, i64* %PC.i2
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1161 = load i64, i64* %1160, align 8
  %1162 = add i64 %1161, 8
  %1163 = inttoptr i64 %1161 to i64*
  %1164 = load i64, i64* %1163
  store i64 %1164, i64* %RBP.i3, align 8
  store i64 %1162, i64* %1160, align 8
  store %struct.Memory* %loadMem_4de6f8, %struct.Memory** %MEMORY
  %loadMem_4de6f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 33
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %PC.i1
  %1169 = add i64 %1168, 1
  store i64 %1169, i64* %PC.i1
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1172 = load i64, i64* %1171, align 8
  %1173 = inttoptr i64 %1172 to i64*
  %1174 = load i64, i64* %1173
  store i64 %1174, i64* %1170, align 8
  %1175 = add i64 %1172, 8
  store i64 %1175, i64* %1171, align 8
  store %struct.Memory* %loadMem_4de6f9, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_4de6f9
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

define %struct.Memory* @routine_subq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 64
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 64
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
  %23 = xor i64 64, %9
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

define %struct.Memory* @routine_movl__0x2___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %9, align 8
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xb5a730___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
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

define %struct.Memory* @routine_movl_0xb5abf0___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11906032
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

define %struct.Memory* @routine_movl_0xb5a750___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11904848
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

define %struct.Memory* @routine_movl_0xb5a290___r9_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 11903632
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x14__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 20
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r8d___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 7
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x28__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
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

define %struct.Memory* @routine_callq_.play_attack_defend2_n(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__cl___r10b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 21
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %13 = bitcast %union.anon* %12 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %13, i32 0, i32 0
  %14 = load i8, i8* %CL
  %15 = zext i8 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  store i8 %14, i8* %R10B, align 1
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

define %struct.Memory* @routine_movb__r10b__MINUS0x29__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 41
  %15 = load i8, i8* %R10B
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_4de6ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.play_attack_defend_n(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_setne__r10b(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 21
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %R10B = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %R10B, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x29__rbp____al(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 41
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

define %struct.Memory* @routine_addq__0x40___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 64, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 64
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
  %25 = xor i64 64, %9
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
