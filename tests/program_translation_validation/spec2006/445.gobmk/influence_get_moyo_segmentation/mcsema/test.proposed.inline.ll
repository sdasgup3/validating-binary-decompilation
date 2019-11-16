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

declare extern_weak x86_64_sysvcc i64 @pthread_join(i64, i64)

declare extern_weak x86_64_sysvcc i64 @pthread_create(i64, i64, i64, i64)

declare %struct.Memory* @__remill_function_call(%struct.State* dereferenceable(3376), i64, %struct.Memory*)

declare %struct.Memory* @ext_sqrt(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_atan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_cos(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_tan(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

declare %struct.Memory* @ext_sin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias)

; Function Attrs: alwaysinline
define %struct.Memory* @influence_get_moyo_segmentation(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_42cfd0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_42cfd0, %struct.Memory** %MEMORY
  %loadMem_42cfd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i331
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i331
  store i64 %26, i64* %RBP.i332, align 8
  store %struct.Memory* %loadMem_42cfd1, %struct.Memory** %MEMORY
  %loadMem_42cfd4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 11
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %34 to i64*
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %36 = getelementptr inbounds %struct.GPR, %struct.GPR* %35, i32 0, i32 15
  %37 = getelementptr inbounds %struct.Reg, %struct.Reg* %36, i32 0, i32 0
  %RBP.i330 = bitcast %union.anon* %37 to i64*
  %38 = load i64, i64* %RBP.i330
  %39 = sub i64 %38, 8
  %40 = load i64, i64* %RDI.i
  %41 = load i64, i64* %PC.i329
  %42 = add i64 %41, 4
  store i64 %42, i64* %PC.i329
  %43 = inttoptr i64 %39 to i64*
  store i64 %40, i64* %43
  store %struct.Memory* %loadMem_42cfd4, %struct.Memory** %MEMORY
  %loadMem_42cfd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %45 = getelementptr inbounds %struct.GPR, %struct.GPR* %44, i32 0, i32 33
  %46 = getelementptr inbounds %struct.Reg, %struct.Reg* %45, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %46 to i64*
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %48 = getelementptr inbounds %struct.GPR, %struct.GPR* %47, i32 0, i32 9
  %49 = getelementptr inbounds %struct.Reg, %struct.Reg* %48, i32 0, i32 0
  %RSI.i327 = bitcast %union.anon* %49 to i64*
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 15
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %52 to i64*
  %53 = load i64, i64* %RBP.i328
  %54 = sub i64 %53, 16
  %55 = load i64, i64* %RSI.i327
  %56 = load i64, i64* %PC.i326
  %57 = add i64 %56, 4
  store i64 %57, i64* %PC.i326
  %58 = inttoptr i64 %54 to i64*
  store i64 %55, i64* %58
  store %struct.Memory* %loadMem_42cfd8, %struct.Memory** %MEMORY
  %loadMem_42cfdc = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 15
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %64 to i64*
  %65 = load i64, i64* %RBP.i325
  %66 = sub i64 %65, 24
  %67 = load i64, i64* %PC.i324
  %68 = add i64 %67, 7
  store i64 %68, i64* %PC.i324
  %69 = inttoptr i64 %66 to i32*
  store i32 1084, i32* %69
  store %struct.Memory* %loadMem_42cfdc, %struct.Memory** %MEMORY
  %loadMem_42cfe3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 33
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i323
  %77 = sub i64 %76, 28
  %78 = load i64, i64* %PC.i322
  %79 = add i64 %78, 7
  store i64 %79, i64* %PC.i322
  %80 = inttoptr i64 %77 to i32*
  store i32 0, i32* %80
  store %struct.Memory* %loadMem_42cfe3, %struct.Memory** %MEMORY
  %loadMem_42cfea = load %struct.Memory*, %struct.Memory** %MEMORY
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 33
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %83 to i64*
  %84 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %85 = getelementptr inbounds %struct.GPR, %struct.GPR* %84, i32 0, i32 15
  %86 = getelementptr inbounds %struct.Reg, %struct.Reg* %85, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %86 to i64*
  %87 = load i64, i64* %RBP.i321
  %88 = sub i64 %87, 20
  %89 = load i64, i64* %PC.i320
  %90 = add i64 %89, 7
  store i64 %90, i64* %PC.i320
  %91 = inttoptr i64 %88 to i32*
  store i32 21, i32* %91
  store %struct.Memory* %loadMem_42cfea, %struct.Memory** %MEMORY
  br label %block_.L_42cff1

block_.L_42cff1:                                  ; preds = %block_.L_42d0a9, %entry
  %loadMem_42cff1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %92 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %93 = getelementptr inbounds %struct.GPR, %struct.GPR* %92, i32 0, i32 33
  %94 = getelementptr inbounds %struct.Reg, %struct.Reg* %93, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %94 to i64*
  %95 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %96 = getelementptr inbounds %struct.GPR, %struct.GPR* %95, i32 0, i32 15
  %97 = getelementptr inbounds %struct.Reg, %struct.Reg* %96, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %97 to i64*
  %98 = load i64, i64* %RBP.i319
  %99 = sub i64 %98, 20
  %100 = load i64, i64* %PC.i318
  %101 = add i64 %100, 7
  store i64 %101, i64* %PC.i318
  %102 = inttoptr i64 %99 to i32*
  %103 = load i32, i32* %102
  %104 = sub i32 %103, 400
  %105 = icmp ult i32 %103, 400
  %106 = zext i1 %105 to i8
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %106, i8* %107, align 1
  %108 = and i32 %104, 255
  %109 = call i32 @llvm.ctpop.i32(i32 %108)
  %110 = trunc i32 %109 to i8
  %111 = and i8 %110, 1
  %112 = xor i8 %111, 1
  %113 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %112, i8* %113, align 1
  %114 = xor i32 %103, 400
  %115 = xor i32 %114, %104
  %116 = lshr i32 %115, 4
  %117 = trunc i32 %116 to i8
  %118 = and i8 %117, 1
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %118, i8* %119, align 1
  %120 = icmp eq i32 %104, 0
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %121, i8* %122, align 1
  %123 = lshr i32 %104, 31
  %124 = trunc i32 %123 to i8
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %124, i8* %125, align 1
  %126 = lshr i32 %103, 31
  %127 = xor i32 %123, %126
  %128 = add i32 %127, %126
  %129 = icmp eq i32 %128, 2
  %130 = zext i1 %129 to i8
  %131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %130, i8* %131, align 1
  store %struct.Memory* %loadMem_42cff1, %struct.Memory** %MEMORY
  %loadMem_42cff8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %133 = getelementptr inbounds %struct.GPR, %struct.GPR* %132, i32 0, i32 33
  %134 = getelementptr inbounds %struct.Reg, %struct.Reg* %133, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %134 to i64*
  %135 = load i64, i64* %PC.i317
  %136 = add i64 %135, 191
  %137 = load i64, i64* %PC.i317
  %138 = add i64 %137, 6
  %139 = load i64, i64* %PC.i317
  %140 = add i64 %139, 6
  store i64 %140, i64* %PC.i317
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %142 = load i8, i8* %141, align 1
  %143 = icmp ne i8 %142, 0
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %145 = load i8, i8* %144, align 1
  %146 = icmp ne i8 %145, 0
  %147 = xor i1 %143, %146
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i8
  store i8 %149, i8* %BRANCH_TAKEN, align 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %151 = select i1 %147, i64 %138, i64 %136
  store i64 %151, i64* %150, align 8
  store %struct.Memory* %loadMem_42cff8, %struct.Memory** %MEMORY
  %loadBr_42cff8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42cff8 = icmp eq i8 %loadBr_42cff8, 1
  br i1 %cmpBr_42cff8, label %block_.L_42d0b7, label %block_42cffe

block_42cffe:                                     ; preds = %block_.L_42cff1
  %loadMem_42cffe = load %struct.Memory*, %struct.Memory** %MEMORY
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 33
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %157 to i64*
  %158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %159 = getelementptr inbounds %struct.GPR, %struct.GPR* %158, i32 0, i32 15
  %160 = getelementptr inbounds %struct.Reg, %struct.Reg* %159, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %160 to i64*
  %161 = load i64, i64* %RBP.i316
  %162 = sub i64 %161, 20
  %163 = load i64, i64* %PC.i314
  %164 = add i64 %163, 4
  store i64 %164, i64* %PC.i314
  %165 = inttoptr i64 %162 to i32*
  %166 = load i32, i32* %165
  %167 = sext i32 %166 to i64
  store i64 %167, i64* %RAX.i315, align 8
  store %struct.Memory* %loadMem_42cffe, %struct.Memory** %MEMORY
  %loadMem_42d002 = load %struct.Memory*, %struct.Memory** %MEMORY
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 33
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %170 to i64*
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 5
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %176 to i64*
  %177 = load i64, i64* %RAX.i312
  %178 = add i64 %177, 12099168
  %179 = load i64, i64* %PC.i311
  %180 = add i64 %179, 8
  store i64 %180, i64* %PC.i311
  %181 = inttoptr i64 %178 to i8*
  %182 = load i8, i8* %181
  %183 = zext i8 %182 to i64
  store i64 %183, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_42d002, %struct.Memory** %MEMORY
  %loadMem_42d00a = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 5
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %ECX.i310 = bitcast %union.anon* %189 to i32*
  %190 = load i32, i32* %ECX.i310
  %191 = zext i32 %190 to i64
  %192 = load i64, i64* %PC.i309
  %193 = add i64 %192, 3
  store i64 %193, i64* %PC.i309
  %194 = sub i32 %190, 3
  %195 = icmp ult i32 %190, 3
  %196 = zext i1 %195 to i8
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %196, i8* %197, align 1
  %198 = and i32 %194, 255
  %199 = call i32 @llvm.ctpop.i32(i32 %198)
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = xor i8 %201, 1
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %202, i8* %203, align 1
  %204 = xor i64 3, %191
  %205 = trunc i64 %204 to i32
  %206 = xor i32 %205, %194
  %207 = lshr i32 %206, 4
  %208 = trunc i32 %207 to i8
  %209 = and i8 %208, 1
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %209, i8* %210, align 1
  %211 = icmp eq i32 %194, 0
  %212 = zext i1 %211 to i8
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %212, i8* %213, align 1
  %214 = lshr i32 %194, 31
  %215 = trunc i32 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %215, i8* %216, align 1
  %217 = lshr i32 %190, 31
  %218 = xor i32 %214, %217
  %219 = add i32 %218, %217
  %220 = icmp eq i32 %219, 2
  %221 = zext i1 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %221, i8* %222, align 1
  store %struct.Memory* %loadMem_42d00a, %struct.Memory** %MEMORY
  %loadMem_42d00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 33
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %PC.i308
  %227 = add i64 %226, 151
  %228 = load i64, i64* %PC.i308
  %229 = add i64 %228, 6
  %230 = load i64, i64* %PC.i308
  %231 = add i64 %230, 6
  store i64 %231, i64* %PC.i308
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %233 = load i8, i8* %232, align 1
  store i8 %233, i8* %BRANCH_TAKEN, align 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %235 = icmp ne i8 %233, 0
  %236 = select i1 %235, i64 %227, i64 %229
  store i64 %236, i64* %234, align 8
  store %struct.Memory* %loadMem_42d00d, %struct.Memory** %MEMORY
  %loadBr_42d00d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d00d = icmp eq i8 %loadBr_42d00d, 1
  br i1 %cmpBr_42d00d, label %block_.L_42d0a4, label %block_42d013

block_42d013:                                     ; preds = %block_42cffe
  %loadMem_42d013 = load %struct.Memory*, %struct.Memory** %MEMORY
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 33
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %239 to i64*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 1
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 15
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %245 to i64*
  %246 = load i64, i64* %RBP.i307
  %247 = sub i64 %246, 8
  %248 = load i64, i64* %PC.i305
  %249 = add i64 %248, 4
  store i64 %249, i64* %PC.i305
  %250 = inttoptr i64 %247 to i64*
  %251 = load i64, i64* %250
  store i64 %251, i64* %RAX.i306, align 8
  store %struct.Memory* %loadMem_42d013, %struct.Memory** %MEMORY
  %loadMem_42d017 = load %struct.Memory*, %struct.Memory** %MEMORY
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 33
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %257 to i64*
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 15
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %260 to i64*
  %261 = load i64, i64* %RBP.i304
  %262 = sub i64 %261, 20
  %263 = load i64, i64* %PC.i302
  %264 = add i64 %263, 4
  store i64 %264, i64* %PC.i302
  %265 = inttoptr i64 %262 to i32*
  %266 = load i32, i32* %265
  %267 = sext i32 %266 to i64
  store i64 %267, i64* %RCX.i303, align 8
  store %struct.Memory* %loadMem_42d017, %struct.Memory** %MEMORY
  %loadMem_42d01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %270 to i64*
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %272 = getelementptr inbounds %struct.GPR, %struct.GPR* %271, i32 0, i32 1
  %273 = getelementptr inbounds %struct.Reg, %struct.Reg* %272, i32 0, i32 0
  %RAX.i300 = bitcast %union.anon* %273 to i64*
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %275 = getelementptr inbounds %struct.GPR, %struct.GPR* %274, i32 0, i32 5
  %276 = getelementptr inbounds %struct.Reg, %struct.Reg* %275, i32 0, i32 0
  %RCX.i301 = bitcast %union.anon* %276 to i64*
  %277 = load i64, i64* %RAX.i300
  %278 = load i64, i64* %RCX.i301
  %279 = mul i64 %278, 4
  %280 = add i64 %277, 14800
  %281 = add i64 %280, %279
  %282 = load i64, i64* %PC.i299
  %283 = add i64 %282, 8
  store i64 %283, i64* %PC.i299
  %284 = inttoptr i64 %281 to i32*
  %285 = load i32, i32* %284
  %286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %286, align 1
  %287 = and i32 %285, 255
  %288 = call i32 @llvm.ctpop.i32(i32 %287)
  %289 = trunc i32 %288 to i8
  %290 = and i8 %289, 1
  %291 = xor i8 %290, 1
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %291, i8* %292, align 1
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %293, align 1
  %294 = icmp eq i32 %285, 0
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %295, i8* %296, align 1
  %297 = lshr i32 %285, 31
  %298 = trunc i32 %297 to i8
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %298, i8* %299, align 1
  %300 = lshr i32 %285, 31
  %301 = xor i32 %297, %300
  %302 = add i32 %301, %300
  %303 = icmp eq i32 %302, 2
  %304 = zext i1 %303 to i8
  %305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %304, i8* %305, align 1
  store %struct.Memory* %loadMem_42d01b, %struct.Memory** %MEMORY
  %loadMem_42d023 = load %struct.Memory*, %struct.Memory** %MEMORY
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %307 = getelementptr inbounds %struct.GPR, %struct.GPR* %306, i32 0, i32 33
  %308 = getelementptr inbounds %struct.Reg, %struct.Reg* %307, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %308 to i64*
  %309 = load i64, i64* %PC.i298
  %310 = add i64 %309, 124
  %311 = load i64, i64* %PC.i298
  %312 = add i64 %311, 6
  %313 = load i64, i64* %PC.i298
  %314 = add i64 %313, 6
  store i64 %314, i64* %PC.i298
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %316 = load i8, i8* %315, align 1
  store i8 %316, i8* %BRANCH_TAKEN, align 1
  %317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %318 = icmp ne i8 %316, 0
  %319 = select i1 %318, i64 %310, i64 %312
  store i64 %319, i64* %317, align 8
  store %struct.Memory* %loadMem_42d023, %struct.Memory** %MEMORY
  %loadBr_42d023 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d023 = icmp eq i8 %loadBr_42d023, 1
  br i1 %cmpBr_42d023, label %block_.L_42d09f, label %block_42d029

block_42d029:                                     ; preds = %block_42d013
  %loadMem_42d029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %321 = getelementptr inbounds %struct.GPR, %struct.GPR* %320, i32 0, i32 33
  %322 = getelementptr inbounds %struct.Reg, %struct.Reg* %321, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %322 to i64*
  %323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %324 = getelementptr inbounds %struct.GPR, %struct.GPR* %323, i32 0, i32 1
  %325 = getelementptr inbounds %struct.Reg, %struct.Reg* %324, i32 0, i32 0
  %RAX.i296 = bitcast %union.anon* %325 to i64*
  %326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %327 = getelementptr inbounds %struct.GPR, %struct.GPR* %326, i32 0, i32 15
  %328 = getelementptr inbounds %struct.Reg, %struct.Reg* %327, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %328 to i64*
  %329 = load i64, i64* %RBP.i297
  %330 = sub i64 %329, 24
  %331 = load i64, i64* %PC.i295
  %332 = add i64 %331, 3
  store i64 %332, i64* %PC.i295
  %333 = inttoptr i64 %330 to i32*
  %334 = load i32, i32* %333
  %335 = zext i32 %334 to i64
  store i64 %335, i64* %RAX.i296, align 8
  store %struct.Memory* %loadMem_42d029, %struct.Memory** %MEMORY
  %loadMem_42d02c = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 5
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %341 to i64*
  %342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %343 = getelementptr inbounds %struct.GPR, %struct.GPR* %342, i32 0, i32 15
  %344 = getelementptr inbounds %struct.Reg, %struct.Reg* %343, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %344 to i64*
  %345 = load i64, i64* %RBP.i294
  %346 = sub i64 %345, 8
  %347 = load i64, i64* %PC.i292
  %348 = add i64 %347, 4
  store i64 %348, i64* %PC.i292
  %349 = inttoptr i64 %346 to i64*
  %350 = load i64, i64* %349
  store i64 %350, i64* %RCX.i293, align 8
  store %struct.Memory* %loadMem_42d02c, %struct.Memory** %MEMORY
  %loadMem_42d030 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 7
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RDX.i290 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 15
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RBP.i291
  %361 = sub i64 %360, 20
  %362 = load i64, i64* %PC.i289
  %363 = add i64 %362, 4
  store i64 %363, i64* %PC.i289
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364
  %366 = sext i32 %365 to i64
  store i64 %366, i64* %RDX.i290, align 8
  store %struct.Memory* %loadMem_42d030, %struct.Memory** %MEMORY
  %loadMem_42d034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %EAX.i286 = bitcast %union.anon* %372 to i32*
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 5
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 7
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RDX.i288 = bitcast %union.anon* %378 to i64*
  %379 = load i32, i32* %EAX.i286
  %380 = zext i32 %379 to i64
  %381 = load i64, i64* %RCX.i287
  %382 = load i64, i64* %RDX.i288
  %383 = mul i64 %382, 4
  %384 = add i64 %381, 14800
  %385 = add i64 %384, %383
  %386 = load i64, i64* %PC.i285
  %387 = add i64 %386, 7
  store i64 %387, i64* %PC.i285
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388
  %390 = sub i32 %379, %389
  %391 = icmp ult i32 %379, %389
  %392 = zext i1 %391 to i8
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %392, i8* %393, align 1
  %394 = and i32 %390, 255
  %395 = call i32 @llvm.ctpop.i32(i32 %394)
  %396 = trunc i32 %395 to i8
  %397 = and i8 %396, 1
  %398 = xor i8 %397, 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %398, i8* %399, align 1
  %400 = xor i32 %389, %379
  %401 = xor i32 %400, %390
  %402 = lshr i32 %401, 4
  %403 = trunc i32 %402 to i8
  %404 = and i8 %403, 1
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %404, i8* %405, align 1
  %406 = icmp eq i32 %390, 0
  %407 = zext i1 %406 to i8
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %407, i8* %408, align 1
  %409 = lshr i32 %390, 31
  %410 = trunc i32 %409 to i8
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %410, i8* %411, align 1
  %412 = lshr i32 %379, 31
  %413 = lshr i32 %389, 31
  %414 = xor i32 %413, %412
  %415 = xor i32 %409, %412
  %416 = add i32 %415, %414
  %417 = icmp eq i32 %416, 2
  %418 = zext i1 %417 to i8
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %418, i8* %419, align 1
  store %struct.Memory* %loadMem_42d034, %struct.Memory** %MEMORY
  %loadMem_42d03b = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %422 to i64*
  %423 = load i64, i64* %PC.i284
  %424 = add i64 %423, 17
  %425 = load i64, i64* %PC.i284
  %426 = add i64 %425, 6
  %427 = load i64, i64* %PC.i284
  %428 = add i64 %427, 6
  store i64 %428, i64* %PC.i284
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %430 = load i8, i8* %429, align 1
  %431 = icmp ne i8 %430, 0
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %433 = load i8, i8* %432, align 1
  %434 = icmp ne i8 %433, 0
  %435 = xor i1 %431, %434
  %436 = xor i1 %435, true
  %437 = zext i1 %436 to i8
  store i8 %437, i8* %BRANCH_TAKEN, align 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %439 = select i1 %435, i64 %426, i64 %424
  store i64 %439, i64* %438, align 8
  store %struct.Memory* %loadMem_42d03b, %struct.Memory** %MEMORY
  %loadBr_42d03b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d03b = icmp eq i8 %loadBr_42d03b, 1
  br i1 %cmpBr_42d03b, label %block_.L_42d04c, label %block_42d041

block_42d041:                                     ; preds = %block_42d029
  %loadMem_42d041 = load %struct.Memory*, %struct.Memory** %MEMORY
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 33
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %442 to i64*
  %443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %444 = getelementptr inbounds %struct.GPR, %struct.GPR* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.Reg, %struct.Reg* %444, i32 0, i32 0
  %RAX.i282 = bitcast %union.anon* %445 to i64*
  %446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %447 = getelementptr inbounds %struct.GPR, %struct.GPR* %446, i32 0, i32 15
  %448 = getelementptr inbounds %struct.Reg, %struct.Reg* %447, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %448 to i64*
  %449 = load i64, i64* %RBP.i283
  %450 = sub i64 %449, 24
  %451 = load i64, i64* %PC.i281
  %452 = add i64 %451, 3
  store i64 %452, i64* %PC.i281
  %453 = inttoptr i64 %450 to i32*
  %454 = load i32, i32* %453
  %455 = zext i32 %454 to i64
  store i64 %455, i64* %RAX.i282, align 8
  store %struct.Memory* %loadMem_42d041, %struct.Memory** %MEMORY
  %loadMem_42d044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %457 = getelementptr inbounds %struct.GPR, %struct.GPR* %456, i32 0, i32 33
  %458 = getelementptr inbounds %struct.Reg, %struct.Reg* %457, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %458 to i64*
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %460 = getelementptr inbounds %struct.GPR, %struct.GPR* %459, i32 0, i32 1
  %461 = getelementptr inbounds %struct.Reg, %struct.Reg* %460, i32 0, i32 0
  %EAX.i279 = bitcast %union.anon* %461 to i32*
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %463 = getelementptr inbounds %struct.GPR, %struct.GPR* %462, i32 0, i32 15
  %464 = getelementptr inbounds %struct.Reg, %struct.Reg* %463, i32 0, i32 0
  %RBP.i280 = bitcast %union.anon* %464 to i64*
  %465 = load i64, i64* %RBP.i280
  %466 = sub i64 %465, 36
  %467 = load i32, i32* %EAX.i279
  %468 = zext i32 %467 to i64
  %469 = load i64, i64* %PC.i278
  %470 = add i64 %469, 3
  store i64 %470, i64* %PC.i278
  %471 = inttoptr i64 %466 to i32*
  store i32 %467, i32* %471
  store %struct.Memory* %loadMem_42d044, %struct.Memory** %MEMORY
  %loadMem_42d047 = load %struct.Memory*, %struct.Memory** %MEMORY
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %473 = getelementptr inbounds %struct.GPR, %struct.GPR* %472, i32 0, i32 33
  %474 = getelementptr inbounds %struct.Reg, %struct.Reg* %473, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %474 to i64*
  %475 = load i64, i64* %PC.i277
  %476 = add i64 %475, 23
  %477 = load i64, i64* %PC.i277
  %478 = add i64 %477, 5
  store i64 %478, i64* %PC.i277
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %476, i64* %479, align 8
  store %struct.Memory* %loadMem_42d047, %struct.Memory** %MEMORY
  br label %block_.L_42d05e

block_.L_42d04c:                                  ; preds = %block_42d029
  %loadMem_42d04c = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %485 to i64*
  %486 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %487 = getelementptr inbounds %struct.GPR, %struct.GPR* %486, i32 0, i32 15
  %488 = getelementptr inbounds %struct.Reg, %struct.Reg* %487, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %488 to i64*
  %489 = load i64, i64* %RBP.i276
  %490 = sub i64 %489, 8
  %491 = load i64, i64* %PC.i274
  %492 = add i64 %491, 4
  store i64 %492, i64* %PC.i274
  %493 = inttoptr i64 %490 to i64*
  %494 = load i64, i64* %493
  store i64 %494, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_42d04c, %struct.Memory** %MEMORY
  %loadMem_42d050 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 5
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 15
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %503 to i64*
  %504 = load i64, i64* %RBP.i273
  %505 = sub i64 %504, 20
  %506 = load i64, i64* %PC.i271
  %507 = add i64 %506, 4
  store i64 %507, i64* %PC.i271
  %508 = inttoptr i64 %505 to i32*
  %509 = load i32, i32* %508
  %510 = sext i32 %509 to i64
  store i64 %510, i64* %RCX.i272, align 8
  store %struct.Memory* %loadMem_42d050, %struct.Memory** %MEMORY
  %loadMem_42d054 = load %struct.Memory*, %struct.Memory** %MEMORY
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 33
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %513 to i64*
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 1
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %RAX.i268 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 5
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RCX.i269 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 7
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RDX.i270 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RAX.i268
  %524 = load i64, i64* %RCX.i269
  %525 = mul i64 %524, 4
  %526 = add i64 %523, 14800
  %527 = add i64 %526, %525
  %528 = load i64, i64* %PC.i267
  %529 = add i64 %528, 7
  store i64 %529, i64* %PC.i267
  %530 = inttoptr i64 %527 to i32*
  %531 = load i32, i32* %530
  %532 = zext i32 %531 to i64
  store i64 %532, i64* %RDX.i270, align 8
  store %struct.Memory* %loadMem_42d054, %struct.Memory** %MEMORY
  %loadMem_42d05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %534 = getelementptr inbounds %struct.GPR, %struct.GPR* %533, i32 0, i32 33
  %535 = getelementptr inbounds %struct.Reg, %struct.Reg* %534, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %535 to i64*
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 7
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %EDX.i265 = bitcast %union.anon* %538 to i32*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 15
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %RBP.i266
  %543 = sub i64 %542, 36
  %544 = load i32, i32* %EDX.i265
  %545 = zext i32 %544 to i64
  %546 = load i64, i64* %PC.i264
  %547 = add i64 %546, 3
  store i64 %547, i64* %PC.i264
  %548 = inttoptr i64 %543 to i32*
  store i32 %544, i32* %548
  store %struct.Memory* %loadMem_42d05b, %struct.Memory** %MEMORY
  br label %block_.L_42d05e

block_.L_42d05e:                                  ; preds = %block_.L_42d04c, %block_42d041
  %loadMem_42d05e = load %struct.Memory*, %struct.Memory** %MEMORY
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %550 = getelementptr inbounds %struct.GPR, %struct.GPR* %549, i32 0, i32 33
  %551 = getelementptr inbounds %struct.Reg, %struct.Reg* %550, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %551 to i64*
  %552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %553 = getelementptr inbounds %struct.GPR, %struct.GPR* %552, i32 0, i32 1
  %554 = getelementptr inbounds %struct.Reg, %struct.Reg* %553, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %554 to i64*
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %556 = getelementptr inbounds %struct.GPR, %struct.GPR* %555, i32 0, i32 15
  %557 = getelementptr inbounds %struct.Reg, %struct.Reg* %556, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %557 to i64*
  %558 = load i64, i64* %RBP.i263
  %559 = sub i64 %558, 36
  %560 = load i64, i64* %PC.i261
  %561 = add i64 %560, 3
  store i64 %561, i64* %PC.i261
  %562 = inttoptr i64 %559 to i32*
  %563 = load i32, i32* %562
  %564 = zext i32 %563 to i64
  store i64 %564, i64* %RAX.i262, align 8
  store %struct.Memory* %loadMem_42d05e, %struct.Memory** %MEMORY
  %loadMem_42d061 = load %struct.Memory*, %struct.Memory** %MEMORY
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 33
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %567 to i64*
  %568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %569 = getelementptr inbounds %struct.GPR, %struct.GPR* %568, i32 0, i32 1
  %570 = getelementptr inbounds %struct.Reg, %struct.Reg* %569, i32 0, i32 0
  %EAX.i259 = bitcast %union.anon* %570 to i32*
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 15
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %573 to i64*
  %574 = load i64, i64* %RBP.i260
  %575 = sub i64 %574, 24
  %576 = load i32, i32* %EAX.i259
  %577 = zext i32 %576 to i64
  %578 = load i64, i64* %PC.i258
  %579 = add i64 %578, 3
  store i64 %579, i64* %PC.i258
  %580 = inttoptr i64 %575 to i32*
  store i32 %576, i32* %580
  store %struct.Memory* %loadMem_42d061, %struct.Memory** %MEMORY
  %loadMem_42d064 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 1
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 15
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RBP.i257
  %591 = sub i64 %590, 28
  %592 = load i64, i64* %PC.i255
  %593 = add i64 %592, 3
  store i64 %593, i64* %PC.i255
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RAX.i256, align 8
  store %struct.Memory* %loadMem_42d064, %struct.Memory** %MEMORY
  %loadMem_42d067 = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 5
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RBP.i254
  %607 = sub i64 %606, 8
  %608 = load i64, i64* %PC.i252
  %609 = add i64 %608, 4
  store i64 %609, i64* %PC.i252
  %610 = inttoptr i64 %607 to i64*
  %611 = load i64, i64* %610
  store i64 %611, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_42d067, %struct.Memory** %MEMORY
  %loadMem_42d06b = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 7
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %RDX.i250 = bitcast %union.anon* %617 to i64*
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 15
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %RBP.i251 = bitcast %union.anon* %620 to i64*
  %621 = load i64, i64* %RBP.i251
  %622 = sub i64 %621, 20
  %623 = load i64, i64* %PC.i249
  %624 = add i64 %623, 4
  store i64 %624, i64* %PC.i249
  %625 = inttoptr i64 %622 to i32*
  %626 = load i32, i32* %625
  %627 = sext i32 %626 to i64
  store i64 %627, i64* %RDX.i250, align 8
  store %struct.Memory* %loadMem_42d06b, %struct.Memory** %MEMORY
  %loadMem_42d06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %630 to i64*
  %631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %632 = getelementptr inbounds %struct.GPR, %struct.GPR* %631, i32 0, i32 1
  %633 = getelementptr inbounds %struct.Reg, %struct.Reg* %632, i32 0, i32 0
  %EAX.i246 = bitcast %union.anon* %633 to i32*
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 5
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %RCX.i247 = bitcast %union.anon* %636 to i64*
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 7
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %RDX.i248 = bitcast %union.anon* %639 to i64*
  %640 = load i32, i32* %EAX.i246
  %641 = zext i32 %640 to i64
  %642 = load i64, i64* %RCX.i247
  %643 = load i64, i64* %RDX.i248
  %644 = mul i64 %643, 4
  %645 = add i64 %642, 14800
  %646 = add i64 %645, %644
  %647 = load i64, i64* %PC.i245
  %648 = add i64 %647, 7
  store i64 %648, i64* %PC.i245
  %649 = inttoptr i64 %646 to i32*
  %650 = load i32, i32* %649
  %651 = sub i32 %640, %650
  %652 = icmp ult i32 %640, %650
  %653 = zext i1 %652 to i8
  %654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %653, i8* %654, align 1
  %655 = and i32 %651, 255
  %656 = call i32 @llvm.ctpop.i32(i32 %655)
  %657 = trunc i32 %656 to i8
  %658 = and i8 %657, 1
  %659 = xor i8 %658, 1
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %659, i8* %660, align 1
  %661 = xor i32 %650, %640
  %662 = xor i32 %661, %651
  %663 = lshr i32 %662, 4
  %664 = trunc i32 %663 to i8
  %665 = and i8 %664, 1
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %665, i8* %666, align 1
  %667 = icmp eq i32 %651, 0
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %668, i8* %669, align 1
  %670 = lshr i32 %651, 31
  %671 = trunc i32 %670 to i8
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %671, i8* %672, align 1
  %673 = lshr i32 %640, 31
  %674 = lshr i32 %650, 31
  %675 = xor i32 %674, %673
  %676 = xor i32 %670, %673
  %677 = add i32 %676, %675
  %678 = icmp eq i32 %677, 2
  %679 = zext i1 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %679, i8* %680, align 1
  store %struct.Memory* %loadMem_42d06f, %struct.Memory** %MEMORY
  %loadMem_42d076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %683 to i64*
  %684 = load i64, i64* %PC.i244
  %685 = add i64 %684, 29
  %686 = load i64, i64* %PC.i244
  %687 = add i64 %686, 6
  %688 = load i64, i64* %PC.i244
  %689 = add i64 %688, 6
  store i64 %689, i64* %PC.i244
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %691 = load i8, i8* %690, align 1
  %692 = icmp ne i8 %691, 0
  %693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %694 = load i8, i8* %693, align 1
  %695 = icmp ne i8 %694, 0
  %696 = xor i1 %692, %695
  %697 = xor i1 %696, true
  %698 = zext i1 %697 to i8
  store i8 %698, i8* %BRANCH_TAKEN, align 1
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %700 = select i1 %696, i64 %687, i64 %685
  store i64 %700, i64* %699, align 8
  store %struct.Memory* %loadMem_42d076, %struct.Memory** %MEMORY
  %loadBr_42d076 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d076 = icmp eq i8 %loadBr_42d076, 1
  br i1 %cmpBr_42d076, label %block_.L_42d093, label %block_42d07c

block_42d07c:                                     ; preds = %block_.L_42d05e
  %loadMem_42d07c = load %struct.Memory*, %struct.Memory** %MEMORY
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 33
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %703 to i64*
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 1
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 15
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %709 to i64*
  %710 = load i64, i64* %RBP.i243
  %711 = sub i64 %710, 8
  %712 = load i64, i64* %PC.i241
  %713 = add i64 %712, 4
  store i64 %713, i64* %PC.i241
  %714 = inttoptr i64 %711 to i64*
  %715 = load i64, i64* %714
  store i64 %715, i64* %RAX.i242, align 8
  store %struct.Memory* %loadMem_42d07c, %struct.Memory** %MEMORY
  %loadMem_42d080 = load %struct.Memory*, %struct.Memory** %MEMORY
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 33
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %718 to i64*
  %719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %720 = getelementptr inbounds %struct.GPR, %struct.GPR* %719, i32 0, i32 5
  %721 = getelementptr inbounds %struct.Reg, %struct.Reg* %720, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %721 to i64*
  %722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %723 = getelementptr inbounds %struct.GPR, %struct.GPR* %722, i32 0, i32 15
  %724 = getelementptr inbounds %struct.Reg, %struct.Reg* %723, i32 0, i32 0
  %RBP.i240 = bitcast %union.anon* %724 to i64*
  %725 = load i64, i64* %RBP.i240
  %726 = sub i64 %725, 20
  %727 = load i64, i64* %PC.i238
  %728 = add i64 %727, 4
  store i64 %728, i64* %PC.i238
  %729 = inttoptr i64 %726 to i32*
  %730 = load i32, i32* %729
  %731 = sext i32 %730 to i64
  store i64 %731, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_42d080, %struct.Memory** %MEMORY
  %loadMem_42d084 = load %struct.Memory*, %struct.Memory** %MEMORY
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 33
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %734 to i64*
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %736 = getelementptr inbounds %struct.GPR, %struct.GPR* %735, i32 0, i32 1
  %737 = getelementptr inbounds %struct.Reg, %struct.Reg* %736, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %737 to i64*
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 5
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 7
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RDX.i237 = bitcast %union.anon* %743 to i64*
  %744 = load i64, i64* %RAX.i235
  %745 = load i64, i64* %RCX.i236
  %746 = mul i64 %745, 4
  %747 = add i64 %744, 14800
  %748 = add i64 %747, %746
  %749 = load i64, i64* %PC.i234
  %750 = add i64 %749, 7
  store i64 %750, i64* %PC.i234
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RDX.i237, align 8
  store %struct.Memory* %loadMem_42d084, %struct.Memory** %MEMORY
  %loadMem_42d08b = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 7
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %759 to i32*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %762 to i64*
  %763 = load i64, i64* %RBP.i233
  %764 = sub i64 %763, 40
  %765 = load i32, i32* %EDX.i232
  %766 = zext i32 %765 to i64
  %767 = load i64, i64* %PC.i231
  %768 = add i64 %767, 3
  store i64 %768, i64* %PC.i231
  %769 = inttoptr i64 %764 to i32*
  store i32 %765, i32* %769
  store %struct.Memory* %loadMem_42d08b, %struct.Memory** %MEMORY
  %loadMem_42d08e = load %struct.Memory*, %struct.Memory** %MEMORY
  %770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %771 = getelementptr inbounds %struct.GPR, %struct.GPR* %770, i32 0, i32 33
  %772 = getelementptr inbounds %struct.Reg, %struct.Reg* %771, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %772 to i64*
  %773 = load i64, i64* %PC.i230
  %774 = add i64 %773, 11
  %775 = load i64, i64* %PC.i230
  %776 = add i64 %775, 5
  store i64 %776, i64* %PC.i230
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %774, i64* %777, align 8
  store %struct.Memory* %loadMem_42d08e, %struct.Memory** %MEMORY
  br label %block_.L_42d099

block_.L_42d093:                                  ; preds = %block_.L_42d05e
  %loadMem_42d093 = load %struct.Memory*, %struct.Memory** %MEMORY
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 33
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %780 to i64*
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 15
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %786 to i64*
  %787 = load i64, i64* %RBP.i229
  %788 = sub i64 %787, 28
  %789 = load i64, i64* %PC.i227
  %790 = add i64 %789, 3
  store i64 %790, i64* %PC.i227
  %791 = inttoptr i64 %788 to i32*
  %792 = load i32, i32* %791
  %793 = zext i32 %792 to i64
  store i64 %793, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_42d093, %struct.Memory** %MEMORY
  %loadMem_42d096 = load %struct.Memory*, %struct.Memory** %MEMORY
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %795 = getelementptr inbounds %struct.GPR, %struct.GPR* %794, i32 0, i32 33
  %796 = getelementptr inbounds %struct.Reg, %struct.Reg* %795, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %796 to i64*
  %797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %798 = getelementptr inbounds %struct.GPR, %struct.GPR* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.Reg, %struct.Reg* %798, i32 0, i32 0
  %EAX.i225 = bitcast %union.anon* %799 to i32*
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %801 = getelementptr inbounds %struct.GPR, %struct.GPR* %800, i32 0, i32 15
  %802 = getelementptr inbounds %struct.Reg, %struct.Reg* %801, i32 0, i32 0
  %RBP.i226 = bitcast %union.anon* %802 to i64*
  %803 = load i64, i64* %RBP.i226
  %804 = sub i64 %803, 40
  %805 = load i32, i32* %EAX.i225
  %806 = zext i32 %805 to i64
  %807 = load i64, i64* %PC.i224
  %808 = add i64 %807, 3
  store i64 %808, i64* %PC.i224
  %809 = inttoptr i64 %804 to i32*
  store i32 %805, i32* %809
  store %struct.Memory* %loadMem_42d096, %struct.Memory** %MEMORY
  br label %block_.L_42d099

block_.L_42d099:                                  ; preds = %block_.L_42d093, %block_42d07c
  %loadMem_42d099 = load %struct.Memory*, %struct.Memory** %MEMORY
  %810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %811 = getelementptr inbounds %struct.GPR, %struct.GPR* %810, i32 0, i32 33
  %812 = getelementptr inbounds %struct.Reg, %struct.Reg* %811, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %812 to i64*
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %814 = getelementptr inbounds %struct.GPR, %struct.GPR* %813, i32 0, i32 1
  %815 = getelementptr inbounds %struct.Reg, %struct.Reg* %814, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %815 to i64*
  %816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %817 = getelementptr inbounds %struct.GPR, %struct.GPR* %816, i32 0, i32 15
  %818 = getelementptr inbounds %struct.Reg, %struct.Reg* %817, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %818 to i64*
  %819 = load i64, i64* %RBP.i223
  %820 = sub i64 %819, 40
  %821 = load i64, i64* %PC.i221
  %822 = add i64 %821, 3
  store i64 %822, i64* %PC.i221
  %823 = inttoptr i64 %820 to i32*
  %824 = load i32, i32* %823
  %825 = zext i32 %824 to i64
  store i64 %825, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_42d099, %struct.Memory** %MEMORY
  %loadMem_42d09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %827 = getelementptr inbounds %struct.GPR, %struct.GPR* %826, i32 0, i32 33
  %828 = getelementptr inbounds %struct.Reg, %struct.Reg* %827, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %828 to i64*
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %830 = getelementptr inbounds %struct.GPR, %struct.GPR* %829, i32 0, i32 1
  %831 = getelementptr inbounds %struct.Reg, %struct.Reg* %830, i32 0, i32 0
  %EAX.i219 = bitcast %union.anon* %831 to i32*
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %833 = getelementptr inbounds %struct.GPR, %struct.GPR* %832, i32 0, i32 15
  %834 = getelementptr inbounds %struct.Reg, %struct.Reg* %833, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %834 to i64*
  %835 = load i64, i64* %RBP.i220
  %836 = sub i64 %835, 28
  %837 = load i32, i32* %EAX.i219
  %838 = zext i32 %837 to i64
  %839 = load i64, i64* %PC.i218
  %840 = add i64 %839, 3
  store i64 %840, i64* %PC.i218
  %841 = inttoptr i64 %836 to i32*
  store i32 %837, i32* %841
  store %struct.Memory* %loadMem_42d09c, %struct.Memory** %MEMORY
  br label %block_.L_42d09f

block_.L_42d09f:                                  ; preds = %block_.L_42d099, %block_42d013
  %loadMem_42d09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 33
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %PC.i217
  %846 = add i64 %845, 5
  %847 = load i64, i64* %PC.i217
  %848 = add i64 %847, 5
  store i64 %848, i64* %PC.i217
  %849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %846, i64* %849, align 8
  store %struct.Memory* %loadMem_42d09f, %struct.Memory** %MEMORY
  br label %block_.L_42d0a4

block_.L_42d0a4:                                  ; preds = %block_.L_42d09f, %block_42cffe
  %loadMem_42d0a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 33
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %852 to i64*
  %853 = load i64, i64* %PC.i216
  %854 = add i64 %853, 5
  %855 = load i64, i64* %PC.i216
  %856 = add i64 %855, 5
  store i64 %856, i64* %PC.i216
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %854, i64* %857, align 8
  store %struct.Memory* %loadMem_42d0a4, %struct.Memory** %MEMORY
  br label %block_.L_42d0a9

block_.L_42d0a9:                                  ; preds = %block_.L_42d0a4
  %loadMem_42d0a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 33
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %860 to i64*
  %861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %862 = getelementptr inbounds %struct.GPR, %struct.GPR* %861, i32 0, i32 1
  %863 = getelementptr inbounds %struct.Reg, %struct.Reg* %862, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %863 to i64*
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 15
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %866 to i64*
  %867 = load i64, i64* %RBP.i215
  %868 = sub i64 %867, 20
  %869 = load i64, i64* %PC.i213
  %870 = add i64 %869, 3
  store i64 %870, i64* %PC.i213
  %871 = inttoptr i64 %868 to i32*
  %872 = load i32, i32* %871
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i214, align 8
  store %struct.Memory* %loadMem_42d0a9, %struct.Memory** %MEMORY
  %loadMem_42d0ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i212 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RAX.i212
  %881 = load i64, i64* %PC.i211
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i211
  %883 = trunc i64 %880 to i32
  %884 = add i32 1, %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i212, align 8
  %886 = icmp ult i32 %884, %883
  %887 = icmp ult i32 %884, 1
  %888 = or i1 %886, %887
  %889 = zext i1 %888 to i8
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %889, i8* %890, align 1
  %891 = and i32 %884, 255
  %892 = call i32 @llvm.ctpop.i32(i32 %891)
  %893 = trunc i32 %892 to i8
  %894 = and i8 %893, 1
  %895 = xor i8 %894, 1
  %896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %895, i8* %896, align 1
  %897 = xor i64 1, %880
  %898 = trunc i64 %897 to i32
  %899 = xor i32 %898, %884
  %900 = lshr i32 %899, 4
  %901 = trunc i32 %900 to i8
  %902 = and i8 %901, 1
  %903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %902, i8* %903, align 1
  %904 = icmp eq i32 %884, 0
  %905 = zext i1 %904 to i8
  %906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %905, i8* %906, align 1
  %907 = lshr i32 %884, 31
  %908 = trunc i32 %907 to i8
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %908, i8* %909, align 1
  %910 = lshr i32 %883, 31
  %911 = xor i32 %907, %910
  %912 = add i32 %911, %907
  %913 = icmp eq i32 %912, 2
  %914 = zext i1 %913 to i8
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %914, i8* %915, align 1
  store %struct.Memory* %loadMem_42d0ac, %struct.Memory** %MEMORY
  %loadMem_42d0af = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %EAX.i209 = bitcast %union.anon* %921 to i32*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 15
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %924 to i64*
  %925 = load i64, i64* %RBP.i210
  %926 = sub i64 %925, 20
  %927 = load i32, i32* %EAX.i209
  %928 = zext i32 %927 to i64
  %929 = load i64, i64* %PC.i208
  %930 = add i64 %929, 3
  store i64 %930, i64* %PC.i208
  %931 = inttoptr i64 %926 to i32*
  store i32 %927, i32* %931
  store %struct.Memory* %loadMem_42d0af, %struct.Memory** %MEMORY
  %loadMem_42d0b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 33
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %934 to i64*
  %935 = load i64, i64* %PC.i207
  %936 = add i64 %935, -193
  %937 = load i64, i64* %PC.i207
  %938 = add i64 %937, 5
  store i64 %938, i64* %PC.i207
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %936, i64* %939, align 8
  store %struct.Memory* %loadMem_42d0b2, %struct.Memory** %MEMORY
  br label %block_.L_42cff1

block_.L_42d0b7:                                  ; preds = %block_.L_42cff1
  %loadMem_42d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 1
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %945 to i64*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 15
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %948 to i64*
  %949 = load i64, i64* %RBP.i206
  %950 = sub i64 %949, 28
  %951 = load i64, i64* %PC.i204
  %952 = add i64 %951, 3
  store i64 %952, i64* %PC.i204
  %953 = inttoptr i64 %950 to i32*
  %954 = load i32, i32* %953
  %955 = zext i32 %954 to i64
  store i64 %955, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_42d0b7, %struct.Memory** %MEMORY
  %loadMem_42d0ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %957 = getelementptr inbounds %struct.GPR, %struct.GPR* %956, i32 0, i32 33
  %958 = getelementptr inbounds %struct.Reg, %struct.Reg* %957, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %958 to i64*
  %959 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %960 = getelementptr inbounds %struct.GPR, %struct.GPR* %959, i32 0, i32 1
  %961 = getelementptr inbounds %struct.Reg, %struct.Reg* %960, i32 0, i32 0
  %RAX.i202 = bitcast %union.anon* %961 to i64*
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 15
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %RBP.i203 = bitcast %union.anon* %964 to i64*
  %965 = load i64, i64* %RAX.i202
  %966 = load i64, i64* %RBP.i203
  %967 = sub i64 %966, 24
  %968 = load i64, i64* %PC.i201
  %969 = add i64 %968, 3
  store i64 %969, i64* %PC.i201
  %970 = trunc i64 %965 to i32
  %971 = inttoptr i64 %967 to i32*
  %972 = load i32, i32* %971
  %973 = sub i32 %970, %972
  %974 = zext i32 %973 to i64
  store i64 %974, i64* %RAX.i202, align 8
  %975 = icmp ult i32 %970, %972
  %976 = zext i1 %975 to i8
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %976, i8* %977, align 1
  %978 = and i32 %973, 255
  %979 = call i32 @llvm.ctpop.i32(i32 %978)
  %980 = trunc i32 %979 to i8
  %981 = and i8 %980, 1
  %982 = xor i8 %981, 1
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %982, i8* %983, align 1
  %984 = xor i32 %972, %970
  %985 = xor i32 %984, %973
  %986 = lshr i32 %985, 4
  %987 = trunc i32 %986 to i8
  %988 = and i8 %987, 1
  %989 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %988, i8* %989, align 1
  %990 = icmp eq i32 %973, 0
  %991 = zext i1 %990 to i8
  %992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %991, i8* %992, align 1
  %993 = lshr i32 %973, 31
  %994 = trunc i32 %993 to i8
  %995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %994, i8* %995, align 1
  %996 = lshr i32 %970, 31
  %997 = lshr i32 %972, 31
  %998 = xor i32 %997, %996
  %999 = xor i32 %993, %996
  %1000 = add i32 %999, %998
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1002, i8* %1003, align 1
  store %struct.Memory* %loadMem_42d0ba, %struct.Memory** %MEMORY
  %loadMem_42d0bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1006 to i64*
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1008 = getelementptr inbounds %struct.GPR, %struct.GPR* %1007, i32 0, i32 1
  %1009 = getelementptr inbounds %struct.Reg, %struct.Reg* %1008, i32 0, i32 0
  %RAX.i200 = bitcast %union.anon* %1009 to i64*
  %1010 = load i64, i64* %RAX.i200
  %1011 = load i64, i64* %PC.i199
  %1012 = add i64 %1011, 3
  store i64 %1012, i64* %PC.i199
  %1013 = trunc i64 %1010 to i32
  %1014 = add i32 1, %1013
  %1015 = zext i32 %1014 to i64
  store i64 %1015, i64* %RAX.i200, align 8
  %1016 = icmp ult i32 %1014, %1013
  %1017 = icmp ult i32 %1014, 1
  %1018 = or i1 %1016, %1017
  %1019 = zext i1 %1018 to i8
  %1020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1019, i8* %1020, align 1
  %1021 = and i32 %1014, 255
  %1022 = call i32 @llvm.ctpop.i32(i32 %1021)
  %1023 = trunc i32 %1022 to i8
  %1024 = and i8 %1023, 1
  %1025 = xor i8 %1024, 1
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1025, i8* %1026, align 1
  %1027 = xor i64 1, %1010
  %1028 = trunc i64 %1027 to i32
  %1029 = xor i32 %1028, %1014
  %1030 = lshr i32 %1029, 4
  %1031 = trunc i32 %1030 to i8
  %1032 = and i8 %1031, 1
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1032, i8* %1033, align 1
  %1034 = icmp eq i32 %1014, 0
  %1035 = zext i1 %1034 to i8
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1035, i8* %1036, align 1
  %1037 = lshr i32 %1014, 31
  %1038 = trunc i32 %1037 to i8
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1038, i8* %1039, align 1
  %1040 = lshr i32 %1013, 31
  %1041 = xor i32 %1037, %1040
  %1042 = add i32 %1041, %1037
  %1043 = icmp eq i32 %1042, 2
  %1044 = zext i1 %1043 to i8
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1044, i8* %1045, align 1
  store %struct.Memory* %loadMem_42d0bd, %struct.Memory** %MEMORY
  %loadMem_42d0c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 33
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %PC.i196 = bitcast %union.anon* %1048 to i64*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 5
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %1051 to i64*
  %1052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1053 = getelementptr inbounds %struct.GPR, %struct.GPR* %1052, i32 0, i32 15
  %1054 = getelementptr inbounds %struct.Reg, %struct.Reg* %1053, i32 0, i32 0
  %RBP.i198 = bitcast %union.anon* %1054 to i64*
  %1055 = load i64, i64* %RBP.i198
  %1056 = sub i64 %1055, 16
  %1057 = load i64, i64* %PC.i196
  %1058 = add i64 %1057, 4
  store i64 %1058, i64* %PC.i196
  %1059 = inttoptr i64 %1056 to i64*
  %1060 = load i64, i64* %1059
  store i64 %1060, i64* %RCX.i197, align 8
  store %struct.Memory* %loadMem_42d0c0, %struct.Memory** %MEMORY
  %loadMem_42d0c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i193 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %EAX.i194 = bitcast %union.anon* %1066 to i32*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 5
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RCX.i195 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %RCX.i195
  %1071 = load i32, i32* %EAX.i194
  %1072 = zext i32 %1071 to i64
  %1073 = load i64, i64* %PC.i193
  %1074 = add i64 %1073, 2
  store i64 %1074, i64* %PC.i193
  %1075 = inttoptr i64 %1070 to i32*
  store i32 %1071, i32* %1075
  store %struct.Memory* %loadMem_42d0c4, %struct.Memory** %MEMORY
  %loadMem_42d0c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 15
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RBP.i192 = bitcast %union.anon* %1081 to i64*
  %1082 = load i64, i64* %RBP.i192
  %1083 = sub i64 %1082, 20
  %1084 = load i64, i64* %PC.i191
  %1085 = add i64 %1084, 7
  store i64 %1085, i64* %PC.i191
  %1086 = inttoptr i64 %1083 to i32*
  store i32 21, i32* %1086
  store %struct.Memory* %loadMem_42d0c6, %struct.Memory** %MEMORY
  br label %block_.L_42d0cd

block_.L_42d0cd:                                  ; preds = %block_.L_42d145, %block_.L_42d0b7
  %loadMem_42d0cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1088 = getelementptr inbounds %struct.GPR, %struct.GPR* %1087, i32 0, i32 33
  %1089 = getelementptr inbounds %struct.Reg, %struct.Reg* %1088, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %1089 to i64*
  %1090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1091 = getelementptr inbounds %struct.GPR, %struct.GPR* %1090, i32 0, i32 15
  %1092 = getelementptr inbounds %struct.Reg, %struct.Reg* %1091, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %1092 to i64*
  %1093 = load i64, i64* %RBP.i190
  %1094 = sub i64 %1093, 20
  %1095 = load i64, i64* %PC.i189
  %1096 = add i64 %1095, 7
  store i64 %1096, i64* %PC.i189
  %1097 = inttoptr i64 %1094 to i32*
  %1098 = load i32, i32* %1097
  %1099 = sub i32 %1098, 400
  %1100 = icmp ult i32 %1098, 400
  %1101 = zext i1 %1100 to i8
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1101, i8* %1102, align 1
  %1103 = and i32 %1099, 255
  %1104 = call i32 @llvm.ctpop.i32(i32 %1103)
  %1105 = trunc i32 %1104 to i8
  %1106 = and i8 %1105, 1
  %1107 = xor i8 %1106, 1
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1107, i8* %1108, align 1
  %1109 = xor i32 %1098, 400
  %1110 = xor i32 %1109, %1099
  %1111 = lshr i32 %1110, 4
  %1112 = trunc i32 %1111 to i8
  %1113 = and i8 %1112, 1
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1113, i8* %1114, align 1
  %1115 = icmp eq i32 %1099, 0
  %1116 = zext i1 %1115 to i8
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1116, i8* %1117, align 1
  %1118 = lshr i32 %1099, 31
  %1119 = trunc i32 %1118 to i8
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1119, i8* %1120, align 1
  %1121 = lshr i32 %1098, 31
  %1122 = xor i32 %1118, %1121
  %1123 = add i32 %1122, %1121
  %1124 = icmp eq i32 %1123, 2
  %1125 = zext i1 %1124 to i8
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1125, i8* %1126, align 1
  store %struct.Memory* %loadMem_42d0cd, %struct.Memory** %MEMORY
  %loadMem_42d0d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1128 = getelementptr inbounds %struct.GPR, %struct.GPR* %1127, i32 0, i32 33
  %1129 = getelementptr inbounds %struct.Reg, %struct.Reg* %1128, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %1129 to i64*
  %1130 = load i64, i64* %PC.i188
  %1131 = add i64 %1130, 127
  %1132 = load i64, i64* %PC.i188
  %1133 = add i64 %1132, 6
  %1134 = load i64, i64* %PC.i188
  %1135 = add i64 %1134, 6
  store i64 %1135, i64* %PC.i188
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1137 = load i8, i8* %1136, align 1
  %1138 = icmp ne i8 %1137, 0
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1140 = load i8, i8* %1139, align 1
  %1141 = icmp ne i8 %1140, 0
  %1142 = xor i1 %1138, %1141
  %1143 = xor i1 %1142, true
  %1144 = zext i1 %1143 to i8
  store i8 %1144, i8* %BRANCH_TAKEN, align 1
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1146 = select i1 %1142, i64 %1133, i64 %1131
  store i64 %1146, i64* %1145, align 8
  store %struct.Memory* %loadMem_42d0d4, %struct.Memory** %MEMORY
  %loadBr_42d0d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d0d4 = icmp eq i8 %loadBr_42d0d4, 1
  br i1 %cmpBr_42d0d4, label %block_.L_42d153, label %block_42d0da

block_42d0da:                                     ; preds = %block_.L_42d0cd
  %loadMem_42d0da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 33
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1149 to i64*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 1
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %1152 to i64*
  %1153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1154 = getelementptr inbounds %struct.GPR, %struct.GPR* %1153, i32 0, i32 15
  %1155 = getelementptr inbounds %struct.Reg, %struct.Reg* %1154, i32 0, i32 0
  %RBP.i187 = bitcast %union.anon* %1155 to i64*
  %1156 = load i64, i64* %RBP.i187
  %1157 = sub i64 %1156, 20
  %1158 = load i64, i64* %PC.i185
  %1159 = add i64 %1158, 4
  store i64 %1159, i64* %PC.i185
  %1160 = inttoptr i64 %1157 to i32*
  %1161 = load i32, i32* %1160
  %1162 = sext i32 %1161 to i64
  store i64 %1162, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_42d0da, %struct.Memory** %MEMORY
  %loadMem_42d0de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1164 = getelementptr inbounds %struct.GPR, %struct.GPR* %1163, i32 0, i32 33
  %1165 = getelementptr inbounds %struct.Reg, %struct.Reg* %1164, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1165 to i64*
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1167 = getelementptr inbounds %struct.GPR, %struct.GPR* %1166, i32 0, i32 1
  %1168 = getelementptr inbounds %struct.Reg, %struct.Reg* %1167, i32 0, i32 0
  %RAX.i183 = bitcast %union.anon* %1168 to i64*
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1170 = getelementptr inbounds %struct.GPR, %struct.GPR* %1169, i32 0, i32 5
  %1171 = getelementptr inbounds %struct.Reg, %struct.Reg* %1170, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %1171 to i64*
  %1172 = load i64, i64* %RAX.i183
  %1173 = add i64 %1172, 12099168
  %1174 = load i64, i64* %PC.i182
  %1175 = add i64 %1174, 8
  store i64 %1175, i64* %PC.i182
  %1176 = inttoptr i64 %1173 to i8*
  %1177 = load i8, i8* %1176
  %1178 = zext i8 %1177 to i64
  store i64 %1178, i64* %RCX.i184, align 8
  store %struct.Memory* %loadMem_42d0de, %struct.Memory** %MEMORY
  %loadMem_42d0e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 33
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %1181 to i64*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 5
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %ECX.i181 = bitcast %union.anon* %1184 to i32*
  %1185 = load i32, i32* %ECX.i181
  %1186 = zext i32 %1185 to i64
  %1187 = load i64, i64* %PC.i180
  %1188 = add i64 %1187, 3
  store i64 %1188, i64* %PC.i180
  %1189 = sub i32 %1185, 3
  %1190 = icmp ult i32 %1185, 3
  %1191 = zext i1 %1190 to i8
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1191, i8* %1192, align 1
  %1193 = and i32 %1189, 255
  %1194 = call i32 @llvm.ctpop.i32(i32 %1193)
  %1195 = trunc i32 %1194 to i8
  %1196 = and i8 %1195, 1
  %1197 = xor i8 %1196, 1
  %1198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1197, i8* %1198, align 1
  %1199 = xor i64 3, %1186
  %1200 = trunc i64 %1199 to i32
  %1201 = xor i32 %1200, %1189
  %1202 = lshr i32 %1201, 4
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1204, i8* %1205, align 1
  %1206 = icmp eq i32 %1189, 0
  %1207 = zext i1 %1206 to i8
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1207, i8* %1208, align 1
  %1209 = lshr i32 %1189, 31
  %1210 = trunc i32 %1209 to i8
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1210, i8* %1211, align 1
  %1212 = lshr i32 %1185, 31
  %1213 = xor i32 %1209, %1212
  %1214 = add i32 %1213, %1212
  %1215 = icmp eq i32 %1214, 2
  %1216 = zext i1 %1215 to i8
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1216, i8* %1217, align 1
  store %struct.Memory* %loadMem_42d0e6, %struct.Memory** %MEMORY
  %loadMem_42d0e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %1220 to i64*
  %1221 = load i64, i64* %PC.i179
  %1222 = add i64 %1221, 87
  %1223 = load i64, i64* %PC.i179
  %1224 = add i64 %1223, 6
  %1225 = load i64, i64* %PC.i179
  %1226 = add i64 %1225, 6
  store i64 %1226, i64* %PC.i179
  %1227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1228 = load i8, i8* %1227, align 1
  store i8 %1228, i8* %BRANCH_TAKEN, align 1
  %1229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1230 = icmp ne i8 %1228, 0
  %1231 = select i1 %1230, i64 %1222, i64 %1224
  store i64 %1231, i64* %1229, align 8
  store %struct.Memory* %loadMem_42d0e9, %struct.Memory** %MEMORY
  %loadBr_42d0e9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d0e9 = icmp eq i8 %loadBr_42d0e9, 1
  br i1 %cmpBr_42d0e9, label %block_.L_42d140, label %block_42d0ef

block_42d0ef:                                     ; preds = %block_42d0da
  %loadMem_42d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %1234 to i64*
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1236 = getelementptr inbounds %struct.GPR, %struct.GPR* %1235, i32 0, i32 1
  %1237 = getelementptr inbounds %struct.Reg, %struct.Reg* %1236, i32 0, i32 0
  %RAX.i177 = bitcast %union.anon* %1237 to i64*
  %1238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1239 = getelementptr inbounds %struct.GPR, %struct.GPR* %1238, i32 0, i32 15
  %1240 = getelementptr inbounds %struct.Reg, %struct.Reg* %1239, i32 0, i32 0
  %RBP.i178 = bitcast %union.anon* %1240 to i64*
  %1241 = load i64, i64* %RBP.i178
  %1242 = sub i64 %1241, 8
  %1243 = load i64, i64* %PC.i176
  %1244 = add i64 %1243, 4
  store i64 %1244, i64* %PC.i176
  %1245 = inttoptr i64 %1242 to i64*
  %1246 = load i64, i64* %1245
  store i64 %1246, i64* %RAX.i177, align 8
  store %struct.Memory* %loadMem_42d0ef, %struct.Memory** %MEMORY
  %loadMem_42d0f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1248 = getelementptr inbounds %struct.GPR, %struct.GPR* %1247, i32 0, i32 33
  %1249 = getelementptr inbounds %struct.Reg, %struct.Reg* %1248, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %1249 to i64*
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 5
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %RCX.i174 = bitcast %union.anon* %1252 to i64*
  %1253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1254 = getelementptr inbounds %struct.GPR, %struct.GPR* %1253, i32 0, i32 15
  %1255 = getelementptr inbounds %struct.Reg, %struct.Reg* %1254, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %1255 to i64*
  %1256 = load i64, i64* %RBP.i175
  %1257 = sub i64 %1256, 20
  %1258 = load i64, i64* %PC.i173
  %1259 = add i64 %1258, 4
  store i64 %1259, i64* %PC.i173
  %1260 = inttoptr i64 %1257 to i32*
  %1261 = load i32, i32* %1260
  %1262 = sext i32 %1261 to i64
  store i64 %1262, i64* %RCX.i174, align 8
  store %struct.Memory* %loadMem_42d0f3, %struct.Memory** %MEMORY
  %loadMem_42d0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1264 = getelementptr inbounds %struct.GPR, %struct.GPR* %1263, i32 0, i32 33
  %1265 = getelementptr inbounds %struct.Reg, %struct.Reg* %1264, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1265 to i64*
  %1266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1267 = getelementptr inbounds %struct.GPR, %struct.GPR* %1266, i32 0, i32 1
  %1268 = getelementptr inbounds %struct.Reg, %struct.Reg* %1267, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %1268 to i64*
  %1269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1270 = getelementptr inbounds %struct.GPR, %struct.GPR* %1269, i32 0, i32 5
  %1271 = getelementptr inbounds %struct.Reg, %struct.Reg* %1270, i32 0, i32 0
  %RCX.i172 = bitcast %union.anon* %1271 to i64*
  %1272 = load i64, i64* %RAX.i171
  %1273 = load i64, i64* %RCX.i172
  %1274 = mul i64 %1273, 4
  %1275 = add i64 %1272, 14800
  %1276 = add i64 %1275, %1274
  %1277 = load i64, i64* %PC.i170
  %1278 = add i64 %1277, 8
  store i64 %1278, i64* %PC.i170
  %1279 = inttoptr i64 %1276 to i32*
  %1280 = load i32, i32* %1279
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1281, align 1
  %1282 = and i32 %1280, 255
  %1283 = call i32 @llvm.ctpop.i32(i32 %1282)
  %1284 = trunc i32 %1283 to i8
  %1285 = and i8 %1284, 1
  %1286 = xor i8 %1285, 1
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1286, i8* %1287, align 1
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1288, align 1
  %1289 = icmp eq i32 %1280, 0
  %1290 = zext i1 %1289 to i8
  %1291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1290, i8* %1291, align 1
  %1292 = lshr i32 %1280, 31
  %1293 = trunc i32 %1292 to i8
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1293, i8* %1294, align 1
  %1295 = lshr i32 %1280, 31
  %1296 = xor i32 %1292, %1295
  %1297 = add i32 %1296, %1295
  %1298 = icmp eq i32 %1297, 2
  %1299 = zext i1 %1298 to i8
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1299, i8* %1300, align 1
  store %struct.Memory* %loadMem_42d0f7, %struct.Memory** %MEMORY
  %loadMem_42d0ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 33
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %1303 to i64*
  %1304 = load i64, i64* %PC.i169
  %1305 = add i64 %1304, 44
  %1306 = load i64, i64* %PC.i169
  %1307 = add i64 %1306, 6
  %1308 = load i64, i64* %PC.i169
  %1309 = add i64 %1308, 6
  store i64 %1309, i64* %PC.i169
  %1310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1311 = load i8, i8* %1310, align 1
  store i8 %1311, i8* %BRANCH_TAKEN, align 1
  %1312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1313 = icmp ne i8 %1311, 0
  %1314 = select i1 %1313, i64 %1305, i64 %1307
  store i64 %1314, i64* %1312, align 8
  store %struct.Memory* %loadMem_42d0ff, %struct.Memory** %MEMORY
  %loadBr_42d0ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d0ff = icmp eq i8 %loadBr_42d0ff, 1
  br i1 %cmpBr_42d0ff, label %block_.L_42d12b, label %block_42d105

block_42d105:                                     ; preds = %block_42d0ef
  %loadMem_42d105 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1316 = getelementptr inbounds %struct.GPR, %struct.GPR* %1315, i32 0, i32 33
  %1317 = getelementptr inbounds %struct.Reg, %struct.Reg* %1316, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %1317 to i64*
  %1318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1319 = getelementptr inbounds %struct.GPR, %struct.GPR* %1318, i32 0, i32 1
  %1320 = getelementptr inbounds %struct.Reg, %struct.Reg* %1319, i32 0, i32 0
  %RAX.i167 = bitcast %union.anon* %1320 to i64*
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1322 = getelementptr inbounds %struct.GPR, %struct.GPR* %1321, i32 0, i32 15
  %1323 = getelementptr inbounds %struct.Reg, %struct.Reg* %1322, i32 0, i32 0
  %RBP.i168 = bitcast %union.anon* %1323 to i64*
  %1324 = load i64, i64* %RBP.i168
  %1325 = sub i64 %1324, 8
  %1326 = load i64, i64* %PC.i166
  %1327 = add i64 %1326, 4
  store i64 %1327, i64* %PC.i166
  %1328 = inttoptr i64 %1325 to i64*
  %1329 = load i64, i64* %1328
  store i64 %1329, i64* %RAX.i167, align 8
  store %struct.Memory* %loadMem_42d105, %struct.Memory** %MEMORY
  %loadMem_42d109 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1331 = getelementptr inbounds %struct.GPR, %struct.GPR* %1330, i32 0, i32 33
  %1332 = getelementptr inbounds %struct.Reg, %struct.Reg* %1331, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1332 to i64*
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 5
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 15
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %RBP.i165 = bitcast %union.anon* %1338 to i64*
  %1339 = load i64, i64* %RBP.i165
  %1340 = sub i64 %1339, 20
  %1341 = load i64, i64* %PC.i163
  %1342 = add i64 %1341, 4
  store i64 %1342, i64* %PC.i163
  %1343 = inttoptr i64 %1340 to i32*
  %1344 = load i32, i32* %1343
  %1345 = sext i32 %1344 to i64
  store i64 %1345, i64* %RCX.i164, align 8
  store %struct.Memory* %loadMem_42d109, %struct.Memory** %MEMORY
  %loadMem_42d10d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1347 = getelementptr inbounds %struct.GPR, %struct.GPR* %1346, i32 0, i32 33
  %1348 = getelementptr inbounds %struct.Reg, %struct.Reg* %1347, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %1348 to i64*
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1350 = getelementptr inbounds %struct.GPR, %struct.GPR* %1349, i32 0, i32 1
  %1351 = getelementptr inbounds %struct.Reg, %struct.Reg* %1350, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %1351 to i64*
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1353 = getelementptr inbounds %struct.GPR, %struct.GPR* %1352, i32 0, i32 5
  %1354 = getelementptr inbounds %struct.Reg, %struct.Reg* %1353, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %1354 to i64*
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 7
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %RDX.i162 = bitcast %union.anon* %1357 to i64*
  %1358 = load i64, i64* %RAX.i160
  %1359 = load i64, i64* %RCX.i161
  %1360 = mul i64 %1359, 4
  %1361 = add i64 %1358, 14800
  %1362 = add i64 %1361, %1360
  %1363 = load i64, i64* %PC.i159
  %1364 = add i64 %1363, 7
  store i64 %1364, i64* %PC.i159
  %1365 = inttoptr i64 %1362 to i32*
  %1366 = load i32, i32* %1365
  %1367 = zext i32 %1366 to i64
  store i64 %1367, i64* %RDX.i162, align 8
  store %struct.Memory* %loadMem_42d10d, %struct.Memory** %MEMORY
  %loadMem_42d114 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 7
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RDX.i157 = bitcast %union.anon* %1373 to i64*
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 15
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %1376 to i64*
  %1377 = load i64, i64* %RDX.i157
  %1378 = load i64, i64* %RBP.i158
  %1379 = sub i64 %1378, 24
  %1380 = load i64, i64* %PC.i156
  %1381 = add i64 %1380, 3
  store i64 %1381, i64* %PC.i156
  %1382 = trunc i64 %1377 to i32
  %1383 = inttoptr i64 %1379 to i32*
  %1384 = load i32, i32* %1383
  %1385 = sub i32 %1382, %1384
  %1386 = zext i32 %1385 to i64
  store i64 %1386, i64* %RDX.i157, align 8
  %1387 = icmp ult i32 %1382, %1384
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1388, i8* %1389, align 1
  %1390 = and i32 %1385, 255
  %1391 = call i32 @llvm.ctpop.i32(i32 %1390)
  %1392 = trunc i32 %1391 to i8
  %1393 = and i8 %1392, 1
  %1394 = xor i8 %1393, 1
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1394, i8* %1395, align 1
  %1396 = xor i32 %1384, %1382
  %1397 = xor i32 %1396, %1385
  %1398 = lshr i32 %1397, 4
  %1399 = trunc i32 %1398 to i8
  %1400 = and i8 %1399, 1
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1400, i8* %1401, align 1
  %1402 = icmp eq i32 %1385, 0
  %1403 = zext i1 %1402 to i8
  %1404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1403, i8* %1404, align 1
  %1405 = lshr i32 %1385, 31
  %1406 = trunc i32 %1405 to i8
  %1407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1406, i8* %1407, align 1
  %1408 = lshr i32 %1382, 31
  %1409 = lshr i32 %1384, 31
  %1410 = xor i32 %1409, %1408
  %1411 = xor i32 %1405, %1408
  %1412 = add i32 %1411, %1410
  %1413 = icmp eq i32 %1412, 2
  %1414 = zext i1 %1413 to i8
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1414, i8* %1415, align 1
  store %struct.Memory* %loadMem_42d114, %struct.Memory** %MEMORY
  %loadMem_42d117 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 7
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RDX.i155 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RDX.i155
  %1423 = load i64, i64* %PC.i154
  %1424 = add i64 %1423, 3
  store i64 %1424, i64* %PC.i154
  %1425 = trunc i64 %1422 to i32
  %1426 = add i32 1, %1425
  %1427 = zext i32 %1426 to i64
  store i64 %1427, i64* %RDX.i155, align 8
  %1428 = icmp ult i32 %1426, %1425
  %1429 = icmp ult i32 %1426, 1
  %1430 = or i1 %1428, %1429
  %1431 = zext i1 %1430 to i8
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1431, i8* %1432, align 1
  %1433 = and i32 %1426, 255
  %1434 = call i32 @llvm.ctpop.i32(i32 %1433)
  %1435 = trunc i32 %1434 to i8
  %1436 = and i8 %1435, 1
  %1437 = xor i8 %1436, 1
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1437, i8* %1438, align 1
  %1439 = xor i64 1, %1422
  %1440 = trunc i64 %1439 to i32
  %1441 = xor i32 %1440, %1426
  %1442 = lshr i32 %1441, 4
  %1443 = trunc i32 %1442 to i8
  %1444 = and i8 %1443, 1
  %1445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1444, i8* %1445, align 1
  %1446 = icmp eq i32 %1426, 0
  %1447 = zext i1 %1446 to i8
  %1448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1447, i8* %1448, align 1
  %1449 = lshr i32 %1426, 31
  %1450 = trunc i32 %1449 to i8
  %1451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1450, i8* %1451, align 1
  %1452 = lshr i32 %1425, 31
  %1453 = xor i32 %1449, %1452
  %1454 = add i32 %1453, %1449
  %1455 = icmp eq i32 %1454, 2
  %1456 = zext i1 %1455 to i8
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1456, i8* %1457, align 1
  store %struct.Memory* %loadMem_42d117, %struct.Memory** %MEMORY
  %loadMem_42d11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 1
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %RAX.i152 = bitcast %union.anon* %1463 to i64*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 15
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %1466 to i64*
  %1467 = load i64, i64* %RBP.i153
  %1468 = sub i64 %1467, 16
  %1469 = load i64, i64* %PC.i151
  %1470 = add i64 %1469, 4
  store i64 %1470, i64* %PC.i151
  %1471 = inttoptr i64 %1468 to i64*
  %1472 = load i64, i64* %1471
  store i64 %1472, i64* %RAX.i152, align 8
  store %struct.Memory* %loadMem_42d11a, %struct.Memory** %MEMORY
  %loadMem_42d11e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 33
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1475 to i64*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 5
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RCX.i149 = bitcast %union.anon* %1478 to i64*
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 15
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %RBP.i150 = bitcast %union.anon* %1481 to i64*
  %1482 = load i64, i64* %RBP.i150
  %1483 = sub i64 %1482, 20
  %1484 = load i64, i64* %PC.i148
  %1485 = add i64 %1484, 4
  store i64 %1485, i64* %PC.i148
  %1486 = inttoptr i64 %1483 to i32*
  %1487 = load i32, i32* %1486
  %1488 = sext i32 %1487 to i64
  store i64 %1488, i64* %RCX.i149, align 8
  store %struct.Memory* %loadMem_42d11e, %struct.Memory** %MEMORY
  %loadMem_42d122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1490 = getelementptr inbounds %struct.GPR, %struct.GPR* %1489, i32 0, i32 33
  %1491 = getelementptr inbounds %struct.Reg, %struct.Reg* %1490, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %1491 to i64*
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1493 = getelementptr inbounds %struct.GPR, %struct.GPR* %1492, i32 0, i32 7
  %1494 = getelementptr inbounds %struct.Reg, %struct.Reg* %1493, i32 0, i32 0
  %EDX.i145 = bitcast %union.anon* %1494 to i32*
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 1
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 5
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %1500 to i64*
  %1501 = load i64, i64* %RAX.i146
  %1502 = load i64, i64* %RCX.i147
  %1503 = mul i64 %1502, 4
  %1504 = add i64 %1501, 4
  %1505 = add i64 %1504, %1503
  %1506 = load i32, i32* %EDX.i145
  %1507 = zext i32 %1506 to i64
  %1508 = load i64, i64* %PC.i144
  %1509 = add i64 %1508, 4
  store i64 %1509, i64* %PC.i144
  %1510 = inttoptr i64 %1505 to i32*
  store i32 %1506, i32* %1510
  store %struct.Memory* %loadMem_42d122, %struct.Memory** %MEMORY
  %loadMem_42d126 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1513 to i64*
  %1514 = load i64, i64* %PC.i143
  %1515 = add i64 %1514, 21
  %1516 = load i64, i64* %PC.i143
  %1517 = add i64 %1516, 5
  store i64 %1517, i64* %PC.i143
  %1518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1515, i64* %1518, align 8
  store %struct.Memory* %loadMem_42d126, %struct.Memory** %MEMORY
  br label %block_.L_42d13b

block_.L_42d12b:                                  ; preds = %block_42d0ef
  %loadMem_42d12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1520 = getelementptr inbounds %struct.GPR, %struct.GPR* %1519, i32 0, i32 33
  %1521 = getelementptr inbounds %struct.Reg, %struct.Reg* %1520, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1521 to i64*
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 1
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 15
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %1527 to i64*
  %1528 = load i64, i64* %RBP.i142
  %1529 = sub i64 %1528, 16
  %1530 = load i64, i64* %PC.i140
  %1531 = add i64 %1530, 4
  store i64 %1531, i64* %PC.i140
  %1532 = inttoptr i64 %1529 to i64*
  %1533 = load i64, i64* %1532
  store i64 %1533, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_42d12b, %struct.Memory** %MEMORY
  %loadMem_42d12f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1535 = getelementptr inbounds %struct.GPR, %struct.GPR* %1534, i32 0, i32 33
  %1536 = getelementptr inbounds %struct.Reg, %struct.Reg* %1535, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %1536 to i64*
  %1537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1538 = getelementptr inbounds %struct.GPR, %struct.GPR* %1537, i32 0, i32 5
  %1539 = getelementptr inbounds %struct.Reg, %struct.Reg* %1538, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %1539 to i64*
  %1540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1541 = getelementptr inbounds %struct.GPR, %struct.GPR* %1540, i32 0, i32 15
  %1542 = getelementptr inbounds %struct.Reg, %struct.Reg* %1541, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %1542 to i64*
  %1543 = load i64, i64* %RBP.i139
  %1544 = sub i64 %1543, 20
  %1545 = load i64, i64* %PC.i137
  %1546 = add i64 %1545, 4
  store i64 %1546, i64* %PC.i137
  %1547 = inttoptr i64 %1544 to i32*
  %1548 = load i32, i32* %1547
  %1549 = sext i32 %1548 to i64
  store i64 %1549, i64* %RCX.i138, align 8
  store %struct.Memory* %loadMem_42d12f, %struct.Memory** %MEMORY
  %loadMem_42d133 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1551 = getelementptr inbounds %struct.GPR, %struct.GPR* %1550, i32 0, i32 33
  %1552 = getelementptr inbounds %struct.Reg, %struct.Reg* %1551, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1552 to i64*
  %1553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1554 = getelementptr inbounds %struct.GPR, %struct.GPR* %1553, i32 0, i32 1
  %1555 = getelementptr inbounds %struct.Reg, %struct.Reg* %1554, i32 0, i32 0
  %RAX.i135 = bitcast %union.anon* %1555 to i64*
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1557 = getelementptr inbounds %struct.GPR, %struct.GPR* %1556, i32 0, i32 5
  %1558 = getelementptr inbounds %struct.Reg, %struct.Reg* %1557, i32 0, i32 0
  %RCX.i136 = bitcast %union.anon* %1558 to i64*
  %1559 = load i64, i64* %RAX.i135
  %1560 = load i64, i64* %RCX.i136
  %1561 = mul i64 %1560, 4
  %1562 = add i64 %1559, 4
  %1563 = add i64 %1562, %1561
  %1564 = load i64, i64* %PC.i134
  %1565 = add i64 %1564, 8
  store i64 %1565, i64* %PC.i134
  %1566 = inttoptr i64 %1563 to i32*
  store i32 0, i32* %1566
  store %struct.Memory* %loadMem_42d133, %struct.Memory** %MEMORY
  br label %block_.L_42d13b

block_.L_42d13b:                                  ; preds = %block_.L_42d12b, %block_42d105
  %loadMem_42d13b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i133 = bitcast %union.anon* %1569 to i64*
  %1570 = load i64, i64* %PC.i133
  %1571 = add i64 %1570, 5
  %1572 = load i64, i64* %PC.i133
  %1573 = add i64 %1572, 5
  store i64 %1573, i64* %PC.i133
  %1574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1571, i64* %1574, align 8
  store %struct.Memory* %loadMem_42d13b, %struct.Memory** %MEMORY
  br label %block_.L_42d140

block_.L_42d140:                                  ; preds = %block_.L_42d13b, %block_42d0da
  %loadMem_42d140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 33
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %PC.i132
  %1579 = add i64 %1578, 5
  %1580 = load i64, i64* %PC.i132
  %1581 = add i64 %1580, 5
  store i64 %1581, i64* %PC.i132
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1579, i64* %1582, align 8
  store %struct.Memory* %loadMem_42d140, %struct.Memory** %MEMORY
  br label %block_.L_42d145

block_.L_42d145:                                  ; preds = %block_.L_42d140
  %loadMem_42d145 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 33
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 1
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RAX.i130 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 15
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %1591 to i64*
  %1592 = load i64, i64* %RBP.i131
  %1593 = sub i64 %1592, 20
  %1594 = load i64, i64* %PC.i129
  %1595 = add i64 %1594, 3
  store i64 %1595, i64* %PC.i129
  %1596 = inttoptr i64 %1593 to i32*
  %1597 = load i32, i32* %1596
  %1598 = zext i32 %1597 to i64
  store i64 %1598, i64* %RAX.i130, align 8
  store %struct.Memory* %loadMem_42d145, %struct.Memory** %MEMORY
  %loadMem_42d148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 33
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %PC.i127 = bitcast %union.anon* %1601 to i64*
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 1
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %RAX.i128 = bitcast %union.anon* %1604 to i64*
  %1605 = load i64, i64* %RAX.i128
  %1606 = load i64, i64* %PC.i127
  %1607 = add i64 %1606, 3
  store i64 %1607, i64* %PC.i127
  %1608 = trunc i64 %1605 to i32
  %1609 = add i32 1, %1608
  %1610 = zext i32 %1609 to i64
  store i64 %1610, i64* %RAX.i128, align 8
  %1611 = icmp ult i32 %1609, %1608
  %1612 = icmp ult i32 %1609, 1
  %1613 = or i1 %1611, %1612
  %1614 = zext i1 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1614, i8* %1615, align 1
  %1616 = and i32 %1609, 255
  %1617 = call i32 @llvm.ctpop.i32(i32 %1616)
  %1618 = trunc i32 %1617 to i8
  %1619 = and i8 %1618, 1
  %1620 = xor i8 %1619, 1
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1620, i8* %1621, align 1
  %1622 = xor i64 1, %1605
  %1623 = trunc i64 %1622 to i32
  %1624 = xor i32 %1623, %1609
  %1625 = lshr i32 %1624, 4
  %1626 = trunc i32 %1625 to i8
  %1627 = and i8 %1626, 1
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1627, i8* %1628, align 1
  %1629 = icmp eq i32 %1609, 0
  %1630 = zext i1 %1629 to i8
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1630, i8* %1631, align 1
  %1632 = lshr i32 %1609, 31
  %1633 = trunc i32 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1633, i8* %1634, align 1
  %1635 = lshr i32 %1608, 31
  %1636 = xor i32 %1632, %1635
  %1637 = add i32 %1636, %1632
  %1638 = icmp eq i32 %1637, 2
  %1639 = zext i1 %1638 to i8
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1639, i8* %1640, align 1
  store %struct.Memory* %loadMem_42d148, %struct.Memory** %MEMORY
  %loadMem_42d14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1642 = getelementptr inbounds %struct.GPR, %struct.GPR* %1641, i32 0, i32 33
  %1643 = getelementptr inbounds %struct.Reg, %struct.Reg* %1642, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %1643 to i64*
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1645 = getelementptr inbounds %struct.GPR, %struct.GPR* %1644, i32 0, i32 1
  %1646 = getelementptr inbounds %struct.Reg, %struct.Reg* %1645, i32 0, i32 0
  %EAX.i125 = bitcast %union.anon* %1646 to i32*
  %1647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1648 = getelementptr inbounds %struct.GPR, %struct.GPR* %1647, i32 0, i32 15
  %1649 = getelementptr inbounds %struct.Reg, %struct.Reg* %1648, i32 0, i32 0
  %RBP.i126 = bitcast %union.anon* %1649 to i64*
  %1650 = load i64, i64* %RBP.i126
  %1651 = sub i64 %1650, 20
  %1652 = load i32, i32* %EAX.i125
  %1653 = zext i32 %1652 to i64
  %1654 = load i64, i64* %PC.i124
  %1655 = add i64 %1654, 3
  store i64 %1655, i64* %PC.i124
  %1656 = inttoptr i64 %1651 to i32*
  store i32 %1652, i32* %1656
  store %struct.Memory* %loadMem_42d14b, %struct.Memory** %MEMORY
  %loadMem_42d14e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %PC.i123
  %1661 = add i64 %1660, -129
  %1662 = load i64, i64* %PC.i123
  %1663 = add i64 %1662, 5
  store i64 %1663, i64* %PC.i123
  %1664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1661, i64* %1664, align 8
  store %struct.Memory* %loadMem_42d14e, %struct.Memory** %MEMORY
  br label %block_.L_42d0cd

block_.L_42d153:                                  ; preds = %block_.L_42d0cd
  %loadMem_42d153 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 15
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RBP.i122
  %1675 = sub i64 %1674, 24
  %1676 = load i64, i64* %PC.i120
  %1677 = add i64 %1676, 3
  store i64 %1677, i64* %PC.i120
  %1678 = inttoptr i64 %1675 to i32*
  %1679 = load i32, i32* %1678
  %1680 = zext i32 %1679 to i64
  store i64 %1680, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_42d153, %struct.Memory** %MEMORY
  %loadMem_42d156 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i117 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 1
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %EAX.i118 = bitcast %union.anon* %1686 to i32*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 15
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RBP.i119 = bitcast %union.anon* %1689 to i64*
  %1690 = load i64, i64* %RBP.i119
  %1691 = sub i64 %1690, 32
  %1692 = load i32, i32* %EAX.i118
  %1693 = zext i32 %1692 to i64
  %1694 = load i64, i64* %PC.i117
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC.i117
  %1696 = inttoptr i64 %1691 to i32*
  store i32 %1692, i32* %1696
  store %struct.Memory* %loadMem_42d156, %struct.Memory** %MEMORY
  br label %block_.L_42d159

block_.L_42d159:                                  ; preds = %block_.L_42d210, %block_.L_42d153
  %loadMem_42d159 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1698 = getelementptr inbounds %struct.GPR, %struct.GPR* %1697, i32 0, i32 33
  %1699 = getelementptr inbounds %struct.Reg, %struct.Reg* %1698, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1699 to i64*
  %1700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1701 = getelementptr inbounds %struct.GPR, %struct.GPR* %1700, i32 0, i32 1
  %1702 = getelementptr inbounds %struct.Reg, %struct.Reg* %1701, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %1702 to i64*
  %1703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1704 = getelementptr inbounds %struct.GPR, %struct.GPR* %1703, i32 0, i32 15
  %1705 = getelementptr inbounds %struct.Reg, %struct.Reg* %1704, i32 0, i32 0
  %RBP.i116 = bitcast %union.anon* %1705 to i64*
  %1706 = load i64, i64* %RBP.i116
  %1707 = sub i64 %1706, 32
  %1708 = load i64, i64* %PC.i114
  %1709 = add i64 %1708, 3
  store i64 %1709, i64* %PC.i114
  %1710 = inttoptr i64 %1707 to i32*
  %1711 = load i32, i32* %1710
  %1712 = zext i32 %1711 to i64
  store i64 %1712, i64* %RAX.i115, align 8
  store %struct.Memory* %loadMem_42d159, %struct.Memory** %MEMORY
  %loadMem_42d15c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 1
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %EAX.i112 = bitcast %union.anon* %1718 to i32*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i113 = bitcast %union.anon* %1721 to i64*
  %1722 = load i32, i32* %EAX.i112
  %1723 = zext i32 %1722 to i64
  %1724 = load i64, i64* %RBP.i113
  %1725 = sub i64 %1724, 28
  %1726 = load i64, i64* %PC.i111
  %1727 = add i64 %1726, 3
  store i64 %1727, i64* %PC.i111
  %1728 = inttoptr i64 %1725 to i32*
  %1729 = load i32, i32* %1728
  %1730 = sub i32 %1722, %1729
  %1731 = icmp ult i32 %1722, %1729
  %1732 = zext i1 %1731 to i8
  %1733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1732, i8* %1733, align 1
  %1734 = and i32 %1730, 255
  %1735 = call i32 @llvm.ctpop.i32(i32 %1734)
  %1736 = trunc i32 %1735 to i8
  %1737 = and i8 %1736, 1
  %1738 = xor i8 %1737, 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1738, i8* %1739, align 1
  %1740 = xor i32 %1729, %1722
  %1741 = xor i32 %1740, %1730
  %1742 = lshr i32 %1741, 4
  %1743 = trunc i32 %1742 to i8
  %1744 = and i8 %1743, 1
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1744, i8* %1745, align 1
  %1746 = icmp eq i32 %1730, 0
  %1747 = zext i1 %1746 to i8
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1747, i8* %1748, align 1
  %1749 = lshr i32 %1730, 31
  %1750 = trunc i32 %1749 to i8
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1750, i8* %1751, align 1
  %1752 = lshr i32 %1722, 31
  %1753 = lshr i32 %1729, 31
  %1754 = xor i32 %1753, %1752
  %1755 = xor i32 %1749, %1752
  %1756 = add i32 %1755, %1754
  %1757 = icmp eq i32 %1756, 2
  %1758 = zext i1 %1757 to i8
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1758, i8* %1759, align 1
  store %struct.Memory* %loadMem_42d15c, %struct.Memory** %MEMORY
  %loadMem_42d15f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %PC.i110
  %1764 = add i64 %1763, 191
  %1765 = load i64, i64* %PC.i110
  %1766 = add i64 %1765, 6
  %1767 = load i64, i64* %PC.i110
  %1768 = add i64 %1767, 6
  store i64 %1768, i64* %PC.i110
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1770 = load i8, i8* %1769, align 1
  %1771 = icmp eq i8 %1770, 0
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1773 = load i8, i8* %1772, align 1
  %1774 = icmp ne i8 %1773, 0
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1776 = load i8, i8* %1775, align 1
  %1777 = icmp ne i8 %1776, 0
  %1778 = xor i1 %1774, %1777
  %1779 = xor i1 %1778, true
  %1780 = and i1 %1771, %1779
  %1781 = zext i1 %1780 to i8
  store i8 %1781, i8* %BRANCH_TAKEN, align 1
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1783 = select i1 %1780, i64 %1764, i64 %1766
  store i64 %1783, i64* %1782, align 8
  store %struct.Memory* %loadMem_42d15f, %struct.Memory** %MEMORY
  %loadBr_42d15f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d15f = icmp eq i8 %loadBr_42d15f, 1
  br i1 %cmpBr_42d15f, label %block_.L_42d21e, label %block_42d165

block_42d165:                                     ; preds = %block_.L_42d159
  %loadMem_42d165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1785 = getelementptr inbounds %struct.GPR, %struct.GPR* %1784, i32 0, i32 33
  %1786 = getelementptr inbounds %struct.Reg, %struct.Reg* %1785, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1786 to i64*
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1788 = getelementptr inbounds %struct.GPR, %struct.GPR* %1787, i32 0, i32 1
  %1789 = getelementptr inbounds %struct.Reg, %struct.Reg* %1788, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %1789 to i64*
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 15
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %RBP.i109 = bitcast %union.anon* %1792 to i64*
  %1793 = load i64, i64* %RBP.i109
  %1794 = sub i64 %1793, 8
  %1795 = load i64, i64* %PC.i107
  %1796 = add i64 %1795, 4
  store i64 %1796, i64* %PC.i107
  %1797 = inttoptr i64 %1794 to i64*
  %1798 = load i64, i64* %1797
  store i64 %1798, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_42d165, %struct.Memory** %MEMORY
  %loadMem_42d169 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1800 = getelementptr inbounds %struct.GPR, %struct.GPR* %1799, i32 0, i32 33
  %1801 = getelementptr inbounds %struct.Reg, %struct.Reg* %1800, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1801 to i64*
  %1802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1803 = getelementptr inbounds %struct.GPR, %struct.GPR* %1802, i32 0, i32 5
  %1804 = getelementptr inbounds %struct.Reg, %struct.Reg* %1803, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %1804 to i64*
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1806 = getelementptr inbounds %struct.GPR, %struct.GPR* %1805, i32 0, i32 15
  %1807 = getelementptr inbounds %struct.Reg, %struct.Reg* %1806, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %1807 to i64*
  %1808 = load i64, i64* %RBP.i106
  %1809 = sub i64 %1808, 32
  %1810 = load i64, i64* %PC.i104
  %1811 = add i64 %1810, 4
  store i64 %1811, i64* %PC.i104
  %1812 = inttoptr i64 %1809 to i32*
  %1813 = load i32, i32* %1812
  %1814 = sext i32 %1813 to i64
  store i64 %1814, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_42d169, %struct.Memory** %MEMORY
  %loadMem_42d16d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 33
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %1817 to i64*
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1819 = getelementptr inbounds %struct.GPR, %struct.GPR* %1818, i32 0, i32 1
  %1820 = getelementptr inbounds %struct.Reg, %struct.Reg* %1819, i32 0, i32 0
  %RAX.i101 = bitcast %union.anon* %1820 to i64*
  %1821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1822 = getelementptr inbounds %struct.GPR, %struct.GPR* %1821, i32 0, i32 5
  %1823 = getelementptr inbounds %struct.Reg, %struct.Reg* %1822, i32 0, i32 0
  %RCX.i102 = bitcast %union.anon* %1823 to i64*
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 7
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %RDX.i103 = bitcast %union.anon* %1826 to i64*
  %1827 = load i64, i64* %RAX.i101
  %1828 = load i64, i64* %RCX.i102
  %1829 = mul i64 %1828, 4
  %1830 = add i64 %1827, 22336
  %1831 = add i64 %1830, %1829
  %1832 = load i64, i64* %PC.i100
  %1833 = add i64 %1832, 7
  store i64 %1833, i64* %PC.i100
  %1834 = inttoptr i64 %1831 to i32*
  %1835 = load i32, i32* %1834
  %1836 = zext i32 %1835 to i64
  store i64 %1836, i64* %RDX.i103, align 8
  store %struct.Memory* %loadMem_42d16d, %struct.Memory** %MEMORY
  %loadMem_42d174 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1838 = getelementptr inbounds %struct.GPR, %struct.GPR* %1837, i32 0, i32 33
  %1839 = getelementptr inbounds %struct.Reg, %struct.Reg* %1838, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %1839 to i64*
  %1840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1841 = getelementptr inbounds %struct.GPR, %struct.GPR* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds %struct.Reg, %struct.Reg* %1841, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %1842 to i64*
  %1843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1844 = getelementptr inbounds %struct.GPR, %struct.GPR* %1843, i32 0, i32 15
  %1845 = getelementptr inbounds %struct.Reg, %struct.Reg* %1844, i32 0, i32 0
  %RBP.i99 = bitcast %union.anon* %1845 to i64*
  %1846 = load i64, i64* %RBP.i99
  %1847 = sub i64 %1846, 16
  %1848 = load i64, i64* %PC.i97
  %1849 = add i64 %1848, 4
  store i64 %1849, i64* %PC.i97
  %1850 = inttoptr i64 %1847 to i64*
  %1851 = load i64, i64* %1850
  store i64 %1851, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_42d174, %struct.Memory** %MEMORY
  %loadMem_42d178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1853 = getelementptr inbounds %struct.GPR, %struct.GPR* %1852, i32 0, i32 33
  %1854 = getelementptr inbounds %struct.Reg, %struct.Reg* %1853, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %1854 to i64*
  %1855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1856 = getelementptr inbounds %struct.GPR, %struct.GPR* %1855, i32 0, i32 9
  %1857 = getelementptr inbounds %struct.Reg, %struct.Reg* %1856, i32 0, i32 0
  %RSI.i95 = bitcast %union.anon* %1857 to i64*
  %1858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1859 = getelementptr inbounds %struct.GPR, %struct.GPR* %1858, i32 0, i32 15
  %1860 = getelementptr inbounds %struct.Reg, %struct.Reg* %1859, i32 0, i32 0
  %RBP.i96 = bitcast %union.anon* %1860 to i64*
  %1861 = load i64, i64* %RBP.i96
  %1862 = sub i64 %1861, 32
  %1863 = load i64, i64* %PC.i94
  %1864 = add i64 %1863, 3
  store i64 %1864, i64* %PC.i94
  %1865 = inttoptr i64 %1862 to i32*
  %1866 = load i32, i32* %1865
  %1867 = zext i32 %1866 to i64
  store i64 %1867, i64* %RSI.i95, align 8
  store %struct.Memory* %loadMem_42d178, %struct.Memory** %MEMORY
  %loadMem_42d17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1869 = getelementptr inbounds %struct.GPR, %struct.GPR* %1868, i32 0, i32 33
  %1870 = getelementptr inbounds %struct.Reg, %struct.Reg* %1869, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %1870 to i64*
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1872 = getelementptr inbounds %struct.GPR, %struct.GPR* %1871, i32 0, i32 9
  %1873 = getelementptr inbounds %struct.Reg, %struct.Reg* %1872, i32 0, i32 0
  %RSI.i92 = bitcast %union.anon* %1873 to i64*
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 15
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %RSI.i92
  %1878 = load i64, i64* %RBP.i93
  %1879 = sub i64 %1878, 24
  %1880 = load i64, i64* %PC.i91
  %1881 = add i64 %1880, 3
  store i64 %1881, i64* %PC.i91
  %1882 = trunc i64 %1877 to i32
  %1883 = inttoptr i64 %1879 to i32*
  %1884 = load i32, i32* %1883
  %1885 = sub i32 %1882, %1884
  %1886 = zext i32 %1885 to i64
  store i64 %1886, i64* %RSI.i92, align 8
  %1887 = icmp ult i32 %1882, %1884
  %1888 = zext i1 %1887 to i8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1888, i8* %1889, align 1
  %1890 = and i32 %1885, 255
  %1891 = call i32 @llvm.ctpop.i32(i32 %1890)
  %1892 = trunc i32 %1891 to i8
  %1893 = and i8 %1892, 1
  %1894 = xor i8 %1893, 1
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1894, i8* %1895, align 1
  %1896 = xor i32 %1884, %1882
  %1897 = xor i32 %1896, %1885
  %1898 = lshr i32 %1897, 4
  %1899 = trunc i32 %1898 to i8
  %1900 = and i8 %1899, 1
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1900, i8* %1901, align 1
  %1902 = icmp eq i32 %1885, 0
  %1903 = zext i1 %1902 to i8
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1903, i8* %1904, align 1
  %1905 = lshr i32 %1885, 31
  %1906 = trunc i32 %1905 to i8
  %1907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1906, i8* %1907, align 1
  %1908 = lshr i32 %1882, 31
  %1909 = lshr i32 %1884, 31
  %1910 = xor i32 %1909, %1908
  %1911 = xor i32 %1905, %1908
  %1912 = add i32 %1911, %1910
  %1913 = icmp eq i32 %1912, 2
  %1914 = zext i1 %1913 to i8
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1914, i8* %1915, align 1
  store %struct.Memory* %loadMem_42d17b, %struct.Memory** %MEMORY
  %loadMem_42d17e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 33
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %1918 to i64*
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 9
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %1921 to i64*
  %1922 = load i64, i64* %RSI.i
  %1923 = load i64, i64* %PC.i90
  %1924 = add i64 %1923, 3
  store i64 %1924, i64* %PC.i90
  %1925 = trunc i64 %1922 to i32
  %1926 = add i32 1, %1925
  %1927 = zext i32 %1926 to i64
  store i64 %1927, i64* %RSI.i, align 8
  %1928 = icmp ult i32 %1926, %1925
  %1929 = icmp ult i32 %1926, 1
  %1930 = or i1 %1928, %1929
  %1931 = zext i1 %1930 to i8
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1931, i8* %1932, align 1
  %1933 = and i32 %1926, 255
  %1934 = call i32 @llvm.ctpop.i32(i32 %1933)
  %1935 = trunc i32 %1934 to i8
  %1936 = and i8 %1935, 1
  %1937 = xor i8 %1936, 1
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1937, i8* %1938, align 1
  %1939 = xor i64 1, %1922
  %1940 = trunc i64 %1939 to i32
  %1941 = xor i32 %1940, %1926
  %1942 = lshr i32 %1941, 4
  %1943 = trunc i32 %1942 to i8
  %1944 = and i8 %1943, 1
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1944, i8* %1945, align 1
  %1946 = icmp eq i32 %1926, 0
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1947, i8* %1948, align 1
  %1949 = lshr i32 %1926, 31
  %1950 = trunc i32 %1949 to i8
  %1951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1950, i8* %1951, align 1
  %1952 = lshr i32 %1925, 31
  %1953 = xor i32 %1949, %1952
  %1954 = add i32 %1953, %1949
  %1955 = icmp eq i32 %1954, 2
  %1956 = zext i1 %1955 to i8
  %1957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1956, i8* %1957, align 1
  store %struct.Memory* %loadMem_42d17e, %struct.Memory** %MEMORY
  %loadMem_42d181 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i88 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 9
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %1963 to i32*
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 5
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %RCX.i89 = bitcast %union.anon* %1966 to i64*
  %1967 = load i32, i32* %ESI.i
  %1968 = zext i32 %1967 to i64
  %1969 = load i64, i64* %PC.i88
  %1970 = add i64 %1969, 3
  store i64 %1970, i64* %PC.i88
  %1971 = shl i64 %1968, 32
  %1972 = ashr exact i64 %1971, 32
  store i64 %1972, i64* %RCX.i89, align 8
  store %struct.Memory* %loadMem_42d181, %struct.Memory** %MEMORY
  %loadMem_42d184 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1974 = getelementptr inbounds %struct.GPR, %struct.GPR* %1973, i32 0, i32 33
  %1975 = getelementptr inbounds %struct.Reg, %struct.Reg* %1974, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %1975 to i64*
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 7
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %EDX.i85 = bitcast %union.anon* %1978 to i32*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 1
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RAX.i86 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 5
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %RAX.i86
  %1986 = load i64, i64* %RCX.i87
  %1987 = mul i64 %1986, 4
  %1988 = add i64 %1985, 1604
  %1989 = add i64 %1988, %1987
  %1990 = load i32, i32* %EDX.i85
  %1991 = zext i32 %1990 to i64
  %1992 = load i64, i64* %PC.i84
  %1993 = add i64 %1992, 7
  store i64 %1993, i64* %PC.i84
  %1994 = inttoptr i64 %1989 to i32*
  store i32 %1990, i32* %1994
  store %struct.Memory* %loadMem_42d184, %struct.Memory** %MEMORY
  %loadMem_42d18b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 33
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 1
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 15
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %2003 to i64*
  %2004 = load i64, i64* %RBP.i83
  %2005 = sub i64 %2004, 8
  %2006 = load i64, i64* %PC.i81
  %2007 = add i64 %2006, 4
  store i64 %2007, i64* %PC.i81
  %2008 = inttoptr i64 %2005 to i64*
  %2009 = load i64, i64* %2008
  store i64 %2009, i64* %RAX.i82, align 8
  store %struct.Memory* %loadMem_42d18b, %struct.Memory** %MEMORY
  %loadMem_42d18f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 5
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RCX.i79 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 15
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %RBP.i80
  %2020 = sub i64 %2019, 32
  %2021 = load i64, i64* %PC.i78
  %2022 = add i64 %2021, 4
  store i64 %2022, i64* %PC.i78
  %2023 = inttoptr i64 %2020 to i32*
  %2024 = load i32, i32* %2023
  %2025 = sext i32 %2024 to i64
  store i64 %2025, i64* %RCX.i79, align 8
  store %struct.Memory* %loadMem_42d18f, %struct.Memory** %MEMORY
  %loadMem_42d193 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 5
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RCX.i77 = bitcast %union.anon* %2034 to i64*
  %2035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2036 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2035, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2036 to %"class.std::bitset"*
  %2037 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2038 = load i64, i64* %RAX.i76
  %2039 = load i64, i64* %RCX.i77
  %2040 = mul i64 %2039, 4
  %2041 = add i64 %2038, 26672
  %2042 = add i64 %2041, %2040
  %2043 = load i64, i64* %PC.i75
  %2044 = add i64 %2043, 9
  store i64 %2044, i64* %PC.i75
  %2045 = inttoptr i64 %2042 to float*
  %2046 = load float, float* %2045
  %2047 = bitcast i8* %2037 to float*
  store float %2046, float* %2047, align 1
  %2048 = getelementptr inbounds i8, i8* %2037, i64 4
  %2049 = bitcast i8* %2048 to float*
  store float 0.000000e+00, float* %2049, align 1
  %2050 = getelementptr inbounds i8, i8* %2037, i64 8
  %2051 = bitcast i8* %2050 to float*
  store float 0.000000e+00, float* %2051, align 1
  %2052 = getelementptr inbounds i8, i8* %2037, i64 12
  %2053 = bitcast i8* %2052 to float*
  store float 0.000000e+00, float* %2053, align 1
  store %struct.Memory* %loadMem_42d193, %struct.Memory** %MEMORY
  %loadMem_42d19c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2055 = getelementptr inbounds %struct.GPR, %struct.GPR* %2054, i32 0, i32 33
  %2056 = getelementptr inbounds %struct.Reg, %struct.Reg* %2055, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %2056 to i64*
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 1
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 15
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2062 to i64*
  %2063 = load i64, i64* %RBP.i74
  %2064 = sub i64 %2063, 16
  %2065 = load i64, i64* %PC.i72
  %2066 = add i64 %2065, 4
  store i64 %2066, i64* %PC.i72
  %2067 = inttoptr i64 %2064 to i64*
  %2068 = load i64, i64* %2067
  store i64 %2068, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_42d19c, %struct.Memory** %MEMORY
  %loadMem_42d1a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 33
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 7
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RDX.i70 = bitcast %union.anon* %2074 to i64*
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2076 = getelementptr inbounds %struct.GPR, %struct.GPR* %2075, i32 0, i32 15
  %2077 = getelementptr inbounds %struct.Reg, %struct.Reg* %2076, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %2077 to i64*
  %2078 = load i64, i64* %RBP.i71
  %2079 = sub i64 %2078, 32
  %2080 = load i64, i64* %PC.i69
  %2081 = add i64 %2080, 3
  store i64 %2081, i64* %PC.i69
  %2082 = inttoptr i64 %2079 to i32*
  %2083 = load i32, i32* %2082
  %2084 = zext i32 %2083 to i64
  store i64 %2084, i64* %RDX.i70, align 8
  store %struct.Memory* %loadMem_42d1a0, %struct.Memory** %MEMORY
  %loadMem_42d1a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 7
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RDX.i67 = bitcast %union.anon* %2090 to i64*
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2092 = getelementptr inbounds %struct.GPR, %struct.GPR* %2091, i32 0, i32 15
  %2093 = getelementptr inbounds %struct.Reg, %struct.Reg* %2092, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2093 to i64*
  %2094 = load i64, i64* %RDX.i67
  %2095 = load i64, i64* %RBP.i68
  %2096 = sub i64 %2095, 24
  %2097 = load i64, i64* %PC.i66
  %2098 = add i64 %2097, 3
  store i64 %2098, i64* %PC.i66
  %2099 = trunc i64 %2094 to i32
  %2100 = inttoptr i64 %2096 to i32*
  %2101 = load i32, i32* %2100
  %2102 = sub i32 %2099, %2101
  %2103 = zext i32 %2102 to i64
  store i64 %2103, i64* %RDX.i67, align 8
  %2104 = icmp ult i32 %2099, %2101
  %2105 = zext i1 %2104 to i8
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2105, i8* %2106, align 1
  %2107 = and i32 %2102, 255
  %2108 = call i32 @llvm.ctpop.i32(i32 %2107)
  %2109 = trunc i32 %2108 to i8
  %2110 = and i8 %2109, 1
  %2111 = xor i8 %2110, 1
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2111, i8* %2112, align 1
  %2113 = xor i32 %2101, %2099
  %2114 = xor i32 %2113, %2102
  %2115 = lshr i32 %2114, 4
  %2116 = trunc i32 %2115 to i8
  %2117 = and i8 %2116, 1
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2117, i8* %2118, align 1
  %2119 = icmp eq i32 %2102, 0
  %2120 = zext i1 %2119 to i8
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2120, i8* %2121, align 1
  %2122 = lshr i32 %2102, 31
  %2123 = trunc i32 %2122 to i8
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2123, i8* %2124, align 1
  %2125 = lshr i32 %2099, 31
  %2126 = lshr i32 %2101, 31
  %2127 = xor i32 %2126, %2125
  %2128 = xor i32 %2122, %2125
  %2129 = add i32 %2128, %2127
  %2130 = icmp eq i32 %2129, 2
  %2131 = zext i1 %2130 to i8
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2131, i8* %2132, align 1
  store %struct.Memory* %loadMem_42d1a3, %struct.Memory** %MEMORY
  %loadMem_42d1a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 33
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2135 to i64*
  %2136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2137 = getelementptr inbounds %struct.GPR, %struct.GPR* %2136, i32 0, i32 7
  %2138 = getelementptr inbounds %struct.Reg, %struct.Reg* %2137, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %2138 to i64*
  %2139 = load i64, i64* %RDX.i65
  %2140 = load i64, i64* %PC.i64
  %2141 = add i64 %2140, 3
  store i64 %2141, i64* %PC.i64
  %2142 = trunc i64 %2139 to i32
  %2143 = add i32 1, %2142
  %2144 = zext i32 %2143 to i64
  store i64 %2144, i64* %RDX.i65, align 8
  %2145 = icmp ult i32 %2143, %2142
  %2146 = icmp ult i32 %2143, 1
  %2147 = or i1 %2145, %2146
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2148, i8* %2149, align 1
  %2150 = and i32 %2143, 255
  %2151 = call i32 @llvm.ctpop.i32(i32 %2150)
  %2152 = trunc i32 %2151 to i8
  %2153 = and i8 %2152, 1
  %2154 = xor i8 %2153, 1
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2154, i8* %2155, align 1
  %2156 = xor i64 1, %2139
  %2157 = trunc i64 %2156 to i32
  %2158 = xor i32 %2157, %2143
  %2159 = lshr i32 %2158, 4
  %2160 = trunc i32 %2159 to i8
  %2161 = and i8 %2160, 1
  %2162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2161, i8* %2162, align 1
  %2163 = icmp eq i32 %2143, 0
  %2164 = zext i1 %2163 to i8
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2164, i8* %2165, align 1
  %2166 = lshr i32 %2143, 31
  %2167 = trunc i32 %2166 to i8
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2167, i8* %2168, align 1
  %2169 = lshr i32 %2142, 31
  %2170 = xor i32 %2166, %2169
  %2171 = add i32 %2170, %2166
  %2172 = icmp eq i32 %2171, 2
  %2173 = zext i1 %2172 to i8
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2173, i8* %2174, align 1
  store %struct.Memory* %loadMem_42d1a6, %struct.Memory** %MEMORY
  %loadMem_42d1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 33
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 7
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %EDX.i62 = bitcast %union.anon* %2180 to i32*
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2182 = getelementptr inbounds %struct.GPR, %struct.GPR* %2181, i32 0, i32 5
  %2183 = getelementptr inbounds %struct.Reg, %struct.Reg* %2182, i32 0, i32 0
  %RCX.i63 = bitcast %union.anon* %2183 to i64*
  %2184 = load i32, i32* %EDX.i62
  %2185 = zext i32 %2184 to i64
  %2186 = load i64, i64* %PC.i61
  %2187 = add i64 %2186, 3
  store i64 %2187, i64* %PC.i61
  %2188 = shl i64 %2185, 32
  %2189 = ashr exact i64 %2188, 32
  store i64 %2189, i64* %RCX.i63, align 8
  store %struct.Memory* %loadMem_42d1a9, %struct.Memory** %MEMORY
  %loadMem_42d1ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2191 = getelementptr inbounds %struct.GPR, %struct.GPR* %2190, i32 0, i32 33
  %2192 = getelementptr inbounds %struct.Reg, %struct.Reg* %2191, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %2192 to i64*
  %2193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2194 = getelementptr inbounds %struct.GPR, %struct.GPR* %2193, i32 0, i32 1
  %2195 = getelementptr inbounds %struct.Reg, %struct.Reg* %2194, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %2195 to i64*
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2197 = getelementptr inbounds %struct.GPR, %struct.GPR* %2196, i32 0, i32 5
  %2198 = getelementptr inbounds %struct.Reg, %struct.Reg* %2197, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %2198 to i64*
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2200 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2199, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2200 to %union.vec128_t*
  %2201 = load i64, i64* %RAX.i59
  %2202 = load i64, i64* %RCX.i60
  %2203 = mul i64 %2202, 4
  %2204 = add i64 %2201, 4492
  %2205 = add i64 %2204, %2203
  %2206 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2207 = load i64, i64* %PC.i58
  %2208 = add i64 %2207, 9
  store i64 %2208, i64* %PC.i58
  %2209 = bitcast i8* %2206 to <2 x float>*
  %2210 = load <2 x float>, <2 x float>* %2209, align 1
  %2211 = extractelement <2 x float> %2210, i32 0
  %2212 = inttoptr i64 %2205 to float*
  store float %2211, float* %2212
  store %struct.Memory* %loadMem_42d1ac, %struct.Memory** %MEMORY
  %loadMem_42d1b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2214 = getelementptr inbounds %struct.GPR, %struct.GPR* %2213, i32 0, i32 33
  %2215 = getelementptr inbounds %struct.Reg, %struct.Reg* %2214, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %2215 to i64*
  %2216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2217 = getelementptr inbounds %struct.GPR, %struct.GPR* %2216, i32 0, i32 1
  %2218 = getelementptr inbounds %struct.Reg, %struct.Reg* %2217, i32 0, i32 0
  %RAX.i56 = bitcast %union.anon* %2218 to i64*
  %2219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2220 = getelementptr inbounds %struct.GPR, %struct.GPR* %2219, i32 0, i32 15
  %2221 = getelementptr inbounds %struct.Reg, %struct.Reg* %2220, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %2221 to i64*
  %2222 = load i64, i64* %RBP.i57
  %2223 = sub i64 %2222, 8
  %2224 = load i64, i64* %PC.i55
  %2225 = add i64 %2224, 4
  store i64 %2225, i64* %PC.i55
  %2226 = inttoptr i64 %2223 to i64*
  %2227 = load i64, i64* %2226
  store i64 %2227, i64* %RAX.i56, align 8
  store %struct.Memory* %loadMem_42d1b5, %struct.Memory** %MEMORY
  %loadMem_42d1b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2229 = getelementptr inbounds %struct.GPR, %struct.GPR* %2228, i32 0, i32 33
  %2230 = getelementptr inbounds %struct.Reg, %struct.Reg* %2229, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %2230 to i64*
  %2231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2232 = getelementptr inbounds %struct.GPR, %struct.GPR* %2231, i32 0, i32 5
  %2233 = getelementptr inbounds %struct.Reg, %struct.Reg* %2232, i32 0, i32 0
  %RCX.i53 = bitcast %union.anon* %2233 to i64*
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 15
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %2236 to i64*
  %2237 = load i64, i64* %RBP.i54
  %2238 = sub i64 %2237, 32
  %2239 = load i64, i64* %PC.i52
  %2240 = add i64 %2239, 4
  store i64 %2240, i64* %PC.i52
  %2241 = inttoptr i64 %2238 to i32*
  %2242 = load i32, i32* %2241
  %2243 = sext i32 %2242 to i64
  store i64 %2243, i64* %RCX.i53, align 8
  store %struct.Memory* %loadMem_42d1b9, %struct.Memory** %MEMORY
  %loadMem_42d1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 33
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 1
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %2249 to i64*
  %2250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2251 = getelementptr inbounds %struct.GPR, %struct.GPR* %2250, i32 0, i32 5
  %2252 = getelementptr inbounds %struct.Reg, %struct.Reg* %2251, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %2252 to i64*
  %2253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2254 = getelementptr inbounds %struct.GPR, %struct.GPR* %2253, i32 0, i32 7
  %2255 = getelementptr inbounds %struct.Reg, %struct.Reg* %2254, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %2255 to i64*
  %2256 = load i64, i64* %RAX.i49
  %2257 = load i64, i64* %RCX.i50
  %2258 = mul i64 %2257, 4
  %2259 = add i64 %2256, 18000
  %2260 = add i64 %2259, %2258
  %2261 = load i64, i64* %PC.i48
  %2262 = add i64 %2261, 7
  store i64 %2262, i64* %PC.i48
  %2263 = inttoptr i64 %2260 to i32*
  %2264 = load i32, i32* %2263
  %2265 = zext i32 %2264 to i64
  store i64 %2265, i64* %RDX.i51, align 8
  store %struct.Memory* %loadMem_42d1bd, %struct.Memory** %MEMORY
  %loadMem_42d1c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2267 = getelementptr inbounds %struct.GPR, %struct.GPR* %2266, i32 0, i32 33
  %2268 = getelementptr inbounds %struct.Reg, %struct.Reg* %2267, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2268 to i64*
  %2269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2270 = getelementptr inbounds %struct.GPR, %struct.GPR* %2269, i32 0, i32 7
  %2271 = getelementptr inbounds %struct.Reg, %struct.Reg* %2270, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %2271 to i64*
  %2272 = load i64, i64* %RDX.i47
  %2273 = load i64, i64* %PC.i46
  %2274 = add i64 %2273, 3
  store i64 %2274, i64* %PC.i46
  %2275 = and i64 1, %2272
  %2276 = trunc i64 %2275 to i32
  store i64 %2275, i64* %RDX.i47, align 8
  %2277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2277, align 1
  %2278 = and i32 %2276, 255
  %2279 = call i32 @llvm.ctpop.i32(i32 %2278)
  %2280 = trunc i32 %2279 to i8
  %2281 = and i8 %2280, 1
  %2282 = xor i8 %2281, 1
  %2283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2282, i8* %2283, align 1
  %2284 = icmp eq i32 %2276, 0
  %2285 = zext i1 %2284 to i8
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2285, i8* %2286, align 1
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %2287, align 1
  %2288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2288, align 1
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2289, align 1
  store %struct.Memory* %loadMem_42d1c4, %struct.Memory** %MEMORY
  %loadMem_42d1c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2290 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2291 = getelementptr inbounds %struct.GPR, %struct.GPR* %2290, i32 0, i32 33
  %2292 = getelementptr inbounds %struct.Reg, %struct.Reg* %2291, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2292 to i64*
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2294 = getelementptr inbounds %struct.GPR, %struct.GPR* %2293, i32 0, i32 7
  %2295 = getelementptr inbounds %struct.Reg, %struct.Reg* %2294, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2295 to i32*
  %2296 = load i32, i32* %EDX.i
  %2297 = zext i32 %2296 to i64
  %2298 = load i64, i64* %PC.i45
  %2299 = add i64 %2298, 3
  store i64 %2299, i64* %PC.i45
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2300, align 1
  %2301 = and i32 %2296, 255
  %2302 = call i32 @llvm.ctpop.i32(i32 %2301)
  %2303 = trunc i32 %2302 to i8
  %2304 = and i8 %2303, 1
  %2305 = xor i8 %2304, 1
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2305, i8* %2306, align 1
  %2307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2307, align 1
  %2308 = icmp eq i32 %2296, 0
  %2309 = zext i1 %2308 to i8
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2309, i8* %2310, align 1
  %2311 = lshr i32 %2296, 31
  %2312 = trunc i32 %2311 to i8
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2312, i8* %2313, align 1
  %2314 = lshr i32 %2296, 31
  %2315 = xor i32 %2311, %2314
  %2316 = add i32 %2315, %2314
  %2317 = icmp eq i32 %2316, 2
  %2318 = zext i1 %2317 to i8
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2318, i8* %2319, align 1
  store %struct.Memory* %loadMem_42d1c7, %struct.Memory** %MEMORY
  %loadMem_42d1ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2321 = getelementptr inbounds %struct.GPR, %struct.GPR* %2320, i32 0, i32 33
  %2322 = getelementptr inbounds %struct.Reg, %struct.Reg* %2321, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %2322 to i64*
  %2323 = load i64, i64* %PC.i44
  %2324 = add i64 %2323, 38
  %2325 = load i64, i64* %PC.i44
  %2326 = add i64 %2325, 6
  %2327 = load i64, i64* %PC.i44
  %2328 = add i64 %2327, 6
  store i64 %2328, i64* %PC.i44
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2330 = load i8, i8* %2329, align 1
  store i8 %2330, i8* %BRANCH_TAKEN, align 1
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2332 = icmp ne i8 %2330, 0
  %2333 = select i1 %2332, i64 %2324, i64 %2326
  store i64 %2333, i64* %2331, align 8
  store %struct.Memory* %loadMem_42d1ca, %struct.Memory** %MEMORY
  %loadBr_42d1ca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_42d1ca = icmp eq i8 %loadBr_42d1ca, 1
  br i1 %cmpBr_42d1ca, label %block_.L_42d1f0, label %block_42d1d0

block_42d1d0:                                     ; preds = %block_42d165
  %loadMem_42d1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 33
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 1
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RAX.i42 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 15
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %2342 to i64*
  %2343 = load i64, i64* %RBP.i43
  %2344 = sub i64 %2343, 16
  %2345 = load i64, i64* %PC.i41
  %2346 = add i64 %2345, 4
  store i64 %2346, i64* %PC.i41
  %2347 = inttoptr i64 %2344 to i64*
  %2348 = load i64, i64* %2347
  store i64 %2348, i64* %RAX.i42, align 8
  store %struct.Memory* %loadMem_42d1d0, %struct.Memory** %MEMORY
  %loadMem_42d1d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2350 = getelementptr inbounds %struct.GPR, %struct.GPR* %2349, i32 0, i32 33
  %2351 = getelementptr inbounds %struct.Reg, %struct.Reg* %2350, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2351 to i64*
  %2352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2353 = getelementptr inbounds %struct.GPR, %struct.GPR* %2352, i32 0, i32 5
  %2354 = getelementptr inbounds %struct.Reg, %struct.Reg* %2353, i32 0, i32 0
  %RCX.i39 = bitcast %union.anon* %2354 to i64*
  %2355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2356 = getelementptr inbounds %struct.GPR, %struct.GPR* %2355, i32 0, i32 15
  %2357 = getelementptr inbounds %struct.Reg, %struct.Reg* %2356, i32 0, i32 0
  %RBP.i40 = bitcast %union.anon* %2357 to i64*
  %2358 = load i64, i64* %RBP.i40
  %2359 = sub i64 %2358, 32
  %2360 = load i64, i64* %PC.i38
  %2361 = add i64 %2360, 3
  store i64 %2361, i64* %PC.i38
  %2362 = inttoptr i64 %2359 to i32*
  %2363 = load i32, i32* %2362
  %2364 = zext i32 %2363 to i64
  store i64 %2364, i64* %RCX.i39, align 8
  store %struct.Memory* %loadMem_42d1d4, %struct.Memory** %MEMORY
  %loadMem_42d1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2366 = getelementptr inbounds %struct.GPR, %struct.GPR* %2365, i32 0, i32 33
  %2367 = getelementptr inbounds %struct.Reg, %struct.Reg* %2366, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %2367 to i64*
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2369 = getelementptr inbounds %struct.GPR, %struct.GPR* %2368, i32 0, i32 5
  %2370 = getelementptr inbounds %struct.Reg, %struct.Reg* %2369, i32 0, i32 0
  %RCX.i36 = bitcast %union.anon* %2370 to i64*
  %2371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2372 = getelementptr inbounds %struct.GPR, %struct.GPR* %2371, i32 0, i32 15
  %2373 = getelementptr inbounds %struct.Reg, %struct.Reg* %2372, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %2373 to i64*
  %2374 = load i64, i64* %RCX.i36
  %2375 = load i64, i64* %RBP.i37
  %2376 = sub i64 %2375, 24
  %2377 = load i64, i64* %PC.i35
  %2378 = add i64 %2377, 3
  store i64 %2378, i64* %PC.i35
  %2379 = trunc i64 %2374 to i32
  %2380 = inttoptr i64 %2376 to i32*
  %2381 = load i32, i32* %2380
  %2382 = sub i32 %2379, %2381
  %2383 = zext i32 %2382 to i64
  store i64 %2383, i64* %RCX.i36, align 8
  %2384 = icmp ult i32 %2379, %2381
  %2385 = zext i1 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2385, i8* %2386, align 1
  %2387 = and i32 %2382, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1
  %2393 = xor i32 %2381, %2379
  %2394 = xor i32 %2393, %2382
  %2395 = lshr i32 %2394, 4
  %2396 = trunc i32 %2395 to i8
  %2397 = and i8 %2396, 1
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2397, i8* %2398, align 1
  %2399 = icmp eq i32 %2382, 0
  %2400 = zext i1 %2399 to i8
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2400, i8* %2401, align 1
  %2402 = lshr i32 %2382, 31
  %2403 = trunc i32 %2402 to i8
  %2404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2403, i8* %2404, align 1
  %2405 = lshr i32 %2379, 31
  %2406 = lshr i32 %2381, 31
  %2407 = xor i32 %2406, %2405
  %2408 = xor i32 %2402, %2405
  %2409 = add i32 %2408, %2407
  %2410 = icmp eq i32 %2409, 2
  %2411 = zext i1 %2410 to i8
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2411, i8* %2412, align 1
  store %struct.Memory* %loadMem_42d1d7, %struct.Memory** %MEMORY
  %loadMem_42d1da = load %struct.Memory*, %struct.Memory** %MEMORY
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2414 = getelementptr inbounds %struct.GPR, %struct.GPR* %2413, i32 0, i32 33
  %2415 = getelementptr inbounds %struct.Reg, %struct.Reg* %2414, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2415 to i64*
  %2416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2417 = getelementptr inbounds %struct.GPR, %struct.GPR* %2416, i32 0, i32 5
  %2418 = getelementptr inbounds %struct.Reg, %struct.Reg* %2417, i32 0, i32 0
  %RCX.i34 = bitcast %union.anon* %2418 to i64*
  %2419 = load i64, i64* %RCX.i34
  %2420 = load i64, i64* %PC.i33
  %2421 = add i64 %2420, 3
  store i64 %2421, i64* %PC.i33
  %2422 = trunc i64 %2419 to i32
  %2423 = add i32 1, %2422
  %2424 = zext i32 %2423 to i64
  store i64 %2424, i64* %RCX.i34, align 8
  %2425 = icmp ult i32 %2423, %2422
  %2426 = icmp ult i32 %2423, 1
  %2427 = or i1 %2425, %2426
  %2428 = zext i1 %2427 to i8
  %2429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2428, i8* %2429, align 1
  %2430 = and i32 %2423, 255
  %2431 = call i32 @llvm.ctpop.i32(i32 %2430)
  %2432 = trunc i32 %2431 to i8
  %2433 = and i8 %2432, 1
  %2434 = xor i8 %2433, 1
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2434, i8* %2435, align 1
  %2436 = xor i64 1, %2419
  %2437 = trunc i64 %2436 to i32
  %2438 = xor i32 %2437, %2423
  %2439 = lshr i32 %2438, 4
  %2440 = trunc i32 %2439 to i8
  %2441 = and i8 %2440, 1
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2441, i8* %2442, align 1
  %2443 = icmp eq i32 %2423, 0
  %2444 = zext i1 %2443 to i8
  %2445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2444, i8* %2445, align 1
  %2446 = lshr i32 %2423, 31
  %2447 = trunc i32 %2446 to i8
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2447, i8* %2448, align 1
  %2449 = lshr i32 %2422, 31
  %2450 = xor i32 %2446, %2449
  %2451 = add i32 %2450, %2446
  %2452 = icmp eq i32 %2451, 2
  %2453 = zext i1 %2452 to i8
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2453, i8* %2454, align 1
  store %struct.Memory* %loadMem_42d1da, %struct.Memory** %MEMORY
  %loadMem_42d1dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2456 = getelementptr inbounds %struct.GPR, %struct.GPR* %2455, i32 0, i32 33
  %2457 = getelementptr inbounds %struct.Reg, %struct.Reg* %2456, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2457 to i64*
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2459 = getelementptr inbounds %struct.GPR, %struct.GPR* %2458, i32 0, i32 5
  %2460 = getelementptr inbounds %struct.Reg, %struct.Reg* %2459, i32 0, i32 0
  %ECX.i31 = bitcast %union.anon* %2460 to i32*
  %2461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2462 = getelementptr inbounds %struct.GPR, %struct.GPR* %2461, i32 0, i32 7
  %2463 = getelementptr inbounds %struct.Reg, %struct.Reg* %2462, i32 0, i32 0
  %RDX.i32 = bitcast %union.anon* %2463 to i64*
  %2464 = load i32, i32* %ECX.i31
  %2465 = zext i32 %2464 to i64
  %2466 = load i64, i64* %PC.i30
  %2467 = add i64 %2466, 3
  store i64 %2467, i64* %PC.i30
  %2468 = shl i64 %2465, 32
  %2469 = ashr exact i64 %2468, 32
  store i64 %2469, i64* %RDX.i32, align 8
  store %struct.Memory* %loadMem_42d1dd, %struct.Memory** %MEMORY
  %loadMem_42d1e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2471 = getelementptr inbounds %struct.GPR, %struct.GPR* %2470, i32 0, i32 33
  %2472 = getelementptr inbounds %struct.Reg, %struct.Reg* %2471, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %2472 to i64*
  %2473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2474 = getelementptr inbounds %struct.GPR, %struct.GPR* %2473, i32 0, i32 1
  %2475 = getelementptr inbounds %struct.Reg, %struct.Reg* %2474, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %2475 to i64*
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 7
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %RDX.i29 = bitcast %union.anon* %2478 to i64*
  %2479 = load i64, i64* %RAX.i28
  %2480 = load i64, i64* %RDX.i29
  %2481 = mul i64 %2480, 4
  %2482 = add i64 %2479, 3048
  %2483 = add i64 %2482, %2481
  %2484 = load i64, i64* %PC.i27
  %2485 = add i64 %2484, 11
  store i64 %2485, i64* %PC.i27
  %2486 = inttoptr i64 %2483 to i32*
  store i32 2, i32* %2486
  store %struct.Memory* %loadMem_42d1e0, %struct.Memory** %MEMORY
  %loadMem_42d1eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2489 to i64*
  %2490 = load i64, i64* %PC.i26
  %2491 = add i64 %2490, 32
  %2492 = load i64, i64* %PC.i26
  %2493 = add i64 %2492, 5
  store i64 %2493, i64* %PC.i26
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2491, i64* %2494, align 8
  store %struct.Memory* %loadMem_42d1eb, %struct.Memory** %MEMORY
  br label %block_.L_42d20b

block_.L_42d1f0:                                  ; preds = %block_42d165
  %loadMem_42d1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 33
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %2497 to i64*
  %2498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2499 = getelementptr inbounds %struct.GPR, %struct.GPR* %2498, i32 0, i32 1
  %2500 = getelementptr inbounds %struct.Reg, %struct.Reg* %2499, i32 0, i32 0
  %RAX.i24 = bitcast %union.anon* %2500 to i64*
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 15
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %RBP.i25 = bitcast %union.anon* %2503 to i64*
  %2504 = load i64, i64* %RBP.i25
  %2505 = sub i64 %2504, 16
  %2506 = load i64, i64* %PC.i23
  %2507 = add i64 %2506, 4
  store i64 %2507, i64* %PC.i23
  %2508 = inttoptr i64 %2505 to i64*
  %2509 = load i64, i64* %2508
  store i64 %2509, i64* %RAX.i24, align 8
  store %struct.Memory* %loadMem_42d1f0, %struct.Memory** %MEMORY
  %loadMem_42d1f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 5
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %RCX.i21 = bitcast %union.anon* %2515 to i64*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 15
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RBP.i22 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RBP.i22
  %2520 = sub i64 %2519, 32
  %2521 = load i64, i64* %PC.i20
  %2522 = add i64 %2521, 3
  store i64 %2522, i64* %PC.i20
  %2523 = inttoptr i64 %2520 to i32*
  %2524 = load i32, i32* %2523
  %2525 = zext i32 %2524 to i64
  store i64 %2525, i64* %RCX.i21, align 8
  store %struct.Memory* %loadMem_42d1f4, %struct.Memory** %MEMORY
  %loadMem_42d1f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 5
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RCX.i18 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i19 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RCX.i18
  %2536 = load i64, i64* %RBP.i19
  %2537 = sub i64 %2536, 24
  %2538 = load i64, i64* %PC.i17
  %2539 = add i64 %2538, 3
  store i64 %2539, i64* %PC.i17
  %2540 = trunc i64 %2535 to i32
  %2541 = inttoptr i64 %2537 to i32*
  %2542 = load i32, i32* %2541
  %2543 = sub i32 %2540, %2542
  %2544 = zext i32 %2543 to i64
  store i64 %2544, i64* %RCX.i18, align 8
  %2545 = icmp ult i32 %2540, %2542
  %2546 = zext i1 %2545 to i8
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2546, i8* %2547, align 1
  %2548 = and i32 %2543, 255
  %2549 = call i32 @llvm.ctpop.i32(i32 %2548)
  %2550 = trunc i32 %2549 to i8
  %2551 = and i8 %2550, 1
  %2552 = xor i8 %2551, 1
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2552, i8* %2553, align 1
  %2554 = xor i32 %2542, %2540
  %2555 = xor i32 %2554, %2543
  %2556 = lshr i32 %2555, 4
  %2557 = trunc i32 %2556 to i8
  %2558 = and i8 %2557, 1
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2558, i8* %2559, align 1
  %2560 = icmp eq i32 %2543, 0
  %2561 = zext i1 %2560 to i8
  %2562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2561, i8* %2562, align 1
  %2563 = lshr i32 %2543, 31
  %2564 = trunc i32 %2563 to i8
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2564, i8* %2565, align 1
  %2566 = lshr i32 %2540, 31
  %2567 = lshr i32 %2542, 31
  %2568 = xor i32 %2567, %2566
  %2569 = xor i32 %2563, %2566
  %2570 = add i32 %2569, %2568
  %2571 = icmp eq i32 %2570, 2
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2572, i8* %2573, align 1
  store %struct.Memory* %loadMem_42d1f7, %struct.Memory** %MEMORY
  %loadMem_42d1fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 5
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2579 to i64*
  %2580 = load i64, i64* %RCX.i
  %2581 = load i64, i64* %PC.i16
  %2582 = add i64 %2581, 3
  store i64 %2582, i64* %PC.i16
  %2583 = trunc i64 %2580 to i32
  %2584 = add i32 1, %2583
  %2585 = zext i32 %2584 to i64
  store i64 %2585, i64* %RCX.i, align 8
  %2586 = icmp ult i32 %2584, %2583
  %2587 = icmp ult i32 %2584, 1
  %2588 = or i1 %2586, %2587
  %2589 = zext i1 %2588 to i8
  %2590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2589, i8* %2590, align 1
  %2591 = and i32 %2584, 255
  %2592 = call i32 @llvm.ctpop.i32(i32 %2591)
  %2593 = trunc i32 %2592 to i8
  %2594 = and i8 %2593, 1
  %2595 = xor i8 %2594, 1
  %2596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2595, i8* %2596, align 1
  %2597 = xor i64 1, %2580
  %2598 = trunc i64 %2597 to i32
  %2599 = xor i32 %2598, %2584
  %2600 = lshr i32 %2599, 4
  %2601 = trunc i32 %2600 to i8
  %2602 = and i8 %2601, 1
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2602, i8* %2603, align 1
  %2604 = icmp eq i32 %2584, 0
  %2605 = zext i1 %2604 to i8
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2605, i8* %2606, align 1
  %2607 = lshr i32 %2584, 31
  %2608 = trunc i32 %2607 to i8
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2608, i8* %2609, align 1
  %2610 = lshr i32 %2583, 31
  %2611 = xor i32 %2607, %2610
  %2612 = add i32 %2611, %2607
  %2613 = icmp eq i32 %2612, 2
  %2614 = zext i1 %2613 to i8
  %2615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2614, i8* %2615, align 1
  store %struct.Memory* %loadMem_42d1fa, %struct.Memory** %MEMORY
  %loadMem_42d1fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 5
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2621 to i32*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 7
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RDX.i15 = bitcast %union.anon* %2624 to i64*
  %2625 = load i32, i32* %ECX.i
  %2626 = zext i32 %2625 to i64
  %2627 = load i64, i64* %PC.i14
  %2628 = add i64 %2627, 3
  store i64 %2628, i64* %PC.i14
  %2629 = shl i64 %2626, 32
  %2630 = ashr exact i64 %2629, 32
  store i64 %2630, i64* %RDX.i15, align 8
  store %struct.Memory* %loadMem_42d1fd, %struct.Memory** %MEMORY
  %loadMem_42d200 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 33
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %2633 to i64*
  %2634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2635 = getelementptr inbounds %struct.GPR, %struct.GPR* %2634, i32 0, i32 1
  %2636 = getelementptr inbounds %struct.Reg, %struct.Reg* %2635, i32 0, i32 0
  %RAX.i13 = bitcast %union.anon* %2636 to i64*
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 7
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %2639 to i64*
  %2640 = load i64, i64* %RAX.i13
  %2641 = load i64, i64* %RDX.i
  %2642 = mul i64 %2641, 4
  %2643 = add i64 %2640, 3048
  %2644 = add i64 %2643, %2642
  %2645 = load i64, i64* %PC.i12
  %2646 = add i64 %2645, 11
  store i64 %2646, i64* %PC.i12
  %2647 = inttoptr i64 %2644 to i32*
  store i32 1, i32* %2647
  store %struct.Memory* %loadMem_42d200, %struct.Memory** %MEMORY
  br label %block_.L_42d20b

block_.L_42d20b:                                  ; preds = %block_.L_42d1f0, %block_42d1d0
  %loadMem_42d20b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %2650 to i64*
  %2651 = load i64, i64* %PC.i11
  %2652 = add i64 %2651, 5
  %2653 = load i64, i64* %PC.i11
  %2654 = add i64 %2653, 5
  store i64 %2654, i64* %PC.i11
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2652, i64* %2655, align 8
  store %struct.Memory* %loadMem_42d20b, %struct.Memory** %MEMORY
  br label %block_.L_42d210

block_.L_42d210:                                  ; preds = %block_.L_42d20b
  %loadMem_42d210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2657 = getelementptr inbounds %struct.GPR, %struct.GPR* %2656, i32 0, i32 33
  %2658 = getelementptr inbounds %struct.Reg, %struct.Reg* %2657, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %2658 to i64*
  %2659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2660 = getelementptr inbounds %struct.GPR, %struct.GPR* %2659, i32 0, i32 1
  %2661 = getelementptr inbounds %struct.Reg, %struct.Reg* %2660, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %2661 to i64*
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 15
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %2664 to i64*
  %2665 = load i64, i64* %RBP.i10
  %2666 = sub i64 %2665, 32
  %2667 = load i64, i64* %PC.i8
  %2668 = add i64 %2667, 3
  store i64 %2668, i64* %PC.i8
  %2669 = inttoptr i64 %2666 to i32*
  %2670 = load i32, i32* %2669
  %2671 = zext i32 %2670 to i64
  store i64 %2671, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_42d210, %struct.Memory** %MEMORY
  %loadMem_42d213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2673 = getelementptr inbounds %struct.GPR, %struct.GPR* %2672, i32 0, i32 33
  %2674 = getelementptr inbounds %struct.Reg, %struct.Reg* %2673, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2674 to i64*
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2676 = getelementptr inbounds %struct.GPR, %struct.GPR* %2675, i32 0, i32 1
  %2677 = getelementptr inbounds %struct.Reg, %struct.Reg* %2676, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2677 to i64*
  %2678 = load i64, i64* %RAX.i
  %2679 = load i64, i64* %PC.i7
  %2680 = add i64 %2679, 3
  store i64 %2680, i64* %PC.i7
  %2681 = trunc i64 %2678 to i32
  %2682 = add i32 1, %2681
  %2683 = zext i32 %2682 to i64
  store i64 %2683, i64* %RAX.i, align 8
  %2684 = icmp ult i32 %2682, %2681
  %2685 = icmp ult i32 %2682, 1
  %2686 = or i1 %2684, %2685
  %2687 = zext i1 %2686 to i8
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2687, i8* %2688, align 1
  %2689 = and i32 %2682, 255
  %2690 = call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2693, i8* %2694, align 1
  %2695 = xor i64 1, %2678
  %2696 = trunc i64 %2695 to i32
  %2697 = xor i32 %2696, %2682
  %2698 = lshr i32 %2697, 4
  %2699 = trunc i32 %2698 to i8
  %2700 = and i8 %2699, 1
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2700, i8* %2701, align 1
  %2702 = icmp eq i32 %2682, 0
  %2703 = zext i1 %2702 to i8
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2703, i8* %2704, align 1
  %2705 = lshr i32 %2682, 31
  %2706 = trunc i32 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2706, i8* %2707, align 1
  %2708 = lshr i32 %2681, 31
  %2709 = xor i32 %2705, %2708
  %2710 = add i32 %2709, %2705
  %2711 = icmp eq i32 %2710, 2
  %2712 = zext i1 %2711 to i8
  %2713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2712, i8* %2713, align 1
  store %struct.Memory* %loadMem_42d213, %struct.Memory** %MEMORY
  %loadMem_42d216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 1
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2719 to i32*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i6
  %2724 = sub i64 %2723, 32
  %2725 = load i32, i32* %EAX.i
  %2726 = zext i32 %2725 to i64
  %2727 = load i64, i64* %PC.i5
  %2728 = add i64 %2727, 3
  store i64 %2728, i64* %PC.i5
  %2729 = inttoptr i64 %2724 to i32*
  store i32 %2725, i32* %2729
  store %struct.Memory* %loadMem_42d216, %struct.Memory** %MEMORY
  %loadMem_42d219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2732 to i64*
  %2733 = load i64, i64* %PC.i4
  %2734 = add i64 %2733, -192
  %2735 = load i64, i64* %PC.i4
  %2736 = add i64 %2735, 5
  store i64 %2736, i64* %PC.i4
  %2737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2734, i64* %2737, align 8
  store %struct.Memory* %loadMem_42d219, %struct.Memory** %MEMORY
  br label %block_.L_42d159

block_.L_42d21e:                                  ; preds = %block_.L_42d159
  %loadMem_42d21e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 15
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %PC.i2
  %2745 = add i64 %2744, 1
  store i64 %2745, i64* %PC.i2
  %2746 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2747 = load i64, i64* %2746, align 8
  %2748 = add i64 %2747, 8
  %2749 = inttoptr i64 %2747 to i64*
  %2750 = load i64, i64* %2749
  store i64 %2750, i64* %RBP.i3, align 8
  store i64 %2748, i64* %2746, align 8
  store %struct.Memory* %loadMem_42d21e, %struct.Memory** %MEMORY
  %loadMem_42d21f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2753 to i64*
  %2754 = load i64, i64* %PC.i1
  %2755 = add i64 %2754, 1
  store i64 %2755, i64* %PC.i1
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2758 = load i64, i64* %2757, align 8
  %2759 = inttoptr i64 %2758 to i64*
  %2760 = load i64, i64* %2759
  store i64 %2760, i64* %2756, align 8
  %2761 = add i64 %2758, 8
  store i64 %2761, i64* %2757, align 8
  store %struct.Memory* %loadMem_42d21f, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_42d21f
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

define %struct.Memory* @routine_movl__0x43c__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1084, i32* %13
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

define %struct.Memory* @routine_movl__0x15__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 400
  %16 = icmp ult i32 %14, 400
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
  %25 = xor i32 %14, 400
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

define %struct.Memory* @routine_jge_.L_42d0b7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rax_1____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x3___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_42d0a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0__0x39d0__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 14800
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %21, align 1
  %22 = and i32 %20, 255
  %23 = call i32 @llvm.ctpop.i32(i32 %22)
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = xor i8 %25, 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %28, align 1
  %29 = icmp eq i32 %20, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1
  %32 = lshr i32 %20, 31
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %20, 31
  %36 = xor i32 %32, %35
  %37 = add i32 %36, %35
  %38 = icmp eq i32 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_42d09f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x14__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x39d0__rcx__rdx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = load i32, i32* %EAX
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* %RCX
  %18 = load i64, i64* %RDX
  %19 = mul i64 %18, 4
  %20 = add i64 %17, 14800
  %21 = add i64 %20, %19
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %21 to i32*
  %25 = load i32, i32* %24
  %26 = sub i32 %15, %25
  %27 = icmp ult i32 %15, %25
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %28, i8* %29, align 1
  %30 = and i32 %26, 255
  %31 = call i32 @llvm.ctpop.i32(i32 %30)
  %32 = trunc i32 %31 to i8
  %33 = and i8 %32, 1
  %34 = xor i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %34, i8* %35, align 1
  %36 = xor i32 %25, %15
  %37 = xor i32 %36, %26
  %38 = lshr i32 %37, 4
  %39 = trunc i32 %38 to i8
  %40 = and i8 %39, 1
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %40, i8* %41, align 1
  %42 = icmp eq i32 %26, 0
  %43 = zext i1 %42 to i8
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %43, i8* %44, align 1
  %45 = lshr i32 %26, 31
  %46 = trunc i32 %45 to i8
  %47 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %46, i8* %47, align 1
  %48 = lshr i32 %15, 31
  %49 = lshr i32 %25, 31
  %50 = xor i32 %49, %48
  %51 = xor i32 %45, %48
  %52 = add i32 %51, %50
  %53 = icmp eq i32 %52, 2
  %54 = zext i1 %53 to i8
  %55 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %54, i8* %55, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42d04c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42d05e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x39d0__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 14800
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jge_.L_42d093(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_42d099(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
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

define %struct.Memory* @routine_jmpq_.L_42d0a4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d0a9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42cff1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_subl_MINUS0x18__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
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

define %struct.Memory* @routine_movq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax____rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %EAX
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %12 to i32*
  store i32 %13, i32* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_42d153(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42d140(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_42d12b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x18__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__0x4__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 4
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 4
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d13b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__0x4__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %12, 4
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 8
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d140(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d145(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d0cd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 28
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

define %struct.Memory* @routine_jg_.L_42d21e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x5740__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 22336
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x18__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RSI
  %13 = load i64, i64* %RBP
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_addl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movslq__esi___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RCX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ESI
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__0x644__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 5
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RCX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 1604
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EDX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0x6830__rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 26672
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to float*
  %23 = load float, float* %22
  %24 = bitcast i8* %14 to float*
  store float %23, float* %24, align 1
  %25 = getelementptr inbounds i8, i8* %14, i64 4
  %26 = bitcast i8* %25 to float*
  store float 0.000000e+00, float* %26, align 1
  %27 = getelementptr inbounds i8, i8* %14, i64 8
  %28 = bitcast i8* %27 to float*
  store float 0.000000e+00, float* %28, align 1
  %29 = getelementptr inbounds i8, i8* %14, i64 12
  %30 = bitcast i8* %29 to float*
  store float 0.000000e+00, float* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x20__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__edx___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x118c__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %14, 4492
  %18 = add i64 %17, %16
  %19 = bitcast %union.vec128_t* %XMM0 to i8*
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 9
  store i64 %21, i64* %PC
  %22 = bitcast i8* %19 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = extractelement <2 x float> %23, i32 0
  %25 = inttoptr i64 %18 to float*
  store float %24, float* %25
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x4650__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 18000
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 1, %9
  %13 = trunc i64 %12 to i32
  store i64 %12, i64* %RDX, align 8
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

define %struct.Memory* @routine_je_.L_42d1f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x18__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 24
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = sub i32 %17, %19
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__0x2__0xbe8__rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 3048
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 2, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d20b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__0xbe8__rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 3048
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 1, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_42d210(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_42d159(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
