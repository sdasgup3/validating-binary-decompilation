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
@seg_400558__eh_frame = internal constant %seg_400558__eh_frame_type <{ [208 x i8] c"\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\07\10\10\00\00\00\1C\00\00\00(\FE\FF\FF+\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\01zR\00\01x\10\01\1B\0C\07\08\90\01\00\00\10\00\00\00\1C\00\00\00,\FE\FF\FF\02\00\00\00\00\00\00\00\14\00\00\000\00\00\00\D0\FE\FF\FF\0B\00\00\00\00\00\00\00\00\00\00\00D\00\00\00H\00\00\00\D0\FE\FF\FFe\00\00\00\00B\0E\10\8F\02B\0E\18\8E\03E\0E \8D\04B\0E(\8C\05H\0E0\86\06H\0E8\83\07M\0E@r\0E8A\0E0A\0E(B\0E B\0E\18B\0E\10B\0E\08\00\10\00\00\00\90\00\00\00\F8\FE\FF\FF\02\00\00\00\00\00\00\00\00\00\00\00" }>

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

declare %struct.Memory* @sub_439140.false_margin(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @compute_primary_domains(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4385d0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4385d0, %struct.Memory** %MEMORY
  %loadMem_4385d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i864 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i864
  %27 = load i64, i64* %PC.i863
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i863
  store i64 %26, i64* %RBP.i865, align 8
  store %struct.Memory* %loadMem_4385d1, %struct.Memory** %MEMORY
  %loadMem_4385d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 3
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RBX.i877 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RBX.i877
  %36 = load i64, i64* %PC.i876
  %37 = add i64 %36, 1
  store i64 %37, i64* %PC.i876
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = add i64 %39, -8
  %41 = inttoptr i64 %40 to i64*
  store i64 %35, i64* %41
  store i64 %40, i64* %38, align 8
  store %struct.Memory* %loadMem_4385d4, %struct.Memory** %MEMORY
  %loadMem_4385d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %43 = getelementptr inbounds %struct.GPR, %struct.GPR* %42, i32 0, i32 33
  %44 = getelementptr inbounds %struct.Reg, %struct.Reg* %43, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %44 to i64*
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %46 = getelementptr inbounds %struct.GPR, %struct.GPR* %45, i32 0, i32 13
  %47 = getelementptr inbounds %struct.Reg, %struct.Reg* %46, i32 0, i32 0
  %RSP.i933 = bitcast %union.anon* %47 to i64*
  %48 = load i64, i64* %RSP.i933
  %49 = load i64, i64* %PC.i932
  %50 = add i64 %49, 7
  store i64 %50, i64* %PC.i932
  %51 = sub i64 %48, 2504
  store i64 %51, i64* %RSP.i933, align 8
  %52 = icmp ult i64 %48, 2504
  %53 = zext i1 %52 to i8
  %54 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %53, i8* %54, align 1
  %55 = trunc i64 %51 to i32
  %56 = and i32 %55, 255
  %57 = call i32 @llvm.ctpop.i32(i32 %56)
  %58 = trunc i32 %57 to i8
  %59 = and i8 %58, 1
  %60 = xor i8 %59, 1
  %61 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %60, i8* %61, align 1
  %62 = xor i64 2504, %48
  %63 = xor i64 %62, %51
  %64 = lshr i64 %63, 4
  %65 = trunc i64 %64 to i8
  %66 = and i8 %65, 1
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %66, i8* %67, align 1
  %68 = icmp eq i64 %51, 0
  %69 = zext i1 %68 to i8
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %69, i8* %70, align 1
  %71 = lshr i64 %51, 63
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %72, i8* %73, align 1
  %74 = lshr i64 %48, 63
  %75 = xor i64 %71, %74
  %76 = add i64 %75, %74
  %77 = icmp eq i64 %76, 2
  %78 = zext i1 %77 to i8
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %78, i8* %79, align 1
  store %struct.Memory* %loadMem_4385d5, %struct.Memory** %MEMORY
  %loadMem_4385dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %81 = getelementptr inbounds %struct.GPR, %struct.GPR* %80, i32 0, i32 33
  %82 = getelementptr inbounds %struct.Reg, %struct.Reg* %81, i32 0, i32 0
  %PC.i929 = bitcast %union.anon* %82 to i64*
  %83 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %84 = getelementptr inbounds %struct.GPR, %struct.GPR* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.Reg, %struct.Reg* %84, i32 0, i32 0
  %EAX.i930 = bitcast %union.anon* %85 to i32*
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %87 = getelementptr inbounds %struct.GPR, %struct.GPR* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.Reg, %struct.Reg* %87, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %88 to i64*
  %89 = load i64, i64* %RAX.i931
  %90 = load i32, i32* %EAX.i930
  %91 = zext i32 %90 to i64
  %92 = load i64, i64* %PC.i929
  %93 = add i64 %92, 2
  store i64 %93, i64* %PC.i929
  %94 = xor i64 %91, %89
  %95 = trunc i64 %94 to i32
  %96 = and i64 %94, 4294967295
  store i64 %96, i64* %RAX.i931, align 8
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %97, align 1
  %98 = and i32 %95, 255
  %99 = call i32 @llvm.ctpop.i32(i32 %98)
  %100 = trunc i32 %99 to i8
  %101 = and i8 %100, 1
  %102 = xor i8 %101, 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %102, i8* %103, align 1
  %104 = icmp eq i32 %95, 0
  %105 = zext i1 %104 to i8
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %105, i8* %106, align 1
  %107 = lshr i32 %95, 31
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %108, i8* %109, align 1
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %110, align 1
  %111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %111, align 1
  store %struct.Memory* %loadMem_4385dc, %struct.Memory** %MEMORY
  %loadMem_4385de = load %struct.Memory*, %struct.Memory** %MEMORY
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 33
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %PC.i927 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 19
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %R9D.i928 = bitcast %union.anon* %117 to i32*
  %118 = bitcast i32* %R9D.i928 to i64*
  %119 = load i64, i64* %PC.i927
  %120 = add i64 %119, 6
  store i64 %120, i64* %PC.i927
  store i64 400, i64* %118, align 8
  store %struct.Memory* %loadMem_4385de, %struct.Memory** %MEMORY
  %loadMem_4385e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i925 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 19
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %R9D.i926 = bitcast %union.anon* %126 to i32*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 21
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %R10D.i = bitcast %union.anon* %129 to i32*
  %130 = bitcast i32* %R10D.i to i64*
  %131 = load i32, i32* %R9D.i926
  %132 = zext i32 %131 to i64
  %133 = load i64, i64* %PC.i925
  %134 = add i64 %133, 3
  store i64 %134, i64* %PC.i925
  %135 = and i64 %132, 4294967295
  store i64 %135, i64* %130, align 8
  store %struct.Memory* %loadMem_4385e4, %struct.Memory** %MEMORY
  %loadMem_4385e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %137 = getelementptr inbounds %struct.GPR, %struct.GPR* %136, i32 0, i32 33
  %138 = getelementptr inbounds %struct.Reg, %struct.Reg* %137, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %138 to i64*
  %139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %140 = getelementptr inbounds %struct.GPR, %struct.GPR* %139, i32 0, i32 15
  %141 = getelementptr inbounds %struct.Reg, %struct.Reg* %140, i32 0, i32 0
  %RBP.i923 = bitcast %union.anon* %141 to i64*
  %142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %143 = getelementptr inbounds %struct.GPR, %struct.GPR* %142, i32 0, i32 23
  %144 = getelementptr inbounds %struct.Reg, %struct.Reg* %143, i32 0, i32 0
  %R11.i924 = bitcast %union.anon* %144 to i64*
  %145 = load i64, i64* %RBP.i923
  %146 = sub i64 %145, 880
  %147 = load i64, i64* %PC.i922
  %148 = add i64 %147, 7
  store i64 %148, i64* %PC.i922
  store i64 %146, i64* %R11.i924, align 8
  store %struct.Memory* %loadMem_4385e7, %struct.Memory** %MEMORY
  %loadMem_4385ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %150 = getelementptr inbounds %struct.GPR, %struct.GPR* %149, i32 0, i32 33
  %151 = getelementptr inbounds %struct.Reg, %struct.Reg* %150, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %151 to i64*
  %152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %153 = getelementptr inbounds %struct.GPR, %struct.GPR* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.Reg, %struct.Reg* %153, i32 0, i32 0
  %RBX.i920 = bitcast %union.anon* %154 to i64*
  %155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %156 = getelementptr inbounds %struct.GPR, %struct.GPR* %155, i32 0, i32 15
  %157 = getelementptr inbounds %struct.Reg, %struct.Reg* %156, i32 0, i32 0
  %RBP.i921 = bitcast %union.anon* %157 to i64*
  %158 = load i64, i64* %RBP.i921
  %159 = sub i64 %158, 480
  %160 = load i64, i64* %PC.i919
  %161 = add i64 %160, 7
  store i64 %161, i64* %PC.i919
  store i64 %159, i64* %RBX.i920, align 8
  store %struct.Memory* %loadMem_4385ee, %struct.Memory** %MEMORY
  %loadMem_4385f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %163 = getelementptr inbounds %struct.GPR, %struct.GPR* %162, i32 0, i32 33
  %164 = getelementptr inbounds %struct.Reg, %struct.Reg* %163, i32 0, i32 0
  %PC.i917 = bitcast %union.anon* %164 to i64*
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 19
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %R9D.i918 = bitcast %union.anon* %167 to i32*
  %168 = bitcast i32* %R9D.i918 to i64*
  %169 = load i64, i64* %PC.i917
  %170 = add i64 %169, 6
  store i64 %170, i64* %PC.i917
  store i64 3, i64* %168, align 8
  store %struct.Memory* %loadMem_4385f5, %struct.Memory** %MEMORY
  %loadMem_4385fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i915 = bitcast %union.anon* %173 to i64*
  %174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %175 = getelementptr inbounds %struct.GPR, %struct.GPR* %174, i32 0, i32 11
  %176 = getelementptr inbounds %struct.Reg, %struct.Reg* %175, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %176 to i32*
  %177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %178 = getelementptr inbounds %struct.GPR, %struct.GPR* %177, i32 0, i32 15
  %179 = getelementptr inbounds %struct.Reg, %struct.Reg* %178, i32 0, i32 0
  %RBP.i916 = bitcast %union.anon* %179 to i64*
  %180 = load i64, i64* %RBP.i916
  %181 = sub i64 %180, 12
  %182 = load i32, i32* %EDI.i
  %183 = zext i32 %182 to i64
  %184 = load i64, i64* %PC.i915
  %185 = add i64 %184, 3
  store i64 %185, i64* %PC.i915
  %186 = inttoptr i64 %181 to i32*
  store i32 %182, i32* %186
  store %struct.Memory* %loadMem_4385fb, %struct.Memory** %MEMORY
  %loadMem_4385fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 33
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %PC.i912 = bitcast %union.anon* %189 to i64*
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %191 = getelementptr inbounds %struct.GPR, %struct.GPR* %190, i32 0, i32 9
  %192 = getelementptr inbounds %struct.Reg, %struct.Reg* %191, i32 0, i32 0
  %RSI.i913 = bitcast %union.anon* %192 to i64*
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %194 = getelementptr inbounds %struct.GPR, %struct.GPR* %193, i32 0, i32 15
  %195 = getelementptr inbounds %struct.Reg, %struct.Reg* %194, i32 0, i32 0
  %RBP.i914 = bitcast %union.anon* %195 to i64*
  %196 = load i64, i64* %RBP.i914
  %197 = sub i64 %196, 24
  %198 = load i64, i64* %RSI.i913
  %199 = load i64, i64* %PC.i912
  %200 = add i64 %199, 4
  store i64 %200, i64* %PC.i912
  %201 = inttoptr i64 %197 to i64*
  store i64 %198, i64* %201
  store %struct.Memory* %loadMem_4385fe, %struct.Memory** %MEMORY
  %loadMem_438602 = load %struct.Memory*, %struct.Memory** %MEMORY
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %203 = getelementptr inbounds %struct.GPR, %struct.GPR* %202, i32 0, i32 33
  %204 = getelementptr inbounds %struct.Reg, %struct.Reg* %203, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %204 to i64*
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %206 = getelementptr inbounds %struct.GPR, %struct.GPR* %205, i32 0, i32 7
  %207 = getelementptr inbounds %struct.Reg, %struct.Reg* %206, i32 0, i32 0
  %RDX.i910 = bitcast %union.anon* %207 to i64*
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %209 = getelementptr inbounds %struct.GPR, %struct.GPR* %208, i32 0, i32 15
  %210 = getelementptr inbounds %struct.Reg, %struct.Reg* %209, i32 0, i32 0
  %RBP.i911 = bitcast %union.anon* %210 to i64*
  %211 = load i64, i64* %RBP.i911
  %212 = sub i64 %211, 32
  %213 = load i64, i64* %RDX.i910
  %214 = load i64, i64* %PC.i909
  %215 = add i64 %214, 4
  store i64 %215, i64* %PC.i909
  %216 = inttoptr i64 %212 to i64*
  store i64 %213, i64* %216
  store %struct.Memory* %loadMem_438602, %struct.Memory** %MEMORY
  %loadMem_438606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i906 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 5
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %RCX.i907 = bitcast %union.anon* %222 to i64*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 15
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RBP.i908 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %RBP.i908
  %227 = sub i64 %226, 40
  %228 = load i64, i64* %RCX.i907
  %229 = load i64, i64* %PC.i906
  %230 = add i64 %229, 4
  store i64 %230, i64* %PC.i906
  %231 = inttoptr i64 %227 to i64*
  store i64 %228, i64* %231
  store %struct.Memory* %loadMem_438606, %struct.Memory** %MEMORY
  %loadMem_43860a = load %struct.Memory*, %struct.Memory** %MEMORY
  %232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %233 = getelementptr inbounds %struct.GPR, %struct.GPR* %232, i32 0, i32 33
  %234 = getelementptr inbounds %struct.Reg, %struct.Reg* %233, i32 0, i32 0
  %PC.i904 = bitcast %union.anon* %234 to i64*
  %235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %236 = getelementptr inbounds %struct.GPR, %struct.GPR* %235, i32 0, i32 17
  %237 = getelementptr inbounds %struct.Reg, %struct.Reg* %236, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %237 to i32*
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 15
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %RBP.i905 = bitcast %union.anon* %240 to i64*
  %241 = load i64, i64* %RBP.i905
  %242 = sub i64 %241, 44
  %243 = load i32, i32* %R8D.i
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC.i904
  %246 = add i64 %245, 4
  store i64 %246, i64* %PC.i904
  %247 = inttoptr i64 %242 to i32*
  store i32 %243, i32* %247
  store %struct.Memory* %loadMem_43860a, %struct.Memory** %MEMORY
  %loadMem_43860e = load %struct.Memory*, %struct.Memory** %MEMORY
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %249 = getelementptr inbounds %struct.GPR, %struct.GPR* %248, i32 0, i32 33
  %250 = getelementptr inbounds %struct.Reg, %struct.Reg* %249, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %250 to i64*
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 19
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %R9D.i902 = bitcast %union.anon* %253 to i32*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 15
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %RBP.i903 = bitcast %union.anon* %256 to i64*
  %257 = bitcast i32* %R9D.i902 to i64*
  %258 = load i32, i32* %R9D.i902
  %259 = zext i32 %258 to i64
  %260 = load i64, i64* %RBP.i903
  %261 = sub i64 %260, 12
  %262 = load i64, i64* %PC.i901
  %263 = add i64 %262, 4
  store i64 %263, i64* %PC.i901
  %264 = inttoptr i64 %261 to i32*
  %265 = load i32, i32* %264
  %266 = sub i32 %258, %265
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %257, align 8
  %268 = icmp ult i32 %258, %265
  %269 = zext i1 %268 to i8
  %270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %269, i8* %270, align 1
  %271 = and i32 %266, 255
  %272 = call i32 @llvm.ctpop.i32(i32 %271)
  %273 = trunc i32 %272 to i8
  %274 = and i8 %273, 1
  %275 = xor i8 %274, 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %275, i8* %276, align 1
  %277 = xor i32 %265, %258
  %278 = xor i32 %277, %266
  %279 = lshr i32 %278, 4
  %280 = trunc i32 %279 to i8
  %281 = and i8 %280, 1
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %281, i8* %282, align 1
  %283 = icmp eq i32 %266, 0
  %284 = zext i1 %283 to i8
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %284, i8* %285, align 1
  %286 = lshr i32 %266, 31
  %287 = trunc i32 %286 to i8
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %287, i8* %288, align 1
  %289 = lshr i32 %258, 31
  %290 = lshr i32 %265, 31
  %291 = xor i32 %290, %289
  %292 = xor i32 %286, %289
  %293 = add i32 %292, %291
  %294 = icmp eq i32 %293, 2
  %295 = zext i1 %294 to i8
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %295, i8* %296, align 1
  store %struct.Memory* %loadMem_43860e, %struct.Memory** %MEMORY
  %loadMem_438612 = load %struct.Memory*, %struct.Memory** %MEMORY
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %298 = getelementptr inbounds %struct.GPR, %struct.GPR* %297, i32 0, i32 33
  %299 = getelementptr inbounds %struct.Reg, %struct.Reg* %298, i32 0, i32 0
  %PC.i899 = bitcast %union.anon* %299 to i64*
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %301 = getelementptr inbounds %struct.GPR, %struct.GPR* %300, i32 0, i32 19
  %302 = getelementptr inbounds %struct.Reg, %struct.Reg* %301, i32 0, i32 0
  %R9D.i = bitcast %union.anon* %302 to i32*
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %304 = getelementptr inbounds %struct.GPR, %struct.GPR* %303, i32 0, i32 15
  %305 = getelementptr inbounds %struct.Reg, %struct.Reg* %304, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %305 to i64*
  %306 = load i64, i64* %RBP.i900
  %307 = sub i64 %306, 48
  %308 = load i32, i32* %R9D.i
  %309 = zext i32 %308 to i64
  %310 = load i64, i64* %PC.i899
  %311 = add i64 %310, 4
  store i64 %311, i64* %PC.i899
  %312 = inttoptr i64 %307 to i32*
  store i32 %308, i32* %312
  store %struct.Memory* %loadMem_438612, %struct.Memory** %MEMORY
  %loadMem_438616 = load %struct.Memory*, %struct.Memory** %MEMORY
  %313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %314 = getelementptr inbounds %struct.GPR, %struct.GPR* %313, i32 0, i32 33
  %315 = getelementptr inbounds %struct.Reg, %struct.Reg* %314, i32 0, i32 0
  %PC.i897 = bitcast %union.anon* %315 to i64*
  %316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %317 = getelementptr inbounds %struct.GPR, %struct.GPR* %316, i32 0, i32 15
  %318 = getelementptr inbounds %struct.Reg, %struct.Reg* %317, i32 0, i32 0
  %RBP.i898 = bitcast %union.anon* %318 to i64*
  %319 = load i64, i64* %RBP.i898
  %320 = sub i64 %319, 2484
  %321 = load i64, i64* %PC.i897
  %322 = add i64 %321, 10
  store i64 %322, i64* %PC.i897
  %323 = inttoptr i64 %320 to i32*
  store i32 0, i32* %323
  store %struct.Memory* %loadMem_438616, %struct.Memory** %MEMORY
  %loadMem_438620 = load %struct.Memory*, %struct.Memory** %MEMORY
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %325 = getelementptr inbounds %struct.GPR, %struct.GPR* %324, i32 0, i32 33
  %326 = getelementptr inbounds %struct.Reg, %struct.Reg* %325, i32 0, i32 0
  %PC.i895 = bitcast %union.anon* %326 to i64*
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %328 = getelementptr inbounds %struct.GPR, %struct.GPR* %327, i32 0, i32 15
  %329 = getelementptr inbounds %struct.Reg, %struct.Reg* %328, i32 0, i32 0
  %RBP.i896 = bitcast %union.anon* %329 to i64*
  %330 = load i64, i64* %RBP.i896
  %331 = sub i64 %330, 2488
  %332 = load i64, i64* %PC.i895
  %333 = add i64 %332, 10
  store i64 %333, i64* %PC.i895
  %334 = inttoptr i64 %331 to i32*
  store i32 0, i32* %334
  store %struct.Memory* %loadMem_438620, %struct.Memory** %MEMORY
  %loadMem_43862a = load %struct.Memory*, %struct.Memory** %MEMORY
  %335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %336 = getelementptr inbounds %struct.GPR, %struct.GPR* %335, i32 0, i32 33
  %337 = getelementptr inbounds %struct.Reg, %struct.Reg* %336, i32 0, i32 0
  %PC.i892 = bitcast %union.anon* %337 to i64*
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %339 = getelementptr inbounds %struct.GPR, %struct.GPR* %338, i32 0, i32 3
  %340 = getelementptr inbounds %struct.Reg, %struct.Reg* %339, i32 0, i32 0
  %RBX.i893 = bitcast %union.anon* %340 to i64*
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %342 = getelementptr inbounds %struct.GPR, %struct.GPR* %341, i32 0, i32 11
  %343 = getelementptr inbounds %struct.Reg, %struct.Reg* %342, i32 0, i32 0
  %RDI.i894 = bitcast %union.anon* %343 to i64*
  %344 = load i64, i64* %RBX.i893
  %345 = load i64, i64* %PC.i892
  %346 = add i64 %345, 3
  store i64 %346, i64* %PC.i892
  store i64 %344, i64* %RDI.i894, align 8
  store %struct.Memory* %loadMem_43862a, %struct.Memory** %MEMORY
  %loadMem_43862d = load %struct.Memory*, %struct.Memory** %MEMORY
  %347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %348 = getelementptr inbounds %struct.GPR, %struct.GPR* %347, i32 0, i32 33
  %349 = getelementptr inbounds %struct.Reg, %struct.Reg* %348, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %349 to i64*
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %351 = getelementptr inbounds %struct.GPR, %struct.GPR* %350, i32 0, i32 1
  %352 = getelementptr inbounds %struct.Reg, %struct.Reg* %351, i32 0, i32 0
  %EAX.i890 = bitcast %union.anon* %352 to i32*
  %353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %354 = getelementptr inbounds %struct.GPR, %struct.GPR* %353, i32 0, i32 9
  %355 = getelementptr inbounds %struct.Reg, %struct.Reg* %354, i32 0, i32 0
  %RSI.i891 = bitcast %union.anon* %355 to i64*
  %356 = load i32, i32* %EAX.i890
  %357 = zext i32 %356 to i64
  %358 = load i64, i64* %PC.i889
  %359 = add i64 %358, 2
  store i64 %359, i64* %PC.i889
  %360 = and i64 %357, 4294967295
  store i64 %360, i64* %RSI.i891, align 8
  store %struct.Memory* %loadMem_43862d, %struct.Memory** %MEMORY
  %loadMem_43862f = load %struct.Memory*, %struct.Memory** %MEMORY
  %361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %362 = getelementptr inbounds %struct.GPR, %struct.GPR* %361, i32 0, i32 33
  %363 = getelementptr inbounds %struct.Reg, %struct.Reg* %362, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %363 to i64*
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 7
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %RDX.i887 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 21
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %R10.i888 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %R10.i888
  %371 = load i64, i64* %PC.i886
  %372 = add i64 %371, 3
  store i64 %372, i64* %PC.i886
  store i64 %370, i64* %RDX.i887, align 8
  store %struct.Memory* %loadMem_43862f, %struct.Memory** %MEMORY
  %loadMem_438632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %374 = getelementptr inbounds %struct.GPR, %struct.GPR* %373, i32 0, i32 33
  %375 = getelementptr inbounds %struct.Reg, %struct.Reg* %374, i32 0, i32 0
  %PC.i884 = bitcast %union.anon* %375 to i64*
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 15
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %RBP.i885 = bitcast %union.anon* %378 to i64*
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %380 = getelementptr inbounds %struct.GPR, %struct.GPR* %379, i32 0, i32 21
  %381 = getelementptr inbounds %struct.Reg, %struct.Reg* %380, i32 0, i32 0
  %R10.i = bitcast %union.anon* %381 to i64*
  %382 = load i64, i64* %RBP.i885
  %383 = sub i64 %382, 2496
  %384 = load i64, i64* %R10.i
  %385 = load i64, i64* %PC.i884
  %386 = add i64 %385, 7
  store i64 %386, i64* %PC.i884
  %387 = inttoptr i64 %383 to i64*
  store i64 %384, i64* %387
  store %struct.Memory* %loadMem_438632, %struct.Memory** %MEMORY
  %loadMem_438639 = load %struct.Memory*, %struct.Memory** %MEMORY
  %388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %389 = getelementptr inbounds %struct.GPR, %struct.GPR* %388, i32 0, i32 33
  %390 = getelementptr inbounds %struct.Reg, %struct.Reg* %389, i32 0, i32 0
  %PC.i882 = bitcast %union.anon* %390 to i64*
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 15
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %RBP.i883 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 23
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %R11.i = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i883
  %398 = sub i64 %397, 2504
  %399 = load i64, i64* %R11.i
  %400 = load i64, i64* %PC.i882
  %401 = add i64 %400, 7
  store i64 %401, i64* %PC.i882
  %402 = inttoptr i64 %398 to i64*
  store i64 %399, i64* %402
  store %struct.Memory* %loadMem_438639, %struct.Memory** %MEMORY
  %loadMem_438640 = load %struct.Memory*, %struct.Memory** %MEMORY
  %403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %404 = getelementptr inbounds %struct.GPR, %struct.GPR* %403, i32 0, i32 33
  %405 = getelementptr inbounds %struct.Reg, %struct.Reg* %404, i32 0, i32 0
  %PC.i879 = bitcast %union.anon* %405 to i64*
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 1
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %EAX.i880 = bitcast %union.anon* %408 to i32*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 15
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %RBP.i881 = bitcast %union.anon* %411 to i64*
  %412 = load i64, i64* %RBP.i881
  %413 = sub i64 %412, 2508
  %414 = load i32, i32* %EAX.i880
  %415 = zext i32 %414 to i64
  %416 = load i64, i64* %PC.i879
  %417 = add i64 %416, 6
  store i64 %417, i64* %PC.i879
  %418 = inttoptr i64 %413 to i32*
  store i32 %414, i32* %418
  store %struct.Memory* %loadMem_438640, %struct.Memory** %MEMORY
  %loadMem1_438646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %420 = getelementptr inbounds %struct.GPR, %struct.GPR* %419, i32 0, i32 33
  %421 = getelementptr inbounds %struct.Reg, %struct.Reg* %420, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %421 to i64*
  %422 = load i64, i64* %PC.i878
  %423 = add i64 %422, -226774
  %424 = load i64, i64* %PC.i878
  %425 = add i64 %424, 5
  %426 = load i64, i64* %PC.i878
  %427 = add i64 %426, 5
  store i64 %427, i64* %PC.i878
  %428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = add i64 %429, -8
  %431 = inttoptr i64 %430 to i64*
  store i64 %425, i64* %431
  store i64 %430, i64* %428, align 8
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %423, i64* %432, align 8
  store %struct.Memory* %loadMem1_438646, %struct.Memory** %MEMORY
  %loadMem2_438646 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_438646 = load i64, i64* %3
  %433 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_438646)
  store %struct.Memory* %433, %struct.Memory** %MEMORY
  %loadMem_43864b = load %struct.Memory*, %struct.Memory** %MEMORY
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %435 = getelementptr inbounds %struct.GPR, %struct.GPR* %434, i32 0, i32 33
  %436 = getelementptr inbounds %struct.Reg, %struct.Reg* %435, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %436 to i64*
  %437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %438 = getelementptr inbounds %struct.GPR, %struct.GPR* %437, i32 0, i32 11
  %439 = getelementptr inbounds %struct.Reg, %struct.Reg* %438, i32 0, i32 0
  %RDI.i874 = bitcast %union.anon* %439 to i64*
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %441 = getelementptr inbounds %struct.GPR, %struct.GPR* %440, i32 0, i32 15
  %442 = getelementptr inbounds %struct.Reg, %struct.Reg* %441, i32 0, i32 0
  %RBP.i875 = bitcast %union.anon* %442 to i64*
  %443 = load i64, i64* %RBP.i875
  %444 = sub i64 %443, 2504
  %445 = load i64, i64* %PC.i873
  %446 = add i64 %445, 7
  store i64 %446, i64* %PC.i873
  %447 = inttoptr i64 %444 to i64*
  %448 = load i64, i64* %447
  store i64 %448, i64* %RDI.i874, align 8
  store %struct.Memory* %loadMem_43864b, %struct.Memory** %MEMORY
  %loadMem_438652 = load %struct.Memory*, %struct.Memory** %MEMORY
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %450 = getelementptr inbounds %struct.GPR, %struct.GPR* %449, i32 0, i32 33
  %451 = getelementptr inbounds %struct.Reg, %struct.Reg* %450, i32 0, i32 0
  %PC.i870 = bitcast %union.anon* %451 to i64*
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %453 = getelementptr inbounds %struct.GPR, %struct.GPR* %452, i32 0, i32 9
  %454 = getelementptr inbounds %struct.Reg, %struct.Reg* %453, i32 0, i32 0
  %RSI.i871 = bitcast %union.anon* %454 to i64*
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 15
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %RBP.i872 = bitcast %union.anon* %457 to i64*
  %458 = load i64, i64* %RBP.i872
  %459 = sub i64 %458, 2508
  %460 = load i64, i64* %PC.i870
  %461 = add i64 %460, 6
  store i64 %461, i64* %PC.i870
  %462 = inttoptr i64 %459 to i32*
  %463 = load i32, i32* %462
  %464 = zext i32 %463 to i64
  store i64 %464, i64* %RSI.i871, align 8
  store %struct.Memory* %loadMem_438652, %struct.Memory** %MEMORY
  %loadMem_438658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %466 = getelementptr inbounds %struct.GPR, %struct.GPR* %465, i32 0, i32 33
  %467 = getelementptr inbounds %struct.Reg, %struct.Reg* %466, i32 0, i32 0
  %PC.i867 = bitcast %union.anon* %467 to i64*
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %469 = getelementptr inbounds %struct.GPR, %struct.GPR* %468, i32 0, i32 7
  %470 = getelementptr inbounds %struct.Reg, %struct.Reg* %469, i32 0, i32 0
  %RDX.i868 = bitcast %union.anon* %470 to i64*
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 15
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %RBP.i869 = bitcast %union.anon* %473 to i64*
  %474 = load i64, i64* %RBP.i869
  %475 = sub i64 %474, 2496
  %476 = load i64, i64* %PC.i867
  %477 = add i64 %476, 7
  store i64 %477, i64* %PC.i867
  %478 = inttoptr i64 %475 to i64*
  %479 = load i64, i64* %478
  store i64 %479, i64* %RDX.i868, align 8
  store %struct.Memory* %loadMem_438658, %struct.Memory** %MEMORY
  %loadMem1_43865f = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %482 to i64*
  %483 = load i64, i64* %PC.i866
  %484 = add i64 %483, -226799
  %485 = load i64, i64* %PC.i866
  %486 = add i64 %485, 5
  %487 = load i64, i64* %PC.i866
  %488 = add i64 %487, 5
  store i64 %488, i64* %PC.i866
  %489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %490 = load i64, i64* %489, align 8
  %491 = add i64 %490, -8
  %492 = inttoptr i64 %491 to i64*
  store i64 %486, i64* %492
  store i64 %491, i64* %489, align 8
  %493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %484, i64* %493, align 8
  store %struct.Memory* %loadMem1_43865f, %struct.Memory** %MEMORY
  %loadMem2_43865f = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_43865f = load i64, i64* %3
  %494 = call %struct.Memory* @__remill_function_call(%struct.State* %0, i64 ptrtoint (i64 (i64, i64, i64)* @memset to i64), %struct.Memory* %loadMem2_43865f)
  store %struct.Memory* %494, %struct.Memory** %MEMORY
  %loadMem_438664 = load %struct.Memory*, %struct.Memory** %MEMORY
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 33
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %PC.i861 = bitcast %union.anon* %497 to i64*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i862 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i862
  %502 = sub i64 %501, 64
  %503 = load i64, i64* %PC.i861
  %504 = add i64 %503, 7
  store i64 %504, i64* %PC.i861
  %505 = inttoptr i64 %502 to i32*
  store i32 21, i32* %505
  store %struct.Memory* %loadMem_438664, %struct.Memory** %MEMORY
  br label %block_.L_43866b

block_.L_43866b:                                  ; preds = %block_.L_4388d8, %entry
  %loadMem_43866b = load %struct.Memory*, %struct.Memory** %MEMORY
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 33
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %PC.i859 = bitcast %union.anon* %508 to i64*
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %510 = getelementptr inbounds %struct.GPR, %struct.GPR* %509, i32 0, i32 15
  %511 = getelementptr inbounds %struct.Reg, %struct.Reg* %510, i32 0, i32 0
  %RBP.i860 = bitcast %union.anon* %511 to i64*
  %512 = load i64, i64* %RBP.i860
  %513 = sub i64 %512, 64
  %514 = load i64, i64* %PC.i859
  %515 = add i64 %514, 7
  store i64 %515, i64* %PC.i859
  %516 = inttoptr i64 %513 to i32*
  %517 = load i32, i32* %516
  %518 = sub i32 %517, 400
  %519 = icmp ult i32 %517, 400
  %520 = zext i1 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %520, i8* %521, align 1
  %522 = and i32 %518, 255
  %523 = call i32 @llvm.ctpop.i32(i32 %522)
  %524 = trunc i32 %523 to i8
  %525 = and i8 %524, 1
  %526 = xor i8 %525, 1
  %527 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %526, i8* %527, align 1
  %528 = xor i32 %517, 400
  %529 = xor i32 %528, %518
  %530 = lshr i32 %529, 4
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %532, i8* %533, align 1
  %534 = icmp eq i32 %518, 0
  %535 = zext i1 %534 to i8
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %535, i8* %536, align 1
  %537 = lshr i32 %518, 31
  %538 = trunc i32 %537 to i8
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %538, i8* %539, align 1
  %540 = lshr i32 %517, 31
  %541 = xor i32 %537, %540
  %542 = add i32 %541, %540
  %543 = icmp eq i32 %542, 2
  %544 = zext i1 %543 to i8
  %545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %544, i8* %545, align 1
  store %struct.Memory* %loadMem_43866b, %struct.Memory** %MEMORY
  %loadMem_438672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i858 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %PC.i858
  %550 = add i64 %549, 628
  %551 = load i64, i64* %PC.i858
  %552 = add i64 %551, 6
  %553 = load i64, i64* %PC.i858
  %554 = add i64 %553, 6
  store i64 %554, i64* %PC.i858
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %556 = load i8, i8* %555, align 1
  %557 = icmp ne i8 %556, 0
  %558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %559 = load i8, i8* %558, align 1
  %560 = icmp ne i8 %559, 0
  %561 = xor i1 %557, %560
  %562 = xor i1 %561, true
  %563 = zext i1 %562 to i8
  store i8 %563, i8* %BRANCH_TAKEN, align 1
  %564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %565 = select i1 %561, i64 %552, i64 %550
  store i64 %565, i64* %564, align 8
  store %struct.Memory* %loadMem_438672, %struct.Memory** %MEMORY
  %loadBr_438672 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438672 = icmp eq i8 %loadBr_438672, 1
  br i1 %cmpBr_438672, label %block_.L_4388e6, label %block_438678

block_438678:                                     ; preds = %block_.L_43866b
  %loadMem_438678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 33
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 1
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RAX.i856 = bitcast %union.anon* %571 to i64*
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 15
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %RBP.i857 = bitcast %union.anon* %574 to i64*
  %575 = load i64, i64* %RBP.i857
  %576 = sub i64 %575, 64
  %577 = load i64, i64* %PC.i855
  %578 = add i64 %577, 4
  store i64 %578, i64* %PC.i855
  %579 = inttoptr i64 %576 to i32*
  %580 = load i32, i32* %579
  %581 = sext i32 %580 to i64
  store i64 %581, i64* %RAX.i856, align 8
  store %struct.Memory* %loadMem_438678, %struct.Memory** %MEMORY
  %loadMem_43867c = load %struct.Memory*, %struct.Memory** %MEMORY
  %582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %583 = getelementptr inbounds %struct.GPR, %struct.GPR* %582, i32 0, i32 33
  %584 = getelementptr inbounds %struct.Reg, %struct.Reg* %583, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %584 to i64*
  %585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %586 = getelementptr inbounds %struct.GPR, %struct.GPR* %585, i32 0, i32 1
  %587 = getelementptr inbounds %struct.Reg, %struct.Reg* %586, i32 0, i32 0
  %RAX.i853 = bitcast %union.anon* %587 to i64*
  %588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %589 = getelementptr inbounds %struct.GPR, %struct.GPR* %588, i32 0, i32 5
  %590 = getelementptr inbounds %struct.Reg, %struct.Reg* %589, i32 0, i32 0
  %RCX.i854 = bitcast %union.anon* %590 to i64*
  %591 = load i64, i64* %RAX.i853
  %592 = add i64 %591, 12099168
  %593 = load i64, i64* %PC.i852
  %594 = add i64 %593, 8
  store i64 %594, i64* %PC.i852
  %595 = inttoptr i64 %592 to i8*
  %596 = load i8, i8* %595
  %597 = zext i8 %596 to i64
  store i64 %597, i64* %RCX.i854, align 8
  store %struct.Memory* %loadMem_43867c, %struct.Memory** %MEMORY
  %loadMem_438684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %599 = getelementptr inbounds %struct.GPR, %struct.GPR* %598, i32 0, i32 33
  %600 = getelementptr inbounds %struct.Reg, %struct.Reg* %599, i32 0, i32 0
  %PC.i850 = bitcast %union.anon* %600 to i64*
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 5
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %ECX.i851 = bitcast %union.anon* %603 to i32*
  %604 = load i32, i32* %ECX.i851
  %605 = zext i32 %604 to i64
  %606 = load i64, i64* %PC.i850
  %607 = add i64 %606, 3
  store i64 %607, i64* %PC.i850
  %608 = sub i32 %604, 3
  %609 = icmp ult i32 %604, 3
  %610 = zext i1 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %610, i8* %611, align 1
  %612 = and i32 %608, 255
  %613 = call i32 @llvm.ctpop.i32(i32 %612)
  %614 = trunc i32 %613 to i8
  %615 = and i8 %614, 1
  %616 = xor i8 %615, 1
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %616, i8* %617, align 1
  %618 = xor i64 3, %605
  %619 = trunc i64 %618 to i32
  %620 = xor i32 %619, %608
  %621 = lshr i32 %620, 4
  %622 = trunc i32 %621 to i8
  %623 = and i8 %622, 1
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %623, i8* %624, align 1
  %625 = icmp eq i32 %608, 0
  %626 = zext i1 %625 to i8
  %627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %626, i8* %627, align 1
  %628 = lshr i32 %608, 31
  %629 = trunc i32 %628 to i8
  %630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %629, i8* %630, align 1
  %631 = lshr i32 %604, 31
  %632 = xor i32 %628, %631
  %633 = add i32 %632, %631
  %634 = icmp eq i32 %633, 2
  %635 = zext i1 %634 to i8
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %635, i8* %636, align 1
  store %struct.Memory* %loadMem_438684, %struct.Memory** %MEMORY
  %loadMem_438687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %638 = getelementptr inbounds %struct.GPR, %struct.GPR* %637, i32 0, i32 33
  %639 = getelementptr inbounds %struct.Reg, %struct.Reg* %638, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %639 to i64*
  %640 = load i64, i64* %PC.i849
  %641 = add i64 %640, 11
  %642 = load i64, i64* %PC.i849
  %643 = add i64 %642, 6
  %644 = load i64, i64* %PC.i849
  %645 = add i64 %644, 6
  store i64 %645, i64* %PC.i849
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %647 = load i8, i8* %646, align 1
  %648 = icmp eq i8 %647, 0
  %649 = zext i1 %648 to i8
  store i8 %649, i8* %BRANCH_TAKEN, align 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %651 = select i1 %648, i64 %641, i64 %643
  store i64 %651, i64* %650, align 8
  store %struct.Memory* %loadMem_438687, %struct.Memory** %MEMORY
  %loadBr_438687 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438687 = icmp eq i8 %loadBr_438687, 1
  br i1 %cmpBr_438687, label %block_.L_438692, label %block_43868d

block_43868d:                                     ; preds = %block_438678
  %loadMem_43868d = load %struct.Memory*, %struct.Memory** %MEMORY
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %653 = getelementptr inbounds %struct.GPR, %struct.GPR* %652, i32 0, i32 33
  %654 = getelementptr inbounds %struct.Reg, %struct.Reg* %653, i32 0, i32 0
  %PC.i848 = bitcast %union.anon* %654 to i64*
  %655 = load i64, i64* %PC.i848
  %656 = add i64 %655, 587
  %657 = load i64, i64* %PC.i848
  %658 = add i64 %657, 5
  store i64 %658, i64* %PC.i848
  %659 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %656, i64* %659, align 8
  store %struct.Memory* %loadMem_43868d, %struct.Memory** %MEMORY
  br label %block_.L_4388d8

block_.L_438692:                                  ; preds = %block_438678
  %loadMem_438692 = load %struct.Memory*, %struct.Memory** %MEMORY
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 33
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %PC.i845 = bitcast %union.anon* %662 to i64*
  %663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %664 = getelementptr inbounds %struct.GPR, %struct.GPR* %663, i32 0, i32 1
  %665 = getelementptr inbounds %struct.Reg, %struct.Reg* %664, i32 0, i32 0
  %RAX.i846 = bitcast %union.anon* %665 to i64*
  %666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %667 = getelementptr inbounds %struct.GPR, %struct.GPR* %666, i32 0, i32 15
  %668 = getelementptr inbounds %struct.Reg, %struct.Reg* %667, i32 0, i32 0
  %RBP.i847 = bitcast %union.anon* %668 to i64*
  %669 = load i64, i64* %RBP.i847
  %670 = sub i64 %669, 32
  %671 = load i64, i64* %PC.i845
  %672 = add i64 %671, 4
  store i64 %672, i64* %PC.i845
  %673 = inttoptr i64 %670 to i64*
  %674 = load i64, i64* %673
  store i64 %674, i64* %RAX.i846, align 8
  store %struct.Memory* %loadMem_438692, %struct.Memory** %MEMORY
  %loadMem_438696 = load %struct.Memory*, %struct.Memory** %MEMORY
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %676 = getelementptr inbounds %struct.GPR, %struct.GPR* %675, i32 0, i32 33
  %677 = getelementptr inbounds %struct.Reg, %struct.Reg* %676, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %677 to i64*
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %679 = getelementptr inbounds %struct.GPR, %struct.GPR* %678, i32 0, i32 5
  %680 = getelementptr inbounds %struct.Reg, %struct.Reg* %679, i32 0, i32 0
  %RCX.i843 = bitcast %union.anon* %680 to i64*
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 15
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %RBP.i844 = bitcast %union.anon* %683 to i64*
  %684 = load i64, i64* %RBP.i844
  %685 = sub i64 %684, 64
  %686 = load i64, i64* %PC.i842
  %687 = add i64 %686, 4
  store i64 %687, i64* %PC.i842
  %688 = inttoptr i64 %685 to i32*
  %689 = load i32, i32* %688
  %690 = sext i32 %689 to i64
  store i64 %690, i64* %RCX.i843, align 8
  store %struct.Memory* %loadMem_438696, %struct.Memory** %MEMORY
  %loadMem_43869a = load %struct.Memory*, %struct.Memory** %MEMORY
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 33
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %PC.i839 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 1
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RAX.i840 = bitcast %union.anon* %696 to i64*
  %697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %698 = getelementptr inbounds %struct.GPR, %struct.GPR* %697, i32 0, i32 5
  %699 = getelementptr inbounds %struct.Reg, %struct.Reg* %698, i32 0, i32 0
  %RCX.i841 = bitcast %union.anon* %699 to i64*
  %700 = load i64, i64* %RAX.i840
  %701 = load i64, i64* %RCX.i841
  %702 = mul i64 %701, 4
  %703 = add i64 %702, %700
  %704 = load i64, i64* %PC.i839
  %705 = add i64 %704, 4
  store i64 %705, i64* %PC.i839
  %706 = inttoptr i64 %703 to i32*
  %707 = load i32, i32* %706
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %708, align 1
  %709 = and i32 %707, 255
  %710 = call i32 @llvm.ctpop.i32(i32 %709)
  %711 = trunc i32 %710 to i8
  %712 = and i8 %711, 1
  %713 = xor i8 %712, 1
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %713, i8* %714, align 1
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %715, align 1
  %716 = icmp eq i32 %707, 0
  %717 = zext i1 %716 to i8
  %718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %717, i8* %718, align 1
  %719 = lshr i32 %707, 31
  %720 = trunc i32 %719 to i8
  %721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %720, i8* %721, align 1
  %722 = lshr i32 %707, 31
  %723 = xor i32 %719, %722
  %724 = add i32 %723, %722
  %725 = icmp eq i32 %724, 2
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %726, i8* %727, align 1
  store %struct.Memory* %loadMem_43869a, %struct.Memory** %MEMORY
  %loadMem_43869e = load %struct.Memory*, %struct.Memory** %MEMORY
  %728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %729 = getelementptr inbounds %struct.GPR, %struct.GPR* %728, i32 0, i32 33
  %730 = getelementptr inbounds %struct.Reg, %struct.Reg* %729, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %730 to i64*
  %731 = load i64, i64* %PC.i838
  %732 = add i64 %731, 76
  %733 = load i64, i64* %PC.i838
  %734 = add i64 %733, 6
  %735 = load i64, i64* %PC.i838
  %736 = add i64 %735, 6
  store i64 %736, i64* %PC.i838
  %737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %738 = load i8, i8* %737, align 1
  store i8 %738, i8* %BRANCH_TAKEN, align 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %740 = icmp ne i8 %738, 0
  %741 = select i1 %740, i64 %732, i64 %734
  store i64 %741, i64* %739, align 8
  store %struct.Memory* %loadMem_43869e, %struct.Memory** %MEMORY
  %loadBr_43869e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43869e = icmp eq i8 %loadBr_43869e, 1
  br i1 %cmpBr_43869e, label %block_.L_4386ea, label %block_4386a4

block_4386a4:                                     ; preds = %block_.L_438692
  %loadMem_4386a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %743 = getelementptr inbounds %struct.GPR, %struct.GPR* %742, i32 0, i32 33
  %744 = getelementptr inbounds %struct.Reg, %struct.Reg* %743, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %744 to i64*
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %746 = getelementptr inbounds %struct.GPR, %struct.GPR* %745, i32 0, i32 1
  %747 = getelementptr inbounds %struct.Reg, %struct.Reg* %746, i32 0, i32 0
  %RAX.i836 = bitcast %union.anon* %747 to i64*
  %748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %749 = getelementptr inbounds %struct.GPR, %struct.GPR* %748, i32 0, i32 15
  %750 = getelementptr inbounds %struct.Reg, %struct.Reg* %749, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %750 to i64*
  %751 = load i64, i64* %RBP.i837
  %752 = sub i64 %751, 64
  %753 = load i64, i64* %PC.i835
  %754 = add i64 %753, 4
  store i64 %754, i64* %PC.i835
  %755 = inttoptr i64 %752 to i32*
  %756 = load i32, i32* %755
  %757 = sext i32 %756 to i64
  store i64 %757, i64* %RAX.i836, align 8
  store %struct.Memory* %loadMem_4386a4, %struct.Memory** %MEMORY
  %loadMem_4386a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %759 = getelementptr inbounds %struct.GPR, %struct.GPR* %758, i32 0, i32 33
  %760 = getelementptr inbounds %struct.Reg, %struct.Reg* %759, i32 0, i32 0
  %PC.i832 = bitcast %union.anon* %760 to i64*
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %762 = getelementptr inbounds %struct.GPR, %struct.GPR* %761, i32 0, i32 1
  %763 = getelementptr inbounds %struct.Reg, %struct.Reg* %762, i32 0, i32 0
  %RAX.i833 = bitcast %union.anon* %763 to i64*
  %764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %765 = getelementptr inbounds %struct.GPR, %struct.GPR* %764, i32 0, i32 5
  %766 = getelementptr inbounds %struct.Reg, %struct.Reg* %765, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %766 to i64*
  %767 = load i64, i64* %RAX.i833
  %768 = add i64 %767, 12099168
  %769 = load i64, i64* %PC.i832
  %770 = add i64 %769, 8
  store i64 %770, i64* %PC.i832
  %771 = inttoptr i64 %768 to i8*
  %772 = load i8, i8* %771
  %773 = zext i8 %772 to i64
  store i64 %773, i64* %RCX.i834, align 8
  store %struct.Memory* %loadMem_4386a8, %struct.Memory** %MEMORY
  %loadMem_4386b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i829 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 5
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %ECX.i830 = bitcast %union.anon* %779 to i32*
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %781 = getelementptr inbounds %struct.GPR, %struct.GPR* %780, i32 0, i32 15
  %782 = getelementptr inbounds %struct.Reg, %struct.Reg* %781, i32 0, i32 0
  %RBP.i831 = bitcast %union.anon* %782 to i64*
  %783 = load i32, i32* %ECX.i830
  %784 = zext i32 %783 to i64
  %785 = load i64, i64* %RBP.i831
  %786 = sub i64 %785, 12
  %787 = load i64, i64* %PC.i829
  %788 = add i64 %787, 3
  store i64 %788, i64* %PC.i829
  %789 = inttoptr i64 %786 to i32*
  %790 = load i32, i32* %789
  %791 = sub i32 %783, %790
  %792 = icmp ult i32 %783, %790
  %793 = zext i1 %792 to i8
  %794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %793, i8* %794, align 1
  %795 = and i32 %791, 255
  %796 = call i32 @llvm.ctpop.i32(i32 %795)
  %797 = trunc i32 %796 to i8
  %798 = and i8 %797, 1
  %799 = xor i8 %798, 1
  %800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %799, i8* %800, align 1
  %801 = xor i32 %790, %783
  %802 = xor i32 %801, %791
  %803 = lshr i32 %802, 4
  %804 = trunc i32 %803 to i8
  %805 = and i8 %804, 1
  %806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %805, i8* %806, align 1
  %807 = icmp eq i32 %791, 0
  %808 = zext i1 %807 to i8
  %809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %808, i8* %809, align 1
  %810 = lshr i32 %791, 31
  %811 = trunc i32 %810 to i8
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %811, i8* %812, align 1
  %813 = lshr i32 %783, 31
  %814 = lshr i32 %790, 31
  %815 = xor i32 %814, %813
  %816 = xor i32 %810, %813
  %817 = add i32 %816, %815
  %818 = icmp eq i32 %817, 2
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %819, i8* %820, align 1
  store %struct.Memory* %loadMem_4386b0, %struct.Memory** %MEMORY
  %loadMem_4386b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %822 = getelementptr inbounds %struct.GPR, %struct.GPR* %821, i32 0, i32 33
  %823 = getelementptr inbounds %struct.Reg, %struct.Reg* %822, i32 0, i32 0
  %PC.i828 = bitcast %union.anon* %823 to i64*
  %824 = load i64, i64* %PC.i828
  %825 = add i64 %824, 38
  %826 = load i64, i64* %PC.i828
  %827 = add i64 %826, 6
  %828 = load i64, i64* %PC.i828
  %829 = add i64 %828, 6
  store i64 %829, i64* %PC.i828
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %831 = load i8, i8* %830, align 1
  %832 = icmp eq i8 %831, 0
  %833 = zext i1 %832 to i8
  store i8 %833, i8* %BRANCH_TAKEN, align 1
  %834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %835 = select i1 %832, i64 %825, i64 %827
  store i64 %835, i64* %834, align 8
  store %struct.Memory* %loadMem_4386b3, %struct.Memory** %MEMORY
  %loadBr_4386b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4386b3 = icmp eq i8 %loadBr_4386b3, 1
  br i1 %cmpBr_4386b3, label %block_.L_4386d9, label %block_4386b9

block_4386b9:                                     ; preds = %block_4386a4
  %loadMem_4386b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %837 = getelementptr inbounds %struct.GPR, %struct.GPR* %836, i32 0, i32 33
  %838 = getelementptr inbounds %struct.Reg, %struct.Reg* %837, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %838 to i64*
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 1
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %RAX.i826 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 15
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RBP.i827 = bitcast %union.anon* %844 to i64*
  %845 = load i64, i64* %RBP.i827
  %846 = sub i64 %845, 24
  %847 = load i64, i64* %PC.i825
  %848 = add i64 %847, 4
  store i64 %848, i64* %PC.i825
  %849 = inttoptr i64 %846 to i64*
  %850 = load i64, i64* %849
  store i64 %850, i64* %RAX.i826, align 8
  store %struct.Memory* %loadMem_4386b9, %struct.Memory** %MEMORY
  %loadMem_4386bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %852 = getelementptr inbounds %struct.GPR, %struct.GPR* %851, i32 0, i32 33
  %853 = getelementptr inbounds %struct.Reg, %struct.Reg* %852, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %853 to i64*
  %854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %855 = getelementptr inbounds %struct.GPR, %struct.GPR* %854, i32 0, i32 5
  %856 = getelementptr inbounds %struct.Reg, %struct.Reg* %855, i32 0, i32 0
  %RCX.i823 = bitcast %union.anon* %856 to i64*
  %857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %858 = getelementptr inbounds %struct.GPR, %struct.GPR* %857, i32 0, i32 15
  %859 = getelementptr inbounds %struct.Reg, %struct.Reg* %858, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %859 to i64*
  %860 = load i64, i64* %RBP.i824
  %861 = sub i64 %860, 64
  %862 = load i64, i64* %PC.i822
  %863 = add i64 %862, 4
  store i64 %863, i64* %PC.i822
  %864 = inttoptr i64 %861 to i32*
  %865 = load i32, i32* %864
  %866 = sext i32 %865 to i64
  store i64 %866, i64* %RCX.i823, align 8
  store %struct.Memory* %loadMem_4386bd, %struct.Memory** %MEMORY
  %loadMem_4386c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 33
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %869 to i64*
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 1
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %RAX.i820 = bitcast %union.anon* %872 to i64*
  %873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %874 = getelementptr inbounds %struct.GPR, %struct.GPR* %873, i32 0, i32 5
  %875 = getelementptr inbounds %struct.Reg, %struct.Reg* %874, i32 0, i32 0
  %RCX.i821 = bitcast %union.anon* %875 to i64*
  %876 = load i64, i64* %RAX.i820
  %877 = load i64, i64* %RCX.i821
  %878 = mul i64 %877, 4
  %879 = add i64 %878, %876
  %880 = load i64, i64* %PC.i819
  %881 = add i64 %880, 7
  store i64 %881, i64* %PC.i819
  %882 = inttoptr i64 %879 to i32*
  store i32 1, i32* %882
  store %struct.Memory* %loadMem_4386c1, %struct.Memory** %MEMORY
  %loadMem_4386c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %884 = getelementptr inbounds %struct.GPR, %struct.GPR* %883, i32 0, i32 33
  %885 = getelementptr inbounds %struct.Reg, %struct.Reg* %884, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %885 to i64*
  %886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %887 = getelementptr inbounds %struct.GPR, %struct.GPR* %886, i32 0, i32 1
  %888 = getelementptr inbounds %struct.Reg, %struct.Reg* %887, i32 0, i32 0
  %RAX.i817 = bitcast %union.anon* %888 to i64*
  %889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %890 = getelementptr inbounds %struct.GPR, %struct.GPR* %889, i32 0, i32 15
  %891 = getelementptr inbounds %struct.Reg, %struct.Reg* %890, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %891 to i64*
  %892 = load i64, i64* %RBP.i818
  %893 = sub i64 %892, 64
  %894 = load i64, i64* %PC.i816
  %895 = add i64 %894, 4
  store i64 %895, i64* %PC.i816
  %896 = inttoptr i64 %893 to i32*
  %897 = load i32, i32* %896
  %898 = sext i32 %897 to i64
  store i64 %898, i64* %RAX.i817, align 8
  store %struct.Memory* %loadMem_4386c8, %struct.Memory** %MEMORY
  %loadMem_4386cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %900 = getelementptr inbounds %struct.GPR, %struct.GPR* %899, i32 0, i32 33
  %901 = getelementptr inbounds %struct.Reg, %struct.Reg* %900, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %901 to i64*
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %903 = getelementptr inbounds %struct.GPR, %struct.GPR* %902, i32 0, i32 1
  %904 = getelementptr inbounds %struct.Reg, %struct.Reg* %903, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %904 to i64*
  %905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %906 = getelementptr inbounds %struct.GPR, %struct.GPR* %905, i32 0, i32 15
  %907 = getelementptr inbounds %struct.Reg, %struct.Reg* %906, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %907 to i64*
  %908 = load i64, i64* %RBP.i815
  %909 = load i64, i64* %RAX.i814
  %910 = add i64 %908, -880
  %911 = add i64 %910, %909
  %912 = load i64, i64* %PC.i813
  %913 = add i64 %912, 8
  store i64 %913, i64* %PC.i813
  %914 = inttoptr i64 %911 to i8*
  store i8 1, i8* %914
  store %struct.Memory* %loadMem_4386cc, %struct.Memory** %MEMORY
  %loadMem_4386d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %916 = getelementptr inbounds %struct.GPR, %struct.GPR* %915, i32 0, i32 33
  %917 = getelementptr inbounds %struct.Reg, %struct.Reg* %916, i32 0, i32 0
  %PC.i812 = bitcast %union.anon* %917 to i64*
  %918 = load i64, i64* %PC.i812
  %919 = add i64 %918, 17
  %920 = load i64, i64* %PC.i812
  %921 = add i64 %920, 5
  store i64 %921, i64* %PC.i812
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %919, i64* %922, align 8
  store %struct.Memory* %loadMem_4386d4, %struct.Memory** %MEMORY
  br label %block_.L_4386e5

block_.L_4386d9:                                  ; preds = %block_4386a4
  %loadMem_4386d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %924 = getelementptr inbounds %struct.GPR, %struct.GPR* %923, i32 0, i32 33
  %925 = getelementptr inbounds %struct.Reg, %struct.Reg* %924, i32 0, i32 0
  %PC.i809 = bitcast %union.anon* %925 to i64*
  %926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %927 = getelementptr inbounds %struct.GPR, %struct.GPR* %926, i32 0, i32 1
  %928 = getelementptr inbounds %struct.Reg, %struct.Reg* %927, i32 0, i32 0
  %RAX.i810 = bitcast %union.anon* %928 to i64*
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 15
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %RBP.i811 = bitcast %union.anon* %931 to i64*
  %932 = load i64, i64* %RBP.i811
  %933 = sub i64 %932, 64
  %934 = load i64, i64* %PC.i809
  %935 = add i64 %934, 4
  store i64 %935, i64* %PC.i809
  %936 = inttoptr i64 %933 to i32*
  %937 = load i32, i32* %936
  %938 = sext i32 %937 to i64
  store i64 %938, i64* %RAX.i810, align 8
  store %struct.Memory* %loadMem_4386d9, %struct.Memory** %MEMORY
  %loadMem_4386dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %940 = getelementptr inbounds %struct.GPR, %struct.GPR* %939, i32 0, i32 33
  %941 = getelementptr inbounds %struct.Reg, %struct.Reg* %940, i32 0, i32 0
  %PC.i806 = bitcast %union.anon* %941 to i64*
  %942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %943 = getelementptr inbounds %struct.GPR, %struct.GPR* %942, i32 0, i32 1
  %944 = getelementptr inbounds %struct.Reg, %struct.Reg* %943, i32 0, i32 0
  %RAX.i807 = bitcast %union.anon* %944 to i64*
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 15
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %RBP.i808 = bitcast %union.anon* %947 to i64*
  %948 = load i64, i64* %RBP.i808
  %949 = load i64, i64* %RAX.i807
  %950 = add i64 %948, -880
  %951 = add i64 %950, %949
  %952 = load i64, i64* %PC.i806
  %953 = add i64 %952, 8
  store i64 %953, i64* %PC.i806
  %954 = inttoptr i64 %951 to i8*
  store i8 -1, i8* %954
  store %struct.Memory* %loadMem_4386dd, %struct.Memory** %MEMORY
  br label %block_.L_4386e5

block_.L_4386e5:                                  ; preds = %block_.L_4386d9, %block_4386b9
  %loadMem_4386e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %PC.i805
  %959 = add i64 %958, 499
  %960 = load i64, i64* %PC.i805
  %961 = add i64 %960, 5
  store i64 %961, i64* %PC.i805
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %959, i64* %962, align 8
  store %struct.Memory* %loadMem_4386e5, %struct.Memory** %MEMORY
  br label %block_.L_4388d8

block_.L_4386ea:                                  ; preds = %block_.L_438692
  %loadMem_4386ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %964 = getelementptr inbounds %struct.GPR, %struct.GPR* %963, i32 0, i32 33
  %965 = getelementptr inbounds %struct.Reg, %struct.Reg* %964, i32 0, i32 0
  %PC.i803 = bitcast %union.anon* %965 to i64*
  %966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %967 = getelementptr inbounds %struct.GPR, %struct.GPR* %966, i32 0, i32 15
  %968 = getelementptr inbounds %struct.Reg, %struct.Reg* %967, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %968 to i64*
  %969 = load i64, i64* %RBP.i804
  %970 = sub i64 %969, 76
  %971 = load i64, i64* %PC.i803
  %972 = add i64 %971, 7
  store i64 %972, i64* %PC.i803
  %973 = inttoptr i64 %970 to i32*
  store i32 0, i32* %973
  store %struct.Memory* %loadMem_4386ea, %struct.Memory** %MEMORY
  %loadMem_4386f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %975 = getelementptr inbounds %struct.GPR, %struct.GPR* %974, i32 0, i32 33
  %976 = getelementptr inbounds %struct.Reg, %struct.Reg* %975, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %976 to i64*
  %977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %978 = getelementptr inbounds %struct.GPR, %struct.GPR* %977, i32 0, i32 15
  %979 = getelementptr inbounds %struct.Reg, %struct.Reg* %978, i32 0, i32 0
  %RBP.i802 = bitcast %union.anon* %979 to i64*
  %980 = load i64, i64* %RBP.i802
  %981 = sub i64 %980, 72
  %982 = load i64, i64* %PC.i801
  %983 = add i64 %982, 7
  store i64 %983, i64* %PC.i801
  %984 = inttoptr i64 %981 to i32*
  store i32 0, i32* %984
  store %struct.Memory* %loadMem_4386f1, %struct.Memory** %MEMORY
  %loadMem_4386f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 15
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %990 to i64*
  %991 = load i64, i64* %RBP.i800
  %992 = sub i64 %991, 60
  %993 = load i64, i64* %PC.i799
  %994 = add i64 %993, 7
  store i64 %994, i64* %PC.i799
  %995 = inttoptr i64 %992 to i32*
  store i32 0, i32* %995
  store %struct.Memory* %loadMem_4386f8, %struct.Memory** %MEMORY
  br label %block_.L_4386ff

block_.L_4386ff:                                  ; preds = %block_.L_438773, %block_.L_4386ea
  %loadMem_4386ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %997 = getelementptr inbounds %struct.GPR, %struct.GPR* %996, i32 0, i32 33
  %998 = getelementptr inbounds %struct.Reg, %struct.Reg* %997, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %998 to i64*
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1000 = getelementptr inbounds %struct.GPR, %struct.GPR* %999, i32 0, i32 15
  %1001 = getelementptr inbounds %struct.Reg, %struct.Reg* %1000, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1001 to i64*
  %1002 = load i64, i64* %RBP.i798
  %1003 = sub i64 %1002, 60
  %1004 = load i64, i64* %PC.i797
  %1005 = add i64 %1004, 4
  store i64 %1005, i64* %PC.i797
  %1006 = inttoptr i64 %1003 to i32*
  %1007 = load i32, i32* %1006
  %1008 = sub i32 %1007, 4
  %1009 = icmp ult i32 %1007, 4
  %1010 = zext i1 %1009 to i8
  %1011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1010, i8* %1011, align 1
  %1012 = and i32 %1008, 255
  %1013 = call i32 @llvm.ctpop.i32(i32 %1012)
  %1014 = trunc i32 %1013 to i8
  %1015 = and i8 %1014, 1
  %1016 = xor i8 %1015, 1
  %1017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1016, i8* %1017, align 1
  %1018 = xor i32 %1007, 4
  %1019 = xor i32 %1018, %1008
  %1020 = lshr i32 %1019, 4
  %1021 = trunc i32 %1020 to i8
  %1022 = and i8 %1021, 1
  %1023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1022, i8* %1023, align 1
  %1024 = icmp eq i32 %1008, 0
  %1025 = zext i1 %1024 to i8
  %1026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1025, i8* %1026, align 1
  %1027 = lshr i32 %1008, 31
  %1028 = trunc i32 %1027 to i8
  %1029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1028, i8* %1029, align 1
  %1030 = lshr i32 %1007, 31
  %1031 = xor i32 %1027, %1030
  %1032 = add i32 %1031, %1030
  %1033 = icmp eq i32 %1032, 2
  %1034 = zext i1 %1033 to i8
  %1035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1034, i8* %1035, align 1
  store %struct.Memory* %loadMem_4386ff, %struct.Memory** %MEMORY
  %loadMem_438703 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1037 = getelementptr inbounds %struct.GPR, %struct.GPR* %1036, i32 0, i32 33
  %1038 = getelementptr inbounds %struct.Reg, %struct.Reg* %1037, i32 0, i32 0
  %PC.i796 = bitcast %union.anon* %1038 to i64*
  %1039 = load i64, i64* %PC.i796
  %1040 = add i64 %1039, 126
  %1041 = load i64, i64* %PC.i796
  %1042 = add i64 %1041, 6
  %1043 = load i64, i64* %PC.i796
  %1044 = add i64 %1043, 6
  store i64 %1044, i64* %PC.i796
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1046 = load i8, i8* %1045, align 1
  %1047 = icmp ne i8 %1046, 0
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1049 = load i8, i8* %1048, align 1
  %1050 = icmp ne i8 %1049, 0
  %1051 = xor i1 %1047, %1050
  %1052 = xor i1 %1051, true
  %1053 = zext i1 %1052 to i8
  store i8 %1053, i8* %BRANCH_TAKEN, align 1
  %1054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1055 = select i1 %1051, i64 %1042, i64 %1040
  store i64 %1055, i64* %1054, align 8
  store %struct.Memory* %loadMem_438703, %struct.Memory** %MEMORY
  %loadBr_438703 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438703 = icmp eq i8 %loadBr_438703, 1
  br i1 %cmpBr_438703, label %block_.L_438781, label %block_438709

block_438709:                                     ; preds = %block_.L_4386ff
  %loadMem_438709 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 33
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %PC.i793 = bitcast %union.anon* %1058 to i64*
  %1059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1060 = getelementptr inbounds %struct.GPR, %struct.GPR* %1059, i32 0, i32 1
  %1061 = getelementptr inbounds %struct.Reg, %struct.Reg* %1060, i32 0, i32 0
  %RAX.i794 = bitcast %union.anon* %1061 to i64*
  %1062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1063 = getelementptr inbounds %struct.GPR, %struct.GPR* %1062, i32 0, i32 15
  %1064 = getelementptr inbounds %struct.Reg, %struct.Reg* %1063, i32 0, i32 0
  %RBP.i795 = bitcast %union.anon* %1064 to i64*
  %1065 = load i64, i64* %RBP.i795
  %1066 = sub i64 %1065, 64
  %1067 = load i64, i64* %PC.i793
  %1068 = add i64 %1067, 3
  store i64 %1068, i64* %PC.i793
  %1069 = inttoptr i64 %1066 to i32*
  %1070 = load i32, i32* %1069
  %1071 = zext i32 %1070 to i64
  store i64 %1071, i64* %RAX.i794, align 8
  store %struct.Memory* %loadMem_438709, %struct.Memory** %MEMORY
  %loadMem_43870c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1073 = getelementptr inbounds %struct.GPR, %struct.GPR* %1072, i32 0, i32 33
  %1074 = getelementptr inbounds %struct.Reg, %struct.Reg* %1073, i32 0, i32 0
  %PC.i790 = bitcast %union.anon* %1074 to i64*
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 5
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 15
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RBP.i792 = bitcast %union.anon* %1080 to i64*
  %1081 = load i64, i64* %RBP.i792
  %1082 = sub i64 %1081, 60
  %1083 = load i64, i64* %PC.i790
  %1084 = add i64 %1083, 4
  store i64 %1084, i64* %PC.i790
  %1085 = inttoptr i64 %1082 to i32*
  %1086 = load i32, i32* %1085
  %1087 = sext i32 %1086 to i64
  store i64 %1087, i64* %RCX.i791, align 8
  store %struct.Memory* %loadMem_43870c, %struct.Memory** %MEMORY
  %loadMem_438710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1089 = getelementptr inbounds %struct.GPR, %struct.GPR* %1088, i32 0, i32 33
  %1090 = getelementptr inbounds %struct.Reg, %struct.Reg* %1089, i32 0, i32 0
  %PC.i787 = bitcast %union.anon* %1090 to i64*
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1092 = getelementptr inbounds %struct.GPR, %struct.GPR* %1091, i32 0, i32 1
  %1093 = getelementptr inbounds %struct.Reg, %struct.Reg* %1092, i32 0, i32 0
  %RAX.i788 = bitcast %union.anon* %1093 to i64*
  %1094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1095 = getelementptr inbounds %struct.GPR, %struct.GPR* %1094, i32 0, i32 5
  %1096 = getelementptr inbounds %struct.Reg, %struct.Reg* %1095, i32 0, i32 0
  %RCX.i789 = bitcast %union.anon* %1096 to i64*
  %1097 = load i64, i64* %RAX.i788
  %1098 = load i64, i64* %RCX.i789
  %1099 = mul i64 %1098, 4
  %1100 = add i64 %1099, 8053168
  %1101 = load i64, i64* %PC.i787
  %1102 = add i64 %1101, 7
  store i64 %1102, i64* %PC.i787
  %1103 = trunc i64 %1097 to i32
  %1104 = inttoptr i64 %1100 to i32*
  %1105 = load i32, i32* %1104
  %1106 = add i32 %1105, %1103
  %1107 = zext i32 %1106 to i64
  store i64 %1107, i64* %RAX.i788, align 8
  %1108 = icmp ult i32 %1106, %1103
  %1109 = icmp ult i32 %1106, %1105
  %1110 = or i1 %1108, %1109
  %1111 = zext i1 %1110 to i8
  %1112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1111, i8* %1112, align 1
  %1113 = and i32 %1106, 255
  %1114 = call i32 @llvm.ctpop.i32(i32 %1113)
  %1115 = trunc i32 %1114 to i8
  %1116 = and i8 %1115, 1
  %1117 = xor i8 %1116, 1
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1117, i8* %1118, align 1
  %1119 = xor i32 %1105, %1103
  %1120 = xor i32 %1119, %1106
  %1121 = lshr i32 %1120, 4
  %1122 = trunc i32 %1121 to i8
  %1123 = and i8 %1122, 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1123, i8* %1124, align 1
  %1125 = icmp eq i32 %1106, 0
  %1126 = zext i1 %1125 to i8
  %1127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1126, i8* %1127, align 1
  %1128 = lshr i32 %1106, 31
  %1129 = trunc i32 %1128 to i8
  %1130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1129, i8* %1130, align 1
  %1131 = lshr i32 %1103, 31
  %1132 = lshr i32 %1105, 31
  %1133 = xor i32 %1128, %1131
  %1134 = xor i32 %1128, %1132
  %1135 = add i32 %1133, %1134
  %1136 = icmp eq i32 %1135, 2
  %1137 = zext i1 %1136 to i8
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1137, i8* %1138, align 1
  store %struct.Memory* %loadMem_438710, %struct.Memory** %MEMORY
  %loadMem_438717 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 1
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %EAX.i785 = bitcast %union.anon* %1144 to i32*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 15
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RBP.i786 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %RBP.i786
  %1149 = sub i64 %1148, 68
  %1150 = load i32, i32* %EAX.i785
  %1151 = zext i32 %1150 to i64
  %1152 = load i64, i64* %PC.i784
  %1153 = add i64 %1152, 3
  store i64 %1153, i64* %PC.i784
  %1154 = inttoptr i64 %1149 to i32*
  store i32 %1150, i32* %1154
  store %struct.Memory* %loadMem_438717, %struct.Memory** %MEMORY
  %loadMem_43871a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 5
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 15
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RBP.i783 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RBP.i783
  %1165 = sub i64 %1164, 68
  %1166 = load i64, i64* %PC.i781
  %1167 = add i64 %1166, 4
  store i64 %1167, i64* %PC.i781
  %1168 = inttoptr i64 %1165 to i32*
  %1169 = load i32, i32* %1168
  %1170 = sext i32 %1169 to i64
  store i64 %1170, i64* %RCX.i782, align 8
  store %struct.Memory* %loadMem_43871a, %struct.Memory** %MEMORY
  %loadMem_43871e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1172 = getelementptr inbounds %struct.GPR, %struct.GPR* %1171, i32 0, i32 33
  %1173 = getelementptr inbounds %struct.Reg, %struct.Reg* %1172, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1173 to i64*
  %1174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1175 = getelementptr inbounds %struct.GPR, %struct.GPR* %1174, i32 0, i32 1
  %1176 = getelementptr inbounds %struct.Reg, %struct.Reg* %1175, i32 0, i32 0
  %RAX.i779 = bitcast %union.anon* %1176 to i64*
  %1177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1178 = getelementptr inbounds %struct.GPR, %struct.GPR* %1177, i32 0, i32 5
  %1179 = getelementptr inbounds %struct.Reg, %struct.Reg* %1178, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %1179 to i64*
  %1180 = load i64, i64* %RCX.i780
  %1181 = add i64 %1180, 12099168
  %1182 = load i64, i64* %PC.i778
  %1183 = add i64 %1182, 8
  store i64 %1183, i64* %PC.i778
  %1184 = inttoptr i64 %1181 to i8*
  %1185 = load i8, i8* %1184
  %1186 = zext i8 %1185 to i64
  store i64 %1186, i64* %RAX.i779, align 8
  store %struct.Memory* %loadMem_43871e, %struct.Memory** %MEMORY
  %loadMem_438726 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1188 = getelementptr inbounds %struct.GPR, %struct.GPR* %1187, i32 0, i32 33
  %1189 = getelementptr inbounds %struct.Reg, %struct.Reg* %1188, i32 0, i32 0
  %PC.i776 = bitcast %union.anon* %1189 to i64*
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 1
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %EAX.i777 = bitcast %union.anon* %1192 to i32*
  %1193 = load i32, i32* %EAX.i777
  %1194 = zext i32 %1193 to i64
  %1195 = load i64, i64* %PC.i776
  %1196 = add i64 %1195, 3
  store i64 %1196, i64* %PC.i776
  %1197 = sub i32 %1193, 3
  %1198 = icmp ult i32 %1193, 3
  %1199 = zext i1 %1198 to i8
  %1200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1199, i8* %1200, align 1
  %1201 = and i32 %1197, 255
  %1202 = call i32 @llvm.ctpop.i32(i32 %1201)
  %1203 = trunc i32 %1202 to i8
  %1204 = and i8 %1203, 1
  %1205 = xor i8 %1204, 1
  %1206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1205, i8* %1206, align 1
  %1207 = xor i64 3, %1194
  %1208 = trunc i64 %1207 to i32
  %1209 = xor i32 %1208, %1197
  %1210 = lshr i32 %1209, 4
  %1211 = trunc i32 %1210 to i8
  %1212 = and i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1212, i8* %1213, align 1
  %1214 = icmp eq i32 %1197, 0
  %1215 = zext i1 %1214 to i8
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1215, i8* %1216, align 1
  %1217 = lshr i32 %1197, 31
  %1218 = trunc i32 %1217 to i8
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1218, i8* %1219, align 1
  %1220 = lshr i32 %1193, 31
  %1221 = xor i32 %1217, %1220
  %1222 = add i32 %1221, %1220
  %1223 = icmp eq i32 %1222, 2
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1224, i8* %1225, align 1
  store %struct.Memory* %loadMem_438726, %struct.Memory** %MEMORY
  %loadMem_438729 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 33
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1228 to i64*
  %1229 = load i64, i64* %PC.i775
  %1230 = add i64 %1229, 69
  %1231 = load i64, i64* %PC.i775
  %1232 = add i64 %1231, 6
  %1233 = load i64, i64* %PC.i775
  %1234 = add i64 %1233, 6
  store i64 %1234, i64* %PC.i775
  %1235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1236 = load i8, i8* %1235, align 1
  store i8 %1236, i8* %BRANCH_TAKEN, align 1
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1238 = icmp ne i8 %1236, 0
  %1239 = select i1 %1238, i64 %1230, i64 %1232
  store i64 %1239, i64* %1237, align 8
  store %struct.Memory* %loadMem_438729, %struct.Memory** %MEMORY
  %loadBr_438729 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438729 = icmp eq i8 %loadBr_438729, 1
  br i1 %cmpBr_438729, label %block_.L_43876e, label %block_43872f

block_43872f:                                     ; preds = %block_438709
  %loadMem_43872f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 33
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %PC.i772 = bitcast %union.anon* %1242 to i64*
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1244 = getelementptr inbounds %struct.GPR, %struct.GPR* %1243, i32 0, i32 1
  %1245 = getelementptr inbounds %struct.Reg, %struct.Reg* %1244, i32 0, i32 0
  %RAX.i773 = bitcast %union.anon* %1245 to i64*
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 15
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %RBP.i774 = bitcast %union.anon* %1248 to i64*
  %1249 = load i64, i64* %RBP.i774
  %1250 = sub i64 %1249, 32
  %1251 = load i64, i64* %PC.i772
  %1252 = add i64 %1251, 4
  store i64 %1252, i64* %PC.i772
  %1253 = inttoptr i64 %1250 to i64*
  %1254 = load i64, i64* %1253
  store i64 %1254, i64* %RAX.i773, align 8
  store %struct.Memory* %loadMem_43872f, %struct.Memory** %MEMORY
  %loadMem_438733 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1256 = getelementptr inbounds %struct.GPR, %struct.GPR* %1255, i32 0, i32 33
  %1257 = getelementptr inbounds %struct.Reg, %struct.Reg* %1256, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1257 to i64*
  %1258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1259 = getelementptr inbounds %struct.GPR, %struct.GPR* %1258, i32 0, i32 5
  %1260 = getelementptr inbounds %struct.Reg, %struct.Reg* %1259, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1260 to i64*
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1262 = getelementptr inbounds %struct.GPR, %struct.GPR* %1261, i32 0, i32 15
  %1263 = getelementptr inbounds %struct.Reg, %struct.Reg* %1262, i32 0, i32 0
  %RBP.i771 = bitcast %union.anon* %1263 to i64*
  %1264 = load i64, i64* %RBP.i771
  %1265 = sub i64 %1264, 68
  %1266 = load i64, i64* %PC.i769
  %1267 = add i64 %1266, 4
  store i64 %1267, i64* %PC.i769
  %1268 = inttoptr i64 %1265 to i32*
  %1269 = load i32, i32* %1268
  %1270 = sext i32 %1269 to i64
  store i64 %1270, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_438733, %struct.Memory** %MEMORY
  %loadMem_438737 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 33
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1273 to i64*
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1275 = getelementptr inbounds %struct.GPR, %struct.GPR* %1274, i32 0, i32 1
  %1276 = getelementptr inbounds %struct.Reg, %struct.Reg* %1275, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %1276 to i64*
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 5
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %RCX.i768 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %RAX.i767
  %1281 = load i64, i64* %RCX.i768
  %1282 = mul i64 %1281, 4
  %1283 = add i64 %1282, %1280
  %1284 = load i64, i64* %PC.i766
  %1285 = add i64 %1284, 4
  store i64 %1285, i64* %PC.i766
  %1286 = inttoptr i64 %1283 to i32*
  %1287 = load i32, i32* %1286
  %1288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1288, align 1
  %1289 = and i32 %1287, 255
  %1290 = call i32 @llvm.ctpop.i32(i32 %1289)
  %1291 = trunc i32 %1290 to i8
  %1292 = and i8 %1291, 1
  %1293 = xor i8 %1292, 1
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1293, i8* %1294, align 1
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1295, align 1
  %1296 = icmp eq i32 %1287, 0
  %1297 = zext i1 %1296 to i8
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1297, i8* %1298, align 1
  %1299 = lshr i32 %1287, 31
  %1300 = trunc i32 %1299 to i8
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1300, i8* %1301, align 1
  %1302 = lshr i32 %1287, 31
  %1303 = xor i32 %1299, %1302
  %1304 = add i32 %1303, %1302
  %1305 = icmp eq i32 %1304, 2
  %1306 = zext i1 %1305 to i8
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1306, i8* %1307, align 1
  store %struct.Memory* %loadMem_438737, %struct.Memory** %MEMORY
  %loadMem_43873b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %1310 to i64*
  %1311 = load i64, i64* %PC.i765
  %1312 = add i64 %1311, 51
  %1313 = load i64, i64* %PC.i765
  %1314 = add i64 %1313, 6
  %1315 = load i64, i64* %PC.i765
  %1316 = add i64 %1315, 6
  store i64 %1316, i64* %PC.i765
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1318 = load i8, i8* %1317, align 1
  store i8 %1318, i8* %BRANCH_TAKEN, align 1
  %1319 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1320 = icmp ne i8 %1318, 0
  %1321 = select i1 %1320, i64 %1312, i64 %1314
  store i64 %1321, i64* %1319, align 8
  store %struct.Memory* %loadMem_43873b, %struct.Memory** %MEMORY
  %loadBr_43873b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43873b = icmp eq i8 %loadBr_43873b, 1
  br i1 %cmpBr_43873b, label %block_.L_43876e, label %block_438741

block_438741:                                     ; preds = %block_43872f
  %loadMem_438741 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1323 = getelementptr inbounds %struct.GPR, %struct.GPR* %1322, i32 0, i32 33
  %1324 = getelementptr inbounds %struct.Reg, %struct.Reg* %1323, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %1324 to i64*
  %1325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1326 = getelementptr inbounds %struct.GPR, %struct.GPR* %1325, i32 0, i32 1
  %1327 = getelementptr inbounds %struct.Reg, %struct.Reg* %1326, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %1327 to i64*
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 15
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %RBP.i764 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %RBP.i764
  %1332 = sub i64 %1331, 68
  %1333 = load i64, i64* %PC.i762
  %1334 = add i64 %1333, 4
  store i64 %1334, i64* %PC.i762
  %1335 = inttoptr i64 %1332 to i32*
  %1336 = load i32, i32* %1335
  %1337 = sext i32 %1336 to i64
  store i64 %1337, i64* %RAX.i763, align 8
  store %struct.Memory* %loadMem_438741, %struct.Memory** %MEMORY
  %loadMem_438745 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1339 = getelementptr inbounds %struct.GPR, %struct.GPR* %1338, i32 0, i32 33
  %1340 = getelementptr inbounds %struct.Reg, %struct.Reg* %1339, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %1340 to i64*
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1342 = getelementptr inbounds %struct.GPR, %struct.GPR* %1341, i32 0, i32 1
  %1343 = getelementptr inbounds %struct.Reg, %struct.Reg* %1342, i32 0, i32 0
  %RAX.i760 = bitcast %union.anon* %1343 to i64*
  %1344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1345 = getelementptr inbounds %struct.GPR, %struct.GPR* %1344, i32 0, i32 5
  %1346 = getelementptr inbounds %struct.Reg, %struct.Reg* %1345, i32 0, i32 0
  %RCX.i761 = bitcast %union.anon* %1346 to i64*
  %1347 = load i64, i64* %RAX.i760
  %1348 = add i64 %1347, 12099168
  %1349 = load i64, i64* %PC.i759
  %1350 = add i64 %1349, 8
  store i64 %1350, i64* %PC.i759
  %1351 = inttoptr i64 %1348 to i8*
  %1352 = load i8, i8* %1351
  %1353 = zext i8 %1352 to i64
  store i64 %1353, i64* %RCX.i761, align 8
  store %struct.Memory* %loadMem_438745, %struct.Memory** %MEMORY
  %loadMem_43874d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1355 = getelementptr inbounds %struct.GPR, %struct.GPR* %1354, i32 0, i32 33
  %1356 = getelementptr inbounds %struct.Reg, %struct.Reg* %1355, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %1356 to i64*
  %1357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1358 = getelementptr inbounds %struct.GPR, %struct.GPR* %1357, i32 0, i32 5
  %1359 = getelementptr inbounds %struct.Reg, %struct.Reg* %1358, i32 0, i32 0
  %ECX.i757 = bitcast %union.anon* %1359 to i32*
  %1360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1361 = getelementptr inbounds %struct.GPR, %struct.GPR* %1360, i32 0, i32 15
  %1362 = getelementptr inbounds %struct.Reg, %struct.Reg* %1361, i32 0, i32 0
  %RBP.i758 = bitcast %union.anon* %1362 to i64*
  %1363 = load i32, i32* %ECX.i757
  %1364 = zext i32 %1363 to i64
  %1365 = load i64, i64* %RBP.i758
  %1366 = sub i64 %1365, 12
  %1367 = load i64, i64* %PC.i756
  %1368 = add i64 %1367, 3
  store i64 %1368, i64* %PC.i756
  %1369 = inttoptr i64 %1366 to i32*
  %1370 = load i32, i32* %1369
  %1371 = sub i32 %1363, %1370
  %1372 = icmp ult i32 %1363, %1370
  %1373 = zext i1 %1372 to i8
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1373, i8* %1374, align 1
  %1375 = and i32 %1371, 255
  %1376 = call i32 @llvm.ctpop.i32(i32 %1375)
  %1377 = trunc i32 %1376 to i8
  %1378 = and i8 %1377, 1
  %1379 = xor i8 %1378, 1
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1379, i8* %1380, align 1
  %1381 = xor i32 %1370, %1363
  %1382 = xor i32 %1381, %1371
  %1383 = lshr i32 %1382, 4
  %1384 = trunc i32 %1383 to i8
  %1385 = and i8 %1384, 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1385, i8* %1386, align 1
  %1387 = icmp eq i32 %1371, 0
  %1388 = zext i1 %1387 to i8
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1388, i8* %1389, align 1
  %1390 = lshr i32 %1371, 31
  %1391 = trunc i32 %1390 to i8
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1391, i8* %1392, align 1
  %1393 = lshr i32 %1363, 31
  %1394 = lshr i32 %1370, 31
  %1395 = xor i32 %1394, %1393
  %1396 = xor i32 %1390, %1393
  %1397 = add i32 %1396, %1395
  %1398 = icmp eq i32 %1397, 2
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1399, i8* %1400, align 1
  store %struct.Memory* %loadMem_43874d, %struct.Memory** %MEMORY
  %loadMem_438750 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1402 = getelementptr inbounds %struct.GPR, %struct.GPR* %1401, i32 0, i32 33
  %1403 = getelementptr inbounds %struct.Reg, %struct.Reg* %1402, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1403 to i64*
  %1404 = load i64, i64* %PC.i755
  %1405 = add i64 %1404, 18
  %1406 = load i64, i64* %PC.i755
  %1407 = add i64 %1406, 6
  %1408 = load i64, i64* %PC.i755
  %1409 = add i64 %1408, 6
  store i64 %1409, i64* %PC.i755
  %1410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1411 = load i8, i8* %1410, align 1
  %1412 = icmp eq i8 %1411, 0
  %1413 = zext i1 %1412 to i8
  store i8 %1413, i8* %BRANCH_TAKEN, align 1
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1415 = select i1 %1412, i64 %1405, i64 %1407
  store i64 %1415, i64* %1414, align 8
  store %struct.Memory* %loadMem_438750, %struct.Memory** %MEMORY
  %loadBr_438750 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438750 = icmp eq i8 %loadBr_438750, 1
  br i1 %cmpBr_438750, label %block_.L_438762, label %block_438756

block_438756:                                     ; preds = %block_438741
  %loadMem_438756 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1417 = getelementptr inbounds %struct.GPR, %struct.GPR* %1416, i32 0, i32 33
  %1418 = getelementptr inbounds %struct.Reg, %struct.Reg* %1417, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %1418 to i64*
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1420 = getelementptr inbounds %struct.GPR, %struct.GPR* %1419, i32 0, i32 15
  %1421 = getelementptr inbounds %struct.Reg, %struct.Reg* %1420, i32 0, i32 0
  %RBP.i754 = bitcast %union.anon* %1421 to i64*
  %1422 = load i64, i64* %RBP.i754
  %1423 = sub i64 %1422, 72
  %1424 = load i64, i64* %PC.i753
  %1425 = add i64 %1424, 7
  store i64 %1425, i64* %PC.i753
  %1426 = inttoptr i64 %1423 to i32*
  store i32 1, i32* %1426
  store %struct.Memory* %loadMem_438756, %struct.Memory** %MEMORY
  %loadMem_43875d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1428 = getelementptr inbounds %struct.GPR, %struct.GPR* %1427, i32 0, i32 33
  %1429 = getelementptr inbounds %struct.Reg, %struct.Reg* %1428, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1429 to i64*
  %1430 = load i64, i64* %PC.i752
  %1431 = add i64 %1430, 12
  %1432 = load i64, i64* %PC.i752
  %1433 = add i64 %1432, 5
  store i64 %1433, i64* %PC.i752
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1431, i64* %1434, align 8
  store %struct.Memory* %loadMem_43875d, %struct.Memory** %MEMORY
  br label %block_.L_438769

block_.L_438762:                                  ; preds = %block_438741
  %loadMem_438762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 33
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %PC.i750 = bitcast %union.anon* %1437 to i64*
  %1438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1439 = getelementptr inbounds %struct.GPR, %struct.GPR* %1438, i32 0, i32 15
  %1440 = getelementptr inbounds %struct.Reg, %struct.Reg* %1439, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1440 to i64*
  %1441 = load i64, i64* %RBP.i751
  %1442 = sub i64 %1441, 76
  %1443 = load i64, i64* %PC.i750
  %1444 = add i64 %1443, 7
  store i64 %1444, i64* %PC.i750
  %1445 = inttoptr i64 %1442 to i32*
  store i32 1, i32* %1445
  store %struct.Memory* %loadMem_438762, %struct.Memory** %MEMORY
  br label %block_.L_438769

block_.L_438769:                                  ; preds = %block_.L_438762, %block_438756
  %loadMem_438769 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1447 = getelementptr inbounds %struct.GPR, %struct.GPR* %1446, i32 0, i32 33
  %1448 = getelementptr inbounds %struct.Reg, %struct.Reg* %1447, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1448 to i64*
  %1449 = load i64, i64* %PC.i749
  %1450 = add i64 %1449, 5
  %1451 = load i64, i64* %PC.i749
  %1452 = add i64 %1451, 5
  store i64 %1452, i64* %PC.i749
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1450, i64* %1453, align 8
  store %struct.Memory* %loadMem_438769, %struct.Memory** %MEMORY
  br label %block_.L_43876e

block_.L_43876e:                                  ; preds = %block_.L_438769, %block_43872f, %block_438709
  %loadMem_43876e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %1456 to i64*
  %1457 = load i64, i64* %PC.i748
  %1458 = add i64 %1457, 5
  %1459 = load i64, i64* %PC.i748
  %1460 = add i64 %1459, 5
  store i64 %1460, i64* %PC.i748
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1458, i64* %1461, align 8
  store %struct.Memory* %loadMem_43876e, %struct.Memory** %MEMORY
  br label %block_.L_438773

block_.L_438773:                                  ; preds = %block_.L_43876e
  %loadMem_438773 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1463 = getelementptr inbounds %struct.GPR, %struct.GPR* %1462, i32 0, i32 33
  %1464 = getelementptr inbounds %struct.Reg, %struct.Reg* %1463, i32 0, i32 0
  %PC.i745 = bitcast %union.anon* %1464 to i64*
  %1465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1466 = getelementptr inbounds %struct.GPR, %struct.GPR* %1465, i32 0, i32 1
  %1467 = getelementptr inbounds %struct.Reg, %struct.Reg* %1466, i32 0, i32 0
  %RAX.i746 = bitcast %union.anon* %1467 to i64*
  %1468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1469 = getelementptr inbounds %struct.GPR, %struct.GPR* %1468, i32 0, i32 15
  %1470 = getelementptr inbounds %struct.Reg, %struct.Reg* %1469, i32 0, i32 0
  %RBP.i747 = bitcast %union.anon* %1470 to i64*
  %1471 = load i64, i64* %RBP.i747
  %1472 = sub i64 %1471, 60
  %1473 = load i64, i64* %PC.i745
  %1474 = add i64 %1473, 3
  store i64 %1474, i64* %PC.i745
  %1475 = inttoptr i64 %1472 to i32*
  %1476 = load i32, i32* %1475
  %1477 = zext i32 %1476 to i64
  store i64 %1477, i64* %RAX.i746, align 8
  store %struct.Memory* %loadMem_438773, %struct.Memory** %MEMORY
  %loadMem_438776 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1479 = getelementptr inbounds %struct.GPR, %struct.GPR* %1478, i32 0, i32 33
  %1480 = getelementptr inbounds %struct.Reg, %struct.Reg* %1479, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %1480 to i64*
  %1481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1482 = getelementptr inbounds %struct.GPR, %struct.GPR* %1481, i32 0, i32 1
  %1483 = getelementptr inbounds %struct.Reg, %struct.Reg* %1482, i32 0, i32 0
  %RAX.i744 = bitcast %union.anon* %1483 to i64*
  %1484 = load i64, i64* %RAX.i744
  %1485 = load i64, i64* %PC.i743
  %1486 = add i64 %1485, 3
  store i64 %1486, i64* %PC.i743
  %1487 = trunc i64 %1484 to i32
  %1488 = add i32 1, %1487
  %1489 = zext i32 %1488 to i64
  store i64 %1489, i64* %RAX.i744, align 8
  %1490 = icmp ult i32 %1488, %1487
  %1491 = icmp ult i32 %1488, 1
  %1492 = or i1 %1490, %1491
  %1493 = zext i1 %1492 to i8
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1493, i8* %1494, align 1
  %1495 = and i32 %1488, 255
  %1496 = call i32 @llvm.ctpop.i32(i32 %1495)
  %1497 = trunc i32 %1496 to i8
  %1498 = and i8 %1497, 1
  %1499 = xor i8 %1498, 1
  %1500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1499, i8* %1500, align 1
  %1501 = xor i64 1, %1484
  %1502 = trunc i64 %1501 to i32
  %1503 = xor i32 %1502, %1488
  %1504 = lshr i32 %1503, 4
  %1505 = trunc i32 %1504 to i8
  %1506 = and i8 %1505, 1
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1506, i8* %1507, align 1
  %1508 = icmp eq i32 %1488, 0
  %1509 = zext i1 %1508 to i8
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1509, i8* %1510, align 1
  %1511 = lshr i32 %1488, 31
  %1512 = trunc i32 %1511 to i8
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1512, i8* %1513, align 1
  %1514 = lshr i32 %1487, 31
  %1515 = xor i32 %1511, %1514
  %1516 = add i32 %1515, %1511
  %1517 = icmp eq i32 %1516, 2
  %1518 = zext i1 %1517 to i8
  %1519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1518, i8* %1519, align 1
  store %struct.Memory* %loadMem_438776, %struct.Memory** %MEMORY
  %loadMem_438779 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1521 = getelementptr inbounds %struct.GPR, %struct.GPR* %1520, i32 0, i32 33
  %1522 = getelementptr inbounds %struct.Reg, %struct.Reg* %1521, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1522 to i64*
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1524 = getelementptr inbounds %struct.GPR, %struct.GPR* %1523, i32 0, i32 1
  %1525 = getelementptr inbounds %struct.Reg, %struct.Reg* %1524, i32 0, i32 0
  %EAX.i741 = bitcast %union.anon* %1525 to i32*
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1527 = getelementptr inbounds %struct.GPR, %struct.GPR* %1526, i32 0, i32 15
  %1528 = getelementptr inbounds %struct.Reg, %struct.Reg* %1527, i32 0, i32 0
  %RBP.i742 = bitcast %union.anon* %1528 to i64*
  %1529 = load i64, i64* %RBP.i742
  %1530 = sub i64 %1529, 60
  %1531 = load i32, i32* %EAX.i741
  %1532 = zext i32 %1531 to i64
  %1533 = load i64, i64* %PC.i740
  %1534 = add i64 %1533, 3
  store i64 %1534, i64* %PC.i740
  %1535 = inttoptr i64 %1530 to i32*
  store i32 %1531, i32* %1535
  store %struct.Memory* %loadMem_438779, %struct.Memory** %MEMORY
  %loadMem_43877c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1537 = getelementptr inbounds %struct.GPR, %struct.GPR* %1536, i32 0, i32 33
  %1538 = getelementptr inbounds %struct.Reg, %struct.Reg* %1537, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %1538 to i64*
  %1539 = load i64, i64* %PC.i739
  %1540 = add i64 %1539, -125
  %1541 = load i64, i64* %PC.i739
  %1542 = add i64 %1541, 5
  store i64 %1542, i64* %PC.i739
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1540, i64* %1543, align 8
  store %struct.Memory* %loadMem_43877c, %struct.Memory** %MEMORY
  br label %block_.L_4386ff

block_.L_438781:                                  ; preds = %block_.L_4386ff
  %loadMem_438781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i737 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1548 = getelementptr inbounds %struct.GPR, %struct.GPR* %1547, i32 0, i32 15
  %1549 = getelementptr inbounds %struct.Reg, %struct.Reg* %1548, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %1549 to i64*
  %1550 = load i64, i64* %RBP.i738
  %1551 = sub i64 %1550, 72
  %1552 = load i64, i64* %PC.i737
  %1553 = add i64 %1552, 4
  store i64 %1553, i64* %PC.i737
  %1554 = inttoptr i64 %1551 to i32*
  %1555 = load i32, i32* %1554
  %1556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1556, align 1
  %1557 = and i32 %1555, 255
  %1558 = call i32 @llvm.ctpop.i32(i32 %1557)
  %1559 = trunc i32 %1558 to i8
  %1560 = and i8 %1559, 1
  %1561 = xor i8 %1560, 1
  %1562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1561, i8* %1562, align 1
  %1563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1563, align 1
  %1564 = icmp eq i32 %1555, 0
  %1565 = zext i1 %1564 to i8
  %1566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1565, i8* %1566, align 1
  %1567 = lshr i32 %1555, 31
  %1568 = trunc i32 %1567 to i8
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1568, i8* %1569, align 1
  %1570 = lshr i32 %1555, 31
  %1571 = xor i32 %1567, %1570
  %1572 = add i32 %1571, %1570
  %1573 = icmp eq i32 %1572, 2
  %1574 = zext i1 %1573 to i8
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1574, i8* %1575, align 1
  store %struct.Memory* %loadMem_438781, %struct.Memory** %MEMORY
  %loadMem_438785 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1577 = getelementptr inbounds %struct.GPR, %struct.GPR* %1576, i32 0, i32 33
  %1578 = getelementptr inbounds %struct.Reg, %struct.Reg* %1577, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %1578 to i64*
  %1579 = load i64, i64* %PC.i736
  %1580 = add i64 %1579, 213
  %1581 = load i64, i64* %PC.i736
  %1582 = add i64 %1581, 6
  %1583 = load i64, i64* %PC.i736
  %1584 = add i64 %1583, 6
  store i64 %1584, i64* %PC.i736
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1586 = load i8, i8* %1585, align 1
  store i8 %1586, i8* %BRANCH_TAKEN, align 1
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1588 = icmp ne i8 %1586, 0
  %1589 = select i1 %1588, i64 %1580, i64 %1582
  store i64 %1589, i64* %1587, align 8
  store %struct.Memory* %loadMem_438785, %struct.Memory** %MEMORY
  %loadBr_438785 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438785 = icmp eq i8 %loadBr_438785, 1
  br i1 %cmpBr_438785, label %block_.L_43885a, label %block_43878b

block_43878b:                                     ; preds = %block_.L_438781
  %loadMem_43878b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1591 = getelementptr inbounds %struct.GPR, %struct.GPR* %1590, i32 0, i32 33
  %1592 = getelementptr inbounds %struct.Reg, %struct.Reg* %1591, i32 0, i32 0
  %PC.i734 = bitcast %union.anon* %1592 to i64*
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1594 = getelementptr inbounds %struct.GPR, %struct.GPR* %1593, i32 0, i32 15
  %1595 = getelementptr inbounds %struct.Reg, %struct.Reg* %1594, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %1595 to i64*
  %1596 = load i64, i64* %RBP.i735
  %1597 = sub i64 %1596, 44
  %1598 = load i64, i64* %PC.i734
  %1599 = add i64 %1598, 4
  store i64 %1599, i64* %PC.i734
  %1600 = inttoptr i64 %1597 to i32*
  %1601 = load i32, i32* %1600
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1602, align 1
  %1603 = and i32 %1601, 255
  %1604 = call i32 @llvm.ctpop.i32(i32 %1603)
  %1605 = trunc i32 %1604 to i8
  %1606 = and i8 %1605, 1
  %1607 = xor i8 %1606, 1
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1607, i8* %1608, align 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1609, align 1
  %1610 = icmp eq i32 %1601, 0
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1611, i8* %1612, align 1
  %1613 = lshr i32 %1601, 31
  %1614 = trunc i32 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1614, i8* %1615, align 1
  %1616 = lshr i32 %1601, 31
  %1617 = xor i32 %1613, %1616
  %1618 = add i32 %1617, %1616
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1
  store %struct.Memory* %loadMem_43878b, %struct.Memory** %MEMORY
  %loadMem_43878f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %PC.i733
  %1626 = add i64 %1625, 127
  %1627 = load i64, i64* %PC.i733
  %1628 = add i64 %1627, 6
  %1629 = load i64, i64* %PC.i733
  %1630 = add i64 %1629, 6
  store i64 %1630, i64* %PC.i733
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1632 = load i8, i8* %1631, align 1
  store i8 %1632, i8* %BRANCH_TAKEN, align 1
  %1633 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1634 = icmp ne i8 %1632, 0
  %1635 = select i1 %1634, i64 %1626, i64 %1628
  store i64 %1635, i64* %1633, align 8
  store %struct.Memory* %loadMem_43878f, %struct.Memory** %MEMORY
  %loadBr_43878f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43878f = icmp eq i8 %loadBr_43878f, 1
  br i1 %cmpBr_43878f, label %block_.L_43880e, label %block_438795

block_438795:                                     ; preds = %block_43878b
  %loadMem_438795 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1637 = getelementptr inbounds %struct.GPR, %struct.GPR* %1636, i32 0, i32 33
  %1638 = getelementptr inbounds %struct.Reg, %struct.Reg* %1637, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1638 to i64*
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 1
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 15
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RBP.i732 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %RBP.i732
  %1646 = sub i64 %1645, 64
  %1647 = load i64, i64* %PC.i730
  %1648 = add i64 %1647, 4
  store i64 %1648, i64* %PC.i730
  %1649 = inttoptr i64 %1646 to i32*
  %1650 = load i32, i32* %1649
  %1651 = sext i32 %1650 to i64
  store i64 %1651, i64* %RAX.i731, align 8
  store %struct.Memory* %loadMem_438795, %struct.Memory** %MEMORY
  %loadMem_438799 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 33
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 1
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RAX.i728 = bitcast %union.anon* %1657 to i64*
  %1658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1659 = getelementptr inbounds %struct.GPR, %struct.GPR* %1658, i32 0, i32 5
  %1660 = getelementptr inbounds %struct.Reg, %struct.Reg* %1659, i32 0, i32 0
  %RCX.i729 = bitcast %union.anon* %1660 to i64*
  %1661 = load i64, i64* %RAX.i728
  %1662 = add i64 %1661, 12099168
  %1663 = load i64, i64* %PC.i727
  %1664 = add i64 %1663, 8
  store i64 %1664, i64* %PC.i727
  %1665 = inttoptr i64 %1662 to i8*
  %1666 = load i8, i8* %1665
  %1667 = zext i8 %1666 to i64
  store i64 %1667, i64* %RCX.i729, align 8
  store %struct.Memory* %loadMem_438799, %struct.Memory** %MEMORY
  %loadMem_4387a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 33
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 5
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %ECX.i726 = bitcast %union.anon* %1673 to i32*
  %1674 = load i32, i32* %ECX.i726
  %1675 = zext i32 %1674 to i64
  %1676 = load i64, i64* %PC.i725
  %1677 = add i64 %1676, 3
  store i64 %1677, i64* %PC.i725
  %1678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1678, align 1
  %1679 = and i32 %1674, 255
  %1680 = call i32 @llvm.ctpop.i32(i32 %1679)
  %1681 = trunc i32 %1680 to i8
  %1682 = and i8 %1681, 1
  %1683 = xor i8 %1682, 1
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1683, i8* %1684, align 1
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1685, align 1
  %1686 = icmp eq i32 %1674, 0
  %1687 = zext i1 %1686 to i8
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1687, i8* %1688, align 1
  %1689 = lshr i32 %1674, 31
  %1690 = trunc i32 %1689 to i8
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1690, i8* %1691, align 1
  %1692 = lshr i32 %1674, 31
  %1693 = xor i32 %1689, %1692
  %1694 = add i32 %1693, %1692
  %1695 = icmp eq i32 %1694, 2
  %1696 = zext i1 %1695 to i8
  %1697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1696, i8* %1697, align 1
  store %struct.Memory* %loadMem_4387a1, %struct.Memory** %MEMORY
  %loadMem_4387a4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1699 = getelementptr inbounds %struct.GPR, %struct.GPR* %1698, i32 0, i32 33
  %1700 = getelementptr inbounds %struct.Reg, %struct.Reg* %1699, i32 0, i32 0
  %PC.i724 = bitcast %union.anon* %1700 to i64*
  %1701 = load i64, i64* %PC.i724
  %1702 = add i64 %1701, 74
  %1703 = load i64, i64* %PC.i724
  %1704 = add i64 %1703, 6
  %1705 = load i64, i64* %PC.i724
  %1706 = add i64 %1705, 6
  store i64 %1706, i64* %PC.i724
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1708 = load i8, i8* %1707, align 1
  %1709 = icmp eq i8 %1708, 0
  %1710 = zext i1 %1709 to i8
  store i8 %1710, i8* %BRANCH_TAKEN, align 1
  %1711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1712 = select i1 %1709, i64 %1702, i64 %1704
  store i64 %1712, i64* %1711, align 8
  store %struct.Memory* %loadMem_4387a4, %struct.Memory** %MEMORY
  %loadBr_4387a4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4387a4 = icmp eq i8 %loadBr_4387a4, 1
  br i1 %cmpBr_4387a4, label %block_.L_4387ee, label %block_4387aa

block_4387aa:                                     ; preds = %block_438795
  %loadMem_4387aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1714 = getelementptr inbounds %struct.GPR, %struct.GPR* %1713, i32 0, i32 33
  %1715 = getelementptr inbounds %struct.Reg, %struct.Reg* %1714, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1715 to i64*
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1717 = getelementptr inbounds %struct.GPR, %struct.GPR* %1716, i32 0, i32 11
  %1718 = getelementptr inbounds %struct.Reg, %struct.Reg* %1717, i32 0, i32 0
  %RDI.i722 = bitcast %union.anon* %1718 to i64*
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1720 = getelementptr inbounds %struct.GPR, %struct.GPR* %1719, i32 0, i32 15
  %1721 = getelementptr inbounds %struct.Reg, %struct.Reg* %1720, i32 0, i32 0
  %RBP.i723 = bitcast %union.anon* %1721 to i64*
  %1722 = load i64, i64* %RBP.i723
  %1723 = sub i64 %1722, 64
  %1724 = load i64, i64* %PC.i721
  %1725 = add i64 %1724, 3
  store i64 %1725, i64* %PC.i721
  %1726 = inttoptr i64 %1723 to i32*
  %1727 = load i32, i32* %1726
  %1728 = zext i32 %1727 to i64
  store i64 %1728, i64* %RDI.i722, align 8
  store %struct.Memory* %loadMem_4387aa, %struct.Memory** %MEMORY
  %loadMem_4387ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1730 = getelementptr inbounds %struct.GPR, %struct.GPR* %1729, i32 0, i32 33
  %1731 = getelementptr inbounds %struct.Reg, %struct.Reg* %1730, i32 0, i32 0
  %PC.i718 = bitcast %union.anon* %1731 to i64*
  %1732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1733 = getelementptr inbounds %struct.GPR, %struct.GPR* %1732, i32 0, i32 9
  %1734 = getelementptr inbounds %struct.Reg, %struct.Reg* %1733, i32 0, i32 0
  %RSI.i719 = bitcast %union.anon* %1734 to i64*
  %1735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1736 = getelementptr inbounds %struct.GPR, %struct.GPR* %1735, i32 0, i32 15
  %1737 = getelementptr inbounds %struct.Reg, %struct.Reg* %1736, i32 0, i32 0
  %RBP.i720 = bitcast %union.anon* %1737 to i64*
  %1738 = load i64, i64* %RBP.i720
  %1739 = sub i64 %1738, 12
  %1740 = load i64, i64* %PC.i718
  %1741 = add i64 %1740, 3
  store i64 %1741, i64* %PC.i718
  %1742 = inttoptr i64 %1739 to i32*
  %1743 = load i32, i32* %1742
  %1744 = zext i32 %1743 to i64
  store i64 %1744, i64* %RSI.i719, align 8
  store %struct.Memory* %loadMem_4387ad, %struct.Memory** %MEMORY
  %loadMem_4387b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 33
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 7
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RDX.i716 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1752 = getelementptr inbounds %struct.GPR, %struct.GPR* %1751, i32 0, i32 15
  %1753 = getelementptr inbounds %struct.Reg, %struct.Reg* %1752, i32 0, i32 0
  %RBP.i717 = bitcast %union.anon* %1753 to i64*
  %1754 = load i64, i64* %RBP.i717
  %1755 = sub i64 %1754, 32
  %1756 = load i64, i64* %PC.i715
  %1757 = add i64 %1756, 4
  store i64 %1757, i64* %PC.i715
  %1758 = inttoptr i64 %1755 to i64*
  %1759 = load i64, i64* %1758
  store i64 %1759, i64* %RDX.i716, align 8
  store %struct.Memory* %loadMem_4387b0, %struct.Memory** %MEMORY
  %loadMem1_4387b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1761 = getelementptr inbounds %struct.GPR, %struct.GPR* %1760, i32 0, i32 33
  %1762 = getelementptr inbounds %struct.Reg, %struct.Reg* %1761, i32 0, i32 0
  %PC.i714 = bitcast %union.anon* %1762 to i64*
  %1763 = load i64, i64* %PC.i714
  %1764 = add i64 %1763, 2444
  %1765 = load i64, i64* %PC.i714
  %1766 = add i64 %1765, 5
  %1767 = load i64, i64* %PC.i714
  %1768 = add i64 %1767, 5
  store i64 %1768, i64* %PC.i714
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1770 = load i64, i64* %1769, align 8
  %1771 = add i64 %1770, -8
  %1772 = inttoptr i64 %1771 to i64*
  store i64 %1766, i64* %1772
  store i64 %1771, i64* %1769, align 8
  %1773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1764, i64* %1773, align 8
  store %struct.Memory* %loadMem1_4387b4, %struct.Memory** %MEMORY
  %loadMem2_4387b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4387b4 = load i64, i64* %3
  %call2_4387b4 = call %struct.Memory* @sub_439140.false_margin(%struct.State* %0, i64 %loadPC_4387b4, %struct.Memory* %loadMem2_4387b4)
  store %struct.Memory* %call2_4387b4, %struct.Memory** %MEMORY
  %loadMem_4387b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1775 = getelementptr inbounds %struct.GPR, %struct.GPR* %1774, i32 0, i32 33
  %1776 = getelementptr inbounds %struct.Reg, %struct.Reg* %1775, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1776 to i64*
  %1777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1778 = getelementptr inbounds %struct.GPR, %struct.GPR* %1777, i32 0, i32 1
  %1779 = getelementptr inbounds %struct.Reg, %struct.Reg* %1778, i32 0, i32 0
  %EAX.i713 = bitcast %union.anon* %1779 to i32*
  %1780 = load i32, i32* %EAX.i713
  %1781 = zext i32 %1780 to i64
  %1782 = load i64, i64* %PC.i712
  %1783 = add i64 %1782, 3
  store i64 %1783, i64* %PC.i712
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1784, align 1
  %1785 = and i32 %1780, 255
  %1786 = call i32 @llvm.ctpop.i32(i32 %1785)
  %1787 = trunc i32 %1786 to i8
  %1788 = and i8 %1787, 1
  %1789 = xor i8 %1788, 1
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1789, i8* %1790, align 1
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1791, align 1
  %1792 = icmp eq i32 %1780, 0
  %1793 = zext i1 %1792 to i8
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1793, i8* %1794, align 1
  %1795 = lshr i32 %1780, 31
  %1796 = trunc i32 %1795 to i8
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1796, i8* %1797, align 1
  %1798 = lshr i32 %1780, 31
  %1799 = xor i32 %1795, %1798
  %1800 = add i32 %1799, %1798
  %1801 = icmp eq i32 %1800, 2
  %1802 = zext i1 %1801 to i8
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1802, i8* %1803, align 1
  store %struct.Memory* %loadMem_4387b9, %struct.Memory** %MEMORY
  %loadMem_4387bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1805 = getelementptr inbounds %struct.GPR, %struct.GPR* %1804, i32 0, i32 33
  %1806 = getelementptr inbounds %struct.Reg, %struct.Reg* %1805, i32 0, i32 0
  %PC.i711 = bitcast %union.anon* %1806 to i64*
  %1807 = load i64, i64* %PC.i711
  %1808 = add i64 %1807, 30
  %1809 = load i64, i64* %PC.i711
  %1810 = add i64 %1809, 6
  %1811 = load i64, i64* %PC.i711
  %1812 = add i64 %1811, 6
  store i64 %1812, i64* %PC.i711
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1814 = load i8, i8* %1813, align 1
  %1815 = icmp eq i8 %1814, 0
  %1816 = zext i1 %1815 to i8
  store i8 %1816, i8* %BRANCH_TAKEN, align 1
  %1817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1818 = select i1 %1815, i64 %1808, i64 %1810
  store i64 %1818, i64* %1817, align 8
  store %struct.Memory* %loadMem_4387bc, %struct.Memory** %MEMORY
  %loadBr_4387bc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4387bc = icmp eq i8 %loadBr_4387bc, 1
  br i1 %cmpBr_4387bc, label %block_.L_4387da, label %block_4387c2

block_4387c2:                                     ; preds = %block_4387aa
  %loadMem_4387c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i708 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 11
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %RDI.i709 = bitcast %union.anon* %1824 to i64*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 15
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RBP.i710 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %RBP.i710
  %1829 = sub i64 %1828, 64
  %1830 = load i64, i64* %PC.i708
  %1831 = add i64 %1830, 3
  store i64 %1831, i64* %PC.i708
  %1832 = inttoptr i64 %1829 to i32*
  %1833 = load i32, i32* %1832
  %1834 = zext i32 %1833 to i64
  store i64 %1834, i64* %RDI.i709, align 8
  store %struct.Memory* %loadMem_4387c2, %struct.Memory** %MEMORY
  %loadMem_4387c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i705 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 9
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RSI.i706 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i707 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i707
  %1845 = sub i64 %1844, 48
  %1846 = load i64, i64* %PC.i705
  %1847 = add i64 %1846, 3
  store i64 %1847, i64* %PC.i705
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848
  %1850 = zext i32 %1849 to i64
  store i64 %1850, i64* %RSI.i706, align 8
  store %struct.Memory* %loadMem_4387c5, %struct.Memory** %MEMORY
  %loadMem_4387c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i702 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 7
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RDX.i703 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 15
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RBP.i704 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RBP.i704
  %1861 = sub i64 %1860, 32
  %1862 = load i64, i64* %PC.i702
  %1863 = add i64 %1862, 4
  store i64 %1863, i64* %PC.i702
  %1864 = inttoptr i64 %1861 to i64*
  %1865 = load i64, i64* %1864
  store i64 %1865, i64* %RDX.i703, align 8
  store %struct.Memory* %loadMem_4387c8, %struct.Memory** %MEMORY
  %loadMem1_4387cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 33
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %PC.i701
  %1870 = add i64 %1869, 2420
  %1871 = load i64, i64* %PC.i701
  %1872 = add i64 %1871, 5
  %1873 = load i64, i64* %PC.i701
  %1874 = add i64 %1873, 5
  store i64 %1874, i64* %PC.i701
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1876 = load i64, i64* %1875, align 8
  %1877 = add i64 %1876, -8
  %1878 = inttoptr i64 %1877 to i64*
  store i64 %1872, i64* %1878
  store i64 %1877, i64* %1875, align 8
  %1879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1870, i64* %1879, align 8
  store %struct.Memory* %loadMem1_4387cc, %struct.Memory** %MEMORY
  %loadMem2_4387cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4387cc = load i64, i64* %3
  %call2_4387cc = call %struct.Memory* @sub_439140.false_margin(%struct.State* %0, i64 %loadPC_4387cc, %struct.Memory* %loadMem2_4387cc)
  store %struct.Memory* %call2_4387cc, %struct.Memory** %MEMORY
  %loadMem_4387d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1881 = getelementptr inbounds %struct.GPR, %struct.GPR* %1880, i32 0, i32 33
  %1882 = getelementptr inbounds %struct.Reg, %struct.Reg* %1881, i32 0, i32 0
  %PC.i699 = bitcast %union.anon* %1882 to i64*
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1884 = getelementptr inbounds %struct.GPR, %struct.GPR* %1883, i32 0, i32 1
  %1885 = getelementptr inbounds %struct.Reg, %struct.Reg* %1884, i32 0, i32 0
  %EAX.i700 = bitcast %union.anon* %1885 to i32*
  %1886 = load i32, i32* %EAX.i700
  %1887 = zext i32 %1886 to i64
  %1888 = load i64, i64* %PC.i699
  %1889 = add i64 %1888, 3
  store i64 %1889, i64* %PC.i699
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1890, align 1
  %1891 = and i32 %1886, 255
  %1892 = call i32 @llvm.ctpop.i32(i32 %1891)
  %1893 = trunc i32 %1892 to i8
  %1894 = and i8 %1893, 1
  %1895 = xor i8 %1894, 1
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1895, i8* %1896, align 1
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1897, align 1
  %1898 = icmp eq i32 %1886, 0
  %1899 = zext i1 %1898 to i8
  %1900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1899, i8* %1900, align 1
  %1901 = lshr i32 %1886, 31
  %1902 = trunc i32 %1901 to i8
  %1903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1902, i8* %1903, align 1
  %1904 = lshr i32 %1886, 31
  %1905 = xor i32 %1901, %1904
  %1906 = add i32 %1905, %1904
  %1907 = icmp eq i32 %1906, 2
  %1908 = zext i1 %1907 to i8
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1908, i8* %1909, align 1
  store %struct.Memory* %loadMem_4387d1, %struct.Memory** %MEMORY
  %loadMem_4387d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1911 = getelementptr inbounds %struct.GPR, %struct.GPR* %1910, i32 0, i32 33
  %1912 = getelementptr inbounds %struct.Reg, %struct.Reg* %1911, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1912 to i64*
  %1913 = load i64, i64* %PC.i698
  %1914 = add i64 %1913, 26
  %1915 = load i64, i64* %PC.i698
  %1916 = add i64 %1915, 6
  %1917 = load i64, i64* %PC.i698
  %1918 = add i64 %1917, 6
  store i64 %1918, i64* %PC.i698
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1920 = load i8, i8* %1919, align 1
  store i8 %1920, i8* %BRANCH_TAKEN, align 1
  %1921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1922 = icmp ne i8 %1920, 0
  %1923 = select i1 %1922, i64 %1914, i64 %1916
  store i64 %1923, i64* %1921, align 8
  store %struct.Memory* %loadMem_4387d4, %struct.Memory** %MEMORY
  %loadBr_4387d4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4387d4 = icmp eq i8 %loadBr_4387d4, 1
  br i1 %cmpBr_4387d4, label %block_.L_4387ee, label %block_.L_4387da

block_.L_4387da:                                  ; preds = %block_4387c2, %block_4387aa
  %loadMem_4387da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1925 = getelementptr inbounds %struct.GPR, %struct.GPR* %1924, i32 0, i32 33
  %1926 = getelementptr inbounds %struct.Reg, %struct.Reg* %1925, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1926 to i64*
  %1927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1928 = getelementptr inbounds %struct.GPR, %struct.GPR* %1927, i32 0, i32 1
  %1929 = getelementptr inbounds %struct.Reg, %struct.Reg* %1928, i32 0, i32 0
  %RAX.i696 = bitcast %union.anon* %1929 to i64*
  %1930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1931 = getelementptr inbounds %struct.GPR, %struct.GPR* %1930, i32 0, i32 15
  %1932 = getelementptr inbounds %struct.Reg, %struct.Reg* %1931, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1932 to i64*
  %1933 = load i64, i64* %RBP.i697
  %1934 = sub i64 %1933, 40
  %1935 = load i64, i64* %PC.i695
  %1936 = add i64 %1935, 4
  store i64 %1936, i64* %PC.i695
  %1937 = inttoptr i64 %1934 to i64*
  %1938 = load i64, i64* %1937
  store i64 %1938, i64* %RAX.i696, align 8
  store %struct.Memory* %loadMem_4387da, %struct.Memory** %MEMORY
  %loadMem_4387de = load %struct.Memory*, %struct.Memory** %MEMORY
  %1939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1940 = getelementptr inbounds %struct.GPR, %struct.GPR* %1939, i32 0, i32 33
  %1941 = getelementptr inbounds %struct.Reg, %struct.Reg* %1940, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %1941 to i64*
  %1942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1943 = getelementptr inbounds %struct.GPR, %struct.GPR* %1942, i32 0, i32 5
  %1944 = getelementptr inbounds %struct.Reg, %struct.Reg* %1943, i32 0, i32 0
  %RCX.i693 = bitcast %union.anon* %1944 to i64*
  %1945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1946 = getelementptr inbounds %struct.GPR, %struct.GPR* %1945, i32 0, i32 15
  %1947 = getelementptr inbounds %struct.Reg, %struct.Reg* %1946, i32 0, i32 0
  %RBP.i694 = bitcast %union.anon* %1947 to i64*
  %1948 = load i64, i64* %RBP.i694
  %1949 = sub i64 %1948, 64
  %1950 = load i64, i64* %PC.i692
  %1951 = add i64 %1950, 4
  store i64 %1951, i64* %PC.i692
  %1952 = inttoptr i64 %1949 to i32*
  %1953 = load i32, i32* %1952
  %1954 = sext i32 %1953 to i64
  store i64 %1954, i64* %RCX.i693, align 8
  store %struct.Memory* %loadMem_4387de, %struct.Memory** %MEMORY
  %loadMem_4387e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1956 = getelementptr inbounds %struct.GPR, %struct.GPR* %1955, i32 0, i32 33
  %1957 = getelementptr inbounds %struct.Reg, %struct.Reg* %1956, i32 0, i32 0
  %PC.i689 = bitcast %union.anon* %1957 to i64*
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 1
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %RAX.i690 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 5
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RCX.i691 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %RAX.i690
  %1965 = load i64, i64* %RCX.i691
  %1966 = mul i64 %1965, 4
  %1967 = add i64 %1966, %1964
  %1968 = load i64, i64* %PC.i689
  %1969 = add i64 %1968, 7
  store i64 %1969, i64* %PC.i689
  %1970 = inttoptr i64 %1967 to i32*
  store i32 1, i32* %1970
  store %struct.Memory* %loadMem_4387e2, %struct.Memory** %MEMORY
  %loadMem_4387e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1972 = getelementptr inbounds %struct.GPR, %struct.GPR* %1971, i32 0, i32 33
  %1973 = getelementptr inbounds %struct.Reg, %struct.Reg* %1972, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1973 to i64*
  %1974 = load i64, i64* %PC.i688
  %1975 = add i64 %1974, 32
  %1976 = load i64, i64* %PC.i688
  %1977 = add i64 %1976, 5
  store i64 %1977, i64* %PC.i688
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1975, i64* %1978, align 8
  store %struct.Memory* %loadMem_4387e9, %struct.Memory** %MEMORY
  br label %block_.L_438809

block_.L_4387ee:                                  ; preds = %block_4387c2, %block_438795
  %loadMem_4387ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 33
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RAX.i686 = bitcast %union.anon* %1984 to i64*
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 15
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %RBP.i687 = bitcast %union.anon* %1987 to i64*
  %1988 = load i64, i64* %RBP.i687
  %1989 = sub i64 %1988, 24
  %1990 = load i64, i64* %PC.i685
  %1991 = add i64 %1990, 4
  store i64 %1991, i64* %PC.i685
  %1992 = inttoptr i64 %1989 to i64*
  %1993 = load i64, i64* %1992
  store i64 %1993, i64* %RAX.i686, align 8
  store %struct.Memory* %loadMem_4387ee, %struct.Memory** %MEMORY
  %loadMem_4387f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1995 = getelementptr inbounds %struct.GPR, %struct.GPR* %1994, i32 0, i32 33
  %1996 = getelementptr inbounds %struct.Reg, %struct.Reg* %1995, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1996 to i64*
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1998 = getelementptr inbounds %struct.GPR, %struct.GPR* %1997, i32 0, i32 5
  %1999 = getelementptr inbounds %struct.Reg, %struct.Reg* %1998, i32 0, i32 0
  %RCX.i683 = bitcast %union.anon* %1999 to i64*
  %2000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2001 = getelementptr inbounds %struct.GPR, %struct.GPR* %2000, i32 0, i32 15
  %2002 = getelementptr inbounds %struct.Reg, %struct.Reg* %2001, i32 0, i32 0
  %RBP.i684 = bitcast %union.anon* %2002 to i64*
  %2003 = load i64, i64* %RBP.i684
  %2004 = sub i64 %2003, 64
  %2005 = load i64, i64* %PC.i682
  %2006 = add i64 %2005, 4
  store i64 %2006, i64* %PC.i682
  %2007 = inttoptr i64 %2004 to i32*
  %2008 = load i32, i32* %2007
  %2009 = sext i32 %2008 to i64
  store i64 %2009, i64* %RCX.i683, align 8
  store %struct.Memory* %loadMem_4387f2, %struct.Memory** %MEMORY
  %loadMem_4387f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2012 to i64*
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2014 = getelementptr inbounds %struct.GPR, %struct.GPR* %2013, i32 0, i32 1
  %2015 = getelementptr inbounds %struct.Reg, %struct.Reg* %2014, i32 0, i32 0
  %RAX.i680 = bitcast %union.anon* %2015 to i64*
  %2016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2017 = getelementptr inbounds %struct.GPR, %struct.GPR* %2016, i32 0, i32 5
  %2018 = getelementptr inbounds %struct.Reg, %struct.Reg* %2017, i32 0, i32 0
  %RCX.i681 = bitcast %union.anon* %2018 to i64*
  %2019 = load i64, i64* %RAX.i680
  %2020 = load i64, i64* %RCX.i681
  %2021 = mul i64 %2020, 4
  %2022 = add i64 %2021, %2019
  %2023 = load i64, i64* %PC.i679
  %2024 = add i64 %2023, 7
  store i64 %2024, i64* %PC.i679
  %2025 = inttoptr i64 %2022 to i32*
  store i32 1, i32* %2025
  store %struct.Memory* %loadMem_4387f6, %struct.Memory** %MEMORY
  %loadMem_4387fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2026 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2027 = getelementptr inbounds %struct.GPR, %struct.GPR* %2026, i32 0, i32 33
  %2028 = getelementptr inbounds %struct.Reg, %struct.Reg* %2027, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2028 to i64*
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2030 = getelementptr inbounds %struct.GPR, %struct.GPR* %2029, i32 0, i32 1
  %2031 = getelementptr inbounds %struct.Reg, %struct.Reg* %2030, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %2031 to i64*
  %2032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2033 = getelementptr inbounds %struct.GPR, %struct.GPR* %2032, i32 0, i32 15
  %2034 = getelementptr inbounds %struct.Reg, %struct.Reg* %2033, i32 0, i32 0
  %RBP.i678 = bitcast %union.anon* %2034 to i64*
  %2035 = load i64, i64* %RBP.i678
  %2036 = sub i64 %2035, 64
  %2037 = load i64, i64* %PC.i676
  %2038 = add i64 %2037, 4
  store i64 %2038, i64* %PC.i676
  %2039 = inttoptr i64 %2036 to i32*
  %2040 = load i32, i32* %2039
  %2041 = sext i32 %2040 to i64
  store i64 %2041, i64* %RAX.i677, align 8
  store %struct.Memory* %loadMem_4387fd, %struct.Memory** %MEMORY
  %loadMem_438801 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 1
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %RAX.i674 = bitcast %union.anon* %2047 to i64*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 15
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2050 to i64*
  %2051 = load i64, i64* %RBP.i675
  %2052 = load i64, i64* %RAX.i674
  %2053 = add i64 %2051, -880
  %2054 = add i64 %2053, %2052
  %2055 = load i64, i64* %PC.i673
  %2056 = add i64 %2055, 8
  store i64 %2056, i64* %PC.i673
  %2057 = inttoptr i64 %2054 to i8*
  store i8 1, i8* %2057
  store %struct.Memory* %loadMem_438801, %struct.Memory** %MEMORY
  br label %block_.L_438809

block_.L_438809:                                  ; preds = %block_.L_4387ee, %block_.L_4387da
  %loadMem_438809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2059 = getelementptr inbounds %struct.GPR, %struct.GPR* %2058, i32 0, i32 33
  %2060 = getelementptr inbounds %struct.Reg, %struct.Reg* %2059, i32 0, i32 0
  %PC.i672 = bitcast %union.anon* %2060 to i64*
  %2061 = load i64, i64* %PC.i672
  %2062 = add i64 %2061, 76
  %2063 = load i64, i64* %PC.i672
  %2064 = add i64 %2063, 5
  store i64 %2064, i64* %PC.i672
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2062, i64* %2065, align 8
  store %struct.Memory* %loadMem_438809, %struct.Memory** %MEMORY
  br label %block_.L_438855

block_.L_43880e:                                  ; preds = %block_43878b
  %loadMem_43880e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 33
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2068 to i64*
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2070 = getelementptr inbounds %struct.GPR, %struct.GPR* %2069, i32 0, i32 1
  %2071 = getelementptr inbounds %struct.Reg, %struct.Reg* %2070, i32 0, i32 0
  %RAX.i670 = bitcast %union.anon* %2071 to i64*
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2073 = getelementptr inbounds %struct.GPR, %struct.GPR* %2072, i32 0, i32 15
  %2074 = getelementptr inbounds %struct.Reg, %struct.Reg* %2073, i32 0, i32 0
  %RBP.i671 = bitcast %union.anon* %2074 to i64*
  %2075 = load i64, i64* %RBP.i671
  %2076 = sub i64 %2075, 64
  %2077 = load i64, i64* %PC.i669
  %2078 = add i64 %2077, 4
  store i64 %2078, i64* %PC.i669
  %2079 = inttoptr i64 %2076 to i32*
  %2080 = load i32, i32* %2079
  %2081 = sext i32 %2080 to i64
  store i64 %2081, i64* %RAX.i670, align 8
  store %struct.Memory* %loadMem_43880e, %struct.Memory** %MEMORY
  %loadMem_438812 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 1
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %2087 to i64*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 5
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RCX.i668 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RAX.i667
  %2092 = add i64 %2091, 12099168
  %2093 = load i64, i64* %PC.i666
  %2094 = add i64 %2093, 8
  store i64 %2094, i64* %PC.i666
  %2095 = inttoptr i64 %2092 to i8*
  %2096 = load i8, i8* %2095
  %2097 = zext i8 %2096 to i64
  store i64 %2097, i64* %RCX.i668, align 8
  store %struct.Memory* %loadMem_438812, %struct.Memory** %MEMORY
  %loadMem_43881a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2100 to i64*
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2102 = getelementptr inbounds %struct.GPR, %struct.GPR* %2101, i32 0, i32 5
  %2103 = getelementptr inbounds %struct.Reg, %struct.Reg* %2102, i32 0, i32 0
  %ECX.i665 = bitcast %union.anon* %2103 to i32*
  %2104 = load i32, i32* %ECX.i665
  %2105 = zext i32 %2104 to i64
  %2106 = load i64, i64* %PC.i664
  %2107 = add i64 %2106, 3
  store i64 %2107, i64* %PC.i664
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2108, align 1
  %2109 = and i32 %2104, 255
  %2110 = call i32 @llvm.ctpop.i32(i32 %2109)
  %2111 = trunc i32 %2110 to i8
  %2112 = and i8 %2111, 1
  %2113 = xor i8 %2112, 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2113, i8* %2114, align 1
  %2115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2115, align 1
  %2116 = icmp eq i32 %2104, 0
  %2117 = zext i1 %2116 to i8
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2117, i8* %2118, align 1
  %2119 = lshr i32 %2104, 31
  %2120 = trunc i32 %2119 to i8
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2120, i8* %2121, align 1
  %2122 = lshr i32 %2104, 31
  %2123 = xor i32 %2119, %2122
  %2124 = add i32 %2123, %2122
  %2125 = icmp eq i32 %2124, 2
  %2126 = zext i1 %2125 to i8
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2126, i8* %2127, align 1
  store %struct.Memory* %loadMem_43881a, %struct.Memory** %MEMORY
  %loadMem_43881d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2129 = getelementptr inbounds %struct.GPR, %struct.GPR* %2128, i32 0, i32 33
  %2130 = getelementptr inbounds %struct.Reg, %struct.Reg* %2129, i32 0, i32 0
  %PC.i663 = bitcast %union.anon* %2130 to i64*
  %2131 = load i64, i64* %PC.i663
  %2132 = add i64 %2131, 24
  %2133 = load i64, i64* %PC.i663
  %2134 = add i64 %2133, 6
  %2135 = load i64, i64* %PC.i663
  %2136 = add i64 %2135, 6
  store i64 %2136, i64* %PC.i663
  %2137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2138 = load i8, i8* %2137, align 1
  %2139 = icmp eq i8 %2138, 0
  %2140 = zext i1 %2139 to i8
  store i8 %2140, i8* %BRANCH_TAKEN, align 1
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2142 = select i1 %2139, i64 %2132, i64 %2134
  store i64 %2142, i64* %2141, align 8
  store %struct.Memory* %loadMem_43881d, %struct.Memory** %MEMORY
  %loadBr_43881d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43881d = icmp eq i8 %loadBr_43881d, 1
  br i1 %cmpBr_43881d, label %block_.L_438835, label %block_438823

block_438823:                                     ; preds = %block_.L_43880e
  %loadMem_438823 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 1
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RAX.i661 = bitcast %union.anon* %2148 to i64*
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2150 = getelementptr inbounds %struct.GPR, %struct.GPR* %2149, i32 0, i32 15
  %2151 = getelementptr inbounds %struct.Reg, %struct.Reg* %2150, i32 0, i32 0
  %RBP.i662 = bitcast %union.anon* %2151 to i64*
  %2152 = load i64, i64* %RBP.i662
  %2153 = sub i64 %2152, 40
  %2154 = load i64, i64* %PC.i660
  %2155 = add i64 %2154, 4
  store i64 %2155, i64* %PC.i660
  %2156 = inttoptr i64 %2153 to i64*
  %2157 = load i64, i64* %2156
  store i64 %2157, i64* %RAX.i661, align 8
  store %struct.Memory* %loadMem_438823, %struct.Memory** %MEMORY
  %loadMem_438827 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2159 = getelementptr inbounds %struct.GPR, %struct.GPR* %2158, i32 0, i32 33
  %2160 = getelementptr inbounds %struct.Reg, %struct.Reg* %2159, i32 0, i32 0
  %PC.i657 = bitcast %union.anon* %2160 to i64*
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 5
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %RCX.i658 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 15
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RBP.i659 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %RBP.i659
  %2168 = sub i64 %2167, 64
  %2169 = load i64, i64* %PC.i657
  %2170 = add i64 %2169, 4
  store i64 %2170, i64* %PC.i657
  %2171 = inttoptr i64 %2168 to i32*
  %2172 = load i32, i32* %2171
  %2173 = sext i32 %2172 to i64
  store i64 %2173, i64* %RCX.i658, align 8
  store %struct.Memory* %loadMem_438827, %struct.Memory** %MEMORY
  %loadMem_43882b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 33
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 1
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %2179 to i64*
  %2180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2181 = getelementptr inbounds %struct.GPR, %struct.GPR* %2180, i32 0, i32 5
  %2182 = getelementptr inbounds %struct.Reg, %struct.Reg* %2181, i32 0, i32 0
  %RCX.i656 = bitcast %union.anon* %2182 to i64*
  %2183 = load i64, i64* %RAX.i655
  %2184 = load i64, i64* %RCX.i656
  %2185 = mul i64 %2184, 4
  %2186 = add i64 %2185, %2183
  %2187 = load i64, i64* %PC.i654
  %2188 = add i64 %2187, 4
  store i64 %2188, i64* %PC.i654
  %2189 = inttoptr i64 %2186 to i32*
  %2190 = load i32, i32* %2189
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2191, align 1
  %2192 = and i32 %2190, 255
  %2193 = call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2196, i8* %2197, align 1
  %2198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2198, align 1
  %2199 = icmp eq i32 %2190, 0
  %2200 = zext i1 %2199 to i8
  %2201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2200, i8* %2201, align 1
  %2202 = lshr i32 %2190, 31
  %2203 = trunc i32 %2202 to i8
  %2204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2203, i8* %2204, align 1
  %2205 = lshr i32 %2190, 31
  %2206 = xor i32 %2202, %2205
  %2207 = add i32 %2206, %2205
  %2208 = icmp eq i32 %2207, 2
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2209, i8* %2210, align 1
  store %struct.Memory* %loadMem_43882b, %struct.Memory** %MEMORY
  %loadMem_43882f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %PC.i653
  %2215 = add i64 %2214, 33
  %2216 = load i64, i64* %PC.i653
  %2217 = add i64 %2216, 6
  %2218 = load i64, i64* %PC.i653
  %2219 = add i64 %2218, 6
  store i64 %2219, i64* %PC.i653
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2221 = load i8, i8* %2220, align 1
  %2222 = icmp eq i8 %2221, 0
  %2223 = zext i1 %2222 to i8
  store i8 %2223, i8* %BRANCH_TAKEN, align 1
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2225 = select i1 %2222, i64 %2215, i64 %2217
  store i64 %2225, i64* %2224, align 8
  store %struct.Memory* %loadMem_43882f, %struct.Memory** %MEMORY
  %loadBr_43882f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43882f = icmp eq i8 %loadBr_43882f, 1
  br i1 %cmpBr_43882f, label %block_.L_438850, label %block_.L_438835

block_.L_438835:                                  ; preds = %block_438823, %block_.L_43880e
  %loadMem_438835 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2227 = getelementptr inbounds %struct.GPR, %struct.GPR* %2226, i32 0, i32 33
  %2228 = getelementptr inbounds %struct.Reg, %struct.Reg* %2227, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2228 to i64*
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2230 = getelementptr inbounds %struct.GPR, %struct.GPR* %2229, i32 0, i32 1
  %2231 = getelementptr inbounds %struct.Reg, %struct.Reg* %2230, i32 0, i32 0
  %RAX.i651 = bitcast %union.anon* %2231 to i64*
  %2232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2233 = getelementptr inbounds %struct.GPR, %struct.GPR* %2232, i32 0, i32 15
  %2234 = getelementptr inbounds %struct.Reg, %struct.Reg* %2233, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %2234 to i64*
  %2235 = load i64, i64* %RBP.i652
  %2236 = sub i64 %2235, 24
  %2237 = load i64, i64* %PC.i650
  %2238 = add i64 %2237, 4
  store i64 %2238, i64* %PC.i650
  %2239 = inttoptr i64 %2236 to i64*
  %2240 = load i64, i64* %2239
  store i64 %2240, i64* %RAX.i651, align 8
  store %struct.Memory* %loadMem_438835, %struct.Memory** %MEMORY
  %loadMem_438839 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 33
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %PC.i647 = bitcast %union.anon* %2243 to i64*
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2245 = getelementptr inbounds %struct.GPR, %struct.GPR* %2244, i32 0, i32 5
  %2246 = getelementptr inbounds %struct.Reg, %struct.Reg* %2245, i32 0, i32 0
  %RCX.i648 = bitcast %union.anon* %2246 to i64*
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2248 = getelementptr inbounds %struct.GPR, %struct.GPR* %2247, i32 0, i32 15
  %2249 = getelementptr inbounds %struct.Reg, %struct.Reg* %2248, i32 0, i32 0
  %RBP.i649 = bitcast %union.anon* %2249 to i64*
  %2250 = load i64, i64* %RBP.i649
  %2251 = sub i64 %2250, 64
  %2252 = load i64, i64* %PC.i647
  %2253 = add i64 %2252, 4
  store i64 %2253, i64* %PC.i647
  %2254 = inttoptr i64 %2251 to i32*
  %2255 = load i32, i32* %2254
  %2256 = sext i32 %2255 to i64
  store i64 %2256, i64* %RCX.i648, align 8
  store %struct.Memory* %loadMem_438839, %struct.Memory** %MEMORY
  %loadMem_43883d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 33
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2259 to i64*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 1
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RAX.i645 = bitcast %union.anon* %2262 to i64*
  %2263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2264 = getelementptr inbounds %struct.GPR, %struct.GPR* %2263, i32 0, i32 5
  %2265 = getelementptr inbounds %struct.Reg, %struct.Reg* %2264, i32 0, i32 0
  %RCX.i646 = bitcast %union.anon* %2265 to i64*
  %2266 = load i64, i64* %RAX.i645
  %2267 = load i64, i64* %RCX.i646
  %2268 = mul i64 %2267, 4
  %2269 = add i64 %2268, %2266
  %2270 = load i64, i64* %PC.i644
  %2271 = add i64 %2270, 7
  store i64 %2271, i64* %PC.i644
  %2272 = inttoptr i64 %2269 to i32*
  store i32 1, i32* %2272
  store %struct.Memory* %loadMem_43883d, %struct.Memory** %MEMORY
  %loadMem_438844 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 33
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2275 to i64*
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 1
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %RAX.i642 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 15
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RBP.i643 = bitcast %union.anon* %2281 to i64*
  %2282 = load i64, i64* %RBP.i643
  %2283 = sub i64 %2282, 64
  %2284 = load i64, i64* %PC.i641
  %2285 = add i64 %2284, 4
  store i64 %2285, i64* %PC.i641
  %2286 = inttoptr i64 %2283 to i32*
  %2287 = load i32, i32* %2286
  %2288 = sext i32 %2287 to i64
  store i64 %2288, i64* %RAX.i642, align 8
  store %struct.Memory* %loadMem_438844, %struct.Memory** %MEMORY
  %loadMem_438848 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2290 = getelementptr inbounds %struct.GPR, %struct.GPR* %2289, i32 0, i32 33
  %2291 = getelementptr inbounds %struct.Reg, %struct.Reg* %2290, i32 0, i32 0
  %PC.i638 = bitcast %union.anon* %2291 to i64*
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2293 = getelementptr inbounds %struct.GPR, %struct.GPR* %2292, i32 0, i32 1
  %2294 = getelementptr inbounds %struct.Reg, %struct.Reg* %2293, i32 0, i32 0
  %RAX.i639 = bitcast %union.anon* %2294 to i64*
  %2295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2296 = getelementptr inbounds %struct.GPR, %struct.GPR* %2295, i32 0, i32 15
  %2297 = getelementptr inbounds %struct.Reg, %struct.Reg* %2296, i32 0, i32 0
  %RBP.i640 = bitcast %union.anon* %2297 to i64*
  %2298 = load i64, i64* %RBP.i640
  %2299 = load i64, i64* %RAX.i639
  %2300 = add i64 %2298, -880
  %2301 = add i64 %2300, %2299
  %2302 = load i64, i64* %PC.i638
  %2303 = add i64 %2302, 8
  store i64 %2303, i64* %PC.i638
  %2304 = inttoptr i64 %2301 to i8*
  store i8 1, i8* %2304
  store %struct.Memory* %loadMem_438848, %struct.Memory** %MEMORY
  br label %block_.L_438850

block_.L_438850:                                  ; preds = %block_.L_438835, %block_438823
  %loadMem_438850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2306 = getelementptr inbounds %struct.GPR, %struct.GPR* %2305, i32 0, i32 33
  %2307 = getelementptr inbounds %struct.Reg, %struct.Reg* %2306, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %2307 to i64*
  %2308 = load i64, i64* %PC.i637
  %2309 = add i64 %2308, 5
  %2310 = load i64, i64* %PC.i637
  %2311 = add i64 %2310, 5
  store i64 %2311, i64* %PC.i637
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2309, i64* %2312, align 8
  store %struct.Memory* %loadMem_438850, %struct.Memory** %MEMORY
  br label %block_.L_438855

block_.L_438855:                                  ; preds = %block_.L_438850, %block_.L_438809
  %loadMem_438855 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2315 to i64*
  %2316 = load i64, i64* %PC.i636
  %2317 = add i64 %2316, 35
  %2318 = load i64, i64* %PC.i636
  %2319 = add i64 %2318, 5
  store i64 %2319, i64* %PC.i636
  %2320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2317, i64* %2320, align 8
  store %struct.Memory* %loadMem_438855, %struct.Memory** %MEMORY
  br label %block_.L_438878

block_.L_43885a:                                  ; preds = %block_.L_438781
  %loadMem_43885a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2322 = getelementptr inbounds %struct.GPR, %struct.GPR* %2321, i32 0, i32 33
  %2323 = getelementptr inbounds %struct.Reg, %struct.Reg* %2322, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %2323 to i64*
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2325 = getelementptr inbounds %struct.GPR, %struct.GPR* %2324, i32 0, i32 1
  %2326 = getelementptr inbounds %struct.Reg, %struct.Reg* %2325, i32 0, i32 0
  %RAX.i634 = bitcast %union.anon* %2326 to i64*
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 15
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %RBP.i635 = bitcast %union.anon* %2329 to i64*
  %2330 = load i64, i64* %RBP.i635
  %2331 = sub i64 %2330, 64
  %2332 = load i64, i64* %PC.i633
  %2333 = add i64 %2332, 3
  store i64 %2333, i64* %PC.i633
  %2334 = inttoptr i64 %2331 to i32*
  %2335 = load i32, i32* %2334
  %2336 = zext i32 %2335 to i64
  store i64 %2336, i64* %RAX.i634, align 8
  store %struct.Memory* %loadMem_43885a, %struct.Memory** %MEMORY
  %loadMem_43885d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i630 = bitcast %union.anon* %2339 to i64*
  %2340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2341 = getelementptr inbounds %struct.GPR, %struct.GPR* %2340, i32 0, i32 5
  %2342 = getelementptr inbounds %struct.Reg, %struct.Reg* %2341, i32 0, i32 0
  %RCX.i631 = bitcast %union.anon* %2342 to i64*
  %2343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2344 = getelementptr inbounds %struct.GPR, %struct.GPR* %2343, i32 0, i32 15
  %2345 = getelementptr inbounds %struct.Reg, %struct.Reg* %2344, i32 0, i32 0
  %RBP.i632 = bitcast %union.anon* %2345 to i64*
  %2346 = load i64, i64* %RBP.i632
  %2347 = sub i64 %2346, 2484
  %2348 = load i64, i64* %PC.i630
  %2349 = add i64 %2348, 6
  store i64 %2349, i64* %PC.i630
  %2350 = inttoptr i64 %2347 to i32*
  %2351 = load i32, i32* %2350
  %2352 = zext i32 %2351 to i64
  store i64 %2352, i64* %RCX.i631, align 8
  store %struct.Memory* %loadMem_43885d, %struct.Memory** %MEMORY
  %loadMem_438863 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2354 = getelementptr inbounds %struct.GPR, %struct.GPR* %2353, i32 0, i32 33
  %2355 = getelementptr inbounds %struct.Reg, %struct.Reg* %2354, i32 0, i32 0
  %PC.i627 = bitcast %union.anon* %2355 to i64*
  %2356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2357 = getelementptr inbounds %struct.GPR, %struct.GPR* %2356, i32 0, i32 5
  %2358 = getelementptr inbounds %struct.Reg, %struct.Reg* %2357, i32 0, i32 0
  %ECX.i628 = bitcast %union.anon* %2358 to i32*
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2360 = getelementptr inbounds %struct.GPR, %struct.GPR* %2359, i32 0, i32 7
  %2361 = getelementptr inbounds %struct.Reg, %struct.Reg* %2360, i32 0, i32 0
  %RDX.i629 = bitcast %union.anon* %2361 to i64*
  %2362 = load i32, i32* %ECX.i628
  %2363 = zext i32 %2362 to i64
  %2364 = load i64, i64* %PC.i627
  %2365 = add i64 %2364, 2
  store i64 %2365, i64* %PC.i627
  %2366 = and i64 %2363, 4294967295
  store i64 %2366, i64* %RDX.i629, align 8
  store %struct.Memory* %loadMem_438863, %struct.Memory** %MEMORY
  %loadMem_438865 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 33
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 7
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RDX.i626 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RDX.i626
  %2374 = load i64, i64* %PC.i625
  %2375 = add i64 %2374, 3
  store i64 %2375, i64* %PC.i625
  %2376 = trunc i64 %2373 to i32
  %2377 = add i32 1, %2376
  %2378 = zext i32 %2377 to i64
  store i64 %2378, i64* %RDX.i626, align 8
  %2379 = icmp ult i32 %2377, %2376
  %2380 = icmp ult i32 %2377, 1
  %2381 = or i1 %2379, %2380
  %2382 = zext i1 %2381 to i8
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2382, i8* %2383, align 1
  %2384 = and i32 %2377, 255
  %2385 = call i32 @llvm.ctpop.i32(i32 %2384)
  %2386 = trunc i32 %2385 to i8
  %2387 = and i8 %2386, 1
  %2388 = xor i8 %2387, 1
  %2389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2388, i8* %2389, align 1
  %2390 = xor i64 1, %2373
  %2391 = trunc i64 %2390 to i32
  %2392 = xor i32 %2391, %2377
  %2393 = lshr i32 %2392, 4
  %2394 = trunc i32 %2393 to i8
  %2395 = and i8 %2394, 1
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2395, i8* %2396, align 1
  %2397 = icmp eq i32 %2377, 0
  %2398 = zext i1 %2397 to i8
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2398, i8* %2399, align 1
  %2400 = lshr i32 %2377, 31
  %2401 = trunc i32 %2400 to i8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2401, i8* %2402, align 1
  %2403 = lshr i32 %2376, 31
  %2404 = xor i32 %2400, %2403
  %2405 = add i32 %2404, %2400
  %2406 = icmp eq i32 %2405, 2
  %2407 = zext i1 %2406 to i8
  %2408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2407, i8* %2408, align 1
  store %struct.Memory* %loadMem_438865, %struct.Memory** %MEMORY
  %loadMem_438868 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 33
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %2411 to i64*
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 7
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %EDX.i623 = bitcast %union.anon* %2414 to i32*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 15
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %RBP.i624 = bitcast %union.anon* %2417 to i64*
  %2418 = load i64, i64* %RBP.i624
  %2419 = sub i64 %2418, 2484
  %2420 = load i32, i32* %EDX.i623
  %2421 = zext i32 %2420 to i64
  %2422 = load i64, i64* %PC.i622
  %2423 = add i64 %2422, 6
  store i64 %2423, i64* %PC.i622
  %2424 = inttoptr i64 %2419 to i32*
  store i32 %2420, i32* %2424
  store %struct.Memory* %loadMem_438868, %struct.Memory** %MEMORY
  %loadMem_43886e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 33
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 5
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %ECX.i620 = bitcast %union.anon* %2430 to i32*
  %2431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2432 = getelementptr inbounds %struct.GPR, %struct.GPR* %2431, i32 0, i32 9
  %2433 = getelementptr inbounds %struct.Reg, %struct.Reg* %2432, i32 0, i32 0
  %RSI.i621 = bitcast %union.anon* %2433 to i64*
  %2434 = load i32, i32* %ECX.i620
  %2435 = zext i32 %2434 to i64
  %2436 = load i64, i64* %PC.i619
  %2437 = add i64 %2436, 3
  store i64 %2437, i64* %PC.i619
  %2438 = shl i64 %2435, 32
  %2439 = ashr exact i64 %2438, 32
  store i64 %2439, i64* %RSI.i621, align 8
  store %struct.Memory* %loadMem_43886e, %struct.Memory** %MEMORY
  %loadMem_438871 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2440 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2441 = getelementptr inbounds %struct.GPR, %struct.GPR* %2440, i32 0, i32 33
  %2442 = getelementptr inbounds %struct.Reg, %struct.Reg* %2441, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2442 to i64*
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2444 = getelementptr inbounds %struct.GPR, %struct.GPR* %2443, i32 0, i32 1
  %2445 = getelementptr inbounds %struct.Reg, %struct.Reg* %2444, i32 0, i32 0
  %EAX.i616 = bitcast %union.anon* %2445 to i32*
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2447 = getelementptr inbounds %struct.GPR, %struct.GPR* %2446, i32 0, i32 9
  %2448 = getelementptr inbounds %struct.Reg, %struct.Reg* %2447, i32 0, i32 0
  %RSI.i617 = bitcast %union.anon* %2448 to i64*
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2450 = getelementptr inbounds %struct.GPR, %struct.GPR* %2449, i32 0, i32 15
  %2451 = getelementptr inbounds %struct.Reg, %struct.Reg* %2450, i32 0, i32 0
  %RBP.i618 = bitcast %union.anon* %2451 to i64*
  %2452 = load i64, i64* %RBP.i618
  %2453 = load i64, i64* %RSI.i617
  %2454 = mul i64 %2453, 4
  %2455 = add i64 %2452, -2480
  %2456 = add i64 %2455, %2454
  %2457 = load i32, i32* %EAX.i616
  %2458 = zext i32 %2457 to i64
  %2459 = load i64, i64* %PC.i615
  %2460 = add i64 %2459, 7
  store i64 %2460, i64* %PC.i615
  %2461 = inttoptr i64 %2456 to i32*
  store i32 %2457, i32* %2461
  store %struct.Memory* %loadMem_438871, %struct.Memory** %MEMORY
  br label %block_.L_438878

block_.L_438878:                                  ; preds = %block_.L_43885a, %block_.L_438855
  %loadMem_438878 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2463 = getelementptr inbounds %struct.GPR, %struct.GPR* %2462, i32 0, i32 33
  %2464 = getelementptr inbounds %struct.Reg, %struct.Reg* %2463, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2464 to i64*
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2466 = getelementptr inbounds %struct.GPR, %struct.GPR* %2465, i32 0, i32 15
  %2467 = getelementptr inbounds %struct.Reg, %struct.Reg* %2466, i32 0, i32 0
  %RBP.i614 = bitcast %union.anon* %2467 to i64*
  %2468 = load i64, i64* %RBP.i614
  %2469 = sub i64 %2468, 76
  %2470 = load i64, i64* %PC.i613
  %2471 = add i64 %2470, 4
  store i64 %2471, i64* %PC.i613
  %2472 = inttoptr i64 %2469 to i32*
  %2473 = load i32, i32* %2472
  %2474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2474, align 1
  %2475 = and i32 %2473, 255
  %2476 = call i32 @llvm.ctpop.i32(i32 %2475)
  %2477 = trunc i32 %2476 to i8
  %2478 = and i8 %2477, 1
  %2479 = xor i8 %2478, 1
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2479, i8* %2480, align 1
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2481, align 1
  %2482 = icmp eq i32 %2473, 0
  %2483 = zext i1 %2482 to i8
  %2484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2483, i8* %2484, align 1
  %2485 = lshr i32 %2473, 31
  %2486 = trunc i32 %2485 to i8
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2486, i8* %2487, align 1
  %2488 = lshr i32 %2473, 31
  %2489 = xor i32 %2485, %2488
  %2490 = add i32 %2489, %2488
  %2491 = icmp eq i32 %2490, 2
  %2492 = zext i1 %2491 to i8
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2492, i8* %2493, align 1
  store %struct.Memory* %loadMem_438878, %struct.Memory** %MEMORY
  %loadMem_43887c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2495 = getelementptr inbounds %struct.GPR, %struct.GPR* %2494, i32 0, i32 33
  %2496 = getelementptr inbounds %struct.Reg, %struct.Reg* %2495, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2496 to i64*
  %2497 = load i64, i64* %PC.i612
  %2498 = add i64 %2497, 44
  %2499 = load i64, i64* %PC.i612
  %2500 = add i64 %2499, 6
  %2501 = load i64, i64* %PC.i612
  %2502 = add i64 %2501, 6
  store i64 %2502, i64* %PC.i612
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2504 = load i8, i8* %2503, align 1
  store i8 %2504, i8* %BRANCH_TAKEN, align 1
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2506 = icmp ne i8 %2504, 0
  %2507 = select i1 %2506, i64 %2498, i64 %2500
  store i64 %2507, i64* %2505, align 8
  store %struct.Memory* %loadMem_43887c, %struct.Memory** %MEMORY
  %loadBr_43887c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43887c = icmp eq i8 %loadBr_43887c, 1
  br i1 %cmpBr_43887c, label %block_.L_4388a8, label %block_438882

block_438882:                                     ; preds = %block_.L_438878
  %loadMem_438882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2509 = getelementptr inbounds %struct.GPR, %struct.GPR* %2508, i32 0, i32 33
  %2510 = getelementptr inbounds %struct.Reg, %struct.Reg* %2509, i32 0, i32 0
  %PC.i609 = bitcast %union.anon* %2510 to i64*
  %2511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2512 = getelementptr inbounds %struct.GPR, %struct.GPR* %2511, i32 0, i32 1
  %2513 = getelementptr inbounds %struct.Reg, %struct.Reg* %2512, i32 0, i32 0
  %RAX.i610 = bitcast %union.anon* %2513 to i64*
  %2514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2515 = getelementptr inbounds %struct.GPR, %struct.GPR* %2514, i32 0, i32 15
  %2516 = getelementptr inbounds %struct.Reg, %struct.Reg* %2515, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %2516 to i64*
  %2517 = load i64, i64* %RBP.i611
  %2518 = sub i64 %2517, 64
  %2519 = load i64, i64* %PC.i609
  %2520 = add i64 %2519, 4
  store i64 %2520, i64* %PC.i609
  %2521 = inttoptr i64 %2518 to i32*
  %2522 = load i32, i32* %2521
  %2523 = sext i32 %2522 to i64
  store i64 %2523, i64* %RAX.i610, align 8
  store %struct.Memory* %loadMem_438882, %struct.Memory** %MEMORY
  %loadMem_438886 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 33
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %PC.i606 = bitcast %union.anon* %2526 to i64*
  %2527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2528 = getelementptr inbounds %struct.GPR, %struct.GPR* %2527, i32 0, i32 1
  %2529 = getelementptr inbounds %struct.Reg, %struct.Reg* %2528, i32 0, i32 0
  %RAX.i607 = bitcast %union.anon* %2529 to i64*
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 15
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %RBP.i608 = bitcast %union.anon* %2532 to i64*
  %2533 = load i64, i64* %RBP.i608
  %2534 = load i64, i64* %RAX.i607
  %2535 = add i64 %2533, -480
  %2536 = add i64 %2535, %2534
  %2537 = load i64, i64* %PC.i606
  %2538 = add i64 %2537, 8
  store i64 %2538, i64* %PC.i606
  %2539 = inttoptr i64 %2536 to i8*
  store i8 1, i8* %2539
  store %struct.Memory* %loadMem_438886, %struct.Memory** %MEMORY
  %loadMem_43888e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2541 = getelementptr inbounds %struct.GPR, %struct.GPR* %2540, i32 0, i32 33
  %2542 = getelementptr inbounds %struct.Reg, %struct.Reg* %2541, i32 0, i32 0
  %PC.i603 = bitcast %union.anon* %2542 to i64*
  %2543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2544 = getelementptr inbounds %struct.GPR, %struct.GPR* %2543, i32 0, i32 1
  %2545 = getelementptr inbounds %struct.Reg, %struct.Reg* %2544, i32 0, i32 0
  %RAX.i604 = bitcast %union.anon* %2545 to i64*
  %2546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2547 = getelementptr inbounds %struct.GPR, %struct.GPR* %2546, i32 0, i32 15
  %2548 = getelementptr inbounds %struct.Reg, %struct.Reg* %2547, i32 0, i32 0
  %RBP.i605 = bitcast %union.anon* %2548 to i64*
  %2549 = load i64, i64* %RBP.i605
  %2550 = sub i64 %2549, 64
  %2551 = load i64, i64* %PC.i603
  %2552 = add i64 %2551, 4
  store i64 %2552, i64* %PC.i603
  %2553 = inttoptr i64 %2550 to i32*
  %2554 = load i32, i32* %2553
  %2555 = sext i32 %2554 to i64
  store i64 %2555, i64* %RAX.i604, align 8
  store %struct.Memory* %loadMem_43888e, %struct.Memory** %MEMORY
  %loadMem_438892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2557 = getelementptr inbounds %struct.GPR, %struct.GPR* %2556, i32 0, i32 33
  %2558 = getelementptr inbounds %struct.Reg, %struct.Reg* %2557, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2558 to i64*
  %2559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2560 = getelementptr inbounds %struct.GPR, %struct.GPR* %2559, i32 0, i32 5
  %2561 = getelementptr inbounds %struct.Reg, %struct.Reg* %2560, i32 0, i32 0
  %2562 = bitcast %union.anon* %2561 to %struct.anon.2*
  %CL.i600 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2562, i32 0, i32 0
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2564 = getelementptr inbounds %struct.GPR, %struct.GPR* %2563, i32 0, i32 1
  %2565 = getelementptr inbounds %struct.Reg, %struct.Reg* %2564, i32 0, i32 0
  %RAX.i601 = bitcast %union.anon* %2565 to i64*
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 15
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %RBP.i602 = bitcast %union.anon* %2568 to i64*
  %2569 = load i64, i64* %RBP.i602
  %2570 = load i64, i64* %RAX.i601
  %2571 = add i64 %2569, -880
  %2572 = add i64 %2571, %2570
  %2573 = load i64, i64* %PC.i599
  %2574 = add i64 %2573, 7
  store i64 %2574, i64* %PC.i599
  %2575 = inttoptr i64 %2572 to i8*
  %2576 = load i8, i8* %2575
  store i8 %2576, i8* %CL.i600, align 1
  store %struct.Memory* %loadMem_438892, %struct.Memory** %MEMORY
  %loadMem_438899 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 33
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2579 to i64*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 5
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %2583 = bitcast %union.anon* %2582 to %struct.anon.2*
  %CL.i598 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2583, i32 0, i32 0
  %2584 = load i8, i8* %CL.i598
  %2585 = zext i8 %2584 to i64
  %2586 = load i64, i64* %PC.i597
  %2587 = add i64 %2586, 3
  store i64 %2587, i64* %PC.i597
  %2588 = add i8 -1, %2584
  store i8 %2588, i8* %CL.i598, align 1
  %2589 = icmp ult i8 %2588, %2584
  %2590 = icmp ult i8 %2588, -1
  %2591 = or i1 %2589, %2590
  %2592 = zext i1 %2591 to i8
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2592, i8* %2593, align 1
  %2594 = zext i8 %2588 to i32
  %2595 = call i32 @llvm.ctpop.i32(i32 %2594)
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  %2598 = xor i8 %2597, 1
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2598, i8* %2599, align 1
  %2600 = xor i64 -1, %2585
  %2601 = trunc i64 %2600 to i8
  %2602 = xor i8 %2601, %2588
  %2603 = lshr i8 %2602, 4
  %2604 = and i8 %2603, 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2604, i8* %2605, align 1
  %2606 = icmp eq i8 %2588, 0
  %2607 = zext i1 %2606 to i8
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2607, i8* %2608, align 1
  %2609 = lshr i8 %2588, 7
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2609, i8* %2610, align 1
  %2611 = lshr i8 %2584, 7
  %2612 = xor i8 %2609, %2611
  %2613 = xor i8 %2609, 1
  %2614 = add i8 %2612, %2613
  %2615 = icmp eq i8 %2614, 2
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2616, i8* %2617, align 1
  store %struct.Memory* %loadMem_438899, %struct.Memory** %MEMORY
  %loadMem_43889c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 5
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %2624 = bitcast %union.anon* %2623 to %struct.anon.2*
  %CL.i594 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2624, i32 0, i32 0
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 1
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RAX.i595 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 15
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RBP.i596
  %2632 = load i64, i64* %RAX.i595
  %2633 = add i64 %2631, -880
  %2634 = add i64 %2633, %2632
  %2635 = load i8, i8* %CL.i594
  %2636 = zext i8 %2635 to i64
  %2637 = load i64, i64* %PC.i593
  %2638 = add i64 %2637, 7
  store i64 %2638, i64* %PC.i593
  %2639 = inttoptr i64 %2634 to i8*
  store i8 %2635, i8* %2639
  store %struct.Memory* %loadMem_43889c, %struct.Memory** %MEMORY
  %loadMem_4388a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 33
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %PC.i592 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %PC.i592
  %2644 = add i64 %2643, 48
  %2645 = load i64, i64* %PC.i592
  %2646 = add i64 %2645, 5
  store i64 %2646, i64* %PC.i592
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2644, i64* %2647, align 8
  store %struct.Memory* %loadMem_4388a3, %struct.Memory** %MEMORY
  br label %block_.L_4388d3

block_.L_4388a8:                                  ; preds = %block_.L_438878
  %loadMem_4388a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 11
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 15
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RBP.i591 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RBP.i591
  %2658 = sub i64 %2657, 64
  %2659 = load i64, i64* %PC.i590
  %2660 = add i64 %2659, 3
  store i64 %2660, i64* %PC.i590
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_4388a8, %struct.Memory** %MEMORY
  %loadMem1_4388ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i589 = bitcast %union.anon* %2666 to i64*
  %2667 = load i64, i64* %PC.i589
  %2668 = add i64 %2667, -168475
  %2669 = load i64, i64* %PC.i589
  %2670 = add i64 %2669, 5
  %2671 = load i64, i64* %PC.i589
  %2672 = add i64 %2671, 5
  store i64 %2672, i64* %PC.i589
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2674 = load i64, i64* %2673, align 8
  %2675 = add i64 %2674, -8
  %2676 = inttoptr i64 %2675 to i64*
  store i64 %2670, i64* %2676
  store i64 %2675, i64* %2673, align 8
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2668, i64* %2677, align 8
  store %struct.Memory* %loadMem1_4388ab, %struct.Memory** %MEMORY
  %loadMem2_4388ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4388ab = load i64, i64* %3
  %call2_4388ab = call %struct.Memory* @sub_40f690.is_edge_vertex(%struct.State* %0, i64 %loadPC_4388ab, %struct.Memory* %loadMem2_4388ab)
  store %struct.Memory* %call2_4388ab, %struct.Memory** %MEMORY
  %loadMem_4388b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2679 = getelementptr inbounds %struct.GPR, %struct.GPR* %2678, i32 0, i32 33
  %2680 = getelementptr inbounds %struct.Reg, %struct.Reg* %2679, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2680 to i64*
  %2681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2682 = getelementptr inbounds %struct.GPR, %struct.GPR* %2681, i32 0, i32 1
  %2683 = getelementptr inbounds %struct.Reg, %struct.Reg* %2682, i32 0, i32 0
  %EAX.i588 = bitcast %union.anon* %2683 to i32*
  %2684 = load i32, i32* %EAX.i588
  %2685 = zext i32 %2684 to i64
  %2686 = load i64, i64* %PC.i587
  %2687 = add i64 %2686, 3
  store i64 %2687, i64* %PC.i587
  %2688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2688, align 1
  %2689 = and i32 %2684, 255
  %2690 = call i32 @llvm.ctpop.i32(i32 %2689)
  %2691 = trunc i32 %2690 to i8
  %2692 = and i8 %2691, 1
  %2693 = xor i8 %2692, 1
  %2694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2693, i8* %2694, align 1
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2695, align 1
  %2696 = icmp eq i32 %2684, 0
  %2697 = zext i1 %2696 to i8
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2697, i8* %2698, align 1
  %2699 = lshr i32 %2684, 31
  %2700 = trunc i32 %2699 to i8
  %2701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2700, i8* %2701, align 1
  %2702 = lshr i32 %2684, 31
  %2703 = xor i32 %2699, %2702
  %2704 = add i32 %2703, %2702
  %2705 = icmp eq i32 %2704, 2
  %2706 = zext i1 %2705 to i8
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2706, i8* %2707, align 1
  store %struct.Memory* %loadMem_4388b0, %struct.Memory** %MEMORY
  %loadMem_4388b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2710 to i64*
  %2711 = load i64, i64* %PC.i586
  %2712 = add i64 %2711, 27
  %2713 = load i64, i64* %PC.i586
  %2714 = add i64 %2713, 6
  %2715 = load i64, i64* %PC.i586
  %2716 = add i64 %2715, 6
  store i64 %2716, i64* %PC.i586
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2718 = load i8, i8* %2717, align 1
  store i8 %2718, i8* %BRANCH_TAKEN, align 1
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2720 = icmp ne i8 %2718, 0
  %2721 = select i1 %2720, i64 %2712, i64 %2714
  store i64 %2721, i64* %2719, align 8
  store %struct.Memory* %loadMem_4388b3, %struct.Memory** %MEMORY
  %loadBr_4388b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4388b3 = icmp eq i8 %loadBr_4388b3, 1
  br i1 %cmpBr_4388b3, label %block_.L_4388ce, label %block_4388b9

block_4388b9:                                     ; preds = %block_.L_4388a8
  %loadMem_4388b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2723 = getelementptr inbounds %struct.GPR, %struct.GPR* %2722, i32 0, i32 33
  %2724 = getelementptr inbounds %struct.Reg, %struct.Reg* %2723, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2724 to i64*
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2726 = getelementptr inbounds %struct.GPR, %struct.GPR* %2725, i32 0, i32 1
  %2727 = getelementptr inbounds %struct.Reg, %struct.Reg* %2726, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %2727 to i64*
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2729 = getelementptr inbounds %struct.GPR, %struct.GPR* %2728, i32 0, i32 15
  %2730 = getelementptr inbounds %struct.Reg, %struct.Reg* %2729, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %2730 to i64*
  %2731 = load i64, i64* %RBP.i585
  %2732 = sub i64 %2731, 64
  %2733 = load i64, i64* %PC.i583
  %2734 = add i64 %2733, 4
  store i64 %2734, i64* %PC.i583
  %2735 = inttoptr i64 %2732 to i32*
  %2736 = load i32, i32* %2735
  %2737 = sext i32 %2736 to i64
  store i64 %2737, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_4388b9, %struct.Memory** %MEMORY
  %loadMem_4388bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 33
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %PC.i579 = bitcast %union.anon* %2740 to i64*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 5
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %2744 = bitcast %union.anon* %2743 to %struct.anon.2*
  %CL.i580 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2744, i32 0, i32 0
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 1
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %RAX.i581 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 15
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %RBP.i582
  %2752 = load i64, i64* %RAX.i581
  %2753 = add i64 %2751, -880
  %2754 = add i64 %2753, %2752
  %2755 = load i64, i64* %PC.i579
  %2756 = add i64 %2755, 7
  store i64 %2756, i64* %PC.i579
  %2757 = inttoptr i64 %2754 to i8*
  %2758 = load i8, i8* %2757
  store i8 %2758, i8* %CL.i580, align 1
  store %struct.Memory* %loadMem_4388bd, %struct.Memory** %MEMORY
  %loadMem_4388c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 33
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2761 to i64*
  %2762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2763 = getelementptr inbounds %struct.GPR, %struct.GPR* %2762, i32 0, i32 5
  %2764 = getelementptr inbounds %struct.Reg, %struct.Reg* %2763, i32 0, i32 0
  %2765 = bitcast %union.anon* %2764 to %struct.anon.2*
  %CL.i578 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2765, i32 0, i32 0
  %2766 = load i8, i8* %CL.i578
  %2767 = zext i8 %2766 to i64
  %2768 = load i64, i64* %PC.i577
  %2769 = add i64 %2768, 3
  store i64 %2769, i64* %PC.i577
  %2770 = add i8 -1, %2766
  store i8 %2770, i8* %CL.i578, align 1
  %2771 = icmp ult i8 %2770, %2766
  %2772 = icmp ult i8 %2770, -1
  %2773 = or i1 %2771, %2772
  %2774 = zext i1 %2773 to i8
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2774, i8* %2775, align 1
  %2776 = zext i8 %2770 to i32
  %2777 = call i32 @llvm.ctpop.i32(i32 %2776)
  %2778 = trunc i32 %2777 to i8
  %2779 = and i8 %2778, 1
  %2780 = xor i8 %2779, 1
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2780, i8* %2781, align 1
  %2782 = xor i64 -1, %2767
  %2783 = trunc i64 %2782 to i8
  %2784 = xor i8 %2783, %2770
  %2785 = lshr i8 %2784, 4
  %2786 = and i8 %2785, 1
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2786, i8* %2787, align 1
  %2788 = icmp eq i8 %2770, 0
  %2789 = zext i1 %2788 to i8
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2789, i8* %2790, align 1
  %2791 = lshr i8 %2770, 7
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2791, i8* %2792, align 1
  %2793 = lshr i8 %2766, 7
  %2794 = xor i8 %2791, %2793
  %2795 = xor i8 %2791, 1
  %2796 = add i8 %2794, %2795
  %2797 = icmp eq i8 %2796, 2
  %2798 = zext i1 %2797 to i8
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2798, i8* %2799, align 1
  store %struct.Memory* %loadMem_4388c4, %struct.Memory** %MEMORY
  %loadMem_4388c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2801 = getelementptr inbounds %struct.GPR, %struct.GPR* %2800, i32 0, i32 33
  %2802 = getelementptr inbounds %struct.Reg, %struct.Reg* %2801, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2802 to i64*
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 5
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %2806 = bitcast %union.anon* %2805 to %struct.anon.2*
  %CL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2806, i32 0, i32 0
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 1
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 15
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %RBP.i576
  %2814 = load i64, i64* %RAX.i575
  %2815 = add i64 %2813, -880
  %2816 = add i64 %2815, %2814
  %2817 = load i8, i8* %CL.i
  %2818 = zext i8 %2817 to i64
  %2819 = load i64, i64* %PC.i574
  %2820 = add i64 %2819, 7
  store i64 %2820, i64* %PC.i574
  %2821 = inttoptr i64 %2816 to i8*
  store i8 %2817, i8* %2821
  store %struct.Memory* %loadMem_4388c7, %struct.Memory** %MEMORY
  br label %block_.L_4388ce

block_.L_4388ce:                                  ; preds = %block_4388b9, %block_.L_4388a8
  %loadMem_4388ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %2822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2823 = getelementptr inbounds %struct.GPR, %struct.GPR* %2822, i32 0, i32 33
  %2824 = getelementptr inbounds %struct.Reg, %struct.Reg* %2823, i32 0, i32 0
  %PC.i573 = bitcast %union.anon* %2824 to i64*
  %2825 = load i64, i64* %PC.i573
  %2826 = add i64 %2825, 5
  %2827 = load i64, i64* %PC.i573
  %2828 = add i64 %2827, 5
  store i64 %2828, i64* %PC.i573
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2826, i64* %2829, align 8
  store %struct.Memory* %loadMem_4388ce, %struct.Memory** %MEMORY
  br label %block_.L_4388d3

block_.L_4388d3:                                  ; preds = %block_.L_4388ce, %block_438882
  %loadMem_4388d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2831 = getelementptr inbounds %struct.GPR, %struct.GPR* %2830, i32 0, i32 33
  %2832 = getelementptr inbounds %struct.Reg, %struct.Reg* %2831, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2832 to i64*
  %2833 = load i64, i64* %PC.i572
  %2834 = add i64 %2833, 5
  %2835 = load i64, i64* %PC.i572
  %2836 = add i64 %2835, 5
  store i64 %2836, i64* %PC.i572
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2834, i64* %2837, align 8
  store %struct.Memory* %loadMem_4388d3, %struct.Memory** %MEMORY
  br label %block_.L_4388d8

block_.L_4388d8:                                  ; preds = %block_.L_4388d3, %block_.L_4386e5, %block_43868d
  %loadMem_4388d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2839 = getelementptr inbounds %struct.GPR, %struct.GPR* %2838, i32 0, i32 33
  %2840 = getelementptr inbounds %struct.Reg, %struct.Reg* %2839, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2840 to i64*
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 1
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 15
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RBP.i571
  %2848 = sub i64 %2847, 64
  %2849 = load i64, i64* %PC.i569
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i569
  %2851 = inttoptr i64 %2848 to i32*
  %2852 = load i32, i32* %2851
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_4388d8, %struct.Memory** %MEMORY
  %loadMem_4388db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2855 = getelementptr inbounds %struct.GPR, %struct.GPR* %2854, i32 0, i32 33
  %2856 = getelementptr inbounds %struct.Reg, %struct.Reg* %2855, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2856 to i64*
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2858 = getelementptr inbounds %struct.GPR, %struct.GPR* %2857, i32 0, i32 1
  %2859 = getelementptr inbounds %struct.Reg, %struct.Reg* %2858, i32 0, i32 0
  %RAX.i568 = bitcast %union.anon* %2859 to i64*
  %2860 = load i64, i64* %RAX.i568
  %2861 = load i64, i64* %PC.i567
  %2862 = add i64 %2861, 3
  store i64 %2862, i64* %PC.i567
  %2863 = trunc i64 %2860 to i32
  %2864 = add i32 1, %2863
  %2865 = zext i32 %2864 to i64
  store i64 %2865, i64* %RAX.i568, align 8
  %2866 = icmp ult i32 %2864, %2863
  %2867 = icmp ult i32 %2864, 1
  %2868 = or i1 %2866, %2867
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2869, i8* %2870, align 1
  %2871 = and i32 %2864, 255
  %2872 = call i32 @llvm.ctpop.i32(i32 %2871)
  %2873 = trunc i32 %2872 to i8
  %2874 = and i8 %2873, 1
  %2875 = xor i8 %2874, 1
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2875, i8* %2876, align 1
  %2877 = xor i64 1, %2860
  %2878 = trunc i64 %2877 to i32
  %2879 = xor i32 %2878, %2864
  %2880 = lshr i32 %2879, 4
  %2881 = trunc i32 %2880 to i8
  %2882 = and i8 %2881, 1
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2882, i8* %2883, align 1
  %2884 = icmp eq i32 %2864, 0
  %2885 = zext i1 %2884 to i8
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2885, i8* %2886, align 1
  %2887 = lshr i32 %2864, 31
  %2888 = trunc i32 %2887 to i8
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2888, i8* %2889, align 1
  %2890 = lshr i32 %2863, 31
  %2891 = xor i32 %2887, %2890
  %2892 = add i32 %2891, %2887
  %2893 = icmp eq i32 %2892, 2
  %2894 = zext i1 %2893 to i8
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2894, i8* %2895, align 1
  store %struct.Memory* %loadMem_4388db, %struct.Memory** %MEMORY
  %loadMem_4388de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2897 = getelementptr inbounds %struct.GPR, %struct.GPR* %2896, i32 0, i32 33
  %2898 = getelementptr inbounds %struct.Reg, %struct.Reg* %2897, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2898 to i64*
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 1
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %EAX.i565 = bitcast %union.anon* %2901 to i32*
  %2902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2903 = getelementptr inbounds %struct.GPR, %struct.GPR* %2902, i32 0, i32 15
  %2904 = getelementptr inbounds %struct.Reg, %struct.Reg* %2903, i32 0, i32 0
  %RBP.i566 = bitcast %union.anon* %2904 to i64*
  %2905 = load i64, i64* %RBP.i566
  %2906 = sub i64 %2905, 64
  %2907 = load i32, i32* %EAX.i565
  %2908 = zext i32 %2907 to i64
  %2909 = load i64, i64* %PC.i564
  %2910 = add i64 %2909, 3
  store i64 %2910, i64* %PC.i564
  %2911 = inttoptr i64 %2906 to i32*
  store i32 %2907, i32* %2911
  store %struct.Memory* %loadMem_4388de, %struct.Memory** %MEMORY
  %loadMem_4388e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2913 = getelementptr inbounds %struct.GPR, %struct.GPR* %2912, i32 0, i32 33
  %2914 = getelementptr inbounds %struct.Reg, %struct.Reg* %2913, i32 0, i32 0
  %PC.i563 = bitcast %union.anon* %2914 to i64*
  %2915 = load i64, i64* %PC.i563
  %2916 = add i64 %2915, -630
  %2917 = load i64, i64* %PC.i563
  %2918 = add i64 %2917, 5
  store i64 %2918, i64* %PC.i563
  %2919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2916, i64* %2919, align 8
  store %struct.Memory* %loadMem_4388e1, %struct.Memory** %MEMORY
  br label %block_.L_43866b

block_.L_4388e6:                                  ; preds = %block_.L_43866b
  %loadMem_4388e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 33
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %PC.i561 = bitcast %union.anon* %2922 to i64*
  %2923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2924 = getelementptr inbounds %struct.GPR, %struct.GPR* %2923, i32 0, i32 15
  %2925 = getelementptr inbounds %struct.Reg, %struct.Reg* %2924, i32 0, i32 0
  %RBP.i562 = bitcast %union.anon* %2925 to i64*
  %2926 = load i64, i64* %RBP.i562
  %2927 = sub i64 %2926, 2484
  %2928 = load i64, i64* %PC.i561
  %2929 = add i64 %2928, 7
  store i64 %2929, i64* %PC.i561
  %2930 = inttoptr i64 %2927 to i32*
  %2931 = load i32, i32* %2930
  %2932 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2932, align 1
  %2933 = and i32 %2931, 255
  %2934 = call i32 @llvm.ctpop.i32(i32 %2933)
  %2935 = trunc i32 %2934 to i8
  %2936 = and i8 %2935, 1
  %2937 = xor i8 %2936, 1
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2937, i8* %2938, align 1
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2939, align 1
  %2940 = icmp eq i32 %2931, 0
  %2941 = zext i1 %2940 to i8
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2941, i8* %2942, align 1
  %2943 = lshr i32 %2931, 31
  %2944 = trunc i32 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2931, 31
  %2947 = xor i32 %2943, %2946
  %2948 = add i32 %2947, %2946
  %2949 = icmp eq i32 %2948, 2
  %2950 = zext i1 %2949 to i8
  %2951 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2950, i8* %2951, align 1
  store %struct.Memory* %loadMem_4388e6, %struct.Memory** %MEMORY
  %loadMem_4388ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2953 = getelementptr inbounds %struct.GPR, %struct.GPR* %2952, i32 0, i32 33
  %2954 = getelementptr inbounds %struct.Reg, %struct.Reg* %2953, i32 0, i32 0
  %PC.i560 = bitcast %union.anon* %2954 to i64*
  %2955 = load i64, i64* %PC.i560
  %2956 = add i64 %2955, 928
  %2957 = load i64, i64* %PC.i560
  %2958 = add i64 %2957, 6
  %2959 = load i64, i64* %PC.i560
  %2960 = add i64 %2959, 6
  store i64 %2960, i64* %PC.i560
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2962 = load i8, i8* %2961, align 1
  store i8 %2962, i8* %BRANCH_TAKEN, align 1
  %2963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2964 = icmp ne i8 %2962, 0
  %2965 = select i1 %2964, i64 %2956, i64 %2958
  store i64 %2965, i64* %2963, align 8
  store %struct.Memory* %loadMem_4388ed, %struct.Memory** %MEMORY
  %loadBr_4388ed = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4388ed = icmp eq i8 %loadBr_4388ed, 1
  br i1 %cmpBr_4388ed, label %block_.L_438c8d, label %block_4388f3

block_4388f3:                                     ; preds = %block_.L_4388e6
  %loadMem_4388f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2967 = getelementptr inbounds %struct.GPR, %struct.GPR* %2966, i32 0, i32 33
  %2968 = getelementptr inbounds %struct.Reg, %struct.Reg* %2967, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2968 to i64*
  %2969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2970 = getelementptr inbounds %struct.GPR, %struct.GPR* %2969, i32 0, i32 1
  %2971 = getelementptr inbounds %struct.Reg, %struct.Reg* %2970, i32 0, i32 0
  %RAX.i558 = bitcast %union.anon* %2971 to i64*
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 15
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %RBP.i559 = bitcast %union.anon* %2974 to i64*
  %2975 = load i64, i64* %RBP.i559
  %2976 = sub i64 %2975, 2484
  %2977 = load i64, i64* %PC.i557
  %2978 = add i64 %2977, 6
  store i64 %2978, i64* %PC.i557
  %2979 = inttoptr i64 %2976 to i32*
  %2980 = load i32, i32* %2979
  %2981 = zext i32 %2980 to i64
  store i64 %2981, i64* %RAX.i558, align 8
  store %struct.Memory* %loadMem_4388f3, %struct.Memory** %MEMORY
  %loadMem_4388f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2983 = getelementptr inbounds %struct.GPR, %struct.GPR* %2982, i32 0, i32 33
  %2984 = getelementptr inbounds %struct.Reg, %struct.Reg* %2983, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2984 to i64*
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2986 = getelementptr inbounds %struct.GPR, %struct.GPR* %2985, i32 0, i32 1
  %2987 = getelementptr inbounds %struct.Reg, %struct.Reg* %2986, i32 0, i32 0
  %EAX.i555 = bitcast %union.anon* %2987 to i32*
  %2988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2989 = getelementptr inbounds %struct.GPR, %struct.GPR* %2988, i32 0, i32 15
  %2990 = getelementptr inbounds %struct.Reg, %struct.Reg* %2989, i32 0, i32 0
  %RBP.i556 = bitcast %union.anon* %2990 to i64*
  %2991 = load i64, i64* %RBP.i556
  %2992 = sub i64 %2991, 60
  %2993 = load i32, i32* %EAX.i555
  %2994 = zext i32 %2993 to i64
  %2995 = load i64, i64* %PC.i554
  %2996 = add i64 %2995, 3
  store i64 %2996, i64* %PC.i554
  %2997 = inttoptr i64 %2992 to i32*
  store i32 %2993, i32* %2997
  store %struct.Memory* %loadMem_4388f9, %struct.Memory** %MEMORY
  br label %block_.L_4388fc

block_.L_4388fc:                                  ; preds = %block_.L_438c83, %block_4388f3
  %loadMem_4388fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2999 = getelementptr inbounds %struct.GPR, %struct.GPR* %2998, i32 0, i32 33
  %3000 = getelementptr inbounds %struct.Reg, %struct.Reg* %2999, i32 0, i32 0
  %PC.i552 = bitcast %union.anon* %3000 to i64*
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 15
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %RBP.i553 = bitcast %union.anon* %3003 to i64*
  %3004 = load i64, i64* %RBP.i553
  %3005 = sub i64 %3004, 60
  %3006 = load i64, i64* %PC.i552
  %3007 = add i64 %3006, 4
  store i64 %3007, i64* %PC.i552
  %3008 = inttoptr i64 %3005 to i32*
  %3009 = load i32, i32* %3008
  %3010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3010, align 1
  %3011 = and i32 %3009, 255
  %3012 = call i32 @llvm.ctpop.i32(i32 %3011)
  %3013 = trunc i32 %3012 to i8
  %3014 = and i8 %3013, 1
  %3015 = xor i8 %3014, 1
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3015, i8* %3016, align 1
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3017, align 1
  %3018 = icmp eq i32 %3009, 0
  %3019 = zext i1 %3018 to i8
  %3020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3019, i8* %3020, align 1
  %3021 = lshr i32 %3009, 31
  %3022 = trunc i32 %3021 to i8
  %3023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3022, i8* %3023, align 1
  %3024 = lshr i32 %3009, 31
  %3025 = xor i32 %3021, %3024
  %3026 = add i32 %3025, %3024
  %3027 = icmp eq i32 %3026, 2
  %3028 = zext i1 %3027 to i8
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3028, i8* %3029, align 1
  store %struct.Memory* %loadMem_4388fc, %struct.Memory** %MEMORY
  %loadMem_438900 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3031 = getelementptr inbounds %struct.GPR, %struct.GPR* %3030, i32 0, i32 33
  %3032 = getelementptr inbounds %struct.Reg, %struct.Reg* %3031, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3032 to i64*
  %3033 = load i64, i64* %PC.i551
  %3034 = add i64 %3033, 15
  %3035 = load i64, i64* %PC.i551
  %3036 = add i64 %3035, 6
  %3037 = load i64, i64* %PC.i551
  %3038 = add i64 %3037, 6
  store i64 %3038, i64* %PC.i551
  %3039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3040 = load i8, i8* %3039, align 1
  %3041 = icmp eq i8 %3040, 0
  %3042 = zext i1 %3041 to i8
  store i8 %3042, i8* %BRANCH_TAKEN, align 1
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3044 = select i1 %3041, i64 %3034, i64 %3036
  store i64 %3044, i64* %3043, align 8
  store %struct.Memory* %loadMem_438900, %struct.Memory** %MEMORY
  %loadBr_438900 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438900 = icmp eq i8 %loadBr_438900, 1
  br i1 %cmpBr_438900, label %block_.L_43890f, label %block_438906

block_438906:                                     ; preds = %block_.L_4388fc
  %loadMem_438906 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3046 = getelementptr inbounds %struct.GPR, %struct.GPR* %3045, i32 0, i32 33
  %3047 = getelementptr inbounds %struct.Reg, %struct.Reg* %3046, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3047 to i64*
  %3048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3049 = getelementptr inbounds %struct.GPR, %struct.GPR* %3048, i32 0, i32 1
  %3050 = getelementptr inbounds %struct.Reg, %struct.Reg* %3049, i32 0, i32 0
  %RAX.i549 = bitcast %union.anon* %3050 to i64*
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3052 = getelementptr inbounds %struct.GPR, %struct.GPR* %3051, i32 0, i32 15
  %3053 = getelementptr inbounds %struct.Reg, %struct.Reg* %3052, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %3053 to i64*
  %3054 = load i64, i64* %RBP.i550
  %3055 = sub i64 %3054, 2484
  %3056 = load i64, i64* %PC.i548
  %3057 = add i64 %3056, 6
  store i64 %3057, i64* %PC.i548
  %3058 = inttoptr i64 %3055 to i32*
  %3059 = load i32, i32* %3058
  %3060 = zext i32 %3059 to i64
  store i64 %3060, i64* %RAX.i549, align 8
  store %struct.Memory* %loadMem_438906, %struct.Memory** %MEMORY
  %loadMem_43890c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3062 = getelementptr inbounds %struct.GPR, %struct.GPR* %3061, i32 0, i32 33
  %3063 = getelementptr inbounds %struct.Reg, %struct.Reg* %3062, i32 0, i32 0
  %PC.i545 = bitcast %union.anon* %3063 to i64*
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3065 = getelementptr inbounds %struct.GPR, %struct.GPR* %3064, i32 0, i32 1
  %3066 = getelementptr inbounds %struct.Reg, %struct.Reg* %3065, i32 0, i32 0
  %EAX.i546 = bitcast %union.anon* %3066 to i32*
  %3067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3068 = getelementptr inbounds %struct.GPR, %struct.GPR* %3067, i32 0, i32 15
  %3069 = getelementptr inbounds %struct.Reg, %struct.Reg* %3068, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3069 to i64*
  %3070 = load i64, i64* %RBP.i547
  %3071 = sub i64 %3070, 60
  %3072 = load i32, i32* %EAX.i546
  %3073 = zext i32 %3072 to i64
  %3074 = load i64, i64* %PC.i545
  %3075 = add i64 %3074, 3
  store i64 %3075, i64* %PC.i545
  %3076 = inttoptr i64 %3071 to i32*
  store i32 %3072, i32* %3076
  store %struct.Memory* %loadMem_43890c, %struct.Memory** %MEMORY
  br label %block_.L_43890f

block_.L_43890f:                                  ; preds = %block_438906, %block_.L_4388fc
  %loadMem_43890f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 33
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %PC.i542 = bitcast %union.anon* %3079 to i64*
  %3080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3081 = getelementptr inbounds %struct.GPR, %struct.GPR* %3080, i32 0, i32 1
  %3082 = getelementptr inbounds %struct.Reg, %struct.Reg* %3081, i32 0, i32 0
  %RAX.i543 = bitcast %union.anon* %3082 to i64*
  %3083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3084 = getelementptr inbounds %struct.GPR, %struct.GPR* %3083, i32 0, i32 15
  %3085 = getelementptr inbounds %struct.Reg, %struct.Reg* %3084, i32 0, i32 0
  %RBP.i544 = bitcast %union.anon* %3085 to i64*
  %3086 = load i64, i64* %RBP.i544
  %3087 = sub i64 %3086, 60
  %3088 = load i64, i64* %PC.i542
  %3089 = add i64 %3088, 3
  store i64 %3089, i64* %PC.i542
  %3090 = inttoptr i64 %3087 to i32*
  %3091 = load i32, i32* %3090
  %3092 = zext i32 %3091 to i64
  store i64 %3092, i64* %RAX.i543, align 8
  store %struct.Memory* %loadMem_43890f, %struct.Memory** %MEMORY
  %loadMem_438912 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3094 = getelementptr inbounds %struct.GPR, %struct.GPR* %3093, i32 0, i32 33
  %3095 = getelementptr inbounds %struct.Reg, %struct.Reg* %3094, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %3095 to i64*
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3097 = getelementptr inbounds %struct.GPR, %struct.GPR* %3096, i32 0, i32 1
  %3098 = getelementptr inbounds %struct.Reg, %struct.Reg* %3097, i32 0, i32 0
  %RAX.i541 = bitcast %union.anon* %3098 to i64*
  %3099 = load i64, i64* %RAX.i541
  %3100 = load i64, i64* %PC.i540
  %3101 = add i64 %3100, 3
  store i64 %3101, i64* %PC.i540
  %3102 = trunc i64 %3099 to i32
  %3103 = add i32 -1, %3102
  %3104 = zext i32 %3103 to i64
  store i64 %3104, i64* %RAX.i541, align 8
  %3105 = icmp ult i32 %3103, %3102
  %3106 = icmp ult i32 %3103, -1
  %3107 = or i1 %3105, %3106
  %3108 = zext i1 %3107 to i8
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3108, i8* %3109, align 1
  %3110 = and i32 %3103, 255
  %3111 = call i32 @llvm.ctpop.i32(i32 %3110)
  %3112 = trunc i32 %3111 to i8
  %3113 = and i8 %3112, 1
  %3114 = xor i8 %3113, 1
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3114, i8* %3115, align 1
  %3116 = xor i64 -1, %3099
  %3117 = trunc i64 %3116 to i32
  %3118 = xor i32 %3117, %3103
  %3119 = lshr i32 %3118, 4
  %3120 = trunc i32 %3119 to i8
  %3121 = and i8 %3120, 1
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3121, i8* %3122, align 1
  %3123 = icmp eq i32 %3103, 0
  %3124 = zext i1 %3123 to i8
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3124, i8* %3125, align 1
  %3126 = lshr i32 %3103, 31
  %3127 = trunc i32 %3126 to i8
  %3128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3127, i8* %3128, align 1
  %3129 = lshr i32 %3102, 31
  %3130 = xor i32 %3126, %3129
  %3131 = xor i32 %3126, 1
  %3132 = add i32 %3130, %3131
  %3133 = icmp eq i32 %3132, 2
  %3134 = zext i1 %3133 to i8
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3134, i8* %3135, align 1
  store %struct.Memory* %loadMem_438912, %struct.Memory** %MEMORY
  %loadMem_438915 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3137 = getelementptr inbounds %struct.GPR, %struct.GPR* %3136, i32 0, i32 33
  %3138 = getelementptr inbounds %struct.Reg, %struct.Reg* %3137, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %3138 to i64*
  %3139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3140 = getelementptr inbounds %struct.GPR, %struct.GPR* %3139, i32 0, i32 1
  %3141 = getelementptr inbounds %struct.Reg, %struct.Reg* %3140, i32 0, i32 0
  %EAX.i538 = bitcast %union.anon* %3141 to i32*
  %3142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3143 = getelementptr inbounds %struct.GPR, %struct.GPR* %3142, i32 0, i32 15
  %3144 = getelementptr inbounds %struct.Reg, %struct.Reg* %3143, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %3144 to i64*
  %3145 = load i64, i64* %RBP.i539
  %3146 = sub i64 %3145, 60
  %3147 = load i32, i32* %EAX.i538
  %3148 = zext i32 %3147 to i64
  %3149 = load i64, i64* %PC.i537
  %3150 = add i64 %3149, 3
  store i64 %3150, i64* %PC.i537
  %3151 = inttoptr i64 %3146 to i32*
  store i32 %3147, i32* %3151
  store %struct.Memory* %loadMem_438915, %struct.Memory** %MEMORY
  %loadMem_438918 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3153 = getelementptr inbounds %struct.GPR, %struct.GPR* %3152, i32 0, i32 33
  %3154 = getelementptr inbounds %struct.Reg, %struct.Reg* %3153, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %3154 to i64*
  %3155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3156 = getelementptr inbounds %struct.GPR, %struct.GPR* %3155, i32 0, i32 1
  %3157 = getelementptr inbounds %struct.Reg, %struct.Reg* %3156, i32 0, i32 0
  %EAX.i535 = bitcast %union.anon* %3157 to i32*
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3159 = getelementptr inbounds %struct.GPR, %struct.GPR* %3158, i32 0, i32 5
  %3160 = getelementptr inbounds %struct.Reg, %struct.Reg* %3159, i32 0, i32 0
  %RCX.i536 = bitcast %union.anon* %3160 to i64*
  %3161 = load i32, i32* %EAX.i535
  %3162 = zext i32 %3161 to i64
  %3163 = load i64, i64* %PC.i534
  %3164 = add i64 %3163, 3
  store i64 %3164, i64* %PC.i534
  %3165 = shl i64 %3162, 32
  %3166 = ashr exact i64 %3165, 32
  store i64 %3166, i64* %RCX.i536, align 8
  store %struct.Memory* %loadMem_438918, %struct.Memory** %MEMORY
  %loadMem_43891b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3168 = getelementptr inbounds %struct.GPR, %struct.GPR* %3167, i32 0, i32 33
  %3169 = getelementptr inbounds %struct.Reg, %struct.Reg* %3168, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3169 to i64*
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3171 = getelementptr inbounds %struct.GPR, %struct.GPR* %3170, i32 0, i32 1
  %3172 = getelementptr inbounds %struct.Reg, %struct.Reg* %3171, i32 0, i32 0
  %RAX.i531 = bitcast %union.anon* %3172 to i64*
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3174 = getelementptr inbounds %struct.GPR, %struct.GPR* %3173, i32 0, i32 5
  %3175 = getelementptr inbounds %struct.Reg, %struct.Reg* %3174, i32 0, i32 0
  %RCX.i532 = bitcast %union.anon* %3175 to i64*
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3177 = getelementptr inbounds %struct.GPR, %struct.GPR* %3176, i32 0, i32 15
  %3178 = getelementptr inbounds %struct.Reg, %struct.Reg* %3177, i32 0, i32 0
  %RBP.i533 = bitcast %union.anon* %3178 to i64*
  %3179 = load i64, i64* %RBP.i533
  %3180 = load i64, i64* %RCX.i532
  %3181 = mul i64 %3180, 4
  %3182 = add i64 %3179, -2480
  %3183 = add i64 %3182, %3181
  %3184 = load i64, i64* %PC.i530
  %3185 = add i64 %3184, 7
  store i64 %3185, i64* %PC.i530
  %3186 = inttoptr i64 %3183 to i32*
  %3187 = load i32, i32* %3186
  %3188 = zext i32 %3187 to i64
  store i64 %3188, i64* %RAX.i531, align 8
  store %struct.Memory* %loadMem_43891b, %struct.Memory** %MEMORY
  %loadMem_438922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 33
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3191 to i64*
  %3192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3193 = getelementptr inbounds %struct.GPR, %struct.GPR* %3192, i32 0, i32 1
  %3194 = getelementptr inbounds %struct.Reg, %struct.Reg* %3193, i32 0, i32 0
  %EAX.i528 = bitcast %union.anon* %3194 to i32*
  %3195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3196 = getelementptr inbounds %struct.GPR, %struct.GPR* %3195, i32 0, i32 15
  %3197 = getelementptr inbounds %struct.Reg, %struct.Reg* %3196, i32 0, i32 0
  %RBP.i529 = bitcast %union.anon* %3197 to i64*
  %3198 = load i64, i64* %RBP.i529
  %3199 = sub i64 %3198, 64
  %3200 = load i32, i32* %EAX.i528
  %3201 = zext i32 %3200 to i64
  %3202 = load i64, i64* %PC.i527
  %3203 = add i64 %3202, 3
  store i64 %3203, i64* %PC.i527
  %3204 = inttoptr i64 %3199 to i32*
  store i32 %3200, i32* %3204
  store %struct.Memory* %loadMem_438922, %struct.Memory** %MEMORY
  %loadMem_438925 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 33
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3207 to i64*
  %3208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3209 = getelementptr inbounds %struct.GPR, %struct.GPR* %3208, i32 0, i32 1
  %3210 = getelementptr inbounds %struct.Reg, %struct.Reg* %3209, i32 0, i32 0
  %RAX.i525 = bitcast %union.anon* %3210 to i64*
  %3211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3212 = getelementptr inbounds %struct.GPR, %struct.GPR* %3211, i32 0, i32 15
  %3213 = getelementptr inbounds %struct.Reg, %struct.Reg* %3212, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %3213 to i64*
  %3214 = load i64, i64* %RBP.i526
  %3215 = sub i64 %3214, 64
  %3216 = load i64, i64* %PC.i524
  %3217 = add i64 %3216, 3
  store i64 %3217, i64* %PC.i524
  %3218 = inttoptr i64 %3215 to i32*
  %3219 = load i32, i32* %3218
  %3220 = zext i32 %3219 to i64
  store i64 %3220, i64* %RAX.i525, align 8
  store %struct.Memory* %loadMem_438925, %struct.Memory** %MEMORY
  %loadMem_438928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 33
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %3223 to i64*
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3225 = getelementptr inbounds %struct.GPR, %struct.GPR* %3224, i32 0, i32 1
  %3226 = getelementptr inbounds %struct.Reg, %struct.Reg* %3225, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %3226 to i64*
  %3227 = load i64, i64* %RAX.i523
  %3228 = load i64, i64* %PC.i522
  %3229 = add i64 %3228, 3
  store i64 %3229, i64* %PC.i522
  %3230 = trunc i64 %3227 to i32
  %3231 = add i32 20, %3230
  %3232 = zext i32 %3231 to i64
  store i64 %3232, i64* %RAX.i523, align 8
  %3233 = icmp ult i32 %3231, %3230
  %3234 = icmp ult i32 %3231, 20
  %3235 = or i1 %3233, %3234
  %3236 = zext i1 %3235 to i8
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3236, i8* %3237, align 1
  %3238 = and i32 %3231, 255
  %3239 = call i32 @llvm.ctpop.i32(i32 %3238)
  %3240 = trunc i32 %3239 to i8
  %3241 = and i8 %3240, 1
  %3242 = xor i8 %3241, 1
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3242, i8* %3243, align 1
  %3244 = xor i64 20, %3227
  %3245 = trunc i64 %3244 to i32
  %3246 = xor i32 %3245, %3231
  %3247 = lshr i32 %3246, 4
  %3248 = trunc i32 %3247 to i8
  %3249 = and i8 %3248, 1
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3249, i8* %3250, align 1
  %3251 = icmp eq i32 %3231, 0
  %3252 = zext i1 %3251 to i8
  %3253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3252, i8* %3253, align 1
  %3254 = lshr i32 %3231, 31
  %3255 = trunc i32 %3254 to i8
  %3256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3255, i8* %3256, align 1
  %3257 = lshr i32 %3230, 31
  %3258 = xor i32 %3254, %3257
  %3259 = add i32 %3258, %3254
  %3260 = icmp eq i32 %3259, 2
  %3261 = zext i1 %3260 to i8
  %3262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3261, i8* %3262, align 1
  store %struct.Memory* %loadMem_438928, %struct.Memory** %MEMORY
  %loadMem_43892b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 33
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %PC.i520 = bitcast %union.anon* %3265 to i64*
  %3266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3267 = getelementptr inbounds %struct.GPR, %struct.GPR* %3266, i32 0, i32 1
  %3268 = getelementptr inbounds %struct.Reg, %struct.Reg* %3267, i32 0, i32 0
  %RAX.i521 = bitcast %union.anon* %3268 to i64*
  %3269 = load i64, i64* %RAX.i521
  %3270 = load i64, i64* %PC.i520
  %3271 = add i64 %3270, 3
  store i64 %3271, i64* %PC.i520
  %3272 = trunc i64 %3269 to i32
  %3273 = add i32 1, %3272
  %3274 = zext i32 %3273 to i64
  store i64 %3274, i64* %RAX.i521, align 8
  %3275 = icmp ult i32 %3273, %3272
  %3276 = icmp ult i32 %3273, 1
  %3277 = or i1 %3275, %3276
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3278, i8* %3279, align 1
  %3280 = and i32 %3273, 255
  %3281 = call i32 @llvm.ctpop.i32(i32 %3280)
  %3282 = trunc i32 %3281 to i8
  %3283 = and i8 %3282, 1
  %3284 = xor i8 %3283, 1
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3284, i8* %3285, align 1
  %3286 = xor i64 1, %3269
  %3287 = trunc i64 %3286 to i32
  %3288 = xor i32 %3287, %3273
  %3289 = lshr i32 %3288, 4
  %3290 = trunc i32 %3289 to i8
  %3291 = and i8 %3290, 1
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3291, i8* %3292, align 1
  %3293 = icmp eq i32 %3273, 0
  %3294 = zext i1 %3293 to i8
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3294, i8* %3295, align 1
  %3296 = lshr i32 %3273, 31
  %3297 = trunc i32 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3297, i8* %3298, align 1
  %3299 = lshr i32 %3272, 31
  %3300 = xor i32 %3296, %3299
  %3301 = add i32 %3300, %3296
  %3302 = icmp eq i32 %3301, 2
  %3303 = zext i1 %3302 to i8
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3303, i8* %3304, align 1
  store %struct.Memory* %loadMem_43892b, %struct.Memory** %MEMORY
  %loadMem_43892e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i517 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 1
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %EAX.i518 = bitcast %union.anon* %3310 to i32*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 5
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %3313 to i64*
  %3314 = load i32, i32* %EAX.i518
  %3315 = zext i32 %3314 to i64
  %3316 = load i64, i64* %PC.i517
  %3317 = add i64 %3316, 3
  store i64 %3317, i64* %PC.i517
  %3318 = shl i64 %3315, 32
  %3319 = ashr exact i64 %3318, 32
  store i64 %3319, i64* %RCX.i519, align 8
  store %struct.Memory* %loadMem_43892e, %struct.Memory** %MEMORY
  %loadMem_438931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3321 = getelementptr inbounds %struct.GPR, %struct.GPR* %3320, i32 0, i32 33
  %3322 = getelementptr inbounds %struct.Reg, %struct.Reg* %3321, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3322 to i64*
  %3323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3324 = getelementptr inbounds %struct.GPR, %struct.GPR* %3323, i32 0, i32 1
  %3325 = getelementptr inbounds %struct.Reg, %struct.Reg* %3324, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %3325 to i64*
  %3326 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3327 = getelementptr inbounds %struct.GPR, %struct.GPR* %3326, i32 0, i32 5
  %3328 = getelementptr inbounds %struct.Reg, %struct.Reg* %3327, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %3328 to i64*
  %3329 = load i64, i64* %RCX.i516
  %3330 = add i64 %3329, 12099168
  %3331 = load i64, i64* %PC.i514
  %3332 = add i64 %3331, 8
  store i64 %3332, i64* %PC.i514
  %3333 = inttoptr i64 %3330 to i8*
  %3334 = load i8, i8* %3333
  %3335 = zext i8 %3334 to i64
  store i64 %3335, i64* %RAX.i515, align 8
  store %struct.Memory* %loadMem_438931, %struct.Memory** %MEMORY
  %loadMem_438939 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3337 = getelementptr inbounds %struct.GPR, %struct.GPR* %3336, i32 0, i32 33
  %3338 = getelementptr inbounds %struct.Reg, %struct.Reg* %3337, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3338 to i64*
  %3339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3340 = getelementptr inbounds %struct.GPR, %struct.GPR* %3339, i32 0, i32 1
  %3341 = getelementptr inbounds %struct.Reg, %struct.Reg* %3340, i32 0, i32 0
  %EAX.i513 = bitcast %union.anon* %3341 to i32*
  %3342 = load i32, i32* %EAX.i513
  %3343 = zext i32 %3342 to i64
  %3344 = load i64, i64* %PC.i512
  %3345 = add i64 %3344, 3
  store i64 %3345, i64* %PC.i512
  %3346 = sub i32 %3342, 3
  %3347 = icmp ult i32 %3342, 3
  %3348 = zext i1 %3347 to i8
  %3349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3348, i8* %3349, align 1
  %3350 = and i32 %3346, 255
  %3351 = call i32 @llvm.ctpop.i32(i32 %3350)
  %3352 = trunc i32 %3351 to i8
  %3353 = and i8 %3352, 1
  %3354 = xor i8 %3353, 1
  %3355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3354, i8* %3355, align 1
  %3356 = xor i64 3, %3343
  %3357 = trunc i64 %3356 to i32
  %3358 = xor i32 %3357, %3346
  %3359 = lshr i32 %3358, 4
  %3360 = trunc i32 %3359 to i8
  %3361 = and i8 %3360, 1
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3361, i8* %3362, align 1
  %3363 = icmp eq i32 %3346, 0
  %3364 = zext i1 %3363 to i8
  %3365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3364, i8* %3365, align 1
  %3366 = lshr i32 %3346, 31
  %3367 = trunc i32 %3366 to i8
  %3368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3367, i8* %3368, align 1
  %3369 = lshr i32 %3342, 31
  %3370 = xor i32 %3366, %3369
  %3371 = add i32 %3370, %3369
  %3372 = icmp eq i32 %3371, 2
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3373, i8* %3374, align 1
  store %struct.Memory* %loadMem_438939, %struct.Memory** %MEMORY
  %loadMem_43893c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i511 = bitcast %union.anon* %3377 to i64*
  %3378 = load i64, i64* %PC.i511
  %3379 = add i64 %3378, 65
  %3380 = load i64, i64* %PC.i511
  %3381 = add i64 %3380, 6
  %3382 = load i64, i64* %PC.i511
  %3383 = add i64 %3382, 6
  store i64 %3383, i64* %PC.i511
  %3384 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3385 = load i8, i8* %3384, align 1
  store i8 %3385, i8* %BRANCH_TAKEN, align 1
  %3386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3387 = icmp ne i8 %3385, 0
  %3388 = select i1 %3387, i64 %3379, i64 %3381
  store i64 %3388, i64* %3386, align 8
  store %struct.Memory* %loadMem_43893c, %struct.Memory** %MEMORY
  %loadBr_43893c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_43893c = icmp eq i8 %loadBr_43893c, 1
  br i1 %cmpBr_43893c, label %block_.L_43897d, label %block_438942

block_438942:                                     ; preds = %block_.L_43890f
  %loadMem_438942 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3390 = getelementptr inbounds %struct.GPR, %struct.GPR* %3389, i32 0, i32 33
  %3391 = getelementptr inbounds %struct.Reg, %struct.Reg* %3390, i32 0, i32 0
  %PC.i508 = bitcast %union.anon* %3391 to i64*
  %3392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3393 = getelementptr inbounds %struct.GPR, %struct.GPR* %3392, i32 0, i32 1
  %3394 = getelementptr inbounds %struct.Reg, %struct.Reg* %3393, i32 0, i32 0
  %RAX.i509 = bitcast %union.anon* %3394 to i64*
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 15
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %RBP.i510 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %RBP.i510
  %3399 = sub i64 %3398, 64
  %3400 = load i64, i64* %PC.i508
  %3401 = add i64 %3400, 3
  store i64 %3401, i64* %PC.i508
  %3402 = inttoptr i64 %3399 to i32*
  %3403 = load i32, i32* %3402
  %3404 = zext i32 %3403 to i64
  store i64 %3404, i64* %RAX.i509, align 8
  store %struct.Memory* %loadMem_438942, %struct.Memory** %MEMORY
  %loadMem_438945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3406 = getelementptr inbounds %struct.GPR, %struct.GPR* %3405, i32 0, i32 33
  %3407 = getelementptr inbounds %struct.Reg, %struct.Reg* %3406, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %3407 to i64*
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 1
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %RAX.i507 = bitcast %union.anon* %3410 to i64*
  %3411 = load i64, i64* %RAX.i507
  %3412 = load i64, i64* %PC.i506
  %3413 = add i64 %3412, 3
  store i64 %3413, i64* %PC.i506
  %3414 = trunc i64 %3411 to i32
  %3415 = add i32 20, %3414
  %3416 = zext i32 %3415 to i64
  store i64 %3416, i64* %RAX.i507, align 8
  %3417 = icmp ult i32 %3415, %3414
  %3418 = icmp ult i32 %3415, 20
  %3419 = or i1 %3417, %3418
  %3420 = zext i1 %3419 to i8
  %3421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3420, i8* %3421, align 1
  %3422 = and i32 %3415, 255
  %3423 = call i32 @llvm.ctpop.i32(i32 %3422)
  %3424 = trunc i32 %3423 to i8
  %3425 = and i8 %3424, 1
  %3426 = xor i8 %3425, 1
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3426, i8* %3427, align 1
  %3428 = xor i64 20, %3411
  %3429 = trunc i64 %3428 to i32
  %3430 = xor i32 %3429, %3415
  %3431 = lshr i32 %3430, 4
  %3432 = trunc i32 %3431 to i8
  %3433 = and i8 %3432, 1
  %3434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3433, i8* %3434, align 1
  %3435 = icmp eq i32 %3415, 0
  %3436 = zext i1 %3435 to i8
  %3437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3436, i8* %3437, align 1
  %3438 = lshr i32 %3415, 31
  %3439 = trunc i32 %3438 to i8
  %3440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3439, i8* %3440, align 1
  %3441 = lshr i32 %3414, 31
  %3442 = xor i32 %3438, %3441
  %3443 = add i32 %3442, %3438
  %3444 = icmp eq i32 %3443, 2
  %3445 = zext i1 %3444 to i8
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3445, i8* %3446, align 1
  store %struct.Memory* %loadMem_438945, %struct.Memory** %MEMORY
  %loadMem_438948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3448 = getelementptr inbounds %struct.GPR, %struct.GPR* %3447, i32 0, i32 33
  %3449 = getelementptr inbounds %struct.Reg, %struct.Reg* %3448, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3449 to i64*
  %3450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3451 = getelementptr inbounds %struct.GPR, %struct.GPR* %3450, i32 0, i32 1
  %3452 = getelementptr inbounds %struct.Reg, %struct.Reg* %3451, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %3452 to i64*
  %3453 = load i64, i64* %RAX.i505
  %3454 = load i64, i64* %PC.i504
  %3455 = add i64 %3454, 3
  store i64 %3455, i64* %PC.i504
  %3456 = trunc i64 %3453 to i32
  %3457 = add i32 1, %3456
  %3458 = zext i32 %3457 to i64
  store i64 %3458, i64* %RAX.i505, align 8
  %3459 = icmp ult i32 %3457, %3456
  %3460 = icmp ult i32 %3457, 1
  %3461 = or i1 %3459, %3460
  %3462 = zext i1 %3461 to i8
  %3463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3462, i8* %3463, align 1
  %3464 = and i32 %3457, 255
  %3465 = call i32 @llvm.ctpop.i32(i32 %3464)
  %3466 = trunc i32 %3465 to i8
  %3467 = and i8 %3466, 1
  %3468 = xor i8 %3467, 1
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3468, i8* %3469, align 1
  %3470 = xor i64 1, %3453
  %3471 = trunc i64 %3470 to i32
  %3472 = xor i32 %3471, %3457
  %3473 = lshr i32 %3472, 4
  %3474 = trunc i32 %3473 to i8
  %3475 = and i8 %3474, 1
  %3476 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3475, i8* %3476, align 1
  %3477 = icmp eq i32 %3457, 0
  %3478 = zext i1 %3477 to i8
  %3479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3478, i8* %3479, align 1
  %3480 = lshr i32 %3457, 31
  %3481 = trunc i32 %3480 to i8
  %3482 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3481, i8* %3482, align 1
  %3483 = lshr i32 %3456, 31
  %3484 = xor i32 %3480, %3483
  %3485 = add i32 %3484, %3480
  %3486 = icmp eq i32 %3485, 2
  %3487 = zext i1 %3486 to i8
  %3488 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3487, i8* %3488, align 1
  store %struct.Memory* %loadMem_438948, %struct.Memory** %MEMORY
  %loadMem_43894b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3490 = getelementptr inbounds %struct.GPR, %struct.GPR* %3489, i32 0, i32 33
  %3491 = getelementptr inbounds %struct.Reg, %struct.Reg* %3490, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3491 to i64*
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3493 = getelementptr inbounds %struct.GPR, %struct.GPR* %3492, i32 0, i32 1
  %3494 = getelementptr inbounds %struct.Reg, %struct.Reg* %3493, i32 0, i32 0
  %EAX.i502 = bitcast %union.anon* %3494 to i32*
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 5
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %RCX.i503 = bitcast %union.anon* %3497 to i64*
  %3498 = load i32, i32* %EAX.i502
  %3499 = zext i32 %3498 to i64
  %3500 = load i64, i64* %PC.i501
  %3501 = add i64 %3500, 3
  store i64 %3501, i64* %PC.i501
  %3502 = shl i64 %3499, 32
  %3503 = ashr exact i64 %3502, 32
  store i64 %3503, i64* %RCX.i503, align 8
  store %struct.Memory* %loadMem_43894b, %struct.Memory** %MEMORY
  %loadMem_43894e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 33
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %PC.i497 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 1
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RAX.i498 = bitcast %union.anon* %3509 to i64*
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3511 = getelementptr inbounds %struct.GPR, %struct.GPR* %3510, i32 0, i32 5
  %3512 = getelementptr inbounds %struct.Reg, %struct.Reg* %3511, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %3512 to i64*
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 15
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %RBP.i500 = bitcast %union.anon* %3515 to i64*
  %3516 = load i64, i64* %RBP.i500
  %3517 = load i64, i64* %RCX.i499
  %3518 = add i64 %3516, -880
  %3519 = add i64 %3518, %3517
  %3520 = load i64, i64* %PC.i497
  %3521 = add i64 %3520, 8
  store i64 %3521, i64* %PC.i497
  %3522 = inttoptr i64 %3519 to i8*
  %3523 = load i8, i8* %3522
  %3524 = sext i8 %3523 to i64
  %3525 = and i64 %3524, 4294967295
  store i64 %3525, i64* %RAX.i498, align 8
  store %struct.Memory* %loadMem_43894e, %struct.Memory** %MEMORY
  %loadMem_438956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3527 = getelementptr inbounds %struct.GPR, %struct.GPR* %3526, i32 0, i32 33
  %3528 = getelementptr inbounds %struct.Reg, %struct.Reg* %3527, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3528 to i64*
  %3529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3530 = getelementptr inbounds %struct.GPR, %struct.GPR* %3529, i32 0, i32 5
  %3531 = getelementptr inbounds %struct.Reg, %struct.Reg* %3530, i32 0, i32 0
  %RCX.i495 = bitcast %union.anon* %3531 to i64*
  %3532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3533 = getelementptr inbounds %struct.GPR, %struct.GPR* %3532, i32 0, i32 15
  %3534 = getelementptr inbounds %struct.Reg, %struct.Reg* %3533, i32 0, i32 0
  %RBP.i496 = bitcast %union.anon* %3534 to i64*
  %3535 = load i64, i64* %RBP.i496
  %3536 = sub i64 %3535, 64
  %3537 = load i64, i64* %PC.i494
  %3538 = add i64 %3537, 4
  store i64 %3538, i64* %PC.i494
  %3539 = inttoptr i64 %3536 to i32*
  %3540 = load i32, i32* %3539
  %3541 = sext i32 %3540 to i64
  store i64 %3541, i64* %RCX.i495, align 8
  store %struct.Memory* %loadMem_438956, %struct.Memory** %MEMORY
  %loadMem_43895a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3543 = getelementptr inbounds %struct.GPR, %struct.GPR* %3542, i32 0, i32 33
  %3544 = getelementptr inbounds %struct.Reg, %struct.Reg* %3543, i32 0, i32 0
  %PC.i490 = bitcast %union.anon* %3544 to i64*
  %3545 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3546 = getelementptr inbounds %struct.GPR, %struct.GPR* %3545, i32 0, i32 5
  %3547 = getelementptr inbounds %struct.Reg, %struct.Reg* %3546, i32 0, i32 0
  %RCX.i491 = bitcast %union.anon* %3547 to i64*
  %3548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3549 = getelementptr inbounds %struct.GPR, %struct.GPR* %3548, i32 0, i32 7
  %3550 = getelementptr inbounds %struct.Reg, %struct.Reg* %3549, i32 0, i32 0
  %RDX.i492 = bitcast %union.anon* %3550 to i64*
  %3551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3552 = getelementptr inbounds %struct.GPR, %struct.GPR* %3551, i32 0, i32 15
  %3553 = getelementptr inbounds %struct.Reg, %struct.Reg* %3552, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %3553 to i64*
  %3554 = load i64, i64* %RBP.i493
  %3555 = load i64, i64* %RCX.i491
  %3556 = add i64 %3554, -480
  %3557 = add i64 %3556, %3555
  %3558 = load i64, i64* %PC.i490
  %3559 = add i64 %3558, 8
  store i64 %3559, i64* %PC.i490
  %3560 = inttoptr i64 %3557 to i8*
  %3561 = load i8, i8* %3560
  %3562 = sext i8 %3561 to i64
  %3563 = and i64 %3562, 4294967295
  store i64 %3563, i64* %RDX.i492, align 8
  store %struct.Memory* %loadMem_43895a, %struct.Memory** %MEMORY
  %loadMem_438962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3565 = getelementptr inbounds %struct.GPR, %struct.GPR* %3564, i32 0, i32 33
  %3566 = getelementptr inbounds %struct.Reg, %struct.Reg* %3565, i32 0, i32 0
  %PC.i487 = bitcast %union.anon* %3566 to i64*
  %3567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3568 = getelementptr inbounds %struct.GPR, %struct.GPR* %3567, i32 0, i32 9
  %3569 = getelementptr inbounds %struct.Reg, %struct.Reg* %3568, i32 0, i32 0
  %RSI.i488 = bitcast %union.anon* %3569 to i64*
  %3570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3571 = getelementptr inbounds %struct.GPR, %struct.GPR* %3570, i32 0, i32 15
  %3572 = getelementptr inbounds %struct.Reg, %struct.Reg* %3571, i32 0, i32 0
  %RBP.i489 = bitcast %union.anon* %3572 to i64*
  %3573 = load i64, i64* %RBP.i489
  %3574 = sub i64 %3573, 64
  %3575 = load i64, i64* %PC.i487
  %3576 = add i64 %3575, 3
  store i64 %3576, i64* %PC.i487
  %3577 = inttoptr i64 %3574 to i32*
  %3578 = load i32, i32* %3577
  %3579 = zext i32 %3578 to i64
  store i64 %3579, i64* %RSI.i488, align 8
  store %struct.Memory* %loadMem_438962, %struct.Memory** %MEMORY
  %loadMem_438965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3581 = getelementptr inbounds %struct.GPR, %struct.GPR* %3580, i32 0, i32 33
  %3582 = getelementptr inbounds %struct.Reg, %struct.Reg* %3581, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3582 to i64*
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 9
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %RSI.i486 = bitcast %union.anon* %3585 to i64*
  %3586 = load i64, i64* %RSI.i486
  %3587 = load i64, i64* %PC.i485
  %3588 = add i64 %3587, 3
  store i64 %3588, i64* %PC.i485
  %3589 = trunc i64 %3586 to i32
  %3590 = add i32 20, %3589
  %3591 = zext i32 %3590 to i64
  store i64 %3591, i64* %RSI.i486, align 8
  %3592 = icmp ult i32 %3590, %3589
  %3593 = icmp ult i32 %3590, 20
  %3594 = or i1 %3592, %3593
  %3595 = zext i1 %3594 to i8
  %3596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3595, i8* %3596, align 1
  %3597 = and i32 %3590, 255
  %3598 = call i32 @llvm.ctpop.i32(i32 %3597)
  %3599 = trunc i32 %3598 to i8
  %3600 = and i8 %3599, 1
  %3601 = xor i8 %3600, 1
  %3602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3601, i8* %3602, align 1
  %3603 = xor i64 20, %3586
  %3604 = trunc i64 %3603 to i32
  %3605 = xor i32 %3604, %3590
  %3606 = lshr i32 %3605, 4
  %3607 = trunc i32 %3606 to i8
  %3608 = and i8 %3607, 1
  %3609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3608, i8* %3609, align 1
  %3610 = icmp eq i32 %3590, 0
  %3611 = zext i1 %3610 to i8
  %3612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3611, i8* %3612, align 1
  %3613 = lshr i32 %3590, 31
  %3614 = trunc i32 %3613 to i8
  %3615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3614, i8* %3615, align 1
  %3616 = lshr i32 %3589, 31
  %3617 = xor i32 %3613, %3616
  %3618 = add i32 %3617, %3613
  %3619 = icmp eq i32 %3618, 2
  %3620 = zext i1 %3619 to i8
  %3621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3620, i8* %3621, align 1
  store %struct.Memory* %loadMem_438965, %struct.Memory** %MEMORY
  %loadMem_438968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3623 = getelementptr inbounds %struct.GPR, %struct.GPR* %3622, i32 0, i32 33
  %3624 = getelementptr inbounds %struct.Reg, %struct.Reg* %3623, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3624 to i64*
  %3625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3626 = getelementptr inbounds %struct.GPR, %struct.GPR* %3625, i32 0, i32 9
  %3627 = getelementptr inbounds %struct.Reg, %struct.Reg* %3626, i32 0, i32 0
  %ESI.i483 = bitcast %union.anon* %3627 to i32*
  %3628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3629 = getelementptr inbounds %struct.GPR, %struct.GPR* %3628, i32 0, i32 5
  %3630 = getelementptr inbounds %struct.Reg, %struct.Reg* %3629, i32 0, i32 0
  %RCX.i484 = bitcast %union.anon* %3630 to i64*
  %3631 = load i32, i32* %ESI.i483
  %3632 = zext i32 %3631 to i64
  %3633 = load i64, i64* %PC.i482
  %3634 = add i64 %3633, 3
  store i64 %3634, i64* %PC.i482
  %3635 = shl i64 %3632, 32
  %3636 = ashr exact i64 %3635, 32
  store i64 %3636, i64* %RCX.i484, align 8
  store %struct.Memory* %loadMem_438968, %struct.Memory** %MEMORY
  %loadMem_43896b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 5
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %RCX.i479 = bitcast %union.anon* %3642 to i64*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 9
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RSI.i480 = bitcast %union.anon* %3645 to i64*
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3647 = getelementptr inbounds %struct.GPR, %struct.GPR* %3646, i32 0, i32 15
  %3648 = getelementptr inbounds %struct.Reg, %struct.Reg* %3647, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %3648 to i64*
  %3649 = load i64, i64* %RBP.i481
  %3650 = load i64, i64* %RCX.i479
  %3651 = add i64 %3649, -880
  %3652 = add i64 %3651, %3650
  %3653 = load i64, i64* %PC.i478
  %3654 = add i64 %3653, 8
  store i64 %3654, i64* %PC.i478
  %3655 = inttoptr i64 %3652 to i8*
  %3656 = load i8, i8* %3655
  %3657 = sext i8 %3656 to i64
  %3658 = and i64 %3657, 4294967295
  store i64 %3658, i64* %RSI.i480, align 8
  store %struct.Memory* %loadMem_43896b, %struct.Memory** %MEMORY
  %loadMem_438973 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3660 = getelementptr inbounds %struct.GPR, %struct.GPR* %3659, i32 0, i32 33
  %3661 = getelementptr inbounds %struct.Reg, %struct.Reg* %3660, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3661 to i64*
  %3662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3663 = getelementptr inbounds %struct.GPR, %struct.GPR* %3662, i32 0, i32 9
  %3664 = getelementptr inbounds %struct.Reg, %struct.Reg* %3663, i32 0, i32 0
  %ESI.i476 = bitcast %union.anon* %3664 to i32*
  %3665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3666 = getelementptr inbounds %struct.GPR, %struct.GPR* %3665, i32 0, i32 7
  %3667 = getelementptr inbounds %struct.Reg, %struct.Reg* %3666, i32 0, i32 0
  %RDX.i477 = bitcast %union.anon* %3667 to i64*
  %3668 = load i64, i64* %RDX.i477
  %3669 = load i32, i32* %ESI.i476
  %3670 = zext i32 %3669 to i64
  %3671 = load i64, i64* %PC.i475
  %3672 = add i64 %3671, 2
  store i64 %3672, i64* %PC.i475
  %3673 = trunc i64 %3668 to i32
  %3674 = sub i32 %3673, %3669
  %3675 = zext i32 %3674 to i64
  store i64 %3675, i64* %RDX.i477, align 8
  %3676 = icmp ult i32 %3673, %3669
  %3677 = zext i1 %3676 to i8
  %3678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3677, i8* %3678, align 1
  %3679 = and i32 %3674, 255
  %3680 = call i32 @llvm.ctpop.i32(i32 %3679)
  %3681 = trunc i32 %3680 to i8
  %3682 = and i8 %3681, 1
  %3683 = xor i8 %3682, 1
  %3684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3683, i8* %3684, align 1
  %3685 = xor i64 %3670, %3668
  %3686 = trunc i64 %3685 to i32
  %3687 = xor i32 %3686, %3674
  %3688 = lshr i32 %3687, 4
  %3689 = trunc i32 %3688 to i8
  %3690 = and i8 %3689, 1
  %3691 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3690, i8* %3691, align 1
  %3692 = icmp eq i32 %3674, 0
  %3693 = zext i1 %3692 to i8
  %3694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3693, i8* %3694, align 1
  %3695 = lshr i32 %3674, 31
  %3696 = trunc i32 %3695 to i8
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3696, i8* %3697, align 1
  %3698 = lshr i32 %3673, 31
  %3699 = lshr i32 %3669, 31
  %3700 = xor i32 %3699, %3698
  %3701 = xor i32 %3695, %3698
  %3702 = add i32 %3701, %3700
  %3703 = icmp eq i32 %3702, 2
  %3704 = zext i1 %3703 to i8
  %3705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3704, i8* %3705, align 1
  store %struct.Memory* %loadMem_438973, %struct.Memory** %MEMORY
  %loadMem_438975 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3707 = getelementptr inbounds %struct.GPR, %struct.GPR* %3706, i32 0, i32 33
  %3708 = getelementptr inbounds %struct.Reg, %struct.Reg* %3707, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3708 to i64*
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3710 = getelementptr inbounds %struct.GPR, %struct.GPR* %3709, i32 0, i32 1
  %3711 = getelementptr inbounds %struct.Reg, %struct.Reg* %3710, i32 0, i32 0
  %EAX.i473 = bitcast %union.anon* %3711 to i32*
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3713 = getelementptr inbounds %struct.GPR, %struct.GPR* %3712, i32 0, i32 7
  %3714 = getelementptr inbounds %struct.Reg, %struct.Reg* %3713, i32 0, i32 0
  %EDX.i474 = bitcast %union.anon* %3714 to i32*
  %3715 = load i32, i32* %EAX.i473
  %3716 = zext i32 %3715 to i64
  %3717 = load i32, i32* %EDX.i474
  %3718 = zext i32 %3717 to i64
  %3719 = load i64, i64* %PC.i472
  %3720 = add i64 %3719, 2
  store i64 %3720, i64* %PC.i472
  %3721 = sub i32 %3715, %3717
  %3722 = icmp ult i32 %3715, %3717
  %3723 = zext i1 %3722 to i8
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3723, i8* %3724, align 1
  %3725 = and i32 %3721, 255
  %3726 = call i32 @llvm.ctpop.i32(i32 %3725)
  %3727 = trunc i32 %3726 to i8
  %3728 = and i8 %3727, 1
  %3729 = xor i8 %3728, 1
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3729, i8* %3730, align 1
  %3731 = xor i64 %3718, %3716
  %3732 = trunc i64 %3731 to i32
  %3733 = xor i32 %3732, %3721
  %3734 = lshr i32 %3733, 4
  %3735 = trunc i32 %3734 to i8
  %3736 = and i8 %3735, 1
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3736, i8* %3737, align 1
  %3738 = icmp eq i32 %3721, 0
  %3739 = zext i1 %3738 to i8
  %3740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3739, i8* %3740, align 1
  %3741 = lshr i32 %3721, 31
  %3742 = trunc i32 %3741 to i8
  %3743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3742, i8* %3743, align 1
  %3744 = lshr i32 %3715, 31
  %3745 = lshr i32 %3717, 31
  %3746 = xor i32 %3745, %3744
  %3747 = xor i32 %3741, %3744
  %3748 = add i32 %3747, %3746
  %3749 = icmp eq i32 %3748, 2
  %3750 = zext i1 %3749 to i8
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3750, i8* %3751, align 1
  store %struct.Memory* %loadMem_438975, %struct.Memory** %MEMORY
  %loadMem_438977 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %3754 to i64*
  %3755 = load i64, i64* %PC.i471
  %3756 = add i64 %3755, 622
  %3757 = load i64, i64* %PC.i471
  %3758 = add i64 %3757, 6
  %3759 = load i64, i64* %PC.i471
  %3760 = add i64 %3759, 6
  store i64 %3760, i64* %PC.i471
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3762 = load i8, i8* %3761, align 1
  %3763 = icmp eq i8 %3762, 0
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3765 = load i8, i8* %3764, align 1
  %3766 = icmp ne i8 %3765, 0
  %3767 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3768 = load i8, i8* %3767, align 1
  %3769 = icmp ne i8 %3768, 0
  %3770 = xor i1 %3766, %3769
  %3771 = xor i1 %3770, true
  %3772 = and i1 %3763, %3771
  %3773 = zext i1 %3772 to i8
  store i8 %3773, i8* %BRANCH_TAKEN, align 1
  %3774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3775 = select i1 %3772, i64 %3756, i64 %3758
  store i64 %3775, i64* %3774, align 8
  store %struct.Memory* %loadMem_438977, %struct.Memory** %MEMORY
  %loadBr_438977 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438977 = icmp eq i8 %loadBr_438977, 1
  br i1 %cmpBr_438977, label %block_.L_438be5, label %block_.L_43897d

block_.L_43897d:                                  ; preds = %block_438942, %block_.L_43890f
  %loadMem_43897d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3777 = getelementptr inbounds %struct.GPR, %struct.GPR* %3776, i32 0, i32 33
  %3778 = getelementptr inbounds %struct.Reg, %struct.Reg* %3777, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3778 to i64*
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 1
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %RAX.i469 = bitcast %union.anon* %3781 to i64*
  %3782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3783 = getelementptr inbounds %struct.GPR, %struct.GPR* %3782, i32 0, i32 15
  %3784 = getelementptr inbounds %struct.Reg, %struct.Reg* %3783, i32 0, i32 0
  %RBP.i470 = bitcast %union.anon* %3784 to i64*
  %3785 = load i64, i64* %RBP.i470
  %3786 = sub i64 %3785, 64
  %3787 = load i64, i64* %PC.i468
  %3788 = add i64 %3787, 3
  store i64 %3788, i64* %PC.i468
  %3789 = inttoptr i64 %3786 to i32*
  %3790 = load i32, i32* %3789
  %3791 = zext i32 %3790 to i64
  store i64 %3791, i64* %RAX.i469, align 8
  store %struct.Memory* %loadMem_43897d, %struct.Memory** %MEMORY
  %loadMem_438980 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3793 = getelementptr inbounds %struct.GPR, %struct.GPR* %3792, i32 0, i32 33
  %3794 = getelementptr inbounds %struct.Reg, %struct.Reg* %3793, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3794 to i64*
  %3795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3796 = getelementptr inbounds %struct.GPR, %struct.GPR* %3795, i32 0, i32 1
  %3797 = getelementptr inbounds %struct.Reg, %struct.Reg* %3796, i32 0, i32 0
  %RAX.i467 = bitcast %union.anon* %3797 to i64*
  %3798 = load i64, i64* %RAX.i467
  %3799 = load i64, i64* %PC.i466
  %3800 = add i64 %3799, 3
  store i64 %3800, i64* %PC.i466
  %3801 = trunc i64 %3798 to i32
  %3802 = add i32 20, %3801
  %3803 = zext i32 %3802 to i64
  store i64 %3803, i64* %RAX.i467, align 8
  %3804 = icmp ult i32 %3802, %3801
  %3805 = icmp ult i32 %3802, 20
  %3806 = or i1 %3804, %3805
  %3807 = zext i1 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3807, i8* %3808, align 1
  %3809 = and i32 %3802, 255
  %3810 = call i32 @llvm.ctpop.i32(i32 %3809)
  %3811 = trunc i32 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = xor i8 %3812, 1
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3813, i8* %3814, align 1
  %3815 = xor i64 20, %3798
  %3816 = trunc i64 %3815 to i32
  %3817 = xor i32 %3816, %3802
  %3818 = lshr i32 %3817, 4
  %3819 = trunc i32 %3818 to i8
  %3820 = and i8 %3819, 1
  %3821 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3820, i8* %3821, align 1
  %3822 = icmp eq i32 %3802, 0
  %3823 = zext i1 %3822 to i8
  %3824 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3823, i8* %3824, align 1
  %3825 = lshr i32 %3802, 31
  %3826 = trunc i32 %3825 to i8
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3826, i8* %3827, align 1
  %3828 = lshr i32 %3801, 31
  %3829 = xor i32 %3825, %3828
  %3830 = add i32 %3829, %3825
  %3831 = icmp eq i32 %3830, 2
  %3832 = zext i1 %3831 to i8
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3832, i8* %3833, align 1
  store %struct.Memory* %loadMem_438980, %struct.Memory** %MEMORY
  %loadMem_438983 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3835 = getelementptr inbounds %struct.GPR, %struct.GPR* %3834, i32 0, i32 33
  %3836 = getelementptr inbounds %struct.Reg, %struct.Reg* %3835, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3836 to i64*
  %3837 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3838 = getelementptr inbounds %struct.GPR, %struct.GPR* %3837, i32 0, i32 1
  %3839 = getelementptr inbounds %struct.Reg, %struct.Reg* %3838, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %3839 to i64*
  %3840 = load i64, i64* %RAX.i465
  %3841 = load i64, i64* %PC.i464
  %3842 = add i64 %3841, 3
  store i64 %3842, i64* %PC.i464
  %3843 = trunc i64 %3840 to i32
  %3844 = sub i32 %3843, 1
  %3845 = zext i32 %3844 to i64
  store i64 %3845, i64* %RAX.i465, align 8
  %3846 = icmp ult i32 %3843, 1
  %3847 = zext i1 %3846 to i8
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3847, i8* %3848, align 1
  %3849 = and i32 %3844, 255
  %3850 = call i32 @llvm.ctpop.i32(i32 %3849)
  %3851 = trunc i32 %3850 to i8
  %3852 = and i8 %3851, 1
  %3853 = xor i8 %3852, 1
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3853, i8* %3854, align 1
  %3855 = xor i64 1, %3840
  %3856 = trunc i64 %3855 to i32
  %3857 = xor i32 %3856, %3844
  %3858 = lshr i32 %3857, 4
  %3859 = trunc i32 %3858 to i8
  %3860 = and i8 %3859, 1
  %3861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3860, i8* %3861, align 1
  %3862 = icmp eq i32 %3844, 0
  %3863 = zext i1 %3862 to i8
  %3864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3863, i8* %3864, align 1
  %3865 = lshr i32 %3844, 31
  %3866 = trunc i32 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3866, i8* %3867, align 1
  %3868 = lshr i32 %3843, 31
  %3869 = xor i32 %3865, %3868
  %3870 = add i32 %3869, %3868
  %3871 = icmp eq i32 %3870, 2
  %3872 = zext i1 %3871 to i8
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3872, i8* %3873, align 1
  store %struct.Memory* %loadMem_438983, %struct.Memory** %MEMORY
  %loadMem_438986 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3875 = getelementptr inbounds %struct.GPR, %struct.GPR* %3874, i32 0, i32 33
  %3876 = getelementptr inbounds %struct.Reg, %struct.Reg* %3875, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3876 to i64*
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 1
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %EAX.i462 = bitcast %union.anon* %3879 to i32*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 5
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %3882 to i64*
  %3883 = load i32, i32* %EAX.i462
  %3884 = zext i32 %3883 to i64
  %3885 = load i64, i64* %PC.i461
  %3886 = add i64 %3885, 3
  store i64 %3886, i64* %PC.i461
  %3887 = shl i64 %3884, 32
  %3888 = ashr exact i64 %3887, 32
  store i64 %3888, i64* %RCX.i463, align 8
  store %struct.Memory* %loadMem_438986, %struct.Memory** %MEMORY
  %loadMem_438989 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3890 = getelementptr inbounds %struct.GPR, %struct.GPR* %3889, i32 0, i32 33
  %3891 = getelementptr inbounds %struct.Reg, %struct.Reg* %3890, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3891 to i64*
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3893 = getelementptr inbounds %struct.GPR, %struct.GPR* %3892, i32 0, i32 1
  %3894 = getelementptr inbounds %struct.Reg, %struct.Reg* %3893, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %3894 to i64*
  %3895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3896 = getelementptr inbounds %struct.GPR, %struct.GPR* %3895, i32 0, i32 5
  %3897 = getelementptr inbounds %struct.Reg, %struct.Reg* %3896, i32 0, i32 0
  %RCX.i460 = bitcast %union.anon* %3897 to i64*
  %3898 = load i64, i64* %RCX.i460
  %3899 = add i64 %3898, 12099168
  %3900 = load i64, i64* %PC.i458
  %3901 = add i64 %3900, 8
  store i64 %3901, i64* %PC.i458
  %3902 = inttoptr i64 %3899 to i8*
  %3903 = load i8, i8* %3902
  %3904 = zext i8 %3903 to i64
  store i64 %3904, i64* %RAX.i459, align 8
  store %struct.Memory* %loadMem_438989, %struct.Memory** %MEMORY
  %loadMem_438991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3906 = getelementptr inbounds %struct.GPR, %struct.GPR* %3905, i32 0, i32 33
  %3907 = getelementptr inbounds %struct.Reg, %struct.Reg* %3906, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3907 to i64*
  %3908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3909 = getelementptr inbounds %struct.GPR, %struct.GPR* %3908, i32 0, i32 1
  %3910 = getelementptr inbounds %struct.Reg, %struct.Reg* %3909, i32 0, i32 0
  %EAX.i457 = bitcast %union.anon* %3910 to i32*
  %3911 = load i32, i32* %EAX.i457
  %3912 = zext i32 %3911 to i64
  %3913 = load i64, i64* %PC.i456
  %3914 = add i64 %3913, 3
  store i64 %3914, i64* %PC.i456
  %3915 = sub i32 %3911, 3
  %3916 = icmp ult i32 %3911, 3
  %3917 = zext i1 %3916 to i8
  %3918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3917, i8* %3918, align 1
  %3919 = and i32 %3915, 255
  %3920 = call i32 @llvm.ctpop.i32(i32 %3919)
  %3921 = trunc i32 %3920 to i8
  %3922 = and i8 %3921, 1
  %3923 = xor i8 %3922, 1
  %3924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3923, i8* %3924, align 1
  %3925 = xor i64 3, %3912
  %3926 = trunc i64 %3925 to i32
  %3927 = xor i32 %3926, %3915
  %3928 = lshr i32 %3927, 4
  %3929 = trunc i32 %3928 to i8
  %3930 = and i8 %3929, 1
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3930, i8* %3931, align 1
  %3932 = icmp eq i32 %3915, 0
  %3933 = zext i1 %3932 to i8
  %3934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3933, i8* %3934, align 1
  %3935 = lshr i32 %3915, 31
  %3936 = trunc i32 %3935 to i8
  %3937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3936, i8* %3937, align 1
  %3938 = lshr i32 %3911, 31
  %3939 = xor i32 %3935, %3938
  %3940 = add i32 %3939, %3938
  %3941 = icmp eq i32 %3940, 2
  %3942 = zext i1 %3941 to i8
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3942, i8* %3943, align 1
  store %struct.Memory* %loadMem_438991, %struct.Memory** %MEMORY
  %loadMem_438994 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 33
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %PC.i455
  %3948 = add i64 %3947, 65
  %3949 = load i64, i64* %PC.i455
  %3950 = add i64 %3949, 6
  %3951 = load i64, i64* %PC.i455
  %3952 = add i64 %3951, 6
  store i64 %3952, i64* %PC.i455
  %3953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3954 = load i8, i8* %3953, align 1
  store i8 %3954, i8* %BRANCH_TAKEN, align 1
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3956 = icmp ne i8 %3954, 0
  %3957 = select i1 %3956, i64 %3948, i64 %3950
  store i64 %3957, i64* %3955, align 8
  store %struct.Memory* %loadMem_438994, %struct.Memory** %MEMORY
  %loadBr_438994 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438994 = icmp eq i8 %loadBr_438994, 1
  br i1 %cmpBr_438994, label %block_.L_4389d5, label %block_43899a

block_43899a:                                     ; preds = %block_.L_43897d
  %loadMem_43899a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3959 = getelementptr inbounds %struct.GPR, %struct.GPR* %3958, i32 0, i32 33
  %3960 = getelementptr inbounds %struct.Reg, %struct.Reg* %3959, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3960 to i64*
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3962 = getelementptr inbounds %struct.GPR, %struct.GPR* %3961, i32 0, i32 1
  %3963 = getelementptr inbounds %struct.Reg, %struct.Reg* %3962, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3963 to i64*
  %3964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3965 = getelementptr inbounds %struct.GPR, %struct.GPR* %3964, i32 0, i32 15
  %3966 = getelementptr inbounds %struct.Reg, %struct.Reg* %3965, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3966 to i64*
  %3967 = load i64, i64* %RBP.i454
  %3968 = sub i64 %3967, 64
  %3969 = load i64, i64* %PC.i452
  %3970 = add i64 %3969, 3
  store i64 %3970, i64* %PC.i452
  %3971 = inttoptr i64 %3968 to i32*
  %3972 = load i32, i32* %3971
  %3973 = zext i32 %3972 to i64
  store i64 %3973, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_43899a, %struct.Memory** %MEMORY
  %loadMem_43899d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3975 = getelementptr inbounds %struct.GPR, %struct.GPR* %3974, i32 0, i32 33
  %3976 = getelementptr inbounds %struct.Reg, %struct.Reg* %3975, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3976 to i64*
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3978 = getelementptr inbounds %struct.GPR, %struct.GPR* %3977, i32 0, i32 1
  %3979 = getelementptr inbounds %struct.Reg, %struct.Reg* %3978, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %3979 to i64*
  %3980 = load i64, i64* %RAX.i451
  %3981 = load i64, i64* %PC.i450
  %3982 = add i64 %3981, 3
  store i64 %3982, i64* %PC.i450
  %3983 = trunc i64 %3980 to i32
  %3984 = add i32 20, %3983
  %3985 = zext i32 %3984 to i64
  store i64 %3985, i64* %RAX.i451, align 8
  %3986 = icmp ult i32 %3984, %3983
  %3987 = icmp ult i32 %3984, 20
  %3988 = or i1 %3986, %3987
  %3989 = zext i1 %3988 to i8
  %3990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3989, i8* %3990, align 1
  %3991 = and i32 %3984, 255
  %3992 = call i32 @llvm.ctpop.i32(i32 %3991)
  %3993 = trunc i32 %3992 to i8
  %3994 = and i8 %3993, 1
  %3995 = xor i8 %3994, 1
  %3996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3995, i8* %3996, align 1
  %3997 = xor i64 20, %3980
  %3998 = trunc i64 %3997 to i32
  %3999 = xor i32 %3998, %3984
  %4000 = lshr i32 %3999, 4
  %4001 = trunc i32 %4000 to i8
  %4002 = and i8 %4001, 1
  %4003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4002, i8* %4003, align 1
  %4004 = icmp eq i32 %3984, 0
  %4005 = zext i1 %4004 to i8
  %4006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4005, i8* %4006, align 1
  %4007 = lshr i32 %3984, 31
  %4008 = trunc i32 %4007 to i8
  %4009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4008, i8* %4009, align 1
  %4010 = lshr i32 %3983, 31
  %4011 = xor i32 %4007, %4010
  %4012 = add i32 %4011, %4007
  %4013 = icmp eq i32 %4012, 2
  %4014 = zext i1 %4013 to i8
  %4015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4014, i8* %4015, align 1
  store %struct.Memory* %loadMem_43899d, %struct.Memory** %MEMORY
  %loadMem_4389a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4017 = getelementptr inbounds %struct.GPR, %struct.GPR* %4016, i32 0, i32 33
  %4018 = getelementptr inbounds %struct.Reg, %struct.Reg* %4017, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %4018 to i64*
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 1
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %RAX.i449 = bitcast %union.anon* %4021 to i64*
  %4022 = load i64, i64* %RAX.i449
  %4023 = load i64, i64* %PC.i448
  %4024 = add i64 %4023, 3
  store i64 %4024, i64* %PC.i448
  %4025 = trunc i64 %4022 to i32
  %4026 = sub i32 %4025, 1
  %4027 = zext i32 %4026 to i64
  store i64 %4027, i64* %RAX.i449, align 8
  %4028 = icmp ult i32 %4025, 1
  %4029 = zext i1 %4028 to i8
  %4030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4029, i8* %4030, align 1
  %4031 = and i32 %4026, 255
  %4032 = call i32 @llvm.ctpop.i32(i32 %4031)
  %4033 = trunc i32 %4032 to i8
  %4034 = and i8 %4033, 1
  %4035 = xor i8 %4034, 1
  %4036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4035, i8* %4036, align 1
  %4037 = xor i64 1, %4022
  %4038 = trunc i64 %4037 to i32
  %4039 = xor i32 %4038, %4026
  %4040 = lshr i32 %4039, 4
  %4041 = trunc i32 %4040 to i8
  %4042 = and i8 %4041, 1
  %4043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4042, i8* %4043, align 1
  %4044 = icmp eq i32 %4026, 0
  %4045 = zext i1 %4044 to i8
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4045, i8* %4046, align 1
  %4047 = lshr i32 %4026, 31
  %4048 = trunc i32 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4048, i8* %4049, align 1
  %4050 = lshr i32 %4025, 31
  %4051 = xor i32 %4047, %4050
  %4052 = add i32 %4051, %4050
  %4053 = icmp eq i32 %4052, 2
  %4054 = zext i1 %4053 to i8
  %4055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4054, i8* %4055, align 1
  store %struct.Memory* %loadMem_4389a0, %struct.Memory** %MEMORY
  %loadMem_4389a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4057 = getelementptr inbounds %struct.GPR, %struct.GPR* %4056, i32 0, i32 33
  %4058 = getelementptr inbounds %struct.Reg, %struct.Reg* %4057, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %4058 to i64*
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 1
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %EAX.i446 = bitcast %union.anon* %4061 to i32*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 5
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RCX.i447 = bitcast %union.anon* %4064 to i64*
  %4065 = load i32, i32* %EAX.i446
  %4066 = zext i32 %4065 to i64
  %4067 = load i64, i64* %PC.i445
  %4068 = add i64 %4067, 3
  store i64 %4068, i64* %PC.i445
  %4069 = shl i64 %4066, 32
  %4070 = ashr exact i64 %4069, 32
  store i64 %4070, i64* %RCX.i447, align 8
  store %struct.Memory* %loadMem_4389a3, %struct.Memory** %MEMORY
  %loadMem_4389a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4072 = getelementptr inbounds %struct.GPR, %struct.GPR* %4071, i32 0, i32 33
  %4073 = getelementptr inbounds %struct.Reg, %struct.Reg* %4072, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %4073 to i64*
  %4074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4075 = getelementptr inbounds %struct.GPR, %struct.GPR* %4074, i32 0, i32 1
  %4076 = getelementptr inbounds %struct.Reg, %struct.Reg* %4075, i32 0, i32 0
  %RAX.i442 = bitcast %union.anon* %4076 to i64*
  %4077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4078 = getelementptr inbounds %struct.GPR, %struct.GPR* %4077, i32 0, i32 5
  %4079 = getelementptr inbounds %struct.Reg, %struct.Reg* %4078, i32 0, i32 0
  %RCX.i443 = bitcast %union.anon* %4079 to i64*
  %4080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4081 = getelementptr inbounds %struct.GPR, %struct.GPR* %4080, i32 0, i32 15
  %4082 = getelementptr inbounds %struct.Reg, %struct.Reg* %4081, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %4082 to i64*
  %4083 = load i64, i64* %RBP.i444
  %4084 = load i64, i64* %RCX.i443
  %4085 = add i64 %4083, -880
  %4086 = add i64 %4085, %4084
  %4087 = load i64, i64* %PC.i441
  %4088 = add i64 %4087, 8
  store i64 %4088, i64* %PC.i441
  %4089 = inttoptr i64 %4086 to i8*
  %4090 = load i8, i8* %4089
  %4091 = sext i8 %4090 to i64
  %4092 = and i64 %4091, 4294967295
  store i64 %4092, i64* %RAX.i442, align 8
  store %struct.Memory* %loadMem_4389a6, %struct.Memory** %MEMORY
  %loadMem_4389ae = load %struct.Memory*, %struct.Memory** %MEMORY
  %4093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4094 = getelementptr inbounds %struct.GPR, %struct.GPR* %4093, i32 0, i32 33
  %4095 = getelementptr inbounds %struct.Reg, %struct.Reg* %4094, i32 0, i32 0
  %PC.i438 = bitcast %union.anon* %4095 to i64*
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4097 = getelementptr inbounds %struct.GPR, %struct.GPR* %4096, i32 0, i32 5
  %4098 = getelementptr inbounds %struct.Reg, %struct.Reg* %4097, i32 0, i32 0
  %RCX.i439 = bitcast %union.anon* %4098 to i64*
  %4099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4100 = getelementptr inbounds %struct.GPR, %struct.GPR* %4099, i32 0, i32 15
  %4101 = getelementptr inbounds %struct.Reg, %struct.Reg* %4100, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %4101 to i64*
  %4102 = load i64, i64* %RBP.i440
  %4103 = sub i64 %4102, 64
  %4104 = load i64, i64* %PC.i438
  %4105 = add i64 %4104, 4
  store i64 %4105, i64* %PC.i438
  %4106 = inttoptr i64 %4103 to i32*
  %4107 = load i32, i32* %4106
  %4108 = sext i32 %4107 to i64
  store i64 %4108, i64* %RCX.i439, align 8
  store %struct.Memory* %loadMem_4389ae, %struct.Memory** %MEMORY
  %loadMem_4389b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4110 = getelementptr inbounds %struct.GPR, %struct.GPR* %4109, i32 0, i32 33
  %4111 = getelementptr inbounds %struct.Reg, %struct.Reg* %4110, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4111 to i64*
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4113 = getelementptr inbounds %struct.GPR, %struct.GPR* %4112, i32 0, i32 5
  %4114 = getelementptr inbounds %struct.Reg, %struct.Reg* %4113, i32 0, i32 0
  %RCX.i435 = bitcast %union.anon* %4114 to i64*
  %4115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4116 = getelementptr inbounds %struct.GPR, %struct.GPR* %4115, i32 0, i32 7
  %4117 = getelementptr inbounds %struct.Reg, %struct.Reg* %4116, i32 0, i32 0
  %RDX.i436 = bitcast %union.anon* %4117 to i64*
  %4118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4119 = getelementptr inbounds %struct.GPR, %struct.GPR* %4118, i32 0, i32 15
  %4120 = getelementptr inbounds %struct.Reg, %struct.Reg* %4119, i32 0, i32 0
  %RBP.i437 = bitcast %union.anon* %4120 to i64*
  %4121 = load i64, i64* %RBP.i437
  %4122 = load i64, i64* %RCX.i435
  %4123 = add i64 %4121, -480
  %4124 = add i64 %4123, %4122
  %4125 = load i64, i64* %PC.i434
  %4126 = add i64 %4125, 8
  store i64 %4126, i64* %PC.i434
  %4127 = inttoptr i64 %4124 to i8*
  %4128 = load i8, i8* %4127
  %4129 = sext i8 %4128 to i64
  %4130 = and i64 %4129, 4294967295
  store i64 %4130, i64* %RDX.i436, align 8
  store %struct.Memory* %loadMem_4389b2, %struct.Memory** %MEMORY
  %loadMem_4389ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 33
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4133 to i64*
  %4134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4135 = getelementptr inbounds %struct.GPR, %struct.GPR* %4134, i32 0, i32 9
  %4136 = getelementptr inbounds %struct.Reg, %struct.Reg* %4135, i32 0, i32 0
  %RSI.i432 = bitcast %union.anon* %4136 to i64*
  %4137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4138 = getelementptr inbounds %struct.GPR, %struct.GPR* %4137, i32 0, i32 15
  %4139 = getelementptr inbounds %struct.Reg, %struct.Reg* %4138, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4139 to i64*
  %4140 = load i64, i64* %RBP.i433
  %4141 = sub i64 %4140, 64
  %4142 = load i64, i64* %PC.i431
  %4143 = add i64 %4142, 3
  store i64 %4143, i64* %PC.i431
  %4144 = inttoptr i64 %4141 to i32*
  %4145 = load i32, i32* %4144
  %4146 = zext i32 %4145 to i64
  store i64 %4146, i64* %RSI.i432, align 8
  store %struct.Memory* %loadMem_4389ba, %struct.Memory** %MEMORY
  %loadMem_4389bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 9
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RSI.i430 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %RSI.i430
  %4154 = load i64, i64* %PC.i429
  %4155 = add i64 %4154, 3
  store i64 %4155, i64* %PC.i429
  %4156 = trunc i64 %4153 to i32
  %4157 = add i32 20, %4156
  %4158 = zext i32 %4157 to i64
  store i64 %4158, i64* %RSI.i430, align 8
  %4159 = icmp ult i32 %4157, %4156
  %4160 = icmp ult i32 %4157, 20
  %4161 = or i1 %4159, %4160
  %4162 = zext i1 %4161 to i8
  %4163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4162, i8* %4163, align 1
  %4164 = and i32 %4157, 255
  %4165 = call i32 @llvm.ctpop.i32(i32 %4164)
  %4166 = trunc i32 %4165 to i8
  %4167 = and i8 %4166, 1
  %4168 = xor i8 %4167, 1
  %4169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4168, i8* %4169, align 1
  %4170 = xor i64 20, %4153
  %4171 = trunc i64 %4170 to i32
  %4172 = xor i32 %4171, %4157
  %4173 = lshr i32 %4172, 4
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4175, i8* %4176, align 1
  %4177 = icmp eq i32 %4157, 0
  %4178 = zext i1 %4177 to i8
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4178, i8* %4179, align 1
  %4180 = lshr i32 %4157, 31
  %4181 = trunc i32 %4180 to i8
  %4182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4181, i8* %4182, align 1
  %4183 = lshr i32 %4156, 31
  %4184 = xor i32 %4180, %4183
  %4185 = add i32 %4184, %4180
  %4186 = icmp eq i32 %4185, 2
  %4187 = zext i1 %4186 to i8
  %4188 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4187, i8* %4188, align 1
  store %struct.Memory* %loadMem_4389bd, %struct.Memory** %MEMORY
  %loadMem_4389c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4190 = getelementptr inbounds %struct.GPR, %struct.GPR* %4189, i32 0, i32 33
  %4191 = getelementptr inbounds %struct.Reg, %struct.Reg* %4190, i32 0, i32 0
  %PC.i426 = bitcast %union.anon* %4191 to i64*
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4193 = getelementptr inbounds %struct.GPR, %struct.GPR* %4192, i32 0, i32 9
  %4194 = getelementptr inbounds %struct.Reg, %struct.Reg* %4193, i32 0, i32 0
  %ESI.i427 = bitcast %union.anon* %4194 to i32*
  %4195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4196 = getelementptr inbounds %struct.GPR, %struct.GPR* %4195, i32 0, i32 5
  %4197 = getelementptr inbounds %struct.Reg, %struct.Reg* %4196, i32 0, i32 0
  %RCX.i428 = bitcast %union.anon* %4197 to i64*
  %4198 = load i32, i32* %ESI.i427
  %4199 = zext i32 %4198 to i64
  %4200 = load i64, i64* %PC.i426
  %4201 = add i64 %4200, 3
  store i64 %4201, i64* %PC.i426
  %4202 = shl i64 %4199, 32
  %4203 = ashr exact i64 %4202, 32
  store i64 %4203, i64* %RCX.i428, align 8
  store %struct.Memory* %loadMem_4389c0, %struct.Memory** %MEMORY
  %loadMem_4389c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4205 = getelementptr inbounds %struct.GPR, %struct.GPR* %4204, i32 0, i32 33
  %4206 = getelementptr inbounds %struct.Reg, %struct.Reg* %4205, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %4206 to i64*
  %4207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4208 = getelementptr inbounds %struct.GPR, %struct.GPR* %4207, i32 0, i32 5
  %4209 = getelementptr inbounds %struct.Reg, %struct.Reg* %4208, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %4209 to i64*
  %4210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4211 = getelementptr inbounds %struct.GPR, %struct.GPR* %4210, i32 0, i32 9
  %4212 = getelementptr inbounds %struct.Reg, %struct.Reg* %4211, i32 0, i32 0
  %RSI.i424 = bitcast %union.anon* %4212 to i64*
  %4213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4214 = getelementptr inbounds %struct.GPR, %struct.GPR* %4213, i32 0, i32 15
  %4215 = getelementptr inbounds %struct.Reg, %struct.Reg* %4214, i32 0, i32 0
  %RBP.i425 = bitcast %union.anon* %4215 to i64*
  %4216 = load i64, i64* %RBP.i425
  %4217 = load i64, i64* %RCX.i423
  %4218 = add i64 %4216, -880
  %4219 = add i64 %4218, %4217
  %4220 = load i64, i64* %PC.i422
  %4221 = add i64 %4220, 8
  store i64 %4221, i64* %PC.i422
  %4222 = inttoptr i64 %4219 to i8*
  %4223 = load i8, i8* %4222
  %4224 = sext i8 %4223 to i64
  %4225 = and i64 %4224, 4294967295
  store i64 %4225, i64* %RSI.i424, align 8
  store %struct.Memory* %loadMem_4389c3, %struct.Memory** %MEMORY
  %loadMem_4389cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4227 = getelementptr inbounds %struct.GPR, %struct.GPR* %4226, i32 0, i32 33
  %4228 = getelementptr inbounds %struct.Reg, %struct.Reg* %4227, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %4228 to i64*
  %4229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4230 = getelementptr inbounds %struct.GPR, %struct.GPR* %4229, i32 0, i32 9
  %4231 = getelementptr inbounds %struct.Reg, %struct.Reg* %4230, i32 0, i32 0
  %ESI.i420 = bitcast %union.anon* %4231 to i32*
  %4232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4233 = getelementptr inbounds %struct.GPR, %struct.GPR* %4232, i32 0, i32 7
  %4234 = getelementptr inbounds %struct.Reg, %struct.Reg* %4233, i32 0, i32 0
  %RDX.i421 = bitcast %union.anon* %4234 to i64*
  %4235 = load i64, i64* %RDX.i421
  %4236 = load i32, i32* %ESI.i420
  %4237 = zext i32 %4236 to i64
  %4238 = load i64, i64* %PC.i419
  %4239 = add i64 %4238, 2
  store i64 %4239, i64* %PC.i419
  %4240 = trunc i64 %4235 to i32
  %4241 = sub i32 %4240, %4236
  %4242 = zext i32 %4241 to i64
  store i64 %4242, i64* %RDX.i421, align 8
  %4243 = icmp ult i32 %4240, %4236
  %4244 = zext i1 %4243 to i8
  %4245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4244, i8* %4245, align 1
  %4246 = and i32 %4241, 255
  %4247 = call i32 @llvm.ctpop.i32(i32 %4246)
  %4248 = trunc i32 %4247 to i8
  %4249 = and i8 %4248, 1
  %4250 = xor i8 %4249, 1
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4250, i8* %4251, align 1
  %4252 = xor i64 %4237, %4235
  %4253 = trunc i64 %4252 to i32
  %4254 = xor i32 %4253, %4241
  %4255 = lshr i32 %4254, 4
  %4256 = trunc i32 %4255 to i8
  %4257 = and i8 %4256, 1
  %4258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4257, i8* %4258, align 1
  %4259 = icmp eq i32 %4241, 0
  %4260 = zext i1 %4259 to i8
  %4261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4260, i8* %4261, align 1
  %4262 = lshr i32 %4241, 31
  %4263 = trunc i32 %4262 to i8
  %4264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4263, i8* %4264, align 1
  %4265 = lshr i32 %4240, 31
  %4266 = lshr i32 %4236, 31
  %4267 = xor i32 %4266, %4265
  %4268 = xor i32 %4262, %4265
  %4269 = add i32 %4268, %4267
  %4270 = icmp eq i32 %4269, 2
  %4271 = zext i1 %4270 to i8
  %4272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4271, i8* %4272, align 1
  store %struct.Memory* %loadMem_4389cb, %struct.Memory** %MEMORY
  %loadMem_4389cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4274 = getelementptr inbounds %struct.GPR, %struct.GPR* %4273, i32 0, i32 33
  %4275 = getelementptr inbounds %struct.Reg, %struct.Reg* %4274, i32 0, i32 0
  %PC.i416 = bitcast %union.anon* %4275 to i64*
  %4276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4277 = getelementptr inbounds %struct.GPR, %struct.GPR* %4276, i32 0, i32 1
  %4278 = getelementptr inbounds %struct.Reg, %struct.Reg* %4277, i32 0, i32 0
  %EAX.i417 = bitcast %union.anon* %4278 to i32*
  %4279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4280 = getelementptr inbounds %struct.GPR, %struct.GPR* %4279, i32 0, i32 7
  %4281 = getelementptr inbounds %struct.Reg, %struct.Reg* %4280, i32 0, i32 0
  %EDX.i418 = bitcast %union.anon* %4281 to i32*
  %4282 = load i32, i32* %EAX.i417
  %4283 = zext i32 %4282 to i64
  %4284 = load i32, i32* %EDX.i418
  %4285 = zext i32 %4284 to i64
  %4286 = load i64, i64* %PC.i416
  %4287 = add i64 %4286, 2
  store i64 %4287, i64* %PC.i416
  %4288 = sub i32 %4282, %4284
  %4289 = icmp ult i32 %4282, %4284
  %4290 = zext i1 %4289 to i8
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4290, i8* %4291, align 1
  %4292 = and i32 %4288, 255
  %4293 = call i32 @llvm.ctpop.i32(i32 %4292)
  %4294 = trunc i32 %4293 to i8
  %4295 = and i8 %4294, 1
  %4296 = xor i8 %4295, 1
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4296, i8* %4297, align 1
  %4298 = xor i64 %4285, %4283
  %4299 = trunc i64 %4298 to i32
  %4300 = xor i32 %4299, %4288
  %4301 = lshr i32 %4300, 4
  %4302 = trunc i32 %4301 to i8
  %4303 = and i8 %4302, 1
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4303, i8* %4304, align 1
  %4305 = icmp eq i32 %4288, 0
  %4306 = zext i1 %4305 to i8
  %4307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4306, i8* %4307, align 1
  %4308 = lshr i32 %4288, 31
  %4309 = trunc i32 %4308 to i8
  %4310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4309, i8* %4310, align 1
  %4311 = lshr i32 %4282, 31
  %4312 = lshr i32 %4284, 31
  %4313 = xor i32 %4312, %4311
  %4314 = xor i32 %4308, %4311
  %4315 = add i32 %4314, %4313
  %4316 = icmp eq i32 %4315, 2
  %4317 = zext i1 %4316 to i8
  %4318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4317, i8* %4318, align 1
  store %struct.Memory* %loadMem_4389cd, %struct.Memory** %MEMORY
  %loadMem_4389cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4320 = getelementptr inbounds %struct.GPR, %struct.GPR* %4319, i32 0, i32 33
  %4321 = getelementptr inbounds %struct.Reg, %struct.Reg* %4320, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4321 to i64*
  %4322 = load i64, i64* %PC.i415
  %4323 = add i64 %4322, 534
  %4324 = load i64, i64* %PC.i415
  %4325 = add i64 %4324, 6
  %4326 = load i64, i64* %PC.i415
  %4327 = add i64 %4326, 6
  store i64 %4327, i64* %PC.i415
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4329 = load i8, i8* %4328, align 1
  %4330 = icmp eq i8 %4329, 0
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4332 = load i8, i8* %4331, align 1
  %4333 = icmp ne i8 %4332, 0
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4335 = load i8, i8* %4334, align 1
  %4336 = icmp ne i8 %4335, 0
  %4337 = xor i1 %4333, %4336
  %4338 = xor i1 %4337, true
  %4339 = and i1 %4330, %4338
  %4340 = zext i1 %4339 to i8
  store i8 %4340, i8* %BRANCH_TAKEN, align 1
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4342 = select i1 %4339, i64 %4323, i64 %4325
  store i64 %4342, i64* %4341, align 8
  store %struct.Memory* %loadMem_4389cf, %struct.Memory** %MEMORY
  %loadBr_4389cf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4389cf = icmp eq i8 %loadBr_4389cf, 1
  br i1 %cmpBr_4389cf, label %block_.L_438be5, label %block_.L_4389d5

block_.L_4389d5:                                  ; preds = %block_43899a, %block_.L_43897d
  %loadMem_4389d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4344 = getelementptr inbounds %struct.GPR, %struct.GPR* %4343, i32 0, i32 33
  %4345 = getelementptr inbounds %struct.Reg, %struct.Reg* %4344, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4345 to i64*
  %4346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4347 = getelementptr inbounds %struct.GPR, %struct.GPR* %4346, i32 0, i32 1
  %4348 = getelementptr inbounds %struct.Reg, %struct.Reg* %4347, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %4348 to i64*
  %4349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4350 = getelementptr inbounds %struct.GPR, %struct.GPR* %4349, i32 0, i32 15
  %4351 = getelementptr inbounds %struct.Reg, %struct.Reg* %4350, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %4351 to i64*
  %4352 = load i64, i64* %RBP.i414
  %4353 = sub i64 %4352, 64
  %4354 = load i64, i64* %PC.i412
  %4355 = add i64 %4354, 3
  store i64 %4355, i64* %PC.i412
  %4356 = inttoptr i64 %4353 to i32*
  %4357 = load i32, i32* %4356
  %4358 = zext i32 %4357 to i64
  store i64 %4358, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_4389d5, %struct.Memory** %MEMORY
  %loadMem_4389d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 33
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %PC.i410 = bitcast %union.anon* %4361 to i64*
  %4362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4363 = getelementptr inbounds %struct.GPR, %struct.GPR* %4362, i32 0, i32 1
  %4364 = getelementptr inbounds %struct.Reg, %struct.Reg* %4363, i32 0, i32 0
  %RAX.i411 = bitcast %union.anon* %4364 to i64*
  %4365 = load i64, i64* %RAX.i411
  %4366 = load i64, i64* %PC.i410
  %4367 = add i64 %4366, 3
  store i64 %4367, i64* %PC.i410
  %4368 = trunc i64 %4365 to i32
  %4369 = add i32 20, %4368
  %4370 = zext i32 %4369 to i64
  store i64 %4370, i64* %RAX.i411, align 8
  %4371 = icmp ult i32 %4369, %4368
  %4372 = icmp ult i32 %4369, 20
  %4373 = or i1 %4371, %4372
  %4374 = zext i1 %4373 to i8
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4374, i8* %4375, align 1
  %4376 = and i32 %4369, 255
  %4377 = call i32 @llvm.ctpop.i32(i32 %4376)
  %4378 = trunc i32 %4377 to i8
  %4379 = and i8 %4378, 1
  %4380 = xor i8 %4379, 1
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4380, i8* %4381, align 1
  %4382 = xor i64 20, %4365
  %4383 = trunc i64 %4382 to i32
  %4384 = xor i32 %4383, %4369
  %4385 = lshr i32 %4384, 4
  %4386 = trunc i32 %4385 to i8
  %4387 = and i8 %4386, 1
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4387, i8* %4388, align 1
  %4389 = icmp eq i32 %4369, 0
  %4390 = zext i1 %4389 to i8
  %4391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4390, i8* %4391, align 1
  %4392 = lshr i32 %4369, 31
  %4393 = trunc i32 %4392 to i8
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4393, i8* %4394, align 1
  %4395 = lshr i32 %4368, 31
  %4396 = xor i32 %4392, %4395
  %4397 = add i32 %4396, %4392
  %4398 = icmp eq i32 %4397, 2
  %4399 = zext i1 %4398 to i8
  %4400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4399, i8* %4400, align 1
  store %struct.Memory* %loadMem_4389d8, %struct.Memory** %MEMORY
  %loadMem_4389db = load %struct.Memory*, %struct.Memory** %MEMORY
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4402 = getelementptr inbounds %struct.GPR, %struct.GPR* %4401, i32 0, i32 33
  %4403 = getelementptr inbounds %struct.Reg, %struct.Reg* %4402, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4403 to i64*
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4405 = getelementptr inbounds %struct.GPR, %struct.GPR* %4404, i32 0, i32 1
  %4406 = getelementptr inbounds %struct.Reg, %struct.Reg* %4405, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %4406 to i64*
  %4407 = load i64, i64* %RAX.i409
  %4408 = load i64, i64* %PC.i408
  %4409 = add i64 %4408, 3
  store i64 %4409, i64* %PC.i408
  %4410 = trunc i64 %4407 to i32
  %4411 = add i32 1, %4410
  %4412 = zext i32 %4411 to i64
  store i64 %4412, i64* %RAX.i409, align 8
  %4413 = icmp ult i32 %4411, %4410
  %4414 = icmp ult i32 %4411, 1
  %4415 = or i1 %4413, %4414
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4416, i8* %4417, align 1
  %4418 = and i32 %4411, 255
  %4419 = call i32 @llvm.ctpop.i32(i32 %4418)
  %4420 = trunc i32 %4419 to i8
  %4421 = and i8 %4420, 1
  %4422 = xor i8 %4421, 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4422, i8* %4423, align 1
  %4424 = xor i64 1, %4407
  %4425 = trunc i64 %4424 to i32
  %4426 = xor i32 %4425, %4411
  %4427 = lshr i32 %4426, 4
  %4428 = trunc i32 %4427 to i8
  %4429 = and i8 %4428, 1
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4429, i8* %4430, align 1
  %4431 = icmp eq i32 %4411, 0
  %4432 = zext i1 %4431 to i8
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4432, i8* %4433, align 1
  %4434 = lshr i32 %4411, 31
  %4435 = trunc i32 %4434 to i8
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4435, i8* %4436, align 1
  %4437 = lshr i32 %4410, 31
  %4438 = xor i32 %4434, %4437
  %4439 = add i32 %4438, %4434
  %4440 = icmp eq i32 %4439, 2
  %4441 = zext i1 %4440 to i8
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4441, i8* %4442, align 1
  store %struct.Memory* %loadMem_4389db, %struct.Memory** %MEMORY
  %loadMem_4389de = load %struct.Memory*, %struct.Memory** %MEMORY
  %4443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4444 = getelementptr inbounds %struct.GPR, %struct.GPR* %4443, i32 0, i32 33
  %4445 = getelementptr inbounds %struct.Reg, %struct.Reg* %4444, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %4445 to i64*
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4447 = getelementptr inbounds %struct.GPR, %struct.GPR* %4446, i32 0, i32 1
  %4448 = getelementptr inbounds %struct.Reg, %struct.Reg* %4447, i32 0, i32 0
  %EAX.i406 = bitcast %union.anon* %4448 to i32*
  %4449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4450 = getelementptr inbounds %struct.GPR, %struct.GPR* %4449, i32 0, i32 5
  %4451 = getelementptr inbounds %struct.Reg, %struct.Reg* %4450, i32 0, i32 0
  %RCX.i407 = bitcast %union.anon* %4451 to i64*
  %4452 = load i32, i32* %EAX.i406
  %4453 = zext i32 %4452 to i64
  %4454 = load i64, i64* %PC.i405
  %4455 = add i64 %4454, 3
  store i64 %4455, i64* %PC.i405
  %4456 = shl i64 %4453, 32
  %4457 = ashr exact i64 %4456, 32
  store i64 %4457, i64* %RCX.i407, align 8
  store %struct.Memory* %loadMem_4389de, %struct.Memory** %MEMORY
  %loadMem_4389e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4459 = getelementptr inbounds %struct.GPR, %struct.GPR* %4458, i32 0, i32 33
  %4460 = getelementptr inbounds %struct.Reg, %struct.Reg* %4459, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %4460 to i64*
  %4461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4462 = getelementptr inbounds %struct.GPR, %struct.GPR* %4461, i32 0, i32 1
  %4463 = getelementptr inbounds %struct.Reg, %struct.Reg* %4462, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %4463 to i64*
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4465 = getelementptr inbounds %struct.GPR, %struct.GPR* %4464, i32 0, i32 5
  %4466 = getelementptr inbounds %struct.Reg, %struct.Reg* %4465, i32 0, i32 0
  %RCX.i404 = bitcast %union.anon* %4466 to i64*
  %4467 = load i64, i64* %RCX.i404
  %4468 = add i64 %4467, 12099168
  %4469 = load i64, i64* %PC.i402
  %4470 = add i64 %4469, 8
  store i64 %4470, i64* %PC.i402
  %4471 = inttoptr i64 %4468 to i8*
  %4472 = load i8, i8* %4471
  %4473 = zext i8 %4472 to i64
  store i64 %4473, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_4389e1, %struct.Memory** %MEMORY
  %loadMem_4389e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 33
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %4476 to i64*
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4478 = getelementptr inbounds %struct.GPR, %struct.GPR* %4477, i32 0, i32 1
  %4479 = getelementptr inbounds %struct.Reg, %struct.Reg* %4478, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %4479 to i32*
  %4480 = load i32, i32* %EAX.i401
  %4481 = zext i32 %4480 to i64
  %4482 = load i64, i64* %PC.i400
  %4483 = add i64 %4482, 3
  store i64 %4483, i64* %PC.i400
  %4484 = sub i32 %4480, 3
  %4485 = icmp ult i32 %4480, 3
  %4486 = zext i1 %4485 to i8
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4486, i8* %4487, align 1
  %4488 = and i32 %4484, 255
  %4489 = call i32 @llvm.ctpop.i32(i32 %4488)
  %4490 = trunc i32 %4489 to i8
  %4491 = and i8 %4490, 1
  %4492 = xor i8 %4491, 1
  %4493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4492, i8* %4493, align 1
  %4494 = xor i64 3, %4481
  %4495 = trunc i64 %4494 to i32
  %4496 = xor i32 %4495, %4484
  %4497 = lshr i32 %4496, 4
  %4498 = trunc i32 %4497 to i8
  %4499 = and i8 %4498, 1
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4499, i8* %4500, align 1
  %4501 = icmp eq i32 %4484, 0
  %4502 = zext i1 %4501 to i8
  %4503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4502, i8* %4503, align 1
  %4504 = lshr i32 %4484, 31
  %4505 = trunc i32 %4504 to i8
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4505, i8* %4506, align 1
  %4507 = lshr i32 %4480, 31
  %4508 = xor i32 %4504, %4507
  %4509 = add i32 %4508, %4507
  %4510 = icmp eq i32 %4509, 2
  %4511 = zext i1 %4510 to i8
  %4512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4511, i8* %4512, align 1
  store %struct.Memory* %loadMem_4389e9, %struct.Memory** %MEMORY
  %loadMem_4389ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4514 = getelementptr inbounds %struct.GPR, %struct.GPR* %4513, i32 0, i32 33
  %4515 = getelementptr inbounds %struct.Reg, %struct.Reg* %4514, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %4515 to i64*
  %4516 = load i64, i64* %PC.i399
  %4517 = add i64 %4516, 65
  %4518 = load i64, i64* %PC.i399
  %4519 = add i64 %4518, 6
  %4520 = load i64, i64* %PC.i399
  %4521 = add i64 %4520, 6
  store i64 %4521, i64* %PC.i399
  %4522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4523 = load i8, i8* %4522, align 1
  store i8 %4523, i8* %BRANCH_TAKEN, align 1
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4525 = icmp ne i8 %4523, 0
  %4526 = select i1 %4525, i64 %4517, i64 %4519
  store i64 %4526, i64* %4524, align 8
  store %struct.Memory* %loadMem_4389ec, %struct.Memory** %MEMORY
  %loadBr_4389ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4389ec = icmp eq i8 %loadBr_4389ec, 1
  br i1 %cmpBr_4389ec, label %block_.L_438a2d, label %block_4389f2

block_4389f2:                                     ; preds = %block_.L_4389d5
  %loadMem_4389f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4528 = getelementptr inbounds %struct.GPR, %struct.GPR* %4527, i32 0, i32 33
  %4529 = getelementptr inbounds %struct.Reg, %struct.Reg* %4528, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %4529 to i64*
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4531 = getelementptr inbounds %struct.GPR, %struct.GPR* %4530, i32 0, i32 1
  %4532 = getelementptr inbounds %struct.Reg, %struct.Reg* %4531, i32 0, i32 0
  %RAX.i397 = bitcast %union.anon* %4532 to i64*
  %4533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4534 = getelementptr inbounds %struct.GPR, %struct.GPR* %4533, i32 0, i32 15
  %4535 = getelementptr inbounds %struct.Reg, %struct.Reg* %4534, i32 0, i32 0
  %RBP.i398 = bitcast %union.anon* %4535 to i64*
  %4536 = load i64, i64* %RBP.i398
  %4537 = sub i64 %4536, 64
  %4538 = load i64, i64* %PC.i396
  %4539 = add i64 %4538, 3
  store i64 %4539, i64* %PC.i396
  %4540 = inttoptr i64 %4537 to i32*
  %4541 = load i32, i32* %4540
  %4542 = zext i32 %4541 to i64
  store i64 %4542, i64* %RAX.i397, align 8
  store %struct.Memory* %loadMem_4389f2, %struct.Memory** %MEMORY
  %loadMem_4389f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4544 = getelementptr inbounds %struct.GPR, %struct.GPR* %4543, i32 0, i32 33
  %4545 = getelementptr inbounds %struct.Reg, %struct.Reg* %4544, i32 0, i32 0
  %PC.i394 = bitcast %union.anon* %4545 to i64*
  %4546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4547 = getelementptr inbounds %struct.GPR, %struct.GPR* %4546, i32 0, i32 1
  %4548 = getelementptr inbounds %struct.Reg, %struct.Reg* %4547, i32 0, i32 0
  %RAX.i395 = bitcast %union.anon* %4548 to i64*
  %4549 = load i64, i64* %RAX.i395
  %4550 = load i64, i64* %PC.i394
  %4551 = add i64 %4550, 3
  store i64 %4551, i64* %PC.i394
  %4552 = trunc i64 %4549 to i32
  %4553 = add i32 20, %4552
  %4554 = zext i32 %4553 to i64
  store i64 %4554, i64* %RAX.i395, align 8
  %4555 = icmp ult i32 %4553, %4552
  %4556 = icmp ult i32 %4553, 20
  %4557 = or i1 %4555, %4556
  %4558 = zext i1 %4557 to i8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4558, i8* %4559, align 1
  %4560 = and i32 %4553, 255
  %4561 = call i32 @llvm.ctpop.i32(i32 %4560)
  %4562 = trunc i32 %4561 to i8
  %4563 = and i8 %4562, 1
  %4564 = xor i8 %4563, 1
  %4565 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4564, i8* %4565, align 1
  %4566 = xor i64 20, %4549
  %4567 = trunc i64 %4566 to i32
  %4568 = xor i32 %4567, %4553
  %4569 = lshr i32 %4568, 4
  %4570 = trunc i32 %4569 to i8
  %4571 = and i8 %4570, 1
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4571, i8* %4572, align 1
  %4573 = icmp eq i32 %4553, 0
  %4574 = zext i1 %4573 to i8
  %4575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4574, i8* %4575, align 1
  %4576 = lshr i32 %4553, 31
  %4577 = trunc i32 %4576 to i8
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4577, i8* %4578, align 1
  %4579 = lshr i32 %4552, 31
  %4580 = xor i32 %4576, %4579
  %4581 = add i32 %4580, %4576
  %4582 = icmp eq i32 %4581, 2
  %4583 = zext i1 %4582 to i8
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4583, i8* %4584, align 1
  store %struct.Memory* %loadMem_4389f5, %struct.Memory** %MEMORY
  %loadMem_4389f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4586 = getelementptr inbounds %struct.GPR, %struct.GPR* %4585, i32 0, i32 33
  %4587 = getelementptr inbounds %struct.Reg, %struct.Reg* %4586, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4587 to i64*
  %4588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4589 = getelementptr inbounds %struct.GPR, %struct.GPR* %4588, i32 0, i32 1
  %4590 = getelementptr inbounds %struct.Reg, %struct.Reg* %4589, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %4590 to i64*
  %4591 = load i64, i64* %RAX.i393
  %4592 = load i64, i64* %PC.i392
  %4593 = add i64 %4592, 3
  store i64 %4593, i64* %PC.i392
  %4594 = trunc i64 %4591 to i32
  %4595 = add i32 1, %4594
  %4596 = zext i32 %4595 to i64
  store i64 %4596, i64* %RAX.i393, align 8
  %4597 = icmp ult i32 %4595, %4594
  %4598 = icmp ult i32 %4595, 1
  %4599 = or i1 %4597, %4598
  %4600 = zext i1 %4599 to i8
  %4601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4600, i8* %4601, align 1
  %4602 = and i32 %4595, 255
  %4603 = call i32 @llvm.ctpop.i32(i32 %4602)
  %4604 = trunc i32 %4603 to i8
  %4605 = and i8 %4604, 1
  %4606 = xor i8 %4605, 1
  %4607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4606, i8* %4607, align 1
  %4608 = xor i64 1, %4591
  %4609 = trunc i64 %4608 to i32
  %4610 = xor i32 %4609, %4595
  %4611 = lshr i32 %4610, 4
  %4612 = trunc i32 %4611 to i8
  %4613 = and i8 %4612, 1
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4613, i8* %4614, align 1
  %4615 = icmp eq i32 %4595, 0
  %4616 = zext i1 %4615 to i8
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4616, i8* %4617, align 1
  %4618 = lshr i32 %4595, 31
  %4619 = trunc i32 %4618 to i8
  %4620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4619, i8* %4620, align 1
  %4621 = lshr i32 %4594, 31
  %4622 = xor i32 %4618, %4621
  %4623 = add i32 %4622, %4618
  %4624 = icmp eq i32 %4623, 2
  %4625 = zext i1 %4624 to i8
  %4626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4625, i8* %4626, align 1
  store %struct.Memory* %loadMem_4389f8, %struct.Memory** %MEMORY
  %loadMem_4389fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4628 = getelementptr inbounds %struct.GPR, %struct.GPR* %4627, i32 0, i32 33
  %4629 = getelementptr inbounds %struct.Reg, %struct.Reg* %4628, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4629 to i64*
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 1
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %EAX.i390 = bitcast %union.anon* %4632 to i32*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 5
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RCX.i391 = bitcast %union.anon* %4635 to i64*
  %4636 = load i32, i32* %EAX.i390
  %4637 = zext i32 %4636 to i64
  %4638 = load i64, i64* %PC.i389
  %4639 = add i64 %4638, 3
  store i64 %4639, i64* %PC.i389
  %4640 = shl i64 %4637, 32
  %4641 = ashr exact i64 %4640, 32
  store i64 %4641, i64* %RCX.i391, align 8
  store %struct.Memory* %loadMem_4389fb, %struct.Memory** %MEMORY
  %loadMem_4389fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %4642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4643 = getelementptr inbounds %struct.GPR, %struct.GPR* %4642, i32 0, i32 33
  %4644 = getelementptr inbounds %struct.Reg, %struct.Reg* %4643, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4644 to i64*
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 1
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %RAX.i386 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 5
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RCX.i387 = bitcast %union.anon* %4650 to i64*
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 15
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %4653 to i64*
  %4654 = load i64, i64* %RBP.i388
  %4655 = load i64, i64* %RCX.i387
  %4656 = add i64 %4654, -880
  %4657 = add i64 %4656, %4655
  %4658 = load i64, i64* %PC.i385
  %4659 = add i64 %4658, 8
  store i64 %4659, i64* %PC.i385
  %4660 = inttoptr i64 %4657 to i8*
  %4661 = load i8, i8* %4660
  %4662 = sext i8 %4661 to i64
  %4663 = and i64 %4662, 4294967295
  store i64 %4663, i64* %RAX.i386, align 8
  store %struct.Memory* %loadMem_4389fe, %struct.Memory** %MEMORY
  %loadMem_438a06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 33
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4666 to i64*
  %4667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4668 = getelementptr inbounds %struct.GPR, %struct.GPR* %4667, i32 0, i32 5
  %4669 = getelementptr inbounds %struct.Reg, %struct.Reg* %4668, i32 0, i32 0
  %RCX.i383 = bitcast %union.anon* %4669 to i64*
  %4670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4671 = getelementptr inbounds %struct.GPR, %struct.GPR* %4670, i32 0, i32 15
  %4672 = getelementptr inbounds %struct.Reg, %struct.Reg* %4671, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4672 to i64*
  %4673 = load i64, i64* %RBP.i384
  %4674 = sub i64 %4673, 64
  %4675 = load i64, i64* %PC.i382
  %4676 = add i64 %4675, 4
  store i64 %4676, i64* %PC.i382
  %4677 = inttoptr i64 %4674 to i32*
  %4678 = load i32, i32* %4677
  %4679 = sext i32 %4678 to i64
  store i64 %4679, i64* %RCX.i383, align 8
  store %struct.Memory* %loadMem_438a06, %struct.Memory** %MEMORY
  %loadMem_438a0a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4681 = getelementptr inbounds %struct.GPR, %struct.GPR* %4680, i32 0, i32 33
  %4682 = getelementptr inbounds %struct.Reg, %struct.Reg* %4681, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %4682 to i64*
  %4683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4684 = getelementptr inbounds %struct.GPR, %struct.GPR* %4683, i32 0, i32 5
  %4685 = getelementptr inbounds %struct.Reg, %struct.Reg* %4684, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %4685 to i64*
  %4686 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4687 = getelementptr inbounds %struct.GPR, %struct.GPR* %4686, i32 0, i32 7
  %4688 = getelementptr inbounds %struct.Reg, %struct.Reg* %4687, i32 0, i32 0
  %RDX.i380 = bitcast %union.anon* %4688 to i64*
  %4689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4690 = getelementptr inbounds %struct.GPR, %struct.GPR* %4689, i32 0, i32 15
  %4691 = getelementptr inbounds %struct.Reg, %struct.Reg* %4690, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4691 to i64*
  %4692 = load i64, i64* %RBP.i381
  %4693 = load i64, i64* %RCX.i379
  %4694 = add i64 %4692, -480
  %4695 = add i64 %4694, %4693
  %4696 = load i64, i64* %PC.i378
  %4697 = add i64 %4696, 8
  store i64 %4697, i64* %PC.i378
  %4698 = inttoptr i64 %4695 to i8*
  %4699 = load i8, i8* %4698
  %4700 = sext i8 %4699 to i64
  %4701 = and i64 %4700, 4294967295
  store i64 %4701, i64* %RDX.i380, align 8
  store %struct.Memory* %loadMem_438a0a, %struct.Memory** %MEMORY
  %loadMem_438a12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4703 = getelementptr inbounds %struct.GPR, %struct.GPR* %4702, i32 0, i32 33
  %4704 = getelementptr inbounds %struct.Reg, %struct.Reg* %4703, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4704 to i64*
  %4705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4706 = getelementptr inbounds %struct.GPR, %struct.GPR* %4705, i32 0, i32 9
  %4707 = getelementptr inbounds %struct.Reg, %struct.Reg* %4706, i32 0, i32 0
  %RSI.i376 = bitcast %union.anon* %4707 to i64*
  %4708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4709 = getelementptr inbounds %struct.GPR, %struct.GPR* %4708, i32 0, i32 15
  %4710 = getelementptr inbounds %struct.Reg, %struct.Reg* %4709, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %4710 to i64*
  %4711 = load i64, i64* %RBP.i377
  %4712 = sub i64 %4711, 64
  %4713 = load i64, i64* %PC.i375
  %4714 = add i64 %4713, 3
  store i64 %4714, i64* %PC.i375
  %4715 = inttoptr i64 %4712 to i32*
  %4716 = load i32, i32* %4715
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RSI.i376, align 8
  store %struct.Memory* %loadMem_438a12, %struct.Memory** %MEMORY
  %loadMem_438a15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4719 = getelementptr inbounds %struct.GPR, %struct.GPR* %4718, i32 0, i32 33
  %4720 = getelementptr inbounds %struct.Reg, %struct.Reg* %4719, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4720 to i64*
  %4721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4722 = getelementptr inbounds %struct.GPR, %struct.GPR* %4721, i32 0, i32 9
  %4723 = getelementptr inbounds %struct.Reg, %struct.Reg* %4722, i32 0, i32 0
  %RSI.i374 = bitcast %union.anon* %4723 to i64*
  %4724 = load i64, i64* %RSI.i374
  %4725 = load i64, i64* %PC.i373
  %4726 = add i64 %4725, 3
  store i64 %4726, i64* %PC.i373
  %4727 = trunc i64 %4724 to i32
  %4728 = add i32 1, %4727
  %4729 = zext i32 %4728 to i64
  store i64 %4729, i64* %RSI.i374, align 8
  %4730 = icmp ult i32 %4728, %4727
  %4731 = icmp ult i32 %4728, 1
  %4732 = or i1 %4730, %4731
  %4733 = zext i1 %4732 to i8
  %4734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4733, i8* %4734, align 1
  %4735 = and i32 %4728, 255
  %4736 = call i32 @llvm.ctpop.i32(i32 %4735)
  %4737 = trunc i32 %4736 to i8
  %4738 = and i8 %4737, 1
  %4739 = xor i8 %4738, 1
  %4740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4739, i8* %4740, align 1
  %4741 = xor i64 1, %4724
  %4742 = trunc i64 %4741 to i32
  %4743 = xor i32 %4742, %4728
  %4744 = lshr i32 %4743, 4
  %4745 = trunc i32 %4744 to i8
  %4746 = and i8 %4745, 1
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4746, i8* %4747, align 1
  %4748 = icmp eq i32 %4728, 0
  %4749 = zext i1 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4749, i8* %4750, align 1
  %4751 = lshr i32 %4728, 31
  %4752 = trunc i32 %4751 to i8
  %4753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4752, i8* %4753, align 1
  %4754 = lshr i32 %4727, 31
  %4755 = xor i32 %4751, %4754
  %4756 = add i32 %4755, %4751
  %4757 = icmp eq i32 %4756, 2
  %4758 = zext i1 %4757 to i8
  %4759 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4758, i8* %4759, align 1
  store %struct.Memory* %loadMem_438a15, %struct.Memory** %MEMORY
  %loadMem_438a18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4761 = getelementptr inbounds %struct.GPR, %struct.GPR* %4760, i32 0, i32 33
  %4762 = getelementptr inbounds %struct.Reg, %struct.Reg* %4761, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4762 to i64*
  %4763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4764 = getelementptr inbounds %struct.GPR, %struct.GPR* %4763, i32 0, i32 9
  %4765 = getelementptr inbounds %struct.Reg, %struct.Reg* %4764, i32 0, i32 0
  %ESI.i371 = bitcast %union.anon* %4765 to i32*
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 5
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %4768 to i64*
  %4769 = load i32, i32* %ESI.i371
  %4770 = zext i32 %4769 to i64
  %4771 = load i64, i64* %PC.i370
  %4772 = add i64 %4771, 3
  store i64 %4772, i64* %PC.i370
  %4773 = shl i64 %4770, 32
  %4774 = ashr exact i64 %4773, 32
  store i64 %4774, i64* %RCX.i372, align 8
  store %struct.Memory* %loadMem_438a18, %struct.Memory** %MEMORY
  %loadMem_438a1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4776 = getelementptr inbounds %struct.GPR, %struct.GPR* %4775, i32 0, i32 33
  %4777 = getelementptr inbounds %struct.Reg, %struct.Reg* %4776, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4777 to i64*
  %4778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4779 = getelementptr inbounds %struct.GPR, %struct.GPR* %4778, i32 0, i32 5
  %4780 = getelementptr inbounds %struct.Reg, %struct.Reg* %4779, i32 0, i32 0
  %RCX.i367 = bitcast %union.anon* %4780 to i64*
  %4781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4782 = getelementptr inbounds %struct.GPR, %struct.GPR* %4781, i32 0, i32 9
  %4783 = getelementptr inbounds %struct.Reg, %struct.Reg* %4782, i32 0, i32 0
  %RSI.i368 = bitcast %union.anon* %4783 to i64*
  %4784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4785 = getelementptr inbounds %struct.GPR, %struct.GPR* %4784, i32 0, i32 15
  %4786 = getelementptr inbounds %struct.Reg, %struct.Reg* %4785, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %4786 to i64*
  %4787 = load i64, i64* %RBP.i369
  %4788 = load i64, i64* %RCX.i367
  %4789 = add i64 %4787, -880
  %4790 = add i64 %4789, %4788
  %4791 = load i64, i64* %PC.i366
  %4792 = add i64 %4791, 8
  store i64 %4792, i64* %PC.i366
  %4793 = inttoptr i64 %4790 to i8*
  %4794 = load i8, i8* %4793
  %4795 = sext i8 %4794 to i64
  %4796 = and i64 %4795, 4294967295
  store i64 %4796, i64* %RSI.i368, align 8
  store %struct.Memory* %loadMem_438a1b, %struct.Memory** %MEMORY
  %loadMem_438a23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4798 = getelementptr inbounds %struct.GPR, %struct.GPR* %4797, i32 0, i32 33
  %4799 = getelementptr inbounds %struct.Reg, %struct.Reg* %4798, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %4799 to i64*
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4801 = getelementptr inbounds %struct.GPR, %struct.GPR* %4800, i32 0, i32 9
  %4802 = getelementptr inbounds %struct.Reg, %struct.Reg* %4801, i32 0, i32 0
  %ESI.i364 = bitcast %union.anon* %4802 to i32*
  %4803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4804 = getelementptr inbounds %struct.GPR, %struct.GPR* %4803, i32 0, i32 7
  %4805 = getelementptr inbounds %struct.Reg, %struct.Reg* %4804, i32 0, i32 0
  %RDX.i365 = bitcast %union.anon* %4805 to i64*
  %4806 = load i64, i64* %RDX.i365
  %4807 = load i32, i32* %ESI.i364
  %4808 = zext i32 %4807 to i64
  %4809 = load i64, i64* %PC.i363
  %4810 = add i64 %4809, 2
  store i64 %4810, i64* %PC.i363
  %4811 = trunc i64 %4806 to i32
  %4812 = sub i32 %4811, %4807
  %4813 = zext i32 %4812 to i64
  store i64 %4813, i64* %RDX.i365, align 8
  %4814 = icmp ult i32 %4811, %4807
  %4815 = zext i1 %4814 to i8
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4815, i8* %4816, align 1
  %4817 = and i32 %4812, 255
  %4818 = call i32 @llvm.ctpop.i32(i32 %4817)
  %4819 = trunc i32 %4818 to i8
  %4820 = and i8 %4819, 1
  %4821 = xor i8 %4820, 1
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4821, i8* %4822, align 1
  %4823 = xor i64 %4808, %4806
  %4824 = trunc i64 %4823 to i32
  %4825 = xor i32 %4824, %4812
  %4826 = lshr i32 %4825, 4
  %4827 = trunc i32 %4826 to i8
  %4828 = and i8 %4827, 1
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4828, i8* %4829, align 1
  %4830 = icmp eq i32 %4812, 0
  %4831 = zext i1 %4830 to i8
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4831, i8* %4832, align 1
  %4833 = lshr i32 %4812, 31
  %4834 = trunc i32 %4833 to i8
  %4835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4834, i8* %4835, align 1
  %4836 = lshr i32 %4811, 31
  %4837 = lshr i32 %4807, 31
  %4838 = xor i32 %4837, %4836
  %4839 = xor i32 %4833, %4836
  %4840 = add i32 %4839, %4838
  %4841 = icmp eq i32 %4840, 2
  %4842 = zext i1 %4841 to i8
  %4843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4842, i8* %4843, align 1
  store %struct.Memory* %loadMem_438a23, %struct.Memory** %MEMORY
  %loadMem_438a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4845 = getelementptr inbounds %struct.GPR, %struct.GPR* %4844, i32 0, i32 33
  %4846 = getelementptr inbounds %struct.Reg, %struct.Reg* %4845, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4846 to i64*
  %4847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4848 = getelementptr inbounds %struct.GPR, %struct.GPR* %4847, i32 0, i32 1
  %4849 = getelementptr inbounds %struct.Reg, %struct.Reg* %4848, i32 0, i32 0
  %EAX.i361 = bitcast %union.anon* %4849 to i32*
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4851 = getelementptr inbounds %struct.GPR, %struct.GPR* %4850, i32 0, i32 7
  %4852 = getelementptr inbounds %struct.Reg, %struct.Reg* %4851, i32 0, i32 0
  %EDX.i362 = bitcast %union.anon* %4852 to i32*
  %4853 = load i32, i32* %EAX.i361
  %4854 = zext i32 %4853 to i64
  %4855 = load i32, i32* %EDX.i362
  %4856 = zext i32 %4855 to i64
  %4857 = load i64, i64* %PC.i360
  %4858 = add i64 %4857, 2
  store i64 %4858, i64* %PC.i360
  %4859 = sub i32 %4853, %4855
  %4860 = icmp ult i32 %4853, %4855
  %4861 = zext i1 %4860 to i8
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4861, i8* %4862, align 1
  %4863 = and i32 %4859, 255
  %4864 = call i32 @llvm.ctpop.i32(i32 %4863)
  %4865 = trunc i32 %4864 to i8
  %4866 = and i8 %4865, 1
  %4867 = xor i8 %4866, 1
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4867, i8* %4868, align 1
  %4869 = xor i64 %4856, %4854
  %4870 = trunc i64 %4869 to i32
  %4871 = xor i32 %4870, %4859
  %4872 = lshr i32 %4871, 4
  %4873 = trunc i32 %4872 to i8
  %4874 = and i8 %4873, 1
  %4875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4874, i8* %4875, align 1
  %4876 = icmp eq i32 %4859, 0
  %4877 = zext i1 %4876 to i8
  %4878 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4877, i8* %4878, align 1
  %4879 = lshr i32 %4859, 31
  %4880 = trunc i32 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4880, i8* %4881, align 1
  %4882 = lshr i32 %4853, 31
  %4883 = lshr i32 %4855, 31
  %4884 = xor i32 %4883, %4882
  %4885 = xor i32 %4879, %4882
  %4886 = add i32 %4885, %4884
  %4887 = icmp eq i32 %4886, 2
  %4888 = zext i1 %4887 to i8
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4888, i8* %4889, align 1
  store %struct.Memory* %loadMem_438a25, %struct.Memory** %MEMORY
  %loadMem_438a27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4891 = getelementptr inbounds %struct.GPR, %struct.GPR* %4890, i32 0, i32 33
  %4892 = getelementptr inbounds %struct.Reg, %struct.Reg* %4891, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4892 to i64*
  %4893 = load i64, i64* %PC.i359
  %4894 = add i64 %4893, 446
  %4895 = load i64, i64* %PC.i359
  %4896 = add i64 %4895, 6
  %4897 = load i64, i64* %PC.i359
  %4898 = add i64 %4897, 6
  store i64 %4898, i64* %PC.i359
  %4899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4900 = load i8, i8* %4899, align 1
  %4901 = icmp eq i8 %4900, 0
  %4902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4903 = load i8, i8* %4902, align 1
  %4904 = icmp ne i8 %4903, 0
  %4905 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4906 = load i8, i8* %4905, align 1
  %4907 = icmp ne i8 %4906, 0
  %4908 = xor i1 %4904, %4907
  %4909 = xor i1 %4908, true
  %4910 = and i1 %4901, %4909
  %4911 = zext i1 %4910 to i8
  store i8 %4911, i8* %BRANCH_TAKEN, align 1
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4913 = select i1 %4910, i64 %4894, i64 %4896
  store i64 %4913, i64* %4912, align 8
  store %struct.Memory* %loadMem_438a27, %struct.Memory** %MEMORY
  %loadBr_438a27 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438a27 = icmp eq i8 %loadBr_438a27, 1
  br i1 %cmpBr_438a27, label %block_.L_438be5, label %block_.L_438a2d

block_.L_438a2d:                                  ; preds = %block_4389f2, %block_.L_4389d5
  %loadMem_438a2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 33
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 1
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %4919 to i64*
  %4920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4921 = getelementptr inbounds %struct.GPR, %struct.GPR* %4920, i32 0, i32 15
  %4922 = getelementptr inbounds %struct.Reg, %struct.Reg* %4921, i32 0, i32 0
  %RBP.i358 = bitcast %union.anon* %4922 to i64*
  %4923 = load i64, i64* %RBP.i358
  %4924 = sub i64 %4923, 64
  %4925 = load i64, i64* %PC.i356
  %4926 = add i64 %4925, 3
  store i64 %4926, i64* %PC.i356
  %4927 = inttoptr i64 %4924 to i32*
  %4928 = load i32, i32* %4927
  %4929 = zext i32 %4928 to i64
  store i64 %4929, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_438a2d, %struct.Memory** %MEMORY
  %loadMem_438a30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 33
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4932 to i64*
  %4933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4934 = getelementptr inbounds %struct.GPR, %struct.GPR* %4933, i32 0, i32 1
  %4935 = getelementptr inbounds %struct.Reg, %struct.Reg* %4934, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %4935 to i64*
  %4936 = load i64, i64* %RAX.i355
  %4937 = load i64, i64* %PC.i354
  %4938 = add i64 %4937, 3
  store i64 %4938, i64* %PC.i354
  %4939 = trunc i64 %4936 to i32
  %4940 = sub i32 %4939, 20
  %4941 = zext i32 %4940 to i64
  store i64 %4941, i64* %RAX.i355, align 8
  %4942 = icmp ult i32 %4939, 20
  %4943 = zext i1 %4942 to i8
  %4944 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4943, i8* %4944, align 1
  %4945 = and i32 %4940, 255
  %4946 = call i32 @llvm.ctpop.i32(i32 %4945)
  %4947 = trunc i32 %4946 to i8
  %4948 = and i8 %4947, 1
  %4949 = xor i8 %4948, 1
  %4950 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4949, i8* %4950, align 1
  %4951 = xor i64 20, %4936
  %4952 = trunc i64 %4951 to i32
  %4953 = xor i32 %4952, %4940
  %4954 = lshr i32 %4953, 4
  %4955 = trunc i32 %4954 to i8
  %4956 = and i8 %4955, 1
  %4957 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4956, i8* %4957, align 1
  %4958 = icmp eq i32 %4940, 0
  %4959 = zext i1 %4958 to i8
  %4960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4959, i8* %4960, align 1
  %4961 = lshr i32 %4940, 31
  %4962 = trunc i32 %4961 to i8
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4962, i8* %4963, align 1
  %4964 = lshr i32 %4939, 31
  %4965 = xor i32 %4961, %4964
  %4966 = add i32 %4965, %4964
  %4967 = icmp eq i32 %4966, 2
  %4968 = zext i1 %4967 to i8
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4968, i8* %4969, align 1
  store %struct.Memory* %loadMem_438a30, %struct.Memory** %MEMORY
  %loadMem_438a33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4971 = getelementptr inbounds %struct.GPR, %struct.GPR* %4970, i32 0, i32 33
  %4972 = getelementptr inbounds %struct.Reg, %struct.Reg* %4971, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4972 to i64*
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4974 = getelementptr inbounds %struct.GPR, %struct.GPR* %4973, i32 0, i32 1
  %4975 = getelementptr inbounds %struct.Reg, %struct.Reg* %4974, i32 0, i32 0
  %RAX.i353 = bitcast %union.anon* %4975 to i64*
  %4976 = load i64, i64* %RAX.i353
  %4977 = load i64, i64* %PC.i352
  %4978 = add i64 %4977, 3
  store i64 %4978, i64* %PC.i352
  %4979 = trunc i64 %4976 to i32
  %4980 = add i32 1, %4979
  %4981 = zext i32 %4980 to i64
  store i64 %4981, i64* %RAX.i353, align 8
  %4982 = icmp ult i32 %4980, %4979
  %4983 = icmp ult i32 %4980, 1
  %4984 = or i1 %4982, %4983
  %4985 = zext i1 %4984 to i8
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4985, i8* %4986, align 1
  %4987 = and i32 %4980, 255
  %4988 = call i32 @llvm.ctpop.i32(i32 %4987)
  %4989 = trunc i32 %4988 to i8
  %4990 = and i8 %4989, 1
  %4991 = xor i8 %4990, 1
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4991, i8* %4992, align 1
  %4993 = xor i64 1, %4976
  %4994 = trunc i64 %4993 to i32
  %4995 = xor i32 %4994, %4980
  %4996 = lshr i32 %4995, 4
  %4997 = trunc i32 %4996 to i8
  %4998 = and i8 %4997, 1
  %4999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4998, i8* %4999, align 1
  %5000 = icmp eq i32 %4980, 0
  %5001 = zext i1 %5000 to i8
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5001, i8* %5002, align 1
  %5003 = lshr i32 %4980, 31
  %5004 = trunc i32 %5003 to i8
  %5005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5004, i8* %5005, align 1
  %5006 = lshr i32 %4979, 31
  %5007 = xor i32 %5003, %5006
  %5008 = add i32 %5007, %5003
  %5009 = icmp eq i32 %5008, 2
  %5010 = zext i1 %5009 to i8
  %5011 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5010, i8* %5011, align 1
  store %struct.Memory* %loadMem_438a33, %struct.Memory** %MEMORY
  %loadMem_438a36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5013 = getelementptr inbounds %struct.GPR, %struct.GPR* %5012, i32 0, i32 33
  %5014 = getelementptr inbounds %struct.Reg, %struct.Reg* %5013, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %5014 to i64*
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 1
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %EAX.i350 = bitcast %union.anon* %5017 to i32*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 5
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %5020 to i64*
  %5021 = load i32, i32* %EAX.i350
  %5022 = zext i32 %5021 to i64
  %5023 = load i64, i64* %PC.i349
  %5024 = add i64 %5023, 3
  store i64 %5024, i64* %PC.i349
  %5025 = shl i64 %5022, 32
  %5026 = ashr exact i64 %5025, 32
  store i64 %5026, i64* %RCX.i351, align 8
  store %struct.Memory* %loadMem_438a36, %struct.Memory** %MEMORY
  %loadMem_438a39 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5028 = getelementptr inbounds %struct.GPR, %struct.GPR* %5027, i32 0, i32 33
  %5029 = getelementptr inbounds %struct.Reg, %struct.Reg* %5028, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %5029 to i64*
  %5030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5031 = getelementptr inbounds %struct.GPR, %struct.GPR* %5030, i32 0, i32 1
  %5032 = getelementptr inbounds %struct.Reg, %struct.Reg* %5031, i32 0, i32 0
  %RAX.i347 = bitcast %union.anon* %5032 to i64*
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5034 = getelementptr inbounds %struct.GPR, %struct.GPR* %5033, i32 0, i32 5
  %5035 = getelementptr inbounds %struct.Reg, %struct.Reg* %5034, i32 0, i32 0
  %RCX.i348 = bitcast %union.anon* %5035 to i64*
  %5036 = load i64, i64* %RCX.i348
  %5037 = add i64 %5036, 12099168
  %5038 = load i64, i64* %PC.i346
  %5039 = add i64 %5038, 8
  store i64 %5039, i64* %PC.i346
  %5040 = inttoptr i64 %5037 to i8*
  %5041 = load i8, i8* %5040
  %5042 = zext i8 %5041 to i64
  store i64 %5042, i64* %RAX.i347, align 8
  store %struct.Memory* %loadMem_438a39, %struct.Memory** %MEMORY
  %loadMem_438a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5044 = getelementptr inbounds %struct.GPR, %struct.GPR* %5043, i32 0, i32 33
  %5045 = getelementptr inbounds %struct.Reg, %struct.Reg* %5044, i32 0, i32 0
  %PC.i344 = bitcast %union.anon* %5045 to i64*
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5047 = getelementptr inbounds %struct.GPR, %struct.GPR* %5046, i32 0, i32 1
  %5048 = getelementptr inbounds %struct.Reg, %struct.Reg* %5047, i32 0, i32 0
  %EAX.i345 = bitcast %union.anon* %5048 to i32*
  %5049 = load i32, i32* %EAX.i345
  %5050 = zext i32 %5049 to i64
  %5051 = load i64, i64* %PC.i344
  %5052 = add i64 %5051, 3
  store i64 %5052, i64* %PC.i344
  %5053 = sub i32 %5049, 3
  %5054 = icmp ult i32 %5049, 3
  %5055 = zext i1 %5054 to i8
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5055, i8* %5056, align 1
  %5057 = and i32 %5053, 255
  %5058 = call i32 @llvm.ctpop.i32(i32 %5057)
  %5059 = trunc i32 %5058 to i8
  %5060 = and i8 %5059, 1
  %5061 = xor i8 %5060, 1
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5061, i8* %5062, align 1
  %5063 = xor i64 3, %5050
  %5064 = trunc i64 %5063 to i32
  %5065 = xor i32 %5064, %5053
  %5066 = lshr i32 %5065, 4
  %5067 = trunc i32 %5066 to i8
  %5068 = and i8 %5067, 1
  %5069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5068, i8* %5069, align 1
  %5070 = icmp eq i32 %5053, 0
  %5071 = zext i1 %5070 to i8
  %5072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5071, i8* %5072, align 1
  %5073 = lshr i32 %5053, 31
  %5074 = trunc i32 %5073 to i8
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5074, i8* %5075, align 1
  %5076 = lshr i32 %5049, 31
  %5077 = xor i32 %5073, %5076
  %5078 = add i32 %5077, %5076
  %5079 = icmp eq i32 %5078, 2
  %5080 = zext i1 %5079 to i8
  %5081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5080, i8* %5081, align 1
  store %struct.Memory* %loadMem_438a41, %struct.Memory** %MEMORY
  %loadMem_438a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 33
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %5084 to i64*
  %5085 = load i64, i64* %PC.i343
  %5086 = add i64 %5085, 65
  %5087 = load i64, i64* %PC.i343
  %5088 = add i64 %5087, 6
  %5089 = load i64, i64* %PC.i343
  %5090 = add i64 %5089, 6
  store i64 %5090, i64* %PC.i343
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5092 = load i8, i8* %5091, align 1
  store i8 %5092, i8* %BRANCH_TAKEN, align 1
  %5093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5094 = icmp ne i8 %5092, 0
  %5095 = select i1 %5094, i64 %5086, i64 %5088
  store i64 %5095, i64* %5093, align 8
  store %struct.Memory* %loadMem_438a44, %struct.Memory** %MEMORY
  %loadBr_438a44 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438a44 = icmp eq i8 %loadBr_438a44, 1
  br i1 %cmpBr_438a44, label %block_.L_438a85, label %block_438a4a

block_438a4a:                                     ; preds = %block_.L_438a2d
  %loadMem_438a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5097 = getelementptr inbounds %struct.GPR, %struct.GPR* %5096, i32 0, i32 33
  %5098 = getelementptr inbounds %struct.Reg, %struct.Reg* %5097, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %5098 to i64*
  %5099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5100 = getelementptr inbounds %struct.GPR, %struct.GPR* %5099, i32 0, i32 1
  %5101 = getelementptr inbounds %struct.Reg, %struct.Reg* %5100, i32 0, i32 0
  %RAX.i341 = bitcast %union.anon* %5101 to i64*
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5103 = getelementptr inbounds %struct.GPR, %struct.GPR* %5102, i32 0, i32 15
  %5104 = getelementptr inbounds %struct.Reg, %struct.Reg* %5103, i32 0, i32 0
  %RBP.i342 = bitcast %union.anon* %5104 to i64*
  %5105 = load i64, i64* %RBP.i342
  %5106 = sub i64 %5105, 64
  %5107 = load i64, i64* %PC.i340
  %5108 = add i64 %5107, 3
  store i64 %5108, i64* %PC.i340
  %5109 = inttoptr i64 %5106 to i32*
  %5110 = load i32, i32* %5109
  %5111 = zext i32 %5110 to i64
  store i64 %5111, i64* %RAX.i341, align 8
  store %struct.Memory* %loadMem_438a4a, %struct.Memory** %MEMORY
  %loadMem_438a4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5113 = getelementptr inbounds %struct.GPR, %struct.GPR* %5112, i32 0, i32 33
  %5114 = getelementptr inbounds %struct.Reg, %struct.Reg* %5113, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %5114 to i64*
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 1
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %RAX.i339
  %5119 = load i64, i64* %PC.i338
  %5120 = add i64 %5119, 3
  store i64 %5120, i64* %PC.i338
  %5121 = trunc i64 %5118 to i32
  %5122 = sub i32 %5121, 20
  %5123 = zext i32 %5122 to i64
  store i64 %5123, i64* %RAX.i339, align 8
  %5124 = icmp ult i32 %5121, 20
  %5125 = zext i1 %5124 to i8
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5125, i8* %5126, align 1
  %5127 = and i32 %5122, 255
  %5128 = call i32 @llvm.ctpop.i32(i32 %5127)
  %5129 = trunc i32 %5128 to i8
  %5130 = and i8 %5129, 1
  %5131 = xor i8 %5130, 1
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5131, i8* %5132, align 1
  %5133 = xor i64 20, %5118
  %5134 = trunc i64 %5133 to i32
  %5135 = xor i32 %5134, %5122
  %5136 = lshr i32 %5135, 4
  %5137 = trunc i32 %5136 to i8
  %5138 = and i8 %5137, 1
  %5139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5138, i8* %5139, align 1
  %5140 = icmp eq i32 %5122, 0
  %5141 = zext i1 %5140 to i8
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5141, i8* %5142, align 1
  %5143 = lshr i32 %5122, 31
  %5144 = trunc i32 %5143 to i8
  %5145 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5144, i8* %5145, align 1
  %5146 = lshr i32 %5121, 31
  %5147 = xor i32 %5143, %5146
  %5148 = add i32 %5147, %5146
  %5149 = icmp eq i32 %5148, 2
  %5150 = zext i1 %5149 to i8
  %5151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5150, i8* %5151, align 1
  store %struct.Memory* %loadMem_438a4d, %struct.Memory** %MEMORY
  %loadMem_438a50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5153 = getelementptr inbounds %struct.GPR, %struct.GPR* %5152, i32 0, i32 33
  %5154 = getelementptr inbounds %struct.Reg, %struct.Reg* %5153, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %5154 to i64*
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5156 = getelementptr inbounds %struct.GPR, %struct.GPR* %5155, i32 0, i32 1
  %5157 = getelementptr inbounds %struct.Reg, %struct.Reg* %5156, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %5157 to i64*
  %5158 = load i64, i64* %RAX.i337
  %5159 = load i64, i64* %PC.i336
  %5160 = add i64 %5159, 3
  store i64 %5160, i64* %PC.i336
  %5161 = trunc i64 %5158 to i32
  %5162 = add i32 1, %5161
  %5163 = zext i32 %5162 to i64
  store i64 %5163, i64* %RAX.i337, align 8
  %5164 = icmp ult i32 %5162, %5161
  %5165 = icmp ult i32 %5162, 1
  %5166 = or i1 %5164, %5165
  %5167 = zext i1 %5166 to i8
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5167, i8* %5168, align 1
  %5169 = and i32 %5162, 255
  %5170 = call i32 @llvm.ctpop.i32(i32 %5169)
  %5171 = trunc i32 %5170 to i8
  %5172 = and i8 %5171, 1
  %5173 = xor i8 %5172, 1
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5173, i8* %5174, align 1
  %5175 = xor i64 1, %5158
  %5176 = trunc i64 %5175 to i32
  %5177 = xor i32 %5176, %5162
  %5178 = lshr i32 %5177, 4
  %5179 = trunc i32 %5178 to i8
  %5180 = and i8 %5179, 1
  %5181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5180, i8* %5181, align 1
  %5182 = icmp eq i32 %5162, 0
  %5183 = zext i1 %5182 to i8
  %5184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5183, i8* %5184, align 1
  %5185 = lshr i32 %5162, 31
  %5186 = trunc i32 %5185 to i8
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5186, i8* %5187, align 1
  %5188 = lshr i32 %5161, 31
  %5189 = xor i32 %5185, %5188
  %5190 = add i32 %5189, %5185
  %5191 = icmp eq i32 %5190, 2
  %5192 = zext i1 %5191 to i8
  %5193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5192, i8* %5193, align 1
  store %struct.Memory* %loadMem_438a50, %struct.Memory** %MEMORY
  %loadMem_438a53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5195 = getelementptr inbounds %struct.GPR, %struct.GPR* %5194, i32 0, i32 33
  %5196 = getelementptr inbounds %struct.Reg, %struct.Reg* %5195, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %5196 to i64*
  %5197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5198 = getelementptr inbounds %struct.GPR, %struct.GPR* %5197, i32 0, i32 1
  %5199 = getelementptr inbounds %struct.Reg, %struct.Reg* %5198, i32 0, i32 0
  %EAX.i334 = bitcast %union.anon* %5199 to i32*
  %5200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5201 = getelementptr inbounds %struct.GPR, %struct.GPR* %5200, i32 0, i32 5
  %5202 = getelementptr inbounds %struct.Reg, %struct.Reg* %5201, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %5202 to i64*
  %5203 = load i32, i32* %EAX.i334
  %5204 = zext i32 %5203 to i64
  %5205 = load i64, i64* %PC.i333
  %5206 = add i64 %5205, 3
  store i64 %5206, i64* %PC.i333
  %5207 = shl i64 %5204, 32
  %5208 = ashr exact i64 %5207, 32
  store i64 %5208, i64* %RCX.i335, align 8
  store %struct.Memory* %loadMem_438a53, %struct.Memory** %MEMORY
  %loadMem_438a56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 33
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %5211 to i64*
  %5212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5213 = getelementptr inbounds %struct.GPR, %struct.GPR* %5212, i32 0, i32 1
  %5214 = getelementptr inbounds %struct.Reg, %struct.Reg* %5213, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %5214 to i64*
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5216 = getelementptr inbounds %struct.GPR, %struct.GPR* %5215, i32 0, i32 5
  %5217 = getelementptr inbounds %struct.Reg, %struct.Reg* %5216, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %5217 to i64*
  %5218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5219 = getelementptr inbounds %struct.GPR, %struct.GPR* %5218, i32 0, i32 15
  %5220 = getelementptr inbounds %struct.Reg, %struct.Reg* %5219, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %5220 to i64*
  %5221 = load i64, i64* %RBP.i332
  %5222 = load i64, i64* %RCX.i331
  %5223 = add i64 %5221, -880
  %5224 = add i64 %5223, %5222
  %5225 = load i64, i64* %PC.i329
  %5226 = add i64 %5225, 8
  store i64 %5226, i64* %PC.i329
  %5227 = inttoptr i64 %5224 to i8*
  %5228 = load i8, i8* %5227
  %5229 = sext i8 %5228 to i64
  %5230 = and i64 %5229, 4294967295
  store i64 %5230, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_438a56, %struct.Memory** %MEMORY
  %loadMem_438a5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5232 = getelementptr inbounds %struct.GPR, %struct.GPR* %5231, i32 0, i32 33
  %5233 = getelementptr inbounds %struct.Reg, %struct.Reg* %5232, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %5233 to i64*
  %5234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5235 = getelementptr inbounds %struct.GPR, %struct.GPR* %5234, i32 0, i32 5
  %5236 = getelementptr inbounds %struct.Reg, %struct.Reg* %5235, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %5236 to i64*
  %5237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5238 = getelementptr inbounds %struct.GPR, %struct.GPR* %5237, i32 0, i32 15
  %5239 = getelementptr inbounds %struct.Reg, %struct.Reg* %5238, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %5239 to i64*
  %5240 = load i64, i64* %RBP.i328
  %5241 = sub i64 %5240, 64
  %5242 = load i64, i64* %PC.i326
  %5243 = add i64 %5242, 4
  store i64 %5243, i64* %PC.i326
  %5244 = inttoptr i64 %5241 to i32*
  %5245 = load i32, i32* %5244
  %5246 = sext i32 %5245 to i64
  store i64 %5246, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_438a5e, %struct.Memory** %MEMORY
  %loadMem_438a62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5248 = getelementptr inbounds %struct.GPR, %struct.GPR* %5247, i32 0, i32 33
  %5249 = getelementptr inbounds %struct.Reg, %struct.Reg* %5248, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %5249 to i64*
  %5250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5251 = getelementptr inbounds %struct.GPR, %struct.GPR* %5250, i32 0, i32 5
  %5252 = getelementptr inbounds %struct.Reg, %struct.Reg* %5251, i32 0, i32 0
  %RCX.i323 = bitcast %union.anon* %5252 to i64*
  %5253 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5254 = getelementptr inbounds %struct.GPR, %struct.GPR* %5253, i32 0, i32 7
  %5255 = getelementptr inbounds %struct.Reg, %struct.Reg* %5254, i32 0, i32 0
  %RDX.i324 = bitcast %union.anon* %5255 to i64*
  %5256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5257 = getelementptr inbounds %struct.GPR, %struct.GPR* %5256, i32 0, i32 15
  %5258 = getelementptr inbounds %struct.Reg, %struct.Reg* %5257, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %5258 to i64*
  %5259 = load i64, i64* %RBP.i325
  %5260 = load i64, i64* %RCX.i323
  %5261 = add i64 %5259, -480
  %5262 = add i64 %5261, %5260
  %5263 = load i64, i64* %PC.i322
  %5264 = add i64 %5263, 8
  store i64 %5264, i64* %PC.i322
  %5265 = inttoptr i64 %5262 to i8*
  %5266 = load i8, i8* %5265
  %5267 = sext i8 %5266 to i64
  %5268 = and i64 %5267, 4294967295
  store i64 %5268, i64* %RDX.i324, align 8
  store %struct.Memory* %loadMem_438a62, %struct.Memory** %MEMORY
  %loadMem_438a6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %5269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5270 = getelementptr inbounds %struct.GPR, %struct.GPR* %5269, i32 0, i32 33
  %5271 = getelementptr inbounds %struct.Reg, %struct.Reg* %5270, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %5271 to i64*
  %5272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5273 = getelementptr inbounds %struct.GPR, %struct.GPR* %5272, i32 0, i32 9
  %5274 = getelementptr inbounds %struct.Reg, %struct.Reg* %5273, i32 0, i32 0
  %RSI.i320 = bitcast %union.anon* %5274 to i64*
  %5275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5276 = getelementptr inbounds %struct.GPR, %struct.GPR* %5275, i32 0, i32 15
  %5277 = getelementptr inbounds %struct.Reg, %struct.Reg* %5276, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %5277 to i64*
  %5278 = load i64, i64* %RBP.i321
  %5279 = sub i64 %5278, 64
  %5280 = load i64, i64* %PC.i319
  %5281 = add i64 %5280, 3
  store i64 %5281, i64* %PC.i319
  %5282 = inttoptr i64 %5279 to i32*
  %5283 = load i32, i32* %5282
  %5284 = zext i32 %5283 to i64
  store i64 %5284, i64* %RSI.i320, align 8
  store %struct.Memory* %loadMem_438a6a, %struct.Memory** %MEMORY
  %loadMem_438a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 9
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RSI.i318 = bitcast %union.anon* %5290 to i64*
  %5291 = load i64, i64* %RSI.i318
  %5292 = load i64, i64* %PC.i317
  %5293 = add i64 %5292, 3
  store i64 %5293, i64* %PC.i317
  %5294 = trunc i64 %5291 to i32
  %5295 = add i32 1, %5294
  %5296 = zext i32 %5295 to i64
  store i64 %5296, i64* %RSI.i318, align 8
  %5297 = icmp ult i32 %5295, %5294
  %5298 = icmp ult i32 %5295, 1
  %5299 = or i1 %5297, %5298
  %5300 = zext i1 %5299 to i8
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5300, i8* %5301, align 1
  %5302 = and i32 %5295, 255
  %5303 = call i32 @llvm.ctpop.i32(i32 %5302)
  %5304 = trunc i32 %5303 to i8
  %5305 = and i8 %5304, 1
  %5306 = xor i8 %5305, 1
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5306, i8* %5307, align 1
  %5308 = xor i64 1, %5291
  %5309 = trunc i64 %5308 to i32
  %5310 = xor i32 %5309, %5295
  %5311 = lshr i32 %5310, 4
  %5312 = trunc i32 %5311 to i8
  %5313 = and i8 %5312, 1
  %5314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5313, i8* %5314, align 1
  %5315 = icmp eq i32 %5295, 0
  %5316 = zext i1 %5315 to i8
  %5317 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5316, i8* %5317, align 1
  %5318 = lshr i32 %5295, 31
  %5319 = trunc i32 %5318 to i8
  %5320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5319, i8* %5320, align 1
  %5321 = lshr i32 %5294, 31
  %5322 = xor i32 %5318, %5321
  %5323 = add i32 %5322, %5318
  %5324 = icmp eq i32 %5323, 2
  %5325 = zext i1 %5324 to i8
  %5326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5325, i8* %5326, align 1
  store %struct.Memory* %loadMem_438a6d, %struct.Memory** %MEMORY
  %loadMem_438a70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5328 = getelementptr inbounds %struct.GPR, %struct.GPR* %5327, i32 0, i32 33
  %5329 = getelementptr inbounds %struct.Reg, %struct.Reg* %5328, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %5329 to i64*
  %5330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5331 = getelementptr inbounds %struct.GPR, %struct.GPR* %5330, i32 0, i32 9
  %5332 = getelementptr inbounds %struct.Reg, %struct.Reg* %5331, i32 0, i32 0
  %ESI.i315 = bitcast %union.anon* %5332 to i32*
  %5333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5334 = getelementptr inbounds %struct.GPR, %struct.GPR* %5333, i32 0, i32 5
  %5335 = getelementptr inbounds %struct.Reg, %struct.Reg* %5334, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %5335 to i64*
  %5336 = load i32, i32* %ESI.i315
  %5337 = zext i32 %5336 to i64
  %5338 = load i64, i64* %PC.i314
  %5339 = add i64 %5338, 3
  store i64 %5339, i64* %PC.i314
  %5340 = shl i64 %5337, 32
  %5341 = ashr exact i64 %5340, 32
  store i64 %5341, i64* %RCX.i316, align 8
  store %struct.Memory* %loadMem_438a70, %struct.Memory** %MEMORY
  %loadMem_438a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5343 = getelementptr inbounds %struct.GPR, %struct.GPR* %5342, i32 0, i32 33
  %5344 = getelementptr inbounds %struct.Reg, %struct.Reg* %5343, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %5344 to i64*
  %5345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5346 = getelementptr inbounds %struct.GPR, %struct.GPR* %5345, i32 0, i32 5
  %5347 = getelementptr inbounds %struct.Reg, %struct.Reg* %5346, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %5347 to i64*
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5349 = getelementptr inbounds %struct.GPR, %struct.GPR* %5348, i32 0, i32 9
  %5350 = getelementptr inbounds %struct.Reg, %struct.Reg* %5349, i32 0, i32 0
  %RSI.i312 = bitcast %union.anon* %5350 to i64*
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5352 = getelementptr inbounds %struct.GPR, %struct.GPR* %5351, i32 0, i32 15
  %5353 = getelementptr inbounds %struct.Reg, %struct.Reg* %5352, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %5353 to i64*
  %5354 = load i64, i64* %RBP.i313
  %5355 = load i64, i64* %RCX.i311
  %5356 = add i64 %5354, -880
  %5357 = add i64 %5356, %5355
  %5358 = load i64, i64* %PC.i310
  %5359 = add i64 %5358, 8
  store i64 %5359, i64* %PC.i310
  %5360 = inttoptr i64 %5357 to i8*
  %5361 = load i8, i8* %5360
  %5362 = sext i8 %5361 to i64
  %5363 = and i64 %5362, 4294967295
  store i64 %5363, i64* %RSI.i312, align 8
  store %struct.Memory* %loadMem_438a73, %struct.Memory** %MEMORY
  %loadMem_438a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 9
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %ESI.i308 = bitcast %union.anon* %5369 to i32*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 7
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RDX.i309 = bitcast %union.anon* %5372 to i64*
  %5373 = load i64, i64* %RDX.i309
  %5374 = load i32, i32* %ESI.i308
  %5375 = zext i32 %5374 to i64
  %5376 = load i64, i64* %PC.i307
  %5377 = add i64 %5376, 2
  store i64 %5377, i64* %PC.i307
  %5378 = trunc i64 %5373 to i32
  %5379 = sub i32 %5378, %5374
  %5380 = zext i32 %5379 to i64
  store i64 %5380, i64* %RDX.i309, align 8
  %5381 = icmp ult i32 %5378, %5374
  %5382 = zext i1 %5381 to i8
  %5383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5382, i8* %5383, align 1
  %5384 = and i32 %5379, 255
  %5385 = call i32 @llvm.ctpop.i32(i32 %5384)
  %5386 = trunc i32 %5385 to i8
  %5387 = and i8 %5386, 1
  %5388 = xor i8 %5387, 1
  %5389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5388, i8* %5389, align 1
  %5390 = xor i64 %5375, %5373
  %5391 = trunc i64 %5390 to i32
  %5392 = xor i32 %5391, %5379
  %5393 = lshr i32 %5392, 4
  %5394 = trunc i32 %5393 to i8
  %5395 = and i8 %5394, 1
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5395, i8* %5396, align 1
  %5397 = icmp eq i32 %5379, 0
  %5398 = zext i1 %5397 to i8
  %5399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5398, i8* %5399, align 1
  %5400 = lshr i32 %5379, 31
  %5401 = trunc i32 %5400 to i8
  %5402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5401, i8* %5402, align 1
  %5403 = lshr i32 %5378, 31
  %5404 = lshr i32 %5374, 31
  %5405 = xor i32 %5404, %5403
  %5406 = xor i32 %5400, %5403
  %5407 = add i32 %5406, %5405
  %5408 = icmp eq i32 %5407, 2
  %5409 = zext i1 %5408 to i8
  %5410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5409, i8* %5410, align 1
  store %struct.Memory* %loadMem_438a7b, %struct.Memory** %MEMORY
  %loadMem_438a7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5412 = getelementptr inbounds %struct.GPR, %struct.GPR* %5411, i32 0, i32 33
  %5413 = getelementptr inbounds %struct.Reg, %struct.Reg* %5412, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %5413 to i64*
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5415 = getelementptr inbounds %struct.GPR, %struct.GPR* %5414, i32 0, i32 1
  %5416 = getelementptr inbounds %struct.Reg, %struct.Reg* %5415, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %5416 to i32*
  %5417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5418 = getelementptr inbounds %struct.GPR, %struct.GPR* %5417, i32 0, i32 7
  %5419 = getelementptr inbounds %struct.Reg, %struct.Reg* %5418, i32 0, i32 0
  %EDX.i306 = bitcast %union.anon* %5419 to i32*
  %5420 = load i32, i32* %EAX.i305
  %5421 = zext i32 %5420 to i64
  %5422 = load i32, i32* %EDX.i306
  %5423 = zext i32 %5422 to i64
  %5424 = load i64, i64* %PC.i304
  %5425 = add i64 %5424, 2
  store i64 %5425, i64* %PC.i304
  %5426 = sub i32 %5420, %5422
  %5427 = icmp ult i32 %5420, %5422
  %5428 = zext i1 %5427 to i8
  %5429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5428, i8* %5429, align 1
  %5430 = and i32 %5426, 255
  %5431 = call i32 @llvm.ctpop.i32(i32 %5430)
  %5432 = trunc i32 %5431 to i8
  %5433 = and i8 %5432, 1
  %5434 = xor i8 %5433, 1
  %5435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5434, i8* %5435, align 1
  %5436 = xor i64 %5423, %5421
  %5437 = trunc i64 %5436 to i32
  %5438 = xor i32 %5437, %5426
  %5439 = lshr i32 %5438, 4
  %5440 = trunc i32 %5439 to i8
  %5441 = and i8 %5440, 1
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5441, i8* %5442, align 1
  %5443 = icmp eq i32 %5426, 0
  %5444 = zext i1 %5443 to i8
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5444, i8* %5445, align 1
  %5446 = lshr i32 %5426, 31
  %5447 = trunc i32 %5446 to i8
  %5448 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5447, i8* %5448, align 1
  %5449 = lshr i32 %5420, 31
  %5450 = lshr i32 %5422, 31
  %5451 = xor i32 %5450, %5449
  %5452 = xor i32 %5446, %5449
  %5453 = add i32 %5452, %5451
  %5454 = icmp eq i32 %5453, 2
  %5455 = zext i1 %5454 to i8
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5455, i8* %5456, align 1
  store %struct.Memory* %loadMem_438a7d, %struct.Memory** %MEMORY
  %loadMem_438a7f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5458 = getelementptr inbounds %struct.GPR, %struct.GPR* %5457, i32 0, i32 33
  %5459 = getelementptr inbounds %struct.Reg, %struct.Reg* %5458, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %5459 to i64*
  %5460 = load i64, i64* %PC.i303
  %5461 = add i64 %5460, 358
  %5462 = load i64, i64* %PC.i303
  %5463 = add i64 %5462, 6
  %5464 = load i64, i64* %PC.i303
  %5465 = add i64 %5464, 6
  store i64 %5465, i64* %PC.i303
  %5466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5467 = load i8, i8* %5466, align 1
  %5468 = icmp eq i8 %5467, 0
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5470 = load i8, i8* %5469, align 1
  %5471 = icmp ne i8 %5470, 0
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5473 = load i8, i8* %5472, align 1
  %5474 = icmp ne i8 %5473, 0
  %5475 = xor i1 %5471, %5474
  %5476 = xor i1 %5475, true
  %5477 = and i1 %5468, %5476
  %5478 = zext i1 %5477 to i8
  store i8 %5478, i8* %BRANCH_TAKEN, align 1
  %5479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5480 = select i1 %5477, i64 %5461, i64 %5463
  store i64 %5480, i64* %5479, align 8
  store %struct.Memory* %loadMem_438a7f, %struct.Memory** %MEMORY
  %loadBr_438a7f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438a7f = icmp eq i8 %loadBr_438a7f, 1
  br i1 %cmpBr_438a7f, label %block_.L_438be5, label %block_.L_438a85

block_.L_438a85:                                  ; preds = %block_438a4a, %block_.L_438a2d
  %loadMem_438a85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 33
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 1
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RAX.i301 = bitcast %union.anon* %5486 to i64*
  %5487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5488 = getelementptr inbounds %struct.GPR, %struct.GPR* %5487, i32 0, i32 15
  %5489 = getelementptr inbounds %struct.Reg, %struct.Reg* %5488, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %5489 to i64*
  %5490 = load i64, i64* %RBP.i302
  %5491 = sub i64 %5490, 64
  %5492 = load i64, i64* %PC.i300
  %5493 = add i64 %5492, 3
  store i64 %5493, i64* %PC.i300
  %5494 = inttoptr i64 %5491 to i32*
  %5495 = load i32, i32* %5494
  %5496 = zext i32 %5495 to i64
  store i64 %5496, i64* %RAX.i301, align 8
  store %struct.Memory* %loadMem_438a85, %struct.Memory** %MEMORY
  %loadMem_438a88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5498 = getelementptr inbounds %struct.GPR, %struct.GPR* %5497, i32 0, i32 33
  %5499 = getelementptr inbounds %struct.Reg, %struct.Reg* %5498, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %5499 to i64*
  %5500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5501 = getelementptr inbounds %struct.GPR, %struct.GPR* %5500, i32 0, i32 1
  %5502 = getelementptr inbounds %struct.Reg, %struct.Reg* %5501, i32 0, i32 0
  %RAX.i299 = bitcast %union.anon* %5502 to i64*
  %5503 = load i64, i64* %RAX.i299
  %5504 = load i64, i64* %PC.i298
  %5505 = add i64 %5504, 3
  store i64 %5505, i64* %PC.i298
  %5506 = trunc i64 %5503 to i32
  %5507 = add i32 20, %5506
  %5508 = zext i32 %5507 to i64
  store i64 %5508, i64* %RAX.i299, align 8
  %5509 = icmp ult i32 %5507, %5506
  %5510 = icmp ult i32 %5507, 20
  %5511 = or i1 %5509, %5510
  %5512 = zext i1 %5511 to i8
  %5513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5512, i8* %5513, align 1
  %5514 = and i32 %5507, 255
  %5515 = call i32 @llvm.ctpop.i32(i32 %5514)
  %5516 = trunc i32 %5515 to i8
  %5517 = and i8 %5516, 1
  %5518 = xor i8 %5517, 1
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5518, i8* %5519, align 1
  %5520 = xor i64 20, %5503
  %5521 = trunc i64 %5520 to i32
  %5522 = xor i32 %5521, %5507
  %5523 = lshr i32 %5522, 4
  %5524 = trunc i32 %5523 to i8
  %5525 = and i8 %5524, 1
  %5526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5525, i8* %5526, align 1
  %5527 = icmp eq i32 %5507, 0
  %5528 = zext i1 %5527 to i8
  %5529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5528, i8* %5529, align 1
  %5530 = lshr i32 %5507, 31
  %5531 = trunc i32 %5530 to i8
  %5532 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5531, i8* %5532, align 1
  %5533 = lshr i32 %5506, 31
  %5534 = xor i32 %5530, %5533
  %5535 = add i32 %5534, %5530
  %5536 = icmp eq i32 %5535, 2
  %5537 = zext i1 %5536 to i8
  %5538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5537, i8* %5538, align 1
  store %struct.Memory* %loadMem_438a88, %struct.Memory** %MEMORY
  %loadMem_438a8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5540 = getelementptr inbounds %struct.GPR, %struct.GPR* %5539, i32 0, i32 33
  %5541 = getelementptr inbounds %struct.Reg, %struct.Reg* %5540, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %5541 to i64*
  %5542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5543 = getelementptr inbounds %struct.GPR, %struct.GPR* %5542, i32 0, i32 1
  %5544 = getelementptr inbounds %struct.Reg, %struct.Reg* %5543, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %5544 to i64*
  %5545 = load i64, i64* %RAX.i297
  %5546 = load i64, i64* %PC.i296
  %5547 = add i64 %5546, 3
  store i64 %5547, i64* %PC.i296
  %5548 = trunc i64 %5545 to i32
  %5549 = sub i32 %5548, 1
  %5550 = zext i32 %5549 to i64
  store i64 %5550, i64* %RAX.i297, align 8
  %5551 = icmp ult i32 %5548, 1
  %5552 = zext i1 %5551 to i8
  %5553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5552, i8* %5553, align 1
  %5554 = and i32 %5549, 255
  %5555 = call i32 @llvm.ctpop.i32(i32 %5554)
  %5556 = trunc i32 %5555 to i8
  %5557 = and i8 %5556, 1
  %5558 = xor i8 %5557, 1
  %5559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5558, i8* %5559, align 1
  %5560 = xor i64 1, %5545
  %5561 = trunc i64 %5560 to i32
  %5562 = xor i32 %5561, %5549
  %5563 = lshr i32 %5562, 4
  %5564 = trunc i32 %5563 to i8
  %5565 = and i8 %5564, 1
  %5566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5565, i8* %5566, align 1
  %5567 = icmp eq i32 %5549, 0
  %5568 = zext i1 %5567 to i8
  %5569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5568, i8* %5569, align 1
  %5570 = lshr i32 %5549, 31
  %5571 = trunc i32 %5570 to i8
  %5572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5571, i8* %5572, align 1
  %5573 = lshr i32 %5548, 31
  %5574 = xor i32 %5570, %5573
  %5575 = add i32 %5574, %5573
  %5576 = icmp eq i32 %5575, 2
  %5577 = zext i1 %5576 to i8
  %5578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5577, i8* %5578, align 1
  store %struct.Memory* %loadMem_438a8b, %struct.Memory** %MEMORY
  %loadMem_438a8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5580 = getelementptr inbounds %struct.GPR, %struct.GPR* %5579, i32 0, i32 33
  %5581 = getelementptr inbounds %struct.Reg, %struct.Reg* %5580, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %5581 to i64*
  %5582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5583 = getelementptr inbounds %struct.GPR, %struct.GPR* %5582, i32 0, i32 1
  %5584 = getelementptr inbounds %struct.Reg, %struct.Reg* %5583, i32 0, i32 0
  %EAX.i294 = bitcast %union.anon* %5584 to i32*
  %5585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5586 = getelementptr inbounds %struct.GPR, %struct.GPR* %5585, i32 0, i32 5
  %5587 = getelementptr inbounds %struct.Reg, %struct.Reg* %5586, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %5587 to i64*
  %5588 = load i32, i32* %EAX.i294
  %5589 = zext i32 %5588 to i64
  %5590 = load i64, i64* %PC.i293
  %5591 = add i64 %5590, 3
  store i64 %5591, i64* %PC.i293
  %5592 = shl i64 %5589, 32
  %5593 = ashr exact i64 %5592, 32
  store i64 %5593, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_438a8e, %struct.Memory** %MEMORY
  %loadMem_438a91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5595 = getelementptr inbounds %struct.GPR, %struct.GPR* %5594, i32 0, i32 33
  %5596 = getelementptr inbounds %struct.Reg, %struct.Reg* %5595, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5596 to i64*
  %5597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5598 = getelementptr inbounds %struct.GPR, %struct.GPR* %5597, i32 0, i32 1
  %5599 = getelementptr inbounds %struct.Reg, %struct.Reg* %5598, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %5599 to i64*
  %5600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5601 = getelementptr inbounds %struct.GPR, %struct.GPR* %5600, i32 0, i32 5
  %5602 = getelementptr inbounds %struct.Reg, %struct.Reg* %5601, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %5602 to i64*
  %5603 = load i64, i64* %RCX.i292
  %5604 = add i64 %5603, 12099168
  %5605 = load i64, i64* %PC.i290
  %5606 = add i64 %5605, 8
  store i64 %5606, i64* %PC.i290
  %5607 = inttoptr i64 %5604 to i8*
  %5608 = load i8, i8* %5607
  %5609 = zext i8 %5608 to i64
  store i64 %5609, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_438a91, %struct.Memory** %MEMORY
  %loadMem_438a99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5611 = getelementptr inbounds %struct.GPR, %struct.GPR* %5610, i32 0, i32 33
  %5612 = getelementptr inbounds %struct.Reg, %struct.Reg* %5611, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5612 to i64*
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 1
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %5615 to i32*
  %5616 = load i32, i32* %EAX.i289
  %5617 = zext i32 %5616 to i64
  %5618 = load i64, i64* %PC.i288
  %5619 = add i64 %5618, 3
  store i64 %5619, i64* %PC.i288
  %5620 = sub i32 %5616, 3
  %5621 = icmp ult i32 %5616, 3
  %5622 = zext i1 %5621 to i8
  %5623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5622, i8* %5623, align 1
  %5624 = and i32 %5620, 255
  %5625 = call i32 @llvm.ctpop.i32(i32 %5624)
  %5626 = trunc i32 %5625 to i8
  %5627 = and i8 %5626, 1
  %5628 = xor i8 %5627, 1
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5628, i8* %5629, align 1
  %5630 = xor i64 3, %5617
  %5631 = trunc i64 %5630 to i32
  %5632 = xor i32 %5631, %5620
  %5633 = lshr i32 %5632, 4
  %5634 = trunc i32 %5633 to i8
  %5635 = and i8 %5634, 1
  %5636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5635, i8* %5636, align 1
  %5637 = icmp eq i32 %5620, 0
  %5638 = zext i1 %5637 to i8
  %5639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5638, i8* %5639, align 1
  %5640 = lshr i32 %5620, 31
  %5641 = trunc i32 %5640 to i8
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5641, i8* %5642, align 1
  %5643 = lshr i32 %5616, 31
  %5644 = xor i32 %5640, %5643
  %5645 = add i32 %5644, %5643
  %5646 = icmp eq i32 %5645, 2
  %5647 = zext i1 %5646 to i8
  %5648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5647, i8* %5648, align 1
  store %struct.Memory* %loadMem_438a99, %struct.Memory** %MEMORY
  %loadMem_438a9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 33
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %PC.i287
  %5653 = add i64 %5652, 65
  %5654 = load i64, i64* %PC.i287
  %5655 = add i64 %5654, 6
  %5656 = load i64, i64* %PC.i287
  %5657 = add i64 %5656, 6
  store i64 %5657, i64* %PC.i287
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5659 = load i8, i8* %5658, align 1
  store i8 %5659, i8* %BRANCH_TAKEN, align 1
  %5660 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5661 = icmp ne i8 %5659, 0
  %5662 = select i1 %5661, i64 %5653, i64 %5655
  store i64 %5662, i64* %5660, align 8
  store %struct.Memory* %loadMem_438a9c, %struct.Memory** %MEMORY
  %loadBr_438a9c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438a9c = icmp eq i8 %loadBr_438a9c, 1
  br i1 %cmpBr_438a9c, label %block_.L_438add, label %block_438aa2

block_438aa2:                                     ; preds = %block_.L_438a85
  %loadMem_438aa2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5664 = getelementptr inbounds %struct.GPR, %struct.GPR* %5663, i32 0, i32 33
  %5665 = getelementptr inbounds %struct.Reg, %struct.Reg* %5664, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %5665 to i64*
  %5666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5667 = getelementptr inbounds %struct.GPR, %struct.GPR* %5666, i32 0, i32 1
  %5668 = getelementptr inbounds %struct.Reg, %struct.Reg* %5667, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %5668 to i64*
  %5669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5670 = getelementptr inbounds %struct.GPR, %struct.GPR* %5669, i32 0, i32 15
  %5671 = getelementptr inbounds %struct.Reg, %struct.Reg* %5670, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %5671 to i64*
  %5672 = load i64, i64* %RBP.i286
  %5673 = sub i64 %5672, 64
  %5674 = load i64, i64* %PC.i284
  %5675 = add i64 %5674, 3
  store i64 %5675, i64* %PC.i284
  %5676 = inttoptr i64 %5673 to i32*
  %5677 = load i32, i32* %5676
  %5678 = zext i32 %5677 to i64
  store i64 %5678, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_438aa2, %struct.Memory** %MEMORY
  %loadMem_438aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5680 = getelementptr inbounds %struct.GPR, %struct.GPR* %5679, i32 0, i32 33
  %5681 = getelementptr inbounds %struct.Reg, %struct.Reg* %5680, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %5681 to i64*
  %5682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5683 = getelementptr inbounds %struct.GPR, %struct.GPR* %5682, i32 0, i32 1
  %5684 = getelementptr inbounds %struct.Reg, %struct.Reg* %5683, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %5684 to i64*
  %5685 = load i64, i64* %RAX.i283
  %5686 = load i64, i64* %PC.i282
  %5687 = add i64 %5686, 3
  store i64 %5687, i64* %PC.i282
  %5688 = trunc i64 %5685 to i32
  %5689 = add i32 20, %5688
  %5690 = zext i32 %5689 to i64
  store i64 %5690, i64* %RAX.i283, align 8
  %5691 = icmp ult i32 %5689, %5688
  %5692 = icmp ult i32 %5689, 20
  %5693 = or i1 %5691, %5692
  %5694 = zext i1 %5693 to i8
  %5695 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5694, i8* %5695, align 1
  %5696 = and i32 %5689, 255
  %5697 = call i32 @llvm.ctpop.i32(i32 %5696)
  %5698 = trunc i32 %5697 to i8
  %5699 = and i8 %5698, 1
  %5700 = xor i8 %5699, 1
  %5701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5700, i8* %5701, align 1
  %5702 = xor i64 20, %5685
  %5703 = trunc i64 %5702 to i32
  %5704 = xor i32 %5703, %5689
  %5705 = lshr i32 %5704, 4
  %5706 = trunc i32 %5705 to i8
  %5707 = and i8 %5706, 1
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5707, i8* %5708, align 1
  %5709 = icmp eq i32 %5689, 0
  %5710 = zext i1 %5709 to i8
  %5711 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5710, i8* %5711, align 1
  %5712 = lshr i32 %5689, 31
  %5713 = trunc i32 %5712 to i8
  %5714 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5713, i8* %5714, align 1
  %5715 = lshr i32 %5688, 31
  %5716 = xor i32 %5712, %5715
  %5717 = add i32 %5716, %5712
  %5718 = icmp eq i32 %5717, 2
  %5719 = zext i1 %5718 to i8
  %5720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5719, i8* %5720, align 1
  store %struct.Memory* %loadMem_438aa5, %struct.Memory** %MEMORY
  %loadMem_438aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5722 = getelementptr inbounds %struct.GPR, %struct.GPR* %5721, i32 0, i32 33
  %5723 = getelementptr inbounds %struct.Reg, %struct.Reg* %5722, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5723 to i64*
  %5724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5725 = getelementptr inbounds %struct.GPR, %struct.GPR* %5724, i32 0, i32 1
  %5726 = getelementptr inbounds %struct.Reg, %struct.Reg* %5725, i32 0, i32 0
  %RAX.i281 = bitcast %union.anon* %5726 to i64*
  %5727 = load i64, i64* %RAX.i281
  %5728 = load i64, i64* %PC.i280
  %5729 = add i64 %5728, 3
  store i64 %5729, i64* %PC.i280
  %5730 = trunc i64 %5727 to i32
  %5731 = sub i32 %5730, 1
  %5732 = zext i32 %5731 to i64
  store i64 %5732, i64* %RAX.i281, align 8
  %5733 = icmp ult i32 %5730, 1
  %5734 = zext i1 %5733 to i8
  %5735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5734, i8* %5735, align 1
  %5736 = and i32 %5731, 255
  %5737 = call i32 @llvm.ctpop.i32(i32 %5736)
  %5738 = trunc i32 %5737 to i8
  %5739 = and i8 %5738, 1
  %5740 = xor i8 %5739, 1
  %5741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5740, i8* %5741, align 1
  %5742 = xor i64 1, %5727
  %5743 = trunc i64 %5742 to i32
  %5744 = xor i32 %5743, %5731
  %5745 = lshr i32 %5744, 4
  %5746 = trunc i32 %5745 to i8
  %5747 = and i8 %5746, 1
  %5748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5747, i8* %5748, align 1
  %5749 = icmp eq i32 %5731, 0
  %5750 = zext i1 %5749 to i8
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5750, i8* %5751, align 1
  %5752 = lshr i32 %5731, 31
  %5753 = trunc i32 %5752 to i8
  %5754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5753, i8* %5754, align 1
  %5755 = lshr i32 %5730, 31
  %5756 = xor i32 %5752, %5755
  %5757 = add i32 %5756, %5755
  %5758 = icmp eq i32 %5757, 2
  %5759 = zext i1 %5758 to i8
  %5760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5759, i8* %5760, align 1
  store %struct.Memory* %loadMem_438aa8, %struct.Memory** %MEMORY
  %loadMem_438aab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5762 = getelementptr inbounds %struct.GPR, %struct.GPR* %5761, i32 0, i32 33
  %5763 = getelementptr inbounds %struct.Reg, %struct.Reg* %5762, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5763 to i64*
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5765 = getelementptr inbounds %struct.GPR, %struct.GPR* %5764, i32 0, i32 1
  %5766 = getelementptr inbounds %struct.Reg, %struct.Reg* %5765, i32 0, i32 0
  %EAX.i278 = bitcast %union.anon* %5766 to i32*
  %5767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5768 = getelementptr inbounds %struct.GPR, %struct.GPR* %5767, i32 0, i32 5
  %5769 = getelementptr inbounds %struct.Reg, %struct.Reg* %5768, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %5769 to i64*
  %5770 = load i32, i32* %EAX.i278
  %5771 = zext i32 %5770 to i64
  %5772 = load i64, i64* %PC.i277
  %5773 = add i64 %5772, 3
  store i64 %5773, i64* %PC.i277
  %5774 = shl i64 %5771, 32
  %5775 = ashr exact i64 %5774, 32
  store i64 %5775, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_438aab, %struct.Memory** %MEMORY
  %loadMem_438aae = load %struct.Memory*, %struct.Memory** %MEMORY
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5777 = getelementptr inbounds %struct.GPR, %struct.GPR* %5776, i32 0, i32 33
  %5778 = getelementptr inbounds %struct.Reg, %struct.Reg* %5777, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %5778 to i64*
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 1
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %RAX.i274 = bitcast %union.anon* %5781 to i64*
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5783 = getelementptr inbounds %struct.GPR, %struct.GPR* %5782, i32 0, i32 5
  %5784 = getelementptr inbounds %struct.Reg, %struct.Reg* %5783, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %5784 to i64*
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5786 = getelementptr inbounds %struct.GPR, %struct.GPR* %5785, i32 0, i32 15
  %5787 = getelementptr inbounds %struct.Reg, %struct.Reg* %5786, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %5787 to i64*
  %5788 = load i64, i64* %RBP.i276
  %5789 = load i64, i64* %RCX.i275
  %5790 = add i64 %5788, -880
  %5791 = add i64 %5790, %5789
  %5792 = load i64, i64* %PC.i273
  %5793 = add i64 %5792, 8
  store i64 %5793, i64* %PC.i273
  %5794 = inttoptr i64 %5791 to i8*
  %5795 = load i8, i8* %5794
  %5796 = sext i8 %5795 to i64
  %5797 = and i64 %5796, 4294967295
  store i64 %5797, i64* %RAX.i274, align 8
  store %struct.Memory* %loadMem_438aae, %struct.Memory** %MEMORY
  %loadMem_438ab6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5799 = getelementptr inbounds %struct.GPR, %struct.GPR* %5798, i32 0, i32 33
  %5800 = getelementptr inbounds %struct.Reg, %struct.Reg* %5799, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %5800 to i64*
  %5801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5802 = getelementptr inbounds %struct.GPR, %struct.GPR* %5801, i32 0, i32 5
  %5803 = getelementptr inbounds %struct.Reg, %struct.Reg* %5802, i32 0, i32 0
  %RCX.i271 = bitcast %union.anon* %5803 to i64*
  %5804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5805 = getelementptr inbounds %struct.GPR, %struct.GPR* %5804, i32 0, i32 15
  %5806 = getelementptr inbounds %struct.Reg, %struct.Reg* %5805, i32 0, i32 0
  %RBP.i272 = bitcast %union.anon* %5806 to i64*
  %5807 = load i64, i64* %RBP.i272
  %5808 = sub i64 %5807, 64
  %5809 = load i64, i64* %PC.i270
  %5810 = add i64 %5809, 4
  store i64 %5810, i64* %PC.i270
  %5811 = inttoptr i64 %5808 to i32*
  %5812 = load i32, i32* %5811
  %5813 = sext i32 %5812 to i64
  store i64 %5813, i64* %RCX.i271, align 8
  store %struct.Memory* %loadMem_438ab6, %struct.Memory** %MEMORY
  %loadMem_438aba = load %struct.Memory*, %struct.Memory** %MEMORY
  %5814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5815 = getelementptr inbounds %struct.GPR, %struct.GPR* %5814, i32 0, i32 33
  %5816 = getelementptr inbounds %struct.Reg, %struct.Reg* %5815, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5816 to i64*
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5818 = getelementptr inbounds %struct.GPR, %struct.GPR* %5817, i32 0, i32 5
  %5819 = getelementptr inbounds %struct.Reg, %struct.Reg* %5818, i32 0, i32 0
  %RCX.i267 = bitcast %union.anon* %5819 to i64*
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5821 = getelementptr inbounds %struct.GPR, %struct.GPR* %5820, i32 0, i32 7
  %5822 = getelementptr inbounds %struct.Reg, %struct.Reg* %5821, i32 0, i32 0
  %RDX.i268 = bitcast %union.anon* %5822 to i64*
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5824 = getelementptr inbounds %struct.GPR, %struct.GPR* %5823, i32 0, i32 15
  %5825 = getelementptr inbounds %struct.Reg, %struct.Reg* %5824, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %5825 to i64*
  %5826 = load i64, i64* %RBP.i269
  %5827 = load i64, i64* %RCX.i267
  %5828 = add i64 %5826, -480
  %5829 = add i64 %5828, %5827
  %5830 = load i64, i64* %PC.i266
  %5831 = add i64 %5830, 8
  store i64 %5831, i64* %PC.i266
  %5832 = inttoptr i64 %5829 to i8*
  %5833 = load i8, i8* %5832
  %5834 = sext i8 %5833 to i64
  %5835 = and i64 %5834, 4294967295
  store i64 %5835, i64* %RDX.i268, align 8
  store %struct.Memory* %loadMem_438aba, %struct.Memory** %MEMORY
  %loadMem_438ac2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5837 = getelementptr inbounds %struct.GPR, %struct.GPR* %5836, i32 0, i32 33
  %5838 = getelementptr inbounds %struct.Reg, %struct.Reg* %5837, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5838 to i64*
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5840 = getelementptr inbounds %struct.GPR, %struct.GPR* %5839, i32 0, i32 9
  %5841 = getelementptr inbounds %struct.Reg, %struct.Reg* %5840, i32 0, i32 0
  %RSI.i264 = bitcast %union.anon* %5841 to i64*
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5843 = getelementptr inbounds %struct.GPR, %struct.GPR* %5842, i32 0, i32 15
  %5844 = getelementptr inbounds %struct.Reg, %struct.Reg* %5843, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %5844 to i64*
  %5845 = load i64, i64* %RBP.i265
  %5846 = sub i64 %5845, 64
  %5847 = load i64, i64* %PC.i263
  %5848 = add i64 %5847, 3
  store i64 %5848, i64* %PC.i263
  %5849 = inttoptr i64 %5846 to i32*
  %5850 = load i32, i32* %5849
  %5851 = zext i32 %5850 to i64
  store i64 %5851, i64* %RSI.i264, align 8
  store %struct.Memory* %loadMem_438ac2, %struct.Memory** %MEMORY
  %loadMem_438ac5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5853 = getelementptr inbounds %struct.GPR, %struct.GPR* %5852, i32 0, i32 33
  %5854 = getelementptr inbounds %struct.Reg, %struct.Reg* %5853, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5854 to i64*
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5856 = getelementptr inbounds %struct.GPR, %struct.GPR* %5855, i32 0, i32 9
  %5857 = getelementptr inbounds %struct.Reg, %struct.Reg* %5856, i32 0, i32 0
  %RSI.i262 = bitcast %union.anon* %5857 to i64*
  %5858 = load i64, i64* %RSI.i262
  %5859 = load i64, i64* %PC.i261
  %5860 = add i64 %5859, 3
  store i64 %5860, i64* %PC.i261
  %5861 = trunc i64 %5858 to i32
  %5862 = sub i32 %5861, 1
  %5863 = zext i32 %5862 to i64
  store i64 %5863, i64* %RSI.i262, align 8
  %5864 = icmp ult i32 %5861, 1
  %5865 = zext i1 %5864 to i8
  %5866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5865, i8* %5866, align 1
  %5867 = and i32 %5862, 255
  %5868 = call i32 @llvm.ctpop.i32(i32 %5867)
  %5869 = trunc i32 %5868 to i8
  %5870 = and i8 %5869, 1
  %5871 = xor i8 %5870, 1
  %5872 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5871, i8* %5872, align 1
  %5873 = xor i64 1, %5858
  %5874 = trunc i64 %5873 to i32
  %5875 = xor i32 %5874, %5862
  %5876 = lshr i32 %5875, 4
  %5877 = trunc i32 %5876 to i8
  %5878 = and i8 %5877, 1
  %5879 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5878, i8* %5879, align 1
  %5880 = icmp eq i32 %5862, 0
  %5881 = zext i1 %5880 to i8
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5881, i8* %5882, align 1
  %5883 = lshr i32 %5862, 31
  %5884 = trunc i32 %5883 to i8
  %5885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5884, i8* %5885, align 1
  %5886 = lshr i32 %5861, 31
  %5887 = xor i32 %5883, %5886
  %5888 = add i32 %5887, %5886
  %5889 = icmp eq i32 %5888, 2
  %5890 = zext i1 %5889 to i8
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5890, i8* %5891, align 1
  store %struct.Memory* %loadMem_438ac5, %struct.Memory** %MEMORY
  %loadMem_438ac8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5893 = getelementptr inbounds %struct.GPR, %struct.GPR* %5892, i32 0, i32 33
  %5894 = getelementptr inbounds %struct.Reg, %struct.Reg* %5893, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %5894 to i64*
  %5895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5896 = getelementptr inbounds %struct.GPR, %struct.GPR* %5895, i32 0, i32 9
  %5897 = getelementptr inbounds %struct.Reg, %struct.Reg* %5896, i32 0, i32 0
  %ESI.i259 = bitcast %union.anon* %5897 to i32*
  %5898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5899 = getelementptr inbounds %struct.GPR, %struct.GPR* %5898, i32 0, i32 5
  %5900 = getelementptr inbounds %struct.Reg, %struct.Reg* %5899, i32 0, i32 0
  %RCX.i260 = bitcast %union.anon* %5900 to i64*
  %5901 = load i32, i32* %ESI.i259
  %5902 = zext i32 %5901 to i64
  %5903 = load i64, i64* %PC.i258
  %5904 = add i64 %5903, 3
  store i64 %5904, i64* %PC.i258
  %5905 = shl i64 %5902, 32
  %5906 = ashr exact i64 %5905, 32
  store i64 %5906, i64* %RCX.i260, align 8
  store %struct.Memory* %loadMem_438ac8, %struct.Memory** %MEMORY
  %loadMem_438acb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5908 = getelementptr inbounds %struct.GPR, %struct.GPR* %5907, i32 0, i32 33
  %5909 = getelementptr inbounds %struct.Reg, %struct.Reg* %5908, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %5909 to i64*
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5911 = getelementptr inbounds %struct.GPR, %struct.GPR* %5910, i32 0, i32 5
  %5912 = getelementptr inbounds %struct.Reg, %struct.Reg* %5911, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %5912 to i64*
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5914 = getelementptr inbounds %struct.GPR, %struct.GPR* %5913, i32 0, i32 9
  %5915 = getelementptr inbounds %struct.Reg, %struct.Reg* %5914, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %5915 to i64*
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5917 = getelementptr inbounds %struct.GPR, %struct.GPR* %5916, i32 0, i32 15
  %5918 = getelementptr inbounds %struct.Reg, %struct.Reg* %5917, i32 0, i32 0
  %RBP.i257 = bitcast %union.anon* %5918 to i64*
  %5919 = load i64, i64* %RBP.i257
  %5920 = load i64, i64* %RCX.i255
  %5921 = add i64 %5919, -880
  %5922 = add i64 %5921, %5920
  %5923 = load i64, i64* %PC.i254
  %5924 = add i64 %5923, 8
  store i64 %5924, i64* %PC.i254
  %5925 = inttoptr i64 %5922 to i8*
  %5926 = load i8, i8* %5925
  %5927 = sext i8 %5926 to i64
  %5928 = and i64 %5927, 4294967295
  store i64 %5928, i64* %RSI.i256, align 8
  store %struct.Memory* %loadMem_438acb, %struct.Memory** %MEMORY
  %loadMem_438ad3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5930 = getelementptr inbounds %struct.GPR, %struct.GPR* %5929, i32 0, i32 33
  %5931 = getelementptr inbounds %struct.Reg, %struct.Reg* %5930, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5931 to i64*
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 9
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %ESI.i252 = bitcast %union.anon* %5934 to i32*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 7
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RDX.i253 = bitcast %union.anon* %5937 to i64*
  %5938 = load i64, i64* %RDX.i253
  %5939 = load i32, i32* %ESI.i252
  %5940 = zext i32 %5939 to i64
  %5941 = load i64, i64* %PC.i251
  %5942 = add i64 %5941, 2
  store i64 %5942, i64* %PC.i251
  %5943 = trunc i64 %5938 to i32
  %5944 = sub i32 %5943, %5939
  %5945 = zext i32 %5944 to i64
  store i64 %5945, i64* %RDX.i253, align 8
  %5946 = icmp ult i32 %5943, %5939
  %5947 = zext i1 %5946 to i8
  %5948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5947, i8* %5948, align 1
  %5949 = and i32 %5944, 255
  %5950 = call i32 @llvm.ctpop.i32(i32 %5949)
  %5951 = trunc i32 %5950 to i8
  %5952 = and i8 %5951, 1
  %5953 = xor i8 %5952, 1
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5953, i8* %5954, align 1
  %5955 = xor i64 %5940, %5938
  %5956 = trunc i64 %5955 to i32
  %5957 = xor i32 %5956, %5944
  %5958 = lshr i32 %5957, 4
  %5959 = trunc i32 %5958 to i8
  %5960 = and i8 %5959, 1
  %5961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5960, i8* %5961, align 1
  %5962 = icmp eq i32 %5944, 0
  %5963 = zext i1 %5962 to i8
  %5964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5963, i8* %5964, align 1
  %5965 = lshr i32 %5944, 31
  %5966 = trunc i32 %5965 to i8
  %5967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5966, i8* %5967, align 1
  %5968 = lshr i32 %5943, 31
  %5969 = lshr i32 %5939, 31
  %5970 = xor i32 %5969, %5968
  %5971 = xor i32 %5965, %5968
  %5972 = add i32 %5971, %5970
  %5973 = icmp eq i32 %5972, 2
  %5974 = zext i1 %5973 to i8
  %5975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5974, i8* %5975, align 1
  store %struct.Memory* %loadMem_438ad3, %struct.Memory** %MEMORY
  %loadMem_438ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5977 = getelementptr inbounds %struct.GPR, %struct.GPR* %5976, i32 0, i32 33
  %5978 = getelementptr inbounds %struct.Reg, %struct.Reg* %5977, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %5978 to i64*
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 1
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %EAX.i249 = bitcast %union.anon* %5981 to i32*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 7
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %EDX.i250 = bitcast %union.anon* %5984 to i32*
  %5985 = load i32, i32* %EAX.i249
  %5986 = zext i32 %5985 to i64
  %5987 = load i32, i32* %EDX.i250
  %5988 = zext i32 %5987 to i64
  %5989 = load i64, i64* %PC.i248
  %5990 = add i64 %5989, 2
  store i64 %5990, i64* %PC.i248
  %5991 = sub i32 %5985, %5987
  %5992 = icmp ult i32 %5985, %5987
  %5993 = zext i1 %5992 to i8
  %5994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5993, i8* %5994, align 1
  %5995 = and i32 %5991, 255
  %5996 = call i32 @llvm.ctpop.i32(i32 %5995)
  %5997 = trunc i32 %5996 to i8
  %5998 = and i8 %5997, 1
  %5999 = xor i8 %5998, 1
  %6000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5999, i8* %6000, align 1
  %6001 = xor i64 %5988, %5986
  %6002 = trunc i64 %6001 to i32
  %6003 = xor i32 %6002, %5991
  %6004 = lshr i32 %6003, 4
  %6005 = trunc i32 %6004 to i8
  %6006 = and i8 %6005, 1
  %6007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6006, i8* %6007, align 1
  %6008 = icmp eq i32 %5991, 0
  %6009 = zext i1 %6008 to i8
  %6010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6009, i8* %6010, align 1
  %6011 = lshr i32 %5991, 31
  %6012 = trunc i32 %6011 to i8
  %6013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6012, i8* %6013, align 1
  %6014 = lshr i32 %5985, 31
  %6015 = lshr i32 %5987, 31
  %6016 = xor i32 %6015, %6014
  %6017 = xor i32 %6011, %6014
  %6018 = add i32 %6017, %6016
  %6019 = icmp eq i32 %6018, 2
  %6020 = zext i1 %6019 to i8
  %6021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6020, i8* %6021, align 1
  store %struct.Memory* %loadMem_438ad5, %struct.Memory** %MEMORY
  %loadMem_438ad7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6023 = getelementptr inbounds %struct.GPR, %struct.GPR* %6022, i32 0, i32 33
  %6024 = getelementptr inbounds %struct.Reg, %struct.Reg* %6023, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %6024 to i64*
  %6025 = load i64, i64* %PC.i247
  %6026 = add i64 %6025, 270
  %6027 = load i64, i64* %PC.i247
  %6028 = add i64 %6027, 6
  %6029 = load i64, i64* %PC.i247
  %6030 = add i64 %6029, 6
  store i64 %6030, i64* %PC.i247
  %6031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6032 = load i8, i8* %6031, align 1
  %6033 = icmp eq i8 %6032, 0
  %6034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6035 = load i8, i8* %6034, align 1
  %6036 = icmp ne i8 %6035, 0
  %6037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6038 = load i8, i8* %6037, align 1
  %6039 = icmp ne i8 %6038, 0
  %6040 = xor i1 %6036, %6039
  %6041 = xor i1 %6040, true
  %6042 = and i1 %6033, %6041
  %6043 = zext i1 %6042 to i8
  store i8 %6043, i8* %BRANCH_TAKEN, align 1
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6045 = select i1 %6042, i64 %6026, i64 %6028
  store i64 %6045, i64* %6044, align 8
  store %struct.Memory* %loadMem_438ad7, %struct.Memory** %MEMORY
  %loadBr_438ad7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438ad7 = icmp eq i8 %loadBr_438ad7, 1
  br i1 %cmpBr_438ad7, label %block_.L_438be5, label %block_.L_438add

block_.L_438add:                                  ; preds = %block_438aa2, %block_.L_438a85
  %loadMem_438add = load %struct.Memory*, %struct.Memory** %MEMORY
  %6046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6047 = getelementptr inbounds %struct.GPR, %struct.GPR* %6046, i32 0, i32 33
  %6048 = getelementptr inbounds %struct.Reg, %struct.Reg* %6047, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %6048 to i64*
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6050 = getelementptr inbounds %struct.GPR, %struct.GPR* %6049, i32 0, i32 1
  %6051 = getelementptr inbounds %struct.Reg, %struct.Reg* %6050, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %6051 to i64*
  %6052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6053 = getelementptr inbounds %struct.GPR, %struct.GPR* %6052, i32 0, i32 15
  %6054 = getelementptr inbounds %struct.Reg, %struct.Reg* %6053, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %6054 to i64*
  %6055 = load i64, i64* %RBP.i246
  %6056 = sub i64 %6055, 64
  %6057 = load i64, i64* %PC.i244
  %6058 = add i64 %6057, 3
  store i64 %6058, i64* %PC.i244
  %6059 = inttoptr i64 %6056 to i32*
  %6060 = load i32, i32* %6059
  %6061 = zext i32 %6060 to i64
  store i64 %6061, i64* %RAX.i245, align 8
  store %struct.Memory* %loadMem_438add, %struct.Memory** %MEMORY
  %loadMem_438ae0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6063 = getelementptr inbounds %struct.GPR, %struct.GPR* %6062, i32 0, i32 33
  %6064 = getelementptr inbounds %struct.Reg, %struct.Reg* %6063, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %6064 to i64*
  %6065 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6066 = getelementptr inbounds %struct.GPR, %struct.GPR* %6065, i32 0, i32 1
  %6067 = getelementptr inbounds %struct.Reg, %struct.Reg* %6066, i32 0, i32 0
  %RAX.i243 = bitcast %union.anon* %6067 to i64*
  %6068 = load i64, i64* %RAX.i243
  %6069 = load i64, i64* %PC.i242
  %6070 = add i64 %6069, 3
  store i64 %6070, i64* %PC.i242
  %6071 = trunc i64 %6068 to i32
  %6072 = sub i32 %6071, 20
  %6073 = zext i32 %6072 to i64
  store i64 %6073, i64* %RAX.i243, align 8
  %6074 = icmp ult i32 %6071, 20
  %6075 = zext i1 %6074 to i8
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6075, i8* %6076, align 1
  %6077 = and i32 %6072, 255
  %6078 = call i32 @llvm.ctpop.i32(i32 %6077)
  %6079 = trunc i32 %6078 to i8
  %6080 = and i8 %6079, 1
  %6081 = xor i8 %6080, 1
  %6082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6081, i8* %6082, align 1
  %6083 = xor i64 20, %6068
  %6084 = trunc i64 %6083 to i32
  %6085 = xor i32 %6084, %6072
  %6086 = lshr i32 %6085, 4
  %6087 = trunc i32 %6086 to i8
  %6088 = and i8 %6087, 1
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6088, i8* %6089, align 1
  %6090 = icmp eq i32 %6072, 0
  %6091 = zext i1 %6090 to i8
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6091, i8* %6092, align 1
  %6093 = lshr i32 %6072, 31
  %6094 = trunc i32 %6093 to i8
  %6095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6094, i8* %6095, align 1
  %6096 = lshr i32 %6071, 31
  %6097 = xor i32 %6093, %6096
  %6098 = add i32 %6097, %6096
  %6099 = icmp eq i32 %6098, 2
  %6100 = zext i1 %6099 to i8
  %6101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6100, i8* %6101, align 1
  store %struct.Memory* %loadMem_438ae0, %struct.Memory** %MEMORY
  %loadMem_438ae3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 33
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 1
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RAX.i241 = bitcast %union.anon* %6107 to i64*
  %6108 = load i64, i64* %RAX.i241
  %6109 = load i64, i64* %PC.i240
  %6110 = add i64 %6109, 3
  store i64 %6110, i64* %PC.i240
  %6111 = trunc i64 %6108 to i32
  %6112 = sub i32 %6111, 1
  %6113 = zext i32 %6112 to i64
  store i64 %6113, i64* %RAX.i241, align 8
  %6114 = icmp ult i32 %6111, 1
  %6115 = zext i1 %6114 to i8
  %6116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6115, i8* %6116, align 1
  %6117 = and i32 %6112, 255
  %6118 = call i32 @llvm.ctpop.i32(i32 %6117)
  %6119 = trunc i32 %6118 to i8
  %6120 = and i8 %6119, 1
  %6121 = xor i8 %6120, 1
  %6122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6121, i8* %6122, align 1
  %6123 = xor i64 1, %6108
  %6124 = trunc i64 %6123 to i32
  %6125 = xor i32 %6124, %6112
  %6126 = lshr i32 %6125, 4
  %6127 = trunc i32 %6126 to i8
  %6128 = and i8 %6127, 1
  %6129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6128, i8* %6129, align 1
  %6130 = icmp eq i32 %6112, 0
  %6131 = zext i1 %6130 to i8
  %6132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6131, i8* %6132, align 1
  %6133 = lshr i32 %6112, 31
  %6134 = trunc i32 %6133 to i8
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6134, i8* %6135, align 1
  %6136 = lshr i32 %6111, 31
  %6137 = xor i32 %6133, %6136
  %6138 = add i32 %6137, %6136
  %6139 = icmp eq i32 %6138, 2
  %6140 = zext i1 %6139 to i8
  %6141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6140, i8* %6141, align 1
  store %struct.Memory* %loadMem_438ae3, %struct.Memory** %MEMORY
  %loadMem_438ae6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 33
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %6144 to i64*
  %6145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6146 = getelementptr inbounds %struct.GPR, %struct.GPR* %6145, i32 0, i32 1
  %6147 = getelementptr inbounds %struct.Reg, %struct.Reg* %6146, i32 0, i32 0
  %EAX.i238 = bitcast %union.anon* %6147 to i32*
  %6148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6149 = getelementptr inbounds %struct.GPR, %struct.GPR* %6148, i32 0, i32 5
  %6150 = getelementptr inbounds %struct.Reg, %struct.Reg* %6149, i32 0, i32 0
  %RCX.i239 = bitcast %union.anon* %6150 to i64*
  %6151 = load i32, i32* %EAX.i238
  %6152 = zext i32 %6151 to i64
  %6153 = load i64, i64* %PC.i237
  %6154 = add i64 %6153, 3
  store i64 %6154, i64* %PC.i237
  %6155 = shl i64 %6152, 32
  %6156 = ashr exact i64 %6155, 32
  store i64 %6156, i64* %RCX.i239, align 8
  store %struct.Memory* %loadMem_438ae6, %struct.Memory** %MEMORY
  %loadMem_438ae9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 33
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 1
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %6162 to i64*
  %6163 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6164 = getelementptr inbounds %struct.GPR, %struct.GPR* %6163, i32 0, i32 5
  %6165 = getelementptr inbounds %struct.Reg, %struct.Reg* %6164, i32 0, i32 0
  %RCX.i236 = bitcast %union.anon* %6165 to i64*
  %6166 = load i64, i64* %RCX.i236
  %6167 = add i64 %6166, 12099168
  %6168 = load i64, i64* %PC.i234
  %6169 = add i64 %6168, 8
  store i64 %6169, i64* %PC.i234
  %6170 = inttoptr i64 %6167 to i8*
  %6171 = load i8, i8* %6170
  %6172 = zext i8 %6171 to i64
  store i64 %6172, i64* %RAX.i235, align 8
  store %struct.Memory* %loadMem_438ae9, %struct.Memory** %MEMORY
  %loadMem_438af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6174 = getelementptr inbounds %struct.GPR, %struct.GPR* %6173, i32 0, i32 33
  %6175 = getelementptr inbounds %struct.Reg, %struct.Reg* %6174, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %6175 to i64*
  %6176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6177 = getelementptr inbounds %struct.GPR, %struct.GPR* %6176, i32 0, i32 1
  %6178 = getelementptr inbounds %struct.Reg, %struct.Reg* %6177, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %6178 to i32*
  %6179 = load i32, i32* %EAX.i233
  %6180 = zext i32 %6179 to i64
  %6181 = load i64, i64* %PC.i232
  %6182 = add i64 %6181, 3
  store i64 %6182, i64* %PC.i232
  %6183 = sub i32 %6179, 3
  %6184 = icmp ult i32 %6179, 3
  %6185 = zext i1 %6184 to i8
  %6186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6185, i8* %6186, align 1
  %6187 = and i32 %6183, 255
  %6188 = call i32 @llvm.ctpop.i32(i32 %6187)
  %6189 = trunc i32 %6188 to i8
  %6190 = and i8 %6189, 1
  %6191 = xor i8 %6190, 1
  %6192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6191, i8* %6192, align 1
  %6193 = xor i64 3, %6180
  %6194 = trunc i64 %6193 to i32
  %6195 = xor i32 %6194, %6183
  %6196 = lshr i32 %6195, 4
  %6197 = trunc i32 %6196 to i8
  %6198 = and i8 %6197, 1
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6198, i8* %6199, align 1
  %6200 = icmp eq i32 %6183, 0
  %6201 = zext i1 %6200 to i8
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6201, i8* %6202, align 1
  %6203 = lshr i32 %6183, 31
  %6204 = trunc i32 %6203 to i8
  %6205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6204, i8* %6205, align 1
  %6206 = lshr i32 %6179, 31
  %6207 = xor i32 %6203, %6206
  %6208 = add i32 %6207, %6206
  %6209 = icmp eq i32 %6208, 2
  %6210 = zext i1 %6209 to i8
  %6211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6210, i8* %6211, align 1
  store %struct.Memory* %loadMem_438af1, %struct.Memory** %MEMORY
  %loadMem_438af4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 33
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %6214 to i64*
  %6215 = load i64, i64* %PC.i231
  %6216 = add i64 %6215, 65
  %6217 = load i64, i64* %PC.i231
  %6218 = add i64 %6217, 6
  %6219 = load i64, i64* %PC.i231
  %6220 = add i64 %6219, 6
  store i64 %6220, i64* %PC.i231
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6222 = load i8, i8* %6221, align 1
  store i8 %6222, i8* %BRANCH_TAKEN, align 1
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6224 = icmp ne i8 %6222, 0
  %6225 = select i1 %6224, i64 %6216, i64 %6218
  store i64 %6225, i64* %6223, align 8
  store %struct.Memory* %loadMem_438af4, %struct.Memory** %MEMORY
  %loadBr_438af4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438af4 = icmp eq i8 %loadBr_438af4, 1
  br i1 %cmpBr_438af4, label %block_.L_438b35, label %block_438afa

block_438afa:                                     ; preds = %block_.L_438add
  %loadMem_438afa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6227 = getelementptr inbounds %struct.GPR, %struct.GPR* %6226, i32 0, i32 33
  %6228 = getelementptr inbounds %struct.Reg, %struct.Reg* %6227, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %6228 to i64*
  %6229 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6230 = getelementptr inbounds %struct.GPR, %struct.GPR* %6229, i32 0, i32 1
  %6231 = getelementptr inbounds %struct.Reg, %struct.Reg* %6230, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %6231 to i64*
  %6232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6233 = getelementptr inbounds %struct.GPR, %struct.GPR* %6232, i32 0, i32 15
  %6234 = getelementptr inbounds %struct.Reg, %struct.Reg* %6233, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %6234 to i64*
  %6235 = load i64, i64* %RBP.i230
  %6236 = sub i64 %6235, 64
  %6237 = load i64, i64* %PC.i228
  %6238 = add i64 %6237, 3
  store i64 %6238, i64* %PC.i228
  %6239 = inttoptr i64 %6236 to i32*
  %6240 = load i32, i32* %6239
  %6241 = zext i32 %6240 to i64
  store i64 %6241, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_438afa, %struct.Memory** %MEMORY
  %loadMem_438afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6243 = getelementptr inbounds %struct.GPR, %struct.GPR* %6242, i32 0, i32 33
  %6244 = getelementptr inbounds %struct.Reg, %struct.Reg* %6243, i32 0, i32 0
  %PC.i226 = bitcast %union.anon* %6244 to i64*
  %6245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6246 = getelementptr inbounds %struct.GPR, %struct.GPR* %6245, i32 0, i32 1
  %6247 = getelementptr inbounds %struct.Reg, %struct.Reg* %6246, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %6247 to i64*
  %6248 = load i64, i64* %RAX.i227
  %6249 = load i64, i64* %PC.i226
  %6250 = add i64 %6249, 3
  store i64 %6250, i64* %PC.i226
  %6251 = trunc i64 %6248 to i32
  %6252 = sub i32 %6251, 20
  %6253 = zext i32 %6252 to i64
  store i64 %6253, i64* %RAX.i227, align 8
  %6254 = icmp ult i32 %6251, 20
  %6255 = zext i1 %6254 to i8
  %6256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6255, i8* %6256, align 1
  %6257 = and i32 %6252, 255
  %6258 = call i32 @llvm.ctpop.i32(i32 %6257)
  %6259 = trunc i32 %6258 to i8
  %6260 = and i8 %6259, 1
  %6261 = xor i8 %6260, 1
  %6262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6261, i8* %6262, align 1
  %6263 = xor i64 20, %6248
  %6264 = trunc i64 %6263 to i32
  %6265 = xor i32 %6264, %6252
  %6266 = lshr i32 %6265, 4
  %6267 = trunc i32 %6266 to i8
  %6268 = and i8 %6267, 1
  %6269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6268, i8* %6269, align 1
  %6270 = icmp eq i32 %6252, 0
  %6271 = zext i1 %6270 to i8
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6271, i8* %6272, align 1
  %6273 = lshr i32 %6252, 31
  %6274 = trunc i32 %6273 to i8
  %6275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6274, i8* %6275, align 1
  %6276 = lshr i32 %6251, 31
  %6277 = xor i32 %6273, %6276
  %6278 = add i32 %6277, %6276
  %6279 = icmp eq i32 %6278, 2
  %6280 = zext i1 %6279 to i8
  %6281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6280, i8* %6281, align 1
  store %struct.Memory* %loadMem_438afd, %struct.Memory** %MEMORY
  %loadMem_438b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6283 = getelementptr inbounds %struct.GPR, %struct.GPR* %6282, i32 0, i32 33
  %6284 = getelementptr inbounds %struct.Reg, %struct.Reg* %6283, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %6284 to i64*
  %6285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6286 = getelementptr inbounds %struct.GPR, %struct.GPR* %6285, i32 0, i32 1
  %6287 = getelementptr inbounds %struct.Reg, %struct.Reg* %6286, i32 0, i32 0
  %RAX.i225 = bitcast %union.anon* %6287 to i64*
  %6288 = load i64, i64* %RAX.i225
  %6289 = load i64, i64* %PC.i224
  %6290 = add i64 %6289, 3
  store i64 %6290, i64* %PC.i224
  %6291 = trunc i64 %6288 to i32
  %6292 = sub i32 %6291, 1
  %6293 = zext i32 %6292 to i64
  store i64 %6293, i64* %RAX.i225, align 8
  %6294 = icmp ult i32 %6291, 1
  %6295 = zext i1 %6294 to i8
  %6296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6295, i8* %6296, align 1
  %6297 = and i32 %6292, 255
  %6298 = call i32 @llvm.ctpop.i32(i32 %6297)
  %6299 = trunc i32 %6298 to i8
  %6300 = and i8 %6299, 1
  %6301 = xor i8 %6300, 1
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6301, i8* %6302, align 1
  %6303 = xor i64 1, %6288
  %6304 = trunc i64 %6303 to i32
  %6305 = xor i32 %6304, %6292
  %6306 = lshr i32 %6305, 4
  %6307 = trunc i32 %6306 to i8
  %6308 = and i8 %6307, 1
  %6309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6308, i8* %6309, align 1
  %6310 = icmp eq i32 %6292, 0
  %6311 = zext i1 %6310 to i8
  %6312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6311, i8* %6312, align 1
  %6313 = lshr i32 %6292, 31
  %6314 = trunc i32 %6313 to i8
  %6315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6314, i8* %6315, align 1
  %6316 = lshr i32 %6291, 31
  %6317 = xor i32 %6313, %6316
  %6318 = add i32 %6317, %6316
  %6319 = icmp eq i32 %6318, 2
  %6320 = zext i1 %6319 to i8
  %6321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6320, i8* %6321, align 1
  store %struct.Memory* %loadMem_438b00, %struct.Memory** %MEMORY
  %loadMem_438b03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6323 = getelementptr inbounds %struct.GPR, %struct.GPR* %6322, i32 0, i32 33
  %6324 = getelementptr inbounds %struct.Reg, %struct.Reg* %6323, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %6324 to i64*
  %6325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6326 = getelementptr inbounds %struct.GPR, %struct.GPR* %6325, i32 0, i32 1
  %6327 = getelementptr inbounds %struct.Reg, %struct.Reg* %6326, i32 0, i32 0
  %EAX.i222 = bitcast %union.anon* %6327 to i32*
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6329 = getelementptr inbounds %struct.GPR, %struct.GPR* %6328, i32 0, i32 5
  %6330 = getelementptr inbounds %struct.Reg, %struct.Reg* %6329, i32 0, i32 0
  %RCX.i223 = bitcast %union.anon* %6330 to i64*
  %6331 = load i32, i32* %EAX.i222
  %6332 = zext i32 %6331 to i64
  %6333 = load i64, i64* %PC.i221
  %6334 = add i64 %6333, 3
  store i64 %6334, i64* %PC.i221
  %6335 = shl i64 %6332, 32
  %6336 = ashr exact i64 %6335, 32
  store i64 %6336, i64* %RCX.i223, align 8
  store %struct.Memory* %loadMem_438b03, %struct.Memory** %MEMORY
  %loadMem_438b06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6338 = getelementptr inbounds %struct.GPR, %struct.GPR* %6337, i32 0, i32 33
  %6339 = getelementptr inbounds %struct.Reg, %struct.Reg* %6338, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %6339 to i64*
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6341 = getelementptr inbounds %struct.GPR, %struct.GPR* %6340, i32 0, i32 1
  %6342 = getelementptr inbounds %struct.Reg, %struct.Reg* %6341, i32 0, i32 0
  %RAX.i218 = bitcast %union.anon* %6342 to i64*
  %6343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6344 = getelementptr inbounds %struct.GPR, %struct.GPR* %6343, i32 0, i32 5
  %6345 = getelementptr inbounds %struct.Reg, %struct.Reg* %6344, i32 0, i32 0
  %RCX.i219 = bitcast %union.anon* %6345 to i64*
  %6346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6347 = getelementptr inbounds %struct.GPR, %struct.GPR* %6346, i32 0, i32 15
  %6348 = getelementptr inbounds %struct.Reg, %struct.Reg* %6347, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %6348 to i64*
  %6349 = load i64, i64* %RBP.i220
  %6350 = load i64, i64* %RCX.i219
  %6351 = add i64 %6349, -880
  %6352 = add i64 %6351, %6350
  %6353 = load i64, i64* %PC.i217
  %6354 = add i64 %6353, 8
  store i64 %6354, i64* %PC.i217
  %6355 = inttoptr i64 %6352 to i8*
  %6356 = load i8, i8* %6355
  %6357 = sext i8 %6356 to i64
  %6358 = and i64 %6357, 4294967295
  store i64 %6358, i64* %RAX.i218, align 8
  store %struct.Memory* %loadMem_438b06, %struct.Memory** %MEMORY
  %loadMem_438b0e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6360 = getelementptr inbounds %struct.GPR, %struct.GPR* %6359, i32 0, i32 33
  %6361 = getelementptr inbounds %struct.Reg, %struct.Reg* %6360, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %6361 to i64*
  %6362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6363 = getelementptr inbounds %struct.GPR, %struct.GPR* %6362, i32 0, i32 5
  %6364 = getelementptr inbounds %struct.Reg, %struct.Reg* %6363, i32 0, i32 0
  %RCX.i215 = bitcast %union.anon* %6364 to i64*
  %6365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6366 = getelementptr inbounds %struct.GPR, %struct.GPR* %6365, i32 0, i32 15
  %6367 = getelementptr inbounds %struct.Reg, %struct.Reg* %6366, i32 0, i32 0
  %RBP.i216 = bitcast %union.anon* %6367 to i64*
  %6368 = load i64, i64* %RBP.i216
  %6369 = sub i64 %6368, 64
  %6370 = load i64, i64* %PC.i214
  %6371 = add i64 %6370, 4
  store i64 %6371, i64* %PC.i214
  %6372 = inttoptr i64 %6369 to i32*
  %6373 = load i32, i32* %6372
  %6374 = sext i32 %6373 to i64
  store i64 %6374, i64* %RCX.i215, align 8
  store %struct.Memory* %loadMem_438b0e, %struct.Memory** %MEMORY
  %loadMem_438b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6376 = getelementptr inbounds %struct.GPR, %struct.GPR* %6375, i32 0, i32 33
  %6377 = getelementptr inbounds %struct.Reg, %struct.Reg* %6376, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %6377 to i64*
  %6378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6379 = getelementptr inbounds %struct.GPR, %struct.GPR* %6378, i32 0, i32 5
  %6380 = getelementptr inbounds %struct.Reg, %struct.Reg* %6379, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %6380 to i64*
  %6381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6382 = getelementptr inbounds %struct.GPR, %struct.GPR* %6381, i32 0, i32 7
  %6383 = getelementptr inbounds %struct.Reg, %struct.Reg* %6382, i32 0, i32 0
  %RDX.i212 = bitcast %union.anon* %6383 to i64*
  %6384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6385 = getelementptr inbounds %struct.GPR, %struct.GPR* %6384, i32 0, i32 15
  %6386 = getelementptr inbounds %struct.Reg, %struct.Reg* %6385, i32 0, i32 0
  %RBP.i213 = bitcast %union.anon* %6386 to i64*
  %6387 = load i64, i64* %RBP.i213
  %6388 = load i64, i64* %RCX.i211
  %6389 = add i64 %6387, -480
  %6390 = add i64 %6389, %6388
  %6391 = load i64, i64* %PC.i210
  %6392 = add i64 %6391, 8
  store i64 %6392, i64* %PC.i210
  %6393 = inttoptr i64 %6390 to i8*
  %6394 = load i8, i8* %6393
  %6395 = sext i8 %6394 to i64
  %6396 = and i64 %6395, 4294967295
  store i64 %6396, i64* %RDX.i212, align 8
  store %struct.Memory* %loadMem_438b12, %struct.Memory** %MEMORY
  %loadMem_438b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6398 = getelementptr inbounds %struct.GPR, %struct.GPR* %6397, i32 0, i32 33
  %6399 = getelementptr inbounds %struct.Reg, %struct.Reg* %6398, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %6399 to i64*
  %6400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6401 = getelementptr inbounds %struct.GPR, %struct.GPR* %6400, i32 0, i32 9
  %6402 = getelementptr inbounds %struct.Reg, %struct.Reg* %6401, i32 0, i32 0
  %RSI.i208 = bitcast %union.anon* %6402 to i64*
  %6403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6404 = getelementptr inbounds %struct.GPR, %struct.GPR* %6403, i32 0, i32 15
  %6405 = getelementptr inbounds %struct.Reg, %struct.Reg* %6404, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %6405 to i64*
  %6406 = load i64, i64* %RBP.i209
  %6407 = sub i64 %6406, 64
  %6408 = load i64, i64* %PC.i207
  %6409 = add i64 %6408, 3
  store i64 %6409, i64* %PC.i207
  %6410 = inttoptr i64 %6407 to i32*
  %6411 = load i32, i32* %6410
  %6412 = zext i32 %6411 to i64
  store i64 %6412, i64* %RSI.i208, align 8
  store %struct.Memory* %loadMem_438b1a, %struct.Memory** %MEMORY
  %loadMem_438b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 33
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %PC.i205 = bitcast %union.anon* %6415 to i64*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 9
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %RSI.i206 = bitcast %union.anon* %6418 to i64*
  %6419 = load i64, i64* %RSI.i206
  %6420 = load i64, i64* %PC.i205
  %6421 = add i64 %6420, 3
  store i64 %6421, i64* %PC.i205
  %6422 = trunc i64 %6419 to i32
  %6423 = sub i32 %6422, 1
  %6424 = zext i32 %6423 to i64
  store i64 %6424, i64* %RSI.i206, align 8
  %6425 = icmp ult i32 %6422, 1
  %6426 = zext i1 %6425 to i8
  %6427 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6426, i8* %6427, align 1
  %6428 = and i32 %6423, 255
  %6429 = call i32 @llvm.ctpop.i32(i32 %6428)
  %6430 = trunc i32 %6429 to i8
  %6431 = and i8 %6430, 1
  %6432 = xor i8 %6431, 1
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6432, i8* %6433, align 1
  %6434 = xor i64 1, %6419
  %6435 = trunc i64 %6434 to i32
  %6436 = xor i32 %6435, %6423
  %6437 = lshr i32 %6436, 4
  %6438 = trunc i32 %6437 to i8
  %6439 = and i8 %6438, 1
  %6440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6439, i8* %6440, align 1
  %6441 = icmp eq i32 %6423, 0
  %6442 = zext i1 %6441 to i8
  %6443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6442, i8* %6443, align 1
  %6444 = lshr i32 %6423, 31
  %6445 = trunc i32 %6444 to i8
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6445, i8* %6446, align 1
  %6447 = lshr i32 %6422, 31
  %6448 = xor i32 %6444, %6447
  %6449 = add i32 %6448, %6447
  %6450 = icmp eq i32 %6449, 2
  %6451 = zext i1 %6450 to i8
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6451, i8* %6452, align 1
  store %struct.Memory* %loadMem_438b1d, %struct.Memory** %MEMORY
  %loadMem_438b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6454 = getelementptr inbounds %struct.GPR, %struct.GPR* %6453, i32 0, i32 33
  %6455 = getelementptr inbounds %struct.Reg, %struct.Reg* %6454, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %6455 to i64*
  %6456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6457 = getelementptr inbounds %struct.GPR, %struct.GPR* %6456, i32 0, i32 9
  %6458 = getelementptr inbounds %struct.Reg, %struct.Reg* %6457, i32 0, i32 0
  %ESI.i203 = bitcast %union.anon* %6458 to i32*
  %6459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6460 = getelementptr inbounds %struct.GPR, %struct.GPR* %6459, i32 0, i32 5
  %6461 = getelementptr inbounds %struct.Reg, %struct.Reg* %6460, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %6461 to i64*
  %6462 = load i32, i32* %ESI.i203
  %6463 = zext i32 %6462 to i64
  %6464 = load i64, i64* %PC.i202
  %6465 = add i64 %6464, 3
  store i64 %6465, i64* %PC.i202
  %6466 = shl i64 %6463, 32
  %6467 = ashr exact i64 %6466, 32
  store i64 %6467, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_438b20, %struct.Memory** %MEMORY
  %loadMem_438b23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6469 = getelementptr inbounds %struct.GPR, %struct.GPR* %6468, i32 0, i32 33
  %6470 = getelementptr inbounds %struct.Reg, %struct.Reg* %6469, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %6470 to i64*
  %6471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6472 = getelementptr inbounds %struct.GPR, %struct.GPR* %6471, i32 0, i32 5
  %6473 = getelementptr inbounds %struct.Reg, %struct.Reg* %6472, i32 0, i32 0
  %RCX.i199 = bitcast %union.anon* %6473 to i64*
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6475 = getelementptr inbounds %struct.GPR, %struct.GPR* %6474, i32 0, i32 9
  %6476 = getelementptr inbounds %struct.Reg, %struct.Reg* %6475, i32 0, i32 0
  %RSI.i200 = bitcast %union.anon* %6476 to i64*
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6478 = getelementptr inbounds %struct.GPR, %struct.GPR* %6477, i32 0, i32 15
  %6479 = getelementptr inbounds %struct.Reg, %struct.Reg* %6478, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %6479 to i64*
  %6480 = load i64, i64* %RBP.i201
  %6481 = load i64, i64* %RCX.i199
  %6482 = add i64 %6480, -880
  %6483 = add i64 %6482, %6481
  %6484 = load i64, i64* %PC.i198
  %6485 = add i64 %6484, 8
  store i64 %6485, i64* %PC.i198
  %6486 = inttoptr i64 %6483 to i8*
  %6487 = load i8, i8* %6486
  %6488 = sext i8 %6487 to i64
  %6489 = and i64 %6488, 4294967295
  store i64 %6489, i64* %RSI.i200, align 8
  store %struct.Memory* %loadMem_438b23, %struct.Memory** %MEMORY
  %loadMem_438b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6491 = getelementptr inbounds %struct.GPR, %struct.GPR* %6490, i32 0, i32 33
  %6492 = getelementptr inbounds %struct.Reg, %struct.Reg* %6491, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %6492 to i64*
  %6493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6494 = getelementptr inbounds %struct.GPR, %struct.GPR* %6493, i32 0, i32 9
  %6495 = getelementptr inbounds %struct.Reg, %struct.Reg* %6494, i32 0, i32 0
  %ESI.i196 = bitcast %union.anon* %6495 to i32*
  %6496 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6497 = getelementptr inbounds %struct.GPR, %struct.GPR* %6496, i32 0, i32 7
  %6498 = getelementptr inbounds %struct.Reg, %struct.Reg* %6497, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %6498 to i64*
  %6499 = load i64, i64* %RDX.i197
  %6500 = load i32, i32* %ESI.i196
  %6501 = zext i32 %6500 to i64
  %6502 = load i64, i64* %PC.i195
  %6503 = add i64 %6502, 2
  store i64 %6503, i64* %PC.i195
  %6504 = trunc i64 %6499 to i32
  %6505 = sub i32 %6504, %6500
  %6506 = zext i32 %6505 to i64
  store i64 %6506, i64* %RDX.i197, align 8
  %6507 = icmp ult i32 %6504, %6500
  %6508 = zext i1 %6507 to i8
  %6509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6508, i8* %6509, align 1
  %6510 = and i32 %6505, 255
  %6511 = call i32 @llvm.ctpop.i32(i32 %6510)
  %6512 = trunc i32 %6511 to i8
  %6513 = and i8 %6512, 1
  %6514 = xor i8 %6513, 1
  %6515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6514, i8* %6515, align 1
  %6516 = xor i64 %6501, %6499
  %6517 = trunc i64 %6516 to i32
  %6518 = xor i32 %6517, %6505
  %6519 = lshr i32 %6518, 4
  %6520 = trunc i32 %6519 to i8
  %6521 = and i8 %6520, 1
  %6522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6521, i8* %6522, align 1
  %6523 = icmp eq i32 %6505, 0
  %6524 = zext i1 %6523 to i8
  %6525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6524, i8* %6525, align 1
  %6526 = lshr i32 %6505, 31
  %6527 = trunc i32 %6526 to i8
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6527, i8* %6528, align 1
  %6529 = lshr i32 %6504, 31
  %6530 = lshr i32 %6500, 31
  %6531 = xor i32 %6530, %6529
  %6532 = xor i32 %6526, %6529
  %6533 = add i32 %6532, %6531
  %6534 = icmp eq i32 %6533, 2
  %6535 = zext i1 %6534 to i8
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6535, i8* %6536, align 1
  store %struct.Memory* %loadMem_438b2b, %struct.Memory** %MEMORY
  %loadMem_438b2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 33
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %6539 to i64*
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 1
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %EAX.i193 = bitcast %union.anon* %6542 to i32*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 7
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %EDX.i194 = bitcast %union.anon* %6545 to i32*
  %6546 = load i32, i32* %EAX.i193
  %6547 = zext i32 %6546 to i64
  %6548 = load i32, i32* %EDX.i194
  %6549 = zext i32 %6548 to i64
  %6550 = load i64, i64* %PC.i192
  %6551 = add i64 %6550, 2
  store i64 %6551, i64* %PC.i192
  %6552 = sub i32 %6546, %6548
  %6553 = icmp ult i32 %6546, %6548
  %6554 = zext i1 %6553 to i8
  %6555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6554, i8* %6555, align 1
  %6556 = and i32 %6552, 255
  %6557 = call i32 @llvm.ctpop.i32(i32 %6556)
  %6558 = trunc i32 %6557 to i8
  %6559 = and i8 %6558, 1
  %6560 = xor i8 %6559, 1
  %6561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6560, i8* %6561, align 1
  %6562 = xor i64 %6549, %6547
  %6563 = trunc i64 %6562 to i32
  %6564 = xor i32 %6563, %6552
  %6565 = lshr i32 %6564, 4
  %6566 = trunc i32 %6565 to i8
  %6567 = and i8 %6566, 1
  %6568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6567, i8* %6568, align 1
  %6569 = icmp eq i32 %6552, 0
  %6570 = zext i1 %6569 to i8
  %6571 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6570, i8* %6571, align 1
  %6572 = lshr i32 %6552, 31
  %6573 = trunc i32 %6572 to i8
  %6574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6573, i8* %6574, align 1
  %6575 = lshr i32 %6546, 31
  %6576 = lshr i32 %6548, 31
  %6577 = xor i32 %6576, %6575
  %6578 = xor i32 %6572, %6575
  %6579 = add i32 %6578, %6577
  %6580 = icmp eq i32 %6579, 2
  %6581 = zext i1 %6580 to i8
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6581, i8* %6582, align 1
  store %struct.Memory* %loadMem_438b2d, %struct.Memory** %MEMORY
  %loadMem_438b2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %6583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6584 = getelementptr inbounds %struct.GPR, %struct.GPR* %6583, i32 0, i32 33
  %6585 = getelementptr inbounds %struct.Reg, %struct.Reg* %6584, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6585 to i64*
  %6586 = load i64, i64* %PC.i191
  %6587 = add i64 %6586, 182
  %6588 = load i64, i64* %PC.i191
  %6589 = add i64 %6588, 6
  %6590 = load i64, i64* %PC.i191
  %6591 = add i64 %6590, 6
  store i64 %6591, i64* %PC.i191
  %6592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6593 = load i8, i8* %6592, align 1
  %6594 = icmp eq i8 %6593, 0
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6596 = load i8, i8* %6595, align 1
  %6597 = icmp ne i8 %6596, 0
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6599 = load i8, i8* %6598, align 1
  %6600 = icmp ne i8 %6599, 0
  %6601 = xor i1 %6597, %6600
  %6602 = xor i1 %6601, true
  %6603 = and i1 %6594, %6602
  %6604 = zext i1 %6603 to i8
  store i8 %6604, i8* %BRANCH_TAKEN, align 1
  %6605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6606 = select i1 %6603, i64 %6587, i64 %6589
  store i64 %6606, i64* %6605, align 8
  store %struct.Memory* %loadMem_438b2f, %struct.Memory** %MEMORY
  %loadBr_438b2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438b2f = icmp eq i8 %loadBr_438b2f, 1
  br i1 %cmpBr_438b2f, label %block_.L_438be5, label %block_.L_438b35

block_.L_438b35:                                  ; preds = %block_438afa, %block_.L_438add
  %loadMem_438b35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6607 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6608 = getelementptr inbounds %struct.GPR, %struct.GPR* %6607, i32 0, i32 33
  %6609 = getelementptr inbounds %struct.Reg, %struct.Reg* %6608, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6609 to i64*
  %6610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6611 = getelementptr inbounds %struct.GPR, %struct.GPR* %6610, i32 0, i32 1
  %6612 = getelementptr inbounds %struct.Reg, %struct.Reg* %6611, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %6612 to i64*
  %6613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6614 = getelementptr inbounds %struct.GPR, %struct.GPR* %6613, i32 0, i32 15
  %6615 = getelementptr inbounds %struct.Reg, %struct.Reg* %6614, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %6615 to i64*
  %6616 = load i64, i64* %RBP.i190
  %6617 = sub i64 %6616, 64
  %6618 = load i64, i64* %PC.i188
  %6619 = add i64 %6618, 3
  store i64 %6619, i64* %PC.i188
  %6620 = inttoptr i64 %6617 to i32*
  %6621 = load i32, i32* %6620
  %6622 = zext i32 %6621 to i64
  store i64 %6622, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_438b35, %struct.Memory** %MEMORY
  %loadMem_438b38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6624 = getelementptr inbounds %struct.GPR, %struct.GPR* %6623, i32 0, i32 33
  %6625 = getelementptr inbounds %struct.Reg, %struct.Reg* %6624, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6625 to i64*
  %6626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6627 = getelementptr inbounds %struct.GPR, %struct.GPR* %6626, i32 0, i32 1
  %6628 = getelementptr inbounds %struct.Reg, %struct.Reg* %6627, i32 0, i32 0
  %RAX.i187 = bitcast %union.anon* %6628 to i64*
  %6629 = load i64, i64* %RAX.i187
  %6630 = load i64, i64* %PC.i186
  %6631 = add i64 %6630, 3
  store i64 %6631, i64* %PC.i186
  %6632 = trunc i64 %6629 to i32
  %6633 = sub i32 %6632, 20
  %6634 = zext i32 %6633 to i64
  store i64 %6634, i64* %RAX.i187, align 8
  %6635 = icmp ult i32 %6632, 20
  %6636 = zext i1 %6635 to i8
  %6637 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6636, i8* %6637, align 1
  %6638 = and i32 %6633, 255
  %6639 = call i32 @llvm.ctpop.i32(i32 %6638)
  %6640 = trunc i32 %6639 to i8
  %6641 = and i8 %6640, 1
  %6642 = xor i8 %6641, 1
  %6643 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6642, i8* %6643, align 1
  %6644 = xor i64 20, %6629
  %6645 = trunc i64 %6644 to i32
  %6646 = xor i32 %6645, %6633
  %6647 = lshr i32 %6646, 4
  %6648 = trunc i32 %6647 to i8
  %6649 = and i8 %6648, 1
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6649, i8* %6650, align 1
  %6651 = icmp eq i32 %6633, 0
  %6652 = zext i1 %6651 to i8
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6652, i8* %6653, align 1
  %6654 = lshr i32 %6633, 31
  %6655 = trunc i32 %6654 to i8
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6655, i8* %6656, align 1
  %6657 = lshr i32 %6632, 31
  %6658 = xor i32 %6654, %6657
  %6659 = add i32 %6658, %6657
  %6660 = icmp eq i32 %6659, 2
  %6661 = zext i1 %6660 to i8
  %6662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6661, i8* %6662, align 1
  store %struct.Memory* %loadMem_438b38, %struct.Memory** %MEMORY
  %loadMem_438b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6664 = getelementptr inbounds %struct.GPR, %struct.GPR* %6663, i32 0, i32 33
  %6665 = getelementptr inbounds %struct.Reg, %struct.Reg* %6664, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %6665 to i64*
  %6666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6667 = getelementptr inbounds %struct.GPR, %struct.GPR* %6666, i32 0, i32 1
  %6668 = getelementptr inbounds %struct.Reg, %struct.Reg* %6667, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %6668 to i64*
  %6669 = load i64, i64* %RAX.i185
  %6670 = load i64, i64* %PC.i184
  %6671 = add i64 %6670, 3
  store i64 %6671, i64* %PC.i184
  %6672 = trunc i64 %6669 to i32
  %6673 = sub i32 %6672, 1
  %6674 = zext i32 %6673 to i64
  store i64 %6674, i64* %RAX.i185, align 8
  %6675 = icmp ult i32 %6672, 1
  %6676 = zext i1 %6675 to i8
  %6677 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6676, i8* %6677, align 1
  %6678 = and i32 %6673, 255
  %6679 = call i32 @llvm.ctpop.i32(i32 %6678)
  %6680 = trunc i32 %6679 to i8
  %6681 = and i8 %6680, 1
  %6682 = xor i8 %6681, 1
  %6683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6682, i8* %6683, align 1
  %6684 = xor i64 1, %6669
  %6685 = trunc i64 %6684 to i32
  %6686 = xor i32 %6685, %6673
  %6687 = lshr i32 %6686, 4
  %6688 = trunc i32 %6687 to i8
  %6689 = and i8 %6688, 1
  %6690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6689, i8* %6690, align 1
  %6691 = icmp eq i32 %6673, 0
  %6692 = zext i1 %6691 to i8
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6692, i8* %6693, align 1
  %6694 = lshr i32 %6673, 31
  %6695 = trunc i32 %6694 to i8
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6695, i8* %6696, align 1
  %6697 = lshr i32 %6672, 31
  %6698 = xor i32 %6694, %6697
  %6699 = add i32 %6698, %6697
  %6700 = icmp eq i32 %6699, 2
  %6701 = zext i1 %6700 to i8
  %6702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6701, i8* %6702, align 1
  store %struct.Memory* %loadMem_438b3b, %struct.Memory** %MEMORY
  %loadMem_438b3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6704 = getelementptr inbounds %struct.GPR, %struct.GPR* %6703, i32 0, i32 33
  %6705 = getelementptr inbounds %struct.Reg, %struct.Reg* %6704, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %6705 to i64*
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6707 = getelementptr inbounds %struct.GPR, %struct.GPR* %6706, i32 0, i32 1
  %6708 = getelementptr inbounds %struct.Reg, %struct.Reg* %6707, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %6708 to i32*
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 5
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %6711 to i64*
  %6712 = load i32, i32* %EAX.i182
  %6713 = zext i32 %6712 to i64
  %6714 = load i64, i64* %PC.i181
  %6715 = add i64 %6714, 3
  store i64 %6715, i64* %PC.i181
  %6716 = shl i64 %6713, 32
  %6717 = ashr exact i64 %6716, 32
  store i64 %6717, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_438b3e, %struct.Memory** %MEMORY
  %loadMem_438b41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 33
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %6720 to i64*
  %6721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6722 = getelementptr inbounds %struct.GPR, %struct.GPR* %6721, i32 0, i32 1
  %6723 = getelementptr inbounds %struct.Reg, %struct.Reg* %6722, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %6723 to i64*
  %6724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6725 = getelementptr inbounds %struct.GPR, %struct.GPR* %6724, i32 0, i32 5
  %6726 = getelementptr inbounds %struct.Reg, %struct.Reg* %6725, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %6726 to i64*
  %6727 = load i64, i64* %RCX.i180
  %6728 = add i64 %6727, 12099168
  %6729 = load i64, i64* %PC.i178
  %6730 = add i64 %6729, 8
  store i64 %6730, i64* %PC.i178
  %6731 = inttoptr i64 %6728 to i8*
  %6732 = load i8, i8* %6731
  %6733 = zext i8 %6732 to i64
  store i64 %6733, i64* %RAX.i179, align 8
  store %struct.Memory* %loadMem_438b41, %struct.Memory** %MEMORY
  %loadMem_438b49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6734 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6735 = getelementptr inbounds %struct.GPR, %struct.GPR* %6734, i32 0, i32 33
  %6736 = getelementptr inbounds %struct.Reg, %struct.Reg* %6735, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %6736 to i64*
  %6737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6738 = getelementptr inbounds %struct.GPR, %struct.GPR* %6737, i32 0, i32 1
  %6739 = getelementptr inbounds %struct.Reg, %struct.Reg* %6738, i32 0, i32 0
  %EAX.i177 = bitcast %union.anon* %6739 to i32*
  %6740 = load i32, i32* %EAX.i177
  %6741 = zext i32 %6740 to i64
  %6742 = load i64, i64* %PC.i176
  %6743 = add i64 %6742, 3
  store i64 %6743, i64* %PC.i176
  %6744 = sub i32 %6740, 3
  %6745 = icmp ult i32 %6740, 3
  %6746 = zext i1 %6745 to i8
  %6747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6746, i8* %6747, align 1
  %6748 = and i32 %6744, 255
  %6749 = call i32 @llvm.ctpop.i32(i32 %6748)
  %6750 = trunc i32 %6749 to i8
  %6751 = and i8 %6750, 1
  %6752 = xor i8 %6751, 1
  %6753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6752, i8* %6753, align 1
  %6754 = xor i64 3, %6741
  %6755 = trunc i64 %6754 to i32
  %6756 = xor i32 %6755, %6744
  %6757 = lshr i32 %6756, 4
  %6758 = trunc i32 %6757 to i8
  %6759 = and i8 %6758, 1
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6759, i8* %6760, align 1
  %6761 = icmp eq i32 %6744, 0
  %6762 = zext i1 %6761 to i8
  %6763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6762, i8* %6763, align 1
  %6764 = lshr i32 %6744, 31
  %6765 = trunc i32 %6764 to i8
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6765, i8* %6766, align 1
  %6767 = lshr i32 %6740, 31
  %6768 = xor i32 %6764, %6767
  %6769 = add i32 %6768, %6767
  %6770 = icmp eq i32 %6769, 2
  %6771 = zext i1 %6770 to i8
  %6772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6771, i8* %6772, align 1
  store %struct.Memory* %loadMem_438b49, %struct.Memory** %MEMORY
  %loadMem_438b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6774 = getelementptr inbounds %struct.GPR, %struct.GPR* %6773, i32 0, i32 33
  %6775 = getelementptr inbounds %struct.Reg, %struct.Reg* %6774, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %6775 to i64*
  %6776 = load i64, i64* %PC.i175
  %6777 = add i64 %6776, 65
  %6778 = load i64, i64* %PC.i175
  %6779 = add i64 %6778, 6
  %6780 = load i64, i64* %PC.i175
  %6781 = add i64 %6780, 6
  store i64 %6781, i64* %PC.i175
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6783 = load i8, i8* %6782, align 1
  store i8 %6783, i8* %BRANCH_TAKEN, align 1
  %6784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6785 = icmp ne i8 %6783, 0
  %6786 = select i1 %6785, i64 %6777, i64 %6779
  store i64 %6786, i64* %6784, align 8
  store %struct.Memory* %loadMem_438b4c, %struct.Memory** %MEMORY
  %loadBr_438b4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438b4c = icmp eq i8 %loadBr_438b4c, 1
  br i1 %cmpBr_438b4c, label %block_.L_438b8d, label %block_438b52

block_438b52:                                     ; preds = %block_.L_438b35
  %loadMem_438b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %6789 to i64*
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 1
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %6792 to i64*
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 15
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %6795 to i64*
  %6796 = load i64, i64* %RBP.i174
  %6797 = sub i64 %6796, 64
  %6798 = load i64, i64* %PC.i172
  %6799 = add i64 %6798, 3
  store i64 %6799, i64* %PC.i172
  %6800 = inttoptr i64 %6797 to i32*
  %6801 = load i32, i32* %6800
  %6802 = zext i32 %6801 to i64
  store i64 %6802, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_438b52, %struct.Memory** %MEMORY
  %loadMem_438b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 33
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 1
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %6808 to i64*
  %6809 = load i64, i64* %RAX.i171
  %6810 = load i64, i64* %PC.i170
  %6811 = add i64 %6810, 3
  store i64 %6811, i64* %PC.i170
  %6812 = trunc i64 %6809 to i32
  %6813 = sub i32 %6812, 20
  %6814 = zext i32 %6813 to i64
  store i64 %6814, i64* %RAX.i171, align 8
  %6815 = icmp ult i32 %6812, 20
  %6816 = zext i1 %6815 to i8
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6816, i8* %6817, align 1
  %6818 = and i32 %6813, 255
  %6819 = call i32 @llvm.ctpop.i32(i32 %6818)
  %6820 = trunc i32 %6819 to i8
  %6821 = and i8 %6820, 1
  %6822 = xor i8 %6821, 1
  %6823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6822, i8* %6823, align 1
  %6824 = xor i64 20, %6809
  %6825 = trunc i64 %6824 to i32
  %6826 = xor i32 %6825, %6813
  %6827 = lshr i32 %6826, 4
  %6828 = trunc i32 %6827 to i8
  %6829 = and i8 %6828, 1
  %6830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6829, i8* %6830, align 1
  %6831 = icmp eq i32 %6813, 0
  %6832 = zext i1 %6831 to i8
  %6833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6832, i8* %6833, align 1
  %6834 = lshr i32 %6813, 31
  %6835 = trunc i32 %6834 to i8
  %6836 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6835, i8* %6836, align 1
  %6837 = lshr i32 %6812, 31
  %6838 = xor i32 %6834, %6837
  %6839 = add i32 %6838, %6837
  %6840 = icmp eq i32 %6839, 2
  %6841 = zext i1 %6840 to i8
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6841, i8* %6842, align 1
  store %struct.Memory* %loadMem_438b55, %struct.Memory** %MEMORY
  %loadMem_438b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6844 = getelementptr inbounds %struct.GPR, %struct.GPR* %6843, i32 0, i32 33
  %6845 = getelementptr inbounds %struct.Reg, %struct.Reg* %6844, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %6845 to i64*
  %6846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6847 = getelementptr inbounds %struct.GPR, %struct.GPR* %6846, i32 0, i32 1
  %6848 = getelementptr inbounds %struct.Reg, %struct.Reg* %6847, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %6848 to i64*
  %6849 = load i64, i64* %RAX.i169
  %6850 = load i64, i64* %PC.i168
  %6851 = add i64 %6850, 3
  store i64 %6851, i64* %PC.i168
  %6852 = trunc i64 %6849 to i32
  %6853 = sub i32 %6852, 1
  %6854 = zext i32 %6853 to i64
  store i64 %6854, i64* %RAX.i169, align 8
  %6855 = icmp ult i32 %6852, 1
  %6856 = zext i1 %6855 to i8
  %6857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6856, i8* %6857, align 1
  %6858 = and i32 %6853, 255
  %6859 = call i32 @llvm.ctpop.i32(i32 %6858)
  %6860 = trunc i32 %6859 to i8
  %6861 = and i8 %6860, 1
  %6862 = xor i8 %6861, 1
  %6863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6862, i8* %6863, align 1
  %6864 = xor i64 1, %6849
  %6865 = trunc i64 %6864 to i32
  %6866 = xor i32 %6865, %6853
  %6867 = lshr i32 %6866, 4
  %6868 = trunc i32 %6867 to i8
  %6869 = and i8 %6868, 1
  %6870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6869, i8* %6870, align 1
  %6871 = icmp eq i32 %6853, 0
  %6872 = zext i1 %6871 to i8
  %6873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6872, i8* %6873, align 1
  %6874 = lshr i32 %6853, 31
  %6875 = trunc i32 %6874 to i8
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6875, i8* %6876, align 1
  %6877 = lshr i32 %6852, 31
  %6878 = xor i32 %6874, %6877
  %6879 = add i32 %6878, %6877
  %6880 = icmp eq i32 %6879, 2
  %6881 = zext i1 %6880 to i8
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6881, i8* %6882, align 1
  store %struct.Memory* %loadMem_438b58, %struct.Memory** %MEMORY
  %loadMem_438b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 33
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %6885 to i64*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 1
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %6888 to i32*
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 5
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %6891 to i64*
  %6892 = load i32, i32* %EAX.i166
  %6893 = zext i32 %6892 to i64
  %6894 = load i64, i64* %PC.i165
  %6895 = add i64 %6894, 3
  store i64 %6895, i64* %PC.i165
  %6896 = shl i64 %6893, 32
  %6897 = ashr exact i64 %6896, 32
  store i64 %6897, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_438b5b, %struct.Memory** %MEMORY
  %loadMem_438b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6899 = getelementptr inbounds %struct.GPR, %struct.GPR* %6898, i32 0, i32 33
  %6900 = getelementptr inbounds %struct.Reg, %struct.Reg* %6899, i32 0, i32 0
  %PC.i161 = bitcast %union.anon* %6900 to i64*
  %6901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6902 = getelementptr inbounds %struct.GPR, %struct.GPR* %6901, i32 0, i32 1
  %6903 = getelementptr inbounds %struct.Reg, %struct.Reg* %6902, i32 0, i32 0
  %RAX.i162 = bitcast %union.anon* %6903 to i64*
  %6904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6905 = getelementptr inbounds %struct.GPR, %struct.GPR* %6904, i32 0, i32 5
  %6906 = getelementptr inbounds %struct.Reg, %struct.Reg* %6905, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %6906 to i64*
  %6907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6908 = getelementptr inbounds %struct.GPR, %struct.GPR* %6907, i32 0, i32 15
  %6909 = getelementptr inbounds %struct.Reg, %struct.Reg* %6908, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %6909 to i64*
  %6910 = load i64, i64* %RBP.i164
  %6911 = load i64, i64* %RCX.i163
  %6912 = add i64 %6910, -880
  %6913 = add i64 %6912, %6911
  %6914 = load i64, i64* %PC.i161
  %6915 = add i64 %6914, 8
  store i64 %6915, i64* %PC.i161
  %6916 = inttoptr i64 %6913 to i8*
  %6917 = load i8, i8* %6916
  %6918 = sext i8 %6917 to i64
  %6919 = and i64 %6918, 4294967295
  store i64 %6919, i64* %RAX.i162, align 8
  store %struct.Memory* %loadMem_438b5e, %struct.Memory** %MEMORY
  %loadMem_438b66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6921 = getelementptr inbounds %struct.GPR, %struct.GPR* %6920, i32 0, i32 33
  %6922 = getelementptr inbounds %struct.Reg, %struct.Reg* %6921, i32 0, i32 0
  %PC.i158 = bitcast %union.anon* %6922 to i64*
  %6923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6924 = getelementptr inbounds %struct.GPR, %struct.GPR* %6923, i32 0, i32 5
  %6925 = getelementptr inbounds %struct.Reg, %struct.Reg* %6924, i32 0, i32 0
  %RCX.i159 = bitcast %union.anon* %6925 to i64*
  %6926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6927 = getelementptr inbounds %struct.GPR, %struct.GPR* %6926, i32 0, i32 15
  %6928 = getelementptr inbounds %struct.Reg, %struct.Reg* %6927, i32 0, i32 0
  %RBP.i160 = bitcast %union.anon* %6928 to i64*
  %6929 = load i64, i64* %RBP.i160
  %6930 = sub i64 %6929, 64
  %6931 = load i64, i64* %PC.i158
  %6932 = add i64 %6931, 4
  store i64 %6932, i64* %PC.i158
  %6933 = inttoptr i64 %6930 to i32*
  %6934 = load i32, i32* %6933
  %6935 = sext i32 %6934 to i64
  store i64 %6935, i64* %RCX.i159, align 8
  store %struct.Memory* %loadMem_438b66, %struct.Memory** %MEMORY
  %loadMem_438b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 33
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6938 to i64*
  %6939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6940 = getelementptr inbounds %struct.GPR, %struct.GPR* %6939, i32 0, i32 5
  %6941 = getelementptr inbounds %struct.Reg, %struct.Reg* %6940, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %6941 to i64*
  %6942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6943 = getelementptr inbounds %struct.GPR, %struct.GPR* %6942, i32 0, i32 7
  %6944 = getelementptr inbounds %struct.Reg, %struct.Reg* %6943, i32 0, i32 0
  %RDX.i156 = bitcast %union.anon* %6944 to i64*
  %6945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6946 = getelementptr inbounds %struct.GPR, %struct.GPR* %6945, i32 0, i32 15
  %6947 = getelementptr inbounds %struct.Reg, %struct.Reg* %6946, i32 0, i32 0
  %RBP.i157 = bitcast %union.anon* %6947 to i64*
  %6948 = load i64, i64* %RBP.i157
  %6949 = load i64, i64* %RCX.i155
  %6950 = add i64 %6948, -480
  %6951 = add i64 %6950, %6949
  %6952 = load i64, i64* %PC.i154
  %6953 = add i64 %6952, 8
  store i64 %6953, i64* %PC.i154
  %6954 = inttoptr i64 %6951 to i8*
  %6955 = load i8, i8* %6954
  %6956 = sext i8 %6955 to i64
  %6957 = and i64 %6956, 4294967295
  store i64 %6957, i64* %RDX.i156, align 8
  store %struct.Memory* %loadMem_438b6a, %struct.Memory** %MEMORY
  %loadMem_438b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6959 = getelementptr inbounds %struct.GPR, %struct.GPR* %6958, i32 0, i32 33
  %6960 = getelementptr inbounds %struct.Reg, %struct.Reg* %6959, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %6960 to i64*
  %6961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6962 = getelementptr inbounds %struct.GPR, %struct.GPR* %6961, i32 0, i32 9
  %6963 = getelementptr inbounds %struct.Reg, %struct.Reg* %6962, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %6963 to i64*
  %6964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6965 = getelementptr inbounds %struct.GPR, %struct.GPR* %6964, i32 0, i32 15
  %6966 = getelementptr inbounds %struct.Reg, %struct.Reg* %6965, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %6966 to i64*
  %6967 = load i64, i64* %RBP.i153
  %6968 = sub i64 %6967, 64
  %6969 = load i64, i64* %PC.i151
  %6970 = add i64 %6969, 3
  store i64 %6970, i64* %PC.i151
  %6971 = inttoptr i64 %6968 to i32*
  %6972 = load i32, i32* %6971
  %6973 = zext i32 %6972 to i64
  store i64 %6973, i64* %RSI.i152, align 8
  store %struct.Memory* %loadMem_438b72, %struct.Memory** %MEMORY
  %loadMem_438b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6974 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6975 = getelementptr inbounds %struct.GPR, %struct.GPR* %6974, i32 0, i32 33
  %6976 = getelementptr inbounds %struct.Reg, %struct.Reg* %6975, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6976 to i64*
  %6977 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6978 = getelementptr inbounds %struct.GPR, %struct.GPR* %6977, i32 0, i32 9
  %6979 = getelementptr inbounds %struct.Reg, %struct.Reg* %6978, i32 0, i32 0
  %RSI.i150 = bitcast %union.anon* %6979 to i64*
  %6980 = load i64, i64* %RSI.i150
  %6981 = load i64, i64* %PC.i149
  %6982 = add i64 %6981, 3
  store i64 %6982, i64* %PC.i149
  %6983 = trunc i64 %6980 to i32
  %6984 = sub i32 %6983, 20
  %6985 = zext i32 %6984 to i64
  store i64 %6985, i64* %RSI.i150, align 8
  %6986 = icmp ult i32 %6983, 20
  %6987 = zext i1 %6986 to i8
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6987, i8* %6988, align 1
  %6989 = and i32 %6984, 255
  %6990 = call i32 @llvm.ctpop.i32(i32 %6989)
  %6991 = trunc i32 %6990 to i8
  %6992 = and i8 %6991, 1
  %6993 = xor i8 %6992, 1
  %6994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6993, i8* %6994, align 1
  %6995 = xor i64 20, %6980
  %6996 = trunc i64 %6995 to i32
  %6997 = xor i32 %6996, %6984
  %6998 = lshr i32 %6997, 4
  %6999 = trunc i32 %6998 to i8
  %7000 = and i8 %6999, 1
  %7001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7000, i8* %7001, align 1
  %7002 = icmp eq i32 %6984, 0
  %7003 = zext i1 %7002 to i8
  %7004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7003, i8* %7004, align 1
  %7005 = lshr i32 %6984, 31
  %7006 = trunc i32 %7005 to i8
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7006, i8* %7007, align 1
  %7008 = lshr i32 %6983, 31
  %7009 = xor i32 %7005, %7008
  %7010 = add i32 %7009, %7008
  %7011 = icmp eq i32 %7010, 2
  %7012 = zext i1 %7011 to i8
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7012, i8* %7013, align 1
  store %struct.Memory* %loadMem_438b75, %struct.Memory** %MEMORY
  %loadMem_438b78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7014 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7015 = getelementptr inbounds %struct.GPR, %struct.GPR* %7014, i32 0, i32 33
  %7016 = getelementptr inbounds %struct.Reg, %struct.Reg* %7015, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %7016 to i64*
  %7017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7018 = getelementptr inbounds %struct.GPR, %struct.GPR* %7017, i32 0, i32 9
  %7019 = getelementptr inbounds %struct.Reg, %struct.Reg* %7018, i32 0, i32 0
  %ESI.i147 = bitcast %union.anon* %7019 to i32*
  %7020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7021 = getelementptr inbounds %struct.GPR, %struct.GPR* %7020, i32 0, i32 5
  %7022 = getelementptr inbounds %struct.Reg, %struct.Reg* %7021, i32 0, i32 0
  %RCX.i148 = bitcast %union.anon* %7022 to i64*
  %7023 = load i32, i32* %ESI.i147
  %7024 = zext i32 %7023 to i64
  %7025 = load i64, i64* %PC.i146
  %7026 = add i64 %7025, 3
  store i64 %7026, i64* %PC.i146
  %7027 = shl i64 %7024, 32
  %7028 = ashr exact i64 %7027, 32
  store i64 %7028, i64* %RCX.i148, align 8
  store %struct.Memory* %loadMem_438b78, %struct.Memory** %MEMORY
  %loadMem_438b7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7030 = getelementptr inbounds %struct.GPR, %struct.GPR* %7029, i32 0, i32 33
  %7031 = getelementptr inbounds %struct.Reg, %struct.Reg* %7030, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %7031 to i64*
  %7032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7033 = getelementptr inbounds %struct.GPR, %struct.GPR* %7032, i32 0, i32 5
  %7034 = getelementptr inbounds %struct.Reg, %struct.Reg* %7033, i32 0, i32 0
  %RCX.i143 = bitcast %union.anon* %7034 to i64*
  %7035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7036 = getelementptr inbounds %struct.GPR, %struct.GPR* %7035, i32 0, i32 9
  %7037 = getelementptr inbounds %struct.Reg, %struct.Reg* %7036, i32 0, i32 0
  %RSI.i144 = bitcast %union.anon* %7037 to i64*
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 15
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %7040 to i64*
  %7041 = load i64, i64* %RBP.i145
  %7042 = load i64, i64* %RCX.i143
  %7043 = add i64 %7041, -880
  %7044 = add i64 %7043, %7042
  %7045 = load i64, i64* %PC.i142
  %7046 = add i64 %7045, 8
  store i64 %7046, i64* %PC.i142
  %7047 = inttoptr i64 %7044 to i8*
  %7048 = load i8, i8* %7047
  %7049 = sext i8 %7048 to i64
  %7050 = and i64 %7049, 4294967295
  store i64 %7050, i64* %RSI.i144, align 8
  store %struct.Memory* %loadMem_438b7b, %struct.Memory** %MEMORY
  %loadMem_438b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7051 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7052 = getelementptr inbounds %struct.GPR, %struct.GPR* %7051, i32 0, i32 33
  %7053 = getelementptr inbounds %struct.Reg, %struct.Reg* %7052, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %7053 to i64*
  %7054 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7055 = getelementptr inbounds %struct.GPR, %struct.GPR* %7054, i32 0, i32 9
  %7056 = getelementptr inbounds %struct.Reg, %struct.Reg* %7055, i32 0, i32 0
  %ESI.i140 = bitcast %union.anon* %7056 to i32*
  %7057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7058 = getelementptr inbounds %struct.GPR, %struct.GPR* %7057, i32 0, i32 7
  %7059 = getelementptr inbounds %struct.Reg, %struct.Reg* %7058, i32 0, i32 0
  %RDX.i141 = bitcast %union.anon* %7059 to i64*
  %7060 = load i64, i64* %RDX.i141
  %7061 = load i32, i32* %ESI.i140
  %7062 = zext i32 %7061 to i64
  %7063 = load i64, i64* %PC.i139
  %7064 = add i64 %7063, 2
  store i64 %7064, i64* %PC.i139
  %7065 = trunc i64 %7060 to i32
  %7066 = sub i32 %7065, %7061
  %7067 = zext i32 %7066 to i64
  store i64 %7067, i64* %RDX.i141, align 8
  %7068 = icmp ult i32 %7065, %7061
  %7069 = zext i1 %7068 to i8
  %7070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7069, i8* %7070, align 1
  %7071 = and i32 %7066, 255
  %7072 = call i32 @llvm.ctpop.i32(i32 %7071)
  %7073 = trunc i32 %7072 to i8
  %7074 = and i8 %7073, 1
  %7075 = xor i8 %7074, 1
  %7076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7075, i8* %7076, align 1
  %7077 = xor i64 %7062, %7060
  %7078 = trunc i64 %7077 to i32
  %7079 = xor i32 %7078, %7066
  %7080 = lshr i32 %7079, 4
  %7081 = trunc i32 %7080 to i8
  %7082 = and i8 %7081, 1
  %7083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7082, i8* %7083, align 1
  %7084 = icmp eq i32 %7066, 0
  %7085 = zext i1 %7084 to i8
  %7086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7085, i8* %7086, align 1
  %7087 = lshr i32 %7066, 31
  %7088 = trunc i32 %7087 to i8
  %7089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7088, i8* %7089, align 1
  %7090 = lshr i32 %7065, 31
  %7091 = lshr i32 %7061, 31
  %7092 = xor i32 %7091, %7090
  %7093 = xor i32 %7087, %7090
  %7094 = add i32 %7093, %7092
  %7095 = icmp eq i32 %7094, 2
  %7096 = zext i1 %7095 to i8
  %7097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7096, i8* %7097, align 1
  store %struct.Memory* %loadMem_438b83, %struct.Memory** %MEMORY
  %loadMem_438b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7099 = getelementptr inbounds %struct.GPR, %struct.GPR* %7098, i32 0, i32 33
  %7100 = getelementptr inbounds %struct.Reg, %struct.Reg* %7099, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %7100 to i64*
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7102 = getelementptr inbounds %struct.GPR, %struct.GPR* %7101, i32 0, i32 1
  %7103 = getelementptr inbounds %struct.Reg, %struct.Reg* %7102, i32 0, i32 0
  %EAX.i137 = bitcast %union.anon* %7103 to i32*
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7105 = getelementptr inbounds %struct.GPR, %struct.GPR* %7104, i32 0, i32 7
  %7106 = getelementptr inbounds %struct.Reg, %struct.Reg* %7105, i32 0, i32 0
  %EDX.i138 = bitcast %union.anon* %7106 to i32*
  %7107 = load i32, i32* %EAX.i137
  %7108 = zext i32 %7107 to i64
  %7109 = load i32, i32* %EDX.i138
  %7110 = zext i32 %7109 to i64
  %7111 = load i64, i64* %PC.i136
  %7112 = add i64 %7111, 2
  store i64 %7112, i64* %PC.i136
  %7113 = sub i32 %7107, %7109
  %7114 = icmp ult i32 %7107, %7109
  %7115 = zext i1 %7114 to i8
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7115, i8* %7116, align 1
  %7117 = and i32 %7113, 255
  %7118 = call i32 @llvm.ctpop.i32(i32 %7117)
  %7119 = trunc i32 %7118 to i8
  %7120 = and i8 %7119, 1
  %7121 = xor i8 %7120, 1
  %7122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7121, i8* %7122, align 1
  %7123 = xor i64 %7110, %7108
  %7124 = trunc i64 %7123 to i32
  %7125 = xor i32 %7124, %7113
  %7126 = lshr i32 %7125, 4
  %7127 = trunc i32 %7126 to i8
  %7128 = and i8 %7127, 1
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7128, i8* %7129, align 1
  %7130 = icmp eq i32 %7113, 0
  %7131 = zext i1 %7130 to i8
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7131, i8* %7132, align 1
  %7133 = lshr i32 %7113, 31
  %7134 = trunc i32 %7133 to i8
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7134, i8* %7135, align 1
  %7136 = lshr i32 %7107, 31
  %7137 = lshr i32 %7109, 31
  %7138 = xor i32 %7137, %7136
  %7139 = xor i32 %7133, %7136
  %7140 = add i32 %7139, %7138
  %7141 = icmp eq i32 %7140, 2
  %7142 = zext i1 %7141 to i8
  %7143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7142, i8* %7143, align 1
  store %struct.Memory* %loadMem_438b85, %struct.Memory** %MEMORY
  %loadMem_438b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7145 = getelementptr inbounds %struct.GPR, %struct.GPR* %7144, i32 0, i32 33
  %7146 = getelementptr inbounds %struct.Reg, %struct.Reg* %7145, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %7146 to i64*
  %7147 = load i64, i64* %PC.i135
  %7148 = add i64 %7147, 94
  %7149 = load i64, i64* %PC.i135
  %7150 = add i64 %7149, 6
  %7151 = load i64, i64* %PC.i135
  %7152 = add i64 %7151, 6
  store i64 %7152, i64* %PC.i135
  %7153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7154 = load i8, i8* %7153, align 1
  %7155 = icmp eq i8 %7154, 0
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7157 = load i8, i8* %7156, align 1
  %7158 = icmp ne i8 %7157, 0
  %7159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7160 = load i8, i8* %7159, align 1
  %7161 = icmp ne i8 %7160, 0
  %7162 = xor i1 %7158, %7161
  %7163 = xor i1 %7162, true
  %7164 = and i1 %7155, %7163
  %7165 = zext i1 %7164 to i8
  store i8 %7165, i8* %BRANCH_TAKEN, align 1
  %7166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7167 = select i1 %7164, i64 %7148, i64 %7150
  store i64 %7167, i64* %7166, align 8
  store %struct.Memory* %loadMem_438b87, %struct.Memory** %MEMORY
  %loadBr_438b87 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438b87 = icmp eq i8 %loadBr_438b87, 1
  br i1 %cmpBr_438b87, label %block_.L_438be5, label %block_.L_438b8d

block_.L_438b8d:                                  ; preds = %block_438b52, %block_.L_438b35
  %loadMem_438b8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 33
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 1
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %7173 to i64*
  %7174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7175 = getelementptr inbounds %struct.GPR, %struct.GPR* %7174, i32 0, i32 15
  %7176 = getelementptr inbounds %struct.Reg, %struct.Reg* %7175, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %7176 to i64*
  %7177 = load i64, i64* %RBP.i134
  %7178 = sub i64 %7177, 64
  %7179 = load i64, i64* %PC.i132
  %7180 = add i64 %7179, 3
  store i64 %7180, i64* %PC.i132
  %7181 = inttoptr i64 %7178 to i32*
  %7182 = load i32, i32* %7181
  %7183 = zext i32 %7182 to i64
  store i64 %7183, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_438b8d, %struct.Memory** %MEMORY
  %loadMem_438b90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7185 = getelementptr inbounds %struct.GPR, %struct.GPR* %7184, i32 0, i32 33
  %7186 = getelementptr inbounds %struct.Reg, %struct.Reg* %7185, i32 0, i32 0
  %PC.i130 = bitcast %union.anon* %7186 to i64*
  %7187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7188 = getelementptr inbounds %struct.GPR, %struct.GPR* %7187, i32 0, i32 1
  %7189 = getelementptr inbounds %struct.Reg, %struct.Reg* %7188, i32 0, i32 0
  %RAX.i131 = bitcast %union.anon* %7189 to i64*
  %7190 = load i64, i64* %RAX.i131
  %7191 = load i64, i64* %PC.i130
  %7192 = add i64 %7191, 3
  store i64 %7192, i64* %PC.i130
  %7193 = trunc i64 %7190 to i32
  %7194 = sub i32 %7193, 20
  %7195 = zext i32 %7194 to i64
  store i64 %7195, i64* %RAX.i131, align 8
  %7196 = icmp ult i32 %7193, 20
  %7197 = zext i1 %7196 to i8
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7197, i8* %7198, align 1
  %7199 = and i32 %7194, 255
  %7200 = call i32 @llvm.ctpop.i32(i32 %7199)
  %7201 = trunc i32 %7200 to i8
  %7202 = and i8 %7201, 1
  %7203 = xor i8 %7202, 1
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7203, i8* %7204, align 1
  %7205 = xor i64 20, %7190
  %7206 = trunc i64 %7205 to i32
  %7207 = xor i32 %7206, %7194
  %7208 = lshr i32 %7207, 4
  %7209 = trunc i32 %7208 to i8
  %7210 = and i8 %7209, 1
  %7211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7210, i8* %7211, align 1
  %7212 = icmp eq i32 %7194, 0
  %7213 = zext i1 %7212 to i8
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7213, i8* %7214, align 1
  %7215 = lshr i32 %7194, 31
  %7216 = trunc i32 %7215 to i8
  %7217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7216, i8* %7217, align 1
  %7218 = lshr i32 %7193, 31
  %7219 = xor i32 %7215, %7218
  %7220 = add i32 %7219, %7218
  %7221 = icmp eq i32 %7220, 2
  %7222 = zext i1 %7221 to i8
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7222, i8* %7223, align 1
  store %struct.Memory* %loadMem_438b90, %struct.Memory** %MEMORY
  %loadMem_438b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7225 = getelementptr inbounds %struct.GPR, %struct.GPR* %7224, i32 0, i32 33
  %7226 = getelementptr inbounds %struct.Reg, %struct.Reg* %7225, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %7226 to i64*
  %7227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7228 = getelementptr inbounds %struct.GPR, %struct.GPR* %7227, i32 0, i32 1
  %7229 = getelementptr inbounds %struct.Reg, %struct.Reg* %7228, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %7229 to i64*
  %7230 = load i64, i64* %RAX.i129
  %7231 = load i64, i64* %PC.i128
  %7232 = add i64 %7231, 3
  store i64 %7232, i64* %PC.i128
  %7233 = trunc i64 %7230 to i32
  %7234 = add i32 1, %7233
  %7235 = zext i32 %7234 to i64
  store i64 %7235, i64* %RAX.i129, align 8
  %7236 = icmp ult i32 %7234, %7233
  %7237 = icmp ult i32 %7234, 1
  %7238 = or i1 %7236, %7237
  %7239 = zext i1 %7238 to i8
  %7240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7239, i8* %7240, align 1
  %7241 = and i32 %7234, 255
  %7242 = call i32 @llvm.ctpop.i32(i32 %7241)
  %7243 = trunc i32 %7242 to i8
  %7244 = and i8 %7243, 1
  %7245 = xor i8 %7244, 1
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7245, i8* %7246, align 1
  %7247 = xor i64 1, %7230
  %7248 = trunc i64 %7247 to i32
  %7249 = xor i32 %7248, %7234
  %7250 = lshr i32 %7249, 4
  %7251 = trunc i32 %7250 to i8
  %7252 = and i8 %7251, 1
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7252, i8* %7253, align 1
  %7254 = icmp eq i32 %7234, 0
  %7255 = zext i1 %7254 to i8
  %7256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7255, i8* %7256, align 1
  %7257 = lshr i32 %7234, 31
  %7258 = trunc i32 %7257 to i8
  %7259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7258, i8* %7259, align 1
  %7260 = lshr i32 %7233, 31
  %7261 = xor i32 %7257, %7260
  %7262 = add i32 %7261, %7257
  %7263 = icmp eq i32 %7262, 2
  %7264 = zext i1 %7263 to i8
  %7265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7264, i8* %7265, align 1
  store %struct.Memory* %loadMem_438b93, %struct.Memory** %MEMORY
  %loadMem_438b96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7267 = getelementptr inbounds %struct.GPR, %struct.GPR* %7266, i32 0, i32 33
  %7268 = getelementptr inbounds %struct.Reg, %struct.Reg* %7267, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %7268 to i64*
  %7269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7270 = getelementptr inbounds %struct.GPR, %struct.GPR* %7269, i32 0, i32 1
  %7271 = getelementptr inbounds %struct.Reg, %struct.Reg* %7270, i32 0, i32 0
  %EAX.i126 = bitcast %union.anon* %7271 to i32*
  %7272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7273 = getelementptr inbounds %struct.GPR, %struct.GPR* %7272, i32 0, i32 5
  %7274 = getelementptr inbounds %struct.Reg, %struct.Reg* %7273, i32 0, i32 0
  %RCX.i127 = bitcast %union.anon* %7274 to i64*
  %7275 = load i32, i32* %EAX.i126
  %7276 = zext i32 %7275 to i64
  %7277 = load i64, i64* %PC.i125
  %7278 = add i64 %7277, 3
  store i64 %7278, i64* %PC.i125
  %7279 = shl i64 %7276, 32
  %7280 = ashr exact i64 %7279, 32
  store i64 %7280, i64* %RCX.i127, align 8
  store %struct.Memory* %loadMem_438b96, %struct.Memory** %MEMORY
  %loadMem_438b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7282 = getelementptr inbounds %struct.GPR, %struct.GPR* %7281, i32 0, i32 33
  %7283 = getelementptr inbounds %struct.Reg, %struct.Reg* %7282, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %7283 to i64*
  %7284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7285 = getelementptr inbounds %struct.GPR, %struct.GPR* %7284, i32 0, i32 1
  %7286 = getelementptr inbounds %struct.Reg, %struct.Reg* %7285, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %7286 to i64*
  %7287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7288 = getelementptr inbounds %struct.GPR, %struct.GPR* %7287, i32 0, i32 5
  %7289 = getelementptr inbounds %struct.Reg, %struct.Reg* %7288, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %7289 to i64*
  %7290 = load i64, i64* %RCX.i124
  %7291 = add i64 %7290, 12099168
  %7292 = load i64, i64* %PC.i122
  %7293 = add i64 %7292, 8
  store i64 %7293, i64* %PC.i122
  %7294 = inttoptr i64 %7291 to i8*
  %7295 = load i8, i8* %7294
  %7296 = zext i8 %7295 to i64
  store i64 %7296, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_438b99, %struct.Memory** %MEMORY
  %loadMem_438ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7298 = getelementptr inbounds %struct.GPR, %struct.GPR* %7297, i32 0, i32 33
  %7299 = getelementptr inbounds %struct.Reg, %struct.Reg* %7298, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %7299 to i64*
  %7300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7301 = getelementptr inbounds %struct.GPR, %struct.GPR* %7300, i32 0, i32 1
  %7302 = getelementptr inbounds %struct.Reg, %struct.Reg* %7301, i32 0, i32 0
  %EAX.i121 = bitcast %union.anon* %7302 to i32*
  %7303 = load i32, i32* %EAX.i121
  %7304 = zext i32 %7303 to i64
  %7305 = load i64, i64* %PC.i120
  %7306 = add i64 %7305, 3
  store i64 %7306, i64* %PC.i120
  %7307 = sub i32 %7303, 3
  %7308 = icmp ult i32 %7303, 3
  %7309 = zext i1 %7308 to i8
  %7310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7309, i8* %7310, align 1
  %7311 = and i32 %7307, 255
  %7312 = call i32 @llvm.ctpop.i32(i32 %7311)
  %7313 = trunc i32 %7312 to i8
  %7314 = and i8 %7313, 1
  %7315 = xor i8 %7314, 1
  %7316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7315, i8* %7316, align 1
  %7317 = xor i64 3, %7304
  %7318 = trunc i64 %7317 to i32
  %7319 = xor i32 %7318, %7307
  %7320 = lshr i32 %7319, 4
  %7321 = trunc i32 %7320 to i8
  %7322 = and i8 %7321, 1
  %7323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7322, i8* %7323, align 1
  %7324 = icmp eq i32 %7307, 0
  %7325 = zext i1 %7324 to i8
  %7326 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7325, i8* %7326, align 1
  %7327 = lshr i32 %7307, 31
  %7328 = trunc i32 %7327 to i8
  %7329 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7328, i8* %7329, align 1
  %7330 = lshr i32 %7303, 31
  %7331 = xor i32 %7327, %7330
  %7332 = add i32 %7331, %7330
  %7333 = icmp eq i32 %7332, 2
  %7334 = zext i1 %7333 to i8
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7334, i8* %7335, align 1
  store %struct.Memory* %loadMem_438ba1, %struct.Memory** %MEMORY
  %loadMem_438ba4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 33
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %7338 to i64*
  %7339 = load i64, i64* %PC.i119
  %7340 = add i64 %7339, 198
  %7341 = load i64, i64* %PC.i119
  %7342 = add i64 %7341, 6
  %7343 = load i64, i64* %PC.i119
  %7344 = add i64 %7343, 6
  store i64 %7344, i64* %PC.i119
  %7345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7346 = load i8, i8* %7345, align 1
  store i8 %7346, i8* %BRANCH_TAKEN, align 1
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7348 = icmp ne i8 %7346, 0
  %7349 = select i1 %7348, i64 %7340, i64 %7342
  store i64 %7349, i64* %7347, align 8
  store %struct.Memory* %loadMem_438ba4, %struct.Memory** %MEMORY
  %loadBr_438ba4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438ba4 = icmp eq i8 %loadBr_438ba4, 1
  br i1 %cmpBr_438ba4, label %block_.L_438c6a, label %block_438baa

block_438baa:                                     ; preds = %block_.L_438b8d
  %loadMem_438baa = load %struct.Memory*, %struct.Memory** %MEMORY
  %7350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7351 = getelementptr inbounds %struct.GPR, %struct.GPR* %7350, i32 0, i32 33
  %7352 = getelementptr inbounds %struct.Reg, %struct.Reg* %7351, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %7352 to i64*
  %7353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7354 = getelementptr inbounds %struct.GPR, %struct.GPR* %7353, i32 0, i32 1
  %7355 = getelementptr inbounds %struct.Reg, %struct.Reg* %7354, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %7355 to i64*
  %7356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7357 = getelementptr inbounds %struct.GPR, %struct.GPR* %7356, i32 0, i32 15
  %7358 = getelementptr inbounds %struct.Reg, %struct.Reg* %7357, i32 0, i32 0
  %RBP.i118 = bitcast %union.anon* %7358 to i64*
  %7359 = load i64, i64* %RBP.i118
  %7360 = sub i64 %7359, 64
  %7361 = load i64, i64* %PC.i116
  %7362 = add i64 %7361, 3
  store i64 %7362, i64* %PC.i116
  %7363 = inttoptr i64 %7360 to i32*
  %7364 = load i32, i32* %7363
  %7365 = zext i32 %7364 to i64
  store i64 %7365, i64* %RAX.i117, align 8
  store %struct.Memory* %loadMem_438baa, %struct.Memory** %MEMORY
  %loadMem_438bad = load %struct.Memory*, %struct.Memory** %MEMORY
  %7366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7367 = getelementptr inbounds %struct.GPR, %struct.GPR* %7366, i32 0, i32 33
  %7368 = getelementptr inbounds %struct.Reg, %struct.Reg* %7367, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %7368 to i64*
  %7369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7370 = getelementptr inbounds %struct.GPR, %struct.GPR* %7369, i32 0, i32 1
  %7371 = getelementptr inbounds %struct.Reg, %struct.Reg* %7370, i32 0, i32 0
  %RAX.i115 = bitcast %union.anon* %7371 to i64*
  %7372 = load i64, i64* %RAX.i115
  %7373 = load i64, i64* %PC.i114
  %7374 = add i64 %7373, 3
  store i64 %7374, i64* %PC.i114
  %7375 = trunc i64 %7372 to i32
  %7376 = sub i32 %7375, 20
  %7377 = zext i32 %7376 to i64
  store i64 %7377, i64* %RAX.i115, align 8
  %7378 = icmp ult i32 %7375, 20
  %7379 = zext i1 %7378 to i8
  %7380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7379, i8* %7380, align 1
  %7381 = and i32 %7376, 255
  %7382 = call i32 @llvm.ctpop.i32(i32 %7381)
  %7383 = trunc i32 %7382 to i8
  %7384 = and i8 %7383, 1
  %7385 = xor i8 %7384, 1
  %7386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7385, i8* %7386, align 1
  %7387 = xor i64 20, %7372
  %7388 = trunc i64 %7387 to i32
  %7389 = xor i32 %7388, %7376
  %7390 = lshr i32 %7389, 4
  %7391 = trunc i32 %7390 to i8
  %7392 = and i8 %7391, 1
  %7393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7392, i8* %7393, align 1
  %7394 = icmp eq i32 %7376, 0
  %7395 = zext i1 %7394 to i8
  %7396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7395, i8* %7396, align 1
  %7397 = lshr i32 %7376, 31
  %7398 = trunc i32 %7397 to i8
  %7399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7398, i8* %7399, align 1
  %7400 = lshr i32 %7375, 31
  %7401 = xor i32 %7397, %7400
  %7402 = add i32 %7401, %7400
  %7403 = icmp eq i32 %7402, 2
  %7404 = zext i1 %7403 to i8
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7404, i8* %7405, align 1
  store %struct.Memory* %loadMem_438bad, %struct.Memory** %MEMORY
  %loadMem_438bb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7407 = getelementptr inbounds %struct.GPR, %struct.GPR* %7406, i32 0, i32 33
  %7408 = getelementptr inbounds %struct.Reg, %struct.Reg* %7407, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %7408 to i64*
  %7409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7410 = getelementptr inbounds %struct.GPR, %struct.GPR* %7409, i32 0, i32 1
  %7411 = getelementptr inbounds %struct.Reg, %struct.Reg* %7410, i32 0, i32 0
  %RAX.i113 = bitcast %union.anon* %7411 to i64*
  %7412 = load i64, i64* %RAX.i113
  %7413 = load i64, i64* %PC.i112
  %7414 = add i64 %7413, 3
  store i64 %7414, i64* %PC.i112
  %7415 = trunc i64 %7412 to i32
  %7416 = add i32 1, %7415
  %7417 = zext i32 %7416 to i64
  store i64 %7417, i64* %RAX.i113, align 8
  %7418 = icmp ult i32 %7416, %7415
  %7419 = icmp ult i32 %7416, 1
  %7420 = or i1 %7418, %7419
  %7421 = zext i1 %7420 to i8
  %7422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7421, i8* %7422, align 1
  %7423 = and i32 %7416, 255
  %7424 = call i32 @llvm.ctpop.i32(i32 %7423)
  %7425 = trunc i32 %7424 to i8
  %7426 = and i8 %7425, 1
  %7427 = xor i8 %7426, 1
  %7428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7427, i8* %7428, align 1
  %7429 = xor i64 1, %7412
  %7430 = trunc i64 %7429 to i32
  %7431 = xor i32 %7430, %7416
  %7432 = lshr i32 %7431, 4
  %7433 = trunc i32 %7432 to i8
  %7434 = and i8 %7433, 1
  %7435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7434, i8* %7435, align 1
  %7436 = icmp eq i32 %7416, 0
  %7437 = zext i1 %7436 to i8
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7437, i8* %7438, align 1
  %7439 = lshr i32 %7416, 31
  %7440 = trunc i32 %7439 to i8
  %7441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7440, i8* %7441, align 1
  %7442 = lshr i32 %7415, 31
  %7443 = xor i32 %7439, %7442
  %7444 = add i32 %7443, %7439
  %7445 = icmp eq i32 %7444, 2
  %7446 = zext i1 %7445 to i8
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7446, i8* %7447, align 1
  store %struct.Memory* %loadMem_438bb0, %struct.Memory** %MEMORY
  %loadMem_438bb3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7449 = getelementptr inbounds %struct.GPR, %struct.GPR* %7448, i32 0, i32 33
  %7450 = getelementptr inbounds %struct.Reg, %struct.Reg* %7449, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %7450 to i64*
  %7451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7452 = getelementptr inbounds %struct.GPR, %struct.GPR* %7451, i32 0, i32 1
  %7453 = getelementptr inbounds %struct.Reg, %struct.Reg* %7452, i32 0, i32 0
  %EAX.i110 = bitcast %union.anon* %7453 to i32*
  %7454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7455 = getelementptr inbounds %struct.GPR, %struct.GPR* %7454, i32 0, i32 5
  %7456 = getelementptr inbounds %struct.Reg, %struct.Reg* %7455, i32 0, i32 0
  %RCX.i111 = bitcast %union.anon* %7456 to i64*
  %7457 = load i32, i32* %EAX.i110
  %7458 = zext i32 %7457 to i64
  %7459 = load i64, i64* %PC.i109
  %7460 = add i64 %7459, 3
  store i64 %7460, i64* %PC.i109
  %7461 = shl i64 %7458, 32
  %7462 = ashr exact i64 %7461, 32
  store i64 %7462, i64* %RCX.i111, align 8
  store %struct.Memory* %loadMem_438bb3, %struct.Memory** %MEMORY
  %loadMem_438bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 33
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %7465 to i64*
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7467 = getelementptr inbounds %struct.GPR, %struct.GPR* %7466, i32 0, i32 1
  %7468 = getelementptr inbounds %struct.Reg, %struct.Reg* %7467, i32 0, i32 0
  %RAX.i106 = bitcast %union.anon* %7468 to i64*
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7470 = getelementptr inbounds %struct.GPR, %struct.GPR* %7469, i32 0, i32 5
  %7471 = getelementptr inbounds %struct.Reg, %struct.Reg* %7470, i32 0, i32 0
  %RCX.i107 = bitcast %union.anon* %7471 to i64*
  %7472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7473 = getelementptr inbounds %struct.GPR, %struct.GPR* %7472, i32 0, i32 15
  %7474 = getelementptr inbounds %struct.Reg, %struct.Reg* %7473, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %7474 to i64*
  %7475 = load i64, i64* %RBP.i108
  %7476 = load i64, i64* %RCX.i107
  %7477 = add i64 %7475, -880
  %7478 = add i64 %7477, %7476
  %7479 = load i64, i64* %PC.i105
  %7480 = add i64 %7479, 8
  store i64 %7480, i64* %PC.i105
  %7481 = inttoptr i64 %7478 to i8*
  %7482 = load i8, i8* %7481
  %7483 = sext i8 %7482 to i64
  %7484 = and i64 %7483, 4294967295
  store i64 %7484, i64* %RAX.i106, align 8
  store %struct.Memory* %loadMem_438bb6, %struct.Memory** %MEMORY
  %loadMem_438bbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7486 = getelementptr inbounds %struct.GPR, %struct.GPR* %7485, i32 0, i32 33
  %7487 = getelementptr inbounds %struct.Reg, %struct.Reg* %7486, i32 0, i32 0
  %PC.i102 = bitcast %union.anon* %7487 to i64*
  %7488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7489 = getelementptr inbounds %struct.GPR, %struct.GPR* %7488, i32 0, i32 5
  %7490 = getelementptr inbounds %struct.Reg, %struct.Reg* %7489, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %7490 to i64*
  %7491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7492 = getelementptr inbounds %struct.GPR, %struct.GPR* %7491, i32 0, i32 15
  %7493 = getelementptr inbounds %struct.Reg, %struct.Reg* %7492, i32 0, i32 0
  %RBP.i104 = bitcast %union.anon* %7493 to i64*
  %7494 = load i64, i64* %RBP.i104
  %7495 = sub i64 %7494, 64
  %7496 = load i64, i64* %PC.i102
  %7497 = add i64 %7496, 4
  store i64 %7497, i64* %PC.i102
  %7498 = inttoptr i64 %7495 to i32*
  %7499 = load i32, i32* %7498
  %7500 = sext i32 %7499 to i64
  store i64 %7500, i64* %RCX.i103, align 8
  store %struct.Memory* %loadMem_438bbe, %struct.Memory** %MEMORY
  %loadMem_438bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7502 = getelementptr inbounds %struct.GPR, %struct.GPR* %7501, i32 0, i32 33
  %7503 = getelementptr inbounds %struct.Reg, %struct.Reg* %7502, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %7503 to i64*
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7505 = getelementptr inbounds %struct.GPR, %struct.GPR* %7504, i32 0, i32 5
  %7506 = getelementptr inbounds %struct.Reg, %struct.Reg* %7505, i32 0, i32 0
  %RCX.i99 = bitcast %union.anon* %7506 to i64*
  %7507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7508 = getelementptr inbounds %struct.GPR, %struct.GPR* %7507, i32 0, i32 7
  %7509 = getelementptr inbounds %struct.Reg, %struct.Reg* %7508, i32 0, i32 0
  %RDX.i100 = bitcast %union.anon* %7509 to i64*
  %7510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7511 = getelementptr inbounds %struct.GPR, %struct.GPR* %7510, i32 0, i32 15
  %7512 = getelementptr inbounds %struct.Reg, %struct.Reg* %7511, i32 0, i32 0
  %RBP.i101 = bitcast %union.anon* %7512 to i64*
  %7513 = load i64, i64* %RBP.i101
  %7514 = load i64, i64* %RCX.i99
  %7515 = add i64 %7513, -480
  %7516 = add i64 %7515, %7514
  %7517 = load i64, i64* %PC.i98
  %7518 = add i64 %7517, 8
  store i64 %7518, i64* %PC.i98
  %7519 = inttoptr i64 %7516 to i8*
  %7520 = load i8, i8* %7519
  %7521 = sext i8 %7520 to i64
  %7522 = and i64 %7521, 4294967295
  store i64 %7522, i64* %RDX.i100, align 8
  store %struct.Memory* %loadMem_438bc2, %struct.Memory** %MEMORY
  %loadMem_438bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %7523 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7524 = getelementptr inbounds %struct.GPR, %struct.GPR* %7523, i32 0, i32 33
  %7525 = getelementptr inbounds %struct.Reg, %struct.Reg* %7524, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %7525 to i64*
  %7526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7527 = getelementptr inbounds %struct.GPR, %struct.GPR* %7526, i32 0, i32 9
  %7528 = getelementptr inbounds %struct.Reg, %struct.Reg* %7527, i32 0, i32 0
  %RSI.i96 = bitcast %union.anon* %7528 to i64*
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 15
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %RBP.i97 = bitcast %union.anon* %7531 to i64*
  %7532 = load i64, i64* %RBP.i97
  %7533 = sub i64 %7532, 64
  %7534 = load i64, i64* %PC.i95
  %7535 = add i64 %7534, 3
  store i64 %7535, i64* %PC.i95
  %7536 = inttoptr i64 %7533 to i32*
  %7537 = load i32, i32* %7536
  %7538 = zext i32 %7537 to i64
  store i64 %7538, i64* %RSI.i96, align 8
  store %struct.Memory* %loadMem_438bca, %struct.Memory** %MEMORY
  %loadMem_438bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7540 = getelementptr inbounds %struct.GPR, %struct.GPR* %7539, i32 0, i32 33
  %7541 = getelementptr inbounds %struct.Reg, %struct.Reg* %7540, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %7541 to i64*
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 9
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %RSI.i94 = bitcast %union.anon* %7544 to i64*
  %7545 = load i64, i64* %RSI.i94
  %7546 = load i64, i64* %PC.i93
  %7547 = add i64 %7546, 3
  store i64 %7547, i64* %PC.i93
  %7548 = trunc i64 %7545 to i32
  %7549 = sub i32 %7548, 20
  %7550 = zext i32 %7549 to i64
  store i64 %7550, i64* %RSI.i94, align 8
  %7551 = icmp ult i32 %7548, 20
  %7552 = zext i1 %7551 to i8
  %7553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7552, i8* %7553, align 1
  %7554 = and i32 %7549, 255
  %7555 = call i32 @llvm.ctpop.i32(i32 %7554)
  %7556 = trunc i32 %7555 to i8
  %7557 = and i8 %7556, 1
  %7558 = xor i8 %7557, 1
  %7559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7558, i8* %7559, align 1
  %7560 = xor i64 20, %7545
  %7561 = trunc i64 %7560 to i32
  %7562 = xor i32 %7561, %7549
  %7563 = lshr i32 %7562, 4
  %7564 = trunc i32 %7563 to i8
  %7565 = and i8 %7564, 1
  %7566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7565, i8* %7566, align 1
  %7567 = icmp eq i32 %7549, 0
  %7568 = zext i1 %7567 to i8
  %7569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7568, i8* %7569, align 1
  %7570 = lshr i32 %7549, 31
  %7571 = trunc i32 %7570 to i8
  %7572 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7571, i8* %7572, align 1
  %7573 = lshr i32 %7548, 31
  %7574 = xor i32 %7570, %7573
  %7575 = add i32 %7574, %7573
  %7576 = icmp eq i32 %7575, 2
  %7577 = zext i1 %7576 to i8
  %7578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7577, i8* %7578, align 1
  store %struct.Memory* %loadMem_438bcd, %struct.Memory** %MEMORY
  %loadMem_438bd0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7580 = getelementptr inbounds %struct.GPR, %struct.GPR* %7579, i32 0, i32 33
  %7581 = getelementptr inbounds %struct.Reg, %struct.Reg* %7580, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %7581 to i64*
  %7582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7583 = getelementptr inbounds %struct.GPR, %struct.GPR* %7582, i32 0, i32 9
  %7584 = getelementptr inbounds %struct.Reg, %struct.Reg* %7583, i32 0, i32 0
  %ESI.i91 = bitcast %union.anon* %7584 to i32*
  %7585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7586 = getelementptr inbounds %struct.GPR, %struct.GPR* %7585, i32 0, i32 5
  %7587 = getelementptr inbounds %struct.Reg, %struct.Reg* %7586, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %7587 to i64*
  %7588 = load i32, i32* %ESI.i91
  %7589 = zext i32 %7588 to i64
  %7590 = load i64, i64* %PC.i90
  %7591 = add i64 %7590, 3
  store i64 %7591, i64* %PC.i90
  %7592 = shl i64 %7589, 32
  %7593 = ashr exact i64 %7592, 32
  store i64 %7593, i64* %RCX.i92, align 8
  store %struct.Memory* %loadMem_438bd0, %struct.Memory** %MEMORY
  %loadMem_438bd3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7595 = getelementptr inbounds %struct.GPR, %struct.GPR* %7594, i32 0, i32 33
  %7596 = getelementptr inbounds %struct.Reg, %struct.Reg* %7595, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %7596 to i64*
  %7597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7598 = getelementptr inbounds %struct.GPR, %struct.GPR* %7597, i32 0, i32 5
  %7599 = getelementptr inbounds %struct.Reg, %struct.Reg* %7598, i32 0, i32 0
  %RCX.i87 = bitcast %union.anon* %7599 to i64*
  %7600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7601 = getelementptr inbounds %struct.GPR, %struct.GPR* %7600, i32 0, i32 9
  %7602 = getelementptr inbounds %struct.Reg, %struct.Reg* %7601, i32 0, i32 0
  %RSI.i88 = bitcast %union.anon* %7602 to i64*
  %7603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7604 = getelementptr inbounds %struct.GPR, %struct.GPR* %7603, i32 0, i32 15
  %7605 = getelementptr inbounds %struct.Reg, %struct.Reg* %7604, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %7605 to i64*
  %7606 = load i64, i64* %RBP.i89
  %7607 = load i64, i64* %RCX.i87
  %7608 = add i64 %7606, -880
  %7609 = add i64 %7608, %7607
  %7610 = load i64, i64* %PC.i86
  %7611 = add i64 %7610, 8
  store i64 %7611, i64* %PC.i86
  %7612 = inttoptr i64 %7609 to i8*
  %7613 = load i8, i8* %7612
  %7614 = sext i8 %7613 to i64
  %7615 = and i64 %7614, 4294967295
  store i64 %7615, i64* %RSI.i88, align 8
  store %struct.Memory* %loadMem_438bd3, %struct.Memory** %MEMORY
  %loadMem_438bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %7616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7617 = getelementptr inbounds %struct.GPR, %struct.GPR* %7616, i32 0, i32 33
  %7618 = getelementptr inbounds %struct.Reg, %struct.Reg* %7617, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %7618 to i64*
  %7619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7620 = getelementptr inbounds %struct.GPR, %struct.GPR* %7619, i32 0, i32 9
  %7621 = getelementptr inbounds %struct.Reg, %struct.Reg* %7620, i32 0, i32 0
  %ESI.i85 = bitcast %union.anon* %7621 to i32*
  %7622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7623 = getelementptr inbounds %struct.GPR, %struct.GPR* %7622, i32 0, i32 7
  %7624 = getelementptr inbounds %struct.Reg, %struct.Reg* %7623, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7624 to i64*
  %7625 = load i64, i64* %RDX.i
  %7626 = load i32, i32* %ESI.i85
  %7627 = zext i32 %7626 to i64
  %7628 = load i64, i64* %PC.i84
  %7629 = add i64 %7628, 2
  store i64 %7629, i64* %PC.i84
  %7630 = trunc i64 %7625 to i32
  %7631 = sub i32 %7630, %7626
  %7632 = zext i32 %7631 to i64
  store i64 %7632, i64* %RDX.i, align 8
  %7633 = icmp ult i32 %7630, %7626
  %7634 = zext i1 %7633 to i8
  %7635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7634, i8* %7635, align 1
  %7636 = and i32 %7631, 255
  %7637 = call i32 @llvm.ctpop.i32(i32 %7636)
  %7638 = trunc i32 %7637 to i8
  %7639 = and i8 %7638, 1
  %7640 = xor i8 %7639, 1
  %7641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7640, i8* %7641, align 1
  %7642 = xor i64 %7627, %7625
  %7643 = trunc i64 %7642 to i32
  %7644 = xor i32 %7643, %7631
  %7645 = lshr i32 %7644, 4
  %7646 = trunc i32 %7645 to i8
  %7647 = and i8 %7646, 1
  %7648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7647, i8* %7648, align 1
  %7649 = icmp eq i32 %7631, 0
  %7650 = zext i1 %7649 to i8
  %7651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7650, i8* %7651, align 1
  %7652 = lshr i32 %7631, 31
  %7653 = trunc i32 %7652 to i8
  %7654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7653, i8* %7654, align 1
  %7655 = lshr i32 %7630, 31
  %7656 = lshr i32 %7626, 31
  %7657 = xor i32 %7656, %7655
  %7658 = xor i32 %7652, %7655
  %7659 = add i32 %7658, %7657
  %7660 = icmp eq i32 %7659, 2
  %7661 = zext i1 %7660 to i8
  %7662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7661, i8* %7662, align 1
  store %struct.Memory* %loadMem_438bdb, %struct.Memory** %MEMORY
  %loadMem_438bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %7663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7664 = getelementptr inbounds %struct.GPR, %struct.GPR* %7663, i32 0, i32 33
  %7665 = getelementptr inbounds %struct.Reg, %struct.Reg* %7664, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %7665 to i64*
  %7666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7667 = getelementptr inbounds %struct.GPR, %struct.GPR* %7666, i32 0, i32 1
  %7668 = getelementptr inbounds %struct.Reg, %struct.Reg* %7667, i32 0, i32 0
  %EAX.i83 = bitcast %union.anon* %7668 to i32*
  %7669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7670 = getelementptr inbounds %struct.GPR, %struct.GPR* %7669, i32 0, i32 7
  %7671 = getelementptr inbounds %struct.Reg, %struct.Reg* %7670, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7671 to i32*
  %7672 = load i32, i32* %EAX.i83
  %7673 = zext i32 %7672 to i64
  %7674 = load i32, i32* %EDX.i
  %7675 = zext i32 %7674 to i64
  %7676 = load i64, i64* %PC.i82
  %7677 = add i64 %7676, 2
  store i64 %7677, i64* %PC.i82
  %7678 = sub i32 %7672, %7674
  %7679 = icmp ult i32 %7672, %7674
  %7680 = zext i1 %7679 to i8
  %7681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7680, i8* %7681, align 1
  %7682 = and i32 %7678, 255
  %7683 = call i32 @llvm.ctpop.i32(i32 %7682)
  %7684 = trunc i32 %7683 to i8
  %7685 = and i8 %7684, 1
  %7686 = xor i8 %7685, 1
  %7687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7686, i8* %7687, align 1
  %7688 = xor i64 %7675, %7673
  %7689 = trunc i64 %7688 to i32
  %7690 = xor i32 %7689, %7678
  %7691 = lshr i32 %7690, 4
  %7692 = trunc i32 %7691 to i8
  %7693 = and i8 %7692, 1
  %7694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7693, i8* %7694, align 1
  %7695 = icmp eq i32 %7678, 0
  %7696 = zext i1 %7695 to i8
  %7697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7696, i8* %7697, align 1
  %7698 = lshr i32 %7678, 31
  %7699 = trunc i32 %7698 to i8
  %7700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7699, i8* %7700, align 1
  %7701 = lshr i32 %7672, 31
  %7702 = lshr i32 %7674, 31
  %7703 = xor i32 %7702, %7701
  %7704 = xor i32 %7698, %7701
  %7705 = add i32 %7704, %7703
  %7706 = icmp eq i32 %7705, 2
  %7707 = zext i1 %7706 to i8
  %7708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7707, i8* %7708, align 1
  store %struct.Memory* %loadMem_438bdd, %struct.Memory** %MEMORY
  %loadMem_438bdf = load %struct.Memory*, %struct.Memory** %MEMORY
  %7709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7710 = getelementptr inbounds %struct.GPR, %struct.GPR* %7709, i32 0, i32 33
  %7711 = getelementptr inbounds %struct.Reg, %struct.Reg* %7710, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %7711 to i64*
  %7712 = load i64, i64* %PC.i81
  %7713 = add i64 %7712, 139
  %7714 = load i64, i64* %PC.i81
  %7715 = add i64 %7714, 6
  %7716 = load i64, i64* %PC.i81
  %7717 = add i64 %7716, 6
  store i64 %7717, i64* %PC.i81
  %7718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7719 = load i8, i8* %7718, align 1
  %7720 = icmp ne i8 %7719, 0
  %7721 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %7722 = load i8, i8* %7721, align 1
  %7723 = icmp ne i8 %7722, 0
  %7724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7725 = load i8, i8* %7724, align 1
  %7726 = icmp ne i8 %7725, 0
  %7727 = xor i1 %7723, %7726
  %7728 = or i1 %7720, %7727
  %7729 = zext i1 %7728 to i8
  store i8 %7729, i8* %BRANCH_TAKEN, align 1
  %7730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7731 = select i1 %7728, i64 %7713, i64 %7715
  store i64 %7731, i64* %7730, align 8
  store %struct.Memory* %loadMem_438bdf, %struct.Memory** %MEMORY
  %loadBr_438bdf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438bdf = icmp eq i8 %loadBr_438bdf, 1
  br i1 %cmpBr_438bdf, label %block_.L_438c6a, label %block_.L_438be5

block_.L_438be5:                                  ; preds = %block_438baa, %block_438b52, %block_438afa, %block_438aa2, %block_438a4a, %block_4389f2, %block_43899a, %block_438942
  %loadMem_438be5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7733 = getelementptr inbounds %struct.GPR, %struct.GPR* %7732, i32 0, i32 33
  %7734 = getelementptr inbounds %struct.Reg, %struct.Reg* %7733, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %7734 to i64*
  %7735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7736 = getelementptr inbounds %struct.GPR, %struct.GPR* %7735, i32 0, i32 1
  %7737 = getelementptr inbounds %struct.Reg, %struct.Reg* %7736, i32 0, i32 0
  %RAX.i79 = bitcast %union.anon* %7737 to i64*
  %7738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7739 = getelementptr inbounds %struct.GPR, %struct.GPR* %7738, i32 0, i32 15
  %7740 = getelementptr inbounds %struct.Reg, %struct.Reg* %7739, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %7740 to i64*
  %7741 = load i64, i64* %RBP.i80
  %7742 = sub i64 %7741, 24
  %7743 = load i64, i64* %PC.i78
  %7744 = add i64 %7743, 4
  store i64 %7744, i64* %PC.i78
  %7745 = inttoptr i64 %7742 to i64*
  %7746 = load i64, i64* %7745
  store i64 %7746, i64* %RAX.i79, align 8
  store %struct.Memory* %loadMem_438be5, %struct.Memory** %MEMORY
  %loadMem_438be9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7748 = getelementptr inbounds %struct.GPR, %struct.GPR* %7747, i32 0, i32 33
  %7749 = getelementptr inbounds %struct.Reg, %struct.Reg* %7748, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7749 to i64*
  %7750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7751 = getelementptr inbounds %struct.GPR, %struct.GPR* %7750, i32 0, i32 5
  %7752 = getelementptr inbounds %struct.Reg, %struct.Reg* %7751, i32 0, i32 0
  %RCX.i76 = bitcast %union.anon* %7752 to i64*
  %7753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7754 = getelementptr inbounds %struct.GPR, %struct.GPR* %7753, i32 0, i32 15
  %7755 = getelementptr inbounds %struct.Reg, %struct.Reg* %7754, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %7755 to i64*
  %7756 = load i64, i64* %RBP.i77
  %7757 = sub i64 %7756, 64
  %7758 = load i64, i64* %PC.i75
  %7759 = add i64 %7758, 4
  store i64 %7759, i64* %PC.i75
  %7760 = inttoptr i64 %7757 to i32*
  %7761 = load i32, i32* %7760
  %7762 = sext i32 %7761 to i64
  store i64 %7762, i64* %RCX.i76, align 8
  store %struct.Memory* %loadMem_438be9, %struct.Memory** %MEMORY
  %loadMem_438bed = load %struct.Memory*, %struct.Memory** %MEMORY
  %7763 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7764 = getelementptr inbounds %struct.GPR, %struct.GPR* %7763, i32 0, i32 33
  %7765 = getelementptr inbounds %struct.Reg, %struct.Reg* %7764, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7765 to i64*
  %7766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7767 = getelementptr inbounds %struct.GPR, %struct.GPR* %7766, i32 0, i32 1
  %7768 = getelementptr inbounds %struct.Reg, %struct.Reg* %7767, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %7768 to i64*
  %7769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7770 = getelementptr inbounds %struct.GPR, %struct.GPR* %7769, i32 0, i32 5
  %7771 = getelementptr inbounds %struct.Reg, %struct.Reg* %7770, i32 0, i32 0
  %RCX.i74 = bitcast %union.anon* %7771 to i64*
  %7772 = load i64, i64* %RAX.i73
  %7773 = load i64, i64* %RCX.i74
  %7774 = mul i64 %7773, 4
  %7775 = add i64 %7774, %7772
  %7776 = load i64, i64* %PC.i72
  %7777 = add i64 %7776, 7
  store i64 %7777, i64* %PC.i72
  %7778 = inttoptr i64 %7775 to i32*
  store i32 1, i32* %7778
  store %struct.Memory* %loadMem_438bed, %struct.Memory** %MEMORY
  %loadMem_438bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7780 = getelementptr inbounds %struct.GPR, %struct.GPR* %7779, i32 0, i32 33
  %7781 = getelementptr inbounds %struct.Reg, %struct.Reg* %7780, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7781 to i64*
  %7782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7783 = getelementptr inbounds %struct.GPR, %struct.GPR* %7782, i32 0, i32 1
  %7784 = getelementptr inbounds %struct.Reg, %struct.Reg* %7783, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %7784 to i64*
  %7785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7786 = getelementptr inbounds %struct.GPR, %struct.GPR* %7785, i32 0, i32 15
  %7787 = getelementptr inbounds %struct.Reg, %struct.Reg* %7786, i32 0, i32 0
  %RBP.i71 = bitcast %union.anon* %7787 to i64*
  %7788 = load i64, i64* %RBP.i71
  %7789 = sub i64 %7788, 64
  %7790 = load i64, i64* %PC.i69
  %7791 = add i64 %7790, 4
  store i64 %7791, i64* %PC.i69
  %7792 = inttoptr i64 %7789 to i32*
  %7793 = load i32, i32* %7792
  %7794 = sext i32 %7793 to i64
  store i64 %7794, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_438bf4, %struct.Memory** %MEMORY
  %loadMem_438bf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7796 = getelementptr inbounds %struct.GPR, %struct.GPR* %7795, i32 0, i32 33
  %7797 = getelementptr inbounds %struct.Reg, %struct.Reg* %7796, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %7797 to i64*
  %7798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7799 = getelementptr inbounds %struct.GPR, %struct.GPR* %7798, i32 0, i32 7
  %7800 = getelementptr inbounds %struct.Reg, %struct.Reg* %7799, i32 0, i32 0
  %7801 = bitcast %union.anon* %7800 to %struct.anon.2*
  %DL.i66 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7801, i32 0, i32 0
  %7802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7803 = getelementptr inbounds %struct.GPR, %struct.GPR* %7802, i32 0, i32 1
  %7804 = getelementptr inbounds %struct.Reg, %struct.Reg* %7803, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %7804 to i64*
  %7805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7806 = getelementptr inbounds %struct.GPR, %struct.GPR* %7805, i32 0, i32 15
  %7807 = getelementptr inbounds %struct.Reg, %struct.Reg* %7806, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %7807 to i64*
  %7808 = load i64, i64* %RBP.i68
  %7809 = load i64, i64* %RAX.i67
  %7810 = add i64 %7808, -880
  %7811 = add i64 %7810, %7809
  %7812 = load i64, i64* %PC.i65
  %7813 = add i64 %7812, 7
  store i64 %7813, i64* %PC.i65
  %7814 = inttoptr i64 %7811 to i8*
  %7815 = load i8, i8* %7814
  store i8 %7815, i8* %DL.i66, align 1
  store %struct.Memory* %loadMem_438bf8, %struct.Memory** %MEMORY
  %loadMem_438bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %7816 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7817 = getelementptr inbounds %struct.GPR, %struct.GPR* %7816, i32 0, i32 33
  %7818 = getelementptr inbounds %struct.Reg, %struct.Reg* %7817, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %7818 to i64*
  %7819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7820 = getelementptr inbounds %struct.GPR, %struct.GPR* %7819, i32 0, i32 7
  %7821 = getelementptr inbounds %struct.Reg, %struct.Reg* %7820, i32 0, i32 0
  %7822 = bitcast %union.anon* %7821 to %struct.anon.2*
  %DL.i64 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7822, i32 0, i32 0
  %7823 = load i8, i8* %DL.i64
  %7824 = zext i8 %7823 to i64
  %7825 = load i64, i64* %PC.i63
  %7826 = add i64 %7825, 3
  store i64 %7826, i64* %PC.i63
  %7827 = add i8 1, %7823
  store i8 %7827, i8* %DL.i64, align 1
  %7828 = icmp ult i8 %7827, %7823
  %7829 = icmp ult i8 %7827, 1
  %7830 = or i1 %7828, %7829
  %7831 = zext i1 %7830 to i8
  %7832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7831, i8* %7832, align 1
  %7833 = zext i8 %7827 to i32
  %7834 = call i32 @llvm.ctpop.i32(i32 %7833)
  %7835 = trunc i32 %7834 to i8
  %7836 = and i8 %7835, 1
  %7837 = xor i8 %7836, 1
  %7838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7837, i8* %7838, align 1
  %7839 = xor i64 1, %7824
  %7840 = trunc i64 %7839 to i8
  %7841 = xor i8 %7840, %7827
  %7842 = lshr i8 %7841, 4
  %7843 = and i8 %7842, 1
  %7844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7843, i8* %7844, align 1
  %7845 = icmp eq i8 %7827, 0
  %7846 = zext i1 %7845 to i8
  %7847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7846, i8* %7847, align 1
  %7848 = lshr i8 %7827, 7
  %7849 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7848, i8* %7849, align 1
  %7850 = lshr i8 %7823, 7
  %7851 = xor i8 %7848, %7850
  %7852 = add i8 %7851, %7848
  %7853 = icmp eq i8 %7852, 2
  %7854 = zext i1 %7853 to i8
  %7855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7854, i8* %7855, align 1
  store %struct.Memory* %loadMem_438bff, %struct.Memory** %MEMORY
  %loadMem_438c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7857 = getelementptr inbounds %struct.GPR, %struct.GPR* %7856, i32 0, i32 33
  %7858 = getelementptr inbounds %struct.Reg, %struct.Reg* %7857, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7858 to i64*
  %7859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7860 = getelementptr inbounds %struct.GPR, %struct.GPR* %7859, i32 0, i32 7
  %7861 = getelementptr inbounds %struct.Reg, %struct.Reg* %7860, i32 0, i32 0
  %7862 = bitcast %union.anon* %7861 to %struct.anon.2*
  %DL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %7862, i32 0, i32 0
  %7863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7864 = getelementptr inbounds %struct.GPR, %struct.GPR* %7863, i32 0, i32 1
  %7865 = getelementptr inbounds %struct.Reg, %struct.Reg* %7864, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %7865 to i64*
  %7866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7867 = getelementptr inbounds %struct.GPR, %struct.GPR* %7866, i32 0, i32 15
  %7868 = getelementptr inbounds %struct.Reg, %struct.Reg* %7867, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %7868 to i64*
  %7869 = load i64, i64* %RBP.i62
  %7870 = load i64, i64* %RAX.i61
  %7871 = add i64 %7869, -880
  %7872 = add i64 %7871, %7870
  %7873 = load i8, i8* %DL.i
  %7874 = zext i8 %7873 to i64
  %7875 = load i64, i64* %PC.i60
  %7876 = add i64 %7875, 7
  store i64 %7876, i64* %PC.i60
  %7877 = inttoptr i64 %7872 to i8*
  store i8 %7873, i8* %7877
  store %struct.Memory* %loadMem_438c02, %struct.Memory** %MEMORY
  %loadMem_438c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7879 = getelementptr inbounds %struct.GPR, %struct.GPR* %7878, i32 0, i32 33
  %7880 = getelementptr inbounds %struct.Reg, %struct.Reg* %7879, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %7880 to i64*
  %7881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7882 = getelementptr inbounds %struct.GPR, %struct.GPR* %7881, i32 0, i32 9
  %7883 = getelementptr inbounds %struct.Reg, %struct.Reg* %7882, i32 0, i32 0
  %RSI.i58 = bitcast %union.anon* %7883 to i64*
  %7884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7885 = getelementptr inbounds %struct.GPR, %struct.GPR* %7884, i32 0, i32 15
  %7886 = getelementptr inbounds %struct.Reg, %struct.Reg* %7885, i32 0, i32 0
  %RBP.i59 = bitcast %union.anon* %7886 to i64*
  %7887 = load i64, i64* %RBP.i59
  %7888 = sub i64 %7887, 2484
  %7889 = load i64, i64* %PC.i57
  %7890 = add i64 %7889, 6
  store i64 %7890, i64* %PC.i57
  %7891 = inttoptr i64 %7888 to i32*
  %7892 = load i32, i32* %7891
  %7893 = zext i32 %7892 to i64
  store i64 %7893, i64* %RSI.i58, align 8
  store %struct.Memory* %loadMem_438c09, %struct.Memory** %MEMORY
  %loadMem_438c0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7895 = getelementptr inbounds %struct.GPR, %struct.GPR* %7894, i32 0, i32 33
  %7896 = getelementptr inbounds %struct.Reg, %struct.Reg* %7895, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %7896 to i64*
  %7897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7898 = getelementptr inbounds %struct.GPR, %struct.GPR* %7897, i32 0, i32 9
  %7899 = getelementptr inbounds %struct.Reg, %struct.Reg* %7898, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %7899 to i64*
  %7900 = load i64, i64* %RSI.i
  %7901 = load i64, i64* %PC.i56
  %7902 = add i64 %7901, 3
  store i64 %7902, i64* %PC.i56
  %7903 = trunc i64 %7900 to i32
  %7904 = add i32 -1, %7903
  %7905 = zext i32 %7904 to i64
  store i64 %7905, i64* %RSI.i, align 8
  %7906 = icmp ult i32 %7904, %7903
  %7907 = icmp ult i32 %7904, -1
  %7908 = or i1 %7906, %7907
  %7909 = zext i1 %7908 to i8
  %7910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7909, i8* %7910, align 1
  %7911 = and i32 %7904, 255
  %7912 = call i32 @llvm.ctpop.i32(i32 %7911)
  %7913 = trunc i32 %7912 to i8
  %7914 = and i8 %7913, 1
  %7915 = xor i8 %7914, 1
  %7916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7915, i8* %7916, align 1
  %7917 = xor i64 -1, %7900
  %7918 = trunc i64 %7917 to i32
  %7919 = xor i32 %7918, %7904
  %7920 = lshr i32 %7919, 4
  %7921 = trunc i32 %7920 to i8
  %7922 = and i8 %7921, 1
  %7923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7922, i8* %7923, align 1
  %7924 = icmp eq i32 %7904, 0
  %7925 = zext i1 %7924 to i8
  %7926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7925, i8* %7926, align 1
  %7927 = lshr i32 %7904, 31
  %7928 = trunc i32 %7927 to i8
  %7929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7928, i8* %7929, align 1
  %7930 = lshr i32 %7903, 31
  %7931 = xor i32 %7927, %7930
  %7932 = xor i32 %7927, 1
  %7933 = add i32 %7931, %7932
  %7934 = icmp eq i32 %7933, 2
  %7935 = zext i1 %7934 to i8
  %7936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7935, i8* %7936, align 1
  store %struct.Memory* %loadMem_438c0f, %struct.Memory** %MEMORY
  %loadMem_438c12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7938 = getelementptr inbounds %struct.GPR, %struct.GPR* %7937, i32 0, i32 33
  %7939 = getelementptr inbounds %struct.Reg, %struct.Reg* %7938, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %7939 to i64*
  %7940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7941 = getelementptr inbounds %struct.GPR, %struct.GPR* %7940, i32 0, i32 9
  %7942 = getelementptr inbounds %struct.Reg, %struct.Reg* %7941, i32 0, i32 0
  %ESI.i54 = bitcast %union.anon* %7942 to i32*
  %7943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7944 = getelementptr inbounds %struct.GPR, %struct.GPR* %7943, i32 0, i32 15
  %7945 = getelementptr inbounds %struct.Reg, %struct.Reg* %7944, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %7945 to i64*
  %7946 = load i64, i64* %RBP.i55
  %7947 = sub i64 %7946, 2484
  %7948 = load i32, i32* %ESI.i54
  %7949 = zext i32 %7948 to i64
  %7950 = load i64, i64* %PC.i53
  %7951 = add i64 %7950, 6
  store i64 %7951, i64* %PC.i53
  %7952 = inttoptr i64 %7947 to i32*
  store i32 %7948, i32* %7952
  store %struct.Memory* %loadMem_438c12, %struct.Memory** %MEMORY
  %loadMem_438c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7954 = getelementptr inbounds %struct.GPR, %struct.GPR* %7953, i32 0, i32 33
  %7955 = getelementptr inbounds %struct.Reg, %struct.Reg* %7954, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7955 to i64*
  %7956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7957 = getelementptr inbounds %struct.GPR, %struct.GPR* %7956, i32 0, i32 9
  %7958 = getelementptr inbounds %struct.Reg, %struct.Reg* %7957, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %7958 to i32*
  %7959 = load i32, i32* %ESI.i
  %7960 = zext i32 %7959 to i64
  %7961 = load i64, i64* %PC.i52
  %7962 = add i64 %7961, 3
  store i64 %7962, i64* %PC.i52
  %7963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %7963, align 1
  %7964 = and i32 %7959, 255
  %7965 = call i32 @llvm.ctpop.i32(i32 %7964)
  %7966 = trunc i32 %7965 to i8
  %7967 = and i8 %7966, 1
  %7968 = xor i8 %7967, 1
  %7969 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7968, i8* %7969, align 1
  %7970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7970, align 1
  %7971 = icmp eq i32 %7959, 0
  %7972 = zext i1 %7971 to i8
  %7973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7972, i8* %7973, align 1
  %7974 = lshr i32 %7959, 31
  %7975 = trunc i32 %7974 to i8
  %7976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7975, i8* %7976, align 1
  %7977 = lshr i32 %7959, 31
  %7978 = xor i32 %7974, %7977
  %7979 = add i32 %7978, %7977
  %7980 = icmp eq i32 %7979, 2
  %7981 = zext i1 %7980 to i8
  %7982 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7981, i8* %7982, align 1
  store %struct.Memory* %loadMem_438c18, %struct.Memory** %MEMORY
  %loadMem_438c1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7984 = getelementptr inbounds %struct.GPR, %struct.GPR* %7983, i32 0, i32 33
  %7985 = getelementptr inbounds %struct.Reg, %struct.Reg* %7984, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %7985 to i64*
  %7986 = load i64, i64* %PC.i51
  %7987 = add i64 %7986, 11
  %7988 = load i64, i64* %PC.i51
  %7989 = add i64 %7988, 6
  %7990 = load i64, i64* %PC.i51
  %7991 = add i64 %7990, 6
  store i64 %7991, i64* %PC.i51
  %7992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %7993 = load i8, i8* %7992, align 1
  %7994 = icmp eq i8 %7993, 0
  %7995 = zext i1 %7994 to i8
  store i8 %7995, i8* %BRANCH_TAKEN, align 1
  %7996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7997 = select i1 %7994, i64 %7987, i64 %7989
  store i64 %7997, i64* %7996, align 8
  store %struct.Memory* %loadMem_438c1b, %struct.Memory** %MEMORY
  %loadBr_438c1b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438c1b = icmp eq i8 %loadBr_438c1b, 1
  br i1 %cmpBr_438c1b, label %block_.L_438c26, label %block_438c21

block_438c21:                                     ; preds = %block_.L_438be5
  %loadMem_438c21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7999 = getelementptr inbounds %struct.GPR, %struct.GPR* %7998, i32 0, i32 33
  %8000 = getelementptr inbounds %struct.Reg, %struct.Reg* %7999, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %8000 to i64*
  %8001 = load i64, i64* %PC.i50
  %8002 = add i64 %8001, 103
  %8003 = load i64, i64* %PC.i50
  %8004 = add i64 %8003, 5
  store i64 %8004, i64* %PC.i50
  %8005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8002, i64* %8005, align 8
  store %struct.Memory* %loadMem_438c21, %struct.Memory** %MEMORY
  br label %block_.L_438c88

block_.L_438c26:                                  ; preds = %block_.L_438be5
  %loadMem_438c26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8007 = getelementptr inbounds %struct.GPR, %struct.GPR* %8006, i32 0, i32 33
  %8008 = getelementptr inbounds %struct.Reg, %struct.Reg* %8007, i32 0, i32 0
  %PC.i47 = bitcast %union.anon* %8008 to i64*
  %8009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8010 = getelementptr inbounds %struct.GPR, %struct.GPR* %8009, i32 0, i32 1
  %8011 = getelementptr inbounds %struct.Reg, %struct.Reg* %8010, i32 0, i32 0
  %RAX.i48 = bitcast %union.anon* %8011 to i64*
  %8012 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8013 = getelementptr inbounds %struct.GPR, %struct.GPR* %8012, i32 0, i32 15
  %8014 = getelementptr inbounds %struct.Reg, %struct.Reg* %8013, i32 0, i32 0
  %RBP.i49 = bitcast %union.anon* %8014 to i64*
  %8015 = load i64, i64* %RBP.i49
  %8016 = sub i64 %8015, 60
  %8017 = load i64, i64* %PC.i47
  %8018 = add i64 %8017, 3
  store i64 %8018, i64* %PC.i47
  %8019 = inttoptr i64 %8016 to i32*
  %8020 = load i32, i32* %8019
  %8021 = zext i32 %8020 to i64
  store i64 %8021, i64* %RAX.i48, align 8
  store %struct.Memory* %loadMem_438c26, %struct.Memory** %MEMORY
  %loadMem_438c29 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8023 = getelementptr inbounds %struct.GPR, %struct.GPR* %8022, i32 0, i32 33
  %8024 = getelementptr inbounds %struct.Reg, %struct.Reg* %8023, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %8024 to i64*
  %8025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8026 = getelementptr inbounds %struct.GPR, %struct.GPR* %8025, i32 0, i32 1
  %8027 = getelementptr inbounds %struct.Reg, %struct.Reg* %8026, i32 0, i32 0
  %EAX.i45 = bitcast %union.anon* %8027 to i32*
  %8028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8029 = getelementptr inbounds %struct.GPR, %struct.GPR* %8028, i32 0, i32 15
  %8030 = getelementptr inbounds %struct.Reg, %struct.Reg* %8029, i32 0, i32 0
  %RBP.i46 = bitcast %union.anon* %8030 to i64*
  %8031 = load i32, i32* %EAX.i45
  %8032 = zext i32 %8031 to i64
  %8033 = load i64, i64* %RBP.i46
  %8034 = sub i64 %8033, 2484
  %8035 = load i64, i64* %PC.i44
  %8036 = add i64 %8035, 6
  store i64 %8036, i64* %PC.i44
  %8037 = inttoptr i64 %8034 to i32*
  %8038 = load i32, i32* %8037
  %8039 = sub i32 %8031, %8038
  %8040 = icmp ult i32 %8031, %8038
  %8041 = zext i1 %8040 to i8
  %8042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8041, i8* %8042, align 1
  %8043 = and i32 %8039, 255
  %8044 = call i32 @llvm.ctpop.i32(i32 %8043)
  %8045 = trunc i32 %8044 to i8
  %8046 = and i8 %8045, 1
  %8047 = xor i8 %8046, 1
  %8048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8047, i8* %8048, align 1
  %8049 = xor i32 %8038, %8031
  %8050 = xor i32 %8049, %8039
  %8051 = lshr i32 %8050, 4
  %8052 = trunc i32 %8051 to i8
  %8053 = and i8 %8052, 1
  %8054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8053, i8* %8054, align 1
  %8055 = icmp eq i32 %8039, 0
  %8056 = zext i1 %8055 to i8
  %8057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8056, i8* %8057, align 1
  %8058 = lshr i32 %8039, 31
  %8059 = trunc i32 %8058 to i8
  %8060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8059, i8* %8060, align 1
  %8061 = lshr i32 %8031, 31
  %8062 = lshr i32 %8038, 31
  %8063 = xor i32 %8062, %8061
  %8064 = xor i32 %8058, %8061
  %8065 = add i32 %8064, %8063
  %8066 = icmp eq i32 %8065, 2
  %8067 = zext i1 %8066 to i8
  %8068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8067, i8* %8068, align 1
  store %struct.Memory* %loadMem_438c29, %struct.Memory** %MEMORY
  %loadMem_438c2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8069 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8070 = getelementptr inbounds %struct.GPR, %struct.GPR* %8069, i32 0, i32 33
  %8071 = getelementptr inbounds %struct.Reg, %struct.Reg* %8070, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %8071 to i64*
  %8072 = load i64, i64* %PC.i43
  %8073 = add i64 %8072, 36
  %8074 = load i64, i64* %PC.i43
  %8075 = add i64 %8074, 6
  %8076 = load i64, i64* %PC.i43
  %8077 = add i64 %8076, 6
  store i64 %8077, i64* %PC.i43
  %8078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %8079 = load i8, i8* %8078, align 1
  %8080 = icmp ne i8 %8079, 0
  %8081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %8082 = load i8, i8* %8081, align 1
  %8083 = icmp ne i8 %8082, 0
  %8084 = xor i1 %8080, %8083
  %8085 = xor i1 %8084, true
  %8086 = zext i1 %8085 to i8
  store i8 %8086, i8* %BRANCH_TAKEN, align 1
  %8087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8088 = select i1 %8084, i64 %8075, i64 %8073
  store i64 %8088, i64* %8087, align 8
  store %struct.Memory* %loadMem_438c2f, %struct.Memory** %MEMORY
  %loadBr_438c2f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438c2f = icmp eq i8 %loadBr_438c2f, 1
  br i1 %cmpBr_438c2f, label %block_.L_438c53, label %block_438c35

block_438c35:                                     ; preds = %block_.L_438c26
  %loadMem_438c35 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8090 = getelementptr inbounds %struct.GPR, %struct.GPR* %8089, i32 0, i32 33
  %8091 = getelementptr inbounds %struct.Reg, %struct.Reg* %8090, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %8091 to i64*
  %8092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8093 = getelementptr inbounds %struct.GPR, %struct.GPR* %8092, i32 0, i32 1
  %8094 = getelementptr inbounds %struct.Reg, %struct.Reg* %8093, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %8094 to i64*
  %8095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8096 = getelementptr inbounds %struct.GPR, %struct.GPR* %8095, i32 0, i32 15
  %8097 = getelementptr inbounds %struct.Reg, %struct.Reg* %8096, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %8097 to i64*
  %8098 = load i64, i64* %RBP.i42
  %8099 = sub i64 %8098, 2484
  %8100 = load i64, i64* %PC.i40
  %8101 = add i64 %8100, 7
  store i64 %8101, i64* %PC.i40
  %8102 = inttoptr i64 %8099 to i32*
  %8103 = load i32, i32* %8102
  %8104 = sext i32 %8103 to i64
  store i64 %8104, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_438c35, %struct.Memory** %MEMORY
  %loadMem_438c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8106 = getelementptr inbounds %struct.GPR, %struct.GPR* %8105, i32 0, i32 33
  %8107 = getelementptr inbounds %struct.Reg, %struct.Reg* %8106, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %8107 to i64*
  %8108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8109 = getelementptr inbounds %struct.GPR, %struct.GPR* %8108, i32 0, i32 1
  %8110 = getelementptr inbounds %struct.Reg, %struct.Reg* %8109, i32 0, i32 0
  %RAX.i38 = bitcast %union.anon* %8110 to i64*
  %8111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8112 = getelementptr inbounds %struct.GPR, %struct.GPR* %8111, i32 0, i32 5
  %8113 = getelementptr inbounds %struct.Reg, %struct.Reg* %8112, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %8113 to i64*
  %8114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8115 = getelementptr inbounds %struct.GPR, %struct.GPR* %8114, i32 0, i32 15
  %8116 = getelementptr inbounds %struct.Reg, %struct.Reg* %8115, i32 0, i32 0
  %RBP.i39 = bitcast %union.anon* %8116 to i64*
  %8117 = load i64, i64* %RBP.i39
  %8118 = load i64, i64* %RAX.i38
  %8119 = mul i64 %8118, 4
  %8120 = add i64 %8117, -2480
  %8121 = add i64 %8120, %8119
  %8122 = load i64, i64* %PC.i37
  %8123 = add i64 %8122, 7
  store i64 %8123, i64* %PC.i37
  %8124 = inttoptr i64 %8121 to i32*
  %8125 = load i32, i32* %8124
  %8126 = zext i32 %8125 to i64
  store i64 %8126, i64* %RCX.i, align 8
  store %struct.Memory* %loadMem_438c3c, %struct.Memory** %MEMORY
  %loadMem_438c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8128 = getelementptr inbounds %struct.GPR, %struct.GPR* %8127, i32 0, i32 33
  %8129 = getelementptr inbounds %struct.Reg, %struct.Reg* %8128, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %8129 to i64*
  %8130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8131 = getelementptr inbounds %struct.GPR, %struct.GPR* %8130, i32 0, i32 1
  %8132 = getelementptr inbounds %struct.Reg, %struct.Reg* %8131, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %8132 to i64*
  %8133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8134 = getelementptr inbounds %struct.GPR, %struct.GPR* %8133, i32 0, i32 15
  %8135 = getelementptr inbounds %struct.Reg, %struct.Reg* %8134, i32 0, i32 0
  %RBP.i36 = bitcast %union.anon* %8135 to i64*
  %8136 = load i64, i64* %RBP.i36
  %8137 = sub i64 %8136, 60
  %8138 = load i64, i64* %PC.i34
  %8139 = add i64 %8138, 4
  store i64 %8139, i64* %PC.i34
  %8140 = inttoptr i64 %8137 to i32*
  %8141 = load i32, i32* %8140
  %8142 = sext i32 %8141 to i64
  store i64 %8142, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_438c43, %struct.Memory** %MEMORY
  %loadMem_438c47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8144 = getelementptr inbounds %struct.GPR, %struct.GPR* %8143, i32 0, i32 33
  %8145 = getelementptr inbounds %struct.Reg, %struct.Reg* %8144, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %8145 to i64*
  %8146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8147 = getelementptr inbounds %struct.GPR, %struct.GPR* %8146, i32 0, i32 5
  %8148 = getelementptr inbounds %struct.Reg, %struct.Reg* %8147, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %8148 to i32*
  %8149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8150 = getelementptr inbounds %struct.GPR, %struct.GPR* %8149, i32 0, i32 1
  %8151 = getelementptr inbounds %struct.Reg, %struct.Reg* %8150, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %8151 to i64*
  %8152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8153 = getelementptr inbounds %struct.GPR, %struct.GPR* %8152, i32 0, i32 15
  %8154 = getelementptr inbounds %struct.Reg, %struct.Reg* %8153, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %8154 to i64*
  %8155 = load i64, i64* %RBP.i33
  %8156 = load i64, i64* %RAX.i32
  %8157 = mul i64 %8156, 4
  %8158 = add i64 %8155, -2480
  %8159 = add i64 %8158, %8157
  %8160 = load i32, i32* %ECX.i
  %8161 = zext i32 %8160 to i64
  %8162 = load i64, i64* %PC.i31
  %8163 = add i64 %8162, 7
  store i64 %8163, i64* %PC.i31
  %8164 = inttoptr i64 %8159 to i32*
  store i32 %8160, i32* %8164
  store %struct.Memory* %loadMem_438c47, %struct.Memory** %MEMORY
  %loadMem_438c4e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8166 = getelementptr inbounds %struct.GPR, %struct.GPR* %8165, i32 0, i32 33
  %8167 = getelementptr inbounds %struct.Reg, %struct.Reg* %8166, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %8167 to i64*
  %8168 = load i64, i64* %PC.i30
  %8169 = add i64 %8168, 14
  %8170 = load i64, i64* %PC.i30
  %8171 = add i64 %8170, 5
  store i64 %8171, i64* %PC.i30
  %8172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8169, i64* %8172, align 8
  store %struct.Memory* %loadMem_438c4e, %struct.Memory** %MEMORY
  br label %block_.L_438c5c

block_.L_438c53:                                  ; preds = %block_.L_438c26
  %loadMem_438c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8174 = getelementptr inbounds %struct.GPR, %struct.GPR* %8173, i32 0, i32 33
  %8175 = getelementptr inbounds %struct.Reg, %struct.Reg* %8174, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %8175 to i64*
  %8176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8177 = getelementptr inbounds %struct.GPR, %struct.GPR* %8176, i32 0, i32 1
  %8178 = getelementptr inbounds %struct.Reg, %struct.Reg* %8177, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %8178 to i64*
  %8179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8180 = getelementptr inbounds %struct.GPR, %struct.GPR* %8179, i32 0, i32 15
  %8181 = getelementptr inbounds %struct.Reg, %struct.Reg* %8180, i32 0, i32 0
  %RBP.i29 = bitcast %union.anon* %8181 to i64*
  %8182 = load i64, i64* %RBP.i29
  %8183 = sub i64 %8182, 60
  %8184 = load i64, i64* %PC.i27
  %8185 = add i64 %8184, 3
  store i64 %8185, i64* %PC.i27
  %8186 = inttoptr i64 %8183 to i32*
  %8187 = load i32, i32* %8186
  %8188 = zext i32 %8187 to i64
  store i64 %8188, i64* %RAX.i28, align 8
  store %struct.Memory* %loadMem_438c53, %struct.Memory** %MEMORY
  %loadMem_438c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8190 = getelementptr inbounds %struct.GPR, %struct.GPR* %8189, i32 0, i32 33
  %8191 = getelementptr inbounds %struct.Reg, %struct.Reg* %8190, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %8191 to i64*
  %8192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8193 = getelementptr inbounds %struct.GPR, %struct.GPR* %8192, i32 0, i32 1
  %8194 = getelementptr inbounds %struct.Reg, %struct.Reg* %8193, i32 0, i32 0
  %RAX.i26 = bitcast %union.anon* %8194 to i64*
  %8195 = load i64, i64* %RAX.i26
  %8196 = load i64, i64* %PC.i25
  %8197 = add i64 %8196, 3
  store i64 %8197, i64* %PC.i25
  %8198 = trunc i64 %8195 to i32
  %8199 = add i32 -1, %8198
  %8200 = zext i32 %8199 to i64
  store i64 %8200, i64* %RAX.i26, align 8
  %8201 = icmp ult i32 %8199, %8198
  %8202 = icmp ult i32 %8199, -1
  %8203 = or i1 %8201, %8202
  %8204 = zext i1 %8203 to i8
  %8205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8204, i8* %8205, align 1
  %8206 = and i32 %8199, 255
  %8207 = call i32 @llvm.ctpop.i32(i32 %8206)
  %8208 = trunc i32 %8207 to i8
  %8209 = and i8 %8208, 1
  %8210 = xor i8 %8209, 1
  %8211 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8210, i8* %8211, align 1
  %8212 = xor i64 -1, %8195
  %8213 = trunc i64 %8212 to i32
  %8214 = xor i32 %8213, %8199
  %8215 = lshr i32 %8214, 4
  %8216 = trunc i32 %8215 to i8
  %8217 = and i8 %8216, 1
  %8218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8217, i8* %8218, align 1
  %8219 = icmp eq i32 %8199, 0
  %8220 = zext i1 %8219 to i8
  %8221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8220, i8* %8221, align 1
  %8222 = lshr i32 %8199, 31
  %8223 = trunc i32 %8222 to i8
  %8224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8223, i8* %8224, align 1
  %8225 = lshr i32 %8198, 31
  %8226 = xor i32 %8222, %8225
  %8227 = xor i32 %8222, 1
  %8228 = add i32 %8226, %8227
  %8229 = icmp eq i32 %8228, 2
  %8230 = zext i1 %8229 to i8
  %8231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8230, i8* %8231, align 1
  store %struct.Memory* %loadMem_438c56, %struct.Memory** %MEMORY
  %loadMem_438c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8233 = getelementptr inbounds %struct.GPR, %struct.GPR* %8232, i32 0, i32 33
  %8234 = getelementptr inbounds %struct.Reg, %struct.Reg* %8233, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %8234 to i64*
  %8235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8236 = getelementptr inbounds %struct.GPR, %struct.GPR* %8235, i32 0, i32 1
  %8237 = getelementptr inbounds %struct.Reg, %struct.Reg* %8236, i32 0, i32 0
  %EAX.i23 = bitcast %union.anon* %8237 to i32*
  %8238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8239 = getelementptr inbounds %struct.GPR, %struct.GPR* %8238, i32 0, i32 15
  %8240 = getelementptr inbounds %struct.Reg, %struct.Reg* %8239, i32 0, i32 0
  %RBP.i24 = bitcast %union.anon* %8240 to i64*
  %8241 = load i64, i64* %RBP.i24
  %8242 = sub i64 %8241, 60
  %8243 = load i32, i32* %EAX.i23
  %8244 = zext i32 %8243 to i64
  %8245 = load i64, i64* %PC.i22
  %8246 = add i64 %8245, 3
  store i64 %8246, i64* %PC.i22
  %8247 = inttoptr i64 %8242 to i32*
  store i32 %8243, i32* %8247
  store %struct.Memory* %loadMem_438c59, %struct.Memory** %MEMORY
  br label %block_.L_438c5c

block_.L_438c5c:                                  ; preds = %block_.L_438c53, %block_438c35
  %loadMem_438c5c = load %struct.Memory*, %struct.Memory** %MEMORY
  %8248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8249 = getelementptr inbounds %struct.GPR, %struct.GPR* %8248, i32 0, i32 33
  %8250 = getelementptr inbounds %struct.Reg, %struct.Reg* %8249, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %8250 to i64*
  %8251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8252 = getelementptr inbounds %struct.GPR, %struct.GPR* %8251, i32 0, i32 1
  %8253 = getelementptr inbounds %struct.Reg, %struct.Reg* %8252, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %8253 to i64*
  %8254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8255 = getelementptr inbounds %struct.GPR, %struct.GPR* %8254, i32 0, i32 15
  %8256 = getelementptr inbounds %struct.Reg, %struct.Reg* %8255, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %8256 to i64*
  %8257 = load i64, i64* %RBP.i21
  %8258 = sub i64 %8257, 60
  %8259 = load i64, i64* %PC.i19
  %8260 = add i64 %8259, 3
  store i64 %8260, i64* %PC.i19
  %8261 = inttoptr i64 %8258 to i32*
  %8262 = load i32, i32* %8261
  %8263 = zext i32 %8262 to i64
  store i64 %8263, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_438c5c, %struct.Memory** %MEMORY
  %loadMem_438c5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %8264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8265 = getelementptr inbounds %struct.GPR, %struct.GPR* %8264, i32 0, i32 33
  %8266 = getelementptr inbounds %struct.Reg, %struct.Reg* %8265, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %8266 to i64*
  %8267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8268 = getelementptr inbounds %struct.GPR, %struct.GPR* %8267, i32 0, i32 1
  %8269 = getelementptr inbounds %struct.Reg, %struct.Reg* %8268, i32 0, i32 0
  %EAX.i17 = bitcast %union.anon* %8269 to i32*
  %8270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8271 = getelementptr inbounds %struct.GPR, %struct.GPR* %8270, i32 0, i32 15
  %8272 = getelementptr inbounds %struct.Reg, %struct.Reg* %8271, i32 0, i32 0
  %RBP.i18 = bitcast %union.anon* %8272 to i64*
  %8273 = load i64, i64* %RBP.i18
  %8274 = sub i64 %8273, 2488
  %8275 = load i32, i32* %EAX.i17
  %8276 = zext i32 %8275 to i64
  %8277 = load i64, i64* %PC.i16
  %8278 = add i64 %8277, 6
  store i64 %8278, i64* %PC.i16
  %8279 = inttoptr i64 %8274 to i32*
  store i32 %8275, i32* %8279
  store %struct.Memory* %loadMem_438c5f, %struct.Memory** %MEMORY
  %loadMem_438c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8281 = getelementptr inbounds %struct.GPR, %struct.GPR* %8280, i32 0, i32 33
  %8282 = getelementptr inbounds %struct.Reg, %struct.Reg* %8281, i32 0, i32 0
  %PC.i15 = bitcast %union.anon* %8282 to i64*
  %8283 = load i64, i64* %PC.i15
  %8284 = add i64 %8283, 30
  %8285 = load i64, i64* %PC.i15
  %8286 = add i64 %8285, 5
  store i64 %8286, i64* %PC.i15
  %8287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8284, i64* %8287, align 8
  store %struct.Memory* %loadMem_438c65, %struct.Memory** %MEMORY
  br label %block_.L_438c83

block_.L_438c6a:                                  ; preds = %block_438baa, %block_.L_438b8d
  %loadMem_438c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %8288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8289 = getelementptr inbounds %struct.GPR, %struct.GPR* %8288, i32 0, i32 33
  %8290 = getelementptr inbounds %struct.Reg, %struct.Reg* %8289, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %8290 to i64*
  %8291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8292 = getelementptr inbounds %struct.GPR, %struct.GPR* %8291, i32 0, i32 1
  %8293 = getelementptr inbounds %struct.Reg, %struct.Reg* %8292, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %8293 to i64*
  %8294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8295 = getelementptr inbounds %struct.GPR, %struct.GPR* %8294, i32 0, i32 15
  %8296 = getelementptr inbounds %struct.Reg, %struct.Reg* %8295, i32 0, i32 0
  %RBP.i14 = bitcast %union.anon* %8296 to i64*
  %8297 = load i64, i64* %RBP.i14
  %8298 = sub i64 %8297, 60
  %8299 = load i64, i64* %PC.i13
  %8300 = add i64 %8299, 3
  store i64 %8300, i64* %PC.i13
  %8301 = inttoptr i64 %8298 to i32*
  %8302 = load i32, i32* %8301
  %8303 = zext i32 %8302 to i64
  store i64 %8303, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_438c6a, %struct.Memory** %MEMORY
  %loadMem_438c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8305 = getelementptr inbounds %struct.GPR, %struct.GPR* %8304, i32 0, i32 33
  %8306 = getelementptr inbounds %struct.Reg, %struct.Reg* %8305, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %8306 to i64*
  %8307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8308 = getelementptr inbounds %struct.GPR, %struct.GPR* %8307, i32 0, i32 1
  %8309 = getelementptr inbounds %struct.Reg, %struct.Reg* %8308, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %8309 to i32*
  %8310 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8311 = getelementptr inbounds %struct.GPR, %struct.GPR* %8310, i32 0, i32 15
  %8312 = getelementptr inbounds %struct.Reg, %struct.Reg* %8311, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %8312 to i64*
  %8313 = load i32, i32* %EAX.i
  %8314 = zext i32 %8313 to i64
  %8315 = load i64, i64* %RBP.i12
  %8316 = sub i64 %8315, 2488
  %8317 = load i64, i64* %PC.i11
  %8318 = add i64 %8317, 6
  store i64 %8318, i64* %PC.i11
  %8319 = inttoptr i64 %8316 to i32*
  %8320 = load i32, i32* %8319
  %8321 = sub i32 %8313, %8320
  %8322 = icmp ult i32 %8313, %8320
  %8323 = zext i1 %8322 to i8
  %8324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8323, i8* %8324, align 1
  %8325 = and i32 %8321, 255
  %8326 = call i32 @llvm.ctpop.i32(i32 %8325)
  %8327 = trunc i32 %8326 to i8
  %8328 = and i8 %8327, 1
  %8329 = xor i8 %8328, 1
  %8330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8329, i8* %8330, align 1
  %8331 = xor i32 %8320, %8313
  %8332 = xor i32 %8331, %8321
  %8333 = lshr i32 %8332, 4
  %8334 = trunc i32 %8333 to i8
  %8335 = and i8 %8334, 1
  %8336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8335, i8* %8336, align 1
  %8337 = icmp eq i32 %8321, 0
  %8338 = zext i1 %8337 to i8
  %8339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8338, i8* %8339, align 1
  %8340 = lshr i32 %8321, 31
  %8341 = trunc i32 %8340 to i8
  %8342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8341, i8* %8342, align 1
  %8343 = lshr i32 %8313, 31
  %8344 = lshr i32 %8320, 31
  %8345 = xor i32 %8344, %8343
  %8346 = xor i32 %8340, %8343
  %8347 = add i32 %8346, %8345
  %8348 = icmp eq i32 %8347, 2
  %8349 = zext i1 %8348 to i8
  %8350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8349, i8* %8350, align 1
  store %struct.Memory* %loadMem_438c6d, %struct.Memory** %MEMORY
  %loadMem_438c73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8352 = getelementptr inbounds %struct.GPR, %struct.GPR* %8351, i32 0, i32 33
  %8353 = getelementptr inbounds %struct.Reg, %struct.Reg* %8352, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %8353 to i64*
  %8354 = load i64, i64* %PC.i10
  %8355 = add i64 %8354, 11
  %8356 = load i64, i64* %PC.i10
  %8357 = add i64 %8356, 6
  %8358 = load i64, i64* %PC.i10
  %8359 = add i64 %8358, 6
  store i64 %8359, i64* %PC.i10
  %8360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %8361 = load i8, i8* %8360, align 1
  %8362 = icmp eq i8 %8361, 0
  %8363 = zext i1 %8362 to i8
  store i8 %8363, i8* %BRANCH_TAKEN, align 1
  %8364 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8365 = select i1 %8362, i64 %8355, i64 %8357
  store i64 %8365, i64* %8364, align 8
  store %struct.Memory* %loadMem_438c73, %struct.Memory** %MEMORY
  %loadBr_438c73 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_438c73 = icmp eq i8 %loadBr_438c73, 1
  br i1 %cmpBr_438c73, label %block_.L_438c7e, label %block_438c79

block_438c79:                                     ; preds = %block_.L_438c6a
  %loadMem_438c79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8367 = getelementptr inbounds %struct.GPR, %struct.GPR* %8366, i32 0, i32 33
  %8368 = getelementptr inbounds %struct.Reg, %struct.Reg* %8367, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %8368 to i64*
  %8369 = load i64, i64* %PC.i9
  %8370 = add i64 %8369, 15
  %8371 = load i64, i64* %PC.i9
  %8372 = add i64 %8371, 5
  store i64 %8372, i64* %PC.i9
  %8373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8370, i64* %8373, align 8
  store %struct.Memory* %loadMem_438c79, %struct.Memory** %MEMORY
  br label %block_.L_438c88

block_.L_438c7e:                                  ; preds = %block_.L_438c6a
  %loadMem_438c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %8374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8375 = getelementptr inbounds %struct.GPR, %struct.GPR* %8374, i32 0, i32 33
  %8376 = getelementptr inbounds %struct.Reg, %struct.Reg* %8375, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %8376 to i64*
  %8377 = load i64, i64* %PC.i8
  %8378 = add i64 %8377, 5
  %8379 = load i64, i64* %PC.i8
  %8380 = add i64 %8379, 5
  store i64 %8380, i64* %PC.i8
  %8381 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8378, i64* %8381, align 8
  store %struct.Memory* %loadMem_438c7e, %struct.Memory** %MEMORY
  br label %block_.L_438c83

block_.L_438c83:                                  ; preds = %block_.L_438c7e, %block_.L_438c5c
  %loadMem_438c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8383 = getelementptr inbounds %struct.GPR, %struct.GPR* %8382, i32 0, i32 33
  %8384 = getelementptr inbounds %struct.Reg, %struct.Reg* %8383, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %8384 to i64*
  %8385 = load i64, i64* %PC.i7
  %8386 = add i64 %8385, -903
  %8387 = load i64, i64* %PC.i7
  %8388 = add i64 %8387, 5
  store i64 %8388, i64* %PC.i7
  %8389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8386, i64* %8389, align 8
  store %struct.Memory* %loadMem_438c83, %struct.Memory** %MEMORY
  br label %block_.L_4388fc

block_.L_438c88:                                  ; preds = %block_438c79, %block_438c21
  %loadMem_438c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8391 = getelementptr inbounds %struct.GPR, %struct.GPR* %8390, i32 0, i32 33
  %8392 = getelementptr inbounds %struct.Reg, %struct.Reg* %8391, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %8392 to i64*
  %8393 = load i64, i64* %PC.i6
  %8394 = add i64 %8393, 5
  %8395 = load i64, i64* %PC.i6
  %8396 = add i64 %8395, 5
  store i64 %8396, i64* %PC.i6
  %8397 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %8394, i64* %8397, align 8
  store %struct.Memory* %loadMem_438c88, %struct.Memory** %MEMORY
  br label %block_.L_438c8d

block_.L_438c8d:                                  ; preds = %block_.L_438c88, %block_.L_4388e6
  %loadMem_438c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %8398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8399 = getelementptr inbounds %struct.GPR, %struct.GPR* %8398, i32 0, i32 33
  %8400 = getelementptr inbounds %struct.Reg, %struct.Reg* %8399, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %8400 to i64*
  %8401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8402 = getelementptr inbounds %struct.GPR, %struct.GPR* %8401, i32 0, i32 13
  %8403 = getelementptr inbounds %struct.Reg, %struct.Reg* %8402, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %8403 to i64*
  %8404 = load i64, i64* %RSP.i
  %8405 = load i64, i64* %PC.i5
  %8406 = add i64 %8405, 7
  store i64 %8406, i64* %PC.i5
  %8407 = add i64 2504, %8404
  store i64 %8407, i64* %RSP.i, align 8
  %8408 = icmp ult i64 %8407, %8404
  %8409 = icmp ult i64 %8407, 2504
  %8410 = or i1 %8408, %8409
  %8411 = zext i1 %8410 to i8
  %8412 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %8411, i8* %8412, align 1
  %8413 = trunc i64 %8407 to i32
  %8414 = and i32 %8413, 255
  %8415 = call i32 @llvm.ctpop.i32(i32 %8414)
  %8416 = trunc i32 %8415 to i8
  %8417 = and i8 %8416, 1
  %8418 = xor i8 %8417, 1
  %8419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %8418, i8* %8419, align 1
  %8420 = xor i64 2504, %8404
  %8421 = xor i64 %8420, %8407
  %8422 = lshr i64 %8421, 4
  %8423 = trunc i64 %8422 to i8
  %8424 = and i8 %8423, 1
  %8425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %8424, i8* %8425, align 1
  %8426 = icmp eq i64 %8407, 0
  %8427 = zext i1 %8426 to i8
  %8428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %8427, i8* %8428, align 1
  %8429 = lshr i64 %8407, 63
  %8430 = trunc i64 %8429 to i8
  %8431 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %8430, i8* %8431, align 1
  %8432 = lshr i64 %8404, 63
  %8433 = xor i64 %8429, %8432
  %8434 = add i64 %8433, %8429
  %8435 = icmp eq i64 %8434, 2
  %8436 = zext i1 %8435 to i8
  %8437 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %8436, i8* %8437, align 1
  store %struct.Memory* %loadMem_438c8d, %struct.Memory** %MEMORY
  %loadMem_438c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8439 = getelementptr inbounds %struct.GPR, %struct.GPR* %8438, i32 0, i32 33
  %8440 = getelementptr inbounds %struct.Reg, %struct.Reg* %8439, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %8440 to i64*
  %8441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8442 = getelementptr inbounds %struct.GPR, %struct.GPR* %8441, i32 0, i32 3
  %8443 = getelementptr inbounds %struct.Reg, %struct.Reg* %8442, i32 0, i32 0
  %RBX.i = bitcast %union.anon* %8443 to i64*
  %8444 = load i64, i64* %PC.i4
  %8445 = add i64 %8444, 1
  store i64 %8445, i64* %PC.i4
  %8446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8447 = load i64, i64* %8446, align 8
  %8448 = add i64 %8447, 8
  %8449 = inttoptr i64 %8447 to i64*
  %8450 = load i64, i64* %8449
  store i64 %8450, i64* %RBX.i, align 8
  store i64 %8448, i64* %8446, align 8
  store %struct.Memory* %loadMem_438c94, %struct.Memory** %MEMORY
  %loadMem_438c95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8452 = getelementptr inbounds %struct.GPR, %struct.GPR* %8451, i32 0, i32 33
  %8453 = getelementptr inbounds %struct.Reg, %struct.Reg* %8452, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %8453 to i64*
  %8454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8455 = getelementptr inbounds %struct.GPR, %struct.GPR* %8454, i32 0, i32 15
  %8456 = getelementptr inbounds %struct.Reg, %struct.Reg* %8455, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %8456 to i64*
  %8457 = load i64, i64* %PC.i2
  %8458 = add i64 %8457, 1
  store i64 %8458, i64* %PC.i2
  %8459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8460 = load i64, i64* %8459, align 8
  %8461 = add i64 %8460, 8
  %8462 = inttoptr i64 %8460 to i64*
  %8463 = load i64, i64* %8462
  store i64 %8463, i64* %RBP.i3, align 8
  store i64 %8461, i64* %8459, align 8
  store %struct.Memory* %loadMem_438c95, %struct.Memory** %MEMORY
  %loadMem_438c96 = load %struct.Memory*, %struct.Memory** %MEMORY
  %8464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %8465 = getelementptr inbounds %struct.GPR, %struct.GPR* %8464, i32 0, i32 33
  %8466 = getelementptr inbounds %struct.Reg, %struct.Reg* %8465, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %8466 to i64*
  %8467 = load i64, i64* %PC.i1
  %8468 = add i64 %8467, 1
  store i64 %8468, i64* %PC.i1
  %8469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %8470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8471 = load i64, i64* %8470, align 8
  %8472 = inttoptr i64 %8471 to i64*
  %8473 = load i64, i64* %8472
  store i64 %8473, i64* %8469, align 8
  %8474 = add i64 %8471, 8
  store i64 %8474, i64* %8470, align 8
  store %struct.Memory* %loadMem_438c96, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_438c96
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

define %struct.Memory* @routine_pushq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %RBX
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

define %struct.Memory* @routine_subq__0x9c8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 2504
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 2504
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
  %23 = xor i64 2504, %9
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

define %struct.Memory* @routine_movl__0x190___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 400, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d___r10d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10D = bitcast %union.anon* %11 to i32*
  %12 = bitcast i32* %R10D to i64*
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = and i64 %14, 4294967295
  store i64 %17, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x370__rbp____r11(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 880
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %R11, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_leaq_MINUS0x1e0__rbp____rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 15
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RBP = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 480
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  store i64 %13, i64* %RBX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x3___r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 6
  store i64 %11, i64* %PC
  store i64 3, i64* %9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rsi__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RSI
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rdx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl__r8d__MINUS0x2c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0xc__rbp____r9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i32, i32* %R9D
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %RBP
  %16 = sub i64 %15, 12
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 4
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  %20 = load i32, i32* %19
  %21 = sub i32 %13, %20
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  %23 = icmp ult i32 %13, %20
  %24 = zext i1 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %24, i8* %25, align 1
  %26 = and i32 %21, 255
  %27 = call i32 @llvm.ctpop.i32(i32 %26)
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %30, i8* %31, align 1
  %32 = xor i32 %20, %13
  %33 = xor i32 %32, %21
  %34 = lshr i32 %33, 4
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %36, i8* %37, align 1
  %38 = icmp eq i32 %21, 0
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %39, i8* %40, align 1
  %41 = lshr i32 %21, 31
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %42, i8* %43, align 1
  %44 = lshr i32 %13, 31
  %45 = lshr i32 %20, 31
  %46 = xor i32 %45, %44
  %47 = xor i32 %41, %44
  %48 = add i32 %47, %46
  %49 = icmp eq i32 %48, 2
  %50 = zext i1 %49 to i8
  %51 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %50, i8* %51, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__r9d__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %R9D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x9b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2484
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x0__MINUS0x9b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2488
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rbx___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
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

define %struct.Memory* @routine_movq__r10___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 21
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R10 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R10
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r10__MINUS0x9c0__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2496
  %14 = load i64, i64* %R10
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r11__MINUS0x9c8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 23
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R11 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 2504
  %14 = load i64, i64* %R11
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9cc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2508
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.memset_plt(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x9c8__rbp____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2504
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9cc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2508
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x9c0__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2496
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x15__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 21, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x190__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 64
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

define %struct.Memory* @routine_jge_.L_4388e6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_438692(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4388d8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x40__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4386ea(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0xc__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %RBP
  %15 = sub i64 %14, 12
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

define %struct.Memory* @routine_jne_.L_4386d9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x1____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i32*
  store i32 1, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__0x1__MINUS0x370__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -880
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4386e5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movb__0xff__MINUS0x370__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -880
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 -1, i8* %18
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

define %struct.Memory* @routine_movl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 4
  %16 = icmp ult i32 %14, 4
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
  %25 = xor i32 %14, 4
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

define %struct.Memory* @routine_jge_.L_438781(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_addl_0x7ae1b0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 8053168
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 7
  store i64 %17, i64* %PC
  %18 = trunc i64 %12 to i32
  %19 = inttoptr i64 %15 to i32*
  %20 = load i32, i32* %19
  %21 = add i32 %20, %18
  %22 = zext i32 %21 to i64
  store i64 %22, i64* %RAX, align 8
  %23 = icmp ult i32 %21, %18
  %24 = icmp ult i32 %21, %20
  %25 = or i1 %23, %24
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %26, i8* %27, align 1
  %28 = and i32 %21, 255
  %29 = call i32 @llvm.ctpop.i32(i32 %28)
  %30 = trunc i32 %29 to i8
  %31 = and i8 %30, 1
  %32 = xor i8 %31, 1
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %32, i8* %33, align 1
  %34 = xor i32 %20, %18
  %35 = xor i32 %34, %21
  %36 = lshr i32 %35, 4
  %37 = trunc i32 %36 to i8
  %38 = and i8 %37, 1
  %39 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %38, i8* %39, align 1
  %40 = icmp eq i32 %21, 0
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %41, i8* %42, align 1
  %43 = lshr i32 %21, 31
  %44 = trunc i32 %43 to i8
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %44, i8* %45, align 1
  %46 = lshr i32 %18, 31
  %47 = lshr i32 %20, 31
  %48 = xor i32 %43, %46
  %49 = xor i32 %43, %47
  %50 = add i32 %48, %49
  %51 = icmp eq i32 %50, 2
  %52 = zext i1 %51 to i8
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %52, i8* %53, align 1
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

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_43876e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x44__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_438762(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_438769(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43876e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438773(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jmpq_.L_4386ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x48__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_43885a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_43880e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x0___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_4387ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x40__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0xc__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
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

define %struct.Memory* @routine_callq_.false_margin(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_4387da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_4387ee(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438809(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438855(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_438835(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_438850(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438878(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x9b4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x9b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2484
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq__ecx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %ECX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x9b0__rbp__rsi_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RSI
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2480
  %19 = add i64 %18, %17
  %20 = load i32, i32* %EAX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x4c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_4388a8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb__0x1__MINUS0x1e0__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = load i64, i64* %RAX
  %14 = add i64 %12, -480
  %15 = add i64 %14, %13
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 8
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %15 to i8*
  store i8 1, i8* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb_MINUS0x370__rbp__rax_1____cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -880
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i8*
  %23 = load i8, i8* %22
  store i8 %23, i8* %CL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addb__0xff___cl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %CL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = add i8 -1, %10
  store i8 %14, i8* %CL, align 1
  %15 = icmp ult i8 %14, %10
  %16 = icmp ult i8 %14, -1
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = zext i8 %14 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 -1, %11
  %27 = trunc i64 %26 to i8
  %28 = xor i8 %27, %14
  %29 = lshr i8 %28, 4
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i8 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i8 %14, 7
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i8 %10, 7
  %38 = xor i8 %35, %37
  %39 = xor i8 %35, 1
  %40 = add i8 %38, %39
  %41 = icmp eq i8 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__cl__MINUS0x370__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -880
  %19 = add i64 %18, %17
  %20 = load i8, i8* %CL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i8*
  store i8 %20, i8* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4388d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_callq_.is_edge_vertex(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4388ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_43866b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x9b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 2484
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

define %struct.Memory* @routine_je_.L_438c8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x9b4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_43890f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq__eax___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9b0__rbp__rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2480
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_43897d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsbl_MINUS0x370__rbp__rcx_1____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -880
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsbl_MINUS0x1e0__rbp__rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -480
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x40__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 20, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 20
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
  %26 = xor i64 20, %9
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

define %struct.Memory* @routine_movsbl_MINUS0x370__rbp__rcx_1____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RCX
  %17 = add i64 %15, -880
  %18 = add i64 %17, %16
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 8
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i8*
  %22 = load i8, i8* %21
  %23 = sext i8 %22 to i64
  %24 = and i64 %23, 4294967295
  store i64 %24, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = load i32, i32* %ESI
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 2
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = sub i32 %17, %13
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  %20 = icmp ult i32 %17, %13
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %21, i8* %22, align 1
  %23 = and i32 %18, 255
  %24 = call i32 @llvm.ctpop.i32(i32 %23)
  %25 = trunc i32 %24 to i8
  %26 = and i8 %25, 1
  %27 = xor i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %27, i8* %28, align 1
  %29 = xor i64 %14, %12
  %30 = trunc i64 %29 to i32
  %31 = xor i32 %30, %18
  %32 = lshr i32 %31, 4
  %33 = trunc i32 %32 to i8
  %34 = and i8 %33, 1
  %35 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %34, i8* %35, align 1
  %36 = icmp eq i32 %18, 0
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %37, i8* %38, align 1
  %39 = lshr i32 %18, 31
  %40 = trunc i32 %39 to i8
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %40, i8* %41, align 1
  %42 = lshr i32 %17, 31
  %43 = lshr i32 %13, 31
  %44 = xor i32 %43, %42
  %45 = xor i32 %39, %42
  %46 = add i32 %45, %44
  %47 = icmp eq i32 %46, 2
  %48 = zext i1 %47 to i8
  %49 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %48, i8* %49, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__edx___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %EDX = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EDX
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

define %struct.Memory* @routine_jg_.L_438be5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_4389d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_438a2d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_438a85(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_438add(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x1___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_je_.L_438b35(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_438b8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0x14___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 20
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
  %15 = icmp ult i32 %12, 20
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
  %24 = xor i64 20, %9
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

define %struct.Memory* @routine_je_.L_438c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jle_.L_438c6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movb_MINUS0x370__rbp__rax_1____dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -880
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i8*
  %23 = load i8, i8* %22
  store i8 %23, i8* %DL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addb__0x1___dl(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = load i8, i8* %DL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 3
  store i64 %13, i64* %PC
  %14 = add i8 1, %10
  store i8 %14, i8* %DL, align 1
  %15 = icmp ult i8 %14, %10
  %16 = icmp ult i8 %14, 1
  %17 = or i1 %15, %16
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = zext i8 %14 to i32
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i64 1, %11
  %27 = trunc i64 %26 to i8
  %28 = xor i8 %27, %14
  %29 = lshr i8 %28, 4
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i8 %14, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i8 %14, 7
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %35, i8* %36, align 1
  %37 = lshr i8 %10, 7
  %38 = xor i8 %35, %37
  %39 = add i8 %38, %35
  %40 = icmp eq i8 %39, 2
  %41 = zext i1 %40 to i8
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %41, i8* %42, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movb__dl__MINUS0x370__rbp__rax_1_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = getelementptr inbounds %struct.GPR, %struct.GPR* %13, i32 0, i32 15
  %15 = getelementptr inbounds %struct.Reg, %struct.Reg* %14, i32 0, i32 0
  %RBP = bitcast %union.anon* %15 to i64*
  %16 = load i64, i64* %RBP
  %17 = load i64, i64* %RAX
  %18 = add i64 %16, -880
  %19 = add i64 %18, %17
  %20 = load i8, i8* %DL
  %21 = zext i8 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i8*
  store i8 %20, i8* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9b4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0xffffffff___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 -1, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RSI, align 8
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

define %struct.Memory* @routine_movl__esi__MINUS0x9b4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2484
  %14 = load i32, i32* %ESI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_438c26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_438c88(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x9b4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 2484
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jge_.L_438c53(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x9b4__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2484
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 7
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x9b0__rbp__rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2480
  %19 = add i64 %18, %17
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 7
  store i64 %21, i64* %PC
  %22 = inttoptr i64 %19 to i32*
  %23 = load i32, i32* %22
  %24 = zext i32 %23 to i64
  store i64 %24, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x3c__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x9b0__rbp__rax_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 15
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RBP = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RBP
  %16 = load i64, i64* %RAX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, -2480
  %19 = add i64 %18, %17
  %20 = load i32, i32* %ECX
  %21 = zext i32 %20 to i64
  %22 = load i64, i64* %PC
  %23 = add i64 %22, 7
  store i64 %23, i64* %PC
  %24 = inttoptr i64 %19 to i32*
  store i32 %20, i32* %24
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_438c5c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x9b8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 2488
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_438c83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl_MINUS0x9b8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 2488
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
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

define %struct.Memory* @routine_jne_.L_438c7e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_4388fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_438c8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x9c8___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 2504, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 2504
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
  %25 = xor i64 2504, %9
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

define %struct.Memory* @routine_popq__rbx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RBX = bitcast %union.anon* %8 to i64*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, 1
  store i64 %10, i64* %PC
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add i64 %12, 8
  %14 = inttoptr i64 %12 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %RBX, align 8
  store i64 %13, i64* %11, align 8
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
