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
%"class.std::bitset" = type { %struct.uint64v4_t }
%struct.uint64v4_t = type { [4 x i64] }

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

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

; Function Attrs: alwaysinline
define %struct.Memory* @mul4(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_400590 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_400590, %struct.Memory** %MEMORY
  %loadMem_400591 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i1003 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i1004 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i1005 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i1004
  %27 = load i64, i64* %PC.i1003
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i1003
  store i64 %26, i64* %RBP.i1005, align 8
  store %struct.Memory* %loadMem_400591, %struct.Memory** %MEMORY
  %loadMem_400594 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i1001 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i1002 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i1002
  %36 = load i64, i64* %PC.i1001
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i1001
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i1002, align 8
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
  store %struct.Memory* %loadMem_400594, %struct.Memory** %MEMORY
  %loadMem_400598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i999 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i1000 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i1000
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i
  %79 = load i64, i64* %PC.i999
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i999
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_400598, %struct.Memory** %MEMORY
  %loadMem_40059c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i997 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 9
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %87 to i64*
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %89 = getelementptr inbounds %struct.GPR, %struct.GPR* %88, i32 0, i32 15
  %90 = getelementptr inbounds %struct.Reg, %struct.Reg* %89, i32 0, i32 0
  %RBP.i998 = bitcast %union.anon* %90 to i64*
  %91 = load i64, i64* %RBP.i998
  %92 = sub i64 %91, 16
  %93 = load i64, i64* %RSI.i
  %94 = load i64, i64* %PC.i997
  %95 = add i64 %94, 4
  store i64 %95, i64* %PC.i997
  %96 = inttoptr i64 %92 to i64*
  store i64 %93, i64* %96
  store %struct.Memory* %loadMem_40059c, %struct.Memory** %MEMORY
  %loadMem_4005a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 33
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %PC.i994 = bitcast %union.anon* %99 to i64*
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %101 = getelementptr inbounds %struct.GPR, %struct.GPR* %100, i32 0, i32 7
  %102 = getelementptr inbounds %struct.Reg, %struct.Reg* %101, i32 0, i32 0
  %RDX.i995 = bitcast %union.anon* %102 to i64*
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %104 = getelementptr inbounds %struct.GPR, %struct.GPR* %103, i32 0, i32 15
  %105 = getelementptr inbounds %struct.Reg, %struct.Reg* %104, i32 0, i32 0
  %RBP.i996 = bitcast %union.anon* %105 to i64*
  %106 = load i64, i64* %RBP.i996
  %107 = sub i64 %106, 24
  %108 = load i64, i64* %RDX.i995
  %109 = load i64, i64* %PC.i994
  %110 = add i64 %109, 4
  store i64 %110, i64* %PC.i994
  %111 = inttoptr i64 %107 to i64*
  store i64 %108, i64* %111
  store %struct.Memory* %loadMem_4005a0, %struct.Memory** %MEMORY
  %loadMem_4005a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i991 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 7
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RDX.i992 = bitcast %union.anon* %117 to i64*
  %118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %119 = getelementptr inbounds %struct.GPR, %struct.GPR* %118, i32 0, i32 15
  %120 = getelementptr inbounds %struct.Reg, %struct.Reg* %119, i32 0, i32 0
  %RBP.i993 = bitcast %union.anon* %120 to i64*
  %121 = load i64, i64* %RBP.i993
  %122 = sub i64 %121, 16
  %123 = load i64, i64* %PC.i991
  %124 = add i64 %123, 4
  store i64 %124, i64* %PC.i991
  %125 = inttoptr i64 %122 to i64*
  %126 = load i64, i64* %125
  store i64 %126, i64* %RDX.i992, align 8
  store %struct.Memory* %loadMem_4005a4, %struct.Memory** %MEMORY
  %loadMem_4005a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i988 = bitcast %union.anon* %129 to i64*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 7
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RDX.i989 = bitcast %union.anon* %132 to i64*
  %133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %134 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %133, i64 0, i64 0
  %YMM0.i990 = bitcast %union.VectorReg* %134 to %"class.std::bitset"*
  %135 = bitcast %"class.std::bitset"* %YMM0.i990 to i8*
  %136 = load i64, i64* %RDX.i989
  %137 = load i64, i64* %PC.i988
  %138 = add i64 %137, 4
  store i64 %138, i64* %PC.i988
  %139 = inttoptr i64 %136 to double*
  %140 = load double, double* %139
  %141 = bitcast i8* %135 to double*
  store double %140, double* %141, align 1
  %142 = getelementptr inbounds i8, i8* %135, i64 8
  %143 = bitcast i8* %142 to double*
  store double 0.000000e+00, double* %143, align 1
  store %struct.Memory* %loadMem_4005a8, %struct.Memory** %MEMORY
  %loadMem_4005ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %145 = getelementptr inbounds %struct.GPR, %struct.GPR* %144, i32 0, i32 33
  %146 = getelementptr inbounds %struct.Reg, %struct.Reg* %145, i32 0, i32 0
  %PC.i985 = bitcast %union.anon* %146 to i64*
  %147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %148 = getelementptr inbounds %struct.GPR, %struct.GPR* %147, i32 0, i32 7
  %149 = getelementptr inbounds %struct.Reg, %struct.Reg* %148, i32 0, i32 0
  %RDX.i986 = bitcast %union.anon* %149 to i64*
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 15
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %RBP.i987 = bitcast %union.anon* %152 to i64*
  %153 = load i64, i64* %RBP.i987
  %154 = sub i64 %153, 24
  %155 = load i64, i64* %PC.i985
  %156 = add i64 %155, 4
  store i64 %156, i64* %PC.i985
  %157 = inttoptr i64 %154 to i64*
  %158 = load i64, i64* %157
  store i64 %158, i64* %RDX.i986, align 8
  store %struct.Memory* %loadMem_4005ac, %struct.Memory** %MEMORY
  %loadMem_4005b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 33
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %PC.i982 = bitcast %union.anon* %161 to i64*
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 7
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %RDX.i983 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %166 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %165, i64 0, i64 0
  %YMM0.i984 = bitcast %union.VectorReg* %166 to %"class.std::bitset"*
  %167 = bitcast %"class.std::bitset"* %YMM0.i984 to i8*
  %168 = bitcast %"class.std::bitset"* %YMM0.i984 to i8*
  %169 = load i64, i64* %RDX.i983
  %170 = load i64, i64* %PC.i982
  %171 = add i64 %170, 4
  store i64 %171, i64* %PC.i982
  %172 = bitcast i8* %168 to double*
  %173 = load double, double* %172, align 1
  %174 = getelementptr inbounds i8, i8* %168, i64 8
  %175 = bitcast i8* %174 to i64*
  %176 = load i64, i64* %175, align 1
  %177 = inttoptr i64 %169 to double*
  %178 = load double, double* %177
  %179 = fmul double %173, %178
  %180 = bitcast i8* %167 to double*
  store double %179, double* %180, align 1
  %181 = getelementptr inbounds i8, i8* %167, i64 8
  %182 = bitcast i8* %181 to i64*
  store i64 %176, i64* %182, align 1
  store %struct.Memory* %loadMem_4005b0, %struct.Memory** %MEMORY
  %loadMem_4005b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %184 = getelementptr inbounds %struct.GPR, %struct.GPR* %183, i32 0, i32 33
  %185 = getelementptr inbounds %struct.Reg, %struct.Reg* %184, i32 0, i32 0
  %PC.i979 = bitcast %union.anon* %185 to i64*
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %187 = getelementptr inbounds %struct.GPR, %struct.GPR* %186, i32 0, i32 7
  %188 = getelementptr inbounds %struct.Reg, %struct.Reg* %187, i32 0, i32 0
  %RDX.i980 = bitcast %union.anon* %188 to i64*
  %189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %190 = getelementptr inbounds %struct.GPR, %struct.GPR* %189, i32 0, i32 15
  %191 = getelementptr inbounds %struct.Reg, %struct.Reg* %190, i32 0, i32 0
  %RBP.i981 = bitcast %union.anon* %191 to i64*
  %192 = load i64, i64* %RBP.i981
  %193 = sub i64 %192, 16
  %194 = load i64, i64* %PC.i979
  %195 = add i64 %194, 4
  store i64 %195, i64* %PC.i979
  %196 = inttoptr i64 %193 to i64*
  %197 = load i64, i64* %196
  store i64 %197, i64* %RDX.i980, align 8
  store %struct.Memory* %loadMem_4005b4, %struct.Memory** %MEMORY
  %loadMem_4005b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 33
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %PC.i976 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 7
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RDX.i977 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %205 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %204, i64 0, i64 1
  %YMM1.i978 = bitcast %union.VectorReg* %205 to %"class.std::bitset"*
  %206 = bitcast %"class.std::bitset"* %YMM1.i978 to i8*
  %207 = load i64, i64* %RDX.i977
  %208 = add i64 %207, 8
  %209 = load i64, i64* %PC.i976
  %210 = add i64 %209, 5
  store i64 %210, i64* %PC.i976
  %211 = inttoptr i64 %208 to double*
  %212 = load double, double* %211
  %213 = bitcast i8* %206 to double*
  store double %212, double* %213, align 1
  %214 = getelementptr inbounds i8, i8* %206, i64 8
  %215 = bitcast i8* %214 to double*
  store double 0.000000e+00, double* %215, align 1
  store %struct.Memory* %loadMem_4005b8, %struct.Memory** %MEMORY
  %loadMem_4005bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %217 = getelementptr inbounds %struct.GPR, %struct.GPR* %216, i32 0, i32 33
  %218 = getelementptr inbounds %struct.Reg, %struct.Reg* %217, i32 0, i32 0
  %PC.i973 = bitcast %union.anon* %218 to i64*
  %219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %220 = getelementptr inbounds %struct.GPR, %struct.GPR* %219, i32 0, i32 7
  %221 = getelementptr inbounds %struct.Reg, %struct.Reg* %220, i32 0, i32 0
  %RDX.i974 = bitcast %union.anon* %221 to i64*
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 15
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %RBP.i975 = bitcast %union.anon* %224 to i64*
  %225 = load i64, i64* %RBP.i975
  %226 = sub i64 %225, 24
  %227 = load i64, i64* %PC.i973
  %228 = add i64 %227, 4
  store i64 %228, i64* %PC.i973
  %229 = inttoptr i64 %226 to i64*
  %230 = load i64, i64* %229
  store i64 %230, i64* %RDX.i974, align 8
  store %struct.Memory* %loadMem_4005bd, %struct.Memory** %MEMORY
  %loadMem_4005c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %232 = getelementptr inbounds %struct.GPR, %struct.GPR* %231, i32 0, i32 33
  %233 = getelementptr inbounds %struct.Reg, %struct.Reg* %232, i32 0, i32 0
  %PC.i970 = bitcast %union.anon* %233 to i64*
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 7
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %RDX.i971 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %238 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %237, i64 0, i64 1
  %YMM1.i972 = bitcast %union.VectorReg* %238 to %"class.std::bitset"*
  %239 = bitcast %"class.std::bitset"* %YMM1.i972 to i8*
  %240 = bitcast %"class.std::bitset"* %YMM1.i972 to i8*
  %241 = load i64, i64* %RDX.i971
  %242 = add i64 %241, 32
  %243 = load i64, i64* %PC.i970
  %244 = add i64 %243, 5
  store i64 %244, i64* %PC.i970
  %245 = bitcast i8* %240 to double*
  %246 = load double, double* %245, align 1
  %247 = getelementptr inbounds i8, i8* %240, i64 8
  %248 = bitcast i8* %247 to i64*
  %249 = load i64, i64* %248, align 1
  %250 = inttoptr i64 %242 to double*
  %251 = load double, double* %250
  %252 = fmul double %246, %251
  %253 = bitcast i8* %239 to double*
  store double %252, double* %253, align 1
  %254 = getelementptr inbounds i8, i8* %239, i64 8
  %255 = bitcast i8* %254 to i64*
  store i64 %249, i64* %255, align 1
  store %struct.Memory* %loadMem_4005c1, %struct.Memory** %MEMORY
  %loadMem_4005c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %257 = getelementptr inbounds %struct.GPR, %struct.GPR* %256, i32 0, i32 33
  %258 = getelementptr inbounds %struct.Reg, %struct.Reg* %257, i32 0, i32 0
  %PC.i967 = bitcast %union.anon* %258 to i64*
  %259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %260 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %259, i64 0, i64 0
  %YMM0.i968 = bitcast %union.VectorReg* %260 to %"class.std::bitset"*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %262 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %261, i64 0, i64 1
  %XMM1.i969 = bitcast %union.VectorReg* %262 to %union.vec128_t*
  %263 = bitcast %"class.std::bitset"* %YMM0.i968 to i8*
  %264 = bitcast %"class.std::bitset"* %YMM0.i968 to i8*
  %265 = bitcast %union.vec128_t* %XMM1.i969 to i8*
  %266 = load i64, i64* %PC.i967
  %267 = add i64 %266, 4
  store i64 %267, i64* %PC.i967
  %268 = bitcast i8* %264 to double*
  %269 = load double, double* %268, align 1
  %270 = getelementptr inbounds i8, i8* %264, i64 8
  %271 = bitcast i8* %270 to i64*
  %272 = load i64, i64* %271, align 1
  %273 = bitcast i8* %265 to double*
  %274 = load double, double* %273, align 1
  %275 = fadd double %269, %274
  %276 = bitcast i8* %263 to double*
  store double %275, double* %276, align 1
  %277 = getelementptr inbounds i8, i8* %263, i64 8
  %278 = bitcast i8* %277 to i64*
  store i64 %272, i64* %278, align 1
  store %struct.Memory* %loadMem_4005c6, %struct.Memory** %MEMORY
  %loadMem_4005ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i964 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 7
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RDX.i965 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RBP.i966 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %RBP.i966
  %289 = sub i64 %288, 16
  %290 = load i64, i64* %PC.i964
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC.i964
  %292 = inttoptr i64 %289 to i64*
  %293 = load i64, i64* %292
  store i64 %293, i64* %RDX.i965, align 8
  store %struct.Memory* %loadMem_4005ca, %struct.Memory** %MEMORY
  %loadMem_4005ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %295 = getelementptr inbounds %struct.GPR, %struct.GPR* %294, i32 0, i32 33
  %296 = getelementptr inbounds %struct.Reg, %struct.Reg* %295, i32 0, i32 0
  %PC.i961 = bitcast %union.anon* %296 to i64*
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 7
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %RDX.i962 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %301 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %300, i64 0, i64 1
  %YMM1.i963 = bitcast %union.VectorReg* %301 to %"class.std::bitset"*
  %302 = bitcast %"class.std::bitset"* %YMM1.i963 to i8*
  %303 = load i64, i64* %RDX.i962
  %304 = add i64 %303, 16
  %305 = load i64, i64* %PC.i961
  %306 = add i64 %305, 5
  store i64 %306, i64* %PC.i961
  %307 = inttoptr i64 %304 to double*
  %308 = load double, double* %307
  %309 = bitcast i8* %302 to double*
  store double %308, double* %309, align 1
  %310 = getelementptr inbounds i8, i8* %302, i64 8
  %311 = bitcast i8* %310 to double*
  store double 0.000000e+00, double* %311, align 1
  store %struct.Memory* %loadMem_4005ce, %struct.Memory** %MEMORY
  %loadMem_4005d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 33
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %PC.i958 = bitcast %union.anon* %314 to i64*
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %316 = getelementptr inbounds %struct.GPR, %struct.GPR* %315, i32 0, i32 7
  %317 = getelementptr inbounds %struct.Reg, %struct.Reg* %316, i32 0, i32 0
  %RDX.i959 = bitcast %union.anon* %317 to i64*
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 15
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %RBP.i960 = bitcast %union.anon* %320 to i64*
  %321 = load i64, i64* %RBP.i960
  %322 = sub i64 %321, 24
  %323 = load i64, i64* %PC.i958
  %324 = add i64 %323, 4
  store i64 %324, i64* %PC.i958
  %325 = inttoptr i64 %322 to i64*
  %326 = load i64, i64* %325
  store i64 %326, i64* %RDX.i959, align 8
  store %struct.Memory* %loadMem_4005d3, %struct.Memory** %MEMORY
  %loadMem_4005d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 33
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %PC.i955 = bitcast %union.anon* %329 to i64*
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 7
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %RDX.i956 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %334 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %333, i64 0, i64 1
  %YMM1.i957 = bitcast %union.VectorReg* %334 to %"class.std::bitset"*
  %335 = bitcast %"class.std::bitset"* %YMM1.i957 to i8*
  %336 = bitcast %"class.std::bitset"* %YMM1.i957 to i8*
  %337 = load i64, i64* %RDX.i956
  %338 = add i64 %337, 64
  %339 = load i64, i64* %PC.i955
  %340 = add i64 %339, 5
  store i64 %340, i64* %PC.i955
  %341 = bitcast i8* %336 to double*
  %342 = load double, double* %341, align 1
  %343 = getelementptr inbounds i8, i8* %336, i64 8
  %344 = bitcast i8* %343 to i64*
  %345 = load i64, i64* %344, align 1
  %346 = inttoptr i64 %338 to double*
  %347 = load double, double* %346
  %348 = fmul double %342, %347
  %349 = bitcast i8* %335 to double*
  store double %348, double* %349, align 1
  %350 = getelementptr inbounds i8, i8* %335, i64 8
  %351 = bitcast i8* %350 to i64*
  store i64 %345, i64* %351, align 1
  store %struct.Memory* %loadMem_4005d7, %struct.Memory** %MEMORY
  %loadMem_4005dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %353 = getelementptr inbounds %struct.GPR, %struct.GPR* %352, i32 0, i32 33
  %354 = getelementptr inbounds %struct.Reg, %struct.Reg* %353, i32 0, i32 0
  %PC.i952 = bitcast %union.anon* %354 to i64*
  %355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %356 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %355, i64 0, i64 0
  %YMM0.i953 = bitcast %union.VectorReg* %356 to %"class.std::bitset"*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %358 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %357, i64 0, i64 1
  %XMM1.i954 = bitcast %union.VectorReg* %358 to %union.vec128_t*
  %359 = bitcast %"class.std::bitset"* %YMM0.i953 to i8*
  %360 = bitcast %"class.std::bitset"* %YMM0.i953 to i8*
  %361 = bitcast %union.vec128_t* %XMM1.i954 to i8*
  %362 = load i64, i64* %PC.i952
  %363 = add i64 %362, 4
  store i64 %363, i64* %PC.i952
  %364 = bitcast i8* %360 to double*
  %365 = load double, double* %364, align 1
  %366 = getelementptr inbounds i8, i8* %360, i64 8
  %367 = bitcast i8* %366 to i64*
  %368 = load i64, i64* %367, align 1
  %369 = bitcast i8* %361 to double*
  %370 = load double, double* %369, align 1
  %371 = fadd double %365, %370
  %372 = bitcast i8* %359 to double*
  store double %371, double* %372, align 1
  %373 = getelementptr inbounds i8, i8* %359, i64 8
  %374 = bitcast i8* %373 to i64*
  store i64 %368, i64* %374, align 1
  store %struct.Memory* %loadMem_4005dc, %struct.Memory** %MEMORY
  %loadMem_4005e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i949 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 7
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RDX.i950 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i951 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i951
  %385 = sub i64 %384, 16
  %386 = load i64, i64* %PC.i949
  %387 = add i64 %386, 4
  store i64 %387, i64* %PC.i949
  %388 = inttoptr i64 %385 to i64*
  %389 = load i64, i64* %388
  store i64 %389, i64* %RDX.i950, align 8
  store %struct.Memory* %loadMem_4005e0, %struct.Memory** %MEMORY
  %loadMem_4005e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i946 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 7
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RDX.i947 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %397 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %396, i64 0, i64 1
  %YMM1.i948 = bitcast %union.VectorReg* %397 to %"class.std::bitset"*
  %398 = bitcast %"class.std::bitset"* %YMM1.i948 to i8*
  %399 = load i64, i64* %RDX.i947
  %400 = add i64 %399, 24
  %401 = load i64, i64* %PC.i946
  %402 = add i64 %401, 5
  store i64 %402, i64* %PC.i946
  %403 = inttoptr i64 %400 to double*
  %404 = load double, double* %403
  %405 = bitcast i8* %398 to double*
  store double %404, double* %405, align 1
  %406 = getelementptr inbounds i8, i8* %398, i64 8
  %407 = bitcast i8* %406 to double*
  store double 0.000000e+00, double* %407, align 1
  store %struct.Memory* %loadMem_4005e4, %struct.Memory** %MEMORY
  %loadMem_4005e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %409 = getelementptr inbounds %struct.GPR, %struct.GPR* %408, i32 0, i32 33
  %410 = getelementptr inbounds %struct.Reg, %struct.Reg* %409, i32 0, i32 0
  %PC.i943 = bitcast %union.anon* %410 to i64*
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 7
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %RDX.i944 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 15
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %RBP.i945 = bitcast %union.anon* %416 to i64*
  %417 = load i64, i64* %RBP.i945
  %418 = sub i64 %417, 24
  %419 = load i64, i64* %PC.i943
  %420 = add i64 %419, 4
  store i64 %420, i64* %PC.i943
  %421 = inttoptr i64 %418 to i64*
  %422 = load i64, i64* %421
  store i64 %422, i64* %RDX.i944, align 8
  store %struct.Memory* %loadMem_4005e9, %struct.Memory** %MEMORY
  %loadMem_4005ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 33
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %PC.i940 = bitcast %union.anon* %425 to i64*
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %427 = getelementptr inbounds %struct.GPR, %struct.GPR* %426, i32 0, i32 7
  %428 = getelementptr inbounds %struct.Reg, %struct.Reg* %427, i32 0, i32 0
  %RDX.i941 = bitcast %union.anon* %428 to i64*
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %430 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %429, i64 0, i64 1
  %YMM1.i942 = bitcast %union.VectorReg* %430 to %"class.std::bitset"*
  %431 = bitcast %"class.std::bitset"* %YMM1.i942 to i8*
  %432 = bitcast %"class.std::bitset"* %YMM1.i942 to i8*
  %433 = load i64, i64* %RDX.i941
  %434 = add i64 %433, 96
  %435 = load i64, i64* %PC.i940
  %436 = add i64 %435, 5
  store i64 %436, i64* %PC.i940
  %437 = bitcast i8* %432 to double*
  %438 = load double, double* %437, align 1
  %439 = getelementptr inbounds i8, i8* %432, i64 8
  %440 = bitcast i8* %439 to i64*
  %441 = load i64, i64* %440, align 1
  %442 = inttoptr i64 %434 to double*
  %443 = load double, double* %442
  %444 = fmul double %438, %443
  %445 = bitcast i8* %431 to double*
  store double %444, double* %445, align 1
  %446 = getelementptr inbounds i8, i8* %431, i64 8
  %447 = bitcast i8* %446 to i64*
  store i64 %441, i64* %447, align 1
  store %struct.Memory* %loadMem_4005ed, %struct.Memory** %MEMORY
  %loadMem_4005f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %449 = getelementptr inbounds %struct.GPR, %struct.GPR* %448, i32 0, i32 33
  %450 = getelementptr inbounds %struct.Reg, %struct.Reg* %449, i32 0, i32 0
  %PC.i937 = bitcast %union.anon* %450 to i64*
  %451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %452 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %451, i64 0, i64 0
  %YMM0.i938 = bitcast %union.VectorReg* %452 to %"class.std::bitset"*
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %453, i64 0, i64 1
  %XMM1.i939 = bitcast %union.VectorReg* %454 to %union.vec128_t*
  %455 = bitcast %"class.std::bitset"* %YMM0.i938 to i8*
  %456 = bitcast %"class.std::bitset"* %YMM0.i938 to i8*
  %457 = bitcast %union.vec128_t* %XMM1.i939 to i8*
  %458 = load i64, i64* %PC.i937
  %459 = add i64 %458, 4
  store i64 %459, i64* %PC.i937
  %460 = bitcast i8* %456 to double*
  %461 = load double, double* %460, align 1
  %462 = getelementptr inbounds i8, i8* %456, i64 8
  %463 = bitcast i8* %462 to i64*
  %464 = load i64, i64* %463, align 1
  %465 = bitcast i8* %457 to double*
  %466 = load double, double* %465, align 1
  %467 = fadd double %461, %466
  %468 = bitcast i8* %455 to double*
  store double %467, double* %468, align 1
  %469 = getelementptr inbounds i8, i8* %455, i64 8
  %470 = bitcast i8* %469 to i64*
  store i64 %464, i64* %470, align 1
  store %struct.Memory* %loadMem_4005f2, %struct.Memory** %MEMORY
  %loadMem_4005f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i934 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 15
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %RBP.i935 = bitcast %union.anon* %476 to i64*
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %478 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %477, i64 0, i64 0
  %XMM0.i936 = bitcast %union.VectorReg* %478 to %union.vec128_t*
  %479 = load i64, i64* %RBP.i935
  %480 = sub i64 %479, 160
  %481 = bitcast %union.vec128_t* %XMM0.i936 to i8*
  %482 = load i64, i64* %PC.i934
  %483 = add i64 %482, 8
  store i64 %483, i64* %PC.i934
  %484 = bitcast i8* %481 to double*
  %485 = load double, double* %484, align 1
  %486 = inttoptr i64 %480 to double*
  store double %485, double* %486
  store %struct.Memory* %loadMem_4005f6, %struct.Memory** %MEMORY
  %loadMem_4005fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %488 = getelementptr inbounds %struct.GPR, %struct.GPR* %487, i32 0, i32 33
  %489 = getelementptr inbounds %struct.Reg, %struct.Reg* %488, i32 0, i32 0
  %PC.i931 = bitcast %union.anon* %489 to i64*
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %491 = getelementptr inbounds %struct.GPR, %struct.GPR* %490, i32 0, i32 7
  %492 = getelementptr inbounds %struct.Reg, %struct.Reg* %491, i32 0, i32 0
  %RDX.i932 = bitcast %union.anon* %492 to i64*
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %494 = getelementptr inbounds %struct.GPR, %struct.GPR* %493, i32 0, i32 15
  %495 = getelementptr inbounds %struct.Reg, %struct.Reg* %494, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %495 to i64*
  %496 = load i64, i64* %RBP.i933
  %497 = sub i64 %496, 16
  %498 = load i64, i64* %PC.i931
  %499 = add i64 %498, 4
  store i64 %499, i64* %PC.i931
  %500 = inttoptr i64 %497 to i64*
  %501 = load i64, i64* %500
  store i64 %501, i64* %RDX.i932, align 8
  store %struct.Memory* %loadMem_4005fe, %struct.Memory** %MEMORY
  %loadMem_400602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %503 = getelementptr inbounds %struct.GPR, %struct.GPR* %502, i32 0, i32 33
  %504 = getelementptr inbounds %struct.Reg, %struct.Reg* %503, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %504 to i64*
  %505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %506 = getelementptr inbounds %struct.GPR, %struct.GPR* %505, i32 0, i32 7
  %507 = getelementptr inbounds %struct.Reg, %struct.Reg* %506, i32 0, i32 0
  %RDX.i929 = bitcast %union.anon* %507 to i64*
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %509 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %508, i64 0, i64 0
  %YMM0.i930 = bitcast %union.VectorReg* %509 to %"class.std::bitset"*
  %510 = bitcast %"class.std::bitset"* %YMM0.i930 to i8*
  %511 = load i64, i64* %RDX.i929
  %512 = load i64, i64* %PC.i928
  %513 = add i64 %512, 4
  store i64 %513, i64* %PC.i928
  %514 = inttoptr i64 %511 to double*
  %515 = load double, double* %514
  %516 = bitcast i8* %510 to double*
  store double %515, double* %516, align 1
  %517 = getelementptr inbounds i8, i8* %510, i64 8
  %518 = bitcast i8* %517 to double*
  store double 0.000000e+00, double* %518, align 1
  store %struct.Memory* %loadMem_400602, %struct.Memory** %MEMORY
  %loadMem_400606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 33
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 7
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RDX.i926 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 15
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RBP.i927 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %RBP.i927
  %529 = sub i64 %528, 24
  %530 = load i64, i64* %PC.i925
  %531 = add i64 %530, 4
  store i64 %531, i64* %PC.i925
  %532 = inttoptr i64 %529 to i64*
  %533 = load i64, i64* %532
  store i64 %533, i64* %RDX.i926, align 8
  store %struct.Memory* %loadMem_400606, %struct.Memory** %MEMORY
  %loadMem_40060a = load %struct.Memory*, %struct.Memory** %MEMORY
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 33
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %536 to i64*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 7
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RDX.i923 = bitcast %union.anon* %539 to i64*
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %541 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %540, i64 0, i64 0
  %YMM0.i924 = bitcast %union.VectorReg* %541 to %"class.std::bitset"*
  %542 = bitcast %"class.std::bitset"* %YMM0.i924 to i8*
  %543 = bitcast %"class.std::bitset"* %YMM0.i924 to i8*
  %544 = load i64, i64* %RDX.i923
  %545 = add i64 %544, 8
  %546 = load i64, i64* %PC.i922
  %547 = add i64 %546, 5
  store i64 %547, i64* %PC.i922
  %548 = bitcast i8* %543 to double*
  %549 = load double, double* %548, align 1
  %550 = getelementptr inbounds i8, i8* %543, i64 8
  %551 = bitcast i8* %550 to i64*
  %552 = load i64, i64* %551, align 1
  %553 = inttoptr i64 %545 to double*
  %554 = load double, double* %553
  %555 = fmul double %549, %554
  %556 = bitcast i8* %542 to double*
  store double %555, double* %556, align 1
  %557 = getelementptr inbounds i8, i8* %542, i64 8
  %558 = bitcast i8* %557 to i64*
  store i64 %552, i64* %558, align 1
  store %struct.Memory* %loadMem_40060a, %struct.Memory** %MEMORY
  %loadMem_40060f = load %struct.Memory*, %struct.Memory** %MEMORY
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %560 = getelementptr inbounds %struct.GPR, %struct.GPR* %559, i32 0, i32 33
  %561 = getelementptr inbounds %struct.Reg, %struct.Reg* %560, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %561 to i64*
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 7
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %RDX.i920 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 15
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %567 to i64*
  %568 = load i64, i64* %RBP.i921
  %569 = sub i64 %568, 16
  %570 = load i64, i64* %PC.i919
  %571 = add i64 %570, 4
  store i64 %571, i64* %PC.i919
  %572 = inttoptr i64 %569 to i64*
  %573 = load i64, i64* %572
  store i64 %573, i64* %RDX.i920, align 8
  store %struct.Memory* %loadMem_40060f, %struct.Memory** %MEMORY
  %loadMem_400613 = load %struct.Memory*, %struct.Memory** %MEMORY
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 33
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %576 to i64*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 7
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RDX.i917 = bitcast %union.anon* %579 to i64*
  %580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %581 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %580, i64 0, i64 1
  %YMM1.i918 = bitcast %union.VectorReg* %581 to %"class.std::bitset"*
  %582 = bitcast %"class.std::bitset"* %YMM1.i918 to i8*
  %583 = load i64, i64* %RDX.i917
  %584 = add i64 %583, 8
  %585 = load i64, i64* %PC.i916
  %586 = add i64 %585, 5
  store i64 %586, i64* %PC.i916
  %587 = inttoptr i64 %584 to double*
  %588 = load double, double* %587
  %589 = bitcast i8* %582 to double*
  store double %588, double* %589, align 1
  %590 = getelementptr inbounds i8, i8* %582, i64 8
  %591 = bitcast i8* %590 to double*
  store double 0.000000e+00, double* %591, align 1
  store %struct.Memory* %loadMem_400613, %struct.Memory** %MEMORY
  %loadMem_400618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %593 = getelementptr inbounds %struct.GPR, %struct.GPR* %592, i32 0, i32 33
  %594 = getelementptr inbounds %struct.Reg, %struct.Reg* %593, i32 0, i32 0
  %PC.i913 = bitcast %union.anon* %594 to i64*
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %596 = getelementptr inbounds %struct.GPR, %struct.GPR* %595, i32 0, i32 7
  %597 = getelementptr inbounds %struct.Reg, %struct.Reg* %596, i32 0, i32 0
  %RDX.i914 = bitcast %union.anon* %597 to i64*
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 15
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %RBP.i915 = bitcast %union.anon* %600 to i64*
  %601 = load i64, i64* %RBP.i915
  %602 = sub i64 %601, 24
  %603 = load i64, i64* %PC.i913
  %604 = add i64 %603, 4
  store i64 %604, i64* %PC.i913
  %605 = inttoptr i64 %602 to i64*
  %606 = load i64, i64* %605
  store i64 %606, i64* %RDX.i914, align 8
  store %struct.Memory* %loadMem_400618, %struct.Memory** %MEMORY
  %loadMem_40061c = load %struct.Memory*, %struct.Memory** %MEMORY
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %608 = getelementptr inbounds %struct.GPR, %struct.GPR* %607, i32 0, i32 33
  %609 = getelementptr inbounds %struct.Reg, %struct.Reg* %608, i32 0, i32 0
  %PC.i910 = bitcast %union.anon* %609 to i64*
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %611 = getelementptr inbounds %struct.GPR, %struct.GPR* %610, i32 0, i32 7
  %612 = getelementptr inbounds %struct.Reg, %struct.Reg* %611, i32 0, i32 0
  %RDX.i911 = bitcast %union.anon* %612 to i64*
  %613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %613, i64 0, i64 1
  %YMM1.i912 = bitcast %union.VectorReg* %614 to %"class.std::bitset"*
  %615 = bitcast %"class.std::bitset"* %YMM1.i912 to i8*
  %616 = bitcast %"class.std::bitset"* %YMM1.i912 to i8*
  %617 = load i64, i64* %RDX.i911
  %618 = add i64 %617, 40
  %619 = load i64, i64* %PC.i910
  %620 = add i64 %619, 5
  store i64 %620, i64* %PC.i910
  %621 = bitcast i8* %616 to double*
  %622 = load double, double* %621, align 1
  %623 = getelementptr inbounds i8, i8* %616, i64 8
  %624 = bitcast i8* %623 to i64*
  %625 = load i64, i64* %624, align 1
  %626 = inttoptr i64 %618 to double*
  %627 = load double, double* %626
  %628 = fmul double %622, %627
  %629 = bitcast i8* %615 to double*
  store double %628, double* %629, align 1
  %630 = getelementptr inbounds i8, i8* %615, i64 8
  %631 = bitcast i8* %630 to i64*
  store i64 %625, i64* %631, align 1
  store %struct.Memory* %loadMem_40061c, %struct.Memory** %MEMORY
  %loadMem_400621 = load %struct.Memory*, %struct.Memory** %MEMORY
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 33
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %634 to i64*
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %636 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %635, i64 0, i64 0
  %YMM0.i908 = bitcast %union.VectorReg* %636 to %"class.std::bitset"*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %638 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %637, i64 0, i64 1
  %XMM1.i909 = bitcast %union.VectorReg* %638 to %union.vec128_t*
  %639 = bitcast %"class.std::bitset"* %YMM0.i908 to i8*
  %640 = bitcast %"class.std::bitset"* %YMM0.i908 to i8*
  %641 = bitcast %union.vec128_t* %XMM1.i909 to i8*
  %642 = load i64, i64* %PC.i907
  %643 = add i64 %642, 4
  store i64 %643, i64* %PC.i907
  %644 = bitcast i8* %640 to double*
  %645 = load double, double* %644, align 1
  %646 = getelementptr inbounds i8, i8* %640, i64 8
  %647 = bitcast i8* %646 to i64*
  %648 = load i64, i64* %647, align 1
  %649 = bitcast i8* %641 to double*
  %650 = load double, double* %649, align 1
  %651 = fadd double %645, %650
  %652 = bitcast i8* %639 to double*
  store double %651, double* %652, align 1
  %653 = getelementptr inbounds i8, i8* %639, i64 8
  %654 = bitcast i8* %653 to i64*
  store i64 %648, i64* %654, align 1
  store %struct.Memory* %loadMem_400621, %struct.Memory** %MEMORY
  %loadMem_400625 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 7
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RDX.i905 = bitcast %union.anon* %660 to i64*
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %662 = getelementptr inbounds %struct.GPR, %struct.GPR* %661, i32 0, i32 15
  %663 = getelementptr inbounds %struct.Reg, %struct.Reg* %662, i32 0, i32 0
  %RBP.i906 = bitcast %union.anon* %663 to i64*
  %664 = load i64, i64* %RBP.i906
  %665 = sub i64 %664, 16
  %666 = load i64, i64* %PC.i904
  %667 = add i64 %666, 4
  store i64 %667, i64* %PC.i904
  %668 = inttoptr i64 %665 to i64*
  %669 = load i64, i64* %668
  store i64 %669, i64* %RDX.i905, align 8
  store %struct.Memory* %loadMem_400625, %struct.Memory** %MEMORY
  %loadMem_400629 = load %struct.Memory*, %struct.Memory** %MEMORY
  %670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %671 = getelementptr inbounds %struct.GPR, %struct.GPR* %670, i32 0, i32 33
  %672 = getelementptr inbounds %struct.Reg, %struct.Reg* %671, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %672 to i64*
  %673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %674 = getelementptr inbounds %struct.GPR, %struct.GPR* %673, i32 0, i32 7
  %675 = getelementptr inbounds %struct.Reg, %struct.Reg* %674, i32 0, i32 0
  %RDX.i902 = bitcast %union.anon* %675 to i64*
  %676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %677 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %676, i64 0, i64 1
  %YMM1.i903 = bitcast %union.VectorReg* %677 to %"class.std::bitset"*
  %678 = bitcast %"class.std::bitset"* %YMM1.i903 to i8*
  %679 = load i64, i64* %RDX.i902
  %680 = add i64 %679, 16
  %681 = load i64, i64* %PC.i901
  %682 = add i64 %681, 5
  store i64 %682, i64* %PC.i901
  %683 = inttoptr i64 %680 to double*
  %684 = load double, double* %683
  %685 = bitcast i8* %678 to double*
  store double %684, double* %685, align 1
  %686 = getelementptr inbounds i8, i8* %678, i64 8
  %687 = bitcast i8* %686 to double*
  store double 0.000000e+00, double* %687, align 1
  store %struct.Memory* %loadMem_400629, %struct.Memory** %MEMORY
  %loadMem_40062e = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 7
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RDX.i899 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 15
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RBP.i900
  %698 = sub i64 %697, 24
  %699 = load i64, i64* %PC.i898
  %700 = add i64 %699, 4
  store i64 %700, i64* %PC.i898
  %701 = inttoptr i64 %698 to i64*
  %702 = load i64, i64* %701
  store i64 %702, i64* %RDX.i899, align 8
  store %struct.Memory* %loadMem_40062e, %struct.Memory** %MEMORY
  %loadMem_400632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 7
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RDX.i896 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %709, i64 0, i64 1
  %YMM1.i897 = bitcast %union.VectorReg* %710 to %"class.std::bitset"*
  %711 = bitcast %"class.std::bitset"* %YMM1.i897 to i8*
  %712 = bitcast %"class.std::bitset"* %YMM1.i897 to i8*
  %713 = load i64, i64* %RDX.i896
  %714 = add i64 %713, 72
  %715 = load i64, i64* %PC.i895
  %716 = add i64 %715, 5
  store i64 %716, i64* %PC.i895
  %717 = bitcast i8* %712 to double*
  %718 = load double, double* %717, align 1
  %719 = getelementptr inbounds i8, i8* %712, i64 8
  %720 = bitcast i8* %719 to i64*
  %721 = load i64, i64* %720, align 1
  %722 = inttoptr i64 %714 to double*
  %723 = load double, double* %722
  %724 = fmul double %718, %723
  %725 = bitcast i8* %711 to double*
  store double %724, double* %725, align 1
  %726 = getelementptr inbounds i8, i8* %711, i64 8
  %727 = bitcast i8* %726 to i64*
  store i64 %721, i64* %727, align 1
  store %struct.Memory* %loadMem_400632, %struct.Memory** %MEMORY
  %loadMem_400637 = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %730 to i64*
  %731 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %732 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %731, i64 0, i64 0
  %YMM0.i893 = bitcast %union.VectorReg* %732 to %"class.std::bitset"*
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %734 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %733, i64 0, i64 1
  %XMM1.i894 = bitcast %union.VectorReg* %734 to %union.vec128_t*
  %735 = bitcast %"class.std::bitset"* %YMM0.i893 to i8*
  %736 = bitcast %"class.std::bitset"* %YMM0.i893 to i8*
  %737 = bitcast %union.vec128_t* %XMM1.i894 to i8*
  %738 = load i64, i64* %PC.i892
  %739 = add i64 %738, 4
  store i64 %739, i64* %PC.i892
  %740 = bitcast i8* %736 to double*
  %741 = load double, double* %740, align 1
  %742 = getelementptr inbounds i8, i8* %736, i64 8
  %743 = bitcast i8* %742 to i64*
  %744 = load i64, i64* %743, align 1
  %745 = bitcast i8* %737 to double*
  %746 = load double, double* %745, align 1
  %747 = fadd double %741, %746
  %748 = bitcast i8* %735 to double*
  store double %747, double* %748, align 1
  %749 = getelementptr inbounds i8, i8* %735, i64 8
  %750 = bitcast i8* %749 to i64*
  store i64 %744, i64* %750, align 1
  store %struct.Memory* %loadMem_400637, %struct.Memory** %MEMORY
  %loadMem_40063b = load %struct.Memory*, %struct.Memory** %MEMORY
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %752 = getelementptr inbounds %struct.GPR, %struct.GPR* %751, i32 0, i32 33
  %753 = getelementptr inbounds %struct.Reg, %struct.Reg* %752, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %753 to i64*
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 7
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %RDX.i890 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 15
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %RBP.i891 = bitcast %union.anon* %759 to i64*
  %760 = load i64, i64* %RBP.i891
  %761 = sub i64 %760, 16
  %762 = load i64, i64* %PC.i889
  %763 = add i64 %762, 4
  store i64 %763, i64* %PC.i889
  %764 = inttoptr i64 %761 to i64*
  %765 = load i64, i64* %764
  store i64 %765, i64* %RDX.i890, align 8
  store %struct.Memory* %loadMem_40063b, %struct.Memory** %MEMORY
  %loadMem_40063f = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 7
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %RDX.i887 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %773 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %772, i64 0, i64 1
  %YMM1.i888 = bitcast %union.VectorReg* %773 to %"class.std::bitset"*
  %774 = bitcast %"class.std::bitset"* %YMM1.i888 to i8*
  %775 = load i64, i64* %RDX.i887
  %776 = add i64 %775, 24
  %777 = load i64, i64* %PC.i886
  %778 = add i64 %777, 5
  store i64 %778, i64* %PC.i886
  %779 = inttoptr i64 %776 to double*
  %780 = load double, double* %779
  %781 = bitcast i8* %774 to double*
  store double %780, double* %781, align 1
  %782 = getelementptr inbounds i8, i8* %774, i64 8
  %783 = bitcast i8* %782 to double*
  store double 0.000000e+00, double* %783, align 1
  store %struct.Memory* %loadMem_40063f, %struct.Memory** %MEMORY
  %loadMem_400644 = load %struct.Memory*, %struct.Memory** %MEMORY
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 33
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 7
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RDX.i884 = bitcast %union.anon* %789 to i64*
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 15
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %792 to i64*
  %793 = load i64, i64* %RBP.i885
  %794 = sub i64 %793, 24
  %795 = load i64, i64* %PC.i883
  %796 = add i64 %795, 4
  store i64 %796, i64* %PC.i883
  %797 = inttoptr i64 %794 to i64*
  %798 = load i64, i64* %797
  store i64 %798, i64* %RDX.i884, align 8
  store %struct.Memory* %loadMem_400644, %struct.Memory** %MEMORY
  %loadMem_400648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 7
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RDX.i881 = bitcast %union.anon* %804 to i64*
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %806 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %805, i64 0, i64 1
  %YMM1.i882 = bitcast %union.VectorReg* %806 to %"class.std::bitset"*
  %807 = bitcast %"class.std::bitset"* %YMM1.i882 to i8*
  %808 = bitcast %"class.std::bitset"* %YMM1.i882 to i8*
  %809 = load i64, i64* %RDX.i881
  %810 = add i64 %809, 104
  %811 = load i64, i64* %PC.i880
  %812 = add i64 %811, 5
  store i64 %812, i64* %PC.i880
  %813 = bitcast i8* %808 to double*
  %814 = load double, double* %813, align 1
  %815 = getelementptr inbounds i8, i8* %808, i64 8
  %816 = bitcast i8* %815 to i64*
  %817 = load i64, i64* %816, align 1
  %818 = inttoptr i64 %810 to double*
  %819 = load double, double* %818
  %820 = fmul double %814, %819
  %821 = bitcast i8* %807 to double*
  store double %820, double* %821, align 1
  %822 = getelementptr inbounds i8, i8* %807, i64 8
  %823 = bitcast i8* %822 to i64*
  store i64 %817, i64* %823, align 1
  store %struct.Memory* %loadMem_400648, %struct.Memory** %MEMORY
  %loadMem_40064d = load %struct.Memory*, %struct.Memory** %MEMORY
  %824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %825 = getelementptr inbounds %struct.GPR, %struct.GPR* %824, i32 0, i32 33
  %826 = getelementptr inbounds %struct.Reg, %struct.Reg* %825, i32 0, i32 0
  %PC.i877 = bitcast %union.anon* %826 to i64*
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %828 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %827, i64 0, i64 0
  %YMM0.i878 = bitcast %union.VectorReg* %828 to %"class.std::bitset"*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %830 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %829, i64 0, i64 1
  %XMM1.i879 = bitcast %union.VectorReg* %830 to %union.vec128_t*
  %831 = bitcast %"class.std::bitset"* %YMM0.i878 to i8*
  %832 = bitcast %"class.std::bitset"* %YMM0.i878 to i8*
  %833 = bitcast %union.vec128_t* %XMM1.i879 to i8*
  %834 = load i64, i64* %PC.i877
  %835 = add i64 %834, 4
  store i64 %835, i64* %PC.i877
  %836 = bitcast i8* %832 to double*
  %837 = load double, double* %836, align 1
  %838 = getelementptr inbounds i8, i8* %832, i64 8
  %839 = bitcast i8* %838 to i64*
  %840 = load i64, i64* %839, align 1
  %841 = bitcast i8* %833 to double*
  %842 = load double, double* %841, align 1
  %843 = fadd double %837, %842
  %844 = bitcast i8* %831 to double*
  store double %843, double* %844, align 1
  %845 = getelementptr inbounds i8, i8* %831, i64 8
  %846 = bitcast i8* %845 to i64*
  store i64 %840, i64* %846, align 1
  store %struct.Memory* %loadMem_40064d, %struct.Memory** %MEMORY
  %loadMem_400651 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i874 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 15
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %853, i64 0, i64 0
  %XMM0.i876 = bitcast %union.VectorReg* %854 to %union.vec128_t*
  %855 = load i64, i64* %RBP.i875
  %856 = sub i64 %855, 152
  %857 = bitcast %union.vec128_t* %XMM0.i876 to i8*
  %858 = load i64, i64* %PC.i874
  %859 = add i64 %858, 8
  store i64 %859, i64* %PC.i874
  %860 = bitcast i8* %857 to double*
  %861 = load double, double* %860, align 1
  %862 = inttoptr i64 %856 to double*
  store double %861, double* %862
  store %struct.Memory* %loadMem_400651, %struct.Memory** %MEMORY
  %loadMem_400659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %864 = getelementptr inbounds %struct.GPR, %struct.GPR* %863, i32 0, i32 33
  %865 = getelementptr inbounds %struct.Reg, %struct.Reg* %864, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %865 to i64*
  %866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %867 = getelementptr inbounds %struct.GPR, %struct.GPR* %866, i32 0, i32 7
  %868 = getelementptr inbounds %struct.Reg, %struct.Reg* %867, i32 0, i32 0
  %RDX.i872 = bitcast %union.anon* %868 to i64*
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %870 = getelementptr inbounds %struct.GPR, %struct.GPR* %869, i32 0, i32 15
  %871 = getelementptr inbounds %struct.Reg, %struct.Reg* %870, i32 0, i32 0
  %RBP.i873 = bitcast %union.anon* %871 to i64*
  %872 = load i64, i64* %RBP.i873
  %873 = sub i64 %872, 16
  %874 = load i64, i64* %PC.i871
  %875 = add i64 %874, 4
  store i64 %875, i64* %PC.i871
  %876 = inttoptr i64 %873 to i64*
  %877 = load i64, i64* %876
  store i64 %877, i64* %RDX.i872, align 8
  store %struct.Memory* %loadMem_400659, %struct.Memory** %MEMORY
  %loadMem_40065d = load %struct.Memory*, %struct.Memory** %MEMORY
  %878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %879 = getelementptr inbounds %struct.GPR, %struct.GPR* %878, i32 0, i32 33
  %880 = getelementptr inbounds %struct.Reg, %struct.Reg* %879, i32 0, i32 0
  %PC.i868 = bitcast %union.anon* %880 to i64*
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 7
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %RDX.i869 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %885 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %884, i64 0, i64 0
  %YMM0.i870 = bitcast %union.VectorReg* %885 to %"class.std::bitset"*
  %886 = bitcast %"class.std::bitset"* %YMM0.i870 to i8*
  %887 = load i64, i64* %RDX.i869
  %888 = load i64, i64* %PC.i868
  %889 = add i64 %888, 4
  store i64 %889, i64* %PC.i868
  %890 = inttoptr i64 %887 to double*
  %891 = load double, double* %890
  %892 = bitcast i8* %886 to double*
  store double %891, double* %892, align 1
  %893 = getelementptr inbounds i8, i8* %886, i64 8
  %894 = bitcast i8* %893 to double*
  store double 0.000000e+00, double* %894, align 1
  store %struct.Memory* %loadMem_40065d, %struct.Memory** %MEMORY
  %loadMem_400661 = load %struct.Memory*, %struct.Memory** %MEMORY
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %896 = getelementptr inbounds %struct.GPR, %struct.GPR* %895, i32 0, i32 33
  %897 = getelementptr inbounds %struct.Reg, %struct.Reg* %896, i32 0, i32 0
  %PC.i865 = bitcast %union.anon* %897 to i64*
  %898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %899 = getelementptr inbounds %struct.GPR, %struct.GPR* %898, i32 0, i32 7
  %900 = getelementptr inbounds %struct.Reg, %struct.Reg* %899, i32 0, i32 0
  %RDX.i866 = bitcast %union.anon* %900 to i64*
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %902 = getelementptr inbounds %struct.GPR, %struct.GPR* %901, i32 0, i32 15
  %903 = getelementptr inbounds %struct.Reg, %struct.Reg* %902, i32 0, i32 0
  %RBP.i867 = bitcast %union.anon* %903 to i64*
  %904 = load i64, i64* %RBP.i867
  %905 = sub i64 %904, 24
  %906 = load i64, i64* %PC.i865
  %907 = add i64 %906, 4
  store i64 %907, i64* %PC.i865
  %908 = inttoptr i64 %905 to i64*
  %909 = load i64, i64* %908
  store i64 %909, i64* %RDX.i866, align 8
  store %struct.Memory* %loadMem_400661, %struct.Memory** %MEMORY
  %loadMem_400665 = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i862 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 7
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RDX.i863 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %917 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %916, i64 0, i64 0
  %YMM0.i864 = bitcast %union.VectorReg* %917 to %"class.std::bitset"*
  %918 = bitcast %"class.std::bitset"* %YMM0.i864 to i8*
  %919 = bitcast %"class.std::bitset"* %YMM0.i864 to i8*
  %920 = load i64, i64* %RDX.i863
  %921 = add i64 %920, 16
  %922 = load i64, i64* %PC.i862
  %923 = add i64 %922, 5
  store i64 %923, i64* %PC.i862
  %924 = bitcast i8* %919 to double*
  %925 = load double, double* %924, align 1
  %926 = getelementptr inbounds i8, i8* %919, i64 8
  %927 = bitcast i8* %926 to i64*
  %928 = load i64, i64* %927, align 1
  %929 = inttoptr i64 %921 to double*
  %930 = load double, double* %929
  %931 = fmul double %925, %930
  %932 = bitcast i8* %918 to double*
  store double %931, double* %932, align 1
  %933 = getelementptr inbounds i8, i8* %918, i64 8
  %934 = bitcast i8* %933 to i64*
  store i64 %928, i64* %934, align 1
  store %struct.Memory* %loadMem_400665, %struct.Memory** %MEMORY
  %loadMem_40066a = load %struct.Memory*, %struct.Memory** %MEMORY
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 33
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %937 to i64*
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %939 = getelementptr inbounds %struct.GPR, %struct.GPR* %938, i32 0, i32 7
  %940 = getelementptr inbounds %struct.Reg, %struct.Reg* %939, i32 0, i32 0
  %RDX.i860 = bitcast %union.anon* %940 to i64*
  %941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %942 = getelementptr inbounds %struct.GPR, %struct.GPR* %941, i32 0, i32 15
  %943 = getelementptr inbounds %struct.Reg, %struct.Reg* %942, i32 0, i32 0
  %RBP.i861 = bitcast %union.anon* %943 to i64*
  %944 = load i64, i64* %RBP.i861
  %945 = sub i64 %944, 16
  %946 = load i64, i64* %PC.i859
  %947 = add i64 %946, 4
  store i64 %947, i64* %PC.i859
  %948 = inttoptr i64 %945 to i64*
  %949 = load i64, i64* %948
  store i64 %949, i64* %RDX.i860, align 8
  store %struct.Memory* %loadMem_40066a, %struct.Memory** %MEMORY
  %loadMem_40066e = load %struct.Memory*, %struct.Memory** %MEMORY
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 33
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %PC.i856 = bitcast %union.anon* %952 to i64*
  %953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %954 = getelementptr inbounds %struct.GPR, %struct.GPR* %953, i32 0, i32 7
  %955 = getelementptr inbounds %struct.Reg, %struct.Reg* %954, i32 0, i32 0
  %RDX.i857 = bitcast %union.anon* %955 to i64*
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %957 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %956, i64 0, i64 1
  %YMM1.i858 = bitcast %union.VectorReg* %957 to %"class.std::bitset"*
  %958 = bitcast %"class.std::bitset"* %YMM1.i858 to i8*
  %959 = load i64, i64* %RDX.i857
  %960 = add i64 %959, 8
  %961 = load i64, i64* %PC.i856
  %962 = add i64 %961, 5
  store i64 %962, i64* %PC.i856
  %963 = inttoptr i64 %960 to double*
  %964 = load double, double* %963
  %965 = bitcast i8* %958 to double*
  store double %964, double* %965, align 1
  %966 = getelementptr inbounds i8, i8* %958, i64 8
  %967 = bitcast i8* %966 to double*
  store double 0.000000e+00, double* %967, align 1
  store %struct.Memory* %loadMem_40066e, %struct.Memory** %MEMORY
  %loadMem_400673 = load %struct.Memory*, %struct.Memory** %MEMORY
  %968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %969 = getelementptr inbounds %struct.GPR, %struct.GPR* %968, i32 0, i32 33
  %970 = getelementptr inbounds %struct.Reg, %struct.Reg* %969, i32 0, i32 0
  %PC.i853 = bitcast %union.anon* %970 to i64*
  %971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %972 = getelementptr inbounds %struct.GPR, %struct.GPR* %971, i32 0, i32 7
  %973 = getelementptr inbounds %struct.Reg, %struct.Reg* %972, i32 0, i32 0
  %RDX.i854 = bitcast %union.anon* %973 to i64*
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 15
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %RBP.i855 = bitcast %union.anon* %976 to i64*
  %977 = load i64, i64* %RBP.i855
  %978 = sub i64 %977, 24
  %979 = load i64, i64* %PC.i853
  %980 = add i64 %979, 4
  store i64 %980, i64* %PC.i853
  %981 = inttoptr i64 %978 to i64*
  %982 = load i64, i64* %981
  store i64 %982, i64* %RDX.i854, align 8
  store %struct.Memory* %loadMem_400673, %struct.Memory** %MEMORY
  %loadMem_400677 = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 7
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RDX.i851 = bitcast %union.anon* %988 to i64*
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %990 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %989, i64 0, i64 1
  %YMM1.i852 = bitcast %union.VectorReg* %990 to %"class.std::bitset"*
  %991 = bitcast %"class.std::bitset"* %YMM1.i852 to i8*
  %992 = bitcast %"class.std::bitset"* %YMM1.i852 to i8*
  %993 = load i64, i64* %RDX.i851
  %994 = add i64 %993, 48
  %995 = load i64, i64* %PC.i850
  %996 = add i64 %995, 5
  store i64 %996, i64* %PC.i850
  %997 = bitcast i8* %992 to double*
  %998 = load double, double* %997, align 1
  %999 = getelementptr inbounds i8, i8* %992, i64 8
  %1000 = bitcast i8* %999 to i64*
  %1001 = load i64, i64* %1000, align 1
  %1002 = inttoptr i64 %994 to double*
  %1003 = load double, double* %1002
  %1004 = fmul double %998, %1003
  %1005 = bitcast i8* %991 to double*
  store double %1004, double* %1005, align 1
  %1006 = getelementptr inbounds i8, i8* %991, i64 8
  %1007 = bitcast i8* %1006 to i64*
  store i64 %1001, i64* %1007, align 1
  store %struct.Memory* %loadMem_400677, %struct.Memory** %MEMORY
  %loadMem_40067c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1009 = getelementptr inbounds %struct.GPR, %struct.GPR* %1008, i32 0, i32 33
  %1010 = getelementptr inbounds %struct.Reg, %struct.Reg* %1009, i32 0, i32 0
  %PC.i847 = bitcast %union.anon* %1010 to i64*
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1012 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1011, i64 0, i64 0
  %YMM0.i848 = bitcast %union.VectorReg* %1012 to %"class.std::bitset"*
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1014 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1013, i64 0, i64 1
  %XMM1.i849 = bitcast %union.VectorReg* %1014 to %union.vec128_t*
  %1015 = bitcast %"class.std::bitset"* %YMM0.i848 to i8*
  %1016 = bitcast %"class.std::bitset"* %YMM0.i848 to i8*
  %1017 = bitcast %union.vec128_t* %XMM1.i849 to i8*
  %1018 = load i64, i64* %PC.i847
  %1019 = add i64 %1018, 4
  store i64 %1019, i64* %PC.i847
  %1020 = bitcast i8* %1016 to double*
  %1021 = load double, double* %1020, align 1
  %1022 = getelementptr inbounds i8, i8* %1016, i64 8
  %1023 = bitcast i8* %1022 to i64*
  %1024 = load i64, i64* %1023, align 1
  %1025 = bitcast i8* %1017 to double*
  %1026 = load double, double* %1025, align 1
  %1027 = fadd double %1021, %1026
  %1028 = bitcast i8* %1015 to double*
  store double %1027, double* %1028, align 1
  %1029 = getelementptr inbounds i8, i8* %1015, i64 8
  %1030 = bitcast i8* %1029 to i64*
  store i64 %1024, i64* %1030, align 1
  store %struct.Memory* %loadMem_40067c, %struct.Memory** %MEMORY
  %loadMem_400680 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 33
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %PC.i844 = bitcast %union.anon* %1033 to i64*
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 7
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 15
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RBP.i846 = bitcast %union.anon* %1039 to i64*
  %1040 = load i64, i64* %RBP.i846
  %1041 = sub i64 %1040, 16
  %1042 = load i64, i64* %PC.i844
  %1043 = add i64 %1042, 4
  store i64 %1043, i64* %PC.i844
  %1044 = inttoptr i64 %1041 to i64*
  %1045 = load i64, i64* %1044
  store i64 %1045, i64* %RDX.i845, align 8
  store %struct.Memory* %loadMem_400680, %struct.Memory** %MEMORY
  %loadMem_400684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i841 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 7
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RDX.i842 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1053 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1052, i64 0, i64 1
  %YMM1.i843 = bitcast %union.VectorReg* %1053 to %"class.std::bitset"*
  %1054 = bitcast %"class.std::bitset"* %YMM1.i843 to i8*
  %1055 = load i64, i64* %RDX.i842
  %1056 = add i64 %1055, 16
  %1057 = load i64, i64* %PC.i841
  %1058 = add i64 %1057, 5
  store i64 %1058, i64* %PC.i841
  %1059 = inttoptr i64 %1056 to double*
  %1060 = load double, double* %1059
  %1061 = bitcast i8* %1054 to double*
  store double %1060, double* %1061, align 1
  %1062 = getelementptr inbounds i8, i8* %1054, i64 8
  %1063 = bitcast i8* %1062 to double*
  store double 0.000000e+00, double* %1063, align 1
  store %struct.Memory* %loadMem_400684, %struct.Memory** %MEMORY
  %loadMem_400689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 33
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 7
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RDX.i839 = bitcast %union.anon* %1069 to i64*
  %1070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1071 = getelementptr inbounds %struct.GPR, %struct.GPR* %1070, i32 0, i32 15
  %1072 = getelementptr inbounds %struct.Reg, %struct.Reg* %1071, i32 0, i32 0
  %RBP.i840 = bitcast %union.anon* %1072 to i64*
  %1073 = load i64, i64* %RBP.i840
  %1074 = sub i64 %1073, 24
  %1075 = load i64, i64* %PC.i838
  %1076 = add i64 %1075, 4
  store i64 %1076, i64* %PC.i838
  %1077 = inttoptr i64 %1074 to i64*
  %1078 = load i64, i64* %1077
  store i64 %1078, i64* %RDX.i839, align 8
  store %struct.Memory* %loadMem_400689, %struct.Memory** %MEMORY
  %loadMem_40068d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 33
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1083 = getelementptr inbounds %struct.GPR, %struct.GPR* %1082, i32 0, i32 7
  %1084 = getelementptr inbounds %struct.Reg, %struct.Reg* %1083, i32 0, i32 0
  %RDX.i836 = bitcast %union.anon* %1084 to i64*
  %1085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1085, i64 0, i64 1
  %YMM1.i837 = bitcast %union.VectorReg* %1086 to %"class.std::bitset"*
  %1087 = bitcast %"class.std::bitset"* %YMM1.i837 to i8*
  %1088 = bitcast %"class.std::bitset"* %YMM1.i837 to i8*
  %1089 = load i64, i64* %RDX.i836
  %1090 = add i64 %1089, 80
  %1091 = load i64, i64* %PC.i835
  %1092 = add i64 %1091, 5
  store i64 %1092, i64* %PC.i835
  %1093 = bitcast i8* %1088 to double*
  %1094 = load double, double* %1093, align 1
  %1095 = getelementptr inbounds i8, i8* %1088, i64 8
  %1096 = bitcast i8* %1095 to i64*
  %1097 = load i64, i64* %1096, align 1
  %1098 = inttoptr i64 %1090 to double*
  %1099 = load double, double* %1098
  %1100 = fmul double %1094, %1099
  %1101 = bitcast i8* %1087 to double*
  store double %1100, double* %1101, align 1
  %1102 = getelementptr inbounds i8, i8* %1087, i64 8
  %1103 = bitcast i8* %1102 to i64*
  store i64 %1097, i64* %1103, align 1
  store %struct.Memory* %loadMem_40068d, %struct.Memory** %MEMORY
  %loadMem_400692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 33
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %1106 to i64*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1108 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1107, i64 0, i64 0
  %YMM0.i833 = bitcast %union.VectorReg* %1108 to %"class.std::bitset"*
  %1109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1110 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1109, i64 0, i64 1
  %XMM1.i834 = bitcast %union.VectorReg* %1110 to %union.vec128_t*
  %1111 = bitcast %"class.std::bitset"* %YMM0.i833 to i8*
  %1112 = bitcast %"class.std::bitset"* %YMM0.i833 to i8*
  %1113 = bitcast %union.vec128_t* %XMM1.i834 to i8*
  %1114 = load i64, i64* %PC.i832
  %1115 = add i64 %1114, 4
  store i64 %1115, i64* %PC.i832
  %1116 = bitcast i8* %1112 to double*
  %1117 = load double, double* %1116, align 1
  %1118 = getelementptr inbounds i8, i8* %1112, i64 8
  %1119 = bitcast i8* %1118 to i64*
  %1120 = load i64, i64* %1119, align 1
  %1121 = bitcast i8* %1113 to double*
  %1122 = load double, double* %1121, align 1
  %1123 = fadd double %1117, %1122
  %1124 = bitcast i8* %1111 to double*
  store double %1123, double* %1124, align 1
  %1125 = getelementptr inbounds i8, i8* %1111, i64 8
  %1126 = bitcast i8* %1125 to i64*
  store i64 %1120, i64* %1126, align 1
  store %struct.Memory* %loadMem_400692, %struct.Memory** %MEMORY
  %loadMem_400696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %1129 to i64*
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1131 = getelementptr inbounds %struct.GPR, %struct.GPR* %1130, i32 0, i32 7
  %1132 = getelementptr inbounds %struct.Reg, %struct.Reg* %1131, i32 0, i32 0
  %RDX.i830 = bitcast %union.anon* %1132 to i64*
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 15
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %1135 to i64*
  %1136 = load i64, i64* %RBP.i831
  %1137 = sub i64 %1136, 16
  %1138 = load i64, i64* %PC.i829
  %1139 = add i64 %1138, 4
  store i64 %1139, i64* %PC.i829
  %1140 = inttoptr i64 %1137 to i64*
  %1141 = load i64, i64* %1140
  store i64 %1141, i64* %RDX.i830, align 8
  store %struct.Memory* %loadMem_400696, %struct.Memory** %MEMORY
  %loadMem_40069a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 33
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %PC.i826 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 7
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RDX.i827 = bitcast %union.anon* %1147 to i64*
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1149 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1148, i64 0, i64 1
  %YMM1.i828 = bitcast %union.VectorReg* %1149 to %"class.std::bitset"*
  %1150 = bitcast %"class.std::bitset"* %YMM1.i828 to i8*
  %1151 = load i64, i64* %RDX.i827
  %1152 = add i64 %1151, 24
  %1153 = load i64, i64* %PC.i826
  %1154 = add i64 %1153, 5
  store i64 %1154, i64* %PC.i826
  %1155 = inttoptr i64 %1152 to double*
  %1156 = load double, double* %1155
  %1157 = bitcast i8* %1150 to double*
  store double %1156, double* %1157, align 1
  %1158 = getelementptr inbounds i8, i8* %1150, i64 8
  %1159 = bitcast i8* %1158 to double*
  store double 0.000000e+00, double* %1159, align 1
  store %struct.Memory* %loadMem_40069a, %struct.Memory** %MEMORY
  %loadMem_40069f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1161 = getelementptr inbounds %struct.GPR, %struct.GPR* %1160, i32 0, i32 33
  %1162 = getelementptr inbounds %struct.Reg, %struct.Reg* %1161, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %1162 to i64*
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 7
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %RDX.i824 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 15
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RBP.i825 = bitcast %union.anon* %1168 to i64*
  %1169 = load i64, i64* %RBP.i825
  %1170 = sub i64 %1169, 24
  %1171 = load i64, i64* %PC.i823
  %1172 = add i64 %1171, 4
  store i64 %1172, i64* %PC.i823
  %1173 = inttoptr i64 %1170 to i64*
  %1174 = load i64, i64* %1173
  store i64 %1174, i64* %RDX.i824, align 8
  store %struct.Memory* %loadMem_40069f, %struct.Memory** %MEMORY
  %loadMem_4006a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 7
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RDX.i821 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1181, i64 0, i64 1
  %YMM1.i822 = bitcast %union.VectorReg* %1182 to %"class.std::bitset"*
  %1183 = bitcast %"class.std::bitset"* %YMM1.i822 to i8*
  %1184 = bitcast %"class.std::bitset"* %YMM1.i822 to i8*
  %1185 = load i64, i64* %RDX.i821
  %1186 = add i64 %1185, 112
  %1187 = load i64, i64* %PC.i820
  %1188 = add i64 %1187, 5
  store i64 %1188, i64* %PC.i820
  %1189 = bitcast i8* %1184 to double*
  %1190 = load double, double* %1189, align 1
  %1191 = getelementptr inbounds i8, i8* %1184, i64 8
  %1192 = bitcast i8* %1191 to i64*
  %1193 = load i64, i64* %1192, align 1
  %1194 = inttoptr i64 %1186 to double*
  %1195 = load double, double* %1194
  %1196 = fmul double %1190, %1195
  %1197 = bitcast i8* %1183 to double*
  store double %1196, double* %1197, align 1
  %1198 = getelementptr inbounds i8, i8* %1183, i64 8
  %1199 = bitcast i8* %1198 to i64*
  store i64 %1193, i64* %1199, align 1
  store %struct.Memory* %loadMem_4006a3, %struct.Memory** %MEMORY
  %loadMem_4006a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1201 = getelementptr inbounds %struct.GPR, %struct.GPR* %1200, i32 0, i32 33
  %1202 = getelementptr inbounds %struct.Reg, %struct.Reg* %1201, i32 0, i32 0
  %PC.i817 = bitcast %union.anon* %1202 to i64*
  %1203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1204 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1203, i64 0, i64 0
  %YMM0.i818 = bitcast %union.VectorReg* %1204 to %"class.std::bitset"*
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1206 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1205, i64 0, i64 1
  %XMM1.i819 = bitcast %union.VectorReg* %1206 to %union.vec128_t*
  %1207 = bitcast %"class.std::bitset"* %YMM0.i818 to i8*
  %1208 = bitcast %"class.std::bitset"* %YMM0.i818 to i8*
  %1209 = bitcast %union.vec128_t* %XMM1.i819 to i8*
  %1210 = load i64, i64* %PC.i817
  %1211 = add i64 %1210, 4
  store i64 %1211, i64* %PC.i817
  %1212 = bitcast i8* %1208 to double*
  %1213 = load double, double* %1212, align 1
  %1214 = getelementptr inbounds i8, i8* %1208, i64 8
  %1215 = bitcast i8* %1214 to i64*
  %1216 = load i64, i64* %1215, align 1
  %1217 = bitcast i8* %1209 to double*
  %1218 = load double, double* %1217, align 1
  %1219 = fadd double %1213, %1218
  %1220 = bitcast i8* %1207 to double*
  store double %1219, double* %1220, align 1
  %1221 = getelementptr inbounds i8, i8* %1207, i64 8
  %1222 = bitcast i8* %1221 to i64*
  store i64 %1216, i64* %1222, align 1
  store %struct.Memory* %loadMem_4006a8, %struct.Memory** %MEMORY
  %loadMem_4006ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 33
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 15
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %1228 to i64*
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1230 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1229, i64 0, i64 0
  %XMM0.i816 = bitcast %union.VectorReg* %1230 to %union.vec128_t*
  %1231 = load i64, i64* %RBP.i815
  %1232 = sub i64 %1231, 144
  %1233 = bitcast %union.vec128_t* %XMM0.i816 to i8*
  %1234 = load i64, i64* %PC.i814
  %1235 = add i64 %1234, 8
  store i64 %1235, i64* %PC.i814
  %1236 = bitcast i8* %1233 to double*
  %1237 = load double, double* %1236, align 1
  %1238 = inttoptr i64 %1232 to double*
  store double %1237, double* %1238
  store %struct.Memory* %loadMem_4006ac, %struct.Memory** %MEMORY
  %loadMem_4006b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 33
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %PC.i811 = bitcast %union.anon* %1241 to i64*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 7
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RDX.i812 = bitcast %union.anon* %1244 to i64*
  %1245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1246 = getelementptr inbounds %struct.GPR, %struct.GPR* %1245, i32 0, i32 15
  %1247 = getelementptr inbounds %struct.Reg, %struct.Reg* %1246, i32 0, i32 0
  %RBP.i813 = bitcast %union.anon* %1247 to i64*
  %1248 = load i64, i64* %RBP.i813
  %1249 = sub i64 %1248, 16
  %1250 = load i64, i64* %PC.i811
  %1251 = add i64 %1250, 4
  store i64 %1251, i64* %PC.i811
  %1252 = inttoptr i64 %1249 to i64*
  %1253 = load i64, i64* %1252
  store i64 %1253, i64* %RDX.i812, align 8
  store %struct.Memory* %loadMem_4006b4, %struct.Memory** %MEMORY
  %loadMem_4006b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1255 = getelementptr inbounds %struct.GPR, %struct.GPR* %1254, i32 0, i32 33
  %1256 = getelementptr inbounds %struct.Reg, %struct.Reg* %1255, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1256 to i64*
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 7
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %RDX.i809 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1261 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1260, i64 0, i64 0
  %YMM0.i810 = bitcast %union.VectorReg* %1261 to %"class.std::bitset"*
  %1262 = bitcast %"class.std::bitset"* %YMM0.i810 to i8*
  %1263 = load i64, i64* %RDX.i809
  %1264 = load i64, i64* %PC.i808
  %1265 = add i64 %1264, 4
  store i64 %1265, i64* %PC.i808
  %1266 = inttoptr i64 %1263 to double*
  %1267 = load double, double* %1266
  %1268 = bitcast i8* %1262 to double*
  store double %1267, double* %1268, align 1
  %1269 = getelementptr inbounds i8, i8* %1262, i64 8
  %1270 = bitcast i8* %1269 to double*
  store double 0.000000e+00, double* %1270, align 1
  store %struct.Memory* %loadMem_4006b8, %struct.Memory** %MEMORY
  %loadMem_4006bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 7
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RDX.i806 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 15
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RBP.i807
  %1281 = sub i64 %1280, 24
  %1282 = load i64, i64* %PC.i805
  %1283 = add i64 %1282, 4
  store i64 %1283, i64* %PC.i805
  %1284 = inttoptr i64 %1281 to i64*
  %1285 = load i64, i64* %1284
  store i64 %1285, i64* %RDX.i806, align 8
  store %struct.Memory* %loadMem_4006bc, %struct.Memory** %MEMORY
  %loadMem_4006c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1288 to i64*
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1290 = getelementptr inbounds %struct.GPR, %struct.GPR* %1289, i32 0, i32 7
  %1291 = getelementptr inbounds %struct.Reg, %struct.Reg* %1290, i32 0, i32 0
  %RDX.i803 = bitcast %union.anon* %1291 to i64*
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1293 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1292, i64 0, i64 0
  %YMM0.i804 = bitcast %union.VectorReg* %1293 to %"class.std::bitset"*
  %1294 = bitcast %"class.std::bitset"* %YMM0.i804 to i8*
  %1295 = bitcast %"class.std::bitset"* %YMM0.i804 to i8*
  %1296 = load i64, i64* %RDX.i803
  %1297 = add i64 %1296, 24
  %1298 = load i64, i64* %PC.i802
  %1299 = add i64 %1298, 5
  store i64 %1299, i64* %PC.i802
  %1300 = bitcast i8* %1295 to double*
  %1301 = load double, double* %1300, align 1
  %1302 = getelementptr inbounds i8, i8* %1295, i64 8
  %1303 = bitcast i8* %1302 to i64*
  %1304 = load i64, i64* %1303, align 1
  %1305 = inttoptr i64 %1297 to double*
  %1306 = load double, double* %1305
  %1307 = fmul double %1301, %1306
  %1308 = bitcast i8* %1294 to double*
  store double %1307, double* %1308, align 1
  %1309 = getelementptr inbounds i8, i8* %1294, i64 8
  %1310 = bitcast i8* %1309 to i64*
  store i64 %1304, i64* %1310, align 1
  store %struct.Memory* %loadMem_4006c0, %struct.Memory** %MEMORY
  %loadMem_4006c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 33
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 7
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RDX.i800 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 15
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RBP.i801 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %RBP.i801
  %1321 = sub i64 %1320, 16
  %1322 = load i64, i64* %PC.i799
  %1323 = add i64 %1322, 4
  store i64 %1323, i64* %PC.i799
  %1324 = inttoptr i64 %1321 to i64*
  %1325 = load i64, i64* %1324
  store i64 %1325, i64* %RDX.i800, align 8
  store %struct.Memory* %loadMem_4006c5, %struct.Memory** %MEMORY
  %loadMem_4006c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1327 = getelementptr inbounds %struct.GPR, %struct.GPR* %1326, i32 0, i32 33
  %1328 = getelementptr inbounds %struct.Reg, %struct.Reg* %1327, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1328 to i64*
  %1329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1330 = getelementptr inbounds %struct.GPR, %struct.GPR* %1329, i32 0, i32 7
  %1331 = getelementptr inbounds %struct.Reg, %struct.Reg* %1330, i32 0, i32 0
  %RDX.i797 = bitcast %union.anon* %1331 to i64*
  %1332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1332, i64 0, i64 1
  %YMM1.i798 = bitcast %union.VectorReg* %1333 to %"class.std::bitset"*
  %1334 = bitcast %"class.std::bitset"* %YMM1.i798 to i8*
  %1335 = load i64, i64* %RDX.i797
  %1336 = add i64 %1335, 8
  %1337 = load i64, i64* %PC.i796
  %1338 = add i64 %1337, 5
  store i64 %1338, i64* %PC.i796
  %1339 = inttoptr i64 %1336 to double*
  %1340 = load double, double* %1339
  %1341 = bitcast i8* %1334 to double*
  store double %1340, double* %1341, align 1
  %1342 = getelementptr inbounds i8, i8* %1334, i64 8
  %1343 = bitcast i8* %1342 to double*
  store double 0.000000e+00, double* %1343, align 1
  store %struct.Memory* %loadMem_4006c9, %struct.Memory** %MEMORY
  %loadMem_4006ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 33
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1346 to i64*
  %1347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1348 = getelementptr inbounds %struct.GPR, %struct.GPR* %1347, i32 0, i32 7
  %1349 = getelementptr inbounds %struct.Reg, %struct.Reg* %1348, i32 0, i32 0
  %RDX.i794 = bitcast %union.anon* %1349 to i64*
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 15
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1352 to i64*
  %1353 = load i64, i64* %RBP.i795
  %1354 = sub i64 %1353, 24
  %1355 = load i64, i64* %PC.i793
  %1356 = add i64 %1355, 4
  store i64 %1356, i64* %PC.i793
  %1357 = inttoptr i64 %1354 to i64*
  %1358 = load i64, i64* %1357
  store i64 %1358, i64* %RDX.i794, align 8
  store %struct.Memory* %loadMem_4006ce, %struct.Memory** %MEMORY
  %loadMem_4006d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1360 = getelementptr inbounds %struct.GPR, %struct.GPR* %1359, i32 0, i32 33
  %1361 = getelementptr inbounds %struct.Reg, %struct.Reg* %1360, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1361 to i64*
  %1362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1363 = getelementptr inbounds %struct.GPR, %struct.GPR* %1362, i32 0, i32 7
  %1364 = getelementptr inbounds %struct.Reg, %struct.Reg* %1363, i32 0, i32 0
  %RDX.i791 = bitcast %union.anon* %1364 to i64*
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1366 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1365, i64 0, i64 1
  %YMM1.i792 = bitcast %union.VectorReg* %1366 to %"class.std::bitset"*
  %1367 = bitcast %"class.std::bitset"* %YMM1.i792 to i8*
  %1368 = bitcast %"class.std::bitset"* %YMM1.i792 to i8*
  %1369 = load i64, i64* %RDX.i791
  %1370 = add i64 %1369, 56
  %1371 = load i64, i64* %PC.i790
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %PC.i790
  %1373 = bitcast i8* %1368 to double*
  %1374 = load double, double* %1373, align 1
  %1375 = getelementptr inbounds i8, i8* %1368, i64 8
  %1376 = bitcast i8* %1375 to i64*
  %1377 = load i64, i64* %1376, align 1
  %1378 = inttoptr i64 %1370 to double*
  %1379 = load double, double* %1378
  %1380 = fmul double %1374, %1379
  %1381 = bitcast i8* %1367 to double*
  store double %1380, double* %1381, align 1
  %1382 = getelementptr inbounds i8, i8* %1367, i64 8
  %1383 = bitcast i8* %1382 to i64*
  store i64 %1377, i64* %1383, align 1
  store %struct.Memory* %loadMem_4006d2, %struct.Memory** %MEMORY
  %loadMem_4006d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1388 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1387, i64 0, i64 0
  %YMM0.i788 = bitcast %union.VectorReg* %1388 to %"class.std::bitset"*
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1389, i64 0, i64 1
  %XMM1.i789 = bitcast %union.VectorReg* %1390 to %union.vec128_t*
  %1391 = bitcast %"class.std::bitset"* %YMM0.i788 to i8*
  %1392 = bitcast %"class.std::bitset"* %YMM0.i788 to i8*
  %1393 = bitcast %union.vec128_t* %XMM1.i789 to i8*
  %1394 = load i64, i64* %PC.i787
  %1395 = add i64 %1394, 4
  store i64 %1395, i64* %PC.i787
  %1396 = bitcast i8* %1392 to double*
  %1397 = load double, double* %1396, align 1
  %1398 = getelementptr inbounds i8, i8* %1392, i64 8
  %1399 = bitcast i8* %1398 to i64*
  %1400 = load i64, i64* %1399, align 1
  %1401 = bitcast i8* %1393 to double*
  %1402 = load double, double* %1401, align 1
  %1403 = fadd double %1397, %1402
  %1404 = bitcast i8* %1391 to double*
  store double %1403, double* %1404, align 1
  %1405 = getelementptr inbounds i8, i8* %1391, i64 8
  %1406 = bitcast i8* %1405 to i64*
  store i64 %1400, i64* %1406, align 1
  store %struct.Memory* %loadMem_4006d7, %struct.Memory** %MEMORY
  %loadMem_4006db = load %struct.Memory*, %struct.Memory** %MEMORY
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1408 = getelementptr inbounds %struct.GPR, %struct.GPR* %1407, i32 0, i32 33
  %1409 = getelementptr inbounds %struct.Reg, %struct.Reg* %1408, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1409 to i64*
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1411 = getelementptr inbounds %struct.GPR, %struct.GPR* %1410, i32 0, i32 7
  %1412 = getelementptr inbounds %struct.Reg, %struct.Reg* %1411, i32 0, i32 0
  %RDX.i785 = bitcast %union.anon* %1412 to i64*
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1414 = getelementptr inbounds %struct.GPR, %struct.GPR* %1413, i32 0, i32 15
  %1415 = getelementptr inbounds %struct.Reg, %struct.Reg* %1414, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %1415 to i64*
  %1416 = load i64, i64* %RBP.i786
  %1417 = sub i64 %1416, 16
  %1418 = load i64, i64* %PC.i784
  %1419 = add i64 %1418, 4
  store i64 %1419, i64* %PC.i784
  %1420 = inttoptr i64 %1417 to i64*
  %1421 = load i64, i64* %1420
  store i64 %1421, i64* %RDX.i785, align 8
  store %struct.Memory* %loadMem_4006db, %struct.Memory** %MEMORY
  %loadMem_4006df = load %struct.Memory*, %struct.Memory** %MEMORY
  %1422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1423 = getelementptr inbounds %struct.GPR, %struct.GPR* %1422, i32 0, i32 33
  %1424 = getelementptr inbounds %struct.Reg, %struct.Reg* %1423, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1424 to i64*
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1426 = getelementptr inbounds %struct.GPR, %struct.GPR* %1425, i32 0, i32 7
  %1427 = getelementptr inbounds %struct.Reg, %struct.Reg* %1426, i32 0, i32 0
  %RDX.i782 = bitcast %union.anon* %1427 to i64*
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1429 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1428, i64 0, i64 1
  %YMM1.i783 = bitcast %union.VectorReg* %1429 to %"class.std::bitset"*
  %1430 = bitcast %"class.std::bitset"* %YMM1.i783 to i8*
  %1431 = load i64, i64* %RDX.i782
  %1432 = add i64 %1431, 16
  %1433 = load i64, i64* %PC.i781
  %1434 = add i64 %1433, 5
  store i64 %1434, i64* %PC.i781
  %1435 = inttoptr i64 %1432 to double*
  %1436 = load double, double* %1435
  %1437 = bitcast i8* %1430 to double*
  store double %1436, double* %1437, align 1
  %1438 = getelementptr inbounds i8, i8* %1430, i64 8
  %1439 = bitcast i8* %1438 to double*
  store double 0.000000e+00, double* %1439, align 1
  store %struct.Memory* %loadMem_4006df, %struct.Memory** %MEMORY
  %loadMem_4006e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1441 = getelementptr inbounds %struct.GPR, %struct.GPR* %1440, i32 0, i32 33
  %1442 = getelementptr inbounds %struct.Reg, %struct.Reg* %1441, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1442 to i64*
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1444 = getelementptr inbounds %struct.GPR, %struct.GPR* %1443, i32 0, i32 7
  %1445 = getelementptr inbounds %struct.Reg, %struct.Reg* %1444, i32 0, i32 0
  %RDX.i779 = bitcast %union.anon* %1445 to i64*
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 15
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %RBP.i780 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %RBP.i780
  %1450 = sub i64 %1449, 24
  %1451 = load i64, i64* %PC.i778
  %1452 = add i64 %1451, 4
  store i64 %1452, i64* %PC.i778
  %1453 = inttoptr i64 %1450 to i64*
  %1454 = load i64, i64* %1453
  store i64 %1454, i64* %RDX.i779, align 8
  store %struct.Memory* %loadMem_4006e4, %struct.Memory** %MEMORY
  %loadMem_4006e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1456 = getelementptr inbounds %struct.GPR, %struct.GPR* %1455, i32 0, i32 33
  %1457 = getelementptr inbounds %struct.Reg, %struct.Reg* %1456, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1457 to i64*
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 7
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %RDX.i776 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1462 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1461, i64 0, i64 1
  %YMM1.i777 = bitcast %union.VectorReg* %1462 to %"class.std::bitset"*
  %1463 = bitcast %"class.std::bitset"* %YMM1.i777 to i8*
  %1464 = bitcast %"class.std::bitset"* %YMM1.i777 to i8*
  %1465 = load i64, i64* %RDX.i776
  %1466 = add i64 %1465, 88
  %1467 = load i64, i64* %PC.i775
  %1468 = add i64 %1467, 5
  store i64 %1468, i64* %PC.i775
  %1469 = bitcast i8* %1464 to double*
  %1470 = load double, double* %1469, align 1
  %1471 = getelementptr inbounds i8, i8* %1464, i64 8
  %1472 = bitcast i8* %1471 to i64*
  %1473 = load i64, i64* %1472, align 1
  %1474 = inttoptr i64 %1466 to double*
  %1475 = load double, double* %1474
  %1476 = fmul double %1470, %1475
  %1477 = bitcast i8* %1463 to double*
  store double %1476, double* %1477, align 1
  %1478 = getelementptr inbounds i8, i8* %1463, i64 8
  %1479 = bitcast i8* %1478 to i64*
  store i64 %1473, i64* %1479, align 1
  store %struct.Memory* %loadMem_4006e8, %struct.Memory** %MEMORY
  %loadMem_4006ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1481 = getelementptr inbounds %struct.GPR, %struct.GPR* %1480, i32 0, i32 33
  %1482 = getelementptr inbounds %struct.Reg, %struct.Reg* %1481, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1482 to i64*
  %1483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1484 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1483, i64 0, i64 0
  %YMM0.i773 = bitcast %union.VectorReg* %1484 to %"class.std::bitset"*
  %1485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1486 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1485, i64 0, i64 1
  %XMM1.i774 = bitcast %union.VectorReg* %1486 to %union.vec128_t*
  %1487 = bitcast %"class.std::bitset"* %YMM0.i773 to i8*
  %1488 = bitcast %"class.std::bitset"* %YMM0.i773 to i8*
  %1489 = bitcast %union.vec128_t* %XMM1.i774 to i8*
  %1490 = load i64, i64* %PC.i772
  %1491 = add i64 %1490, 4
  store i64 %1491, i64* %PC.i772
  %1492 = bitcast i8* %1488 to double*
  %1493 = load double, double* %1492, align 1
  %1494 = getelementptr inbounds i8, i8* %1488, i64 8
  %1495 = bitcast i8* %1494 to i64*
  %1496 = load i64, i64* %1495, align 1
  %1497 = bitcast i8* %1489 to double*
  %1498 = load double, double* %1497, align 1
  %1499 = fadd double %1493, %1498
  %1500 = bitcast i8* %1487 to double*
  store double %1499, double* %1500, align 1
  %1501 = getelementptr inbounds i8, i8* %1487, i64 8
  %1502 = bitcast i8* %1501 to i64*
  store i64 %1496, i64* %1502, align 1
  store %struct.Memory* %loadMem_4006ed, %struct.Memory** %MEMORY
  %loadMem_4006f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1504 = getelementptr inbounds %struct.GPR, %struct.GPR* %1503, i32 0, i32 33
  %1505 = getelementptr inbounds %struct.Reg, %struct.Reg* %1504, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1505 to i64*
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1507 = getelementptr inbounds %struct.GPR, %struct.GPR* %1506, i32 0, i32 7
  %1508 = getelementptr inbounds %struct.Reg, %struct.Reg* %1507, i32 0, i32 0
  %RDX.i770 = bitcast %union.anon* %1508 to i64*
  %1509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1510 = getelementptr inbounds %struct.GPR, %struct.GPR* %1509, i32 0, i32 15
  %1511 = getelementptr inbounds %struct.Reg, %struct.Reg* %1510, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1511 to i64*
  %1512 = load i64, i64* %RBP.i771
  %1513 = sub i64 %1512, 16
  %1514 = load i64, i64* %PC.i769
  %1515 = add i64 %1514, 4
  store i64 %1515, i64* %PC.i769
  %1516 = inttoptr i64 %1513 to i64*
  %1517 = load i64, i64* %1516
  store i64 %1517, i64* %RDX.i770, align 8
  store %struct.Memory* %loadMem_4006f1, %struct.Memory** %MEMORY
  %loadMem_4006f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1519 = getelementptr inbounds %struct.GPR, %struct.GPR* %1518, i32 0, i32 33
  %1520 = getelementptr inbounds %struct.Reg, %struct.Reg* %1519, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1520 to i64*
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1522 = getelementptr inbounds %struct.GPR, %struct.GPR* %1521, i32 0, i32 7
  %1523 = getelementptr inbounds %struct.Reg, %struct.Reg* %1522, i32 0, i32 0
  %RDX.i767 = bitcast %union.anon* %1523 to i64*
  %1524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1525 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1524, i64 0, i64 1
  %YMM1.i768 = bitcast %union.VectorReg* %1525 to %"class.std::bitset"*
  %1526 = bitcast %"class.std::bitset"* %YMM1.i768 to i8*
  %1527 = load i64, i64* %RDX.i767
  %1528 = add i64 %1527, 24
  %1529 = load i64, i64* %PC.i766
  %1530 = add i64 %1529, 5
  store i64 %1530, i64* %PC.i766
  %1531 = inttoptr i64 %1528 to double*
  %1532 = load double, double* %1531
  %1533 = bitcast i8* %1526 to double*
  store double %1532, double* %1533, align 1
  %1534 = getelementptr inbounds i8, i8* %1526, i64 8
  %1535 = bitcast i8* %1534 to double*
  store double 0.000000e+00, double* %1535, align 1
  store %struct.Memory* %loadMem_4006f5, %struct.Memory** %MEMORY
  %loadMem_4006fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1538 to i64*
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 7
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %RDX.i764 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 15
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %RBP.i765
  %1546 = sub i64 %1545, 24
  %1547 = load i64, i64* %PC.i763
  %1548 = add i64 %1547, 4
  store i64 %1548, i64* %PC.i763
  %1549 = inttoptr i64 %1546 to i64*
  %1550 = load i64, i64* %1549
  store i64 %1550, i64* %RDX.i764, align 8
  store %struct.Memory* %loadMem_4006fa, %struct.Memory** %MEMORY
  %loadMem_4006fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 33
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 7
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RDX.i761 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1558 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1557, i64 0, i64 1
  %YMM1.i762 = bitcast %union.VectorReg* %1558 to %"class.std::bitset"*
  %1559 = bitcast %"class.std::bitset"* %YMM1.i762 to i8*
  %1560 = bitcast %"class.std::bitset"* %YMM1.i762 to i8*
  %1561 = load i64, i64* %RDX.i761
  %1562 = add i64 %1561, 120
  %1563 = load i64, i64* %PC.i760
  %1564 = add i64 %1563, 5
  store i64 %1564, i64* %PC.i760
  %1565 = bitcast i8* %1560 to double*
  %1566 = load double, double* %1565, align 1
  %1567 = getelementptr inbounds i8, i8* %1560, i64 8
  %1568 = bitcast i8* %1567 to i64*
  %1569 = load i64, i64* %1568, align 1
  %1570 = inttoptr i64 %1562 to double*
  %1571 = load double, double* %1570
  %1572 = fmul double %1566, %1571
  %1573 = bitcast i8* %1559 to double*
  store double %1572, double* %1573, align 1
  %1574 = getelementptr inbounds i8, i8* %1559, i64 8
  %1575 = bitcast i8* %1574 to i64*
  store i64 %1569, i64* %1575, align 1
  store %struct.Memory* %loadMem_4006fe, %struct.Memory** %MEMORY
  %loadMem_400703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1578 to i64*
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1580 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1579, i64 0, i64 0
  %YMM0.i758 = bitcast %union.VectorReg* %1580 to %"class.std::bitset"*
  %1581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1582 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1581, i64 0, i64 1
  %XMM1.i759 = bitcast %union.VectorReg* %1582 to %union.vec128_t*
  %1583 = bitcast %"class.std::bitset"* %YMM0.i758 to i8*
  %1584 = bitcast %"class.std::bitset"* %YMM0.i758 to i8*
  %1585 = bitcast %union.vec128_t* %XMM1.i759 to i8*
  %1586 = load i64, i64* %PC.i757
  %1587 = add i64 %1586, 4
  store i64 %1587, i64* %PC.i757
  %1588 = bitcast i8* %1584 to double*
  %1589 = load double, double* %1588, align 1
  %1590 = getelementptr inbounds i8, i8* %1584, i64 8
  %1591 = bitcast i8* %1590 to i64*
  %1592 = load i64, i64* %1591, align 1
  %1593 = bitcast i8* %1585 to double*
  %1594 = load double, double* %1593, align 1
  %1595 = fadd double %1589, %1594
  %1596 = bitcast i8* %1583 to double*
  store double %1595, double* %1596, align 1
  %1597 = getelementptr inbounds i8, i8* %1583, i64 8
  %1598 = bitcast i8* %1597 to i64*
  store i64 %1592, i64* %1598, align 1
  store %struct.Memory* %loadMem_400703, %struct.Memory** %MEMORY
  %loadMem_400707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 15
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1605, i64 0, i64 0
  %XMM0.i756 = bitcast %union.VectorReg* %1606 to %union.vec128_t*
  %1607 = load i64, i64* %RBP.i755
  %1608 = sub i64 %1607, 136
  %1609 = bitcast %union.vec128_t* %XMM0.i756 to i8*
  %1610 = load i64, i64* %PC.i754
  %1611 = add i64 %1610, 8
  store i64 %1611, i64* %PC.i754
  %1612 = bitcast i8* %1609 to double*
  %1613 = load double, double* %1612, align 1
  %1614 = inttoptr i64 %1608 to double*
  store double %1613, double* %1614
  store %struct.Memory* %loadMem_400707, %struct.Memory** %MEMORY
  %loadMem_40070f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1616 = getelementptr inbounds %struct.GPR, %struct.GPR* %1615, i32 0, i32 33
  %1617 = getelementptr inbounds %struct.Reg, %struct.Reg* %1616, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %1617 to i64*
  %1618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1619 = getelementptr inbounds %struct.GPR, %struct.GPR* %1618, i32 0, i32 7
  %1620 = getelementptr inbounds %struct.Reg, %struct.Reg* %1619, i32 0, i32 0
  %RDX.i752 = bitcast %union.anon* %1620 to i64*
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1622 = getelementptr inbounds %struct.GPR, %struct.GPR* %1621, i32 0, i32 15
  %1623 = getelementptr inbounds %struct.Reg, %struct.Reg* %1622, i32 0, i32 0
  %RBP.i753 = bitcast %union.anon* %1623 to i64*
  %1624 = load i64, i64* %RBP.i753
  %1625 = sub i64 %1624, 16
  %1626 = load i64, i64* %PC.i751
  %1627 = add i64 %1626, 4
  store i64 %1627, i64* %PC.i751
  %1628 = inttoptr i64 %1625 to i64*
  %1629 = load i64, i64* %1628
  store i64 %1629, i64* %RDX.i752, align 8
  store %struct.Memory* %loadMem_40070f, %struct.Memory** %MEMORY
  %loadMem_400713 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1631 = getelementptr inbounds %struct.GPR, %struct.GPR* %1630, i32 0, i32 33
  %1632 = getelementptr inbounds %struct.Reg, %struct.Reg* %1631, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1632 to i64*
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1634 = getelementptr inbounds %struct.GPR, %struct.GPR* %1633, i32 0, i32 7
  %1635 = getelementptr inbounds %struct.Reg, %struct.Reg* %1634, i32 0, i32 0
  %RDX.i749 = bitcast %union.anon* %1635 to i64*
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1637 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1636, i64 0, i64 0
  %YMM0.i750 = bitcast %union.VectorReg* %1637 to %"class.std::bitset"*
  %1638 = bitcast %"class.std::bitset"* %YMM0.i750 to i8*
  %1639 = load i64, i64* %RDX.i749
  %1640 = add i64 %1639, 32
  %1641 = load i64, i64* %PC.i748
  %1642 = add i64 %1641, 5
  store i64 %1642, i64* %PC.i748
  %1643 = inttoptr i64 %1640 to double*
  %1644 = load double, double* %1643
  %1645 = bitcast i8* %1638 to double*
  store double %1644, double* %1645, align 1
  %1646 = getelementptr inbounds i8, i8* %1638, i64 8
  %1647 = bitcast i8* %1646 to double*
  store double 0.000000e+00, double* %1647, align 1
  store %struct.Memory* %loadMem_400713, %struct.Memory** %MEMORY
  %loadMem_400718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1650 to i64*
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1652 = getelementptr inbounds %struct.GPR, %struct.GPR* %1651, i32 0, i32 7
  %1653 = getelementptr inbounds %struct.Reg, %struct.Reg* %1652, i32 0, i32 0
  %RDX.i746 = bitcast %union.anon* %1653 to i64*
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 15
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %1656 to i64*
  %1657 = load i64, i64* %RBP.i747
  %1658 = sub i64 %1657, 24
  %1659 = load i64, i64* %PC.i745
  %1660 = add i64 %1659, 4
  store i64 %1660, i64* %PC.i745
  %1661 = inttoptr i64 %1658 to i64*
  %1662 = load i64, i64* %1661
  store i64 %1662, i64* %RDX.i746, align 8
  store %struct.Memory* %loadMem_400718, %struct.Memory** %MEMORY
  %loadMem_40071c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 33
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1665 to i64*
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 7
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %RDX.i743 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1670 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1669, i64 0, i64 0
  %YMM0.i744 = bitcast %union.VectorReg* %1670 to %"class.std::bitset"*
  %1671 = bitcast %"class.std::bitset"* %YMM0.i744 to i8*
  %1672 = bitcast %"class.std::bitset"* %YMM0.i744 to i8*
  %1673 = load i64, i64* %RDX.i743
  %1674 = load i64, i64* %PC.i742
  %1675 = add i64 %1674, 4
  store i64 %1675, i64* %PC.i742
  %1676 = bitcast i8* %1672 to double*
  %1677 = load double, double* %1676, align 1
  %1678 = getelementptr inbounds i8, i8* %1672, i64 8
  %1679 = bitcast i8* %1678 to i64*
  %1680 = load i64, i64* %1679, align 1
  %1681 = inttoptr i64 %1673 to double*
  %1682 = load double, double* %1681
  %1683 = fmul double %1677, %1682
  %1684 = bitcast i8* %1671 to double*
  store double %1683, double* %1684, align 1
  %1685 = getelementptr inbounds i8, i8* %1671, i64 8
  %1686 = bitcast i8* %1685 to i64*
  store i64 %1680, i64* %1686, align 1
  store %struct.Memory* %loadMem_40071c, %struct.Memory** %MEMORY
  %loadMem_400720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 33
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1689 to i64*
  %1690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1691 = getelementptr inbounds %struct.GPR, %struct.GPR* %1690, i32 0, i32 7
  %1692 = getelementptr inbounds %struct.Reg, %struct.Reg* %1691, i32 0, i32 0
  %RDX.i740 = bitcast %union.anon* %1692 to i64*
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1694 = getelementptr inbounds %struct.GPR, %struct.GPR* %1693, i32 0, i32 15
  %1695 = getelementptr inbounds %struct.Reg, %struct.Reg* %1694, i32 0, i32 0
  %RBP.i741 = bitcast %union.anon* %1695 to i64*
  %1696 = load i64, i64* %RBP.i741
  %1697 = sub i64 %1696, 16
  %1698 = load i64, i64* %PC.i739
  %1699 = add i64 %1698, 4
  store i64 %1699, i64* %PC.i739
  %1700 = inttoptr i64 %1697 to i64*
  %1701 = load i64, i64* %1700
  store i64 %1701, i64* %RDX.i740, align 8
  store %struct.Memory* %loadMem_400720, %struct.Memory** %MEMORY
  %loadMem_400724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 33
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 7
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RDX.i737 = bitcast %union.anon* %1707 to i64*
  %1708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1709 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1708, i64 0, i64 1
  %YMM1.i738 = bitcast %union.VectorReg* %1709 to %"class.std::bitset"*
  %1710 = bitcast %"class.std::bitset"* %YMM1.i738 to i8*
  %1711 = load i64, i64* %RDX.i737
  %1712 = add i64 %1711, 40
  %1713 = load i64, i64* %PC.i736
  %1714 = add i64 %1713, 5
  store i64 %1714, i64* %PC.i736
  %1715 = inttoptr i64 %1712 to double*
  %1716 = load double, double* %1715
  %1717 = bitcast i8* %1710 to double*
  store double %1716, double* %1717, align 1
  %1718 = getelementptr inbounds i8, i8* %1710, i64 8
  %1719 = bitcast i8* %1718 to double*
  store double 0.000000e+00, double* %1719, align 1
  store %struct.Memory* %loadMem_400724, %struct.Memory** %MEMORY
  %loadMem_400729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1721 = getelementptr inbounds %struct.GPR, %struct.GPR* %1720, i32 0, i32 33
  %1722 = getelementptr inbounds %struct.Reg, %struct.Reg* %1721, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1722 to i64*
  %1723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1724 = getelementptr inbounds %struct.GPR, %struct.GPR* %1723, i32 0, i32 7
  %1725 = getelementptr inbounds %struct.Reg, %struct.Reg* %1724, i32 0, i32 0
  %RDX.i734 = bitcast %union.anon* %1725 to i64*
  %1726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1727 = getelementptr inbounds %struct.GPR, %struct.GPR* %1726, i32 0, i32 15
  %1728 = getelementptr inbounds %struct.Reg, %struct.Reg* %1727, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1728 to i64*
  %1729 = load i64, i64* %RBP.i735
  %1730 = sub i64 %1729, 24
  %1731 = load i64, i64* %PC.i733
  %1732 = add i64 %1731, 4
  store i64 %1732, i64* %PC.i733
  %1733 = inttoptr i64 %1730 to i64*
  %1734 = load i64, i64* %1733
  store i64 %1734, i64* %RDX.i734, align 8
  store %struct.Memory* %loadMem_400729, %struct.Memory** %MEMORY
  %loadMem_40072d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 33
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1737 to i64*
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 7
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %RDX.i731 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1742 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1741, i64 0, i64 1
  %YMM1.i732 = bitcast %union.VectorReg* %1742 to %"class.std::bitset"*
  %1743 = bitcast %"class.std::bitset"* %YMM1.i732 to i8*
  %1744 = bitcast %"class.std::bitset"* %YMM1.i732 to i8*
  %1745 = load i64, i64* %RDX.i731
  %1746 = add i64 %1745, 32
  %1747 = load i64, i64* %PC.i730
  %1748 = add i64 %1747, 5
  store i64 %1748, i64* %PC.i730
  %1749 = bitcast i8* %1744 to double*
  %1750 = load double, double* %1749, align 1
  %1751 = getelementptr inbounds i8, i8* %1744, i64 8
  %1752 = bitcast i8* %1751 to i64*
  %1753 = load i64, i64* %1752, align 1
  %1754 = inttoptr i64 %1746 to double*
  %1755 = load double, double* %1754
  %1756 = fmul double %1750, %1755
  %1757 = bitcast i8* %1743 to double*
  store double %1756, double* %1757, align 1
  %1758 = getelementptr inbounds i8, i8* %1743, i64 8
  %1759 = bitcast i8* %1758 to i64*
  store i64 %1753, i64* %1759, align 1
  store %struct.Memory* %loadMem_40072d, %struct.Memory** %MEMORY
  %loadMem_400732 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1762 to i64*
  %1763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1764 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1763, i64 0, i64 0
  %YMM0.i728 = bitcast %union.VectorReg* %1764 to %"class.std::bitset"*
  %1765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1766 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1765, i64 0, i64 1
  %XMM1.i729 = bitcast %union.VectorReg* %1766 to %union.vec128_t*
  %1767 = bitcast %"class.std::bitset"* %YMM0.i728 to i8*
  %1768 = bitcast %"class.std::bitset"* %YMM0.i728 to i8*
  %1769 = bitcast %union.vec128_t* %XMM1.i729 to i8*
  %1770 = load i64, i64* %PC.i727
  %1771 = add i64 %1770, 4
  store i64 %1771, i64* %PC.i727
  %1772 = bitcast i8* %1768 to double*
  %1773 = load double, double* %1772, align 1
  %1774 = getelementptr inbounds i8, i8* %1768, i64 8
  %1775 = bitcast i8* %1774 to i64*
  %1776 = load i64, i64* %1775, align 1
  %1777 = bitcast i8* %1769 to double*
  %1778 = load double, double* %1777, align 1
  %1779 = fadd double %1773, %1778
  %1780 = bitcast i8* %1767 to double*
  store double %1779, double* %1780, align 1
  %1781 = getelementptr inbounds i8, i8* %1767, i64 8
  %1782 = bitcast i8* %1781 to i64*
  store i64 %1776, i64* %1782, align 1
  store %struct.Memory* %loadMem_400732, %struct.Memory** %MEMORY
  %loadMem_400736 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1783 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1784 = getelementptr inbounds %struct.GPR, %struct.GPR* %1783, i32 0, i32 33
  %1785 = getelementptr inbounds %struct.Reg, %struct.Reg* %1784, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1785 to i64*
  %1786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1787 = getelementptr inbounds %struct.GPR, %struct.GPR* %1786, i32 0, i32 7
  %1788 = getelementptr inbounds %struct.Reg, %struct.Reg* %1787, i32 0, i32 0
  %RDX.i725 = bitcast %union.anon* %1788 to i64*
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1790 = getelementptr inbounds %struct.GPR, %struct.GPR* %1789, i32 0, i32 15
  %1791 = getelementptr inbounds %struct.Reg, %struct.Reg* %1790, i32 0, i32 0
  %RBP.i726 = bitcast %union.anon* %1791 to i64*
  %1792 = load i64, i64* %RBP.i726
  %1793 = sub i64 %1792, 16
  %1794 = load i64, i64* %PC.i724
  %1795 = add i64 %1794, 4
  store i64 %1795, i64* %PC.i724
  %1796 = inttoptr i64 %1793 to i64*
  %1797 = load i64, i64* %1796
  store i64 %1797, i64* %RDX.i725, align 8
  store %struct.Memory* %loadMem_400736, %struct.Memory** %MEMORY
  %loadMem_40073a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1799 = getelementptr inbounds %struct.GPR, %struct.GPR* %1798, i32 0, i32 33
  %1800 = getelementptr inbounds %struct.Reg, %struct.Reg* %1799, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1800 to i64*
  %1801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1802 = getelementptr inbounds %struct.GPR, %struct.GPR* %1801, i32 0, i32 7
  %1803 = getelementptr inbounds %struct.Reg, %struct.Reg* %1802, i32 0, i32 0
  %RDX.i722 = bitcast %union.anon* %1803 to i64*
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1805 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1804, i64 0, i64 1
  %YMM1.i723 = bitcast %union.VectorReg* %1805 to %"class.std::bitset"*
  %1806 = bitcast %"class.std::bitset"* %YMM1.i723 to i8*
  %1807 = load i64, i64* %RDX.i722
  %1808 = add i64 %1807, 48
  %1809 = load i64, i64* %PC.i721
  %1810 = add i64 %1809, 5
  store i64 %1810, i64* %PC.i721
  %1811 = inttoptr i64 %1808 to double*
  %1812 = load double, double* %1811
  %1813 = bitcast i8* %1806 to double*
  store double %1812, double* %1813, align 1
  %1814 = getelementptr inbounds i8, i8* %1806, i64 8
  %1815 = bitcast i8* %1814 to double*
  store double 0.000000e+00, double* %1815, align 1
  store %struct.Memory* %loadMem_40073a, %struct.Memory** %MEMORY
  %loadMem_40073f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1817 = getelementptr inbounds %struct.GPR, %struct.GPR* %1816, i32 0, i32 33
  %1818 = getelementptr inbounds %struct.Reg, %struct.Reg* %1817, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1818 to i64*
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 7
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %RDX.i719 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 15
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1824 to i64*
  %1825 = load i64, i64* %RBP.i720
  %1826 = sub i64 %1825, 24
  %1827 = load i64, i64* %PC.i718
  %1828 = add i64 %1827, 4
  store i64 %1828, i64* %PC.i718
  %1829 = inttoptr i64 %1826 to i64*
  %1830 = load i64, i64* %1829
  store i64 %1830, i64* %RDX.i719, align 8
  store %struct.Memory* %loadMem_40073f, %struct.Memory** %MEMORY
  %loadMem_400743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1832 = getelementptr inbounds %struct.GPR, %struct.GPR* %1831, i32 0, i32 33
  %1833 = getelementptr inbounds %struct.Reg, %struct.Reg* %1832, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1833 to i64*
  %1834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1835 = getelementptr inbounds %struct.GPR, %struct.GPR* %1834, i32 0, i32 7
  %1836 = getelementptr inbounds %struct.Reg, %struct.Reg* %1835, i32 0, i32 0
  %RDX.i716 = bitcast %union.anon* %1836 to i64*
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1838 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1837, i64 0, i64 1
  %YMM1.i717 = bitcast %union.VectorReg* %1838 to %"class.std::bitset"*
  %1839 = bitcast %"class.std::bitset"* %YMM1.i717 to i8*
  %1840 = bitcast %"class.std::bitset"* %YMM1.i717 to i8*
  %1841 = load i64, i64* %RDX.i716
  %1842 = add i64 %1841, 64
  %1843 = load i64, i64* %PC.i715
  %1844 = add i64 %1843, 5
  store i64 %1844, i64* %PC.i715
  %1845 = bitcast i8* %1840 to double*
  %1846 = load double, double* %1845, align 1
  %1847 = getelementptr inbounds i8, i8* %1840, i64 8
  %1848 = bitcast i8* %1847 to i64*
  %1849 = load i64, i64* %1848, align 1
  %1850 = inttoptr i64 %1842 to double*
  %1851 = load double, double* %1850
  %1852 = fmul double %1846, %1851
  %1853 = bitcast i8* %1839 to double*
  store double %1852, double* %1853, align 1
  %1854 = getelementptr inbounds i8, i8* %1839, i64 8
  %1855 = bitcast i8* %1854 to i64*
  store i64 %1849, i64* %1855, align 1
  store %struct.Memory* %loadMem_400743, %struct.Memory** %MEMORY
  %loadMem_400748 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1857 = getelementptr inbounds %struct.GPR, %struct.GPR* %1856, i32 0, i32 33
  %1858 = getelementptr inbounds %struct.Reg, %struct.Reg* %1857, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1858 to i64*
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1860 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1859, i64 0, i64 0
  %YMM0.i713 = bitcast %union.VectorReg* %1860 to %"class.std::bitset"*
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1862 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1861, i64 0, i64 1
  %XMM1.i714 = bitcast %union.VectorReg* %1862 to %union.vec128_t*
  %1863 = bitcast %"class.std::bitset"* %YMM0.i713 to i8*
  %1864 = bitcast %"class.std::bitset"* %YMM0.i713 to i8*
  %1865 = bitcast %union.vec128_t* %XMM1.i714 to i8*
  %1866 = load i64, i64* %PC.i712
  %1867 = add i64 %1866, 4
  store i64 %1867, i64* %PC.i712
  %1868 = bitcast i8* %1864 to double*
  %1869 = load double, double* %1868, align 1
  %1870 = getelementptr inbounds i8, i8* %1864, i64 8
  %1871 = bitcast i8* %1870 to i64*
  %1872 = load i64, i64* %1871, align 1
  %1873 = bitcast i8* %1865 to double*
  %1874 = load double, double* %1873, align 1
  %1875 = fadd double %1869, %1874
  %1876 = bitcast i8* %1863 to double*
  store double %1875, double* %1876, align 1
  %1877 = getelementptr inbounds i8, i8* %1863, i64 8
  %1878 = bitcast i8* %1877 to i64*
  store i64 %1872, i64* %1878, align 1
  store %struct.Memory* %loadMem_400748, %struct.Memory** %MEMORY
  %loadMem_40074c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1880 = getelementptr inbounds %struct.GPR, %struct.GPR* %1879, i32 0, i32 33
  %1881 = getelementptr inbounds %struct.Reg, %struct.Reg* %1880, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1881 to i64*
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 7
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %RDX.i710 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 15
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %RBP.i711
  %1889 = sub i64 %1888, 16
  %1890 = load i64, i64* %PC.i709
  %1891 = add i64 %1890, 4
  store i64 %1891, i64* %PC.i709
  %1892 = inttoptr i64 %1889 to i64*
  %1893 = load i64, i64* %1892
  store i64 %1893, i64* %RDX.i710, align 8
  store %struct.Memory* %loadMem_40074c, %struct.Memory** %MEMORY
  %loadMem_400750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1895 = getelementptr inbounds %struct.GPR, %struct.GPR* %1894, i32 0, i32 33
  %1896 = getelementptr inbounds %struct.Reg, %struct.Reg* %1895, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1896 to i64*
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 7
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %RDX.i707 = bitcast %union.anon* %1899 to i64*
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1901 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1900, i64 0, i64 1
  %YMM1.i708 = bitcast %union.VectorReg* %1901 to %"class.std::bitset"*
  %1902 = bitcast %"class.std::bitset"* %YMM1.i708 to i8*
  %1903 = load i64, i64* %RDX.i707
  %1904 = add i64 %1903, 56
  %1905 = load i64, i64* %PC.i706
  %1906 = add i64 %1905, 5
  store i64 %1906, i64* %PC.i706
  %1907 = inttoptr i64 %1904 to double*
  %1908 = load double, double* %1907
  %1909 = bitcast i8* %1902 to double*
  store double %1908, double* %1909, align 1
  %1910 = getelementptr inbounds i8, i8* %1902, i64 8
  %1911 = bitcast i8* %1910 to double*
  store double 0.000000e+00, double* %1911, align 1
  store %struct.Memory* %loadMem_400750, %struct.Memory** %MEMORY
  %loadMem_400755 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 33
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 7
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RDX.i704 = bitcast %union.anon* %1917 to i64*
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1919 = getelementptr inbounds %struct.GPR, %struct.GPR* %1918, i32 0, i32 15
  %1920 = getelementptr inbounds %struct.Reg, %struct.Reg* %1919, i32 0, i32 0
  %RBP.i705 = bitcast %union.anon* %1920 to i64*
  %1921 = load i64, i64* %RBP.i705
  %1922 = sub i64 %1921, 24
  %1923 = load i64, i64* %PC.i703
  %1924 = add i64 %1923, 4
  store i64 %1924, i64* %PC.i703
  %1925 = inttoptr i64 %1922 to i64*
  %1926 = load i64, i64* %1925
  store i64 %1926, i64* %RDX.i704, align 8
  store %struct.Memory* %loadMem_400755, %struct.Memory** %MEMORY
  %loadMem_400759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 33
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %PC.i700 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 7
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RDX.i701 = bitcast %union.anon* %1932 to i64*
  %1933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1934 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1933, i64 0, i64 1
  %YMM1.i702 = bitcast %union.VectorReg* %1934 to %"class.std::bitset"*
  %1935 = bitcast %"class.std::bitset"* %YMM1.i702 to i8*
  %1936 = bitcast %"class.std::bitset"* %YMM1.i702 to i8*
  %1937 = load i64, i64* %RDX.i701
  %1938 = add i64 %1937, 96
  %1939 = load i64, i64* %PC.i700
  %1940 = add i64 %1939, 5
  store i64 %1940, i64* %PC.i700
  %1941 = bitcast i8* %1936 to double*
  %1942 = load double, double* %1941, align 1
  %1943 = getelementptr inbounds i8, i8* %1936, i64 8
  %1944 = bitcast i8* %1943 to i64*
  %1945 = load i64, i64* %1944, align 1
  %1946 = inttoptr i64 %1938 to double*
  %1947 = load double, double* %1946
  %1948 = fmul double %1942, %1947
  %1949 = bitcast i8* %1935 to double*
  store double %1948, double* %1949, align 1
  %1950 = getelementptr inbounds i8, i8* %1935, i64 8
  %1951 = bitcast i8* %1950 to i64*
  store i64 %1945, i64* %1951, align 1
  store %struct.Memory* %loadMem_400759, %struct.Memory** %MEMORY
  %loadMem_40075e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1953 = getelementptr inbounds %struct.GPR, %struct.GPR* %1952, i32 0, i32 33
  %1954 = getelementptr inbounds %struct.Reg, %struct.Reg* %1953, i32 0, i32 0
  %PC.i697 = bitcast %union.anon* %1954 to i64*
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1956 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1955, i64 0, i64 0
  %YMM0.i698 = bitcast %union.VectorReg* %1956 to %"class.std::bitset"*
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1958 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1957, i64 0, i64 1
  %XMM1.i699 = bitcast %union.VectorReg* %1958 to %union.vec128_t*
  %1959 = bitcast %"class.std::bitset"* %YMM0.i698 to i8*
  %1960 = bitcast %"class.std::bitset"* %YMM0.i698 to i8*
  %1961 = bitcast %union.vec128_t* %XMM1.i699 to i8*
  %1962 = load i64, i64* %PC.i697
  %1963 = add i64 %1962, 4
  store i64 %1963, i64* %PC.i697
  %1964 = bitcast i8* %1960 to double*
  %1965 = load double, double* %1964, align 1
  %1966 = getelementptr inbounds i8, i8* %1960, i64 8
  %1967 = bitcast i8* %1966 to i64*
  %1968 = load i64, i64* %1967, align 1
  %1969 = bitcast i8* %1961 to double*
  %1970 = load double, double* %1969, align 1
  %1971 = fadd double %1965, %1970
  %1972 = bitcast i8* %1959 to double*
  store double %1971, double* %1972, align 1
  %1973 = getelementptr inbounds i8, i8* %1959, i64 8
  %1974 = bitcast i8* %1973 to i64*
  store i64 %1968, i64* %1974, align 1
  store %struct.Memory* %loadMem_40075e, %struct.Memory** %MEMORY
  %loadMem_400762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 15
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %RBP.i695 = bitcast %union.anon* %1980 to i64*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1982 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1981, i64 0, i64 0
  %XMM0.i696 = bitcast %union.VectorReg* %1982 to %union.vec128_t*
  %1983 = load i64, i64* %RBP.i695
  %1984 = sub i64 %1983, 128
  %1985 = bitcast %union.vec128_t* %XMM0.i696 to i8*
  %1986 = load i64, i64* %PC.i694
  %1987 = add i64 %1986, 5
  store i64 %1987, i64* %PC.i694
  %1988 = bitcast i8* %1985 to double*
  %1989 = load double, double* %1988, align 1
  %1990 = inttoptr i64 %1984 to double*
  store double %1989, double* %1990
  store %struct.Memory* %loadMem_400762, %struct.Memory** %MEMORY
  %loadMem_400767 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1993 to i64*
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 7
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %RDX.i692 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 15
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1999 to i64*
  %2000 = load i64, i64* %RBP.i693
  %2001 = sub i64 %2000, 16
  %2002 = load i64, i64* %PC.i691
  %2003 = add i64 %2002, 4
  store i64 %2003, i64* %PC.i691
  %2004 = inttoptr i64 %2001 to i64*
  %2005 = load i64, i64* %2004
  store i64 %2005, i64* %RDX.i692, align 8
  store %struct.Memory* %loadMem_400767, %struct.Memory** %MEMORY
  %loadMem_40076b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2007 = getelementptr inbounds %struct.GPR, %struct.GPR* %2006, i32 0, i32 33
  %2008 = getelementptr inbounds %struct.Reg, %struct.Reg* %2007, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2008 to i64*
  %2009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2010 = getelementptr inbounds %struct.GPR, %struct.GPR* %2009, i32 0, i32 7
  %2011 = getelementptr inbounds %struct.Reg, %struct.Reg* %2010, i32 0, i32 0
  %RDX.i689 = bitcast %union.anon* %2011 to i64*
  %2012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2013 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2012, i64 0, i64 0
  %YMM0.i690 = bitcast %union.VectorReg* %2013 to %"class.std::bitset"*
  %2014 = bitcast %"class.std::bitset"* %YMM0.i690 to i8*
  %2015 = load i64, i64* %RDX.i689
  %2016 = add i64 %2015, 32
  %2017 = load i64, i64* %PC.i688
  %2018 = add i64 %2017, 5
  store i64 %2018, i64* %PC.i688
  %2019 = inttoptr i64 %2016 to double*
  %2020 = load double, double* %2019
  %2021 = bitcast i8* %2014 to double*
  store double %2020, double* %2021, align 1
  %2022 = getelementptr inbounds i8, i8* %2014, i64 8
  %2023 = bitcast i8* %2022 to double*
  store double 0.000000e+00, double* %2023, align 1
  store %struct.Memory* %loadMem_40076b, %struct.Memory** %MEMORY
  %loadMem_400770 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 7
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RDX.i686 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 15
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %2032 to i64*
  %2033 = load i64, i64* %RBP.i687
  %2034 = sub i64 %2033, 24
  %2035 = load i64, i64* %PC.i685
  %2036 = add i64 %2035, 4
  store i64 %2036, i64* %PC.i685
  %2037 = inttoptr i64 %2034 to i64*
  %2038 = load i64, i64* %2037
  store i64 %2038, i64* %RDX.i686, align 8
  store %struct.Memory* %loadMem_400770, %struct.Memory** %MEMORY
  %loadMem_400774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 33
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %2041 to i64*
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 7
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %RDX.i683 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2045, i64 0, i64 0
  %YMM0.i684 = bitcast %union.VectorReg* %2046 to %"class.std::bitset"*
  %2047 = bitcast %"class.std::bitset"* %YMM0.i684 to i8*
  %2048 = bitcast %"class.std::bitset"* %YMM0.i684 to i8*
  %2049 = load i64, i64* %RDX.i683
  %2050 = add i64 %2049, 8
  %2051 = load i64, i64* %PC.i682
  %2052 = add i64 %2051, 5
  store i64 %2052, i64* %PC.i682
  %2053 = bitcast i8* %2048 to double*
  %2054 = load double, double* %2053, align 1
  %2055 = getelementptr inbounds i8, i8* %2048, i64 8
  %2056 = bitcast i8* %2055 to i64*
  %2057 = load i64, i64* %2056, align 1
  %2058 = inttoptr i64 %2050 to double*
  %2059 = load double, double* %2058
  %2060 = fmul double %2054, %2059
  %2061 = bitcast i8* %2047 to double*
  store double %2060, double* %2061, align 1
  %2062 = getelementptr inbounds i8, i8* %2047, i64 8
  %2063 = bitcast i8* %2062 to i64*
  store i64 %2057, i64* %2063, align 1
  store %struct.Memory* %loadMem_400774, %struct.Memory** %MEMORY
  %loadMem_400779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2065 = getelementptr inbounds %struct.GPR, %struct.GPR* %2064, i32 0, i32 33
  %2066 = getelementptr inbounds %struct.Reg, %struct.Reg* %2065, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2066 to i64*
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2068 = getelementptr inbounds %struct.GPR, %struct.GPR* %2067, i32 0, i32 7
  %2069 = getelementptr inbounds %struct.Reg, %struct.Reg* %2068, i32 0, i32 0
  %RDX.i680 = bitcast %union.anon* %2069 to i64*
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 15
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %RBP.i681 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %RBP.i681
  %2074 = sub i64 %2073, 16
  %2075 = load i64, i64* %PC.i679
  %2076 = add i64 %2075, 4
  store i64 %2076, i64* %PC.i679
  %2077 = inttoptr i64 %2074 to i64*
  %2078 = load i64, i64* %2077
  store i64 %2078, i64* %RDX.i680, align 8
  store %struct.Memory* %loadMem_400779, %struct.Memory** %MEMORY
  %loadMem_40077d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2080 = getelementptr inbounds %struct.GPR, %struct.GPR* %2079, i32 0, i32 33
  %2081 = getelementptr inbounds %struct.Reg, %struct.Reg* %2080, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2081 to i64*
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 7
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %RDX.i677 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2086 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2085, i64 0, i64 1
  %YMM1.i678 = bitcast %union.VectorReg* %2086 to %"class.std::bitset"*
  %2087 = bitcast %"class.std::bitset"* %YMM1.i678 to i8*
  %2088 = load i64, i64* %RDX.i677
  %2089 = add i64 %2088, 40
  %2090 = load i64, i64* %PC.i676
  %2091 = add i64 %2090, 5
  store i64 %2091, i64* %PC.i676
  %2092 = inttoptr i64 %2089 to double*
  %2093 = load double, double* %2092
  %2094 = bitcast i8* %2087 to double*
  store double %2093, double* %2094, align 1
  %2095 = getelementptr inbounds i8, i8* %2087, i64 8
  %2096 = bitcast i8* %2095 to double*
  store double 0.000000e+00, double* %2096, align 1
  store %struct.Memory* %loadMem_40077d, %struct.Memory** %MEMORY
  %loadMem_400782 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2098 = getelementptr inbounds %struct.GPR, %struct.GPR* %2097, i32 0, i32 33
  %2099 = getelementptr inbounds %struct.Reg, %struct.Reg* %2098, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2099 to i64*
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 7
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %RDX.i674 = bitcast %union.anon* %2102 to i64*
  %2103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2104 = getelementptr inbounds %struct.GPR, %struct.GPR* %2103, i32 0, i32 15
  %2105 = getelementptr inbounds %struct.Reg, %struct.Reg* %2104, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2105 to i64*
  %2106 = load i64, i64* %RBP.i675
  %2107 = sub i64 %2106, 24
  %2108 = load i64, i64* %PC.i673
  %2109 = add i64 %2108, 4
  store i64 %2109, i64* %PC.i673
  %2110 = inttoptr i64 %2107 to i64*
  %2111 = load i64, i64* %2110
  store i64 %2111, i64* %RDX.i674, align 8
  store %struct.Memory* %loadMem_400782, %struct.Memory** %MEMORY
  %loadMem_400786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 33
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %PC.i670 = bitcast %union.anon* %2114 to i64*
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2116 = getelementptr inbounds %struct.GPR, %struct.GPR* %2115, i32 0, i32 7
  %2117 = getelementptr inbounds %struct.Reg, %struct.Reg* %2116, i32 0, i32 0
  %RDX.i671 = bitcast %union.anon* %2117 to i64*
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2119 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2118, i64 0, i64 1
  %YMM1.i672 = bitcast %union.VectorReg* %2119 to %"class.std::bitset"*
  %2120 = bitcast %"class.std::bitset"* %YMM1.i672 to i8*
  %2121 = bitcast %"class.std::bitset"* %YMM1.i672 to i8*
  %2122 = load i64, i64* %RDX.i671
  %2123 = add i64 %2122, 40
  %2124 = load i64, i64* %PC.i670
  %2125 = add i64 %2124, 5
  store i64 %2125, i64* %PC.i670
  %2126 = bitcast i8* %2121 to double*
  %2127 = load double, double* %2126, align 1
  %2128 = getelementptr inbounds i8, i8* %2121, i64 8
  %2129 = bitcast i8* %2128 to i64*
  %2130 = load i64, i64* %2129, align 1
  %2131 = inttoptr i64 %2123 to double*
  %2132 = load double, double* %2131
  %2133 = fmul double %2127, %2132
  %2134 = bitcast i8* %2120 to double*
  store double %2133, double* %2134, align 1
  %2135 = getelementptr inbounds i8, i8* %2120, i64 8
  %2136 = bitcast i8* %2135 to i64*
  store i64 %2130, i64* %2136, align 1
  store %struct.Memory* %loadMem_400786, %struct.Memory** %MEMORY
  %loadMem_40078b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2138 = getelementptr inbounds %struct.GPR, %struct.GPR* %2137, i32 0, i32 33
  %2139 = getelementptr inbounds %struct.Reg, %struct.Reg* %2138, i32 0, i32 0
  %PC.i667 = bitcast %union.anon* %2139 to i64*
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2141 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2140, i64 0, i64 0
  %YMM0.i668 = bitcast %union.VectorReg* %2141 to %"class.std::bitset"*
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2143 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2142, i64 0, i64 1
  %XMM1.i669 = bitcast %union.VectorReg* %2143 to %union.vec128_t*
  %2144 = bitcast %"class.std::bitset"* %YMM0.i668 to i8*
  %2145 = bitcast %"class.std::bitset"* %YMM0.i668 to i8*
  %2146 = bitcast %union.vec128_t* %XMM1.i669 to i8*
  %2147 = load i64, i64* %PC.i667
  %2148 = add i64 %2147, 4
  store i64 %2148, i64* %PC.i667
  %2149 = bitcast i8* %2145 to double*
  %2150 = load double, double* %2149, align 1
  %2151 = getelementptr inbounds i8, i8* %2145, i64 8
  %2152 = bitcast i8* %2151 to i64*
  %2153 = load i64, i64* %2152, align 1
  %2154 = bitcast i8* %2146 to double*
  %2155 = load double, double* %2154, align 1
  %2156 = fadd double %2150, %2155
  %2157 = bitcast i8* %2144 to double*
  store double %2156, double* %2157, align 1
  %2158 = getelementptr inbounds i8, i8* %2144, i64 8
  %2159 = bitcast i8* %2158 to i64*
  store i64 %2153, i64* %2159, align 1
  store %struct.Memory* %loadMem_40078b, %struct.Memory** %MEMORY
  %loadMem_40078f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2161 = getelementptr inbounds %struct.GPR, %struct.GPR* %2160, i32 0, i32 33
  %2162 = getelementptr inbounds %struct.Reg, %struct.Reg* %2161, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2162 to i64*
  %2163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2164 = getelementptr inbounds %struct.GPR, %struct.GPR* %2163, i32 0, i32 7
  %2165 = getelementptr inbounds %struct.Reg, %struct.Reg* %2164, i32 0, i32 0
  %RDX.i665 = bitcast %union.anon* %2165 to i64*
  %2166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2167 = getelementptr inbounds %struct.GPR, %struct.GPR* %2166, i32 0, i32 15
  %2168 = getelementptr inbounds %struct.Reg, %struct.Reg* %2167, i32 0, i32 0
  %RBP.i666 = bitcast %union.anon* %2168 to i64*
  %2169 = load i64, i64* %RBP.i666
  %2170 = sub i64 %2169, 16
  %2171 = load i64, i64* %PC.i664
  %2172 = add i64 %2171, 4
  store i64 %2172, i64* %PC.i664
  %2173 = inttoptr i64 %2170 to i64*
  %2174 = load i64, i64* %2173
  store i64 %2174, i64* %RDX.i665, align 8
  store %struct.Memory* %loadMem_40078f, %struct.Memory** %MEMORY
  %loadMem_400793 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 7
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RDX.i662 = bitcast %union.anon* %2180 to i64*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2182 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2181, i64 0, i64 1
  %YMM1.i663 = bitcast %union.VectorReg* %2182 to %"class.std::bitset"*
  %2183 = bitcast %"class.std::bitset"* %YMM1.i663 to i8*
  %2184 = load i64, i64* %RDX.i662
  %2185 = add i64 %2184, 48
  %2186 = load i64, i64* %PC.i661
  %2187 = add i64 %2186, 5
  store i64 %2187, i64* %PC.i661
  %2188 = inttoptr i64 %2185 to double*
  %2189 = load double, double* %2188
  %2190 = bitcast i8* %2183 to double*
  store double %2189, double* %2190, align 1
  %2191 = getelementptr inbounds i8, i8* %2183, i64 8
  %2192 = bitcast i8* %2191 to double*
  store double 0.000000e+00, double* %2192, align 1
  store %struct.Memory* %loadMem_400793, %struct.Memory** %MEMORY
  %loadMem_400798 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 33
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %PC.i658 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 7
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %RDX.i659 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2200 = getelementptr inbounds %struct.GPR, %struct.GPR* %2199, i32 0, i32 15
  %2201 = getelementptr inbounds %struct.Reg, %struct.Reg* %2200, i32 0, i32 0
  %RBP.i660 = bitcast %union.anon* %2201 to i64*
  %2202 = load i64, i64* %RBP.i660
  %2203 = sub i64 %2202, 24
  %2204 = load i64, i64* %PC.i658
  %2205 = add i64 %2204, 4
  store i64 %2205, i64* %PC.i658
  %2206 = inttoptr i64 %2203 to i64*
  %2207 = load i64, i64* %2206
  store i64 %2207, i64* %RDX.i659, align 8
  store %struct.Memory* %loadMem_400798, %struct.Memory** %MEMORY
  %loadMem_40079c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 33
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %PC.i655 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 7
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RDX.i656 = bitcast %union.anon* %2213 to i64*
  %2214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2215 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2214, i64 0, i64 1
  %YMM1.i657 = bitcast %union.VectorReg* %2215 to %"class.std::bitset"*
  %2216 = bitcast %"class.std::bitset"* %YMM1.i657 to i8*
  %2217 = bitcast %"class.std::bitset"* %YMM1.i657 to i8*
  %2218 = load i64, i64* %RDX.i656
  %2219 = add i64 %2218, 72
  %2220 = load i64, i64* %PC.i655
  %2221 = add i64 %2220, 5
  store i64 %2221, i64* %PC.i655
  %2222 = bitcast i8* %2217 to double*
  %2223 = load double, double* %2222, align 1
  %2224 = getelementptr inbounds i8, i8* %2217, i64 8
  %2225 = bitcast i8* %2224 to i64*
  %2226 = load i64, i64* %2225, align 1
  %2227 = inttoptr i64 %2219 to double*
  %2228 = load double, double* %2227
  %2229 = fmul double %2223, %2228
  %2230 = bitcast i8* %2216 to double*
  store double %2229, double* %2230, align 1
  %2231 = getelementptr inbounds i8, i8* %2216, i64 8
  %2232 = bitcast i8* %2231 to i64*
  store i64 %2226, i64* %2232, align 1
  store %struct.Memory* %loadMem_40079c, %struct.Memory** %MEMORY
  %loadMem_4007a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i652 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2237 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2236, i64 0, i64 0
  %YMM0.i653 = bitcast %union.VectorReg* %2237 to %"class.std::bitset"*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2239 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2238, i64 0, i64 1
  %XMM1.i654 = bitcast %union.VectorReg* %2239 to %union.vec128_t*
  %2240 = bitcast %"class.std::bitset"* %YMM0.i653 to i8*
  %2241 = bitcast %"class.std::bitset"* %YMM0.i653 to i8*
  %2242 = bitcast %union.vec128_t* %XMM1.i654 to i8*
  %2243 = load i64, i64* %PC.i652
  %2244 = add i64 %2243, 4
  store i64 %2244, i64* %PC.i652
  %2245 = bitcast i8* %2241 to double*
  %2246 = load double, double* %2245, align 1
  %2247 = getelementptr inbounds i8, i8* %2241, i64 8
  %2248 = bitcast i8* %2247 to i64*
  %2249 = load i64, i64* %2248, align 1
  %2250 = bitcast i8* %2242 to double*
  %2251 = load double, double* %2250, align 1
  %2252 = fadd double %2246, %2251
  %2253 = bitcast i8* %2240 to double*
  store double %2252, double* %2253, align 1
  %2254 = getelementptr inbounds i8, i8* %2240, i64 8
  %2255 = bitcast i8* %2254 to i64*
  store i64 %2249, i64* %2255, align 1
  store %struct.Memory* %loadMem_4007a1, %struct.Memory** %MEMORY
  %loadMem_4007a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 7
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %RDX.i650 = bitcast %union.anon* %2261 to i64*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 15
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RBP.i651 = bitcast %union.anon* %2264 to i64*
  %2265 = load i64, i64* %RBP.i651
  %2266 = sub i64 %2265, 16
  %2267 = load i64, i64* %PC.i649
  %2268 = add i64 %2267, 4
  store i64 %2268, i64* %PC.i649
  %2269 = inttoptr i64 %2266 to i64*
  %2270 = load i64, i64* %2269
  store i64 %2270, i64* %RDX.i650, align 8
  store %struct.Memory* %loadMem_4007a5, %struct.Memory** %MEMORY
  %loadMem_4007a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 7
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RDX.i647 = bitcast %union.anon* %2276 to i64*
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2278 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2277, i64 0, i64 1
  %YMM1.i648 = bitcast %union.VectorReg* %2278 to %"class.std::bitset"*
  %2279 = bitcast %"class.std::bitset"* %YMM1.i648 to i8*
  %2280 = load i64, i64* %RDX.i647
  %2281 = add i64 %2280, 56
  %2282 = load i64, i64* %PC.i646
  %2283 = add i64 %2282, 5
  store i64 %2283, i64* %PC.i646
  %2284 = inttoptr i64 %2281 to double*
  %2285 = load double, double* %2284
  %2286 = bitcast i8* %2279 to double*
  store double %2285, double* %2286, align 1
  %2287 = getelementptr inbounds i8, i8* %2279, i64 8
  %2288 = bitcast i8* %2287 to double*
  store double 0.000000e+00, double* %2288, align 1
  store %struct.Memory* %loadMem_4007a9, %struct.Memory** %MEMORY
  %loadMem_4007ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 7
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RDX.i644 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i645
  %2299 = sub i64 %2298, 24
  %2300 = load i64, i64* %PC.i643
  %2301 = add i64 %2300, 4
  store i64 %2301, i64* %PC.i643
  %2302 = inttoptr i64 %2299 to i64*
  %2303 = load i64, i64* %2302
  store i64 %2303, i64* %RDX.i644, align 8
  store %struct.Memory* %loadMem_4007ae, %struct.Memory** %MEMORY
  %loadMem_4007b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2305 = getelementptr inbounds %struct.GPR, %struct.GPR* %2304, i32 0, i32 33
  %2306 = getelementptr inbounds %struct.Reg, %struct.Reg* %2305, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %2306 to i64*
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2308 = getelementptr inbounds %struct.GPR, %struct.GPR* %2307, i32 0, i32 7
  %2309 = getelementptr inbounds %struct.Reg, %struct.Reg* %2308, i32 0, i32 0
  %RDX.i641 = bitcast %union.anon* %2309 to i64*
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2310, i64 0, i64 1
  %YMM1.i642 = bitcast %union.VectorReg* %2311 to %"class.std::bitset"*
  %2312 = bitcast %"class.std::bitset"* %YMM1.i642 to i8*
  %2313 = bitcast %"class.std::bitset"* %YMM1.i642 to i8*
  %2314 = load i64, i64* %RDX.i641
  %2315 = add i64 %2314, 104
  %2316 = load i64, i64* %PC.i640
  %2317 = add i64 %2316, 5
  store i64 %2317, i64* %PC.i640
  %2318 = bitcast i8* %2313 to double*
  %2319 = load double, double* %2318, align 1
  %2320 = getelementptr inbounds i8, i8* %2313, i64 8
  %2321 = bitcast i8* %2320 to i64*
  %2322 = load i64, i64* %2321, align 1
  %2323 = inttoptr i64 %2315 to double*
  %2324 = load double, double* %2323
  %2325 = fmul double %2319, %2324
  %2326 = bitcast i8* %2312 to double*
  store double %2325, double* %2326, align 1
  %2327 = getelementptr inbounds i8, i8* %2312, i64 8
  %2328 = bitcast i8* %2327 to i64*
  store i64 %2322, i64* %2328, align 1
  store %struct.Memory* %loadMem_4007b2, %struct.Memory** %MEMORY
  %loadMem_4007b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2333 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2332, i64 0, i64 0
  %YMM0.i638 = bitcast %union.VectorReg* %2333 to %"class.std::bitset"*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2335 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2334, i64 0, i64 1
  %XMM1.i639 = bitcast %union.VectorReg* %2335 to %union.vec128_t*
  %2336 = bitcast %"class.std::bitset"* %YMM0.i638 to i8*
  %2337 = bitcast %"class.std::bitset"* %YMM0.i638 to i8*
  %2338 = bitcast %union.vec128_t* %XMM1.i639 to i8*
  %2339 = load i64, i64* %PC.i637
  %2340 = add i64 %2339, 4
  store i64 %2340, i64* %PC.i637
  %2341 = bitcast i8* %2337 to double*
  %2342 = load double, double* %2341, align 1
  %2343 = getelementptr inbounds i8, i8* %2337, i64 8
  %2344 = bitcast i8* %2343 to i64*
  %2345 = load i64, i64* %2344, align 1
  %2346 = bitcast i8* %2338 to double*
  %2347 = load double, double* %2346, align 1
  %2348 = fadd double %2342, %2347
  %2349 = bitcast i8* %2336 to double*
  store double %2348, double* %2349, align 1
  %2350 = getelementptr inbounds i8, i8* %2336, i64 8
  %2351 = bitcast i8* %2350 to i64*
  store i64 %2345, i64* %2351, align 1
  store %struct.Memory* %loadMem_4007b7, %struct.Memory** %MEMORY
  %loadMem_4007bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 33
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 15
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %2357 to i64*
  %2358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2359 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2358, i64 0, i64 0
  %XMM0.i636 = bitcast %union.VectorReg* %2359 to %union.vec128_t*
  %2360 = load i64, i64* %RBP.i635
  %2361 = sub i64 %2360, 120
  %2362 = bitcast %union.vec128_t* %XMM0.i636 to i8*
  %2363 = load i64, i64* %PC.i634
  %2364 = add i64 %2363, 5
  store i64 %2364, i64* %PC.i634
  %2365 = bitcast i8* %2362 to double*
  %2366 = load double, double* %2365, align 1
  %2367 = inttoptr i64 %2361 to double*
  store double %2366, double* %2367
  store %struct.Memory* %loadMem_4007bb, %struct.Memory** %MEMORY
  %loadMem_4007c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 33
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 7
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RDX.i632 = bitcast %union.anon* %2373 to i64*
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2375 = getelementptr inbounds %struct.GPR, %struct.GPR* %2374, i32 0, i32 15
  %2376 = getelementptr inbounds %struct.Reg, %struct.Reg* %2375, i32 0, i32 0
  %RBP.i633 = bitcast %union.anon* %2376 to i64*
  %2377 = load i64, i64* %RBP.i633
  %2378 = sub i64 %2377, 16
  %2379 = load i64, i64* %PC.i631
  %2380 = add i64 %2379, 4
  store i64 %2380, i64* %PC.i631
  %2381 = inttoptr i64 %2378 to i64*
  %2382 = load i64, i64* %2381
  store i64 %2382, i64* %RDX.i632, align 8
  store %struct.Memory* %loadMem_4007c0, %struct.Memory** %MEMORY
  %loadMem_4007c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2384 = getelementptr inbounds %struct.GPR, %struct.GPR* %2383, i32 0, i32 33
  %2385 = getelementptr inbounds %struct.Reg, %struct.Reg* %2384, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2385 to i64*
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2387 = getelementptr inbounds %struct.GPR, %struct.GPR* %2386, i32 0, i32 7
  %2388 = getelementptr inbounds %struct.Reg, %struct.Reg* %2387, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %2388 to i64*
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2390 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2389, i64 0, i64 0
  %YMM0.i630 = bitcast %union.VectorReg* %2390 to %"class.std::bitset"*
  %2391 = bitcast %"class.std::bitset"* %YMM0.i630 to i8*
  %2392 = load i64, i64* %RDX.i629
  %2393 = add i64 %2392, 32
  %2394 = load i64, i64* %PC.i628
  %2395 = add i64 %2394, 5
  store i64 %2395, i64* %PC.i628
  %2396 = inttoptr i64 %2393 to double*
  %2397 = load double, double* %2396
  %2398 = bitcast i8* %2391 to double*
  store double %2397, double* %2398, align 1
  %2399 = getelementptr inbounds i8, i8* %2391, i64 8
  %2400 = bitcast i8* %2399 to double*
  store double 0.000000e+00, double* %2400, align 1
  store %struct.Memory* %loadMem_4007c4, %struct.Memory** %MEMORY
  %loadMem_4007c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2402 = getelementptr inbounds %struct.GPR, %struct.GPR* %2401, i32 0, i32 33
  %2403 = getelementptr inbounds %struct.Reg, %struct.Reg* %2402, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2403 to i64*
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2405 = getelementptr inbounds %struct.GPR, %struct.GPR* %2404, i32 0, i32 7
  %2406 = getelementptr inbounds %struct.Reg, %struct.Reg* %2405, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %2406 to i64*
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2408 = getelementptr inbounds %struct.GPR, %struct.GPR* %2407, i32 0, i32 15
  %2409 = getelementptr inbounds %struct.Reg, %struct.Reg* %2408, i32 0, i32 0
  %RBP.i627 = bitcast %union.anon* %2409 to i64*
  %2410 = load i64, i64* %RBP.i627
  %2411 = sub i64 %2410, 24
  %2412 = load i64, i64* %PC.i625
  %2413 = add i64 %2412, 4
  store i64 %2413, i64* %PC.i625
  %2414 = inttoptr i64 %2411 to i64*
  %2415 = load i64, i64* %2414
  store i64 %2415, i64* %RDX.i626, align 8
  store %struct.Memory* %loadMem_4007c9, %struct.Memory** %MEMORY
  %loadMem_4007cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 33
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2418 to i64*
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 7
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %RDX.i623 = bitcast %union.anon* %2421 to i64*
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2423 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2422, i64 0, i64 0
  %YMM0.i624 = bitcast %union.VectorReg* %2423 to %"class.std::bitset"*
  %2424 = bitcast %"class.std::bitset"* %YMM0.i624 to i8*
  %2425 = bitcast %"class.std::bitset"* %YMM0.i624 to i8*
  %2426 = load i64, i64* %RDX.i623
  %2427 = add i64 %2426, 16
  %2428 = load i64, i64* %PC.i622
  %2429 = add i64 %2428, 5
  store i64 %2429, i64* %PC.i622
  %2430 = bitcast i8* %2425 to double*
  %2431 = load double, double* %2430, align 1
  %2432 = getelementptr inbounds i8, i8* %2425, i64 8
  %2433 = bitcast i8* %2432 to i64*
  %2434 = load i64, i64* %2433, align 1
  %2435 = inttoptr i64 %2427 to double*
  %2436 = load double, double* %2435
  %2437 = fmul double %2431, %2436
  %2438 = bitcast i8* %2424 to double*
  store double %2437, double* %2438, align 1
  %2439 = getelementptr inbounds i8, i8* %2424, i64 8
  %2440 = bitcast i8* %2439 to i64*
  store i64 %2434, i64* %2440, align 1
  store %struct.Memory* %loadMem_4007cd, %struct.Memory** %MEMORY
  %loadMem_4007d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 33
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2443 to i64*
  %2444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2445 = getelementptr inbounds %struct.GPR, %struct.GPR* %2444, i32 0, i32 7
  %2446 = getelementptr inbounds %struct.Reg, %struct.Reg* %2445, i32 0, i32 0
  %RDX.i620 = bitcast %union.anon* %2446 to i64*
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2448 = getelementptr inbounds %struct.GPR, %struct.GPR* %2447, i32 0, i32 15
  %2449 = getelementptr inbounds %struct.Reg, %struct.Reg* %2448, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %2449 to i64*
  %2450 = load i64, i64* %RBP.i621
  %2451 = sub i64 %2450, 16
  %2452 = load i64, i64* %PC.i619
  %2453 = add i64 %2452, 4
  store i64 %2453, i64* %PC.i619
  %2454 = inttoptr i64 %2451 to i64*
  %2455 = load i64, i64* %2454
  store i64 %2455, i64* %RDX.i620, align 8
  store %struct.Memory* %loadMem_4007d2, %struct.Memory** %MEMORY
  %loadMem_4007d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2457 = getelementptr inbounds %struct.GPR, %struct.GPR* %2456, i32 0, i32 33
  %2458 = getelementptr inbounds %struct.Reg, %struct.Reg* %2457, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2458 to i64*
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2460 = getelementptr inbounds %struct.GPR, %struct.GPR* %2459, i32 0, i32 7
  %2461 = getelementptr inbounds %struct.Reg, %struct.Reg* %2460, i32 0, i32 0
  %RDX.i617 = bitcast %union.anon* %2461 to i64*
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2462, i64 0, i64 1
  %YMM1.i618 = bitcast %union.VectorReg* %2463 to %"class.std::bitset"*
  %2464 = bitcast %"class.std::bitset"* %YMM1.i618 to i8*
  %2465 = load i64, i64* %RDX.i617
  %2466 = add i64 %2465, 40
  %2467 = load i64, i64* %PC.i616
  %2468 = add i64 %2467, 5
  store i64 %2468, i64* %PC.i616
  %2469 = inttoptr i64 %2466 to double*
  %2470 = load double, double* %2469
  %2471 = bitcast i8* %2464 to double*
  store double %2470, double* %2471, align 1
  %2472 = getelementptr inbounds i8, i8* %2464, i64 8
  %2473 = bitcast i8* %2472 to double*
  store double 0.000000e+00, double* %2473, align 1
  store %struct.Memory* %loadMem_4007d6, %struct.Memory** %MEMORY
  %loadMem_4007db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2475 = getelementptr inbounds %struct.GPR, %struct.GPR* %2474, i32 0, i32 33
  %2476 = getelementptr inbounds %struct.Reg, %struct.Reg* %2475, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2476 to i64*
  %2477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2478 = getelementptr inbounds %struct.GPR, %struct.GPR* %2477, i32 0, i32 7
  %2479 = getelementptr inbounds %struct.Reg, %struct.Reg* %2478, i32 0, i32 0
  %RDX.i614 = bitcast %union.anon* %2479 to i64*
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2481 = getelementptr inbounds %struct.GPR, %struct.GPR* %2480, i32 0, i32 15
  %2482 = getelementptr inbounds %struct.Reg, %struct.Reg* %2481, i32 0, i32 0
  %RBP.i615 = bitcast %union.anon* %2482 to i64*
  %2483 = load i64, i64* %RBP.i615
  %2484 = sub i64 %2483, 24
  %2485 = load i64, i64* %PC.i613
  %2486 = add i64 %2485, 4
  store i64 %2486, i64* %PC.i613
  %2487 = inttoptr i64 %2484 to i64*
  %2488 = load i64, i64* %2487
  store i64 %2488, i64* %RDX.i614, align 8
  store %struct.Memory* %loadMem_4007db, %struct.Memory** %MEMORY
  %loadMem_4007df = load %struct.Memory*, %struct.Memory** %MEMORY
  %2489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2490 = getelementptr inbounds %struct.GPR, %struct.GPR* %2489, i32 0, i32 33
  %2491 = getelementptr inbounds %struct.Reg, %struct.Reg* %2490, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2491 to i64*
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 7
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %RDX.i611 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2496 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2495, i64 0, i64 1
  %YMM1.i612 = bitcast %union.VectorReg* %2496 to %"class.std::bitset"*
  %2497 = bitcast %"class.std::bitset"* %YMM1.i612 to i8*
  %2498 = bitcast %"class.std::bitset"* %YMM1.i612 to i8*
  %2499 = load i64, i64* %RDX.i611
  %2500 = add i64 %2499, 48
  %2501 = load i64, i64* %PC.i610
  %2502 = add i64 %2501, 5
  store i64 %2502, i64* %PC.i610
  %2503 = bitcast i8* %2498 to double*
  %2504 = load double, double* %2503, align 1
  %2505 = getelementptr inbounds i8, i8* %2498, i64 8
  %2506 = bitcast i8* %2505 to i64*
  %2507 = load i64, i64* %2506, align 1
  %2508 = inttoptr i64 %2500 to double*
  %2509 = load double, double* %2508
  %2510 = fmul double %2504, %2509
  %2511 = bitcast i8* %2497 to double*
  store double %2510, double* %2511, align 1
  %2512 = getelementptr inbounds i8, i8* %2497, i64 8
  %2513 = bitcast i8* %2512 to i64*
  store i64 %2507, i64* %2513, align 1
  store %struct.Memory* %loadMem_4007df, %struct.Memory** %MEMORY
  %loadMem_4007e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 33
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2516 to i64*
  %2517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2518 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2517, i64 0, i64 0
  %YMM0.i608 = bitcast %union.VectorReg* %2518 to %"class.std::bitset"*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2520 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2519, i64 0, i64 1
  %XMM1.i609 = bitcast %union.VectorReg* %2520 to %union.vec128_t*
  %2521 = bitcast %"class.std::bitset"* %YMM0.i608 to i8*
  %2522 = bitcast %"class.std::bitset"* %YMM0.i608 to i8*
  %2523 = bitcast %union.vec128_t* %XMM1.i609 to i8*
  %2524 = load i64, i64* %PC.i607
  %2525 = add i64 %2524, 4
  store i64 %2525, i64* %PC.i607
  %2526 = bitcast i8* %2522 to double*
  %2527 = load double, double* %2526, align 1
  %2528 = getelementptr inbounds i8, i8* %2522, i64 8
  %2529 = bitcast i8* %2528 to i64*
  %2530 = load i64, i64* %2529, align 1
  %2531 = bitcast i8* %2523 to double*
  %2532 = load double, double* %2531, align 1
  %2533 = fadd double %2527, %2532
  %2534 = bitcast i8* %2521 to double*
  store double %2533, double* %2534, align 1
  %2535 = getelementptr inbounds i8, i8* %2521, i64 8
  %2536 = bitcast i8* %2535 to i64*
  store i64 %2530, i64* %2536, align 1
  store %struct.Memory* %loadMem_4007e4, %struct.Memory** %MEMORY
  %loadMem_4007e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2538 = getelementptr inbounds %struct.GPR, %struct.GPR* %2537, i32 0, i32 33
  %2539 = getelementptr inbounds %struct.Reg, %struct.Reg* %2538, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2539 to i64*
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 7
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %RDX.i605 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 15
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %2545 to i64*
  %2546 = load i64, i64* %RBP.i606
  %2547 = sub i64 %2546, 16
  %2548 = load i64, i64* %PC.i604
  %2549 = add i64 %2548, 4
  store i64 %2549, i64* %PC.i604
  %2550 = inttoptr i64 %2547 to i64*
  %2551 = load i64, i64* %2550
  store i64 %2551, i64* %RDX.i605, align 8
  store %struct.Memory* %loadMem_4007e8, %struct.Memory** %MEMORY
  %loadMem_4007ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2553 = getelementptr inbounds %struct.GPR, %struct.GPR* %2552, i32 0, i32 33
  %2554 = getelementptr inbounds %struct.Reg, %struct.Reg* %2553, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2554 to i64*
  %2555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2556 = getelementptr inbounds %struct.GPR, %struct.GPR* %2555, i32 0, i32 7
  %2557 = getelementptr inbounds %struct.Reg, %struct.Reg* %2556, i32 0, i32 0
  %RDX.i602 = bitcast %union.anon* %2557 to i64*
  %2558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2559 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2558, i64 0, i64 1
  %YMM1.i603 = bitcast %union.VectorReg* %2559 to %"class.std::bitset"*
  %2560 = bitcast %"class.std::bitset"* %YMM1.i603 to i8*
  %2561 = load i64, i64* %RDX.i602
  %2562 = add i64 %2561, 48
  %2563 = load i64, i64* %PC.i601
  %2564 = add i64 %2563, 5
  store i64 %2564, i64* %PC.i601
  %2565 = inttoptr i64 %2562 to double*
  %2566 = load double, double* %2565
  %2567 = bitcast i8* %2560 to double*
  store double %2566, double* %2567, align 1
  %2568 = getelementptr inbounds i8, i8* %2560, i64 8
  %2569 = bitcast i8* %2568 to double*
  store double 0.000000e+00, double* %2569, align 1
  store %struct.Memory* %loadMem_4007ec, %struct.Memory** %MEMORY
  %loadMem_4007f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 33
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %PC.i598 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 7
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RDX.i599 = bitcast %union.anon* %2575 to i64*
  %2576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2577 = getelementptr inbounds %struct.GPR, %struct.GPR* %2576, i32 0, i32 15
  %2578 = getelementptr inbounds %struct.Reg, %struct.Reg* %2577, i32 0, i32 0
  %RBP.i600 = bitcast %union.anon* %2578 to i64*
  %2579 = load i64, i64* %RBP.i600
  %2580 = sub i64 %2579, 24
  %2581 = load i64, i64* %PC.i598
  %2582 = add i64 %2581, 4
  store i64 %2582, i64* %PC.i598
  %2583 = inttoptr i64 %2580 to i64*
  %2584 = load i64, i64* %2583
  store i64 %2584, i64* %RDX.i599, align 8
  store %struct.Memory* %loadMem_4007f1, %struct.Memory** %MEMORY
  %loadMem_4007f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i595 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 7
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RDX.i596 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2592 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2591, i64 0, i64 1
  %YMM1.i597 = bitcast %union.VectorReg* %2592 to %"class.std::bitset"*
  %2593 = bitcast %"class.std::bitset"* %YMM1.i597 to i8*
  %2594 = bitcast %"class.std::bitset"* %YMM1.i597 to i8*
  %2595 = load i64, i64* %RDX.i596
  %2596 = add i64 %2595, 80
  %2597 = load i64, i64* %PC.i595
  %2598 = add i64 %2597, 5
  store i64 %2598, i64* %PC.i595
  %2599 = bitcast i8* %2594 to double*
  %2600 = load double, double* %2599, align 1
  %2601 = getelementptr inbounds i8, i8* %2594, i64 8
  %2602 = bitcast i8* %2601 to i64*
  %2603 = load i64, i64* %2602, align 1
  %2604 = inttoptr i64 %2596 to double*
  %2605 = load double, double* %2604
  %2606 = fmul double %2600, %2605
  %2607 = bitcast i8* %2593 to double*
  store double %2606, double* %2607, align 1
  %2608 = getelementptr inbounds i8, i8* %2593, i64 8
  %2609 = bitcast i8* %2608 to i64*
  store i64 %2603, i64* %2609, align 1
  store %struct.Memory* %loadMem_4007f5, %struct.Memory** %MEMORY
  %loadMem_4007fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2614 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2613, i64 0, i64 0
  %YMM0.i593 = bitcast %union.VectorReg* %2614 to %"class.std::bitset"*
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2616 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2615, i64 0, i64 1
  %XMM1.i594 = bitcast %union.VectorReg* %2616 to %union.vec128_t*
  %2617 = bitcast %"class.std::bitset"* %YMM0.i593 to i8*
  %2618 = bitcast %"class.std::bitset"* %YMM0.i593 to i8*
  %2619 = bitcast %union.vec128_t* %XMM1.i594 to i8*
  %2620 = load i64, i64* %PC.i592
  %2621 = add i64 %2620, 4
  store i64 %2621, i64* %PC.i592
  %2622 = bitcast i8* %2618 to double*
  %2623 = load double, double* %2622, align 1
  %2624 = getelementptr inbounds i8, i8* %2618, i64 8
  %2625 = bitcast i8* %2624 to i64*
  %2626 = load i64, i64* %2625, align 1
  %2627 = bitcast i8* %2619 to double*
  %2628 = load double, double* %2627, align 1
  %2629 = fadd double %2623, %2628
  %2630 = bitcast i8* %2617 to double*
  store double %2629, double* %2630, align 1
  %2631 = getelementptr inbounds i8, i8* %2617, i64 8
  %2632 = bitcast i8* %2631 to i64*
  store i64 %2626, i64* %2632, align 1
  store %struct.Memory* %loadMem_4007fa, %struct.Memory** %MEMORY
  %loadMem_4007fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 7
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RDX.i590 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i591
  %2643 = sub i64 %2642, 16
  %2644 = load i64, i64* %PC.i589
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i589
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RDX.i590, align 8
  store %struct.Memory* %loadMem_4007fe, %struct.Memory** %MEMORY
  %loadMem_400802 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 7
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RDX.i587 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2655 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2654, i64 0, i64 1
  %YMM1.i588 = bitcast %union.VectorReg* %2655 to %"class.std::bitset"*
  %2656 = bitcast %"class.std::bitset"* %YMM1.i588 to i8*
  %2657 = load i64, i64* %RDX.i587
  %2658 = add i64 %2657, 56
  %2659 = load i64, i64* %PC.i586
  %2660 = add i64 %2659, 5
  store i64 %2660, i64* %PC.i586
  %2661 = inttoptr i64 %2658 to double*
  %2662 = load double, double* %2661
  %2663 = bitcast i8* %2656 to double*
  store double %2662, double* %2663, align 1
  %2664 = getelementptr inbounds i8, i8* %2656, i64 8
  %2665 = bitcast i8* %2664 to double*
  store double 0.000000e+00, double* %2665, align 1
  store %struct.Memory* %loadMem_400802, %struct.Memory** %MEMORY
  %loadMem_400807 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2667 = getelementptr inbounds %struct.GPR, %struct.GPR* %2666, i32 0, i32 33
  %2668 = getelementptr inbounds %struct.Reg, %struct.Reg* %2667, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2668 to i64*
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2670 = getelementptr inbounds %struct.GPR, %struct.GPR* %2669, i32 0, i32 7
  %2671 = getelementptr inbounds %struct.Reg, %struct.Reg* %2670, i32 0, i32 0
  %RDX.i584 = bitcast %union.anon* %2671 to i64*
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 15
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %2674 to i64*
  %2675 = load i64, i64* %RBP.i585
  %2676 = sub i64 %2675, 24
  %2677 = load i64, i64* %PC.i583
  %2678 = add i64 %2677, 4
  store i64 %2678, i64* %PC.i583
  %2679 = inttoptr i64 %2676 to i64*
  %2680 = load i64, i64* %2679
  store i64 %2680, i64* %RDX.i584, align 8
  store %struct.Memory* %loadMem_400807, %struct.Memory** %MEMORY
  %loadMem_40080b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 33
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2683 to i64*
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 7
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %RDX.i581 = bitcast %union.anon* %2686 to i64*
  %2687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2688 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2687, i64 0, i64 1
  %YMM1.i582 = bitcast %union.VectorReg* %2688 to %"class.std::bitset"*
  %2689 = bitcast %"class.std::bitset"* %YMM1.i582 to i8*
  %2690 = bitcast %"class.std::bitset"* %YMM1.i582 to i8*
  %2691 = load i64, i64* %RDX.i581
  %2692 = add i64 %2691, 112
  %2693 = load i64, i64* %PC.i580
  %2694 = add i64 %2693, 5
  store i64 %2694, i64* %PC.i580
  %2695 = bitcast i8* %2690 to double*
  %2696 = load double, double* %2695, align 1
  %2697 = getelementptr inbounds i8, i8* %2690, i64 8
  %2698 = bitcast i8* %2697 to i64*
  %2699 = load i64, i64* %2698, align 1
  %2700 = inttoptr i64 %2692 to double*
  %2701 = load double, double* %2700
  %2702 = fmul double %2696, %2701
  %2703 = bitcast i8* %2689 to double*
  store double %2702, double* %2703, align 1
  %2704 = getelementptr inbounds i8, i8* %2689, i64 8
  %2705 = bitcast i8* %2704 to i64*
  store i64 %2699, i64* %2705, align 1
  store %struct.Memory* %loadMem_40080b, %struct.Memory** %MEMORY
  %loadMem_400810 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2707 = getelementptr inbounds %struct.GPR, %struct.GPR* %2706, i32 0, i32 33
  %2708 = getelementptr inbounds %struct.Reg, %struct.Reg* %2707, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2708 to i64*
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2710 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2709, i64 0, i64 0
  %YMM0.i578 = bitcast %union.VectorReg* %2710 to %"class.std::bitset"*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2712 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2711, i64 0, i64 1
  %XMM1.i579 = bitcast %union.VectorReg* %2712 to %union.vec128_t*
  %2713 = bitcast %"class.std::bitset"* %YMM0.i578 to i8*
  %2714 = bitcast %"class.std::bitset"* %YMM0.i578 to i8*
  %2715 = bitcast %union.vec128_t* %XMM1.i579 to i8*
  %2716 = load i64, i64* %PC.i577
  %2717 = add i64 %2716, 4
  store i64 %2717, i64* %PC.i577
  %2718 = bitcast i8* %2714 to double*
  %2719 = load double, double* %2718, align 1
  %2720 = getelementptr inbounds i8, i8* %2714, i64 8
  %2721 = bitcast i8* %2720 to i64*
  %2722 = load i64, i64* %2721, align 1
  %2723 = bitcast i8* %2715 to double*
  %2724 = load double, double* %2723, align 1
  %2725 = fadd double %2719, %2724
  %2726 = bitcast i8* %2713 to double*
  store double %2725, double* %2726, align 1
  %2727 = getelementptr inbounds i8, i8* %2713, i64 8
  %2728 = bitcast i8* %2727 to i64*
  store i64 %2722, i64* %2728, align 1
  store %struct.Memory* %loadMem_400810, %struct.Memory** %MEMORY
  %loadMem_400814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 15
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %RBP.i575 = bitcast %union.anon* %2734 to i64*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2736 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2735, i64 0, i64 0
  %XMM0.i576 = bitcast %union.VectorReg* %2736 to %union.vec128_t*
  %2737 = load i64, i64* %RBP.i575
  %2738 = sub i64 %2737, 112
  %2739 = bitcast %union.vec128_t* %XMM0.i576 to i8*
  %2740 = load i64, i64* %PC.i574
  %2741 = add i64 %2740, 5
  store i64 %2741, i64* %PC.i574
  %2742 = bitcast i8* %2739 to double*
  %2743 = load double, double* %2742, align 1
  %2744 = inttoptr i64 %2738 to double*
  store double %2743, double* %2744
  store %struct.Memory* %loadMem_400814, %struct.Memory** %MEMORY
  %loadMem_400819 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 7
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RDX.i572 = bitcast %union.anon* %2750 to i64*
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 15
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %RBP.i573
  %2755 = sub i64 %2754, 16
  %2756 = load i64, i64* %PC.i571
  %2757 = add i64 %2756, 4
  store i64 %2757, i64* %PC.i571
  %2758 = inttoptr i64 %2755 to i64*
  %2759 = load i64, i64* %2758
  store i64 %2759, i64* %RDX.i572, align 8
  store %struct.Memory* %loadMem_400819, %struct.Memory** %MEMORY
  %loadMem_40081d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2761 = getelementptr inbounds %struct.GPR, %struct.GPR* %2760, i32 0, i32 33
  %2762 = getelementptr inbounds %struct.Reg, %struct.Reg* %2761, i32 0, i32 0
  %PC.i568 = bitcast %union.anon* %2762 to i64*
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2764 = getelementptr inbounds %struct.GPR, %struct.GPR* %2763, i32 0, i32 7
  %2765 = getelementptr inbounds %struct.Reg, %struct.Reg* %2764, i32 0, i32 0
  %RDX.i569 = bitcast %union.anon* %2765 to i64*
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2767 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2766, i64 0, i64 0
  %YMM0.i570 = bitcast %union.VectorReg* %2767 to %"class.std::bitset"*
  %2768 = bitcast %"class.std::bitset"* %YMM0.i570 to i8*
  %2769 = load i64, i64* %RDX.i569
  %2770 = add i64 %2769, 32
  %2771 = load i64, i64* %PC.i568
  %2772 = add i64 %2771, 5
  store i64 %2772, i64* %PC.i568
  %2773 = inttoptr i64 %2770 to double*
  %2774 = load double, double* %2773
  %2775 = bitcast i8* %2768 to double*
  store double %2774, double* %2775, align 1
  %2776 = getelementptr inbounds i8, i8* %2768, i64 8
  %2777 = bitcast i8* %2776 to double*
  store double 0.000000e+00, double* %2777, align 1
  store %struct.Memory* %loadMem_40081d, %struct.Memory** %MEMORY
  %loadMem_400822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 33
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %2780 to i64*
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2782 = getelementptr inbounds %struct.GPR, %struct.GPR* %2781, i32 0, i32 7
  %2783 = getelementptr inbounds %struct.Reg, %struct.Reg* %2782, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %2783 to i64*
  %2784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2785 = getelementptr inbounds %struct.GPR, %struct.GPR* %2784, i32 0, i32 15
  %2786 = getelementptr inbounds %struct.Reg, %struct.Reg* %2785, i32 0, i32 0
  %RBP.i567 = bitcast %union.anon* %2786 to i64*
  %2787 = load i64, i64* %RBP.i567
  %2788 = sub i64 %2787, 24
  %2789 = load i64, i64* %PC.i565
  %2790 = add i64 %2789, 4
  store i64 %2790, i64* %PC.i565
  %2791 = inttoptr i64 %2788 to i64*
  %2792 = load i64, i64* %2791
  store i64 %2792, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_400822, %struct.Memory** %MEMORY
  %loadMem_400826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 33
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2795 to i64*
  %2796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2797 = getelementptr inbounds %struct.GPR, %struct.GPR* %2796, i32 0, i32 7
  %2798 = getelementptr inbounds %struct.Reg, %struct.Reg* %2797, i32 0, i32 0
  %RDX.i563 = bitcast %union.anon* %2798 to i64*
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2800 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2799, i64 0, i64 0
  %YMM0.i564 = bitcast %union.VectorReg* %2800 to %"class.std::bitset"*
  %2801 = bitcast %"class.std::bitset"* %YMM0.i564 to i8*
  %2802 = bitcast %"class.std::bitset"* %YMM0.i564 to i8*
  %2803 = load i64, i64* %RDX.i563
  %2804 = add i64 %2803, 24
  %2805 = load i64, i64* %PC.i562
  %2806 = add i64 %2805, 5
  store i64 %2806, i64* %PC.i562
  %2807 = bitcast i8* %2802 to double*
  %2808 = load double, double* %2807, align 1
  %2809 = getelementptr inbounds i8, i8* %2802, i64 8
  %2810 = bitcast i8* %2809 to i64*
  %2811 = load i64, i64* %2810, align 1
  %2812 = inttoptr i64 %2804 to double*
  %2813 = load double, double* %2812
  %2814 = fmul double %2808, %2813
  %2815 = bitcast i8* %2801 to double*
  store double %2814, double* %2815, align 1
  %2816 = getelementptr inbounds i8, i8* %2801, i64 8
  %2817 = bitcast i8* %2816 to i64*
  store i64 %2811, i64* %2817, align 1
  store %struct.Memory* %loadMem_400826, %struct.Memory** %MEMORY
  %loadMem_40082b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2820 to i64*
  %2821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2822 = getelementptr inbounds %struct.GPR, %struct.GPR* %2821, i32 0, i32 7
  %2823 = getelementptr inbounds %struct.Reg, %struct.Reg* %2822, i32 0, i32 0
  %RDX.i560 = bitcast %union.anon* %2823 to i64*
  %2824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2825 = getelementptr inbounds %struct.GPR, %struct.GPR* %2824, i32 0, i32 15
  %2826 = getelementptr inbounds %struct.Reg, %struct.Reg* %2825, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %2826 to i64*
  %2827 = load i64, i64* %RBP.i561
  %2828 = sub i64 %2827, 16
  %2829 = load i64, i64* %PC.i559
  %2830 = add i64 %2829, 4
  store i64 %2830, i64* %PC.i559
  %2831 = inttoptr i64 %2828 to i64*
  %2832 = load i64, i64* %2831
  store i64 %2832, i64* %RDX.i560, align 8
  store %struct.Memory* %loadMem_40082b, %struct.Memory** %MEMORY
  %loadMem_40082f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %2835 to i64*
  %2836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2837 = getelementptr inbounds %struct.GPR, %struct.GPR* %2836, i32 0, i32 7
  %2838 = getelementptr inbounds %struct.Reg, %struct.Reg* %2837, i32 0, i32 0
  %RDX.i557 = bitcast %union.anon* %2838 to i64*
  %2839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2839, i64 0, i64 1
  %YMM1.i558 = bitcast %union.VectorReg* %2840 to %"class.std::bitset"*
  %2841 = bitcast %"class.std::bitset"* %YMM1.i558 to i8*
  %2842 = load i64, i64* %RDX.i557
  %2843 = add i64 %2842, 40
  %2844 = load i64, i64* %PC.i556
  %2845 = add i64 %2844, 5
  store i64 %2845, i64* %PC.i556
  %2846 = inttoptr i64 %2843 to double*
  %2847 = load double, double* %2846
  %2848 = bitcast i8* %2841 to double*
  store double %2847, double* %2848, align 1
  %2849 = getelementptr inbounds i8, i8* %2841, i64 8
  %2850 = bitcast i8* %2849 to double*
  store double 0.000000e+00, double* %2850, align 1
  store %struct.Memory* %loadMem_40082f, %struct.Memory** %MEMORY
  %loadMem_400834 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2852 = getelementptr inbounds %struct.GPR, %struct.GPR* %2851, i32 0, i32 33
  %2853 = getelementptr inbounds %struct.Reg, %struct.Reg* %2852, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %2853 to i64*
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 7
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %RDX.i554 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 15
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %RBP.i555
  %2861 = sub i64 %2860, 24
  %2862 = load i64, i64* %PC.i553
  %2863 = add i64 %2862, 4
  store i64 %2863, i64* %PC.i553
  %2864 = inttoptr i64 %2861 to i64*
  %2865 = load i64, i64* %2864
  store i64 %2865, i64* %RDX.i554, align 8
  store %struct.Memory* %loadMem_400834, %struct.Memory** %MEMORY
  %loadMem_400838 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 33
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2868 to i64*
  %2869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2870 = getelementptr inbounds %struct.GPR, %struct.GPR* %2869, i32 0, i32 7
  %2871 = getelementptr inbounds %struct.Reg, %struct.Reg* %2870, i32 0, i32 0
  %RDX.i551 = bitcast %union.anon* %2871 to i64*
  %2872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2873 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2872, i64 0, i64 1
  %YMM1.i552 = bitcast %union.VectorReg* %2873 to %"class.std::bitset"*
  %2874 = bitcast %"class.std::bitset"* %YMM1.i552 to i8*
  %2875 = bitcast %"class.std::bitset"* %YMM1.i552 to i8*
  %2876 = load i64, i64* %RDX.i551
  %2877 = add i64 %2876, 56
  %2878 = load i64, i64* %PC.i550
  %2879 = add i64 %2878, 5
  store i64 %2879, i64* %PC.i550
  %2880 = bitcast i8* %2875 to double*
  %2881 = load double, double* %2880, align 1
  %2882 = getelementptr inbounds i8, i8* %2875, i64 8
  %2883 = bitcast i8* %2882 to i64*
  %2884 = load i64, i64* %2883, align 1
  %2885 = inttoptr i64 %2877 to double*
  %2886 = load double, double* %2885
  %2887 = fmul double %2881, %2886
  %2888 = bitcast i8* %2874 to double*
  store double %2887, double* %2888, align 1
  %2889 = getelementptr inbounds i8, i8* %2874, i64 8
  %2890 = bitcast i8* %2889 to i64*
  store i64 %2884, i64* %2890, align 1
  store %struct.Memory* %loadMem_400838, %struct.Memory** %MEMORY
  %loadMem_40083d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2892 = getelementptr inbounds %struct.GPR, %struct.GPR* %2891, i32 0, i32 33
  %2893 = getelementptr inbounds %struct.Reg, %struct.Reg* %2892, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2893 to i64*
  %2894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2895 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2894, i64 0, i64 0
  %YMM0.i548 = bitcast %union.VectorReg* %2895 to %"class.std::bitset"*
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2896, i64 0, i64 1
  %XMM1.i549 = bitcast %union.VectorReg* %2897 to %union.vec128_t*
  %2898 = bitcast %"class.std::bitset"* %YMM0.i548 to i8*
  %2899 = bitcast %"class.std::bitset"* %YMM0.i548 to i8*
  %2900 = bitcast %union.vec128_t* %XMM1.i549 to i8*
  %2901 = load i64, i64* %PC.i547
  %2902 = add i64 %2901, 4
  store i64 %2902, i64* %PC.i547
  %2903 = bitcast i8* %2899 to double*
  %2904 = load double, double* %2903, align 1
  %2905 = getelementptr inbounds i8, i8* %2899, i64 8
  %2906 = bitcast i8* %2905 to i64*
  %2907 = load i64, i64* %2906, align 1
  %2908 = bitcast i8* %2900 to double*
  %2909 = load double, double* %2908, align 1
  %2910 = fadd double %2904, %2909
  %2911 = bitcast i8* %2898 to double*
  store double %2910, double* %2911, align 1
  %2912 = getelementptr inbounds i8, i8* %2898, i64 8
  %2913 = bitcast i8* %2912 to i64*
  store i64 %2907, i64* %2913, align 1
  store %struct.Memory* %loadMem_40083d, %struct.Memory** %MEMORY
  %loadMem_400841 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 7
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 15
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RBP.i546
  %2924 = sub i64 %2923, 16
  %2925 = load i64, i64* %PC.i544
  %2926 = add i64 %2925, 4
  store i64 %2926, i64* %PC.i544
  %2927 = inttoptr i64 %2924 to i64*
  %2928 = load i64, i64* %2927
  store i64 %2928, i64* %RDX.i545, align 8
  store %struct.Memory* %loadMem_400841, %struct.Memory** %MEMORY
  %loadMem_400845 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2930 = getelementptr inbounds %struct.GPR, %struct.GPR* %2929, i32 0, i32 33
  %2931 = getelementptr inbounds %struct.Reg, %struct.Reg* %2930, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %2931 to i64*
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2933 = getelementptr inbounds %struct.GPR, %struct.GPR* %2932, i32 0, i32 7
  %2934 = getelementptr inbounds %struct.Reg, %struct.Reg* %2933, i32 0, i32 0
  %RDX.i542 = bitcast %union.anon* %2934 to i64*
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2936 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2935, i64 0, i64 1
  %YMM1.i543 = bitcast %union.VectorReg* %2936 to %"class.std::bitset"*
  %2937 = bitcast %"class.std::bitset"* %YMM1.i543 to i8*
  %2938 = load i64, i64* %RDX.i542
  %2939 = add i64 %2938, 48
  %2940 = load i64, i64* %PC.i541
  %2941 = add i64 %2940, 5
  store i64 %2941, i64* %PC.i541
  %2942 = inttoptr i64 %2939 to double*
  %2943 = load double, double* %2942
  %2944 = bitcast i8* %2937 to double*
  store double %2943, double* %2944, align 1
  %2945 = getelementptr inbounds i8, i8* %2937, i64 8
  %2946 = bitcast i8* %2945 to double*
  store double 0.000000e+00, double* %2946, align 1
  store %struct.Memory* %loadMem_400845, %struct.Memory** %MEMORY
  %loadMem_40084a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2948 = getelementptr inbounds %struct.GPR, %struct.GPR* %2947, i32 0, i32 33
  %2949 = getelementptr inbounds %struct.Reg, %struct.Reg* %2948, i32 0, i32 0
  %PC.i538 = bitcast %union.anon* %2949 to i64*
  %2950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2951 = getelementptr inbounds %struct.GPR, %struct.GPR* %2950, i32 0, i32 7
  %2952 = getelementptr inbounds %struct.Reg, %struct.Reg* %2951, i32 0, i32 0
  %RDX.i539 = bitcast %union.anon* %2952 to i64*
  %2953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2954 = getelementptr inbounds %struct.GPR, %struct.GPR* %2953, i32 0, i32 15
  %2955 = getelementptr inbounds %struct.Reg, %struct.Reg* %2954, i32 0, i32 0
  %RBP.i540 = bitcast %union.anon* %2955 to i64*
  %2956 = load i64, i64* %RBP.i540
  %2957 = sub i64 %2956, 24
  %2958 = load i64, i64* %PC.i538
  %2959 = add i64 %2958, 4
  store i64 %2959, i64* %PC.i538
  %2960 = inttoptr i64 %2957 to i64*
  %2961 = load i64, i64* %2960
  store i64 %2961, i64* %RDX.i539, align 8
  store %struct.Memory* %loadMem_40084a, %struct.Memory** %MEMORY
  %loadMem_40084e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2963 = getelementptr inbounds %struct.GPR, %struct.GPR* %2962, i32 0, i32 33
  %2964 = getelementptr inbounds %struct.Reg, %struct.Reg* %2963, i32 0, i32 0
  %PC.i535 = bitcast %union.anon* %2964 to i64*
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2966 = getelementptr inbounds %struct.GPR, %struct.GPR* %2965, i32 0, i32 7
  %2967 = getelementptr inbounds %struct.Reg, %struct.Reg* %2966, i32 0, i32 0
  %RDX.i536 = bitcast %union.anon* %2967 to i64*
  %2968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2969 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2968, i64 0, i64 1
  %YMM1.i537 = bitcast %union.VectorReg* %2969 to %"class.std::bitset"*
  %2970 = bitcast %"class.std::bitset"* %YMM1.i537 to i8*
  %2971 = bitcast %"class.std::bitset"* %YMM1.i537 to i8*
  %2972 = load i64, i64* %RDX.i536
  %2973 = add i64 %2972, 88
  %2974 = load i64, i64* %PC.i535
  %2975 = add i64 %2974, 5
  store i64 %2975, i64* %PC.i535
  %2976 = bitcast i8* %2971 to double*
  %2977 = load double, double* %2976, align 1
  %2978 = getelementptr inbounds i8, i8* %2971, i64 8
  %2979 = bitcast i8* %2978 to i64*
  %2980 = load i64, i64* %2979, align 1
  %2981 = inttoptr i64 %2973 to double*
  %2982 = load double, double* %2981
  %2983 = fmul double %2977, %2982
  %2984 = bitcast i8* %2970 to double*
  store double %2983, double* %2984, align 1
  %2985 = getelementptr inbounds i8, i8* %2970, i64 8
  %2986 = bitcast i8* %2985 to i64*
  store i64 %2980, i64* %2986, align 1
  store %struct.Memory* %loadMem_40084e, %struct.Memory** %MEMORY
  %loadMem_400853 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2990, i64 0, i64 0
  %YMM0.i533 = bitcast %union.VectorReg* %2991 to %"class.std::bitset"*
  %2992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2993 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2992, i64 0, i64 1
  %XMM1.i534 = bitcast %union.VectorReg* %2993 to %union.vec128_t*
  %2994 = bitcast %"class.std::bitset"* %YMM0.i533 to i8*
  %2995 = bitcast %"class.std::bitset"* %YMM0.i533 to i8*
  %2996 = bitcast %union.vec128_t* %XMM1.i534 to i8*
  %2997 = load i64, i64* %PC.i532
  %2998 = add i64 %2997, 4
  store i64 %2998, i64* %PC.i532
  %2999 = bitcast i8* %2995 to double*
  %3000 = load double, double* %2999, align 1
  %3001 = getelementptr inbounds i8, i8* %2995, i64 8
  %3002 = bitcast i8* %3001 to i64*
  %3003 = load i64, i64* %3002, align 1
  %3004 = bitcast i8* %2996 to double*
  %3005 = load double, double* %3004, align 1
  %3006 = fadd double %3000, %3005
  %3007 = bitcast i8* %2994 to double*
  store double %3006, double* %3007, align 1
  %3008 = getelementptr inbounds i8, i8* %2994, i64 8
  %3009 = bitcast i8* %3008 to i64*
  store i64 %3003, i64* %3009, align 1
  store %struct.Memory* %loadMem_400853, %struct.Memory** %MEMORY
  %loadMem_400857 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3011 = getelementptr inbounds %struct.GPR, %struct.GPR* %3010, i32 0, i32 33
  %3012 = getelementptr inbounds %struct.Reg, %struct.Reg* %3011, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %3012 to i64*
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 7
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %RDX.i530 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 15
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RBP.i531 = bitcast %union.anon* %3018 to i64*
  %3019 = load i64, i64* %RBP.i531
  %3020 = sub i64 %3019, 16
  %3021 = load i64, i64* %PC.i529
  %3022 = add i64 %3021, 4
  store i64 %3022, i64* %PC.i529
  %3023 = inttoptr i64 %3020 to i64*
  %3024 = load i64, i64* %3023
  store i64 %3024, i64* %RDX.i530, align 8
  store %struct.Memory* %loadMem_400857, %struct.Memory** %MEMORY
  %loadMem_40085b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3026 = getelementptr inbounds %struct.GPR, %struct.GPR* %3025, i32 0, i32 33
  %3027 = getelementptr inbounds %struct.Reg, %struct.Reg* %3026, i32 0, i32 0
  %PC.i526 = bitcast %union.anon* %3027 to i64*
  %3028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3029 = getelementptr inbounds %struct.GPR, %struct.GPR* %3028, i32 0, i32 7
  %3030 = getelementptr inbounds %struct.Reg, %struct.Reg* %3029, i32 0, i32 0
  %RDX.i527 = bitcast %union.anon* %3030 to i64*
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3032 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3031, i64 0, i64 1
  %YMM1.i528 = bitcast %union.VectorReg* %3032 to %"class.std::bitset"*
  %3033 = bitcast %"class.std::bitset"* %YMM1.i528 to i8*
  %3034 = load i64, i64* %RDX.i527
  %3035 = add i64 %3034, 56
  %3036 = load i64, i64* %PC.i526
  %3037 = add i64 %3036, 5
  store i64 %3037, i64* %PC.i526
  %3038 = inttoptr i64 %3035 to double*
  %3039 = load double, double* %3038
  %3040 = bitcast i8* %3033 to double*
  store double %3039, double* %3040, align 1
  %3041 = getelementptr inbounds i8, i8* %3033, i64 8
  %3042 = bitcast i8* %3041 to double*
  store double 0.000000e+00, double* %3042, align 1
  store %struct.Memory* %loadMem_40085b, %struct.Memory** %MEMORY
  %loadMem_400860 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i523 = bitcast %union.anon* %3045 to i64*
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3047 = getelementptr inbounds %struct.GPR, %struct.GPR* %3046, i32 0, i32 7
  %3048 = getelementptr inbounds %struct.Reg, %struct.Reg* %3047, i32 0, i32 0
  %RDX.i524 = bitcast %union.anon* %3048 to i64*
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 15
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %RBP.i525 = bitcast %union.anon* %3051 to i64*
  %3052 = load i64, i64* %RBP.i525
  %3053 = sub i64 %3052, 24
  %3054 = load i64, i64* %PC.i523
  %3055 = add i64 %3054, 4
  store i64 %3055, i64* %PC.i523
  %3056 = inttoptr i64 %3053 to i64*
  %3057 = load i64, i64* %3056
  store i64 %3057, i64* %RDX.i524, align 8
  store %struct.Memory* %loadMem_400860, %struct.Memory** %MEMORY
  %loadMem_400864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3059 = getelementptr inbounds %struct.GPR, %struct.GPR* %3058, i32 0, i32 33
  %3060 = getelementptr inbounds %struct.Reg, %struct.Reg* %3059, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3060 to i64*
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 7
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %RDX.i521 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3065 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3064, i64 0, i64 1
  %YMM1.i522 = bitcast %union.VectorReg* %3065 to %"class.std::bitset"*
  %3066 = bitcast %"class.std::bitset"* %YMM1.i522 to i8*
  %3067 = bitcast %"class.std::bitset"* %YMM1.i522 to i8*
  %3068 = load i64, i64* %RDX.i521
  %3069 = add i64 %3068, 120
  %3070 = load i64, i64* %PC.i520
  %3071 = add i64 %3070, 5
  store i64 %3071, i64* %PC.i520
  %3072 = bitcast i8* %3067 to double*
  %3073 = load double, double* %3072, align 1
  %3074 = getelementptr inbounds i8, i8* %3067, i64 8
  %3075 = bitcast i8* %3074 to i64*
  %3076 = load i64, i64* %3075, align 1
  %3077 = inttoptr i64 %3069 to double*
  %3078 = load double, double* %3077
  %3079 = fmul double %3073, %3078
  %3080 = bitcast i8* %3066 to double*
  store double %3079, double* %3080, align 1
  %3081 = getelementptr inbounds i8, i8* %3066, i64 8
  %3082 = bitcast i8* %3081 to i64*
  store i64 %3076, i64* %3082, align 1
  store %struct.Memory* %loadMem_400864, %struct.Memory** %MEMORY
  %loadMem_400869 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 33
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3085 to i64*
  %3086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3087 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3086, i64 0, i64 0
  %YMM0.i518 = bitcast %union.VectorReg* %3087 to %"class.std::bitset"*
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3089 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3088, i64 0, i64 1
  %XMM1.i519 = bitcast %union.VectorReg* %3089 to %union.vec128_t*
  %3090 = bitcast %"class.std::bitset"* %YMM0.i518 to i8*
  %3091 = bitcast %"class.std::bitset"* %YMM0.i518 to i8*
  %3092 = bitcast %union.vec128_t* %XMM1.i519 to i8*
  %3093 = load i64, i64* %PC.i517
  %3094 = add i64 %3093, 4
  store i64 %3094, i64* %PC.i517
  %3095 = bitcast i8* %3091 to double*
  %3096 = load double, double* %3095, align 1
  %3097 = getelementptr inbounds i8, i8* %3091, i64 8
  %3098 = bitcast i8* %3097 to i64*
  %3099 = load i64, i64* %3098, align 1
  %3100 = bitcast i8* %3092 to double*
  %3101 = load double, double* %3100, align 1
  %3102 = fadd double %3096, %3101
  %3103 = bitcast i8* %3090 to double*
  store double %3102, double* %3103, align 1
  %3104 = getelementptr inbounds i8, i8* %3090, i64 8
  %3105 = bitcast i8* %3104 to i64*
  store i64 %3099, i64* %3105, align 1
  store %struct.Memory* %loadMem_400869, %struct.Memory** %MEMORY
  %loadMem_40086d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3107 = getelementptr inbounds %struct.GPR, %struct.GPR* %3106, i32 0, i32 33
  %3108 = getelementptr inbounds %struct.Reg, %struct.Reg* %3107, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3108 to i64*
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 15
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %RBP.i515 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3113 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3112, i64 0, i64 0
  %XMM0.i516 = bitcast %union.VectorReg* %3113 to %union.vec128_t*
  %3114 = load i64, i64* %RBP.i515
  %3115 = sub i64 %3114, 104
  %3116 = bitcast %union.vec128_t* %XMM0.i516 to i8*
  %3117 = load i64, i64* %PC.i514
  %3118 = add i64 %3117, 5
  store i64 %3118, i64* %PC.i514
  %3119 = bitcast i8* %3116 to double*
  %3120 = load double, double* %3119, align 1
  %3121 = inttoptr i64 %3115 to double*
  store double %3120, double* %3121
  store %struct.Memory* %loadMem_40086d, %struct.Memory** %MEMORY
  %loadMem_400872 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 7
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RDX.i512 = bitcast %union.anon* %3127 to i64*
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3129 = getelementptr inbounds %struct.GPR, %struct.GPR* %3128, i32 0, i32 15
  %3130 = getelementptr inbounds %struct.Reg, %struct.Reg* %3129, i32 0, i32 0
  %RBP.i513 = bitcast %union.anon* %3130 to i64*
  %3131 = load i64, i64* %RBP.i513
  %3132 = sub i64 %3131, 16
  %3133 = load i64, i64* %PC.i511
  %3134 = add i64 %3133, 4
  store i64 %3134, i64* %PC.i511
  %3135 = inttoptr i64 %3132 to i64*
  %3136 = load i64, i64* %3135
  store i64 %3136, i64* %RDX.i512, align 8
  store %struct.Memory* %loadMem_400872, %struct.Memory** %MEMORY
  %loadMem_400876 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3138 = getelementptr inbounds %struct.GPR, %struct.GPR* %3137, i32 0, i32 33
  %3139 = getelementptr inbounds %struct.Reg, %struct.Reg* %3138, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3139 to i64*
  %3140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3141 = getelementptr inbounds %struct.GPR, %struct.GPR* %3140, i32 0, i32 7
  %3142 = getelementptr inbounds %struct.Reg, %struct.Reg* %3141, i32 0, i32 0
  %RDX.i509 = bitcast %union.anon* %3142 to i64*
  %3143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3144 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3143, i64 0, i64 0
  %YMM0.i510 = bitcast %union.VectorReg* %3144 to %"class.std::bitset"*
  %3145 = bitcast %"class.std::bitset"* %YMM0.i510 to i8*
  %3146 = load i64, i64* %RDX.i509
  %3147 = add i64 %3146, 64
  %3148 = load i64, i64* %PC.i508
  %3149 = add i64 %3148, 5
  store i64 %3149, i64* %PC.i508
  %3150 = inttoptr i64 %3147 to double*
  %3151 = load double, double* %3150
  %3152 = bitcast i8* %3145 to double*
  store double %3151, double* %3152, align 1
  %3153 = getelementptr inbounds i8, i8* %3145, i64 8
  %3154 = bitcast i8* %3153 to double*
  store double 0.000000e+00, double* %3154, align 1
  store %struct.Memory* %loadMem_400876, %struct.Memory** %MEMORY
  %loadMem_40087b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 33
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %PC.i505 = bitcast %union.anon* %3157 to i64*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 7
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RDX.i506 = bitcast %union.anon* %3160 to i64*
  %3161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3162 = getelementptr inbounds %struct.GPR, %struct.GPR* %3161, i32 0, i32 15
  %3163 = getelementptr inbounds %struct.Reg, %struct.Reg* %3162, i32 0, i32 0
  %RBP.i507 = bitcast %union.anon* %3163 to i64*
  %3164 = load i64, i64* %RBP.i507
  %3165 = sub i64 %3164, 24
  %3166 = load i64, i64* %PC.i505
  %3167 = add i64 %3166, 4
  store i64 %3167, i64* %PC.i505
  %3168 = inttoptr i64 %3165 to i64*
  %3169 = load i64, i64* %3168
  store i64 %3169, i64* %RDX.i506, align 8
  store %struct.Memory* %loadMem_40087b, %struct.Memory** %MEMORY
  %loadMem_40087f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 33
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %PC.i502 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 7
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RDX.i503 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3177 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3176, i64 0, i64 0
  %YMM0.i504 = bitcast %union.VectorReg* %3177 to %"class.std::bitset"*
  %3178 = bitcast %"class.std::bitset"* %YMM0.i504 to i8*
  %3179 = bitcast %"class.std::bitset"* %YMM0.i504 to i8*
  %3180 = load i64, i64* %RDX.i503
  %3181 = load i64, i64* %PC.i502
  %3182 = add i64 %3181, 4
  store i64 %3182, i64* %PC.i502
  %3183 = bitcast i8* %3179 to double*
  %3184 = load double, double* %3183, align 1
  %3185 = getelementptr inbounds i8, i8* %3179, i64 8
  %3186 = bitcast i8* %3185 to i64*
  %3187 = load i64, i64* %3186, align 1
  %3188 = inttoptr i64 %3180 to double*
  %3189 = load double, double* %3188
  %3190 = fmul double %3184, %3189
  %3191 = bitcast i8* %3178 to double*
  store double %3190, double* %3191, align 1
  %3192 = getelementptr inbounds i8, i8* %3178, i64 8
  %3193 = bitcast i8* %3192 to i64*
  store i64 %3187, i64* %3193, align 1
  store %struct.Memory* %loadMem_40087f, %struct.Memory** %MEMORY
  %loadMem_400883 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 33
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %PC.i499 = bitcast %union.anon* %3196 to i64*
  %3197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3198 = getelementptr inbounds %struct.GPR, %struct.GPR* %3197, i32 0, i32 7
  %3199 = getelementptr inbounds %struct.Reg, %struct.Reg* %3198, i32 0, i32 0
  %RDX.i500 = bitcast %union.anon* %3199 to i64*
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 15
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %RBP.i501 = bitcast %union.anon* %3202 to i64*
  %3203 = load i64, i64* %RBP.i501
  %3204 = sub i64 %3203, 16
  %3205 = load i64, i64* %PC.i499
  %3206 = add i64 %3205, 4
  store i64 %3206, i64* %PC.i499
  %3207 = inttoptr i64 %3204 to i64*
  %3208 = load i64, i64* %3207
  store i64 %3208, i64* %RDX.i500, align 8
  store %struct.Memory* %loadMem_400883, %struct.Memory** %MEMORY
  %loadMem_400887 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3210 = getelementptr inbounds %struct.GPR, %struct.GPR* %3209, i32 0, i32 33
  %3211 = getelementptr inbounds %struct.Reg, %struct.Reg* %3210, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %3211 to i64*
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3213 = getelementptr inbounds %struct.GPR, %struct.GPR* %3212, i32 0, i32 7
  %3214 = getelementptr inbounds %struct.Reg, %struct.Reg* %3213, i32 0, i32 0
  %RDX.i497 = bitcast %union.anon* %3214 to i64*
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3216 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3215, i64 0, i64 1
  %YMM1.i498 = bitcast %union.VectorReg* %3216 to %"class.std::bitset"*
  %3217 = bitcast %"class.std::bitset"* %YMM1.i498 to i8*
  %3218 = load i64, i64* %RDX.i497
  %3219 = add i64 %3218, 72
  %3220 = load i64, i64* %PC.i496
  %3221 = add i64 %3220, 5
  store i64 %3221, i64* %PC.i496
  %3222 = inttoptr i64 %3219 to double*
  %3223 = load double, double* %3222
  %3224 = bitcast i8* %3217 to double*
  store double %3223, double* %3224, align 1
  %3225 = getelementptr inbounds i8, i8* %3217, i64 8
  %3226 = bitcast i8* %3225 to double*
  store double 0.000000e+00, double* %3226, align 1
  store %struct.Memory* %loadMem_400887, %struct.Memory** %MEMORY
  %loadMem_40088c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3228 = getelementptr inbounds %struct.GPR, %struct.GPR* %3227, i32 0, i32 33
  %3229 = getelementptr inbounds %struct.Reg, %struct.Reg* %3228, i32 0, i32 0
  %PC.i493 = bitcast %union.anon* %3229 to i64*
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3231 = getelementptr inbounds %struct.GPR, %struct.GPR* %3230, i32 0, i32 7
  %3232 = getelementptr inbounds %struct.Reg, %struct.Reg* %3231, i32 0, i32 0
  %RDX.i494 = bitcast %union.anon* %3232 to i64*
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3234 = getelementptr inbounds %struct.GPR, %struct.GPR* %3233, i32 0, i32 15
  %3235 = getelementptr inbounds %struct.Reg, %struct.Reg* %3234, i32 0, i32 0
  %RBP.i495 = bitcast %union.anon* %3235 to i64*
  %3236 = load i64, i64* %RBP.i495
  %3237 = sub i64 %3236, 24
  %3238 = load i64, i64* %PC.i493
  %3239 = add i64 %3238, 4
  store i64 %3239, i64* %PC.i493
  %3240 = inttoptr i64 %3237 to i64*
  %3241 = load i64, i64* %3240
  store i64 %3241, i64* %RDX.i494, align 8
  store %struct.Memory* %loadMem_40088c, %struct.Memory** %MEMORY
  %loadMem_400890 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3243 = getelementptr inbounds %struct.GPR, %struct.GPR* %3242, i32 0, i32 33
  %3244 = getelementptr inbounds %struct.Reg, %struct.Reg* %3243, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3244 to i64*
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3246 = getelementptr inbounds %struct.GPR, %struct.GPR* %3245, i32 0, i32 7
  %3247 = getelementptr inbounds %struct.Reg, %struct.Reg* %3246, i32 0, i32 0
  %RDX.i491 = bitcast %union.anon* %3247 to i64*
  %3248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3249 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3248, i64 0, i64 1
  %YMM1.i492 = bitcast %union.VectorReg* %3249 to %"class.std::bitset"*
  %3250 = bitcast %"class.std::bitset"* %YMM1.i492 to i8*
  %3251 = bitcast %"class.std::bitset"* %YMM1.i492 to i8*
  %3252 = load i64, i64* %RDX.i491
  %3253 = add i64 %3252, 32
  %3254 = load i64, i64* %PC.i490
  %3255 = add i64 %3254, 5
  store i64 %3255, i64* %PC.i490
  %3256 = bitcast i8* %3251 to double*
  %3257 = load double, double* %3256, align 1
  %3258 = getelementptr inbounds i8, i8* %3251, i64 8
  %3259 = bitcast i8* %3258 to i64*
  %3260 = load i64, i64* %3259, align 1
  %3261 = inttoptr i64 %3253 to double*
  %3262 = load double, double* %3261
  %3263 = fmul double %3257, %3262
  %3264 = bitcast i8* %3250 to double*
  store double %3263, double* %3264, align 1
  %3265 = getelementptr inbounds i8, i8* %3250, i64 8
  %3266 = bitcast i8* %3265 to i64*
  store i64 %3260, i64* %3266, align 1
  store %struct.Memory* %loadMem_400890, %struct.Memory** %MEMORY
  %loadMem_400895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 33
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3269 to i64*
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3271 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3270, i64 0, i64 0
  %YMM0.i488 = bitcast %union.VectorReg* %3271 to %"class.std::bitset"*
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3273 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3272, i64 0, i64 1
  %XMM1.i489 = bitcast %union.VectorReg* %3273 to %union.vec128_t*
  %3274 = bitcast %"class.std::bitset"* %YMM0.i488 to i8*
  %3275 = bitcast %"class.std::bitset"* %YMM0.i488 to i8*
  %3276 = bitcast %union.vec128_t* %XMM1.i489 to i8*
  %3277 = load i64, i64* %PC.i487
  %3278 = add i64 %3277, 4
  store i64 %3278, i64* %PC.i487
  %3279 = bitcast i8* %3275 to double*
  %3280 = load double, double* %3279, align 1
  %3281 = getelementptr inbounds i8, i8* %3275, i64 8
  %3282 = bitcast i8* %3281 to i64*
  %3283 = load i64, i64* %3282, align 1
  %3284 = bitcast i8* %3276 to double*
  %3285 = load double, double* %3284, align 1
  %3286 = fadd double %3280, %3285
  %3287 = bitcast i8* %3274 to double*
  store double %3286, double* %3287, align 1
  %3288 = getelementptr inbounds i8, i8* %3274, i64 8
  %3289 = bitcast i8* %3288 to i64*
  store i64 %3283, i64* %3289, align 1
  store %struct.Memory* %loadMem_400895, %struct.Memory** %MEMORY
  %loadMem_400899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3291 = getelementptr inbounds %struct.GPR, %struct.GPR* %3290, i32 0, i32 33
  %3292 = getelementptr inbounds %struct.Reg, %struct.Reg* %3291, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3292 to i64*
  %3293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3294 = getelementptr inbounds %struct.GPR, %struct.GPR* %3293, i32 0, i32 7
  %3295 = getelementptr inbounds %struct.Reg, %struct.Reg* %3294, i32 0, i32 0
  %RDX.i485 = bitcast %union.anon* %3295 to i64*
  %3296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3297 = getelementptr inbounds %struct.GPR, %struct.GPR* %3296, i32 0, i32 15
  %3298 = getelementptr inbounds %struct.Reg, %struct.Reg* %3297, i32 0, i32 0
  %RBP.i486 = bitcast %union.anon* %3298 to i64*
  %3299 = load i64, i64* %RBP.i486
  %3300 = sub i64 %3299, 16
  %3301 = load i64, i64* %PC.i484
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %PC.i484
  %3303 = inttoptr i64 %3300 to i64*
  %3304 = load i64, i64* %3303
  store i64 %3304, i64* %RDX.i485, align 8
  store %struct.Memory* %loadMem_400899, %struct.Memory** %MEMORY
  %loadMem_40089d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i481 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 7
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RDX.i482 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3312 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3311, i64 0, i64 1
  %YMM1.i483 = bitcast %union.VectorReg* %3312 to %"class.std::bitset"*
  %3313 = bitcast %"class.std::bitset"* %YMM1.i483 to i8*
  %3314 = load i64, i64* %RDX.i482
  %3315 = add i64 %3314, 80
  %3316 = load i64, i64* %PC.i481
  %3317 = add i64 %3316, 5
  store i64 %3317, i64* %PC.i481
  %3318 = inttoptr i64 %3315 to double*
  %3319 = load double, double* %3318
  %3320 = bitcast i8* %3313 to double*
  store double %3319, double* %3320, align 1
  %3321 = getelementptr inbounds i8, i8* %3313, i64 8
  %3322 = bitcast i8* %3321 to double*
  store double 0.000000e+00, double* %3322, align 1
  store %struct.Memory* %loadMem_40089d, %struct.Memory** %MEMORY
  %loadMem_4008a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 33
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 7
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RDX.i479 = bitcast %union.anon* %3328 to i64*
  %3329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3330 = getelementptr inbounds %struct.GPR, %struct.GPR* %3329, i32 0, i32 15
  %3331 = getelementptr inbounds %struct.Reg, %struct.Reg* %3330, i32 0, i32 0
  %RBP.i480 = bitcast %union.anon* %3331 to i64*
  %3332 = load i64, i64* %RBP.i480
  %3333 = sub i64 %3332, 24
  %3334 = load i64, i64* %PC.i478
  %3335 = add i64 %3334, 4
  store i64 %3335, i64* %PC.i478
  %3336 = inttoptr i64 %3333 to i64*
  %3337 = load i64, i64* %3336
  store i64 %3337, i64* %RDX.i479, align 8
  store %struct.Memory* %loadMem_4008a2, %struct.Memory** %MEMORY
  %loadMem_4008a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 7
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RDX.i476 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3345 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3344, i64 0, i64 1
  %YMM1.i477 = bitcast %union.VectorReg* %3345 to %"class.std::bitset"*
  %3346 = bitcast %"class.std::bitset"* %YMM1.i477 to i8*
  %3347 = bitcast %"class.std::bitset"* %YMM1.i477 to i8*
  %3348 = load i64, i64* %RDX.i476
  %3349 = add i64 %3348, 64
  %3350 = load i64, i64* %PC.i475
  %3351 = add i64 %3350, 5
  store i64 %3351, i64* %PC.i475
  %3352 = bitcast i8* %3347 to double*
  %3353 = load double, double* %3352, align 1
  %3354 = getelementptr inbounds i8, i8* %3347, i64 8
  %3355 = bitcast i8* %3354 to i64*
  %3356 = load i64, i64* %3355, align 1
  %3357 = inttoptr i64 %3349 to double*
  %3358 = load double, double* %3357
  %3359 = fmul double %3353, %3358
  %3360 = bitcast i8* %3346 to double*
  store double %3359, double* %3360, align 1
  %3361 = getelementptr inbounds i8, i8* %3346, i64 8
  %3362 = bitcast i8* %3361 to i64*
  store i64 %3356, i64* %3362, align 1
  store %struct.Memory* %loadMem_4008a6, %struct.Memory** %MEMORY
  %loadMem_4008ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3364 = getelementptr inbounds %struct.GPR, %struct.GPR* %3363, i32 0, i32 33
  %3365 = getelementptr inbounds %struct.Reg, %struct.Reg* %3364, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3365 to i64*
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3367 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3366, i64 0, i64 0
  %YMM0.i473 = bitcast %union.VectorReg* %3367 to %"class.std::bitset"*
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3369 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3368, i64 0, i64 1
  %XMM1.i474 = bitcast %union.VectorReg* %3369 to %union.vec128_t*
  %3370 = bitcast %"class.std::bitset"* %YMM0.i473 to i8*
  %3371 = bitcast %"class.std::bitset"* %YMM0.i473 to i8*
  %3372 = bitcast %union.vec128_t* %XMM1.i474 to i8*
  %3373 = load i64, i64* %PC.i472
  %3374 = add i64 %3373, 4
  store i64 %3374, i64* %PC.i472
  %3375 = bitcast i8* %3371 to double*
  %3376 = load double, double* %3375, align 1
  %3377 = getelementptr inbounds i8, i8* %3371, i64 8
  %3378 = bitcast i8* %3377 to i64*
  %3379 = load i64, i64* %3378, align 1
  %3380 = bitcast i8* %3372 to double*
  %3381 = load double, double* %3380, align 1
  %3382 = fadd double %3376, %3381
  %3383 = bitcast i8* %3370 to double*
  store double %3382, double* %3383, align 1
  %3384 = getelementptr inbounds i8, i8* %3370, i64 8
  %3385 = bitcast i8* %3384 to i64*
  store i64 %3379, i64* %3385, align 1
  store %struct.Memory* %loadMem_4008ab, %struct.Memory** %MEMORY
  %loadMem_4008af = load %struct.Memory*, %struct.Memory** %MEMORY
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3387 = getelementptr inbounds %struct.GPR, %struct.GPR* %3386, i32 0, i32 33
  %3388 = getelementptr inbounds %struct.Reg, %struct.Reg* %3387, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %3388 to i64*
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 7
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %RDX.i470 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 15
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RBP.i471 = bitcast %union.anon* %3394 to i64*
  %3395 = load i64, i64* %RBP.i471
  %3396 = sub i64 %3395, 16
  %3397 = load i64, i64* %PC.i469
  %3398 = add i64 %3397, 4
  store i64 %3398, i64* %PC.i469
  %3399 = inttoptr i64 %3396 to i64*
  %3400 = load i64, i64* %3399
  store i64 %3400, i64* %RDX.i470, align 8
  store %struct.Memory* %loadMem_4008af, %struct.Memory** %MEMORY
  %loadMem_4008b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3402 = getelementptr inbounds %struct.GPR, %struct.GPR* %3401, i32 0, i32 33
  %3403 = getelementptr inbounds %struct.Reg, %struct.Reg* %3402, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3403 to i64*
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3405 = getelementptr inbounds %struct.GPR, %struct.GPR* %3404, i32 0, i32 7
  %3406 = getelementptr inbounds %struct.Reg, %struct.Reg* %3405, i32 0, i32 0
  %RDX.i467 = bitcast %union.anon* %3406 to i64*
  %3407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3408 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3407, i64 0, i64 1
  %YMM1.i468 = bitcast %union.VectorReg* %3408 to %"class.std::bitset"*
  %3409 = bitcast %"class.std::bitset"* %YMM1.i468 to i8*
  %3410 = load i64, i64* %RDX.i467
  %3411 = add i64 %3410, 88
  %3412 = load i64, i64* %PC.i466
  %3413 = add i64 %3412, 5
  store i64 %3413, i64* %PC.i466
  %3414 = inttoptr i64 %3411 to double*
  %3415 = load double, double* %3414
  %3416 = bitcast i8* %3409 to double*
  store double %3415, double* %3416, align 1
  %3417 = getelementptr inbounds i8, i8* %3409, i64 8
  %3418 = bitcast i8* %3417 to double*
  store double 0.000000e+00, double* %3418, align 1
  store %struct.Memory* %loadMem_4008b3, %struct.Memory** %MEMORY
  %loadMem_4008b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3420 = getelementptr inbounds %struct.GPR, %struct.GPR* %3419, i32 0, i32 33
  %3421 = getelementptr inbounds %struct.Reg, %struct.Reg* %3420, i32 0, i32 0
  %PC.i463 = bitcast %union.anon* %3421 to i64*
  %3422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3423 = getelementptr inbounds %struct.GPR, %struct.GPR* %3422, i32 0, i32 7
  %3424 = getelementptr inbounds %struct.Reg, %struct.Reg* %3423, i32 0, i32 0
  %RDX.i464 = bitcast %union.anon* %3424 to i64*
  %3425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3426 = getelementptr inbounds %struct.GPR, %struct.GPR* %3425, i32 0, i32 15
  %3427 = getelementptr inbounds %struct.Reg, %struct.Reg* %3426, i32 0, i32 0
  %RBP.i465 = bitcast %union.anon* %3427 to i64*
  %3428 = load i64, i64* %RBP.i465
  %3429 = sub i64 %3428, 24
  %3430 = load i64, i64* %PC.i463
  %3431 = add i64 %3430, 4
  store i64 %3431, i64* %PC.i463
  %3432 = inttoptr i64 %3429 to i64*
  %3433 = load i64, i64* %3432
  store i64 %3433, i64* %RDX.i464, align 8
  store %struct.Memory* %loadMem_4008b8, %struct.Memory** %MEMORY
  %loadMem_4008bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3435 = getelementptr inbounds %struct.GPR, %struct.GPR* %3434, i32 0, i32 33
  %3436 = getelementptr inbounds %struct.Reg, %struct.Reg* %3435, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3436 to i64*
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3438 = getelementptr inbounds %struct.GPR, %struct.GPR* %3437, i32 0, i32 7
  %3439 = getelementptr inbounds %struct.Reg, %struct.Reg* %3438, i32 0, i32 0
  %RDX.i461 = bitcast %union.anon* %3439 to i64*
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3441 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3440, i64 0, i64 1
  %YMM1.i462 = bitcast %union.VectorReg* %3441 to %"class.std::bitset"*
  %3442 = bitcast %"class.std::bitset"* %YMM1.i462 to i8*
  %3443 = bitcast %"class.std::bitset"* %YMM1.i462 to i8*
  %3444 = load i64, i64* %RDX.i461
  %3445 = add i64 %3444, 96
  %3446 = load i64, i64* %PC.i460
  %3447 = add i64 %3446, 5
  store i64 %3447, i64* %PC.i460
  %3448 = bitcast i8* %3443 to double*
  %3449 = load double, double* %3448, align 1
  %3450 = getelementptr inbounds i8, i8* %3443, i64 8
  %3451 = bitcast i8* %3450 to i64*
  %3452 = load i64, i64* %3451, align 1
  %3453 = inttoptr i64 %3445 to double*
  %3454 = load double, double* %3453
  %3455 = fmul double %3449, %3454
  %3456 = bitcast i8* %3442 to double*
  store double %3455, double* %3456, align 1
  %3457 = getelementptr inbounds i8, i8* %3442, i64 8
  %3458 = bitcast i8* %3457 to i64*
  store i64 %3452, i64* %3458, align 1
  store %struct.Memory* %loadMem_4008bc, %struct.Memory** %MEMORY
  %loadMem_4008c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3463 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3462, i64 0, i64 0
  %YMM0.i458 = bitcast %union.VectorReg* %3463 to %"class.std::bitset"*
  %3464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3465 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3464, i64 0, i64 1
  %XMM1.i459 = bitcast %union.VectorReg* %3465 to %union.vec128_t*
  %3466 = bitcast %"class.std::bitset"* %YMM0.i458 to i8*
  %3467 = bitcast %"class.std::bitset"* %YMM0.i458 to i8*
  %3468 = bitcast %union.vec128_t* %XMM1.i459 to i8*
  %3469 = load i64, i64* %PC.i457
  %3470 = add i64 %3469, 4
  store i64 %3470, i64* %PC.i457
  %3471 = bitcast i8* %3467 to double*
  %3472 = load double, double* %3471, align 1
  %3473 = getelementptr inbounds i8, i8* %3467, i64 8
  %3474 = bitcast i8* %3473 to i64*
  %3475 = load i64, i64* %3474, align 1
  %3476 = bitcast i8* %3468 to double*
  %3477 = load double, double* %3476, align 1
  %3478 = fadd double %3472, %3477
  %3479 = bitcast i8* %3466 to double*
  store double %3478, double* %3479, align 1
  %3480 = getelementptr inbounds i8, i8* %3466, i64 8
  %3481 = bitcast i8* %3480 to i64*
  store i64 %3475, i64* %3481, align 1
  store %struct.Memory* %loadMem_4008c1, %struct.Memory** %MEMORY
  %loadMem_4008c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3483 = getelementptr inbounds %struct.GPR, %struct.GPR* %3482, i32 0, i32 33
  %3484 = getelementptr inbounds %struct.Reg, %struct.Reg* %3483, i32 0, i32 0
  %PC.i454 = bitcast %union.anon* %3484 to i64*
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 15
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %RBP.i455 = bitcast %union.anon* %3487 to i64*
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3489 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3488, i64 0, i64 0
  %XMM0.i456 = bitcast %union.VectorReg* %3489 to %union.vec128_t*
  %3490 = load i64, i64* %RBP.i455
  %3491 = sub i64 %3490, 96
  %3492 = bitcast %union.vec128_t* %XMM0.i456 to i8*
  %3493 = load i64, i64* %PC.i454
  %3494 = add i64 %3493, 5
  store i64 %3494, i64* %PC.i454
  %3495 = bitcast i8* %3492 to double*
  %3496 = load double, double* %3495, align 1
  %3497 = inttoptr i64 %3491 to double*
  store double %3496, double* %3497
  store %struct.Memory* %loadMem_4008c5, %struct.Memory** %MEMORY
  %loadMem_4008ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 33
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %PC.i451 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 7
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RDX.i452 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 15
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RBP.i453 = bitcast %union.anon* %3506 to i64*
  %3507 = load i64, i64* %RBP.i453
  %3508 = sub i64 %3507, 16
  %3509 = load i64, i64* %PC.i451
  %3510 = add i64 %3509, 4
  store i64 %3510, i64* %PC.i451
  %3511 = inttoptr i64 %3508 to i64*
  %3512 = load i64, i64* %3511
  store i64 %3512, i64* %RDX.i452, align 8
  store %struct.Memory* %loadMem_4008ca, %struct.Memory** %MEMORY
  %loadMem_4008ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 7
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RDX.i449 = bitcast %union.anon* %3518 to i64*
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3520 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3519, i64 0, i64 0
  %YMM0.i450 = bitcast %union.VectorReg* %3520 to %"class.std::bitset"*
  %3521 = bitcast %"class.std::bitset"* %YMM0.i450 to i8*
  %3522 = load i64, i64* %RDX.i449
  %3523 = add i64 %3522, 64
  %3524 = load i64, i64* %PC.i448
  %3525 = add i64 %3524, 5
  store i64 %3525, i64* %PC.i448
  %3526 = inttoptr i64 %3523 to double*
  %3527 = load double, double* %3526
  %3528 = bitcast i8* %3521 to double*
  store double %3527, double* %3528, align 1
  %3529 = getelementptr inbounds i8, i8* %3521, i64 8
  %3530 = bitcast i8* %3529 to double*
  store double 0.000000e+00, double* %3530, align 1
  store %struct.Memory* %loadMem_4008ce, %struct.Memory** %MEMORY
  %loadMem_4008d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 33
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 7
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RDX.i446 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 15
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %3539 to i64*
  %3540 = load i64, i64* %RBP.i447
  %3541 = sub i64 %3540, 24
  %3542 = load i64, i64* %PC.i445
  %3543 = add i64 %3542, 4
  store i64 %3543, i64* %PC.i445
  %3544 = inttoptr i64 %3541 to i64*
  %3545 = load i64, i64* %3544
  store i64 %3545, i64* %RDX.i446, align 8
  store %struct.Memory* %loadMem_4008d3, %struct.Memory** %MEMORY
  %loadMem_4008d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3547 = getelementptr inbounds %struct.GPR, %struct.GPR* %3546, i32 0, i32 33
  %3548 = getelementptr inbounds %struct.Reg, %struct.Reg* %3547, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3548 to i64*
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 7
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %RDX.i443 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3553 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3552, i64 0, i64 0
  %YMM0.i444 = bitcast %union.VectorReg* %3553 to %"class.std::bitset"*
  %3554 = bitcast %"class.std::bitset"* %YMM0.i444 to i8*
  %3555 = bitcast %"class.std::bitset"* %YMM0.i444 to i8*
  %3556 = load i64, i64* %RDX.i443
  %3557 = add i64 %3556, 8
  %3558 = load i64, i64* %PC.i442
  %3559 = add i64 %3558, 5
  store i64 %3559, i64* %PC.i442
  %3560 = bitcast i8* %3555 to double*
  %3561 = load double, double* %3560, align 1
  %3562 = getelementptr inbounds i8, i8* %3555, i64 8
  %3563 = bitcast i8* %3562 to i64*
  %3564 = load i64, i64* %3563, align 1
  %3565 = inttoptr i64 %3557 to double*
  %3566 = load double, double* %3565
  %3567 = fmul double %3561, %3566
  %3568 = bitcast i8* %3554 to double*
  store double %3567, double* %3568, align 1
  %3569 = getelementptr inbounds i8, i8* %3554, i64 8
  %3570 = bitcast i8* %3569 to i64*
  store i64 %3564, i64* %3570, align 1
  store %struct.Memory* %loadMem_4008d7, %struct.Memory** %MEMORY
  %loadMem_4008dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 33
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3573 to i64*
  %3574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3575 = getelementptr inbounds %struct.GPR, %struct.GPR* %3574, i32 0, i32 7
  %3576 = getelementptr inbounds %struct.Reg, %struct.Reg* %3575, i32 0, i32 0
  %RDX.i440 = bitcast %union.anon* %3576 to i64*
  %3577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3578 = getelementptr inbounds %struct.GPR, %struct.GPR* %3577, i32 0, i32 15
  %3579 = getelementptr inbounds %struct.Reg, %struct.Reg* %3578, i32 0, i32 0
  %RBP.i441 = bitcast %union.anon* %3579 to i64*
  %3580 = load i64, i64* %RBP.i441
  %3581 = sub i64 %3580, 16
  %3582 = load i64, i64* %PC.i439
  %3583 = add i64 %3582, 4
  store i64 %3583, i64* %PC.i439
  %3584 = inttoptr i64 %3581 to i64*
  %3585 = load i64, i64* %3584
  store i64 %3585, i64* %RDX.i440, align 8
  store %struct.Memory* %loadMem_4008dc, %struct.Memory** %MEMORY
  %loadMem_4008e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 33
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3588 to i64*
  %3589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3590 = getelementptr inbounds %struct.GPR, %struct.GPR* %3589, i32 0, i32 7
  %3591 = getelementptr inbounds %struct.Reg, %struct.Reg* %3590, i32 0, i32 0
  %RDX.i437 = bitcast %union.anon* %3591 to i64*
  %3592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3593 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3592, i64 0, i64 1
  %YMM1.i438 = bitcast %union.VectorReg* %3593 to %"class.std::bitset"*
  %3594 = bitcast %"class.std::bitset"* %YMM1.i438 to i8*
  %3595 = load i64, i64* %RDX.i437
  %3596 = add i64 %3595, 72
  %3597 = load i64, i64* %PC.i436
  %3598 = add i64 %3597, 5
  store i64 %3598, i64* %PC.i436
  %3599 = inttoptr i64 %3596 to double*
  %3600 = load double, double* %3599
  %3601 = bitcast i8* %3594 to double*
  store double %3600, double* %3601, align 1
  %3602 = getelementptr inbounds i8, i8* %3594, i64 8
  %3603 = bitcast i8* %3602 to double*
  store double 0.000000e+00, double* %3603, align 1
  store %struct.Memory* %loadMem_4008e0, %struct.Memory** %MEMORY
  %loadMem_4008e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3605 = getelementptr inbounds %struct.GPR, %struct.GPR* %3604, i32 0, i32 33
  %3606 = getelementptr inbounds %struct.Reg, %struct.Reg* %3605, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3606 to i64*
  %3607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3608 = getelementptr inbounds %struct.GPR, %struct.GPR* %3607, i32 0, i32 7
  %3609 = getelementptr inbounds %struct.Reg, %struct.Reg* %3608, i32 0, i32 0
  %RDX.i434 = bitcast %union.anon* %3609 to i64*
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 15
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %3612 to i64*
  %3613 = load i64, i64* %RBP.i435
  %3614 = sub i64 %3613, 24
  %3615 = load i64, i64* %PC.i433
  %3616 = add i64 %3615, 4
  store i64 %3616, i64* %PC.i433
  %3617 = inttoptr i64 %3614 to i64*
  %3618 = load i64, i64* %3617
  store i64 %3618, i64* %RDX.i434, align 8
  store %struct.Memory* %loadMem_4008e5, %struct.Memory** %MEMORY
  %loadMem_4008e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3620 = getelementptr inbounds %struct.GPR, %struct.GPR* %3619, i32 0, i32 33
  %3621 = getelementptr inbounds %struct.Reg, %struct.Reg* %3620, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3621 to i64*
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 7
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %RDX.i431 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3626 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3625, i64 0, i64 1
  %YMM1.i432 = bitcast %union.VectorReg* %3626 to %"class.std::bitset"*
  %3627 = bitcast %"class.std::bitset"* %YMM1.i432 to i8*
  %3628 = bitcast %"class.std::bitset"* %YMM1.i432 to i8*
  %3629 = load i64, i64* %RDX.i431
  %3630 = add i64 %3629, 40
  %3631 = load i64, i64* %PC.i430
  %3632 = add i64 %3631, 5
  store i64 %3632, i64* %PC.i430
  %3633 = bitcast i8* %3628 to double*
  %3634 = load double, double* %3633, align 1
  %3635 = getelementptr inbounds i8, i8* %3628, i64 8
  %3636 = bitcast i8* %3635 to i64*
  %3637 = load i64, i64* %3636, align 1
  %3638 = inttoptr i64 %3630 to double*
  %3639 = load double, double* %3638
  %3640 = fmul double %3634, %3639
  %3641 = bitcast i8* %3627 to double*
  store double %3640, double* %3641, align 1
  %3642 = getelementptr inbounds i8, i8* %3627, i64 8
  %3643 = bitcast i8* %3642 to i64*
  store i64 %3637, i64* %3643, align 1
  store %struct.Memory* %loadMem_4008e9, %struct.Memory** %MEMORY
  %loadMem_4008ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3645 = getelementptr inbounds %struct.GPR, %struct.GPR* %3644, i32 0, i32 33
  %3646 = getelementptr inbounds %struct.Reg, %struct.Reg* %3645, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3646 to i64*
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3648 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3647, i64 0, i64 0
  %YMM0.i428 = bitcast %union.VectorReg* %3648 to %"class.std::bitset"*
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3650 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3649, i64 0, i64 1
  %XMM1.i429 = bitcast %union.VectorReg* %3650 to %union.vec128_t*
  %3651 = bitcast %"class.std::bitset"* %YMM0.i428 to i8*
  %3652 = bitcast %"class.std::bitset"* %YMM0.i428 to i8*
  %3653 = bitcast %union.vec128_t* %XMM1.i429 to i8*
  %3654 = load i64, i64* %PC.i427
  %3655 = add i64 %3654, 4
  store i64 %3655, i64* %PC.i427
  %3656 = bitcast i8* %3652 to double*
  %3657 = load double, double* %3656, align 1
  %3658 = getelementptr inbounds i8, i8* %3652, i64 8
  %3659 = bitcast i8* %3658 to i64*
  %3660 = load i64, i64* %3659, align 1
  %3661 = bitcast i8* %3653 to double*
  %3662 = load double, double* %3661, align 1
  %3663 = fadd double %3657, %3662
  %3664 = bitcast i8* %3651 to double*
  store double %3663, double* %3664, align 1
  %3665 = getelementptr inbounds i8, i8* %3651, i64 8
  %3666 = bitcast i8* %3665 to i64*
  store i64 %3660, i64* %3666, align 1
  store %struct.Memory* %loadMem_4008ee, %struct.Memory** %MEMORY
  %loadMem_4008f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3668 = getelementptr inbounds %struct.GPR, %struct.GPR* %3667, i32 0, i32 33
  %3669 = getelementptr inbounds %struct.Reg, %struct.Reg* %3668, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3669 to i64*
  %3670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3671 = getelementptr inbounds %struct.GPR, %struct.GPR* %3670, i32 0, i32 7
  %3672 = getelementptr inbounds %struct.Reg, %struct.Reg* %3671, i32 0, i32 0
  %RDX.i425 = bitcast %union.anon* %3672 to i64*
  %3673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3674 = getelementptr inbounds %struct.GPR, %struct.GPR* %3673, i32 0, i32 15
  %3675 = getelementptr inbounds %struct.Reg, %struct.Reg* %3674, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3675 to i64*
  %3676 = load i64, i64* %RBP.i426
  %3677 = sub i64 %3676, 16
  %3678 = load i64, i64* %PC.i424
  %3679 = add i64 %3678, 4
  store i64 %3679, i64* %PC.i424
  %3680 = inttoptr i64 %3677 to i64*
  %3681 = load i64, i64* %3680
  store i64 %3681, i64* %RDX.i425, align 8
  store %struct.Memory* %loadMem_4008f2, %struct.Memory** %MEMORY
  %loadMem_4008f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 33
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3684 to i64*
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 7
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %RDX.i422 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3689 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3688, i64 0, i64 1
  %YMM1.i423 = bitcast %union.VectorReg* %3689 to %"class.std::bitset"*
  %3690 = bitcast %"class.std::bitset"* %YMM1.i423 to i8*
  %3691 = load i64, i64* %RDX.i422
  %3692 = add i64 %3691, 80
  %3693 = load i64, i64* %PC.i421
  %3694 = add i64 %3693, 5
  store i64 %3694, i64* %PC.i421
  %3695 = inttoptr i64 %3692 to double*
  %3696 = load double, double* %3695
  %3697 = bitcast i8* %3690 to double*
  store double %3696, double* %3697, align 1
  %3698 = getelementptr inbounds i8, i8* %3690, i64 8
  %3699 = bitcast i8* %3698 to double*
  store double 0.000000e+00, double* %3699, align 1
  store %struct.Memory* %loadMem_4008f6, %struct.Memory** %MEMORY
  %loadMem_4008fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3701 = getelementptr inbounds %struct.GPR, %struct.GPR* %3700, i32 0, i32 33
  %3702 = getelementptr inbounds %struct.Reg, %struct.Reg* %3701, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3702 to i64*
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3704 = getelementptr inbounds %struct.GPR, %struct.GPR* %3703, i32 0, i32 7
  %3705 = getelementptr inbounds %struct.Reg, %struct.Reg* %3704, i32 0, i32 0
  %RDX.i419 = bitcast %union.anon* %3705 to i64*
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 15
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %3708 to i64*
  %3709 = load i64, i64* %RBP.i420
  %3710 = sub i64 %3709, 24
  %3711 = load i64, i64* %PC.i418
  %3712 = add i64 %3711, 4
  store i64 %3712, i64* %PC.i418
  %3713 = inttoptr i64 %3710 to i64*
  %3714 = load i64, i64* %3713
  store i64 %3714, i64* %RDX.i419, align 8
  store %struct.Memory* %loadMem_4008fb, %struct.Memory** %MEMORY
  %loadMem_4008ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3716 = getelementptr inbounds %struct.GPR, %struct.GPR* %3715, i32 0, i32 33
  %3717 = getelementptr inbounds %struct.Reg, %struct.Reg* %3716, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3717 to i64*
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3719 = getelementptr inbounds %struct.GPR, %struct.GPR* %3718, i32 0, i32 7
  %3720 = getelementptr inbounds %struct.Reg, %struct.Reg* %3719, i32 0, i32 0
  %RDX.i416 = bitcast %union.anon* %3720 to i64*
  %3721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3722 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3721, i64 0, i64 1
  %YMM1.i417 = bitcast %union.VectorReg* %3722 to %"class.std::bitset"*
  %3723 = bitcast %"class.std::bitset"* %YMM1.i417 to i8*
  %3724 = bitcast %"class.std::bitset"* %YMM1.i417 to i8*
  %3725 = load i64, i64* %RDX.i416
  %3726 = add i64 %3725, 72
  %3727 = load i64, i64* %PC.i415
  %3728 = add i64 %3727, 5
  store i64 %3728, i64* %PC.i415
  %3729 = bitcast i8* %3724 to double*
  %3730 = load double, double* %3729, align 1
  %3731 = getelementptr inbounds i8, i8* %3724, i64 8
  %3732 = bitcast i8* %3731 to i64*
  %3733 = load i64, i64* %3732, align 1
  %3734 = inttoptr i64 %3726 to double*
  %3735 = load double, double* %3734
  %3736 = fmul double %3730, %3735
  %3737 = bitcast i8* %3723 to double*
  store double %3736, double* %3737, align 1
  %3738 = getelementptr inbounds i8, i8* %3723, i64 8
  %3739 = bitcast i8* %3738 to i64*
  store i64 %3733, i64* %3739, align 1
  store %struct.Memory* %loadMem_4008ff, %struct.Memory** %MEMORY
  %loadMem_400904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3741 = getelementptr inbounds %struct.GPR, %struct.GPR* %3740, i32 0, i32 33
  %3742 = getelementptr inbounds %struct.Reg, %struct.Reg* %3741, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3742 to i64*
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3744 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3743, i64 0, i64 0
  %YMM0.i413 = bitcast %union.VectorReg* %3744 to %"class.std::bitset"*
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3746 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3745, i64 0, i64 1
  %XMM1.i414 = bitcast %union.VectorReg* %3746 to %union.vec128_t*
  %3747 = bitcast %"class.std::bitset"* %YMM0.i413 to i8*
  %3748 = bitcast %"class.std::bitset"* %YMM0.i413 to i8*
  %3749 = bitcast %union.vec128_t* %XMM1.i414 to i8*
  %3750 = load i64, i64* %PC.i412
  %3751 = add i64 %3750, 4
  store i64 %3751, i64* %PC.i412
  %3752 = bitcast i8* %3748 to double*
  %3753 = load double, double* %3752, align 1
  %3754 = getelementptr inbounds i8, i8* %3748, i64 8
  %3755 = bitcast i8* %3754 to i64*
  %3756 = load i64, i64* %3755, align 1
  %3757 = bitcast i8* %3749 to double*
  %3758 = load double, double* %3757, align 1
  %3759 = fadd double %3753, %3758
  %3760 = bitcast i8* %3747 to double*
  store double %3759, double* %3760, align 1
  %3761 = getelementptr inbounds i8, i8* %3747, i64 8
  %3762 = bitcast i8* %3761 to i64*
  store i64 %3756, i64* %3762, align 1
  store %struct.Memory* %loadMem_400904, %struct.Memory** %MEMORY
  %loadMem_400908 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3764 = getelementptr inbounds %struct.GPR, %struct.GPR* %3763, i32 0, i32 33
  %3765 = getelementptr inbounds %struct.Reg, %struct.Reg* %3764, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3765 to i64*
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3767 = getelementptr inbounds %struct.GPR, %struct.GPR* %3766, i32 0, i32 7
  %3768 = getelementptr inbounds %struct.Reg, %struct.Reg* %3767, i32 0, i32 0
  %RDX.i410 = bitcast %union.anon* %3768 to i64*
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3770 = getelementptr inbounds %struct.GPR, %struct.GPR* %3769, i32 0, i32 15
  %3771 = getelementptr inbounds %struct.Reg, %struct.Reg* %3770, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3771 to i64*
  %3772 = load i64, i64* %RBP.i411
  %3773 = sub i64 %3772, 16
  %3774 = load i64, i64* %PC.i409
  %3775 = add i64 %3774, 4
  store i64 %3775, i64* %PC.i409
  %3776 = inttoptr i64 %3773 to i64*
  %3777 = load i64, i64* %3776
  store i64 %3777, i64* %RDX.i410, align 8
  store %struct.Memory* %loadMem_400908, %struct.Memory** %MEMORY
  %loadMem_40090c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3779 = getelementptr inbounds %struct.GPR, %struct.GPR* %3778, i32 0, i32 33
  %3780 = getelementptr inbounds %struct.Reg, %struct.Reg* %3779, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3780 to i64*
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3782 = getelementptr inbounds %struct.GPR, %struct.GPR* %3781, i32 0, i32 7
  %3783 = getelementptr inbounds %struct.Reg, %struct.Reg* %3782, i32 0, i32 0
  %RDX.i407 = bitcast %union.anon* %3783 to i64*
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3785 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3784, i64 0, i64 1
  %YMM1.i408 = bitcast %union.VectorReg* %3785 to %"class.std::bitset"*
  %3786 = bitcast %"class.std::bitset"* %YMM1.i408 to i8*
  %3787 = load i64, i64* %RDX.i407
  %3788 = add i64 %3787, 88
  %3789 = load i64, i64* %PC.i406
  %3790 = add i64 %3789, 5
  store i64 %3790, i64* %PC.i406
  %3791 = inttoptr i64 %3788 to double*
  %3792 = load double, double* %3791
  %3793 = bitcast i8* %3786 to double*
  store double %3792, double* %3793, align 1
  %3794 = getelementptr inbounds i8, i8* %3786, i64 8
  %3795 = bitcast i8* %3794 to double*
  store double 0.000000e+00, double* %3795, align 1
  store %struct.Memory* %loadMem_40090c, %struct.Memory** %MEMORY
  %loadMem_400911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 33
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %3798 to i64*
  %3799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3800 = getelementptr inbounds %struct.GPR, %struct.GPR* %3799, i32 0, i32 7
  %3801 = getelementptr inbounds %struct.Reg, %struct.Reg* %3800, i32 0, i32 0
  %RDX.i404 = bitcast %union.anon* %3801 to i64*
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3803 = getelementptr inbounds %struct.GPR, %struct.GPR* %3802, i32 0, i32 15
  %3804 = getelementptr inbounds %struct.Reg, %struct.Reg* %3803, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %3804 to i64*
  %3805 = load i64, i64* %RBP.i405
  %3806 = sub i64 %3805, 24
  %3807 = load i64, i64* %PC.i403
  %3808 = add i64 %3807, 4
  store i64 %3808, i64* %PC.i403
  %3809 = inttoptr i64 %3806 to i64*
  %3810 = load i64, i64* %3809
  store i64 %3810, i64* %RDX.i404, align 8
  store %struct.Memory* %loadMem_400911, %struct.Memory** %MEMORY
  %loadMem_400915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3812 = getelementptr inbounds %struct.GPR, %struct.GPR* %3811, i32 0, i32 33
  %3813 = getelementptr inbounds %struct.Reg, %struct.Reg* %3812, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %3813 to i64*
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 7
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %RDX.i401 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3818 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3817, i64 0, i64 1
  %YMM1.i402 = bitcast %union.VectorReg* %3818 to %"class.std::bitset"*
  %3819 = bitcast %"class.std::bitset"* %YMM1.i402 to i8*
  %3820 = bitcast %"class.std::bitset"* %YMM1.i402 to i8*
  %3821 = load i64, i64* %RDX.i401
  %3822 = add i64 %3821, 104
  %3823 = load i64, i64* %PC.i400
  %3824 = add i64 %3823, 5
  store i64 %3824, i64* %PC.i400
  %3825 = bitcast i8* %3820 to double*
  %3826 = load double, double* %3825, align 1
  %3827 = getelementptr inbounds i8, i8* %3820, i64 8
  %3828 = bitcast i8* %3827 to i64*
  %3829 = load i64, i64* %3828, align 1
  %3830 = inttoptr i64 %3822 to double*
  %3831 = load double, double* %3830
  %3832 = fmul double %3826, %3831
  %3833 = bitcast i8* %3819 to double*
  store double %3832, double* %3833, align 1
  %3834 = getelementptr inbounds i8, i8* %3819, i64 8
  %3835 = bitcast i8* %3834 to i64*
  store i64 %3829, i64* %3835, align 1
  store %struct.Memory* %loadMem_400915, %struct.Memory** %MEMORY
  %loadMem_40091a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3837 = getelementptr inbounds %struct.GPR, %struct.GPR* %3836, i32 0, i32 33
  %3838 = getelementptr inbounds %struct.Reg, %struct.Reg* %3837, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %3838 to i64*
  %3839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3840 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3839, i64 0, i64 0
  %YMM0.i398 = bitcast %union.VectorReg* %3840 to %"class.std::bitset"*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3842 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3841, i64 0, i64 1
  %XMM1.i399 = bitcast %union.VectorReg* %3842 to %union.vec128_t*
  %3843 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %3844 = bitcast %"class.std::bitset"* %YMM0.i398 to i8*
  %3845 = bitcast %union.vec128_t* %XMM1.i399 to i8*
  %3846 = load i64, i64* %PC.i397
  %3847 = add i64 %3846, 4
  store i64 %3847, i64* %PC.i397
  %3848 = bitcast i8* %3844 to double*
  %3849 = load double, double* %3848, align 1
  %3850 = getelementptr inbounds i8, i8* %3844, i64 8
  %3851 = bitcast i8* %3850 to i64*
  %3852 = load i64, i64* %3851, align 1
  %3853 = bitcast i8* %3845 to double*
  %3854 = load double, double* %3853, align 1
  %3855 = fadd double %3849, %3854
  %3856 = bitcast i8* %3843 to double*
  store double %3855, double* %3856, align 1
  %3857 = getelementptr inbounds i8, i8* %3843, i64 8
  %3858 = bitcast i8* %3857 to i64*
  store i64 %3852, i64* %3858, align 1
  store %struct.Memory* %loadMem_40091a, %struct.Memory** %MEMORY
  %loadMem_40091e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %3861 to i64*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 15
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %3864 to i64*
  %3865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3866 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3865, i64 0, i64 0
  %XMM0.i396 = bitcast %union.VectorReg* %3866 to %union.vec128_t*
  %3867 = load i64, i64* %RBP.i395
  %3868 = sub i64 %3867, 88
  %3869 = bitcast %union.vec128_t* %XMM0.i396 to i8*
  %3870 = load i64, i64* %PC.i394
  %3871 = add i64 %3870, 5
  store i64 %3871, i64* %PC.i394
  %3872 = bitcast i8* %3869 to double*
  %3873 = load double, double* %3872, align 1
  %3874 = inttoptr i64 %3868 to double*
  store double %3873, double* %3874
  store %struct.Memory* %loadMem_40091e, %struct.Memory** %MEMORY
  %loadMem_400923 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3876 = getelementptr inbounds %struct.GPR, %struct.GPR* %3875, i32 0, i32 33
  %3877 = getelementptr inbounds %struct.Reg, %struct.Reg* %3876, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %3877 to i64*
  %3878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3879 = getelementptr inbounds %struct.GPR, %struct.GPR* %3878, i32 0, i32 7
  %3880 = getelementptr inbounds %struct.Reg, %struct.Reg* %3879, i32 0, i32 0
  %RDX.i392 = bitcast %union.anon* %3880 to i64*
  %3881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3882 = getelementptr inbounds %struct.GPR, %struct.GPR* %3881, i32 0, i32 15
  %3883 = getelementptr inbounds %struct.Reg, %struct.Reg* %3882, i32 0, i32 0
  %RBP.i393 = bitcast %union.anon* %3883 to i64*
  %3884 = load i64, i64* %RBP.i393
  %3885 = sub i64 %3884, 16
  %3886 = load i64, i64* %PC.i391
  %3887 = add i64 %3886, 4
  store i64 %3887, i64* %PC.i391
  %3888 = inttoptr i64 %3885 to i64*
  %3889 = load i64, i64* %3888
  store i64 %3889, i64* %RDX.i392, align 8
  store %struct.Memory* %loadMem_400923, %struct.Memory** %MEMORY
  %loadMem_400927 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3891 = getelementptr inbounds %struct.GPR, %struct.GPR* %3890, i32 0, i32 33
  %3892 = getelementptr inbounds %struct.Reg, %struct.Reg* %3891, i32 0, i32 0
  %PC.i388 = bitcast %union.anon* %3892 to i64*
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 7
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %RDX.i389 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3897 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3896, i64 0, i64 0
  %YMM0.i390 = bitcast %union.VectorReg* %3897 to %"class.std::bitset"*
  %3898 = bitcast %"class.std::bitset"* %YMM0.i390 to i8*
  %3899 = load i64, i64* %RDX.i389
  %3900 = add i64 %3899, 64
  %3901 = load i64, i64* %PC.i388
  %3902 = add i64 %3901, 5
  store i64 %3902, i64* %PC.i388
  %3903 = inttoptr i64 %3900 to double*
  %3904 = load double, double* %3903
  %3905 = bitcast i8* %3898 to double*
  store double %3904, double* %3905, align 1
  %3906 = getelementptr inbounds i8, i8* %3898, i64 8
  %3907 = bitcast i8* %3906 to double*
  store double 0.000000e+00, double* %3907, align 1
  store %struct.Memory* %loadMem_400927, %struct.Memory** %MEMORY
  %loadMem_40092c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 33
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %3910 to i64*
  %3911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3912 = getelementptr inbounds %struct.GPR, %struct.GPR* %3911, i32 0, i32 7
  %3913 = getelementptr inbounds %struct.Reg, %struct.Reg* %3912, i32 0, i32 0
  %RDX.i386 = bitcast %union.anon* %3913 to i64*
  %3914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3915 = getelementptr inbounds %struct.GPR, %struct.GPR* %3914, i32 0, i32 15
  %3916 = getelementptr inbounds %struct.Reg, %struct.Reg* %3915, i32 0, i32 0
  %RBP.i387 = bitcast %union.anon* %3916 to i64*
  %3917 = load i64, i64* %RBP.i387
  %3918 = sub i64 %3917, 24
  %3919 = load i64, i64* %PC.i385
  %3920 = add i64 %3919, 4
  store i64 %3920, i64* %PC.i385
  %3921 = inttoptr i64 %3918 to i64*
  %3922 = load i64, i64* %3921
  store i64 %3922, i64* %RDX.i386, align 8
  store %struct.Memory* %loadMem_40092c, %struct.Memory** %MEMORY
  %loadMem_400930 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 7
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RDX.i383 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3930 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3929, i64 0, i64 0
  %YMM0.i384 = bitcast %union.VectorReg* %3930 to %"class.std::bitset"*
  %3931 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %3932 = bitcast %"class.std::bitset"* %YMM0.i384 to i8*
  %3933 = load i64, i64* %RDX.i383
  %3934 = add i64 %3933, 16
  %3935 = load i64, i64* %PC.i382
  %3936 = add i64 %3935, 5
  store i64 %3936, i64* %PC.i382
  %3937 = bitcast i8* %3932 to double*
  %3938 = load double, double* %3937, align 1
  %3939 = getelementptr inbounds i8, i8* %3932, i64 8
  %3940 = bitcast i8* %3939 to i64*
  %3941 = load i64, i64* %3940, align 1
  %3942 = inttoptr i64 %3934 to double*
  %3943 = load double, double* %3942
  %3944 = fmul double %3938, %3943
  %3945 = bitcast i8* %3931 to double*
  store double %3944, double* %3945, align 1
  %3946 = getelementptr inbounds i8, i8* %3931, i64 8
  %3947 = bitcast i8* %3946 to i64*
  store i64 %3941, i64* %3947, align 1
  store %struct.Memory* %loadMem_400930, %struct.Memory** %MEMORY
  %loadMem_400935 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3949 = getelementptr inbounds %struct.GPR, %struct.GPR* %3948, i32 0, i32 33
  %3950 = getelementptr inbounds %struct.Reg, %struct.Reg* %3949, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %3950 to i64*
  %3951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3952 = getelementptr inbounds %struct.GPR, %struct.GPR* %3951, i32 0, i32 7
  %3953 = getelementptr inbounds %struct.Reg, %struct.Reg* %3952, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %3953 to i64*
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 15
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %3956 to i64*
  %3957 = load i64, i64* %RBP.i381
  %3958 = sub i64 %3957, 16
  %3959 = load i64, i64* %PC.i379
  %3960 = add i64 %3959, 4
  store i64 %3960, i64* %PC.i379
  %3961 = inttoptr i64 %3958 to i64*
  %3962 = load i64, i64* %3961
  store i64 %3962, i64* %RDX.i380, align 8
  store %struct.Memory* %loadMem_400935, %struct.Memory** %MEMORY
  %loadMem_400939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 33
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %3965 to i64*
  %3966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3967 = getelementptr inbounds %struct.GPR, %struct.GPR* %3966, i32 0, i32 7
  %3968 = getelementptr inbounds %struct.Reg, %struct.Reg* %3967, i32 0, i32 0
  %RDX.i377 = bitcast %union.anon* %3968 to i64*
  %3969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %3970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %3969, i64 0, i64 1
  %YMM1.i378 = bitcast %union.VectorReg* %3970 to %"class.std::bitset"*
  %3971 = bitcast %"class.std::bitset"* %YMM1.i378 to i8*
  %3972 = load i64, i64* %RDX.i377
  %3973 = add i64 %3972, 72
  %3974 = load i64, i64* %PC.i376
  %3975 = add i64 %3974, 5
  store i64 %3975, i64* %PC.i376
  %3976 = inttoptr i64 %3973 to double*
  %3977 = load double, double* %3976
  %3978 = bitcast i8* %3971 to double*
  store double %3977, double* %3978, align 1
  %3979 = getelementptr inbounds i8, i8* %3971, i64 8
  %3980 = bitcast i8* %3979 to double*
  store double 0.000000e+00, double* %3980, align 1
  store %struct.Memory* %loadMem_400939, %struct.Memory** %MEMORY
  %loadMem_40093e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 33
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %3983 to i64*
  %3984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3985 = getelementptr inbounds %struct.GPR, %struct.GPR* %3984, i32 0, i32 7
  %3986 = getelementptr inbounds %struct.Reg, %struct.Reg* %3985, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %3986 to i64*
  %3987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3988 = getelementptr inbounds %struct.GPR, %struct.GPR* %3987, i32 0, i32 15
  %3989 = getelementptr inbounds %struct.Reg, %struct.Reg* %3988, i32 0, i32 0
  %RBP.i375 = bitcast %union.anon* %3989 to i64*
  %3990 = load i64, i64* %RBP.i375
  %3991 = sub i64 %3990, 24
  %3992 = load i64, i64* %PC.i373
  %3993 = add i64 %3992, 4
  store i64 %3993, i64* %PC.i373
  %3994 = inttoptr i64 %3991 to i64*
  %3995 = load i64, i64* %3994
  store i64 %3995, i64* %RDX.i374, align 8
  store %struct.Memory* %loadMem_40093e, %struct.Memory** %MEMORY
  %loadMem_400942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3997 = getelementptr inbounds %struct.GPR, %struct.GPR* %3996, i32 0, i32 33
  %3998 = getelementptr inbounds %struct.Reg, %struct.Reg* %3997, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %3998 to i64*
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 7
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %RDX.i371 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4003 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4002, i64 0, i64 1
  %YMM1.i372 = bitcast %union.VectorReg* %4003 to %"class.std::bitset"*
  %4004 = bitcast %"class.std::bitset"* %YMM1.i372 to i8*
  %4005 = bitcast %"class.std::bitset"* %YMM1.i372 to i8*
  %4006 = load i64, i64* %RDX.i371
  %4007 = add i64 %4006, 48
  %4008 = load i64, i64* %PC.i370
  %4009 = add i64 %4008, 5
  store i64 %4009, i64* %PC.i370
  %4010 = bitcast i8* %4005 to double*
  %4011 = load double, double* %4010, align 1
  %4012 = getelementptr inbounds i8, i8* %4005, i64 8
  %4013 = bitcast i8* %4012 to i64*
  %4014 = load i64, i64* %4013, align 1
  %4015 = inttoptr i64 %4007 to double*
  %4016 = load double, double* %4015
  %4017 = fmul double %4011, %4016
  %4018 = bitcast i8* %4004 to double*
  store double %4017, double* %4018, align 1
  %4019 = getelementptr inbounds i8, i8* %4004, i64 8
  %4020 = bitcast i8* %4019 to i64*
  store i64 %4014, i64* %4020, align 1
  store %struct.Memory* %loadMem_400942, %struct.Memory** %MEMORY
  %loadMem_400947 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4022 = getelementptr inbounds %struct.GPR, %struct.GPR* %4021, i32 0, i32 33
  %4023 = getelementptr inbounds %struct.Reg, %struct.Reg* %4022, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4023 to i64*
  %4024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4025 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4024, i64 0, i64 0
  %YMM0.i368 = bitcast %union.VectorReg* %4025 to %"class.std::bitset"*
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4026, i64 0, i64 1
  %XMM1.i369 = bitcast %union.VectorReg* %4027 to %union.vec128_t*
  %4028 = bitcast %"class.std::bitset"* %YMM0.i368 to i8*
  %4029 = bitcast %"class.std::bitset"* %YMM0.i368 to i8*
  %4030 = bitcast %union.vec128_t* %XMM1.i369 to i8*
  %4031 = load i64, i64* %PC.i367
  %4032 = add i64 %4031, 4
  store i64 %4032, i64* %PC.i367
  %4033 = bitcast i8* %4029 to double*
  %4034 = load double, double* %4033, align 1
  %4035 = getelementptr inbounds i8, i8* %4029, i64 8
  %4036 = bitcast i8* %4035 to i64*
  %4037 = load i64, i64* %4036, align 1
  %4038 = bitcast i8* %4030 to double*
  %4039 = load double, double* %4038, align 1
  %4040 = fadd double %4034, %4039
  %4041 = bitcast i8* %4028 to double*
  store double %4040, double* %4041, align 1
  %4042 = getelementptr inbounds i8, i8* %4028, i64 8
  %4043 = bitcast i8* %4042 to i64*
  store i64 %4037, i64* %4043, align 1
  store %struct.Memory* %loadMem_400947, %struct.Memory** %MEMORY
  %loadMem_40094b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 33
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4046 to i64*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 7
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %RDX.i365 = bitcast %union.anon* %4049 to i64*
  %4050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4051 = getelementptr inbounds %struct.GPR, %struct.GPR* %4050, i32 0, i32 15
  %4052 = getelementptr inbounds %struct.Reg, %struct.Reg* %4051, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4052 to i64*
  %4053 = load i64, i64* %RBP.i366
  %4054 = sub i64 %4053, 16
  %4055 = load i64, i64* %PC.i364
  %4056 = add i64 %4055, 4
  store i64 %4056, i64* %PC.i364
  %4057 = inttoptr i64 %4054 to i64*
  %4058 = load i64, i64* %4057
  store i64 %4058, i64* %RDX.i365, align 8
  store %struct.Memory* %loadMem_40094b, %struct.Memory** %MEMORY
  %loadMem_40094f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 7
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RDX.i362 = bitcast %union.anon* %4064 to i64*
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4066 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4065, i64 0, i64 1
  %YMM1.i363 = bitcast %union.VectorReg* %4066 to %"class.std::bitset"*
  %4067 = bitcast %"class.std::bitset"* %YMM1.i363 to i8*
  %4068 = load i64, i64* %RDX.i362
  %4069 = add i64 %4068, 80
  %4070 = load i64, i64* %PC.i361
  %4071 = add i64 %4070, 5
  store i64 %4071, i64* %PC.i361
  %4072 = inttoptr i64 %4069 to double*
  %4073 = load double, double* %4072
  %4074 = bitcast i8* %4067 to double*
  store double %4073, double* %4074, align 1
  %4075 = getelementptr inbounds i8, i8* %4067, i64 8
  %4076 = bitcast i8* %4075 to double*
  store double 0.000000e+00, double* %4076, align 1
  store %struct.Memory* %loadMem_40094f, %struct.Memory** %MEMORY
  %loadMem_400954 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 33
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 7
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RDX.i359 = bitcast %union.anon* %4082 to i64*
  %4083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4084 = getelementptr inbounds %struct.GPR, %struct.GPR* %4083, i32 0, i32 15
  %4085 = getelementptr inbounds %struct.Reg, %struct.Reg* %4084, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %4085 to i64*
  %4086 = load i64, i64* %RBP.i360
  %4087 = sub i64 %4086, 24
  %4088 = load i64, i64* %PC.i358
  %4089 = add i64 %4088, 4
  store i64 %4089, i64* %PC.i358
  %4090 = inttoptr i64 %4087 to i64*
  %4091 = load i64, i64* %4090
  store i64 %4091, i64* %RDX.i359, align 8
  store %struct.Memory* %loadMem_400954, %struct.Memory** %MEMORY
  %loadMem_400958 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4093 = getelementptr inbounds %struct.GPR, %struct.GPR* %4092, i32 0, i32 33
  %4094 = getelementptr inbounds %struct.Reg, %struct.Reg* %4093, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4094 to i64*
  %4095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4096 = getelementptr inbounds %struct.GPR, %struct.GPR* %4095, i32 0, i32 7
  %4097 = getelementptr inbounds %struct.Reg, %struct.Reg* %4096, i32 0, i32 0
  %RDX.i356 = bitcast %union.anon* %4097 to i64*
  %4098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4099 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4098, i64 0, i64 1
  %YMM1.i357 = bitcast %union.VectorReg* %4099 to %"class.std::bitset"*
  %4100 = bitcast %"class.std::bitset"* %YMM1.i357 to i8*
  %4101 = bitcast %"class.std::bitset"* %YMM1.i357 to i8*
  %4102 = load i64, i64* %RDX.i356
  %4103 = add i64 %4102, 80
  %4104 = load i64, i64* %PC.i355
  %4105 = add i64 %4104, 5
  store i64 %4105, i64* %PC.i355
  %4106 = bitcast i8* %4101 to double*
  %4107 = load double, double* %4106, align 1
  %4108 = getelementptr inbounds i8, i8* %4101, i64 8
  %4109 = bitcast i8* %4108 to i64*
  %4110 = load i64, i64* %4109, align 1
  %4111 = inttoptr i64 %4103 to double*
  %4112 = load double, double* %4111
  %4113 = fmul double %4107, %4112
  %4114 = bitcast i8* %4100 to double*
  store double %4113, double* %4114, align 1
  %4115 = getelementptr inbounds i8, i8* %4100, i64 8
  %4116 = bitcast i8* %4115 to i64*
  store i64 %4110, i64* %4116, align 1
  store %struct.Memory* %loadMem_400958, %struct.Memory** %MEMORY
  %loadMem_40095d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4121 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4120, i64 0, i64 0
  %YMM0.i353 = bitcast %union.VectorReg* %4121 to %"class.std::bitset"*
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4123 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4122, i64 0, i64 1
  %XMM1.i354 = bitcast %union.VectorReg* %4123 to %union.vec128_t*
  %4124 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %4125 = bitcast %"class.std::bitset"* %YMM0.i353 to i8*
  %4126 = bitcast %union.vec128_t* %XMM1.i354 to i8*
  %4127 = load i64, i64* %PC.i352
  %4128 = add i64 %4127, 4
  store i64 %4128, i64* %PC.i352
  %4129 = bitcast i8* %4125 to double*
  %4130 = load double, double* %4129, align 1
  %4131 = getelementptr inbounds i8, i8* %4125, i64 8
  %4132 = bitcast i8* %4131 to i64*
  %4133 = load i64, i64* %4132, align 1
  %4134 = bitcast i8* %4126 to double*
  %4135 = load double, double* %4134, align 1
  %4136 = fadd double %4130, %4135
  %4137 = bitcast i8* %4124 to double*
  store double %4136, double* %4137, align 1
  %4138 = getelementptr inbounds i8, i8* %4124, i64 8
  %4139 = bitcast i8* %4138 to i64*
  store i64 %4133, i64* %4139, align 1
  store %struct.Memory* %loadMem_40095d, %struct.Memory** %MEMORY
  %loadMem_400961 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4141 = getelementptr inbounds %struct.GPR, %struct.GPR* %4140, i32 0, i32 33
  %4142 = getelementptr inbounds %struct.Reg, %struct.Reg* %4141, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4142 to i64*
  %4143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4144 = getelementptr inbounds %struct.GPR, %struct.GPR* %4143, i32 0, i32 7
  %4145 = getelementptr inbounds %struct.Reg, %struct.Reg* %4144, i32 0, i32 0
  %RDX.i350 = bitcast %union.anon* %4145 to i64*
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4147 = getelementptr inbounds %struct.GPR, %struct.GPR* %4146, i32 0, i32 15
  %4148 = getelementptr inbounds %struct.Reg, %struct.Reg* %4147, i32 0, i32 0
  %RBP.i351 = bitcast %union.anon* %4148 to i64*
  %4149 = load i64, i64* %RBP.i351
  %4150 = sub i64 %4149, 16
  %4151 = load i64, i64* %PC.i349
  %4152 = add i64 %4151, 4
  store i64 %4152, i64* %PC.i349
  %4153 = inttoptr i64 %4150 to i64*
  %4154 = load i64, i64* %4153
  store i64 %4154, i64* %RDX.i350, align 8
  store %struct.Memory* %loadMem_400961, %struct.Memory** %MEMORY
  %loadMem_400965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 7
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %RDX.i347 = bitcast %union.anon* %4160 to i64*
  %4161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4162 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4161, i64 0, i64 1
  %YMM1.i348 = bitcast %union.VectorReg* %4162 to %"class.std::bitset"*
  %4163 = bitcast %"class.std::bitset"* %YMM1.i348 to i8*
  %4164 = load i64, i64* %RDX.i347
  %4165 = add i64 %4164, 88
  %4166 = load i64, i64* %PC.i346
  %4167 = add i64 %4166, 5
  store i64 %4167, i64* %PC.i346
  %4168 = inttoptr i64 %4165 to double*
  %4169 = load double, double* %4168
  %4170 = bitcast i8* %4163 to double*
  store double %4169, double* %4170, align 1
  %4171 = getelementptr inbounds i8, i8* %4163, i64 8
  %4172 = bitcast i8* %4171 to double*
  store double 0.000000e+00, double* %4172, align 1
  store %struct.Memory* %loadMem_400965, %struct.Memory** %MEMORY
  %loadMem_40096a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 33
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4175 to i64*
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4177 = getelementptr inbounds %struct.GPR, %struct.GPR* %4176, i32 0, i32 7
  %4178 = getelementptr inbounds %struct.Reg, %struct.Reg* %4177, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %4178 to i64*
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4180 = getelementptr inbounds %struct.GPR, %struct.GPR* %4179, i32 0, i32 15
  %4181 = getelementptr inbounds %struct.Reg, %struct.Reg* %4180, i32 0, i32 0
  %RBP.i345 = bitcast %union.anon* %4181 to i64*
  %4182 = load i64, i64* %RBP.i345
  %4183 = sub i64 %4182, 24
  %4184 = load i64, i64* %PC.i343
  %4185 = add i64 %4184, 4
  store i64 %4185, i64* %PC.i343
  %4186 = inttoptr i64 %4183 to i64*
  %4187 = load i64, i64* %4186
  store i64 %4187, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_40096a, %struct.Memory** %MEMORY
  %loadMem_40096e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4189 = getelementptr inbounds %struct.GPR, %struct.GPR* %4188, i32 0, i32 33
  %4190 = getelementptr inbounds %struct.Reg, %struct.Reg* %4189, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %4190 to i64*
  %4191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4192 = getelementptr inbounds %struct.GPR, %struct.GPR* %4191, i32 0, i32 7
  %4193 = getelementptr inbounds %struct.Reg, %struct.Reg* %4192, i32 0, i32 0
  %RDX.i341 = bitcast %union.anon* %4193 to i64*
  %4194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4195 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4194, i64 0, i64 1
  %YMM1.i342 = bitcast %union.VectorReg* %4195 to %"class.std::bitset"*
  %4196 = bitcast %"class.std::bitset"* %YMM1.i342 to i8*
  %4197 = bitcast %"class.std::bitset"* %YMM1.i342 to i8*
  %4198 = load i64, i64* %RDX.i341
  %4199 = add i64 %4198, 112
  %4200 = load i64, i64* %PC.i340
  %4201 = add i64 %4200, 5
  store i64 %4201, i64* %PC.i340
  %4202 = bitcast i8* %4197 to double*
  %4203 = load double, double* %4202, align 1
  %4204 = getelementptr inbounds i8, i8* %4197, i64 8
  %4205 = bitcast i8* %4204 to i64*
  %4206 = load i64, i64* %4205, align 1
  %4207 = inttoptr i64 %4199 to double*
  %4208 = load double, double* %4207
  %4209 = fmul double %4203, %4208
  %4210 = bitcast i8* %4196 to double*
  store double %4209, double* %4210, align 1
  %4211 = getelementptr inbounds i8, i8* %4196, i64 8
  %4212 = bitcast i8* %4211 to i64*
  store i64 %4206, i64* %4212, align 1
  store %struct.Memory* %loadMem_40096e, %struct.Memory** %MEMORY
  %loadMem_400973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 33
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %4215 to i64*
  %4216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4217 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4216, i64 0, i64 0
  %YMM0.i338 = bitcast %union.VectorReg* %4217 to %"class.std::bitset"*
  %4218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4219 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4218, i64 0, i64 1
  %XMM1.i339 = bitcast %union.VectorReg* %4219 to %union.vec128_t*
  %4220 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %4221 = bitcast %"class.std::bitset"* %YMM0.i338 to i8*
  %4222 = bitcast %union.vec128_t* %XMM1.i339 to i8*
  %4223 = load i64, i64* %PC.i337
  %4224 = add i64 %4223, 4
  store i64 %4224, i64* %PC.i337
  %4225 = bitcast i8* %4221 to double*
  %4226 = load double, double* %4225, align 1
  %4227 = getelementptr inbounds i8, i8* %4221, i64 8
  %4228 = bitcast i8* %4227 to i64*
  %4229 = load i64, i64* %4228, align 1
  %4230 = bitcast i8* %4222 to double*
  %4231 = load double, double* %4230, align 1
  %4232 = fadd double %4226, %4231
  %4233 = bitcast i8* %4220 to double*
  store double %4232, double* %4233, align 1
  %4234 = getelementptr inbounds i8, i8* %4220, i64 8
  %4235 = bitcast i8* %4234 to i64*
  store i64 %4229, i64* %4235, align 1
  store %struct.Memory* %loadMem_400973, %struct.Memory** %MEMORY
  %loadMem_400977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 33
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 15
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4243 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4242, i64 0, i64 0
  %XMM0.i336 = bitcast %union.VectorReg* %4243 to %union.vec128_t*
  %4244 = load i64, i64* %RBP.i335
  %4245 = sub i64 %4244, 80
  %4246 = bitcast %union.vec128_t* %XMM0.i336 to i8*
  %4247 = load i64, i64* %PC.i334
  %4248 = add i64 %4247, 5
  store i64 %4248, i64* %PC.i334
  %4249 = bitcast i8* %4246 to double*
  %4250 = load double, double* %4249, align 1
  %4251 = inttoptr i64 %4245 to double*
  store double %4250, double* %4251
  store %struct.Memory* %loadMem_400977, %struct.Memory** %MEMORY
  %loadMem_40097c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4253 = getelementptr inbounds %struct.GPR, %struct.GPR* %4252, i32 0, i32 33
  %4254 = getelementptr inbounds %struct.Reg, %struct.Reg* %4253, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %4254 to i64*
  %4255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4256 = getelementptr inbounds %struct.GPR, %struct.GPR* %4255, i32 0, i32 7
  %4257 = getelementptr inbounds %struct.Reg, %struct.Reg* %4256, i32 0, i32 0
  %RDX.i332 = bitcast %union.anon* %4257 to i64*
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4259 = getelementptr inbounds %struct.GPR, %struct.GPR* %4258, i32 0, i32 15
  %4260 = getelementptr inbounds %struct.Reg, %struct.Reg* %4259, i32 0, i32 0
  %RBP.i333 = bitcast %union.anon* %4260 to i64*
  %4261 = load i64, i64* %RBP.i333
  %4262 = sub i64 %4261, 16
  %4263 = load i64, i64* %PC.i331
  %4264 = add i64 %4263, 4
  store i64 %4264, i64* %PC.i331
  %4265 = inttoptr i64 %4262 to i64*
  %4266 = load i64, i64* %4265
  store i64 %4266, i64* %RDX.i332, align 8
  store %struct.Memory* %loadMem_40097c, %struct.Memory** %MEMORY
  %loadMem_400980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4268 = getelementptr inbounds %struct.GPR, %struct.GPR* %4267, i32 0, i32 33
  %4269 = getelementptr inbounds %struct.Reg, %struct.Reg* %4268, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4269 to i64*
  %4270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4271 = getelementptr inbounds %struct.GPR, %struct.GPR* %4270, i32 0, i32 7
  %4272 = getelementptr inbounds %struct.Reg, %struct.Reg* %4271, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %4272 to i64*
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4274 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4273, i64 0, i64 0
  %YMM0.i330 = bitcast %union.VectorReg* %4274 to %"class.std::bitset"*
  %4275 = bitcast %"class.std::bitset"* %YMM0.i330 to i8*
  %4276 = load i64, i64* %RDX.i329
  %4277 = add i64 %4276, 64
  %4278 = load i64, i64* %PC.i328
  %4279 = add i64 %4278, 5
  store i64 %4279, i64* %PC.i328
  %4280 = inttoptr i64 %4277 to double*
  %4281 = load double, double* %4280
  %4282 = bitcast i8* %4275 to double*
  store double %4281, double* %4282, align 1
  %4283 = getelementptr inbounds i8, i8* %4275, i64 8
  %4284 = bitcast i8* %4283 to double*
  store double 0.000000e+00, double* %4284, align 1
  store %struct.Memory* %loadMem_400980, %struct.Memory** %MEMORY
  %loadMem_400985 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4286 = getelementptr inbounds %struct.GPR, %struct.GPR* %4285, i32 0, i32 33
  %4287 = getelementptr inbounds %struct.Reg, %struct.Reg* %4286, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %4287 to i64*
  %4288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4289 = getelementptr inbounds %struct.GPR, %struct.GPR* %4288, i32 0, i32 7
  %4290 = getelementptr inbounds %struct.Reg, %struct.Reg* %4289, i32 0, i32 0
  %RDX.i326 = bitcast %union.anon* %4290 to i64*
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 15
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %RBP.i327 = bitcast %union.anon* %4293 to i64*
  %4294 = load i64, i64* %RBP.i327
  %4295 = sub i64 %4294, 24
  %4296 = load i64, i64* %PC.i325
  %4297 = add i64 %4296, 4
  store i64 %4297, i64* %PC.i325
  %4298 = inttoptr i64 %4295 to i64*
  %4299 = load i64, i64* %4298
  store i64 %4299, i64* %RDX.i326, align 8
  store %struct.Memory* %loadMem_400985, %struct.Memory** %MEMORY
  %loadMem_400989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4301 = getelementptr inbounds %struct.GPR, %struct.GPR* %4300, i32 0, i32 33
  %4302 = getelementptr inbounds %struct.Reg, %struct.Reg* %4301, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4302 to i64*
  %4303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4304 = getelementptr inbounds %struct.GPR, %struct.GPR* %4303, i32 0, i32 7
  %4305 = getelementptr inbounds %struct.Reg, %struct.Reg* %4304, i32 0, i32 0
  %RDX.i323 = bitcast %union.anon* %4305 to i64*
  %4306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4307 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4306, i64 0, i64 0
  %YMM0.i324 = bitcast %union.VectorReg* %4307 to %"class.std::bitset"*
  %4308 = bitcast %"class.std::bitset"* %YMM0.i324 to i8*
  %4309 = bitcast %"class.std::bitset"* %YMM0.i324 to i8*
  %4310 = load i64, i64* %RDX.i323
  %4311 = add i64 %4310, 24
  %4312 = load i64, i64* %PC.i322
  %4313 = add i64 %4312, 5
  store i64 %4313, i64* %PC.i322
  %4314 = bitcast i8* %4309 to double*
  %4315 = load double, double* %4314, align 1
  %4316 = getelementptr inbounds i8, i8* %4309, i64 8
  %4317 = bitcast i8* %4316 to i64*
  %4318 = load i64, i64* %4317, align 1
  %4319 = inttoptr i64 %4311 to double*
  %4320 = load double, double* %4319
  %4321 = fmul double %4315, %4320
  %4322 = bitcast i8* %4308 to double*
  store double %4321, double* %4322, align 1
  %4323 = getelementptr inbounds i8, i8* %4308, i64 8
  %4324 = bitcast i8* %4323 to i64*
  store i64 %4318, i64* %4324, align 1
  store %struct.Memory* %loadMem_400989, %struct.Memory** %MEMORY
  %loadMem_40098e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4326 = getelementptr inbounds %struct.GPR, %struct.GPR* %4325, i32 0, i32 33
  %4327 = getelementptr inbounds %struct.Reg, %struct.Reg* %4326, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %4327 to i64*
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4329 = getelementptr inbounds %struct.GPR, %struct.GPR* %4328, i32 0, i32 7
  %4330 = getelementptr inbounds %struct.Reg, %struct.Reg* %4329, i32 0, i32 0
  %RDX.i320 = bitcast %union.anon* %4330 to i64*
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4332 = getelementptr inbounds %struct.GPR, %struct.GPR* %4331, i32 0, i32 15
  %4333 = getelementptr inbounds %struct.Reg, %struct.Reg* %4332, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %4333 to i64*
  %4334 = load i64, i64* %RBP.i321
  %4335 = sub i64 %4334, 16
  %4336 = load i64, i64* %PC.i319
  %4337 = add i64 %4336, 4
  store i64 %4337, i64* %PC.i319
  %4338 = inttoptr i64 %4335 to i64*
  %4339 = load i64, i64* %4338
  store i64 %4339, i64* %RDX.i320, align 8
  store %struct.Memory* %loadMem_40098e, %struct.Memory** %MEMORY
  %loadMem_400992 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4341 = getelementptr inbounds %struct.GPR, %struct.GPR* %4340, i32 0, i32 33
  %4342 = getelementptr inbounds %struct.Reg, %struct.Reg* %4341, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %4342 to i64*
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 7
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4346, i64 0, i64 1
  %YMM1.i318 = bitcast %union.VectorReg* %4347 to %"class.std::bitset"*
  %4348 = bitcast %"class.std::bitset"* %YMM1.i318 to i8*
  %4349 = load i64, i64* %RDX.i317
  %4350 = add i64 %4349, 72
  %4351 = load i64, i64* %PC.i316
  %4352 = add i64 %4351, 5
  store i64 %4352, i64* %PC.i316
  %4353 = inttoptr i64 %4350 to double*
  %4354 = load double, double* %4353
  %4355 = bitcast i8* %4348 to double*
  store double %4354, double* %4355, align 1
  %4356 = getelementptr inbounds i8, i8* %4348, i64 8
  %4357 = bitcast i8* %4356 to double*
  store double 0.000000e+00, double* %4357, align 1
  store %struct.Memory* %loadMem_400992, %struct.Memory** %MEMORY
  %loadMem_400997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4359 = getelementptr inbounds %struct.GPR, %struct.GPR* %4358, i32 0, i32 33
  %4360 = getelementptr inbounds %struct.Reg, %struct.Reg* %4359, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4360 to i64*
  %4361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4362 = getelementptr inbounds %struct.GPR, %struct.GPR* %4361, i32 0, i32 7
  %4363 = getelementptr inbounds %struct.Reg, %struct.Reg* %4362, i32 0, i32 0
  %RDX.i314 = bitcast %union.anon* %4363 to i64*
  %4364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4365 = getelementptr inbounds %struct.GPR, %struct.GPR* %4364, i32 0, i32 15
  %4366 = getelementptr inbounds %struct.Reg, %struct.Reg* %4365, i32 0, i32 0
  %RBP.i315 = bitcast %union.anon* %4366 to i64*
  %4367 = load i64, i64* %RBP.i315
  %4368 = sub i64 %4367, 24
  %4369 = load i64, i64* %PC.i313
  %4370 = add i64 %4369, 4
  store i64 %4370, i64* %PC.i313
  %4371 = inttoptr i64 %4368 to i64*
  %4372 = load i64, i64* %4371
  store i64 %4372, i64* %RDX.i314, align 8
  store %struct.Memory* %loadMem_400997, %struct.Memory** %MEMORY
  %loadMem_40099b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4374 = getelementptr inbounds %struct.GPR, %struct.GPR* %4373, i32 0, i32 33
  %4375 = getelementptr inbounds %struct.Reg, %struct.Reg* %4374, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4375 to i64*
  %4376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4377 = getelementptr inbounds %struct.GPR, %struct.GPR* %4376, i32 0, i32 7
  %4378 = getelementptr inbounds %struct.Reg, %struct.Reg* %4377, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %4378 to i64*
  %4379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4380 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4379, i64 0, i64 1
  %YMM1.i312 = bitcast %union.VectorReg* %4380 to %"class.std::bitset"*
  %4381 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %4382 = bitcast %"class.std::bitset"* %YMM1.i312 to i8*
  %4383 = load i64, i64* %RDX.i311
  %4384 = add i64 %4383, 56
  %4385 = load i64, i64* %PC.i310
  %4386 = add i64 %4385, 5
  store i64 %4386, i64* %PC.i310
  %4387 = bitcast i8* %4382 to double*
  %4388 = load double, double* %4387, align 1
  %4389 = getelementptr inbounds i8, i8* %4382, i64 8
  %4390 = bitcast i8* %4389 to i64*
  %4391 = load i64, i64* %4390, align 1
  %4392 = inttoptr i64 %4384 to double*
  %4393 = load double, double* %4392
  %4394 = fmul double %4388, %4393
  %4395 = bitcast i8* %4381 to double*
  store double %4394, double* %4395, align 1
  %4396 = getelementptr inbounds i8, i8* %4381, i64 8
  %4397 = bitcast i8* %4396 to i64*
  store i64 %4391, i64* %4397, align 1
  store %struct.Memory* %loadMem_40099b, %struct.Memory** %MEMORY
  %loadMem_4009a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4399 = getelementptr inbounds %struct.GPR, %struct.GPR* %4398, i32 0, i32 33
  %4400 = getelementptr inbounds %struct.Reg, %struct.Reg* %4399, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4400 to i64*
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4402 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4401, i64 0, i64 0
  %YMM0.i308 = bitcast %union.VectorReg* %4402 to %"class.std::bitset"*
  %4403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4403, i64 0, i64 1
  %XMM1.i309 = bitcast %union.VectorReg* %4404 to %union.vec128_t*
  %4405 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %4406 = bitcast %"class.std::bitset"* %YMM0.i308 to i8*
  %4407 = bitcast %union.vec128_t* %XMM1.i309 to i8*
  %4408 = load i64, i64* %PC.i307
  %4409 = add i64 %4408, 4
  store i64 %4409, i64* %PC.i307
  %4410 = bitcast i8* %4406 to double*
  %4411 = load double, double* %4410, align 1
  %4412 = getelementptr inbounds i8, i8* %4406, i64 8
  %4413 = bitcast i8* %4412 to i64*
  %4414 = load i64, i64* %4413, align 1
  %4415 = bitcast i8* %4407 to double*
  %4416 = load double, double* %4415, align 1
  %4417 = fadd double %4411, %4416
  %4418 = bitcast i8* %4405 to double*
  store double %4417, double* %4418, align 1
  %4419 = getelementptr inbounds i8, i8* %4405, i64 8
  %4420 = bitcast i8* %4419 to i64*
  store i64 %4414, i64* %4420, align 1
  store %struct.Memory* %loadMem_4009a0, %struct.Memory** %MEMORY
  %loadMem_4009a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4422 = getelementptr inbounds %struct.GPR, %struct.GPR* %4421, i32 0, i32 33
  %4423 = getelementptr inbounds %struct.Reg, %struct.Reg* %4422, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4423 to i64*
  %4424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4425 = getelementptr inbounds %struct.GPR, %struct.GPR* %4424, i32 0, i32 7
  %4426 = getelementptr inbounds %struct.Reg, %struct.Reg* %4425, i32 0, i32 0
  %RDX.i305 = bitcast %union.anon* %4426 to i64*
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 15
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %RBP.i306 = bitcast %union.anon* %4429 to i64*
  %4430 = load i64, i64* %RBP.i306
  %4431 = sub i64 %4430, 16
  %4432 = load i64, i64* %PC.i304
  %4433 = add i64 %4432, 4
  store i64 %4433, i64* %PC.i304
  %4434 = inttoptr i64 %4431 to i64*
  %4435 = load i64, i64* %4434
  store i64 %4435, i64* %RDX.i305, align 8
  store %struct.Memory* %loadMem_4009a4, %struct.Memory** %MEMORY
  %loadMem_4009a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 7
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %RDX.i302 = bitcast %union.anon* %4441 to i64*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4443 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4442, i64 0, i64 1
  %YMM1.i303 = bitcast %union.VectorReg* %4443 to %"class.std::bitset"*
  %4444 = bitcast %"class.std::bitset"* %YMM1.i303 to i8*
  %4445 = load i64, i64* %RDX.i302
  %4446 = add i64 %4445, 80
  %4447 = load i64, i64* %PC.i301
  %4448 = add i64 %4447, 5
  store i64 %4448, i64* %PC.i301
  %4449 = inttoptr i64 %4446 to double*
  %4450 = load double, double* %4449
  %4451 = bitcast i8* %4444 to double*
  store double %4450, double* %4451, align 1
  %4452 = getelementptr inbounds i8, i8* %4444, i64 8
  %4453 = bitcast i8* %4452 to double*
  store double 0.000000e+00, double* %4453, align 1
  store %struct.Memory* %loadMem_4009a8, %struct.Memory** %MEMORY
  %loadMem_4009ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4455 = getelementptr inbounds %struct.GPR, %struct.GPR* %4454, i32 0, i32 33
  %4456 = getelementptr inbounds %struct.Reg, %struct.Reg* %4455, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %4456 to i64*
  %4457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4458 = getelementptr inbounds %struct.GPR, %struct.GPR* %4457, i32 0, i32 7
  %4459 = getelementptr inbounds %struct.Reg, %struct.Reg* %4458, i32 0, i32 0
  %RDX.i299 = bitcast %union.anon* %4459 to i64*
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 15
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %RBP.i300
  %4464 = sub i64 %4463, 24
  %4465 = load i64, i64* %PC.i298
  %4466 = add i64 %4465, 4
  store i64 %4466, i64* %PC.i298
  %4467 = inttoptr i64 %4464 to i64*
  %4468 = load i64, i64* %4467
  store i64 %4468, i64* %RDX.i299, align 8
  store %struct.Memory* %loadMem_4009ad, %struct.Memory** %MEMORY
  %loadMem_4009b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4470 = getelementptr inbounds %struct.GPR, %struct.GPR* %4469, i32 0, i32 33
  %4471 = getelementptr inbounds %struct.Reg, %struct.Reg* %4470, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %4471 to i64*
  %4472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4473 = getelementptr inbounds %struct.GPR, %struct.GPR* %4472, i32 0, i32 7
  %4474 = getelementptr inbounds %struct.Reg, %struct.Reg* %4473, i32 0, i32 0
  %RDX.i296 = bitcast %union.anon* %4474 to i64*
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4476 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4475, i64 0, i64 1
  %YMM1.i297 = bitcast %union.VectorReg* %4476 to %"class.std::bitset"*
  %4477 = bitcast %"class.std::bitset"* %YMM1.i297 to i8*
  %4478 = bitcast %"class.std::bitset"* %YMM1.i297 to i8*
  %4479 = load i64, i64* %RDX.i296
  %4480 = add i64 %4479, 88
  %4481 = load i64, i64* %PC.i295
  %4482 = add i64 %4481, 5
  store i64 %4482, i64* %PC.i295
  %4483 = bitcast i8* %4478 to double*
  %4484 = load double, double* %4483, align 1
  %4485 = getelementptr inbounds i8, i8* %4478, i64 8
  %4486 = bitcast i8* %4485 to i64*
  %4487 = load i64, i64* %4486, align 1
  %4488 = inttoptr i64 %4480 to double*
  %4489 = load double, double* %4488
  %4490 = fmul double %4484, %4489
  %4491 = bitcast i8* %4477 to double*
  store double %4490, double* %4491, align 1
  %4492 = getelementptr inbounds i8, i8* %4477, i64 8
  %4493 = bitcast i8* %4492 to i64*
  store i64 %4487, i64* %4493, align 1
  store %struct.Memory* %loadMem_4009b1, %struct.Memory** %MEMORY
  %loadMem_4009b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4495 = getelementptr inbounds %struct.GPR, %struct.GPR* %4494, i32 0, i32 33
  %4496 = getelementptr inbounds %struct.Reg, %struct.Reg* %4495, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %4496 to i64*
  %4497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4498 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4497, i64 0, i64 0
  %YMM0.i293 = bitcast %union.VectorReg* %4498 to %"class.std::bitset"*
  %4499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4500 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4499, i64 0, i64 1
  %XMM1.i294 = bitcast %union.VectorReg* %4500 to %union.vec128_t*
  %4501 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %4502 = bitcast %"class.std::bitset"* %YMM0.i293 to i8*
  %4503 = bitcast %union.vec128_t* %XMM1.i294 to i8*
  %4504 = load i64, i64* %PC.i292
  %4505 = add i64 %4504, 4
  store i64 %4505, i64* %PC.i292
  %4506 = bitcast i8* %4502 to double*
  %4507 = load double, double* %4506, align 1
  %4508 = getelementptr inbounds i8, i8* %4502, i64 8
  %4509 = bitcast i8* %4508 to i64*
  %4510 = load i64, i64* %4509, align 1
  %4511 = bitcast i8* %4503 to double*
  %4512 = load double, double* %4511, align 1
  %4513 = fadd double %4507, %4512
  %4514 = bitcast i8* %4501 to double*
  store double %4513, double* %4514, align 1
  %4515 = getelementptr inbounds i8, i8* %4501, i64 8
  %4516 = bitcast i8* %4515 to i64*
  store i64 %4510, i64* %4516, align 1
  store %struct.Memory* %loadMem_4009b6, %struct.Memory** %MEMORY
  %loadMem_4009ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4518 = getelementptr inbounds %struct.GPR, %struct.GPR* %4517, i32 0, i32 33
  %4519 = getelementptr inbounds %struct.Reg, %struct.Reg* %4518, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %4519 to i64*
  %4520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4521 = getelementptr inbounds %struct.GPR, %struct.GPR* %4520, i32 0, i32 7
  %4522 = getelementptr inbounds %struct.Reg, %struct.Reg* %4521, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %4522 to i64*
  %4523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4524 = getelementptr inbounds %struct.GPR, %struct.GPR* %4523, i32 0, i32 15
  %4525 = getelementptr inbounds %struct.Reg, %struct.Reg* %4524, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %4525 to i64*
  %4526 = load i64, i64* %RBP.i291
  %4527 = sub i64 %4526, 16
  %4528 = load i64, i64* %PC.i289
  %4529 = add i64 %4528, 4
  store i64 %4529, i64* %PC.i289
  %4530 = inttoptr i64 %4527 to i64*
  %4531 = load i64, i64* %4530
  store i64 %4531, i64* %RDX.i290, align 8
  store %struct.Memory* %loadMem_4009ba, %struct.Memory** %MEMORY
  %loadMem_4009be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 33
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %4534 to i64*
  %4535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4536 = getelementptr inbounds %struct.GPR, %struct.GPR* %4535, i32 0, i32 7
  %4537 = getelementptr inbounds %struct.Reg, %struct.Reg* %4536, i32 0, i32 0
  %RDX.i287 = bitcast %union.anon* %4537 to i64*
  %4538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4539 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4538, i64 0, i64 1
  %YMM1.i288 = bitcast %union.VectorReg* %4539 to %"class.std::bitset"*
  %4540 = bitcast %"class.std::bitset"* %YMM1.i288 to i8*
  %4541 = load i64, i64* %RDX.i287
  %4542 = add i64 %4541, 88
  %4543 = load i64, i64* %PC.i286
  %4544 = add i64 %4543, 5
  store i64 %4544, i64* %PC.i286
  %4545 = inttoptr i64 %4542 to double*
  %4546 = load double, double* %4545
  %4547 = bitcast i8* %4540 to double*
  store double %4546, double* %4547, align 1
  %4548 = getelementptr inbounds i8, i8* %4540, i64 8
  %4549 = bitcast i8* %4548 to double*
  store double 0.000000e+00, double* %4549, align 1
  store %struct.Memory* %loadMem_4009be, %struct.Memory** %MEMORY
  %loadMem_4009c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 33
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %4552 to i64*
  %4553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4554 = getelementptr inbounds %struct.GPR, %struct.GPR* %4553, i32 0, i32 7
  %4555 = getelementptr inbounds %struct.Reg, %struct.Reg* %4554, i32 0, i32 0
  %RDX.i284 = bitcast %union.anon* %4555 to i64*
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4557 = getelementptr inbounds %struct.GPR, %struct.GPR* %4556, i32 0, i32 15
  %4558 = getelementptr inbounds %struct.Reg, %struct.Reg* %4557, i32 0, i32 0
  %RBP.i285 = bitcast %union.anon* %4558 to i64*
  %4559 = load i64, i64* %RBP.i285
  %4560 = sub i64 %4559, 24
  %4561 = load i64, i64* %PC.i283
  %4562 = add i64 %4561, 4
  store i64 %4562, i64* %PC.i283
  %4563 = inttoptr i64 %4560 to i64*
  %4564 = load i64, i64* %4563
  store i64 %4564, i64* %RDX.i284, align 8
  store %struct.Memory* %loadMem_4009c3, %struct.Memory** %MEMORY
  %loadMem_4009c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4566 = getelementptr inbounds %struct.GPR, %struct.GPR* %4565, i32 0, i32 33
  %4567 = getelementptr inbounds %struct.Reg, %struct.Reg* %4566, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %4567 to i64*
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4569 = getelementptr inbounds %struct.GPR, %struct.GPR* %4568, i32 0, i32 7
  %4570 = getelementptr inbounds %struct.Reg, %struct.Reg* %4569, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %4570 to i64*
  %4571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4572 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4571, i64 0, i64 1
  %YMM1.i282 = bitcast %union.VectorReg* %4572 to %"class.std::bitset"*
  %4573 = bitcast %"class.std::bitset"* %YMM1.i282 to i8*
  %4574 = bitcast %"class.std::bitset"* %YMM1.i282 to i8*
  %4575 = load i64, i64* %RDX.i281
  %4576 = add i64 %4575, 120
  %4577 = load i64, i64* %PC.i280
  %4578 = add i64 %4577, 5
  store i64 %4578, i64* %PC.i280
  %4579 = bitcast i8* %4574 to double*
  %4580 = load double, double* %4579, align 1
  %4581 = getelementptr inbounds i8, i8* %4574, i64 8
  %4582 = bitcast i8* %4581 to i64*
  %4583 = load i64, i64* %4582, align 1
  %4584 = inttoptr i64 %4576 to double*
  %4585 = load double, double* %4584
  %4586 = fmul double %4580, %4585
  %4587 = bitcast i8* %4573 to double*
  store double %4586, double* %4587, align 1
  %4588 = getelementptr inbounds i8, i8* %4573, i64 8
  %4589 = bitcast i8* %4588 to i64*
  store i64 %4583, i64* %4589, align 1
  store %struct.Memory* %loadMem_4009c7, %struct.Memory** %MEMORY
  %loadMem_4009cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4591 = getelementptr inbounds %struct.GPR, %struct.GPR* %4590, i32 0, i32 33
  %4592 = getelementptr inbounds %struct.Reg, %struct.Reg* %4591, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %4592 to i64*
  %4593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4594 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4593, i64 0, i64 0
  %YMM0.i278 = bitcast %union.VectorReg* %4594 to %"class.std::bitset"*
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4596 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4595, i64 0, i64 1
  %XMM1.i279 = bitcast %union.VectorReg* %4596 to %union.vec128_t*
  %4597 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %4598 = bitcast %"class.std::bitset"* %YMM0.i278 to i8*
  %4599 = bitcast %union.vec128_t* %XMM1.i279 to i8*
  %4600 = load i64, i64* %PC.i277
  %4601 = add i64 %4600, 4
  store i64 %4601, i64* %PC.i277
  %4602 = bitcast i8* %4598 to double*
  %4603 = load double, double* %4602, align 1
  %4604 = getelementptr inbounds i8, i8* %4598, i64 8
  %4605 = bitcast i8* %4604 to i64*
  %4606 = load i64, i64* %4605, align 1
  %4607 = bitcast i8* %4599 to double*
  %4608 = load double, double* %4607, align 1
  %4609 = fadd double %4603, %4608
  %4610 = bitcast i8* %4597 to double*
  store double %4609, double* %4610, align 1
  %4611 = getelementptr inbounds i8, i8* %4597, i64 8
  %4612 = bitcast i8* %4611 to i64*
  store i64 %4606, i64* %4612, align 1
  store %struct.Memory* %loadMem_4009cc, %struct.Memory** %MEMORY
  %loadMem_4009d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4614 = getelementptr inbounds %struct.GPR, %struct.GPR* %4613, i32 0, i32 33
  %4615 = getelementptr inbounds %struct.Reg, %struct.Reg* %4614, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4615 to i64*
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 15
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %RBP.i275 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4620 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4619, i64 0, i64 0
  %XMM0.i276 = bitcast %union.VectorReg* %4620 to %union.vec128_t*
  %4621 = load i64, i64* %RBP.i275
  %4622 = sub i64 %4621, 72
  %4623 = bitcast %union.vec128_t* %XMM0.i276 to i8*
  %4624 = load i64, i64* %PC.i274
  %4625 = add i64 %4624, 5
  store i64 %4625, i64* %PC.i274
  %4626 = bitcast i8* %4623 to double*
  %4627 = load double, double* %4626, align 1
  %4628 = inttoptr i64 %4622 to double*
  store double %4627, double* %4628
  store %struct.Memory* %loadMem_4009d0, %struct.Memory** %MEMORY
  %loadMem_4009d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4630 = getelementptr inbounds %struct.GPR, %struct.GPR* %4629, i32 0, i32 33
  %4631 = getelementptr inbounds %struct.Reg, %struct.Reg* %4630, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4631 to i64*
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 7
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %RDX.i272 = bitcast %union.anon* %4634 to i64*
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4636 = getelementptr inbounds %struct.GPR, %struct.GPR* %4635, i32 0, i32 15
  %4637 = getelementptr inbounds %struct.Reg, %struct.Reg* %4636, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %4637 to i64*
  %4638 = load i64, i64* %RBP.i273
  %4639 = sub i64 %4638, 16
  %4640 = load i64, i64* %PC.i271
  %4641 = add i64 %4640, 4
  store i64 %4641, i64* %PC.i271
  %4642 = inttoptr i64 %4639 to i64*
  %4643 = load i64, i64* %4642
  store i64 %4643, i64* %RDX.i272, align 8
  store %struct.Memory* %loadMem_4009d5, %struct.Memory** %MEMORY
  %loadMem_4009d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4645 = getelementptr inbounds %struct.GPR, %struct.GPR* %4644, i32 0, i32 33
  %4646 = getelementptr inbounds %struct.Reg, %struct.Reg* %4645, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %4646 to i64*
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4648 = getelementptr inbounds %struct.GPR, %struct.GPR* %4647, i32 0, i32 7
  %4649 = getelementptr inbounds %struct.Reg, %struct.Reg* %4648, i32 0, i32 0
  %RDX.i269 = bitcast %union.anon* %4649 to i64*
  %4650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4651 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4650, i64 0, i64 0
  %YMM0.i270 = bitcast %union.VectorReg* %4651 to %"class.std::bitset"*
  %4652 = bitcast %"class.std::bitset"* %YMM0.i270 to i8*
  %4653 = load i64, i64* %RDX.i269
  %4654 = add i64 %4653, 96
  %4655 = load i64, i64* %PC.i268
  %4656 = add i64 %4655, 5
  store i64 %4656, i64* %PC.i268
  %4657 = inttoptr i64 %4654 to double*
  %4658 = load double, double* %4657
  %4659 = bitcast i8* %4652 to double*
  store double %4658, double* %4659, align 1
  %4660 = getelementptr inbounds i8, i8* %4652, i64 8
  %4661 = bitcast i8* %4660 to double*
  store double 0.000000e+00, double* %4661, align 1
  store %struct.Memory* %loadMem_4009d9, %struct.Memory** %MEMORY
  %loadMem_4009de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4663 = getelementptr inbounds %struct.GPR, %struct.GPR* %4662, i32 0, i32 33
  %4664 = getelementptr inbounds %struct.Reg, %struct.Reg* %4663, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %4664 to i64*
  %4665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4666 = getelementptr inbounds %struct.GPR, %struct.GPR* %4665, i32 0, i32 7
  %4667 = getelementptr inbounds %struct.Reg, %struct.Reg* %4666, i32 0, i32 0
  %RDX.i266 = bitcast %union.anon* %4667 to i64*
  %4668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4669 = getelementptr inbounds %struct.GPR, %struct.GPR* %4668, i32 0, i32 15
  %4670 = getelementptr inbounds %struct.Reg, %struct.Reg* %4669, i32 0, i32 0
  %RBP.i267 = bitcast %union.anon* %4670 to i64*
  %4671 = load i64, i64* %RBP.i267
  %4672 = sub i64 %4671, 24
  %4673 = load i64, i64* %PC.i265
  %4674 = add i64 %4673, 4
  store i64 %4674, i64* %PC.i265
  %4675 = inttoptr i64 %4672 to i64*
  %4676 = load i64, i64* %4675
  store i64 %4676, i64* %RDX.i266, align 8
  store %struct.Memory* %loadMem_4009de, %struct.Memory** %MEMORY
  %loadMem_4009e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 33
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %4679 to i64*
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 7
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %RDX.i263 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4684 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4683, i64 0, i64 0
  %YMM0.i264 = bitcast %union.VectorReg* %4684 to %"class.std::bitset"*
  %4685 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %4686 = bitcast %"class.std::bitset"* %YMM0.i264 to i8*
  %4687 = load i64, i64* %RDX.i263
  %4688 = load i64, i64* %PC.i262
  %4689 = add i64 %4688, 4
  store i64 %4689, i64* %PC.i262
  %4690 = bitcast i8* %4686 to double*
  %4691 = load double, double* %4690, align 1
  %4692 = getelementptr inbounds i8, i8* %4686, i64 8
  %4693 = bitcast i8* %4692 to i64*
  %4694 = load i64, i64* %4693, align 1
  %4695 = inttoptr i64 %4687 to double*
  %4696 = load double, double* %4695
  %4697 = fmul double %4691, %4696
  %4698 = bitcast i8* %4685 to double*
  store double %4697, double* %4698, align 1
  %4699 = getelementptr inbounds i8, i8* %4685, i64 8
  %4700 = bitcast i8* %4699 to i64*
  store i64 %4694, i64* %4700, align 1
  store %struct.Memory* %loadMem_4009e2, %struct.Memory** %MEMORY
  %loadMem_4009e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4702 = getelementptr inbounds %struct.GPR, %struct.GPR* %4701, i32 0, i32 33
  %4703 = getelementptr inbounds %struct.Reg, %struct.Reg* %4702, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %4703 to i64*
  %4704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4705 = getelementptr inbounds %struct.GPR, %struct.GPR* %4704, i32 0, i32 7
  %4706 = getelementptr inbounds %struct.Reg, %struct.Reg* %4705, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %4706 to i64*
  %4707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4708 = getelementptr inbounds %struct.GPR, %struct.GPR* %4707, i32 0, i32 15
  %4709 = getelementptr inbounds %struct.Reg, %struct.Reg* %4708, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %4709 to i64*
  %4710 = load i64, i64* %RBP.i261
  %4711 = sub i64 %4710, 16
  %4712 = load i64, i64* %PC.i259
  %4713 = add i64 %4712, 4
  store i64 %4713, i64* %PC.i259
  %4714 = inttoptr i64 %4711 to i64*
  %4715 = load i64, i64* %4714
  store i64 %4715, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_4009e6, %struct.Memory** %MEMORY
  %loadMem_4009ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %4716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4717 = getelementptr inbounds %struct.GPR, %struct.GPR* %4716, i32 0, i32 33
  %4718 = getelementptr inbounds %struct.Reg, %struct.Reg* %4717, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %4718 to i64*
  %4719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4720 = getelementptr inbounds %struct.GPR, %struct.GPR* %4719, i32 0, i32 7
  %4721 = getelementptr inbounds %struct.Reg, %struct.Reg* %4720, i32 0, i32 0
  %RDX.i257 = bitcast %union.anon* %4721 to i64*
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4723 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4722, i64 0, i64 1
  %YMM1.i258 = bitcast %union.VectorReg* %4723 to %"class.std::bitset"*
  %4724 = bitcast %"class.std::bitset"* %YMM1.i258 to i8*
  %4725 = load i64, i64* %RDX.i257
  %4726 = add i64 %4725, 104
  %4727 = load i64, i64* %PC.i256
  %4728 = add i64 %4727, 5
  store i64 %4728, i64* %PC.i256
  %4729 = inttoptr i64 %4726 to double*
  %4730 = load double, double* %4729
  %4731 = bitcast i8* %4724 to double*
  store double %4730, double* %4731, align 1
  %4732 = getelementptr inbounds i8, i8* %4724, i64 8
  %4733 = bitcast i8* %4732 to double*
  store double 0.000000e+00, double* %4733, align 1
  store %struct.Memory* %loadMem_4009ea, %struct.Memory** %MEMORY
  %loadMem_4009ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4735 = getelementptr inbounds %struct.GPR, %struct.GPR* %4734, i32 0, i32 33
  %4736 = getelementptr inbounds %struct.Reg, %struct.Reg* %4735, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %4736 to i64*
  %4737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4738 = getelementptr inbounds %struct.GPR, %struct.GPR* %4737, i32 0, i32 7
  %4739 = getelementptr inbounds %struct.Reg, %struct.Reg* %4738, i32 0, i32 0
  %RDX.i254 = bitcast %union.anon* %4739 to i64*
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4741 = getelementptr inbounds %struct.GPR, %struct.GPR* %4740, i32 0, i32 15
  %4742 = getelementptr inbounds %struct.Reg, %struct.Reg* %4741, i32 0, i32 0
  %RBP.i255 = bitcast %union.anon* %4742 to i64*
  %4743 = load i64, i64* %RBP.i255
  %4744 = sub i64 %4743, 24
  %4745 = load i64, i64* %PC.i253
  %4746 = add i64 %4745, 4
  store i64 %4746, i64* %PC.i253
  %4747 = inttoptr i64 %4744 to i64*
  %4748 = load i64, i64* %4747
  store i64 %4748, i64* %RDX.i254, align 8
  store %struct.Memory* %loadMem_4009ef, %struct.Memory** %MEMORY
  %loadMem_4009f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4750 = getelementptr inbounds %struct.GPR, %struct.GPR* %4749, i32 0, i32 33
  %4751 = getelementptr inbounds %struct.Reg, %struct.Reg* %4750, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %4751 to i64*
  %4752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4753 = getelementptr inbounds %struct.GPR, %struct.GPR* %4752, i32 0, i32 7
  %4754 = getelementptr inbounds %struct.Reg, %struct.Reg* %4753, i32 0, i32 0
  %RDX.i251 = bitcast %union.anon* %4754 to i64*
  %4755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4756 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4755, i64 0, i64 1
  %YMM1.i252 = bitcast %union.VectorReg* %4756 to %"class.std::bitset"*
  %4757 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %4758 = bitcast %"class.std::bitset"* %YMM1.i252 to i8*
  %4759 = load i64, i64* %RDX.i251
  %4760 = add i64 %4759, 32
  %4761 = load i64, i64* %PC.i250
  %4762 = add i64 %4761, 5
  store i64 %4762, i64* %PC.i250
  %4763 = bitcast i8* %4758 to double*
  %4764 = load double, double* %4763, align 1
  %4765 = getelementptr inbounds i8, i8* %4758, i64 8
  %4766 = bitcast i8* %4765 to i64*
  %4767 = load i64, i64* %4766, align 1
  %4768 = inttoptr i64 %4760 to double*
  %4769 = load double, double* %4768
  %4770 = fmul double %4764, %4769
  %4771 = bitcast i8* %4757 to double*
  store double %4770, double* %4771, align 1
  %4772 = getelementptr inbounds i8, i8* %4757, i64 8
  %4773 = bitcast i8* %4772 to i64*
  store i64 %4767, i64* %4773, align 1
  store %struct.Memory* %loadMem_4009f3, %struct.Memory** %MEMORY
  %loadMem_4009f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4775 = getelementptr inbounds %struct.GPR, %struct.GPR* %4774, i32 0, i32 33
  %4776 = getelementptr inbounds %struct.Reg, %struct.Reg* %4775, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %4776 to i64*
  %4777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4778 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4777, i64 0, i64 0
  %YMM0.i248 = bitcast %union.VectorReg* %4778 to %"class.std::bitset"*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4780 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4779, i64 0, i64 1
  %XMM1.i249 = bitcast %union.VectorReg* %4780 to %union.vec128_t*
  %4781 = bitcast %"class.std::bitset"* %YMM0.i248 to i8*
  %4782 = bitcast %"class.std::bitset"* %YMM0.i248 to i8*
  %4783 = bitcast %union.vec128_t* %XMM1.i249 to i8*
  %4784 = load i64, i64* %PC.i247
  %4785 = add i64 %4784, 4
  store i64 %4785, i64* %PC.i247
  %4786 = bitcast i8* %4782 to double*
  %4787 = load double, double* %4786, align 1
  %4788 = getelementptr inbounds i8, i8* %4782, i64 8
  %4789 = bitcast i8* %4788 to i64*
  %4790 = load i64, i64* %4789, align 1
  %4791 = bitcast i8* %4783 to double*
  %4792 = load double, double* %4791, align 1
  %4793 = fadd double %4787, %4792
  %4794 = bitcast i8* %4781 to double*
  store double %4793, double* %4794, align 1
  %4795 = getelementptr inbounds i8, i8* %4781, i64 8
  %4796 = bitcast i8* %4795 to i64*
  store i64 %4790, i64* %4796, align 1
  store %struct.Memory* %loadMem_4009f8, %struct.Memory** %MEMORY
  %loadMem_4009fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 33
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 7
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %RDX.i245 = bitcast %union.anon* %4802 to i64*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 15
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %RBP.i246
  %4807 = sub i64 %4806, 16
  %4808 = load i64, i64* %PC.i244
  %4809 = add i64 %4808, 4
  store i64 %4809, i64* %PC.i244
  %4810 = inttoptr i64 %4807 to i64*
  %4811 = load i64, i64* %4810
  store i64 %4811, i64* %RDX.i245, align 8
  store %struct.Memory* %loadMem_4009fc, %struct.Memory** %MEMORY
  %loadMem_400a00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4813 = getelementptr inbounds %struct.GPR, %struct.GPR* %4812, i32 0, i32 33
  %4814 = getelementptr inbounds %struct.Reg, %struct.Reg* %4813, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %4814 to i64*
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 7
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %RDX.i242 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4819 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4818, i64 0, i64 1
  %YMM1.i243 = bitcast %union.VectorReg* %4819 to %"class.std::bitset"*
  %4820 = bitcast %"class.std::bitset"* %YMM1.i243 to i8*
  %4821 = load i64, i64* %RDX.i242
  %4822 = add i64 %4821, 112
  %4823 = load i64, i64* %PC.i241
  %4824 = add i64 %4823, 5
  store i64 %4824, i64* %PC.i241
  %4825 = inttoptr i64 %4822 to double*
  %4826 = load double, double* %4825
  %4827 = bitcast i8* %4820 to double*
  store double %4826, double* %4827, align 1
  %4828 = getelementptr inbounds i8, i8* %4820, i64 8
  %4829 = bitcast i8* %4828 to double*
  store double 0.000000e+00, double* %4829, align 1
  store %struct.Memory* %loadMem_400a00, %struct.Memory** %MEMORY
  %loadMem_400a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 7
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %RDX.i239 = bitcast %union.anon* %4835 to i64*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 15
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %4838 to i64*
  %4839 = load i64, i64* %RBP.i240
  %4840 = sub i64 %4839, 24
  %4841 = load i64, i64* %PC.i238
  %4842 = add i64 %4841, 4
  store i64 %4842, i64* %PC.i238
  %4843 = inttoptr i64 %4840 to i64*
  %4844 = load i64, i64* %4843
  store i64 %4844, i64* %RDX.i239, align 8
  store %struct.Memory* %loadMem_400a05, %struct.Memory** %MEMORY
  %loadMem_400a09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 33
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 7
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RDX.i236 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4852 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4851, i64 0, i64 1
  %YMM1.i237 = bitcast %union.VectorReg* %4852 to %"class.std::bitset"*
  %4853 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %4854 = bitcast %"class.std::bitset"* %YMM1.i237 to i8*
  %4855 = load i64, i64* %RDX.i236
  %4856 = add i64 %4855, 64
  %4857 = load i64, i64* %PC.i235
  %4858 = add i64 %4857, 5
  store i64 %4858, i64* %PC.i235
  %4859 = bitcast i8* %4854 to double*
  %4860 = load double, double* %4859, align 1
  %4861 = getelementptr inbounds i8, i8* %4854, i64 8
  %4862 = bitcast i8* %4861 to i64*
  %4863 = load i64, i64* %4862, align 1
  %4864 = inttoptr i64 %4856 to double*
  %4865 = load double, double* %4864
  %4866 = fmul double %4860, %4865
  %4867 = bitcast i8* %4853 to double*
  store double %4866, double* %4867, align 1
  %4868 = getelementptr inbounds i8, i8* %4853, i64 8
  %4869 = bitcast i8* %4868 to i64*
  store i64 %4863, i64* %4869, align 1
  store %struct.Memory* %loadMem_400a09, %struct.Memory** %MEMORY
  %loadMem_400a0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4871 = getelementptr inbounds %struct.GPR, %struct.GPR* %4870, i32 0, i32 33
  %4872 = getelementptr inbounds %struct.Reg, %struct.Reg* %4871, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %4872 to i64*
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4874 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4873, i64 0, i64 0
  %YMM0.i233 = bitcast %union.VectorReg* %4874 to %"class.std::bitset"*
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4876 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4875, i64 0, i64 1
  %XMM1.i234 = bitcast %union.VectorReg* %4876 to %union.vec128_t*
  %4877 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %4878 = bitcast %"class.std::bitset"* %YMM0.i233 to i8*
  %4879 = bitcast %union.vec128_t* %XMM1.i234 to i8*
  %4880 = load i64, i64* %PC.i232
  %4881 = add i64 %4880, 4
  store i64 %4881, i64* %PC.i232
  %4882 = bitcast i8* %4878 to double*
  %4883 = load double, double* %4882, align 1
  %4884 = getelementptr inbounds i8, i8* %4878, i64 8
  %4885 = bitcast i8* %4884 to i64*
  %4886 = load i64, i64* %4885, align 1
  %4887 = bitcast i8* %4879 to double*
  %4888 = load double, double* %4887, align 1
  %4889 = fadd double %4883, %4888
  %4890 = bitcast i8* %4877 to double*
  store double %4889, double* %4890, align 1
  %4891 = getelementptr inbounds i8, i8* %4877, i64 8
  %4892 = bitcast i8* %4891 to i64*
  store i64 %4886, i64* %4892, align 1
  store %struct.Memory* %loadMem_400a0e, %struct.Memory** %MEMORY
  %loadMem_400a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4894 = getelementptr inbounds %struct.GPR, %struct.GPR* %4893, i32 0, i32 33
  %4895 = getelementptr inbounds %struct.Reg, %struct.Reg* %4894, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %4895 to i64*
  %4896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4897 = getelementptr inbounds %struct.GPR, %struct.GPR* %4896, i32 0, i32 7
  %4898 = getelementptr inbounds %struct.Reg, %struct.Reg* %4897, i32 0, i32 0
  %RDX.i230 = bitcast %union.anon* %4898 to i64*
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4900 = getelementptr inbounds %struct.GPR, %struct.GPR* %4899, i32 0, i32 15
  %4901 = getelementptr inbounds %struct.Reg, %struct.Reg* %4900, i32 0, i32 0
  %RBP.i231 = bitcast %union.anon* %4901 to i64*
  %4902 = load i64, i64* %RBP.i231
  %4903 = sub i64 %4902, 16
  %4904 = load i64, i64* %PC.i229
  %4905 = add i64 %4904, 4
  store i64 %4905, i64* %PC.i229
  %4906 = inttoptr i64 %4903 to i64*
  %4907 = load i64, i64* %4906
  store i64 %4907, i64* %RDX.i230, align 8
  store %struct.Memory* %loadMem_400a12, %struct.Memory** %MEMORY
  %loadMem_400a16 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4909 = getelementptr inbounds %struct.GPR, %struct.GPR* %4908, i32 0, i32 33
  %4910 = getelementptr inbounds %struct.Reg, %struct.Reg* %4909, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %4910 to i64*
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 7
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %RDX.i227 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4915 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4914, i64 0, i64 1
  %YMM1.i228 = bitcast %union.VectorReg* %4915 to %"class.std::bitset"*
  %4916 = bitcast %"class.std::bitset"* %YMM1.i228 to i8*
  %4917 = load i64, i64* %RDX.i227
  %4918 = add i64 %4917, 120
  %4919 = load i64, i64* %PC.i226
  %4920 = add i64 %4919, 5
  store i64 %4920, i64* %PC.i226
  %4921 = inttoptr i64 %4918 to double*
  %4922 = load double, double* %4921
  %4923 = bitcast i8* %4916 to double*
  store double %4922, double* %4923, align 1
  %4924 = getelementptr inbounds i8, i8* %4916, i64 8
  %4925 = bitcast i8* %4924 to double*
  store double 0.000000e+00, double* %4925, align 1
  store %struct.Memory* %loadMem_400a16, %struct.Memory** %MEMORY
  %loadMem_400a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4927 = getelementptr inbounds %struct.GPR, %struct.GPR* %4926, i32 0, i32 33
  %4928 = getelementptr inbounds %struct.Reg, %struct.Reg* %4927, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %4928 to i64*
  %4929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4930 = getelementptr inbounds %struct.GPR, %struct.GPR* %4929, i32 0, i32 7
  %4931 = getelementptr inbounds %struct.Reg, %struct.Reg* %4930, i32 0, i32 0
  %RDX.i224 = bitcast %union.anon* %4931 to i64*
  %4932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4933 = getelementptr inbounds %struct.GPR, %struct.GPR* %4932, i32 0, i32 15
  %4934 = getelementptr inbounds %struct.Reg, %struct.Reg* %4933, i32 0, i32 0
  %RBP.i225 = bitcast %union.anon* %4934 to i64*
  %4935 = load i64, i64* %RBP.i225
  %4936 = sub i64 %4935, 24
  %4937 = load i64, i64* %PC.i223
  %4938 = add i64 %4937, 4
  store i64 %4938, i64* %PC.i223
  %4939 = inttoptr i64 %4936 to i64*
  %4940 = load i64, i64* %4939
  store i64 %4940, i64* %RDX.i224, align 8
  store %struct.Memory* %loadMem_400a1b, %struct.Memory** %MEMORY
  %loadMem_400a1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4942 = getelementptr inbounds %struct.GPR, %struct.GPR* %4941, i32 0, i32 33
  %4943 = getelementptr inbounds %struct.Reg, %struct.Reg* %4942, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %4943 to i64*
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4945 = getelementptr inbounds %struct.GPR, %struct.GPR* %4944, i32 0, i32 7
  %4946 = getelementptr inbounds %struct.Reg, %struct.Reg* %4945, i32 0, i32 0
  %RDX.i221 = bitcast %union.anon* %4946 to i64*
  %4947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4948 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4947, i64 0, i64 1
  %YMM1.i222 = bitcast %union.VectorReg* %4948 to %"class.std::bitset"*
  %4949 = bitcast %"class.std::bitset"* %YMM1.i222 to i8*
  %4950 = bitcast %"class.std::bitset"* %YMM1.i222 to i8*
  %4951 = load i64, i64* %RDX.i221
  %4952 = add i64 %4951, 96
  %4953 = load i64, i64* %PC.i220
  %4954 = add i64 %4953, 5
  store i64 %4954, i64* %PC.i220
  %4955 = bitcast i8* %4950 to double*
  %4956 = load double, double* %4955, align 1
  %4957 = getelementptr inbounds i8, i8* %4950, i64 8
  %4958 = bitcast i8* %4957 to i64*
  %4959 = load i64, i64* %4958, align 1
  %4960 = inttoptr i64 %4952 to double*
  %4961 = load double, double* %4960
  %4962 = fmul double %4956, %4961
  %4963 = bitcast i8* %4949 to double*
  store double %4962, double* %4963, align 1
  %4964 = getelementptr inbounds i8, i8* %4949, i64 8
  %4965 = bitcast i8* %4964 to i64*
  store i64 %4959, i64* %4965, align 1
  store %struct.Memory* %loadMem_400a1f, %struct.Memory** %MEMORY
  %loadMem_400a24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 33
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %4968 to i64*
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4970 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4969, i64 0, i64 0
  %YMM0.i218 = bitcast %union.VectorReg* %4970 to %"class.std::bitset"*
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4972 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4971, i64 0, i64 1
  %XMM1.i219 = bitcast %union.VectorReg* %4972 to %union.vec128_t*
  %4973 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %4974 = bitcast %"class.std::bitset"* %YMM0.i218 to i8*
  %4975 = bitcast %union.vec128_t* %XMM1.i219 to i8*
  %4976 = load i64, i64* %PC.i217
  %4977 = add i64 %4976, 4
  store i64 %4977, i64* %PC.i217
  %4978 = bitcast i8* %4974 to double*
  %4979 = load double, double* %4978, align 1
  %4980 = getelementptr inbounds i8, i8* %4974, i64 8
  %4981 = bitcast i8* %4980 to i64*
  %4982 = load i64, i64* %4981, align 1
  %4983 = bitcast i8* %4975 to double*
  %4984 = load double, double* %4983, align 1
  %4985 = fadd double %4979, %4984
  %4986 = bitcast i8* %4973 to double*
  store double %4985, double* %4986, align 1
  %4987 = getelementptr inbounds i8, i8* %4973, i64 8
  %4988 = bitcast i8* %4987 to i64*
  store i64 %4982, i64* %4988, align 1
  store %struct.Memory* %loadMem_400a24, %struct.Memory** %MEMORY
  %loadMem_400a28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4989 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4990 = getelementptr inbounds %struct.GPR, %struct.GPR* %4989, i32 0, i32 33
  %4991 = getelementptr inbounds %struct.Reg, %struct.Reg* %4990, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %4991 to i64*
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4993 = getelementptr inbounds %struct.GPR, %struct.GPR* %4992, i32 0, i32 15
  %4994 = getelementptr inbounds %struct.Reg, %struct.Reg* %4993, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %4994 to i64*
  %4995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %4996 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %4995, i64 0, i64 0
  %XMM0.i216 = bitcast %union.VectorReg* %4996 to %union.vec128_t*
  %4997 = load i64, i64* %RBP.i215
  %4998 = sub i64 %4997, 64
  %4999 = bitcast %union.vec128_t* %XMM0.i216 to i8*
  %5000 = load i64, i64* %PC.i214
  %5001 = add i64 %5000, 5
  store i64 %5001, i64* %PC.i214
  %5002 = bitcast i8* %4999 to double*
  %5003 = load double, double* %5002, align 1
  %5004 = inttoptr i64 %4998 to double*
  store double %5003, double* %5004
  store %struct.Memory* %loadMem_400a28, %struct.Memory** %MEMORY
  %loadMem_400a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5006 = getelementptr inbounds %struct.GPR, %struct.GPR* %5005, i32 0, i32 33
  %5007 = getelementptr inbounds %struct.Reg, %struct.Reg* %5006, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5007 to i64*
  %5008 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5009 = getelementptr inbounds %struct.GPR, %struct.GPR* %5008, i32 0, i32 7
  %5010 = getelementptr inbounds %struct.Reg, %struct.Reg* %5009, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %5010 to i64*
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5012 = getelementptr inbounds %struct.GPR, %struct.GPR* %5011, i32 0, i32 15
  %5013 = getelementptr inbounds %struct.Reg, %struct.Reg* %5012, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %5013 to i64*
  %5014 = load i64, i64* %RBP.i213
  %5015 = sub i64 %5014, 16
  %5016 = load i64, i64* %PC.i211
  %5017 = add i64 %5016, 4
  store i64 %5017, i64* %PC.i211
  %5018 = inttoptr i64 %5015 to i64*
  %5019 = load i64, i64* %5018
  store i64 %5019, i64* %RDX.i212, align 8
  store %struct.Memory* %loadMem_400a2d, %struct.Memory** %MEMORY
  %loadMem_400a31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5021 = getelementptr inbounds %struct.GPR, %struct.GPR* %5020, i32 0, i32 33
  %5022 = getelementptr inbounds %struct.Reg, %struct.Reg* %5021, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5022 to i64*
  %5023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5024 = getelementptr inbounds %struct.GPR, %struct.GPR* %5023, i32 0, i32 7
  %5025 = getelementptr inbounds %struct.Reg, %struct.Reg* %5024, i32 0, i32 0
  %RDX.i209 = bitcast %union.anon* %5025 to i64*
  %5026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5027 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5026, i64 0, i64 0
  %YMM0.i210 = bitcast %union.VectorReg* %5027 to %"class.std::bitset"*
  %5028 = bitcast %"class.std::bitset"* %YMM0.i210 to i8*
  %5029 = load i64, i64* %RDX.i209
  %5030 = add i64 %5029, 96
  %5031 = load i64, i64* %PC.i208
  %5032 = add i64 %5031, 5
  store i64 %5032, i64* %PC.i208
  %5033 = inttoptr i64 %5030 to double*
  %5034 = load double, double* %5033
  %5035 = bitcast i8* %5028 to double*
  store double %5034, double* %5035, align 1
  %5036 = getelementptr inbounds i8, i8* %5028, i64 8
  %5037 = bitcast i8* %5036 to double*
  store double 0.000000e+00, double* %5037, align 1
  store %struct.Memory* %loadMem_400a31, %struct.Memory** %MEMORY
  %loadMem_400a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5039 = getelementptr inbounds %struct.GPR, %struct.GPR* %5038, i32 0, i32 33
  %5040 = getelementptr inbounds %struct.Reg, %struct.Reg* %5039, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %5040 to i64*
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 7
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %RDX.i206 = bitcast %union.anon* %5043 to i64*
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 15
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %RBP.i207 = bitcast %union.anon* %5046 to i64*
  %5047 = load i64, i64* %RBP.i207
  %5048 = sub i64 %5047, 24
  %5049 = load i64, i64* %PC.i205
  %5050 = add i64 %5049, 4
  store i64 %5050, i64* %PC.i205
  %5051 = inttoptr i64 %5048 to i64*
  %5052 = load i64, i64* %5051
  store i64 %5052, i64* %RDX.i206, align 8
  store %struct.Memory* %loadMem_400a36, %struct.Memory** %MEMORY
  %loadMem_400a3a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5054 = getelementptr inbounds %struct.GPR, %struct.GPR* %5053, i32 0, i32 33
  %5055 = getelementptr inbounds %struct.Reg, %struct.Reg* %5054, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5055 to i64*
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5057 = getelementptr inbounds %struct.GPR, %struct.GPR* %5056, i32 0, i32 7
  %5058 = getelementptr inbounds %struct.Reg, %struct.Reg* %5057, i32 0, i32 0
  %RDX.i203 = bitcast %union.anon* %5058 to i64*
  %5059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5060 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5059, i64 0, i64 0
  %YMM0.i204 = bitcast %union.VectorReg* %5060 to %"class.std::bitset"*
  %5061 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %5062 = bitcast %"class.std::bitset"* %YMM0.i204 to i8*
  %5063 = load i64, i64* %RDX.i203
  %5064 = add i64 %5063, 8
  %5065 = load i64, i64* %PC.i202
  %5066 = add i64 %5065, 5
  store i64 %5066, i64* %PC.i202
  %5067 = bitcast i8* %5062 to double*
  %5068 = load double, double* %5067, align 1
  %5069 = getelementptr inbounds i8, i8* %5062, i64 8
  %5070 = bitcast i8* %5069 to i64*
  %5071 = load i64, i64* %5070, align 1
  %5072 = inttoptr i64 %5064 to double*
  %5073 = load double, double* %5072
  %5074 = fmul double %5068, %5073
  %5075 = bitcast i8* %5061 to double*
  store double %5074, double* %5075, align 1
  %5076 = getelementptr inbounds i8, i8* %5061, i64 8
  %5077 = bitcast i8* %5076 to i64*
  store i64 %5071, i64* %5077, align 1
  store %struct.Memory* %loadMem_400a3a, %struct.Memory** %MEMORY
  %loadMem_400a3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 33
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %5080 to i64*
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5082 = getelementptr inbounds %struct.GPR, %struct.GPR* %5081, i32 0, i32 7
  %5083 = getelementptr inbounds %struct.Reg, %struct.Reg* %5082, i32 0, i32 0
  %RDX.i200 = bitcast %union.anon* %5083 to i64*
  %5084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5085 = getelementptr inbounds %struct.GPR, %struct.GPR* %5084, i32 0, i32 15
  %5086 = getelementptr inbounds %struct.Reg, %struct.Reg* %5085, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %5086 to i64*
  %5087 = load i64, i64* %RBP.i201
  %5088 = sub i64 %5087, 16
  %5089 = load i64, i64* %PC.i199
  %5090 = add i64 %5089, 4
  store i64 %5090, i64* %PC.i199
  %5091 = inttoptr i64 %5088 to i64*
  %5092 = load i64, i64* %5091
  store i64 %5092, i64* %RDX.i200, align 8
  store %struct.Memory* %loadMem_400a3f, %struct.Memory** %MEMORY
  %loadMem_400a43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5094 = getelementptr inbounds %struct.GPR, %struct.GPR* %5093, i32 0, i32 33
  %5095 = getelementptr inbounds %struct.Reg, %struct.Reg* %5094, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %5095 to i64*
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 7
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5100 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5099, i64 0, i64 1
  %YMM1.i198 = bitcast %union.VectorReg* %5100 to %"class.std::bitset"*
  %5101 = bitcast %"class.std::bitset"* %YMM1.i198 to i8*
  %5102 = load i64, i64* %RDX.i197
  %5103 = add i64 %5102, 104
  %5104 = load i64, i64* %PC.i196
  %5105 = add i64 %5104, 5
  store i64 %5105, i64* %PC.i196
  %5106 = inttoptr i64 %5103 to double*
  %5107 = load double, double* %5106
  %5108 = bitcast i8* %5101 to double*
  store double %5107, double* %5108, align 1
  %5109 = getelementptr inbounds i8, i8* %5101, i64 8
  %5110 = bitcast i8* %5109 to double*
  store double 0.000000e+00, double* %5110, align 1
  store %struct.Memory* %loadMem_400a43, %struct.Memory** %MEMORY
  %loadMem_400a48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5112 = getelementptr inbounds %struct.GPR, %struct.GPR* %5111, i32 0, i32 33
  %5113 = getelementptr inbounds %struct.Reg, %struct.Reg* %5112, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %5113 to i64*
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5115 = getelementptr inbounds %struct.GPR, %struct.GPR* %5114, i32 0, i32 7
  %5116 = getelementptr inbounds %struct.Reg, %struct.Reg* %5115, i32 0, i32 0
  %RDX.i194 = bitcast %union.anon* %5116 to i64*
  %5117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5118 = getelementptr inbounds %struct.GPR, %struct.GPR* %5117, i32 0, i32 15
  %5119 = getelementptr inbounds %struct.Reg, %struct.Reg* %5118, i32 0, i32 0
  %RBP.i195 = bitcast %union.anon* %5119 to i64*
  %5120 = load i64, i64* %RBP.i195
  %5121 = sub i64 %5120, 24
  %5122 = load i64, i64* %PC.i193
  %5123 = add i64 %5122, 4
  store i64 %5123, i64* %PC.i193
  %5124 = inttoptr i64 %5121 to i64*
  %5125 = load i64, i64* %5124
  store i64 %5125, i64* %RDX.i194, align 8
  store %struct.Memory* %loadMem_400a48, %struct.Memory** %MEMORY
  %loadMem_400a4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 33
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %5128 to i64*
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 7
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %RDX.i191 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5133 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5132, i64 0, i64 1
  %YMM1.i192 = bitcast %union.VectorReg* %5133 to %"class.std::bitset"*
  %5134 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %5135 = bitcast %"class.std::bitset"* %YMM1.i192 to i8*
  %5136 = load i64, i64* %RDX.i191
  %5137 = add i64 %5136, 40
  %5138 = load i64, i64* %PC.i190
  %5139 = add i64 %5138, 5
  store i64 %5139, i64* %PC.i190
  %5140 = bitcast i8* %5135 to double*
  %5141 = load double, double* %5140, align 1
  %5142 = getelementptr inbounds i8, i8* %5135, i64 8
  %5143 = bitcast i8* %5142 to i64*
  %5144 = load i64, i64* %5143, align 1
  %5145 = inttoptr i64 %5137 to double*
  %5146 = load double, double* %5145
  %5147 = fmul double %5141, %5146
  %5148 = bitcast i8* %5134 to double*
  store double %5147, double* %5148, align 1
  %5149 = getelementptr inbounds i8, i8* %5134, i64 8
  %5150 = bitcast i8* %5149 to i64*
  store i64 %5144, i64* %5150, align 1
  store %struct.Memory* %loadMem_400a4c, %struct.Memory** %MEMORY
  %loadMem_400a51 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5152 = getelementptr inbounds %struct.GPR, %struct.GPR* %5151, i32 0, i32 33
  %5153 = getelementptr inbounds %struct.Reg, %struct.Reg* %5152, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5153 to i64*
  %5154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5155 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5154, i64 0, i64 0
  %YMM0.i188 = bitcast %union.VectorReg* %5155 to %"class.std::bitset"*
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5157 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5156, i64 0, i64 1
  %XMM1.i189 = bitcast %union.VectorReg* %5157 to %union.vec128_t*
  %5158 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %5159 = bitcast %"class.std::bitset"* %YMM0.i188 to i8*
  %5160 = bitcast %union.vec128_t* %XMM1.i189 to i8*
  %5161 = load i64, i64* %PC.i187
  %5162 = add i64 %5161, 4
  store i64 %5162, i64* %PC.i187
  %5163 = bitcast i8* %5159 to double*
  %5164 = load double, double* %5163, align 1
  %5165 = getelementptr inbounds i8, i8* %5159, i64 8
  %5166 = bitcast i8* %5165 to i64*
  %5167 = load i64, i64* %5166, align 1
  %5168 = bitcast i8* %5160 to double*
  %5169 = load double, double* %5168, align 1
  %5170 = fadd double %5164, %5169
  %5171 = bitcast i8* %5158 to double*
  store double %5170, double* %5171, align 1
  %5172 = getelementptr inbounds i8, i8* %5158, i64 8
  %5173 = bitcast i8* %5172 to i64*
  store i64 %5167, i64* %5173, align 1
  store %struct.Memory* %loadMem_400a51, %struct.Memory** %MEMORY
  %loadMem_400a55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 33
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5176 to i64*
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 7
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 15
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RBP.i186 = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %RBP.i186
  %5184 = sub i64 %5183, 16
  %5185 = load i64, i64* %PC.i184
  %5186 = add i64 %5185, 4
  store i64 %5186, i64* %PC.i184
  %5187 = inttoptr i64 %5184 to i64*
  %5188 = load i64, i64* %5187
  store i64 %5188, i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_400a55, %struct.Memory** %MEMORY
  %loadMem_400a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5190 = getelementptr inbounds %struct.GPR, %struct.GPR* %5189, i32 0, i32 33
  %5191 = getelementptr inbounds %struct.Reg, %struct.Reg* %5190, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %5191 to i64*
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 7
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %RDX.i182 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5196 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5195, i64 0, i64 1
  %YMM1.i183 = bitcast %union.VectorReg* %5196 to %"class.std::bitset"*
  %5197 = bitcast %"class.std::bitset"* %YMM1.i183 to i8*
  %5198 = load i64, i64* %RDX.i182
  %5199 = add i64 %5198, 112
  %5200 = load i64, i64* %PC.i181
  %5201 = add i64 %5200, 5
  store i64 %5201, i64* %PC.i181
  %5202 = inttoptr i64 %5199 to double*
  %5203 = load double, double* %5202
  %5204 = bitcast i8* %5197 to double*
  store double %5203, double* %5204, align 1
  %5205 = getelementptr inbounds i8, i8* %5197, i64 8
  %5206 = bitcast i8* %5205 to double*
  store double 0.000000e+00, double* %5206, align 1
  store %struct.Memory* %loadMem_400a59, %struct.Memory** %MEMORY
  %loadMem_400a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5208 = getelementptr inbounds %struct.GPR, %struct.GPR* %5207, i32 0, i32 33
  %5209 = getelementptr inbounds %struct.Reg, %struct.Reg* %5208, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %5209 to i64*
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5211 = getelementptr inbounds %struct.GPR, %struct.GPR* %5210, i32 0, i32 7
  %5212 = getelementptr inbounds %struct.Reg, %struct.Reg* %5211, i32 0, i32 0
  %RDX.i179 = bitcast %union.anon* %5212 to i64*
  %5213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5214 = getelementptr inbounds %struct.GPR, %struct.GPR* %5213, i32 0, i32 15
  %5215 = getelementptr inbounds %struct.Reg, %struct.Reg* %5214, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %5215 to i64*
  %5216 = load i64, i64* %RBP.i180
  %5217 = sub i64 %5216, 24
  %5218 = load i64, i64* %PC.i178
  %5219 = add i64 %5218, 4
  store i64 %5219, i64* %PC.i178
  %5220 = inttoptr i64 %5217 to i64*
  %5221 = load i64, i64* %5220
  store i64 %5221, i64* %RDX.i179, align 8
  store %struct.Memory* %loadMem_400a5e, %struct.Memory** %MEMORY
  %loadMem_400a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 33
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %5224 to i64*
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5226 = getelementptr inbounds %struct.GPR, %struct.GPR* %5225, i32 0, i32 7
  %5227 = getelementptr inbounds %struct.Reg, %struct.Reg* %5226, i32 0, i32 0
  %RDX.i176 = bitcast %union.anon* %5227 to i64*
  %5228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5229 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5228, i64 0, i64 1
  %YMM1.i177 = bitcast %union.VectorReg* %5229 to %"class.std::bitset"*
  %5230 = bitcast %"class.std::bitset"* %YMM1.i177 to i8*
  %5231 = bitcast %"class.std::bitset"* %YMM1.i177 to i8*
  %5232 = load i64, i64* %RDX.i176
  %5233 = add i64 %5232, 72
  %5234 = load i64, i64* %PC.i175
  %5235 = add i64 %5234, 5
  store i64 %5235, i64* %PC.i175
  %5236 = bitcast i8* %5231 to double*
  %5237 = load double, double* %5236, align 1
  %5238 = getelementptr inbounds i8, i8* %5231, i64 8
  %5239 = bitcast i8* %5238 to i64*
  %5240 = load i64, i64* %5239, align 1
  %5241 = inttoptr i64 %5233 to double*
  %5242 = load double, double* %5241
  %5243 = fmul double %5237, %5242
  %5244 = bitcast i8* %5230 to double*
  store double %5243, double* %5244, align 1
  %5245 = getelementptr inbounds i8, i8* %5230, i64 8
  %5246 = bitcast i8* %5245 to i64*
  store i64 %5240, i64* %5246, align 1
  store %struct.Memory* %loadMem_400a62, %struct.Memory** %MEMORY
  %loadMem_400a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5251 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5250, i64 0, i64 0
  %YMM0.i173 = bitcast %union.VectorReg* %5251 to %"class.std::bitset"*
  %5252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5253 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5252, i64 0, i64 1
  %XMM1.i174 = bitcast %union.VectorReg* %5253 to %union.vec128_t*
  %5254 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %5255 = bitcast %"class.std::bitset"* %YMM0.i173 to i8*
  %5256 = bitcast %union.vec128_t* %XMM1.i174 to i8*
  %5257 = load i64, i64* %PC.i172
  %5258 = add i64 %5257, 4
  store i64 %5258, i64* %PC.i172
  %5259 = bitcast i8* %5255 to double*
  %5260 = load double, double* %5259, align 1
  %5261 = getelementptr inbounds i8, i8* %5255, i64 8
  %5262 = bitcast i8* %5261 to i64*
  %5263 = load i64, i64* %5262, align 1
  %5264 = bitcast i8* %5256 to double*
  %5265 = load double, double* %5264, align 1
  %5266 = fadd double %5260, %5265
  %5267 = bitcast i8* %5254 to double*
  store double %5266, double* %5267, align 1
  %5268 = getelementptr inbounds i8, i8* %5254, i64 8
  %5269 = bitcast i8* %5268 to i64*
  store i64 %5263, i64* %5269, align 1
  store %struct.Memory* %loadMem_400a67, %struct.Memory** %MEMORY
  %loadMem_400a6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5271 = getelementptr inbounds %struct.GPR, %struct.GPR* %5270, i32 0, i32 33
  %5272 = getelementptr inbounds %struct.Reg, %struct.Reg* %5271, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %5272 to i64*
  %5273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5274 = getelementptr inbounds %struct.GPR, %struct.GPR* %5273, i32 0, i32 7
  %5275 = getelementptr inbounds %struct.Reg, %struct.Reg* %5274, i32 0, i32 0
  %RDX.i170 = bitcast %union.anon* %5275 to i64*
  %5276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5277 = getelementptr inbounds %struct.GPR, %struct.GPR* %5276, i32 0, i32 15
  %5278 = getelementptr inbounds %struct.Reg, %struct.Reg* %5277, i32 0, i32 0
  %RBP.i171 = bitcast %union.anon* %5278 to i64*
  %5279 = load i64, i64* %RBP.i171
  %5280 = sub i64 %5279, 16
  %5281 = load i64, i64* %PC.i169
  %5282 = add i64 %5281, 4
  store i64 %5282, i64* %PC.i169
  %5283 = inttoptr i64 %5280 to i64*
  %5284 = load i64, i64* %5283
  store i64 %5284, i64* %RDX.i170, align 8
  store %struct.Memory* %loadMem_400a6b, %struct.Memory** %MEMORY
  %loadMem_400a6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 7
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RDX.i167 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5292 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5291, i64 0, i64 1
  %YMM1.i168 = bitcast %union.VectorReg* %5292 to %"class.std::bitset"*
  %5293 = bitcast %"class.std::bitset"* %YMM1.i168 to i8*
  %5294 = load i64, i64* %RDX.i167
  %5295 = add i64 %5294, 120
  %5296 = load i64, i64* %PC.i166
  %5297 = add i64 %5296, 5
  store i64 %5297, i64* %PC.i166
  %5298 = inttoptr i64 %5295 to double*
  %5299 = load double, double* %5298
  %5300 = bitcast i8* %5293 to double*
  store double %5299, double* %5300, align 1
  %5301 = getelementptr inbounds i8, i8* %5293, i64 8
  %5302 = bitcast i8* %5301 to double*
  store double 0.000000e+00, double* %5302, align 1
  store %struct.Memory* %loadMem_400a6f, %struct.Memory** %MEMORY
  %loadMem_400a74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5304 = getelementptr inbounds %struct.GPR, %struct.GPR* %5303, i32 0, i32 33
  %5305 = getelementptr inbounds %struct.Reg, %struct.Reg* %5304, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %5305 to i64*
  %5306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5307 = getelementptr inbounds %struct.GPR, %struct.GPR* %5306, i32 0, i32 7
  %5308 = getelementptr inbounds %struct.Reg, %struct.Reg* %5307, i32 0, i32 0
  %RDX.i164 = bitcast %union.anon* %5308 to i64*
  %5309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5310 = getelementptr inbounds %struct.GPR, %struct.GPR* %5309, i32 0, i32 15
  %5311 = getelementptr inbounds %struct.Reg, %struct.Reg* %5310, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %5311 to i64*
  %5312 = load i64, i64* %RBP.i165
  %5313 = sub i64 %5312, 24
  %5314 = load i64, i64* %PC.i163
  %5315 = add i64 %5314, 4
  store i64 %5315, i64* %PC.i163
  %5316 = inttoptr i64 %5313 to i64*
  %5317 = load i64, i64* %5316
  store i64 %5317, i64* %RDX.i164, align 8
  store %struct.Memory* %loadMem_400a74, %struct.Memory** %MEMORY
  %loadMem_400a78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5319 = getelementptr inbounds %struct.GPR, %struct.GPR* %5318, i32 0, i32 33
  %5320 = getelementptr inbounds %struct.Reg, %struct.Reg* %5319, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %5320 to i64*
  %5321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5322 = getelementptr inbounds %struct.GPR, %struct.GPR* %5321, i32 0, i32 7
  %5323 = getelementptr inbounds %struct.Reg, %struct.Reg* %5322, i32 0, i32 0
  %RDX.i161 = bitcast %union.anon* %5323 to i64*
  %5324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5325 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5324, i64 0, i64 1
  %YMM1.i162 = bitcast %union.VectorReg* %5325 to %"class.std::bitset"*
  %5326 = bitcast %"class.std::bitset"* %YMM1.i162 to i8*
  %5327 = bitcast %"class.std::bitset"* %YMM1.i162 to i8*
  %5328 = load i64, i64* %RDX.i161
  %5329 = add i64 %5328, 104
  %5330 = load i64, i64* %PC.i160
  %5331 = add i64 %5330, 5
  store i64 %5331, i64* %PC.i160
  %5332 = bitcast i8* %5327 to double*
  %5333 = load double, double* %5332, align 1
  %5334 = getelementptr inbounds i8, i8* %5327, i64 8
  %5335 = bitcast i8* %5334 to i64*
  %5336 = load i64, i64* %5335, align 1
  %5337 = inttoptr i64 %5329 to double*
  %5338 = load double, double* %5337
  %5339 = fmul double %5333, %5338
  %5340 = bitcast i8* %5326 to double*
  store double %5339, double* %5340, align 1
  %5341 = getelementptr inbounds i8, i8* %5326, i64 8
  %5342 = bitcast i8* %5341 to i64*
  store i64 %5336, i64* %5342, align 1
  store %struct.Memory* %loadMem_400a78, %struct.Memory** %MEMORY
  %loadMem_400a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5344 = getelementptr inbounds %struct.GPR, %struct.GPR* %5343, i32 0, i32 33
  %5345 = getelementptr inbounds %struct.Reg, %struct.Reg* %5344, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %5345 to i64*
  %5346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5347 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5346, i64 0, i64 0
  %YMM0.i158 = bitcast %union.VectorReg* %5347 to %"class.std::bitset"*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5349 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5348, i64 0, i64 1
  %XMM1.i159 = bitcast %union.VectorReg* %5349 to %union.vec128_t*
  %5350 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %5351 = bitcast %"class.std::bitset"* %YMM0.i158 to i8*
  %5352 = bitcast %union.vec128_t* %XMM1.i159 to i8*
  %5353 = load i64, i64* %PC.i157
  %5354 = add i64 %5353, 4
  store i64 %5354, i64* %PC.i157
  %5355 = bitcast i8* %5351 to double*
  %5356 = load double, double* %5355, align 1
  %5357 = getelementptr inbounds i8, i8* %5351, i64 8
  %5358 = bitcast i8* %5357 to i64*
  %5359 = load i64, i64* %5358, align 1
  %5360 = bitcast i8* %5352 to double*
  %5361 = load double, double* %5360, align 1
  %5362 = fadd double %5356, %5361
  %5363 = bitcast i8* %5350 to double*
  store double %5362, double* %5363, align 1
  %5364 = getelementptr inbounds i8, i8* %5350, i64 8
  %5365 = bitcast i8* %5364 to i64*
  store i64 %5359, i64* %5365, align 1
  store %struct.Memory* %loadMem_400a7d, %struct.Memory** %MEMORY
  %loadMem_400a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5367 = getelementptr inbounds %struct.GPR, %struct.GPR* %5366, i32 0, i32 33
  %5368 = getelementptr inbounds %struct.Reg, %struct.Reg* %5367, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %5368 to i64*
  %5369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5370 = getelementptr inbounds %struct.GPR, %struct.GPR* %5369, i32 0, i32 15
  %5371 = getelementptr inbounds %struct.Reg, %struct.Reg* %5370, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %5371 to i64*
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5373 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5372, i64 0, i64 0
  %XMM0.i156 = bitcast %union.VectorReg* %5373 to %union.vec128_t*
  %5374 = load i64, i64* %RBP.i155
  %5375 = sub i64 %5374, 56
  %5376 = bitcast %union.vec128_t* %XMM0.i156 to i8*
  %5377 = load i64, i64* %PC.i154
  %5378 = add i64 %5377, 5
  store i64 %5378, i64* %PC.i154
  %5379 = bitcast i8* %5376 to double*
  %5380 = load double, double* %5379, align 1
  %5381 = inttoptr i64 %5375 to double*
  store double %5380, double* %5381
  store %struct.Memory* %loadMem_400a81, %struct.Memory** %MEMORY
  %loadMem_400a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5383 = getelementptr inbounds %struct.GPR, %struct.GPR* %5382, i32 0, i32 33
  %5384 = getelementptr inbounds %struct.Reg, %struct.Reg* %5383, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %5384 to i64*
  %5385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5386 = getelementptr inbounds %struct.GPR, %struct.GPR* %5385, i32 0, i32 7
  %5387 = getelementptr inbounds %struct.Reg, %struct.Reg* %5386, i32 0, i32 0
  %RDX.i152 = bitcast %union.anon* %5387 to i64*
  %5388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5389 = getelementptr inbounds %struct.GPR, %struct.GPR* %5388, i32 0, i32 15
  %5390 = getelementptr inbounds %struct.Reg, %struct.Reg* %5389, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %5390 to i64*
  %5391 = load i64, i64* %RBP.i153
  %5392 = sub i64 %5391, 16
  %5393 = load i64, i64* %PC.i151
  %5394 = add i64 %5393, 4
  store i64 %5394, i64* %PC.i151
  %5395 = inttoptr i64 %5392 to i64*
  %5396 = load i64, i64* %5395
  store i64 %5396, i64* %RDX.i152, align 8
  store %struct.Memory* %loadMem_400a86, %struct.Memory** %MEMORY
  %loadMem_400a8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5398 = getelementptr inbounds %struct.GPR, %struct.GPR* %5397, i32 0, i32 33
  %5399 = getelementptr inbounds %struct.Reg, %struct.Reg* %5398, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %5399 to i64*
  %5400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5401 = getelementptr inbounds %struct.GPR, %struct.GPR* %5400, i32 0, i32 7
  %5402 = getelementptr inbounds %struct.Reg, %struct.Reg* %5401, i32 0, i32 0
  %RDX.i149 = bitcast %union.anon* %5402 to i64*
  %5403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5404 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5403, i64 0, i64 0
  %YMM0.i150 = bitcast %union.VectorReg* %5404 to %"class.std::bitset"*
  %5405 = bitcast %"class.std::bitset"* %YMM0.i150 to i8*
  %5406 = load i64, i64* %RDX.i149
  %5407 = add i64 %5406, 96
  %5408 = load i64, i64* %PC.i148
  %5409 = add i64 %5408, 5
  store i64 %5409, i64* %PC.i148
  %5410 = inttoptr i64 %5407 to double*
  %5411 = load double, double* %5410
  %5412 = bitcast i8* %5405 to double*
  store double %5411, double* %5412, align 1
  %5413 = getelementptr inbounds i8, i8* %5405, i64 8
  %5414 = bitcast i8* %5413 to double*
  store double 0.000000e+00, double* %5414, align 1
  store %struct.Memory* %loadMem_400a8a, %struct.Memory** %MEMORY
  %loadMem_400a8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5416 = getelementptr inbounds %struct.GPR, %struct.GPR* %5415, i32 0, i32 33
  %5417 = getelementptr inbounds %struct.Reg, %struct.Reg* %5416, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %5417 to i64*
  %5418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5419 = getelementptr inbounds %struct.GPR, %struct.GPR* %5418, i32 0, i32 7
  %5420 = getelementptr inbounds %struct.Reg, %struct.Reg* %5419, i32 0, i32 0
  %RDX.i146 = bitcast %union.anon* %5420 to i64*
  %5421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5422 = getelementptr inbounds %struct.GPR, %struct.GPR* %5421, i32 0, i32 15
  %5423 = getelementptr inbounds %struct.Reg, %struct.Reg* %5422, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %5423 to i64*
  %5424 = load i64, i64* %RBP.i147
  %5425 = sub i64 %5424, 24
  %5426 = load i64, i64* %PC.i145
  %5427 = add i64 %5426, 4
  store i64 %5427, i64* %PC.i145
  %5428 = inttoptr i64 %5425 to i64*
  %5429 = load i64, i64* %5428
  store i64 %5429, i64* %RDX.i146, align 8
  store %struct.Memory* %loadMem_400a8f, %struct.Memory** %MEMORY
  %loadMem_400a93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5431 = getelementptr inbounds %struct.GPR, %struct.GPR* %5430, i32 0, i32 33
  %5432 = getelementptr inbounds %struct.Reg, %struct.Reg* %5431, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %5432 to i64*
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 7
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %RDX.i143 = bitcast %union.anon* %5435 to i64*
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5437 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5436, i64 0, i64 0
  %YMM0.i144 = bitcast %union.VectorReg* %5437 to %"class.std::bitset"*
  %5438 = bitcast %"class.std::bitset"* %YMM0.i144 to i8*
  %5439 = bitcast %"class.std::bitset"* %YMM0.i144 to i8*
  %5440 = load i64, i64* %RDX.i143
  %5441 = add i64 %5440, 16
  %5442 = load i64, i64* %PC.i142
  %5443 = add i64 %5442, 5
  store i64 %5443, i64* %PC.i142
  %5444 = bitcast i8* %5439 to double*
  %5445 = load double, double* %5444, align 1
  %5446 = getelementptr inbounds i8, i8* %5439, i64 8
  %5447 = bitcast i8* %5446 to i64*
  %5448 = load i64, i64* %5447, align 1
  %5449 = inttoptr i64 %5441 to double*
  %5450 = load double, double* %5449
  %5451 = fmul double %5445, %5450
  %5452 = bitcast i8* %5438 to double*
  store double %5451, double* %5452, align 1
  %5453 = getelementptr inbounds i8, i8* %5438, i64 8
  %5454 = bitcast i8* %5453 to i64*
  store i64 %5448, i64* %5454, align 1
  store %struct.Memory* %loadMem_400a93, %struct.Memory** %MEMORY
  %loadMem_400a98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5456 = getelementptr inbounds %struct.GPR, %struct.GPR* %5455, i32 0, i32 33
  %5457 = getelementptr inbounds %struct.Reg, %struct.Reg* %5456, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %5457 to i64*
  %5458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5459 = getelementptr inbounds %struct.GPR, %struct.GPR* %5458, i32 0, i32 7
  %5460 = getelementptr inbounds %struct.Reg, %struct.Reg* %5459, i32 0, i32 0
  %RDX.i140 = bitcast %union.anon* %5460 to i64*
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5462 = getelementptr inbounds %struct.GPR, %struct.GPR* %5461, i32 0, i32 15
  %5463 = getelementptr inbounds %struct.Reg, %struct.Reg* %5462, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %5463 to i64*
  %5464 = load i64, i64* %RBP.i141
  %5465 = sub i64 %5464, 16
  %5466 = load i64, i64* %PC.i139
  %5467 = add i64 %5466, 4
  store i64 %5467, i64* %PC.i139
  %5468 = inttoptr i64 %5465 to i64*
  %5469 = load i64, i64* %5468
  store i64 %5469, i64* %RDX.i140, align 8
  store %struct.Memory* %loadMem_400a98, %struct.Memory** %MEMORY
  %loadMem_400a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5471 = getelementptr inbounds %struct.GPR, %struct.GPR* %5470, i32 0, i32 33
  %5472 = getelementptr inbounds %struct.Reg, %struct.Reg* %5471, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %5472 to i64*
  %5473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5474 = getelementptr inbounds %struct.GPR, %struct.GPR* %5473, i32 0, i32 7
  %5475 = getelementptr inbounds %struct.Reg, %struct.Reg* %5474, i32 0, i32 0
  %RDX.i137 = bitcast %union.anon* %5475 to i64*
  %5476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5477 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5476, i64 0, i64 1
  %YMM1.i138 = bitcast %union.VectorReg* %5477 to %"class.std::bitset"*
  %5478 = bitcast %"class.std::bitset"* %YMM1.i138 to i8*
  %5479 = load i64, i64* %RDX.i137
  %5480 = add i64 %5479, 104
  %5481 = load i64, i64* %PC.i136
  %5482 = add i64 %5481, 5
  store i64 %5482, i64* %PC.i136
  %5483 = inttoptr i64 %5480 to double*
  %5484 = load double, double* %5483
  %5485 = bitcast i8* %5478 to double*
  store double %5484, double* %5485, align 1
  %5486 = getelementptr inbounds i8, i8* %5478, i64 8
  %5487 = bitcast i8* %5486 to double*
  store double 0.000000e+00, double* %5487, align 1
  store %struct.Memory* %loadMem_400a9c, %struct.Memory** %MEMORY
  %loadMem_400aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5489 = getelementptr inbounds %struct.GPR, %struct.GPR* %5488, i32 0, i32 33
  %5490 = getelementptr inbounds %struct.Reg, %struct.Reg* %5489, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %5490 to i64*
  %5491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5492 = getelementptr inbounds %struct.GPR, %struct.GPR* %5491, i32 0, i32 7
  %5493 = getelementptr inbounds %struct.Reg, %struct.Reg* %5492, i32 0, i32 0
  %RDX.i134 = bitcast %union.anon* %5493 to i64*
  %5494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5495 = getelementptr inbounds %struct.GPR, %struct.GPR* %5494, i32 0, i32 15
  %5496 = getelementptr inbounds %struct.Reg, %struct.Reg* %5495, i32 0, i32 0
  %RBP.i135 = bitcast %union.anon* %5496 to i64*
  %5497 = load i64, i64* %RBP.i135
  %5498 = sub i64 %5497, 24
  %5499 = load i64, i64* %PC.i133
  %5500 = add i64 %5499, 4
  store i64 %5500, i64* %PC.i133
  %5501 = inttoptr i64 %5498 to i64*
  %5502 = load i64, i64* %5501
  store i64 %5502, i64* %RDX.i134, align 8
  store %struct.Memory* %loadMem_400aa1, %struct.Memory** %MEMORY
  %loadMem_400aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5504 = getelementptr inbounds %struct.GPR, %struct.GPR* %5503, i32 0, i32 33
  %5505 = getelementptr inbounds %struct.Reg, %struct.Reg* %5504, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %5505 to i64*
  %5506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5507 = getelementptr inbounds %struct.GPR, %struct.GPR* %5506, i32 0, i32 7
  %5508 = getelementptr inbounds %struct.Reg, %struct.Reg* %5507, i32 0, i32 0
  %RDX.i131 = bitcast %union.anon* %5508 to i64*
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5510 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5509, i64 0, i64 1
  %YMM1.i132 = bitcast %union.VectorReg* %5510 to %"class.std::bitset"*
  %5511 = bitcast %"class.std::bitset"* %YMM1.i132 to i8*
  %5512 = bitcast %"class.std::bitset"* %YMM1.i132 to i8*
  %5513 = load i64, i64* %RDX.i131
  %5514 = add i64 %5513, 48
  %5515 = load i64, i64* %PC.i130
  %5516 = add i64 %5515, 5
  store i64 %5516, i64* %PC.i130
  %5517 = bitcast i8* %5512 to double*
  %5518 = load double, double* %5517, align 1
  %5519 = getelementptr inbounds i8, i8* %5512, i64 8
  %5520 = bitcast i8* %5519 to i64*
  %5521 = load i64, i64* %5520, align 1
  %5522 = inttoptr i64 %5514 to double*
  %5523 = load double, double* %5522
  %5524 = fmul double %5518, %5523
  %5525 = bitcast i8* %5511 to double*
  store double %5524, double* %5525, align 1
  %5526 = getelementptr inbounds i8, i8* %5511, i64 8
  %5527 = bitcast i8* %5526 to i64*
  store i64 %5521, i64* %5527, align 1
  store %struct.Memory* %loadMem_400aa5, %struct.Memory** %MEMORY
  %loadMem_400aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5529 = getelementptr inbounds %struct.GPR, %struct.GPR* %5528, i32 0, i32 33
  %5530 = getelementptr inbounds %struct.Reg, %struct.Reg* %5529, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %5530 to i64*
  %5531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5532 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5531, i64 0, i64 0
  %YMM0.i128 = bitcast %union.VectorReg* %5532 to %"class.std::bitset"*
  %5533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5533, i64 0, i64 1
  %XMM1.i129 = bitcast %union.VectorReg* %5534 to %union.vec128_t*
  %5535 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %5536 = bitcast %"class.std::bitset"* %YMM0.i128 to i8*
  %5537 = bitcast %union.vec128_t* %XMM1.i129 to i8*
  %5538 = load i64, i64* %PC.i127
  %5539 = add i64 %5538, 4
  store i64 %5539, i64* %PC.i127
  %5540 = bitcast i8* %5536 to double*
  %5541 = load double, double* %5540, align 1
  %5542 = getelementptr inbounds i8, i8* %5536, i64 8
  %5543 = bitcast i8* %5542 to i64*
  %5544 = load i64, i64* %5543, align 1
  %5545 = bitcast i8* %5537 to double*
  %5546 = load double, double* %5545, align 1
  %5547 = fadd double %5541, %5546
  %5548 = bitcast i8* %5535 to double*
  store double %5547, double* %5548, align 1
  %5549 = getelementptr inbounds i8, i8* %5535, i64 8
  %5550 = bitcast i8* %5549 to i64*
  store i64 %5544, i64* %5550, align 1
  store %struct.Memory* %loadMem_400aaa, %struct.Memory** %MEMORY
  %loadMem_400aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5552 = getelementptr inbounds %struct.GPR, %struct.GPR* %5551, i32 0, i32 33
  %5553 = getelementptr inbounds %struct.Reg, %struct.Reg* %5552, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %5553 to i64*
  %5554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5555 = getelementptr inbounds %struct.GPR, %struct.GPR* %5554, i32 0, i32 7
  %5556 = getelementptr inbounds %struct.Reg, %struct.Reg* %5555, i32 0, i32 0
  %RDX.i125 = bitcast %union.anon* %5556 to i64*
  %5557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5558 = getelementptr inbounds %struct.GPR, %struct.GPR* %5557, i32 0, i32 15
  %5559 = getelementptr inbounds %struct.Reg, %struct.Reg* %5558, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %5559 to i64*
  %5560 = load i64, i64* %RBP.i126
  %5561 = sub i64 %5560, 16
  %5562 = load i64, i64* %PC.i124
  %5563 = add i64 %5562, 4
  store i64 %5563, i64* %PC.i124
  %5564 = inttoptr i64 %5561 to i64*
  %5565 = load i64, i64* %5564
  store i64 %5565, i64* %RDX.i125, align 8
  store %struct.Memory* %loadMem_400aae, %struct.Memory** %MEMORY
  %loadMem_400ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5567 = getelementptr inbounds %struct.GPR, %struct.GPR* %5566, i32 0, i32 33
  %5568 = getelementptr inbounds %struct.Reg, %struct.Reg* %5567, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %5568 to i64*
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5570 = getelementptr inbounds %struct.GPR, %struct.GPR* %5569, i32 0, i32 7
  %5571 = getelementptr inbounds %struct.Reg, %struct.Reg* %5570, i32 0, i32 0
  %RDX.i122 = bitcast %union.anon* %5571 to i64*
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5572, i64 0, i64 1
  %YMM1.i123 = bitcast %union.VectorReg* %5573 to %"class.std::bitset"*
  %5574 = bitcast %"class.std::bitset"* %YMM1.i123 to i8*
  %5575 = load i64, i64* %RDX.i122
  %5576 = add i64 %5575, 112
  %5577 = load i64, i64* %PC.i121
  %5578 = add i64 %5577, 5
  store i64 %5578, i64* %PC.i121
  %5579 = inttoptr i64 %5576 to double*
  %5580 = load double, double* %5579
  %5581 = bitcast i8* %5574 to double*
  store double %5580, double* %5581, align 1
  %5582 = getelementptr inbounds i8, i8* %5574, i64 8
  %5583 = bitcast i8* %5582 to double*
  store double 0.000000e+00, double* %5583, align 1
  store %struct.Memory* %loadMem_400ab2, %struct.Memory** %MEMORY
  %loadMem_400ab7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5585 = getelementptr inbounds %struct.GPR, %struct.GPR* %5584, i32 0, i32 33
  %5586 = getelementptr inbounds %struct.Reg, %struct.Reg* %5585, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %5586 to i64*
  %5587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5588 = getelementptr inbounds %struct.GPR, %struct.GPR* %5587, i32 0, i32 7
  %5589 = getelementptr inbounds %struct.Reg, %struct.Reg* %5588, i32 0, i32 0
  %RDX.i119 = bitcast %union.anon* %5589 to i64*
  %5590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5591 = getelementptr inbounds %struct.GPR, %struct.GPR* %5590, i32 0, i32 15
  %5592 = getelementptr inbounds %struct.Reg, %struct.Reg* %5591, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %5592 to i64*
  %5593 = load i64, i64* %RBP.i120
  %5594 = sub i64 %5593, 24
  %5595 = load i64, i64* %PC.i118
  %5596 = add i64 %5595, 4
  store i64 %5596, i64* %PC.i118
  %5597 = inttoptr i64 %5594 to i64*
  %5598 = load i64, i64* %5597
  store i64 %5598, i64* %RDX.i119, align 8
  store %struct.Memory* %loadMem_400ab7, %struct.Memory** %MEMORY
  %loadMem_400abb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5600 = getelementptr inbounds %struct.GPR, %struct.GPR* %5599, i32 0, i32 33
  %5601 = getelementptr inbounds %struct.Reg, %struct.Reg* %5600, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %5601 to i64*
  %5602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5603 = getelementptr inbounds %struct.GPR, %struct.GPR* %5602, i32 0, i32 7
  %5604 = getelementptr inbounds %struct.Reg, %struct.Reg* %5603, i32 0, i32 0
  %RDX.i116 = bitcast %union.anon* %5604 to i64*
  %5605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5606 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5605, i64 0, i64 1
  %YMM1.i117 = bitcast %union.VectorReg* %5606 to %"class.std::bitset"*
  %5607 = bitcast %"class.std::bitset"* %YMM1.i117 to i8*
  %5608 = bitcast %"class.std::bitset"* %YMM1.i117 to i8*
  %5609 = load i64, i64* %RDX.i116
  %5610 = add i64 %5609, 80
  %5611 = load i64, i64* %PC.i115
  %5612 = add i64 %5611, 5
  store i64 %5612, i64* %PC.i115
  %5613 = bitcast i8* %5608 to double*
  %5614 = load double, double* %5613, align 1
  %5615 = getelementptr inbounds i8, i8* %5608, i64 8
  %5616 = bitcast i8* %5615 to i64*
  %5617 = load i64, i64* %5616, align 1
  %5618 = inttoptr i64 %5610 to double*
  %5619 = load double, double* %5618
  %5620 = fmul double %5614, %5619
  %5621 = bitcast i8* %5607 to double*
  store double %5620, double* %5621, align 1
  %5622 = getelementptr inbounds i8, i8* %5607, i64 8
  %5623 = bitcast i8* %5622 to i64*
  store i64 %5617, i64* %5623, align 1
  store %struct.Memory* %loadMem_400abb, %struct.Memory** %MEMORY
  %loadMem_400ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5625 = getelementptr inbounds %struct.GPR, %struct.GPR* %5624, i32 0, i32 33
  %5626 = getelementptr inbounds %struct.Reg, %struct.Reg* %5625, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %5626 to i64*
  %5627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5628 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5627, i64 0, i64 0
  %YMM0.i113 = bitcast %union.VectorReg* %5628 to %"class.std::bitset"*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5630 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5629, i64 0, i64 1
  %XMM1.i114 = bitcast %union.VectorReg* %5630 to %union.vec128_t*
  %5631 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %5632 = bitcast %"class.std::bitset"* %YMM0.i113 to i8*
  %5633 = bitcast %union.vec128_t* %XMM1.i114 to i8*
  %5634 = load i64, i64* %PC.i112
  %5635 = add i64 %5634, 4
  store i64 %5635, i64* %PC.i112
  %5636 = bitcast i8* %5632 to double*
  %5637 = load double, double* %5636, align 1
  %5638 = getelementptr inbounds i8, i8* %5632, i64 8
  %5639 = bitcast i8* %5638 to i64*
  %5640 = load i64, i64* %5639, align 1
  %5641 = bitcast i8* %5633 to double*
  %5642 = load double, double* %5641, align 1
  %5643 = fadd double %5637, %5642
  %5644 = bitcast i8* %5631 to double*
  store double %5643, double* %5644, align 1
  %5645 = getelementptr inbounds i8, i8* %5631, i64 8
  %5646 = bitcast i8* %5645 to i64*
  store i64 %5640, i64* %5646, align 1
  store %struct.Memory* %loadMem_400ac0, %struct.Memory** %MEMORY
  %loadMem_400ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5648 = getelementptr inbounds %struct.GPR, %struct.GPR* %5647, i32 0, i32 33
  %5649 = getelementptr inbounds %struct.Reg, %struct.Reg* %5648, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %5649 to i64*
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5651 = getelementptr inbounds %struct.GPR, %struct.GPR* %5650, i32 0, i32 7
  %5652 = getelementptr inbounds %struct.Reg, %struct.Reg* %5651, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %5652 to i64*
  %5653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5654 = getelementptr inbounds %struct.GPR, %struct.GPR* %5653, i32 0, i32 15
  %5655 = getelementptr inbounds %struct.Reg, %struct.Reg* %5654, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %5655 to i64*
  %5656 = load i64, i64* %RBP.i111
  %5657 = sub i64 %5656, 16
  %5658 = load i64, i64* %PC.i109
  %5659 = add i64 %5658, 4
  store i64 %5659, i64* %PC.i109
  %5660 = inttoptr i64 %5657 to i64*
  %5661 = load i64, i64* %5660
  store i64 %5661, i64* %RDX.i110, align 8
  store %struct.Memory* %loadMem_400ac4, %struct.Memory** %MEMORY
  %loadMem_400ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5663 = getelementptr inbounds %struct.GPR, %struct.GPR* %5662, i32 0, i32 33
  %5664 = getelementptr inbounds %struct.Reg, %struct.Reg* %5663, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %5664 to i64*
  %5665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5666 = getelementptr inbounds %struct.GPR, %struct.GPR* %5665, i32 0, i32 7
  %5667 = getelementptr inbounds %struct.Reg, %struct.Reg* %5666, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %5667 to i64*
  %5668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5669 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5668, i64 0, i64 1
  %YMM1.i108 = bitcast %union.VectorReg* %5669 to %"class.std::bitset"*
  %5670 = bitcast %"class.std::bitset"* %YMM1.i108 to i8*
  %5671 = load i64, i64* %RDX.i107
  %5672 = add i64 %5671, 120
  %5673 = load i64, i64* %PC.i106
  %5674 = add i64 %5673, 5
  store i64 %5674, i64* %PC.i106
  %5675 = inttoptr i64 %5672 to double*
  %5676 = load double, double* %5675
  %5677 = bitcast i8* %5670 to double*
  store double %5676, double* %5677, align 1
  %5678 = getelementptr inbounds i8, i8* %5670, i64 8
  %5679 = bitcast i8* %5678 to double*
  store double 0.000000e+00, double* %5679, align 1
  store %struct.Memory* %loadMem_400ac8, %struct.Memory** %MEMORY
  %loadMem_400acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5681 = getelementptr inbounds %struct.GPR, %struct.GPR* %5680, i32 0, i32 33
  %5682 = getelementptr inbounds %struct.Reg, %struct.Reg* %5681, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %5682 to i64*
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5684 = getelementptr inbounds %struct.GPR, %struct.GPR* %5683, i32 0, i32 7
  %5685 = getelementptr inbounds %struct.Reg, %struct.Reg* %5684, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %5685 to i64*
  %5686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5687 = getelementptr inbounds %struct.GPR, %struct.GPR* %5686, i32 0, i32 15
  %5688 = getelementptr inbounds %struct.Reg, %struct.Reg* %5687, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %5688 to i64*
  %5689 = load i64, i64* %RBP.i105
  %5690 = sub i64 %5689, 24
  %5691 = load i64, i64* %PC.i103
  %5692 = add i64 %5691, 4
  store i64 %5692, i64* %PC.i103
  %5693 = inttoptr i64 %5690 to i64*
  %5694 = load i64, i64* %5693
  store i64 %5694, i64* %RDX.i104, align 8
  store %struct.Memory* %loadMem_400acd, %struct.Memory** %MEMORY
  %loadMem_400ad1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5696 = getelementptr inbounds %struct.GPR, %struct.GPR* %5695, i32 0, i32 33
  %5697 = getelementptr inbounds %struct.Reg, %struct.Reg* %5696, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %5697 to i64*
  %5698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5699 = getelementptr inbounds %struct.GPR, %struct.GPR* %5698, i32 0, i32 7
  %5700 = getelementptr inbounds %struct.Reg, %struct.Reg* %5699, i32 0, i32 0
  %RDX.i101 = bitcast %union.anon* %5700 to i64*
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5702 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5701, i64 0, i64 1
  %YMM1.i102 = bitcast %union.VectorReg* %5702 to %"class.std::bitset"*
  %5703 = bitcast %"class.std::bitset"* %YMM1.i102 to i8*
  %5704 = bitcast %"class.std::bitset"* %YMM1.i102 to i8*
  %5705 = load i64, i64* %RDX.i101
  %5706 = add i64 %5705, 112
  %5707 = load i64, i64* %PC.i100
  %5708 = add i64 %5707, 5
  store i64 %5708, i64* %PC.i100
  %5709 = bitcast i8* %5704 to double*
  %5710 = load double, double* %5709, align 1
  %5711 = getelementptr inbounds i8, i8* %5704, i64 8
  %5712 = bitcast i8* %5711 to i64*
  %5713 = load i64, i64* %5712, align 1
  %5714 = inttoptr i64 %5706 to double*
  %5715 = load double, double* %5714
  %5716 = fmul double %5710, %5715
  %5717 = bitcast i8* %5703 to double*
  store double %5716, double* %5717, align 1
  %5718 = getelementptr inbounds i8, i8* %5703, i64 8
  %5719 = bitcast i8* %5718 to i64*
  store i64 %5713, i64* %5719, align 1
  store %struct.Memory* %loadMem_400ad1, %struct.Memory** %MEMORY
  %loadMem_400ad6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5721 = getelementptr inbounds %struct.GPR, %struct.GPR* %5720, i32 0, i32 33
  %5722 = getelementptr inbounds %struct.Reg, %struct.Reg* %5721, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %5722 to i64*
  %5723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5724 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5723, i64 0, i64 0
  %YMM0.i98 = bitcast %union.VectorReg* %5724 to %"class.std::bitset"*
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5726 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5725, i64 0, i64 1
  %XMM1.i99 = bitcast %union.VectorReg* %5726 to %union.vec128_t*
  %5727 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %5728 = bitcast %"class.std::bitset"* %YMM0.i98 to i8*
  %5729 = bitcast %union.vec128_t* %XMM1.i99 to i8*
  %5730 = load i64, i64* %PC.i97
  %5731 = add i64 %5730, 4
  store i64 %5731, i64* %PC.i97
  %5732 = bitcast i8* %5728 to double*
  %5733 = load double, double* %5732, align 1
  %5734 = getelementptr inbounds i8, i8* %5728, i64 8
  %5735 = bitcast i8* %5734 to i64*
  %5736 = load i64, i64* %5735, align 1
  %5737 = bitcast i8* %5729 to double*
  %5738 = load double, double* %5737, align 1
  %5739 = fadd double %5733, %5738
  %5740 = bitcast i8* %5727 to double*
  store double %5739, double* %5740, align 1
  %5741 = getelementptr inbounds i8, i8* %5727, i64 8
  %5742 = bitcast i8* %5741 to i64*
  store i64 %5736, i64* %5742, align 1
  store %struct.Memory* %loadMem_400ad6, %struct.Memory** %MEMORY
  %loadMem_400ada = load %struct.Memory*, %struct.Memory** %MEMORY
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 33
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 15
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %RBP.i95 = bitcast %union.anon* %5748 to i64*
  %5749 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5750 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5749, i64 0, i64 0
  %XMM0.i96 = bitcast %union.VectorReg* %5750 to %union.vec128_t*
  %5751 = load i64, i64* %RBP.i95
  %5752 = sub i64 %5751, 48
  %5753 = bitcast %union.vec128_t* %XMM0.i96 to i8*
  %5754 = load i64, i64* %PC.i94
  %5755 = add i64 %5754, 5
  store i64 %5755, i64* %PC.i94
  %5756 = bitcast i8* %5753 to double*
  %5757 = load double, double* %5756, align 1
  %5758 = inttoptr i64 %5752 to double*
  store double %5757, double* %5758
  store %struct.Memory* %loadMem_400ada, %struct.Memory** %MEMORY
  %loadMem_400adf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 33
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %5761 to i64*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 7
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %RDX.i92 = bitcast %union.anon* %5764 to i64*
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 15
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %5767 to i64*
  %5768 = load i64, i64* %RBP.i93
  %5769 = sub i64 %5768, 16
  %5770 = load i64, i64* %PC.i91
  %5771 = add i64 %5770, 4
  store i64 %5771, i64* %PC.i91
  %5772 = inttoptr i64 %5769 to i64*
  %5773 = load i64, i64* %5772
  store i64 %5773, i64* %RDX.i92, align 8
  store %struct.Memory* %loadMem_400adf, %struct.Memory** %MEMORY
  %loadMem_400ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5775 = getelementptr inbounds %struct.GPR, %struct.GPR* %5774, i32 0, i32 33
  %5776 = getelementptr inbounds %struct.Reg, %struct.Reg* %5775, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %5776 to i64*
  %5777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5778 = getelementptr inbounds %struct.GPR, %struct.GPR* %5777, i32 0, i32 7
  %5779 = getelementptr inbounds %struct.Reg, %struct.Reg* %5778, i32 0, i32 0
  %RDX.i89 = bitcast %union.anon* %5779 to i64*
  %5780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5781 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5780, i64 0, i64 0
  %YMM0.i90 = bitcast %union.VectorReg* %5781 to %"class.std::bitset"*
  %5782 = bitcast %"class.std::bitset"* %YMM0.i90 to i8*
  %5783 = load i64, i64* %RDX.i89
  %5784 = add i64 %5783, 96
  %5785 = load i64, i64* %PC.i88
  %5786 = add i64 %5785, 5
  store i64 %5786, i64* %PC.i88
  %5787 = inttoptr i64 %5784 to double*
  %5788 = load double, double* %5787
  %5789 = bitcast i8* %5782 to double*
  store double %5788, double* %5789, align 1
  %5790 = getelementptr inbounds i8, i8* %5782, i64 8
  %5791 = bitcast i8* %5790 to double*
  store double 0.000000e+00, double* %5791, align 1
  store %struct.Memory* %loadMem_400ae3, %struct.Memory** %MEMORY
  %loadMem_400ae8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5793 = getelementptr inbounds %struct.GPR, %struct.GPR* %5792, i32 0, i32 33
  %5794 = getelementptr inbounds %struct.Reg, %struct.Reg* %5793, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %5794 to i64*
  %5795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5796 = getelementptr inbounds %struct.GPR, %struct.GPR* %5795, i32 0, i32 7
  %5797 = getelementptr inbounds %struct.Reg, %struct.Reg* %5796, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %5797 to i64*
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5799 = getelementptr inbounds %struct.GPR, %struct.GPR* %5798, i32 0, i32 15
  %5800 = getelementptr inbounds %struct.Reg, %struct.Reg* %5799, i32 0, i32 0
  %RBP.i87 = bitcast %union.anon* %5800 to i64*
  %5801 = load i64, i64* %RBP.i87
  %5802 = sub i64 %5801, 24
  %5803 = load i64, i64* %PC.i85
  %5804 = add i64 %5803, 4
  store i64 %5804, i64* %PC.i85
  %5805 = inttoptr i64 %5802 to i64*
  %5806 = load i64, i64* %5805
  store i64 %5806, i64* %RDX.i86, align 8
  store %struct.Memory* %loadMem_400ae8, %struct.Memory** %MEMORY
  %loadMem_400aec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5808 = getelementptr inbounds %struct.GPR, %struct.GPR* %5807, i32 0, i32 33
  %5809 = getelementptr inbounds %struct.Reg, %struct.Reg* %5808, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %5809 to i64*
  %5810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5811 = getelementptr inbounds %struct.GPR, %struct.GPR* %5810, i32 0, i32 7
  %5812 = getelementptr inbounds %struct.Reg, %struct.Reg* %5811, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %5812 to i64*
  %5813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5814 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5813, i64 0, i64 0
  %YMM0.i84 = bitcast %union.VectorReg* %5814 to %"class.std::bitset"*
  %5815 = bitcast %"class.std::bitset"* %YMM0.i84 to i8*
  %5816 = bitcast %"class.std::bitset"* %YMM0.i84 to i8*
  %5817 = load i64, i64* %RDX.i83
  %5818 = add i64 %5817, 24
  %5819 = load i64, i64* %PC.i82
  %5820 = add i64 %5819, 5
  store i64 %5820, i64* %PC.i82
  %5821 = bitcast i8* %5816 to double*
  %5822 = load double, double* %5821, align 1
  %5823 = getelementptr inbounds i8, i8* %5816, i64 8
  %5824 = bitcast i8* %5823 to i64*
  %5825 = load i64, i64* %5824, align 1
  %5826 = inttoptr i64 %5818 to double*
  %5827 = load double, double* %5826
  %5828 = fmul double %5822, %5827
  %5829 = bitcast i8* %5815 to double*
  store double %5828, double* %5829, align 1
  %5830 = getelementptr inbounds i8, i8* %5815, i64 8
  %5831 = bitcast i8* %5830 to i64*
  store i64 %5825, i64* %5831, align 1
  store %struct.Memory* %loadMem_400aec, %struct.Memory** %MEMORY
  %loadMem_400af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5833 = getelementptr inbounds %struct.GPR, %struct.GPR* %5832, i32 0, i32 33
  %5834 = getelementptr inbounds %struct.Reg, %struct.Reg* %5833, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %5834 to i64*
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5836 = getelementptr inbounds %struct.GPR, %struct.GPR* %5835, i32 0, i32 7
  %5837 = getelementptr inbounds %struct.Reg, %struct.Reg* %5836, i32 0, i32 0
  %RDX.i80 = bitcast %union.anon* %5837 to i64*
  %5838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5839 = getelementptr inbounds %struct.GPR, %struct.GPR* %5838, i32 0, i32 15
  %5840 = getelementptr inbounds %struct.Reg, %struct.Reg* %5839, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %5840 to i64*
  %5841 = load i64, i64* %RBP.i81
  %5842 = sub i64 %5841, 16
  %5843 = load i64, i64* %PC.i79
  %5844 = add i64 %5843, 4
  store i64 %5844, i64* %PC.i79
  %5845 = inttoptr i64 %5842 to i64*
  %5846 = load i64, i64* %5845
  store i64 %5846, i64* %RDX.i80, align 8
  store %struct.Memory* %loadMem_400af1, %struct.Memory** %MEMORY
  %loadMem_400af5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5848 = getelementptr inbounds %struct.GPR, %struct.GPR* %5847, i32 0, i32 33
  %5849 = getelementptr inbounds %struct.Reg, %struct.Reg* %5848, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %5849 to i64*
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5851 = getelementptr inbounds %struct.GPR, %struct.GPR* %5850, i32 0, i32 7
  %5852 = getelementptr inbounds %struct.Reg, %struct.Reg* %5851, i32 0, i32 0
  %RDX.i77 = bitcast %union.anon* %5852 to i64*
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5854 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5853, i64 0, i64 1
  %YMM1.i78 = bitcast %union.VectorReg* %5854 to %"class.std::bitset"*
  %5855 = bitcast %"class.std::bitset"* %YMM1.i78 to i8*
  %5856 = load i64, i64* %RDX.i77
  %5857 = add i64 %5856, 104
  %5858 = load i64, i64* %PC.i76
  %5859 = add i64 %5858, 5
  store i64 %5859, i64* %PC.i76
  %5860 = inttoptr i64 %5857 to double*
  %5861 = load double, double* %5860
  %5862 = bitcast i8* %5855 to double*
  store double %5861, double* %5862, align 1
  %5863 = getelementptr inbounds i8, i8* %5855, i64 8
  %5864 = bitcast i8* %5863 to double*
  store double 0.000000e+00, double* %5864, align 1
  store %struct.Memory* %loadMem_400af5, %struct.Memory** %MEMORY
  %loadMem_400afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5866 = getelementptr inbounds %struct.GPR, %struct.GPR* %5865, i32 0, i32 33
  %5867 = getelementptr inbounds %struct.Reg, %struct.Reg* %5866, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %5867 to i64*
  %5868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5869 = getelementptr inbounds %struct.GPR, %struct.GPR* %5868, i32 0, i32 7
  %5870 = getelementptr inbounds %struct.Reg, %struct.Reg* %5869, i32 0, i32 0
  %RDX.i74 = bitcast %union.anon* %5870 to i64*
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 15
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %5873 to i64*
  %5874 = load i64, i64* %RBP.i75
  %5875 = sub i64 %5874, 24
  %5876 = load i64, i64* %PC.i73
  %5877 = add i64 %5876, 4
  store i64 %5877, i64* %PC.i73
  %5878 = inttoptr i64 %5875 to i64*
  %5879 = load i64, i64* %5878
  store i64 %5879, i64* %RDX.i74, align 8
  store %struct.Memory* %loadMem_400afa, %struct.Memory** %MEMORY
  %loadMem_400afe = load %struct.Memory*, %struct.Memory** %MEMORY
  %5880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5881 = getelementptr inbounds %struct.GPR, %struct.GPR* %5880, i32 0, i32 33
  %5882 = getelementptr inbounds %struct.Reg, %struct.Reg* %5881, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %5882 to i64*
  %5883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5884 = getelementptr inbounds %struct.GPR, %struct.GPR* %5883, i32 0, i32 7
  %5885 = getelementptr inbounds %struct.Reg, %struct.Reg* %5884, i32 0, i32 0
  %RDX.i71 = bitcast %union.anon* %5885 to i64*
  %5886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5887 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5886, i64 0, i64 1
  %YMM1.i72 = bitcast %union.VectorReg* %5887 to %"class.std::bitset"*
  %5888 = bitcast %"class.std::bitset"* %YMM1.i72 to i8*
  %5889 = bitcast %"class.std::bitset"* %YMM1.i72 to i8*
  %5890 = load i64, i64* %RDX.i71
  %5891 = add i64 %5890, 56
  %5892 = load i64, i64* %PC.i70
  %5893 = add i64 %5892, 5
  store i64 %5893, i64* %PC.i70
  %5894 = bitcast i8* %5889 to double*
  %5895 = load double, double* %5894, align 1
  %5896 = getelementptr inbounds i8, i8* %5889, i64 8
  %5897 = bitcast i8* %5896 to i64*
  %5898 = load i64, i64* %5897, align 1
  %5899 = inttoptr i64 %5891 to double*
  %5900 = load double, double* %5899
  %5901 = fmul double %5895, %5900
  %5902 = bitcast i8* %5888 to double*
  store double %5901, double* %5902, align 1
  %5903 = getelementptr inbounds i8, i8* %5888, i64 8
  %5904 = bitcast i8* %5903 to i64*
  store i64 %5898, i64* %5904, align 1
  store %struct.Memory* %loadMem_400afe, %struct.Memory** %MEMORY
  %loadMem_400b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5906 = getelementptr inbounds %struct.GPR, %struct.GPR* %5905, i32 0, i32 33
  %5907 = getelementptr inbounds %struct.Reg, %struct.Reg* %5906, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %5907 to i64*
  %5908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5909 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5908, i64 0, i64 0
  %YMM0.i68 = bitcast %union.VectorReg* %5909 to %"class.std::bitset"*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5911 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5910, i64 0, i64 1
  %XMM1.i69 = bitcast %union.VectorReg* %5911 to %union.vec128_t*
  %5912 = bitcast %"class.std::bitset"* %YMM0.i68 to i8*
  %5913 = bitcast %"class.std::bitset"* %YMM0.i68 to i8*
  %5914 = bitcast %union.vec128_t* %XMM1.i69 to i8*
  %5915 = load i64, i64* %PC.i67
  %5916 = add i64 %5915, 4
  store i64 %5916, i64* %PC.i67
  %5917 = bitcast i8* %5913 to double*
  %5918 = load double, double* %5917, align 1
  %5919 = getelementptr inbounds i8, i8* %5913, i64 8
  %5920 = bitcast i8* %5919 to i64*
  %5921 = load i64, i64* %5920, align 1
  %5922 = bitcast i8* %5914 to double*
  %5923 = load double, double* %5922, align 1
  %5924 = fadd double %5918, %5923
  %5925 = bitcast i8* %5912 to double*
  store double %5924, double* %5925, align 1
  %5926 = getelementptr inbounds i8, i8* %5912, i64 8
  %5927 = bitcast i8* %5926 to i64*
  store i64 %5921, i64* %5927, align 1
  store %struct.Memory* %loadMem_400b03, %struct.Memory** %MEMORY
  %loadMem_400b07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5929 = getelementptr inbounds %struct.GPR, %struct.GPR* %5928, i32 0, i32 33
  %5930 = getelementptr inbounds %struct.Reg, %struct.Reg* %5929, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %5930 to i64*
  %5931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5932 = getelementptr inbounds %struct.GPR, %struct.GPR* %5931, i32 0, i32 7
  %5933 = getelementptr inbounds %struct.Reg, %struct.Reg* %5932, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %5933 to i64*
  %5934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5935 = getelementptr inbounds %struct.GPR, %struct.GPR* %5934, i32 0, i32 15
  %5936 = getelementptr inbounds %struct.Reg, %struct.Reg* %5935, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %5936 to i64*
  %5937 = load i64, i64* %RBP.i66
  %5938 = sub i64 %5937, 16
  %5939 = load i64, i64* %PC.i64
  %5940 = add i64 %5939, 4
  store i64 %5940, i64* %PC.i64
  %5941 = inttoptr i64 %5938 to i64*
  %5942 = load i64, i64* %5941
  store i64 %5942, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_400b07, %struct.Memory** %MEMORY
  %loadMem_400b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5944 = getelementptr inbounds %struct.GPR, %struct.GPR* %5943, i32 0, i32 33
  %5945 = getelementptr inbounds %struct.Reg, %struct.Reg* %5944, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %5945 to i64*
  %5946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5947 = getelementptr inbounds %struct.GPR, %struct.GPR* %5946, i32 0, i32 7
  %5948 = getelementptr inbounds %struct.Reg, %struct.Reg* %5947, i32 0, i32 0
  %RDX.i62 = bitcast %union.anon* %5948 to i64*
  %5949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5950 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5949, i64 0, i64 1
  %YMM1.i63 = bitcast %union.VectorReg* %5950 to %"class.std::bitset"*
  %5951 = bitcast %"class.std::bitset"* %YMM1.i63 to i8*
  %5952 = load i64, i64* %RDX.i62
  %5953 = add i64 %5952, 112
  %5954 = load i64, i64* %PC.i61
  %5955 = add i64 %5954, 5
  store i64 %5955, i64* %PC.i61
  %5956 = inttoptr i64 %5953 to double*
  %5957 = load double, double* %5956
  %5958 = bitcast i8* %5951 to double*
  store double %5957, double* %5958, align 1
  %5959 = getelementptr inbounds i8, i8* %5951, i64 8
  %5960 = bitcast i8* %5959 to double*
  store double 0.000000e+00, double* %5960, align 1
  store %struct.Memory* %loadMem_400b0b, %struct.Memory** %MEMORY
  %loadMem_400b10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5962 = getelementptr inbounds %struct.GPR, %struct.GPR* %5961, i32 0, i32 33
  %5963 = getelementptr inbounds %struct.Reg, %struct.Reg* %5962, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %5963 to i64*
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5965 = getelementptr inbounds %struct.GPR, %struct.GPR* %5964, i32 0, i32 7
  %5966 = getelementptr inbounds %struct.Reg, %struct.Reg* %5965, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %5966 to i64*
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5968 = getelementptr inbounds %struct.GPR, %struct.GPR* %5967, i32 0, i32 15
  %5969 = getelementptr inbounds %struct.Reg, %struct.Reg* %5968, i32 0, i32 0
  %RBP.i60 = bitcast %union.anon* %5969 to i64*
  %5970 = load i64, i64* %RBP.i60
  %5971 = sub i64 %5970, 24
  %5972 = load i64, i64* %PC.i58
  %5973 = add i64 %5972, 4
  store i64 %5973, i64* %PC.i58
  %5974 = inttoptr i64 %5971 to i64*
  %5975 = load i64, i64* %5974
  store i64 %5975, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_400b10, %struct.Memory** %MEMORY
  %loadMem_400b14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 7
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %RDX.i56 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %5983 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %5982, i64 0, i64 1
  %YMM1.i57 = bitcast %union.VectorReg* %5983 to %"class.std::bitset"*
  %5984 = bitcast %"class.std::bitset"* %YMM1.i57 to i8*
  %5985 = bitcast %"class.std::bitset"* %YMM1.i57 to i8*
  %5986 = load i64, i64* %RDX.i56
  %5987 = add i64 %5986, 88
  %5988 = load i64, i64* %PC.i55
  %5989 = add i64 %5988, 5
  store i64 %5989, i64* %PC.i55
  %5990 = bitcast i8* %5985 to double*
  %5991 = load double, double* %5990, align 1
  %5992 = getelementptr inbounds i8, i8* %5985, i64 8
  %5993 = bitcast i8* %5992 to i64*
  %5994 = load i64, i64* %5993, align 1
  %5995 = inttoptr i64 %5987 to double*
  %5996 = load double, double* %5995
  %5997 = fmul double %5991, %5996
  %5998 = bitcast i8* %5984 to double*
  store double %5997, double* %5998, align 1
  %5999 = getelementptr inbounds i8, i8* %5984, i64 8
  %6000 = bitcast i8* %5999 to i64*
  store i64 %5994, i64* %6000, align 1
  store %struct.Memory* %loadMem_400b14, %struct.Memory** %MEMORY
  %loadMem_400b19 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6002 = getelementptr inbounds %struct.GPR, %struct.GPR* %6001, i32 0, i32 33
  %6003 = getelementptr inbounds %struct.Reg, %struct.Reg* %6002, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6003 to i64*
  %6004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6005 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6004, i64 0, i64 0
  %YMM0.i53 = bitcast %union.VectorReg* %6005 to %"class.std::bitset"*
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6007 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6006, i64 0, i64 1
  %XMM1.i54 = bitcast %union.VectorReg* %6007 to %union.vec128_t*
  %6008 = bitcast %"class.std::bitset"* %YMM0.i53 to i8*
  %6009 = bitcast %"class.std::bitset"* %YMM0.i53 to i8*
  %6010 = bitcast %union.vec128_t* %XMM1.i54 to i8*
  %6011 = load i64, i64* %PC.i52
  %6012 = add i64 %6011, 4
  store i64 %6012, i64* %PC.i52
  %6013 = bitcast i8* %6009 to double*
  %6014 = load double, double* %6013, align 1
  %6015 = getelementptr inbounds i8, i8* %6009, i64 8
  %6016 = bitcast i8* %6015 to i64*
  %6017 = load i64, i64* %6016, align 1
  %6018 = bitcast i8* %6010 to double*
  %6019 = load double, double* %6018, align 1
  %6020 = fadd double %6014, %6019
  %6021 = bitcast i8* %6008 to double*
  store double %6020, double* %6021, align 1
  %6022 = getelementptr inbounds i8, i8* %6008, i64 8
  %6023 = bitcast i8* %6022 to i64*
  store i64 %6017, i64* %6023, align 1
  store %struct.Memory* %loadMem_400b19, %struct.Memory** %MEMORY
  %loadMem_400b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6025 = getelementptr inbounds %struct.GPR, %struct.GPR* %6024, i32 0, i32 33
  %6026 = getelementptr inbounds %struct.Reg, %struct.Reg* %6025, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %6026 to i64*
  %6027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6028 = getelementptr inbounds %struct.GPR, %struct.GPR* %6027, i32 0, i32 7
  %6029 = getelementptr inbounds %struct.Reg, %struct.Reg* %6028, i32 0, i32 0
  %RDX.i50 = bitcast %union.anon* %6029 to i64*
  %6030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6031 = getelementptr inbounds %struct.GPR, %struct.GPR* %6030, i32 0, i32 15
  %6032 = getelementptr inbounds %struct.Reg, %struct.Reg* %6031, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %6032 to i64*
  %6033 = load i64, i64* %RBP.i51
  %6034 = sub i64 %6033, 16
  %6035 = load i64, i64* %PC.i49
  %6036 = add i64 %6035, 4
  store i64 %6036, i64* %PC.i49
  %6037 = inttoptr i64 %6034 to i64*
  %6038 = load i64, i64* %6037
  store i64 %6038, i64* %RDX.i50, align 8
  store %struct.Memory* %loadMem_400b1d, %struct.Memory** %MEMORY
  %loadMem_400b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6040 = getelementptr inbounds %struct.GPR, %struct.GPR* %6039, i32 0, i32 33
  %6041 = getelementptr inbounds %struct.Reg, %struct.Reg* %6040, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %6041 to i64*
  %6042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6043 = getelementptr inbounds %struct.GPR, %struct.GPR* %6042, i32 0, i32 7
  %6044 = getelementptr inbounds %struct.Reg, %struct.Reg* %6043, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %6044 to i64*
  %6045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6045, i64 0, i64 1
  %YMM1.i48 = bitcast %union.VectorReg* %6046 to %"class.std::bitset"*
  %6047 = bitcast %"class.std::bitset"* %YMM1.i48 to i8*
  %6048 = load i64, i64* %RDX.i47
  %6049 = add i64 %6048, 120
  %6050 = load i64, i64* %PC.i46
  %6051 = add i64 %6050, 5
  store i64 %6051, i64* %PC.i46
  %6052 = inttoptr i64 %6049 to double*
  %6053 = load double, double* %6052
  %6054 = bitcast i8* %6047 to double*
  store double %6053, double* %6054, align 1
  %6055 = getelementptr inbounds i8, i8* %6047, i64 8
  %6056 = bitcast i8* %6055 to double*
  store double 0.000000e+00, double* %6056, align 1
  store %struct.Memory* %loadMem_400b21, %struct.Memory** %MEMORY
  %loadMem_400b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6058 = getelementptr inbounds %struct.GPR, %struct.GPR* %6057, i32 0, i32 33
  %6059 = getelementptr inbounds %struct.Reg, %struct.Reg* %6058, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %6059 to i64*
  %6060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6061 = getelementptr inbounds %struct.GPR, %struct.GPR* %6060, i32 0, i32 7
  %6062 = getelementptr inbounds %struct.Reg, %struct.Reg* %6061, i32 0, i32 0
  %RDX.i44 = bitcast %union.anon* %6062 to i64*
  %6063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6064 = getelementptr inbounds %struct.GPR, %struct.GPR* %6063, i32 0, i32 15
  %6065 = getelementptr inbounds %struct.Reg, %struct.Reg* %6064, i32 0, i32 0
  %RBP.i45 = bitcast %union.anon* %6065 to i64*
  %6066 = load i64, i64* %RBP.i45
  %6067 = sub i64 %6066, 24
  %6068 = load i64, i64* %PC.i43
  %6069 = add i64 %6068, 4
  store i64 %6069, i64* %PC.i43
  %6070 = inttoptr i64 %6067 to i64*
  %6071 = load i64, i64* %6070
  store i64 %6071, i64* %RDX.i44, align 8
  store %struct.Memory* %loadMem_400b26, %struct.Memory** %MEMORY
  %loadMem_400b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 33
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %6074 to i64*
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 7
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %RDX.i42 = bitcast %union.anon* %6077 to i64*
  %6078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6079 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6078, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %6079 to %"class.std::bitset"*
  %6080 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6081 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %6082 = load i64, i64* %RDX.i42
  %6083 = add i64 %6082, 120
  %6084 = load i64, i64* %PC.i41
  %6085 = add i64 %6084, 5
  store i64 %6085, i64* %PC.i41
  %6086 = bitcast i8* %6081 to double*
  %6087 = load double, double* %6086, align 1
  %6088 = getelementptr inbounds i8, i8* %6081, i64 8
  %6089 = bitcast i8* %6088 to i64*
  %6090 = load i64, i64* %6089, align 1
  %6091 = inttoptr i64 %6083 to double*
  %6092 = load double, double* %6091
  %6093 = fmul double %6087, %6092
  %6094 = bitcast i8* %6080 to double*
  store double %6093, double* %6094, align 1
  %6095 = getelementptr inbounds i8, i8* %6080, i64 8
  %6096 = bitcast i8* %6095 to i64*
  store i64 %6090, i64* %6096, align 1
  store %struct.Memory* %loadMem_400b2a, %struct.Memory** %MEMORY
  %loadMem_400b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6098 = getelementptr inbounds %struct.GPR, %struct.GPR* %6097, i32 0, i32 33
  %6099 = getelementptr inbounds %struct.Reg, %struct.Reg* %6098, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %6099 to i64*
  %6100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6101 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6100, i64 0, i64 0
  %YMM0.i40 = bitcast %union.VectorReg* %6101 to %"class.std::bitset"*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6103 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6102, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %6103 to %union.vec128_t*
  %6104 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %6105 = bitcast %"class.std::bitset"* %YMM0.i40 to i8*
  %6106 = bitcast %union.vec128_t* %XMM1.i to i8*
  %6107 = load i64, i64* %PC.i39
  %6108 = add i64 %6107, 4
  store i64 %6108, i64* %PC.i39
  %6109 = bitcast i8* %6105 to double*
  %6110 = load double, double* %6109, align 1
  %6111 = getelementptr inbounds i8, i8* %6105, i64 8
  %6112 = bitcast i8* %6111 to i64*
  %6113 = load i64, i64* %6112, align 1
  %6114 = bitcast i8* %6106 to double*
  %6115 = load double, double* %6114, align 1
  %6116 = fadd double %6110, %6115
  %6117 = bitcast i8* %6104 to double*
  store double %6116, double* %6117, align 1
  %6118 = getelementptr inbounds i8, i8* %6104, i64 8
  %6119 = bitcast i8* %6118 to i64*
  store i64 %6113, i64* %6119, align 1
  store %struct.Memory* %loadMem_400b2f, %struct.Memory** %MEMORY
  %loadMem_400b33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 33
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %6122 to i64*
  %6123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6124 = getelementptr inbounds %struct.GPR, %struct.GPR* %6123, i32 0, i32 15
  %6125 = getelementptr inbounds %struct.Reg, %struct.Reg* %6124, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %6125 to i64*
  %6126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6127 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6126, i64 0, i64 0
  %XMM0.i38 = bitcast %union.VectorReg* %6127 to %union.vec128_t*
  %6128 = load i64, i64* %RBP.i37
  %6129 = sub i64 %6128, 40
  %6130 = bitcast %union.vec128_t* %XMM0.i38 to i8*
  %6131 = load i64, i64* %PC.i36
  %6132 = add i64 %6131, 5
  store i64 %6132, i64* %PC.i36
  %6133 = bitcast i8* %6130 to double*
  %6134 = load double, double* %6133, align 1
  %6135 = inttoptr i64 %6129 to double*
  store double %6134, double* %6135
  store %struct.Memory* %loadMem_400b33, %struct.Memory** %MEMORY
  %loadMem_400b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 15
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %RBP.i35 = bitcast %union.anon* %6141 to i64*
  %6142 = load i64, i64* %RBP.i35
  %6143 = sub i64 %6142, 28
  %6144 = load i64, i64* %PC.i34
  %6145 = add i64 %6144, 7
  store i64 %6145, i64* %PC.i34
  %6146 = inttoptr i64 %6143 to i32*
  store i32 0, i32* %6146
  store %struct.Memory* %loadMem_400b38, %struct.Memory** %MEMORY
  br label %block_.L_400b3f

block_.L_400b3f:                                  ; preds = %block_400b49, %entry
  %loadMem_400b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6148 = getelementptr inbounds %struct.GPR, %struct.GPR* %6147, i32 0, i32 33
  %6149 = getelementptr inbounds %struct.Reg, %struct.Reg* %6148, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %6149 to i64*
  %6150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6151 = getelementptr inbounds %struct.GPR, %struct.GPR* %6150, i32 0, i32 15
  %6152 = getelementptr inbounds %struct.Reg, %struct.Reg* %6151, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %6152 to i64*
  %6153 = load i64, i64* %RBP.i33
  %6154 = sub i64 %6153, 28
  %6155 = load i64, i64* %PC.i32
  %6156 = add i64 %6155, 4
  store i64 %6156, i64* %PC.i32
  %6157 = inttoptr i64 %6154 to i32*
  %6158 = load i32, i32* %6157
  %6159 = sub i32 %6158, 16
  %6160 = icmp ult i32 %6158, 16
  %6161 = zext i1 %6160 to i8
  %6162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6161, i8* %6162, align 1
  %6163 = and i32 %6159, 255
  %6164 = call i32 @llvm.ctpop.i32(i32 %6163)
  %6165 = trunc i32 %6164 to i8
  %6166 = and i8 %6165, 1
  %6167 = xor i8 %6166, 1
  %6168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6167, i8* %6168, align 1
  %6169 = xor i32 %6158, 16
  %6170 = xor i32 %6169, %6159
  %6171 = lshr i32 %6170, 4
  %6172 = trunc i32 %6171 to i8
  %6173 = and i8 %6172, 1
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6173, i8* %6174, align 1
  %6175 = icmp eq i32 %6159, 0
  %6176 = zext i1 %6175 to i8
  %6177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6176, i8* %6177, align 1
  %6178 = lshr i32 %6159, 31
  %6179 = trunc i32 %6178 to i8
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6179, i8* %6180, align 1
  %6181 = lshr i32 %6158, 31
  %6182 = xor i32 %6178, %6181
  %6183 = add i32 %6182, %6181
  %6184 = icmp eq i32 %6183, 2
  %6185 = zext i1 %6184 to i8
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6185, i8* %6186, align 1
  store %struct.Memory* %loadMem_400b3f, %struct.Memory** %MEMORY
  %loadMem_400b43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 33
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %6189 to i64*
  %6190 = load i64, i64* %PC.i31
  %6191 = add i64 %6190, 48
  %6192 = load i64, i64* %PC.i31
  %6193 = add i64 %6192, 6
  %6194 = load i64, i64* %PC.i31
  %6195 = add i64 %6194, 6
  store i64 %6195, i64* %PC.i31
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6197 = load i8, i8* %6196, align 1
  %6198 = icmp eq i8 %6197, 0
  %6199 = zext i1 %6198 to i8
  store i8 %6199, i8* %BRANCH_TAKEN, align 1
  %6200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6201 = select i1 %6198, i64 %6191, i64 %6193
  store i64 %6201, i64* %6200, align 8
  store %struct.Memory* %loadMem_400b43, %struct.Memory** %MEMORY
  %loadBr_400b43 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_400b43 = icmp eq i8 %loadBr_400b43, 1
  br i1 %cmpBr_400b43, label %block_.L_400b73, label %block_400b49

block_400b49:                                     ; preds = %block_.L_400b3f
  %loadMem_400b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 33
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %6204 to i64*
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6206 = getelementptr inbounds %struct.GPR, %struct.GPR* %6205, i32 0, i32 1
  %6207 = getelementptr inbounds %struct.Reg, %struct.Reg* %6206, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %6207 to i64*
  %6208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6209 = getelementptr inbounds %struct.GPR, %struct.GPR* %6208, i32 0, i32 15
  %6210 = getelementptr inbounds %struct.Reg, %struct.Reg* %6209, i32 0, i32 0
  %RBP.i30 = bitcast %union.anon* %6210 to i64*
  %6211 = load i64, i64* %RBP.i30
  %6212 = sub i64 %6211, 28
  %6213 = load i64, i64* %PC.i28
  %6214 = add i64 %6213, 3
  store i64 %6214, i64* %PC.i28
  %6215 = inttoptr i64 %6212 to i32*
  %6216 = load i32, i32* %6215
  %6217 = zext i32 %6216 to i64
  store i64 %6217, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_400b49, %struct.Memory** %MEMORY
  %loadMem_400b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 33
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 1
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %EAX.i26 = bitcast %union.anon* %6223 to i32*
  %6224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6225 = getelementptr inbounds %struct.GPR, %struct.GPR* %6224, i32 0, i32 5
  %6226 = getelementptr inbounds %struct.Reg, %struct.Reg* %6225, i32 0, i32 0
  %RCX.i27 = bitcast %union.anon* %6226 to i64*
  %6227 = load i32, i32* %EAX.i26
  %6228 = zext i32 %6227 to i64
  %6229 = load i64, i64* %PC.i25
  %6230 = add i64 %6229, 2
  store i64 %6230, i64* %PC.i25
  %6231 = and i64 %6228, 4294967295
  store i64 %6231, i64* %RCX.i27, align 8
  store %struct.Memory* %loadMem_400b4c, %struct.Memory** %MEMORY
  %loadMem_400b4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 33
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %6234 to i64*
  %6235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6236 = getelementptr inbounds %struct.GPR, %struct.GPR* %6235, i32 0, i32 5
  %6237 = getelementptr inbounds %struct.Reg, %struct.Reg* %6236, i32 0, i32 0
  %RCX.i23 = bitcast %union.anon* %6237 to i64*
  %6238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6239 = getelementptr inbounds %struct.GPR, %struct.GPR* %6238, i32 0, i32 15
  %6240 = getelementptr inbounds %struct.Reg, %struct.Reg* %6239, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %6240 to i64*
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6242 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6241, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %6242 to %"class.std::bitset"*
  %6243 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %6244 = load i64, i64* %RBP.i24
  %6245 = load i64, i64* %RCX.i23
  %6246 = mul i64 %6245, 8
  %6247 = add i64 %6244, -160
  %6248 = add i64 %6247, %6246
  %6249 = load i64, i64* %PC.i22
  %6250 = add i64 %6249, 9
  store i64 %6250, i64* %PC.i22
  %6251 = inttoptr i64 %6248 to double*
  %6252 = load double, double* %6251
  %6253 = bitcast i8* %6243 to double*
  store double %6252, double* %6253, align 1
  %6254 = getelementptr inbounds i8, i8* %6243, i64 8
  %6255 = bitcast i8* %6254 to double*
  store double 0.000000e+00, double* %6255, align 1
  store %struct.Memory* %loadMem_400b4e, %struct.Memory** %MEMORY
  %loadMem_400b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6257 = getelementptr inbounds %struct.GPR, %struct.GPR* %6256, i32 0, i32 33
  %6258 = getelementptr inbounds %struct.Reg, %struct.Reg* %6257, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %6258 to i64*
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6260 = getelementptr inbounds %struct.GPR, %struct.GPR* %6259, i32 0, i32 5
  %6261 = getelementptr inbounds %struct.Reg, %struct.Reg* %6260, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %6261 to i64*
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6263 = getelementptr inbounds %struct.GPR, %struct.GPR* %6262, i32 0, i32 15
  %6264 = getelementptr inbounds %struct.Reg, %struct.Reg* %6263, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %6264 to i64*
  %6265 = load i64, i64* %RBP.i21
  %6266 = sub i64 %6265, 8
  %6267 = load i64, i64* %PC.i19
  %6268 = add i64 %6267, 4
  store i64 %6268, i64* %PC.i19
  %6269 = inttoptr i64 %6266 to i64*
  %6270 = load i64, i64* %6269
  store i64 %6270, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_400b57, %struct.Memory** %MEMORY
  %loadMem_400b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6272 = getelementptr inbounds %struct.GPR, %struct.GPR* %6271, i32 0, i32 33
  %6273 = getelementptr inbounds %struct.Reg, %struct.Reg* %6272, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %6273 to i64*
  %6274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6275 = getelementptr inbounds %struct.GPR, %struct.GPR* %6274, i32 0, i32 1
  %6276 = getelementptr inbounds %struct.Reg, %struct.Reg* %6275, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %6276 to i64*
  %6277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6278 = getelementptr inbounds %struct.GPR, %struct.GPR* %6277, i32 0, i32 15
  %6279 = getelementptr inbounds %struct.Reg, %struct.Reg* %6278, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %6279 to i64*
  %6280 = load i64, i64* %RBP.i18
  %6281 = sub i64 %6280, 28
  %6282 = load i64, i64* %PC.i16
  %6283 = add i64 %6282, 3
  store i64 %6283, i64* %PC.i16
  %6284 = inttoptr i64 %6281 to i32*
  %6285 = load i32, i32* %6284
  %6286 = zext i32 %6285 to i64
  store i64 %6286, i64* %RAX.i17, align 8
  store %struct.Memory* %loadMem_400b5b, %struct.Memory** %MEMORY
  %loadMem_400b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6288 = getelementptr inbounds %struct.GPR, %struct.GPR* %6287, i32 0, i32 33
  %6289 = getelementptr inbounds %struct.Reg, %struct.Reg* %6288, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %6289 to i64*
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6291 = getelementptr inbounds %struct.GPR, %struct.GPR* %6290, i32 0, i32 1
  %6292 = getelementptr inbounds %struct.Reg, %struct.Reg* %6291, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %6292 to i32*
  %6293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6294 = getelementptr inbounds %struct.GPR, %struct.GPR* %6293, i32 0, i32 7
  %6295 = getelementptr inbounds %struct.Reg, %struct.Reg* %6294, i32 0, i32 0
  %RDX.i15 = bitcast %union.anon* %6295 to i64*
  %6296 = load i32, i32* %EAX.i14
  %6297 = zext i32 %6296 to i64
  %6298 = load i64, i64* %PC.i13
  %6299 = add i64 %6298, 2
  store i64 %6299, i64* %PC.i13
  %6300 = and i64 %6297, 4294967295
  store i64 %6300, i64* %RDX.i15, align 8
  store %struct.Memory* %loadMem_400b5e, %struct.Memory** %MEMORY
  %loadMem_400b60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6302 = getelementptr inbounds %struct.GPR, %struct.GPR* %6301, i32 0, i32 33
  %6303 = getelementptr inbounds %struct.Reg, %struct.Reg* %6302, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %6303 to i64*
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6305 = getelementptr inbounds %struct.GPR, %struct.GPR* %6304, i32 0, i32 5
  %6306 = getelementptr inbounds %struct.Reg, %struct.Reg* %6305, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %6306 to i64*
  %6307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6308 = getelementptr inbounds %struct.GPR, %struct.GPR* %6307, i32 0, i32 7
  %6309 = getelementptr inbounds %struct.Reg, %struct.Reg* %6308, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %6309 to i64*
  %6310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %6311 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6310, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %6311 to %union.vec128_t*
  %6312 = load i64, i64* %RCX.i
  %6313 = load i64, i64* %RDX.i
  %6314 = mul i64 %6313, 8
  %6315 = add i64 %6314, %6312
  %6316 = bitcast %union.vec128_t* %XMM0.i to i8*
  %6317 = load i64, i64* %PC.i12
  %6318 = add i64 %6317, 5
  store i64 %6318, i64* %PC.i12
  %6319 = bitcast i8* %6316 to double*
  %6320 = load double, double* %6319, align 1
  %6321 = inttoptr i64 %6315 to double*
  store double %6320, double* %6321
  store %struct.Memory* %loadMem_400b60, %struct.Memory** %MEMORY
  %loadMem_400b65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 33
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %6324 to i64*
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 1
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %6327 to i64*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 15
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %6330 to i64*
  %6331 = load i64, i64* %RBP.i11
  %6332 = sub i64 %6331, 28
  %6333 = load i64, i64* %PC.i9
  %6334 = add i64 %6333, 3
  store i64 %6334, i64* %PC.i9
  %6335 = inttoptr i64 %6332 to i32*
  %6336 = load i32, i32* %6335
  %6337 = zext i32 %6336 to i64
  store i64 %6337, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_400b65, %struct.Memory** %MEMORY
  %loadMem_400b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6339 = getelementptr inbounds %struct.GPR, %struct.GPR* %6338, i32 0, i32 33
  %6340 = getelementptr inbounds %struct.Reg, %struct.Reg* %6339, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %6340 to i64*
  %6341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6342 = getelementptr inbounds %struct.GPR, %struct.GPR* %6341, i32 0, i32 1
  %6343 = getelementptr inbounds %struct.Reg, %struct.Reg* %6342, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %6343 to i64*
  %6344 = load i64, i64* %RAX.i
  %6345 = load i64, i64* %PC.i8
  %6346 = add i64 %6345, 3
  store i64 %6346, i64* %PC.i8
  %6347 = trunc i64 %6344 to i32
  %6348 = add i32 1, %6347
  %6349 = zext i32 %6348 to i64
  store i64 %6349, i64* %RAX.i, align 8
  %6350 = icmp ult i32 %6348, %6347
  %6351 = icmp ult i32 %6348, 1
  %6352 = or i1 %6350, %6351
  %6353 = zext i1 %6352 to i8
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6353, i8* %6354, align 1
  %6355 = and i32 %6348, 255
  %6356 = call i32 @llvm.ctpop.i32(i32 %6355)
  %6357 = trunc i32 %6356 to i8
  %6358 = and i8 %6357, 1
  %6359 = xor i8 %6358, 1
  %6360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6359, i8* %6360, align 1
  %6361 = xor i64 1, %6344
  %6362 = trunc i64 %6361 to i32
  %6363 = xor i32 %6362, %6348
  %6364 = lshr i32 %6363, 4
  %6365 = trunc i32 %6364 to i8
  %6366 = and i8 %6365, 1
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6366, i8* %6367, align 1
  %6368 = icmp eq i32 %6348, 0
  %6369 = zext i1 %6368 to i8
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6369, i8* %6370, align 1
  %6371 = lshr i32 %6348, 31
  %6372 = trunc i32 %6371 to i8
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6372, i8* %6373, align 1
  %6374 = lshr i32 %6347, 31
  %6375 = xor i32 %6371, %6374
  %6376 = add i32 %6375, %6371
  %6377 = icmp eq i32 %6376, 2
  %6378 = zext i1 %6377 to i8
  %6379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6378, i8* %6379, align 1
  store %struct.Memory* %loadMem_400b68, %struct.Memory** %MEMORY
  %loadMem_400b6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6381 = getelementptr inbounds %struct.GPR, %struct.GPR* %6380, i32 0, i32 33
  %6382 = getelementptr inbounds %struct.Reg, %struct.Reg* %6381, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %6382 to i64*
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6384 = getelementptr inbounds %struct.GPR, %struct.GPR* %6383, i32 0, i32 1
  %6385 = getelementptr inbounds %struct.Reg, %struct.Reg* %6384, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %6385 to i32*
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6387 = getelementptr inbounds %struct.GPR, %struct.GPR* %6386, i32 0, i32 15
  %6388 = getelementptr inbounds %struct.Reg, %struct.Reg* %6387, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %6388 to i64*
  %6389 = load i64, i64* %RBP.i7
  %6390 = sub i64 %6389, 28
  %6391 = load i32, i32* %EAX.i
  %6392 = zext i32 %6391 to i64
  %6393 = load i64, i64* %PC.i6
  %6394 = add i64 %6393, 3
  store i64 %6394, i64* %PC.i6
  %6395 = inttoptr i64 %6390 to i32*
  store i32 %6391, i32* %6395
  store %struct.Memory* %loadMem_400b6b, %struct.Memory** %MEMORY
  %loadMem_400b6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6397 = getelementptr inbounds %struct.GPR, %struct.GPR* %6396, i32 0, i32 33
  %6398 = getelementptr inbounds %struct.Reg, %struct.Reg* %6397, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %6398 to i64*
  %6399 = load i64, i64* %PC.i5
  %6400 = add i64 %6399, -47
  %6401 = load i64, i64* %PC.i5
  %6402 = add i64 %6401, 5
  store i64 %6402, i64* %PC.i5
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6400, i64* %6403, align 8
  store %struct.Memory* %loadMem_400b6e, %struct.Memory** %MEMORY
  br label %block_.L_400b3f

block_.L_400b73:                                  ; preds = %block_.L_400b3f
  %loadMem_400b73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 33
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %6406 to i64*
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6408 = getelementptr inbounds %struct.GPR, %struct.GPR* %6407, i32 0, i32 13
  %6409 = getelementptr inbounds %struct.Reg, %struct.Reg* %6408, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %6409 to i64*
  %6410 = load i64, i64* %RSP.i
  %6411 = load i64, i64* %PC.i4
  %6412 = add i64 %6411, 4
  store i64 %6412, i64* %PC.i4
  %6413 = add i64 32, %6410
  store i64 %6413, i64* %RSP.i, align 8
  %6414 = icmp ult i64 %6413, %6410
  %6415 = icmp ult i64 %6413, 32
  %6416 = or i1 %6414, %6415
  %6417 = zext i1 %6416 to i8
  %6418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6417, i8* %6418, align 1
  %6419 = trunc i64 %6413 to i32
  %6420 = and i32 %6419, 255
  %6421 = call i32 @llvm.ctpop.i32(i32 %6420)
  %6422 = trunc i32 %6421 to i8
  %6423 = and i8 %6422, 1
  %6424 = xor i8 %6423, 1
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6424, i8* %6425, align 1
  %6426 = xor i64 32, %6410
  %6427 = xor i64 %6426, %6413
  %6428 = lshr i64 %6427, 4
  %6429 = trunc i64 %6428 to i8
  %6430 = and i8 %6429, 1
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6430, i8* %6431, align 1
  %6432 = icmp eq i64 %6413, 0
  %6433 = zext i1 %6432 to i8
  %6434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6433, i8* %6434, align 1
  %6435 = lshr i64 %6413, 63
  %6436 = trunc i64 %6435 to i8
  %6437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6436, i8* %6437, align 1
  %6438 = lshr i64 %6410, 63
  %6439 = xor i64 %6435, %6438
  %6440 = add i64 %6439, %6435
  %6441 = icmp eq i64 %6440, 2
  %6442 = zext i1 %6441 to i8
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6442, i8* %6443, align 1
  store %struct.Memory* %loadMem_400b73, %struct.Memory** %MEMORY
  %loadMem_400b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 33
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %6446 to i64*
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6448 = getelementptr inbounds %struct.GPR, %struct.GPR* %6447, i32 0, i32 15
  %6449 = getelementptr inbounds %struct.Reg, %struct.Reg* %6448, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %6449 to i64*
  %6450 = load i64, i64* %PC.i2
  %6451 = add i64 %6450, 1
  store i64 %6451, i64* %PC.i2
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6453 = load i64, i64* %6452, align 8
  %6454 = add i64 %6453, 8
  %6455 = inttoptr i64 %6453 to i64*
  %6456 = load i64, i64* %6455
  store i64 %6456, i64* %RBP.i3, align 8
  store i64 %6454, i64* %6452, align 8
  store %struct.Memory* %loadMem_400b77, %struct.Memory** %MEMORY
  %loadMem_400b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6458 = getelementptr inbounds %struct.GPR, %struct.GPR* %6457, i32 0, i32 33
  %6459 = getelementptr inbounds %struct.Reg, %struct.Reg* %6458, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %6459 to i64*
  %6460 = load i64, i64* %PC.i1
  %6461 = add i64 %6460, 1
  store i64 %6461, i64* %PC.i1
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6464 = load i64, i64* %6463, align 8
  %6465 = inttoptr i64 %6464 to i64*
  %6466 = load i64, i64* %6465
  store i64 %6466, i64* %6462, align 8
  %6467 = add i64 %6464, 8
  store i64 %6467, i64* %6463, align 8
  store %struct.Memory* %loadMem_400b78, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_400b78
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

define %struct.Memory* @routine_movsd___rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = inttoptr i64 %12 to double*
  %16 = load double, double* %15
  %17 = bitcast i8* %11 to double*
  store double %16, double* %17, align 1
  %18 = getelementptr inbounds i8, i8* %11, i64 8
  %19 = bitcast i8* %18 to double*
  store double 0.000000e+00, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd___rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = bitcast i8* %12 to double*
  %17 = load double, double* %16, align 1
  %18 = getelementptr inbounds i8, i8* %12, i64 8
  %19 = bitcast i8* %18 to i64*
  %20 = load i64, i64* %19, align 1
  %21 = inttoptr i64 %13 to double*
  %22 = load double, double* %21
  %23 = fmul double %17, %22
  %24 = bitcast i8* %11 to double*
  store double %23, double* %24, align 1
  %25 = getelementptr inbounds i8, i8* %11, i64 8
  %26 = bitcast i8* %25 to i64*
  store i64 %20, i64* %26, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x8__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 8
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x20__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 32
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addsd__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM1 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to double*
  %16 = load double, double* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to double*
  %21 = load double, double* %20, align 1
  %22 = fadd double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x10__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 16
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x40__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x18__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 24
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x60__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0xa0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 160
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x8__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x28__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 40
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x48__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 72
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x68__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 104
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x98__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 152
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x10__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 16
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x30__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x50__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 80
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x70__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 112
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x90__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 144
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x18__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x38__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 56
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x58__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 88
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_mulsd_0x78__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %13 = load i64, i64* %RDX
  %14 = add i64 %13, 120
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 5
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to double*
  %18 = load double, double* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = inttoptr i64 %14 to double*
  %23 = load double, double* %22
  %24 = fmul double %18, %23
  %25 = bitcast i8* %11 to double*
  store double %24, double* %25, align 1
  %26 = getelementptr inbounds i8, i8* %11, i64 8
  %27 = bitcast i8* %26 to i64*
  store i64 %21, i64* %27, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x88__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 136
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x20__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 32
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x28__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x30__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x38__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 56
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x80__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 128
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x78__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 120
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x70__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 112
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 104
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x40__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x48__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x50__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x58__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 96
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 88
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 80
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 72
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x60__rdx____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 96
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x68__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x70__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 112
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x78__rdx____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 7
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RDX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 120
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to double*
  %17 = load double, double* %16
  %18 = bitcast i8* %11 to double*
  store double %17, double* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 8
  %20 = bitcast i8* %19 to double*
  store double 0.000000e+00, double* %20, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 64
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 56
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 48
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0__MINUS0x28__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 15
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBP = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RBP
  %12 = sub i64 %11, 40
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to double*
  %17 = load double, double* %16, align 1
  %18 = inttoptr i64 %12 to double*
  store double %17, double* %18
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

define %struct.Memory* @routine_cmpl__0x10__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 16
  %16 = icmp ult i32 %14, 16
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
  %25 = xor i32 %14, 16
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

define %struct.Memory* @routine_jae_.L_400b73(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_MINUS0xa0__rbp__rcx_8____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %15, -160
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to double*
  %23 = load double, double* %22
  %24 = bitcast i8* %14 to double*
  store double %23, double* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 8
  %26 = bitcast i8* %25 to double*
  store double 0.000000e+00, double* %26, align 1
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

define %struct.Memory* @routine_movl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd__xmm0____rcx__rdx_8_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %RDX
  %16 = mul i64 %15, 8
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM0 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to double*
  %22 = load double, double* %21, align 1
  %23 = inttoptr i64 %17 to double*
  store double %22, double* %23
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

define %struct.Memory* @routine_jmpq_.L_400b3f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
