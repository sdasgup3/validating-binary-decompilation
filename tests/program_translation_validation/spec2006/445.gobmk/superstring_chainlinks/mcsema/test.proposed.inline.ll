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

declare %struct.Memory* @sub_47af00.do_find_superstring(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @superstring_chainlinks(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_47c240 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_47c240, %struct.Memory** %MEMORY
  %loadMem_47c241 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i73 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i73
  %27 = load i64, i64* %PC.i72
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i72
  store i64 %26, i64* %RBP.i74, align 8
  store %struct.Memory* %loadMem_47c241, %struct.Memory** %MEMORY
  %loadMem_47c244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i71 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i71
  %36 = load i64, i64* %PC.i70
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i70
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i71, align 8
  %39 = icmp ult i64 %35, 96
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
  %49 = xor i64 96, %35
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
  store %struct.Memory* %loadMem_47c244, %struct.Memory** %MEMORY
  %loadMem_47c248 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %EAX.i68 = bitcast %union.anon* %72 to i32*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RAX.i69
  %77 = load i32, i32* %EAX.i68
  %78 = zext i32 %77 to i64
  %79 = load i64, i64* %PC.i67
  %80 = add i64 %79, 2
  store i64 %80, i64* %PC.i67
  %81 = xor i64 %78, %76
  %82 = trunc i64 %81 to i32
  %83 = and i64 %81, 4294967295
  store i64 %83, i64* %RAX.i69, align 8
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
  store %struct.Memory* %loadMem_47c248, %struct.Memory** %MEMORY
  %loadMem_47c24a = load %struct.Memory*, %struct.Memory** %MEMORY
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 33
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %101 to i64*
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %103 = getelementptr inbounds %struct.GPR, %struct.GPR* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.Reg, %struct.Reg* %103, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %104 to i32*
  %105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %106 = getelementptr inbounds %struct.GPR, %struct.GPR* %105, i32 0, i32 17
  %107 = getelementptr inbounds %struct.Reg, %struct.Reg* %106, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %107 to i32*
  %108 = bitcast i32* %R8D.i to i64*
  %109 = load i32, i32* %EAX.i66
  %110 = zext i32 %109 to i64
  %111 = load i64, i64* %PC.i65
  %112 = add i64 %111, 3
  store i64 %112, i64* %PC.i65
  %113 = and i64 %110, 4294967295
  store i64 %113, i64* %108, align 8
  store %struct.Memory* %loadMem_47c24a, %struct.Memory** %MEMORY
  %loadMem_47c24d = load %struct.Memory*, %struct.Memory** %MEMORY
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %115 = getelementptr inbounds %struct.GPR, %struct.GPR* %114, i32 0, i32 33
  %116 = getelementptr inbounds %struct.Reg, %struct.Reg* %115, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %116 to i64*
  %117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %118 = getelementptr inbounds %struct.GPR, %struct.GPR* %117, i32 0, i32 19
  %119 = getelementptr inbounds %struct.Reg, %struct.Reg* %118, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %119 to i32*
  %120 = bitcast i32* %R9D.i to i64*
  %121 = load i32, i32* %R9D.i
  %122 = zext i32 %121 to i64
  %123 = load i32, i32* %R9D.i
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* %PC.i64
  %126 = add i64 %125, 3
  store i64 %126, i64* %PC.i64
  %127 = xor i64 %124, %122
  %128 = trunc i64 %127 to i32
  %129 = and i64 %127, 4294967295
  store i64 %129, i64* %120, align 8
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %130, align 1
  %131 = and i32 %128, 255
  %132 = call i32 @llvm.ctpop.i32(i32 %131)
  %133 = trunc i32 %132 to i8
  %134 = and i8 %133, 1
  %135 = xor i8 %134, 1
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %135, i8* %136, align 1
  %137 = icmp eq i32 %128, 0
  %138 = zext i1 %137 to i8
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %138, i8* %139, align 1
  %140 = lshr i32 %128, 31
  %141 = trunc i32 %140 to i8
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %141, i8* %142, align 1
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %143, align 1
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %144, align 1
  store %struct.Memory* %loadMem_47c24d, %struct.Memory** %MEMORY
  %loadMem_47c250 = load %struct.Memory*, %struct.Memory** %MEMORY
  %145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %146 = getelementptr inbounds %struct.GPR, %struct.GPR* %145, i32 0, i32 33
  %147 = getelementptr inbounds %struct.Reg, %struct.Reg* %146, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %147 to i64*
  %148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %149 = getelementptr inbounds %struct.GPR, %struct.GPR* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.Reg, %struct.Reg* %149, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %150 to i64*
  %151 = load i64, i64* %PC.i63
  %152 = add i64 %151, 5
  store i64 %152, i64* %PC.i63
  store i64 2, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_47c250, %struct.Memory** %MEMORY
  %loadMem_47c255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 11
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i62
  %163 = sub i64 %162, 4
  %164 = load i32, i32* %EDI.i
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC.i61
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i61
  %168 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %168
  store %struct.Memory* %loadMem_47c255, %struct.Memory** %MEMORY
  %loadMem_47c258 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 9
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RSI.i59 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RBP.i60
  %179 = sub i64 %178, 16
  %180 = load i64, i64* %RSI.i59
  %181 = load i64, i64* %PC.i58
  %182 = add i64 %181, 4
  store i64 %182, i64* %PC.i58
  %183 = inttoptr i64 %179 to i64*
  store i64 %180, i64* %183
  store %struct.Memory* %loadMem_47c258, %struct.Memory** %MEMORY
  %loadMem_47c25c = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 7
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 15
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %192 to i64*
  %193 = load i64, i64* %RBP.i57
  %194 = sub i64 %193, 24
  %195 = load i64, i64* %RDX.i56
  %196 = load i64, i64* %PC.i55
  %197 = add i64 %196, 4
  store i64 %197, i64* %PC.i55
  %198 = inttoptr i64 %194 to i64*
  store i64 %195, i64* %198
  store %struct.Memory* %loadMem_47c25c, %struct.Memory** %MEMORY
  %loadMem_47c260 = load %struct.Memory*, %struct.Memory** %MEMORY
  %199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %200 = getelementptr inbounds %struct.GPR, %struct.GPR* %199, i32 0, i32 33
  %201 = getelementptr inbounds %struct.Reg, %struct.Reg* %200, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %201 to i64*
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 5
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %ECX.i53 = bitcast %union.anon* %204 to i32*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 15
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %207 to i64*
  %208 = load i64, i64* %RBP.i54
  %209 = sub i64 %208, 28
  %210 = load i32, i32* %ECX.i53
  %211 = zext i32 %210 to i64
  %212 = load i64, i64* %PC.i52
  %213 = add i64 %212, 3
  store i64 %213, i64* %PC.i52
  %214 = inttoptr i64 %209 to i32*
  store i32 %210, i32* %214
  store %struct.Memory* %loadMem_47c260, %struct.Memory** %MEMORY
  %loadMem_47c263 = load %struct.Memory*, %struct.Memory** %MEMORY
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %216 = getelementptr inbounds %struct.GPR, %struct.GPR* %215, i32 0, i32 33
  %217 = getelementptr inbounds %struct.Reg, %struct.Reg* %216, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %217 to i64*
  %218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %219 = getelementptr inbounds %struct.GPR, %struct.GPR* %218, i32 0, i32 11
  %220 = getelementptr inbounds %struct.Reg, %struct.Reg* %219, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %220 to i64*
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %222 = getelementptr inbounds %struct.GPR, %struct.GPR* %221, i32 0, i32 15
  %223 = getelementptr inbounds %struct.Reg, %struct.Reg* %222, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %223 to i64*
  %224 = load i64, i64* %RBP.i51
  %225 = sub i64 %224, 4
  %226 = load i64, i64* %PC.i50
  %227 = add i64 %226, 3
  store i64 %227, i64* %PC.i50
  %228 = inttoptr i64 %225 to i32*
  %229 = load i32, i32* %228
  %230 = zext i32 %229 to i64
  store i64 %230, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_47c263, %struct.Memory** %MEMORY
  %loadMem_47c266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RDX.i48 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 15
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %239 to i64*
  %240 = load i64, i64* %RBP.i49
  %241 = sub i64 %240, 16
  %242 = load i64, i64* %PC.i47
  %243 = add i64 %242, 4
  store i64 %243, i64* %PC.i47
  %244 = inttoptr i64 %241 to i64*
  %245 = load i64, i64* %244
  store i64 %245, i64* %RDX.i48, align 8
  store %struct.Memory* %loadMem_47c266, %struct.Memory** %MEMORY
  %loadMem_47c26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %247 = getelementptr inbounds %struct.GPR, %struct.GPR* %246, i32 0, i32 33
  %248 = getelementptr inbounds %struct.Reg, %struct.Reg* %247, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %248 to i64*
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 9
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %RSI.i45 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 15
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %254 to i64*
  %255 = load i64, i64* %RBP.i46
  %256 = sub i64 %255, 24
  %257 = load i64, i64* %PC.i44
  %258 = add i64 %257, 4
  store i64 %258, i64* %PC.i44
  %259 = inttoptr i64 %256 to i64*
  %260 = load i64, i64* %259
  store i64 %260, i64* %RSI.i45, align 8
  store %struct.Memory* %loadMem_47c26a, %struct.Memory** %MEMORY
  %loadMem_47c26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 33
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %263 to i64*
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %265 = getelementptr inbounds %struct.GPR, %struct.GPR* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.Reg, %struct.Reg* %265, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %266 to i64*
  %267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %268 = getelementptr inbounds %struct.GPR, %struct.GPR* %267, i32 0, i32 15
  %269 = getelementptr inbounds %struct.Reg, %struct.Reg* %268, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %269 to i64*
  %270 = load i64, i64* %RBP.i43
  %271 = sub i64 %270, 28
  %272 = load i64, i64* %PC.i41
  %273 = add i64 %272, 3
  store i64 %273, i64* %PC.i41
  %274 = inttoptr i64 %271 to i32*
  %275 = load i32, i32* %274
  %276 = zext i32 %275 to i64
  store i64 %276, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_47c26e, %struct.Memory** %MEMORY
  %loadMem_47c271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %278 = getelementptr inbounds %struct.GPR, %struct.GPR* %277, i32 0, i32 33
  %279 = getelementptr inbounds %struct.Reg, %struct.Reg* %278, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %279 to i64*
  %280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %281 = getelementptr inbounds %struct.GPR, %struct.GPR* %280, i32 0, i32 9
  %282 = getelementptr inbounds %struct.Reg, %struct.Reg* %281, i32 0, i32 0
  %RSI.i39 = bitcast %union.anon* %282 to i64*
  %283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %284 = getelementptr inbounds %struct.GPR, %struct.GPR* %283, i32 0, i32 15
  %285 = getelementptr inbounds %struct.Reg, %struct.Reg* %284, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %285 to i64*
  %286 = load i64, i64* %RBP.i40
  %287 = sub i64 %286, 40
  %288 = load i64, i64* %RSI.i39
  %289 = load i64, i64* %PC.i38
  %290 = add i64 %289, 4
  store i64 %290, i64* %PC.i38
  %291 = inttoptr i64 %287 to i64*
  store i64 %288, i64* %291
  store %struct.Memory* %loadMem_47c271, %struct.Memory** %MEMORY
  %loadMem_47c275 = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 9
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %297 to i64*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 17
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %R8.i37 = bitcast %union.anon* %300 to i64*
  %301 = load i64, i64* %R8.i37
  %302 = load i64, i64* %PC.i36
  %303 = add i64 %302, 3
  store i64 %303, i64* %PC.i36
  store i64 %301, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_47c275, %struct.Memory** %MEMORY
  %loadMem_47c278 = load %struct.Memory*, %struct.Memory** %MEMORY
  %304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %305 = getelementptr inbounds %struct.GPR, %struct.GPR* %304, i32 0, i32 33
  %306 = getelementptr inbounds %struct.Reg, %struct.Reg* %305, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %306 to i64*
  %307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %308 = getelementptr inbounds %struct.GPR, %struct.GPR* %307, i32 0, i32 7
  %309 = getelementptr inbounds %struct.Reg, %struct.Reg* %308, i32 0, i32 0
  %RDX.i34 = bitcast %union.anon* %309 to i64*
  %310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %311 = getelementptr inbounds %struct.GPR, %struct.GPR* %310, i32 0, i32 15
  %312 = getelementptr inbounds %struct.Reg, %struct.Reg* %311, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %312 to i64*
  %313 = load i64, i64* %RBP.i35
  %314 = sub i64 %313, 48
  %315 = load i64, i64* %RDX.i34
  %316 = load i64, i64* %PC.i33
  %317 = add i64 %316, 4
  store i64 %317, i64* %PC.i33
  %318 = inttoptr i64 %314 to i64*
  store i64 %315, i64* %318
  store %struct.Memory* %loadMem_47c278, %struct.Memory** %MEMORY
  %loadMem_47c27c = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %321 to i64*
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 7
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %324 to i64*
  %325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %326 = getelementptr inbounds %struct.GPR, %struct.GPR* %325, i32 0, i32 17
  %327 = getelementptr inbounds %struct.Reg, %struct.Reg* %326, i32 0, i32 0
  %R8.i32 = bitcast %union.anon* %327 to i64*
  %328 = load i64, i64* %R8.i32
  %329 = load i64, i64* %PC.i31
  %330 = add i64 %329, 3
  store i64 %330, i64* %PC.i31
  store i64 %328, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_47c27c, %struct.Memory** %MEMORY
  %loadMem_47c27f = load %struct.Memory*, %struct.Memory** %MEMORY
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %332 = getelementptr inbounds %struct.GPR, %struct.GPR* %331, i32 0, i32 33
  %333 = getelementptr inbounds %struct.Reg, %struct.Reg* %332, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %333 to i64*
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %335 = getelementptr inbounds %struct.GPR, %struct.GPR* %334, i32 0, i32 5
  %336 = getelementptr inbounds %struct.Reg, %struct.Reg* %335, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %336 to i32*
  %337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %338 = getelementptr inbounds %struct.GPR, %struct.GPR* %337, i32 0, i32 15
  %339 = getelementptr inbounds %struct.Reg, %struct.Reg* %338, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %339 to i64*
  %340 = load i64, i64* %RBP.i30
  %341 = sub i64 %340, 52
  %342 = load i32, i32* %ECX.i
  %343 = zext i32 %342 to i64
  %344 = load i64, i64* %PC.i29
  %345 = add i64 %344, 3
  store i64 %345, i64* %PC.i29
  %346 = inttoptr i64 %341 to i32*
  store i32 %342, i32* %346
  store %struct.Memory* %loadMem_47c27f, %struct.Memory** %MEMORY
  %loadMem_47c282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 5
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %352 to i64*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 17
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %R8.i = bitcast %union.anon* %355 to i64*
  %356 = load i64, i64* %R8.i
  %357 = load i64, i64* %PC.i28
  %358 = add i64 %357, 3
  store i64 %358, i64* %PC.i28
  store i64 %356, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_47c282, %struct.Memory** %MEMORY
  %loadMem_47c285 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 15
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 21
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %R10.i27 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %RBP.i26
  %369 = sub i64 %368, 48
  %370 = load i64, i64* %PC.i25
  %371 = add i64 %370, 4
  store i64 %371, i64* %PC.i25
  %372 = inttoptr i64 %369 to i64*
  %373 = load i64, i64* %372
  store i64 %373, i64* %R10.i27, align 8
  store %struct.Memory* %loadMem_47c285, %struct.Memory** %MEMORY
  %loadMem_47c289 = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 13
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RSP.i23 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 21
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %R10.i24 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RSP.i23
  %384 = load i64, i64* %R10.i24
  %385 = load i64, i64* %PC.i22
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC.i22
  %387 = inttoptr i64 %383 to i64*
  store i64 %384, i64* %387
  store %struct.Memory* %loadMem_47c289, %struct.Memory** %MEMORY
  %loadMem_47c28d = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 21
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %R10.i21 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i20
  %398 = sub i64 %397, 40
  %399 = load i64, i64* %PC.i19
  %400 = add i64 %399, 4
  store i64 %400, i64* %PC.i19
  %401 = inttoptr i64 %398 to i64*
  %402 = load i64, i64* %401
  store i64 %402, i64* %R10.i21, align 8
  store %struct.Memory* %loadMem_47c28d, %struct.Memory** %MEMORY
  %loadMem_47c291 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 13
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %RSP.i18 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 21
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %R10.i = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RSP.i18
  %413 = add i64 %412, 8
  %414 = load i64, i64* %R10.i
  %415 = load i64, i64* %PC.i17
  %416 = add i64 %415, 5
  store i64 %416, i64* %PC.i17
  %417 = inttoptr i64 %413 to i64*
  store i64 %414, i64* %417
  store %struct.Memory* %loadMem_47c291, %struct.Memory** %MEMORY
  %loadMem_47c296 = load %struct.Memory*, %struct.Memory** %MEMORY
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 33
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %420 to i64*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 23
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %R11D.i15 = bitcast %union.anon* %423 to i32*
  %424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %425 = getelementptr inbounds %struct.GPR, %struct.GPR* %424, i32 0, i32 15
  %426 = getelementptr inbounds %struct.Reg, %struct.Reg* %425, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %426 to i64*
  %427 = bitcast i32* %R11D.i15 to i64*
  %428 = load i64, i64* %RBP.i16
  %429 = sub i64 %428, 52
  %430 = load i64, i64* %PC.i14
  %431 = add i64 %430, 4
  store i64 %431, i64* %PC.i14
  %432 = inttoptr i64 %429 to i32*
  %433 = load i32, i32* %432
  %434 = zext i32 %433 to i64
  store i64 %434, i64* %427, align 8
  store %struct.Memory* %loadMem_47c296, %struct.Memory** %MEMORY
  %loadMem_47c29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 33
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %437 to i64*
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 23
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %R11D.i = bitcast %union.anon* %440 to i32*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 13
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RSP.i13 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RSP.i13
  %445 = add i64 %444, 16
  %446 = load i32, i32* %R11D.i
  %447 = zext i32 %446 to i64
  %448 = load i64, i64* %PC.i12
  %449 = add i64 %448, 5
  store i64 %449, i64* %PC.i12
  %450 = inttoptr i64 %445 to i32*
  store i32 %446, i32* %450
  store %struct.Memory* %loadMem_47c29a, %struct.Memory** %MEMORY
  %loadMem_47c29f = load %struct.Memory*, %struct.Memory** %MEMORY
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %452 = getelementptr inbounds %struct.GPR, %struct.GPR* %451, i32 0, i32 33
  %453 = getelementptr inbounds %struct.Reg, %struct.Reg* %452, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %453 to i64*
  %454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %455 = getelementptr inbounds %struct.GPR, %struct.GPR* %454, i32 0, i32 13
  %456 = getelementptr inbounds %struct.Reg, %struct.Reg* %455, i32 0, i32 0
  %RSP.i11 = bitcast %union.anon* %456 to i64*
  %457 = load i64, i64* %RSP.i11
  %458 = add i64 %457, 24
  %459 = load i64, i64* %PC.i10
  %460 = add i64 %459, 8
  store i64 %460, i64* %PC.i10
  %461 = inttoptr i64 %458 to i32*
  store i32 0, i32* %461
  store %struct.Memory* %loadMem_47c29f, %struct.Memory** %MEMORY
  %loadMem_47c2a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 33
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %464 to i64*
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 13
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %RSP.i9 = bitcast %union.anon* %467 to i64*
  %468 = load i64, i64* %RSP.i9
  %469 = add i64 %468, 32
  %470 = load i64, i64* %PC.i8
  %471 = add i64 %470, 8
  store i64 %471, i64* %PC.i8
  %472 = inttoptr i64 %469 to i32*
  store i32 2, i32* %472
  store %struct.Memory* %loadMem_47c2a7, %struct.Memory** %MEMORY
  %loadMem_47c2af = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %478 to i32*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %481 to i64*
  %482 = load i64, i64* %RBP.i7
  %483 = sub i64 %482, 56
  %484 = load i32, i32* %EAX.i
  %485 = zext i32 %484 to i64
  %486 = load i64, i64* %PC.i6
  %487 = add i64 %486, 3
  store i64 %487, i64* %PC.i6
  %488 = inttoptr i64 %483 to i32*
  store i32 %484, i32* %488
  store %struct.Memory* %loadMem_47c2af, %struct.Memory** %MEMORY
  %loadMem1_47c2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %490 = getelementptr inbounds %struct.GPR, %struct.GPR* %489, i32 0, i32 33
  %491 = getelementptr inbounds %struct.Reg, %struct.Reg* %490, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %491 to i64*
  %492 = load i64, i64* %PC.i5
  %493 = add i64 %492, -5042
  %494 = load i64, i64* %PC.i5
  %495 = add i64 %494, 5
  %496 = load i64, i64* %PC.i5
  %497 = add i64 %496, 5
  store i64 %497, i64* %PC.i5
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = add i64 %499, -8
  %501 = inttoptr i64 %500 to i64*
  store i64 %495, i64* %501
  store i64 %500, i64* %498, align 8
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %493, i64* %502, align 8
  store %struct.Memory* %loadMem1_47c2b2, %struct.Memory** %MEMORY
  %loadMem2_47c2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_47c2b2 = load i64, i64* %3
  %call2_47c2b2 = call %struct.Memory* @sub_47af00.do_find_superstring(%struct.State* %0, i64 %loadPC_47c2b2, %struct.Memory* %loadMem2_47c2b2)
  store %struct.Memory* %call2_47c2b2, %struct.Memory** %MEMORY
  %loadMem_47c2b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 33
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 13
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RSP.i
  %510 = load i64, i64* %PC.i4
  %511 = add i64 %510, 4
  store i64 %511, i64* %PC.i4
  %512 = add i64 96, %509
  store i64 %512, i64* %RSP.i, align 8
  %513 = icmp ult i64 %512, %509
  %514 = icmp ult i64 %512, 96
  %515 = or i1 %513, %514
  %516 = zext i1 %515 to i8
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %516, i8* %517, align 1
  %518 = trunc i64 %512 to i32
  %519 = and i32 %518, 255
  %520 = call i32 @llvm.ctpop.i32(i32 %519)
  %521 = trunc i32 %520 to i8
  %522 = and i8 %521, 1
  %523 = xor i8 %522, 1
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %523, i8* %524, align 1
  %525 = xor i64 96, %509
  %526 = xor i64 %525, %512
  %527 = lshr i64 %526, 4
  %528 = trunc i64 %527 to i8
  %529 = and i8 %528, 1
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %529, i8* %530, align 1
  %531 = icmp eq i64 %512, 0
  %532 = zext i1 %531 to i8
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %532, i8* %533, align 1
  %534 = lshr i64 %512, 63
  %535 = trunc i64 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %535, i8* %536, align 1
  %537 = lshr i64 %509, 63
  %538 = xor i64 %534, %537
  %539 = add i64 %538, %534
  %540 = icmp eq i64 %539, 2
  %541 = zext i1 %540 to i8
  %542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %541, i8* %542, align 1
  store %struct.Memory* %loadMem_47c2b7, %struct.Memory** %MEMORY
  %loadMem_47c2bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %544 = getelementptr inbounds %struct.GPR, %struct.GPR* %543, i32 0, i32 33
  %545 = getelementptr inbounds %struct.Reg, %struct.Reg* %544, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %545 to i64*
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 15
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %PC.i2
  %550 = add i64 %549, 1
  store i64 %550, i64* %PC.i2
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %552 = load i64, i64* %551, align 8
  %553 = add i64 %552, 8
  %554 = inttoptr i64 %552 to i64*
  %555 = load i64, i64* %554
  store i64 %555, i64* %RBP.i3, align 8
  store i64 %553, i64* %551, align 8
  store %struct.Memory* %loadMem_47c2bb, %struct.Memory** %MEMORY
  %loadMem_47c2bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %557 = getelementptr inbounds %struct.GPR, %struct.GPR* %556, i32 0, i32 33
  %558 = getelementptr inbounds %struct.Reg, %struct.Reg* %557, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %558 to i64*
  %559 = load i64, i64* %PC.i1
  %560 = add i64 %559, 1
  store i64 %560, i64* %PC.i1
  %561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %563 = load i64, i64* %562, align 8
  %564 = inttoptr i64 %563 to i64*
  %565 = load i64, i64* %564
  store i64 %565, i64* %561, align 8
  %566 = add i64 %563, 8
  store i64 %566, i64* %562, align 8
  store %struct.Memory* %loadMem_47c2bc, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_47c2bc
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

define %struct.Memory* @routine_subq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 96
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 96
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
  %23 = xor i64 96, %9
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

define %struct.Memory* @routine_xorl__r9d___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 19
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %R9D = bitcast %union.anon* %8 to i32*
  %9 = bitcast i32* %R9D to i64*
  %10 = load i32, i32* %R9D
  %11 = zext i32 %10 to i64
  %12 = load i32, i32* %R9D
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

define %struct.Memory* @routine_movq__rsi__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r8___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 17
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R8 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R8
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_movq__r8___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x30__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10____rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = load i64, i64* %R10
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %12 to i64*
  store i64 %13, i64* %16
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x28__rbp____r10(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R10, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__0x8__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 8
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x34__rbp____r11d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = bitcast i32* %R11D to i64*
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r11d__0x10__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 13
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RSP
  %13 = add i64 %12, 16
  %14 = load i32, i32* %R11D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 5
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__0x18__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2__0x20__rsp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 32
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 2, i32* %13
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

define %struct.Memory* @routine_callq_.do_find_superstring(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x60___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 96, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 96
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
  %25 = xor i64 96, %9
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
