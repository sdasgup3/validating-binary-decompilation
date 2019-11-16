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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0A\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_405dd0.add_pair_to_block(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @copy_input_until_stop(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4059d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4059d0, %struct.Memory** %MEMORY
  %loadMem_4059d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i570 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i570
  %27 = load i64, i64* %PC.i569
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i569
  store i64 %26, i64* %RBP.i571, align 8
  store %struct.Memory* %loadMem_4059d1, %struct.Memory** %MEMORY
  %loadMem_4059d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i568 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i568
  %36 = load i64, i64* %PC.i567
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i567
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i568, align 8
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
  store %struct.Memory* %loadMem_4059d4, %struct.Memory** %MEMORY
  %loadMem_4059d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i565 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i566
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i565
  %79 = load i64, i64* %PC.i564
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i564
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_4059d8, %struct.Memory** %MEMORY
  %loadMem_4059dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i563 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i563
  %89 = sub i64 %88, 9
  %90 = load i64, i64* %PC.i562
  %91 = add i64 %90, 4
  store i64 %91, i64* %PC.i562
  %92 = inttoptr i64 %89 to i8*
  store i8 0, i8* %92
  store %struct.Memory* %loadMem_4059dc, %struct.Memory** %MEMORY
  %loadMem_4059e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 11
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RDI.i560 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 15
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %RBP.i561
  %103 = sub i64 %102, 8
  %104 = load i64, i64* %PC.i559
  %105 = add i64 %104, 4
  store i64 %105, i64* %PC.i559
  %106 = inttoptr i64 %103 to i64*
  %107 = load i64, i64* %106
  store i64 %107, i64* %RDI.i560, align 8
  store %struct.Memory* %loadMem_4059e0, %struct.Memory** %MEMORY
  %loadMem_4059e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %109 = getelementptr inbounds %struct.GPR, %struct.GPR* %108, i32 0, i32 33
  %110 = getelementptr inbounds %struct.Reg, %struct.Reg* %109, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %110 to i64*
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %112 = getelementptr inbounds %struct.GPR, %struct.GPR* %111, i32 0, i32 11
  %113 = getelementptr inbounds %struct.Reg, %struct.Reg* %112, i32 0, i32 0
  %RDI.i558 = bitcast %union.anon* %113 to i64*
  %114 = load i64, i64* %RDI.i558
  %115 = add i64 %114, 8
  %116 = load i64, i64* %PC.i557
  %117 = add i64 %116, 4
  store i64 %117, i64* %PC.i557
  %118 = inttoptr i64 %115 to i32*
  %119 = load i32, i32* %118
  %120 = sub i32 %119, 2
  %121 = icmp ult i32 %119, 2
  %122 = zext i1 %121 to i8
  %123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %122, i8* %123, align 1
  %124 = and i32 %120, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1
  %130 = xor i32 %119, 2
  %131 = xor i32 %130, %120
  %132 = lshr i32 %131, 4
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1
  %136 = icmp eq i32 %120, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i32 %120, 31
  %140 = trunc i32 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i32 %119, 31
  %143 = xor i32 %139, %142
  %144 = add i32 %143, %142
  %145 = icmp eq i32 %144, 2
  %146 = zext i1 %145 to i8
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %146, i8* %147, align 1
  store %struct.Memory* %loadMem_4059e4, %struct.Memory** %MEMORY
  %loadMem_4059e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 33
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i556
  %152 = add i64 %151, 443
  %153 = load i64, i64* %PC.i556
  %154 = add i64 %153, 6
  %155 = load i64, i64* %PC.i556
  %156 = add i64 %155, 6
  store i64 %156, i64* %PC.i556
  %157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %158 = load i8, i8* %157, align 1
  %159 = icmp eq i8 %158, 0
  %160 = zext i1 %159 to i8
  store i8 %160, i8* %BRANCH_TAKEN, align 1
  %161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %162 = select i1 %159, i64 %152, i64 %154
  store i64 %162, i64* %161, align 8
  store %struct.Memory* %loadMem_4059e8, %struct.Memory** %MEMORY
  %loadBr_4059e8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4059e8 = icmp eq i8 %loadBr_4059e8, 1
  br i1 %cmpBr_4059e8, label %block_.L_405ba3, label %block_4059ee

block_4059ee:                                     ; preds = %entry
  %loadMem_4059ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %164 = getelementptr inbounds %struct.GPR, %struct.GPR* %163, i32 0, i32 33
  %165 = getelementptr inbounds %struct.Reg, %struct.Reg* %164, i32 0, i32 0
  %PC.i555 = bitcast %union.anon* %165 to i64*
  %166 = load i64, i64* %PC.i555
  %167 = add i64 %166, 5
  %168 = load i64, i64* %PC.i555
  %169 = add i64 %168, 5
  store i64 %169, i64* %PC.i555
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %167, i64* %170, align 8
  store %struct.Memory* %loadMem_4059ee, %struct.Memory** %MEMORY
  br label %block_.L_4059f3

block_.L_4059f3:                                  ; preds = %block_.L_405b99, %block_4059ee
  %loadMem_4059f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RAX.i553 = bitcast %union.anon* %176 to i64*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i554 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RBP.i554
  %181 = sub i64 %180, 8
  %182 = load i64, i64* %PC.i552
  %183 = add i64 %182, 4
  store i64 %183, i64* %PC.i552
  %184 = inttoptr i64 %181 to i64*
  %185 = load i64, i64* %184
  store i64 %185, i64* %RAX.i553, align 8
  store %struct.Memory* %loadMem_4059f3, %struct.Memory** %MEMORY
  %loadMem_4059f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 33
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 1
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RAX.i550 = bitcast %union.anon* %191 to i64*
  %192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %193 = getelementptr inbounds %struct.GPR, %struct.GPR* %192, i32 0, i32 5
  %194 = getelementptr inbounds %struct.Reg, %struct.Reg* %193, i32 0, i32 0
  %RCX.i551 = bitcast %union.anon* %194 to i64*
  %195 = load i64, i64* %RAX.i550
  %196 = add i64 %195, 108
  %197 = load i64, i64* %PC.i549
  %198 = add i64 %197, 3
  store i64 %198, i64* %PC.i549
  %199 = inttoptr i64 %196 to i32*
  %200 = load i32, i32* %199
  %201 = zext i32 %200 to i64
  store i64 %201, i64* %RCX.i551, align 8
  store %struct.Memory* %loadMem_4059f7, %struct.Memory** %MEMORY
  %loadMem_4059fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RAX.i547 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 15
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RBP.i548 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %RBP.i548
  %212 = sub i64 %211, 8
  %213 = load i64, i64* %PC.i546
  %214 = add i64 %213, 4
  store i64 %214, i64* %PC.i546
  %215 = inttoptr i64 %212 to i64*
  %216 = load i64, i64* %215
  store i64 %216, i64* %RAX.i547, align 8
  store %struct.Memory* %loadMem_4059fa, %struct.Memory** %MEMORY
  %loadMem_4059fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %ECX.i544 = bitcast %union.anon* %222 to i32*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 1
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RAX.i545 = bitcast %union.anon* %225 to i64*
  %226 = load i32, i32* %ECX.i544
  %227 = zext i32 %226 to i64
  %228 = load i64, i64* %RAX.i545
  %229 = add i64 %228, 112
  %230 = load i64, i64* %PC.i543
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC.i543
  %232 = inttoptr i64 %229 to i32*
  %233 = load i32, i32* %232
  %234 = sub i32 %226, %233
  %235 = icmp ult i32 %226, %233
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %236, i8* %237, align 1
  %238 = and i32 %234, 255
  %239 = call i32 @llvm.ctpop.i32(i32 %238)
  %240 = trunc i32 %239 to i8
  %241 = and i8 %240, 1
  %242 = xor i8 %241, 1
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %242, i8* %243, align 1
  %244 = xor i32 %233, %226
  %245 = xor i32 %244, %234
  %246 = lshr i32 %245, 4
  %247 = trunc i32 %246 to i8
  %248 = and i8 %247, 1
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %248, i8* %249, align 1
  %250 = icmp eq i32 %234, 0
  %251 = zext i1 %250 to i8
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %251, i8* %252, align 1
  %253 = lshr i32 %234, 31
  %254 = trunc i32 %253 to i8
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %254, i8* %255, align 1
  %256 = lshr i32 %226, 31
  %257 = lshr i32 %233, 31
  %258 = xor i32 %257, %256
  %259 = xor i32 %253, %256
  %260 = add i32 %259, %258
  %261 = icmp eq i32 %260, 2
  %262 = zext i1 %261 to i8
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %262, i8* %263, align 1
  store %struct.Memory* %loadMem_4059fe, %struct.Memory** %MEMORY
  %loadMem_405a01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 33
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %266 to i64*
  %267 = load i64, i64* %PC.i542
  %268 = add i64 %267, 11
  %269 = load i64, i64* %PC.i542
  %270 = add i64 %269, 6
  %271 = load i64, i64* %PC.i542
  %272 = add i64 %271, 6
  store i64 %272, i64* %PC.i542
  %273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %274 = load i8, i8* %273, align 1
  %275 = icmp ne i8 %274, 0
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %277 = load i8, i8* %276, align 1
  %278 = icmp ne i8 %277, 0
  %279 = xor i1 %275, %278
  %280 = zext i1 %279 to i8
  store i8 %280, i8* %BRANCH_TAKEN, align 1
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %282 = select i1 %279, i64 %268, i64 %270
  store i64 %282, i64* %281, align 8
  store %struct.Memory* %loadMem_405a01, %struct.Memory** %MEMORY
  %loadBr_405a01 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405a01 = icmp eq i8 %loadBr_405a01, 1
  br i1 %cmpBr_405a01, label %block_.L_405a0c, label %block_405a07

block_405a07:                                     ; preds = %block_.L_4059f3
  %loadMem_405a07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 33
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %PC.i541
  %287 = add i64 %286, 407
  %288 = load i64, i64* %PC.i541
  %289 = add i64 %288, 5
  store i64 %289, i64* %PC.i541
  %290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %287, i64* %290, align 8
  store %struct.Memory* %loadMem_405a07, %struct.Memory** %MEMORY
  br label %block_.L_405b9e

block_.L_405a0c:                                  ; preds = %block_.L_4059f3
  %loadMem_405a0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %292 = getelementptr inbounds %struct.GPR, %struct.GPR* %291, i32 0, i32 33
  %293 = getelementptr inbounds %struct.Reg, %struct.Reg* %292, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %293 to i64*
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 1
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %RAX.i539 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 15
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %299 to i64*
  %300 = load i64, i64* %RBP.i540
  %301 = sub i64 %300, 8
  %302 = load i64, i64* %PC.i538
  %303 = add i64 %302, 4
  store i64 %303, i64* %PC.i538
  %304 = inttoptr i64 %301 to i64*
  %305 = load i64, i64* %304
  store i64 %305, i64* %RAX.i539, align 8
  store %struct.Memory* %loadMem_405a0c, %struct.Memory** %MEMORY
  %loadMem_405a10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %308 to i64*
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %RAX.i537 = bitcast %union.anon* %311 to i64*
  %312 = load i64, i64* %RAX.i537
  %313 = load i64, i64* %PC.i536
  %314 = add i64 %313, 3
  store i64 %314, i64* %PC.i536
  %315 = inttoptr i64 %312 to i64*
  %316 = load i64, i64* %315
  store i64 %316, i64* %RAX.i537, align 8
  store %struct.Memory* %loadMem_405a10, %struct.Memory** %MEMORY
  %loadMem_405a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %318 = getelementptr inbounds %struct.GPR, %struct.GPR* %317, i32 0, i32 33
  %319 = getelementptr inbounds %struct.Reg, %struct.Reg* %318, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %319 to i64*
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 1
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %RAX.i535 = bitcast %union.anon* %322 to i64*
  %323 = load i64, i64* %RAX.i535
  %324 = add i64 %323, 8
  %325 = load i64, i64* %PC.i534
  %326 = add i64 %325, 4
  store i64 %326, i64* %PC.i534
  %327 = inttoptr i64 %324 to i32*
  %328 = load i32, i32* %327
  %329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %329, align 1
  %330 = and i32 %328, 255
  %331 = call i32 @llvm.ctpop.i32(i32 %330)
  %332 = trunc i32 %331 to i8
  %333 = and i8 %332, 1
  %334 = xor i8 %333, 1
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %334, i8* %335, align 1
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %336, align 1
  %337 = icmp eq i32 %328, 0
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %338, i8* %339, align 1
  %340 = lshr i32 %328, 31
  %341 = trunc i32 %340 to i8
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %341, i8* %342, align 1
  %343 = lshr i32 %328, 31
  %344 = xor i32 %340, %343
  %345 = add i32 %344, %343
  %346 = icmp eq i32 %345, 2
  %347 = zext i1 %346 to i8
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %347, i8* %348, align 1
  store %struct.Memory* %loadMem_405a13, %struct.Memory** %MEMORY
  %loadMem_405a17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %350 = getelementptr inbounds %struct.GPR, %struct.GPR* %349, i32 0, i32 33
  %351 = getelementptr inbounds %struct.Reg, %struct.Reg* %350, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %351 to i64*
  %352 = load i64, i64* %PC.i533
  %353 = add i64 %352, 11
  %354 = load i64, i64* %PC.i533
  %355 = add i64 %354, 6
  %356 = load i64, i64* %PC.i533
  %357 = add i64 %356, 6
  store i64 %357, i64* %PC.i533
  %358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %359 = load i8, i8* %358, align 1
  %360 = icmp eq i8 %359, 0
  %361 = zext i1 %360 to i8
  store i8 %361, i8* %BRANCH_TAKEN, align 1
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %363 = select i1 %360, i64 %353, i64 %355
  store i64 %363, i64* %362, align 8
  store %struct.Memory* %loadMem_405a17, %struct.Memory** %MEMORY
  %loadBr_405a17 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405a17 = icmp eq i8 %loadBr_405a17, 1
  br i1 %cmpBr_405a17, label %block_.L_405a22, label %block_405a1d

block_405a1d:                                     ; preds = %block_.L_405a0c
  %loadMem_405a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %366 to i64*
  %367 = load i64, i64* %PC.i532
  %368 = add i64 %367, 385
  %369 = load i64, i64* %PC.i532
  %370 = add i64 %369, 5
  store i64 %370, i64* %PC.i532
  %371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %368, i64* %371, align 8
  store %struct.Memory* %loadMem_405a1d, %struct.Memory** %MEMORY
  br label %block_.L_405b9e

block_.L_405a22:                                  ; preds = %block_.L_405a0c
  %loadMem_405a22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %373 = getelementptr inbounds %struct.GPR, %struct.GPR* %372, i32 0, i32 33
  %374 = getelementptr inbounds %struct.Reg, %struct.Reg* %373, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %374 to i64*
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 15
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %377 to i64*
  %378 = load i64, i64* %RBP.i531
  %379 = sub i64 %378, 9
  %380 = load i64, i64* %PC.i530
  %381 = add i64 %380, 4
  store i64 %381, i64* %PC.i530
  %382 = inttoptr i64 %379 to i8*
  store i8 1, i8* %382
  store %struct.Memory* %loadMem_405a22, %struct.Memory** %MEMORY
  %loadMem_405a26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 15
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %RBP.i529
  %393 = sub i64 %392, 8
  %394 = load i64, i64* %PC.i527
  %395 = add i64 %394, 4
  store i64 %395, i64* %PC.i527
  %396 = inttoptr i64 %393 to i64*
  %397 = load i64, i64* %396
  store i64 %397, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_405a26, %struct.Memory** %MEMORY
  %loadMem_405a2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %399 = getelementptr inbounds %struct.GPR, %struct.GPR* %398, i32 0, i32 33
  %400 = getelementptr inbounds %struct.Reg, %struct.Reg* %399, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %400 to i64*
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %RAX.i526
  %405 = load i64, i64* %PC.i525
  %406 = add i64 %405, 3
  store i64 %406, i64* %PC.i525
  %407 = inttoptr i64 %404 to i64*
  %408 = load i64, i64* %407
  store i64 %408, i64* %RAX.i526, align 8
  store %struct.Memory* %loadMem_405a2a, %struct.Memory** %MEMORY
  %loadMem_405a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 1
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RAX.i524 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RAX.i524
  %416 = load i64, i64* %PC.i523
  %417 = add i64 %416, 3
  store i64 %417, i64* %PC.i523
  %418 = inttoptr i64 %415 to i64*
  %419 = load i64, i64* %418
  store i64 %419, i64* %RAX.i524, align 8
  store %struct.Memory* %loadMem_405a2d, %struct.Memory** %MEMORY
  %loadMem_405a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 5
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RCX.i522 = bitcast %union.anon* %428 to i64*
  %429 = load i64, i64* %RAX.i521
  %430 = load i64, i64* %PC.i520
  %431 = add i64 %430, 3
  store i64 %431, i64* %PC.i520
  %432 = inttoptr i64 %429 to i8*
  %433 = load i8, i8* %432
  %434 = zext i8 %433 to i64
  store i64 %434, i64* %RCX.i522, align 8
  store %struct.Memory* %loadMem_405a30, %struct.Memory** %MEMORY
  %loadMem_405a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 5
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %ECX.i518 = bitcast %union.anon* %440 to i32*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i519 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i519
  %445 = sub i64 %444, 16
  %446 = load i32, i32* %ECX.i518
  %447 = zext i32 %446 to i64
  %448 = load i64, i64* %PC.i517
  %449 = add i64 %448, 3
  store i64 %449, i64* %PC.i517
  %450 = inttoptr i64 %445 to i32*
  store i32 %446, i32* %450
  store %struct.Memory* %loadMem_405a33, %struct.Memory** %MEMORY
  %loadMem_405a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 5
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RCX.i515 = bitcast %union.anon* %456 to i64*
  %457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %458 = getelementptr inbounds %struct.GPR, %struct.GPR* %457, i32 0, i32 15
  %459 = getelementptr inbounds %struct.Reg, %struct.Reg* %458, i32 0, i32 0
  %RBP.i516 = bitcast %union.anon* %459 to i64*
  %460 = load i64, i64* %RBP.i516
  %461 = sub i64 %460, 16
  %462 = load i64, i64* %PC.i514
  %463 = add i64 %462, 3
  store i64 %463, i64* %PC.i514
  %464 = inttoptr i64 %461 to i32*
  %465 = load i32, i32* %464
  %466 = zext i32 %465 to i64
  store i64 %466, i64* %RCX.i515, align 8
  store %struct.Memory* %loadMem_405a36, %struct.Memory** %MEMORY
  %loadMem_405a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %468 = getelementptr inbounds %struct.GPR, %struct.GPR* %467, i32 0, i32 33
  %469 = getelementptr inbounds %struct.Reg, %struct.Reg* %468, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %469 to i64*
  %470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %471 = getelementptr inbounds %struct.GPR, %struct.GPR* %470, i32 0, i32 1
  %472 = getelementptr inbounds %struct.Reg, %struct.Reg* %471, i32 0, i32 0
  %RAX.i512 = bitcast %union.anon* %472 to i64*
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 15
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %475 to i64*
  %476 = load i64, i64* %RBP.i513
  %477 = sub i64 %476, 8
  %478 = load i64, i64* %PC.i511
  %479 = add i64 %478, 4
  store i64 %479, i64* %PC.i511
  %480 = inttoptr i64 %477 to i64*
  %481 = load i64, i64* %480
  store i64 %481, i64* %RAX.i512, align 8
  store %struct.Memory* %loadMem_405a39, %struct.Memory** %MEMORY
  %loadMem_405a3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %483 = getelementptr inbounds %struct.GPR, %struct.GPR* %482, i32 0, i32 33
  %484 = getelementptr inbounds %struct.Reg, %struct.Reg* %483, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %484 to i64*
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %486 = getelementptr inbounds %struct.GPR, %struct.GPR* %485, i32 0, i32 5
  %487 = getelementptr inbounds %struct.Reg, %struct.Reg* %486, i32 0, i32 0
  %ECX.i509 = bitcast %union.anon* %487 to i32*
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 1
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %RAX.i510 = bitcast %union.anon* %490 to i64*
  %491 = load i32, i32* %ECX.i509
  %492 = zext i32 %491 to i64
  %493 = load i64, i64* %RAX.i510
  %494 = add i64 %493, 92
  %495 = load i64, i64* %PC.i508
  %496 = add i64 %495, 3
  store i64 %496, i64* %PC.i508
  %497 = inttoptr i64 %494 to i32*
  %498 = load i32, i32* %497
  %499 = sub i32 %491, %498
  %500 = icmp ult i32 %491, %498
  %501 = zext i1 %500 to i8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %501, i8* %502, align 1
  %503 = and i32 %499, 255
  %504 = call i32 @llvm.ctpop.i32(i32 %503)
  %505 = trunc i32 %504 to i8
  %506 = and i8 %505, 1
  %507 = xor i8 %506, 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %507, i8* %508, align 1
  %509 = xor i32 %498, %491
  %510 = xor i32 %509, %499
  %511 = lshr i32 %510, 4
  %512 = trunc i32 %511 to i8
  %513 = and i8 %512, 1
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %513, i8* %514, align 1
  %515 = icmp eq i32 %499, 0
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %516, i8* %517, align 1
  %518 = lshr i32 %499, 31
  %519 = trunc i32 %518 to i8
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %519, i8* %520, align 1
  %521 = lshr i32 %491, 31
  %522 = lshr i32 %498, 31
  %523 = xor i32 %522, %521
  %524 = xor i32 %518, %521
  %525 = add i32 %524, %523
  %526 = icmp eq i32 %525, 2
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %527, i8* %528, align 1
  store %struct.Memory* %loadMem_405a3d, %struct.Memory** %MEMORY
  %loadMem_405a40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %530 = getelementptr inbounds %struct.GPR, %struct.GPR* %529, i32 0, i32 33
  %531 = getelementptr inbounds %struct.Reg, %struct.Reg* %530, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %531 to i64*
  %532 = load i64, i64* %PC.i507
  %533 = add i64 %532, 160
  %534 = load i64, i64* %PC.i507
  %535 = add i64 %534, 6
  %536 = load i64, i64* %PC.i507
  %537 = add i64 %536, 6
  store i64 %537, i64* %PC.i507
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %539 = load i8, i8* %538, align 1
  store i8 %539, i8* %BRANCH_TAKEN, align 1
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %541 = icmp ne i8 %539, 0
  %542 = select i1 %541, i64 %533, i64 %535
  store i64 %542, i64* %540, align 8
  store %struct.Memory* %loadMem_405a40, %struct.Memory** %MEMORY
  %loadBr_405a40 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405a40 = icmp eq i8 %loadBr_405a40, 1
  br i1 %cmpBr_405a40, label %block_.L_405ae0, label %block_405a46

block_405a46:                                     ; preds = %block_.L_405a22
  %loadMem_405a46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 1
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %548 to i64*
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 15
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %RBP.i506 = bitcast %union.anon* %551 to i64*
  %552 = load i64, i64* %RBP.i506
  %553 = sub i64 %552, 8
  %554 = load i64, i64* %PC.i504
  %555 = add i64 %554, 4
  store i64 %555, i64* %PC.i504
  %556 = inttoptr i64 %553 to i64*
  %557 = load i64, i64* %556
  store i64 %557, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_405a46, %struct.Memory** %MEMORY
  %loadMem_405a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %559 = getelementptr inbounds %struct.GPR, %struct.GPR* %558, i32 0, i32 33
  %560 = getelementptr inbounds %struct.Reg, %struct.Reg* %559, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %560 to i64*
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %562 = getelementptr inbounds %struct.GPR, %struct.GPR* %561, i32 0, i32 1
  %563 = getelementptr inbounds %struct.Reg, %struct.Reg* %562, i32 0, i32 0
  %RAX.i503 = bitcast %union.anon* %563 to i64*
  %564 = load i64, i64* %RAX.i503
  %565 = add i64 %564, 96
  %566 = load i64, i64* %PC.i502
  %567 = add i64 %566, 4
  store i64 %567, i64* %PC.i502
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = sub i32 %569, 1
  %571 = icmp ult i32 %569, 1
  %572 = zext i1 %571 to i8
  %573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %572, i8* %573, align 1
  %574 = and i32 %570, 255
  %575 = call i32 @llvm.ctpop.i32(i32 %574)
  %576 = trunc i32 %575 to i8
  %577 = and i8 %576, 1
  %578 = xor i8 %577, 1
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %578, i8* %579, align 1
  %580 = xor i32 %569, 1
  %581 = xor i32 %580, %570
  %582 = lshr i32 %581, 4
  %583 = trunc i32 %582 to i8
  %584 = and i8 %583, 1
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %584, i8* %585, align 1
  %586 = icmp eq i32 %570, 0
  %587 = zext i1 %586 to i8
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %587, i8* %588, align 1
  %589 = lshr i32 %570, 31
  %590 = trunc i32 %589 to i8
  %591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %590, i8* %591, align 1
  %592 = lshr i32 %569, 31
  %593 = xor i32 %589, %592
  %594 = add i32 %593, %592
  %595 = icmp eq i32 %594, 2
  %596 = zext i1 %595 to i8
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %596, i8* %597, align 1
  store %struct.Memory* %loadMem_405a4a, %struct.Memory** %MEMORY
  %loadMem_405a4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %PC.i501
  %602 = add i64 %601, 146
  %603 = load i64, i64* %PC.i501
  %604 = add i64 %603, 6
  %605 = load i64, i64* %PC.i501
  %606 = add i64 %605, 6
  store i64 %606, i64* %PC.i501
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %608 = load i8, i8* %607, align 1
  %609 = icmp eq i8 %608, 0
  %610 = zext i1 %609 to i8
  store i8 %610, i8* %BRANCH_TAKEN, align 1
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %612 = select i1 %609, i64 %602, i64 %604
  store i64 %612, i64* %611, align 8
  store %struct.Memory* %loadMem_405a4e, %struct.Memory** %MEMORY
  %loadBr_405a4e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405a4e = icmp eq i8 %loadBr_405a4e, 1
  br i1 %cmpBr_405a4e, label %block_.L_405ae0, label %block_405a54

block_405a54:                                     ; preds = %block_405a46
  %loadMem_405a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %614 = getelementptr inbounds %struct.GPR, %struct.GPR* %613, i32 0, i32 33
  %615 = getelementptr inbounds %struct.Reg, %struct.Reg* %614, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %615 to i64*
  %616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %617 = getelementptr inbounds %struct.GPR, %struct.GPR* %616, i32 0, i32 1
  %618 = getelementptr inbounds %struct.Reg, %struct.Reg* %617, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %618 to i64*
  %619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %620 = getelementptr inbounds %struct.GPR, %struct.GPR* %619, i32 0, i32 15
  %621 = getelementptr inbounds %struct.Reg, %struct.Reg* %620, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %621 to i64*
  %622 = load i64, i64* %RBP.i500
  %623 = sub i64 %622, 8
  %624 = load i64, i64* %PC.i498
  %625 = add i64 %624, 4
  store i64 %625, i64* %PC.i498
  %626 = inttoptr i64 %623 to i64*
  %627 = load i64, i64* %626
  store i64 %627, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_405a54, %struct.Memory** %MEMORY
  %loadMem_405a58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %RAX.i496 = bitcast %union.anon* %633 to i64*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 5
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RCX.i497 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %RAX.i496
  %638 = add i64 %637, 92
  %639 = load i64, i64* %PC.i495
  %640 = add i64 %639, 3
  store i64 %640, i64* %PC.i495
  %641 = inttoptr i64 %638 to i32*
  %642 = load i32, i32* %641
  %643 = zext i32 %642 to i64
  store i64 %643, i64* %RCX.i497, align 8
  store %struct.Memory* %loadMem_405a58, %struct.Memory** %MEMORY
  %loadMem_405a5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %645 = getelementptr inbounds %struct.GPR, %struct.GPR* %644, i32 0, i32 33
  %646 = getelementptr inbounds %struct.Reg, %struct.Reg* %645, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %646 to i64*
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 5
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %650 = bitcast %union.anon* %649 to %struct.anon.2*
  %CL.i493 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %650, i32 0, i32 0
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %652 = getelementptr inbounds %struct.GPR, %struct.GPR* %651, i32 0, i32 7
  %653 = getelementptr inbounds %struct.Reg, %struct.Reg* %652, i32 0, i32 0
  %654 = bitcast %union.anon* %653 to %struct.anon.2*
  %DL.i494 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %654, i32 0, i32 0
  %655 = load i8, i8* %CL.i493
  %656 = zext i8 %655 to i64
  %657 = load i64, i64* %PC.i492
  %658 = add i64 %657, 2
  store i64 %658, i64* %PC.i492
  store i8 %655, i8* %DL.i494, align 1
  store %struct.Memory* %loadMem_405a5b, %struct.Memory** %MEMORY
  %loadMem_405a5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %660 = getelementptr inbounds %struct.GPR, %struct.GPR* %659, i32 0, i32 33
  %661 = getelementptr inbounds %struct.Reg, %struct.Reg* %660, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %661 to i64*
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 7
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %665 = bitcast %union.anon* %664 to %struct.anon.2*
  %DL.i490 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %665, i32 0, i32 0
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 15
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %668 to i64*
  %669 = load i64, i64* %RBP.i491
  %670 = sub i64 %669, 17
  %671 = load i8, i8* %DL.i490
  %672 = zext i8 %671 to i64
  %673 = load i64, i64* %PC.i489
  %674 = add i64 %673, 3
  store i64 %674, i64* %PC.i489
  %675 = inttoptr i64 %670 to i8*
  store i8 %671, i8* %675
  store %struct.Memory* %loadMem_405a5d, %struct.Memory** %MEMORY
  %loadMem_405a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %677 = getelementptr inbounds %struct.GPR, %struct.GPR* %676, i32 0, i32 33
  %678 = getelementptr inbounds %struct.Reg, %struct.Reg* %677, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %678 to i64*
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 1
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 15
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %RBP.i488
  %686 = sub i64 %685, 8
  %687 = load i64, i64* %PC.i486
  %688 = add i64 %687, 4
  store i64 %688, i64* %PC.i486
  %689 = inttoptr i64 %686 to i64*
  %690 = load i64, i64* %689
  store i64 %690, i64* %RAX.i487, align 8
  store %struct.Memory* %loadMem_405a60, %struct.Memory** %MEMORY
  %loadMem_405a64 = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RAX.i484 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 5
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RCX.i485 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %RAX.i484
  %701 = add i64 %700, 648
  %702 = load i64, i64* %PC.i483
  %703 = add i64 %702, 6
  store i64 %703, i64* %PC.i483
  %704 = inttoptr i64 %701 to i32*
  %705 = load i32, i32* %704
  %706 = zext i32 %705 to i64
  store i64 %706, i64* %RCX.i485, align 8
  store %struct.Memory* %loadMem_405a64, %struct.Memory** %MEMORY
  %loadMem_405a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 33
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 5
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RCX.i482 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %RCX.i482
  %714 = load i64, i64* %PC.i481
  %715 = add i64 %714, 3
  store i64 %715, i64* %PC.i481
  %716 = and i64 %713, 4294967295
  %717 = shl i64 %716, 7
  %718 = trunc i64 %717 to i32
  %719 = icmp slt i32 %718, 0
  %720 = shl i32 %718, 1
  %721 = zext i32 %720 to i64
  store i64 %721, i64* %RCX.i482, align 8
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %723 = zext i1 %719 to i8
  store i8 %723, i8* %722, align 1
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %724, align 1
  %725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %725, align 1
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %727 = icmp eq i32 %720, 0
  %728 = zext i1 %727 to i8
  store i8 %728, i8* %726, align 1
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %730 = lshr i32 %720, 31
  %731 = trunc i32 %730 to i8
  store i8 %731, i8* %729, align 1
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %732, align 1
  store %struct.Memory* %loadMem_405a6a, %struct.Memory** %MEMORY
  %loadMem_405a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %734 = getelementptr inbounds %struct.GPR, %struct.GPR* %733, i32 0, i32 33
  %735 = getelementptr inbounds %struct.Reg, %struct.Reg* %734, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %735 to i64*
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %RAX.i479 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i480
  %743 = sub i64 %742, 8
  %744 = load i64, i64* %PC.i478
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i478
  %746 = inttoptr i64 %743 to i64*
  %747 = load i64, i64* %746
  store i64 %747, i64* %RAX.i479, align 8
  store %struct.Memory* %loadMem_405a6d, %struct.Memory** %MEMORY
  %loadMem_405a71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 33
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %750 to i64*
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 1
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %RAX.i476 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 9
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RSI.i477 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %RAX.i476
  %758 = add i64 %757, 648
  %759 = load i64, i64* %PC.i475
  %760 = add i64 %759, 6
  store i64 %760, i64* %PC.i475
  %761 = inttoptr i64 %758 to i32*
  %762 = load i32, i32* %761
  %763 = zext i32 %762 to i64
  store i64 %763, i64* %RSI.i477, align 8
  store %struct.Memory* %loadMem_405a71, %struct.Memory** %MEMORY
  %loadMem_405a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 33
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %766 to i64*
  %767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %768 = getelementptr inbounds %struct.GPR, %struct.GPR* %767, i32 0, i32 9
  %769 = getelementptr inbounds %struct.Reg, %struct.Reg* %768, i32 0, i32 0
  %RSI.i474 = bitcast %union.anon* %769 to i64*
  %770 = load i64, i64* %RSI.i474
  %771 = load i64, i64* %PC.i473
  %772 = add i64 %771, 3
  store i64 %772, i64* %PC.i473
  %773 = and i64 %770, 4294967295
  %774 = lshr i64 %773, 23
  %775 = trunc i64 %774 to i8
  %776 = and i8 %775, 1
  %777 = lshr i64 %774, 1
  %778 = trunc i64 %777 to i32
  %779 = and i32 %778, 2147483647
  %780 = zext i32 %779 to i64
  store i64 %780, i64* %RSI.i474, align 8
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %776, i8* %781, align 1
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %783 = and i32 %778, 255
  %784 = call i32 @llvm.ctpop.i32(i32 %783)
  %785 = trunc i32 %784 to i8
  %786 = and i8 %785, 1
  %787 = xor i8 %786, 1
  store i8 %787, i8* %782, align 1
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %788, align 1
  %789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %790 = icmp eq i32 %779, 0
  %791 = zext i1 %790 to i8
  store i8 %791, i8* %789, align 1
  %792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %792, align 1
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %793, align 1
  store %struct.Memory* %loadMem_405a77, %struct.Memory** %MEMORY
  %loadMem_405a7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 11
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %RDI.i471 = bitcast %union.anon* %799 to i64*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 15
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RBP.i472 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %RBP.i472
  %804 = sub i64 %803, 17
  %805 = load i64, i64* %PC.i470
  %806 = add i64 %805, 4
  store i64 %806, i64* %PC.i470
  %807 = inttoptr i64 %804 to i8*
  %808 = load i8, i8* %807
  %809 = zext i8 %808 to i64
  store i64 %809, i64* %RDI.i471, align 8
  store %struct.Memory* %loadMem_405a7a, %struct.Memory** %MEMORY
  %loadMem_405a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 11
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %EDI.i468 = bitcast %union.anon* %815 to i32*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 9
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RSI.i469 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %RSI.i469
  %820 = load i32, i32* %EDI.i468
  %821 = zext i32 %820 to i64
  %822 = load i64, i64* %PC.i467
  %823 = add i64 %822, 2
  store i64 %823, i64* %PC.i467
  %824 = xor i64 %821, %819
  %825 = trunc i64 %824 to i32
  %826 = and i64 %824, 4294967295
  store i64 %826, i64* %RSI.i469, align 8
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %827, align 1
  %828 = and i32 %825, 255
  %829 = call i32 @llvm.ctpop.i32(i32 %828)
  %830 = trunc i32 %829 to i8
  %831 = and i8 %830, 1
  %832 = xor i8 %831, 1
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %832, i8* %833, align 1
  %834 = icmp eq i32 %825, 0
  %835 = zext i1 %834 to i8
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %835, i8* %836, align 1
  %837 = lshr i32 %825, 31
  %838 = trunc i32 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %838, i8* %839, align 1
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %840, align 1
  %841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %841, align 1
  store %struct.Memory* %loadMem_405a7e, %struct.Memory** %MEMORY
  %loadMem_405a80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 9
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %ESI.i465 = bitcast %union.anon* %847 to i32*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 9
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RSI.i466 = bitcast %union.anon* %850 to i64*
  %851 = load i32, i32* %ESI.i465
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %PC.i464
  %854 = add i64 %853, 2
  store i64 %854, i64* %PC.i464
  %855 = and i64 %852, 4294967295
  store i64 %855, i64* %RSI.i466, align 8
  store %struct.Memory* %loadMem_405a80, %struct.Memory** %MEMORY
  %loadMem_405a82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 9
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %ESI.i462 = bitcast %union.anon* %861 to i32*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %864 to i64*
  %865 = load i32, i32* %ESI.i462
  %866 = zext i32 %865 to i64
  %867 = load i64, i64* %PC.i461
  %868 = add i64 %867, 2
  store i64 %868, i64* %PC.i461
  %869 = and i64 %866, 4294967295
  store i64 %869, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_405a82, %struct.Memory** %MEMORY
  %loadMem_405a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 1
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %875 to i64*
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %877 = getelementptr inbounds %struct.GPR, %struct.GPR* %876, i32 0, i32 5
  %878 = getelementptr inbounds %struct.Reg, %struct.Reg* %877, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %878 to i64*
  %879 = load i64, i64* %RCX.i460
  %880 = load i64, i64* %RAX.i459
  %881 = mul i64 %880, 4
  %882 = add i64 %881, 6390128
  %883 = load i64, i64* %PC.i458
  %884 = add i64 %883, 7
  store i64 %884, i64* %PC.i458
  %885 = trunc i64 %879 to i32
  %886 = inttoptr i64 %882 to i32*
  %887 = load i32, i32* %886
  %888 = xor i32 %887, %885
  %889 = zext i32 %888 to i64
  store i64 %889, i64* %RCX.i460, align 8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %890, align 1
  %891 = and i32 %888, 255
  %892 = call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %895, i8* %896, align 1
  %897 = icmp eq i32 %888, 0
  %898 = zext i1 %897 to i8
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %898, i8* %899, align 1
  %900 = lshr i32 %888, 31
  %901 = trunc i32 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %901, i8* %902, align 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %903, align 1
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %904, align 1
  store %struct.Memory* %loadMem_405a84, %struct.Memory** %MEMORY
  %loadMem_405a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 33
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %907 to i64*
  %908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %909 = getelementptr inbounds %struct.GPR, %struct.GPR* %908, i32 0, i32 1
  %910 = getelementptr inbounds %struct.Reg, %struct.Reg* %909, i32 0, i32 0
  %RAX.i456 = bitcast %union.anon* %910 to i64*
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %912 = getelementptr inbounds %struct.GPR, %struct.GPR* %911, i32 0, i32 15
  %913 = getelementptr inbounds %struct.Reg, %struct.Reg* %912, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %913 to i64*
  %914 = load i64, i64* %RBP.i457
  %915 = sub i64 %914, 8
  %916 = load i64, i64* %PC.i455
  %917 = add i64 %916, 4
  store i64 %917, i64* %PC.i455
  %918 = inttoptr i64 %915 to i64*
  %919 = load i64, i64* %918
  store i64 %919, i64* %RAX.i456, align 8
  store %struct.Memory* %loadMem_405a8b, %struct.Memory** %MEMORY
  %loadMem_405a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 33
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %922 to i64*
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 5
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %ECX.i453 = bitcast %union.anon* %925 to i32*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 1
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RAX.i454 = bitcast %union.anon* %928 to i64*
  %929 = load i64, i64* %RAX.i454
  %930 = add i64 %929, 648
  %931 = load i32, i32* %ECX.i453
  %932 = zext i32 %931 to i64
  %933 = load i64, i64* %PC.i452
  %934 = add i64 %933, 6
  store i64 %934, i64* %PC.i452
  %935 = inttoptr i64 %930 to i32*
  store i32 %931, i32* %935
  store %struct.Memory* %loadMem_405a8f, %struct.Memory** %MEMORY
  %loadMem_405a95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 33
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %938 to i64*
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 1
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %RAX.i450 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 15
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %944 to i64*
  %945 = load i64, i64* %RBP.i451
  %946 = sub i64 %945, 8
  %947 = load i64, i64* %PC.i449
  %948 = add i64 %947, 4
  store i64 %948, i64* %PC.i449
  %949 = inttoptr i64 %946 to i64*
  %950 = load i64, i64* %949
  store i64 %950, i64* %RAX.i450, align 8
  store %struct.Memory* %loadMem_405a95, %struct.Memory** %MEMORY
  %loadMem_405a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 33
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %953 to i64*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 15
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %956 to i64*
  %957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %958 = getelementptr inbounds %struct.GPR, %struct.GPR* %957, i32 0, i32 17
  %959 = getelementptr inbounds %struct.Reg, %struct.Reg* %958, i32 0, i32 0
  %R8.i448 = bitcast %union.anon* %959 to i64*
  %960 = load i64, i64* %RBP.i447
  %961 = sub i64 %960, 8
  %962 = load i64, i64* %PC.i446
  %963 = add i64 %962, 4
  store i64 %963, i64* %PC.i446
  %964 = inttoptr i64 %961 to i64*
  %965 = load i64, i64* %964
  store i64 %965, i64* %R8.i448, align 8
  store %struct.Memory* %loadMem_405a99, %struct.Memory** %MEMORY
  %loadMem_405a9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 33
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %PC.i443 = bitcast %union.anon* %968 to i64*
  %969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %970 = getelementptr inbounds %struct.GPR, %struct.GPR* %969, i32 0, i32 5
  %971 = getelementptr inbounds %struct.Reg, %struct.Reg* %970, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %971 to i64*
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 17
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %R8.i445 = bitcast %union.anon* %974 to i64*
  %975 = load i64, i64* %R8.i445
  %976 = add i64 %975, 92
  %977 = load i64, i64* %PC.i443
  %978 = add i64 %977, 4
  store i64 %978, i64* %PC.i443
  %979 = inttoptr i64 %976 to i32*
  %980 = load i32, i32* %979
  %981 = zext i32 %980 to i64
  store i64 %981, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_405a9d, %struct.Memory** %MEMORY
  %loadMem_405aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %983 = getelementptr inbounds %struct.GPR, %struct.GPR* %982, i32 0, i32 33
  %984 = getelementptr inbounds %struct.Reg, %struct.Reg* %983, i32 0, i32 0
  %PC.i440 = bitcast %union.anon* %984 to i64*
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 5
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %ECX.i441 = bitcast %union.anon* %987 to i32*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 17
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %R8D.i442 = bitcast %union.anon* %990 to i32*
  %991 = bitcast i32* %R8D.i442 to i64*
  %992 = load i32, i32* %ECX.i441
  %993 = zext i32 %992 to i64
  %994 = load i64, i64* %PC.i440
  %995 = add i64 %994, 3
  store i64 %995, i64* %PC.i440
  %996 = and i64 %993, 4294967295
  store i64 %996, i64* %991, align 8
  store %struct.Memory* %loadMem_405aa1, %struct.Memory** %MEMORY
  %loadMem_405aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %998 = getelementptr inbounds %struct.GPR, %struct.GPR* %997, i32 0, i32 33
  %999 = getelementptr inbounds %struct.Reg, %struct.Reg* %998, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %999 to i64*
  %1000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1001 = getelementptr inbounds %struct.GPR, %struct.GPR* %1000, i32 0, i32 1
  %1002 = getelementptr inbounds %struct.Reg, %struct.Reg* %1001, i32 0, i32 0
  %RAX.i438 = bitcast %union.anon* %1002 to i64*
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1004 = getelementptr inbounds %struct.GPR, %struct.GPR* %1003, i32 0, i32 17
  %1005 = getelementptr inbounds %struct.Reg, %struct.Reg* %1004, i32 0, i32 0
  %R8.i439 = bitcast %union.anon* %1005 to i64*
  %1006 = load i64, i64* %RAX.i438
  %1007 = load i64, i64* %R8.i439
  %1008 = add i64 %1006, 128
  %1009 = add i64 %1008, %1007
  %1010 = load i64, i64* %PC.i437
  %1011 = add i64 %1010, 9
  store i64 %1011, i64* %PC.i437
  %1012 = inttoptr i64 %1009 to i8*
  store i8 1, i8* %1012
  store %struct.Memory* %loadMem_405aa4, %struct.Memory** %MEMORY
  %loadMem_405aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 7
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %1019 = bitcast %union.anon* %1018 to %struct.anon.2*
  %DL.i435 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1019, i32 0, i32 0
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1021 = getelementptr inbounds %struct.GPR, %struct.GPR* %1020, i32 0, i32 15
  %1022 = getelementptr inbounds %struct.Reg, %struct.Reg* %1021, i32 0, i32 0
  %RBP.i436 = bitcast %union.anon* %1022 to i64*
  %1023 = load i64, i64* %RBP.i436
  %1024 = sub i64 %1023, 17
  %1025 = load i64, i64* %PC.i434
  %1026 = add i64 %1025, 3
  store i64 %1026, i64* %PC.i434
  %1027 = inttoptr i64 %1024 to i8*
  %1028 = load i8, i8* %1027
  store i8 %1028, i8* %DL.i435, align 1
  store %struct.Memory* %loadMem_405aad, %struct.Memory** %MEMORY
  %loadMem_405ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1030 = getelementptr inbounds %struct.GPR, %struct.GPR* %1029, i32 0, i32 33
  %1031 = getelementptr inbounds %struct.Reg, %struct.Reg* %1030, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %1031 to i64*
  %1032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1033 = getelementptr inbounds %struct.GPR, %struct.GPR* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds %struct.Reg, %struct.Reg* %1033, i32 0, i32 0
  %RAX.i432 = bitcast %union.anon* %1034 to i64*
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1036 = getelementptr inbounds %struct.GPR, %struct.GPR* %1035, i32 0, i32 15
  %1037 = getelementptr inbounds %struct.Reg, %struct.Reg* %1036, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %1037 to i64*
  %1038 = load i64, i64* %RBP.i433
  %1039 = sub i64 %1038, 8
  %1040 = load i64, i64* %PC.i431
  %1041 = add i64 %1040, 4
  store i64 %1041, i64* %PC.i431
  %1042 = inttoptr i64 %1039 to i64*
  %1043 = load i64, i64* %1042
  store i64 %1043, i64* %RAX.i432, align 8
  store %struct.Memory* %loadMem_405ab0, %struct.Memory** %MEMORY
  %loadMem_405ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1045 = getelementptr inbounds %struct.GPR, %struct.GPR* %1044, i32 0, i32 33
  %1046 = getelementptr inbounds %struct.Reg, %struct.Reg* %1045, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %1046 to i64*
  %1047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1048 = getelementptr inbounds %struct.GPR, %struct.GPR* %1047, i32 0, i32 1
  %1049 = getelementptr inbounds %struct.Reg, %struct.Reg* %1048, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %1049 to i64*
  %1050 = load i64, i64* %RAX.i430
  %1051 = add i64 %1050, 64
  %1052 = load i64, i64* %PC.i429
  %1053 = add i64 %1052, 4
  store i64 %1053, i64* %PC.i429
  %1054 = inttoptr i64 %1051 to i64*
  %1055 = load i64, i64* %1054
  store i64 %1055, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_405ab4, %struct.Memory** %MEMORY
  %loadMem_405ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 15
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RBP.i427 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 17
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %R8.i428 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RBP.i427
  %1066 = sub i64 %1065, 8
  %1067 = load i64, i64* %PC.i426
  %1068 = add i64 %1067, 4
  store i64 %1068, i64* %PC.i426
  %1069 = inttoptr i64 %1066 to i64*
  %1070 = load i64, i64* %1069
  store i64 %1070, i64* %R8.i428, align 8
  store %struct.Memory* %loadMem_405ab8, %struct.Memory** %MEMORY
  %loadMem_405abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1072 = getelementptr inbounds %struct.GPR, %struct.GPR* %1071, i32 0, i32 33
  %1073 = getelementptr inbounds %struct.Reg, %struct.Reg* %1072, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %1073 to i64*
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1075 = getelementptr inbounds %struct.GPR, %struct.GPR* %1074, i32 0, i32 17
  %1076 = getelementptr inbounds %struct.Reg, %struct.Reg* %1075, i32 0, i32 0
  %R8.i425 = bitcast %union.anon* %1076 to i64*
  %1077 = load i64, i64* %R8.i425
  %1078 = add i64 %1077, 108
  %1079 = load i64, i64* %PC.i424
  %1080 = add i64 %1079, 4
  store i64 %1080, i64* %PC.i424
  %1081 = inttoptr i64 %1078 to i32*
  %1082 = load i32, i32* %1081
  %1083 = sext i32 %1082 to i64
  store i64 %1083, i64* %R8.i425, align 8
  store %struct.Memory* %loadMem_405abc, %struct.Memory** %MEMORY
  %loadMem_405ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %1086 to i64*
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 7
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %1090 = bitcast %union.anon* %1089 to %struct.anon.2*
  %DL.i421 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1090, i32 0, i32 0
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 17
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %R8.i423 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RAX.i422
  %1098 = load i64, i64* %R8.i423
  %1099 = add i64 %1098, %1097
  %1100 = load i8, i8* %DL.i421
  %1101 = zext i8 %1100 to i64
  %1102 = load i64, i64* %PC.i420
  %1103 = add i64 %1102, 4
  store i64 %1103, i64* %PC.i420
  %1104 = inttoptr i64 %1099 to i8*
  store i8 %1100, i8* %1104
  store %struct.Memory* %loadMem_405ac0, %struct.Memory** %MEMORY
  %loadMem_405ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 33
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %1107 to i64*
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1109 = getelementptr inbounds %struct.GPR, %struct.GPR* %1108, i32 0, i32 1
  %1110 = getelementptr inbounds %struct.Reg, %struct.Reg* %1109, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %1110 to i64*
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1112 = getelementptr inbounds %struct.GPR, %struct.GPR* %1111, i32 0, i32 15
  %1113 = getelementptr inbounds %struct.Reg, %struct.Reg* %1112, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %1113 to i64*
  %1114 = load i64, i64* %RBP.i419
  %1115 = sub i64 %1114, 8
  %1116 = load i64, i64* %PC.i417
  %1117 = add i64 %1116, 4
  store i64 %1117, i64* %PC.i417
  %1118 = inttoptr i64 %1115 to i64*
  %1119 = load i64, i64* %1118
  store i64 %1119, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_405ac4, %struct.Memory** %MEMORY
  %loadMem_405ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 33
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 1
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RAX.i415 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 5
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %RCX.i416 = bitcast %union.anon* %1128 to i64*
  %1129 = load i64, i64* %RAX.i415
  %1130 = add i64 %1129, 108
  %1131 = load i64, i64* %PC.i414
  %1132 = add i64 %1131, 3
  store i64 %1132, i64* %PC.i414
  %1133 = inttoptr i64 %1130 to i32*
  %1134 = load i32, i32* %1133
  %1135 = zext i32 %1134 to i64
  store i64 %1135, i64* %RCX.i416, align 8
  store %struct.Memory* %loadMem_405ac8, %struct.Memory** %MEMORY
  %loadMem_405acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 33
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 5
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %RCX.i413
  %1143 = load i64, i64* %PC.i412
  %1144 = add i64 %1143, 3
  store i64 %1144, i64* %PC.i412
  %1145 = trunc i64 %1142 to i32
  %1146 = add i32 1, %1145
  %1147 = zext i32 %1146 to i64
  store i64 %1147, i64* %RCX.i413, align 8
  %1148 = icmp ult i32 %1146, %1145
  %1149 = icmp ult i32 %1146, 1
  %1150 = or i1 %1148, %1149
  %1151 = zext i1 %1150 to i8
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1151, i8* %1152, align 1
  %1153 = and i32 %1146, 255
  %1154 = call i32 @llvm.ctpop.i32(i32 %1153)
  %1155 = trunc i32 %1154 to i8
  %1156 = and i8 %1155, 1
  %1157 = xor i8 %1156, 1
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1157, i8* %1158, align 1
  %1159 = xor i64 1, %1142
  %1160 = trunc i64 %1159 to i32
  %1161 = xor i32 %1160, %1146
  %1162 = lshr i32 %1161, 4
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1164, i8* %1165, align 1
  %1166 = icmp eq i32 %1146, 0
  %1167 = zext i1 %1166 to i8
  %1168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1167, i8* %1168, align 1
  %1169 = lshr i32 %1146, 31
  %1170 = trunc i32 %1169 to i8
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1170, i8* %1171, align 1
  %1172 = lshr i32 %1145, 31
  %1173 = xor i32 %1169, %1172
  %1174 = add i32 %1173, %1169
  %1175 = icmp eq i32 %1174, 2
  %1176 = zext i1 %1175 to i8
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1176, i8* %1177, align 1
  store %struct.Memory* %loadMem_405acb, %struct.Memory** %MEMORY
  %loadMem_405ace = load %struct.Memory*, %struct.Memory** %MEMORY
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 33
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 5
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %ECX.i410 = bitcast %union.anon* %1183 to i32*
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1185 = getelementptr inbounds %struct.GPR, %struct.GPR* %1184, i32 0, i32 1
  %1186 = getelementptr inbounds %struct.Reg, %struct.Reg* %1185, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %1186 to i64*
  %1187 = load i64, i64* %RAX.i411
  %1188 = add i64 %1187, 108
  %1189 = load i32, i32* %ECX.i410
  %1190 = zext i32 %1189 to i64
  %1191 = load i64, i64* %PC.i409
  %1192 = add i64 %1191, 3
  store i64 %1192, i64* %PC.i409
  %1193 = inttoptr i64 %1188 to i32*
  store i32 %1189, i32* %1193
  store %struct.Memory* %loadMem_405ace, %struct.Memory** %MEMORY
  %loadMem_405ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 5
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %1199 to i64*
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 15
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %RBP.i408 = bitcast %union.anon* %1202 to i64*
  %1203 = load i64, i64* %RBP.i408
  %1204 = sub i64 %1203, 16
  %1205 = load i64, i64* %PC.i406
  %1206 = add i64 %1205, 3
  store i64 %1206, i64* %PC.i406
  %1207 = inttoptr i64 %1204 to i32*
  %1208 = load i32, i32* %1207
  %1209 = zext i32 %1208 to i64
  store i64 %1209, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_405ad1, %struct.Memory** %MEMORY
  %loadMem_405ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %1212 to i64*
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1214 = getelementptr inbounds %struct.GPR, %struct.GPR* %1213, i32 0, i32 1
  %1215 = getelementptr inbounds %struct.Reg, %struct.Reg* %1214, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %1215 to i64*
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1217 = getelementptr inbounds %struct.GPR, %struct.GPR* %1216, i32 0, i32 15
  %1218 = getelementptr inbounds %struct.Reg, %struct.Reg* %1217, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %1218 to i64*
  %1219 = load i64, i64* %RBP.i405
  %1220 = sub i64 %1219, 8
  %1221 = load i64, i64* %PC.i403
  %1222 = add i64 %1221, 4
  store i64 %1222, i64* %PC.i403
  %1223 = inttoptr i64 %1220 to i64*
  %1224 = load i64, i64* %1223
  store i64 %1224, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_405ad4, %struct.Memory** %MEMORY
  %loadMem_405ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1226 = getelementptr inbounds %struct.GPR, %struct.GPR* %1225, i32 0, i32 33
  %1227 = getelementptr inbounds %struct.Reg, %struct.Reg* %1226, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %1227 to i64*
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1229 = getelementptr inbounds %struct.GPR, %struct.GPR* %1228, i32 0, i32 5
  %1230 = getelementptr inbounds %struct.Reg, %struct.Reg* %1229, i32 0, i32 0
  %ECX.i401 = bitcast %union.anon* %1230 to i32*
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1232 = getelementptr inbounds %struct.GPR, %struct.GPR* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds %struct.Reg, %struct.Reg* %1232, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %1233 to i64*
  %1234 = load i64, i64* %RAX.i402
  %1235 = add i64 %1234, 92
  %1236 = load i32, i32* %ECX.i401
  %1237 = zext i32 %1236 to i64
  %1238 = load i64, i64* %PC.i400
  %1239 = add i64 %1238, 3
  store i64 %1239, i64* %PC.i400
  %1240 = inttoptr i64 %1235 to i32*
  store i32 %1236, i32* %1240
  store %struct.Memory* %loadMem_405ad8, %struct.Memory** %MEMORY
  %loadMem_405adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1242 = getelementptr inbounds %struct.GPR, %struct.GPR* %1241, i32 0, i32 33
  %1243 = getelementptr inbounds %struct.Reg, %struct.Reg* %1242, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %1243 to i64*
  %1244 = load i64, i64* %PC.i399
  %1245 = add i64 %1244, 108
  %1246 = load i64, i64* %PC.i399
  %1247 = add i64 %1246, 5
  store i64 %1247, i64* %PC.i399
  %1248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1245, i64* %1248, align 8
  store %struct.Memory* %loadMem_405adb, %struct.Memory** %MEMORY
  br label %block_.L_405b47

block_.L_405ae0:                                  ; preds = %block_405a46, %block_.L_405a22
  %loadMem_405ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 33
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %1251 to i64*
  %1252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1253 = getelementptr inbounds %struct.GPR, %struct.GPR* %1252, i32 0, i32 1
  %1254 = getelementptr inbounds %struct.Reg, %struct.Reg* %1253, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %1254 to i64*
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 15
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %1257 to i64*
  %1258 = load i64, i64* %RBP.i398
  %1259 = sub i64 %1258, 16
  %1260 = load i64, i64* %PC.i396
  %1261 = add i64 %1260, 3
  store i64 %1261, i64* %PC.i396
  %1262 = inttoptr i64 %1259 to i32*
  %1263 = load i32, i32* %1262
  %1264 = zext i32 %1263 to i64
  store i64 %1264, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_405ae0, %struct.Memory** %MEMORY
  %loadMem_405ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 5
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i395
  %1275 = sub i64 %1274, 8
  %1276 = load i64, i64* %PC.i393
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i393
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278
  store i64 %1279, i64* %RCX.i394, align 8
  store %struct.Memory* %loadMem_405ae3, %struct.Memory** %MEMORY
  %loadMem_405ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %EAX.i391 = bitcast %union.anon* %1285 to i32*
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 5
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %RCX.i392 = bitcast %union.anon* %1288 to i64*
  %1289 = load i32, i32* %EAX.i391
  %1290 = zext i32 %1289 to i64
  %1291 = load i64, i64* %RCX.i392
  %1292 = add i64 %1291, 92
  %1293 = load i64, i64* %PC.i390
  %1294 = add i64 %1293, 3
  store i64 %1294, i64* %PC.i390
  %1295 = inttoptr i64 %1292 to i32*
  %1296 = load i32, i32* %1295
  %1297 = sub i32 %1289, %1296
  %1298 = icmp ult i32 %1289, %1296
  %1299 = zext i1 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1299, i8* %1300, align 1
  %1301 = and i32 %1297, 255
  %1302 = call i32 @llvm.ctpop.i32(i32 %1301)
  %1303 = trunc i32 %1302 to i8
  %1304 = and i8 %1303, 1
  %1305 = xor i8 %1304, 1
  %1306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1305, i8* %1306, align 1
  %1307 = xor i32 %1296, %1289
  %1308 = xor i32 %1307, %1297
  %1309 = lshr i32 %1308, 4
  %1310 = trunc i32 %1309 to i8
  %1311 = and i8 %1310, 1
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1311, i8* %1312, align 1
  %1313 = icmp eq i32 %1297, 0
  %1314 = zext i1 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1314, i8* %1315, align 1
  %1316 = lshr i32 %1297, 31
  %1317 = trunc i32 %1316 to i8
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1317, i8* %1318, align 1
  %1319 = lshr i32 %1289, 31
  %1320 = lshr i32 %1296, 31
  %1321 = xor i32 %1320, %1319
  %1322 = xor i32 %1316, %1319
  %1323 = add i32 %1322, %1321
  %1324 = icmp eq i32 %1323, 2
  %1325 = zext i1 %1324 to i8
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1325, i8* %1326, align 1
  store %struct.Memory* %loadMem_405ae7, %struct.Memory** %MEMORY
  %loadMem_405aea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 33
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %PC.i389
  %1331 = add i64 %1330, 23
  %1332 = load i64, i64* %PC.i389
  %1333 = add i64 %1332, 6
  %1334 = load i64, i64* %PC.i389
  %1335 = add i64 %1334, 6
  store i64 %1335, i64* %PC.i389
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1337 = load i8, i8* %1336, align 1
  %1338 = icmp eq i8 %1337, 0
  %1339 = zext i1 %1338 to i8
  store i8 %1339, i8* %BRANCH_TAKEN, align 1
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1341 = select i1 %1338, i64 %1331, i64 %1333
  store i64 %1341, i64* %1340, align 8
  store %struct.Memory* %loadMem_405aea, %struct.Memory** %MEMORY
  %loadBr_405aea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405aea = icmp eq i8 %loadBr_405aea, 1
  br i1 %cmpBr_405aea, label %block_.L_405b01, label %block_405af0

block_405af0:                                     ; preds = %block_.L_405ae0
  %loadMem_405af0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 1
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %1347 to i64*
  %1348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1349 = getelementptr inbounds %struct.GPR, %struct.GPR* %1348, i32 0, i32 15
  %1350 = getelementptr inbounds %struct.Reg, %struct.Reg* %1349, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1350 to i64*
  %1351 = load i64, i64* %RBP.i388
  %1352 = sub i64 %1351, 8
  %1353 = load i64, i64* %PC.i386
  %1354 = add i64 %1353, 4
  store i64 %1354, i64* %PC.i386
  %1355 = inttoptr i64 %1352 to i64*
  %1356 = load i64, i64* %1355
  store i64 %1356, i64* %RAX.i387, align 8
  store %struct.Memory* %loadMem_405af0, %struct.Memory** %MEMORY
  %loadMem_405af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 33
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1359 to i64*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 1
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RAX.i385 = bitcast %union.anon* %1362 to i64*
  %1363 = load i64, i64* %RAX.i385
  %1364 = add i64 %1363, 96
  %1365 = load i64, i64* %PC.i384
  %1366 = add i64 %1365, 7
  store i64 %1366, i64* %PC.i384
  %1367 = inttoptr i64 %1364 to i32*
  %1368 = load i32, i32* %1367
  %1369 = sub i32 %1368, 255
  %1370 = icmp ult i32 %1368, 255
  %1371 = zext i1 %1370 to i8
  %1372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1371, i8* %1372, align 1
  %1373 = and i32 %1369, 255
  %1374 = call i32 @llvm.ctpop.i32(i32 %1373)
  %1375 = trunc i32 %1374 to i8
  %1376 = and i8 %1375, 1
  %1377 = xor i8 %1376, 1
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1377, i8* %1378, align 1
  %1379 = xor i32 %1368, 255
  %1380 = xor i32 %1379, %1369
  %1381 = lshr i32 %1380, 4
  %1382 = trunc i32 %1381 to i8
  %1383 = and i8 %1382, 1
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1383, i8* %1384, align 1
  %1385 = icmp eq i32 %1369, 0
  %1386 = zext i1 %1385 to i8
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1386, i8* %1387, align 1
  %1388 = lshr i32 %1369, 31
  %1389 = trunc i32 %1388 to i8
  %1390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1389, i8* %1390, align 1
  %1391 = lshr i32 %1368, 31
  %1392 = xor i32 %1388, %1391
  %1393 = add i32 %1392, %1391
  %1394 = icmp eq i32 %1393, 2
  %1395 = zext i1 %1394 to i8
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1395, i8* %1396, align 1
  store %struct.Memory* %loadMem_405af4, %struct.Memory** %MEMORY
  %loadMem_405afb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1398 = getelementptr inbounds %struct.GPR, %struct.GPR* %1397, i32 0, i32 33
  %1399 = getelementptr inbounds %struct.Reg, %struct.Reg* %1398, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1399 to i64*
  %1400 = load i64, i64* %PC.i383
  %1401 = add i64 %1400, 58
  %1402 = load i64, i64* %PC.i383
  %1403 = add i64 %1402, 6
  %1404 = load i64, i64* %PC.i383
  %1405 = add i64 %1404, 6
  store i64 %1405, i64* %PC.i383
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1407 = load i8, i8* %1406, align 1
  %1408 = icmp eq i8 %1407, 0
  %1409 = zext i1 %1408 to i8
  store i8 %1409, i8* %BRANCH_TAKEN, align 1
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1411 = select i1 %1408, i64 %1401, i64 %1403
  store i64 %1411, i64* %1410, align 8
  store %struct.Memory* %loadMem_405afb, %struct.Memory** %MEMORY
  %loadBr_405afb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405afb = icmp eq i8 %loadBr_405afb, 1
  br i1 %cmpBr_405afb, label %block_.L_405b35, label %block_.L_405b01

block_.L_405b01:                                  ; preds = %block_405af0, %block_.L_405ae0
  %loadMem_405b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 1
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %1417 to i64*
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1419 = getelementptr inbounds %struct.GPR, %struct.GPR* %1418, i32 0, i32 15
  %1420 = getelementptr inbounds %struct.Reg, %struct.Reg* %1419, i32 0, i32 0
  %RBP.i382 = bitcast %union.anon* %1420 to i64*
  %1421 = load i64, i64* %RBP.i382
  %1422 = sub i64 %1421, 8
  %1423 = load i64, i64* %PC.i380
  %1424 = add i64 %1423, 4
  store i64 %1424, i64* %PC.i380
  %1425 = inttoptr i64 %1422 to i64*
  %1426 = load i64, i64* %1425
  store i64 %1426, i64* %RAX.i381, align 8
  store %struct.Memory* %loadMem_405b01, %struct.Memory** %MEMORY
  %loadMem_405b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %1429 to i64*
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1431 = getelementptr inbounds %struct.GPR, %struct.GPR* %1430, i32 0, i32 1
  %1432 = getelementptr inbounds %struct.Reg, %struct.Reg* %1431, i32 0, i32 0
  %RAX.i379 = bitcast %union.anon* %1432 to i64*
  %1433 = load i64, i64* %RAX.i379
  %1434 = add i64 %1433, 92
  %1435 = load i64, i64* %PC.i378
  %1436 = add i64 %1435, 7
  store i64 %1436, i64* %PC.i378
  %1437 = inttoptr i64 %1434 to i32*
  %1438 = load i32, i32* %1437
  %1439 = sub i32 %1438, 256
  %1440 = icmp ult i32 %1438, 256
  %1441 = zext i1 %1440 to i8
  %1442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1441, i8* %1442, align 1
  %1443 = and i32 %1439, 255
  %1444 = call i32 @llvm.ctpop.i32(i32 %1443)
  %1445 = trunc i32 %1444 to i8
  %1446 = and i8 %1445, 1
  %1447 = xor i8 %1446, 1
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1447, i8* %1448, align 1
  %1449 = xor i32 %1438, 256
  %1450 = xor i32 %1449, %1439
  %1451 = lshr i32 %1450, 4
  %1452 = trunc i32 %1451 to i8
  %1453 = and i8 %1452, 1
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1453, i8* %1454, align 1
  %1455 = icmp eq i32 %1439, 0
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1456, i8* %1457, align 1
  %1458 = lshr i32 %1439, 31
  %1459 = trunc i32 %1458 to i8
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1459, i8* %1460, align 1
  %1461 = lshr i32 %1438, 31
  %1462 = xor i32 %1458, %1461
  %1463 = add i32 %1462, %1461
  %1464 = icmp eq i32 %1463, 2
  %1465 = zext i1 %1464 to i8
  %1466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1465, i8* %1466, align 1
  store %struct.Memory* %loadMem_405b05, %struct.Memory** %MEMORY
  %loadMem_405b0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 33
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %1469 to i64*
  %1470 = load i64, i64* %PC.i377
  %1471 = add i64 %1470, 15
  %1472 = load i64, i64* %PC.i377
  %1473 = add i64 %1472, 6
  %1474 = load i64, i64* %PC.i377
  %1475 = add i64 %1474, 6
  store i64 %1475, i64* %PC.i377
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1477 = load i8, i8* %1476, align 1
  %1478 = icmp eq i8 %1477, 0
  %1479 = zext i1 %1478 to i8
  store i8 %1479, i8* %BRANCH_TAKEN, align 1
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1481 = select i1 %1478, i64 %1471, i64 %1473
  store i64 %1481, i64* %1480, align 8
  store %struct.Memory* %loadMem_405b0c, %struct.Memory** %MEMORY
  %loadBr_405b0c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405b0c = icmp eq i8 %loadBr_405b0c, 1
  br i1 %cmpBr_405b0c, label %block_.L_405b1b, label %block_405b12

block_405b12:                                     ; preds = %block_.L_405b01
  %loadMem_405b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 33
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %PC.i374 = bitcast %union.anon* %1484 to i64*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1486 = getelementptr inbounds %struct.GPR, %struct.GPR* %1485, i32 0, i32 11
  %1487 = getelementptr inbounds %struct.Reg, %struct.Reg* %1486, i32 0, i32 0
  %RDI.i375 = bitcast %union.anon* %1487 to i64*
  %1488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1489 = getelementptr inbounds %struct.GPR, %struct.GPR* %1488, i32 0, i32 15
  %1490 = getelementptr inbounds %struct.Reg, %struct.Reg* %1489, i32 0, i32 0
  %RBP.i376 = bitcast %union.anon* %1490 to i64*
  %1491 = load i64, i64* %RBP.i376
  %1492 = sub i64 %1491, 8
  %1493 = load i64, i64* %PC.i374
  %1494 = add i64 %1493, 4
  store i64 %1494, i64* %PC.i374
  %1495 = inttoptr i64 %1492 to i64*
  %1496 = load i64, i64* %1495
  store i64 %1496, i64* %RDI.i375, align 8
  store %struct.Memory* %loadMem_405b12, %struct.Memory** %MEMORY
  %loadMem1_405b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 33
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %PC.i373
  %1501 = add i64 %1500, 698
  %1502 = load i64, i64* %PC.i373
  %1503 = add i64 %1502, 5
  %1504 = load i64, i64* %PC.i373
  %1505 = add i64 %1504, 5
  store i64 %1505, i64* %PC.i373
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1507 = load i64, i64* %1506, align 8
  %1508 = add i64 %1507, -8
  %1509 = inttoptr i64 %1508 to i64*
  store i64 %1503, i64* %1509
  store i64 %1508, i64* %1506, align 8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1501, i64* %1510, align 8
  store %struct.Memory* %loadMem1_405b16, %struct.Memory** %MEMORY
  %loadMem2_405b16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_405b16 = load i64, i64* %3
  %call2_405b16 = call %struct.Memory* @sub_405dd0.add_pair_to_block(%struct.State* %0, i64 %loadPC_405b16, %struct.Memory* %loadMem2_405b16)
  store %struct.Memory* %call2_405b16, %struct.Memory** %MEMORY
  br label %block_.L_405b1b

block_.L_405b1b:                                  ; preds = %block_405b12, %block_.L_405b01
  %loadMem_405b1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 1
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %1516 to i64*
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 15
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %RBP.i372
  %1521 = sub i64 %1520, 16
  %1522 = load i64, i64* %PC.i370
  %1523 = add i64 %1522, 3
  store i64 %1523, i64* %PC.i370
  %1524 = inttoptr i64 %1521 to i32*
  %1525 = load i32, i32* %1524
  %1526 = zext i32 %1525 to i64
  store i64 %1526, i64* %RAX.i371, align 8
  store %struct.Memory* %loadMem_405b1b, %struct.Memory** %MEMORY
  %loadMem_405b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 5
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RCX.i368 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1534 = getelementptr inbounds %struct.GPR, %struct.GPR* %1533, i32 0, i32 15
  %1535 = getelementptr inbounds %struct.Reg, %struct.Reg* %1534, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1535 to i64*
  %1536 = load i64, i64* %RBP.i369
  %1537 = sub i64 %1536, 8
  %1538 = load i64, i64* %PC.i367
  %1539 = add i64 %1538, 4
  store i64 %1539, i64* %PC.i367
  %1540 = inttoptr i64 %1537 to i64*
  %1541 = load i64, i64* %1540
  store i64 %1541, i64* %RCX.i368, align 8
  store %struct.Memory* %loadMem_405b1e, %struct.Memory** %MEMORY
  %loadMem_405b22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 33
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1544 to i64*
  %1545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1546 = getelementptr inbounds %struct.GPR, %struct.GPR* %1545, i32 0, i32 1
  %1547 = getelementptr inbounds %struct.Reg, %struct.Reg* %1546, i32 0, i32 0
  %EAX.i365 = bitcast %union.anon* %1547 to i32*
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 5
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %1550 to i64*
  %1551 = load i64, i64* %RCX.i366
  %1552 = add i64 %1551, 92
  %1553 = load i32, i32* %EAX.i365
  %1554 = zext i32 %1553 to i64
  %1555 = load i64, i64* %PC.i364
  %1556 = add i64 %1555, 3
  store i64 %1556, i64* %PC.i364
  %1557 = inttoptr i64 %1552 to i32*
  store i32 %1553, i32* %1557
  store %struct.Memory* %loadMem_405b22, %struct.Memory** %MEMORY
  %loadMem_405b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1559 = getelementptr inbounds %struct.GPR, %struct.GPR* %1558, i32 0, i32 33
  %1560 = getelementptr inbounds %struct.Reg, %struct.Reg* %1559, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1560 to i64*
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1562 = getelementptr inbounds %struct.GPR, %struct.GPR* %1561, i32 0, i32 5
  %1563 = getelementptr inbounds %struct.Reg, %struct.Reg* %1562, i32 0, i32 0
  %RCX.i362 = bitcast %union.anon* %1563 to i64*
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 15
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1566 to i64*
  %1567 = load i64, i64* %RBP.i363
  %1568 = sub i64 %1567, 8
  %1569 = load i64, i64* %PC.i361
  %1570 = add i64 %1569, 4
  store i64 %1570, i64* %PC.i361
  %1571 = inttoptr i64 %1568 to i64*
  %1572 = load i64, i64* %1571
  store i64 %1572, i64* %RCX.i362, align 8
  store %struct.Memory* %loadMem_405b25, %struct.Memory** %MEMORY
  %loadMem_405b29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1574 = getelementptr inbounds %struct.GPR, %struct.GPR* %1573, i32 0, i32 33
  %1575 = getelementptr inbounds %struct.Reg, %struct.Reg* %1574, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1575 to i64*
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 5
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %RCX.i360 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %RCX.i360
  %1580 = add i64 %1579, 96
  %1581 = load i64, i64* %PC.i359
  %1582 = add i64 %1581, 7
  store i64 %1582, i64* %PC.i359
  %1583 = inttoptr i64 %1580 to i32*
  store i32 1, i32* %1583
  store %struct.Memory* %loadMem_405b29, %struct.Memory** %MEMORY
  %loadMem_405b30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1585 = getelementptr inbounds %struct.GPR, %struct.GPR* %1584, i32 0, i32 33
  %1586 = getelementptr inbounds %struct.Reg, %struct.Reg* %1585, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1586 to i64*
  %1587 = load i64, i64* %PC.i358
  %1588 = add i64 %1587, 18
  %1589 = load i64, i64* %PC.i358
  %1590 = add i64 %1589, 5
  store i64 %1590, i64* %PC.i358
  %1591 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1588, i64* %1591, align 8
  store %struct.Memory* %loadMem_405b30, %struct.Memory** %MEMORY
  br label %block_.L_405b42

block_.L_405b35:                                  ; preds = %block_405af0
  %loadMem_405b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 33
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %1594 to i64*
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 1
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %1597 to i64*
  %1598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1599 = getelementptr inbounds %struct.GPR, %struct.GPR* %1598, i32 0, i32 15
  %1600 = getelementptr inbounds %struct.Reg, %struct.Reg* %1599, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %1600 to i64*
  %1601 = load i64, i64* %RBP.i357
  %1602 = sub i64 %1601, 8
  %1603 = load i64, i64* %PC.i355
  %1604 = add i64 %1603, 4
  store i64 %1604, i64* %PC.i355
  %1605 = inttoptr i64 %1602 to i64*
  %1606 = load i64, i64* %1605
  store i64 %1606, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_405b35, %struct.Memory** %MEMORY
  %loadMem_405b39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1608 = getelementptr inbounds %struct.GPR, %struct.GPR* %1607, i32 0, i32 33
  %1609 = getelementptr inbounds %struct.Reg, %struct.Reg* %1608, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %1609 to i64*
  %1610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1611 = getelementptr inbounds %struct.GPR, %struct.GPR* %1610, i32 0, i32 1
  %1612 = getelementptr inbounds %struct.Reg, %struct.Reg* %1611, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %1612 to i64*
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1614 = getelementptr inbounds %struct.GPR, %struct.GPR* %1613, i32 0, i32 5
  %1615 = getelementptr inbounds %struct.Reg, %struct.Reg* %1614, i32 0, i32 0
  %RCX.i354 = bitcast %union.anon* %1615 to i64*
  %1616 = load i64, i64* %RAX.i353
  %1617 = add i64 %1616, 96
  %1618 = load i64, i64* %PC.i352
  %1619 = add i64 %1618, 3
  store i64 %1619, i64* %PC.i352
  %1620 = inttoptr i64 %1617 to i32*
  %1621 = load i32, i32* %1620
  %1622 = zext i32 %1621 to i64
  store i64 %1622, i64* %RCX.i354, align 8
  store %struct.Memory* %loadMem_405b39, %struct.Memory** %MEMORY
  %loadMem_405b3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1624 = getelementptr inbounds %struct.GPR, %struct.GPR* %1623, i32 0, i32 33
  %1625 = getelementptr inbounds %struct.Reg, %struct.Reg* %1624, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %1625 to i64*
  %1626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1627 = getelementptr inbounds %struct.GPR, %struct.GPR* %1626, i32 0, i32 5
  %1628 = getelementptr inbounds %struct.Reg, %struct.Reg* %1627, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %1628 to i64*
  %1629 = load i64, i64* %RCX.i351
  %1630 = load i64, i64* %PC.i350
  %1631 = add i64 %1630, 3
  store i64 %1631, i64* %PC.i350
  %1632 = trunc i64 %1629 to i32
  %1633 = add i32 1, %1632
  %1634 = zext i32 %1633 to i64
  store i64 %1634, i64* %RCX.i351, align 8
  %1635 = icmp ult i32 %1633, %1632
  %1636 = icmp ult i32 %1633, 1
  %1637 = or i1 %1635, %1636
  %1638 = zext i1 %1637 to i8
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1638, i8* %1639, align 1
  %1640 = and i32 %1633, 255
  %1641 = call i32 @llvm.ctpop.i32(i32 %1640)
  %1642 = trunc i32 %1641 to i8
  %1643 = and i8 %1642, 1
  %1644 = xor i8 %1643, 1
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1644, i8* %1645, align 1
  %1646 = xor i64 1, %1629
  %1647 = trunc i64 %1646 to i32
  %1648 = xor i32 %1647, %1633
  %1649 = lshr i32 %1648, 4
  %1650 = trunc i32 %1649 to i8
  %1651 = and i8 %1650, 1
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1651, i8* %1652, align 1
  %1653 = icmp eq i32 %1633, 0
  %1654 = zext i1 %1653 to i8
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1654, i8* %1655, align 1
  %1656 = lshr i32 %1633, 31
  %1657 = trunc i32 %1656 to i8
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1657, i8* %1658, align 1
  %1659 = lshr i32 %1632, 31
  %1660 = xor i32 %1656, %1659
  %1661 = add i32 %1660, %1656
  %1662 = icmp eq i32 %1661, 2
  %1663 = zext i1 %1662 to i8
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1663, i8* %1664, align 1
  store %struct.Memory* %loadMem_405b3c, %struct.Memory** %MEMORY
  %loadMem_405b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 5
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %ECX.i348 = bitcast %union.anon* %1670 to i32*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 1
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RAX.i349
  %1675 = add i64 %1674, 96
  %1676 = load i32, i32* %ECX.i348
  %1677 = zext i32 %1676 to i64
  %1678 = load i64, i64* %PC.i347
  %1679 = add i64 %1678, 3
  store i64 %1679, i64* %PC.i347
  %1680 = inttoptr i64 %1675 to i32*
  store i32 %1676, i32* %1680
  store %struct.Memory* %loadMem_405b3f, %struct.Memory** %MEMORY
  br label %block_.L_405b42

block_.L_405b42:                                  ; preds = %block_.L_405b35, %block_.L_405b1b
  %loadMem_405b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %1683 to i64*
  %1684 = load i64, i64* %PC.i346
  %1685 = add i64 %1684, 5
  %1686 = load i64, i64* %PC.i346
  %1687 = add i64 %1686, 5
  store i64 %1687, i64* %PC.i346
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1685, i64* %1688, align 8
  store %struct.Memory* %loadMem_405b42, %struct.Memory** %MEMORY
  br label %block_.L_405b47

block_.L_405b47:                                  ; preds = %block_.L_405b42, %block_405a54
  %loadMem_405b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 1
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 15
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RBP.i345
  %1699 = sub i64 %1698, 8
  %1700 = load i64, i64* %PC.i343
  %1701 = add i64 %1700, 4
  store i64 %1701, i64* %PC.i343
  %1702 = inttoptr i64 %1699 to i64*
  %1703 = load i64, i64* %1702
  store i64 %1703, i64* %RAX.i344, align 8
  store %struct.Memory* %loadMem_405b47, %struct.Memory** %MEMORY
  %loadMem_405b4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1705 = getelementptr inbounds %struct.GPR, %struct.GPR* %1704, i32 0, i32 33
  %1706 = getelementptr inbounds %struct.Reg, %struct.Reg* %1705, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %1706 to i64*
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1708 = getelementptr inbounds %struct.GPR, %struct.GPR* %1707, i32 0, i32 1
  %1709 = getelementptr inbounds %struct.Reg, %struct.Reg* %1708, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %1709 to i64*
  %1710 = load i64, i64* %RAX.i342
  %1711 = load i64, i64* %PC.i341
  %1712 = add i64 %1711, 3
  store i64 %1712, i64* %PC.i341
  %1713 = inttoptr i64 %1710 to i64*
  %1714 = load i64, i64* %1713
  store i64 %1714, i64* %RAX.i342, align 8
  store %struct.Memory* %loadMem_405b4b, %struct.Memory** %MEMORY
  %loadMem_405b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 1
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %1720 to i64*
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 5
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %1723 to i64*
  %1724 = load i64, i64* %RAX.i339
  %1725 = load i64, i64* %PC.i338
  %1726 = add i64 %1725, 3
  store i64 %1726, i64* %PC.i338
  %1727 = inttoptr i64 %1724 to i64*
  %1728 = load i64, i64* %1727
  store i64 %1728, i64* %RCX.i340, align 8
  store %struct.Memory* %loadMem_405b4e, %struct.Memory** %MEMORY
  %loadMem_405b51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 5
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %1734 to i64*
  %1735 = load i64, i64* %RCX.i337
  %1736 = load i64, i64* %PC.i336
  %1737 = add i64 %1736, 4
  store i64 %1737, i64* %PC.i336
  %1738 = add i64 1, %1735
  store i64 %1738, i64* %RCX.i337, align 8
  %1739 = icmp ult i64 %1738, %1735
  %1740 = icmp ult i64 %1738, 1
  %1741 = or i1 %1739, %1740
  %1742 = zext i1 %1741 to i8
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1742, i8* %1743, align 1
  %1744 = trunc i64 %1738 to i32
  %1745 = and i32 %1744, 255
  %1746 = call i32 @llvm.ctpop.i32(i32 %1745)
  %1747 = trunc i32 %1746 to i8
  %1748 = and i8 %1747, 1
  %1749 = xor i8 %1748, 1
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1749, i8* %1750, align 1
  %1751 = xor i64 1, %1735
  %1752 = xor i64 %1751, %1738
  %1753 = lshr i64 %1752, 4
  %1754 = trunc i64 %1753 to i8
  %1755 = and i8 %1754, 1
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1755, i8* %1756, align 1
  %1757 = icmp eq i64 %1738, 0
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1758, i8* %1759, align 1
  %1760 = lshr i64 %1738, 63
  %1761 = trunc i64 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1761, i8* %1762, align 1
  %1763 = lshr i64 %1735, 63
  %1764 = xor i64 %1760, %1763
  %1765 = add i64 %1764, %1760
  %1766 = icmp eq i64 %1765, 2
  %1767 = zext i1 %1766 to i8
  %1768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1767, i8* %1768, align 1
  store %struct.Memory* %loadMem_405b51, %struct.Memory** %MEMORY
  %loadMem_405b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 1
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 5
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RAX.i334
  %1779 = load i64, i64* %RCX.i335
  %1780 = load i64, i64* %PC.i333
  %1781 = add i64 %1780, 3
  store i64 %1781, i64* %PC.i333
  %1782 = inttoptr i64 %1778 to i64*
  store i64 %1779, i64* %1782
  store %struct.Memory* %loadMem_405b55, %struct.Memory** %MEMORY
  %loadMem_405b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 1
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 15
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %RBP.i332
  %1793 = sub i64 %1792, 8
  %1794 = load i64, i64* %PC.i330
  %1795 = add i64 %1794, 4
  store i64 %1795, i64* %PC.i330
  %1796 = inttoptr i64 %1793 to i64*
  %1797 = load i64, i64* %1796
  store i64 %1797, i64* %RAX.i331, align 8
  store %struct.Memory* %loadMem_405b58, %struct.Memory** %MEMORY
  %loadMem_405b5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 1
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RAX.i329 = bitcast %union.anon* %1803 to i64*
  %1804 = load i64, i64* %RAX.i329
  %1805 = load i64, i64* %PC.i328
  %1806 = add i64 %1805, 3
  store i64 %1806, i64* %PC.i328
  %1807 = inttoptr i64 %1804 to i64*
  %1808 = load i64, i64* %1807
  store i64 %1808, i64* %RAX.i329, align 8
  store %struct.Memory* %loadMem_405b5c, %struct.Memory** %MEMORY
  %loadMem_405b5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 33
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %1811 to i64*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RAX.i326 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 7
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RAX.i326
  %1819 = add i64 %1818, 8
  %1820 = load i64, i64* %PC.i325
  %1821 = add i64 %1820, 3
  store i64 %1821, i64* %PC.i325
  %1822 = inttoptr i64 %1819 to i32*
  %1823 = load i32, i32* %1822
  %1824 = zext i32 %1823 to i64
  store i64 %1824, i64* %RDX.i327, align 8
  store %struct.Memory* %loadMem_405b5f, %struct.Memory** %MEMORY
  %loadMem_405b62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 33
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1827 to i64*
  %1828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1829 = getelementptr inbounds %struct.GPR, %struct.GPR* %1828, i32 0, i32 7
  %1830 = getelementptr inbounds %struct.Reg, %struct.Reg* %1829, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %1830 to i64*
  %1831 = load i64, i64* %RDX.i324
  %1832 = load i64, i64* %PC.i323
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC.i323
  %1834 = trunc i64 %1831 to i32
  %1835 = add i32 -1, %1834
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RDX.i324, align 8
  %1837 = icmp ult i32 %1835, %1834
  %1838 = icmp ult i32 %1835, -1
  %1839 = or i1 %1837, %1838
  %1840 = zext i1 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1840, i8* %1841, align 1
  %1842 = and i32 %1835, 255
  %1843 = call i32 @llvm.ctpop.i32(i32 %1842)
  %1844 = trunc i32 %1843 to i8
  %1845 = and i8 %1844, 1
  %1846 = xor i8 %1845, 1
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1846, i8* %1847, align 1
  %1848 = xor i64 -1, %1831
  %1849 = trunc i64 %1848 to i32
  %1850 = xor i32 %1849, %1835
  %1851 = lshr i32 %1850, 4
  %1852 = trunc i32 %1851 to i8
  %1853 = and i8 %1852, 1
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1853, i8* %1854, align 1
  %1855 = icmp eq i32 %1835, 0
  %1856 = zext i1 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1856, i8* %1857, align 1
  %1858 = lshr i32 %1835, 31
  %1859 = trunc i32 %1858 to i8
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1859, i8* %1860, align 1
  %1861 = lshr i32 %1834, 31
  %1862 = xor i32 %1858, %1861
  %1863 = xor i32 %1858, 1
  %1864 = add i32 %1862, %1863
  %1865 = icmp eq i32 %1864, 2
  %1866 = zext i1 %1865 to i8
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1866, i8* %1867, align 1
  store %struct.Memory* %loadMem_405b62, %struct.Memory** %MEMORY
  %loadMem_405b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 7
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %EDX.i321 = bitcast %union.anon* %1873 to i32*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 1
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %RAX.i322
  %1878 = add i64 %1877, 8
  %1879 = load i32, i32* %EDX.i321
  %1880 = zext i32 %1879 to i64
  %1881 = load i64, i64* %PC.i320
  %1882 = add i64 %1881, 3
  store i64 %1882, i64* %PC.i320
  %1883 = inttoptr i64 %1878 to i32*
  store i32 %1879, i32* %1883
  store %struct.Memory* %loadMem_405b65, %struct.Memory** %MEMORY
  %loadMem_405b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1885 = getelementptr inbounds %struct.GPR, %struct.GPR* %1884, i32 0, i32 33
  %1886 = getelementptr inbounds %struct.Reg, %struct.Reg* %1885, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1886 to i64*
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1888 = getelementptr inbounds %struct.GPR, %struct.GPR* %1887, i32 0, i32 1
  %1889 = getelementptr inbounds %struct.Reg, %struct.Reg* %1888, i32 0, i32 0
  %RAX.i318 = bitcast %union.anon* %1889 to i64*
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 15
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %1892 to i64*
  %1893 = load i64, i64* %RBP.i319
  %1894 = sub i64 %1893, 8
  %1895 = load i64, i64* %PC.i317
  %1896 = add i64 %1895, 4
  store i64 %1896, i64* %PC.i317
  %1897 = inttoptr i64 %1894 to i64*
  %1898 = load i64, i64* %1897
  store i64 %1898, i64* %RAX.i318, align 8
  store %struct.Memory* %loadMem_405b68, %struct.Memory** %MEMORY
  %loadMem_405b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1900 = getelementptr inbounds %struct.GPR, %struct.GPR* %1899, i32 0, i32 33
  %1901 = getelementptr inbounds %struct.Reg, %struct.Reg* %1900, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1901 to i64*
  %1902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1903 = getelementptr inbounds %struct.GPR, %struct.GPR* %1902, i32 0, i32 1
  %1904 = getelementptr inbounds %struct.Reg, %struct.Reg* %1903, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %1904 to i64*
  %1905 = load i64, i64* %RAX.i316
  %1906 = load i64, i64* %PC.i315
  %1907 = add i64 %1906, 3
  store i64 %1907, i64* %PC.i315
  %1908 = inttoptr i64 %1905 to i64*
  %1909 = load i64, i64* %1908
  store i64 %1909, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_405b6c, %struct.Memory** %MEMORY
  %loadMem_405b6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1912 to i64*
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 1
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %RAX.i313 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 7
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RAX.i313
  %1920 = add i64 %1919, 12
  %1921 = load i64, i64* %PC.i312
  %1922 = add i64 %1921, 3
  store i64 %1922, i64* %PC.i312
  %1923 = inttoptr i64 %1920 to i32*
  %1924 = load i32, i32* %1923
  %1925 = zext i32 %1924 to i64
  store i64 %1925, i64* %RDX.i314, align 8
  store %struct.Memory* %loadMem_405b6f, %struct.Memory** %MEMORY
  %loadMem_405b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1927 = getelementptr inbounds %struct.GPR, %struct.GPR* %1926, i32 0, i32 33
  %1928 = getelementptr inbounds %struct.Reg, %struct.Reg* %1927, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %1928 to i64*
  %1929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1930 = getelementptr inbounds %struct.GPR, %struct.GPR* %1929, i32 0, i32 7
  %1931 = getelementptr inbounds %struct.Reg, %struct.Reg* %1930, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %1931 to i64*
  %1932 = load i64, i64* %RDX.i311
  %1933 = load i64, i64* %PC.i310
  %1934 = add i64 %1933, 3
  store i64 %1934, i64* %PC.i310
  %1935 = trunc i64 %1932 to i32
  %1936 = add i32 1, %1935
  %1937 = zext i32 %1936 to i64
  store i64 %1937, i64* %RDX.i311, align 8
  %1938 = icmp ult i32 %1936, %1935
  %1939 = icmp ult i32 %1936, 1
  %1940 = or i1 %1938, %1939
  %1941 = zext i1 %1940 to i8
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1941, i8* %1942, align 1
  %1943 = and i32 %1936, 255
  %1944 = call i32 @llvm.ctpop.i32(i32 %1943)
  %1945 = trunc i32 %1944 to i8
  %1946 = and i8 %1945, 1
  %1947 = xor i8 %1946, 1
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1947, i8* %1948, align 1
  %1949 = xor i64 1, %1932
  %1950 = trunc i64 %1949 to i32
  %1951 = xor i32 %1950, %1936
  %1952 = lshr i32 %1951, 4
  %1953 = trunc i32 %1952 to i8
  %1954 = and i8 %1953, 1
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1954, i8* %1955, align 1
  %1956 = icmp eq i32 %1936, 0
  %1957 = zext i1 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1957, i8* %1958, align 1
  %1959 = lshr i32 %1936, 31
  %1960 = trunc i32 %1959 to i8
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1960, i8* %1961, align 1
  %1962 = lshr i32 %1935, 31
  %1963 = xor i32 %1959, %1962
  %1964 = add i32 %1963, %1959
  %1965 = icmp eq i32 %1964, 2
  %1966 = zext i1 %1965 to i8
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1966, i8* %1967, align 1
  store %struct.Memory* %loadMem_405b72, %struct.Memory** %MEMORY
  %loadMem_405b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1969 = getelementptr inbounds %struct.GPR, %struct.GPR* %1968, i32 0, i32 33
  %1970 = getelementptr inbounds %struct.Reg, %struct.Reg* %1969, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1970 to i64*
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 7
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %EDX.i308 = bitcast %union.anon* %1973 to i32*
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1975 = getelementptr inbounds %struct.GPR, %struct.GPR* %1974, i32 0, i32 1
  %1976 = getelementptr inbounds %struct.Reg, %struct.Reg* %1975, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %1976 to i64*
  %1977 = load i64, i64* %RAX.i309
  %1978 = add i64 %1977, 12
  %1979 = load i32, i32* %EDX.i308
  %1980 = zext i32 %1979 to i64
  %1981 = load i64, i64* %PC.i307
  %1982 = add i64 %1981, 3
  store i64 %1982, i64* %PC.i307
  %1983 = inttoptr i64 %1978 to i32*
  store i32 %1979, i32* %1983
  store %struct.Memory* %loadMem_405b75, %struct.Memory** %MEMORY
  %loadMem_405b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1985 = getelementptr inbounds %struct.GPR, %struct.GPR* %1984, i32 0, i32 33
  %1986 = getelementptr inbounds %struct.Reg, %struct.Reg* %1985, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1986 to i64*
  %1987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1988 = getelementptr inbounds %struct.GPR, %struct.GPR* %1987, i32 0, i32 1
  %1989 = getelementptr inbounds %struct.Reg, %struct.Reg* %1988, i32 0, i32 0
  %RAX.i305 = bitcast %union.anon* %1989 to i64*
  %1990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1991 = getelementptr inbounds %struct.GPR, %struct.GPR* %1990, i32 0, i32 15
  %1992 = getelementptr inbounds %struct.Reg, %struct.Reg* %1991, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %1992 to i64*
  %1993 = load i64, i64* %RBP.i306
  %1994 = sub i64 %1993, 8
  %1995 = load i64, i64* %PC.i304
  %1996 = add i64 %1995, 4
  store i64 %1996, i64* %PC.i304
  %1997 = inttoptr i64 %1994 to i64*
  %1998 = load i64, i64* %1997
  store i64 %1998, i64* %RAX.i305, align 8
  store %struct.Memory* %loadMem_405b78, %struct.Memory** %MEMORY
  %loadMem_405b7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %2004 to i64*
  %2005 = load i64, i64* %RAX.i303
  %2006 = load i64, i64* %PC.i302
  %2007 = add i64 %2006, 3
  store i64 %2007, i64* %PC.i302
  %2008 = inttoptr i64 %2005 to i64*
  %2009 = load i64, i64* %2008
  store i64 %2009, i64* %RAX.i303, align 8
  store %struct.Memory* %loadMem_405b7c, %struct.Memory** %MEMORY
  %loadMem_405b7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 1
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %2015 to i64*
  %2016 = load i64, i64* %RAX.i301
  %2017 = add i64 %2016, 12
  %2018 = load i64, i64* %PC.i300
  %2019 = add i64 %2018, 4
  store i64 %2019, i64* %PC.i300
  %2020 = inttoptr i64 %2017 to i32*
  %2021 = load i32, i32* %2020
  %2022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2022, align 1
  %2023 = and i32 %2021, 255
  %2024 = call i32 @llvm.ctpop.i32(i32 %2023)
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = xor i8 %2026, 1
  %2028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2027, i8* %2028, align 1
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2029, align 1
  %2030 = icmp eq i32 %2021, 0
  %2031 = zext i1 %2030 to i8
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2031, i8* %2032, align 1
  %2033 = lshr i32 %2021, 31
  %2034 = trunc i32 %2033 to i8
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2034, i8* %2035, align 1
  %2036 = lshr i32 %2021, 31
  %2037 = xor i32 %2033, %2036
  %2038 = add i32 %2037, %2036
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2040, i8* %2041, align 1
  store %struct.Memory* %loadMem_405b7f, %struct.Memory** %MEMORY
  %loadMem_405b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %2044 to i64*
  %2045 = load i64, i64* %PC.i299
  %2046 = add i64 %2045, 22
  %2047 = load i64, i64* %PC.i299
  %2048 = add i64 %2047, 6
  %2049 = load i64, i64* %PC.i299
  %2050 = add i64 %2049, 6
  store i64 %2050, i64* %PC.i299
  %2051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2052 = load i8, i8* %2051, align 1
  %2053 = icmp eq i8 %2052, 0
  %2054 = zext i1 %2053 to i8
  store i8 %2054, i8* %BRANCH_TAKEN, align 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2056 = select i1 %2053, i64 %2046, i64 %2048
  store i64 %2056, i64* %2055, align 8
  store %struct.Memory* %loadMem_405b83, %struct.Memory** %MEMORY
  %loadBr_405b83 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405b83 = icmp eq i8 %loadBr_405b83, 1
  br i1 %cmpBr_405b83, label %block_.L_405b99, label %block_405b89

block_405b89:                                     ; preds = %block_.L_405b47
  %loadMem_405b89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 15
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %2065 to i64*
  %2066 = load i64, i64* %RBP.i298
  %2067 = sub i64 %2066, 8
  %2068 = load i64, i64* %PC.i296
  %2069 = add i64 %2068, 4
  store i64 %2069, i64* %PC.i296
  %2070 = inttoptr i64 %2067 to i64*
  %2071 = load i64, i64* %2070
  store i64 %2071, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_405b89, %struct.Memory** %MEMORY
  %loadMem_405b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 33
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 1
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RAX.i295
  %2079 = load i64, i64* %PC.i294
  %2080 = add i64 %2079, 3
  store i64 %2080, i64* %PC.i294
  %2081 = inttoptr i64 %2078 to i64*
  %2082 = load i64, i64* %2081
  store i64 %2082, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_405b8d, %struct.Memory** %MEMORY
  %loadMem_405b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2084 = getelementptr inbounds %struct.GPR, %struct.GPR* %2083, i32 0, i32 33
  %2085 = getelementptr inbounds %struct.Reg, %struct.Reg* %2084, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %2085 to i64*
  %2086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2087 = getelementptr inbounds %struct.GPR, %struct.GPR* %2086, i32 0, i32 1
  %2088 = getelementptr inbounds %struct.Reg, %struct.Reg* %2087, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %2088 to i64*
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 5
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %2091 to i64*
  %2092 = load i64, i64* %RAX.i292
  %2093 = add i64 %2092, 16
  %2094 = load i64, i64* %PC.i291
  %2095 = add i64 %2094, 3
  store i64 %2095, i64* %PC.i291
  %2096 = inttoptr i64 %2093 to i32*
  %2097 = load i32, i32* %2096
  %2098 = zext i32 %2097 to i64
  store i64 %2098, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_405b90, %struct.Memory** %MEMORY
  %loadMem_405b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2100 = getelementptr inbounds %struct.GPR, %struct.GPR* %2099, i32 0, i32 33
  %2101 = getelementptr inbounds %struct.Reg, %struct.Reg* %2100, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2101 to i64*
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 5
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %2104 to i64*
  %2105 = load i64, i64* %RCX.i290
  %2106 = load i64, i64* %PC.i289
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i289
  %2108 = trunc i64 %2105 to i32
  %2109 = add i32 1, %2108
  %2110 = zext i32 %2109 to i64
  store i64 %2110, i64* %RCX.i290, align 8
  %2111 = icmp ult i32 %2109, %2108
  %2112 = icmp ult i32 %2109, 1
  %2113 = or i1 %2111, %2112
  %2114 = zext i1 %2113 to i8
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2114, i8* %2115, align 1
  %2116 = and i32 %2109, 255
  %2117 = call i32 @llvm.ctpop.i32(i32 %2116)
  %2118 = trunc i32 %2117 to i8
  %2119 = and i8 %2118, 1
  %2120 = xor i8 %2119, 1
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2120, i8* %2121, align 1
  %2122 = xor i64 1, %2105
  %2123 = trunc i64 %2122 to i32
  %2124 = xor i32 %2123, %2109
  %2125 = lshr i32 %2124, 4
  %2126 = trunc i32 %2125 to i8
  %2127 = and i8 %2126, 1
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2127, i8* %2128, align 1
  %2129 = icmp eq i32 %2109, 0
  %2130 = zext i1 %2129 to i8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2130, i8* %2131, align 1
  %2132 = lshr i32 %2109, 31
  %2133 = trunc i32 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2133, i8* %2134, align 1
  %2135 = lshr i32 %2108, 31
  %2136 = xor i32 %2132, %2135
  %2137 = add i32 %2136, %2132
  %2138 = icmp eq i32 %2137, 2
  %2139 = zext i1 %2138 to i8
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2139, i8* %2140, align 1
  store %struct.Memory* %loadMem_405b93, %struct.Memory** %MEMORY
  %loadMem_405b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 33
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %2143 to i64*
  %2144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2145 = getelementptr inbounds %struct.GPR, %struct.GPR* %2144, i32 0, i32 5
  %2146 = getelementptr inbounds %struct.Reg, %struct.Reg* %2145, i32 0, i32 0
  %ECX.i287 = bitcast %union.anon* %2146 to i32*
  %2147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2148 = getelementptr inbounds %struct.GPR, %struct.GPR* %2147, i32 0, i32 1
  %2149 = getelementptr inbounds %struct.Reg, %struct.Reg* %2148, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %2149 to i64*
  %2150 = load i64, i64* %RAX.i288
  %2151 = add i64 %2150, 16
  %2152 = load i32, i32* %ECX.i287
  %2153 = zext i32 %2152 to i64
  %2154 = load i64, i64* %PC.i286
  %2155 = add i64 %2154, 3
  store i64 %2155, i64* %PC.i286
  %2156 = inttoptr i64 %2151 to i32*
  store i32 %2152, i32* %2156
  store %struct.Memory* %loadMem_405b96, %struct.Memory** %MEMORY
  br label %block_.L_405b99

block_.L_405b99:                                  ; preds = %block_405b89, %block_.L_405b47
  %loadMem_405b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2158 = getelementptr inbounds %struct.GPR, %struct.GPR* %2157, i32 0, i32 33
  %2159 = getelementptr inbounds %struct.Reg, %struct.Reg* %2158, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2159 to i64*
  %2160 = load i64, i64* %PC.i285
  %2161 = add i64 %2160, -422
  %2162 = load i64, i64* %PC.i285
  %2163 = add i64 %2162, 5
  store i64 %2163, i64* %PC.i285
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2161, i64* %2164, align 8
  store %struct.Memory* %loadMem_405b99, %struct.Memory** %MEMORY
  br label %block_.L_4059f3

block_.L_405b9e:                                  ; preds = %block_405a1d, %block_405a07
  %loadMem_405b9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2166 = getelementptr inbounds %struct.GPR, %struct.GPR* %2165, i32 0, i32 33
  %2167 = getelementptr inbounds %struct.Reg, %struct.Reg* %2166, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2167 to i64*
  %2168 = load i64, i64* %PC.i284
  %2169 = add i64 %2168, 474
  %2170 = load i64, i64* %PC.i284
  %2171 = add i64 %2170, 5
  store i64 %2171, i64* %PC.i284
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2169, i64* %2172, align 8
  store %struct.Memory* %loadMem_405b9e, %struct.Memory** %MEMORY
  br label %block_.L_405d78

block_.L_405ba3:                                  ; preds = %entry
  %loadMem_405ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2174 = getelementptr inbounds %struct.GPR, %struct.GPR* %2173, i32 0, i32 33
  %2175 = getelementptr inbounds %struct.Reg, %struct.Reg* %2174, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %2175 to i64*
  %2176 = load i64, i64* %PC.i283
  %2177 = add i64 %2176, 5
  %2178 = load i64, i64* %PC.i283
  %2179 = add i64 %2178, 5
  store i64 %2179, i64* %PC.i283
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2177, i64* %2180, align 8
  store %struct.Memory* %loadMem_405ba3, %struct.Memory** %MEMORY
  br label %block_.L_405ba8

block_.L_405ba8:                                  ; preds = %block_.L_405d61, %block_.L_405ba3
  %loadMem_405ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 33
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %2183 to i64*
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2185 = getelementptr inbounds %struct.GPR, %struct.GPR* %2184, i32 0, i32 1
  %2186 = getelementptr inbounds %struct.Reg, %struct.Reg* %2185, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %2186 to i64*
  %2187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2188 = getelementptr inbounds %struct.GPR, %struct.GPR* %2187, i32 0, i32 15
  %2189 = getelementptr inbounds %struct.Reg, %struct.Reg* %2188, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %2189 to i64*
  %2190 = load i64, i64* %RBP.i282
  %2191 = sub i64 %2190, 8
  %2192 = load i64, i64* %PC.i280
  %2193 = add i64 %2192, 4
  store i64 %2193, i64* %PC.i280
  %2194 = inttoptr i64 %2191 to i64*
  %2195 = load i64, i64* %2194
  store i64 %2195, i64* %RAX.i281, align 8
  store %struct.Memory* %loadMem_405ba8, %struct.Memory** %MEMORY
  %loadMem_405bac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 33
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 1
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %2201 to i64*
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 5
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %2204 to i64*
  %2205 = load i64, i64* %RAX.i278
  %2206 = add i64 %2205, 108
  %2207 = load i64, i64* %PC.i277
  %2208 = add i64 %2207, 3
  store i64 %2208, i64* %PC.i277
  %2209 = inttoptr i64 %2206 to i32*
  %2210 = load i32, i32* %2209
  %2211 = zext i32 %2210 to i64
  store i64 %2211, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_405bac, %struct.Memory** %MEMORY
  %loadMem_405baf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2213 = getelementptr inbounds %struct.GPR, %struct.GPR* %2212, i32 0, i32 33
  %2214 = getelementptr inbounds %struct.Reg, %struct.Reg* %2213, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %2214 to i64*
  %2215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2216 = getelementptr inbounds %struct.GPR, %struct.GPR* %2215, i32 0, i32 1
  %2217 = getelementptr inbounds %struct.Reg, %struct.Reg* %2216, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %2217 to i64*
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 15
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %2220 to i64*
  %2221 = load i64, i64* %RBP.i276
  %2222 = sub i64 %2221, 8
  %2223 = load i64, i64* %PC.i274
  %2224 = add i64 %2223, 4
  store i64 %2224, i64* %PC.i274
  %2225 = inttoptr i64 %2222 to i64*
  %2226 = load i64, i64* %2225
  store i64 %2226, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_405baf, %struct.Memory** %MEMORY
  %loadMem_405bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2228 = getelementptr inbounds %struct.GPR, %struct.GPR* %2227, i32 0, i32 33
  %2229 = getelementptr inbounds %struct.Reg, %struct.Reg* %2228, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2229 to i64*
  %2230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2231 = getelementptr inbounds %struct.GPR, %struct.GPR* %2230, i32 0, i32 5
  %2232 = getelementptr inbounds %struct.Reg, %struct.Reg* %2231, i32 0, i32 0
  %ECX.i272 = bitcast %union.anon* %2232 to i32*
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 1
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %RAX.i273 = bitcast %union.anon* %2235 to i64*
  %2236 = load i32, i32* %ECX.i272
  %2237 = zext i32 %2236 to i64
  %2238 = load i64, i64* %RAX.i273
  %2239 = add i64 %2238, 112
  %2240 = load i64, i64* %PC.i271
  %2241 = add i64 %2240, 3
  store i64 %2241, i64* %PC.i271
  %2242 = inttoptr i64 %2239 to i32*
  %2243 = load i32, i32* %2242
  %2244 = sub i32 %2236, %2243
  %2245 = icmp ult i32 %2236, %2243
  %2246 = zext i1 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2246, i8* %2247, align 1
  %2248 = and i32 %2244, 255
  %2249 = call i32 @llvm.ctpop.i32(i32 %2248)
  %2250 = trunc i32 %2249 to i8
  %2251 = and i8 %2250, 1
  %2252 = xor i8 %2251, 1
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2252, i8* %2253, align 1
  %2254 = xor i32 %2243, %2236
  %2255 = xor i32 %2254, %2244
  %2256 = lshr i32 %2255, 4
  %2257 = trunc i32 %2256 to i8
  %2258 = and i8 %2257, 1
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2258, i8* %2259, align 1
  %2260 = icmp eq i32 %2244, 0
  %2261 = zext i1 %2260 to i8
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2261, i8* %2262, align 1
  %2263 = lshr i32 %2244, 31
  %2264 = trunc i32 %2263 to i8
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2264, i8* %2265, align 1
  %2266 = lshr i32 %2236, 31
  %2267 = lshr i32 %2243, 31
  %2268 = xor i32 %2267, %2266
  %2269 = xor i32 %2263, %2266
  %2270 = add i32 %2269, %2268
  %2271 = icmp eq i32 %2270, 2
  %2272 = zext i1 %2271 to i8
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2272, i8* %2273, align 1
  store %struct.Memory* %loadMem_405bb3, %struct.Memory** %MEMORY
  %loadMem_405bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 33
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %PC.i270
  %2278 = add i64 %2277, 11
  %2279 = load i64, i64* %PC.i270
  %2280 = add i64 %2279, 6
  %2281 = load i64, i64* %PC.i270
  %2282 = add i64 %2281, 6
  store i64 %2282, i64* %PC.i270
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2284 = load i8, i8* %2283, align 1
  %2285 = icmp ne i8 %2284, 0
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2287 = load i8, i8* %2286, align 1
  %2288 = icmp ne i8 %2287, 0
  %2289 = xor i1 %2285, %2288
  %2290 = zext i1 %2289 to i8
  store i8 %2290, i8* %BRANCH_TAKEN, align 1
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2292 = select i1 %2289, i64 %2278, i64 %2280
  store i64 %2292, i64* %2291, align 8
  store %struct.Memory* %loadMem_405bb6, %struct.Memory** %MEMORY
  %loadBr_405bb6 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405bb6 = icmp eq i8 %loadBr_405bb6, 1
  br i1 %cmpBr_405bb6, label %block_.L_405bc1, label %block_405bbc

block_405bbc:                                     ; preds = %block_.L_405ba8
  %loadMem_405bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 33
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %2295 to i64*
  %2296 = load i64, i64* %PC.i269
  %2297 = add i64 %2296, 439
  %2298 = load i64, i64* %PC.i269
  %2299 = add i64 %2298, 5
  store i64 %2299, i64* %PC.i269
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2297, i64* %2300, align 8
  store %struct.Memory* %loadMem_405bbc, %struct.Memory** %MEMORY
  br label %block_.L_405d73

block_.L_405bc1:                                  ; preds = %block_.L_405ba8
  %loadMem_405bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2303 to i64*
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 1
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %RAX.i267 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 15
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %2309 to i64*
  %2310 = load i64, i64* %RBP.i268
  %2311 = sub i64 %2310, 8
  %2312 = load i64, i64* %PC.i266
  %2313 = add i64 %2312, 4
  store i64 %2313, i64* %PC.i266
  %2314 = inttoptr i64 %2311 to i64*
  %2315 = load i64, i64* %2314
  store i64 %2315, i64* %RAX.i267, align 8
  store %struct.Memory* %loadMem_405bc1, %struct.Memory** %MEMORY
  %loadMem_405bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 1
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %2321 to i64*
  %2322 = load i64, i64* %RAX.i265
  %2323 = load i64, i64* %PC.i264
  %2324 = add i64 %2323, 3
  store i64 %2324, i64* %PC.i264
  %2325 = inttoptr i64 %2322 to i64*
  %2326 = load i64, i64* %2325
  store i64 %2326, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_405bc5, %struct.Memory** %MEMORY
  %loadMem_405bc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 1
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RAX.i263 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RAX.i263
  %2334 = add i64 %2333, 8
  %2335 = load i64, i64* %PC.i262
  %2336 = add i64 %2335, 4
  store i64 %2336, i64* %PC.i262
  %2337 = inttoptr i64 %2334 to i32*
  %2338 = load i32, i32* %2337
  %2339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2339, align 1
  %2340 = and i32 %2338, 255
  %2341 = call i32 @llvm.ctpop.i32(i32 %2340)
  %2342 = trunc i32 %2341 to i8
  %2343 = and i8 %2342, 1
  %2344 = xor i8 %2343, 1
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2344, i8* %2345, align 1
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2346, align 1
  %2347 = icmp eq i32 %2338, 0
  %2348 = zext i1 %2347 to i8
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2348, i8* %2349, align 1
  %2350 = lshr i32 %2338, 31
  %2351 = trunc i32 %2350 to i8
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2351, i8* %2352, align 1
  %2353 = lshr i32 %2338, 31
  %2354 = xor i32 %2350, %2353
  %2355 = add i32 %2354, %2353
  %2356 = icmp eq i32 %2355, 2
  %2357 = zext i1 %2356 to i8
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2357, i8* %2358, align 1
  store %struct.Memory* %loadMem_405bc8, %struct.Memory** %MEMORY
  %loadMem_405bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 33
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2361 to i64*
  %2362 = load i64, i64* %PC.i261
  %2363 = add i64 %2362, 11
  %2364 = load i64, i64* %PC.i261
  %2365 = add i64 %2364, 6
  %2366 = load i64, i64* %PC.i261
  %2367 = add i64 %2366, 6
  store i64 %2367, i64* %PC.i261
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2369 = load i8, i8* %2368, align 1
  %2370 = icmp eq i8 %2369, 0
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %BRANCH_TAKEN, align 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2373 = select i1 %2370, i64 %2363, i64 %2365
  store i64 %2373, i64* %2372, align 8
  store %struct.Memory* %loadMem_405bcc, %struct.Memory** %MEMORY
  %loadBr_405bcc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405bcc = icmp eq i8 %loadBr_405bcc, 1
  br i1 %cmpBr_405bcc, label %block_.L_405bd7, label %block_405bd2

block_405bd2:                                     ; preds = %block_.L_405bc1
  %loadMem_405bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 33
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %PC.i260 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %PC.i260
  %2378 = add i64 %2377, 417
  %2379 = load i64, i64* %PC.i260
  %2380 = add i64 %2379, 5
  store i64 %2380, i64* %PC.i260
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2378, i64* %2381, align 8
  store %struct.Memory* %loadMem_405bd2, %struct.Memory** %MEMORY
  br label %block_.L_405d73

block_.L_405bd7:                                  ; preds = %block_.L_405bc1
  %loadMem_405bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 33
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2384 to i64*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 1
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %2387 to i64*
  %2388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2389 = getelementptr inbounds %struct.GPR, %struct.GPR* %2388, i32 0, i32 15
  %2390 = getelementptr inbounds %struct.Reg, %struct.Reg* %2389, i32 0, i32 0
  %RBP.i259 = bitcast %union.anon* %2390 to i64*
  %2391 = load i64, i64* %RBP.i259
  %2392 = sub i64 %2391, 8
  %2393 = load i64, i64* %PC.i257
  %2394 = add i64 %2393, 4
  store i64 %2394, i64* %PC.i257
  %2395 = inttoptr i64 %2392 to i64*
  %2396 = load i64, i64* %2395
  store i64 %2396, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_405bd7, %struct.Memory** %MEMORY
  %loadMem_405bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 33
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2399 to i64*
  %2400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2401 = getelementptr inbounds %struct.GPR, %struct.GPR* %2400, i32 0, i32 1
  %2402 = getelementptr inbounds %struct.Reg, %struct.Reg* %2401, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %2402 to i64*
  %2403 = load i64, i64* %RAX.i256
  %2404 = add i64 %2403, 16
  %2405 = load i64, i64* %PC.i255
  %2406 = add i64 %2405, 4
  store i64 %2406, i64* %PC.i255
  %2407 = inttoptr i64 %2404 to i32*
  %2408 = load i32, i32* %2407
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2409, align 1
  %2410 = and i32 %2408, 255
  %2411 = call i32 @llvm.ctpop.i32(i32 %2410)
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2414, i8* %2415, align 1
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2416, align 1
  %2417 = icmp eq i32 %2408, 0
  %2418 = zext i1 %2417 to i8
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2418, i8* %2419, align 1
  %2420 = lshr i32 %2408, 31
  %2421 = trunc i32 %2420 to i8
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2421, i8* %2422, align 1
  %2423 = lshr i32 %2408, 31
  %2424 = xor i32 %2420, %2423
  %2425 = add i32 %2424, %2423
  %2426 = icmp eq i32 %2425, 2
  %2427 = zext i1 %2426 to i8
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2427, i8* %2428, align 1
  store %struct.Memory* %loadMem_405bdb, %struct.Memory** %MEMORY
  %loadMem_405bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2430 = getelementptr inbounds %struct.GPR, %struct.GPR* %2429, i32 0, i32 33
  %2431 = getelementptr inbounds %struct.Reg, %struct.Reg* %2430, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %2431 to i64*
  %2432 = load i64, i64* %PC.i254
  %2433 = add i64 %2432, 11
  %2434 = load i64, i64* %PC.i254
  %2435 = add i64 %2434, 6
  %2436 = load i64, i64* %PC.i254
  %2437 = add i64 %2436, 6
  store i64 %2437, i64* %PC.i254
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2439 = load i8, i8* %2438, align 1
  %2440 = icmp eq i8 %2439, 0
  %2441 = zext i1 %2440 to i8
  store i8 %2441, i8* %BRANCH_TAKEN, align 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2443 = select i1 %2440, i64 %2433, i64 %2435
  store i64 %2443, i64* %2442, align 8
  store %struct.Memory* %loadMem_405bdf, %struct.Memory** %MEMORY
  %loadBr_405bdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405bdf = icmp eq i8 %loadBr_405bdf, 1
  br i1 %cmpBr_405bdf, label %block_.L_405bea, label %block_405be5

block_405be5:                                     ; preds = %block_.L_405bd7
  %loadMem_405be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 33
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2446 to i64*
  %2447 = load i64, i64* %PC.i253
  %2448 = add i64 %2447, 398
  %2449 = load i64, i64* %PC.i253
  %2450 = add i64 %2449, 5
  store i64 %2450, i64* %PC.i253
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2448, i64* %2451, align 8
  store %struct.Memory* %loadMem_405be5, %struct.Memory** %MEMORY
  br label %block_.L_405d73

block_.L_405bea:                                  ; preds = %block_.L_405bd7
  %loadMem_405bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2453 = getelementptr inbounds %struct.GPR, %struct.GPR* %2452, i32 0, i32 33
  %2454 = getelementptr inbounds %struct.Reg, %struct.Reg* %2453, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %2454 to i64*
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 15
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %RBP.i252 = bitcast %union.anon* %2457 to i64*
  %2458 = load i64, i64* %RBP.i252
  %2459 = sub i64 %2458, 9
  %2460 = load i64, i64* %PC.i251
  %2461 = add i64 %2460, 4
  store i64 %2461, i64* %PC.i251
  %2462 = inttoptr i64 %2459 to i8*
  store i8 1, i8* %2462
  store %struct.Memory* %loadMem_405bea, %struct.Memory** %MEMORY
  %loadMem_405bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 33
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2465 to i64*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 1
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RAX.i249 = bitcast %union.anon* %2468 to i64*
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2470 = getelementptr inbounds %struct.GPR, %struct.GPR* %2469, i32 0, i32 15
  %2471 = getelementptr inbounds %struct.Reg, %struct.Reg* %2470, i32 0, i32 0
  %RBP.i250 = bitcast %union.anon* %2471 to i64*
  %2472 = load i64, i64* %RBP.i250
  %2473 = sub i64 %2472, 8
  %2474 = load i64, i64* %PC.i248
  %2475 = add i64 %2474, 4
  store i64 %2475, i64* %PC.i248
  %2476 = inttoptr i64 %2473 to i64*
  %2477 = load i64, i64* %2476
  store i64 %2477, i64* %RAX.i249, align 8
  store %struct.Memory* %loadMem_405bee, %struct.Memory** %MEMORY
  %loadMem_405bf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2480 to i64*
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 1
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %RAX.i247
  %2485 = load i64, i64* %PC.i246
  %2486 = add i64 %2485, 3
  store i64 %2486, i64* %PC.i246
  %2487 = inttoptr i64 %2484 to i64*
  %2488 = load i64, i64* %2487
  store i64 %2488, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_405bf2, %struct.Memory** %MEMORY
  %loadMem_405bf5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %2491 to i64*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 1
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %2494 to i64*
  %2495 = load i64, i64* %RAX.i245
  %2496 = load i64, i64* %PC.i244
  %2497 = add i64 %2496, 3
  store i64 %2497, i64* %PC.i244
  %2498 = inttoptr i64 %2495 to i64*
  %2499 = load i64, i64* %2498
  store i64 %2499, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_405bf5, %struct.Memory** %MEMORY
  %loadMem_405bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2501 = getelementptr inbounds %struct.GPR, %struct.GPR* %2500, i32 0, i32 33
  %2502 = getelementptr inbounds %struct.Reg, %struct.Reg* %2501, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %2502 to i64*
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 1
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %2508 to i64*
  %2509 = load i64, i64* %RAX.i242
  %2510 = load i64, i64* %PC.i241
  %2511 = add i64 %2510, 3
  store i64 %2511, i64* %PC.i241
  %2512 = inttoptr i64 %2509 to i8*
  %2513 = load i8, i8* %2512
  %2514 = zext i8 %2513 to i64
  store i64 %2514, i64* %RCX.i243, align 8
  store %struct.Memory* %loadMem_405bf8, %struct.Memory** %MEMORY
  %loadMem_405bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2516 = getelementptr inbounds %struct.GPR, %struct.GPR* %2515, i32 0, i32 33
  %2517 = getelementptr inbounds %struct.Reg, %struct.Reg* %2516, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2517 to i64*
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 5
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %ECX.i239 = bitcast %union.anon* %2520 to i32*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 15
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %2523 to i64*
  %2524 = load i64, i64* %RBP.i240
  %2525 = sub i64 %2524, 24
  %2526 = load i32, i32* %ECX.i239
  %2527 = zext i32 %2526 to i64
  %2528 = load i64, i64* %PC.i238
  %2529 = add i64 %2528, 3
  store i64 %2529, i64* %PC.i238
  %2530 = inttoptr i64 %2525 to i32*
  store i32 %2526, i32* %2530
  store %struct.Memory* %loadMem_405bfb, %struct.Memory** %MEMORY
  %loadMem_405bfe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2532 = getelementptr inbounds %struct.GPR, %struct.GPR* %2531, i32 0, i32 33
  %2533 = getelementptr inbounds %struct.Reg, %struct.Reg* %2532, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %2533 to i64*
  %2534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2535 = getelementptr inbounds %struct.GPR, %struct.GPR* %2534, i32 0, i32 5
  %2536 = getelementptr inbounds %struct.Reg, %struct.Reg* %2535, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %2536 to i64*
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 15
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %RBP.i237 = bitcast %union.anon* %2539 to i64*
  %2540 = load i64, i64* %RBP.i237
  %2541 = sub i64 %2540, 24
  %2542 = load i64, i64* %PC.i235
  %2543 = add i64 %2542, 3
  store i64 %2543, i64* %PC.i235
  %2544 = inttoptr i64 %2541 to i32*
  %2545 = load i32, i32* %2544
  %2546 = zext i32 %2545 to i64
  store i64 %2546, i64* %RCX.i236, align 8
  store %struct.Memory* %loadMem_405bfe, %struct.Memory** %MEMORY
  %loadMem_405c01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 33
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %2549 to i64*
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2551 = getelementptr inbounds %struct.GPR, %struct.GPR* %2550, i32 0, i32 1
  %2552 = getelementptr inbounds %struct.Reg, %struct.Reg* %2551, i32 0, i32 0
  %RAX.i233 = bitcast %union.anon* %2552 to i64*
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2554 = getelementptr inbounds %struct.GPR, %struct.GPR* %2553, i32 0, i32 15
  %2555 = getelementptr inbounds %struct.Reg, %struct.Reg* %2554, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %2555 to i64*
  %2556 = load i64, i64* %RBP.i234
  %2557 = sub i64 %2556, 8
  %2558 = load i64, i64* %PC.i232
  %2559 = add i64 %2558, 4
  store i64 %2559, i64* %PC.i232
  %2560 = inttoptr i64 %2557 to i64*
  %2561 = load i64, i64* %2560
  store i64 %2561, i64* %RAX.i233, align 8
  store %struct.Memory* %loadMem_405c01, %struct.Memory** %MEMORY
  %loadMem_405c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2563 = getelementptr inbounds %struct.GPR, %struct.GPR* %2562, i32 0, i32 33
  %2564 = getelementptr inbounds %struct.Reg, %struct.Reg* %2563, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %2564 to i64*
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 5
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %ECX.i230 = bitcast %union.anon* %2567 to i32*
  %2568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2569 = getelementptr inbounds %struct.GPR, %struct.GPR* %2568, i32 0, i32 1
  %2570 = getelementptr inbounds %struct.Reg, %struct.Reg* %2569, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %2570 to i64*
  %2571 = load i32, i32* %ECX.i230
  %2572 = zext i32 %2571 to i64
  %2573 = load i64, i64* %RAX.i231
  %2574 = add i64 %2573, 92
  %2575 = load i64, i64* %PC.i229
  %2576 = add i64 %2575, 3
  store i64 %2576, i64* %PC.i229
  %2577 = inttoptr i64 %2574 to i32*
  %2578 = load i32, i32* %2577
  %2579 = sub i32 %2571, %2578
  %2580 = icmp ult i32 %2571, %2578
  %2581 = zext i1 %2580 to i8
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2581, i8* %2582, align 1
  %2583 = and i32 %2579, 255
  %2584 = call i32 @llvm.ctpop.i32(i32 %2583)
  %2585 = trunc i32 %2584 to i8
  %2586 = and i8 %2585, 1
  %2587 = xor i8 %2586, 1
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2587, i8* %2588, align 1
  %2589 = xor i32 %2578, %2571
  %2590 = xor i32 %2589, %2579
  %2591 = lshr i32 %2590, 4
  %2592 = trunc i32 %2591 to i8
  %2593 = and i8 %2592, 1
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2593, i8* %2594, align 1
  %2595 = icmp eq i32 %2579, 0
  %2596 = zext i1 %2595 to i8
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2596, i8* %2597, align 1
  %2598 = lshr i32 %2579, 31
  %2599 = trunc i32 %2598 to i8
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2599, i8* %2600, align 1
  %2601 = lshr i32 %2571, 31
  %2602 = lshr i32 %2578, 31
  %2603 = xor i32 %2602, %2601
  %2604 = xor i32 %2598, %2601
  %2605 = add i32 %2604, %2603
  %2606 = icmp eq i32 %2605, 2
  %2607 = zext i1 %2606 to i8
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2607, i8* %2608, align 1
  store %struct.Memory* %loadMem_405c05, %struct.Memory** %MEMORY
  %loadMem_405c08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2611 to i64*
  %2612 = load i64, i64* %PC.i228
  %2613 = add i64 %2612, 160
  %2614 = load i64, i64* %PC.i228
  %2615 = add i64 %2614, 6
  %2616 = load i64, i64* %PC.i228
  %2617 = add i64 %2616, 6
  store i64 %2617, i64* %PC.i228
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2619 = load i8, i8* %2618, align 1
  store i8 %2619, i8* %BRANCH_TAKEN, align 1
  %2620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2621 = icmp ne i8 %2619, 0
  %2622 = select i1 %2621, i64 %2613, i64 %2615
  store i64 %2622, i64* %2620, align 8
  store %struct.Memory* %loadMem_405c08, %struct.Memory** %MEMORY
  %loadBr_405c08 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405c08 = icmp eq i8 %loadBr_405c08, 1
  br i1 %cmpBr_405c08, label %block_.L_405ca8, label %block_405c0e

block_405c0e:                                     ; preds = %block_.L_405bea
  %loadMem_405c0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2624 = getelementptr inbounds %struct.GPR, %struct.GPR* %2623, i32 0, i32 33
  %2625 = getelementptr inbounds %struct.Reg, %struct.Reg* %2624, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2625 to i64*
  %2626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2627 = getelementptr inbounds %struct.GPR, %struct.GPR* %2626, i32 0, i32 1
  %2628 = getelementptr inbounds %struct.Reg, %struct.Reg* %2627, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %2628 to i64*
  %2629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2630 = getelementptr inbounds %struct.GPR, %struct.GPR* %2629, i32 0, i32 15
  %2631 = getelementptr inbounds %struct.Reg, %struct.Reg* %2630, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %2631 to i64*
  %2632 = load i64, i64* %RBP.i227
  %2633 = sub i64 %2632, 8
  %2634 = load i64, i64* %PC.i225
  %2635 = add i64 %2634, 4
  store i64 %2635, i64* %PC.i225
  %2636 = inttoptr i64 %2633 to i64*
  %2637 = load i64, i64* %2636
  store i64 %2637, i64* %RAX.i226, align 8
  store %struct.Memory* %loadMem_405c0e, %struct.Memory** %MEMORY
  %loadMem_405c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2639 = getelementptr inbounds %struct.GPR, %struct.GPR* %2638, i32 0, i32 33
  %2640 = getelementptr inbounds %struct.Reg, %struct.Reg* %2639, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2640 to i64*
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 1
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %RAX.i224 = bitcast %union.anon* %2643 to i64*
  %2644 = load i64, i64* %RAX.i224
  %2645 = add i64 %2644, 96
  %2646 = load i64, i64* %PC.i223
  %2647 = add i64 %2646, 4
  store i64 %2647, i64* %PC.i223
  %2648 = inttoptr i64 %2645 to i32*
  %2649 = load i32, i32* %2648
  %2650 = sub i32 %2649, 1
  %2651 = icmp ult i32 %2649, 1
  %2652 = zext i1 %2651 to i8
  %2653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2652, i8* %2653, align 1
  %2654 = and i32 %2650, 255
  %2655 = call i32 @llvm.ctpop.i32(i32 %2654)
  %2656 = trunc i32 %2655 to i8
  %2657 = and i8 %2656, 1
  %2658 = xor i8 %2657, 1
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2658, i8* %2659, align 1
  %2660 = xor i32 %2649, 1
  %2661 = xor i32 %2660, %2650
  %2662 = lshr i32 %2661, 4
  %2663 = trunc i32 %2662 to i8
  %2664 = and i8 %2663, 1
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2664, i8* %2665, align 1
  %2666 = icmp eq i32 %2650, 0
  %2667 = zext i1 %2666 to i8
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2667, i8* %2668, align 1
  %2669 = lshr i32 %2650, 31
  %2670 = trunc i32 %2669 to i8
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2670, i8* %2671, align 1
  %2672 = lshr i32 %2649, 31
  %2673 = xor i32 %2669, %2672
  %2674 = add i32 %2673, %2672
  %2675 = icmp eq i32 %2674, 2
  %2676 = zext i1 %2675 to i8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2676, i8* %2677, align 1
  store %struct.Memory* %loadMem_405c12, %struct.Memory** %MEMORY
  %loadMem_405c16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2680 to i64*
  %2681 = load i64, i64* %PC.i222
  %2682 = add i64 %2681, 146
  %2683 = load i64, i64* %PC.i222
  %2684 = add i64 %2683, 6
  %2685 = load i64, i64* %PC.i222
  %2686 = add i64 %2685, 6
  store i64 %2686, i64* %PC.i222
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2688 = load i8, i8* %2687, align 1
  %2689 = icmp eq i8 %2688, 0
  %2690 = zext i1 %2689 to i8
  store i8 %2690, i8* %BRANCH_TAKEN, align 1
  %2691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2692 = select i1 %2689, i64 %2682, i64 %2684
  store i64 %2692, i64* %2691, align 8
  store %struct.Memory* %loadMem_405c16, %struct.Memory** %MEMORY
  %loadBr_405c16 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405c16 = icmp eq i8 %loadBr_405c16, 1
  br i1 %cmpBr_405c16, label %block_.L_405ca8, label %block_405c1c

block_405c1c:                                     ; preds = %block_405c0e
  %loadMem_405c1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 1
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RAX.i220 = bitcast %union.anon* %2698 to i64*
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 15
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %2701 to i64*
  %2702 = load i64, i64* %RBP.i221
  %2703 = sub i64 %2702, 8
  %2704 = load i64, i64* %PC.i219
  %2705 = add i64 %2704, 4
  store i64 %2705, i64* %PC.i219
  %2706 = inttoptr i64 %2703 to i64*
  %2707 = load i64, i64* %2706
  store i64 %2707, i64* %RAX.i220, align 8
  store %struct.Memory* %loadMem_405c1c, %struct.Memory** %MEMORY
  %loadMem_405c20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 1
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %2713 to i64*
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 5
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %RCX.i218 = bitcast %union.anon* %2716 to i64*
  %2717 = load i64, i64* %RAX.i217
  %2718 = add i64 %2717, 92
  %2719 = load i64, i64* %PC.i216
  %2720 = add i64 %2719, 3
  store i64 %2720, i64* %PC.i216
  %2721 = inttoptr i64 %2718 to i32*
  %2722 = load i32, i32* %2721
  %2723 = zext i32 %2722 to i64
  store i64 %2723, i64* %RCX.i218, align 8
  store %struct.Memory* %loadMem_405c20, %struct.Memory** %MEMORY
  %loadMem_405c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2725 = getelementptr inbounds %struct.GPR, %struct.GPR* %2724, i32 0, i32 33
  %2726 = getelementptr inbounds %struct.Reg, %struct.Reg* %2725, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2726 to i64*
  %2727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2728 = getelementptr inbounds %struct.GPR, %struct.GPR* %2727, i32 0, i32 5
  %2729 = getelementptr inbounds %struct.Reg, %struct.Reg* %2728, i32 0, i32 0
  %2730 = bitcast %union.anon* %2729 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2730, i32 0, i32 0
  %2731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2732 = getelementptr inbounds %struct.GPR, %struct.GPR* %2731, i32 0, i32 7
  %2733 = getelementptr inbounds %struct.Reg, %struct.Reg* %2732, i32 0, i32 0
  %2734 = bitcast %union.anon* %2733 to %struct.anon.2*
  %DL.i215 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2734, i32 0, i32 0
  %2735 = load i8, i8* %CL.i
  %2736 = zext i8 %2735 to i64
  %2737 = load i64, i64* %PC.i214
  %2738 = add i64 %2737, 2
  store i64 %2738, i64* %PC.i214
  store i8 %2735, i8* %DL.i215, align 1
  store %struct.Memory* %loadMem_405c23, %struct.Memory** %MEMORY
  %loadMem_405c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 33
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %2741 to i64*
  %2742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2743 = getelementptr inbounds %struct.GPR, %struct.GPR* %2742, i32 0, i32 7
  %2744 = getelementptr inbounds %struct.Reg, %struct.Reg* %2743, i32 0, i32 0
  %2745 = bitcast %union.anon* %2744 to %struct.anon.2*
  %DL.i212 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2745, i32 0, i32 0
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2747 = getelementptr inbounds %struct.GPR, %struct.GPR* %2746, i32 0, i32 15
  %2748 = getelementptr inbounds %struct.Reg, %struct.Reg* %2747, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %2748 to i64*
  %2749 = load i64, i64* %RBP.i213
  %2750 = sub i64 %2749, 25
  %2751 = load i8, i8* %DL.i212
  %2752 = zext i8 %2751 to i64
  %2753 = load i64, i64* %PC.i211
  %2754 = add i64 %2753, 3
  store i64 %2754, i64* %PC.i211
  %2755 = inttoptr i64 %2750 to i8*
  store i8 %2751, i8* %2755
  store %struct.Memory* %loadMem_405c25, %struct.Memory** %MEMORY
  %loadMem_405c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 33
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 1
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RAX.i209 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 15
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %2764 to i64*
  %2765 = load i64, i64* %RBP.i210
  %2766 = sub i64 %2765, 8
  %2767 = load i64, i64* %PC.i208
  %2768 = add i64 %2767, 4
  store i64 %2768, i64* %PC.i208
  %2769 = inttoptr i64 %2766 to i64*
  %2770 = load i64, i64* %2769
  store i64 %2770, i64* %RAX.i209, align 8
  store %struct.Memory* %loadMem_405c28, %struct.Memory** %MEMORY
  %loadMem_405c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2772 = getelementptr inbounds %struct.GPR, %struct.GPR* %2771, i32 0, i32 33
  %2773 = getelementptr inbounds %struct.Reg, %struct.Reg* %2772, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %2773 to i64*
  %2774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2775 = getelementptr inbounds %struct.GPR, %struct.GPR* %2774, i32 0, i32 1
  %2776 = getelementptr inbounds %struct.Reg, %struct.Reg* %2775, i32 0, i32 0
  %RAX.i206 = bitcast %union.anon* %2776 to i64*
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 5
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %RCX.i207 = bitcast %union.anon* %2779 to i64*
  %2780 = load i64, i64* %RAX.i206
  %2781 = add i64 %2780, 648
  %2782 = load i64, i64* %PC.i205
  %2783 = add i64 %2782, 6
  store i64 %2783, i64* %PC.i205
  %2784 = inttoptr i64 %2781 to i32*
  %2785 = load i32, i32* %2784
  %2786 = zext i32 %2785 to i64
  store i64 %2786, i64* %RCX.i207, align 8
  store %struct.Memory* %loadMem_405c2c, %struct.Memory** %MEMORY
  %loadMem_405c32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 5
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %2792 to i64*
  %2793 = load i64, i64* %RCX.i204
  %2794 = load i64, i64* %PC.i203
  %2795 = add i64 %2794, 3
  store i64 %2795, i64* %PC.i203
  %2796 = and i64 %2793, 4294967295
  %2797 = shl i64 %2796, 7
  %2798 = trunc i64 %2797 to i32
  %2799 = icmp slt i32 %2798, 0
  %2800 = shl i32 %2798, 1
  %2801 = zext i32 %2800 to i64
  store i64 %2801, i64* %RCX.i204, align 8
  %2802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2803 = zext i1 %2799 to i8
  store i8 %2803, i8* %2802, align 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %2804, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2807 = icmp eq i32 %2800, 0
  %2808 = zext i1 %2807 to i8
  store i8 %2808, i8* %2806, align 1
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2810 = lshr i32 %2800, 31
  %2811 = trunc i32 %2810 to i8
  store i8 %2811, i8* %2809, align 1
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2812, align 1
  store %struct.Memory* %loadMem_405c32, %struct.Memory** %MEMORY
  %loadMem_405c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 33
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %2815 to i64*
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2817 = getelementptr inbounds %struct.GPR, %struct.GPR* %2816, i32 0, i32 1
  %2818 = getelementptr inbounds %struct.Reg, %struct.Reg* %2817, i32 0, i32 0
  %RAX.i201 = bitcast %union.anon* %2818 to i64*
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2820 = getelementptr inbounds %struct.GPR, %struct.GPR* %2819, i32 0, i32 15
  %2821 = getelementptr inbounds %struct.Reg, %struct.Reg* %2820, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %2821 to i64*
  %2822 = load i64, i64* %RBP.i202
  %2823 = sub i64 %2822, 8
  %2824 = load i64, i64* %PC.i200
  %2825 = add i64 %2824, 4
  store i64 %2825, i64* %PC.i200
  %2826 = inttoptr i64 %2823 to i64*
  %2827 = load i64, i64* %2826
  store i64 %2827, i64* %RAX.i201, align 8
  store %struct.Memory* %loadMem_405c35, %struct.Memory** %MEMORY
  %loadMem_405c39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 33
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 1
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 9
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RSI.i199 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RAX.i198
  %2838 = add i64 %2837, 648
  %2839 = load i64, i64* %PC.i197
  %2840 = add i64 %2839, 6
  store i64 %2840, i64* %PC.i197
  %2841 = inttoptr i64 %2838 to i32*
  %2842 = load i32, i32* %2841
  %2843 = zext i32 %2842 to i64
  store i64 %2843, i64* %RSI.i199, align 8
  store %struct.Memory* %loadMem_405c39, %struct.Memory** %MEMORY
  %loadMem_405c3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 33
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %2846 to i64*
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 9
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %RSI.i196 = bitcast %union.anon* %2849 to i64*
  %2850 = load i64, i64* %RSI.i196
  %2851 = load i64, i64* %PC.i195
  %2852 = add i64 %2851, 3
  store i64 %2852, i64* %PC.i195
  %2853 = and i64 %2850, 4294967295
  %2854 = lshr i64 %2853, 23
  %2855 = trunc i64 %2854 to i8
  %2856 = and i8 %2855, 1
  %2857 = lshr i64 %2854, 1
  %2858 = trunc i64 %2857 to i32
  %2859 = and i32 %2858, 2147483647
  %2860 = zext i32 %2859 to i64
  store i64 %2860, i64* %RSI.i196, align 8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2856, i8* %2861, align 1
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2863 = and i32 %2858, 255
  %2864 = call i32 @llvm.ctpop.i32(i32 %2863)
  %2865 = trunc i32 %2864 to i8
  %2866 = and i8 %2865, 1
  %2867 = xor i8 %2866, 1
  store i8 %2867, i8* %2862, align 1
  %2868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2868, align 1
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2870 = icmp eq i32 %2859, 0
  %2871 = zext i1 %2870 to i8
  store i8 %2871, i8* %2869, align 1
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2872, align 1
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2873, align 1
  store %struct.Memory* %loadMem_405c3f, %struct.Memory** %MEMORY
  %loadMem_405c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2875 = getelementptr inbounds %struct.GPR, %struct.GPR* %2874, i32 0, i32 33
  %2876 = getelementptr inbounds %struct.Reg, %struct.Reg* %2875, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %2876 to i64*
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2878 = getelementptr inbounds %struct.GPR, %struct.GPR* %2877, i32 0, i32 11
  %2879 = getelementptr inbounds %struct.Reg, %struct.Reg* %2878, i32 0, i32 0
  %RDI.i193 = bitcast %union.anon* %2879 to i64*
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2881 = getelementptr inbounds %struct.GPR, %struct.GPR* %2880, i32 0, i32 15
  %2882 = getelementptr inbounds %struct.Reg, %struct.Reg* %2881, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %2882 to i64*
  %2883 = load i64, i64* %RBP.i194
  %2884 = sub i64 %2883, 25
  %2885 = load i64, i64* %PC.i192
  %2886 = add i64 %2885, 4
  store i64 %2886, i64* %PC.i192
  %2887 = inttoptr i64 %2884 to i8*
  %2888 = load i8, i8* %2887
  %2889 = zext i8 %2888 to i64
  store i64 %2889, i64* %RDI.i193, align 8
  store %struct.Memory* %loadMem_405c42, %struct.Memory** %MEMORY
  %loadMem_405c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 33
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %2892 to i64*
  %2893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2894 = getelementptr inbounds %struct.GPR, %struct.GPR* %2893, i32 0, i32 11
  %2895 = getelementptr inbounds %struct.Reg, %struct.Reg* %2894, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %2895 to i32*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 9
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %RSI.i191 = bitcast %union.anon* %2898 to i64*
  %2899 = load i64, i64* %RSI.i191
  %2900 = load i32, i32* %EDI.i
  %2901 = zext i32 %2900 to i64
  %2902 = load i64, i64* %PC.i190
  %2903 = add i64 %2902, 2
  store i64 %2903, i64* %PC.i190
  %2904 = xor i64 %2901, %2899
  %2905 = trunc i64 %2904 to i32
  %2906 = and i64 %2904, 4294967295
  store i64 %2906, i64* %RSI.i191, align 8
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2907, align 1
  %2908 = and i32 %2905, 255
  %2909 = call i32 @llvm.ctpop.i32(i32 %2908)
  %2910 = trunc i32 %2909 to i8
  %2911 = and i8 %2910, 1
  %2912 = xor i8 %2911, 1
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2912, i8* %2913, align 1
  %2914 = icmp eq i32 %2905, 0
  %2915 = zext i1 %2914 to i8
  %2916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2915, i8* %2916, align 1
  %2917 = lshr i32 %2905, 31
  %2918 = trunc i32 %2917 to i8
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2918, i8* %2919, align 1
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2920, align 1
  %2921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2921, align 1
  store %struct.Memory* %loadMem_405c46, %struct.Memory** %MEMORY
  %loadMem_405c48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 9
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %ESI.i189 = bitcast %union.anon* %2927 to i32*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 9
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2930 to i64*
  %2931 = load i32, i32* %ESI.i189
  %2932 = zext i32 %2931 to i64
  %2933 = load i64, i64* %PC.i188
  %2934 = add i64 %2933, 2
  store i64 %2934, i64* %PC.i188
  %2935 = and i64 %2932, 4294967295
  store i64 %2935, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_405c48, %struct.Memory** %MEMORY
  %loadMem_405c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2937 = getelementptr inbounds %struct.GPR, %struct.GPR* %2936, i32 0, i32 33
  %2938 = getelementptr inbounds %struct.Reg, %struct.Reg* %2937, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %2938 to i64*
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 9
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2941 to i32*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 1
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %2944 to i64*
  %2945 = load i32, i32* %ESI.i
  %2946 = zext i32 %2945 to i64
  %2947 = load i64, i64* %PC.i186
  %2948 = add i64 %2947, 2
  store i64 %2948, i64* %PC.i186
  %2949 = and i64 %2946, 4294967295
  store i64 %2949, i64* %RAX.i187, align 8
  store %struct.Memory* %loadMem_405c4a, %struct.Memory** %MEMORY
  %loadMem_405c4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 33
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 1
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RAX.i184 = bitcast %union.anon* %2955 to i64*
  %2956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2957 = getelementptr inbounds %struct.GPR, %struct.GPR* %2956, i32 0, i32 5
  %2958 = getelementptr inbounds %struct.Reg, %struct.Reg* %2957, i32 0, i32 0
  %RCX.i185 = bitcast %union.anon* %2958 to i64*
  %2959 = load i64, i64* %RCX.i185
  %2960 = load i64, i64* %RAX.i184
  %2961 = mul i64 %2960, 4
  %2962 = add i64 %2961, 6390128
  %2963 = load i64, i64* %PC.i183
  %2964 = add i64 %2963, 7
  store i64 %2964, i64* %PC.i183
  %2965 = trunc i64 %2959 to i32
  %2966 = inttoptr i64 %2962 to i32*
  %2967 = load i32, i32* %2966
  %2968 = xor i32 %2967, %2965
  %2969 = zext i32 %2968 to i64
  store i64 %2969, i64* %RCX.i185, align 8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2970, align 1
  %2971 = and i32 %2968, 255
  %2972 = call i32 @llvm.ctpop.i32(i32 %2971)
  %2973 = trunc i32 %2972 to i8
  %2974 = and i8 %2973, 1
  %2975 = xor i8 %2974, 1
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2975, i8* %2976, align 1
  %2977 = icmp eq i32 %2968, 0
  %2978 = zext i1 %2977 to i8
  %2979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2978, i8* %2979, align 1
  %2980 = lshr i32 %2968, 31
  %2981 = trunc i32 %2980 to i8
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2981, i8* %2982, align 1
  %2983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2983, align 1
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2984, align 1
  store %struct.Memory* %loadMem_405c4c, %struct.Memory** %MEMORY
  %loadMem_405c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 33
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2987 to i64*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 1
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %2990 to i64*
  %2991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2992 = getelementptr inbounds %struct.GPR, %struct.GPR* %2991, i32 0, i32 15
  %2993 = getelementptr inbounds %struct.Reg, %struct.Reg* %2992, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %2993 to i64*
  %2994 = load i64, i64* %RBP.i182
  %2995 = sub i64 %2994, 8
  %2996 = load i64, i64* %PC.i180
  %2997 = add i64 %2996, 4
  store i64 %2997, i64* %PC.i180
  %2998 = inttoptr i64 %2995 to i64*
  %2999 = load i64, i64* %2998
  store i64 %2999, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_405c53, %struct.Memory** %MEMORY
  %loadMem_405c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3001 = getelementptr inbounds %struct.GPR, %struct.GPR* %3000, i32 0, i32 33
  %3002 = getelementptr inbounds %struct.Reg, %struct.Reg* %3001, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %3002 to i64*
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 5
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %ECX.i178 = bitcast %union.anon* %3005 to i32*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 1
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %RAX.i179
  %3010 = add i64 %3009, 648
  %3011 = load i32, i32* %ECX.i178
  %3012 = zext i32 %3011 to i64
  %3013 = load i64, i64* %PC.i177
  %3014 = add i64 %3013, 6
  store i64 %3014, i64* %PC.i177
  %3015 = inttoptr i64 %3010 to i32*
  store i32 %3011, i32* %3015
  store %struct.Memory* %loadMem_405c57, %struct.Memory** %MEMORY
  %loadMem_405c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 1
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %3021 to i64*
  %3022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3023 = getelementptr inbounds %struct.GPR, %struct.GPR* %3022, i32 0, i32 15
  %3024 = getelementptr inbounds %struct.Reg, %struct.Reg* %3023, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %3024 to i64*
  %3025 = load i64, i64* %RBP.i176
  %3026 = sub i64 %3025, 8
  %3027 = load i64, i64* %PC.i174
  %3028 = add i64 %3027, 4
  store i64 %3028, i64* %PC.i174
  %3029 = inttoptr i64 %3026 to i64*
  %3030 = load i64, i64* %3029
  store i64 %3030, i64* %RAX.i175, align 8
  store %struct.Memory* %loadMem_405c5d, %struct.Memory** %MEMORY
  %loadMem_405c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3032 = getelementptr inbounds %struct.GPR, %struct.GPR* %3031, i32 0, i32 33
  %3033 = getelementptr inbounds %struct.Reg, %struct.Reg* %3032, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %3033 to i64*
  %3034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3035 = getelementptr inbounds %struct.GPR, %struct.GPR* %3034, i32 0, i32 15
  %3036 = getelementptr inbounds %struct.Reg, %struct.Reg* %3035, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %3036 to i64*
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3038 = getelementptr inbounds %struct.GPR, %struct.GPR* %3037, i32 0, i32 17
  %3039 = getelementptr inbounds %struct.Reg, %struct.Reg* %3038, i32 0, i32 0
  %R8.i173 = bitcast %union.anon* %3039 to i64*
  %3040 = load i64, i64* %RBP.i172
  %3041 = sub i64 %3040, 8
  %3042 = load i64, i64* %PC.i171
  %3043 = add i64 %3042, 4
  store i64 %3043, i64* %PC.i171
  %3044 = inttoptr i64 %3041 to i64*
  %3045 = load i64, i64* %3044
  store i64 %3045, i64* %R8.i173, align 8
  store %struct.Memory* %loadMem_405c61, %struct.Memory** %MEMORY
  %loadMem_405c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 33
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 5
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RCX.i169 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 17
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %R8.i170 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %R8.i170
  %3056 = add i64 %3055, 92
  %3057 = load i64, i64* %PC.i168
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i168
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = zext i32 %3060 to i64
  store i64 %3061, i64* %RCX.i169, align 8
  store %struct.Memory* %loadMem_405c65, %struct.Memory** %MEMORY
  %loadMem_405c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3063 = getelementptr inbounds %struct.GPR, %struct.GPR* %3062, i32 0, i32 33
  %3064 = getelementptr inbounds %struct.Reg, %struct.Reg* %3063, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %3064 to i64*
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3066 = getelementptr inbounds %struct.GPR, %struct.GPR* %3065, i32 0, i32 5
  %3067 = getelementptr inbounds %struct.Reg, %struct.Reg* %3066, i32 0, i32 0
  %ECX.i167 = bitcast %union.anon* %3067 to i32*
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3069 = getelementptr inbounds %struct.GPR, %struct.GPR* %3068, i32 0, i32 17
  %3070 = getelementptr inbounds %struct.Reg, %struct.Reg* %3069, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %3070 to i32*
  %3071 = bitcast i32* %R8D.i to i64*
  %3072 = load i32, i32* %ECX.i167
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %PC.i166
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i166
  %3076 = and i64 %3073, 4294967295
  store i64 %3076, i64* %3071, align 8
  store %struct.Memory* %loadMem_405c69, %struct.Memory** %MEMORY
  %loadMem_405c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 1
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 17
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %R8.i165 = bitcast %union.anon* %3085 to i64*
  %3086 = load i64, i64* %RAX.i164
  %3087 = load i64, i64* %R8.i165
  %3088 = add i64 %3086, 128
  %3089 = add i64 %3088, %3087
  %3090 = load i64, i64* %PC.i163
  %3091 = add i64 %3090, 9
  store i64 %3091, i64* %PC.i163
  %3092 = inttoptr i64 %3089 to i8*
  store i8 1, i8* %3092
  store %struct.Memory* %loadMem_405c6c, %struct.Memory** %MEMORY
  %loadMem_405c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 7
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %3099 = bitcast %union.anon* %3098 to %struct.anon.2*
  %DL.i161 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3099, i32 0, i32 0
  %3100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3101 = getelementptr inbounds %struct.GPR, %struct.GPR* %3100, i32 0, i32 15
  %3102 = getelementptr inbounds %struct.Reg, %struct.Reg* %3101, i32 0, i32 0
  %RBP.i162 = bitcast %union.anon* %3102 to i64*
  %3103 = load i64, i64* %RBP.i162
  %3104 = sub i64 %3103, 25
  %3105 = load i64, i64* %PC.i160
  %3106 = add i64 %3105, 3
  store i64 %3106, i64* %PC.i160
  %3107 = inttoptr i64 %3104 to i8*
  %3108 = load i8, i8* %3107
  store i8 %3108, i8* %DL.i161, align 1
  store %struct.Memory* %loadMem_405c75, %struct.Memory** %MEMORY
  %loadMem_405c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 1
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 15
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %RBP.i159
  %3119 = sub i64 %3118, 8
  %3120 = load i64, i64* %PC.i157
  %3121 = add i64 %3120, 4
  store i64 %3121, i64* %PC.i157
  %3122 = inttoptr i64 %3119 to i64*
  %3123 = load i64, i64* %3122
  store i64 %3123, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_405c78, %struct.Memory** %MEMORY
  %loadMem_405c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3125 = getelementptr inbounds %struct.GPR, %struct.GPR* %3124, i32 0, i32 33
  %3126 = getelementptr inbounds %struct.Reg, %struct.Reg* %3125, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %3126 to i64*
  %3127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3128 = getelementptr inbounds %struct.GPR, %struct.GPR* %3127, i32 0, i32 1
  %3129 = getelementptr inbounds %struct.Reg, %struct.Reg* %3128, i32 0, i32 0
  %RAX.i156 = bitcast %union.anon* %3129 to i64*
  %3130 = load i64, i64* %RAX.i156
  %3131 = add i64 %3130, 64
  %3132 = load i64, i64* %PC.i155
  %3133 = add i64 %3132, 4
  store i64 %3133, i64* %PC.i155
  %3134 = inttoptr i64 %3131 to i64*
  %3135 = load i64, i64* %3134
  store i64 %3135, i64* %RAX.i156, align 8
  store %struct.Memory* %loadMem_405c7c, %struct.Memory** %MEMORY
  %loadMem_405c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 15
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %3141 to i64*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 17
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %R8.i154 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RBP.i153
  %3146 = sub i64 %3145, 8
  %3147 = load i64, i64* %PC.i152
  %3148 = add i64 %3147, 4
  store i64 %3148, i64* %PC.i152
  %3149 = inttoptr i64 %3146 to i64*
  %3150 = load i64, i64* %3149
  store i64 %3150, i64* %R8.i154, align 8
  store %struct.Memory* %loadMem_405c80, %struct.Memory** %MEMORY
  %loadMem_405c84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3152 = getelementptr inbounds %struct.GPR, %struct.GPR* %3151, i32 0, i32 33
  %3153 = getelementptr inbounds %struct.Reg, %struct.Reg* %3152, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3153 to i64*
  %3154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3155 = getelementptr inbounds %struct.GPR, %struct.GPR* %3154, i32 0, i32 17
  %3156 = getelementptr inbounds %struct.Reg, %struct.Reg* %3155, i32 0, i32 0
  %R8.i151 = bitcast %union.anon* %3156 to i64*
  %3157 = load i64, i64* %R8.i151
  %3158 = add i64 %3157, 108
  %3159 = load i64, i64* %PC.i150
  %3160 = add i64 %3159, 4
  store i64 %3160, i64* %PC.i150
  %3161 = inttoptr i64 %3158 to i32*
  %3162 = load i32, i32* %3161
  %3163 = sext i32 %3162 to i64
  store i64 %3163, i64* %R8.i151, align 8
  store %struct.Memory* %loadMem_405c84, %struct.Memory** %MEMORY
  %loadMem_405c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3165 = getelementptr inbounds %struct.GPR, %struct.GPR* %3164, i32 0, i32 33
  %3166 = getelementptr inbounds %struct.Reg, %struct.Reg* %3165, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3166 to i64*
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 7
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %3170 = bitcast %union.anon* %3169 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %3170, i32 0, i32 0
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 1
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 17
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %R8.i = bitcast %union.anon* %3176 to i64*
  %3177 = load i64, i64* %RAX.i149
  %3178 = load i64, i64* %R8.i
  %3179 = add i64 %3178, %3177
  %3180 = load i8, i8* %DL.i
  %3181 = zext i8 %3180 to i64
  %3182 = load i64, i64* %PC.i148
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i148
  %3184 = inttoptr i64 %3179 to i8*
  store i8 %3180, i8* %3184
  store %struct.Memory* %loadMem_405c88, %struct.Memory** %MEMORY
  %loadMem_405c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 1
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %3190 to i64*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 15
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %3193 to i64*
  %3194 = load i64, i64* %RBP.i147
  %3195 = sub i64 %3194, 8
  %3196 = load i64, i64* %PC.i145
  %3197 = add i64 %3196, 4
  store i64 %3197, i64* %PC.i145
  %3198 = inttoptr i64 %3195 to i64*
  %3199 = load i64, i64* %3198
  store i64 %3199, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_405c8c, %struct.Memory** %MEMORY
  %loadMem_405c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 1
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RAX.i143 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 5
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RCX.i144 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %RAX.i143
  %3210 = add i64 %3209, 108
  %3211 = load i64, i64* %PC.i142
  %3212 = add i64 %3211, 3
  store i64 %3212, i64* %PC.i142
  %3213 = inttoptr i64 %3210 to i32*
  %3214 = load i32, i32* %3213
  %3215 = zext i32 %3214 to i64
  store i64 %3215, i64* %RCX.i144, align 8
  store %struct.Memory* %loadMem_405c90, %struct.Memory** %MEMORY
  %loadMem_405c93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 5
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %3221 to i64*
  %3222 = load i64, i64* %RCX.i141
  %3223 = load i64, i64* %PC.i140
  %3224 = add i64 %3223, 3
  store i64 %3224, i64* %PC.i140
  %3225 = trunc i64 %3222 to i32
  %3226 = add i32 1, %3225
  %3227 = zext i32 %3226 to i64
  store i64 %3227, i64* %RCX.i141, align 8
  %3228 = icmp ult i32 %3226, %3225
  %3229 = icmp ult i32 %3226, 1
  %3230 = or i1 %3228, %3229
  %3231 = zext i1 %3230 to i8
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3231, i8* %3232, align 1
  %3233 = and i32 %3226, 255
  %3234 = call i32 @llvm.ctpop.i32(i32 %3233)
  %3235 = trunc i32 %3234 to i8
  %3236 = and i8 %3235, 1
  %3237 = xor i8 %3236, 1
  %3238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3237, i8* %3238, align 1
  %3239 = xor i64 1, %3222
  %3240 = trunc i64 %3239 to i32
  %3241 = xor i32 %3240, %3226
  %3242 = lshr i32 %3241, 4
  %3243 = trunc i32 %3242 to i8
  %3244 = and i8 %3243, 1
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3244, i8* %3245, align 1
  %3246 = icmp eq i32 %3226, 0
  %3247 = zext i1 %3246 to i8
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3247, i8* %3248, align 1
  %3249 = lshr i32 %3226, 31
  %3250 = trunc i32 %3249 to i8
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3250, i8* %3251, align 1
  %3252 = lshr i32 %3225, 31
  %3253 = xor i32 %3249, %3252
  %3254 = add i32 %3253, %3249
  %3255 = icmp eq i32 %3254, 2
  %3256 = zext i1 %3255 to i8
  %3257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3256, i8* %3257, align 1
  store %struct.Memory* %loadMem_405c93, %struct.Memory** %MEMORY
  %loadMem_405c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3259 = getelementptr inbounds %struct.GPR, %struct.GPR* %3258, i32 0, i32 33
  %3260 = getelementptr inbounds %struct.Reg, %struct.Reg* %3259, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3260 to i64*
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 5
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %ECX.i138 = bitcast %union.anon* %3263 to i32*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 1
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %3266 to i64*
  %3267 = load i64, i64* %RAX.i139
  %3268 = add i64 %3267, 108
  %3269 = load i32, i32* %ECX.i138
  %3270 = zext i32 %3269 to i64
  %3271 = load i64, i64* %PC.i137
  %3272 = add i64 %3271, 3
  store i64 %3272, i64* %PC.i137
  %3273 = inttoptr i64 %3268 to i32*
  store i32 %3269, i32* %3273
  store %struct.Memory* %loadMem_405c96, %struct.Memory** %MEMORY
  %loadMem_405c99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3275 = getelementptr inbounds %struct.GPR, %struct.GPR* %3274, i32 0, i32 33
  %3276 = getelementptr inbounds %struct.Reg, %struct.Reg* %3275, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3276 to i64*
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 5
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %RCX.i135 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 15
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %3282 to i64*
  %3283 = load i64, i64* %RBP.i136
  %3284 = sub i64 %3283, 24
  %3285 = load i64, i64* %PC.i134
  %3286 = add i64 %3285, 3
  store i64 %3286, i64* %PC.i134
  %3287 = inttoptr i64 %3284 to i32*
  %3288 = load i32, i32* %3287
  %3289 = zext i32 %3288 to i64
  store i64 %3289, i64* %RCX.i135, align 8
  store %struct.Memory* %loadMem_405c99, %struct.Memory** %MEMORY
  %loadMem_405c9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 1
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 15
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3298 to i64*
  %3299 = load i64, i64* %RBP.i133
  %3300 = sub i64 %3299, 8
  %3301 = load i64, i64* %PC.i131
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %PC.i131
  %3303 = inttoptr i64 %3300 to i64*
  %3304 = load i64, i64* %3303
  store i64 %3304, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_405c9c, %struct.Memory** %MEMORY
  %loadMem_405ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %ECX.i129 = bitcast %union.anon* %3310 to i32*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 1
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RAX.i130
  %3315 = add i64 %3314, 92
  %3316 = load i32, i32* %ECX.i129
  %3317 = zext i32 %3316 to i64
  %3318 = load i64, i64* %PC.i128
  %3319 = add i64 %3318, 3
  store i64 %3319, i64* %PC.i128
  %3320 = inttoptr i64 %3315 to i32*
  store i32 %3316, i32* %3320
  store %struct.Memory* %loadMem_405ca0, %struct.Memory** %MEMORY
  %loadMem_405ca3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %3323 to i64*
  %3324 = load i64, i64* %PC.i127
  %3325 = add i64 %3324, 108
  %3326 = load i64, i64* %PC.i127
  %3327 = add i64 %3326, 5
  store i64 %3327, i64* %PC.i127
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3325, i64* %3328, align 8
  store %struct.Memory* %loadMem_405ca3, %struct.Memory** %MEMORY
  br label %block_.L_405d0f

block_.L_405ca8:                                  ; preds = %block_405c0e, %block_.L_405bea
  %loadMem_405ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 33
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %3331 to i64*
  %3332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3333 = getelementptr inbounds %struct.GPR, %struct.GPR* %3332, i32 0, i32 1
  %3334 = getelementptr inbounds %struct.Reg, %struct.Reg* %3333, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %3334 to i64*
  %3335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3336 = getelementptr inbounds %struct.GPR, %struct.GPR* %3335, i32 0, i32 15
  %3337 = getelementptr inbounds %struct.Reg, %struct.Reg* %3336, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %3337 to i64*
  %3338 = load i64, i64* %RBP.i126
  %3339 = sub i64 %3338, 24
  %3340 = load i64, i64* %PC.i124
  %3341 = add i64 %3340, 3
  store i64 %3341, i64* %PC.i124
  %3342 = inttoptr i64 %3339 to i32*
  %3343 = load i32, i32* %3342
  %3344 = zext i32 %3343 to i64
  store i64 %3344, i64* %RAX.i125, align 8
  store %struct.Memory* %loadMem_405ca8, %struct.Memory** %MEMORY
  %loadMem_405cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3346 = getelementptr inbounds %struct.GPR, %struct.GPR* %3345, i32 0, i32 33
  %3347 = getelementptr inbounds %struct.Reg, %struct.Reg* %3346, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3347 to i64*
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3349 = getelementptr inbounds %struct.GPR, %struct.GPR* %3348, i32 0, i32 5
  %3350 = getelementptr inbounds %struct.Reg, %struct.Reg* %3349, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %3350 to i64*
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 15
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %RBP.i123 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %RBP.i123
  %3355 = sub i64 %3354, 8
  %3356 = load i64, i64* %PC.i121
  %3357 = add i64 %3356, 4
  store i64 %3357, i64* %PC.i121
  %3358 = inttoptr i64 %3355 to i64*
  %3359 = load i64, i64* %3358
  store i64 %3359, i64* %RCX.i122, align 8
  store %struct.Memory* %loadMem_405cab, %struct.Memory** %MEMORY
  %loadMem_405caf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 33
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3362 to i64*
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 1
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %3365 to i32*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3367 = getelementptr inbounds %struct.GPR, %struct.GPR* %3366, i32 0, i32 5
  %3368 = getelementptr inbounds %struct.Reg, %struct.Reg* %3367, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %3368 to i64*
  %3369 = load i32, i32* %EAX.i119
  %3370 = zext i32 %3369 to i64
  %3371 = load i64, i64* %RCX.i120
  %3372 = add i64 %3371, 92
  %3373 = load i64, i64* %PC.i118
  %3374 = add i64 %3373, 3
  store i64 %3374, i64* %PC.i118
  %3375 = inttoptr i64 %3372 to i32*
  %3376 = load i32, i32* %3375
  %3377 = sub i32 %3369, %3376
  %3378 = icmp ult i32 %3369, %3376
  %3379 = zext i1 %3378 to i8
  %3380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3379, i8* %3380, align 1
  %3381 = and i32 %3377, 255
  %3382 = call i32 @llvm.ctpop.i32(i32 %3381)
  %3383 = trunc i32 %3382 to i8
  %3384 = and i8 %3383, 1
  %3385 = xor i8 %3384, 1
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3385, i8* %3386, align 1
  %3387 = xor i32 %3376, %3369
  %3388 = xor i32 %3387, %3377
  %3389 = lshr i32 %3388, 4
  %3390 = trunc i32 %3389 to i8
  %3391 = and i8 %3390, 1
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3391, i8* %3392, align 1
  %3393 = icmp eq i32 %3377, 0
  %3394 = zext i1 %3393 to i8
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3394, i8* %3395, align 1
  %3396 = lshr i32 %3377, 31
  %3397 = trunc i32 %3396 to i8
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3397, i8* %3398, align 1
  %3399 = lshr i32 %3369, 31
  %3400 = lshr i32 %3376, 31
  %3401 = xor i32 %3400, %3399
  %3402 = xor i32 %3396, %3399
  %3403 = add i32 %3402, %3401
  %3404 = icmp eq i32 %3403, 2
  %3405 = zext i1 %3404 to i8
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3405, i8* %3406, align 1
  store %struct.Memory* %loadMem_405caf, %struct.Memory** %MEMORY
  %loadMem_405cb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3408 = getelementptr inbounds %struct.GPR, %struct.GPR* %3407, i32 0, i32 33
  %3409 = getelementptr inbounds %struct.Reg, %struct.Reg* %3408, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %3409 to i64*
  %3410 = load i64, i64* %PC.i117
  %3411 = add i64 %3410, 23
  %3412 = load i64, i64* %PC.i117
  %3413 = add i64 %3412, 6
  %3414 = load i64, i64* %PC.i117
  %3415 = add i64 %3414, 6
  store i64 %3415, i64* %PC.i117
  %3416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3417 = load i8, i8* %3416, align 1
  %3418 = icmp eq i8 %3417, 0
  %3419 = zext i1 %3418 to i8
  store i8 %3419, i8* %BRANCH_TAKEN, align 1
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3421 = select i1 %3418, i64 %3411, i64 %3413
  store i64 %3421, i64* %3420, align 8
  store %struct.Memory* %loadMem_405cb2, %struct.Memory** %MEMORY
  %loadBr_405cb2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405cb2 = icmp eq i8 %loadBr_405cb2, 1
  br i1 %cmpBr_405cb2, label %block_.L_405cc9, label %block_405cb8

block_405cb8:                                     ; preds = %block_.L_405ca8
  %loadMem_405cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 33
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 1
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %3427 to i64*
  %3428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3429 = getelementptr inbounds %struct.GPR, %struct.GPR* %3428, i32 0, i32 15
  %3430 = getelementptr inbounds %struct.Reg, %struct.Reg* %3429, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %3430 to i64*
  %3431 = load i64, i64* %RBP.i116
  %3432 = sub i64 %3431, 8
  %3433 = load i64, i64* %PC.i114
  %3434 = add i64 %3433, 4
  store i64 %3434, i64* %PC.i114
  %3435 = inttoptr i64 %3432 to i64*
  %3436 = load i64, i64* %3435
  store i64 %3436, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_405cb8, %struct.Memory** %MEMORY
  %loadMem_405cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 33
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3441 = getelementptr inbounds %struct.GPR, %struct.GPR* %3440, i32 0, i32 1
  %3442 = getelementptr inbounds %struct.Reg, %struct.Reg* %3441, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %3442 to i64*
  %3443 = load i64, i64* %RAX.i113
  %3444 = add i64 %3443, 96
  %3445 = load i64, i64* %PC.i112
  %3446 = add i64 %3445, 7
  store i64 %3446, i64* %PC.i112
  %3447 = inttoptr i64 %3444 to i32*
  %3448 = load i32, i32* %3447
  %3449 = sub i32 %3448, 255
  %3450 = icmp ult i32 %3448, 255
  %3451 = zext i1 %3450 to i8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3451, i8* %3452, align 1
  %3453 = and i32 %3449, 255
  %3454 = call i32 @llvm.ctpop.i32(i32 %3453)
  %3455 = trunc i32 %3454 to i8
  %3456 = and i8 %3455, 1
  %3457 = xor i8 %3456, 1
  %3458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3457, i8* %3458, align 1
  %3459 = xor i32 %3448, 255
  %3460 = xor i32 %3459, %3449
  %3461 = lshr i32 %3460, 4
  %3462 = trunc i32 %3461 to i8
  %3463 = and i8 %3462, 1
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3463, i8* %3464, align 1
  %3465 = icmp eq i32 %3449, 0
  %3466 = zext i1 %3465 to i8
  %3467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3466, i8* %3467, align 1
  %3468 = lshr i32 %3449, 31
  %3469 = trunc i32 %3468 to i8
  %3470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3469, i8* %3470, align 1
  %3471 = lshr i32 %3448, 31
  %3472 = xor i32 %3468, %3471
  %3473 = add i32 %3472, %3471
  %3474 = icmp eq i32 %3473, 2
  %3475 = zext i1 %3474 to i8
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3475, i8* %3476, align 1
  store %struct.Memory* %loadMem_405cbc, %struct.Memory** %MEMORY
  %loadMem_405cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3478 = getelementptr inbounds %struct.GPR, %struct.GPR* %3477, i32 0, i32 33
  %3479 = getelementptr inbounds %struct.Reg, %struct.Reg* %3478, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %3479 to i64*
  %3480 = load i64, i64* %PC.i111
  %3481 = add i64 %3480, 58
  %3482 = load i64, i64* %PC.i111
  %3483 = add i64 %3482, 6
  %3484 = load i64, i64* %PC.i111
  %3485 = add i64 %3484, 6
  store i64 %3485, i64* %PC.i111
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3487 = load i8, i8* %3486, align 1
  %3488 = icmp eq i8 %3487, 0
  %3489 = zext i1 %3488 to i8
  store i8 %3489, i8* %BRANCH_TAKEN, align 1
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3491 = select i1 %3488, i64 %3481, i64 %3483
  store i64 %3491, i64* %3490, align 8
  store %struct.Memory* %loadMem_405cc3, %struct.Memory** %MEMORY
  %loadBr_405cc3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405cc3 = icmp eq i8 %loadBr_405cc3, 1
  br i1 %cmpBr_405cc3, label %block_.L_405cfd, label %block_.L_405cc9

block_.L_405cc9:                                  ; preds = %block_405cb8, %block_.L_405ca8
  %loadMem_405cc9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 33
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %3494 to i64*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 1
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 15
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %3500 to i64*
  %3501 = load i64, i64* %RBP.i110
  %3502 = sub i64 %3501, 8
  %3503 = load i64, i64* %PC.i108
  %3504 = add i64 %3503, 4
  store i64 %3504, i64* %PC.i108
  %3505 = inttoptr i64 %3502 to i64*
  %3506 = load i64, i64* %3505
  store i64 %3506, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_405cc9, %struct.Memory** %MEMORY
  %loadMem_405ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 33
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 1
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %3512 to i64*
  %3513 = load i64, i64* %RAX.i107
  %3514 = add i64 %3513, 92
  %3515 = load i64, i64* %PC.i106
  %3516 = add i64 %3515, 7
  store i64 %3516, i64* %PC.i106
  %3517 = inttoptr i64 %3514 to i32*
  %3518 = load i32, i32* %3517
  %3519 = sub i32 %3518, 256
  %3520 = icmp ult i32 %3518, 256
  %3521 = zext i1 %3520 to i8
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3521, i8* %3522, align 1
  %3523 = and i32 %3519, 255
  %3524 = call i32 @llvm.ctpop.i32(i32 %3523)
  %3525 = trunc i32 %3524 to i8
  %3526 = and i8 %3525, 1
  %3527 = xor i8 %3526, 1
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3527, i8* %3528, align 1
  %3529 = xor i32 %3518, 256
  %3530 = xor i32 %3529, %3519
  %3531 = lshr i32 %3530, 4
  %3532 = trunc i32 %3531 to i8
  %3533 = and i8 %3532, 1
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3533, i8* %3534, align 1
  %3535 = icmp eq i32 %3519, 0
  %3536 = zext i1 %3535 to i8
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3536, i8* %3537, align 1
  %3538 = lshr i32 %3519, 31
  %3539 = trunc i32 %3538 to i8
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3539, i8* %3540, align 1
  %3541 = lshr i32 %3518, 31
  %3542 = xor i32 %3538, %3541
  %3543 = add i32 %3542, %3541
  %3544 = icmp eq i32 %3543, 2
  %3545 = zext i1 %3544 to i8
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3545, i8* %3546, align 1
  store %struct.Memory* %loadMem_405ccd, %struct.Memory** %MEMORY
  %loadMem_405cd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 33
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %3549 to i64*
  %3550 = load i64, i64* %PC.i105
  %3551 = add i64 %3550, 15
  %3552 = load i64, i64* %PC.i105
  %3553 = add i64 %3552, 6
  %3554 = load i64, i64* %PC.i105
  %3555 = add i64 %3554, 6
  store i64 %3555, i64* %PC.i105
  %3556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %3557 = load i8, i8* %3556, align 1
  %3558 = icmp eq i8 %3557, 0
  %3559 = zext i1 %3558 to i8
  store i8 %3559, i8* %BRANCH_TAKEN, align 1
  %3560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3561 = select i1 %3558, i64 %3551, i64 %3553
  store i64 %3561, i64* %3560, align 8
  store %struct.Memory* %loadMem_405cd4, %struct.Memory** %MEMORY
  %loadBr_405cd4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405cd4 = icmp eq i8 %loadBr_405cd4, 1
  br i1 %cmpBr_405cd4, label %block_.L_405ce3, label %block_405cda

block_405cda:                                     ; preds = %block_.L_405cc9
  %loadMem_405cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 33
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %3564 to i64*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 11
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 15
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %3570 to i64*
  %3571 = load i64, i64* %RBP.i104
  %3572 = sub i64 %3571, 8
  %3573 = load i64, i64* %PC.i103
  %3574 = add i64 %3573, 4
  store i64 %3574, i64* %PC.i103
  %3575 = inttoptr i64 %3572 to i64*
  %3576 = load i64, i64* %3575
  store i64 %3576, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_405cda, %struct.Memory** %MEMORY
  %loadMem1_405cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 33
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %PC.i102
  %3581 = add i64 %3580, 242
  %3582 = load i64, i64* %PC.i102
  %3583 = add i64 %3582, 5
  %3584 = load i64, i64* %PC.i102
  %3585 = add i64 %3584, 5
  store i64 %3585, i64* %PC.i102
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3587 = load i64, i64* %3586, align 8
  %3588 = add i64 %3587, -8
  %3589 = inttoptr i64 %3588 to i64*
  store i64 %3583, i64* %3589
  store i64 %3588, i64* %3586, align 8
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3581, i64* %3590, align 8
  store %struct.Memory* %loadMem1_405cde, %struct.Memory** %MEMORY
  %loadMem2_405cde = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_405cde = load i64, i64* %3
  %call2_405cde = call %struct.Memory* @sub_405dd0.add_pair_to_block(%struct.State* %0, i64 %loadPC_405cde, %struct.Memory* %loadMem2_405cde)
  store %struct.Memory* %call2_405cde, %struct.Memory** %MEMORY
  br label %block_.L_405ce3

block_.L_405ce3:                                  ; preds = %block_405cda, %block_.L_405cc9
  %loadMem_405ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3592 = getelementptr inbounds %struct.GPR, %struct.GPR* %3591, i32 0, i32 33
  %3593 = getelementptr inbounds %struct.Reg, %struct.Reg* %3592, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %3593 to i64*
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3595 = getelementptr inbounds %struct.GPR, %struct.GPR* %3594, i32 0, i32 1
  %3596 = getelementptr inbounds %struct.Reg, %struct.Reg* %3595, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %3596 to i64*
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 15
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %3599 to i64*
  %3600 = load i64, i64* %RBP.i101
  %3601 = sub i64 %3600, 24
  %3602 = load i64, i64* %PC.i99
  %3603 = add i64 %3602, 3
  store i64 %3603, i64* %PC.i99
  %3604 = inttoptr i64 %3601 to i32*
  %3605 = load i32, i32* %3604
  %3606 = zext i32 %3605 to i64
  store i64 %3606, i64* %RAX.i100, align 8
  store %struct.Memory* %loadMem_405ce3, %struct.Memory** %MEMORY
  %loadMem_405ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 33
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 5
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %RCX.i97 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 15
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %3615 to i64*
  %3616 = load i64, i64* %RBP.i98
  %3617 = sub i64 %3616, 8
  %3618 = load i64, i64* %PC.i96
  %3619 = add i64 %3618, 4
  store i64 %3619, i64* %PC.i96
  %3620 = inttoptr i64 %3617 to i64*
  %3621 = load i64, i64* %3620
  store i64 %3621, i64* %RCX.i97, align 8
  store %struct.Memory* %loadMem_405ce6, %struct.Memory** %MEMORY
  %loadMem_405cea = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 1
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3627 to i32*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 5
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %3630 to i64*
  %3631 = load i64, i64* %RCX.i95
  %3632 = add i64 %3631, 92
  %3633 = load i32, i32* %EAX.i
  %3634 = zext i32 %3633 to i64
  %3635 = load i64, i64* %PC.i94
  %3636 = add i64 %3635, 3
  store i64 %3636, i64* %PC.i94
  %3637 = inttoptr i64 %3632 to i32*
  store i32 %3633, i32* %3637
  store %struct.Memory* %loadMem_405cea, %struct.Memory** %MEMORY
  %loadMem_405ced = load %struct.Memory*, %struct.Memory** %MEMORY
  %3638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3639 = getelementptr inbounds %struct.GPR, %struct.GPR* %3638, i32 0, i32 33
  %3640 = getelementptr inbounds %struct.Reg, %struct.Reg* %3639, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %3640 to i64*
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3642 = getelementptr inbounds %struct.GPR, %struct.GPR* %3641, i32 0, i32 5
  %3643 = getelementptr inbounds %struct.Reg, %struct.Reg* %3642, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %3643 to i64*
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 15
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %3646 to i64*
  %3647 = load i64, i64* %RBP.i93
  %3648 = sub i64 %3647, 8
  %3649 = load i64, i64* %PC.i91
  %3650 = add i64 %3649, 4
  store i64 %3650, i64* %PC.i91
  %3651 = inttoptr i64 %3648 to i64*
  %3652 = load i64, i64* %3651
  store i64 %3652, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_405ced, %struct.Memory** %MEMORY
  %loadMem_405cf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3654 = getelementptr inbounds %struct.GPR, %struct.GPR* %3653, i32 0, i32 33
  %3655 = getelementptr inbounds %struct.Reg, %struct.Reg* %3654, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %3655 to i64*
  %3656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3657 = getelementptr inbounds %struct.GPR, %struct.GPR* %3656, i32 0, i32 5
  %3658 = getelementptr inbounds %struct.Reg, %struct.Reg* %3657, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %3658 to i64*
  %3659 = load i64, i64* %RCX.i90
  %3660 = add i64 %3659, 96
  %3661 = load i64, i64* %PC.i89
  %3662 = add i64 %3661, 7
  store i64 %3662, i64* %PC.i89
  %3663 = inttoptr i64 %3660 to i32*
  store i32 1, i32* %3663
  store %struct.Memory* %loadMem_405cf1, %struct.Memory** %MEMORY
  %loadMem_405cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3665 = getelementptr inbounds %struct.GPR, %struct.GPR* %3664, i32 0, i32 33
  %3666 = getelementptr inbounds %struct.Reg, %struct.Reg* %3665, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %3666 to i64*
  %3667 = load i64, i64* %PC.i88
  %3668 = add i64 %3667, 18
  %3669 = load i64, i64* %PC.i88
  %3670 = add i64 %3669, 5
  store i64 %3670, i64* %PC.i88
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3668, i64* %3671, align 8
  store %struct.Memory* %loadMem_405cf8, %struct.Memory** %MEMORY
  br label %block_.L_405d0a

block_.L_405cfd:                                  ; preds = %block_405cb8
  %loadMem_405cfd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 33
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %3674 to i64*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 1
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %3677 to i64*
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3679 = getelementptr inbounds %struct.GPR, %struct.GPR* %3678, i32 0, i32 15
  %3680 = getelementptr inbounds %struct.Reg, %struct.Reg* %3679, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %3680 to i64*
  %3681 = load i64, i64* %RBP.i87
  %3682 = sub i64 %3681, 8
  %3683 = load i64, i64* %PC.i85
  %3684 = add i64 %3683, 4
  store i64 %3684, i64* %PC.i85
  %3685 = inttoptr i64 %3682 to i64*
  %3686 = load i64, i64* %3685
  store i64 %3686, i64* %RAX.i86, align 8
  store %struct.Memory* %loadMem_405cfd, %struct.Memory** %MEMORY
  %loadMem_405d01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3688 = getelementptr inbounds %struct.GPR, %struct.GPR* %3687, i32 0, i32 33
  %3689 = getelementptr inbounds %struct.Reg, %struct.Reg* %3688, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %3689 to i64*
  %3690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3691 = getelementptr inbounds %struct.GPR, %struct.GPR* %3690, i32 0, i32 1
  %3692 = getelementptr inbounds %struct.Reg, %struct.Reg* %3691, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %3692 to i64*
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3694 = getelementptr inbounds %struct.GPR, %struct.GPR* %3693, i32 0, i32 5
  %3695 = getelementptr inbounds %struct.Reg, %struct.Reg* %3694, i32 0, i32 0
  %RCX.i84 = bitcast %union.anon* %3695 to i64*
  %3696 = load i64, i64* %RAX.i83
  %3697 = add i64 %3696, 96
  %3698 = load i64, i64* %PC.i82
  %3699 = add i64 %3698, 3
  store i64 %3699, i64* %PC.i82
  %3700 = inttoptr i64 %3697 to i32*
  %3701 = load i32, i32* %3700
  %3702 = zext i32 %3701 to i64
  store i64 %3702, i64* %RCX.i84, align 8
  store %struct.Memory* %loadMem_405d01, %struct.Memory** %MEMORY
  %loadMem_405d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 33
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 5
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RCX.i81 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RCX.i81
  %3710 = load i64, i64* %PC.i80
  %3711 = add i64 %3710, 3
  store i64 %3711, i64* %PC.i80
  %3712 = trunc i64 %3709 to i32
  %3713 = add i32 1, %3712
  %3714 = zext i32 %3713 to i64
  store i64 %3714, i64* %RCX.i81, align 8
  %3715 = icmp ult i32 %3713, %3712
  %3716 = icmp ult i32 %3713, 1
  %3717 = or i1 %3715, %3716
  %3718 = zext i1 %3717 to i8
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3718, i8* %3719, align 1
  %3720 = and i32 %3713, 255
  %3721 = call i32 @llvm.ctpop.i32(i32 %3720)
  %3722 = trunc i32 %3721 to i8
  %3723 = and i8 %3722, 1
  %3724 = xor i8 %3723, 1
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3724, i8* %3725, align 1
  %3726 = xor i64 1, %3709
  %3727 = trunc i64 %3726 to i32
  %3728 = xor i32 %3727, %3713
  %3729 = lshr i32 %3728, 4
  %3730 = trunc i32 %3729 to i8
  %3731 = and i8 %3730, 1
  %3732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3731, i8* %3732, align 1
  %3733 = icmp eq i32 %3713, 0
  %3734 = zext i1 %3733 to i8
  %3735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3734, i8* %3735, align 1
  %3736 = lshr i32 %3713, 31
  %3737 = trunc i32 %3736 to i8
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3737, i8* %3738, align 1
  %3739 = lshr i32 %3712, 31
  %3740 = xor i32 %3736, %3739
  %3741 = add i32 %3740, %3736
  %3742 = icmp eq i32 %3741, 2
  %3743 = zext i1 %3742 to i8
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3743, i8* %3744, align 1
  store %struct.Memory* %loadMem_405d04, %struct.Memory** %MEMORY
  %loadMem_405d07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i77 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 5
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %ECX.i78 = bitcast %union.anon* %3750 to i32*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 1
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RAX.i79
  %3755 = add i64 %3754, 96
  %3756 = load i32, i32* %ECX.i78
  %3757 = zext i32 %3756 to i64
  %3758 = load i64, i64* %PC.i77
  %3759 = add i64 %3758, 3
  store i64 %3759, i64* %PC.i77
  %3760 = inttoptr i64 %3755 to i32*
  store i32 %3756, i32* %3760
  store %struct.Memory* %loadMem_405d07, %struct.Memory** %MEMORY
  br label %block_.L_405d0a

block_.L_405d0a:                                  ; preds = %block_.L_405cfd, %block_.L_405ce3
  %loadMem_405d0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %3763 to i64*
  %3764 = load i64, i64* %PC.i76
  %3765 = add i64 %3764, 5
  %3766 = load i64, i64* %PC.i76
  %3767 = add i64 %3766, 5
  store i64 %3767, i64* %PC.i76
  %3768 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3765, i64* %3768, align 8
  store %struct.Memory* %loadMem_405d0a, %struct.Memory** %MEMORY
  br label %block_.L_405d0f

block_.L_405d0f:                                  ; preds = %block_.L_405d0a, %block_405c1c
  %loadMem_405d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 33
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %3771 to i64*
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3773 = getelementptr inbounds %struct.GPR, %struct.GPR* %3772, i32 0, i32 1
  %3774 = getelementptr inbounds %struct.Reg, %struct.Reg* %3773, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %3774 to i64*
  %3775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3776 = getelementptr inbounds %struct.GPR, %struct.GPR* %3775, i32 0, i32 15
  %3777 = getelementptr inbounds %struct.Reg, %struct.Reg* %3776, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %3777 to i64*
  %3778 = load i64, i64* %RBP.i75
  %3779 = sub i64 %3778, 8
  %3780 = load i64, i64* %PC.i73
  %3781 = add i64 %3780, 4
  store i64 %3781, i64* %PC.i73
  %3782 = inttoptr i64 %3779 to i64*
  %3783 = load i64, i64* %3782
  store i64 %3783, i64* %RAX.i74, align 8
  store %struct.Memory* %loadMem_405d0f, %struct.Memory** %MEMORY
  %loadMem_405d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3785 = getelementptr inbounds %struct.GPR, %struct.GPR* %3784, i32 0, i32 33
  %3786 = getelementptr inbounds %struct.Reg, %struct.Reg* %3785, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %3786 to i64*
  %3787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3788 = getelementptr inbounds %struct.GPR, %struct.GPR* %3787, i32 0, i32 1
  %3789 = getelementptr inbounds %struct.Reg, %struct.Reg* %3788, i32 0, i32 0
  %RAX.i72 = bitcast %union.anon* %3789 to i64*
  %3790 = load i64, i64* %RAX.i72
  %3791 = load i64, i64* %PC.i71
  %3792 = add i64 %3791, 3
  store i64 %3792, i64* %PC.i71
  %3793 = inttoptr i64 %3790 to i64*
  %3794 = load i64, i64* %3793
  store i64 %3794, i64* %RAX.i72, align 8
  store %struct.Memory* %loadMem_405d13, %struct.Memory** %MEMORY
  %loadMem_405d16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 33
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %3797 to i64*
  %3798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3799 = getelementptr inbounds %struct.GPR, %struct.GPR* %3798, i32 0, i32 1
  %3800 = getelementptr inbounds %struct.Reg, %struct.Reg* %3799, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %3800 to i64*
  %3801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3802 = getelementptr inbounds %struct.GPR, %struct.GPR* %3801, i32 0, i32 5
  %3803 = getelementptr inbounds %struct.Reg, %struct.Reg* %3802, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %3803 to i64*
  %3804 = load i64, i64* %RAX.i69
  %3805 = load i64, i64* %PC.i68
  %3806 = add i64 %3805, 3
  store i64 %3806, i64* %PC.i68
  %3807 = inttoptr i64 %3804 to i64*
  %3808 = load i64, i64* %3807
  store i64 %3808, i64* %RCX.i70, align 8
  store %struct.Memory* %loadMem_405d16, %struct.Memory** %MEMORY
  %loadMem_405d19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 33
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3811 to i64*
  %3812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3813 = getelementptr inbounds %struct.GPR, %struct.GPR* %3812, i32 0, i32 5
  %3814 = getelementptr inbounds %struct.Reg, %struct.Reg* %3813, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %3814 to i64*
  %3815 = load i64, i64* %RCX.i67
  %3816 = load i64, i64* %PC.i66
  %3817 = add i64 %3816, 4
  store i64 %3817, i64* %PC.i66
  %3818 = add i64 1, %3815
  store i64 %3818, i64* %RCX.i67, align 8
  %3819 = icmp ult i64 %3818, %3815
  %3820 = icmp ult i64 %3818, 1
  %3821 = or i1 %3819, %3820
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3822, i8* %3823, align 1
  %3824 = trunc i64 %3818 to i32
  %3825 = and i32 %3824, 255
  %3826 = call i32 @llvm.ctpop.i32(i32 %3825)
  %3827 = trunc i32 %3826 to i8
  %3828 = and i8 %3827, 1
  %3829 = xor i8 %3828, 1
  %3830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3829, i8* %3830, align 1
  %3831 = xor i64 1, %3815
  %3832 = xor i64 %3831, %3818
  %3833 = lshr i64 %3832, 4
  %3834 = trunc i64 %3833 to i8
  %3835 = and i8 %3834, 1
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3835, i8* %3836, align 1
  %3837 = icmp eq i64 %3818, 0
  %3838 = zext i1 %3837 to i8
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3838, i8* %3839, align 1
  %3840 = lshr i64 %3818, 63
  %3841 = trunc i64 %3840 to i8
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3841, i8* %3842, align 1
  %3843 = lshr i64 %3815, 63
  %3844 = xor i64 %3840, %3843
  %3845 = add i64 %3844, %3840
  %3846 = icmp eq i64 %3845, 2
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3847, i8* %3848, align 1
  store %struct.Memory* %loadMem_405d19, %struct.Memory** %MEMORY
  %loadMem_405d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3850 = getelementptr inbounds %struct.GPR, %struct.GPR* %3849, i32 0, i32 33
  %3851 = getelementptr inbounds %struct.Reg, %struct.Reg* %3850, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3851 to i64*
  %3852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3853 = getelementptr inbounds %struct.GPR, %struct.GPR* %3852, i32 0, i32 1
  %3854 = getelementptr inbounds %struct.Reg, %struct.Reg* %3853, i32 0, i32 0
  %RAX.i64 = bitcast %union.anon* %3854 to i64*
  %3855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3856 = getelementptr inbounds %struct.GPR, %struct.GPR* %3855, i32 0, i32 5
  %3857 = getelementptr inbounds %struct.Reg, %struct.Reg* %3856, i32 0, i32 0
  %RCX.i65 = bitcast %union.anon* %3857 to i64*
  %3858 = load i64, i64* %RAX.i64
  %3859 = load i64, i64* %RCX.i65
  %3860 = load i64, i64* %PC.i63
  %3861 = add i64 %3860, 3
  store i64 %3861, i64* %PC.i63
  %3862 = inttoptr i64 %3858 to i64*
  store i64 %3859, i64* %3862
  store %struct.Memory* %loadMem_405d1d, %struct.Memory** %MEMORY
  %loadMem_405d20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3864 = getelementptr inbounds %struct.GPR, %struct.GPR* %3863, i32 0, i32 33
  %3865 = getelementptr inbounds %struct.Reg, %struct.Reg* %3864, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3865 to i64*
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3867 = getelementptr inbounds %struct.GPR, %struct.GPR* %3866, i32 0, i32 1
  %3868 = getelementptr inbounds %struct.Reg, %struct.Reg* %3867, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %3868 to i64*
  %3869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3870 = getelementptr inbounds %struct.GPR, %struct.GPR* %3869, i32 0, i32 15
  %3871 = getelementptr inbounds %struct.Reg, %struct.Reg* %3870, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3871 to i64*
  %3872 = load i64, i64* %RBP.i62
  %3873 = sub i64 %3872, 8
  %3874 = load i64, i64* %PC.i60
  %3875 = add i64 %3874, 4
  store i64 %3875, i64* %PC.i60
  %3876 = inttoptr i64 %3873 to i64*
  %3877 = load i64, i64* %3876
  store i64 %3877, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_405d20, %struct.Memory** %MEMORY
  %loadMem_405d24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 33
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 1
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %RAX.i59
  %3885 = load i64, i64* %PC.i58
  %3886 = add i64 %3885, 3
  store i64 %3886, i64* %PC.i58
  %3887 = inttoptr i64 %3884 to i64*
  %3888 = load i64, i64* %3887
  store i64 %3888, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_405d24, %struct.Memory** %MEMORY
  %loadMem_405d27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 1
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 7
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RAX.i56
  %3899 = add i64 %3898, 8
  %3900 = load i64, i64* %PC.i55
  %3901 = add i64 %3900, 3
  store i64 %3901, i64* %PC.i55
  %3902 = inttoptr i64 %3899 to i32*
  %3903 = load i32, i32* %3902
  %3904 = zext i32 %3903 to i64
  store i64 %3904, i64* %RDX.i57, align 8
  store %struct.Memory* %loadMem_405d27, %struct.Memory** %MEMORY
  %loadMem_405d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 7
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %RDX.i54 = bitcast %union.anon* %3910 to i64*
  %3911 = load i64, i64* %RDX.i54
  %3912 = load i64, i64* %PC.i53
  %3913 = add i64 %3912, 3
  store i64 %3913, i64* %PC.i53
  %3914 = trunc i64 %3911 to i32
  %3915 = add i32 -1, %3914
  %3916 = zext i32 %3915 to i64
  store i64 %3916, i64* %RDX.i54, align 8
  %3917 = icmp ult i32 %3915, %3914
  %3918 = icmp ult i32 %3915, -1
  %3919 = or i1 %3917, %3918
  %3920 = zext i1 %3919 to i8
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3920, i8* %3921, align 1
  %3922 = and i32 %3915, 255
  %3923 = call i32 @llvm.ctpop.i32(i32 %3922)
  %3924 = trunc i32 %3923 to i8
  %3925 = and i8 %3924, 1
  %3926 = xor i8 %3925, 1
  %3927 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3926, i8* %3927, align 1
  %3928 = xor i64 -1, %3911
  %3929 = trunc i64 %3928 to i32
  %3930 = xor i32 %3929, %3915
  %3931 = lshr i32 %3930, 4
  %3932 = trunc i32 %3931 to i8
  %3933 = and i8 %3932, 1
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3933, i8* %3934, align 1
  %3935 = icmp eq i32 %3915, 0
  %3936 = zext i1 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i32 %3915, 31
  %3939 = trunc i32 %3938 to i8
  %3940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3939, i8* %3940, align 1
  %3941 = lshr i32 %3914, 31
  %3942 = xor i32 %3938, %3941
  %3943 = xor i32 %3938, 1
  %3944 = add i32 %3942, %3943
  %3945 = icmp eq i32 %3944, 2
  %3946 = zext i1 %3945 to i8
  %3947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3946, i8* %3947, align 1
  store %struct.Memory* %loadMem_405d2a, %struct.Memory** %MEMORY
  %loadMem_405d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 7
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %EDX.i51 = bitcast %union.anon* %3953 to i32*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 1
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RAX.i52 = bitcast %union.anon* %3956 to i64*
  %3957 = load i64, i64* %RAX.i52
  %3958 = add i64 %3957, 8
  %3959 = load i32, i32* %EDX.i51
  %3960 = zext i32 %3959 to i64
  %3961 = load i64, i64* %PC.i50
  %3962 = add i64 %3961, 3
  store i64 %3962, i64* %PC.i50
  %3963 = inttoptr i64 %3958 to i32*
  store i32 %3959, i32* %3963
  store %struct.Memory* %loadMem_405d2d, %struct.Memory** %MEMORY
  %loadMem_405d30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 33
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %3966 to i64*
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3968 = getelementptr inbounds %struct.GPR, %struct.GPR* %3967, i32 0, i32 1
  %3969 = getelementptr inbounds %struct.Reg, %struct.Reg* %3968, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %3969 to i64*
  %3970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3971 = getelementptr inbounds %struct.GPR, %struct.GPR* %3970, i32 0, i32 15
  %3972 = getelementptr inbounds %struct.Reg, %struct.Reg* %3971, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %3972 to i64*
  %3973 = load i64, i64* %RBP.i49
  %3974 = sub i64 %3973, 8
  %3975 = load i64, i64* %PC.i47
  %3976 = add i64 %3975, 4
  store i64 %3976, i64* %PC.i47
  %3977 = inttoptr i64 %3974 to i64*
  %3978 = load i64, i64* %3977
  store i64 %3978, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_405d30, %struct.Memory** %MEMORY
  %loadMem_405d34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3980 = getelementptr inbounds %struct.GPR, %struct.GPR* %3979, i32 0, i32 33
  %3981 = getelementptr inbounds %struct.Reg, %struct.Reg* %3980, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %3981 to i64*
  %3982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3983 = getelementptr inbounds %struct.GPR, %struct.GPR* %3982, i32 0, i32 1
  %3984 = getelementptr inbounds %struct.Reg, %struct.Reg* %3983, i32 0, i32 0
  %RAX.i46 = bitcast %union.anon* %3984 to i64*
  %3985 = load i64, i64* %RAX.i46
  %3986 = load i64, i64* %PC.i45
  %3987 = add i64 %3986, 3
  store i64 %3987, i64* %PC.i45
  %3988 = inttoptr i64 %3985 to i64*
  %3989 = load i64, i64* %3988
  store i64 %3989, i64* %RAX.i46, align 8
  store %struct.Memory* %loadMem_405d34, %struct.Memory** %MEMORY
  %loadMem_405d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3991 = getelementptr inbounds %struct.GPR, %struct.GPR* %3990, i32 0, i32 33
  %3992 = getelementptr inbounds %struct.Reg, %struct.Reg* %3991, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %3992 to i64*
  %3993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3994 = getelementptr inbounds %struct.GPR, %struct.GPR* %3993, i32 0, i32 1
  %3995 = getelementptr inbounds %struct.Reg, %struct.Reg* %3994, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %3995 to i64*
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 7
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %RDX.i44 = bitcast %union.anon* %3998 to i64*
  %3999 = load i64, i64* %RAX.i43
  %4000 = add i64 %3999, 12
  %4001 = load i64, i64* %PC.i42
  %4002 = add i64 %4001, 3
  store i64 %4002, i64* %PC.i42
  %4003 = inttoptr i64 %4000 to i32*
  %4004 = load i32, i32* %4003
  %4005 = zext i32 %4004 to i64
  store i64 %4005, i64* %RDX.i44, align 8
  store %struct.Memory* %loadMem_405d37, %struct.Memory** %MEMORY
  %loadMem_405d3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4007 = getelementptr inbounds %struct.GPR, %struct.GPR* %4006, i32 0, i32 33
  %4008 = getelementptr inbounds %struct.Reg, %struct.Reg* %4007, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %4008 to i64*
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4010 = getelementptr inbounds %struct.GPR, %struct.GPR* %4009, i32 0, i32 7
  %4011 = getelementptr inbounds %struct.Reg, %struct.Reg* %4010, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %4011 to i64*
  %4012 = load i64, i64* %RDX.i
  %4013 = load i64, i64* %PC.i41
  %4014 = add i64 %4013, 3
  store i64 %4014, i64* %PC.i41
  %4015 = trunc i64 %4012 to i32
  %4016 = add i32 1, %4015
  %4017 = zext i32 %4016 to i64
  store i64 %4017, i64* %RDX.i, align 8
  %4018 = icmp ult i32 %4016, %4015
  %4019 = icmp ult i32 %4016, 1
  %4020 = or i1 %4018, %4019
  %4021 = zext i1 %4020 to i8
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4021, i8* %4022, align 1
  %4023 = and i32 %4016, 255
  %4024 = call i32 @llvm.ctpop.i32(i32 %4023)
  %4025 = trunc i32 %4024 to i8
  %4026 = and i8 %4025, 1
  %4027 = xor i8 %4026, 1
  %4028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4027, i8* %4028, align 1
  %4029 = xor i64 1, %4012
  %4030 = trunc i64 %4029 to i32
  %4031 = xor i32 %4030, %4016
  %4032 = lshr i32 %4031, 4
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4034, i8* %4035, align 1
  %4036 = icmp eq i32 %4016, 0
  %4037 = zext i1 %4036 to i8
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4037, i8* %4038, align 1
  %4039 = lshr i32 %4016, 31
  %4040 = trunc i32 %4039 to i8
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4040, i8* %4041, align 1
  %4042 = lshr i32 %4015, 31
  %4043 = xor i32 %4039, %4042
  %4044 = add i32 %4043, %4039
  %4045 = icmp eq i32 %4044, 2
  %4046 = zext i1 %4045 to i8
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4046, i8* %4047, align 1
  store %struct.Memory* %loadMem_405d3a, %struct.Memory** %MEMORY
  %loadMem_405d3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4049 = getelementptr inbounds %struct.GPR, %struct.GPR* %4048, i32 0, i32 33
  %4050 = getelementptr inbounds %struct.Reg, %struct.Reg* %4049, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4050 to i64*
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4052 = getelementptr inbounds %struct.GPR, %struct.GPR* %4051, i32 0, i32 7
  %4053 = getelementptr inbounds %struct.Reg, %struct.Reg* %4052, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %4053 to i32*
  %4054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4055 = getelementptr inbounds %struct.GPR, %struct.GPR* %4054, i32 0, i32 1
  %4056 = getelementptr inbounds %struct.Reg, %struct.Reg* %4055, i32 0, i32 0
  %RAX.i40 = bitcast %union.anon* %4056 to i64*
  %4057 = load i64, i64* %RAX.i40
  %4058 = add i64 %4057, 12
  %4059 = load i32, i32* %EDX.i
  %4060 = zext i32 %4059 to i64
  %4061 = load i64, i64* %PC.i39
  %4062 = add i64 %4061, 3
  store i64 %4062, i64* %PC.i39
  %4063 = inttoptr i64 %4058 to i32*
  store i32 %4059, i32* %4063
  store %struct.Memory* %loadMem_405d3d, %struct.Memory** %MEMORY
  %loadMem_405d40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4065 = getelementptr inbounds %struct.GPR, %struct.GPR* %4064, i32 0, i32 33
  %4066 = getelementptr inbounds %struct.Reg, %struct.Reg* %4065, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4066 to i64*
  %4067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4068 = getelementptr inbounds %struct.GPR, %struct.GPR* %4067, i32 0, i32 1
  %4069 = getelementptr inbounds %struct.Reg, %struct.Reg* %4068, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %4069 to i64*
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 15
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %RBP.i38 = bitcast %union.anon* %4072 to i64*
  %4073 = load i64, i64* %RBP.i38
  %4074 = sub i64 %4073, 8
  %4075 = load i64, i64* %PC.i36
  %4076 = add i64 %4075, 4
  store i64 %4076, i64* %PC.i36
  %4077 = inttoptr i64 %4074 to i64*
  %4078 = load i64, i64* %4077
  store i64 %4078, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_405d40, %struct.Memory** %MEMORY
  %loadMem_405d44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4080 = getelementptr inbounds %struct.GPR, %struct.GPR* %4079, i32 0, i32 33
  %4081 = getelementptr inbounds %struct.Reg, %struct.Reg* %4080, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4081 to i64*
  %4082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4083 = getelementptr inbounds %struct.GPR, %struct.GPR* %4082, i32 0, i32 1
  %4084 = getelementptr inbounds %struct.Reg, %struct.Reg* %4083, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %4084 to i64*
  %4085 = load i64, i64* %RAX.i35
  %4086 = load i64, i64* %PC.i34
  %4087 = add i64 %4086, 3
  store i64 %4087, i64* %PC.i34
  %4088 = inttoptr i64 %4085 to i64*
  %4089 = load i64, i64* %4088
  store i64 %4089, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_405d44, %struct.Memory** %MEMORY
  %loadMem_405d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4091 = getelementptr inbounds %struct.GPR, %struct.GPR* %4090, i32 0, i32 33
  %4092 = getelementptr inbounds %struct.Reg, %struct.Reg* %4091, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %4092 to i64*
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 1
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %RAX.i33 = bitcast %union.anon* %4095 to i64*
  %4096 = load i64, i64* %RAX.i33
  %4097 = add i64 %4096, 12
  %4098 = load i64, i64* %PC.i32
  %4099 = add i64 %4098, 4
  store i64 %4099, i64* %PC.i32
  %4100 = inttoptr i64 %4097 to i32*
  %4101 = load i32, i32* %4100
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4102, align 1
  %4103 = and i32 %4101, 255
  %4104 = call i32 @llvm.ctpop.i32(i32 %4103)
  %4105 = trunc i32 %4104 to i8
  %4106 = and i8 %4105, 1
  %4107 = xor i8 %4106, 1
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4107, i8* %4108, align 1
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4109, align 1
  %4110 = icmp eq i32 %4101, 0
  %4111 = zext i1 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4111, i8* %4112, align 1
  %4113 = lshr i32 %4101, 31
  %4114 = trunc i32 %4113 to i8
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4114, i8* %4115, align 1
  %4116 = lshr i32 %4101, 31
  %4117 = xor i32 %4113, %4116
  %4118 = add i32 %4117, %4116
  %4119 = icmp eq i32 %4118, 2
  %4120 = zext i1 %4119 to i8
  %4121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4120, i8* %4121, align 1
  store %struct.Memory* %loadMem_405d47, %struct.Memory** %MEMORY
  %loadMem_405d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4123 = getelementptr inbounds %struct.GPR, %struct.GPR* %4122, i32 0, i32 33
  %4124 = getelementptr inbounds %struct.Reg, %struct.Reg* %4123, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4124 to i64*
  %4125 = load i64, i64* %PC.i31
  %4126 = add i64 %4125, 22
  %4127 = load i64, i64* %PC.i31
  %4128 = add i64 %4127, 6
  %4129 = load i64, i64* %PC.i31
  %4130 = add i64 %4129, 6
  store i64 %4130, i64* %PC.i31
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4132 = load i8, i8* %4131, align 1
  %4133 = icmp eq i8 %4132, 0
  %4134 = zext i1 %4133 to i8
  store i8 %4134, i8* %BRANCH_TAKEN, align 1
  %4135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4136 = select i1 %4133, i64 %4126, i64 %4128
  store i64 %4136, i64* %4135, align 8
  store %struct.Memory* %loadMem_405d4b, %struct.Memory** %MEMORY
  %loadBr_405d4b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_405d4b = icmp eq i8 %loadBr_405d4b, 1
  br i1 %cmpBr_405d4b, label %block_.L_405d61, label %block_405d51

block_405d51:                                     ; preds = %block_.L_405d0f
  %loadMem_405d51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 33
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %4139 to i64*
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 1
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 15
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %4145 to i64*
  %4146 = load i64, i64* %RBP.i30
  %4147 = sub i64 %4146, 8
  %4148 = load i64, i64* %PC.i28
  %4149 = add i64 %4148, 4
  store i64 %4149, i64* %PC.i28
  %4150 = inttoptr i64 %4147 to i64*
  %4151 = load i64, i64* %4150
  store i64 %4151, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_405d51, %struct.Memory** %MEMORY
  %loadMem_405d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4153 = getelementptr inbounds %struct.GPR, %struct.GPR* %4152, i32 0, i32 33
  %4154 = getelementptr inbounds %struct.Reg, %struct.Reg* %4153, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4154 to i64*
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 1
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %4157 to i64*
  %4158 = load i64, i64* %RAX.i27
  %4159 = load i64, i64* %PC.i26
  %4160 = add i64 %4159, 3
  store i64 %4160, i64* %PC.i26
  %4161 = inttoptr i64 %4158 to i64*
  %4162 = load i64, i64* %4161
  store i64 %4162, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_405d55, %struct.Memory** %MEMORY
  %loadMem_405d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4164 = getelementptr inbounds %struct.GPR, %struct.GPR* %4163, i32 0, i32 33
  %4165 = getelementptr inbounds %struct.Reg, %struct.Reg* %4164, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4165 to i64*
  %4166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4167 = getelementptr inbounds %struct.GPR, %struct.GPR* %4166, i32 0, i32 1
  %4168 = getelementptr inbounds %struct.Reg, %struct.Reg* %4167, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %4168 to i64*
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4170 = getelementptr inbounds %struct.GPR, %struct.GPR* %4169, i32 0, i32 5
  %4171 = getelementptr inbounds %struct.Reg, %struct.Reg* %4170, i32 0, i32 0
  %RCX.i25 = bitcast %union.anon* %4171 to i64*
  %4172 = load i64, i64* %RAX.i24
  %4173 = add i64 %4172, 16
  %4174 = load i64, i64* %PC.i23
  %4175 = add i64 %4174, 3
  store i64 %4175, i64* %PC.i23
  %4176 = inttoptr i64 %4173 to i32*
  %4177 = load i32, i32* %4176
  %4178 = zext i32 %4177 to i64
  store i64 %4178, i64* %RCX.i25, align 8
  store %struct.Memory* %loadMem_405d58, %struct.Memory** %MEMORY
  %loadMem_405d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 33
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4181 to i64*
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4183 = getelementptr inbounds %struct.GPR, %struct.GPR* %4182, i32 0, i32 5
  %4184 = getelementptr inbounds %struct.Reg, %struct.Reg* %4183, i32 0, i32 0
  %RCX.i22 = bitcast %union.anon* %4184 to i64*
  %4185 = load i64, i64* %RCX.i22
  %4186 = load i64, i64* %PC.i21
  %4187 = add i64 %4186, 3
  store i64 %4187, i64* %PC.i21
  %4188 = trunc i64 %4185 to i32
  %4189 = add i32 1, %4188
  %4190 = zext i32 %4189 to i64
  store i64 %4190, i64* %RCX.i22, align 8
  %4191 = icmp ult i32 %4189, %4188
  %4192 = icmp ult i32 %4189, 1
  %4193 = or i1 %4191, %4192
  %4194 = zext i1 %4193 to i8
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4194, i8* %4195, align 1
  %4196 = and i32 %4189, 255
  %4197 = call i32 @llvm.ctpop.i32(i32 %4196)
  %4198 = trunc i32 %4197 to i8
  %4199 = and i8 %4198, 1
  %4200 = xor i8 %4199, 1
  %4201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4200, i8* %4201, align 1
  %4202 = xor i64 1, %4185
  %4203 = trunc i64 %4202 to i32
  %4204 = xor i32 %4203, %4189
  %4205 = lshr i32 %4204, 4
  %4206 = trunc i32 %4205 to i8
  %4207 = and i8 %4206, 1
  %4208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4207, i8* %4208, align 1
  %4209 = icmp eq i32 %4189, 0
  %4210 = zext i1 %4209 to i8
  %4211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4210, i8* %4211, align 1
  %4212 = lshr i32 %4189, 31
  %4213 = trunc i32 %4212 to i8
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4213, i8* %4214, align 1
  %4215 = lshr i32 %4188, 31
  %4216 = xor i32 %4212, %4215
  %4217 = add i32 %4216, %4212
  %4218 = icmp eq i32 %4217, 2
  %4219 = zext i1 %4218 to i8
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4219, i8* %4220, align 1
  store %struct.Memory* %loadMem_405d5b, %struct.Memory** %MEMORY
  %loadMem_405d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4222 = getelementptr inbounds %struct.GPR, %struct.GPR* %4221, i32 0, i32 33
  %4223 = getelementptr inbounds %struct.Reg, %struct.Reg* %4222, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %4223 to i64*
  %4224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4225 = getelementptr inbounds %struct.GPR, %struct.GPR* %4224, i32 0, i32 5
  %4226 = getelementptr inbounds %struct.Reg, %struct.Reg* %4225, i32 0, i32 0
  %ECX.i19 = bitcast %union.anon* %4226 to i32*
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 1
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %RAX.i20
  %4231 = add i64 %4230, 16
  %4232 = load i32, i32* %ECX.i19
  %4233 = zext i32 %4232 to i64
  %4234 = load i64, i64* %PC.i18
  %4235 = add i64 %4234, 3
  store i64 %4235, i64* %PC.i18
  %4236 = inttoptr i64 %4231 to i32*
  store i32 %4232, i32* %4236
  store %struct.Memory* %loadMem_405d5e, %struct.Memory** %MEMORY
  br label %block_.L_405d61

block_.L_405d61:                                  ; preds = %block_405d51, %block_.L_405d0f
  %loadMem_405d61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 33
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %4239 to i64*
  %4240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4241 = getelementptr inbounds %struct.GPR, %struct.GPR* %4240, i32 0, i32 1
  %4242 = getelementptr inbounds %struct.Reg, %struct.Reg* %4241, i32 0, i32 0
  %RAX.i16 = bitcast %union.anon* %4242 to i64*
  %4243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4244 = getelementptr inbounds %struct.GPR, %struct.GPR* %4243, i32 0, i32 15
  %4245 = getelementptr inbounds %struct.Reg, %struct.Reg* %4244, i32 0, i32 0
  %RBP.i17 = bitcast %union.anon* %4245 to i64*
  %4246 = load i64, i64* %RBP.i17
  %4247 = sub i64 %4246, 8
  %4248 = load i64, i64* %PC.i15
  %4249 = add i64 %4248, 4
  store i64 %4249, i64* %PC.i15
  %4250 = inttoptr i64 %4247 to i64*
  %4251 = load i64, i64* %4250
  store i64 %4251, i64* %RAX.i16, align 8
  store %struct.Memory* %loadMem_405d61, %struct.Memory** %MEMORY
  %loadMem_405d65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 1
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 5
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RCX.i14 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %RAX.i13
  %4262 = add i64 %4261, 16
  %4263 = load i64, i64* %PC.i12
  %4264 = add i64 %4263, 3
  store i64 %4264, i64* %PC.i12
  %4265 = inttoptr i64 %4262 to i32*
  %4266 = load i32, i32* %4265
  %4267 = zext i32 %4266 to i64
  store i64 %4267, i64* %RCX.i14, align 8
  store %struct.Memory* %loadMem_405d65, %struct.Memory** %MEMORY
  %loadMem_405d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4269 = getelementptr inbounds %struct.GPR, %struct.GPR* %4268, i32 0, i32 33
  %4270 = getelementptr inbounds %struct.Reg, %struct.Reg* %4269, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %4270 to i64*
  %4271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4272 = getelementptr inbounds %struct.GPR, %struct.GPR* %4271, i32 0, i32 5
  %4273 = getelementptr inbounds %struct.Reg, %struct.Reg* %4272, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4273 to i64*
  %4274 = load i64, i64* %RCX.i
  %4275 = load i64, i64* %PC.i11
  %4276 = add i64 %4275, 3
  store i64 %4276, i64* %PC.i11
  %4277 = trunc i64 %4274 to i32
  %4278 = add i32 -1, %4277
  %4279 = zext i32 %4278 to i64
  store i64 %4279, i64* %RCX.i, align 8
  %4280 = icmp ult i32 %4278, %4277
  %4281 = icmp ult i32 %4278, -1
  %4282 = or i1 %4280, %4281
  %4283 = zext i1 %4282 to i8
  %4284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4283, i8* %4284, align 1
  %4285 = and i32 %4278, 255
  %4286 = call i32 @llvm.ctpop.i32(i32 %4285)
  %4287 = trunc i32 %4286 to i8
  %4288 = and i8 %4287, 1
  %4289 = xor i8 %4288, 1
  %4290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4289, i8* %4290, align 1
  %4291 = xor i64 -1, %4274
  %4292 = trunc i64 %4291 to i32
  %4293 = xor i32 %4292, %4278
  %4294 = lshr i32 %4293, 4
  %4295 = trunc i32 %4294 to i8
  %4296 = and i8 %4295, 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4296, i8* %4297, align 1
  %4298 = icmp eq i32 %4278, 0
  %4299 = zext i1 %4298 to i8
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4299, i8* %4300, align 1
  %4301 = lshr i32 %4278, 31
  %4302 = trunc i32 %4301 to i8
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4302, i8* %4303, align 1
  %4304 = lshr i32 %4277, 31
  %4305 = xor i32 %4301, %4304
  %4306 = xor i32 %4301, 1
  %4307 = add i32 %4305, %4306
  %4308 = icmp eq i32 %4307, 2
  %4309 = zext i1 %4308 to i8
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4309, i8* %4310, align 1
  store %struct.Memory* %loadMem_405d68, %struct.Memory** %MEMORY
  %loadMem_405d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 33
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 5
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %4316 to i32*
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 1
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %4319 to i64*
  %4320 = load i64, i64* %RAX.i10
  %4321 = add i64 %4320, 16
  %4322 = load i32, i32* %ECX.i
  %4323 = zext i32 %4322 to i64
  %4324 = load i64, i64* %PC.i9
  %4325 = add i64 %4324, 3
  store i64 %4325, i64* %PC.i9
  %4326 = inttoptr i64 %4321 to i32*
  store i32 %4322, i32* %4326
  store %struct.Memory* %loadMem_405d6b, %struct.Memory** %MEMORY
  %loadMem_405d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 33
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %4329 to i64*
  %4330 = load i64, i64* %PC.i8
  %4331 = add i64 %4330, -454
  %4332 = load i64, i64* %PC.i8
  %4333 = add i64 %4332, 5
  store i64 %4333, i64* %PC.i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4331, i64* %4334, align 8
  store %struct.Memory* %loadMem_405d6e, %struct.Memory** %MEMORY
  br label %block_.L_405ba8

block_.L_405d73:                                  ; preds = %block_405be5, %block_405bd2, %block_405bbc
  %loadMem_405d73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4336 = getelementptr inbounds %struct.GPR, %struct.GPR* %4335, i32 0, i32 33
  %4337 = getelementptr inbounds %struct.Reg, %struct.Reg* %4336, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %4337 to i64*
  %4338 = load i64, i64* %PC.i7
  %4339 = add i64 %4338, 5
  %4340 = load i64, i64* %PC.i7
  %4341 = add i64 %4340, 5
  store i64 %4341, i64* %PC.i7
  %4342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4339, i64* %4342, align 8
  store %struct.Memory* %loadMem_405d73, %struct.Memory** %MEMORY
  br label %block_.L_405d78

block_.L_405d78:                                  ; preds = %block_.L_405d73, %block_.L_405b9e
  %loadMem_405d78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 1
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 15
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %4351 to i64*
  %4352 = load i64, i64* %RBP.i6
  %4353 = sub i64 %4352, 9
  %4354 = load i64, i64* %PC.i5
  %4355 = add i64 %4354, 4
  store i64 %4355, i64* %PC.i5
  %4356 = inttoptr i64 %4353 to i8*
  %4357 = load i8, i8* %4356
  %4358 = zext i8 %4357 to i64
  store i64 %4358, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_405d78, %struct.Memory** %MEMORY
  %loadMem_405d7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 13
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RSP.i
  %4366 = load i64, i64* %PC.i4
  %4367 = add i64 %4366, 4
  store i64 %4367, i64* %PC.i4
  %4368 = add i64 32, %4365
  store i64 %4368, i64* %RSP.i, align 8
  %4369 = icmp ult i64 %4368, %4365
  %4370 = icmp ult i64 %4368, 32
  %4371 = or i1 %4369, %4370
  %4372 = zext i1 %4371 to i8
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4372, i8* %4373, align 1
  %4374 = trunc i64 %4368 to i32
  %4375 = and i32 %4374, 255
  %4376 = call i32 @llvm.ctpop.i32(i32 %4375)
  %4377 = trunc i32 %4376 to i8
  %4378 = and i8 %4377, 1
  %4379 = xor i8 %4378, 1
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4379, i8* %4380, align 1
  %4381 = xor i64 32, %4365
  %4382 = xor i64 %4381, %4368
  %4383 = lshr i64 %4382, 4
  %4384 = trunc i64 %4383 to i8
  %4385 = and i8 %4384, 1
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4385, i8* %4386, align 1
  %4387 = icmp eq i64 %4368, 0
  %4388 = zext i1 %4387 to i8
  %4389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4388, i8* %4389, align 1
  %4390 = lshr i64 %4368, 63
  %4391 = trunc i64 %4390 to i8
  %4392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4391, i8* %4392, align 1
  %4393 = lshr i64 %4365, 63
  %4394 = xor i64 %4390, %4393
  %4395 = add i64 %4394, %4390
  %4396 = icmp eq i64 %4395, 2
  %4397 = zext i1 %4396 to i8
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4397, i8* %4398, align 1
  store %struct.Memory* %loadMem_405d7c, %struct.Memory** %MEMORY
  %loadMem_405d80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4400 = getelementptr inbounds %struct.GPR, %struct.GPR* %4399, i32 0, i32 33
  %4401 = getelementptr inbounds %struct.Reg, %struct.Reg* %4400, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %4401 to i64*
  %4402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4403 = getelementptr inbounds %struct.GPR, %struct.GPR* %4402, i32 0, i32 15
  %4404 = getelementptr inbounds %struct.Reg, %struct.Reg* %4403, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %4404 to i64*
  %4405 = load i64, i64* %PC.i2
  %4406 = add i64 %4405, 1
  store i64 %4406, i64* %PC.i2
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4408 = load i64, i64* %4407, align 8
  %4409 = add i64 %4408, 8
  %4410 = inttoptr i64 %4408 to i64*
  %4411 = load i64, i64* %4410
  store i64 %4411, i64* %RBP.i3, align 8
  store i64 %4409, i64* %4407, align 8
  store %struct.Memory* %loadMem_405d80, %struct.Memory** %MEMORY
  %loadMem_405d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4413 = getelementptr inbounds %struct.GPR, %struct.GPR* %4412, i32 0, i32 33
  %4414 = getelementptr inbounds %struct.Reg, %struct.Reg* %4413, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %4414 to i64*
  %4415 = load i64, i64* %PC.i1
  %4416 = add i64 %4415, 1
  store i64 %4416, i64* %PC.i1
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4419 = load i64, i64* %4418, align 8
  %4420 = inttoptr i64 %4419 to i64*
  %4421 = load i64, i64* %4420
  store i64 %4421, i64* %4417, align 8
  %4422 = add i64 %4419, 8
  store i64 %4422, i64* %4418, align 8
  store %struct.Memory* %loadMem_405d81, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_405d81
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

define %struct.Memory* @routine_movb__0x0__MINUS0x9__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 9
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 0, i8* %13
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

define %struct.Memory* @routine_cmpl__0x2__0x8__rdi_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 2
  %16 = icmp ult i32 %14, 2
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
  %25 = xor i32 %14, 2
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

define %struct.Memory* @routine_jne_.L_405ba3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4059f3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x6c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 108
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x70__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 112
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

define %struct.Memory* @routine_jl_.L_405a0c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_405b9e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_405a22(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1__MINUS0x9__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 9
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i8*
  store i8 1, i8* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl___rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i8*
  %16 = load i8, i8* %15
  %17 = zext i8 %16 to i64
  store i64 %17, i64* %RCX, align 8
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

define %struct.Memory* @routine_cmpl_0x5c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = add i64 %14, 92
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

define %struct.Memory* @routine_je_.L_405ae0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
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

define %struct.Memory* @routine_jne_.L_405ae0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x5c__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movb__dl__MINUS0x11__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x288__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shll__0x8___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = shl i64 %12, 7
  %14 = trunc i64 %13 to i32
  %15 = icmp slt i32 %14, 0
  %16 = shl i32 %14, 1
  %17 = zext i32 %16 to i64
  store i64 %17, i64* %RCX, align 8
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %19 = zext i1 %15 to i8
  store i8 %19, i8* %18, align 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %20, align 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %23 = icmp eq i32 %16, 0
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %22, align 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %26 = lshr i32 %16, 31
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %25, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x288__rax____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 648
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shrl__0x18___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 %9, 4294967295
  %13 = lshr i64 %12, 23
  %14 = trunc i64 %13 to i8
  %15 = and i8 %14, 1
  %16 = lshr i64 %13, 1
  %17 = trunc i64 %16 to i32
  %18 = and i32 %17, 2147483647
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RSI, align 8
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

define %struct.Memory* @routine_movzbl_MINUS0x11__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 17
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_xorl__edi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSI
  %13 = load i32, i32* %EDI
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

define %struct.Memory* @routine_movl__esi___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RSI, align 8
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

define %struct.Memory* @routine_xorl_0x618170___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = mul i64 %13, 4
  %15 = add i64 %14, 6390128
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = xor i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RCX, align 8
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %23, align 1
  %24 = and i32 %21, 255
  %25 = call i32 @llvm.ctpop.i32(i32 %24)
  %26 = trunc i32 %25 to i8
  %27 = and i8 %26, 1
  %28 = xor i8 %27, 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %28, i8* %29, align 1
  %30 = icmp eq i32 %21, 0
  %31 = zext i1 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %21, 31
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %34, i8* %35, align 1
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %36, align 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %37, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x288__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 648
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl_0x5c__r8____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R8D to i64*
  %13 = load i32, i32* %ECX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1__0x80__rax__r8_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %R8
  %14 = add i64 %12, 128
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 9
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x11__rbp____dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 17
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x40__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_0x6c__r8____r8(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 108
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %R8, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl____rax__r8_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 17
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %R8 = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %R8
  %18 = add i64 %17, %16
  %19 = load i8, i8* %DL
  %20 = zext i8 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i8*
  store i8 %19, i8* %23
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

define %struct.Memory* @routine_movl__ecx__0x6c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 108
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x5c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_405b47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_0x5c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 92
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

define %struct.Memory* @routine_jne_.L_405b01(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xff__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 255
  %16 = icmp ult i32 %14, 255
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
  %25 = xor i32 %14, 255
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

define %struct.Memory* @routine_jne_.L_405b35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x100__0x5c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 92
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 256
  %16 = icmp ult i32 %14, 256
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
  %25 = xor i32 %14, 256
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

define %struct.Memory* @routine_jae_.L_405b1b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.add_pair_to_block(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__0x5c__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 92
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1__0x60__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 96
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_405b42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x60__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x60__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 96
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq___rax____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to i64*
  %16 = load i64, i64* %15
  store i64 %16, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x1___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1, %9
  store i64 %12, i64* %RCX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1
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
  %25 = xor i64 1, %9
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

define %struct.Memory* @routine_movq__rcx____rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x8__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 8
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc__rax____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12
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

define %struct.Memory* @routine_movl__edx__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 12
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
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

define %struct.Memory* @routine_jne_.L_405b99(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x10__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 16
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_405d78(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_405ba8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jl_.L_405bc1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_405d73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_405bd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x10__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 16
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

define %struct.Memory* @routine_jne_.L_405bea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_405ca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_405ca8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__dl__MINUS0x19__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 25
  %15 = load i8, i8* %DL
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 3
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %14 to i8*
  store i8 %15, i8* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_MINUS0x19__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 25
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x19__rbp____dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 15
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RBP = bitcast %union.anon* %12 to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 25
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i8*
  %18 = load i8, i8* %17
  store i8 %18, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_405d0f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_405cc9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_405cfd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jae_.L_405ce3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %13 = load i8, i8* %12, align 1
  %14 = icmp eq i8 %13, 0
  %15 = zext i1 %14 to i8
  store i8 %15, i8* %BRANCH_TAKEN, align 1
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %17 = select i1 %14, i64 %7, i64 %9
  store i64 %17, i64* %16, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_405d0a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_405d61(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movzbl_MINUS0x9__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 9
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
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
