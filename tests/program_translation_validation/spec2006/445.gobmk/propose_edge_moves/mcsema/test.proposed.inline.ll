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

declare %struct.Memory* @sub_40f780.countlib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @propose_edge_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_4626b0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_4626b0, %struct.Memory** %MEMORY
  %loadMem_4626b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i734 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i735 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i734
  %27 = load i64, i64* %PC.i733
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i733
  store i64 %26, i64* %RBP.i735, align 8
  store %struct.Memory* %loadMem_4626b1, %struct.Memory** %MEMORY
  %loadMem_4626b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i841 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i841
  %36 = load i64, i64* %PC.i840
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i840
  %38 = sub i64 %35, 96
  store i64 %38, i64* %RSP.i841, align 8
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
  store %struct.Memory* %loadMem_4626b4, %struct.Memory** %MEMORY
  %loadMem_4626b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i838
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i838
  store i64 3, i64* %RAX.i839, align 8
  store %struct.Memory* %loadMem_4626b8, %struct.Memory** %MEMORY
  %loadMem_4626bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i836 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i837
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i836
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i836
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_4626bd, %struct.Memory** %MEMORY
  %loadMem_4626c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i834 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i835 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i835
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i834
  %103 = load i64, i64* %PC.i833
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i833
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_4626c0, %struct.Memory** %MEMORY
  %loadMem_4626c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %EDX.i831 = bitcast %union.anon* %111 to i32*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i832 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i832
  %116 = sub i64 %115, 20
  %117 = load i32, i32* %EDX.i831
  %118 = zext i32 %117 to i64
  %119 = load i64, i64* %PC.i830
  %120 = add i64 %119, 3
  store i64 %120, i64* %PC.i830
  %121 = inttoptr i64 %116 to i32*
  store i32 %117, i32* %121
  store %struct.Memory* %loadMem_4626c4, %struct.Memory** %MEMORY
  %loadMem_4626c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %123 = getelementptr inbounds %struct.GPR, %struct.GPR* %122, i32 0, i32 33
  %124 = getelementptr inbounds %struct.Reg, %struct.Reg* %123, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %124 to i64*
  %125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %126 = getelementptr inbounds %struct.GPR, %struct.GPR* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.Reg, %struct.Reg* %126, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %127 to i64*
  %128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %129 = getelementptr inbounds %struct.GPR, %struct.GPR* %128, i32 0, i32 15
  %130 = getelementptr inbounds %struct.Reg, %struct.Reg* %129, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %130 to i64*
  %131 = load i64, i64* %RBP.i829
  %132 = sub i64 %131, 32
  %133 = load i64, i64* %RCX.i828
  %134 = load i64, i64* %PC.i827
  %135 = add i64 %134, 4
  store i64 %135, i64* %PC.i827
  %136 = inttoptr i64 %132 to i64*
  store i64 %133, i64* %136
  store %struct.Memory* %loadMem_4626c7, %struct.Memory** %MEMORY
  %loadMem_4626cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i825 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 17
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %142 to i32*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 15
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RBP.i826 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RBP.i826
  %147 = sub i64 %146, 36
  %148 = load i32, i32* %R8D.i
  %149 = zext i32 %148 to i64
  %150 = load i64, i64* %PC.i825
  %151 = add i64 %150, 4
  store i64 %151, i64* %PC.i825
  %152 = inttoptr i64 %147 to i32*
  store i32 %148, i32* %152
  store %struct.Memory* %loadMem_4626cb, %struct.Memory** %MEMORY
  %loadMem_4626cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i822 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 5
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RCX.i823 = bitcast %union.anon* %158 to i64*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i824 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i824
  %163 = sub i64 %162, 4
  %164 = load i64, i64* %PC.i822
  %165 = add i64 %164, 4
  store i64 %165, i64* %PC.i822
  %166 = inttoptr i64 %163 to i32*
  %167 = load i32, i32* %166
  %168 = sext i32 %167 to i64
  store i64 %168, i64* %RCX.i823, align 8
  store %struct.Memory* %loadMem_4626cf, %struct.Memory** %MEMORY
  %loadMem_4626d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i819 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 5
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RCX.i820 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 7
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RDX.i821 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RCX.i820
  %179 = add i64 %178, 12099168
  %180 = load i64, i64* %PC.i819
  %181 = add i64 %180, 8
  store i64 %181, i64* %PC.i819
  %182 = inttoptr i64 %179 to i8*
  %183 = load i8, i8* %182
  %184 = zext i8 %183 to i64
  store i64 %184, i64* %RDX.i821, align 8
  store %struct.Memory* %loadMem_4626d3, %struct.Memory** %MEMORY
  %loadMem_4626db = load %struct.Memory*, %struct.Memory** %MEMORY
  %185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %186 = getelementptr inbounds %struct.GPR, %struct.GPR* %185, i32 0, i32 33
  %187 = getelementptr inbounds %struct.Reg, %struct.Reg* %186, i32 0, i32 0
  %PC.i816 = bitcast %union.anon* %187 to i64*
  %188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %189 = getelementptr inbounds %struct.GPR, %struct.GPR* %188, i32 0, i32 7
  %190 = getelementptr inbounds %struct.Reg, %struct.Reg* %189, i32 0, i32 0
  %EDX.i817 = bitcast %union.anon* %190 to i32*
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 15
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %RBP.i818 = bitcast %union.anon* %193 to i64*
  %194 = load i64, i64* %RBP.i818
  %195 = sub i64 %194, 40
  %196 = load i32, i32* %EDX.i817
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %PC.i816
  %199 = add i64 %198, 3
  store i64 %199, i64* %PC.i816
  %200 = inttoptr i64 %195 to i32*
  store i32 %196, i32* %200
  store %struct.Memory* %loadMem_4626db, %struct.Memory** %MEMORY
  %loadMem_4626de = load %struct.Memory*, %struct.Memory** %MEMORY
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 33
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %203 to i64*
  %204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %205 = getelementptr inbounds %struct.GPR, %struct.GPR* %204, i32 0, i32 1
  %206 = getelementptr inbounds %struct.Reg, %struct.Reg* %205, i32 0, i32 0
  %RAX.i814 = bitcast %union.anon* %206 to i64*
  %207 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %208 = getelementptr inbounds %struct.GPR, %struct.GPR* %207, i32 0, i32 15
  %209 = getelementptr inbounds %struct.Reg, %struct.Reg* %208, i32 0, i32 0
  %RBP.i815 = bitcast %union.anon* %209 to i64*
  %210 = load i64, i64* %RAX.i814
  %211 = load i64, i64* %RBP.i815
  %212 = sub i64 %211, 40
  %213 = load i64, i64* %PC.i813
  %214 = add i64 %213, 3
  store i64 %214, i64* %PC.i813
  %215 = trunc i64 %210 to i32
  %216 = inttoptr i64 %212 to i32*
  %217 = load i32, i32* %216
  %218 = sub i32 %215, %217
  %219 = zext i32 %218 to i64
  store i64 %219, i64* %RAX.i814, align 8
  %220 = icmp ult i32 %215, %217
  %221 = zext i1 %220 to i8
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %221, i8* %222, align 1
  %223 = and i32 %218, 255
  %224 = call i32 @llvm.ctpop.i32(i32 %223)
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = xor i8 %226, 1
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %227, i8* %228, align 1
  %229 = xor i32 %217, %215
  %230 = xor i32 %229, %218
  %231 = lshr i32 %230, 4
  %232 = trunc i32 %231 to i8
  %233 = and i8 %232, 1
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %233, i8* %234, align 1
  %235 = icmp eq i32 %218, 0
  %236 = zext i1 %235 to i8
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %236, i8* %237, align 1
  %238 = lshr i32 %218, 31
  %239 = trunc i32 %238 to i8
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %239, i8* %240, align 1
  %241 = lshr i32 %215, 31
  %242 = lshr i32 %217, 31
  %243 = xor i32 %242, %241
  %244 = xor i32 %238, %241
  %245 = add i32 %244, %243
  %246 = icmp eq i32 %245, 2
  %247 = zext i1 %246 to i8
  %248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %247, i8* %248, align 1
  store %struct.Memory* %loadMem_4626de, %struct.Memory** %MEMORY
  %loadMem_4626e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %EAX.i811 = bitcast %union.anon* %254 to i32*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 15
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RBP.i812
  %259 = sub i64 %258, 44
  %260 = load i32, i32* %EAX.i811
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %PC.i810
  %263 = add i64 %262, 3
  store i64 %263, i64* %PC.i810
  %264 = inttoptr i64 %259 to i32*
  store i32 %260, i32* %264
  store %struct.Memory* %loadMem_4626e1, %struct.Memory** %MEMORY
  %loadMem_4626e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %266 = getelementptr inbounds %struct.GPR, %struct.GPR* %265, i32 0, i32 33
  %267 = getelementptr inbounds %struct.Reg, %struct.Reg* %266, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %267 to i64*
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 15
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %RBP.i809 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %RBP.i809
  %272 = sub i64 %271, 68
  %273 = load i64, i64* %PC.i808
  %274 = add i64 %273, 7
  store i64 %274, i64* %PC.i808
  %275 = inttoptr i64 %272 to i32*
  store i32 0, i32* %275
  store %struct.Memory* %loadMem_4626e4, %struct.Memory** %MEMORY
  br label %block_.L_4626eb

block_.L_4626eb:                                  ; preds = %block_.L_462c7a, %entry
  %loadMem_4626eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %277 = getelementptr inbounds %struct.GPR, %struct.GPR* %276, i32 0, i32 33
  %278 = getelementptr inbounds %struct.Reg, %struct.Reg* %277, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %278 to i64*
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %RAX.i806 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i807
  %286 = sub i64 %285, 68
  %287 = load i64, i64* %PC.i805
  %288 = add i64 %287, 3
  store i64 %288, i64* %PC.i805
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = zext i32 %290 to i64
  store i64 %291, i64* %RAX.i806, align 8
  store %struct.Memory* %loadMem_4626eb, %struct.Memory** %MEMORY
  %loadMem_4626ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %293 = getelementptr inbounds %struct.GPR, %struct.GPR* %292, i32 0, i32 33
  %294 = getelementptr inbounds %struct.Reg, %struct.Reg* %293, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %294 to i64*
  %295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %296 = getelementptr inbounds %struct.GPR, %struct.GPR* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.Reg, %struct.Reg* %296, i32 0, i32 0
  %EAX.i803 = bitcast %union.anon* %297 to i32*
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 15
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %RBP.i804 = bitcast %union.anon* %300 to i64*
  %301 = load i32, i32* %EAX.i803
  %302 = zext i32 %301 to i64
  %303 = load i64, i64* %RBP.i804
  %304 = sub i64 %303, 20
  %305 = load i64, i64* %PC.i802
  %306 = add i64 %305, 3
  store i64 %306, i64* %PC.i802
  %307 = inttoptr i64 %304 to i32*
  %308 = load i32, i32* %307
  %309 = sub i32 %301, %308
  %310 = icmp ult i32 %301, %308
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %311, i8* %312, align 1
  %313 = and i32 %309, 255
  %314 = call i32 @llvm.ctpop.i32(i32 %313)
  %315 = trunc i32 %314 to i8
  %316 = and i8 %315, 1
  %317 = xor i8 %316, 1
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %317, i8* %318, align 1
  %319 = xor i32 %308, %301
  %320 = xor i32 %319, %309
  %321 = lshr i32 %320, 4
  %322 = trunc i32 %321 to i8
  %323 = and i8 %322, 1
  %324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %323, i8* %324, align 1
  %325 = icmp eq i32 %309, 0
  %326 = zext i1 %325 to i8
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %326, i8* %327, align 1
  %328 = lshr i32 %309, 31
  %329 = trunc i32 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %329, i8* %330, align 1
  %331 = lshr i32 %301, 31
  %332 = lshr i32 %308, 31
  %333 = xor i32 %332, %331
  %334 = xor i32 %328, %331
  %335 = add i32 %334, %333
  %336 = icmp eq i32 %335, 2
  %337 = zext i1 %336 to i8
  %338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %337, i8* %338, align 1
  store %struct.Memory* %loadMem_4626ee, %struct.Memory** %MEMORY
  %loadMem_4626f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 33
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %PC.i801 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %PC.i801
  %343 = add i64 %342, 1431
  %344 = load i64, i64* %PC.i801
  %345 = add i64 %344, 6
  %346 = load i64, i64* %PC.i801
  %347 = add i64 %346, 6
  store i64 %347, i64* %PC.i801
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %349 = load i8, i8* %348, align 1
  %350 = icmp ne i8 %349, 0
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %352 = load i8, i8* %351, align 1
  %353 = icmp ne i8 %352, 0
  %354 = xor i1 %350, %353
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i8
  store i8 %356, i8* %BRANCH_TAKEN, align 1
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %358 = select i1 %354, i64 %345, i64 %343
  store i64 %358, i64* %357, align 8
  store %struct.Memory* %loadMem_4626f1, %struct.Memory** %MEMORY
  %loadBr_4626f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4626f1 = icmp eq i8 %loadBr_4626f1, 1
  br i1 %cmpBr_4626f1, label %block_.L_462c88, label %block_4626f7

block_4626f7:                                     ; preds = %block_.L_4626eb
  %loadMem_4626f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i798 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 1
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RAX.i799 = bitcast %union.anon* %364 to i64*
  %365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %366 = getelementptr inbounds %struct.GPR, %struct.GPR* %365, i32 0, i32 15
  %367 = getelementptr inbounds %struct.Reg, %struct.Reg* %366, i32 0, i32 0
  %RBP.i800 = bitcast %union.anon* %367 to i64*
  %368 = load i64, i64* %RBP.i800
  %369 = sub i64 %368, 16
  %370 = load i64, i64* %PC.i798
  %371 = add i64 %370, 4
  store i64 %371, i64* %PC.i798
  %372 = inttoptr i64 %369 to i64*
  %373 = load i64, i64* %372
  store i64 %373, i64* %RAX.i799, align 8
  store %struct.Memory* %loadMem_4626f7, %struct.Memory** %MEMORY
  %loadMem_4626fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %375 = getelementptr inbounds %struct.GPR, %struct.GPR* %374, i32 0, i32 33
  %376 = getelementptr inbounds %struct.Reg, %struct.Reg* %375, i32 0, i32 0
  %PC.i795 = bitcast %union.anon* %376 to i64*
  %377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %378 = getelementptr inbounds %struct.GPR, %struct.GPR* %377, i32 0, i32 5
  %379 = getelementptr inbounds %struct.Reg, %struct.Reg* %378, i32 0, i32 0
  %RCX.i796 = bitcast %union.anon* %379 to i64*
  %380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %381 = getelementptr inbounds %struct.GPR, %struct.GPR* %380, i32 0, i32 15
  %382 = getelementptr inbounds %struct.Reg, %struct.Reg* %381, i32 0, i32 0
  %RBP.i797 = bitcast %union.anon* %382 to i64*
  %383 = load i64, i64* %RBP.i797
  %384 = sub i64 %383, 68
  %385 = load i64, i64* %PC.i795
  %386 = add i64 %385, 4
  store i64 %386, i64* %PC.i795
  %387 = inttoptr i64 %384 to i32*
  %388 = load i32, i32* %387
  %389 = sext i32 %388 to i64
  store i64 %389, i64* %RCX.i796, align 8
  store %struct.Memory* %loadMem_4626fb, %struct.Memory** %MEMORY
  %loadMem_4626ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %391 = getelementptr inbounds %struct.GPR, %struct.GPR* %390, i32 0, i32 33
  %392 = getelementptr inbounds %struct.Reg, %struct.Reg* %391, i32 0, i32 0
  %PC.i791 = bitcast %union.anon* %392 to i64*
  %393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %394 = getelementptr inbounds %struct.GPR, %struct.GPR* %393, i32 0, i32 1
  %395 = getelementptr inbounds %struct.Reg, %struct.Reg* %394, i32 0, i32 0
  %RAX.i792 = bitcast %union.anon* %395 to i64*
  %396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %397 = getelementptr inbounds %struct.GPR, %struct.GPR* %396, i32 0, i32 5
  %398 = getelementptr inbounds %struct.Reg, %struct.Reg* %397, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %398 to i64*
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 7
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %RDX.i794 = bitcast %union.anon* %401 to i64*
  %402 = load i64, i64* %RAX.i792
  %403 = load i64, i64* %RCX.i793
  %404 = mul i64 %403, 4
  %405 = add i64 %404, %402
  %406 = load i64, i64* %PC.i791
  %407 = add i64 %406, 3
  store i64 %407, i64* %PC.i791
  %408 = inttoptr i64 %405 to i32*
  %409 = load i32, i32* %408
  %410 = zext i32 %409 to i64
  store i64 %410, i64* %RDX.i794, align 8
  store %struct.Memory* %loadMem_4626ff, %struct.Memory** %MEMORY
  %loadMem_462702 = load %struct.Memory*, %struct.Memory** %MEMORY
  %411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %412 = getelementptr inbounds %struct.GPR, %struct.GPR* %411, i32 0, i32 33
  %413 = getelementptr inbounds %struct.Reg, %struct.Reg* %412, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %413 to i64*
  %414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %415 = getelementptr inbounds %struct.GPR, %struct.GPR* %414, i32 0, i32 7
  %416 = getelementptr inbounds %struct.Reg, %struct.Reg* %415, i32 0, i32 0
  %EDX.i789 = bitcast %union.anon* %416 to i32*
  %417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %418 = getelementptr inbounds %struct.GPR, %struct.GPR* %417, i32 0, i32 15
  %419 = getelementptr inbounds %struct.Reg, %struct.Reg* %418, i32 0, i32 0
  %RBP.i790 = bitcast %union.anon* %419 to i64*
  %420 = load i64, i64* %RBP.i790
  %421 = sub i64 %420, 56
  %422 = load i32, i32* %EDX.i789
  %423 = zext i32 %422 to i64
  %424 = load i64, i64* %PC.i788
  %425 = add i64 %424, 3
  store i64 %425, i64* %PC.i788
  %426 = inttoptr i64 %421 to i32*
  store i32 %422, i32* %426
  store %struct.Memory* %loadMem_462702, %struct.Memory** %MEMORY
  %loadMem_462705 = load %struct.Memory*, %struct.Memory** %MEMORY
  %427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %428 = getelementptr inbounds %struct.GPR, %struct.GPR* %427, i32 0, i32 33
  %429 = getelementptr inbounds %struct.Reg, %struct.Reg* %428, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %429 to i64*
  %430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %431 = getelementptr inbounds %struct.GPR, %struct.GPR* %430, i32 0, i32 15
  %432 = getelementptr inbounds %struct.Reg, %struct.Reg* %431, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %432 to i64*
  %433 = load i64, i64* %RBP.i787
  %434 = sub i64 %433, 60
  %435 = load i64, i64* %PC.i786
  %436 = add i64 %435, 7
  store i64 %436, i64* %PC.i786
  %437 = inttoptr i64 %434 to i32*
  store i32 0, i32* %437
  store %struct.Memory* %loadMem_462705, %struct.Memory** %MEMORY
  br label %block_.L_46270c

block_.L_46270c:                                  ; preds = %block_.L_462c67, %block_4626f7
  %loadMem_46270c = load %struct.Memory*, %struct.Memory** %MEMORY
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %439 = getelementptr inbounds %struct.GPR, %struct.GPR* %438, i32 0, i32 33
  %440 = getelementptr inbounds %struct.Reg, %struct.Reg* %439, i32 0, i32 0
  %PC.i784 = bitcast %union.anon* %440 to i64*
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %442 = getelementptr inbounds %struct.GPR, %struct.GPR* %441, i32 0, i32 15
  %443 = getelementptr inbounds %struct.Reg, %struct.Reg* %442, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %443 to i64*
  %444 = load i64, i64* %RBP.i785
  %445 = sub i64 %444, 60
  %446 = load i64, i64* %PC.i784
  %447 = add i64 %446, 4
  store i64 %447, i64* %PC.i784
  %448 = inttoptr i64 %445 to i32*
  %449 = load i32, i32* %448
  %450 = sub i32 %449, 4
  %451 = icmp ult i32 %449, 4
  %452 = zext i1 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %452, i8* %453, align 1
  %454 = and i32 %450, 255
  %455 = call i32 @llvm.ctpop.i32(i32 %454)
  %456 = trunc i32 %455 to i8
  %457 = and i8 %456, 1
  %458 = xor i8 %457, 1
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %458, i8* %459, align 1
  %460 = xor i32 %449, 4
  %461 = xor i32 %460, %450
  %462 = lshr i32 %461, 4
  %463 = trunc i32 %462 to i8
  %464 = and i8 %463, 1
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %464, i8* %465, align 1
  %466 = icmp eq i32 %450, 0
  %467 = zext i1 %466 to i8
  %468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %467, i8* %468, align 1
  %469 = lshr i32 %450, 31
  %470 = trunc i32 %469 to i8
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %470, i8* %471, align 1
  %472 = lshr i32 %449, 31
  %473 = xor i32 %469, %472
  %474 = add i32 %473, %472
  %475 = icmp eq i32 %474, 2
  %476 = zext i1 %475 to i8
  %477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %476, i8* %477, align 1
  store %struct.Memory* %loadMem_46270c, %struct.Memory** %MEMORY
  %loadMem_462710 = load %struct.Memory*, %struct.Memory** %MEMORY
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 33
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %480 to i64*
  %481 = load i64, i64* %PC.i783
  %482 = add i64 %481, 1381
  %483 = load i64, i64* %PC.i783
  %484 = add i64 %483, 6
  %485 = load i64, i64* %PC.i783
  %486 = add i64 %485, 6
  store i64 %486, i64* %PC.i783
  %487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %488 = load i8, i8* %487, align 1
  %489 = icmp ne i8 %488, 0
  %490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %491 = load i8, i8* %490, align 1
  %492 = icmp ne i8 %491, 0
  %493 = xor i1 %489, %492
  %494 = xor i1 %493, true
  %495 = zext i1 %494 to i8
  store i8 %495, i8* %BRANCH_TAKEN, align 1
  %496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %497 = select i1 %493, i64 %484, i64 %482
  store i64 %497, i64* %496, align 8
  store %struct.Memory* %loadMem_462710, %struct.Memory** %MEMORY
  %loadBr_462710 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462710 = icmp eq i8 %loadBr_462710, 1
  br i1 %cmpBr_462710, label %block_.L_462c75, label %block_462716

block_462716:                                     ; preds = %block_.L_46270c
  %loadMem_462716 = load %struct.Memory*, %struct.Memory** %MEMORY
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 33
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %PC.i780 = bitcast %union.anon* %500 to i64*
  %501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %502 = getelementptr inbounds %struct.GPR, %struct.GPR* %501, i32 0, i32 1
  %503 = getelementptr inbounds %struct.Reg, %struct.Reg* %502, i32 0, i32 0
  %RAX.i781 = bitcast %union.anon* %503 to i64*
  %504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %505 = getelementptr inbounds %struct.GPR, %struct.GPR* %504, i32 0, i32 15
  %506 = getelementptr inbounds %struct.Reg, %struct.Reg* %505, i32 0, i32 0
  %RBP.i782 = bitcast %union.anon* %506 to i64*
  %507 = load i64, i64* %RBP.i782
  %508 = sub i64 %507, 60
  %509 = load i64, i64* %PC.i780
  %510 = add i64 %509, 4
  store i64 %510, i64* %PC.i780
  %511 = inttoptr i64 %508 to i32*
  %512 = load i32, i32* %511
  %513 = sext i32 %512 to i64
  store i64 %513, i64* %RAX.i781, align 8
  store %struct.Memory* %loadMem_462716, %struct.Memory** %MEMORY
  %loadMem_46271a = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RAX.i778 = bitcast %union.anon* %519 to i64*
  %520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %521 = getelementptr inbounds %struct.GPR, %struct.GPR* %520, i32 0, i32 5
  %522 = getelementptr inbounds %struct.Reg, %struct.Reg* %521, i32 0, i32 0
  %RCX.i779 = bitcast %union.anon* %522 to i64*
  %523 = load i64, i64* %RAX.i778
  %524 = mul i64 %523, 4
  %525 = add i64 %524, 8053168
  %526 = load i64, i64* %PC.i777
  %527 = add i64 %526, 7
  store i64 %527, i64* %PC.i777
  %528 = inttoptr i64 %525 to i32*
  %529 = load i32, i32* %528
  %530 = zext i32 %529 to i64
  store i64 %530, i64* %RCX.i779, align 8
  store %struct.Memory* %loadMem_46271a, %struct.Memory** %MEMORY
  %loadMem_462721 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i774 = bitcast %union.anon* %533 to i64*
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %535 = getelementptr inbounds %struct.GPR, %struct.GPR* %534, i32 0, i32 5
  %536 = getelementptr inbounds %struct.Reg, %struct.Reg* %535, i32 0, i32 0
  %ECX.i775 = bitcast %union.anon* %536 to i32*
  %537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %538 = getelementptr inbounds %struct.GPR, %struct.GPR* %537, i32 0, i32 15
  %539 = getelementptr inbounds %struct.Reg, %struct.Reg* %538, i32 0, i32 0
  %RBP.i776 = bitcast %union.anon* %539 to i64*
  %540 = load i64, i64* %RBP.i776
  %541 = sub i64 %540, 52
  %542 = load i32, i32* %ECX.i775
  %543 = zext i32 %542 to i64
  %544 = load i64, i64* %PC.i774
  %545 = add i64 %544, 3
  store i64 %545, i64* %PC.i774
  %546 = inttoptr i64 %541 to i32*
  store i32 %542, i32* %546
  store %struct.Memory* %loadMem_462721, %struct.Memory** %MEMORY
  %loadMem_462724 = load %struct.Memory*, %struct.Memory** %MEMORY
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %548 = getelementptr inbounds %struct.GPR, %struct.GPR* %547, i32 0, i32 33
  %549 = getelementptr inbounds %struct.Reg, %struct.Reg* %548, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %549 to i64*
  %550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %551 = getelementptr inbounds %struct.GPR, %struct.GPR* %550, i32 0, i32 5
  %552 = getelementptr inbounds %struct.Reg, %struct.Reg* %551, i32 0, i32 0
  %RCX.i772 = bitcast %union.anon* %552 to i64*
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %554 = getelementptr inbounds %struct.GPR, %struct.GPR* %553, i32 0, i32 15
  %555 = getelementptr inbounds %struct.Reg, %struct.Reg* %554, i32 0, i32 0
  %RBP.i773 = bitcast %union.anon* %555 to i64*
  %556 = load i64, i64* %RBP.i773
  %557 = sub i64 %556, 56
  %558 = load i64, i64* %PC.i771
  %559 = add i64 %558, 3
  store i64 %559, i64* %PC.i771
  %560 = inttoptr i64 %557 to i32*
  %561 = load i32, i32* %560
  %562 = zext i32 %561 to i64
  store i64 %562, i64* %RCX.i772, align 8
  store %struct.Memory* %loadMem_462724, %struct.Memory** %MEMORY
  %loadMem_462727 = load %struct.Memory*, %struct.Memory** %MEMORY
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 33
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %PC.i768 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 5
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RCX.i769 = bitcast %union.anon* %568 to i64*
  %569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %570 = getelementptr inbounds %struct.GPR, %struct.GPR* %569, i32 0, i32 15
  %571 = getelementptr inbounds %struct.Reg, %struct.Reg* %570, i32 0, i32 0
  %RBP.i770 = bitcast %union.anon* %571 to i64*
  %572 = load i64, i64* %RCX.i769
  %573 = load i64, i64* %RBP.i770
  %574 = sub i64 %573, 52
  %575 = load i64, i64* %PC.i768
  %576 = add i64 %575, 3
  store i64 %576, i64* %PC.i768
  %577 = trunc i64 %572 to i32
  %578 = inttoptr i64 %574 to i32*
  %579 = load i32, i32* %578
  %580 = sub i32 %577, %579
  %581 = zext i32 %580 to i64
  store i64 %581, i64* %RCX.i769, align 8
  %582 = icmp ult i32 %577, %579
  %583 = zext i1 %582 to i8
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %583, i8* %584, align 1
  %585 = and i32 %580, 255
  %586 = call i32 @llvm.ctpop.i32(i32 %585)
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = xor i8 %588, 1
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %589, i8* %590, align 1
  %591 = xor i32 %579, %577
  %592 = xor i32 %591, %580
  %593 = lshr i32 %592, 4
  %594 = trunc i32 %593 to i8
  %595 = and i8 %594, 1
  %596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %595, i8* %596, align 1
  %597 = icmp eq i32 %580, 0
  %598 = zext i1 %597 to i8
  %599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %598, i8* %599, align 1
  %600 = lshr i32 %580, 31
  %601 = trunc i32 %600 to i8
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %601, i8* %602, align 1
  %603 = lshr i32 %577, 31
  %604 = lshr i32 %579, 31
  %605 = xor i32 %604, %603
  %606 = xor i32 %600, %603
  %607 = add i32 %606, %605
  %608 = icmp eq i32 %607, 2
  %609 = zext i1 %608 to i8
  %610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %609, i8* %610, align 1
  store %struct.Memory* %loadMem_462727, %struct.Memory** %MEMORY
  %loadMem_46272a = load %struct.Memory*, %struct.Memory** %MEMORY
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %612 = getelementptr inbounds %struct.GPR, %struct.GPR* %611, i32 0, i32 33
  %613 = getelementptr inbounds %struct.Reg, %struct.Reg* %612, i32 0, i32 0
  %PC.i765 = bitcast %union.anon* %613 to i64*
  %614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %615 = getelementptr inbounds %struct.GPR, %struct.GPR* %614, i32 0, i32 5
  %616 = getelementptr inbounds %struct.Reg, %struct.Reg* %615, i32 0, i32 0
  %ECX.i766 = bitcast %union.anon* %616 to i32*
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 1
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %RAX.i767 = bitcast %union.anon* %619 to i64*
  %620 = load i32, i32* %ECX.i766
  %621 = zext i32 %620 to i64
  %622 = load i64, i64* %PC.i765
  %623 = add i64 %622, 3
  store i64 %623, i64* %PC.i765
  %624 = shl i64 %621, 32
  %625 = ashr exact i64 %624, 32
  store i64 %625, i64* %RAX.i767, align 8
  store %struct.Memory* %loadMem_46272a, %struct.Memory** %MEMORY
  %loadMem_46272d = load %struct.Memory*, %struct.Memory** %MEMORY
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %627 = getelementptr inbounds %struct.GPR, %struct.GPR* %626, i32 0, i32 33
  %628 = getelementptr inbounds %struct.Reg, %struct.Reg* %627, i32 0, i32 0
  %PC.i762 = bitcast %union.anon* %628 to i64*
  %629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %630 = getelementptr inbounds %struct.GPR, %struct.GPR* %629, i32 0, i32 1
  %631 = getelementptr inbounds %struct.Reg, %struct.Reg* %630, i32 0, i32 0
  %RAX.i763 = bitcast %union.anon* %631 to i64*
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %633 = getelementptr inbounds %struct.GPR, %struct.GPR* %632, i32 0, i32 5
  %634 = getelementptr inbounds %struct.Reg, %struct.Reg* %633, i32 0, i32 0
  %RCX.i764 = bitcast %union.anon* %634 to i64*
  %635 = load i64, i64* %RAX.i763
  %636 = add i64 %635, 12099168
  %637 = load i64, i64* %PC.i762
  %638 = add i64 %637, 8
  store i64 %638, i64* %PC.i762
  %639 = inttoptr i64 %636 to i8*
  %640 = load i8, i8* %639
  %641 = zext i8 %640 to i64
  store i64 %641, i64* %RCX.i764, align 8
  store %struct.Memory* %loadMem_46272d, %struct.Memory** %MEMORY
  %loadMem_462735 = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 5
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %ECX.i761 = bitcast %union.anon* %647 to i32*
  %648 = load i32, i32* %ECX.i761
  %649 = zext i32 %648 to i64
  %650 = load i64, i64* %PC.i760
  %651 = add i64 %650, 3
  store i64 %651, i64* %PC.i760
  %652 = sub i32 %648, 3
  %653 = icmp ult i32 %648, 3
  %654 = zext i1 %653 to i8
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %654, i8* %655, align 1
  %656 = and i32 %652, 255
  %657 = call i32 @llvm.ctpop.i32(i32 %656)
  %658 = trunc i32 %657 to i8
  %659 = and i8 %658, 1
  %660 = xor i8 %659, 1
  %661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %660, i8* %661, align 1
  %662 = xor i64 3, %649
  %663 = trunc i64 %662 to i32
  %664 = xor i32 %663, %652
  %665 = lshr i32 %664, 4
  %666 = trunc i32 %665 to i8
  %667 = and i8 %666, 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %667, i8* %668, align 1
  %669 = icmp eq i32 %652, 0
  %670 = zext i1 %669 to i8
  %671 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %670, i8* %671, align 1
  %672 = lshr i32 %652, 31
  %673 = trunc i32 %672 to i8
  %674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %673, i8* %674, align 1
  %675 = lshr i32 %648, 31
  %676 = xor i32 %672, %675
  %677 = add i32 %676, %675
  %678 = icmp eq i32 %677, 2
  %679 = zext i1 %678 to i8
  %680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %679, i8* %680, align 1
  store %struct.Memory* %loadMem_462735, %struct.Memory** %MEMORY
  %loadMem_462738 = load %struct.Memory*, %struct.Memory** %MEMORY
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %682 = getelementptr inbounds %struct.GPR, %struct.GPR* %681, i32 0, i32 33
  %683 = getelementptr inbounds %struct.Reg, %struct.Reg* %682, i32 0, i32 0
  %PC.i759 = bitcast %union.anon* %683 to i64*
  %684 = load i64, i64* %PC.i759
  %685 = add i64 %684, 11
  %686 = load i64, i64* %PC.i759
  %687 = add i64 %686, 6
  %688 = load i64, i64* %PC.i759
  %689 = add i64 %688, 6
  store i64 %689, i64* %PC.i759
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %691 = load i8, i8* %690, align 1
  store i8 %691, i8* %BRANCH_TAKEN, align 1
  %692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %693 = icmp ne i8 %691, 0
  %694 = select i1 %693, i64 %685, i64 %687
  store i64 %694, i64* %692, align 8
  store %struct.Memory* %loadMem_462738, %struct.Memory** %MEMORY
  %loadBr_462738 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462738 = icmp eq i8 %loadBr_462738, 1
  br i1 %cmpBr_462738, label %block_.L_462743, label %block_46273e

block_46273e:                                     ; preds = %block_462716
  %loadMem_46273e = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i758 = bitcast %union.anon* %697 to i64*
  %698 = load i64, i64* %PC.i758
  %699 = add i64 %698, 1321
  %700 = load i64, i64* %PC.i758
  %701 = add i64 %700, 5
  store i64 %701, i64* %PC.i758
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %699, i64* %702, align 8
  store %struct.Memory* %loadMem_46273e, %struct.Memory** %MEMORY
  br label %block_.L_462c67

block_.L_462743:                                  ; preds = %block_462716
  %loadMem_462743 = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i756 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 15
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RBP.i757 = bitcast %union.anon* %708 to i64*
  %709 = load i64, i64* %RBP.i757
  %710 = sub i64 %709, 64
  %711 = load i64, i64* %PC.i756
  %712 = add i64 %711, 7
  store i64 %712, i64* %PC.i756
  %713 = inttoptr i64 %710 to i32*
  store i32 0, i32* %713
  store %struct.Memory* %loadMem_462743, %struct.Memory** %MEMORY
  br label %block_.L_46274a

block_.L_46274a:                                  ; preds = %block_.L_462c54, %block_.L_462743
  %loadMem_46274a = load %struct.Memory*, %struct.Memory** %MEMORY
  %714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %715 = getelementptr inbounds %struct.GPR, %struct.GPR* %714, i32 0, i32 33
  %716 = getelementptr inbounds %struct.Reg, %struct.Reg* %715, i32 0, i32 0
  %PC.i754 = bitcast %union.anon* %716 to i64*
  %717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %718 = getelementptr inbounds %struct.GPR, %struct.GPR* %717, i32 0, i32 15
  %719 = getelementptr inbounds %struct.Reg, %struct.Reg* %718, i32 0, i32 0
  %RBP.i755 = bitcast %union.anon* %719 to i64*
  %720 = load i64, i64* %RBP.i755
  %721 = sub i64 %720, 64
  %722 = load i64, i64* %PC.i754
  %723 = add i64 %722, 4
  store i64 %723, i64* %PC.i754
  %724 = inttoptr i64 %721 to i32*
  %725 = load i32, i32* %724
  %726 = sub i32 %725, 2
  %727 = icmp ult i32 %725, 2
  %728 = zext i1 %727 to i8
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %728, i8* %729, align 1
  %730 = and i32 %726, 255
  %731 = call i32 @llvm.ctpop.i32(i32 %730)
  %732 = trunc i32 %731 to i8
  %733 = and i8 %732, 1
  %734 = xor i8 %733, 1
  %735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %734, i8* %735, align 1
  %736 = xor i32 %725, 2
  %737 = xor i32 %736, %726
  %738 = lshr i32 %737, 4
  %739 = trunc i32 %738 to i8
  %740 = and i8 %739, 1
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %740, i8* %741, align 1
  %742 = icmp eq i32 %726, 0
  %743 = zext i1 %742 to i8
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %743, i8* %744, align 1
  %745 = lshr i32 %726, 31
  %746 = trunc i32 %745 to i8
  %747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %746, i8* %747, align 1
  %748 = lshr i32 %725, 31
  %749 = xor i32 %745, %748
  %750 = add i32 %749, %748
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %752, i8* %753, align 1
  store %struct.Memory* %loadMem_46274a, %struct.Memory** %MEMORY
  %loadMem_46274e = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i753 = bitcast %union.anon* %756 to i64*
  %757 = load i64, i64* %PC.i753
  %758 = add i64 %757, 1300
  %759 = load i64, i64* %PC.i753
  %760 = add i64 %759, 6
  %761 = load i64, i64* %PC.i753
  %762 = add i64 %761, 6
  store i64 %762, i64* %PC.i753
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %764 = load i8, i8* %763, align 1
  %765 = icmp ne i8 %764, 0
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %767 = load i8, i8* %766, align 1
  %768 = icmp ne i8 %767, 0
  %769 = xor i1 %765, %768
  %770 = xor i1 %769, true
  %771 = zext i1 %770 to i8
  store i8 %771, i8* %BRANCH_TAKEN, align 1
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %773 = select i1 %769, i64 %760, i64 %758
  store i64 %773, i64* %772, align 8
  store %struct.Memory* %loadMem_46274e, %struct.Memory** %MEMORY
  %loadBr_46274e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46274e = icmp eq i8 %loadBr_46274e, 1
  br i1 %cmpBr_46274e, label %block_.L_462c62, label %block_462754

block_462754:                                     ; preds = %block_.L_46274a
  %loadMem_462754 = load %struct.Memory*, %struct.Memory** %MEMORY
  %774 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %775 = getelementptr inbounds %struct.GPR, %struct.GPR* %774, i32 0, i32 33
  %776 = getelementptr inbounds %struct.Reg, %struct.Reg* %775, i32 0, i32 0
  %PC.i751 = bitcast %union.anon* %776 to i64*
  %777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %778 = getelementptr inbounds %struct.GPR, %struct.GPR* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.Reg, %struct.Reg* %778, i32 0, i32 0
  %RAX.i752 = bitcast %union.anon* %779 to i64*
  %780 = load i64, i64* %PC.i751
  %781 = add i64 %780, 5
  store i64 %781, i64* %PC.i751
  store i64 4, i64* %RAX.i752, align 8
  store %struct.Memory* %loadMem_462754, %struct.Memory** %MEMORY
  %loadMem_462759 = load %struct.Memory*, %struct.Memory** %MEMORY
  %782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %783 = getelementptr inbounds %struct.GPR, %struct.GPR* %782, i32 0, i32 33
  %784 = getelementptr inbounds %struct.Reg, %struct.Reg* %783, i32 0, i32 0
  %PC.i748 = bitcast %union.anon* %784 to i64*
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 5
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %RCX.i749 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 15
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RBP.i750 = bitcast %union.anon* %790 to i64*
  %791 = load i64, i64* %RBP.i750
  %792 = sub i64 %791, 60
  %793 = load i64, i64* %PC.i748
  %794 = add i64 %793, 3
  store i64 %794, i64* %PC.i748
  %795 = inttoptr i64 %792 to i32*
  %796 = load i32, i32* %795
  %797 = zext i32 %796 to i64
  store i64 %797, i64* %RCX.i749, align 8
  store %struct.Memory* %loadMem_462759, %struct.Memory** %MEMORY
  %loadMem_46275c = load %struct.Memory*, %struct.Memory** %MEMORY
  %798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %799 = getelementptr inbounds %struct.GPR, %struct.GPR* %798, i32 0, i32 33
  %800 = getelementptr inbounds %struct.Reg, %struct.Reg* %799, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %800 to i64*
  %801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %802 = getelementptr inbounds %struct.GPR, %struct.GPR* %801, i32 0, i32 5
  %803 = getelementptr inbounds %struct.Reg, %struct.Reg* %802, i32 0, i32 0
  %RCX.i747 = bitcast %union.anon* %803 to i64*
  %804 = load i64, i64* %RCX.i747
  %805 = load i64, i64* %PC.i746
  %806 = add i64 %805, 3
  store i64 %806, i64* %PC.i746
  %807 = trunc i64 %804 to i32
  %808 = add i32 1, %807
  %809 = zext i32 %808 to i64
  store i64 %809, i64* %RCX.i747, align 8
  %810 = icmp ult i32 %808, %807
  %811 = icmp ult i32 %808, 1
  %812 = or i1 %810, %811
  %813 = zext i1 %812 to i8
  %814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %813, i8* %814, align 1
  %815 = and i32 %808, 255
  %816 = call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %819, i8* %820, align 1
  %821 = xor i64 1, %804
  %822 = trunc i64 %821 to i32
  %823 = xor i32 %822, %808
  %824 = lshr i32 %823, 4
  %825 = trunc i32 %824 to i8
  %826 = and i8 %825, 1
  %827 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %826, i8* %827, align 1
  %828 = icmp eq i32 %808, 0
  %829 = zext i1 %828 to i8
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %829, i8* %830, align 1
  %831 = lshr i32 %808, 31
  %832 = trunc i32 %831 to i8
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %832, i8* %833, align 1
  %834 = lshr i32 %807, 31
  %835 = xor i32 %831, %834
  %836 = add i32 %835, %831
  %837 = icmp eq i32 %836, 2
  %838 = zext i1 %837 to i8
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %838, i8* %839, align 1
  store %struct.Memory* %loadMem_46275c, %struct.Memory** %MEMORY
  %loadMem_46275f = load %struct.Memory*, %struct.Memory** %MEMORY
  %840 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %841 = getelementptr inbounds %struct.GPR, %struct.GPR* %840, i32 0, i32 33
  %842 = getelementptr inbounds %struct.Reg, %struct.Reg* %841, i32 0, i32 0
  %PC.i743 = bitcast %union.anon* %842 to i64*
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %844 = getelementptr inbounds %struct.GPR, %struct.GPR* %843, i32 0, i32 1
  %845 = getelementptr inbounds %struct.Reg, %struct.Reg* %844, i32 0, i32 0
  %EAX.i744 = bitcast %union.anon* %845 to i32*
  %846 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %847 = getelementptr inbounds %struct.GPR, %struct.GPR* %846, i32 0, i32 15
  %848 = getelementptr inbounds %struct.Reg, %struct.Reg* %847, i32 0, i32 0
  %RBP.i745 = bitcast %union.anon* %848 to i64*
  %849 = load i64, i64* %RBP.i745
  %850 = sub i64 %849, 96
  %851 = load i32, i32* %EAX.i744
  %852 = zext i32 %851 to i64
  %853 = load i64, i64* %PC.i743
  %854 = add i64 %853, 3
  store i64 %854, i64* %PC.i743
  %855 = inttoptr i64 %850 to i32*
  store i32 %851, i32* %855
  store %struct.Memory* %loadMem_46275f, %struct.Memory** %MEMORY
  %loadMem_462762 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %858 to i64*
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 5
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %ECX.i741 = bitcast %union.anon* %861 to i32*
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 1
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %RAX.i742 = bitcast %union.anon* %864 to i64*
  %865 = load i32, i32* %ECX.i741
  %866 = zext i32 %865 to i64
  %867 = load i64, i64* %PC.i740
  %868 = add i64 %867, 2
  store i64 %868, i64* %PC.i740
  %869 = and i64 %866, 4294967295
  store i64 %869, i64* %RAX.i742, align 8
  store %struct.Memory* %loadMem_462762, %struct.Memory** %MEMORY
  %loadMem_462764 = load %struct.Memory*, %struct.Memory** %MEMORY
  %870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %871 = getelementptr inbounds %struct.GPR, %struct.GPR* %870, i32 0, i32 33
  %872 = getelementptr inbounds %struct.Reg, %struct.Reg* %871, i32 0, i32 0
  %PC.i739 = bitcast %union.anon* %872 to i64*
  %873 = load i64, i64* %PC.i739
  %874 = add i64 %873, 1
  store i64 %874, i64* %PC.i739
  %875 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %877 = bitcast %union.anon* %876 to i32*
  %878 = load i32, i32* %877, align 8
  %879 = sext i32 %878 to i64
  %880 = lshr i64 %879, 32
  store i64 %880, i64* %875, align 8
  store %struct.Memory* %loadMem_462764, %struct.Memory** %MEMORY
  %loadMem_462765 = load %struct.Memory*, %struct.Memory** %MEMORY
  %881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %882 = getelementptr inbounds %struct.GPR, %struct.GPR* %881, i32 0, i32 33
  %883 = getelementptr inbounds %struct.Reg, %struct.Reg* %882, i32 0, i32 0
  %PC.i736 = bitcast %union.anon* %883 to i64*
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 5
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %RCX.i737 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 15
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RBP.i738 = bitcast %union.anon* %889 to i64*
  %890 = load i64, i64* %RBP.i738
  %891 = sub i64 %890, 96
  %892 = load i64, i64* %PC.i736
  %893 = add i64 %892, 3
  store i64 %893, i64* %PC.i736
  %894 = inttoptr i64 %891 to i32*
  %895 = load i32, i32* %894
  %896 = zext i32 %895 to i64
  store i64 %896, i64* %RCX.i737, align 8
  store %struct.Memory* %loadMem_462765, %struct.Memory** %MEMORY
  %loadMem_462768 = load %struct.Memory*, %struct.Memory** %MEMORY
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 33
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %PC.i731 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 5
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %ECX.i732 = bitcast %union.anon* %902 to i32*
  %903 = load i32, i32* %ECX.i732
  %904 = zext i32 %903 to i64
  %905 = load i64, i64* %PC.i731
  %906 = add i64 %905, 2
  store i64 %906, i64* %PC.i731
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %908 = bitcast %union.anon* %907 to i32*
  %909 = load i32, i32* %908, align 8
  %910 = zext i32 %909 to i64
  %911 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %912 = bitcast %union.anon* %911 to i32*
  %913 = load i32, i32* %912, align 8
  %914 = zext i32 %913 to i64
  %915 = shl i64 %904, 32
  %916 = ashr exact i64 %915, 32
  %917 = shl i64 %914, 32
  %918 = or i64 %917, %910
  %919 = sdiv i64 %918, %916
  %920 = shl i64 %919, 32
  %921 = ashr exact i64 %920, 32
  %922 = icmp eq i64 %919, %921
  br i1 %922, label %927, label %923

; <label>:923:                                    ; preds = %block_462754
  %924 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %925 = load i64, i64* %924, align 8
  %926 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %925, %struct.Memory* %loadMem_462768)
  br label %routine_idivl__ecx.exit

; <label>:927:                                    ; preds = %block_462754
  %928 = srem i64 %918, %916
  %929 = getelementptr inbounds %union.anon, %union.anon* %907, i64 0, i32 0
  %930 = and i64 %919, 4294967295
  store i64 %930, i64* %929, align 8
  %931 = getelementptr inbounds %union.anon, %union.anon* %911, i64 0, i32 0
  %932 = and i64 %928, 4294967295
  store i64 %932, i64* %931, align 8
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %933, align 1
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %934, align 1
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %935, align 1
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %936, align 1
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %937, align 1
  %938 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %938, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %923, %927
  %939 = phi %struct.Memory* [ %926, %923 ], [ %loadMem_462768, %927 ]
  store %struct.Memory* %939, %struct.Memory** %MEMORY
  %loadMem_46276a = load %struct.Memory*, %struct.Memory** %MEMORY
  %940 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %941 = getelementptr inbounds %struct.GPR, %struct.GPR* %940, i32 0, i32 33
  %942 = getelementptr inbounds %struct.Reg, %struct.Reg* %941, i32 0, i32 0
  %PC.i728 = bitcast %union.anon* %942 to i64*
  %943 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %944 = getelementptr inbounds %struct.GPR, %struct.GPR* %943, i32 0, i32 7
  %945 = getelementptr inbounds %struct.Reg, %struct.Reg* %944, i32 0, i32 0
  %EDX.i729 = bitcast %union.anon* %945 to i32*
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 9
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %RSI.i730 = bitcast %union.anon* %948 to i64*
  %949 = load i32, i32* %EDX.i729
  %950 = zext i32 %949 to i64
  %951 = load i64, i64* %PC.i728
  %952 = add i64 %951, 3
  store i64 %952, i64* %PC.i728
  %953 = shl i64 %950, 32
  %954 = ashr exact i64 %953, 32
  store i64 %954, i64* %RSI.i730, align 8
  store %struct.Memory* %loadMem_46276a, %struct.Memory** %MEMORY
  %loadMem_46276d = load %struct.Memory*, %struct.Memory** %MEMORY
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 33
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %PC.i725 = bitcast %union.anon* %957 to i64*
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 7
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %RDX.i726 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 9
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RSI.i727 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RSI.i727
  %965 = mul i64 %964, 4
  %966 = add i64 %965, 8053168
  %967 = load i64, i64* %PC.i725
  %968 = add i64 %967, 7
  store i64 %968, i64* %PC.i725
  %969 = inttoptr i64 %966 to i32*
  %970 = load i32, i32* %969
  %971 = zext i32 %970 to i64
  store i64 %971, i64* %RDX.i726, align 8
  store %struct.Memory* %loadMem_46276d, %struct.Memory** %MEMORY
  %loadMem_462774 = load %struct.Memory*, %struct.Memory** %MEMORY
  %972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %973 = getelementptr inbounds %struct.GPR, %struct.GPR* %972, i32 0, i32 33
  %974 = getelementptr inbounds %struct.Reg, %struct.Reg* %973, i32 0, i32 0
  %PC.i722 = bitcast %union.anon* %974 to i64*
  %975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %976 = getelementptr inbounds %struct.GPR, %struct.GPR* %975, i32 0, i32 7
  %977 = getelementptr inbounds %struct.Reg, %struct.Reg* %976, i32 0, i32 0
  %EDX.i723 = bitcast %union.anon* %977 to i32*
  %978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %979 = getelementptr inbounds %struct.GPR, %struct.GPR* %978, i32 0, i32 15
  %980 = getelementptr inbounds %struct.Reg, %struct.Reg* %979, i32 0, i32 0
  %RBP.i724 = bitcast %union.anon* %980 to i64*
  %981 = load i64, i64* %RBP.i724
  %982 = sub i64 %981, 48
  %983 = load i32, i32* %EDX.i723
  %984 = zext i32 %983 to i64
  %985 = load i64, i64* %PC.i722
  %986 = add i64 %985, 3
  store i64 %986, i64* %PC.i722
  %987 = inttoptr i64 %982 to i32*
  store i32 %983, i32* %987
  store %struct.Memory* %loadMem_462774, %struct.Memory** %MEMORY
  %loadMem_462777 = load %struct.Memory*, %struct.Memory** %MEMORY
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %989 = getelementptr inbounds %struct.GPR, %struct.GPR* %988, i32 0, i32 33
  %990 = getelementptr inbounds %struct.Reg, %struct.Reg* %989, i32 0, i32 0
  %PC.i720 = bitcast %union.anon* %990 to i64*
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %992 = getelementptr inbounds %struct.GPR, %struct.GPR* %991, i32 0, i32 15
  %993 = getelementptr inbounds %struct.Reg, %struct.Reg* %992, i32 0, i32 0
  %RBP.i721 = bitcast %union.anon* %993 to i64*
  %994 = load i64, i64* %RBP.i721
  %995 = sub i64 %994, 64
  %996 = load i64, i64* %PC.i720
  %997 = add i64 %996, 4
  store i64 %997, i64* %PC.i720
  %998 = inttoptr i64 %995 to i32*
  %999 = load i32, i32* %998
  %1000 = sub i32 %999, 1
  %1001 = icmp ult i32 %999, 1
  %1002 = zext i1 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1002, i8* %1003, align 1
  %1004 = and i32 %1000, 255
  %1005 = call i32 @llvm.ctpop.i32(i32 %1004)
  %1006 = trunc i32 %1005 to i8
  %1007 = and i8 %1006, 1
  %1008 = xor i8 %1007, 1
  %1009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1008, i8* %1009, align 1
  %1010 = xor i32 %999, 1
  %1011 = xor i32 %1010, %1000
  %1012 = lshr i32 %1011, 4
  %1013 = trunc i32 %1012 to i8
  %1014 = and i8 %1013, 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1014, i8* %1015, align 1
  %1016 = icmp eq i32 %1000, 0
  %1017 = zext i1 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1017, i8* %1018, align 1
  %1019 = lshr i32 %1000, 31
  %1020 = trunc i32 %1019 to i8
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1020, i8* %1021, align 1
  %1022 = lshr i32 %999, 31
  %1023 = xor i32 %1019, %1022
  %1024 = add i32 %1023, %1022
  %1025 = icmp eq i32 %1024, 2
  %1026 = zext i1 %1025 to i8
  %1027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1026, i8* %1027, align 1
  store %struct.Memory* %loadMem_462777, %struct.Memory** %MEMORY
  %loadMem_46277b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 33
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1030 to i64*
  %1031 = load i64, i64* %PC.i719
  %1032 = add i64 %1031, 14
  %1033 = load i64, i64* %PC.i719
  %1034 = add i64 %1033, 6
  %1035 = load i64, i64* %PC.i719
  %1036 = add i64 %1035, 6
  store i64 %1036, i64* %PC.i719
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1038 = load i8, i8* %1037, align 1
  %1039 = icmp eq i8 %1038, 0
  %1040 = zext i1 %1039 to i8
  store i8 %1040, i8* %BRANCH_TAKEN, align 1
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1042 = select i1 %1039, i64 %1032, i64 %1034
  store i64 %1042, i64* %1041, align 8
  store %struct.Memory* %loadMem_46277b, %struct.Memory** %MEMORY
  %loadBr_46277b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46277b = icmp eq i8 %loadBr_46277b, 1
  br i1 %cmpBr_46277b, label %block_.L_462789, label %block_462781

block_462781:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_462781 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1044 = getelementptr inbounds %struct.GPR, %struct.GPR* %1043, i32 0, i32 33
  %1045 = getelementptr inbounds %struct.Reg, %struct.Reg* %1044, i32 0, i32 0
  %PC.i716 = bitcast %union.anon* %1045 to i64*
  %1046 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1047 = getelementptr inbounds %struct.GPR, %struct.GPR* %1046, i32 0, i32 1
  %1048 = getelementptr inbounds %struct.Reg, %struct.Reg* %1047, i32 0, i32 0
  %EAX.i717 = bitcast %union.anon* %1048 to i32*
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 1
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %RAX.i718
  %1053 = load i32, i32* %EAX.i717
  %1054 = zext i32 %1053 to i64
  %1055 = load i64, i64* %PC.i716
  %1056 = add i64 %1055, 2
  store i64 %1056, i64* %PC.i716
  %1057 = xor i64 %1054, %1052
  %1058 = trunc i64 %1057 to i32
  %1059 = and i64 %1057, 4294967295
  store i64 %1059, i64* %RAX.i718, align 8
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1060, align 1
  %1061 = and i32 %1058, 255
  %1062 = call i32 @llvm.ctpop.i32(i32 %1061)
  %1063 = trunc i32 %1062 to i8
  %1064 = and i8 %1063, 1
  %1065 = xor i8 %1064, 1
  %1066 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1065, i8* %1066, align 1
  %1067 = icmp eq i32 %1058, 0
  %1068 = zext i1 %1067 to i8
  %1069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1068, i8* %1069, align 1
  %1070 = lshr i32 %1058, 31
  %1071 = trunc i32 %1070 to i8
  %1072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1071, i8* %1072, align 1
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1073, align 1
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1074, align 1
  store %struct.Memory* %loadMem_462781, %struct.Memory** %MEMORY
  %loadMem_462783 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1076 = getelementptr inbounds %struct.GPR, %struct.GPR* %1075, i32 0, i32 33
  %1077 = getelementptr inbounds %struct.Reg, %struct.Reg* %1076, i32 0, i32 0
  %PC.i713 = bitcast %union.anon* %1077 to i64*
  %1078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1079 = getelementptr inbounds %struct.GPR, %struct.GPR* %1078, i32 0, i32 1
  %1080 = getelementptr inbounds %struct.Reg, %struct.Reg* %1079, i32 0, i32 0
  %RAX.i714 = bitcast %union.anon* %1080 to i64*
  %1081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1082 = getelementptr inbounds %struct.GPR, %struct.GPR* %1081, i32 0, i32 15
  %1083 = getelementptr inbounds %struct.Reg, %struct.Reg* %1082, i32 0, i32 0
  %RBP.i715 = bitcast %union.anon* %1083 to i64*
  %1084 = load i64, i64* %RAX.i714
  %1085 = load i64, i64* %RBP.i715
  %1086 = sub i64 %1085, 48
  %1087 = load i64, i64* %PC.i713
  %1088 = add i64 %1087, 3
  store i64 %1088, i64* %PC.i713
  %1089 = trunc i64 %1084 to i32
  %1090 = inttoptr i64 %1086 to i32*
  %1091 = load i32, i32* %1090
  %1092 = sub i32 %1089, %1091
  %1093 = zext i32 %1092 to i64
  store i64 %1093, i64* %RAX.i714, align 8
  %1094 = icmp ult i32 %1089, %1091
  %1095 = zext i1 %1094 to i8
  %1096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1095, i8* %1096, align 1
  %1097 = and i32 %1092, 255
  %1098 = call i32 @llvm.ctpop.i32(i32 %1097)
  %1099 = trunc i32 %1098 to i8
  %1100 = and i8 %1099, 1
  %1101 = xor i8 %1100, 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1101, i8* %1102, align 1
  %1103 = xor i32 %1091, %1089
  %1104 = xor i32 %1103, %1092
  %1105 = lshr i32 %1104, 4
  %1106 = trunc i32 %1105 to i8
  %1107 = and i8 %1106, 1
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1107, i8* %1108, align 1
  %1109 = icmp eq i32 %1092, 0
  %1110 = zext i1 %1109 to i8
  %1111 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1110, i8* %1111, align 1
  %1112 = lshr i32 %1092, 31
  %1113 = trunc i32 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1113, i8* %1114, align 1
  %1115 = lshr i32 %1089, 31
  %1116 = lshr i32 %1091, 31
  %1117 = xor i32 %1116, %1115
  %1118 = xor i32 %1112, %1115
  %1119 = add i32 %1118, %1117
  %1120 = icmp eq i32 %1119, 2
  %1121 = zext i1 %1120 to i8
  %1122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1121, i8* %1122, align 1
  store %struct.Memory* %loadMem_462783, %struct.Memory** %MEMORY
  %loadMem_462786 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 33
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %PC.i710 = bitcast %union.anon* %1125 to i64*
  %1126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1127 = getelementptr inbounds %struct.GPR, %struct.GPR* %1126, i32 0, i32 1
  %1128 = getelementptr inbounds %struct.Reg, %struct.Reg* %1127, i32 0, i32 0
  %EAX.i711 = bitcast %union.anon* %1128 to i32*
  %1129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1130 = getelementptr inbounds %struct.GPR, %struct.GPR* %1129, i32 0, i32 15
  %1131 = getelementptr inbounds %struct.Reg, %struct.Reg* %1130, i32 0, i32 0
  %RBP.i712 = bitcast %union.anon* %1131 to i64*
  %1132 = load i64, i64* %RBP.i712
  %1133 = sub i64 %1132, 48
  %1134 = load i32, i32* %EAX.i711
  %1135 = zext i32 %1134 to i64
  %1136 = load i64, i64* %PC.i710
  %1137 = add i64 %1136, 3
  store i64 %1137, i64* %PC.i710
  %1138 = inttoptr i64 %1133 to i32*
  store i32 %1134, i32* %1138
  store %struct.Memory* %loadMem_462786, %struct.Memory** %MEMORY
  br label %block_.L_462789

block_.L_462789:                                  ; preds = %block_462781, %routine_idivl__ecx.exit
  %loadMem_462789 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i707 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 1
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RAX.i708 = bitcast %union.anon* %1144 to i64*
  %1145 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1146 = getelementptr inbounds %struct.GPR, %struct.GPR* %1145, i32 0, i32 15
  %1147 = getelementptr inbounds %struct.Reg, %struct.Reg* %1146, i32 0, i32 0
  %RBP.i709 = bitcast %union.anon* %1147 to i64*
  %1148 = load i64, i64* %RBP.i709
  %1149 = sub i64 %1148, 56
  %1150 = load i64, i64* %PC.i707
  %1151 = add i64 %1150, 3
  store i64 %1151, i64* %PC.i707
  %1152 = inttoptr i64 %1149 to i32*
  %1153 = load i32, i32* %1152
  %1154 = zext i32 %1153 to i64
  store i64 %1154, i64* %RAX.i708, align 8
  store %struct.Memory* %loadMem_462789, %struct.Memory** %MEMORY
  %loadMem_46278c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 33
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %PC.i704 = bitcast %union.anon* %1157 to i64*
  %1158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1159 = getelementptr inbounds %struct.GPR, %struct.GPR* %1158, i32 0, i32 1
  %1160 = getelementptr inbounds %struct.Reg, %struct.Reg* %1159, i32 0, i32 0
  %RAX.i705 = bitcast %union.anon* %1160 to i64*
  %1161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1162 = getelementptr inbounds %struct.GPR, %struct.GPR* %1161, i32 0, i32 15
  %1163 = getelementptr inbounds %struct.Reg, %struct.Reg* %1162, i32 0, i32 0
  %RBP.i706 = bitcast %union.anon* %1163 to i64*
  %1164 = load i64, i64* %RAX.i705
  %1165 = load i64, i64* %RBP.i706
  %1166 = sub i64 %1165, 52
  %1167 = load i64, i64* %PC.i704
  %1168 = add i64 %1167, 3
  store i64 %1168, i64* %PC.i704
  %1169 = trunc i64 %1164 to i32
  %1170 = inttoptr i64 %1166 to i32*
  %1171 = load i32, i32* %1170
  %1172 = add i32 %1171, %1169
  %1173 = zext i32 %1172 to i64
  store i64 %1173, i64* %RAX.i705, align 8
  %1174 = icmp ult i32 %1172, %1169
  %1175 = icmp ult i32 %1172, %1171
  %1176 = or i1 %1174, %1175
  %1177 = zext i1 %1176 to i8
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1177, i8* %1178, align 1
  %1179 = and i32 %1172, 255
  %1180 = call i32 @llvm.ctpop.i32(i32 %1179)
  %1181 = trunc i32 %1180 to i8
  %1182 = and i8 %1181, 1
  %1183 = xor i8 %1182, 1
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1183, i8* %1184, align 1
  %1185 = xor i32 %1171, %1169
  %1186 = xor i32 %1185, %1172
  %1187 = lshr i32 %1186, 4
  %1188 = trunc i32 %1187 to i8
  %1189 = and i8 %1188, 1
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1189, i8* %1190, align 1
  %1191 = icmp eq i32 %1172, 0
  %1192 = zext i1 %1191 to i8
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1192, i8* %1193, align 1
  %1194 = lshr i32 %1172, 31
  %1195 = trunc i32 %1194 to i8
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1195, i8* %1196, align 1
  %1197 = lshr i32 %1169, 31
  %1198 = lshr i32 %1171, 31
  %1199 = xor i32 %1194, %1197
  %1200 = xor i32 %1194, %1198
  %1201 = add i32 %1199, %1200
  %1202 = icmp eq i32 %1201, 2
  %1203 = zext i1 %1202 to i8
  %1204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1203, i8* %1204, align 1
  store %struct.Memory* %loadMem_46278c, %struct.Memory** %MEMORY
  %loadMem_46278f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 33
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 1
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %EAX.i702 = bitcast %union.anon* %1210 to i32*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 5
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RCX.i703 = bitcast %union.anon* %1213 to i64*
  %1214 = load i32, i32* %EAX.i702
  %1215 = zext i32 %1214 to i64
  %1216 = load i64, i64* %PC.i701
  %1217 = add i64 %1216, 3
  store i64 %1217, i64* %PC.i701
  %1218 = shl i64 %1215, 32
  %1219 = ashr exact i64 %1218, 32
  store i64 %1219, i64* %RCX.i703, align 8
  store %struct.Memory* %loadMem_46278f, %struct.Memory** %MEMORY
  %loadMem_462792 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1221 = getelementptr inbounds %struct.GPR, %struct.GPR* %1220, i32 0, i32 33
  %1222 = getelementptr inbounds %struct.Reg, %struct.Reg* %1221, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1222 to i64*
  %1223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1224 = getelementptr inbounds %struct.GPR, %struct.GPR* %1223, i32 0, i32 1
  %1225 = getelementptr inbounds %struct.Reg, %struct.Reg* %1224, i32 0, i32 0
  %RAX.i699 = bitcast %union.anon* %1225 to i64*
  %1226 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1227 = getelementptr inbounds %struct.GPR, %struct.GPR* %1226, i32 0, i32 5
  %1228 = getelementptr inbounds %struct.Reg, %struct.Reg* %1227, i32 0, i32 0
  %RCX.i700 = bitcast %union.anon* %1228 to i64*
  %1229 = load i64, i64* %RCX.i700
  %1230 = add i64 %1229, 12099168
  %1231 = load i64, i64* %PC.i698
  %1232 = add i64 %1231, 8
  store i64 %1232, i64* %PC.i698
  %1233 = inttoptr i64 %1230 to i8*
  %1234 = load i8, i8* %1233
  %1235 = zext i8 %1234 to i64
  store i64 %1235, i64* %RAX.i699, align 8
  store %struct.Memory* %loadMem_462792, %struct.Memory** %MEMORY
  %loadMem_46279a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 33
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1238 to i64*
  %1239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1240 = getelementptr inbounds %struct.GPR, %struct.GPR* %1239, i32 0, i32 1
  %1241 = getelementptr inbounds %struct.Reg, %struct.Reg* %1240, i32 0, i32 0
  %EAX.i696 = bitcast %union.anon* %1241 to i32*
  %1242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1243 = getelementptr inbounds %struct.GPR, %struct.GPR* %1242, i32 0, i32 15
  %1244 = getelementptr inbounds %struct.Reg, %struct.Reg* %1243, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %1244 to i64*
  %1245 = load i32, i32* %EAX.i696
  %1246 = zext i32 %1245 to i64
  %1247 = load i64, i64* %RBP.i697
  %1248 = sub i64 %1247, 44
  %1249 = load i64, i64* %PC.i695
  %1250 = add i64 %1249, 3
  store i64 %1250, i64* %PC.i695
  %1251 = inttoptr i64 %1248 to i32*
  %1252 = load i32, i32* %1251
  %1253 = sub i32 %1245, %1252
  %1254 = icmp ult i32 %1245, %1252
  %1255 = zext i1 %1254 to i8
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1255, i8* %1256, align 1
  %1257 = and i32 %1253, 255
  %1258 = call i32 @llvm.ctpop.i32(i32 %1257)
  %1259 = trunc i32 %1258 to i8
  %1260 = and i8 %1259, 1
  %1261 = xor i8 %1260, 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1261, i8* %1262, align 1
  %1263 = xor i32 %1252, %1245
  %1264 = xor i32 %1263, %1253
  %1265 = lshr i32 %1264, 4
  %1266 = trunc i32 %1265 to i8
  %1267 = and i8 %1266, 1
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1267, i8* %1268, align 1
  %1269 = icmp eq i32 %1253, 0
  %1270 = zext i1 %1269 to i8
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1270, i8* %1271, align 1
  %1272 = lshr i32 %1253, 31
  %1273 = trunc i32 %1272 to i8
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1273, i8* %1274, align 1
  %1275 = lshr i32 %1245, 31
  %1276 = lshr i32 %1252, 31
  %1277 = xor i32 %1276, %1275
  %1278 = xor i32 %1272, %1275
  %1279 = add i32 %1278, %1277
  %1280 = icmp eq i32 %1279, 2
  %1281 = zext i1 %1280 to i8
  %1282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1281, i8* %1282, align 1
  store %struct.Memory* %loadMem_46279a, %struct.Memory** %MEMORY
  %loadMem_46279d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 33
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %PC.i694 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %PC.i694
  %1287 = add i64 %1286, 369
  %1288 = load i64, i64* %PC.i694
  %1289 = add i64 %1288, 6
  %1290 = load i64, i64* %PC.i694
  %1291 = add i64 %1290, 6
  store i64 %1291, i64* %PC.i694
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1293 = load i8, i8* %1292, align 1
  %1294 = icmp eq i8 %1293, 0
  %1295 = zext i1 %1294 to i8
  store i8 %1295, i8* %BRANCH_TAKEN, align 1
  %1296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1297 = select i1 %1294, i64 %1287, i64 %1289
  store i64 %1297, i64* %1296, align 8
  store %struct.Memory* %loadMem_46279d, %struct.Memory** %MEMORY
  %loadBr_46279d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46279d = icmp eq i8 %loadBr_46279d, 1
  br i1 %cmpBr_46279d, label %block_.L_46290e, label %block_4627a3

block_4627a3:                                     ; preds = %block_.L_462789
  %loadMem_4627a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 33
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %PC.i691 = bitcast %union.anon* %1300 to i64*
  %1301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1302 = getelementptr inbounds %struct.GPR, %struct.GPR* %1301, i32 0, i32 1
  %1303 = getelementptr inbounds %struct.Reg, %struct.Reg* %1302, i32 0, i32 0
  %RAX.i692 = bitcast %union.anon* %1303 to i64*
  %1304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1305 = getelementptr inbounds %struct.GPR, %struct.GPR* %1304, i32 0, i32 15
  %1306 = getelementptr inbounds %struct.Reg, %struct.Reg* %1305, i32 0, i32 0
  %RBP.i693 = bitcast %union.anon* %1306 to i64*
  %1307 = load i64, i64* %RBP.i693
  %1308 = sub i64 %1307, 56
  %1309 = load i64, i64* %PC.i691
  %1310 = add i64 %1309, 3
  store i64 %1310, i64* %PC.i691
  %1311 = inttoptr i64 %1308 to i32*
  %1312 = load i32, i32* %1311
  %1313 = zext i32 %1312 to i64
  store i64 %1313, i64* %RAX.i692, align 8
  store %struct.Memory* %loadMem_4627a3, %struct.Memory** %MEMORY
  %loadMem_4627a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 33
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 1
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 15
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RBP.i690 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RAX.i689
  %1324 = load i64, i64* %RBP.i690
  %1325 = sub i64 %1324, 52
  %1326 = load i64, i64* %PC.i688
  %1327 = add i64 %1326, 3
  store i64 %1327, i64* %PC.i688
  %1328 = trunc i64 %1323 to i32
  %1329 = inttoptr i64 %1325 to i32*
  %1330 = load i32, i32* %1329
  %1331 = add i32 %1330, %1328
  %1332 = zext i32 %1331 to i64
  store i64 %1332, i64* %RAX.i689, align 8
  %1333 = icmp ult i32 %1331, %1328
  %1334 = icmp ult i32 %1331, %1330
  %1335 = or i1 %1333, %1334
  %1336 = zext i1 %1335 to i8
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1336, i8* %1337, align 1
  %1338 = and i32 %1331, 255
  %1339 = call i32 @llvm.ctpop.i32(i32 %1338)
  %1340 = trunc i32 %1339 to i8
  %1341 = and i8 %1340, 1
  %1342 = xor i8 %1341, 1
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1342, i8* %1343, align 1
  %1344 = xor i32 %1330, %1328
  %1345 = xor i32 %1344, %1331
  %1346 = lshr i32 %1345, 4
  %1347 = trunc i32 %1346 to i8
  %1348 = and i8 %1347, 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1348, i8* %1349, align 1
  %1350 = icmp eq i32 %1331, 0
  %1351 = zext i1 %1350 to i8
  %1352 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1351, i8* %1352, align 1
  %1353 = lshr i32 %1331, 31
  %1354 = trunc i32 %1353 to i8
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1354, i8* %1355, align 1
  %1356 = lshr i32 %1328, 31
  %1357 = lshr i32 %1330, 31
  %1358 = xor i32 %1353, %1356
  %1359 = xor i32 %1353, %1357
  %1360 = add i32 %1358, %1359
  %1361 = icmp eq i32 %1360, 2
  %1362 = zext i1 %1361 to i8
  %1363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1362, i8* %1363, align 1
  store %struct.Memory* %loadMem_4627a6, %struct.Memory** %MEMORY
  %loadMem_4627a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1365 = getelementptr inbounds %struct.GPR, %struct.GPR* %1364, i32 0, i32 33
  %1366 = getelementptr inbounds %struct.Reg, %struct.Reg* %1365, i32 0, i32 0
  %PC.i685 = bitcast %union.anon* %1366 to i64*
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1368 = getelementptr inbounds %struct.GPR, %struct.GPR* %1367, i32 0, i32 1
  %1369 = getelementptr inbounds %struct.Reg, %struct.Reg* %1368, i32 0, i32 0
  %EAX.i686 = bitcast %union.anon* %1369 to i32*
  %1370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1371 = getelementptr inbounds %struct.GPR, %struct.GPR* %1370, i32 0, i32 11
  %1372 = getelementptr inbounds %struct.Reg, %struct.Reg* %1371, i32 0, i32 0
  %RDI.i687 = bitcast %union.anon* %1372 to i64*
  %1373 = load i32, i32* %EAX.i686
  %1374 = zext i32 %1373 to i64
  %1375 = load i64, i64* %PC.i685
  %1376 = add i64 %1375, 2
  store i64 %1376, i64* %PC.i685
  %1377 = and i64 %1374, 4294967295
  store i64 %1377, i64* %RDI.i687, align 8
  store %struct.Memory* %loadMem_4627a9, %struct.Memory** %MEMORY
  %loadMem1_4627ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1379 = getelementptr inbounds %struct.GPR, %struct.GPR* %1378, i32 0, i32 33
  %1380 = getelementptr inbounds %struct.Reg, %struct.Reg* %1379, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %1380 to i64*
  %1381 = load i64, i64* %PC.i684
  %1382 = add i64 %1381, -340011
  %1383 = load i64, i64* %PC.i684
  %1384 = add i64 %1383, 5
  %1385 = load i64, i64* %PC.i684
  %1386 = add i64 %1385, 5
  store i64 %1386, i64* %PC.i684
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1388 = load i64, i64* %1387, align 8
  %1389 = add i64 %1388, -8
  %1390 = inttoptr i64 %1389 to i64*
  store i64 %1384, i64* %1390
  store i64 %1389, i64* %1387, align 8
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1382, i64* %1391, align 8
  store %struct.Memory* %loadMem1_4627ab, %struct.Memory** %MEMORY
  %loadMem2_4627ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_4627ab = load i64, i64* %3
  %call2_4627ab = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_4627ab, %struct.Memory* %loadMem2_4627ab)
  store %struct.Memory* %call2_4627ab, %struct.Memory** %MEMORY
  %loadMem_4627b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i682 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 1
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %EAX.i683 = bitcast %union.anon* %1397 to i32*
  %1398 = load i32, i32* %EAX.i683
  %1399 = zext i32 %1398 to i64
  %1400 = load i64, i64* %PC.i682
  %1401 = add i64 %1400, 3
  store i64 %1401, i64* %PC.i682
  %1402 = sub i32 %1398, 4
  %1403 = icmp ult i32 %1398, 4
  %1404 = zext i1 %1403 to i8
  %1405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1404, i8* %1405, align 1
  %1406 = and i32 %1402, 255
  %1407 = call i32 @llvm.ctpop.i32(i32 %1406)
  %1408 = trunc i32 %1407 to i8
  %1409 = and i8 %1408, 1
  %1410 = xor i8 %1409, 1
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1410, i8* %1411, align 1
  %1412 = xor i64 4, %1399
  %1413 = trunc i64 %1412 to i32
  %1414 = xor i32 %1413, %1402
  %1415 = lshr i32 %1414, 4
  %1416 = trunc i32 %1415 to i8
  %1417 = and i8 %1416, 1
  %1418 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1417, i8* %1418, align 1
  %1419 = icmp eq i32 %1402, 0
  %1420 = zext i1 %1419 to i8
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1420, i8* %1421, align 1
  %1422 = lshr i32 %1402, 31
  %1423 = trunc i32 %1422 to i8
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1423, i8* %1424, align 1
  %1425 = lshr i32 %1398, 31
  %1426 = xor i32 %1422, %1425
  %1427 = add i32 %1426, %1425
  %1428 = icmp eq i32 %1427, 2
  %1429 = zext i1 %1428 to i8
  %1430 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1429, i8* %1430, align 1
  store %struct.Memory* %loadMem_4627b0, %struct.Memory** %MEMORY
  %loadMem_4627b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1432 = getelementptr inbounds %struct.GPR, %struct.GPR* %1431, i32 0, i32 33
  %1433 = getelementptr inbounds %struct.Reg, %struct.Reg* %1432, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %1433 to i64*
  %1434 = load i64, i64* %PC.i681
  %1435 = add i64 %1434, 347
  %1436 = load i64, i64* %PC.i681
  %1437 = add i64 %1436, 6
  %1438 = load i64, i64* %PC.i681
  %1439 = add i64 %1438, 6
  store i64 %1439, i64* %PC.i681
  %1440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1441 = load i8, i8* %1440, align 1
  %1442 = icmp ne i8 %1441, 0
  %1443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1444 = load i8, i8* %1443, align 1
  %1445 = icmp ne i8 %1444, 0
  %1446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1447 = load i8, i8* %1446, align 1
  %1448 = icmp ne i8 %1447, 0
  %1449 = xor i1 %1445, %1448
  %1450 = or i1 %1442, %1449
  %1451 = zext i1 %1450 to i8
  store i8 %1451, i8* %BRANCH_TAKEN, align 1
  %1452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1453 = select i1 %1450, i64 %1435, i64 %1437
  store i64 %1453, i64* %1452, align 8
  store %struct.Memory* %loadMem_4627b3, %struct.Memory** %MEMORY
  %loadBr_4627b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4627b3 = icmp eq i8 %loadBr_4627b3, 1
  br i1 %cmpBr_4627b3, label %block_.L_46290e, label %block_4627b9

block_4627b9:                                     ; preds = %block_4627a3
  %loadMem_4627b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i678 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 1
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %RAX.i679 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i680 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RBP.i680
  %1464 = sub i64 %1463, 40
  %1465 = load i64, i64* %PC.i678
  %1466 = add i64 %1465, 3
  store i64 %1466, i64* %PC.i678
  %1467 = inttoptr i64 %1464 to i32*
  %1468 = load i32, i32* %1467
  %1469 = zext i32 %1468 to i64
  store i64 %1469, i64* %RAX.i679, align 8
  store %struct.Memory* %loadMem_4627b9, %struct.Memory** %MEMORY
  %loadMem_4627bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i675 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 1
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %EAX.i676 = bitcast %union.anon* %1475 to i32*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 15
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RBP.i677 = bitcast %union.anon* %1478 to i64*
  %1479 = load i32, i32* %EAX.i676
  %1480 = zext i32 %1479 to i64
  %1481 = load i64, i64* %RBP.i677
  %1482 = sub i64 %1481, 36
  %1483 = load i64, i64* %PC.i675
  %1484 = add i64 %1483, 3
  store i64 %1484, i64* %PC.i675
  %1485 = inttoptr i64 %1482 to i32*
  %1486 = load i32, i32* %1485
  %1487 = sub i32 %1479, %1486
  %1488 = icmp ult i32 %1479, %1486
  %1489 = zext i1 %1488 to i8
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1489, i8* %1490, align 1
  %1491 = and i32 %1487, 255
  %1492 = call i32 @llvm.ctpop.i32(i32 %1491)
  %1493 = trunc i32 %1492 to i8
  %1494 = and i8 %1493, 1
  %1495 = xor i8 %1494, 1
  %1496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1495, i8* %1496, align 1
  %1497 = xor i32 %1486, %1479
  %1498 = xor i32 %1497, %1487
  %1499 = lshr i32 %1498, 4
  %1500 = trunc i32 %1499 to i8
  %1501 = and i8 %1500, 1
  %1502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1501, i8* %1502, align 1
  %1503 = icmp eq i32 %1487, 0
  %1504 = zext i1 %1503 to i8
  %1505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1504, i8* %1505, align 1
  %1506 = lshr i32 %1487, 31
  %1507 = trunc i32 %1506 to i8
  %1508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1507, i8* %1508, align 1
  %1509 = lshr i32 %1479, 31
  %1510 = lshr i32 %1486, 31
  %1511 = xor i32 %1510, %1509
  %1512 = xor i32 %1506, %1509
  %1513 = add i32 %1512, %1511
  %1514 = icmp eq i32 %1513, 2
  %1515 = zext i1 %1514 to i8
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1515, i8* %1516, align 1
  store %struct.Memory* %loadMem_4627bc, %struct.Memory** %MEMORY
  %loadMem_4627bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1518 = getelementptr inbounds %struct.GPR, %struct.GPR* %1517, i32 0, i32 33
  %1519 = getelementptr inbounds %struct.Reg, %struct.Reg* %1518, i32 0, i32 0
  %PC.i674 = bitcast %union.anon* %1519 to i64*
  %1520 = load i64, i64* %PC.i674
  %1521 = add i64 %1520, 335
  %1522 = load i64, i64* %PC.i674
  %1523 = add i64 %1522, 6
  %1524 = load i64, i64* %PC.i674
  %1525 = add i64 %1524, 6
  store i64 %1525, i64* %PC.i674
  %1526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1527 = load i8, i8* %1526, align 1
  %1528 = icmp eq i8 %1527, 0
  %1529 = zext i1 %1528 to i8
  store i8 %1529, i8* %BRANCH_TAKEN, align 1
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1531 = select i1 %1528, i64 %1521, i64 %1523
  store i64 %1531, i64* %1530, align 8
  store %struct.Memory* %loadMem_4627bf, %struct.Memory** %MEMORY
  %loadBr_4627bf = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4627bf = icmp eq i8 %loadBr_4627bf, 1
  br i1 %cmpBr_4627bf, label %block_.L_46290e, label %block_4627c5

block_4627c5:                                     ; preds = %block_4627b9
  %loadMem_4627c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1533 = getelementptr inbounds %struct.GPR, %struct.GPR* %1532, i32 0, i32 33
  %1534 = getelementptr inbounds %struct.Reg, %struct.Reg* %1533, i32 0, i32 0
  %PC.i671 = bitcast %union.anon* %1534 to i64*
  %1535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1536 = getelementptr inbounds %struct.GPR, %struct.GPR* %1535, i32 0, i32 1
  %1537 = getelementptr inbounds %struct.Reg, %struct.Reg* %1536, i32 0, i32 0
  %RAX.i672 = bitcast %union.anon* %1537 to i64*
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1539 = getelementptr inbounds %struct.GPR, %struct.GPR* %1538, i32 0, i32 15
  %1540 = getelementptr inbounds %struct.Reg, %struct.Reg* %1539, i32 0, i32 0
  %RBP.i673 = bitcast %union.anon* %1540 to i64*
  %1541 = load i64, i64* %RBP.i673
  %1542 = sub i64 %1541, 56
  %1543 = load i64, i64* %PC.i671
  %1544 = add i64 %1543, 3
  store i64 %1544, i64* %PC.i671
  %1545 = inttoptr i64 %1542 to i32*
  %1546 = load i32, i32* %1545
  %1547 = zext i32 %1546 to i64
  store i64 %1547, i64* %RAX.i672, align 8
  store %struct.Memory* %loadMem_4627c5, %struct.Memory** %MEMORY
  %loadMem_4627c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i668 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 1
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %EAX.i669 = bitcast %union.anon* %1553 to i32*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 15
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RBP.i670 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RBP.i670
  %1558 = sub i64 %1557, 72
  %1559 = load i32, i32* %EAX.i669
  %1560 = zext i32 %1559 to i64
  %1561 = load i64, i64* %PC.i668
  %1562 = add i64 %1561, 3
  store i64 %1562, i64* %PC.i668
  %1563 = inttoptr i64 %1558 to i32*
  store i32 %1559, i32* %1563
  store %struct.Memory* %loadMem_4627c8, %struct.Memory** %MEMORY
  br label %block_.L_4627cb

block_.L_4627cb:                                  ; preds = %block_.L_462814, %block_4627c5
  %loadMem_4627cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i665 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 1
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RAX.i666 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i667 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RBP.i667
  %1574 = sub i64 %1573, 72
  %1575 = load i64, i64* %PC.i665
  %1576 = add i64 %1575, 4
  store i64 %1576, i64* %PC.i665
  %1577 = inttoptr i64 %1574 to i32*
  %1578 = load i32, i32* %1577
  %1579 = sext i32 %1578 to i64
  store i64 %1579, i64* %RAX.i666, align 8
  store %struct.Memory* %loadMem_4627cb, %struct.Memory** %MEMORY
  %loadMem_4627cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1581 = getelementptr inbounds %struct.GPR, %struct.GPR* %1580, i32 0, i32 33
  %1582 = getelementptr inbounds %struct.Reg, %struct.Reg* %1581, i32 0, i32 0
  %PC.i662 = bitcast %union.anon* %1582 to i64*
  %1583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1584 = getelementptr inbounds %struct.GPR, %struct.GPR* %1583, i32 0, i32 1
  %1585 = getelementptr inbounds %struct.Reg, %struct.Reg* %1584, i32 0, i32 0
  %RAX.i663 = bitcast %union.anon* %1585 to i64*
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 5
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %RCX.i664 = bitcast %union.anon* %1588 to i64*
  %1589 = load i64, i64* %RAX.i663
  %1590 = add i64 %1589, 12099168
  %1591 = load i64, i64* %PC.i662
  %1592 = add i64 %1591, 8
  store i64 %1592, i64* %PC.i662
  %1593 = inttoptr i64 %1590 to i8*
  %1594 = load i8, i8* %1593
  %1595 = zext i8 %1594 to i64
  store i64 %1595, i64* %RCX.i664, align 8
  store %struct.Memory* %loadMem_4627cf, %struct.Memory** %MEMORY
  %loadMem_4627d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1596 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1597 = getelementptr inbounds %struct.GPR, %struct.GPR* %1596, i32 0, i32 33
  %1598 = getelementptr inbounds %struct.Reg, %struct.Reg* %1597, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %1598 to i64*
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1600 = getelementptr inbounds %struct.GPR, %struct.GPR* %1599, i32 0, i32 5
  %1601 = getelementptr inbounds %struct.Reg, %struct.Reg* %1600, i32 0, i32 0
  %ECX.i661 = bitcast %union.anon* %1601 to i32*
  %1602 = load i32, i32* %ECX.i661
  %1603 = zext i32 %1602 to i64
  %1604 = load i64, i64* %PC.i660
  %1605 = add i64 %1604, 3
  store i64 %1605, i64* %PC.i660
  %1606 = sub i32 %1602, 3
  %1607 = icmp ult i32 %1602, 3
  %1608 = zext i1 %1607 to i8
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1608, i8* %1609, align 1
  %1610 = and i32 %1606, 255
  %1611 = call i32 @llvm.ctpop.i32(i32 %1610)
  %1612 = trunc i32 %1611 to i8
  %1613 = and i8 %1612, 1
  %1614 = xor i8 %1613, 1
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1614, i8* %1615, align 1
  %1616 = xor i64 3, %1603
  %1617 = trunc i64 %1616 to i32
  %1618 = xor i32 %1617, %1606
  %1619 = lshr i32 %1618, 4
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1621, i8* %1622, align 1
  %1623 = icmp eq i32 %1606, 0
  %1624 = zext i1 %1623 to i8
  %1625 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1624, i8* %1625, align 1
  %1626 = lshr i32 %1606, 31
  %1627 = trunc i32 %1626 to i8
  %1628 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1627, i8* %1628, align 1
  %1629 = lshr i32 %1602, 31
  %1630 = xor i32 %1626, %1629
  %1631 = add i32 %1630, %1629
  %1632 = icmp eq i32 %1631, 2
  %1633 = zext i1 %1632 to i8
  %1634 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1633, i8* %1634, align 1
  store %struct.Memory* %loadMem_4627d7, %struct.Memory** %MEMORY
  %loadMem_4627da = load %struct.Memory*, %struct.Memory** %MEMORY
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 33
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %1637 to i64*
  %1638 = load i64, i64* %PC.i659
  %1639 = add i64 %1638, 72
  %1640 = load i64, i64* %PC.i659
  %1641 = add i64 %1640, 6
  %1642 = load i64, i64* %PC.i659
  %1643 = add i64 %1642, 6
  store i64 %1643, i64* %PC.i659
  %1644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1645 = load i8, i8* %1644, align 1
  store i8 %1645, i8* %BRANCH_TAKEN, align 1
  %1646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1647 = icmp ne i8 %1645, 0
  %1648 = select i1 %1647, i64 %1639, i64 %1641
  store i64 %1648, i64* %1646, align 8
  store %struct.Memory* %loadMem_4627da, %struct.Memory** %MEMORY
  %loadBr_4627da = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4627da = icmp eq i8 %loadBr_4627da, 1
  br i1 %cmpBr_4627da, label %block_.L_462822, label %block_4627e0

block_4627e0:                                     ; preds = %block_.L_4627cb
  %loadMem_4627e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1650 = getelementptr inbounds %struct.GPR, %struct.GPR* %1649, i32 0, i32 33
  %1651 = getelementptr inbounds %struct.Reg, %struct.Reg* %1650, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %1651 to i64*
  %1652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1653 = getelementptr inbounds %struct.GPR, %struct.GPR* %1652, i32 0, i32 1
  %1654 = getelementptr inbounds %struct.Reg, %struct.Reg* %1653, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %1654 to i64*
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1656 = getelementptr inbounds %struct.GPR, %struct.GPR* %1655, i32 0, i32 15
  %1657 = getelementptr inbounds %struct.Reg, %struct.Reg* %1656, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %1657 to i64*
  %1658 = load i64, i64* %RBP.i658
  %1659 = sub i64 %1658, 72
  %1660 = load i64, i64* %PC.i656
  %1661 = add i64 %1660, 4
  store i64 %1661, i64* %PC.i656
  %1662 = inttoptr i64 %1659 to i32*
  %1663 = load i32, i32* %1662
  %1664 = sext i32 %1663 to i64
  store i64 %1664, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_4627e0, %struct.Memory** %MEMORY
  %loadMem_4627e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1666 = getelementptr inbounds %struct.GPR, %struct.GPR* %1665, i32 0, i32 33
  %1667 = getelementptr inbounds %struct.Reg, %struct.Reg* %1666, i32 0, i32 0
  %PC.i653 = bitcast %union.anon* %1667 to i64*
  %1668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1669 = getelementptr inbounds %struct.GPR, %struct.GPR* %1668, i32 0, i32 1
  %1670 = getelementptr inbounds %struct.Reg, %struct.Reg* %1669, i32 0, i32 0
  %RAX.i654 = bitcast %union.anon* %1670 to i64*
  %1671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1672 = getelementptr inbounds %struct.GPR, %struct.GPR* %1671, i32 0, i32 5
  %1673 = getelementptr inbounds %struct.Reg, %struct.Reg* %1672, i32 0, i32 0
  %RCX.i655 = bitcast %union.anon* %1673 to i64*
  %1674 = load i64, i64* %RAX.i654
  %1675 = add i64 %1674, 12099168
  %1676 = load i64, i64* %PC.i653
  %1677 = add i64 %1676, 8
  store i64 %1677, i64* %PC.i653
  %1678 = inttoptr i64 %1675 to i8*
  %1679 = load i8, i8* %1678
  %1680 = zext i8 %1679 to i64
  store i64 %1680, i64* %RCX.i655, align 8
  store %struct.Memory* %loadMem_4627e4, %struct.Memory** %MEMORY
  %loadMem_4627ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1682 = getelementptr inbounds %struct.GPR, %struct.GPR* %1681, i32 0, i32 33
  %1683 = getelementptr inbounds %struct.Reg, %struct.Reg* %1682, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %1683 to i64*
  %1684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1685 = getelementptr inbounds %struct.GPR, %struct.GPR* %1684, i32 0, i32 5
  %1686 = getelementptr inbounds %struct.Reg, %struct.Reg* %1685, i32 0, i32 0
  %ECX.i651 = bitcast %union.anon* %1686 to i32*
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1688 = getelementptr inbounds %struct.GPR, %struct.GPR* %1687, i32 0, i32 15
  %1689 = getelementptr inbounds %struct.Reg, %struct.Reg* %1688, i32 0, i32 0
  %RBP.i652 = bitcast %union.anon* %1689 to i64*
  %1690 = load i32, i32* %ECX.i651
  %1691 = zext i32 %1690 to i64
  %1692 = load i64, i64* %RBP.i652
  %1693 = sub i64 %1692, 40
  %1694 = load i64, i64* %PC.i650
  %1695 = add i64 %1694, 3
  store i64 %1695, i64* %PC.i650
  %1696 = inttoptr i64 %1693 to i32*
  %1697 = load i32, i32* %1696
  %1698 = sub i32 %1690, %1697
  %1699 = icmp ult i32 %1690, %1697
  %1700 = zext i1 %1699 to i8
  %1701 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1700, i8* %1701, align 1
  %1702 = and i32 %1698, 255
  %1703 = call i32 @llvm.ctpop.i32(i32 %1702)
  %1704 = trunc i32 %1703 to i8
  %1705 = and i8 %1704, 1
  %1706 = xor i8 %1705, 1
  %1707 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1706, i8* %1707, align 1
  %1708 = xor i32 %1697, %1690
  %1709 = xor i32 %1708, %1698
  %1710 = lshr i32 %1709, 4
  %1711 = trunc i32 %1710 to i8
  %1712 = and i8 %1711, 1
  %1713 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1712, i8* %1713, align 1
  %1714 = icmp eq i32 %1698, 0
  %1715 = zext i1 %1714 to i8
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1715, i8* %1716, align 1
  %1717 = lshr i32 %1698, 31
  %1718 = trunc i32 %1717 to i8
  %1719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1718, i8* %1719, align 1
  %1720 = lshr i32 %1690, 31
  %1721 = lshr i32 %1697, 31
  %1722 = xor i32 %1721, %1720
  %1723 = xor i32 %1717, %1720
  %1724 = add i32 %1723, %1722
  %1725 = icmp eq i32 %1724, 2
  %1726 = zext i1 %1725 to i8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1726, i8* %1727, align 1
  store %struct.Memory* %loadMem_4627ec, %struct.Memory** %MEMORY
  %loadMem_4627ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1729 = getelementptr inbounds %struct.GPR, %struct.GPR* %1728, i32 0, i32 33
  %1730 = getelementptr inbounds %struct.Reg, %struct.Reg* %1729, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %1730 to i64*
  %1731 = load i64, i64* %PC.i649
  %1732 = add i64 %1731, 32
  %1733 = load i64, i64* %PC.i649
  %1734 = add i64 %1733, 6
  %1735 = load i64, i64* %PC.i649
  %1736 = add i64 %1735, 6
  store i64 %1736, i64* %PC.i649
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1738 = load i8, i8* %1737, align 1
  store i8 %1738, i8* %BRANCH_TAKEN, align 1
  %1739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1740 = icmp ne i8 %1738, 0
  %1741 = select i1 %1740, i64 %1732, i64 %1734
  store i64 %1741, i64* %1739, align 8
  store %struct.Memory* %loadMem_4627ef, %struct.Memory** %MEMORY
  %loadBr_4627ef = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4627ef = icmp eq i8 %loadBr_4627ef, 1
  br i1 %cmpBr_4627ef, label %block_.L_46280f, label %block_4627f5

block_4627f5:                                     ; preds = %block_4627e0
  %loadMem_4627f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 15
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %1750 to i64*
  %1751 = load i64, i64* %RBP.i648
  %1752 = sub i64 %1751, 72
  %1753 = load i64, i64* %PC.i646
  %1754 = add i64 %1753, 3
  store i64 %1754, i64* %PC.i646
  %1755 = inttoptr i64 %1752 to i32*
  %1756 = load i32, i32* %1755
  %1757 = zext i32 %1756 to i64
  store i64 %1757, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_4627f5, %struct.Memory** %MEMORY
  %loadMem_4627f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1758 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1759 = getelementptr inbounds %struct.GPR, %struct.GPR* %1758, i32 0, i32 33
  %1760 = getelementptr inbounds %struct.Reg, %struct.Reg* %1759, i32 0, i32 0
  %PC.i643 = bitcast %union.anon* %1760 to i64*
  %1761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1762 = getelementptr inbounds %struct.GPR, %struct.GPR* %1761, i32 0, i32 1
  %1763 = getelementptr inbounds %struct.Reg, %struct.Reg* %1762, i32 0, i32 0
  %RAX.i644 = bitcast %union.anon* %1763 to i64*
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 15
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %RBP.i645 = bitcast %union.anon* %1766 to i64*
  %1767 = load i64, i64* %RAX.i644
  %1768 = load i64, i64* %RBP.i645
  %1769 = sub i64 %1768, 52
  %1770 = load i64, i64* %PC.i643
  %1771 = add i64 %1770, 3
  store i64 %1771, i64* %PC.i643
  %1772 = trunc i64 %1767 to i32
  %1773 = inttoptr i64 %1769 to i32*
  %1774 = load i32, i32* %1773
  %1775 = add i32 %1774, %1772
  %1776 = zext i32 %1775 to i64
  store i64 %1776, i64* %RAX.i644, align 8
  %1777 = icmp ult i32 %1775, %1772
  %1778 = icmp ult i32 %1775, %1774
  %1779 = or i1 %1777, %1778
  %1780 = zext i1 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1780, i8* %1781, align 1
  %1782 = and i32 %1775, 255
  %1783 = call i32 @llvm.ctpop.i32(i32 %1782)
  %1784 = trunc i32 %1783 to i8
  %1785 = and i8 %1784, 1
  %1786 = xor i8 %1785, 1
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1786, i8* %1787, align 1
  %1788 = xor i32 %1774, %1772
  %1789 = xor i32 %1788, %1775
  %1790 = lshr i32 %1789, 4
  %1791 = trunc i32 %1790 to i8
  %1792 = and i8 %1791, 1
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1792, i8* %1793, align 1
  %1794 = icmp eq i32 %1775, 0
  %1795 = zext i1 %1794 to i8
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1795, i8* %1796, align 1
  %1797 = lshr i32 %1775, 31
  %1798 = trunc i32 %1797 to i8
  %1799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1798, i8* %1799, align 1
  %1800 = lshr i32 %1772, 31
  %1801 = lshr i32 %1774, 31
  %1802 = xor i32 %1797, %1800
  %1803 = xor i32 %1797, %1801
  %1804 = add i32 %1802, %1803
  %1805 = icmp eq i32 %1804, 2
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1806, i8* %1807, align 1
  store %struct.Memory* %loadMem_4627f8, %struct.Memory** %MEMORY
  %loadMem_4627fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i640 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 1
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %EAX.i641 = bitcast %union.anon* %1813 to i32*
  %1814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1815 = getelementptr inbounds %struct.GPR, %struct.GPR* %1814, i32 0, i32 5
  %1816 = getelementptr inbounds %struct.Reg, %struct.Reg* %1815, i32 0, i32 0
  %RCX.i642 = bitcast %union.anon* %1816 to i64*
  %1817 = load i32, i32* %EAX.i641
  %1818 = zext i32 %1817 to i64
  %1819 = load i64, i64* %PC.i640
  %1820 = add i64 %1819, 3
  store i64 %1820, i64* %PC.i640
  %1821 = shl i64 %1818, 32
  %1822 = ashr exact i64 %1821, 32
  store i64 %1822, i64* %RCX.i642, align 8
  store %struct.Memory* %loadMem_4627fb, %struct.Memory** %MEMORY
  %loadMem_4627fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1824 = getelementptr inbounds %struct.GPR, %struct.GPR* %1823, i32 0, i32 33
  %1825 = getelementptr inbounds %struct.Reg, %struct.Reg* %1824, i32 0, i32 0
  %PC.i637 = bitcast %union.anon* %1825 to i64*
  %1826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1827 = getelementptr inbounds %struct.GPR, %struct.GPR* %1826, i32 0, i32 1
  %1828 = getelementptr inbounds %struct.Reg, %struct.Reg* %1827, i32 0, i32 0
  %RAX.i638 = bitcast %union.anon* %1828 to i64*
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1830 = getelementptr inbounds %struct.GPR, %struct.GPR* %1829, i32 0, i32 5
  %1831 = getelementptr inbounds %struct.Reg, %struct.Reg* %1830, i32 0, i32 0
  %RCX.i639 = bitcast %union.anon* %1831 to i64*
  %1832 = load i64, i64* %RCX.i639
  %1833 = add i64 %1832, 12099168
  %1834 = load i64, i64* %PC.i637
  %1835 = add i64 %1834, 8
  store i64 %1835, i64* %PC.i637
  %1836 = inttoptr i64 %1833 to i8*
  %1837 = load i8, i8* %1836
  %1838 = zext i8 %1837 to i64
  store i64 %1838, i64* %RAX.i638, align 8
  store %struct.Memory* %loadMem_4627fe, %struct.Memory** %MEMORY
  %loadMem_462806 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 33
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %1841 to i64*
  %1842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1843 = getelementptr inbounds %struct.GPR, %struct.GPR* %1842, i32 0, i32 1
  %1844 = getelementptr inbounds %struct.Reg, %struct.Reg* %1843, i32 0, i32 0
  %EAX.i635 = bitcast %union.anon* %1844 to i32*
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1846 = getelementptr inbounds %struct.GPR, %struct.GPR* %1845, i32 0, i32 15
  %1847 = getelementptr inbounds %struct.Reg, %struct.Reg* %1846, i32 0, i32 0
  %RBP.i636 = bitcast %union.anon* %1847 to i64*
  %1848 = load i32, i32* %EAX.i635
  %1849 = zext i32 %1848 to i64
  %1850 = load i64, i64* %RBP.i636
  %1851 = sub i64 %1850, 40
  %1852 = load i64, i64* %PC.i634
  %1853 = add i64 %1852, 3
  store i64 %1853, i64* %PC.i634
  %1854 = inttoptr i64 %1851 to i32*
  %1855 = load i32, i32* %1854
  %1856 = sub i32 %1848, %1855
  %1857 = icmp ult i32 %1848, %1855
  %1858 = zext i1 %1857 to i8
  %1859 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1858, i8* %1859, align 1
  %1860 = and i32 %1856, 255
  %1861 = call i32 @llvm.ctpop.i32(i32 %1860)
  %1862 = trunc i32 %1861 to i8
  %1863 = and i8 %1862, 1
  %1864 = xor i8 %1863, 1
  %1865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1864, i8* %1865, align 1
  %1866 = xor i32 %1855, %1848
  %1867 = xor i32 %1866, %1856
  %1868 = lshr i32 %1867, 4
  %1869 = trunc i32 %1868 to i8
  %1870 = and i8 %1869, 1
  %1871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1870, i8* %1871, align 1
  %1872 = icmp eq i32 %1856, 0
  %1873 = zext i1 %1872 to i8
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1873, i8* %1874, align 1
  %1875 = lshr i32 %1856, 31
  %1876 = trunc i32 %1875 to i8
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1876, i8* %1877, align 1
  %1878 = lshr i32 %1848, 31
  %1879 = lshr i32 %1855, 31
  %1880 = xor i32 %1879, %1878
  %1881 = xor i32 %1875, %1878
  %1882 = add i32 %1881, %1880
  %1883 = icmp eq i32 %1882, 2
  %1884 = zext i1 %1883 to i8
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1884, i8* %1885, align 1
  store %struct.Memory* %loadMem_462806, %struct.Memory** %MEMORY
  %loadMem_462809 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1887 = getelementptr inbounds %struct.GPR, %struct.GPR* %1886, i32 0, i32 33
  %1888 = getelementptr inbounds %struct.Reg, %struct.Reg* %1887, i32 0, i32 0
  %PC.i633 = bitcast %union.anon* %1888 to i64*
  %1889 = load i64, i64* %PC.i633
  %1890 = add i64 %1889, 11
  %1891 = load i64, i64* %PC.i633
  %1892 = add i64 %1891, 6
  %1893 = load i64, i64* %PC.i633
  %1894 = add i64 %1893, 6
  store i64 %1894, i64* %PC.i633
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1896 = load i8, i8* %1895, align 1
  %1897 = icmp eq i8 %1896, 0
  %1898 = zext i1 %1897 to i8
  store i8 %1898, i8* %BRANCH_TAKEN, align 1
  %1899 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1900 = select i1 %1897, i64 %1890, i64 %1892
  store i64 %1900, i64* %1899, align 8
  store %struct.Memory* %loadMem_462809, %struct.Memory** %MEMORY
  %loadBr_462809 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462809 = icmp eq i8 %loadBr_462809, 1
  br i1 %cmpBr_462809, label %block_.L_462814, label %block_.L_46280f

block_.L_46280f:                                  ; preds = %block_4627f5, %block_4627e0
  %loadMem_46280f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 33
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %PC.i632 = bitcast %union.anon* %1903 to i64*
  %1904 = load i64, i64* %PC.i632
  %1905 = add i64 %1904, 19
  %1906 = load i64, i64* %PC.i632
  %1907 = add i64 %1906, 5
  store i64 %1907, i64* %PC.i632
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1905, i64* %1908, align 8
  store %struct.Memory* %loadMem_46280f, %struct.Memory** %MEMORY
  br label %block_.L_462822

block_.L_462814:                                  ; preds = %block_4627f5
  %loadMem_462814 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1910 = getelementptr inbounds %struct.GPR, %struct.GPR* %1909, i32 0, i32 33
  %1911 = getelementptr inbounds %struct.Reg, %struct.Reg* %1910, i32 0, i32 0
  %PC.i629 = bitcast %union.anon* %1911 to i64*
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1913 = getelementptr inbounds %struct.GPR, %struct.GPR* %1912, i32 0, i32 1
  %1914 = getelementptr inbounds %struct.Reg, %struct.Reg* %1913, i32 0, i32 0
  %RAX.i630 = bitcast %union.anon* %1914 to i64*
  %1915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1916 = getelementptr inbounds %struct.GPR, %struct.GPR* %1915, i32 0, i32 15
  %1917 = getelementptr inbounds %struct.Reg, %struct.Reg* %1916, i32 0, i32 0
  %RBP.i631 = bitcast %union.anon* %1917 to i64*
  %1918 = load i64, i64* %RBP.i631
  %1919 = sub i64 %1918, 48
  %1920 = load i64, i64* %PC.i629
  %1921 = add i64 %1920, 3
  store i64 %1921, i64* %PC.i629
  %1922 = inttoptr i64 %1919 to i32*
  %1923 = load i32, i32* %1922
  %1924 = zext i32 %1923 to i64
  store i64 %1924, i64* %RAX.i630, align 8
  store %struct.Memory* %loadMem_462814, %struct.Memory** %MEMORY
  %loadMem_462817 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i626 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 1
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RAX.i627 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 15
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RBP.i628 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %RAX.i627
  %1935 = load i64, i64* %RBP.i628
  %1936 = sub i64 %1935, 72
  %1937 = load i64, i64* %PC.i626
  %1938 = add i64 %1937, 3
  store i64 %1938, i64* %PC.i626
  %1939 = trunc i64 %1934 to i32
  %1940 = inttoptr i64 %1936 to i32*
  %1941 = load i32, i32* %1940
  %1942 = add i32 %1941, %1939
  %1943 = zext i32 %1942 to i64
  store i64 %1943, i64* %RAX.i627, align 8
  %1944 = icmp ult i32 %1942, %1939
  %1945 = icmp ult i32 %1942, %1941
  %1946 = or i1 %1944, %1945
  %1947 = zext i1 %1946 to i8
  %1948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1947, i8* %1948, align 1
  %1949 = and i32 %1942, 255
  %1950 = call i32 @llvm.ctpop.i32(i32 %1949)
  %1951 = trunc i32 %1950 to i8
  %1952 = and i8 %1951, 1
  %1953 = xor i8 %1952, 1
  %1954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1953, i8* %1954, align 1
  %1955 = xor i32 %1941, %1939
  %1956 = xor i32 %1955, %1942
  %1957 = lshr i32 %1956, 4
  %1958 = trunc i32 %1957 to i8
  %1959 = and i8 %1958, 1
  %1960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1959, i8* %1960, align 1
  %1961 = icmp eq i32 %1942, 0
  %1962 = zext i1 %1961 to i8
  %1963 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1962, i8* %1963, align 1
  %1964 = lshr i32 %1942, 31
  %1965 = trunc i32 %1964 to i8
  %1966 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1965, i8* %1966, align 1
  %1967 = lshr i32 %1939, 31
  %1968 = lshr i32 %1941, 31
  %1969 = xor i32 %1964, %1967
  %1970 = xor i32 %1964, %1968
  %1971 = add i32 %1969, %1970
  %1972 = icmp eq i32 %1971, 2
  %1973 = zext i1 %1972 to i8
  %1974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1973, i8* %1974, align 1
  store %struct.Memory* %loadMem_462817, %struct.Memory** %MEMORY
  %loadMem_46281a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1976 = getelementptr inbounds %struct.GPR, %struct.GPR* %1975, i32 0, i32 33
  %1977 = getelementptr inbounds %struct.Reg, %struct.Reg* %1976, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %1977 to i64*
  %1978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1979 = getelementptr inbounds %struct.GPR, %struct.GPR* %1978, i32 0, i32 1
  %1980 = getelementptr inbounds %struct.Reg, %struct.Reg* %1979, i32 0, i32 0
  %EAX.i624 = bitcast %union.anon* %1980 to i32*
  %1981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1982 = getelementptr inbounds %struct.GPR, %struct.GPR* %1981, i32 0, i32 15
  %1983 = getelementptr inbounds %struct.Reg, %struct.Reg* %1982, i32 0, i32 0
  %RBP.i625 = bitcast %union.anon* %1983 to i64*
  %1984 = load i64, i64* %RBP.i625
  %1985 = sub i64 %1984, 72
  %1986 = load i32, i32* %EAX.i624
  %1987 = zext i32 %1986 to i64
  %1988 = load i64, i64* %PC.i623
  %1989 = add i64 %1988, 3
  store i64 %1989, i64* %PC.i623
  %1990 = inttoptr i64 %1985 to i32*
  store i32 %1986, i32* %1990
  store %struct.Memory* %loadMem_46281a, %struct.Memory** %MEMORY
  %loadMem_46281d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 33
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %PC.i622 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %PC.i622
  %1995 = add i64 %1994, -82
  %1996 = load i64, i64* %PC.i622
  %1997 = add i64 %1996, 5
  store i64 %1997, i64* %PC.i622
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1995, i64* %1998, align 8
  store %struct.Memory* %loadMem_46281d, %struct.Memory** %MEMORY
  br label %block_.L_4627cb

block_.L_462822:                                  ; preds = %block_.L_46280f, %block_.L_4627cb
  %loadMem_462822 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2000 = getelementptr inbounds %struct.GPR, %struct.GPR* %1999, i32 0, i32 33
  %2001 = getelementptr inbounds %struct.Reg, %struct.Reg* %2000, i32 0, i32 0
  %PC.i619 = bitcast %union.anon* %2001 to i64*
  %2002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2003 = getelementptr inbounds %struct.GPR, %struct.GPR* %2002, i32 0, i32 1
  %2004 = getelementptr inbounds %struct.Reg, %struct.Reg* %2003, i32 0, i32 0
  %RAX.i620 = bitcast %union.anon* %2004 to i64*
  %2005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2006 = getelementptr inbounds %struct.GPR, %struct.GPR* %2005, i32 0, i32 15
  %2007 = getelementptr inbounds %struct.Reg, %struct.Reg* %2006, i32 0, i32 0
  %RBP.i621 = bitcast %union.anon* %2007 to i64*
  %2008 = load i64, i64* %RBP.i621
  %2009 = sub i64 %2008, 72
  %2010 = load i64, i64* %PC.i619
  %2011 = add i64 %2010, 4
  store i64 %2011, i64* %PC.i619
  %2012 = inttoptr i64 %2009 to i32*
  %2013 = load i32, i32* %2012
  %2014 = sext i32 %2013 to i64
  store i64 %2014, i64* %RAX.i620, align 8
  store %struct.Memory* %loadMem_462822, %struct.Memory** %MEMORY
  %loadMem_462826 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2016 = getelementptr inbounds %struct.GPR, %struct.GPR* %2015, i32 0, i32 33
  %2017 = getelementptr inbounds %struct.Reg, %struct.Reg* %2016, i32 0, i32 0
  %PC.i616 = bitcast %union.anon* %2017 to i64*
  %2018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2019 = getelementptr inbounds %struct.GPR, %struct.GPR* %2018, i32 0, i32 1
  %2020 = getelementptr inbounds %struct.Reg, %struct.Reg* %2019, i32 0, i32 0
  %RAX.i617 = bitcast %union.anon* %2020 to i64*
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2022 = getelementptr inbounds %struct.GPR, %struct.GPR* %2021, i32 0, i32 5
  %2023 = getelementptr inbounds %struct.Reg, %struct.Reg* %2022, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2023 to i64*
  %2024 = load i64, i64* %RAX.i617
  %2025 = add i64 %2024, 12099168
  %2026 = load i64, i64* %PC.i616
  %2027 = add i64 %2026, 8
  store i64 %2027, i64* %PC.i616
  %2028 = inttoptr i64 %2025 to i8*
  %2029 = load i8, i8* %2028
  %2030 = zext i8 %2029 to i64
  store i64 %2030, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_462826, %struct.Memory** %MEMORY
  %loadMem_46282e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2032 = getelementptr inbounds %struct.GPR, %struct.GPR* %2031, i32 0, i32 33
  %2033 = getelementptr inbounds %struct.Reg, %struct.Reg* %2032, i32 0, i32 0
  %PC.i614 = bitcast %union.anon* %2033 to i64*
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 5
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %ECX.i615 = bitcast %union.anon* %2036 to i32*
  %2037 = load i32, i32* %ECX.i615
  %2038 = zext i32 %2037 to i64
  %2039 = load i64, i64* %PC.i614
  %2040 = add i64 %2039, 3
  store i64 %2040, i64* %PC.i614
  %2041 = sub i32 %2037, 3
  %2042 = icmp ult i32 %2037, 3
  %2043 = zext i1 %2042 to i8
  %2044 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2043, i8* %2044, align 1
  %2045 = and i32 %2041, 255
  %2046 = call i32 @llvm.ctpop.i32(i32 %2045)
  %2047 = trunc i32 %2046 to i8
  %2048 = and i8 %2047, 1
  %2049 = xor i8 %2048, 1
  %2050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2049, i8* %2050, align 1
  %2051 = xor i64 3, %2038
  %2052 = trunc i64 %2051 to i32
  %2053 = xor i32 %2052, %2041
  %2054 = lshr i32 %2053, 4
  %2055 = trunc i32 %2054 to i8
  %2056 = and i8 %2055, 1
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2056, i8* %2057, align 1
  %2058 = icmp eq i32 %2041, 0
  %2059 = zext i1 %2058 to i8
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2059, i8* %2060, align 1
  %2061 = lshr i32 %2041, 31
  %2062 = trunc i32 %2061 to i8
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2062, i8* %2063, align 1
  %2064 = lshr i32 %2037, 31
  %2065 = xor i32 %2061, %2064
  %2066 = add i32 %2065, %2064
  %2067 = icmp eq i32 %2066, 2
  %2068 = zext i1 %2067 to i8
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2068, i8* %2069, align 1
  store %struct.Memory* %loadMem_46282e, %struct.Memory** %MEMORY
  %loadMem_462831 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2071 = getelementptr inbounds %struct.GPR, %struct.GPR* %2070, i32 0, i32 33
  %2072 = getelementptr inbounds %struct.Reg, %struct.Reg* %2071, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2072 to i64*
  %2073 = load i64, i64* %PC.i613
  %2074 = add i64 %2073, 216
  %2075 = load i64, i64* %PC.i613
  %2076 = add i64 %2075, 6
  %2077 = load i64, i64* %PC.i613
  %2078 = add i64 %2077, 6
  store i64 %2078, i64* %PC.i613
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2080 = load i8, i8* %2079, align 1
  %2081 = icmp eq i8 %2080, 0
  %2082 = zext i1 %2081 to i8
  store i8 %2082, i8* %BRANCH_TAKEN, align 1
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2084 = select i1 %2081, i64 %2074, i64 %2076
  store i64 %2084, i64* %2083, align 8
  store %struct.Memory* %loadMem_462831, %struct.Memory** %MEMORY
  %loadBr_462831 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462831 = icmp eq i8 %loadBr_462831, 1
  br i1 %cmpBr_462831, label %block_.L_462909, label %block_462837

block_462837:                                     ; preds = %block_.L_462822
  %loadMem_462837 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 33
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %PC.i612 = bitcast %union.anon* %2087 to i64*
  %2088 = load i64, i64* %PC.i612
  %2089 = add i64 %2088, 5
  %2090 = load i64, i64* %PC.i612
  %2091 = add i64 %2090, 5
  store i64 %2091, i64* %PC.i612
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2089, i64* %2092, align 8
  store %struct.Memory* %loadMem_462837, %struct.Memory** %MEMORY
  br label %block_.L_46283c

block_.L_46283c:                                  ; preds = %block_462837
  %loadMem_46283c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2093 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2094 = getelementptr inbounds %struct.GPR, %struct.GPR* %2093, i32 0, i32 33
  %2095 = getelementptr inbounds %struct.Reg, %struct.Reg* %2094, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2095 to i64*
  %2096 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2097 = getelementptr inbounds %struct.GPR, %struct.GPR* %2096, i32 0, i32 15
  %2098 = getelementptr inbounds %struct.Reg, %struct.Reg* %2097, i32 0, i32 0
  %RBP.i611 = bitcast %union.anon* %2098 to i64*
  %2099 = load i64, i64* %RBP.i611
  %2100 = sub i64 %2099, 76
  %2101 = load i64, i64* %PC.i610
  %2102 = add i64 %2101, 7
  store i64 %2102, i64* %PC.i610
  %2103 = inttoptr i64 %2100 to i32*
  store i32 0, i32* %2103
  store %struct.Memory* %loadMem_46283c, %struct.Memory** %MEMORY
  br label %block_.L_462843

block_.L_462843:                                  ; preds = %block_.L_4628f1, %block_.L_46283c
  %loadMem_462843 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2105 = getelementptr inbounds %struct.GPR, %struct.GPR* %2104, i32 0, i32 33
  %2106 = getelementptr inbounds %struct.Reg, %struct.Reg* %2105, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2106 to i64*
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2108 = getelementptr inbounds %struct.GPR, %struct.GPR* %2107, i32 0, i32 1
  %2109 = getelementptr inbounds %struct.Reg, %struct.Reg* %2108, i32 0, i32 0
  %RAX.i608 = bitcast %union.anon* %2109 to i64*
  %2110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2111 = getelementptr inbounds %struct.GPR, %struct.GPR* %2110, i32 0, i32 15
  %2112 = getelementptr inbounds %struct.Reg, %struct.Reg* %2111, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %2112 to i64*
  %2113 = load i64, i64* %RBP.i609
  %2114 = sub i64 %2113, 76
  %2115 = load i64, i64* %PC.i607
  %2116 = add i64 %2115, 3
  store i64 %2116, i64* %PC.i607
  %2117 = inttoptr i64 %2114 to i32*
  %2118 = load i32, i32* %2117
  %2119 = zext i32 %2118 to i64
  store i64 %2119, i64* %RAX.i608, align 8
  store %struct.Memory* %loadMem_462843, %struct.Memory** %MEMORY
  %loadMem_462846 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2121 = getelementptr inbounds %struct.GPR, %struct.GPR* %2120, i32 0, i32 33
  %2122 = getelementptr inbounds %struct.Reg, %struct.Reg* %2121, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2122 to i64*
  %2123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2124 = getelementptr inbounds %struct.GPR, %struct.GPR* %2123, i32 0, i32 5
  %2125 = getelementptr inbounds %struct.Reg, %struct.Reg* %2124, i32 0, i32 0
  %RCX.i605 = bitcast %union.anon* %2125 to i64*
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2127 = getelementptr inbounds %struct.GPR, %struct.GPR* %2126, i32 0, i32 15
  %2128 = getelementptr inbounds %struct.Reg, %struct.Reg* %2127, i32 0, i32 0
  %RBP.i606 = bitcast %union.anon* %2128 to i64*
  %2129 = load i64, i64* %RBP.i606
  %2130 = sub i64 %2129, 32
  %2131 = load i64, i64* %PC.i604
  %2132 = add i64 %2131, 4
  store i64 %2132, i64* %PC.i604
  %2133 = inttoptr i64 %2130 to i64*
  %2134 = load i64, i64* %2133
  store i64 %2134, i64* %RCX.i605, align 8
  store %struct.Memory* %loadMem_462846, %struct.Memory** %MEMORY
  %loadMem_46284a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 33
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %PC.i601 = bitcast %union.anon* %2137 to i64*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 1
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %EAX.i602 = bitcast %union.anon* %2140 to i32*
  %2141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2142 = getelementptr inbounds %struct.GPR, %struct.GPR* %2141, i32 0, i32 5
  %2143 = getelementptr inbounds %struct.Reg, %struct.Reg* %2142, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %2143 to i64*
  %2144 = load i32, i32* %EAX.i602
  %2145 = zext i32 %2144 to i64
  %2146 = load i64, i64* %RCX.i603
  %2147 = add i64 %2146, 400
  %2148 = load i64, i64* %PC.i601
  %2149 = add i64 %2148, 6
  store i64 %2149, i64* %PC.i601
  %2150 = inttoptr i64 %2147 to i32*
  %2151 = load i32, i32* %2150
  %2152 = sub i32 %2144, %2151
  %2153 = icmp ult i32 %2144, %2151
  %2154 = zext i1 %2153 to i8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2154, i8* %2155, align 1
  %2156 = and i32 %2152, 255
  %2157 = call i32 @llvm.ctpop.i32(i32 %2156)
  %2158 = trunc i32 %2157 to i8
  %2159 = and i8 %2158, 1
  %2160 = xor i8 %2159, 1
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2160, i8* %2161, align 1
  %2162 = xor i32 %2151, %2144
  %2163 = xor i32 %2162, %2152
  %2164 = lshr i32 %2163, 4
  %2165 = trunc i32 %2164 to i8
  %2166 = and i8 %2165, 1
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2166, i8* %2167, align 1
  %2168 = icmp eq i32 %2152, 0
  %2169 = zext i1 %2168 to i8
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2169, i8* %2170, align 1
  %2171 = lshr i32 %2152, 31
  %2172 = trunc i32 %2171 to i8
  %2173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2172, i8* %2173, align 1
  %2174 = lshr i32 %2144, 31
  %2175 = lshr i32 %2151, 31
  %2176 = xor i32 %2175, %2174
  %2177 = xor i32 %2171, %2174
  %2178 = add i32 %2177, %2176
  %2179 = icmp eq i32 %2178, 2
  %2180 = zext i1 %2179 to i8
  %2181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2180, i8* %2181, align 1
  store %struct.Memory* %loadMem_46284a, %struct.Memory** %MEMORY
  %loadMem_462850 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 33
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %PC.i600 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %PC.i600
  %2186 = add i64 %2185, 175
  %2187 = load i64, i64* %PC.i600
  %2188 = add i64 %2187, 6
  %2189 = load i64, i64* %PC.i600
  %2190 = add i64 %2189, 6
  store i64 %2190, i64* %PC.i600
  %2191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2192 = load i8, i8* %2191, align 1
  %2193 = icmp ne i8 %2192, 0
  %2194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2195 = load i8, i8* %2194, align 1
  %2196 = icmp ne i8 %2195, 0
  %2197 = xor i1 %2193, %2196
  %2198 = xor i1 %2197, true
  %2199 = zext i1 %2198 to i8
  store i8 %2199, i8* %BRANCH_TAKEN, align 1
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2201 = select i1 %2197, i64 %2188, i64 %2186
  store i64 %2201, i64* %2200, align 8
  store %struct.Memory* %loadMem_462850, %struct.Memory** %MEMORY
  %loadBr_462850 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462850 = icmp eq i8 %loadBr_462850, 1
  br i1 %cmpBr_462850, label %block_.L_4628ff, label %block_462856

block_462856:                                     ; preds = %block_.L_462843
  %loadMem_462856 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2203 = getelementptr inbounds %struct.GPR, %struct.GPR* %2202, i32 0, i32 33
  %2204 = getelementptr inbounds %struct.Reg, %struct.Reg* %2203, i32 0, i32 0
  %PC.i597 = bitcast %union.anon* %2204 to i64*
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 1
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %RAX.i598 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 15
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RBP.i599 = bitcast %union.anon* %2210 to i64*
  %2211 = load i64, i64* %RBP.i599
  %2212 = sub i64 %2211, 32
  %2213 = load i64, i64* %PC.i597
  %2214 = add i64 %2213, 4
  store i64 %2214, i64* %PC.i597
  %2215 = inttoptr i64 %2212 to i64*
  %2216 = load i64, i64* %2215
  store i64 %2216, i64* %RAX.i598, align 8
  store %struct.Memory* %loadMem_462856, %struct.Memory** %MEMORY
  %loadMem_46285a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2218 = getelementptr inbounds %struct.GPR, %struct.GPR* %2217, i32 0, i32 33
  %2219 = getelementptr inbounds %struct.Reg, %struct.Reg* %2218, i32 0, i32 0
  %PC.i594 = bitcast %union.anon* %2219 to i64*
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2221 = getelementptr inbounds %struct.GPR, %struct.GPR* %2220, i32 0, i32 5
  %2222 = getelementptr inbounds %struct.Reg, %struct.Reg* %2221, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %2222 to i64*
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2224 = getelementptr inbounds %struct.GPR, %struct.GPR* %2223, i32 0, i32 15
  %2225 = getelementptr inbounds %struct.Reg, %struct.Reg* %2224, i32 0, i32 0
  %RBP.i596 = bitcast %union.anon* %2225 to i64*
  %2226 = load i64, i64* %RBP.i596
  %2227 = sub i64 %2226, 76
  %2228 = load i64, i64* %PC.i594
  %2229 = add i64 %2228, 4
  store i64 %2229, i64* %PC.i594
  %2230 = inttoptr i64 %2227 to i32*
  %2231 = load i32, i32* %2230
  %2232 = sext i32 %2231 to i64
  store i64 %2232, i64* %RCX.i595, align 8
  store %struct.Memory* %loadMem_46285a, %struct.Memory** %MEMORY
  %loadMem_46285e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2234 = getelementptr inbounds %struct.GPR, %struct.GPR* %2233, i32 0, i32 33
  %2235 = getelementptr inbounds %struct.Reg, %struct.Reg* %2234, i32 0, i32 0
  %PC.i590 = bitcast %union.anon* %2235 to i64*
  %2236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2237 = getelementptr inbounds %struct.GPR, %struct.GPR* %2236, i32 0, i32 1
  %2238 = getelementptr inbounds %struct.Reg, %struct.Reg* %2237, i32 0, i32 0
  %RAX.i591 = bitcast %union.anon* %2238 to i64*
  %2239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2240 = getelementptr inbounds %struct.GPR, %struct.GPR* %2239, i32 0, i32 5
  %2241 = getelementptr inbounds %struct.Reg, %struct.Reg* %2240, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %2241 to i64*
  %2242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2243 = getelementptr inbounds %struct.GPR, %struct.GPR* %2242, i32 0, i32 7
  %2244 = getelementptr inbounds %struct.Reg, %struct.Reg* %2243, i32 0, i32 0
  %RDX.i593 = bitcast %union.anon* %2244 to i64*
  %2245 = load i64, i64* %RAX.i591
  %2246 = load i64, i64* %RCX.i592
  %2247 = mul i64 %2246, 4
  %2248 = add i64 %2247, %2245
  %2249 = load i64, i64* %PC.i590
  %2250 = add i64 %2249, 3
  store i64 %2250, i64* %PC.i590
  %2251 = inttoptr i64 %2248 to i32*
  %2252 = load i32, i32* %2251
  %2253 = zext i32 %2252 to i64
  store i64 %2253, i64* %RDX.i593, align 8
  store %struct.Memory* %loadMem_46285e, %struct.Memory** %MEMORY
  %loadMem_462861 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2255 = getelementptr inbounds %struct.GPR, %struct.GPR* %2254, i32 0, i32 33
  %2256 = getelementptr inbounds %struct.Reg, %struct.Reg* %2255, i32 0, i32 0
  %PC.i587 = bitcast %union.anon* %2256 to i64*
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2258 = getelementptr inbounds %struct.GPR, %struct.GPR* %2257, i32 0, i32 7
  %2259 = getelementptr inbounds %struct.Reg, %struct.Reg* %2258, i32 0, i32 0
  %EDX.i588 = bitcast %union.anon* %2259 to i32*
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2261 = getelementptr inbounds %struct.GPR, %struct.GPR* %2260, i32 0, i32 15
  %2262 = getelementptr inbounds %struct.Reg, %struct.Reg* %2261, i32 0, i32 0
  %RBP.i589 = bitcast %union.anon* %2262 to i64*
  %2263 = load i32, i32* %EDX.i588
  %2264 = zext i32 %2263 to i64
  %2265 = load i64, i64* %RBP.i589
  %2266 = sub i64 %2265, 56
  %2267 = load i64, i64* %PC.i587
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %PC.i587
  %2269 = inttoptr i64 %2266 to i32*
  %2270 = load i32, i32* %2269
  %2271 = sub i32 %2263, %2270
  %2272 = icmp ult i32 %2263, %2270
  %2273 = zext i1 %2272 to i8
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2273, i8* %2274, align 1
  %2275 = and i32 %2271, 255
  %2276 = call i32 @llvm.ctpop.i32(i32 %2275)
  %2277 = trunc i32 %2276 to i8
  %2278 = and i8 %2277, 1
  %2279 = xor i8 %2278, 1
  %2280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2279, i8* %2280, align 1
  %2281 = xor i32 %2270, %2263
  %2282 = xor i32 %2281, %2271
  %2283 = lshr i32 %2282, 4
  %2284 = trunc i32 %2283 to i8
  %2285 = and i8 %2284, 1
  %2286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2285, i8* %2286, align 1
  %2287 = icmp eq i32 %2271, 0
  %2288 = zext i1 %2287 to i8
  %2289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2288, i8* %2289, align 1
  %2290 = lshr i32 %2271, 31
  %2291 = trunc i32 %2290 to i8
  %2292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2291, i8* %2292, align 1
  %2293 = lshr i32 %2263, 31
  %2294 = lshr i32 %2270, 31
  %2295 = xor i32 %2294, %2293
  %2296 = xor i32 %2290, %2293
  %2297 = add i32 %2296, %2295
  %2298 = icmp eq i32 %2297, 2
  %2299 = zext i1 %2298 to i8
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2299, i8* %2300, align 1
  store %struct.Memory* %loadMem_462861, %struct.Memory** %MEMORY
  %loadMem_462864 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2302 = getelementptr inbounds %struct.GPR, %struct.GPR* %2301, i32 0, i32 33
  %2303 = getelementptr inbounds %struct.Reg, %struct.Reg* %2302, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2303 to i64*
  %2304 = load i64, i64* %PC.i586
  %2305 = add i64 %2304, 136
  %2306 = load i64, i64* %PC.i586
  %2307 = add i64 %2306, 6
  %2308 = load i64, i64* %PC.i586
  %2309 = add i64 %2308, 6
  store i64 %2309, i64* %PC.i586
  %2310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2311 = load i8, i8* %2310, align 1
  %2312 = icmp eq i8 %2311, 0
  %2313 = zext i1 %2312 to i8
  store i8 %2313, i8* %BRANCH_TAKEN, align 1
  %2314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2315 = select i1 %2312, i64 %2305, i64 %2307
  store i64 %2315, i64* %2314, align 8
  store %struct.Memory* %loadMem_462864, %struct.Memory** %MEMORY
  %loadBr_462864 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462864 = icmp eq i8 %loadBr_462864, 1
  br i1 %cmpBr_462864, label %block_.L_4628ec, label %block_46286a

block_46286a:                                     ; preds = %block_462856
  %loadMem_46286a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 33
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 1
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RAX.i584 = bitcast %union.anon* %2321 to i64*
  %2322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2323 = getelementptr inbounds %struct.GPR, %struct.GPR* %2322, i32 0, i32 15
  %2324 = getelementptr inbounds %struct.Reg, %struct.Reg* %2323, i32 0, i32 0
  %RBP.i585 = bitcast %union.anon* %2324 to i64*
  %2325 = load i64, i64* %RBP.i585
  %2326 = sub i64 %2325, 76
  %2327 = load i64, i64* %PC.i583
  %2328 = add i64 %2327, 3
  store i64 %2328, i64* %PC.i583
  %2329 = inttoptr i64 %2326 to i32*
  %2330 = load i32, i32* %2329
  %2331 = zext i32 %2330 to i64
  store i64 %2331, i64* %RAX.i584, align 8
  store %struct.Memory* %loadMem_46286a, %struct.Memory** %MEMORY
  %loadMem_46286d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 33
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 1
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %EAX.i581 = bitcast %union.anon* %2337 to i32*
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 15
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %RBP.i582
  %2342 = sub i64 %2341, 80
  %2343 = load i32, i32* %EAX.i581
  %2344 = zext i32 %2343 to i64
  %2345 = load i64, i64* %PC.i580
  %2346 = add i64 %2345, 3
  store i64 %2346, i64* %PC.i580
  %2347 = inttoptr i64 %2342 to i32*
  store i32 %2343, i32* %2347
  store %struct.Memory* %loadMem_46286d, %struct.Memory** %MEMORY
  br label %block_.L_462870

block_.L_462870:                                  ; preds = %block_462888, %block_46286a
  %loadMem_462870 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 33
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %PC.i577 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 1
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RAX.i578 = bitcast %union.anon* %2353 to i64*
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 15
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2356 to i64*
  %2357 = load i64, i64* %RBP.i579
  %2358 = sub i64 %2357, 80
  %2359 = load i64, i64* %PC.i577
  %2360 = add i64 %2359, 3
  store i64 %2360, i64* %PC.i577
  %2361 = inttoptr i64 %2358 to i32*
  %2362 = load i32, i32* %2361
  %2363 = zext i32 %2362 to i64
  store i64 %2363, i64* %RAX.i578, align 8
  store %struct.Memory* %loadMem_462870, %struct.Memory** %MEMORY
  %loadMem_462873 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 33
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2366 to i64*
  %2367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2368 = getelementptr inbounds %struct.GPR, %struct.GPR* %2367, i32 0, i32 5
  %2369 = getelementptr inbounds %struct.Reg, %struct.Reg* %2368, i32 0, i32 0
  %RCX.i575 = bitcast %union.anon* %2369 to i64*
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 15
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %RBP.i576 = bitcast %union.anon* %2372 to i64*
  %2373 = load i64, i64* %RBP.i576
  %2374 = sub i64 %2373, 32
  %2375 = load i64, i64* %PC.i574
  %2376 = add i64 %2375, 4
  store i64 %2376, i64* %PC.i574
  %2377 = inttoptr i64 %2374 to i64*
  %2378 = load i64, i64* %2377
  store i64 %2378, i64* %RCX.i575, align 8
  store %struct.Memory* %loadMem_462873, %struct.Memory** %MEMORY
  %loadMem_462877 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 33
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %PC.i571 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 5
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RCX.i572 = bitcast %union.anon* %2384 to i64*
  %2385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2386 = getelementptr inbounds %struct.GPR, %struct.GPR* %2385, i32 0, i32 7
  %2387 = getelementptr inbounds %struct.Reg, %struct.Reg* %2386, i32 0, i32 0
  %RDX.i573 = bitcast %union.anon* %2387 to i64*
  %2388 = load i64, i64* %RCX.i572
  %2389 = add i64 %2388, 400
  %2390 = load i64, i64* %PC.i571
  %2391 = add i64 %2390, 6
  store i64 %2391, i64* %PC.i571
  %2392 = inttoptr i64 %2389 to i32*
  %2393 = load i32, i32* %2392
  %2394 = zext i32 %2393 to i64
  store i64 %2394, i64* %RDX.i573, align 8
  store %struct.Memory* %loadMem_462877, %struct.Memory** %MEMORY
  %loadMem_46287d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2396 = getelementptr inbounds %struct.GPR, %struct.GPR* %2395, i32 0, i32 33
  %2397 = getelementptr inbounds %struct.Reg, %struct.Reg* %2396, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2397 to i64*
  %2398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2399 = getelementptr inbounds %struct.GPR, %struct.GPR* %2398, i32 0, i32 7
  %2400 = getelementptr inbounds %struct.Reg, %struct.Reg* %2399, i32 0, i32 0
  %RDX.i570 = bitcast %union.anon* %2400 to i64*
  %2401 = load i64, i64* %RDX.i570
  %2402 = load i64, i64* %PC.i569
  %2403 = add i64 %2402, 3
  store i64 %2403, i64* %PC.i569
  %2404 = trunc i64 %2401 to i32
  %2405 = sub i32 %2404, 1
  %2406 = zext i32 %2405 to i64
  store i64 %2406, i64* %RDX.i570, align 8
  %2407 = icmp ult i32 %2404, 1
  %2408 = zext i1 %2407 to i8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2408, i8* %2409, align 1
  %2410 = and i32 %2405, 255
  %2411 = call i32 @llvm.ctpop.i32(i32 %2410)
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2414, i8* %2415, align 1
  %2416 = xor i64 1, %2401
  %2417 = trunc i64 %2416 to i32
  %2418 = xor i32 %2417, %2405
  %2419 = lshr i32 %2418, 4
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2421, i8* %2422, align 1
  %2423 = icmp eq i32 %2405, 0
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2424, i8* %2425, align 1
  %2426 = lshr i32 %2405, 31
  %2427 = trunc i32 %2426 to i8
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2427, i8* %2428, align 1
  %2429 = lshr i32 %2404, 31
  %2430 = xor i32 %2426, %2429
  %2431 = add i32 %2430, %2429
  %2432 = icmp eq i32 %2431, 2
  %2433 = zext i1 %2432 to i8
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2433, i8* %2434, align 1
  store %struct.Memory* %loadMem_46287d, %struct.Memory** %MEMORY
  %loadMem_462880 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i566 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 1
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %EAX.i567 = bitcast %union.anon* %2440 to i32*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 7
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %EDX.i568 = bitcast %union.anon* %2443 to i32*
  %2444 = load i32, i32* %EAX.i567
  %2445 = zext i32 %2444 to i64
  %2446 = load i32, i32* %EDX.i568
  %2447 = zext i32 %2446 to i64
  %2448 = load i64, i64* %PC.i566
  %2449 = add i64 %2448, 2
  store i64 %2449, i64* %PC.i566
  %2450 = sub i32 %2444, %2446
  %2451 = icmp ult i32 %2444, %2446
  %2452 = zext i1 %2451 to i8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2452, i8* %2453, align 1
  %2454 = and i32 %2450, 255
  %2455 = call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2458, i8* %2459, align 1
  %2460 = xor i64 %2447, %2445
  %2461 = trunc i64 %2460 to i32
  %2462 = xor i32 %2461, %2450
  %2463 = lshr i32 %2462, 4
  %2464 = trunc i32 %2463 to i8
  %2465 = and i8 %2464, 1
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2465, i8* %2466, align 1
  %2467 = icmp eq i32 %2450, 0
  %2468 = zext i1 %2467 to i8
  %2469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2468, i8* %2469, align 1
  %2470 = lshr i32 %2450, 31
  %2471 = trunc i32 %2470 to i8
  %2472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2471, i8* %2472, align 1
  %2473 = lshr i32 %2444, 31
  %2474 = lshr i32 %2446, 31
  %2475 = xor i32 %2474, %2473
  %2476 = xor i32 %2470, %2473
  %2477 = add i32 %2476, %2475
  %2478 = icmp eq i32 %2477, 2
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2479, i8* %2480, align 1
  store %struct.Memory* %loadMem_462880, %struct.Memory** %MEMORY
  %loadMem_462882 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2482 = getelementptr inbounds %struct.GPR, %struct.GPR* %2481, i32 0, i32 33
  %2483 = getelementptr inbounds %struct.Reg, %struct.Reg* %2482, i32 0, i32 0
  %PC.i565 = bitcast %union.anon* %2483 to i64*
  %2484 = load i64, i64* %PC.i565
  %2485 = add i64 %2484, 82
  %2486 = load i64, i64* %PC.i565
  %2487 = add i64 %2486, 6
  %2488 = load i64, i64* %PC.i565
  %2489 = add i64 %2488, 6
  store i64 %2489, i64* %PC.i565
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2491 = load i8, i8* %2490, align 1
  %2492 = icmp ne i8 %2491, 0
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2494 = load i8, i8* %2493, align 1
  %2495 = icmp ne i8 %2494, 0
  %2496 = xor i1 %2492, %2495
  %2497 = xor i1 %2496, true
  %2498 = zext i1 %2497 to i8
  store i8 %2498, i8* %BRANCH_TAKEN, align 1
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2500 = select i1 %2496, i64 %2487, i64 %2485
  store i64 %2500, i64* %2499, align 8
  store %struct.Memory* %loadMem_462882, %struct.Memory** %MEMORY
  %loadBr_462882 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462882 = icmp eq i8 %loadBr_462882, 1
  br i1 %cmpBr_462882, label %block_.L_4628d4, label %block_462888

block_462888:                                     ; preds = %block_.L_462870
  %loadMem_462888 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 1
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RAX.i563 = bitcast %union.anon* %2506 to i64*
  %2507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2508 = getelementptr inbounds %struct.GPR, %struct.GPR* %2507, i32 0, i32 15
  %2509 = getelementptr inbounds %struct.Reg, %struct.Reg* %2508, i32 0, i32 0
  %RBP.i564 = bitcast %union.anon* %2509 to i64*
  %2510 = load i64, i64* %RBP.i564
  %2511 = sub i64 %2510, 32
  %2512 = load i64, i64* %PC.i562
  %2513 = add i64 %2512, 4
  store i64 %2513, i64* %PC.i562
  %2514 = inttoptr i64 %2511 to i64*
  %2515 = load i64, i64* %2514
  store i64 %2515, i64* %RAX.i563, align 8
  store %struct.Memory* %loadMem_462888, %struct.Memory** %MEMORY
  %loadMem_46288c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 33
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2518 to i64*
  %2519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2520 = getelementptr inbounds %struct.GPR, %struct.GPR* %2519, i32 0, i32 5
  %2521 = getelementptr inbounds %struct.Reg, %struct.Reg* %2520, i32 0, i32 0
  %RCX.i560 = bitcast %union.anon* %2521 to i64*
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 15
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %RBP.i561 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %RBP.i561
  %2526 = sub i64 %2525, 80
  %2527 = load i64, i64* %PC.i559
  %2528 = add i64 %2527, 3
  store i64 %2528, i64* %PC.i559
  %2529 = inttoptr i64 %2526 to i32*
  %2530 = load i32, i32* %2529
  %2531 = zext i32 %2530 to i64
  store i64 %2531, i64* %RCX.i560, align 8
  store %struct.Memory* %loadMem_46288c, %struct.Memory** %MEMORY
  %loadMem_46288f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 33
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %PC.i557 = bitcast %union.anon* %2534 to i64*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2536 = getelementptr inbounds %struct.GPR, %struct.GPR* %2535, i32 0, i32 5
  %2537 = getelementptr inbounds %struct.Reg, %struct.Reg* %2536, i32 0, i32 0
  %RCX.i558 = bitcast %union.anon* %2537 to i64*
  %2538 = load i64, i64* %RCX.i558
  %2539 = load i64, i64* %PC.i557
  %2540 = add i64 %2539, 3
  store i64 %2540, i64* %PC.i557
  %2541 = trunc i64 %2538 to i32
  %2542 = add i32 1, %2541
  %2543 = zext i32 %2542 to i64
  store i64 %2543, i64* %RCX.i558, align 8
  %2544 = icmp ult i32 %2542, %2541
  %2545 = icmp ult i32 %2542, 1
  %2546 = or i1 %2544, %2545
  %2547 = zext i1 %2546 to i8
  %2548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2547, i8* %2548, align 1
  %2549 = and i32 %2542, 255
  %2550 = call i32 @llvm.ctpop.i32(i32 %2549)
  %2551 = trunc i32 %2550 to i8
  %2552 = and i8 %2551, 1
  %2553 = xor i8 %2552, 1
  %2554 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2553, i8* %2554, align 1
  %2555 = xor i64 1, %2538
  %2556 = trunc i64 %2555 to i32
  %2557 = xor i32 %2556, %2542
  %2558 = lshr i32 %2557, 4
  %2559 = trunc i32 %2558 to i8
  %2560 = and i8 %2559, 1
  %2561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2560, i8* %2561, align 1
  %2562 = icmp eq i32 %2542, 0
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2563, i8* %2564, align 1
  %2565 = lshr i32 %2542, 31
  %2566 = trunc i32 %2565 to i8
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2566, i8* %2567, align 1
  %2568 = lshr i32 %2541, 31
  %2569 = xor i32 %2565, %2568
  %2570 = add i32 %2569, %2565
  %2571 = icmp eq i32 %2570, 2
  %2572 = zext i1 %2571 to i8
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2572, i8* %2573, align 1
  store %struct.Memory* %loadMem_46288f, %struct.Memory** %MEMORY
  %loadMem_462892 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2575 = getelementptr inbounds %struct.GPR, %struct.GPR* %2574, i32 0, i32 33
  %2576 = getelementptr inbounds %struct.Reg, %struct.Reg* %2575, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %2576 to i64*
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2578 = getelementptr inbounds %struct.GPR, %struct.GPR* %2577, i32 0, i32 5
  %2579 = getelementptr inbounds %struct.Reg, %struct.Reg* %2578, i32 0, i32 0
  %ECX.i555 = bitcast %union.anon* %2579 to i32*
  %2580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2581 = getelementptr inbounds %struct.GPR, %struct.GPR* %2580, i32 0, i32 7
  %2582 = getelementptr inbounds %struct.Reg, %struct.Reg* %2581, i32 0, i32 0
  %RDX.i556 = bitcast %union.anon* %2582 to i64*
  %2583 = load i32, i32* %ECX.i555
  %2584 = zext i32 %2583 to i64
  %2585 = load i64, i64* %PC.i554
  %2586 = add i64 %2585, 3
  store i64 %2586, i64* %PC.i554
  %2587 = shl i64 %2584, 32
  %2588 = ashr exact i64 %2587, 32
  store i64 %2588, i64* %RDX.i556, align 8
  store %struct.Memory* %loadMem_462892, %struct.Memory** %MEMORY
  %loadMem_462895 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2590 = getelementptr inbounds %struct.GPR, %struct.GPR* %2589, i32 0, i32 33
  %2591 = getelementptr inbounds %struct.Reg, %struct.Reg* %2590, i32 0, i32 0
  %PC.i550 = bitcast %union.anon* %2591 to i64*
  %2592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2593 = getelementptr inbounds %struct.GPR, %struct.GPR* %2592, i32 0, i32 1
  %2594 = getelementptr inbounds %struct.Reg, %struct.Reg* %2593, i32 0, i32 0
  %RAX.i551 = bitcast %union.anon* %2594 to i64*
  %2595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2596 = getelementptr inbounds %struct.GPR, %struct.GPR* %2595, i32 0, i32 5
  %2597 = getelementptr inbounds %struct.Reg, %struct.Reg* %2596, i32 0, i32 0
  %RCX.i552 = bitcast %union.anon* %2597 to i64*
  %2598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2599 = getelementptr inbounds %struct.GPR, %struct.GPR* %2598, i32 0, i32 7
  %2600 = getelementptr inbounds %struct.Reg, %struct.Reg* %2599, i32 0, i32 0
  %RDX.i553 = bitcast %union.anon* %2600 to i64*
  %2601 = load i64, i64* %RAX.i551
  %2602 = load i64, i64* %RDX.i553
  %2603 = mul i64 %2602, 4
  %2604 = add i64 %2603, %2601
  %2605 = load i64, i64* %PC.i550
  %2606 = add i64 %2605, 3
  store i64 %2606, i64* %PC.i550
  %2607 = inttoptr i64 %2604 to i32*
  %2608 = load i32, i32* %2607
  %2609 = zext i32 %2608 to i64
  store i64 %2609, i64* %RCX.i552, align 8
  store %struct.Memory* %loadMem_462895, %struct.Memory** %MEMORY
  %loadMem_462898 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2611 = getelementptr inbounds %struct.GPR, %struct.GPR* %2610, i32 0, i32 33
  %2612 = getelementptr inbounds %struct.Reg, %struct.Reg* %2611, i32 0, i32 0
  %PC.i547 = bitcast %union.anon* %2612 to i64*
  %2613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2614 = getelementptr inbounds %struct.GPR, %struct.GPR* %2613, i32 0, i32 1
  %2615 = getelementptr inbounds %struct.Reg, %struct.Reg* %2614, i32 0, i32 0
  %RAX.i548 = bitcast %union.anon* %2615 to i64*
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 15
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %RBP.i549 = bitcast %union.anon* %2618 to i64*
  %2619 = load i64, i64* %RBP.i549
  %2620 = sub i64 %2619, 32
  %2621 = load i64, i64* %PC.i547
  %2622 = add i64 %2621, 4
  store i64 %2622, i64* %PC.i547
  %2623 = inttoptr i64 %2620 to i64*
  %2624 = load i64, i64* %2623
  store i64 %2624, i64* %RAX.i548, align 8
  store %struct.Memory* %loadMem_462898, %struct.Memory** %MEMORY
  %loadMem_46289c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 33
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 7
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RDX.i545 = bitcast %union.anon* %2630 to i64*
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2632 = getelementptr inbounds %struct.GPR, %struct.GPR* %2631, i32 0, i32 15
  %2633 = getelementptr inbounds %struct.Reg, %struct.Reg* %2632, i32 0, i32 0
  %RBP.i546 = bitcast %union.anon* %2633 to i64*
  %2634 = load i64, i64* %RBP.i546
  %2635 = sub i64 %2634, 80
  %2636 = load i64, i64* %PC.i544
  %2637 = add i64 %2636, 4
  store i64 %2637, i64* %PC.i544
  %2638 = inttoptr i64 %2635 to i32*
  %2639 = load i32, i32* %2638
  %2640 = sext i32 %2639 to i64
  store i64 %2640, i64* %RDX.i545, align 8
  store %struct.Memory* %loadMem_46289c, %struct.Memory** %MEMORY
  %loadMem_4628a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2642 = getelementptr inbounds %struct.GPR, %struct.GPR* %2641, i32 0, i32 33
  %2643 = getelementptr inbounds %struct.Reg, %struct.Reg* %2642, i32 0, i32 0
  %PC.i540 = bitcast %union.anon* %2643 to i64*
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 5
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %ECX.i541 = bitcast %union.anon* %2646 to i32*
  %2647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2648 = getelementptr inbounds %struct.GPR, %struct.GPR* %2647, i32 0, i32 1
  %2649 = getelementptr inbounds %struct.Reg, %struct.Reg* %2648, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %2649 to i64*
  %2650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2651 = getelementptr inbounds %struct.GPR, %struct.GPR* %2650, i32 0, i32 7
  %2652 = getelementptr inbounds %struct.Reg, %struct.Reg* %2651, i32 0, i32 0
  %RDX.i543 = bitcast %union.anon* %2652 to i64*
  %2653 = load i64, i64* %RAX.i542
  %2654 = load i64, i64* %RDX.i543
  %2655 = mul i64 %2654, 4
  %2656 = add i64 %2655, %2653
  %2657 = load i32, i32* %ECX.i541
  %2658 = zext i32 %2657 to i64
  %2659 = load i64, i64* %PC.i540
  %2660 = add i64 %2659, 3
  store i64 %2660, i64* %PC.i540
  %2661 = inttoptr i64 %2656 to i32*
  store i32 %2657, i32* %2661
  store %struct.Memory* %loadMem_4628a0, %struct.Memory** %MEMORY
  %loadMem_4628a3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2663 = getelementptr inbounds %struct.GPR, %struct.GPR* %2662, i32 0, i32 33
  %2664 = getelementptr inbounds %struct.Reg, %struct.Reg* %2663, i32 0, i32 0
  %PC.i537 = bitcast %union.anon* %2664 to i64*
  %2665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2666 = getelementptr inbounds %struct.GPR, %struct.GPR* %2665, i32 0, i32 1
  %2667 = getelementptr inbounds %struct.Reg, %struct.Reg* %2666, i32 0, i32 0
  %RAX.i538 = bitcast %union.anon* %2667 to i64*
  %2668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2669 = getelementptr inbounds %struct.GPR, %struct.GPR* %2668, i32 0, i32 15
  %2670 = getelementptr inbounds %struct.Reg, %struct.Reg* %2669, i32 0, i32 0
  %RBP.i539 = bitcast %union.anon* %2670 to i64*
  %2671 = load i64, i64* %RBP.i539
  %2672 = sub i64 %2671, 32
  %2673 = load i64, i64* %PC.i537
  %2674 = add i64 %2673, 4
  store i64 %2674, i64* %PC.i537
  %2675 = inttoptr i64 %2672 to i64*
  %2676 = load i64, i64* %2675
  store i64 %2676, i64* %RAX.i538, align 8
  store %struct.Memory* %loadMem_4628a3, %struct.Memory** %MEMORY
  %loadMem_4628a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i534 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 5
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 15
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RBP.i536 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RBP.i536
  %2687 = sub i64 %2686, 80
  %2688 = load i64, i64* %PC.i534
  %2689 = add i64 %2688, 3
  store i64 %2689, i64* %PC.i534
  %2690 = inttoptr i64 %2687 to i32*
  %2691 = load i32, i32* %2690
  %2692 = zext i32 %2691 to i64
  store i64 %2692, i64* %RCX.i535, align 8
  store %struct.Memory* %loadMem_4628a7, %struct.Memory** %MEMORY
  %loadMem_4628aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2694 = getelementptr inbounds %struct.GPR, %struct.GPR* %2693, i32 0, i32 33
  %2695 = getelementptr inbounds %struct.Reg, %struct.Reg* %2694, i32 0, i32 0
  %PC.i532 = bitcast %union.anon* %2695 to i64*
  %2696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2697 = getelementptr inbounds %struct.GPR, %struct.GPR* %2696, i32 0, i32 5
  %2698 = getelementptr inbounds %struct.Reg, %struct.Reg* %2697, i32 0, i32 0
  %RCX.i533 = bitcast %union.anon* %2698 to i64*
  %2699 = load i64, i64* %RCX.i533
  %2700 = load i64, i64* %PC.i532
  %2701 = add i64 %2700, 3
  store i64 %2701, i64* %PC.i532
  %2702 = trunc i64 %2699 to i32
  %2703 = add i32 1, %2702
  %2704 = zext i32 %2703 to i64
  store i64 %2704, i64* %RCX.i533, align 8
  %2705 = icmp ult i32 %2703, %2702
  %2706 = icmp ult i32 %2703, 1
  %2707 = or i1 %2705, %2706
  %2708 = zext i1 %2707 to i8
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2708, i8* %2709, align 1
  %2710 = and i32 %2703, 255
  %2711 = call i32 @llvm.ctpop.i32(i32 %2710)
  %2712 = trunc i32 %2711 to i8
  %2713 = and i8 %2712, 1
  %2714 = xor i8 %2713, 1
  %2715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2714, i8* %2715, align 1
  %2716 = xor i64 1, %2699
  %2717 = trunc i64 %2716 to i32
  %2718 = xor i32 %2717, %2703
  %2719 = lshr i32 %2718, 4
  %2720 = trunc i32 %2719 to i8
  %2721 = and i8 %2720, 1
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2721, i8* %2722, align 1
  %2723 = icmp eq i32 %2703, 0
  %2724 = zext i1 %2723 to i8
  %2725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2724, i8* %2725, align 1
  %2726 = lshr i32 %2703, 31
  %2727 = trunc i32 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2727, i8* %2728, align 1
  %2729 = lshr i32 %2702, 31
  %2730 = xor i32 %2726, %2729
  %2731 = add i32 %2730, %2726
  %2732 = icmp eq i32 %2731, 2
  %2733 = zext i1 %2732 to i8
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2733, i8* %2734, align 1
  store %struct.Memory* %loadMem_4628aa, %struct.Memory** %MEMORY
  %loadMem_4628ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i529 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 5
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %ECX.i530 = bitcast %union.anon* %2740 to i32*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 7
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RDX.i531 = bitcast %union.anon* %2743 to i64*
  %2744 = load i32, i32* %ECX.i530
  %2745 = zext i32 %2744 to i64
  %2746 = load i64, i64* %PC.i529
  %2747 = add i64 %2746, 3
  store i64 %2747, i64* %PC.i529
  %2748 = shl i64 %2745, 32
  %2749 = ashr exact i64 %2748, 32
  store i64 %2749, i64* %RDX.i531, align 8
  store %struct.Memory* %loadMem_4628ad, %struct.Memory** %MEMORY
  %loadMem_4628b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 33
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %PC.i525 = bitcast %union.anon* %2752 to i64*
  %2753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2754 = getelementptr inbounds %struct.GPR, %struct.GPR* %2753, i32 0, i32 1
  %2755 = getelementptr inbounds %struct.Reg, %struct.Reg* %2754, i32 0, i32 0
  %RAX.i526 = bitcast %union.anon* %2755 to i64*
  %2756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2757 = getelementptr inbounds %struct.GPR, %struct.GPR* %2756, i32 0, i32 5
  %2758 = getelementptr inbounds %struct.Reg, %struct.Reg* %2757, i32 0, i32 0
  %RCX.i527 = bitcast %union.anon* %2758 to i64*
  %2759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2760 = getelementptr inbounds %struct.GPR, %struct.GPR* %2759, i32 0, i32 7
  %2761 = getelementptr inbounds %struct.Reg, %struct.Reg* %2760, i32 0, i32 0
  %RDX.i528 = bitcast %union.anon* %2761 to i64*
  %2762 = load i64, i64* %RAX.i526
  %2763 = load i64, i64* %RDX.i528
  %2764 = mul i64 %2763, 4
  %2765 = add i64 %2762, 200
  %2766 = add i64 %2765, %2764
  %2767 = load i64, i64* %PC.i525
  %2768 = add i64 %2767, 7
  store i64 %2768, i64* %PC.i525
  %2769 = inttoptr i64 %2766 to i32*
  %2770 = load i32, i32* %2769
  %2771 = zext i32 %2770 to i64
  store i64 %2771, i64* %RCX.i527, align 8
  store %struct.Memory* %loadMem_4628b0, %struct.Memory** %MEMORY
  %loadMem_4628b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 33
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %PC.i522 = bitcast %union.anon* %2774 to i64*
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2776 = getelementptr inbounds %struct.GPR, %struct.GPR* %2775, i32 0, i32 1
  %2777 = getelementptr inbounds %struct.Reg, %struct.Reg* %2776, i32 0, i32 0
  %RAX.i523 = bitcast %union.anon* %2777 to i64*
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2779 = getelementptr inbounds %struct.GPR, %struct.GPR* %2778, i32 0, i32 15
  %2780 = getelementptr inbounds %struct.Reg, %struct.Reg* %2779, i32 0, i32 0
  %RBP.i524 = bitcast %union.anon* %2780 to i64*
  %2781 = load i64, i64* %RBP.i524
  %2782 = sub i64 %2781, 32
  %2783 = load i64, i64* %PC.i522
  %2784 = add i64 %2783, 4
  store i64 %2784, i64* %PC.i522
  %2785 = inttoptr i64 %2782 to i64*
  %2786 = load i64, i64* %2785
  store i64 %2786, i64* %RAX.i523, align 8
  store %struct.Memory* %loadMem_4628b7, %struct.Memory** %MEMORY
  %loadMem_4628bb = load %struct.Memory*, %struct.Memory** %MEMORY
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2788 = getelementptr inbounds %struct.GPR, %struct.GPR* %2787, i32 0, i32 33
  %2789 = getelementptr inbounds %struct.Reg, %struct.Reg* %2788, i32 0, i32 0
  %PC.i519 = bitcast %union.anon* %2789 to i64*
  %2790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2791 = getelementptr inbounds %struct.GPR, %struct.GPR* %2790, i32 0, i32 7
  %2792 = getelementptr inbounds %struct.Reg, %struct.Reg* %2791, i32 0, i32 0
  %RDX.i520 = bitcast %union.anon* %2792 to i64*
  %2793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2794 = getelementptr inbounds %struct.GPR, %struct.GPR* %2793, i32 0, i32 15
  %2795 = getelementptr inbounds %struct.Reg, %struct.Reg* %2794, i32 0, i32 0
  %RBP.i521 = bitcast %union.anon* %2795 to i64*
  %2796 = load i64, i64* %RBP.i521
  %2797 = sub i64 %2796, 80
  %2798 = load i64, i64* %PC.i519
  %2799 = add i64 %2798, 4
  store i64 %2799, i64* %PC.i519
  %2800 = inttoptr i64 %2797 to i32*
  %2801 = load i32, i32* %2800
  %2802 = sext i32 %2801 to i64
  store i64 %2802, i64* %RDX.i520, align 8
  store %struct.Memory* %loadMem_4628bb, %struct.Memory** %MEMORY
  %loadMem_4628bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2804 = getelementptr inbounds %struct.GPR, %struct.GPR* %2803, i32 0, i32 33
  %2805 = getelementptr inbounds %struct.Reg, %struct.Reg* %2804, i32 0, i32 0
  %PC.i515 = bitcast %union.anon* %2805 to i64*
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2807 = getelementptr inbounds %struct.GPR, %struct.GPR* %2806, i32 0, i32 5
  %2808 = getelementptr inbounds %struct.Reg, %struct.Reg* %2807, i32 0, i32 0
  %ECX.i516 = bitcast %union.anon* %2808 to i32*
  %2809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2810 = getelementptr inbounds %struct.GPR, %struct.GPR* %2809, i32 0, i32 1
  %2811 = getelementptr inbounds %struct.Reg, %struct.Reg* %2810, i32 0, i32 0
  %RAX.i517 = bitcast %union.anon* %2811 to i64*
  %2812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2813 = getelementptr inbounds %struct.GPR, %struct.GPR* %2812, i32 0, i32 7
  %2814 = getelementptr inbounds %struct.Reg, %struct.Reg* %2813, i32 0, i32 0
  %RDX.i518 = bitcast %union.anon* %2814 to i64*
  %2815 = load i64, i64* %RAX.i517
  %2816 = load i64, i64* %RDX.i518
  %2817 = mul i64 %2816, 4
  %2818 = add i64 %2815, 200
  %2819 = add i64 %2818, %2817
  %2820 = load i32, i32* %ECX.i516
  %2821 = zext i32 %2820 to i64
  %2822 = load i64, i64* %PC.i515
  %2823 = add i64 %2822, 7
  store i64 %2823, i64* %PC.i515
  %2824 = inttoptr i64 %2819 to i32*
  store i32 %2820, i32* %2824
  store %struct.Memory* %loadMem_4628bf, %struct.Memory** %MEMORY
  %loadMem_4628c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2826 = getelementptr inbounds %struct.GPR, %struct.GPR* %2825, i32 0, i32 33
  %2827 = getelementptr inbounds %struct.Reg, %struct.Reg* %2826, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %2827 to i64*
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2829 = getelementptr inbounds %struct.GPR, %struct.GPR* %2828, i32 0, i32 1
  %2830 = getelementptr inbounds %struct.Reg, %struct.Reg* %2829, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %2830 to i64*
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 15
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %RBP.i514 = bitcast %union.anon* %2833 to i64*
  %2834 = load i64, i64* %RBP.i514
  %2835 = sub i64 %2834, 80
  %2836 = load i64, i64* %PC.i512
  %2837 = add i64 %2836, 3
  store i64 %2837, i64* %PC.i512
  %2838 = inttoptr i64 %2835 to i32*
  %2839 = load i32, i32* %2838
  %2840 = zext i32 %2839 to i64
  store i64 %2840, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_4628c6, %struct.Memory** %MEMORY
  %loadMem_4628c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2842 = getelementptr inbounds %struct.GPR, %struct.GPR* %2841, i32 0, i32 33
  %2843 = getelementptr inbounds %struct.Reg, %struct.Reg* %2842, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %2843 to i64*
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2845 = getelementptr inbounds %struct.GPR, %struct.GPR* %2844, i32 0, i32 1
  %2846 = getelementptr inbounds %struct.Reg, %struct.Reg* %2845, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %2846 to i64*
  %2847 = load i64, i64* %RAX.i511
  %2848 = load i64, i64* %PC.i510
  %2849 = add i64 %2848, 3
  store i64 %2849, i64* %PC.i510
  %2850 = trunc i64 %2847 to i32
  %2851 = add i32 1, %2850
  %2852 = zext i32 %2851 to i64
  store i64 %2852, i64* %RAX.i511, align 8
  %2853 = icmp ult i32 %2851, %2850
  %2854 = icmp ult i32 %2851, 1
  %2855 = or i1 %2853, %2854
  %2856 = zext i1 %2855 to i8
  %2857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2856, i8* %2857, align 1
  %2858 = and i32 %2851, 255
  %2859 = call i32 @llvm.ctpop.i32(i32 %2858)
  %2860 = trunc i32 %2859 to i8
  %2861 = and i8 %2860, 1
  %2862 = xor i8 %2861, 1
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2862, i8* %2863, align 1
  %2864 = xor i64 1, %2847
  %2865 = trunc i64 %2864 to i32
  %2866 = xor i32 %2865, %2851
  %2867 = lshr i32 %2866, 4
  %2868 = trunc i32 %2867 to i8
  %2869 = and i8 %2868, 1
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2869, i8* %2870, align 1
  %2871 = icmp eq i32 %2851, 0
  %2872 = zext i1 %2871 to i8
  %2873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2872, i8* %2873, align 1
  %2874 = lshr i32 %2851, 31
  %2875 = trunc i32 %2874 to i8
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2875, i8* %2876, align 1
  %2877 = lshr i32 %2850, 31
  %2878 = xor i32 %2874, %2877
  %2879 = add i32 %2878, %2874
  %2880 = icmp eq i32 %2879, 2
  %2881 = zext i1 %2880 to i8
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2881, i8* %2882, align 1
  store %struct.Memory* %loadMem_4628c9, %struct.Memory** %MEMORY
  %loadMem_4628cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2884 = getelementptr inbounds %struct.GPR, %struct.GPR* %2883, i32 0, i32 33
  %2885 = getelementptr inbounds %struct.Reg, %struct.Reg* %2884, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %2885 to i64*
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 1
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %EAX.i508 = bitcast %union.anon* %2888 to i32*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 15
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RBP.i509
  %2893 = sub i64 %2892, 80
  %2894 = load i32, i32* %EAX.i508
  %2895 = zext i32 %2894 to i64
  %2896 = load i64, i64* %PC.i507
  %2897 = add i64 %2896, 3
  store i64 %2897, i64* %PC.i507
  %2898 = inttoptr i64 %2893 to i32*
  store i32 %2894, i32* %2898
  store %struct.Memory* %loadMem_4628cc, %struct.Memory** %MEMORY
  %loadMem_4628cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2900 = getelementptr inbounds %struct.GPR, %struct.GPR* %2899, i32 0, i32 33
  %2901 = getelementptr inbounds %struct.Reg, %struct.Reg* %2900, i32 0, i32 0
  %PC.i506 = bitcast %union.anon* %2901 to i64*
  %2902 = load i64, i64* %PC.i506
  %2903 = add i64 %2902, -95
  %2904 = load i64, i64* %PC.i506
  %2905 = add i64 %2904, 5
  store i64 %2905, i64* %PC.i506
  %2906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2903, i64* %2906, align 8
  store %struct.Memory* %loadMem_4628cf, %struct.Memory** %MEMORY
  br label %block_.L_462870

block_.L_4628d4:                                  ; preds = %block_.L_462870
  %loadMem_4628d4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2908 = getelementptr inbounds %struct.GPR, %struct.GPR* %2907, i32 0, i32 33
  %2909 = getelementptr inbounds %struct.Reg, %struct.Reg* %2908, i32 0, i32 0
  %PC.i503 = bitcast %union.anon* %2909 to i64*
  %2910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2911 = getelementptr inbounds %struct.GPR, %struct.GPR* %2910, i32 0, i32 1
  %2912 = getelementptr inbounds %struct.Reg, %struct.Reg* %2911, i32 0, i32 0
  %RAX.i504 = bitcast %union.anon* %2912 to i64*
  %2913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2914 = getelementptr inbounds %struct.GPR, %struct.GPR* %2913, i32 0, i32 15
  %2915 = getelementptr inbounds %struct.Reg, %struct.Reg* %2914, i32 0, i32 0
  %RBP.i505 = bitcast %union.anon* %2915 to i64*
  %2916 = load i64, i64* %RBP.i505
  %2917 = sub i64 %2916, 32
  %2918 = load i64, i64* %PC.i503
  %2919 = add i64 %2918, 4
  store i64 %2919, i64* %PC.i503
  %2920 = inttoptr i64 %2917 to i64*
  %2921 = load i64, i64* %2920
  store i64 %2921, i64* %RAX.i504, align 8
  store %struct.Memory* %loadMem_4628d4, %struct.Memory** %MEMORY
  %loadMem_4628d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2923 = getelementptr inbounds %struct.GPR, %struct.GPR* %2922, i32 0, i32 33
  %2924 = getelementptr inbounds %struct.Reg, %struct.Reg* %2923, i32 0, i32 0
  %PC.i500 = bitcast %union.anon* %2924 to i64*
  %2925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2926 = getelementptr inbounds %struct.GPR, %struct.GPR* %2925, i32 0, i32 1
  %2927 = getelementptr inbounds %struct.Reg, %struct.Reg* %2926, i32 0, i32 0
  %RAX.i501 = bitcast %union.anon* %2927 to i64*
  %2928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2929 = getelementptr inbounds %struct.GPR, %struct.GPR* %2928, i32 0, i32 5
  %2930 = getelementptr inbounds %struct.Reg, %struct.Reg* %2929, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %2930 to i64*
  %2931 = load i64, i64* %RAX.i501
  %2932 = add i64 %2931, 400
  %2933 = load i64, i64* %PC.i500
  %2934 = add i64 %2933, 6
  store i64 %2934, i64* %PC.i500
  %2935 = inttoptr i64 %2932 to i32*
  %2936 = load i32, i32* %2935
  %2937 = zext i32 %2936 to i64
  store i64 %2937, i64* %RCX.i502, align 8
  store %struct.Memory* %loadMem_4628d8, %struct.Memory** %MEMORY
  %loadMem_4628de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2939 = getelementptr inbounds %struct.GPR, %struct.GPR* %2938, i32 0, i32 33
  %2940 = getelementptr inbounds %struct.Reg, %struct.Reg* %2939, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %2940 to i64*
  %2941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2942 = getelementptr inbounds %struct.GPR, %struct.GPR* %2941, i32 0, i32 5
  %2943 = getelementptr inbounds %struct.Reg, %struct.Reg* %2942, i32 0, i32 0
  %RCX.i499 = bitcast %union.anon* %2943 to i64*
  %2944 = load i64, i64* %RCX.i499
  %2945 = load i64, i64* %PC.i498
  %2946 = add i64 %2945, 3
  store i64 %2946, i64* %PC.i498
  %2947 = trunc i64 %2944 to i32
  %2948 = add i32 -1, %2947
  %2949 = zext i32 %2948 to i64
  store i64 %2949, i64* %RCX.i499, align 8
  %2950 = icmp ult i32 %2948, %2947
  %2951 = icmp ult i32 %2948, -1
  %2952 = or i1 %2950, %2951
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2953, i8* %2954, align 1
  %2955 = and i32 %2948, 255
  %2956 = call i32 @llvm.ctpop.i32(i32 %2955)
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = xor i8 %2958, 1
  %2960 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2959, i8* %2960, align 1
  %2961 = xor i64 -1, %2944
  %2962 = trunc i64 %2961 to i32
  %2963 = xor i32 %2962, %2948
  %2964 = lshr i32 %2963, 4
  %2965 = trunc i32 %2964 to i8
  %2966 = and i8 %2965, 1
  %2967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2966, i8* %2967, align 1
  %2968 = icmp eq i32 %2948, 0
  %2969 = zext i1 %2968 to i8
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2969, i8* %2970, align 1
  %2971 = lshr i32 %2948, 31
  %2972 = trunc i32 %2971 to i8
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2972, i8* %2973, align 1
  %2974 = lshr i32 %2947, 31
  %2975 = xor i32 %2971, %2974
  %2976 = xor i32 %2971, 1
  %2977 = add i32 %2975, %2976
  %2978 = icmp eq i32 %2977, 2
  %2979 = zext i1 %2978 to i8
  %2980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2979, i8* %2980, align 1
  store %struct.Memory* %loadMem_4628de, %struct.Memory** %MEMORY
  %loadMem_4628e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2982 = getelementptr inbounds %struct.GPR, %struct.GPR* %2981, i32 0, i32 33
  %2983 = getelementptr inbounds %struct.Reg, %struct.Reg* %2982, i32 0, i32 0
  %PC.i496 = bitcast %union.anon* %2983 to i64*
  %2984 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2985 = getelementptr inbounds %struct.GPR, %struct.GPR* %2984, i32 0, i32 5
  %2986 = getelementptr inbounds %struct.Reg, %struct.Reg* %2985, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2986 to i32*
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 1
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %RAX.i497 = bitcast %union.anon* %2989 to i64*
  %2990 = load i64, i64* %RAX.i497
  %2991 = add i64 %2990, 400
  %2992 = load i32, i32* %ECX.i
  %2993 = zext i32 %2992 to i64
  %2994 = load i64, i64* %PC.i496
  %2995 = add i64 %2994, 6
  store i64 %2995, i64* %PC.i496
  %2996 = inttoptr i64 %2991 to i32*
  store i32 %2992, i32* %2996
  store %struct.Memory* %loadMem_4628e1, %struct.Memory** %MEMORY
  %loadMem_4628e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2998 = getelementptr inbounds %struct.GPR, %struct.GPR* %2997, i32 0, i32 33
  %2999 = getelementptr inbounds %struct.Reg, %struct.Reg* %2998, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %2999 to i64*
  %3000 = load i64, i64* %PC.i495
  %3001 = add i64 %3000, 24
  %3002 = load i64, i64* %PC.i495
  %3003 = add i64 %3002, 5
  store i64 %3003, i64* %PC.i495
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3001, i64* %3004, align 8
  store %struct.Memory* %loadMem_4628e7, %struct.Memory** %MEMORY
  br label %block_.L_4628ff

block_.L_4628ec:                                  ; preds = %block_462856
  %loadMem_4628ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %3005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3006 = getelementptr inbounds %struct.GPR, %struct.GPR* %3005, i32 0, i32 33
  %3007 = getelementptr inbounds %struct.Reg, %struct.Reg* %3006, i32 0, i32 0
  %PC.i494 = bitcast %union.anon* %3007 to i64*
  %3008 = load i64, i64* %PC.i494
  %3009 = add i64 %3008, 5
  %3010 = load i64, i64* %PC.i494
  %3011 = add i64 %3010, 5
  store i64 %3011, i64* %PC.i494
  %3012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3009, i64* %3012, align 8
  store %struct.Memory* %loadMem_4628ec, %struct.Memory** %MEMORY
  br label %block_.L_4628f1

block_.L_4628f1:                                  ; preds = %block_.L_4628ec
  %loadMem_4628f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3014 = getelementptr inbounds %struct.GPR, %struct.GPR* %3013, i32 0, i32 33
  %3015 = getelementptr inbounds %struct.Reg, %struct.Reg* %3014, i32 0, i32 0
  %PC.i491 = bitcast %union.anon* %3015 to i64*
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 1
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %RAX.i492 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 15
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RBP.i493 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RBP.i493
  %3023 = sub i64 %3022, 76
  %3024 = load i64, i64* %PC.i491
  %3025 = add i64 %3024, 3
  store i64 %3025, i64* %PC.i491
  %3026 = inttoptr i64 %3023 to i32*
  %3027 = load i32, i32* %3026
  %3028 = zext i32 %3027 to i64
  store i64 %3028, i64* %RAX.i492, align 8
  store %struct.Memory* %loadMem_4628f1, %struct.Memory** %MEMORY
  %loadMem_4628f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3030 = getelementptr inbounds %struct.GPR, %struct.GPR* %3029, i32 0, i32 33
  %3031 = getelementptr inbounds %struct.Reg, %struct.Reg* %3030, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3031 to i64*
  %3032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3033 = getelementptr inbounds %struct.GPR, %struct.GPR* %3032, i32 0, i32 1
  %3034 = getelementptr inbounds %struct.Reg, %struct.Reg* %3033, i32 0, i32 0
  %RAX.i490 = bitcast %union.anon* %3034 to i64*
  %3035 = load i64, i64* %RAX.i490
  %3036 = load i64, i64* %PC.i489
  %3037 = add i64 %3036, 3
  store i64 %3037, i64* %PC.i489
  %3038 = trunc i64 %3035 to i32
  %3039 = add i32 1, %3038
  %3040 = zext i32 %3039 to i64
  store i64 %3040, i64* %RAX.i490, align 8
  %3041 = icmp ult i32 %3039, %3038
  %3042 = icmp ult i32 %3039, 1
  %3043 = or i1 %3041, %3042
  %3044 = zext i1 %3043 to i8
  %3045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3044, i8* %3045, align 1
  %3046 = and i32 %3039, 255
  %3047 = call i32 @llvm.ctpop.i32(i32 %3046)
  %3048 = trunc i32 %3047 to i8
  %3049 = and i8 %3048, 1
  %3050 = xor i8 %3049, 1
  %3051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3050, i8* %3051, align 1
  %3052 = xor i64 1, %3035
  %3053 = trunc i64 %3052 to i32
  %3054 = xor i32 %3053, %3039
  %3055 = lshr i32 %3054, 4
  %3056 = trunc i32 %3055 to i8
  %3057 = and i8 %3056, 1
  %3058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3057, i8* %3058, align 1
  %3059 = icmp eq i32 %3039, 0
  %3060 = zext i1 %3059 to i8
  %3061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3060, i8* %3061, align 1
  %3062 = lshr i32 %3039, 31
  %3063 = trunc i32 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3063, i8* %3064, align 1
  %3065 = lshr i32 %3038, 31
  %3066 = xor i32 %3062, %3065
  %3067 = add i32 %3066, %3062
  %3068 = icmp eq i32 %3067, 2
  %3069 = zext i1 %3068 to i8
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3069, i8* %3070, align 1
  store %struct.Memory* %loadMem_4628f4, %struct.Memory** %MEMORY
  %loadMem_4628f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3072 = getelementptr inbounds %struct.GPR, %struct.GPR* %3071, i32 0, i32 33
  %3073 = getelementptr inbounds %struct.Reg, %struct.Reg* %3072, i32 0, i32 0
  %PC.i486 = bitcast %union.anon* %3073 to i64*
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3075 = getelementptr inbounds %struct.GPR, %struct.GPR* %3074, i32 0, i32 1
  %3076 = getelementptr inbounds %struct.Reg, %struct.Reg* %3075, i32 0, i32 0
  %EAX.i487 = bitcast %union.anon* %3076 to i32*
  %3077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3078 = getelementptr inbounds %struct.GPR, %struct.GPR* %3077, i32 0, i32 15
  %3079 = getelementptr inbounds %struct.Reg, %struct.Reg* %3078, i32 0, i32 0
  %RBP.i488 = bitcast %union.anon* %3079 to i64*
  %3080 = load i64, i64* %RBP.i488
  %3081 = sub i64 %3080, 76
  %3082 = load i32, i32* %EAX.i487
  %3083 = zext i32 %3082 to i64
  %3084 = load i64, i64* %PC.i486
  %3085 = add i64 %3084, 3
  store i64 %3085, i64* %PC.i486
  %3086 = inttoptr i64 %3081 to i32*
  store i32 %3082, i32* %3086
  store %struct.Memory* %loadMem_4628f7, %struct.Memory** %MEMORY
  %loadMem_4628fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3088 = getelementptr inbounds %struct.GPR, %struct.GPR* %3087, i32 0, i32 33
  %3089 = getelementptr inbounds %struct.Reg, %struct.Reg* %3088, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3089 to i64*
  %3090 = load i64, i64* %PC.i485
  %3091 = add i64 %3090, -183
  %3092 = load i64, i64* %PC.i485
  %3093 = add i64 %3092, 5
  store i64 %3093, i64* %PC.i485
  %3094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3091, i64* %3094, align 8
  store %struct.Memory* %loadMem_4628fa, %struct.Memory** %MEMORY
  br label %block_.L_462843

block_.L_4628ff:                                  ; preds = %block_.L_4628d4, %block_.L_462843
  %loadMem_4628ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 33
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %PC.i484 = bitcast %union.anon* %3097 to i64*
  %3098 = load i64, i64* %PC.i484
  %3099 = add i64 %3098, 5
  %3100 = load i64, i64* %PC.i484
  %3101 = add i64 %3100, 5
  store i64 %3101, i64* %PC.i484
  %3102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3099, i64* %3102, align 8
  store %struct.Memory* %loadMem_4628ff, %struct.Memory** %MEMORY
  br label %block_.L_462904

block_.L_462904:                                  ; preds = %block_.L_4628ff
  %loadMem_462904 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3104 = getelementptr inbounds %struct.GPR, %struct.GPR* %3103, i32 0, i32 33
  %3105 = getelementptr inbounds %struct.Reg, %struct.Reg* %3104, i32 0, i32 0
  %PC.i483 = bitcast %union.anon* %3105 to i64*
  %3106 = load i64, i64* %PC.i483
  %3107 = add i64 %3106, 5
  %3108 = load i64, i64* %PC.i483
  %3109 = add i64 %3108, 5
  store i64 %3109, i64* %PC.i483
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3107, i64* %3110, align 8
  store %struct.Memory* %loadMem_462904, %struct.Memory** %MEMORY
  br label %block_.L_462909

block_.L_462909:                                  ; preds = %block_.L_462904, %block_.L_462822
  %loadMem_462909 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3112 = getelementptr inbounds %struct.GPR, %struct.GPR* %3111, i32 0, i32 33
  %3113 = getelementptr inbounds %struct.Reg, %struct.Reg* %3112, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3113 to i64*
  %3114 = load i64, i64* %PC.i482
  %3115 = add i64 %3114, 838
  %3116 = load i64, i64* %PC.i482
  %3117 = add i64 %3116, 5
  store i64 %3117, i64* %PC.i482
  %3118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3115, i64* %3118, align 8
  store %struct.Memory* %loadMem_462909, %struct.Memory** %MEMORY
  br label %block_.L_462c4f

block_.L_46290e:                                  ; preds = %block_4627b9, %block_4627a3, %block_.L_462789
  %loadMem_46290e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3120 = getelementptr inbounds %struct.GPR, %struct.GPR* %3119, i32 0, i32 33
  %3121 = getelementptr inbounds %struct.Reg, %struct.Reg* %3120, i32 0, i32 0
  %PC.i479 = bitcast %union.anon* %3121 to i64*
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 1
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %RAX.i480 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 15
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RBP.i481 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %RBP.i481
  %3129 = sub i64 %3128, 56
  %3130 = load i64, i64* %PC.i479
  %3131 = add i64 %3130, 3
  store i64 %3131, i64* %PC.i479
  %3132 = inttoptr i64 %3129 to i32*
  %3133 = load i32, i32* %3132
  %3134 = zext i32 %3133 to i64
  store i64 %3134, i64* %RAX.i480, align 8
  store %struct.Memory* %loadMem_46290e, %struct.Memory** %MEMORY
  %loadMem_462911 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 1
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %RAX.i477 = bitcast %union.anon* %3140 to i64*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 15
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RBP.i478 = bitcast %union.anon* %3143 to i64*
  %3144 = load i64, i64* %RAX.i477
  %3145 = load i64, i64* %RBP.i478
  %3146 = sub i64 %3145, 52
  %3147 = load i64, i64* %PC.i476
  %3148 = add i64 %3147, 3
  store i64 %3148, i64* %PC.i476
  %3149 = trunc i64 %3144 to i32
  %3150 = inttoptr i64 %3146 to i32*
  %3151 = load i32, i32* %3150
  %3152 = add i32 %3151, %3149
  %3153 = zext i32 %3152 to i64
  store i64 %3153, i64* %RAX.i477, align 8
  %3154 = icmp ult i32 %3152, %3149
  %3155 = icmp ult i32 %3152, %3151
  %3156 = or i1 %3154, %3155
  %3157 = zext i1 %3156 to i8
  %3158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3157, i8* %3158, align 1
  %3159 = and i32 %3152, 255
  %3160 = call i32 @llvm.ctpop.i32(i32 %3159)
  %3161 = trunc i32 %3160 to i8
  %3162 = and i8 %3161, 1
  %3163 = xor i8 %3162, 1
  %3164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3163, i8* %3164, align 1
  %3165 = xor i32 %3151, %3149
  %3166 = xor i32 %3165, %3152
  %3167 = lshr i32 %3166, 4
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3169, i8* %3170, align 1
  %3171 = icmp eq i32 %3152, 0
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3172, i8* %3173, align 1
  %3174 = lshr i32 %3152, 31
  %3175 = trunc i32 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3175, i8* %3176, align 1
  %3177 = lshr i32 %3149, 31
  %3178 = lshr i32 %3151, 31
  %3179 = xor i32 %3174, %3177
  %3180 = xor i32 %3174, %3178
  %3181 = add i32 %3179, %3180
  %3182 = icmp eq i32 %3181, 2
  %3183 = zext i1 %3182 to i8
  %3184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3183, i8* %3184, align 1
  store %struct.Memory* %loadMem_462911, %struct.Memory** %MEMORY
  %loadMem_462914 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3185 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3186 = getelementptr inbounds %struct.GPR, %struct.GPR* %3185, i32 0, i32 33
  %3187 = getelementptr inbounds %struct.Reg, %struct.Reg* %3186, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %3187 to i64*
  %3188 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3189 = getelementptr inbounds %struct.GPR, %struct.GPR* %3188, i32 0, i32 1
  %3190 = getelementptr inbounds %struct.Reg, %struct.Reg* %3189, i32 0, i32 0
  %EAX.i474 = bitcast %union.anon* %3190 to i32*
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 5
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %RCX.i475 = bitcast %union.anon* %3193 to i64*
  %3194 = load i32, i32* %EAX.i474
  %3195 = zext i32 %3194 to i64
  %3196 = load i64, i64* %PC.i473
  %3197 = add i64 %3196, 3
  store i64 %3197, i64* %PC.i473
  %3198 = shl i64 %3195, 32
  %3199 = ashr exact i64 %3198, 32
  store i64 %3199, i64* %RCX.i475, align 8
  store %struct.Memory* %loadMem_462914, %struct.Memory** %MEMORY
  %loadMem_462917 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3201 = getelementptr inbounds %struct.GPR, %struct.GPR* %3200, i32 0, i32 33
  %3202 = getelementptr inbounds %struct.Reg, %struct.Reg* %3201, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3202 to i64*
  %3203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3204 = getelementptr inbounds %struct.GPR, %struct.GPR* %3203, i32 0, i32 1
  %3205 = getelementptr inbounds %struct.Reg, %struct.Reg* %3204, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %3205 to i64*
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3207 = getelementptr inbounds %struct.GPR, %struct.GPR* %3206, i32 0, i32 5
  %3208 = getelementptr inbounds %struct.Reg, %struct.Reg* %3207, i32 0, i32 0
  %RCX.i472 = bitcast %union.anon* %3208 to i64*
  %3209 = load i64, i64* %RCX.i472
  %3210 = add i64 %3209, 12099168
  %3211 = load i64, i64* %PC.i470
  %3212 = add i64 %3211, 8
  store i64 %3212, i64* %PC.i470
  %3213 = inttoptr i64 %3210 to i8*
  %3214 = load i8, i8* %3213
  %3215 = zext i8 %3214 to i64
  store i64 %3215, i64* %RAX.i471, align 8
  store %struct.Memory* %loadMem_462917, %struct.Memory** %MEMORY
  %loadMem_46291f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i468 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 1
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %EAX.i469 = bitcast %union.anon* %3221 to i32*
  %3222 = load i32, i32* %EAX.i469
  %3223 = zext i32 %3222 to i64
  %3224 = load i64, i64* %PC.i468
  %3225 = add i64 %3224, 3
  store i64 %3225, i64* %PC.i468
  %3226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3226, align 1
  %3227 = and i32 %3222, 255
  %3228 = call i32 @llvm.ctpop.i32(i32 %3227)
  %3229 = trunc i32 %3228 to i8
  %3230 = and i8 %3229, 1
  %3231 = xor i8 %3230, 1
  %3232 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3231, i8* %3232, align 1
  %3233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3233, align 1
  %3234 = icmp eq i32 %3222, 0
  %3235 = zext i1 %3234 to i8
  %3236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3235, i8* %3236, align 1
  %3237 = lshr i32 %3222, 31
  %3238 = trunc i32 %3237 to i8
  %3239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3238, i8* %3239, align 1
  %3240 = lshr i32 %3222, 31
  %3241 = xor i32 %3237, %3240
  %3242 = add i32 %3241, %3240
  %3243 = icmp eq i32 %3242, 2
  %3244 = zext i1 %3243 to i8
  %3245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3244, i8* %3245, align 1
  store %struct.Memory* %loadMem_46291f, %struct.Memory** %MEMORY
  %loadMem_462922 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3247 = getelementptr inbounds %struct.GPR, %struct.GPR* %3246, i32 0, i32 33
  %3248 = getelementptr inbounds %struct.Reg, %struct.Reg* %3247, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3248 to i64*
  %3249 = load i64, i64* %PC.i467
  %3250 = add i64 %3249, 808
  %3251 = load i64, i64* %PC.i467
  %3252 = add i64 %3251, 6
  %3253 = load i64, i64* %PC.i467
  %3254 = add i64 %3253, 6
  store i64 %3254, i64* %PC.i467
  %3255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3256 = load i8, i8* %3255, align 1
  %3257 = icmp eq i8 %3256, 0
  %3258 = zext i1 %3257 to i8
  store i8 %3258, i8* %BRANCH_TAKEN, align 1
  %3259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3260 = select i1 %3257, i64 %3250, i64 %3252
  store i64 %3260, i64* %3259, align 8
  store %struct.Memory* %loadMem_462922, %struct.Memory** %MEMORY
  %loadBr_462922 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462922 = icmp eq i8 %loadBr_462922, 1
  br i1 %cmpBr_462922, label %block_.L_462c4a, label %block_462928

block_462928:                                     ; preds = %block_.L_46290e
  %loadMem_462928 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3262 = getelementptr inbounds %struct.GPR, %struct.GPR* %3261, i32 0, i32 33
  %3263 = getelementptr inbounds %struct.Reg, %struct.Reg* %3262, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %3263 to i64*
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3265 = getelementptr inbounds %struct.GPR, %struct.GPR* %3264, i32 0, i32 1
  %3266 = getelementptr inbounds %struct.Reg, %struct.Reg* %3265, i32 0, i32 0
  %RAX.i465 = bitcast %union.anon* %3266 to i64*
  %3267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3268 = getelementptr inbounds %struct.GPR, %struct.GPR* %3267, i32 0, i32 15
  %3269 = getelementptr inbounds %struct.Reg, %struct.Reg* %3268, i32 0, i32 0
  %RBP.i466 = bitcast %union.anon* %3269 to i64*
  %3270 = load i64, i64* %RBP.i466
  %3271 = sub i64 %3270, 56
  %3272 = load i64, i64* %PC.i464
  %3273 = add i64 %3272, 3
  store i64 %3273, i64* %PC.i464
  %3274 = inttoptr i64 %3271 to i32*
  %3275 = load i32, i32* %3274
  %3276 = zext i32 %3275 to i64
  store i64 %3276, i64* %RAX.i465, align 8
  store %struct.Memory* %loadMem_462928, %struct.Memory** %MEMORY
  %loadMem_46292b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3278 = getelementptr inbounds %struct.GPR, %struct.GPR* %3277, i32 0, i32 33
  %3279 = getelementptr inbounds %struct.Reg, %struct.Reg* %3278, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %3279 to i64*
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3281 = getelementptr inbounds %struct.GPR, %struct.GPR* %3280, i32 0, i32 1
  %3282 = getelementptr inbounds %struct.Reg, %struct.Reg* %3281, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %3282 to i64*
  %3283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3284 = getelementptr inbounds %struct.GPR, %struct.GPR* %3283, i32 0, i32 15
  %3285 = getelementptr inbounds %struct.Reg, %struct.Reg* %3284, i32 0, i32 0
  %RBP.i463 = bitcast %union.anon* %3285 to i64*
  %3286 = load i64, i64* %RAX.i462
  %3287 = load i64, i64* %RBP.i463
  %3288 = sub i64 %3287, 48
  %3289 = load i64, i64* %PC.i461
  %3290 = add i64 %3289, 3
  store i64 %3290, i64* %PC.i461
  %3291 = trunc i64 %3286 to i32
  %3292 = inttoptr i64 %3288 to i32*
  %3293 = load i32, i32* %3292
  %3294 = sub i32 %3291, %3293
  %3295 = zext i32 %3294 to i64
  store i64 %3295, i64* %RAX.i462, align 8
  %3296 = icmp ult i32 %3291, %3293
  %3297 = zext i1 %3296 to i8
  %3298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3297, i8* %3298, align 1
  %3299 = and i32 %3294, 255
  %3300 = call i32 @llvm.ctpop.i32(i32 %3299)
  %3301 = trunc i32 %3300 to i8
  %3302 = and i8 %3301, 1
  %3303 = xor i8 %3302, 1
  %3304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3303, i8* %3304, align 1
  %3305 = xor i32 %3293, %3291
  %3306 = xor i32 %3305, %3294
  %3307 = lshr i32 %3306, 4
  %3308 = trunc i32 %3307 to i8
  %3309 = and i8 %3308, 1
  %3310 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3309, i8* %3310, align 1
  %3311 = icmp eq i32 %3294, 0
  %3312 = zext i1 %3311 to i8
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3312, i8* %3313, align 1
  %3314 = lshr i32 %3294, 31
  %3315 = trunc i32 %3314 to i8
  %3316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3315, i8* %3316, align 1
  %3317 = lshr i32 %3291, 31
  %3318 = lshr i32 %3293, 31
  %3319 = xor i32 %3318, %3317
  %3320 = xor i32 %3314, %3317
  %3321 = add i32 %3320, %3319
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3323, i8* %3324, align 1
  store %struct.Memory* %loadMem_46292b, %struct.Memory** %MEMORY
  %loadMem_46292e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %3327 to i64*
  %3328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3329 = getelementptr inbounds %struct.GPR, %struct.GPR* %3328, i32 0, i32 1
  %3330 = getelementptr inbounds %struct.Reg, %struct.Reg* %3329, i32 0, i32 0
  %RAX.i459 = bitcast %union.anon* %3330 to i64*
  %3331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3332 = getelementptr inbounds %struct.GPR, %struct.GPR* %3331, i32 0, i32 15
  %3333 = getelementptr inbounds %struct.Reg, %struct.Reg* %3332, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %3333 to i64*
  %3334 = load i64, i64* %RAX.i459
  %3335 = load i64, i64* %RBP.i460
  %3336 = sub i64 %3335, 52
  %3337 = load i64, i64* %PC.i458
  %3338 = add i64 %3337, 3
  store i64 %3338, i64* %PC.i458
  %3339 = trunc i64 %3334 to i32
  %3340 = inttoptr i64 %3336 to i32*
  %3341 = load i32, i32* %3340
  %3342 = add i32 %3341, %3339
  %3343 = zext i32 %3342 to i64
  store i64 %3343, i64* %RAX.i459, align 8
  %3344 = icmp ult i32 %3342, %3339
  %3345 = icmp ult i32 %3342, %3341
  %3346 = or i1 %3344, %3345
  %3347 = zext i1 %3346 to i8
  %3348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3347, i8* %3348, align 1
  %3349 = and i32 %3342, 255
  %3350 = call i32 @llvm.ctpop.i32(i32 %3349)
  %3351 = trunc i32 %3350 to i8
  %3352 = and i8 %3351, 1
  %3353 = xor i8 %3352, 1
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3353, i8* %3354, align 1
  %3355 = xor i32 %3341, %3339
  %3356 = xor i32 %3355, %3342
  %3357 = lshr i32 %3356, 4
  %3358 = trunc i32 %3357 to i8
  %3359 = and i8 %3358, 1
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3359, i8* %3360, align 1
  %3361 = icmp eq i32 %3342, 0
  %3362 = zext i1 %3361 to i8
  %3363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3362, i8* %3363, align 1
  %3364 = lshr i32 %3342, 31
  %3365 = trunc i32 %3364 to i8
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3365, i8* %3366, align 1
  %3367 = lshr i32 %3339, 31
  %3368 = lshr i32 %3341, 31
  %3369 = xor i32 %3364, %3367
  %3370 = xor i32 %3364, %3368
  %3371 = add i32 %3369, %3370
  %3372 = icmp eq i32 %3371, 2
  %3373 = zext i1 %3372 to i8
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3373, i8* %3374, align 1
  store %struct.Memory* %loadMem_46292e, %struct.Memory** %MEMORY
  %loadMem_462931 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3376 = getelementptr inbounds %struct.GPR, %struct.GPR* %3375, i32 0, i32 33
  %3377 = getelementptr inbounds %struct.Reg, %struct.Reg* %3376, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3377 to i64*
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3379 = getelementptr inbounds %struct.GPR, %struct.GPR* %3378, i32 0, i32 1
  %3380 = getelementptr inbounds %struct.Reg, %struct.Reg* %3379, i32 0, i32 0
  %EAX.i456 = bitcast %union.anon* %3380 to i32*
  %3381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3382 = getelementptr inbounds %struct.GPR, %struct.GPR* %3381, i32 0, i32 5
  %3383 = getelementptr inbounds %struct.Reg, %struct.Reg* %3382, i32 0, i32 0
  %RCX.i457 = bitcast %union.anon* %3383 to i64*
  %3384 = load i32, i32* %EAX.i456
  %3385 = zext i32 %3384 to i64
  %3386 = load i64, i64* %PC.i455
  %3387 = add i64 %3386, 3
  store i64 %3387, i64* %PC.i455
  %3388 = shl i64 %3385, 32
  %3389 = ashr exact i64 %3388, 32
  store i64 %3389, i64* %RCX.i457, align 8
  store %struct.Memory* %loadMem_462931, %struct.Memory** %MEMORY
  %loadMem_462934 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 33
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 1
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 5
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RCX.i454 = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %RCX.i454
  %3400 = add i64 %3399, 12099168
  %3401 = load i64, i64* %PC.i452
  %3402 = add i64 %3401, 8
  store i64 %3402, i64* %PC.i452
  %3403 = inttoptr i64 %3400 to i8*
  %3404 = load i8, i8* %3403
  %3405 = zext i8 %3404 to i64
  store i64 %3405, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_462934, %struct.Memory** %MEMORY
  %loadMem_46293c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3407 = getelementptr inbounds %struct.GPR, %struct.GPR* %3406, i32 0, i32 33
  %3408 = getelementptr inbounds %struct.Reg, %struct.Reg* %3407, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %3408 to i64*
  %3409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3410 = getelementptr inbounds %struct.GPR, %struct.GPR* %3409, i32 0, i32 1
  %3411 = getelementptr inbounds %struct.Reg, %struct.Reg* %3410, i32 0, i32 0
  %EAX.i450 = bitcast %union.anon* %3411 to i32*
  %3412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3413 = getelementptr inbounds %struct.GPR, %struct.GPR* %3412, i32 0, i32 15
  %3414 = getelementptr inbounds %struct.Reg, %struct.Reg* %3413, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %3414 to i64*
  %3415 = load i32, i32* %EAX.i450
  %3416 = zext i32 %3415 to i64
  %3417 = load i64, i64* %RBP.i451
  %3418 = sub i64 %3417, 44
  %3419 = load i64, i64* %PC.i449
  %3420 = add i64 %3419, 3
  store i64 %3420, i64* %PC.i449
  %3421 = inttoptr i64 %3418 to i32*
  %3422 = load i32, i32* %3421
  %3423 = sub i32 %3415, %3422
  %3424 = icmp ult i32 %3415, %3422
  %3425 = zext i1 %3424 to i8
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3425, i8* %3426, align 1
  %3427 = and i32 %3423, 255
  %3428 = call i32 @llvm.ctpop.i32(i32 %3427)
  %3429 = trunc i32 %3428 to i8
  %3430 = and i8 %3429, 1
  %3431 = xor i8 %3430, 1
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3431, i8* %3432, align 1
  %3433 = xor i32 %3422, %3415
  %3434 = xor i32 %3433, %3423
  %3435 = lshr i32 %3434, 4
  %3436 = trunc i32 %3435 to i8
  %3437 = and i8 %3436, 1
  %3438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3437, i8* %3438, align 1
  %3439 = icmp eq i32 %3423, 0
  %3440 = zext i1 %3439 to i8
  %3441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3440, i8* %3441, align 1
  %3442 = lshr i32 %3423, 31
  %3443 = trunc i32 %3442 to i8
  %3444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3443, i8* %3444, align 1
  %3445 = lshr i32 %3415, 31
  %3446 = lshr i32 %3422, 31
  %3447 = xor i32 %3446, %3445
  %3448 = xor i32 %3442, %3445
  %3449 = add i32 %3448, %3447
  %3450 = icmp eq i32 %3449, 2
  %3451 = zext i1 %3450 to i8
  %3452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3451, i8* %3452, align 1
  store %struct.Memory* %loadMem_46293c, %struct.Memory** %MEMORY
  %loadMem_46293f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3454 = getelementptr inbounds %struct.GPR, %struct.GPR* %3453, i32 0, i32 33
  %3455 = getelementptr inbounds %struct.Reg, %struct.Reg* %3454, i32 0, i32 0
  %PC.i448 = bitcast %union.anon* %3455 to i64*
  %3456 = load i64, i64* %PC.i448
  %3457 = add i64 %3456, 779
  %3458 = load i64, i64* %PC.i448
  %3459 = add i64 %3458, 6
  %3460 = load i64, i64* %PC.i448
  %3461 = add i64 %3460, 6
  store i64 %3461, i64* %PC.i448
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3463 = load i8, i8* %3462, align 1
  %3464 = icmp eq i8 %3463, 0
  %3465 = zext i1 %3464 to i8
  store i8 %3465, i8* %BRANCH_TAKEN, align 1
  %3466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3467 = select i1 %3464, i64 %3457, i64 %3459
  store i64 %3467, i64* %3466, align 8
  store %struct.Memory* %loadMem_46293f, %struct.Memory** %MEMORY
  %loadBr_46293f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_46293f = icmp eq i8 %loadBr_46293f, 1
  br i1 %cmpBr_46293f, label %block_.L_462c4a, label %block_462945

block_462945:                                     ; preds = %block_462928
  %loadMem_462945 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 33
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %3470 to i64*
  %3471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3472 = getelementptr inbounds %struct.GPR, %struct.GPR* %3471, i32 0, i32 1
  %3473 = getelementptr inbounds %struct.Reg, %struct.Reg* %3472, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %3473 to i64*
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3475 = getelementptr inbounds %struct.GPR, %struct.GPR* %3474, i32 0, i32 15
  %3476 = getelementptr inbounds %struct.Reg, %struct.Reg* %3475, i32 0, i32 0
  %RBP.i447 = bitcast %union.anon* %3476 to i64*
  %3477 = load i64, i64* %RBP.i447
  %3478 = sub i64 %3477, 56
  %3479 = load i64, i64* %PC.i445
  %3480 = add i64 %3479, 3
  store i64 %3480, i64* %PC.i445
  %3481 = inttoptr i64 %3478 to i32*
  %3482 = load i32, i32* %3481
  %3483 = zext i32 %3482 to i64
  store i64 %3483, i64* %RAX.i446, align 8
  store %struct.Memory* %loadMem_462945, %struct.Memory** %MEMORY
  %loadMem_462948 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 33
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3486 to i64*
  %3487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3488 = getelementptr inbounds %struct.GPR, %struct.GPR* %3487, i32 0, i32 1
  %3489 = getelementptr inbounds %struct.Reg, %struct.Reg* %3488, i32 0, i32 0
  %RAX.i443 = bitcast %union.anon* %3489 to i64*
  %3490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3491 = getelementptr inbounds %struct.GPR, %struct.GPR* %3490, i32 0, i32 15
  %3492 = getelementptr inbounds %struct.Reg, %struct.Reg* %3491, i32 0, i32 0
  %RBP.i444 = bitcast %union.anon* %3492 to i64*
  %3493 = load i64, i64* %RAX.i443
  %3494 = load i64, i64* %RBP.i444
  %3495 = sub i64 %3494, 48
  %3496 = load i64, i64* %PC.i442
  %3497 = add i64 %3496, 3
  store i64 %3497, i64* %PC.i442
  %3498 = trunc i64 %3493 to i32
  %3499 = inttoptr i64 %3495 to i32*
  %3500 = load i32, i32* %3499
  %3501 = add i32 %3500, %3498
  %3502 = zext i32 %3501 to i64
  store i64 %3502, i64* %RAX.i443, align 8
  %3503 = icmp ult i32 %3501, %3498
  %3504 = icmp ult i32 %3501, %3500
  %3505 = or i1 %3503, %3504
  %3506 = zext i1 %3505 to i8
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3506, i8* %3507, align 1
  %3508 = and i32 %3501, 255
  %3509 = call i32 @llvm.ctpop.i32(i32 %3508)
  %3510 = trunc i32 %3509 to i8
  %3511 = and i8 %3510, 1
  %3512 = xor i8 %3511, 1
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3512, i8* %3513, align 1
  %3514 = xor i32 %3500, %3498
  %3515 = xor i32 %3514, %3501
  %3516 = lshr i32 %3515, 4
  %3517 = trunc i32 %3516 to i8
  %3518 = and i8 %3517, 1
  %3519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3518, i8* %3519, align 1
  %3520 = icmp eq i32 %3501, 0
  %3521 = zext i1 %3520 to i8
  %3522 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3521, i8* %3522, align 1
  %3523 = lshr i32 %3501, 31
  %3524 = trunc i32 %3523 to i8
  %3525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3524, i8* %3525, align 1
  %3526 = lshr i32 %3498, 31
  %3527 = lshr i32 %3500, 31
  %3528 = xor i32 %3523, %3526
  %3529 = xor i32 %3523, %3527
  %3530 = add i32 %3528, %3529
  %3531 = icmp eq i32 %3530, 2
  %3532 = zext i1 %3531 to i8
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3532, i8* %3533, align 1
  store %struct.Memory* %loadMem_462948, %struct.Memory** %MEMORY
  %loadMem_46294b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 33
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3536 to i64*
  %3537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3538 = getelementptr inbounds %struct.GPR, %struct.GPR* %3537, i32 0, i32 1
  %3539 = getelementptr inbounds %struct.Reg, %struct.Reg* %3538, i32 0, i32 0
  %EAX.i440 = bitcast %union.anon* %3539 to i32*
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3541 = getelementptr inbounds %struct.GPR, %struct.GPR* %3540, i32 0, i32 5
  %3542 = getelementptr inbounds %struct.Reg, %struct.Reg* %3541, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %3542 to i64*
  %3543 = load i32, i32* %EAX.i440
  %3544 = zext i32 %3543 to i64
  %3545 = load i64, i64* %PC.i439
  %3546 = add i64 %3545, 3
  store i64 %3546, i64* %PC.i439
  %3547 = shl i64 %3544, 32
  %3548 = ashr exact i64 %3547, 32
  store i64 %3548, i64* %RCX.i441, align 8
  store %struct.Memory* %loadMem_46294b, %struct.Memory** %MEMORY
  %loadMem_46294e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3550 = getelementptr inbounds %struct.GPR, %struct.GPR* %3549, i32 0, i32 33
  %3551 = getelementptr inbounds %struct.Reg, %struct.Reg* %3550, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %3551 to i64*
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3553 = getelementptr inbounds %struct.GPR, %struct.GPR* %3552, i32 0, i32 1
  %3554 = getelementptr inbounds %struct.Reg, %struct.Reg* %3553, i32 0, i32 0
  %RAX.i437 = bitcast %union.anon* %3554 to i64*
  %3555 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3556 = getelementptr inbounds %struct.GPR, %struct.GPR* %3555, i32 0, i32 5
  %3557 = getelementptr inbounds %struct.Reg, %struct.Reg* %3556, i32 0, i32 0
  %RCX.i438 = bitcast %union.anon* %3557 to i64*
  %3558 = load i64, i64* %RCX.i438
  %3559 = add i64 %3558, 12099168
  %3560 = load i64, i64* %PC.i436
  %3561 = add i64 %3560, 8
  store i64 %3561, i64* %PC.i436
  %3562 = inttoptr i64 %3559 to i8*
  %3563 = load i8, i8* %3562
  %3564 = zext i8 %3563 to i64
  store i64 %3564, i64* %RAX.i437, align 8
  store %struct.Memory* %loadMem_46294e, %struct.Memory** %MEMORY
  %loadMem_462956 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 1
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %EAX.i435 = bitcast %union.anon* %3570 to i32*
  %3571 = load i32, i32* %EAX.i435
  %3572 = zext i32 %3571 to i64
  %3573 = load i64, i64* %PC.i434
  %3574 = add i64 %3573, 3
  store i64 %3574, i64* %PC.i434
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %3575, align 1
  %3576 = and i32 %3571, 255
  %3577 = call i32 @llvm.ctpop.i32(i32 %3576)
  %3578 = trunc i32 %3577 to i8
  %3579 = and i8 %3578, 1
  %3580 = xor i8 %3579, 1
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3580, i8* %3581, align 1
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %3582, align 1
  %3583 = icmp eq i32 %3571, 0
  %3584 = zext i1 %3583 to i8
  %3585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3584, i8* %3585, align 1
  %3586 = lshr i32 %3571, 31
  %3587 = trunc i32 %3586 to i8
  %3588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3587, i8* %3588, align 1
  %3589 = lshr i32 %3571, 31
  %3590 = xor i32 %3586, %3589
  %3591 = add i32 %3590, %3589
  %3592 = icmp eq i32 %3591, 2
  %3593 = zext i1 %3592 to i8
  %3594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3593, i8* %3594, align 1
  store %struct.Memory* %loadMem_462956, %struct.Memory** %MEMORY
  %loadMem_462959 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3596 = getelementptr inbounds %struct.GPR, %struct.GPR* %3595, i32 0, i32 33
  %3597 = getelementptr inbounds %struct.Reg, %struct.Reg* %3596, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %3597 to i64*
  %3598 = load i64, i64* %PC.i433
  %3599 = add i64 %3598, 753
  %3600 = load i64, i64* %PC.i433
  %3601 = add i64 %3600, 6
  %3602 = load i64, i64* %PC.i433
  %3603 = add i64 %3602, 6
  store i64 %3603, i64* %PC.i433
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3605 = load i8, i8* %3604, align 1
  %3606 = icmp eq i8 %3605, 0
  %3607 = zext i1 %3606 to i8
  store i8 %3607, i8* %BRANCH_TAKEN, align 1
  %3608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3609 = select i1 %3606, i64 %3599, i64 %3601
  store i64 %3609, i64* %3608, align 8
  store %struct.Memory* %loadMem_462959, %struct.Memory** %MEMORY
  %loadBr_462959 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462959 = icmp eq i8 %loadBr_462959, 1
  br i1 %cmpBr_462959, label %block_.L_462c4a, label %block_46295f

block_46295f:                                     ; preds = %block_462945
  %loadMem_46295f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3611 = getelementptr inbounds %struct.GPR, %struct.GPR* %3610, i32 0, i32 33
  %3612 = getelementptr inbounds %struct.Reg, %struct.Reg* %3611, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %3612 to i64*
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3614 = getelementptr inbounds %struct.GPR, %struct.GPR* %3613, i32 0, i32 1
  %3615 = getelementptr inbounds %struct.Reg, %struct.Reg* %3614, i32 0, i32 0
  %RAX.i431 = bitcast %union.anon* %3615 to i64*
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3617 = getelementptr inbounds %struct.GPR, %struct.GPR* %3616, i32 0, i32 15
  %3618 = getelementptr inbounds %struct.Reg, %struct.Reg* %3617, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %3618 to i64*
  %3619 = load i64, i64* %RBP.i432
  %3620 = sub i64 %3619, 56
  %3621 = load i64, i64* %PC.i430
  %3622 = add i64 %3621, 3
  store i64 %3622, i64* %PC.i430
  %3623 = inttoptr i64 %3620 to i32*
  %3624 = load i32, i32* %3623
  %3625 = zext i32 %3624 to i64
  store i64 %3625, i64* %RAX.i431, align 8
  store %struct.Memory* %loadMem_46295f, %struct.Memory** %MEMORY
  %loadMem_462962 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 33
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %3628 to i64*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 1
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %3631 to i64*
  %3632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3633 = getelementptr inbounds %struct.GPR, %struct.GPR* %3632, i32 0, i32 15
  %3634 = getelementptr inbounds %struct.Reg, %struct.Reg* %3633, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %3634 to i64*
  %3635 = load i64, i64* %RAX.i428
  %3636 = load i64, i64* %RBP.i429
  %3637 = sub i64 %3636, 52
  %3638 = load i64, i64* %PC.i427
  %3639 = add i64 %3638, 3
  store i64 %3639, i64* %PC.i427
  %3640 = trunc i64 %3635 to i32
  %3641 = inttoptr i64 %3637 to i32*
  %3642 = load i32, i32* %3641
  %3643 = add i32 %3642, %3640
  %3644 = zext i32 %3643 to i64
  store i64 %3644, i64* %RAX.i428, align 8
  %3645 = icmp ult i32 %3643, %3640
  %3646 = icmp ult i32 %3643, %3642
  %3647 = or i1 %3645, %3646
  %3648 = zext i1 %3647 to i8
  %3649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3648, i8* %3649, align 1
  %3650 = and i32 %3643, 255
  %3651 = call i32 @llvm.ctpop.i32(i32 %3650)
  %3652 = trunc i32 %3651 to i8
  %3653 = and i8 %3652, 1
  %3654 = xor i8 %3653, 1
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3654, i8* %3655, align 1
  %3656 = xor i32 %3642, %3640
  %3657 = xor i32 %3656, %3643
  %3658 = lshr i32 %3657, 4
  %3659 = trunc i32 %3658 to i8
  %3660 = and i8 %3659, 1
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3660, i8* %3661, align 1
  %3662 = icmp eq i32 %3643, 0
  %3663 = zext i1 %3662 to i8
  %3664 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3663, i8* %3664, align 1
  %3665 = lshr i32 %3643, 31
  %3666 = trunc i32 %3665 to i8
  %3667 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3666, i8* %3667, align 1
  %3668 = lshr i32 %3640, 31
  %3669 = lshr i32 %3642, 31
  %3670 = xor i32 %3665, %3668
  %3671 = xor i32 %3665, %3669
  %3672 = add i32 %3670, %3671
  %3673 = icmp eq i32 %3672, 2
  %3674 = zext i1 %3673 to i8
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3674, i8* %3675, align 1
  store %struct.Memory* %loadMem_462962, %struct.Memory** %MEMORY
  %loadMem_462965 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3677 = getelementptr inbounds %struct.GPR, %struct.GPR* %3676, i32 0, i32 33
  %3678 = getelementptr inbounds %struct.Reg, %struct.Reg* %3677, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %3678 to i64*
  %3679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3680 = getelementptr inbounds %struct.GPR, %struct.GPR* %3679, i32 0, i32 1
  %3681 = getelementptr inbounds %struct.Reg, %struct.Reg* %3680, i32 0, i32 0
  %RAX.i425 = bitcast %union.anon* %3681 to i64*
  %3682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3683 = getelementptr inbounds %struct.GPR, %struct.GPR* %3682, i32 0, i32 15
  %3684 = getelementptr inbounds %struct.Reg, %struct.Reg* %3683, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %3684 to i64*
  %3685 = load i64, i64* %RAX.i425
  %3686 = load i64, i64* %RBP.i426
  %3687 = sub i64 %3686, 48
  %3688 = load i64, i64* %PC.i424
  %3689 = add i64 %3688, 3
  store i64 %3689, i64* %PC.i424
  %3690 = trunc i64 %3685 to i32
  %3691 = inttoptr i64 %3687 to i32*
  %3692 = load i32, i32* %3691
  %3693 = sub i32 %3690, %3692
  %3694 = zext i32 %3693 to i64
  store i64 %3694, i64* %RAX.i425, align 8
  %3695 = icmp ult i32 %3690, %3692
  %3696 = zext i1 %3695 to i8
  %3697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3696, i8* %3697, align 1
  %3698 = and i32 %3693, 255
  %3699 = call i32 @llvm.ctpop.i32(i32 %3698)
  %3700 = trunc i32 %3699 to i8
  %3701 = and i8 %3700, 1
  %3702 = xor i8 %3701, 1
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3702, i8* %3703, align 1
  %3704 = xor i32 %3692, %3690
  %3705 = xor i32 %3704, %3693
  %3706 = lshr i32 %3705, 4
  %3707 = trunc i32 %3706 to i8
  %3708 = and i8 %3707, 1
  %3709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3708, i8* %3709, align 1
  %3710 = icmp eq i32 %3693, 0
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3711, i8* %3712, align 1
  %3713 = lshr i32 %3693, 31
  %3714 = trunc i32 %3713 to i8
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3714, i8* %3715, align 1
  %3716 = lshr i32 %3690, 31
  %3717 = lshr i32 %3692, 31
  %3718 = xor i32 %3717, %3716
  %3719 = xor i32 %3713, %3716
  %3720 = add i32 %3719, %3718
  %3721 = icmp eq i32 %3720, 2
  %3722 = zext i1 %3721 to i8
  %3723 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3722, i8* %3723, align 1
  store %struct.Memory* %loadMem_462965, %struct.Memory** %MEMORY
  %loadMem_462968 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3725 = getelementptr inbounds %struct.GPR, %struct.GPR* %3724, i32 0, i32 33
  %3726 = getelementptr inbounds %struct.Reg, %struct.Reg* %3725, i32 0, i32 0
  %PC.i422 = bitcast %union.anon* %3726 to i64*
  %3727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3728 = getelementptr inbounds %struct.GPR, %struct.GPR* %3727, i32 0, i32 1
  %3729 = getelementptr inbounds %struct.Reg, %struct.Reg* %3728, i32 0, i32 0
  %EAX.i423 = bitcast %union.anon* %3729 to i32*
  %3730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3731 = getelementptr inbounds %struct.GPR, %struct.GPR* %3730, i32 0, i32 11
  %3732 = getelementptr inbounds %struct.Reg, %struct.Reg* %3731, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %3732 to i64*
  %3733 = load i32, i32* %EAX.i423
  %3734 = zext i32 %3733 to i64
  %3735 = load i64, i64* %PC.i422
  %3736 = add i64 %3735, 2
  store i64 %3736, i64* %PC.i422
  %3737 = and i64 %3734, 4294967295
  store i64 %3737, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_462968, %struct.Memory** %MEMORY
  %loadMem1_46296a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3739 = getelementptr inbounds %struct.GPR, %struct.GPR* %3738, i32 0, i32 33
  %3740 = getelementptr inbounds %struct.Reg, %struct.Reg* %3739, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %3740 to i64*
  %3741 = load i64, i64* %PC.i421
  %3742 = add i64 %3741, -340458
  %3743 = load i64, i64* %PC.i421
  %3744 = add i64 %3743, 5
  %3745 = load i64, i64* %PC.i421
  %3746 = add i64 %3745, 5
  store i64 %3746, i64* %PC.i421
  %3747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3748 = load i64, i64* %3747, align 8
  %3749 = add i64 %3748, -8
  %3750 = inttoptr i64 %3749 to i64*
  store i64 %3744, i64* %3750
  store i64 %3749, i64* %3747, align 8
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3742, i64* %3751, align 8
  store %struct.Memory* %loadMem1_46296a, %struct.Memory** %MEMORY
  %loadMem2_46296a = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_46296a = load i64, i64* %3
  %call2_46296a = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_46296a, %struct.Memory* %loadMem2_46296a)
  store %struct.Memory* %call2_46296a, %struct.Memory** %MEMORY
  %loadMem_46296f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3753 = getelementptr inbounds %struct.GPR, %struct.GPR* %3752, i32 0, i32 33
  %3754 = getelementptr inbounds %struct.Reg, %struct.Reg* %3753, i32 0, i32 0
  %PC.i419 = bitcast %union.anon* %3754 to i64*
  %3755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3756 = getelementptr inbounds %struct.GPR, %struct.GPR* %3755, i32 0, i32 1
  %3757 = getelementptr inbounds %struct.Reg, %struct.Reg* %3756, i32 0, i32 0
  %EAX.i420 = bitcast %union.anon* %3757 to i32*
  %3758 = load i32, i32* %EAX.i420
  %3759 = zext i32 %3758 to i64
  %3760 = load i64, i64* %PC.i419
  %3761 = add i64 %3760, 3
  store i64 %3761, i64* %PC.i419
  %3762 = sub i32 %3758, 1
  %3763 = icmp ult i32 %3758, 1
  %3764 = zext i1 %3763 to i8
  %3765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3764, i8* %3765, align 1
  %3766 = and i32 %3762, 255
  %3767 = call i32 @llvm.ctpop.i32(i32 %3766)
  %3768 = trunc i32 %3767 to i8
  %3769 = and i8 %3768, 1
  %3770 = xor i8 %3769, 1
  %3771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3770, i8* %3771, align 1
  %3772 = xor i64 1, %3759
  %3773 = trunc i64 %3772 to i32
  %3774 = xor i32 %3773, %3762
  %3775 = lshr i32 %3774, 4
  %3776 = trunc i32 %3775 to i8
  %3777 = and i8 %3776, 1
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3777, i8* %3778, align 1
  %3779 = icmp eq i32 %3762, 0
  %3780 = zext i1 %3779 to i8
  %3781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3780, i8* %3781, align 1
  %3782 = lshr i32 %3762, 31
  %3783 = trunc i32 %3782 to i8
  %3784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3783, i8* %3784, align 1
  %3785 = lshr i32 %3758, 31
  %3786 = xor i32 %3782, %3785
  %3787 = add i32 %3786, %3785
  %3788 = icmp eq i32 %3787, 2
  %3789 = zext i1 %3788 to i8
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3789, i8* %3790, align 1
  store %struct.Memory* %loadMem_46296f, %struct.Memory** %MEMORY
  %loadMem_462972 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3792 = getelementptr inbounds %struct.GPR, %struct.GPR* %3791, i32 0, i32 33
  %3793 = getelementptr inbounds %struct.Reg, %struct.Reg* %3792, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %3793 to i64*
  %3794 = load i64, i64* %PC.i418
  %3795 = add i64 %3794, 226
  %3796 = load i64, i64* %PC.i418
  %3797 = add i64 %3796, 6
  %3798 = load i64, i64* %PC.i418
  %3799 = add i64 %3798, 6
  store i64 %3799, i64* %PC.i418
  %3800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3801 = load i8, i8* %3800, align 1
  %3802 = icmp eq i8 %3801, 0
  %3803 = zext i1 %3802 to i8
  store i8 %3803, i8* %BRANCH_TAKEN, align 1
  %3804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3805 = select i1 %3802, i64 %3795, i64 %3797
  store i64 %3805, i64* %3804, align 8
  store %struct.Memory* %loadMem_462972, %struct.Memory** %MEMORY
  %loadBr_462972 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462972 = icmp eq i8 %loadBr_462972, 1
  br i1 %cmpBr_462972, label %block_.L_462a54, label %block_462978

block_462978:                                     ; preds = %block_46295f
  %loadMem_462978 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 33
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %3808 to i64*
  %3809 = load i64, i64* %PC.i417
  %3810 = add i64 %3809, 5
  %3811 = load i64, i64* %PC.i417
  %3812 = add i64 %3811, 5
  store i64 %3812, i64* %PC.i417
  %3813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3810, i64* %3813, align 8
  store %struct.Memory* %loadMem_462978, %struct.Memory** %MEMORY
  br label %block_.L_46297d

block_.L_46297d:                                  ; preds = %block_462978
  %loadMem_46297d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3815 = getelementptr inbounds %struct.GPR, %struct.GPR* %3814, i32 0, i32 33
  %3816 = getelementptr inbounds %struct.Reg, %struct.Reg* %3815, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %3816 to i64*
  %3817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3818 = getelementptr inbounds %struct.GPR, %struct.GPR* %3817, i32 0, i32 15
  %3819 = getelementptr inbounds %struct.Reg, %struct.Reg* %3818, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %3819 to i64*
  %3820 = load i64, i64* %RBP.i416
  %3821 = sub i64 %3820, 84
  %3822 = load i64, i64* %PC.i415
  %3823 = add i64 %3822, 7
  store i64 %3823, i64* %PC.i415
  %3824 = inttoptr i64 %3821 to i32*
  store i32 0, i32* %3824
  store %struct.Memory* %loadMem_46297d, %struct.Memory** %MEMORY
  br label %block_.L_462984

block_.L_462984:                                  ; preds = %block_.L_4629d3, %block_.L_46297d
  %loadMem_462984 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3826 = getelementptr inbounds %struct.GPR, %struct.GPR* %3825, i32 0, i32 33
  %3827 = getelementptr inbounds %struct.Reg, %struct.Reg* %3826, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %3827 to i64*
  %3828 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3829 = getelementptr inbounds %struct.GPR, %struct.GPR* %3828, i32 0, i32 1
  %3830 = getelementptr inbounds %struct.Reg, %struct.Reg* %3829, i32 0, i32 0
  %RAX.i413 = bitcast %union.anon* %3830 to i64*
  %3831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3832 = getelementptr inbounds %struct.GPR, %struct.GPR* %3831, i32 0, i32 15
  %3833 = getelementptr inbounds %struct.Reg, %struct.Reg* %3832, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %3833 to i64*
  %3834 = load i64, i64* %RBP.i414
  %3835 = sub i64 %3834, 84
  %3836 = load i64, i64* %PC.i412
  %3837 = add i64 %3836, 3
  store i64 %3837, i64* %PC.i412
  %3838 = inttoptr i64 %3835 to i32*
  %3839 = load i32, i32* %3838
  %3840 = zext i32 %3839 to i64
  store i64 %3840, i64* %RAX.i413, align 8
  store %struct.Memory* %loadMem_462984, %struct.Memory** %MEMORY
  %loadMem_462987 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 33
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %3843 to i64*
  %3844 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3845 = getelementptr inbounds %struct.GPR, %struct.GPR* %3844, i32 0, i32 5
  %3846 = getelementptr inbounds %struct.Reg, %struct.Reg* %3845, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %3846 to i64*
  %3847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3848 = getelementptr inbounds %struct.GPR, %struct.GPR* %3847, i32 0, i32 15
  %3849 = getelementptr inbounds %struct.Reg, %struct.Reg* %3848, i32 0, i32 0
  %RBP.i411 = bitcast %union.anon* %3849 to i64*
  %3850 = load i64, i64* %RBP.i411
  %3851 = sub i64 %3850, 32
  %3852 = load i64, i64* %PC.i409
  %3853 = add i64 %3852, 4
  store i64 %3853, i64* %PC.i409
  %3854 = inttoptr i64 %3851 to i64*
  %3855 = load i64, i64* %3854
  store i64 %3855, i64* %RCX.i410, align 8
  store %struct.Memory* %loadMem_462987, %struct.Memory** %MEMORY
  %loadMem_46298b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3857 = getelementptr inbounds %struct.GPR, %struct.GPR* %3856, i32 0, i32 33
  %3858 = getelementptr inbounds %struct.Reg, %struct.Reg* %3857, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %3858 to i64*
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 1
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %EAX.i407 = bitcast %union.anon* %3861 to i32*
  %3862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3863 = getelementptr inbounds %struct.GPR, %struct.GPR* %3862, i32 0, i32 5
  %3864 = getelementptr inbounds %struct.Reg, %struct.Reg* %3863, i32 0, i32 0
  %RCX.i408 = bitcast %union.anon* %3864 to i64*
  %3865 = load i32, i32* %EAX.i407
  %3866 = zext i32 %3865 to i64
  %3867 = load i64, i64* %RCX.i408
  %3868 = add i64 %3867, 400
  %3869 = load i64, i64* %PC.i406
  %3870 = add i64 %3869, 6
  store i64 %3870, i64* %PC.i406
  %3871 = inttoptr i64 %3868 to i32*
  %3872 = load i32, i32* %3871
  %3873 = sub i32 %3865, %3872
  %3874 = icmp ult i32 %3865, %3872
  %3875 = zext i1 %3874 to i8
  %3876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3875, i8* %3876, align 1
  %3877 = and i32 %3873, 255
  %3878 = call i32 @llvm.ctpop.i32(i32 %3877)
  %3879 = trunc i32 %3878 to i8
  %3880 = and i8 %3879, 1
  %3881 = xor i8 %3880, 1
  %3882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3881, i8* %3882, align 1
  %3883 = xor i32 %3872, %3865
  %3884 = xor i32 %3883, %3873
  %3885 = lshr i32 %3884, 4
  %3886 = trunc i32 %3885 to i8
  %3887 = and i8 %3886, 1
  %3888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3887, i8* %3888, align 1
  %3889 = icmp eq i32 %3873, 0
  %3890 = zext i1 %3889 to i8
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3890, i8* %3891, align 1
  %3892 = lshr i32 %3873, 31
  %3893 = trunc i32 %3892 to i8
  %3894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3893, i8* %3894, align 1
  %3895 = lshr i32 %3865, 31
  %3896 = lshr i32 %3872, 31
  %3897 = xor i32 %3896, %3895
  %3898 = xor i32 %3892, %3895
  %3899 = add i32 %3898, %3897
  %3900 = icmp eq i32 %3899, 2
  %3901 = zext i1 %3900 to i8
  %3902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3901, i8* %3902, align 1
  store %struct.Memory* %loadMem_46298b, %struct.Memory** %MEMORY
  %loadMem_462991 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3904 = getelementptr inbounds %struct.GPR, %struct.GPR* %3903, i32 0, i32 33
  %3905 = getelementptr inbounds %struct.Reg, %struct.Reg* %3904, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %3905 to i64*
  %3906 = load i64, i64* %PC.i405
  %3907 = add i64 %3906, 80
  %3908 = load i64, i64* %PC.i405
  %3909 = add i64 %3908, 6
  %3910 = load i64, i64* %PC.i405
  %3911 = add i64 %3910, 6
  store i64 %3911, i64* %PC.i405
  %3912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3913 = load i8, i8* %3912, align 1
  %3914 = icmp ne i8 %3913, 0
  %3915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3916 = load i8, i8* %3915, align 1
  %3917 = icmp ne i8 %3916, 0
  %3918 = xor i1 %3914, %3917
  %3919 = xor i1 %3918, true
  %3920 = zext i1 %3919 to i8
  store i8 %3920, i8* %BRANCH_TAKEN, align 1
  %3921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3922 = select i1 %3918, i64 %3909, i64 %3907
  store i64 %3922, i64* %3921, align 8
  store %struct.Memory* %loadMem_462991, %struct.Memory** %MEMORY
  %loadBr_462991 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462991 = icmp eq i8 %loadBr_462991, 1
  br i1 %cmpBr_462991, label %block_.L_4629e1, label %block_462997

block_462997:                                     ; preds = %block_.L_462984
  %loadMem_462997 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 33
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %PC.i402 = bitcast %union.anon* %3925 to i64*
  %3926 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3927 = getelementptr inbounds %struct.GPR, %struct.GPR* %3926, i32 0, i32 1
  %3928 = getelementptr inbounds %struct.Reg, %struct.Reg* %3927, i32 0, i32 0
  %RAX.i403 = bitcast %union.anon* %3928 to i64*
  %3929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3930 = getelementptr inbounds %struct.GPR, %struct.GPR* %3929, i32 0, i32 15
  %3931 = getelementptr inbounds %struct.Reg, %struct.Reg* %3930, i32 0, i32 0
  %RBP.i404 = bitcast %union.anon* %3931 to i64*
  %3932 = load i64, i64* %RBP.i404
  %3933 = sub i64 %3932, 32
  %3934 = load i64, i64* %PC.i402
  %3935 = add i64 %3934, 4
  store i64 %3935, i64* %PC.i402
  %3936 = inttoptr i64 %3933 to i64*
  %3937 = load i64, i64* %3936
  store i64 %3937, i64* %RAX.i403, align 8
  store %struct.Memory* %loadMem_462997, %struct.Memory** %MEMORY
  %loadMem_46299b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 33
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %PC.i399 = bitcast %union.anon* %3940 to i64*
  %3941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3942 = getelementptr inbounds %struct.GPR, %struct.GPR* %3941, i32 0, i32 5
  %3943 = getelementptr inbounds %struct.Reg, %struct.Reg* %3942, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %3943 to i64*
  %3944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3945 = getelementptr inbounds %struct.GPR, %struct.GPR* %3944, i32 0, i32 15
  %3946 = getelementptr inbounds %struct.Reg, %struct.Reg* %3945, i32 0, i32 0
  %RBP.i401 = bitcast %union.anon* %3946 to i64*
  %3947 = load i64, i64* %RBP.i401
  %3948 = sub i64 %3947, 84
  %3949 = load i64, i64* %PC.i399
  %3950 = add i64 %3949, 4
  store i64 %3950, i64* %PC.i399
  %3951 = inttoptr i64 %3948 to i32*
  %3952 = load i32, i32* %3951
  %3953 = sext i32 %3952 to i64
  store i64 %3953, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_46299b, %struct.Memory** %MEMORY
  %loadMem_46299f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3955 = getelementptr inbounds %struct.GPR, %struct.GPR* %3954, i32 0, i32 33
  %3956 = getelementptr inbounds %struct.Reg, %struct.Reg* %3955, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %3956 to i64*
  %3957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3958 = getelementptr inbounds %struct.GPR, %struct.GPR* %3957, i32 0, i32 1
  %3959 = getelementptr inbounds %struct.Reg, %struct.Reg* %3958, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %3959 to i64*
  %3960 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3961 = getelementptr inbounds %struct.GPR, %struct.GPR* %3960, i32 0, i32 5
  %3962 = getelementptr inbounds %struct.Reg, %struct.Reg* %3961, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %3962 to i64*
  %3963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3964 = getelementptr inbounds %struct.GPR, %struct.GPR* %3963, i32 0, i32 7
  %3965 = getelementptr inbounds %struct.Reg, %struct.Reg* %3964, i32 0, i32 0
  %RDX.i398 = bitcast %union.anon* %3965 to i64*
  %3966 = load i64, i64* %RAX.i396
  %3967 = load i64, i64* %RCX.i397
  %3968 = mul i64 %3967, 4
  %3969 = add i64 %3968, %3966
  %3970 = load i64, i64* %PC.i395
  %3971 = add i64 %3970, 3
  store i64 %3971, i64* %PC.i395
  %3972 = inttoptr i64 %3969 to i32*
  %3973 = load i32, i32* %3972
  %3974 = zext i32 %3973 to i64
  store i64 %3974, i64* %RDX.i398, align 8
  store %struct.Memory* %loadMem_46299f, %struct.Memory** %MEMORY
  %loadMem_4629a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3976 = getelementptr inbounds %struct.GPR, %struct.GPR* %3975, i32 0, i32 33
  %3977 = getelementptr inbounds %struct.Reg, %struct.Reg* %3976, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %3977 to i64*
  %3978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3979 = getelementptr inbounds %struct.GPR, %struct.GPR* %3978, i32 0, i32 9
  %3980 = getelementptr inbounds %struct.Reg, %struct.Reg* %3979, i32 0, i32 0
  %RSI.i393 = bitcast %union.anon* %3980 to i64*
  %3981 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3982 = getelementptr inbounds %struct.GPR, %struct.GPR* %3981, i32 0, i32 15
  %3983 = getelementptr inbounds %struct.Reg, %struct.Reg* %3982, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %3983 to i64*
  %3984 = load i64, i64* %RBP.i394
  %3985 = sub i64 %3984, 56
  %3986 = load i64, i64* %PC.i392
  %3987 = add i64 %3986, 3
  store i64 %3987, i64* %PC.i392
  %3988 = inttoptr i64 %3985 to i32*
  %3989 = load i32, i32* %3988
  %3990 = zext i32 %3989 to i64
  store i64 %3990, i64* %RSI.i393, align 8
  store %struct.Memory* %loadMem_4629a2, %struct.Memory** %MEMORY
  %loadMem_4629a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 33
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %3993 to i64*
  %3994 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3995 = getelementptr inbounds %struct.GPR, %struct.GPR* %3994, i32 0, i32 9
  %3996 = getelementptr inbounds %struct.Reg, %struct.Reg* %3995, i32 0, i32 0
  %RSI.i390 = bitcast %union.anon* %3996 to i64*
  %3997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3998 = getelementptr inbounds %struct.GPR, %struct.GPR* %3997, i32 0, i32 15
  %3999 = getelementptr inbounds %struct.Reg, %struct.Reg* %3998, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %3999 to i64*
  %4000 = load i64, i64* %RSI.i390
  %4001 = load i64, i64* %RBP.i391
  %4002 = sub i64 %4001, 52
  %4003 = load i64, i64* %PC.i389
  %4004 = add i64 %4003, 3
  store i64 %4004, i64* %PC.i389
  %4005 = trunc i64 %4000 to i32
  %4006 = inttoptr i64 %4002 to i32*
  %4007 = load i32, i32* %4006
  %4008 = add i32 %4007, %4005
  %4009 = zext i32 %4008 to i64
  store i64 %4009, i64* %RSI.i390, align 8
  %4010 = icmp ult i32 %4008, %4005
  %4011 = icmp ult i32 %4008, %4007
  %4012 = or i1 %4010, %4011
  %4013 = zext i1 %4012 to i8
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4013, i8* %4014, align 1
  %4015 = and i32 %4008, 255
  %4016 = call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4019, i8* %4020, align 1
  %4021 = xor i32 %4007, %4005
  %4022 = xor i32 %4021, %4008
  %4023 = lshr i32 %4022, 4
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4025, i8* %4026, align 1
  %4027 = icmp eq i32 %4008, 0
  %4028 = zext i1 %4027 to i8
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4028, i8* %4029, align 1
  %4030 = lshr i32 %4008, 31
  %4031 = trunc i32 %4030 to i8
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4031, i8* %4032, align 1
  %4033 = lshr i32 %4005, 31
  %4034 = lshr i32 %4007, 31
  %4035 = xor i32 %4030, %4033
  %4036 = xor i32 %4030, %4034
  %4037 = add i32 %4035, %4036
  %4038 = icmp eq i32 %4037, 2
  %4039 = zext i1 %4038 to i8
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4039, i8* %4040, align 1
  store %struct.Memory* %loadMem_4629a5, %struct.Memory** %MEMORY
  %loadMem_4629a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4042 = getelementptr inbounds %struct.GPR, %struct.GPR* %4041, i32 0, i32 33
  %4043 = getelementptr inbounds %struct.Reg, %struct.Reg* %4042, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %4043 to i64*
  %4044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4045 = getelementptr inbounds %struct.GPR, %struct.GPR* %4044, i32 0, i32 7
  %4046 = getelementptr inbounds %struct.Reg, %struct.Reg* %4045, i32 0, i32 0
  %EDX.i387 = bitcast %union.anon* %4046 to i32*
  %4047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4048 = getelementptr inbounds %struct.GPR, %struct.GPR* %4047, i32 0, i32 9
  %4049 = getelementptr inbounds %struct.Reg, %struct.Reg* %4048, i32 0, i32 0
  %ESI.i388 = bitcast %union.anon* %4049 to i32*
  %4050 = load i32, i32* %EDX.i387
  %4051 = zext i32 %4050 to i64
  %4052 = load i32, i32* %ESI.i388
  %4053 = zext i32 %4052 to i64
  %4054 = load i64, i64* %PC.i386
  %4055 = add i64 %4054, 2
  store i64 %4055, i64* %PC.i386
  %4056 = sub i32 %4050, %4052
  %4057 = icmp ult i32 %4050, %4052
  %4058 = zext i1 %4057 to i8
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4058, i8* %4059, align 1
  %4060 = and i32 %4056, 255
  %4061 = call i32 @llvm.ctpop.i32(i32 %4060)
  %4062 = trunc i32 %4061 to i8
  %4063 = and i8 %4062, 1
  %4064 = xor i8 %4063, 1
  %4065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4064, i8* %4065, align 1
  %4066 = xor i64 %4053, %4051
  %4067 = trunc i64 %4066 to i32
  %4068 = xor i32 %4067, %4056
  %4069 = lshr i32 %4068, 4
  %4070 = trunc i32 %4069 to i8
  %4071 = and i8 %4070, 1
  %4072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4071, i8* %4072, align 1
  %4073 = icmp eq i32 %4056, 0
  %4074 = zext i1 %4073 to i8
  %4075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4074, i8* %4075, align 1
  %4076 = lshr i32 %4056, 31
  %4077 = trunc i32 %4076 to i8
  %4078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4077, i8* %4078, align 1
  %4079 = lshr i32 %4050, 31
  %4080 = lshr i32 %4052, 31
  %4081 = xor i32 %4080, %4079
  %4082 = xor i32 %4076, %4079
  %4083 = add i32 %4082, %4081
  %4084 = icmp eq i32 %4083, 2
  %4085 = zext i1 %4084 to i8
  %4086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4085, i8* %4086, align 1
  store %struct.Memory* %loadMem_4629a8, %struct.Memory** %MEMORY
  %loadMem_4629aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %4087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4088 = getelementptr inbounds %struct.GPR, %struct.GPR* %4087, i32 0, i32 33
  %4089 = getelementptr inbounds %struct.Reg, %struct.Reg* %4088, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4089 to i64*
  %4090 = load i64, i64* %PC.i385
  %4091 = add i64 %4090, 36
  %4092 = load i64, i64* %PC.i385
  %4093 = add i64 %4092, 6
  %4094 = load i64, i64* %PC.i385
  %4095 = add i64 %4094, 6
  store i64 %4095, i64* %PC.i385
  %4096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4097 = load i8, i8* %4096, align 1
  %4098 = icmp eq i8 %4097, 0
  %4099 = zext i1 %4098 to i8
  store i8 %4099, i8* %BRANCH_TAKEN, align 1
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4101 = select i1 %4098, i64 %4091, i64 %4093
  store i64 %4101, i64* %4100, align 8
  store %struct.Memory* %loadMem_4629aa, %struct.Memory** %MEMORY
  %loadBr_4629aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4629aa = icmp eq i8 %loadBr_4629aa, 1
  br i1 %cmpBr_4629aa, label %block_.L_4629ce, label %block_4629b0

block_4629b0:                                     ; preds = %block_462997
  %loadMem_4629b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4103 = getelementptr inbounds %struct.GPR, %struct.GPR* %4102, i32 0, i32 33
  %4104 = getelementptr inbounds %struct.Reg, %struct.Reg* %4103, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4104 to i64*
  %4105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4106 = getelementptr inbounds %struct.GPR, %struct.GPR* %4105, i32 0, i32 1
  %4107 = getelementptr inbounds %struct.Reg, %struct.Reg* %4106, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4107 to i64*
  %4108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4109 = getelementptr inbounds %struct.GPR, %struct.GPR* %4108, i32 0, i32 15
  %4110 = getelementptr inbounds %struct.Reg, %struct.Reg* %4109, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4110 to i64*
  %4111 = load i64, i64* %RBP.i384
  %4112 = sub i64 %4111, 32
  %4113 = load i64, i64* %PC.i382
  %4114 = add i64 %4113, 4
  store i64 %4114, i64* %PC.i382
  %4115 = inttoptr i64 %4112 to i64*
  %4116 = load i64, i64* %4115
  store i64 %4116, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_4629b0, %struct.Memory** %MEMORY
  %loadMem_4629b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4118 = getelementptr inbounds %struct.GPR, %struct.GPR* %4117, i32 0, i32 33
  %4119 = getelementptr inbounds %struct.Reg, %struct.Reg* %4118, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %4119 to i64*
  %4120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4121 = getelementptr inbounds %struct.GPR, %struct.GPR* %4120, i32 0, i32 5
  %4122 = getelementptr inbounds %struct.Reg, %struct.Reg* %4121, i32 0, i32 0
  %RCX.i380 = bitcast %union.anon* %4122 to i64*
  %4123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4124 = getelementptr inbounds %struct.GPR, %struct.GPR* %4123, i32 0, i32 15
  %4125 = getelementptr inbounds %struct.Reg, %struct.Reg* %4124, i32 0, i32 0
  %RBP.i381 = bitcast %union.anon* %4125 to i64*
  %4126 = load i64, i64* %RBP.i381
  %4127 = sub i64 %4126, 84
  %4128 = load i64, i64* %PC.i379
  %4129 = add i64 %4128, 4
  store i64 %4129, i64* %PC.i379
  %4130 = inttoptr i64 %4127 to i32*
  %4131 = load i32, i32* %4130
  %4132 = sext i32 %4131 to i64
  store i64 %4132, i64* %RCX.i380, align 8
  store %struct.Memory* %loadMem_4629b4, %struct.Memory** %MEMORY
  %loadMem_4629b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 33
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4135 to i64*
  %4136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4137 = getelementptr inbounds %struct.GPR, %struct.GPR* %4136, i32 0, i32 1
  %4138 = getelementptr inbounds %struct.Reg, %struct.Reg* %4137, i32 0, i32 0
  %RAX.i376 = bitcast %union.anon* %4138 to i64*
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 5
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %RCX.i377 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 7
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RDX.i378 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %RAX.i376
  %4146 = load i64, i64* %RCX.i377
  %4147 = mul i64 %4146, 4
  %4148 = add i64 %4145, 200
  %4149 = add i64 %4148, %4147
  %4150 = load i64, i64* %PC.i375
  %4151 = add i64 %4150, 7
  store i64 %4151, i64* %PC.i375
  %4152 = inttoptr i64 %4149 to i32*
  %4153 = load i32, i32* %4152
  %4154 = zext i32 %4153 to i64
  store i64 %4154, i64* %RDX.i378, align 8
  store %struct.Memory* %loadMem_4629b8, %struct.Memory** %MEMORY
  %loadMem_4629bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4156 = getelementptr inbounds %struct.GPR, %struct.GPR* %4155, i32 0, i32 33
  %4157 = getelementptr inbounds %struct.Reg, %struct.Reg* %4156, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %4157 to i64*
  %4158 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4159 = getelementptr inbounds %struct.GPR, %struct.GPR* %4158, i32 0, i32 7
  %4160 = getelementptr inbounds %struct.Reg, %struct.Reg* %4159, i32 0, i32 0
  %RDX.i374 = bitcast %union.anon* %4160 to i64*
  %4161 = load i64, i64* %RDX.i374
  %4162 = load i64, i64* %PC.i373
  %4163 = add i64 %4162, 3
  store i64 %4163, i64* %PC.i373
  %4164 = trunc i64 %4161 to i32
  %4165 = add i32 10, %4164
  %4166 = zext i32 %4165 to i64
  store i64 %4166, i64* %RDX.i374, align 8
  %4167 = icmp ult i32 %4165, %4164
  %4168 = icmp ult i32 %4165, 10
  %4169 = or i1 %4167, %4168
  %4170 = zext i1 %4169 to i8
  %4171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4170, i8* %4171, align 1
  %4172 = and i32 %4165, 255
  %4173 = call i32 @llvm.ctpop.i32(i32 %4172)
  %4174 = trunc i32 %4173 to i8
  %4175 = and i8 %4174, 1
  %4176 = xor i8 %4175, 1
  %4177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4176, i8* %4177, align 1
  %4178 = xor i64 10, %4161
  %4179 = trunc i64 %4178 to i32
  %4180 = xor i32 %4179, %4165
  %4181 = lshr i32 %4180, 4
  %4182 = trunc i32 %4181 to i8
  %4183 = and i8 %4182, 1
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4183, i8* %4184, align 1
  %4185 = icmp eq i32 %4165, 0
  %4186 = zext i1 %4185 to i8
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4186, i8* %4187, align 1
  %4188 = lshr i32 %4165, 31
  %4189 = trunc i32 %4188 to i8
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4189, i8* %4190, align 1
  %4191 = lshr i32 %4164, 31
  %4192 = xor i32 %4188, %4191
  %4193 = add i32 %4192, %4188
  %4194 = icmp eq i32 %4193, 2
  %4195 = zext i1 %4194 to i8
  %4196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4195, i8* %4196, align 1
  store %struct.Memory* %loadMem_4629bf, %struct.Memory** %MEMORY
  %loadMem_4629c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4198 = getelementptr inbounds %struct.GPR, %struct.GPR* %4197, i32 0, i32 33
  %4199 = getelementptr inbounds %struct.Reg, %struct.Reg* %4198, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %4199 to i64*
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 7
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %EDX.i370 = bitcast %union.anon* %4202 to i32*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 1
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 5
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RCX.i372 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %RAX.i371
  %4210 = load i64, i64* %RCX.i372
  %4211 = mul i64 %4210, 4
  %4212 = add i64 %4209, 200
  %4213 = add i64 %4212, %4211
  %4214 = load i32, i32* %EDX.i370
  %4215 = zext i32 %4214 to i64
  %4216 = load i64, i64* %PC.i369
  %4217 = add i64 %4216, 7
  store i64 %4217, i64* %PC.i369
  %4218 = inttoptr i64 %4213 to i32*
  store i32 %4214, i32* %4218
  store %struct.Memory* %loadMem_4629c2, %struct.Memory** %MEMORY
  %loadMem_4629c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4220 = getelementptr inbounds %struct.GPR, %struct.GPR* %4219, i32 0, i32 33
  %4221 = getelementptr inbounds %struct.Reg, %struct.Reg* %4220, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %4221 to i64*
  %4222 = load i64, i64* %PC.i368
  %4223 = add i64 %4222, 24
  %4224 = load i64, i64* %PC.i368
  %4225 = add i64 %4224, 5
  store i64 %4225, i64* %PC.i368
  %4226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4223, i64* %4226, align 8
  store %struct.Memory* %loadMem_4629c9, %struct.Memory** %MEMORY
  br label %block_.L_4629e1

block_.L_4629ce:                                  ; preds = %block_462997
  %loadMem_4629ce = load %struct.Memory*, %struct.Memory** %MEMORY
  %4227 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4228 = getelementptr inbounds %struct.GPR, %struct.GPR* %4227, i32 0, i32 33
  %4229 = getelementptr inbounds %struct.Reg, %struct.Reg* %4228, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4229 to i64*
  %4230 = load i64, i64* %PC.i367
  %4231 = add i64 %4230, 5
  %4232 = load i64, i64* %PC.i367
  %4233 = add i64 %4232, 5
  store i64 %4233, i64* %PC.i367
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4231, i64* %4234, align 8
  store %struct.Memory* %loadMem_4629ce, %struct.Memory** %MEMORY
  br label %block_.L_4629d3

block_.L_4629d3:                                  ; preds = %block_.L_4629ce
  %loadMem_4629d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4236 = getelementptr inbounds %struct.GPR, %struct.GPR* %4235, i32 0, i32 33
  %4237 = getelementptr inbounds %struct.Reg, %struct.Reg* %4236, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %4237 to i64*
  %4238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4239 = getelementptr inbounds %struct.GPR, %struct.GPR* %4238, i32 0, i32 1
  %4240 = getelementptr inbounds %struct.Reg, %struct.Reg* %4239, i32 0, i32 0
  %RAX.i365 = bitcast %union.anon* %4240 to i64*
  %4241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4242 = getelementptr inbounds %struct.GPR, %struct.GPR* %4241, i32 0, i32 15
  %4243 = getelementptr inbounds %struct.Reg, %struct.Reg* %4242, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %4243 to i64*
  %4244 = load i64, i64* %RBP.i366
  %4245 = sub i64 %4244, 84
  %4246 = load i64, i64* %PC.i364
  %4247 = add i64 %4246, 3
  store i64 %4247, i64* %PC.i364
  %4248 = inttoptr i64 %4245 to i32*
  %4249 = load i32, i32* %4248
  %4250 = zext i32 %4249 to i64
  store i64 %4250, i64* %RAX.i365, align 8
  store %struct.Memory* %loadMem_4629d3, %struct.Memory** %MEMORY
  %loadMem_4629d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4252 = getelementptr inbounds %struct.GPR, %struct.GPR* %4251, i32 0, i32 33
  %4253 = getelementptr inbounds %struct.Reg, %struct.Reg* %4252, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4253 to i64*
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 1
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %4256 to i64*
  %4257 = load i64, i64* %RAX.i363
  %4258 = load i64, i64* %PC.i362
  %4259 = add i64 %4258, 3
  store i64 %4259, i64* %PC.i362
  %4260 = trunc i64 %4257 to i32
  %4261 = add i32 1, %4260
  %4262 = zext i32 %4261 to i64
  store i64 %4262, i64* %RAX.i363, align 8
  %4263 = icmp ult i32 %4261, %4260
  %4264 = icmp ult i32 %4261, 1
  %4265 = or i1 %4263, %4264
  %4266 = zext i1 %4265 to i8
  %4267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4266, i8* %4267, align 1
  %4268 = and i32 %4261, 255
  %4269 = call i32 @llvm.ctpop.i32(i32 %4268)
  %4270 = trunc i32 %4269 to i8
  %4271 = and i8 %4270, 1
  %4272 = xor i8 %4271, 1
  %4273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4272, i8* %4273, align 1
  %4274 = xor i64 1, %4257
  %4275 = trunc i64 %4274 to i32
  %4276 = xor i32 %4275, %4261
  %4277 = lshr i32 %4276, 4
  %4278 = trunc i32 %4277 to i8
  %4279 = and i8 %4278, 1
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4279, i8* %4280, align 1
  %4281 = icmp eq i32 %4261, 0
  %4282 = zext i1 %4281 to i8
  %4283 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4282, i8* %4283, align 1
  %4284 = lshr i32 %4261, 31
  %4285 = trunc i32 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4285, i8* %4286, align 1
  %4287 = lshr i32 %4260, 31
  %4288 = xor i32 %4284, %4287
  %4289 = add i32 %4288, %4284
  %4290 = icmp eq i32 %4289, 2
  %4291 = zext i1 %4290 to i8
  %4292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4291, i8* %4292, align 1
  store %struct.Memory* %loadMem_4629d6, %struct.Memory** %MEMORY
  %loadMem_4629d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4294 = getelementptr inbounds %struct.GPR, %struct.GPR* %4293, i32 0, i32 33
  %4295 = getelementptr inbounds %struct.Reg, %struct.Reg* %4294, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %4295 to i64*
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4297 = getelementptr inbounds %struct.GPR, %struct.GPR* %4296, i32 0, i32 1
  %4298 = getelementptr inbounds %struct.Reg, %struct.Reg* %4297, i32 0, i32 0
  %EAX.i360 = bitcast %union.anon* %4298 to i32*
  %4299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4300 = getelementptr inbounds %struct.GPR, %struct.GPR* %4299, i32 0, i32 15
  %4301 = getelementptr inbounds %struct.Reg, %struct.Reg* %4300, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %4301 to i64*
  %4302 = load i64, i64* %RBP.i361
  %4303 = sub i64 %4302, 84
  %4304 = load i32, i32* %EAX.i360
  %4305 = zext i32 %4304 to i64
  %4306 = load i64, i64* %PC.i359
  %4307 = add i64 %4306, 3
  store i64 %4307, i64* %PC.i359
  %4308 = inttoptr i64 %4303 to i32*
  store i32 %4304, i32* %4308
  store %struct.Memory* %loadMem_4629d9, %struct.Memory** %MEMORY
  %loadMem_4629dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %4309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4310 = getelementptr inbounds %struct.GPR, %struct.GPR* %4309, i32 0, i32 33
  %4311 = getelementptr inbounds %struct.Reg, %struct.Reg* %4310, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %4311 to i64*
  %4312 = load i64, i64* %PC.i358
  %4313 = add i64 %4312, -88
  %4314 = load i64, i64* %PC.i358
  %4315 = add i64 %4314, 5
  store i64 %4315, i64* %PC.i358
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4313, i64* %4316, align 8
  store %struct.Memory* %loadMem_4629dc, %struct.Memory** %MEMORY
  br label %block_.L_462984

block_.L_4629e1:                                  ; preds = %block_4629b0, %block_.L_462984
  %loadMem_4629e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4318 = getelementptr inbounds %struct.GPR, %struct.GPR* %4317, i32 0, i32 33
  %4319 = getelementptr inbounds %struct.Reg, %struct.Reg* %4318, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %4319 to i64*
  %4320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4321 = getelementptr inbounds %struct.GPR, %struct.GPR* %4320, i32 0, i32 1
  %4322 = getelementptr inbounds %struct.Reg, %struct.Reg* %4321, i32 0, i32 0
  %RAX.i356 = bitcast %union.anon* %4322 to i64*
  %4323 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4324 = getelementptr inbounds %struct.GPR, %struct.GPR* %4323, i32 0, i32 15
  %4325 = getelementptr inbounds %struct.Reg, %struct.Reg* %4324, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %4325 to i64*
  %4326 = load i64, i64* %RBP.i357
  %4327 = sub i64 %4326, 84
  %4328 = load i64, i64* %PC.i355
  %4329 = add i64 %4328, 3
  store i64 %4329, i64* %PC.i355
  %4330 = inttoptr i64 %4327 to i32*
  %4331 = load i32, i32* %4330
  %4332 = zext i32 %4331 to i64
  store i64 %4332, i64* %RAX.i356, align 8
  store %struct.Memory* %loadMem_4629e1, %struct.Memory** %MEMORY
  %loadMem_4629e4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4334 = getelementptr inbounds %struct.GPR, %struct.GPR* %4333, i32 0, i32 33
  %4335 = getelementptr inbounds %struct.Reg, %struct.Reg* %4334, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4335 to i64*
  %4336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4337 = getelementptr inbounds %struct.GPR, %struct.GPR* %4336, i32 0, i32 5
  %4338 = getelementptr inbounds %struct.Reg, %struct.Reg* %4337, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %4338 to i64*
  %4339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4340 = getelementptr inbounds %struct.GPR, %struct.GPR* %4339, i32 0, i32 15
  %4341 = getelementptr inbounds %struct.Reg, %struct.Reg* %4340, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %4341 to i64*
  %4342 = load i64, i64* %RBP.i354
  %4343 = sub i64 %4342, 32
  %4344 = load i64, i64* %PC.i352
  %4345 = add i64 %4344, 4
  store i64 %4345, i64* %PC.i352
  %4346 = inttoptr i64 %4343 to i64*
  %4347 = load i64, i64* %4346
  store i64 %4347, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_4629e4, %struct.Memory** %MEMORY
  %loadMem_4629e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4349 = getelementptr inbounds %struct.GPR, %struct.GPR* %4348, i32 0, i32 33
  %4350 = getelementptr inbounds %struct.Reg, %struct.Reg* %4349, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %4350 to i64*
  %4351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4352 = getelementptr inbounds %struct.GPR, %struct.GPR* %4351, i32 0, i32 1
  %4353 = getelementptr inbounds %struct.Reg, %struct.Reg* %4352, i32 0, i32 0
  %EAX.i350 = bitcast %union.anon* %4353 to i32*
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4355 = getelementptr inbounds %struct.GPR, %struct.GPR* %4354, i32 0, i32 5
  %4356 = getelementptr inbounds %struct.Reg, %struct.Reg* %4355, i32 0, i32 0
  %RCX.i351 = bitcast %union.anon* %4356 to i64*
  %4357 = load i32, i32* %EAX.i350
  %4358 = zext i32 %4357 to i64
  %4359 = load i64, i64* %RCX.i351
  %4360 = add i64 %4359, 400
  %4361 = load i64, i64* %PC.i349
  %4362 = add i64 %4361, 6
  store i64 %4362, i64* %PC.i349
  %4363 = inttoptr i64 %4360 to i32*
  %4364 = load i32, i32* %4363
  %4365 = sub i32 %4357, %4364
  %4366 = icmp ult i32 %4357, %4364
  %4367 = zext i1 %4366 to i8
  %4368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4367, i8* %4368, align 1
  %4369 = and i32 %4365, 255
  %4370 = call i32 @llvm.ctpop.i32(i32 %4369)
  %4371 = trunc i32 %4370 to i8
  %4372 = and i8 %4371, 1
  %4373 = xor i8 %4372, 1
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4373, i8* %4374, align 1
  %4375 = xor i32 %4364, %4357
  %4376 = xor i32 %4375, %4365
  %4377 = lshr i32 %4376, 4
  %4378 = trunc i32 %4377 to i8
  %4379 = and i8 %4378, 1
  %4380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4379, i8* %4380, align 1
  %4381 = icmp eq i32 %4365, 0
  %4382 = zext i1 %4381 to i8
  %4383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4382, i8* %4383, align 1
  %4384 = lshr i32 %4365, 31
  %4385 = trunc i32 %4384 to i8
  %4386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4385, i8* %4386, align 1
  %4387 = lshr i32 %4357, 31
  %4388 = lshr i32 %4364, 31
  %4389 = xor i32 %4388, %4387
  %4390 = xor i32 %4384, %4387
  %4391 = add i32 %4390, %4389
  %4392 = icmp eq i32 %4391, 2
  %4393 = zext i1 %4392 to i8
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4393, i8* %4394, align 1
  store %struct.Memory* %loadMem_4629e8, %struct.Memory** %MEMORY
  %loadMem_4629ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %4395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4396 = getelementptr inbounds %struct.GPR, %struct.GPR* %4395, i32 0, i32 33
  %4397 = getelementptr inbounds %struct.Reg, %struct.Reg* %4396, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4397 to i64*
  %4398 = load i64, i64* %PC.i348
  %4399 = add i64 %4398, 92
  %4400 = load i64, i64* %PC.i348
  %4401 = add i64 %4400, 6
  %4402 = load i64, i64* %PC.i348
  %4403 = add i64 %4402, 6
  store i64 %4403, i64* %PC.i348
  %4404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4405 = load i8, i8* %4404, align 1
  %4406 = icmp eq i8 %4405, 0
  %4407 = zext i1 %4406 to i8
  store i8 %4407, i8* %BRANCH_TAKEN, align 1
  %4408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4409 = select i1 %4406, i64 %4399, i64 %4401
  store i64 %4409, i64* %4408, align 8
  store %struct.Memory* %loadMem_4629ee, %struct.Memory** %MEMORY
  %loadBr_4629ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4629ee = icmp eq i8 %loadBr_4629ee, 1
  br i1 %cmpBr_4629ee, label %block_.L_462a4a, label %block_4629f4

block_4629f4:                                     ; preds = %block_.L_4629e1
  %loadMem_4629f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4411 = getelementptr inbounds %struct.GPR, %struct.GPR* %4410, i32 0, i32 33
  %4412 = getelementptr inbounds %struct.Reg, %struct.Reg* %4411, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4412 to i64*
  %4413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4414 = getelementptr inbounds %struct.GPR, %struct.GPR* %4413, i32 0, i32 1
  %4415 = getelementptr inbounds %struct.Reg, %struct.Reg* %4414, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %4415 to i64*
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4417 = getelementptr inbounds %struct.GPR, %struct.GPR* %4416, i32 0, i32 15
  %4418 = getelementptr inbounds %struct.Reg, %struct.Reg* %4417, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4418 to i64*
  %4419 = load i64, i64* %RBP.i347
  %4420 = sub i64 %4419, 32
  %4421 = load i64, i64* %PC.i345
  %4422 = add i64 %4421, 4
  store i64 %4422, i64* %PC.i345
  %4423 = inttoptr i64 %4420 to i64*
  %4424 = load i64, i64* %4423
  store i64 %4424, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_4629f4, %struct.Memory** %MEMORY
  %loadMem_4629f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4426 = getelementptr inbounds %struct.GPR, %struct.GPR* %4425, i32 0, i32 33
  %4427 = getelementptr inbounds %struct.Reg, %struct.Reg* %4426, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %4427 to i64*
  %4428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4429 = getelementptr inbounds %struct.GPR, %struct.GPR* %4428, i32 0, i32 1
  %4430 = getelementptr inbounds %struct.Reg, %struct.Reg* %4429, i32 0, i32 0
  %RAX.i344 = bitcast %union.anon* %4430 to i64*
  %4431 = load i64, i64* %RAX.i344
  %4432 = add i64 %4431, 400
  %4433 = load i64, i64* %PC.i343
  %4434 = add i64 %4433, 7
  store i64 %4434, i64* %PC.i343
  %4435 = inttoptr i64 %4432 to i32*
  %4436 = load i32, i32* %4435
  %4437 = sub i32 %4436, 50
  %4438 = icmp ult i32 %4436, 50
  %4439 = zext i1 %4438 to i8
  %4440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4439, i8* %4440, align 1
  %4441 = and i32 %4437, 255
  %4442 = call i32 @llvm.ctpop.i32(i32 %4441)
  %4443 = trunc i32 %4442 to i8
  %4444 = and i8 %4443, 1
  %4445 = xor i8 %4444, 1
  %4446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4445, i8* %4446, align 1
  %4447 = xor i32 %4436, 50
  %4448 = xor i32 %4447, %4437
  %4449 = lshr i32 %4448, 4
  %4450 = trunc i32 %4449 to i8
  %4451 = and i8 %4450, 1
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4451, i8* %4452, align 1
  %4453 = icmp eq i32 %4437, 0
  %4454 = zext i1 %4453 to i8
  %4455 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4454, i8* %4455, align 1
  %4456 = lshr i32 %4437, 31
  %4457 = trunc i32 %4456 to i8
  %4458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4457, i8* %4458, align 1
  %4459 = lshr i32 %4436, 31
  %4460 = xor i32 %4456, %4459
  %4461 = add i32 %4460, %4459
  %4462 = icmp eq i32 %4461, 2
  %4463 = zext i1 %4462 to i8
  %4464 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4463, i8* %4464, align 1
  store %struct.Memory* %loadMem_4629f8, %struct.Memory** %MEMORY
  %loadMem_4629ff = load %struct.Memory*, %struct.Memory** %MEMORY
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 33
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %PC.i342
  %4469 = add i64 %4468, 75
  %4470 = load i64, i64* %PC.i342
  %4471 = add i64 %4470, 6
  %4472 = load i64, i64* %PC.i342
  %4473 = add i64 %4472, 6
  store i64 %4473, i64* %PC.i342
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4475 = load i8, i8* %4474, align 1
  %4476 = icmp ne i8 %4475, 0
  %4477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4478 = load i8, i8* %4477, align 1
  %4479 = icmp ne i8 %4478, 0
  %4480 = xor i1 %4476, %4479
  %4481 = xor i1 %4480, true
  %4482 = zext i1 %4481 to i8
  store i8 %4482, i8* %BRANCH_TAKEN, align 1
  %4483 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4484 = select i1 %4480, i64 %4471, i64 %4469
  store i64 %4484, i64* %4483, align 8
  store %struct.Memory* %loadMem_4629ff, %struct.Memory** %MEMORY
  %loadBr_4629ff = load i8, i8* %BRANCH_TAKEN
  %cmpBr_4629ff = icmp eq i8 %loadBr_4629ff, 1
  br i1 %cmpBr_4629ff, label %block_.L_462a4a, label %block_462a05

block_462a05:                                     ; preds = %block_4629f4
  %loadMem_462a05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4486 = getelementptr inbounds %struct.GPR, %struct.GPR* %4485, i32 0, i32 33
  %4487 = getelementptr inbounds %struct.Reg, %struct.Reg* %4486, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4487 to i64*
  %4488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4489 = getelementptr inbounds %struct.GPR, %struct.GPR* %4488, i32 0, i32 1
  %4490 = getelementptr inbounds %struct.Reg, %struct.Reg* %4489, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %4490 to i64*
  %4491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4492 = getelementptr inbounds %struct.GPR, %struct.GPR* %4491, i32 0, i32 15
  %4493 = getelementptr inbounds %struct.Reg, %struct.Reg* %4492, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %4493 to i64*
  %4494 = load i64, i64* %RBP.i341
  %4495 = sub i64 %4494, 56
  %4496 = load i64, i64* %PC.i339
  %4497 = add i64 %4496, 3
  store i64 %4497, i64* %PC.i339
  %4498 = inttoptr i64 %4495 to i32*
  %4499 = load i32, i32* %4498
  %4500 = zext i32 %4499 to i64
  store i64 %4500, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_462a05, %struct.Memory** %MEMORY
  %loadMem_462a08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4502 = getelementptr inbounds %struct.GPR, %struct.GPR* %4501, i32 0, i32 33
  %4503 = getelementptr inbounds %struct.Reg, %struct.Reg* %4502, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4503 to i64*
  %4504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4505 = getelementptr inbounds %struct.GPR, %struct.GPR* %4504, i32 0, i32 1
  %4506 = getelementptr inbounds %struct.Reg, %struct.Reg* %4505, i32 0, i32 0
  %RAX.i337 = bitcast %union.anon* %4506 to i64*
  %4507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4508 = getelementptr inbounds %struct.GPR, %struct.GPR* %4507, i32 0, i32 15
  %4509 = getelementptr inbounds %struct.Reg, %struct.Reg* %4508, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %4509 to i64*
  %4510 = load i64, i64* %RAX.i337
  %4511 = load i64, i64* %RBP.i338
  %4512 = sub i64 %4511, 52
  %4513 = load i64, i64* %PC.i336
  %4514 = add i64 %4513, 3
  store i64 %4514, i64* %PC.i336
  %4515 = trunc i64 %4510 to i32
  %4516 = inttoptr i64 %4512 to i32*
  %4517 = load i32, i32* %4516
  %4518 = add i32 %4517, %4515
  %4519 = zext i32 %4518 to i64
  store i64 %4519, i64* %RAX.i337, align 8
  %4520 = icmp ult i32 %4518, %4515
  %4521 = icmp ult i32 %4518, %4517
  %4522 = or i1 %4520, %4521
  %4523 = zext i1 %4522 to i8
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4523, i8* %4524, align 1
  %4525 = and i32 %4518, 255
  %4526 = call i32 @llvm.ctpop.i32(i32 %4525)
  %4527 = trunc i32 %4526 to i8
  %4528 = and i8 %4527, 1
  %4529 = xor i8 %4528, 1
  %4530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4529, i8* %4530, align 1
  %4531 = xor i32 %4517, %4515
  %4532 = xor i32 %4531, %4518
  %4533 = lshr i32 %4532, 4
  %4534 = trunc i32 %4533 to i8
  %4535 = and i8 %4534, 1
  %4536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4535, i8* %4536, align 1
  %4537 = icmp eq i32 %4518, 0
  %4538 = zext i1 %4537 to i8
  %4539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4538, i8* %4539, align 1
  %4540 = lshr i32 %4518, 31
  %4541 = trunc i32 %4540 to i8
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4541, i8* %4542, align 1
  %4543 = lshr i32 %4515, 31
  %4544 = lshr i32 %4517, 31
  %4545 = xor i32 %4540, %4543
  %4546 = xor i32 %4540, %4544
  %4547 = add i32 %4545, %4546
  %4548 = icmp eq i32 %4547, 2
  %4549 = zext i1 %4548 to i8
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4549, i8* %4550, align 1
  store %struct.Memory* %loadMem_462a08, %struct.Memory** %MEMORY
  %loadMem_462a0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4552 = getelementptr inbounds %struct.GPR, %struct.GPR* %4551, i32 0, i32 33
  %4553 = getelementptr inbounds %struct.Reg, %struct.Reg* %4552, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %4553 to i64*
  %4554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4555 = getelementptr inbounds %struct.GPR, %struct.GPR* %4554, i32 0, i32 5
  %4556 = getelementptr inbounds %struct.Reg, %struct.Reg* %4555, i32 0, i32 0
  %RCX.i334 = bitcast %union.anon* %4556 to i64*
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4558 = getelementptr inbounds %struct.GPR, %struct.GPR* %4557, i32 0, i32 15
  %4559 = getelementptr inbounds %struct.Reg, %struct.Reg* %4558, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %4559 to i64*
  %4560 = load i64, i64* %RBP.i335
  %4561 = sub i64 %4560, 32
  %4562 = load i64, i64* %PC.i333
  %4563 = add i64 %4562, 4
  store i64 %4563, i64* %PC.i333
  %4564 = inttoptr i64 %4561 to i64*
  %4565 = load i64, i64* %4564
  store i64 %4565, i64* %RCX.i334, align 8
  store %struct.Memory* %loadMem_462a0b, %struct.Memory** %MEMORY
  %loadMem_462a0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4567 = getelementptr inbounds %struct.GPR, %struct.GPR* %4566, i32 0, i32 33
  %4568 = getelementptr inbounds %struct.Reg, %struct.Reg* %4567, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %4568 to i64*
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 7
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %RDX.i331 = bitcast %union.anon* %4571 to i64*
  %4572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4573 = getelementptr inbounds %struct.GPR, %struct.GPR* %4572, i32 0, i32 15
  %4574 = getelementptr inbounds %struct.Reg, %struct.Reg* %4573, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %4574 to i64*
  %4575 = load i64, i64* %RBP.i332
  %4576 = sub i64 %4575, 32
  %4577 = load i64, i64* %PC.i330
  %4578 = add i64 %4577, 4
  store i64 %4578, i64* %PC.i330
  %4579 = inttoptr i64 %4576 to i64*
  %4580 = load i64, i64* %4579
  store i64 %4580, i64* %RDX.i331, align 8
  store %struct.Memory* %loadMem_462a0f, %struct.Memory** %MEMORY
  %loadMem_462a13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4582 = getelementptr inbounds %struct.GPR, %struct.GPR* %4581, i32 0, i32 33
  %4583 = getelementptr inbounds %struct.Reg, %struct.Reg* %4582, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %4583 to i64*
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 7
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %RDX.i329 = bitcast %union.anon* %4586 to i64*
  %4587 = load i64, i64* %RDX.i329
  %4588 = add i64 %4587, 400
  %4589 = load i64, i64* %PC.i328
  %4590 = add i64 %4589, 7
  store i64 %4590, i64* %PC.i328
  %4591 = inttoptr i64 %4588 to i32*
  %4592 = load i32, i32* %4591
  %4593 = sext i32 %4592 to i64
  store i64 %4593, i64* %RDX.i329, align 8
  store %struct.Memory* %loadMem_462a13, %struct.Memory** %MEMORY
  %loadMem_462a1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4595 = getelementptr inbounds %struct.GPR, %struct.GPR* %4594, i32 0, i32 33
  %4596 = getelementptr inbounds %struct.Reg, %struct.Reg* %4595, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %4596 to i64*
  %4597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4598 = getelementptr inbounds %struct.GPR, %struct.GPR* %4597, i32 0, i32 1
  %4599 = getelementptr inbounds %struct.Reg, %struct.Reg* %4598, i32 0, i32 0
  %EAX.i325 = bitcast %union.anon* %4599 to i32*
  %4600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4601 = getelementptr inbounds %struct.GPR, %struct.GPR* %4600, i32 0, i32 5
  %4602 = getelementptr inbounds %struct.Reg, %struct.Reg* %4601, i32 0, i32 0
  %RCX.i326 = bitcast %union.anon* %4602 to i64*
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 7
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %RDX.i327 = bitcast %union.anon* %4605 to i64*
  %4606 = load i64, i64* %RCX.i326
  %4607 = load i64, i64* %RDX.i327
  %4608 = mul i64 %4607, 4
  %4609 = add i64 %4608, %4606
  %4610 = load i32, i32* %EAX.i325
  %4611 = zext i32 %4610 to i64
  %4612 = load i64, i64* %PC.i324
  %4613 = add i64 %4612, 3
  store i64 %4613, i64* %PC.i324
  %4614 = inttoptr i64 %4609 to i32*
  store i32 %4610, i32* %4614
  store %struct.Memory* %loadMem_462a1a, %struct.Memory** %MEMORY
  %loadMem_462a1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4616 = getelementptr inbounds %struct.GPR, %struct.GPR* %4615, i32 0, i32 33
  %4617 = getelementptr inbounds %struct.Reg, %struct.Reg* %4616, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %4617 to i64*
  %4618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4619 = getelementptr inbounds %struct.GPR, %struct.GPR* %4618, i32 0, i32 5
  %4620 = getelementptr inbounds %struct.Reg, %struct.Reg* %4619, i32 0, i32 0
  %RCX.i322 = bitcast %union.anon* %4620 to i64*
  %4621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4622 = getelementptr inbounds %struct.GPR, %struct.GPR* %4621, i32 0, i32 15
  %4623 = getelementptr inbounds %struct.Reg, %struct.Reg* %4622, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %4623 to i64*
  %4624 = load i64, i64* %RBP.i323
  %4625 = sub i64 %4624, 32
  %4626 = load i64, i64* %PC.i321
  %4627 = add i64 %4626, 4
  store i64 %4627, i64* %PC.i321
  %4628 = inttoptr i64 %4625 to i64*
  %4629 = load i64, i64* %4628
  store i64 %4629, i64* %RCX.i322, align 8
  store %struct.Memory* %loadMem_462a1d, %struct.Memory** %MEMORY
  %loadMem_462a21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4631 = getelementptr inbounds %struct.GPR, %struct.GPR* %4630, i32 0, i32 33
  %4632 = getelementptr inbounds %struct.Reg, %struct.Reg* %4631, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %4632 to i64*
  %4633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4634 = getelementptr inbounds %struct.GPR, %struct.GPR* %4633, i32 0, i32 7
  %4635 = getelementptr inbounds %struct.Reg, %struct.Reg* %4634, i32 0, i32 0
  %RDX.i319 = bitcast %union.anon* %4635 to i64*
  %4636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4637 = getelementptr inbounds %struct.GPR, %struct.GPR* %4636, i32 0, i32 15
  %4638 = getelementptr inbounds %struct.Reg, %struct.Reg* %4637, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %4638 to i64*
  %4639 = load i64, i64* %RBP.i320
  %4640 = sub i64 %4639, 32
  %4641 = load i64, i64* %PC.i318
  %4642 = add i64 %4641, 4
  store i64 %4642, i64* %PC.i318
  %4643 = inttoptr i64 %4640 to i64*
  %4644 = load i64, i64* %4643
  store i64 %4644, i64* %RDX.i319, align 8
  store %struct.Memory* %loadMem_462a21, %struct.Memory** %MEMORY
  %loadMem_462a25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4646 = getelementptr inbounds %struct.GPR, %struct.GPR* %4645, i32 0, i32 33
  %4647 = getelementptr inbounds %struct.Reg, %struct.Reg* %4646, i32 0, i32 0
  %PC.i316 = bitcast %union.anon* %4647 to i64*
  %4648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4649 = getelementptr inbounds %struct.GPR, %struct.GPR* %4648, i32 0, i32 7
  %4650 = getelementptr inbounds %struct.Reg, %struct.Reg* %4649, i32 0, i32 0
  %RDX.i317 = bitcast %union.anon* %4650 to i64*
  %4651 = load i64, i64* %RDX.i317
  %4652 = add i64 %4651, 400
  %4653 = load i64, i64* %PC.i316
  %4654 = add i64 %4653, 7
  store i64 %4654, i64* %PC.i316
  %4655 = inttoptr i64 %4652 to i32*
  %4656 = load i32, i32* %4655
  %4657 = sext i32 %4656 to i64
  store i64 %4657, i64* %RDX.i317, align 8
  store %struct.Memory* %loadMem_462a25, %struct.Memory** %MEMORY
  %loadMem_462a2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4659 = getelementptr inbounds %struct.GPR, %struct.GPR* %4658, i32 0, i32 33
  %4660 = getelementptr inbounds %struct.Reg, %struct.Reg* %4659, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4660 to i64*
  %4661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4662 = getelementptr inbounds %struct.GPR, %struct.GPR* %4661, i32 0, i32 5
  %4663 = getelementptr inbounds %struct.Reg, %struct.Reg* %4662, i32 0, i32 0
  %RCX.i314 = bitcast %union.anon* %4663 to i64*
  %4664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4665 = getelementptr inbounds %struct.GPR, %struct.GPR* %4664, i32 0, i32 7
  %4666 = getelementptr inbounds %struct.Reg, %struct.Reg* %4665, i32 0, i32 0
  %RDX.i315 = bitcast %union.anon* %4666 to i64*
  %4667 = load i64, i64* %RCX.i314
  %4668 = load i64, i64* %RDX.i315
  %4669 = mul i64 %4668, 4
  %4670 = add i64 %4667, 200
  %4671 = add i64 %4670, %4669
  %4672 = load i64, i64* %PC.i313
  %4673 = add i64 %4672, 11
  store i64 %4673, i64* %PC.i313
  %4674 = inttoptr i64 %4671 to i32*
  store i32 10, i32* %4674
  store %struct.Memory* %loadMem_462a2c, %struct.Memory** %MEMORY
  %loadMem_462a37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4676 = getelementptr inbounds %struct.GPR, %struct.GPR* %4675, i32 0, i32 33
  %4677 = getelementptr inbounds %struct.Reg, %struct.Reg* %4676, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4677 to i64*
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4679 = getelementptr inbounds %struct.GPR, %struct.GPR* %4678, i32 0, i32 5
  %4680 = getelementptr inbounds %struct.Reg, %struct.Reg* %4679, i32 0, i32 0
  %RCX.i311 = bitcast %union.anon* %4680 to i64*
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4682 = getelementptr inbounds %struct.GPR, %struct.GPR* %4681, i32 0, i32 15
  %4683 = getelementptr inbounds %struct.Reg, %struct.Reg* %4682, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %4683 to i64*
  %4684 = load i64, i64* %RBP.i312
  %4685 = sub i64 %4684, 32
  %4686 = load i64, i64* %PC.i310
  %4687 = add i64 %4686, 4
  store i64 %4687, i64* %PC.i310
  %4688 = inttoptr i64 %4685 to i64*
  %4689 = load i64, i64* %4688
  store i64 %4689, i64* %RCX.i311, align 8
  store %struct.Memory* %loadMem_462a37, %struct.Memory** %MEMORY
  %loadMem_462a3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 33
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %4692 to i64*
  %4693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4694 = getelementptr inbounds %struct.GPR, %struct.GPR* %4693, i32 0, i32 1
  %4695 = getelementptr inbounds %struct.Reg, %struct.Reg* %4694, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %4695 to i64*
  %4696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4697 = getelementptr inbounds %struct.GPR, %struct.GPR* %4696, i32 0, i32 5
  %4698 = getelementptr inbounds %struct.Reg, %struct.Reg* %4697, i32 0, i32 0
  %RCX.i309 = bitcast %union.anon* %4698 to i64*
  %4699 = load i64, i64* %RCX.i309
  %4700 = add i64 %4699, 400
  %4701 = load i64, i64* %PC.i307
  %4702 = add i64 %4701, 6
  store i64 %4702, i64* %PC.i307
  %4703 = inttoptr i64 %4700 to i32*
  %4704 = load i32, i32* %4703
  %4705 = zext i32 %4704 to i64
  store i64 %4705, i64* %RAX.i308, align 8
  store %struct.Memory* %loadMem_462a3b, %struct.Memory** %MEMORY
  %loadMem_462a41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 33
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4708 to i64*
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4710 = getelementptr inbounds %struct.GPR, %struct.GPR* %4709, i32 0, i32 1
  %4711 = getelementptr inbounds %struct.Reg, %struct.Reg* %4710, i32 0, i32 0
  %RAX.i306 = bitcast %union.anon* %4711 to i64*
  %4712 = load i64, i64* %RAX.i306
  %4713 = load i64, i64* %PC.i305
  %4714 = add i64 %4713, 3
  store i64 %4714, i64* %PC.i305
  %4715 = trunc i64 %4712 to i32
  %4716 = add i32 1, %4715
  %4717 = zext i32 %4716 to i64
  store i64 %4717, i64* %RAX.i306, align 8
  %4718 = icmp ult i32 %4716, %4715
  %4719 = icmp ult i32 %4716, 1
  %4720 = or i1 %4718, %4719
  %4721 = zext i1 %4720 to i8
  %4722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4721, i8* %4722, align 1
  %4723 = and i32 %4716, 255
  %4724 = call i32 @llvm.ctpop.i32(i32 %4723)
  %4725 = trunc i32 %4724 to i8
  %4726 = and i8 %4725, 1
  %4727 = xor i8 %4726, 1
  %4728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4727, i8* %4728, align 1
  %4729 = xor i64 1, %4712
  %4730 = trunc i64 %4729 to i32
  %4731 = xor i32 %4730, %4716
  %4732 = lshr i32 %4731, 4
  %4733 = trunc i32 %4732 to i8
  %4734 = and i8 %4733, 1
  %4735 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4734, i8* %4735, align 1
  %4736 = icmp eq i32 %4716, 0
  %4737 = zext i1 %4736 to i8
  %4738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4737, i8* %4738, align 1
  %4739 = lshr i32 %4716, 31
  %4740 = trunc i32 %4739 to i8
  %4741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4740, i8* %4741, align 1
  %4742 = lshr i32 %4715, 31
  %4743 = xor i32 %4739, %4742
  %4744 = add i32 %4743, %4739
  %4745 = icmp eq i32 %4744, 2
  %4746 = zext i1 %4745 to i8
  %4747 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4746, i8* %4747, align 1
  store %struct.Memory* %loadMem_462a41, %struct.Memory** %MEMORY
  %loadMem_462a44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 33
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4750 to i64*
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 1
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %EAX.i303 = bitcast %union.anon* %4753 to i32*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 5
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %4756 to i64*
  %4757 = load i64, i64* %RCX.i304
  %4758 = add i64 %4757, 400
  %4759 = load i32, i32* %EAX.i303
  %4760 = zext i32 %4759 to i64
  %4761 = load i64, i64* %PC.i302
  %4762 = add i64 %4761, 6
  store i64 %4762, i64* %PC.i302
  %4763 = inttoptr i64 %4758 to i32*
  store i32 %4759, i32* %4763
  store %struct.Memory* %loadMem_462a44, %struct.Memory** %MEMORY
  br label %block_.L_462a4a

block_.L_462a4a:                                  ; preds = %block_462a05, %block_4629f4, %block_.L_4629e1
  %loadMem_462a4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %4766 to i64*
  %4767 = load i64, i64* %PC.i301
  %4768 = add i64 %4767, 5
  %4769 = load i64, i64* %PC.i301
  %4770 = add i64 %4769, 5
  store i64 %4770, i64* %PC.i301
  %4771 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4768, i64* %4771, align 8
  store %struct.Memory* %loadMem_462a4a, %struct.Memory** %MEMORY
  br label %block_.L_462a4f

block_.L_462a4f:                                  ; preds = %block_.L_462a4a
  %loadMem_462a4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4773 = getelementptr inbounds %struct.GPR, %struct.GPR* %4772, i32 0, i32 33
  %4774 = getelementptr inbounds %struct.Reg, %struct.Reg* %4773, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %4774 to i64*
  %4775 = load i64, i64* %PC.i300
  %4776 = add i64 %4775, 502
  %4777 = load i64, i64* %PC.i300
  %4778 = add i64 %4777, 5
  store i64 %4778, i64* %PC.i300
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4776, i64* %4779, align 8
  store %struct.Memory* %loadMem_462a4f, %struct.Memory** %MEMORY
  br label %block_.L_462c45

block_.L_462a54:                                  ; preds = %block_46295f
  %loadMem_462a54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4781 = getelementptr inbounds %struct.GPR, %struct.GPR* %4780, i32 0, i32 33
  %4782 = getelementptr inbounds %struct.Reg, %struct.Reg* %4781, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %4782 to i64*
  %4783 = load i64, i64* %PC.i299
  %4784 = add i64 %4783, 5
  %4785 = load i64, i64* %PC.i299
  %4786 = add i64 %4785, 5
  store i64 %4786, i64* %PC.i299
  %4787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4784, i64* %4787, align 8
  store %struct.Memory* %loadMem_462a54, %struct.Memory** %MEMORY
  br label %block_.L_462a59

block_.L_462a59:                                  ; preds = %block_.L_462a54
  %loadMem_462a59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4789 = getelementptr inbounds %struct.GPR, %struct.GPR* %4788, i32 0, i32 33
  %4790 = getelementptr inbounds %struct.Reg, %struct.Reg* %4789, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %4790 to i64*
  %4791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4792 = getelementptr inbounds %struct.GPR, %struct.GPR* %4791, i32 0, i32 15
  %4793 = getelementptr inbounds %struct.Reg, %struct.Reg* %4792, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %4793 to i64*
  %4794 = load i64, i64* %RBP.i298
  %4795 = sub i64 %4794, 88
  %4796 = load i64, i64* %PC.i297
  %4797 = add i64 %4796, 7
  store i64 %4797, i64* %PC.i297
  %4798 = inttoptr i64 %4795 to i32*
  store i32 0, i32* %4798
  store %struct.Memory* %loadMem_462a59, %struct.Memory** %MEMORY
  br label %block_.L_462a60

block_.L_462a60:                                  ; preds = %block_.L_462aaf, %block_.L_462a59
  %loadMem_462a60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4800 = getelementptr inbounds %struct.GPR, %struct.GPR* %4799, i32 0, i32 33
  %4801 = getelementptr inbounds %struct.Reg, %struct.Reg* %4800, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %4801 to i64*
  %4802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4803 = getelementptr inbounds %struct.GPR, %struct.GPR* %4802, i32 0, i32 1
  %4804 = getelementptr inbounds %struct.Reg, %struct.Reg* %4803, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %4804 to i64*
  %4805 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4806 = getelementptr inbounds %struct.GPR, %struct.GPR* %4805, i32 0, i32 15
  %4807 = getelementptr inbounds %struct.Reg, %struct.Reg* %4806, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %4807 to i64*
  %4808 = load i64, i64* %RBP.i296
  %4809 = sub i64 %4808, 88
  %4810 = load i64, i64* %PC.i294
  %4811 = add i64 %4810, 3
  store i64 %4811, i64* %PC.i294
  %4812 = inttoptr i64 %4809 to i32*
  %4813 = load i32, i32* %4812
  %4814 = zext i32 %4813 to i64
  store i64 %4814, i64* %RAX.i295, align 8
  store %struct.Memory* %loadMem_462a60, %struct.Memory** %MEMORY
  %loadMem_462a63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4816 = getelementptr inbounds %struct.GPR, %struct.GPR* %4815, i32 0, i32 33
  %4817 = getelementptr inbounds %struct.Reg, %struct.Reg* %4816, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %4817 to i64*
  %4818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4819 = getelementptr inbounds %struct.GPR, %struct.GPR* %4818, i32 0, i32 5
  %4820 = getelementptr inbounds %struct.Reg, %struct.Reg* %4819, i32 0, i32 0
  %RCX.i292 = bitcast %union.anon* %4820 to i64*
  %4821 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4822 = getelementptr inbounds %struct.GPR, %struct.GPR* %4821, i32 0, i32 15
  %4823 = getelementptr inbounds %struct.Reg, %struct.Reg* %4822, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %4823 to i64*
  %4824 = load i64, i64* %RBP.i293
  %4825 = sub i64 %4824, 32
  %4826 = load i64, i64* %PC.i291
  %4827 = add i64 %4826, 4
  store i64 %4827, i64* %PC.i291
  %4828 = inttoptr i64 %4825 to i64*
  %4829 = load i64, i64* %4828
  store i64 %4829, i64* %RCX.i292, align 8
  store %struct.Memory* %loadMem_462a63, %struct.Memory** %MEMORY
  %loadMem_462a67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4831 = getelementptr inbounds %struct.GPR, %struct.GPR* %4830, i32 0, i32 33
  %4832 = getelementptr inbounds %struct.Reg, %struct.Reg* %4831, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %4832 to i64*
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 1
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %4835 to i32*
  %4836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4837 = getelementptr inbounds %struct.GPR, %struct.GPR* %4836, i32 0, i32 5
  %4838 = getelementptr inbounds %struct.Reg, %struct.Reg* %4837, i32 0, i32 0
  %RCX.i290 = bitcast %union.anon* %4838 to i64*
  %4839 = load i32, i32* %EAX.i289
  %4840 = zext i32 %4839 to i64
  %4841 = load i64, i64* %RCX.i290
  %4842 = add i64 %4841, 400
  %4843 = load i64, i64* %PC.i288
  %4844 = add i64 %4843, 6
  store i64 %4844, i64* %PC.i288
  %4845 = inttoptr i64 %4842 to i32*
  %4846 = load i32, i32* %4845
  %4847 = sub i32 %4839, %4846
  %4848 = icmp ult i32 %4839, %4846
  %4849 = zext i1 %4848 to i8
  %4850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4849, i8* %4850, align 1
  %4851 = and i32 %4847, 255
  %4852 = call i32 @llvm.ctpop.i32(i32 %4851)
  %4853 = trunc i32 %4852 to i8
  %4854 = and i8 %4853, 1
  %4855 = xor i8 %4854, 1
  %4856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4855, i8* %4856, align 1
  %4857 = xor i32 %4846, %4839
  %4858 = xor i32 %4857, %4847
  %4859 = lshr i32 %4858, 4
  %4860 = trunc i32 %4859 to i8
  %4861 = and i8 %4860, 1
  %4862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4861, i8* %4862, align 1
  %4863 = icmp eq i32 %4847, 0
  %4864 = zext i1 %4863 to i8
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4864, i8* %4865, align 1
  %4866 = lshr i32 %4847, 31
  %4867 = trunc i32 %4866 to i8
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4867, i8* %4868, align 1
  %4869 = lshr i32 %4839, 31
  %4870 = lshr i32 %4846, 31
  %4871 = xor i32 %4870, %4869
  %4872 = xor i32 %4866, %4869
  %4873 = add i32 %4872, %4871
  %4874 = icmp eq i32 %4873, 2
  %4875 = zext i1 %4874 to i8
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4875, i8* %4876, align 1
  store %struct.Memory* %loadMem_462a67, %struct.Memory** %MEMORY
  %loadMem_462a6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4878 = getelementptr inbounds %struct.GPR, %struct.GPR* %4877, i32 0, i32 33
  %4879 = getelementptr inbounds %struct.Reg, %struct.Reg* %4878, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %4879 to i64*
  %4880 = load i64, i64* %PC.i287
  %4881 = add i64 %4880, 80
  %4882 = load i64, i64* %PC.i287
  %4883 = add i64 %4882, 6
  %4884 = load i64, i64* %PC.i287
  %4885 = add i64 %4884, 6
  store i64 %4885, i64* %PC.i287
  %4886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4887 = load i8, i8* %4886, align 1
  %4888 = icmp ne i8 %4887, 0
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4890 = load i8, i8* %4889, align 1
  %4891 = icmp ne i8 %4890, 0
  %4892 = xor i1 %4888, %4891
  %4893 = xor i1 %4892, true
  %4894 = zext i1 %4893 to i8
  store i8 %4894, i8* %BRANCH_TAKEN, align 1
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4896 = select i1 %4892, i64 %4883, i64 %4881
  store i64 %4896, i64* %4895, align 8
  store %struct.Memory* %loadMem_462a6d, %struct.Memory** %MEMORY
  %loadBr_462a6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462a6d = icmp eq i8 %loadBr_462a6d, 1
  br i1 %cmpBr_462a6d, label %block_.L_462abd, label %block_462a73

block_462a73:                                     ; preds = %block_.L_462a60
  %loadMem_462a73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4898 = getelementptr inbounds %struct.GPR, %struct.GPR* %4897, i32 0, i32 33
  %4899 = getelementptr inbounds %struct.Reg, %struct.Reg* %4898, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %4899 to i64*
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4901 = getelementptr inbounds %struct.GPR, %struct.GPR* %4900, i32 0, i32 1
  %4902 = getelementptr inbounds %struct.Reg, %struct.Reg* %4901, i32 0, i32 0
  %RAX.i285 = bitcast %union.anon* %4902 to i64*
  %4903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4904 = getelementptr inbounds %struct.GPR, %struct.GPR* %4903, i32 0, i32 15
  %4905 = getelementptr inbounds %struct.Reg, %struct.Reg* %4904, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %4905 to i64*
  %4906 = load i64, i64* %RBP.i286
  %4907 = sub i64 %4906, 32
  %4908 = load i64, i64* %PC.i284
  %4909 = add i64 %4908, 4
  store i64 %4909, i64* %PC.i284
  %4910 = inttoptr i64 %4907 to i64*
  %4911 = load i64, i64* %4910
  store i64 %4911, i64* %RAX.i285, align 8
  store %struct.Memory* %loadMem_462a73, %struct.Memory** %MEMORY
  %loadMem_462a77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4912 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4913 = getelementptr inbounds %struct.GPR, %struct.GPR* %4912, i32 0, i32 33
  %4914 = getelementptr inbounds %struct.Reg, %struct.Reg* %4913, i32 0, i32 0
  %PC.i281 = bitcast %union.anon* %4914 to i64*
  %4915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4916 = getelementptr inbounds %struct.GPR, %struct.GPR* %4915, i32 0, i32 5
  %4917 = getelementptr inbounds %struct.Reg, %struct.Reg* %4916, i32 0, i32 0
  %RCX.i282 = bitcast %union.anon* %4917 to i64*
  %4918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4919 = getelementptr inbounds %struct.GPR, %struct.GPR* %4918, i32 0, i32 15
  %4920 = getelementptr inbounds %struct.Reg, %struct.Reg* %4919, i32 0, i32 0
  %RBP.i283 = bitcast %union.anon* %4920 to i64*
  %4921 = load i64, i64* %RBP.i283
  %4922 = sub i64 %4921, 88
  %4923 = load i64, i64* %PC.i281
  %4924 = add i64 %4923, 4
  store i64 %4924, i64* %PC.i281
  %4925 = inttoptr i64 %4922 to i32*
  %4926 = load i32, i32* %4925
  %4927 = sext i32 %4926 to i64
  store i64 %4927, i64* %RCX.i282, align 8
  store %struct.Memory* %loadMem_462a77, %struct.Memory** %MEMORY
  %loadMem_462a7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4929 = getelementptr inbounds %struct.GPR, %struct.GPR* %4928, i32 0, i32 33
  %4930 = getelementptr inbounds %struct.Reg, %struct.Reg* %4929, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %4930 to i64*
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 1
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %RAX.i278 = bitcast %union.anon* %4933 to i64*
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 5
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %4936 to i64*
  %4937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4938 = getelementptr inbounds %struct.GPR, %struct.GPR* %4937, i32 0, i32 7
  %4939 = getelementptr inbounds %struct.Reg, %struct.Reg* %4938, i32 0, i32 0
  %RDX.i280 = bitcast %union.anon* %4939 to i64*
  %4940 = load i64, i64* %RAX.i278
  %4941 = load i64, i64* %RCX.i279
  %4942 = mul i64 %4941, 4
  %4943 = add i64 %4942, %4940
  %4944 = load i64, i64* %PC.i277
  %4945 = add i64 %4944, 3
  store i64 %4945, i64* %PC.i277
  %4946 = inttoptr i64 %4943 to i32*
  %4947 = load i32, i32* %4946
  %4948 = zext i32 %4947 to i64
  store i64 %4948, i64* %RDX.i280, align 8
  store %struct.Memory* %loadMem_462a7b, %struct.Memory** %MEMORY
  %loadMem_462a7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %4951 to i64*
  %4952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4953 = getelementptr inbounds %struct.GPR, %struct.GPR* %4952, i32 0, i32 9
  %4954 = getelementptr inbounds %struct.Reg, %struct.Reg* %4953, i32 0, i32 0
  %RSI.i275 = bitcast %union.anon* %4954 to i64*
  %4955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4956 = getelementptr inbounds %struct.GPR, %struct.GPR* %4955, i32 0, i32 15
  %4957 = getelementptr inbounds %struct.Reg, %struct.Reg* %4956, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %4957 to i64*
  %4958 = load i64, i64* %RBP.i276
  %4959 = sub i64 %4958, 56
  %4960 = load i64, i64* %PC.i274
  %4961 = add i64 %4960, 3
  store i64 %4961, i64* %PC.i274
  %4962 = inttoptr i64 %4959 to i32*
  %4963 = load i32, i32* %4962
  %4964 = zext i32 %4963 to i64
  store i64 %4964, i64* %RSI.i275, align 8
  store %struct.Memory* %loadMem_462a7e, %struct.Memory** %MEMORY
  %loadMem_462a81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4966 = getelementptr inbounds %struct.GPR, %struct.GPR* %4965, i32 0, i32 33
  %4967 = getelementptr inbounds %struct.Reg, %struct.Reg* %4966, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %4967 to i64*
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4969 = getelementptr inbounds %struct.GPR, %struct.GPR* %4968, i32 0, i32 9
  %4970 = getelementptr inbounds %struct.Reg, %struct.Reg* %4969, i32 0, i32 0
  %RSI.i272 = bitcast %union.anon* %4970 to i64*
  %4971 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4972 = getelementptr inbounds %struct.GPR, %struct.GPR* %4971, i32 0, i32 15
  %4973 = getelementptr inbounds %struct.Reg, %struct.Reg* %4972, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %4973 to i64*
  %4974 = load i64, i64* %RSI.i272
  %4975 = load i64, i64* %RBP.i273
  %4976 = sub i64 %4975, 52
  %4977 = load i64, i64* %PC.i271
  %4978 = add i64 %4977, 3
  store i64 %4978, i64* %PC.i271
  %4979 = trunc i64 %4974 to i32
  %4980 = inttoptr i64 %4976 to i32*
  %4981 = load i32, i32* %4980
  %4982 = add i32 %4981, %4979
  %4983 = zext i32 %4982 to i64
  store i64 %4983, i64* %RSI.i272, align 8
  %4984 = icmp ult i32 %4982, %4979
  %4985 = icmp ult i32 %4982, %4981
  %4986 = or i1 %4984, %4985
  %4987 = zext i1 %4986 to i8
  %4988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4987, i8* %4988, align 1
  %4989 = and i32 %4982, 255
  %4990 = call i32 @llvm.ctpop.i32(i32 %4989)
  %4991 = trunc i32 %4990 to i8
  %4992 = and i8 %4991, 1
  %4993 = xor i8 %4992, 1
  %4994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4993, i8* %4994, align 1
  %4995 = xor i32 %4981, %4979
  %4996 = xor i32 %4995, %4982
  %4997 = lshr i32 %4996, 4
  %4998 = trunc i32 %4997 to i8
  %4999 = and i8 %4998, 1
  %5000 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4999, i8* %5000, align 1
  %5001 = icmp eq i32 %4982, 0
  %5002 = zext i1 %5001 to i8
  %5003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5002, i8* %5003, align 1
  %5004 = lshr i32 %4982, 31
  %5005 = trunc i32 %5004 to i8
  %5006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5005, i8* %5006, align 1
  %5007 = lshr i32 %4979, 31
  %5008 = lshr i32 %4981, 31
  %5009 = xor i32 %5004, %5007
  %5010 = xor i32 %5004, %5008
  %5011 = add i32 %5009, %5010
  %5012 = icmp eq i32 %5011, 2
  %5013 = zext i1 %5012 to i8
  %5014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5013, i8* %5014, align 1
  store %struct.Memory* %loadMem_462a81, %struct.Memory** %MEMORY
  %loadMem_462a84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5015 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5016 = getelementptr inbounds %struct.GPR, %struct.GPR* %5015, i32 0, i32 33
  %5017 = getelementptr inbounds %struct.Reg, %struct.Reg* %5016, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %5017 to i64*
  %5018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5019 = getelementptr inbounds %struct.GPR, %struct.GPR* %5018, i32 0, i32 7
  %5020 = getelementptr inbounds %struct.Reg, %struct.Reg* %5019, i32 0, i32 0
  %EDX.i269 = bitcast %union.anon* %5020 to i32*
  %5021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5022 = getelementptr inbounds %struct.GPR, %struct.GPR* %5021, i32 0, i32 9
  %5023 = getelementptr inbounds %struct.Reg, %struct.Reg* %5022, i32 0, i32 0
  %ESI.i270 = bitcast %union.anon* %5023 to i32*
  %5024 = load i32, i32* %EDX.i269
  %5025 = zext i32 %5024 to i64
  %5026 = load i32, i32* %ESI.i270
  %5027 = zext i32 %5026 to i64
  %5028 = load i64, i64* %PC.i268
  %5029 = add i64 %5028, 2
  store i64 %5029, i64* %PC.i268
  %5030 = sub i32 %5024, %5026
  %5031 = icmp ult i32 %5024, %5026
  %5032 = zext i1 %5031 to i8
  %5033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5032, i8* %5033, align 1
  %5034 = and i32 %5030, 255
  %5035 = call i32 @llvm.ctpop.i32(i32 %5034)
  %5036 = trunc i32 %5035 to i8
  %5037 = and i8 %5036, 1
  %5038 = xor i8 %5037, 1
  %5039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5038, i8* %5039, align 1
  %5040 = xor i64 %5027, %5025
  %5041 = trunc i64 %5040 to i32
  %5042 = xor i32 %5041, %5030
  %5043 = lshr i32 %5042, 4
  %5044 = trunc i32 %5043 to i8
  %5045 = and i8 %5044, 1
  %5046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5045, i8* %5046, align 1
  %5047 = icmp eq i32 %5030, 0
  %5048 = zext i1 %5047 to i8
  %5049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5048, i8* %5049, align 1
  %5050 = lshr i32 %5030, 31
  %5051 = trunc i32 %5050 to i8
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5051, i8* %5052, align 1
  %5053 = lshr i32 %5024, 31
  %5054 = lshr i32 %5026, 31
  %5055 = xor i32 %5054, %5053
  %5056 = xor i32 %5050, %5053
  %5057 = add i32 %5056, %5055
  %5058 = icmp eq i32 %5057, 2
  %5059 = zext i1 %5058 to i8
  %5060 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5059, i8* %5060, align 1
  store %struct.Memory* %loadMem_462a84, %struct.Memory** %MEMORY
  %loadMem_462a86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5062 = getelementptr inbounds %struct.GPR, %struct.GPR* %5061, i32 0, i32 33
  %5063 = getelementptr inbounds %struct.Reg, %struct.Reg* %5062, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %5063 to i64*
  %5064 = load i64, i64* %PC.i267
  %5065 = add i64 %5064, 36
  %5066 = load i64, i64* %PC.i267
  %5067 = add i64 %5066, 6
  %5068 = load i64, i64* %PC.i267
  %5069 = add i64 %5068, 6
  store i64 %5069, i64* %PC.i267
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5071 = load i8, i8* %5070, align 1
  %5072 = icmp eq i8 %5071, 0
  %5073 = zext i1 %5072 to i8
  store i8 %5073, i8* %BRANCH_TAKEN, align 1
  %5074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5075 = select i1 %5072, i64 %5065, i64 %5067
  store i64 %5075, i64* %5074, align 8
  store %struct.Memory* %loadMem_462a86, %struct.Memory** %MEMORY
  %loadBr_462a86 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462a86 = icmp eq i8 %loadBr_462a86, 1
  br i1 %cmpBr_462a86, label %block_.L_462aaa, label %block_462a8c

block_462a8c:                                     ; preds = %block_462a73
  %loadMem_462a8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5077 = getelementptr inbounds %struct.GPR, %struct.GPR* %5076, i32 0, i32 33
  %5078 = getelementptr inbounds %struct.Reg, %struct.Reg* %5077, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %5078 to i64*
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5080 = getelementptr inbounds %struct.GPR, %struct.GPR* %5079, i32 0, i32 1
  %5081 = getelementptr inbounds %struct.Reg, %struct.Reg* %5080, i32 0, i32 0
  %RAX.i265 = bitcast %union.anon* %5081 to i64*
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5083 = getelementptr inbounds %struct.GPR, %struct.GPR* %5082, i32 0, i32 15
  %5084 = getelementptr inbounds %struct.Reg, %struct.Reg* %5083, i32 0, i32 0
  %RBP.i266 = bitcast %union.anon* %5084 to i64*
  %5085 = load i64, i64* %RBP.i266
  %5086 = sub i64 %5085, 32
  %5087 = load i64, i64* %PC.i264
  %5088 = add i64 %5087, 4
  store i64 %5088, i64* %PC.i264
  %5089 = inttoptr i64 %5086 to i64*
  %5090 = load i64, i64* %5089
  store i64 %5090, i64* %RAX.i265, align 8
  store %struct.Memory* %loadMem_462a8c, %struct.Memory** %MEMORY
  %loadMem_462a90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5091 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5092 = getelementptr inbounds %struct.GPR, %struct.GPR* %5091, i32 0, i32 33
  %5093 = getelementptr inbounds %struct.Reg, %struct.Reg* %5092, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %5093 to i64*
  %5094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5095 = getelementptr inbounds %struct.GPR, %struct.GPR* %5094, i32 0, i32 5
  %5096 = getelementptr inbounds %struct.Reg, %struct.Reg* %5095, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %5096 to i64*
  %5097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5098 = getelementptr inbounds %struct.GPR, %struct.GPR* %5097, i32 0, i32 15
  %5099 = getelementptr inbounds %struct.Reg, %struct.Reg* %5098, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %5099 to i64*
  %5100 = load i64, i64* %RBP.i263
  %5101 = sub i64 %5100, 88
  %5102 = load i64, i64* %PC.i261
  %5103 = add i64 %5102, 4
  store i64 %5103, i64* %PC.i261
  %5104 = inttoptr i64 %5101 to i32*
  %5105 = load i32, i32* %5104
  %5106 = sext i32 %5105 to i64
  store i64 %5106, i64* %RCX.i262, align 8
  store %struct.Memory* %loadMem_462a90, %struct.Memory** %MEMORY
  %loadMem_462a94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 33
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5109 to i64*
  %5110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5111 = getelementptr inbounds %struct.GPR, %struct.GPR* %5110, i32 0, i32 1
  %5112 = getelementptr inbounds %struct.Reg, %struct.Reg* %5111, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %5112 to i64*
  %5113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5114 = getelementptr inbounds %struct.GPR, %struct.GPR* %5113, i32 0, i32 5
  %5115 = getelementptr inbounds %struct.Reg, %struct.Reg* %5114, i32 0, i32 0
  %RCX.i259 = bitcast %union.anon* %5115 to i64*
  %5116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5117 = getelementptr inbounds %struct.GPR, %struct.GPR* %5116, i32 0, i32 7
  %5118 = getelementptr inbounds %struct.Reg, %struct.Reg* %5117, i32 0, i32 0
  %RDX.i260 = bitcast %union.anon* %5118 to i64*
  %5119 = load i64, i64* %RAX.i258
  %5120 = load i64, i64* %RCX.i259
  %5121 = mul i64 %5120, 4
  %5122 = add i64 %5119, 200
  %5123 = add i64 %5122, %5121
  %5124 = load i64, i64* %PC.i257
  %5125 = add i64 %5124, 7
  store i64 %5125, i64* %PC.i257
  %5126 = inttoptr i64 %5123 to i32*
  %5127 = load i32, i32* %5126
  %5128 = zext i32 %5127 to i64
  store i64 %5128, i64* %RDX.i260, align 8
  store %struct.Memory* %loadMem_462a94, %struct.Memory** %MEMORY
  %loadMem_462a9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5130 = getelementptr inbounds %struct.GPR, %struct.GPR* %5129, i32 0, i32 33
  %5131 = getelementptr inbounds %struct.Reg, %struct.Reg* %5130, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5131 to i64*
  %5132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5133 = getelementptr inbounds %struct.GPR, %struct.GPR* %5132, i32 0, i32 7
  %5134 = getelementptr inbounds %struct.Reg, %struct.Reg* %5133, i32 0, i32 0
  %RDX.i256 = bitcast %union.anon* %5134 to i64*
  %5135 = load i64, i64* %RDX.i256
  %5136 = load i64, i64* %PC.i255
  %5137 = add i64 %5136, 3
  store i64 %5137, i64* %PC.i255
  %5138 = trunc i64 %5135 to i32
  %5139 = zext i32 %5138 to i64
  store i64 %5139, i64* %RDX.i256, align 8
  %5140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5140, align 1
  %5141 = and i32 %5138, 255
  %5142 = call i32 @llvm.ctpop.i32(i32 %5141)
  %5143 = trunc i32 %5142 to i8
  %5144 = and i8 %5143, 1
  %5145 = xor i8 %5144, 1
  %5146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5145, i8* %5146, align 1
  %5147 = trunc i64 %5135 to i32
  %5148 = xor i32 %5147, %5138
  %5149 = lshr i32 %5148, 4
  %5150 = trunc i32 %5149 to i8
  %5151 = and i8 %5150, 1
  %5152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5151, i8* %5152, align 1
  %5153 = icmp eq i32 %5138, 0
  %5154 = zext i1 %5153 to i8
  %5155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5154, i8* %5155, align 1
  %5156 = lshr i32 %5138, 31
  %5157 = trunc i32 %5156 to i8
  %5158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5157, i8* %5158, align 1
  %5159 = lshr i32 %5138, 31
  %5160 = xor i32 %5156, %5159
  %5161 = add i32 %5160, %5156
  %5162 = icmp eq i32 %5161, 2
  %5163 = zext i1 %5162 to i8
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5163, i8* %5164, align 1
  store %struct.Memory* %loadMem_462a9b, %struct.Memory** %MEMORY
  %loadMem_462a9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5166 = getelementptr inbounds %struct.GPR, %struct.GPR* %5165, i32 0, i32 33
  %5167 = getelementptr inbounds %struct.Reg, %struct.Reg* %5166, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %5167 to i64*
  %5168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5169 = getelementptr inbounds %struct.GPR, %struct.GPR* %5168, i32 0, i32 7
  %5170 = getelementptr inbounds %struct.Reg, %struct.Reg* %5169, i32 0, i32 0
  %EDX.i252 = bitcast %union.anon* %5170 to i32*
  %5171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5172 = getelementptr inbounds %struct.GPR, %struct.GPR* %5171, i32 0, i32 1
  %5173 = getelementptr inbounds %struct.Reg, %struct.Reg* %5172, i32 0, i32 0
  %RAX.i253 = bitcast %union.anon* %5173 to i64*
  %5174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5175 = getelementptr inbounds %struct.GPR, %struct.GPR* %5174, i32 0, i32 5
  %5176 = getelementptr inbounds %struct.Reg, %struct.Reg* %5175, i32 0, i32 0
  %RCX.i254 = bitcast %union.anon* %5176 to i64*
  %5177 = load i64, i64* %RAX.i253
  %5178 = load i64, i64* %RCX.i254
  %5179 = mul i64 %5178, 4
  %5180 = add i64 %5177, 200
  %5181 = add i64 %5180, %5179
  %5182 = load i32, i32* %EDX.i252
  %5183 = zext i32 %5182 to i64
  %5184 = load i64, i64* %PC.i251
  %5185 = add i64 %5184, 7
  store i64 %5185, i64* %PC.i251
  %5186 = inttoptr i64 %5181 to i32*
  store i32 %5182, i32* %5186
  store %struct.Memory* %loadMem_462a9e, %struct.Memory** %MEMORY
  %loadMem_462aa5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5188 = getelementptr inbounds %struct.GPR, %struct.GPR* %5187, i32 0, i32 33
  %5189 = getelementptr inbounds %struct.Reg, %struct.Reg* %5188, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5189 to i64*
  %5190 = load i64, i64* %PC.i250
  %5191 = add i64 %5190, 24
  %5192 = load i64, i64* %PC.i250
  %5193 = add i64 %5192, 5
  store i64 %5193, i64* %PC.i250
  %5194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5191, i64* %5194, align 8
  store %struct.Memory* %loadMem_462aa5, %struct.Memory** %MEMORY
  br label %block_.L_462abd

block_.L_462aaa:                                  ; preds = %block_462a73
  %loadMem_462aaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 33
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %5197 to i64*
  %5198 = load i64, i64* %PC.i249
  %5199 = add i64 %5198, 5
  %5200 = load i64, i64* %PC.i249
  %5201 = add i64 %5200, 5
  store i64 %5201, i64* %PC.i249
  %5202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5199, i64* %5202, align 8
  store %struct.Memory* %loadMem_462aaa, %struct.Memory** %MEMORY
  br label %block_.L_462aaf

block_.L_462aaf:                                  ; preds = %block_.L_462aaa
  %loadMem_462aaf = load %struct.Memory*, %struct.Memory** %MEMORY
  %5203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5204 = getelementptr inbounds %struct.GPR, %struct.GPR* %5203, i32 0, i32 33
  %5205 = getelementptr inbounds %struct.Reg, %struct.Reg* %5204, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %5205 to i64*
  %5206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5207 = getelementptr inbounds %struct.GPR, %struct.GPR* %5206, i32 0, i32 1
  %5208 = getelementptr inbounds %struct.Reg, %struct.Reg* %5207, i32 0, i32 0
  %RAX.i247 = bitcast %union.anon* %5208 to i64*
  %5209 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5210 = getelementptr inbounds %struct.GPR, %struct.GPR* %5209, i32 0, i32 15
  %5211 = getelementptr inbounds %struct.Reg, %struct.Reg* %5210, i32 0, i32 0
  %RBP.i248 = bitcast %union.anon* %5211 to i64*
  %5212 = load i64, i64* %RBP.i248
  %5213 = sub i64 %5212, 88
  %5214 = load i64, i64* %PC.i246
  %5215 = add i64 %5214, 3
  store i64 %5215, i64* %PC.i246
  %5216 = inttoptr i64 %5213 to i32*
  %5217 = load i32, i32* %5216
  %5218 = zext i32 %5217 to i64
  store i64 %5218, i64* %RAX.i247, align 8
  store %struct.Memory* %loadMem_462aaf, %struct.Memory** %MEMORY
  %loadMem_462ab2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5220 = getelementptr inbounds %struct.GPR, %struct.GPR* %5219, i32 0, i32 33
  %5221 = getelementptr inbounds %struct.Reg, %struct.Reg* %5220, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5221 to i64*
  %5222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5223 = getelementptr inbounds %struct.GPR, %struct.GPR* %5222, i32 0, i32 1
  %5224 = getelementptr inbounds %struct.Reg, %struct.Reg* %5223, i32 0, i32 0
  %RAX.i245 = bitcast %union.anon* %5224 to i64*
  %5225 = load i64, i64* %RAX.i245
  %5226 = load i64, i64* %PC.i244
  %5227 = add i64 %5226, 3
  store i64 %5227, i64* %PC.i244
  %5228 = trunc i64 %5225 to i32
  %5229 = add i32 1, %5228
  %5230 = zext i32 %5229 to i64
  store i64 %5230, i64* %RAX.i245, align 8
  %5231 = icmp ult i32 %5229, %5228
  %5232 = icmp ult i32 %5229, 1
  %5233 = or i1 %5231, %5232
  %5234 = zext i1 %5233 to i8
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5234, i8* %5235, align 1
  %5236 = and i32 %5229, 255
  %5237 = call i32 @llvm.ctpop.i32(i32 %5236)
  %5238 = trunc i32 %5237 to i8
  %5239 = and i8 %5238, 1
  %5240 = xor i8 %5239, 1
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5240, i8* %5241, align 1
  %5242 = xor i64 1, %5225
  %5243 = trunc i64 %5242 to i32
  %5244 = xor i32 %5243, %5229
  %5245 = lshr i32 %5244, 4
  %5246 = trunc i32 %5245 to i8
  %5247 = and i8 %5246, 1
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5247, i8* %5248, align 1
  %5249 = icmp eq i32 %5229, 0
  %5250 = zext i1 %5249 to i8
  %5251 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5250, i8* %5251, align 1
  %5252 = lshr i32 %5229, 31
  %5253 = trunc i32 %5252 to i8
  %5254 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5253, i8* %5254, align 1
  %5255 = lshr i32 %5228, 31
  %5256 = xor i32 %5252, %5255
  %5257 = add i32 %5256, %5252
  %5258 = icmp eq i32 %5257, 2
  %5259 = zext i1 %5258 to i8
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5259, i8* %5260, align 1
  store %struct.Memory* %loadMem_462ab2, %struct.Memory** %MEMORY
  %loadMem_462ab5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5262 = getelementptr inbounds %struct.GPR, %struct.GPR* %5261, i32 0, i32 33
  %5263 = getelementptr inbounds %struct.Reg, %struct.Reg* %5262, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %5263 to i64*
  %5264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5265 = getelementptr inbounds %struct.GPR, %struct.GPR* %5264, i32 0, i32 1
  %5266 = getelementptr inbounds %struct.Reg, %struct.Reg* %5265, i32 0, i32 0
  %EAX.i242 = bitcast %union.anon* %5266 to i32*
  %5267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5268 = getelementptr inbounds %struct.GPR, %struct.GPR* %5267, i32 0, i32 15
  %5269 = getelementptr inbounds %struct.Reg, %struct.Reg* %5268, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %5269 to i64*
  %5270 = load i64, i64* %RBP.i243
  %5271 = sub i64 %5270, 88
  %5272 = load i32, i32* %EAX.i242
  %5273 = zext i32 %5272 to i64
  %5274 = load i64, i64* %PC.i241
  %5275 = add i64 %5274, 3
  store i64 %5275, i64* %PC.i241
  %5276 = inttoptr i64 %5271 to i32*
  store i32 %5272, i32* %5276
  store %struct.Memory* %loadMem_462ab5, %struct.Memory** %MEMORY
  %loadMem_462ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 33
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %PC.i240
  %5281 = add i64 %5280, -88
  %5282 = load i64, i64* %PC.i240
  %5283 = add i64 %5282, 5
  store i64 %5283, i64* %PC.i240
  %5284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5281, i64* %5284, align 8
  store %struct.Memory* %loadMem_462ab8, %struct.Memory** %MEMORY
  br label %block_.L_462a60

block_.L_462abd:                                  ; preds = %block_462a8c, %block_.L_462a60
  %loadMem_462abd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5286 = getelementptr inbounds %struct.GPR, %struct.GPR* %5285, i32 0, i32 33
  %5287 = getelementptr inbounds %struct.Reg, %struct.Reg* %5286, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5287 to i64*
  %5288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5289 = getelementptr inbounds %struct.GPR, %struct.GPR* %5288, i32 0, i32 1
  %5290 = getelementptr inbounds %struct.Reg, %struct.Reg* %5289, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5290 to i64*
  %5291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5292 = getelementptr inbounds %struct.GPR, %struct.GPR* %5291, i32 0, i32 15
  %5293 = getelementptr inbounds %struct.Reg, %struct.Reg* %5292, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5293 to i64*
  %5294 = load i64, i64* %RBP.i239
  %5295 = sub i64 %5294, 88
  %5296 = load i64, i64* %PC.i237
  %5297 = add i64 %5296, 3
  store i64 %5297, i64* %PC.i237
  %5298 = inttoptr i64 %5295 to i32*
  %5299 = load i32, i32* %5298
  %5300 = zext i32 %5299 to i64
  store i64 %5300, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_462abd, %struct.Memory** %MEMORY
  %loadMem_462ac0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5302 = getelementptr inbounds %struct.GPR, %struct.GPR* %5301, i32 0, i32 33
  %5303 = getelementptr inbounds %struct.Reg, %struct.Reg* %5302, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %5303 to i64*
  %5304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5305 = getelementptr inbounds %struct.GPR, %struct.GPR* %5304, i32 0, i32 5
  %5306 = getelementptr inbounds %struct.Reg, %struct.Reg* %5305, i32 0, i32 0
  %RCX.i235 = bitcast %union.anon* %5306 to i64*
  %5307 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5308 = getelementptr inbounds %struct.GPR, %struct.GPR* %5307, i32 0, i32 15
  %5309 = getelementptr inbounds %struct.Reg, %struct.Reg* %5308, i32 0, i32 0
  %RBP.i236 = bitcast %union.anon* %5309 to i64*
  %5310 = load i64, i64* %RBP.i236
  %5311 = sub i64 %5310, 32
  %5312 = load i64, i64* %PC.i234
  %5313 = add i64 %5312, 4
  store i64 %5313, i64* %PC.i234
  %5314 = inttoptr i64 %5311 to i64*
  %5315 = load i64, i64* %5314
  store i64 %5315, i64* %RCX.i235, align 8
  store %struct.Memory* %loadMem_462ac0, %struct.Memory** %MEMORY
  %loadMem_462ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5317 = getelementptr inbounds %struct.GPR, %struct.GPR* %5316, i32 0, i32 33
  %5318 = getelementptr inbounds %struct.Reg, %struct.Reg* %5317, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5318 to i64*
  %5319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5320 = getelementptr inbounds %struct.GPR, %struct.GPR* %5319, i32 0, i32 1
  %5321 = getelementptr inbounds %struct.Reg, %struct.Reg* %5320, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %5321 to i32*
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5323 = getelementptr inbounds %struct.GPR, %struct.GPR* %5322, i32 0, i32 5
  %5324 = getelementptr inbounds %struct.Reg, %struct.Reg* %5323, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %5324 to i64*
  %5325 = load i32, i32* %EAX.i232
  %5326 = zext i32 %5325 to i64
  %5327 = load i64, i64* %RCX.i233
  %5328 = add i64 %5327, 400
  %5329 = load i64, i64* %PC.i231
  %5330 = add i64 %5329, 6
  store i64 %5330, i64* %PC.i231
  %5331 = inttoptr i64 %5328 to i32*
  %5332 = load i32, i32* %5331
  %5333 = sub i32 %5325, %5332
  %5334 = icmp ult i32 %5325, %5332
  %5335 = zext i1 %5334 to i8
  %5336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5335, i8* %5336, align 1
  %5337 = and i32 %5333, 255
  %5338 = call i32 @llvm.ctpop.i32(i32 %5337)
  %5339 = trunc i32 %5338 to i8
  %5340 = and i8 %5339, 1
  %5341 = xor i8 %5340, 1
  %5342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5341, i8* %5342, align 1
  %5343 = xor i32 %5332, %5325
  %5344 = xor i32 %5343, %5333
  %5345 = lshr i32 %5344, 4
  %5346 = trunc i32 %5345 to i8
  %5347 = and i8 %5346, 1
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5347, i8* %5348, align 1
  %5349 = icmp eq i32 %5333, 0
  %5350 = zext i1 %5349 to i8
  %5351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5350, i8* %5351, align 1
  %5352 = lshr i32 %5333, 31
  %5353 = trunc i32 %5352 to i8
  %5354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5353, i8* %5354, align 1
  %5355 = lshr i32 %5325, 31
  %5356 = lshr i32 %5332, 31
  %5357 = xor i32 %5356, %5355
  %5358 = xor i32 %5352, %5355
  %5359 = add i32 %5358, %5357
  %5360 = icmp eq i32 %5359, 2
  %5361 = zext i1 %5360 to i8
  %5362 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5361, i8* %5362, align 1
  store %struct.Memory* %loadMem_462ac4, %struct.Memory** %MEMORY
  %loadMem_462aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %5363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5364 = getelementptr inbounds %struct.GPR, %struct.GPR* %5363, i32 0, i32 33
  %5365 = getelementptr inbounds %struct.Reg, %struct.Reg* %5364, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5365 to i64*
  %5366 = load i64, i64* %PC.i230
  %5367 = add i64 %5366, 92
  %5368 = load i64, i64* %PC.i230
  %5369 = add i64 %5368, 6
  %5370 = load i64, i64* %PC.i230
  %5371 = add i64 %5370, 6
  store i64 %5371, i64* %PC.i230
  %5372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5373 = load i8, i8* %5372, align 1
  %5374 = icmp eq i8 %5373, 0
  %5375 = zext i1 %5374 to i8
  store i8 %5375, i8* %BRANCH_TAKEN, align 1
  %5376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5377 = select i1 %5374, i64 %5367, i64 %5369
  store i64 %5377, i64* %5376, align 8
  store %struct.Memory* %loadMem_462aca, %struct.Memory** %MEMORY
  %loadBr_462aca = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462aca = icmp eq i8 %loadBr_462aca, 1
  br i1 %cmpBr_462aca, label %block_.L_462b26, label %block_462ad0

block_462ad0:                                     ; preds = %block_.L_462abd
  %loadMem_462ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5379 = getelementptr inbounds %struct.GPR, %struct.GPR* %5378, i32 0, i32 33
  %5380 = getelementptr inbounds %struct.Reg, %struct.Reg* %5379, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5380 to i64*
  %5381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5382 = getelementptr inbounds %struct.GPR, %struct.GPR* %5381, i32 0, i32 1
  %5383 = getelementptr inbounds %struct.Reg, %struct.Reg* %5382, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %5383 to i64*
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 15
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5386 to i64*
  %5387 = load i64, i64* %RBP.i229
  %5388 = sub i64 %5387, 32
  %5389 = load i64, i64* %PC.i227
  %5390 = add i64 %5389, 4
  store i64 %5390, i64* %PC.i227
  %5391 = inttoptr i64 %5388 to i64*
  %5392 = load i64, i64* %5391
  store i64 %5392, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_462ad0, %struct.Memory** %MEMORY
  %loadMem_462ad4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 1
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %5398 to i64*
  %5399 = load i64, i64* %RAX.i226
  %5400 = add i64 %5399, 400
  %5401 = load i64, i64* %PC.i225
  %5402 = add i64 %5401, 7
  store i64 %5402, i64* %PC.i225
  %5403 = inttoptr i64 %5400 to i32*
  %5404 = load i32, i32* %5403
  %5405 = sub i32 %5404, 50
  %5406 = icmp ult i32 %5404, 50
  %5407 = zext i1 %5406 to i8
  %5408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5407, i8* %5408, align 1
  %5409 = and i32 %5405, 255
  %5410 = call i32 @llvm.ctpop.i32(i32 %5409)
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5413, i8* %5414, align 1
  %5415 = xor i32 %5404, 50
  %5416 = xor i32 %5415, %5405
  %5417 = lshr i32 %5416, 4
  %5418 = trunc i32 %5417 to i8
  %5419 = and i8 %5418, 1
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5419, i8* %5420, align 1
  %5421 = icmp eq i32 %5405, 0
  %5422 = zext i1 %5421 to i8
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5422, i8* %5423, align 1
  %5424 = lshr i32 %5405, 31
  %5425 = trunc i32 %5424 to i8
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5425, i8* %5426, align 1
  %5427 = lshr i32 %5404, 31
  %5428 = xor i32 %5424, %5427
  %5429 = add i32 %5428, %5427
  %5430 = icmp eq i32 %5429, 2
  %5431 = zext i1 %5430 to i8
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5431, i8* %5432, align 1
  store %struct.Memory* %loadMem_462ad4, %struct.Memory** %MEMORY
  %loadMem_462adb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %5435 to i64*
  %5436 = load i64, i64* %PC.i224
  %5437 = add i64 %5436, 75
  %5438 = load i64, i64* %PC.i224
  %5439 = add i64 %5438, 6
  %5440 = load i64, i64* %PC.i224
  %5441 = add i64 %5440, 6
  store i64 %5441, i64* %PC.i224
  %5442 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5443 = load i8, i8* %5442, align 1
  %5444 = icmp ne i8 %5443, 0
  %5445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5446 = load i8, i8* %5445, align 1
  %5447 = icmp ne i8 %5446, 0
  %5448 = xor i1 %5444, %5447
  %5449 = xor i1 %5448, true
  %5450 = zext i1 %5449 to i8
  store i8 %5450, i8* %BRANCH_TAKEN, align 1
  %5451 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5452 = select i1 %5448, i64 %5439, i64 %5437
  store i64 %5452, i64* %5451, align 8
  store %struct.Memory* %loadMem_462adb, %struct.Memory** %MEMORY
  %loadBr_462adb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462adb = icmp eq i8 %loadBr_462adb, 1
  br i1 %cmpBr_462adb, label %block_.L_462b26, label %block_462ae1

block_462ae1:                                     ; preds = %block_462ad0
  %loadMem_462ae1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5454 = getelementptr inbounds %struct.GPR, %struct.GPR* %5453, i32 0, i32 33
  %5455 = getelementptr inbounds %struct.Reg, %struct.Reg* %5454, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5455 to i64*
  %5456 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5457 = getelementptr inbounds %struct.GPR, %struct.GPR* %5456, i32 0, i32 1
  %5458 = getelementptr inbounds %struct.Reg, %struct.Reg* %5457, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %5458 to i64*
  %5459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5460 = getelementptr inbounds %struct.GPR, %struct.GPR* %5459, i32 0, i32 15
  %5461 = getelementptr inbounds %struct.Reg, %struct.Reg* %5460, i32 0, i32 0
  %RBP.i223 = bitcast %union.anon* %5461 to i64*
  %5462 = load i64, i64* %RBP.i223
  %5463 = sub i64 %5462, 56
  %5464 = load i64, i64* %PC.i221
  %5465 = add i64 %5464, 3
  store i64 %5465, i64* %PC.i221
  %5466 = inttoptr i64 %5463 to i32*
  %5467 = load i32, i32* %5466
  %5468 = zext i32 %5467 to i64
  store i64 %5468, i64* %RAX.i222, align 8
  store %struct.Memory* %loadMem_462ae1, %struct.Memory** %MEMORY
  %loadMem_462ae4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5470 = getelementptr inbounds %struct.GPR, %struct.GPR* %5469, i32 0, i32 33
  %5471 = getelementptr inbounds %struct.Reg, %struct.Reg* %5470, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5471 to i64*
  %5472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5473 = getelementptr inbounds %struct.GPR, %struct.GPR* %5472, i32 0, i32 1
  %5474 = getelementptr inbounds %struct.Reg, %struct.Reg* %5473, i32 0, i32 0
  %RAX.i219 = bitcast %union.anon* %5474 to i64*
  %5475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5476 = getelementptr inbounds %struct.GPR, %struct.GPR* %5475, i32 0, i32 15
  %5477 = getelementptr inbounds %struct.Reg, %struct.Reg* %5476, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %5477 to i64*
  %5478 = load i64, i64* %RAX.i219
  %5479 = load i64, i64* %RBP.i220
  %5480 = sub i64 %5479, 52
  %5481 = load i64, i64* %PC.i218
  %5482 = add i64 %5481, 3
  store i64 %5482, i64* %PC.i218
  %5483 = trunc i64 %5478 to i32
  %5484 = inttoptr i64 %5480 to i32*
  %5485 = load i32, i32* %5484
  %5486 = add i32 %5485, %5483
  %5487 = zext i32 %5486 to i64
  store i64 %5487, i64* %RAX.i219, align 8
  %5488 = icmp ult i32 %5486, %5483
  %5489 = icmp ult i32 %5486, %5485
  %5490 = or i1 %5488, %5489
  %5491 = zext i1 %5490 to i8
  %5492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5491, i8* %5492, align 1
  %5493 = and i32 %5486, 255
  %5494 = call i32 @llvm.ctpop.i32(i32 %5493)
  %5495 = trunc i32 %5494 to i8
  %5496 = and i8 %5495, 1
  %5497 = xor i8 %5496, 1
  %5498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5497, i8* %5498, align 1
  %5499 = xor i32 %5485, %5483
  %5500 = xor i32 %5499, %5486
  %5501 = lshr i32 %5500, 4
  %5502 = trunc i32 %5501 to i8
  %5503 = and i8 %5502, 1
  %5504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5503, i8* %5504, align 1
  %5505 = icmp eq i32 %5486, 0
  %5506 = zext i1 %5505 to i8
  %5507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5506, i8* %5507, align 1
  %5508 = lshr i32 %5486, 31
  %5509 = trunc i32 %5508 to i8
  %5510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5509, i8* %5510, align 1
  %5511 = lshr i32 %5483, 31
  %5512 = lshr i32 %5485, 31
  %5513 = xor i32 %5508, %5511
  %5514 = xor i32 %5508, %5512
  %5515 = add i32 %5513, %5514
  %5516 = icmp eq i32 %5515, 2
  %5517 = zext i1 %5516 to i8
  %5518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5517, i8* %5518, align 1
  store %struct.Memory* %loadMem_462ae4, %struct.Memory** %MEMORY
  %loadMem_462ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5520 = getelementptr inbounds %struct.GPR, %struct.GPR* %5519, i32 0, i32 33
  %5521 = getelementptr inbounds %struct.Reg, %struct.Reg* %5520, i32 0, i32 0
  %PC.i215 = bitcast %union.anon* %5521 to i64*
  %5522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5523 = getelementptr inbounds %struct.GPR, %struct.GPR* %5522, i32 0, i32 5
  %5524 = getelementptr inbounds %struct.Reg, %struct.Reg* %5523, i32 0, i32 0
  %RCX.i216 = bitcast %union.anon* %5524 to i64*
  %5525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5526 = getelementptr inbounds %struct.GPR, %struct.GPR* %5525, i32 0, i32 15
  %5527 = getelementptr inbounds %struct.Reg, %struct.Reg* %5526, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %5527 to i64*
  %5528 = load i64, i64* %RBP.i217
  %5529 = sub i64 %5528, 32
  %5530 = load i64, i64* %PC.i215
  %5531 = add i64 %5530, 4
  store i64 %5531, i64* %PC.i215
  %5532 = inttoptr i64 %5529 to i64*
  %5533 = load i64, i64* %5532
  store i64 %5533, i64* %RCX.i216, align 8
  store %struct.Memory* %loadMem_462ae7, %struct.Memory** %MEMORY
  %loadMem_462aeb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5535 = getelementptr inbounds %struct.GPR, %struct.GPR* %5534, i32 0, i32 33
  %5536 = getelementptr inbounds %struct.Reg, %struct.Reg* %5535, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %5536 to i64*
  %5537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5538 = getelementptr inbounds %struct.GPR, %struct.GPR* %5537, i32 0, i32 7
  %5539 = getelementptr inbounds %struct.Reg, %struct.Reg* %5538, i32 0, i32 0
  %RDX.i213 = bitcast %union.anon* %5539 to i64*
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 15
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %RBP.i214 = bitcast %union.anon* %5542 to i64*
  %5543 = load i64, i64* %RBP.i214
  %5544 = sub i64 %5543, 32
  %5545 = load i64, i64* %PC.i212
  %5546 = add i64 %5545, 4
  store i64 %5546, i64* %PC.i212
  %5547 = inttoptr i64 %5544 to i64*
  %5548 = load i64, i64* %5547
  store i64 %5548, i64* %RDX.i213, align 8
  store %struct.Memory* %loadMem_462aeb, %struct.Memory** %MEMORY
  %loadMem_462aef = load %struct.Memory*, %struct.Memory** %MEMORY
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 33
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %5551 to i64*
  %5552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5553 = getelementptr inbounds %struct.GPR, %struct.GPR* %5552, i32 0, i32 7
  %5554 = getelementptr inbounds %struct.Reg, %struct.Reg* %5553, i32 0, i32 0
  %RDX.i211 = bitcast %union.anon* %5554 to i64*
  %5555 = load i64, i64* %RDX.i211
  %5556 = add i64 %5555, 400
  %5557 = load i64, i64* %PC.i210
  %5558 = add i64 %5557, 7
  store i64 %5558, i64* %PC.i210
  %5559 = inttoptr i64 %5556 to i32*
  %5560 = load i32, i32* %5559
  %5561 = sext i32 %5560 to i64
  store i64 %5561, i64* %RDX.i211, align 8
  store %struct.Memory* %loadMem_462aef, %struct.Memory** %MEMORY
  %loadMem_462af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5563 = getelementptr inbounds %struct.GPR, %struct.GPR* %5562, i32 0, i32 33
  %5564 = getelementptr inbounds %struct.Reg, %struct.Reg* %5563, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5564 to i64*
  %5565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5566 = getelementptr inbounds %struct.GPR, %struct.GPR* %5565, i32 0, i32 1
  %5567 = getelementptr inbounds %struct.Reg, %struct.Reg* %5566, i32 0, i32 0
  %EAX.i207 = bitcast %union.anon* %5567 to i32*
  %5568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5569 = getelementptr inbounds %struct.GPR, %struct.GPR* %5568, i32 0, i32 5
  %5570 = getelementptr inbounds %struct.Reg, %struct.Reg* %5569, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %5570 to i64*
  %5571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5572 = getelementptr inbounds %struct.GPR, %struct.GPR* %5571, i32 0, i32 7
  %5573 = getelementptr inbounds %struct.Reg, %struct.Reg* %5572, i32 0, i32 0
  %RDX.i209 = bitcast %union.anon* %5573 to i64*
  %5574 = load i64, i64* %RCX.i208
  %5575 = load i64, i64* %RDX.i209
  %5576 = mul i64 %5575, 4
  %5577 = add i64 %5576, %5574
  %5578 = load i32, i32* %EAX.i207
  %5579 = zext i32 %5578 to i64
  %5580 = load i64, i64* %PC.i206
  %5581 = add i64 %5580, 3
  store i64 %5581, i64* %PC.i206
  %5582 = inttoptr i64 %5577 to i32*
  store i32 %5578, i32* %5582
  store %struct.Memory* %loadMem_462af6, %struct.Memory** %MEMORY
  %loadMem_462af9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5584 = getelementptr inbounds %struct.GPR, %struct.GPR* %5583, i32 0, i32 33
  %5585 = getelementptr inbounds %struct.Reg, %struct.Reg* %5584, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %5585 to i64*
  %5586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5587 = getelementptr inbounds %struct.GPR, %struct.GPR* %5586, i32 0, i32 5
  %5588 = getelementptr inbounds %struct.Reg, %struct.Reg* %5587, i32 0, i32 0
  %RCX.i204 = bitcast %union.anon* %5588 to i64*
  %5589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5590 = getelementptr inbounds %struct.GPR, %struct.GPR* %5589, i32 0, i32 15
  %5591 = getelementptr inbounds %struct.Reg, %struct.Reg* %5590, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %5591 to i64*
  %5592 = load i64, i64* %RBP.i205
  %5593 = sub i64 %5592, 32
  %5594 = load i64, i64* %PC.i203
  %5595 = add i64 %5594, 4
  store i64 %5595, i64* %PC.i203
  %5596 = inttoptr i64 %5593 to i64*
  %5597 = load i64, i64* %5596
  store i64 %5597, i64* %RCX.i204, align 8
  store %struct.Memory* %loadMem_462af9, %struct.Memory** %MEMORY
  %loadMem_462afd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5599 = getelementptr inbounds %struct.GPR, %struct.GPR* %5598, i32 0, i32 33
  %5600 = getelementptr inbounds %struct.Reg, %struct.Reg* %5599, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5600 to i64*
  %5601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5602 = getelementptr inbounds %struct.GPR, %struct.GPR* %5601, i32 0, i32 7
  %5603 = getelementptr inbounds %struct.Reg, %struct.Reg* %5602, i32 0, i32 0
  %RDX.i201 = bitcast %union.anon* %5603 to i64*
  %5604 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5605 = getelementptr inbounds %struct.GPR, %struct.GPR* %5604, i32 0, i32 15
  %5606 = getelementptr inbounds %struct.Reg, %struct.Reg* %5605, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %5606 to i64*
  %5607 = load i64, i64* %RBP.i202
  %5608 = sub i64 %5607, 32
  %5609 = load i64, i64* %PC.i200
  %5610 = add i64 %5609, 4
  store i64 %5610, i64* %PC.i200
  %5611 = inttoptr i64 %5608 to i64*
  %5612 = load i64, i64* %5611
  store i64 %5612, i64* %RDX.i201, align 8
  store %struct.Memory* %loadMem_462afd, %struct.Memory** %MEMORY
  %loadMem_462b01 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5613 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5614 = getelementptr inbounds %struct.GPR, %struct.GPR* %5613, i32 0, i32 33
  %5615 = getelementptr inbounds %struct.Reg, %struct.Reg* %5614, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %5615 to i64*
  %5616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5617 = getelementptr inbounds %struct.GPR, %struct.GPR* %5616, i32 0, i32 7
  %5618 = getelementptr inbounds %struct.Reg, %struct.Reg* %5617, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %5618 to i64*
  %5619 = load i64, i64* %RDX.i199
  %5620 = add i64 %5619, 400
  %5621 = load i64, i64* %PC.i198
  %5622 = add i64 %5621, 7
  store i64 %5622, i64* %PC.i198
  %5623 = inttoptr i64 %5620 to i32*
  %5624 = load i32, i32* %5623
  %5625 = sext i32 %5624 to i64
  store i64 %5625, i64* %RDX.i199, align 8
  store %struct.Memory* %loadMem_462b01, %struct.Memory** %MEMORY
  %loadMem_462b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5627 = getelementptr inbounds %struct.GPR, %struct.GPR* %5626, i32 0, i32 33
  %5628 = getelementptr inbounds %struct.Reg, %struct.Reg* %5627, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %5628 to i64*
  %5629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5630 = getelementptr inbounds %struct.GPR, %struct.GPR* %5629, i32 0, i32 5
  %5631 = getelementptr inbounds %struct.Reg, %struct.Reg* %5630, i32 0, i32 0
  %RCX.i196 = bitcast %union.anon* %5631 to i64*
  %5632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5633 = getelementptr inbounds %struct.GPR, %struct.GPR* %5632, i32 0, i32 7
  %5634 = getelementptr inbounds %struct.Reg, %struct.Reg* %5633, i32 0, i32 0
  %RDX.i197 = bitcast %union.anon* %5634 to i64*
  %5635 = load i64, i64* %RCX.i196
  %5636 = load i64, i64* %RDX.i197
  %5637 = mul i64 %5636, 4
  %5638 = add i64 %5635, 200
  %5639 = add i64 %5638, %5637
  %5640 = load i64, i64* %PC.i195
  %5641 = add i64 %5640, 11
  store i64 %5641, i64* %PC.i195
  %5642 = inttoptr i64 %5639 to i32*
  store i32 0, i32* %5642
  store %struct.Memory* %loadMem_462b08, %struct.Memory** %MEMORY
  %loadMem_462b13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %5645 to i64*
  %5646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5647 = getelementptr inbounds %struct.GPR, %struct.GPR* %5646, i32 0, i32 5
  %5648 = getelementptr inbounds %struct.Reg, %struct.Reg* %5647, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %5648 to i64*
  %5649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5650 = getelementptr inbounds %struct.GPR, %struct.GPR* %5649, i32 0, i32 15
  %5651 = getelementptr inbounds %struct.Reg, %struct.Reg* %5650, i32 0, i32 0
  %RBP.i194 = bitcast %union.anon* %5651 to i64*
  %5652 = load i64, i64* %RBP.i194
  %5653 = sub i64 %5652, 32
  %5654 = load i64, i64* %PC.i192
  %5655 = add i64 %5654, 4
  store i64 %5655, i64* %PC.i192
  %5656 = inttoptr i64 %5653 to i64*
  %5657 = load i64, i64* %5656
  store i64 %5657, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_462b13, %struct.Memory** %MEMORY
  %loadMem_462b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5659 = getelementptr inbounds %struct.GPR, %struct.GPR* %5658, i32 0, i32 33
  %5660 = getelementptr inbounds %struct.Reg, %struct.Reg* %5659, i32 0, i32 0
  %PC.i189 = bitcast %union.anon* %5660 to i64*
  %5661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5662 = getelementptr inbounds %struct.GPR, %struct.GPR* %5661, i32 0, i32 1
  %5663 = getelementptr inbounds %struct.Reg, %struct.Reg* %5662, i32 0, i32 0
  %RAX.i190 = bitcast %union.anon* %5663 to i64*
  %5664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5665 = getelementptr inbounds %struct.GPR, %struct.GPR* %5664, i32 0, i32 5
  %5666 = getelementptr inbounds %struct.Reg, %struct.Reg* %5665, i32 0, i32 0
  %RCX.i191 = bitcast %union.anon* %5666 to i64*
  %5667 = load i64, i64* %RCX.i191
  %5668 = add i64 %5667, 400
  %5669 = load i64, i64* %PC.i189
  %5670 = add i64 %5669, 6
  store i64 %5670, i64* %PC.i189
  %5671 = inttoptr i64 %5668 to i32*
  %5672 = load i32, i32* %5671
  %5673 = zext i32 %5672 to i64
  store i64 %5673, i64* %RAX.i190, align 8
  store %struct.Memory* %loadMem_462b17, %struct.Memory** %MEMORY
  %loadMem_462b1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5675 = getelementptr inbounds %struct.GPR, %struct.GPR* %5674, i32 0, i32 33
  %5676 = getelementptr inbounds %struct.Reg, %struct.Reg* %5675, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %5676 to i64*
  %5677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5678 = getelementptr inbounds %struct.GPR, %struct.GPR* %5677, i32 0, i32 1
  %5679 = getelementptr inbounds %struct.Reg, %struct.Reg* %5678, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %5679 to i64*
  %5680 = load i64, i64* %RAX.i188
  %5681 = load i64, i64* %PC.i187
  %5682 = add i64 %5681, 3
  store i64 %5682, i64* %PC.i187
  %5683 = trunc i64 %5680 to i32
  %5684 = add i32 1, %5683
  %5685 = zext i32 %5684 to i64
  store i64 %5685, i64* %RAX.i188, align 8
  %5686 = icmp ult i32 %5684, %5683
  %5687 = icmp ult i32 %5684, 1
  %5688 = or i1 %5686, %5687
  %5689 = zext i1 %5688 to i8
  %5690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5689, i8* %5690, align 1
  %5691 = and i32 %5684, 255
  %5692 = call i32 @llvm.ctpop.i32(i32 %5691)
  %5693 = trunc i32 %5692 to i8
  %5694 = and i8 %5693, 1
  %5695 = xor i8 %5694, 1
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5695, i8* %5696, align 1
  %5697 = xor i64 1, %5680
  %5698 = trunc i64 %5697 to i32
  %5699 = xor i32 %5698, %5684
  %5700 = lshr i32 %5699, 4
  %5701 = trunc i32 %5700 to i8
  %5702 = and i8 %5701, 1
  %5703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5702, i8* %5703, align 1
  %5704 = icmp eq i32 %5684, 0
  %5705 = zext i1 %5704 to i8
  %5706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5705, i8* %5706, align 1
  %5707 = lshr i32 %5684, 31
  %5708 = trunc i32 %5707 to i8
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5708, i8* %5709, align 1
  %5710 = lshr i32 %5683, 31
  %5711 = xor i32 %5707, %5710
  %5712 = add i32 %5711, %5707
  %5713 = icmp eq i32 %5712, 2
  %5714 = zext i1 %5713 to i8
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5714, i8* %5715, align 1
  store %struct.Memory* %loadMem_462b1d, %struct.Memory** %MEMORY
  %loadMem_462b20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5717 = getelementptr inbounds %struct.GPR, %struct.GPR* %5716, i32 0, i32 33
  %5718 = getelementptr inbounds %struct.Reg, %struct.Reg* %5717, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %5718 to i64*
  %5719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5720 = getelementptr inbounds %struct.GPR, %struct.GPR* %5719, i32 0, i32 1
  %5721 = getelementptr inbounds %struct.Reg, %struct.Reg* %5720, i32 0, i32 0
  %EAX.i185 = bitcast %union.anon* %5721 to i32*
  %5722 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5723 = getelementptr inbounds %struct.GPR, %struct.GPR* %5722, i32 0, i32 5
  %5724 = getelementptr inbounds %struct.Reg, %struct.Reg* %5723, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %5724 to i64*
  %5725 = load i64, i64* %RCX.i186
  %5726 = add i64 %5725, 400
  %5727 = load i32, i32* %EAX.i185
  %5728 = zext i32 %5727 to i64
  %5729 = load i64, i64* %PC.i184
  %5730 = add i64 %5729, 6
  store i64 %5730, i64* %PC.i184
  %5731 = inttoptr i64 %5726 to i32*
  store i32 %5727, i32* %5731
  store %struct.Memory* %loadMem_462b20, %struct.Memory** %MEMORY
  br label %block_.L_462b26

block_.L_462b26:                                  ; preds = %block_462ae1, %block_462ad0, %block_.L_462abd
  %loadMem_462b26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5733 = getelementptr inbounds %struct.GPR, %struct.GPR* %5732, i32 0, i32 33
  %5734 = getelementptr inbounds %struct.Reg, %struct.Reg* %5733, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %5734 to i64*
  %5735 = load i64, i64* %PC.i183
  %5736 = add i64 %5735, 5
  %5737 = load i64, i64* %PC.i183
  %5738 = add i64 %5737, 5
  store i64 %5738, i64* %PC.i183
  %5739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5736, i64* %5739, align 8
  store %struct.Memory* %loadMem_462b26, %struct.Memory** %MEMORY
  br label %block_.L_462b2b

block_.L_462b2b:                                  ; preds = %block_.L_462b26
  %loadMem_462b2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5741 = getelementptr inbounds %struct.GPR, %struct.GPR* %5740, i32 0, i32 33
  %5742 = getelementptr inbounds %struct.Reg, %struct.Reg* %5741, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %5742 to i64*
  %5743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5744 = getelementptr inbounds %struct.GPR, %struct.GPR* %5743, i32 0, i32 1
  %5745 = getelementptr inbounds %struct.Reg, %struct.Reg* %5744, i32 0, i32 0
  %RAX.i181 = bitcast %union.anon* %5745 to i64*
  %5746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5747 = getelementptr inbounds %struct.GPR, %struct.GPR* %5746, i32 0, i32 15
  %5748 = getelementptr inbounds %struct.Reg, %struct.Reg* %5747, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %5748 to i64*
  %5749 = load i64, i64* %RBP.i182
  %5750 = sub i64 %5749, 56
  %5751 = load i64, i64* %PC.i180
  %5752 = add i64 %5751, 3
  store i64 %5752, i64* %PC.i180
  %5753 = inttoptr i64 %5750 to i32*
  %5754 = load i32, i32* %5753
  %5755 = zext i32 %5754 to i64
  store i64 %5755, i64* %RAX.i181, align 8
  store %struct.Memory* %loadMem_462b2b, %struct.Memory** %MEMORY
  %loadMem_462b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5757 = getelementptr inbounds %struct.GPR, %struct.GPR* %5756, i32 0, i32 33
  %5758 = getelementptr inbounds %struct.Reg, %struct.Reg* %5757, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %5758 to i64*
  %5759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5760 = getelementptr inbounds %struct.GPR, %struct.GPR* %5759, i32 0, i32 1
  %5761 = getelementptr inbounds %struct.Reg, %struct.Reg* %5760, i32 0, i32 0
  %RAX.i178 = bitcast %union.anon* %5761 to i64*
  %5762 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5763 = getelementptr inbounds %struct.GPR, %struct.GPR* %5762, i32 0, i32 15
  %5764 = getelementptr inbounds %struct.Reg, %struct.Reg* %5763, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %5764 to i64*
  %5765 = load i64, i64* %RAX.i178
  %5766 = load i64, i64* %RBP.i179
  %5767 = sub i64 %5766, 48
  %5768 = load i64, i64* %PC.i177
  %5769 = add i64 %5768, 3
  store i64 %5769, i64* %PC.i177
  %5770 = trunc i64 %5765 to i32
  %5771 = inttoptr i64 %5767 to i32*
  %5772 = load i32, i32* %5771
  %5773 = add i32 %5772, %5770
  %5774 = zext i32 %5773 to i64
  store i64 %5774, i64* %RAX.i178, align 8
  %5775 = icmp ult i32 %5773, %5770
  %5776 = icmp ult i32 %5773, %5772
  %5777 = or i1 %5775, %5776
  %5778 = zext i1 %5777 to i8
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5778, i8* %5779, align 1
  %5780 = and i32 %5773, 255
  %5781 = call i32 @llvm.ctpop.i32(i32 %5780)
  %5782 = trunc i32 %5781 to i8
  %5783 = and i8 %5782, 1
  %5784 = xor i8 %5783, 1
  %5785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5784, i8* %5785, align 1
  %5786 = xor i32 %5772, %5770
  %5787 = xor i32 %5786, %5773
  %5788 = lshr i32 %5787, 4
  %5789 = trunc i32 %5788 to i8
  %5790 = and i8 %5789, 1
  %5791 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5790, i8* %5791, align 1
  %5792 = icmp eq i32 %5773, 0
  %5793 = zext i1 %5792 to i8
  %5794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5793, i8* %5794, align 1
  %5795 = lshr i32 %5773, 31
  %5796 = trunc i32 %5795 to i8
  %5797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5796, i8* %5797, align 1
  %5798 = lshr i32 %5770, 31
  %5799 = lshr i32 %5772, 31
  %5800 = xor i32 %5795, %5798
  %5801 = xor i32 %5795, %5799
  %5802 = add i32 %5800, %5801
  %5803 = icmp eq i32 %5802, 2
  %5804 = zext i1 %5803 to i8
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5804, i8* %5805, align 1
  store %struct.Memory* %loadMem_462b2e, %struct.Memory** %MEMORY
  %loadMem_462b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5807 = getelementptr inbounds %struct.GPR, %struct.GPR* %5806, i32 0, i32 33
  %5808 = getelementptr inbounds %struct.Reg, %struct.Reg* %5807, i32 0, i32 0
  %PC.i174 = bitcast %union.anon* %5808 to i64*
  %5809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5810 = getelementptr inbounds %struct.GPR, %struct.GPR* %5809, i32 0, i32 1
  %5811 = getelementptr inbounds %struct.Reg, %struct.Reg* %5810, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %5811 to i64*
  %5812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5813 = getelementptr inbounds %struct.GPR, %struct.GPR* %5812, i32 0, i32 15
  %5814 = getelementptr inbounds %struct.Reg, %struct.Reg* %5813, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %5814 to i64*
  %5815 = load i64, i64* %RAX.i175
  %5816 = load i64, i64* %RBP.i176
  %5817 = sub i64 %5816, 52
  %5818 = load i64, i64* %PC.i174
  %5819 = add i64 %5818, 3
  store i64 %5819, i64* %PC.i174
  %5820 = trunc i64 %5815 to i32
  %5821 = inttoptr i64 %5817 to i32*
  %5822 = load i32, i32* %5821
  %5823 = add i32 %5822, %5820
  %5824 = zext i32 %5823 to i64
  store i64 %5824, i64* %RAX.i175, align 8
  %5825 = icmp ult i32 %5823, %5820
  %5826 = icmp ult i32 %5823, %5822
  %5827 = or i1 %5825, %5826
  %5828 = zext i1 %5827 to i8
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5828, i8* %5829, align 1
  %5830 = and i32 %5823, 255
  %5831 = call i32 @llvm.ctpop.i32(i32 %5830)
  %5832 = trunc i32 %5831 to i8
  %5833 = and i8 %5832, 1
  %5834 = xor i8 %5833, 1
  %5835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5834, i8* %5835, align 1
  %5836 = xor i32 %5822, %5820
  %5837 = xor i32 %5836, %5823
  %5838 = lshr i32 %5837, 4
  %5839 = trunc i32 %5838 to i8
  %5840 = and i8 %5839, 1
  %5841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5840, i8* %5841, align 1
  %5842 = icmp eq i32 %5823, 0
  %5843 = zext i1 %5842 to i8
  %5844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5843, i8* %5844, align 1
  %5845 = lshr i32 %5823, 31
  %5846 = trunc i32 %5845 to i8
  %5847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5846, i8* %5847, align 1
  %5848 = lshr i32 %5820, 31
  %5849 = lshr i32 %5822, 31
  %5850 = xor i32 %5845, %5848
  %5851 = xor i32 %5845, %5849
  %5852 = add i32 %5850, %5851
  %5853 = icmp eq i32 %5852, 2
  %5854 = zext i1 %5853 to i8
  %5855 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5854, i8* %5855, align 1
  store %struct.Memory* %loadMem_462b31, %struct.Memory** %MEMORY
  %loadMem_462b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5857 = getelementptr inbounds %struct.GPR, %struct.GPR* %5856, i32 0, i32 33
  %5858 = getelementptr inbounds %struct.Reg, %struct.Reg* %5857, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %5858 to i64*
  %5859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5860 = getelementptr inbounds %struct.GPR, %struct.GPR* %5859, i32 0, i32 1
  %5861 = getelementptr inbounds %struct.Reg, %struct.Reg* %5860, i32 0, i32 0
  %EAX.i172 = bitcast %union.anon* %5861 to i32*
  %5862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5863 = getelementptr inbounds %struct.GPR, %struct.GPR* %5862, i32 0, i32 5
  %5864 = getelementptr inbounds %struct.Reg, %struct.Reg* %5863, i32 0, i32 0
  %RCX.i173 = bitcast %union.anon* %5864 to i64*
  %5865 = load i32, i32* %EAX.i172
  %5866 = zext i32 %5865 to i64
  %5867 = load i64, i64* %PC.i171
  %5868 = add i64 %5867, 3
  store i64 %5868, i64* %PC.i171
  %5869 = shl i64 %5866, 32
  %5870 = ashr exact i64 %5869, 32
  store i64 %5870, i64* %RCX.i173, align 8
  store %struct.Memory* %loadMem_462b34, %struct.Memory** %MEMORY
  %loadMem_462b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5872 = getelementptr inbounds %struct.GPR, %struct.GPR* %5871, i32 0, i32 33
  %5873 = getelementptr inbounds %struct.Reg, %struct.Reg* %5872, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %5873 to i64*
  %5874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5875 = getelementptr inbounds %struct.GPR, %struct.GPR* %5874, i32 0, i32 1
  %5876 = getelementptr inbounds %struct.Reg, %struct.Reg* %5875, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %5876 to i64*
  %5877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5878 = getelementptr inbounds %struct.GPR, %struct.GPR* %5877, i32 0, i32 5
  %5879 = getelementptr inbounds %struct.Reg, %struct.Reg* %5878, i32 0, i32 0
  %RCX.i170 = bitcast %union.anon* %5879 to i64*
  %5880 = load i64, i64* %RCX.i170
  %5881 = add i64 %5880, 12099168
  %5882 = load i64, i64* %PC.i168
  %5883 = add i64 %5882, 8
  store i64 %5883, i64* %PC.i168
  %5884 = inttoptr i64 %5881 to i8*
  %5885 = load i8, i8* %5884
  %5886 = zext i8 %5885 to i64
  store i64 %5886, i64* %RAX.i169, align 8
  store %struct.Memory* %loadMem_462b37, %struct.Memory** %MEMORY
  %loadMem_462b3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5888 = getelementptr inbounds %struct.GPR, %struct.GPR* %5887, i32 0, i32 33
  %5889 = getelementptr inbounds %struct.Reg, %struct.Reg* %5888, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %5889 to i64*
  %5890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5891 = getelementptr inbounds %struct.GPR, %struct.GPR* %5890, i32 0, i32 1
  %5892 = getelementptr inbounds %struct.Reg, %struct.Reg* %5891, i32 0, i32 0
  %EAX.i167 = bitcast %union.anon* %5892 to i32*
  %5893 = load i32, i32* %EAX.i167
  %5894 = zext i32 %5893 to i64
  %5895 = load i64, i64* %PC.i166
  %5896 = add i64 %5895, 3
  store i64 %5896, i64* %PC.i166
  %5897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5897, align 1
  %5898 = and i32 %5893, 255
  %5899 = call i32 @llvm.ctpop.i32(i32 %5898)
  %5900 = trunc i32 %5899 to i8
  %5901 = and i8 %5900, 1
  %5902 = xor i8 %5901, 1
  %5903 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5902, i8* %5903, align 1
  %5904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5904, align 1
  %5905 = icmp eq i32 %5893, 0
  %5906 = zext i1 %5905 to i8
  %5907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5906, i8* %5907, align 1
  %5908 = lshr i32 %5893, 31
  %5909 = trunc i32 %5908 to i8
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5909, i8* %5910, align 1
  %5911 = lshr i32 %5893, 31
  %5912 = xor i32 %5908, %5911
  %5913 = add i32 %5912, %5911
  %5914 = icmp eq i32 %5913, 2
  %5915 = zext i1 %5914 to i8
  %5916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5915, i8* %5916, align 1
  store %struct.Memory* %loadMem_462b3f, %struct.Memory** %MEMORY
  %loadMem_462b42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5918 = getelementptr inbounds %struct.GPR, %struct.GPR* %5917, i32 0, i32 33
  %5919 = getelementptr inbounds %struct.Reg, %struct.Reg* %5918, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %5919 to i64*
  %5920 = load i64, i64* %PC.i165
  %5921 = add i64 %5920, 254
  %5922 = load i64, i64* %PC.i165
  %5923 = add i64 %5922, 6
  %5924 = load i64, i64* %PC.i165
  %5925 = add i64 %5924, 6
  store i64 %5925, i64* %PC.i165
  %5926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5927 = load i8, i8* %5926, align 1
  %5928 = icmp eq i8 %5927, 0
  %5929 = zext i1 %5928 to i8
  store i8 %5929, i8* %BRANCH_TAKEN, align 1
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5931 = select i1 %5928, i64 %5921, i64 %5923
  store i64 %5931, i64* %5930, align 8
  store %struct.Memory* %loadMem_462b42, %struct.Memory** %MEMORY
  %loadBr_462b42 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462b42 = icmp eq i8 %loadBr_462b42, 1
  br i1 %cmpBr_462b42, label %block_.L_462c40, label %block_462b48

block_462b48:                                     ; preds = %block_.L_462b2b
  %loadMem_462b48 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5933 = getelementptr inbounds %struct.GPR, %struct.GPR* %5932, i32 0, i32 33
  %5934 = getelementptr inbounds %struct.Reg, %struct.Reg* %5933, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %5934 to i64*
  %5935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5936 = getelementptr inbounds %struct.GPR, %struct.GPR* %5935, i32 0, i32 15
  %5937 = getelementptr inbounds %struct.Reg, %struct.Reg* %5936, i32 0, i32 0
  %RBP.i164 = bitcast %union.anon* %5937 to i64*
  %5938 = load i64, i64* %RBP.i164
  %5939 = sub i64 %5938, 20
  %5940 = load i64, i64* %PC.i163
  %5941 = add i64 %5940, 4
  store i64 %5941, i64* %PC.i163
  %5942 = inttoptr i64 %5939 to i32*
  %5943 = load i32, i32* %5942
  %5944 = sub i32 %5943, 2
  %5945 = icmp ult i32 %5943, 2
  %5946 = zext i1 %5945 to i8
  %5947 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5946, i8* %5947, align 1
  %5948 = and i32 %5944, 255
  %5949 = call i32 @llvm.ctpop.i32(i32 %5948)
  %5950 = trunc i32 %5949 to i8
  %5951 = and i8 %5950, 1
  %5952 = xor i8 %5951, 1
  %5953 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5952, i8* %5953, align 1
  %5954 = xor i32 %5943, 2
  %5955 = xor i32 %5954, %5944
  %5956 = lshr i32 %5955, 4
  %5957 = trunc i32 %5956 to i8
  %5958 = and i8 %5957, 1
  %5959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5958, i8* %5959, align 1
  %5960 = icmp eq i32 %5944, 0
  %5961 = zext i1 %5960 to i8
  %5962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5961, i8* %5962, align 1
  %5963 = lshr i32 %5944, 31
  %5964 = trunc i32 %5963 to i8
  %5965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5964, i8* %5965, align 1
  %5966 = lshr i32 %5943, 31
  %5967 = xor i32 %5963, %5966
  %5968 = add i32 %5967, %5966
  %5969 = icmp eq i32 %5968, 2
  %5970 = zext i1 %5969 to i8
  %5971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5970, i8* %5971, align 1
  store %struct.Memory* %loadMem_462b48, %struct.Memory** %MEMORY
  %loadMem_462b4c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5973 = getelementptr inbounds %struct.GPR, %struct.GPR* %5972, i32 0, i32 33
  %5974 = getelementptr inbounds %struct.Reg, %struct.Reg* %5973, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %5974 to i64*
  %5975 = load i64, i64* %PC.i162
  %5976 = add i64 %5975, 18
  %5977 = load i64, i64* %PC.i162
  %5978 = add i64 %5977, 6
  %5979 = load i64, i64* %PC.i162
  %5980 = add i64 %5979, 6
  store i64 %5980, i64* %PC.i162
  %5981 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5982 = load i8, i8* %5981, align 1
  %5983 = icmp eq i8 %5982, 0
  %5984 = zext i1 %5983 to i8
  store i8 %5984, i8* %BRANCH_TAKEN, align 1
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5986 = select i1 %5983, i64 %5976, i64 %5978
  store i64 %5986, i64* %5985, align 8
  store %struct.Memory* %loadMem_462b4c, %struct.Memory** %MEMORY
  %loadBr_462b4c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462b4c = icmp eq i8 %loadBr_462b4c, 1
  br i1 %cmpBr_462b4c, label %block_.L_462b5e, label %block_462b52

block_462b52:                                     ; preds = %block_462b48
  %loadMem_462b52 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5988 = getelementptr inbounds %struct.GPR, %struct.GPR* %5987, i32 0, i32 33
  %5989 = getelementptr inbounds %struct.Reg, %struct.Reg* %5988, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %5989 to i64*
  %5990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5991 = getelementptr inbounds %struct.GPR, %struct.GPR* %5990, i32 0, i32 1
  %5992 = getelementptr inbounds %struct.Reg, %struct.Reg* %5991, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %5992 to i64*
  %5993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5994 = getelementptr inbounds %struct.GPR, %struct.GPR* %5993, i32 0, i32 15
  %5995 = getelementptr inbounds %struct.Reg, %struct.Reg* %5994, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %5995 to i64*
  %5996 = load i64, i64* %RBP.i161
  %5997 = sub i64 %5996, 40
  %5998 = load i64, i64* %PC.i159
  %5999 = add i64 %5998, 3
  store i64 %5999, i64* %PC.i159
  %6000 = inttoptr i64 %5997 to i32*
  %6001 = load i32, i32* %6000
  %6002 = zext i32 %6001 to i64
  store i64 %6002, i64* %RAX.i160, align 8
  store %struct.Memory* %loadMem_462b52, %struct.Memory** %MEMORY
  %loadMem_462b55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6004 = getelementptr inbounds %struct.GPR, %struct.GPR* %6003, i32 0, i32 33
  %6005 = getelementptr inbounds %struct.Reg, %struct.Reg* %6004, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6005 to i64*
  %6006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6007 = getelementptr inbounds %struct.GPR, %struct.GPR* %6006, i32 0, i32 1
  %6008 = getelementptr inbounds %struct.Reg, %struct.Reg* %6007, i32 0, i32 0
  %EAX.i157 = bitcast %union.anon* %6008 to i32*
  %6009 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6010 = getelementptr inbounds %struct.GPR, %struct.GPR* %6009, i32 0, i32 15
  %6011 = getelementptr inbounds %struct.Reg, %struct.Reg* %6010, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %6011 to i64*
  %6012 = load i32, i32* %EAX.i157
  %6013 = zext i32 %6012 to i64
  %6014 = load i64, i64* %RBP.i158
  %6015 = sub i64 %6014, 36
  %6016 = load i64, i64* %PC.i156
  %6017 = add i64 %6016, 3
  store i64 %6017, i64* %PC.i156
  %6018 = inttoptr i64 %6015 to i32*
  %6019 = load i32, i32* %6018
  %6020 = sub i32 %6012, %6019
  %6021 = icmp ult i32 %6012, %6019
  %6022 = zext i1 %6021 to i8
  %6023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6022, i8* %6023, align 1
  %6024 = and i32 %6020, 255
  %6025 = call i32 @llvm.ctpop.i32(i32 %6024)
  %6026 = trunc i32 %6025 to i8
  %6027 = and i8 %6026, 1
  %6028 = xor i8 %6027, 1
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6028, i8* %6029, align 1
  %6030 = xor i32 %6019, %6012
  %6031 = xor i32 %6030, %6020
  %6032 = lshr i32 %6031, 4
  %6033 = trunc i32 %6032 to i8
  %6034 = and i8 %6033, 1
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6034, i8* %6035, align 1
  %6036 = icmp eq i32 %6020, 0
  %6037 = zext i1 %6036 to i8
  %6038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6037, i8* %6038, align 1
  %6039 = lshr i32 %6020, 31
  %6040 = trunc i32 %6039 to i8
  %6041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6040, i8* %6041, align 1
  %6042 = lshr i32 %6012, 31
  %6043 = lshr i32 %6019, 31
  %6044 = xor i32 %6043, %6042
  %6045 = xor i32 %6039, %6042
  %6046 = add i32 %6045, %6044
  %6047 = icmp eq i32 %6046, 2
  %6048 = zext i1 %6047 to i8
  %6049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6048, i8* %6049, align 1
  store %struct.Memory* %loadMem_462b55, %struct.Memory** %MEMORY
  %loadMem_462b58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 33
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %6052 to i64*
  %6053 = load i64, i64* %PC.i155
  %6054 = add i64 %6053, 232
  %6055 = load i64, i64* %PC.i155
  %6056 = add i64 %6055, 6
  %6057 = load i64, i64* %PC.i155
  %6058 = add i64 %6057, 6
  store i64 %6058, i64* %PC.i155
  %6059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6060 = load i8, i8* %6059, align 1
  store i8 %6060, i8* %BRANCH_TAKEN, align 1
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6062 = icmp ne i8 %6060, 0
  %6063 = select i1 %6062, i64 %6054, i64 %6056
  store i64 %6063, i64* %6061, align 8
  store %struct.Memory* %loadMem_462b58, %struct.Memory** %MEMORY
  %loadBr_462b58 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462b58 = icmp eq i8 %loadBr_462b58, 1
  br i1 %cmpBr_462b58, label %block_.L_462c40, label %block_.L_462b5e

block_.L_462b5e:                                  ; preds = %block_462b52, %block_462b48
  %loadMem_462b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 33
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %6066 to i64*
  %6067 = load i64, i64* %PC.i154
  %6068 = add i64 %6067, 5
  %6069 = load i64, i64* %PC.i154
  %6070 = add i64 %6069, 5
  store i64 %6070, i64* %PC.i154
  %6071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6068, i64* %6071, align 8
  store %struct.Memory* %loadMem_462b5e, %struct.Memory** %MEMORY
  br label %block_.L_462b63

block_.L_462b63:                                  ; preds = %block_.L_462b5e
  %loadMem_462b63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6072 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6073 = getelementptr inbounds %struct.GPR, %struct.GPR* %6072, i32 0, i32 33
  %6074 = getelementptr inbounds %struct.Reg, %struct.Reg* %6073, i32 0, i32 0
  %PC.i152 = bitcast %union.anon* %6074 to i64*
  %6075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6076 = getelementptr inbounds %struct.GPR, %struct.GPR* %6075, i32 0, i32 15
  %6077 = getelementptr inbounds %struct.Reg, %struct.Reg* %6076, i32 0, i32 0
  %RBP.i153 = bitcast %union.anon* %6077 to i64*
  %6078 = load i64, i64* %RBP.i153
  %6079 = sub i64 %6078, 92
  %6080 = load i64, i64* %PC.i152
  %6081 = add i64 %6080, 7
  store i64 %6081, i64* %PC.i152
  %6082 = inttoptr i64 %6079 to i32*
  store i32 0, i32* %6082
  store %struct.Memory* %loadMem_462b63, %struct.Memory** %MEMORY
  br label %block_.L_462b6a

block_.L_462b6a:                                  ; preds = %block_.L_462bbc, %block_.L_462b63
  %loadMem_462b6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6083 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6084 = getelementptr inbounds %struct.GPR, %struct.GPR* %6083, i32 0, i32 33
  %6085 = getelementptr inbounds %struct.Reg, %struct.Reg* %6084, i32 0, i32 0
  %PC.i149 = bitcast %union.anon* %6085 to i64*
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 1
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %RAX.i150 = bitcast %union.anon* %6088 to i64*
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 15
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %RBP.i151 = bitcast %union.anon* %6091 to i64*
  %6092 = load i64, i64* %RBP.i151
  %6093 = sub i64 %6092, 92
  %6094 = load i64, i64* %PC.i149
  %6095 = add i64 %6094, 3
  store i64 %6095, i64* %PC.i149
  %6096 = inttoptr i64 %6093 to i32*
  %6097 = load i32, i32* %6096
  %6098 = zext i32 %6097 to i64
  store i64 %6098, i64* %RAX.i150, align 8
  store %struct.Memory* %loadMem_462b6a, %struct.Memory** %MEMORY
  %loadMem_462b6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6099 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6100 = getelementptr inbounds %struct.GPR, %struct.GPR* %6099, i32 0, i32 33
  %6101 = getelementptr inbounds %struct.Reg, %struct.Reg* %6100, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %6101 to i64*
  %6102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6103 = getelementptr inbounds %struct.GPR, %struct.GPR* %6102, i32 0, i32 5
  %6104 = getelementptr inbounds %struct.Reg, %struct.Reg* %6103, i32 0, i32 0
  %RCX.i147 = bitcast %union.anon* %6104 to i64*
  %6105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6106 = getelementptr inbounds %struct.GPR, %struct.GPR* %6105, i32 0, i32 15
  %6107 = getelementptr inbounds %struct.Reg, %struct.Reg* %6106, i32 0, i32 0
  %RBP.i148 = bitcast %union.anon* %6107 to i64*
  %6108 = load i64, i64* %RBP.i148
  %6109 = sub i64 %6108, 32
  %6110 = load i64, i64* %PC.i146
  %6111 = add i64 %6110, 4
  store i64 %6111, i64* %PC.i146
  %6112 = inttoptr i64 %6109 to i64*
  %6113 = load i64, i64* %6112
  store i64 %6113, i64* %RCX.i147, align 8
  store %struct.Memory* %loadMem_462b6d, %struct.Memory** %MEMORY
  %loadMem_462b71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6114 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6115 = getelementptr inbounds %struct.GPR, %struct.GPR* %6114, i32 0, i32 33
  %6116 = getelementptr inbounds %struct.Reg, %struct.Reg* %6115, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6116 to i64*
  %6117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6118 = getelementptr inbounds %struct.GPR, %struct.GPR* %6117, i32 0, i32 1
  %6119 = getelementptr inbounds %struct.Reg, %struct.Reg* %6118, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %6119 to i32*
  %6120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6121 = getelementptr inbounds %struct.GPR, %struct.GPR* %6120, i32 0, i32 5
  %6122 = getelementptr inbounds %struct.Reg, %struct.Reg* %6121, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %6122 to i64*
  %6123 = load i32, i32* %EAX.i144
  %6124 = zext i32 %6123 to i64
  %6125 = load i64, i64* %RCX.i145
  %6126 = add i64 %6125, 400
  %6127 = load i64, i64* %PC.i143
  %6128 = add i64 %6127, 6
  store i64 %6128, i64* %PC.i143
  %6129 = inttoptr i64 %6126 to i32*
  %6130 = load i32, i32* %6129
  %6131 = sub i32 %6123, %6130
  %6132 = icmp ult i32 %6123, %6130
  %6133 = zext i1 %6132 to i8
  %6134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6133, i8* %6134, align 1
  %6135 = and i32 %6131, 255
  %6136 = call i32 @llvm.ctpop.i32(i32 %6135)
  %6137 = trunc i32 %6136 to i8
  %6138 = and i8 %6137, 1
  %6139 = xor i8 %6138, 1
  %6140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6139, i8* %6140, align 1
  %6141 = xor i32 %6130, %6123
  %6142 = xor i32 %6141, %6131
  %6143 = lshr i32 %6142, 4
  %6144 = trunc i32 %6143 to i8
  %6145 = and i8 %6144, 1
  %6146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6145, i8* %6146, align 1
  %6147 = icmp eq i32 %6131, 0
  %6148 = zext i1 %6147 to i8
  %6149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6148, i8* %6149, align 1
  %6150 = lshr i32 %6131, 31
  %6151 = trunc i32 %6150 to i8
  %6152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6151, i8* %6152, align 1
  %6153 = lshr i32 %6123, 31
  %6154 = lshr i32 %6130, 31
  %6155 = xor i32 %6154, %6153
  %6156 = xor i32 %6150, %6153
  %6157 = add i32 %6156, %6155
  %6158 = icmp eq i32 %6157, 2
  %6159 = zext i1 %6158 to i8
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6159, i8* %6160, align 1
  store %struct.Memory* %loadMem_462b71, %struct.Memory** %MEMORY
  %loadMem_462b77 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6162 = getelementptr inbounds %struct.GPR, %struct.GPR* %6161, i32 0, i32 33
  %6163 = getelementptr inbounds %struct.Reg, %struct.Reg* %6162, i32 0, i32 0
  %PC.i142 = bitcast %union.anon* %6163 to i64*
  %6164 = load i64, i64* %PC.i142
  %6165 = add i64 %6164, 83
  %6166 = load i64, i64* %PC.i142
  %6167 = add i64 %6166, 6
  %6168 = load i64, i64* %PC.i142
  %6169 = add i64 %6168, 6
  store i64 %6169, i64* %PC.i142
  %6170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6171 = load i8, i8* %6170, align 1
  %6172 = icmp ne i8 %6171, 0
  %6173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6174 = load i8, i8* %6173, align 1
  %6175 = icmp ne i8 %6174, 0
  %6176 = xor i1 %6172, %6175
  %6177 = xor i1 %6176, true
  %6178 = zext i1 %6177 to i8
  store i8 %6178, i8* %BRANCH_TAKEN, align 1
  %6179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6180 = select i1 %6176, i64 %6167, i64 %6165
  store i64 %6180, i64* %6179, align 8
  store %struct.Memory* %loadMem_462b77, %struct.Memory** %MEMORY
  %loadBr_462b77 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462b77 = icmp eq i8 %loadBr_462b77, 1
  br i1 %cmpBr_462b77, label %block_.L_462bca, label %block_462b7d

block_462b7d:                                     ; preds = %block_.L_462b6a
  %loadMem_462b7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6182 = getelementptr inbounds %struct.GPR, %struct.GPR* %6181, i32 0, i32 33
  %6183 = getelementptr inbounds %struct.Reg, %struct.Reg* %6182, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %6183 to i64*
  %6184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6185 = getelementptr inbounds %struct.GPR, %struct.GPR* %6184, i32 0, i32 1
  %6186 = getelementptr inbounds %struct.Reg, %struct.Reg* %6185, i32 0, i32 0
  %RAX.i140 = bitcast %union.anon* %6186 to i64*
  %6187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6188 = getelementptr inbounds %struct.GPR, %struct.GPR* %6187, i32 0, i32 15
  %6189 = getelementptr inbounds %struct.Reg, %struct.Reg* %6188, i32 0, i32 0
  %RBP.i141 = bitcast %union.anon* %6189 to i64*
  %6190 = load i64, i64* %RBP.i141
  %6191 = sub i64 %6190, 32
  %6192 = load i64, i64* %PC.i139
  %6193 = add i64 %6192, 4
  store i64 %6193, i64* %PC.i139
  %6194 = inttoptr i64 %6191 to i64*
  %6195 = load i64, i64* %6194
  store i64 %6195, i64* %RAX.i140, align 8
  store %struct.Memory* %loadMem_462b7d, %struct.Memory** %MEMORY
  %loadMem_462b81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6197 = getelementptr inbounds %struct.GPR, %struct.GPR* %6196, i32 0, i32 33
  %6198 = getelementptr inbounds %struct.Reg, %struct.Reg* %6197, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %6198 to i64*
  %6199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6200 = getelementptr inbounds %struct.GPR, %struct.GPR* %6199, i32 0, i32 5
  %6201 = getelementptr inbounds %struct.Reg, %struct.Reg* %6200, i32 0, i32 0
  %RCX.i137 = bitcast %union.anon* %6201 to i64*
  %6202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6203 = getelementptr inbounds %struct.GPR, %struct.GPR* %6202, i32 0, i32 15
  %6204 = getelementptr inbounds %struct.Reg, %struct.Reg* %6203, i32 0, i32 0
  %RBP.i138 = bitcast %union.anon* %6204 to i64*
  %6205 = load i64, i64* %RBP.i138
  %6206 = sub i64 %6205, 92
  %6207 = load i64, i64* %PC.i136
  %6208 = add i64 %6207, 4
  store i64 %6208, i64* %PC.i136
  %6209 = inttoptr i64 %6206 to i32*
  %6210 = load i32, i32* %6209
  %6211 = sext i32 %6210 to i64
  store i64 %6211, i64* %RCX.i137, align 8
  store %struct.Memory* %loadMem_462b81, %struct.Memory** %MEMORY
  %loadMem_462b85 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6212 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6213 = getelementptr inbounds %struct.GPR, %struct.GPR* %6212, i32 0, i32 33
  %6214 = getelementptr inbounds %struct.Reg, %struct.Reg* %6213, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %6214 to i64*
  %6215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6216 = getelementptr inbounds %struct.GPR, %struct.GPR* %6215, i32 0, i32 1
  %6217 = getelementptr inbounds %struct.Reg, %struct.Reg* %6216, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %6217 to i64*
  %6218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6219 = getelementptr inbounds %struct.GPR, %struct.GPR* %6218, i32 0, i32 5
  %6220 = getelementptr inbounds %struct.Reg, %struct.Reg* %6219, i32 0, i32 0
  %RCX.i134 = bitcast %union.anon* %6220 to i64*
  %6221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6222 = getelementptr inbounds %struct.GPR, %struct.GPR* %6221, i32 0, i32 7
  %6223 = getelementptr inbounds %struct.Reg, %struct.Reg* %6222, i32 0, i32 0
  %RDX.i135 = bitcast %union.anon* %6223 to i64*
  %6224 = load i64, i64* %RAX.i133
  %6225 = load i64, i64* %RCX.i134
  %6226 = mul i64 %6225, 4
  %6227 = add i64 %6226, %6224
  %6228 = load i64, i64* %PC.i132
  %6229 = add i64 %6228, 3
  store i64 %6229, i64* %PC.i132
  %6230 = inttoptr i64 %6227 to i32*
  %6231 = load i32, i32* %6230
  %6232 = zext i32 %6231 to i64
  store i64 %6232, i64* %RDX.i135, align 8
  store %struct.Memory* %loadMem_462b85, %struct.Memory** %MEMORY
  %loadMem_462b88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6234 = getelementptr inbounds %struct.GPR, %struct.GPR* %6233, i32 0, i32 33
  %6235 = getelementptr inbounds %struct.Reg, %struct.Reg* %6234, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %6235 to i64*
  %6236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6237 = getelementptr inbounds %struct.GPR, %struct.GPR* %6236, i32 0, i32 9
  %6238 = getelementptr inbounds %struct.Reg, %struct.Reg* %6237, i32 0, i32 0
  %RSI.i130 = bitcast %union.anon* %6238 to i64*
  %6239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6240 = getelementptr inbounds %struct.GPR, %struct.GPR* %6239, i32 0, i32 15
  %6241 = getelementptr inbounds %struct.Reg, %struct.Reg* %6240, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %6241 to i64*
  %6242 = load i64, i64* %RBP.i131
  %6243 = sub i64 %6242, 56
  %6244 = load i64, i64* %PC.i129
  %6245 = add i64 %6244, 3
  store i64 %6245, i64* %PC.i129
  %6246 = inttoptr i64 %6243 to i32*
  %6247 = load i32, i32* %6246
  %6248 = zext i32 %6247 to i64
  store i64 %6248, i64* %RSI.i130, align 8
  store %struct.Memory* %loadMem_462b88, %struct.Memory** %MEMORY
  %loadMem_462b8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6250 = getelementptr inbounds %struct.GPR, %struct.GPR* %6249, i32 0, i32 33
  %6251 = getelementptr inbounds %struct.Reg, %struct.Reg* %6250, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6251 to i64*
  %6252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6253 = getelementptr inbounds %struct.GPR, %struct.GPR* %6252, i32 0, i32 9
  %6254 = getelementptr inbounds %struct.Reg, %struct.Reg* %6253, i32 0, i32 0
  %RSI.i127 = bitcast %union.anon* %6254 to i64*
  %6255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6256 = getelementptr inbounds %struct.GPR, %struct.GPR* %6255, i32 0, i32 15
  %6257 = getelementptr inbounds %struct.Reg, %struct.Reg* %6256, i32 0, i32 0
  %RBP.i128 = bitcast %union.anon* %6257 to i64*
  %6258 = load i64, i64* %RSI.i127
  %6259 = load i64, i64* %RBP.i128
  %6260 = sub i64 %6259, 48
  %6261 = load i64, i64* %PC.i126
  %6262 = add i64 %6261, 3
  store i64 %6262, i64* %PC.i126
  %6263 = trunc i64 %6258 to i32
  %6264 = inttoptr i64 %6260 to i32*
  %6265 = load i32, i32* %6264
  %6266 = add i32 %6265, %6263
  %6267 = zext i32 %6266 to i64
  store i64 %6267, i64* %RSI.i127, align 8
  %6268 = icmp ult i32 %6266, %6263
  %6269 = icmp ult i32 %6266, %6265
  %6270 = or i1 %6268, %6269
  %6271 = zext i1 %6270 to i8
  %6272 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6271, i8* %6272, align 1
  %6273 = and i32 %6266, 255
  %6274 = call i32 @llvm.ctpop.i32(i32 %6273)
  %6275 = trunc i32 %6274 to i8
  %6276 = and i8 %6275, 1
  %6277 = xor i8 %6276, 1
  %6278 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6277, i8* %6278, align 1
  %6279 = xor i32 %6265, %6263
  %6280 = xor i32 %6279, %6266
  %6281 = lshr i32 %6280, 4
  %6282 = trunc i32 %6281 to i8
  %6283 = and i8 %6282, 1
  %6284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6283, i8* %6284, align 1
  %6285 = icmp eq i32 %6266, 0
  %6286 = zext i1 %6285 to i8
  %6287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6286, i8* %6287, align 1
  %6288 = lshr i32 %6266, 31
  %6289 = trunc i32 %6288 to i8
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6289, i8* %6290, align 1
  %6291 = lshr i32 %6263, 31
  %6292 = lshr i32 %6265, 31
  %6293 = xor i32 %6288, %6291
  %6294 = xor i32 %6288, %6292
  %6295 = add i32 %6293, %6294
  %6296 = icmp eq i32 %6295, 2
  %6297 = zext i1 %6296 to i8
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6297, i8* %6298, align 1
  store %struct.Memory* %loadMem_462b8b, %struct.Memory** %MEMORY
  %loadMem_462b8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6300 = getelementptr inbounds %struct.GPR, %struct.GPR* %6299, i32 0, i32 33
  %6301 = getelementptr inbounds %struct.Reg, %struct.Reg* %6300, i32 0, i32 0
  %PC.i124 = bitcast %union.anon* %6301 to i64*
  %6302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6303 = getelementptr inbounds %struct.GPR, %struct.GPR* %6302, i32 0, i32 9
  %6304 = getelementptr inbounds %struct.Reg, %struct.Reg* %6303, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %6304 to i64*
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 15
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %6307 to i64*
  %6308 = load i64, i64* %RSI.i
  %6309 = load i64, i64* %RBP.i125
  %6310 = sub i64 %6309, 52
  %6311 = load i64, i64* %PC.i124
  %6312 = add i64 %6311, 3
  store i64 %6312, i64* %PC.i124
  %6313 = trunc i64 %6308 to i32
  %6314 = inttoptr i64 %6310 to i32*
  %6315 = load i32, i32* %6314
  %6316 = add i32 %6315, %6313
  %6317 = zext i32 %6316 to i64
  store i64 %6317, i64* %RSI.i, align 8
  %6318 = icmp ult i32 %6316, %6313
  %6319 = icmp ult i32 %6316, %6315
  %6320 = or i1 %6318, %6319
  %6321 = zext i1 %6320 to i8
  %6322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6321, i8* %6322, align 1
  %6323 = and i32 %6316, 255
  %6324 = call i32 @llvm.ctpop.i32(i32 %6323)
  %6325 = trunc i32 %6324 to i8
  %6326 = and i8 %6325, 1
  %6327 = xor i8 %6326, 1
  %6328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6327, i8* %6328, align 1
  %6329 = xor i32 %6315, %6313
  %6330 = xor i32 %6329, %6316
  %6331 = lshr i32 %6330, 4
  %6332 = trunc i32 %6331 to i8
  %6333 = and i8 %6332, 1
  %6334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6333, i8* %6334, align 1
  %6335 = icmp eq i32 %6316, 0
  %6336 = zext i1 %6335 to i8
  %6337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6336, i8* %6337, align 1
  %6338 = lshr i32 %6316, 31
  %6339 = trunc i32 %6338 to i8
  %6340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6339, i8* %6340, align 1
  %6341 = lshr i32 %6313, 31
  %6342 = lshr i32 %6315, 31
  %6343 = xor i32 %6338, %6341
  %6344 = xor i32 %6338, %6342
  %6345 = add i32 %6343, %6344
  %6346 = icmp eq i32 %6345, 2
  %6347 = zext i1 %6346 to i8
  %6348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6347, i8* %6348, align 1
  store %struct.Memory* %loadMem_462b8e, %struct.Memory** %MEMORY
  %loadMem_462b91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6350 = getelementptr inbounds %struct.GPR, %struct.GPR* %6349, i32 0, i32 33
  %6351 = getelementptr inbounds %struct.Reg, %struct.Reg* %6350, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %6351 to i64*
  %6352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6353 = getelementptr inbounds %struct.GPR, %struct.GPR* %6352, i32 0, i32 7
  %6354 = getelementptr inbounds %struct.Reg, %struct.Reg* %6353, i32 0, i32 0
  %EDX.i123 = bitcast %union.anon* %6354 to i32*
  %6355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6356 = getelementptr inbounds %struct.GPR, %struct.GPR* %6355, i32 0, i32 9
  %6357 = getelementptr inbounds %struct.Reg, %struct.Reg* %6356, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %6357 to i32*
  %6358 = load i32, i32* %EDX.i123
  %6359 = zext i32 %6358 to i64
  %6360 = load i32, i32* %ESI.i
  %6361 = zext i32 %6360 to i64
  %6362 = load i64, i64* %PC.i122
  %6363 = add i64 %6362, 2
  store i64 %6363, i64* %PC.i122
  %6364 = sub i32 %6358, %6360
  %6365 = icmp ult i32 %6358, %6360
  %6366 = zext i1 %6365 to i8
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6366, i8* %6367, align 1
  %6368 = and i32 %6364, 255
  %6369 = call i32 @llvm.ctpop.i32(i32 %6368)
  %6370 = trunc i32 %6369 to i8
  %6371 = and i8 %6370, 1
  %6372 = xor i8 %6371, 1
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6372, i8* %6373, align 1
  %6374 = xor i64 %6361, %6359
  %6375 = trunc i64 %6374 to i32
  %6376 = xor i32 %6375, %6364
  %6377 = lshr i32 %6376, 4
  %6378 = trunc i32 %6377 to i8
  %6379 = and i8 %6378, 1
  %6380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6379, i8* %6380, align 1
  %6381 = icmp eq i32 %6364, 0
  %6382 = zext i1 %6381 to i8
  %6383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6382, i8* %6383, align 1
  %6384 = lshr i32 %6364, 31
  %6385 = trunc i32 %6384 to i8
  %6386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6385, i8* %6386, align 1
  %6387 = lshr i32 %6358, 31
  %6388 = lshr i32 %6360, 31
  %6389 = xor i32 %6388, %6387
  %6390 = xor i32 %6384, %6387
  %6391 = add i32 %6390, %6389
  %6392 = icmp eq i32 %6391, 2
  %6393 = zext i1 %6392 to i8
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6393, i8* %6394, align 1
  store %struct.Memory* %loadMem_462b91, %struct.Memory** %MEMORY
  %loadMem_462b93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6396 = getelementptr inbounds %struct.GPR, %struct.GPR* %6395, i32 0, i32 33
  %6397 = getelementptr inbounds %struct.Reg, %struct.Reg* %6396, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6397 to i64*
  %6398 = load i64, i64* %PC.i121
  %6399 = add i64 %6398, 36
  %6400 = load i64, i64* %PC.i121
  %6401 = add i64 %6400, 6
  %6402 = load i64, i64* %PC.i121
  %6403 = add i64 %6402, 6
  store i64 %6403, i64* %PC.i121
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6405 = load i8, i8* %6404, align 1
  %6406 = icmp eq i8 %6405, 0
  %6407 = zext i1 %6406 to i8
  store i8 %6407, i8* %BRANCH_TAKEN, align 1
  %6408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6409 = select i1 %6406, i64 %6399, i64 %6401
  store i64 %6409, i64* %6408, align 8
  store %struct.Memory* %loadMem_462b93, %struct.Memory** %MEMORY
  %loadBr_462b93 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462b93 = icmp eq i8 %loadBr_462b93, 1
  br i1 %cmpBr_462b93, label %block_.L_462bb7, label %block_462b99

block_462b99:                                     ; preds = %block_462b7d
  %loadMem_462b99 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6411 = getelementptr inbounds %struct.GPR, %struct.GPR* %6410, i32 0, i32 33
  %6412 = getelementptr inbounds %struct.Reg, %struct.Reg* %6411, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %6412 to i64*
  %6413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6414 = getelementptr inbounds %struct.GPR, %struct.GPR* %6413, i32 0, i32 1
  %6415 = getelementptr inbounds %struct.Reg, %struct.Reg* %6414, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %6415 to i64*
  %6416 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6417 = getelementptr inbounds %struct.GPR, %struct.GPR* %6416, i32 0, i32 15
  %6418 = getelementptr inbounds %struct.Reg, %struct.Reg* %6417, i32 0, i32 0
  %RBP.i120 = bitcast %union.anon* %6418 to i64*
  %6419 = load i64, i64* %RBP.i120
  %6420 = sub i64 %6419, 32
  %6421 = load i64, i64* %PC.i118
  %6422 = add i64 %6421, 4
  store i64 %6422, i64* %PC.i118
  %6423 = inttoptr i64 %6420 to i64*
  %6424 = load i64, i64* %6423
  store i64 %6424, i64* %RAX.i119, align 8
  store %struct.Memory* %loadMem_462b99, %struct.Memory** %MEMORY
  %loadMem_462b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6426 = getelementptr inbounds %struct.GPR, %struct.GPR* %6425, i32 0, i32 33
  %6427 = getelementptr inbounds %struct.Reg, %struct.Reg* %6426, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %6427 to i64*
  %6428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6429 = getelementptr inbounds %struct.GPR, %struct.GPR* %6428, i32 0, i32 5
  %6430 = getelementptr inbounds %struct.Reg, %struct.Reg* %6429, i32 0, i32 0
  %RCX.i116 = bitcast %union.anon* %6430 to i64*
  %6431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6432 = getelementptr inbounds %struct.GPR, %struct.GPR* %6431, i32 0, i32 15
  %6433 = getelementptr inbounds %struct.Reg, %struct.Reg* %6432, i32 0, i32 0
  %RBP.i117 = bitcast %union.anon* %6433 to i64*
  %6434 = load i64, i64* %RBP.i117
  %6435 = sub i64 %6434, 92
  %6436 = load i64, i64* %PC.i115
  %6437 = add i64 %6436, 4
  store i64 %6437, i64* %PC.i115
  %6438 = inttoptr i64 %6435 to i32*
  %6439 = load i32, i32* %6438
  %6440 = sext i32 %6439 to i64
  store i64 %6440, i64* %RCX.i116, align 8
  store %struct.Memory* %loadMem_462b9d, %struct.Memory** %MEMORY
  %loadMem_462ba1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6442 = getelementptr inbounds %struct.GPR, %struct.GPR* %6441, i32 0, i32 33
  %6443 = getelementptr inbounds %struct.Reg, %struct.Reg* %6442, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %6443 to i64*
  %6444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6445 = getelementptr inbounds %struct.GPR, %struct.GPR* %6444, i32 0, i32 1
  %6446 = getelementptr inbounds %struct.Reg, %struct.Reg* %6445, i32 0, i32 0
  %RAX.i112 = bitcast %union.anon* %6446 to i64*
  %6447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6448 = getelementptr inbounds %struct.GPR, %struct.GPR* %6447, i32 0, i32 5
  %6449 = getelementptr inbounds %struct.Reg, %struct.Reg* %6448, i32 0, i32 0
  %RCX.i113 = bitcast %union.anon* %6449 to i64*
  %6450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6451 = getelementptr inbounds %struct.GPR, %struct.GPR* %6450, i32 0, i32 7
  %6452 = getelementptr inbounds %struct.Reg, %struct.Reg* %6451, i32 0, i32 0
  %RDX.i114 = bitcast %union.anon* %6452 to i64*
  %6453 = load i64, i64* %RAX.i112
  %6454 = load i64, i64* %RCX.i113
  %6455 = mul i64 %6454, 4
  %6456 = add i64 %6453, 200
  %6457 = add i64 %6456, %6455
  %6458 = load i64, i64* %PC.i111
  %6459 = add i64 %6458, 7
  store i64 %6459, i64* %PC.i111
  %6460 = inttoptr i64 %6457 to i32*
  %6461 = load i32, i32* %6460
  %6462 = zext i32 %6461 to i64
  store i64 %6462, i64* %RDX.i114, align 8
  store %struct.Memory* %loadMem_462ba1, %struct.Memory** %MEMORY
  %loadMem_462ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6464 = getelementptr inbounds %struct.GPR, %struct.GPR* %6463, i32 0, i32 33
  %6465 = getelementptr inbounds %struct.Reg, %struct.Reg* %6464, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %6465 to i64*
  %6466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6467 = getelementptr inbounds %struct.GPR, %struct.GPR* %6466, i32 0, i32 7
  %6468 = getelementptr inbounds %struct.Reg, %struct.Reg* %6467, i32 0, i32 0
  %RDX.i110 = bitcast %union.anon* %6468 to i64*
  %6469 = load i64, i64* %RDX.i110
  %6470 = load i64, i64* %PC.i109
  %6471 = add i64 %6470, 3
  store i64 %6471, i64* %PC.i109
  %6472 = trunc i64 %6469 to i32
  %6473 = zext i32 %6472 to i64
  store i64 %6473, i64* %RDX.i110, align 8
  %6474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6474, align 1
  %6475 = and i32 %6472, 255
  %6476 = call i32 @llvm.ctpop.i32(i32 %6475)
  %6477 = trunc i32 %6476 to i8
  %6478 = and i8 %6477, 1
  %6479 = xor i8 %6478, 1
  %6480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6479, i8* %6480, align 1
  %6481 = trunc i64 %6469 to i32
  %6482 = xor i32 %6481, %6472
  %6483 = lshr i32 %6482, 4
  %6484 = trunc i32 %6483 to i8
  %6485 = and i8 %6484, 1
  %6486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6485, i8* %6486, align 1
  %6487 = icmp eq i32 %6472, 0
  %6488 = zext i1 %6487 to i8
  %6489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6488, i8* %6489, align 1
  %6490 = lshr i32 %6472, 31
  %6491 = trunc i32 %6490 to i8
  %6492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6491, i8* %6492, align 1
  %6493 = lshr i32 %6472, 31
  %6494 = xor i32 %6490, %6493
  %6495 = add i32 %6494, %6490
  %6496 = icmp eq i32 %6495, 2
  %6497 = zext i1 %6496 to i8
  %6498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6497, i8* %6498, align 1
  store %struct.Memory* %loadMem_462ba8, %struct.Memory** %MEMORY
  %loadMem_462bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %6499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6500 = getelementptr inbounds %struct.GPR, %struct.GPR* %6499, i32 0, i32 33
  %6501 = getelementptr inbounds %struct.Reg, %struct.Reg* %6500, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %6501 to i64*
  %6502 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6503 = getelementptr inbounds %struct.GPR, %struct.GPR* %6502, i32 0, i32 7
  %6504 = getelementptr inbounds %struct.Reg, %struct.Reg* %6503, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %6504 to i32*
  %6505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6506 = getelementptr inbounds %struct.GPR, %struct.GPR* %6505, i32 0, i32 1
  %6507 = getelementptr inbounds %struct.Reg, %struct.Reg* %6506, i32 0, i32 0
  %RAX.i107 = bitcast %union.anon* %6507 to i64*
  %6508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6509 = getelementptr inbounds %struct.GPR, %struct.GPR* %6508, i32 0, i32 5
  %6510 = getelementptr inbounds %struct.Reg, %struct.Reg* %6509, i32 0, i32 0
  %RCX.i108 = bitcast %union.anon* %6510 to i64*
  %6511 = load i64, i64* %RAX.i107
  %6512 = load i64, i64* %RCX.i108
  %6513 = mul i64 %6512, 4
  %6514 = add i64 %6511, 200
  %6515 = add i64 %6514, %6513
  %6516 = load i32, i32* %EDX.i
  %6517 = zext i32 %6516 to i64
  %6518 = load i64, i64* %PC.i106
  %6519 = add i64 %6518, 7
  store i64 %6519, i64* %PC.i106
  %6520 = inttoptr i64 %6515 to i32*
  store i32 %6516, i32* %6520
  store %struct.Memory* %loadMem_462bab, %struct.Memory** %MEMORY
  %loadMem_462bb2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6522 = getelementptr inbounds %struct.GPR, %struct.GPR* %6521, i32 0, i32 33
  %6523 = getelementptr inbounds %struct.Reg, %struct.Reg* %6522, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6523 to i64*
  %6524 = load i64, i64* %PC.i105
  %6525 = add i64 %6524, 24
  %6526 = load i64, i64* %PC.i105
  %6527 = add i64 %6526, 5
  store i64 %6527, i64* %PC.i105
  %6528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6525, i64* %6528, align 8
  store %struct.Memory* %loadMem_462bb2, %struct.Memory** %MEMORY
  br label %block_.L_462bca

block_.L_462bb7:                                  ; preds = %block_462b7d
  %loadMem_462bb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6530 = getelementptr inbounds %struct.GPR, %struct.GPR* %6529, i32 0, i32 33
  %6531 = getelementptr inbounds %struct.Reg, %struct.Reg* %6530, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %6531 to i64*
  %6532 = load i64, i64* %PC.i104
  %6533 = add i64 %6532, 5
  %6534 = load i64, i64* %PC.i104
  %6535 = add i64 %6534, 5
  store i64 %6535, i64* %PC.i104
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6533, i64* %6536, align 8
  store %struct.Memory* %loadMem_462bb7, %struct.Memory** %MEMORY
  br label %block_.L_462bbc

block_.L_462bbc:                                  ; preds = %block_.L_462bb7
  %loadMem_462bbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %6537 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6538 = getelementptr inbounds %struct.GPR, %struct.GPR* %6537, i32 0, i32 33
  %6539 = getelementptr inbounds %struct.Reg, %struct.Reg* %6538, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %6539 to i64*
  %6540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6541 = getelementptr inbounds %struct.GPR, %struct.GPR* %6540, i32 0, i32 1
  %6542 = getelementptr inbounds %struct.Reg, %struct.Reg* %6541, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %6542 to i64*
  %6543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6544 = getelementptr inbounds %struct.GPR, %struct.GPR* %6543, i32 0, i32 15
  %6545 = getelementptr inbounds %struct.Reg, %struct.Reg* %6544, i32 0, i32 0
  %RBP.i103 = bitcast %union.anon* %6545 to i64*
  %6546 = load i64, i64* %RBP.i103
  %6547 = sub i64 %6546, 92
  %6548 = load i64, i64* %PC.i101
  %6549 = add i64 %6548, 3
  store i64 %6549, i64* %PC.i101
  %6550 = inttoptr i64 %6547 to i32*
  %6551 = load i32, i32* %6550
  %6552 = zext i32 %6551 to i64
  store i64 %6552, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_462bbc, %struct.Memory** %MEMORY
  %loadMem_462bbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %6553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6554 = getelementptr inbounds %struct.GPR, %struct.GPR* %6553, i32 0, i32 33
  %6555 = getelementptr inbounds %struct.Reg, %struct.Reg* %6554, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6555 to i64*
  %6556 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6557 = getelementptr inbounds %struct.GPR, %struct.GPR* %6556, i32 0, i32 1
  %6558 = getelementptr inbounds %struct.Reg, %struct.Reg* %6557, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %6558 to i64*
  %6559 = load i64, i64* %RAX.i100
  %6560 = load i64, i64* %PC.i99
  %6561 = add i64 %6560, 3
  store i64 %6561, i64* %PC.i99
  %6562 = trunc i64 %6559 to i32
  %6563 = add i32 1, %6562
  %6564 = zext i32 %6563 to i64
  store i64 %6564, i64* %RAX.i100, align 8
  %6565 = icmp ult i32 %6563, %6562
  %6566 = icmp ult i32 %6563, 1
  %6567 = or i1 %6565, %6566
  %6568 = zext i1 %6567 to i8
  %6569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6568, i8* %6569, align 1
  %6570 = and i32 %6563, 255
  %6571 = call i32 @llvm.ctpop.i32(i32 %6570)
  %6572 = trunc i32 %6571 to i8
  %6573 = and i8 %6572, 1
  %6574 = xor i8 %6573, 1
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6574, i8* %6575, align 1
  %6576 = xor i64 1, %6559
  %6577 = trunc i64 %6576 to i32
  %6578 = xor i32 %6577, %6563
  %6579 = lshr i32 %6578, 4
  %6580 = trunc i32 %6579 to i8
  %6581 = and i8 %6580, 1
  %6582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6581, i8* %6582, align 1
  %6583 = icmp eq i32 %6563, 0
  %6584 = zext i1 %6583 to i8
  %6585 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6584, i8* %6585, align 1
  %6586 = lshr i32 %6563, 31
  %6587 = trunc i32 %6586 to i8
  %6588 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6587, i8* %6588, align 1
  %6589 = lshr i32 %6562, 31
  %6590 = xor i32 %6586, %6589
  %6591 = add i32 %6590, %6586
  %6592 = icmp eq i32 %6591, 2
  %6593 = zext i1 %6592 to i8
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6593, i8* %6594, align 1
  store %struct.Memory* %loadMem_462bbf, %struct.Memory** %MEMORY
  %loadMem_462bc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6596 = getelementptr inbounds %struct.GPR, %struct.GPR* %6595, i32 0, i32 33
  %6597 = getelementptr inbounds %struct.Reg, %struct.Reg* %6596, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %6597 to i64*
  %6598 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6599 = getelementptr inbounds %struct.GPR, %struct.GPR* %6598, i32 0, i32 1
  %6600 = getelementptr inbounds %struct.Reg, %struct.Reg* %6599, i32 0, i32 0
  %EAX.i97 = bitcast %union.anon* %6600 to i32*
  %6601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6602 = getelementptr inbounds %struct.GPR, %struct.GPR* %6601, i32 0, i32 15
  %6603 = getelementptr inbounds %struct.Reg, %struct.Reg* %6602, i32 0, i32 0
  %RBP.i98 = bitcast %union.anon* %6603 to i64*
  %6604 = load i64, i64* %RBP.i98
  %6605 = sub i64 %6604, 92
  %6606 = load i32, i32* %EAX.i97
  %6607 = zext i32 %6606 to i64
  %6608 = load i64, i64* %PC.i96
  %6609 = add i64 %6608, 3
  store i64 %6609, i64* %PC.i96
  %6610 = inttoptr i64 %6605 to i32*
  store i32 %6606, i32* %6610
  store %struct.Memory* %loadMem_462bc2, %struct.Memory** %MEMORY
  %loadMem_462bc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6612 = getelementptr inbounds %struct.GPR, %struct.GPR* %6611, i32 0, i32 33
  %6613 = getelementptr inbounds %struct.Reg, %struct.Reg* %6612, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %6613 to i64*
  %6614 = load i64, i64* %PC.i95
  %6615 = add i64 %6614, -91
  %6616 = load i64, i64* %PC.i95
  %6617 = add i64 %6616, 5
  store i64 %6617, i64* %PC.i95
  %6618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6615, i64* %6618, align 8
  store %struct.Memory* %loadMem_462bc5, %struct.Memory** %MEMORY
  br label %block_.L_462b6a

block_.L_462bca:                                  ; preds = %block_462b99, %block_.L_462b6a
  %loadMem_462bca = load %struct.Memory*, %struct.Memory** %MEMORY
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 33
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6621 to i64*
  %6622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6623 = getelementptr inbounds %struct.GPR, %struct.GPR* %6622, i32 0, i32 1
  %6624 = getelementptr inbounds %struct.Reg, %struct.Reg* %6623, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %6624 to i64*
  %6625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6626 = getelementptr inbounds %struct.GPR, %struct.GPR* %6625, i32 0, i32 15
  %6627 = getelementptr inbounds %struct.Reg, %struct.Reg* %6626, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %6627 to i64*
  %6628 = load i64, i64* %RBP.i94
  %6629 = sub i64 %6628, 92
  %6630 = load i64, i64* %PC.i92
  %6631 = add i64 %6630, 3
  store i64 %6631, i64* %PC.i92
  %6632 = inttoptr i64 %6629 to i32*
  %6633 = load i32, i32* %6632
  %6634 = zext i32 %6633 to i64
  store i64 %6634, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_462bca, %struct.Memory** %MEMORY
  %loadMem_462bcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6636 = getelementptr inbounds %struct.GPR, %struct.GPR* %6635, i32 0, i32 33
  %6637 = getelementptr inbounds %struct.Reg, %struct.Reg* %6636, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6637 to i64*
  %6638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6639 = getelementptr inbounds %struct.GPR, %struct.GPR* %6638, i32 0, i32 5
  %6640 = getelementptr inbounds %struct.Reg, %struct.Reg* %6639, i32 0, i32 0
  %RCX.i90 = bitcast %union.anon* %6640 to i64*
  %6641 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6642 = getelementptr inbounds %struct.GPR, %struct.GPR* %6641, i32 0, i32 15
  %6643 = getelementptr inbounds %struct.Reg, %struct.Reg* %6642, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %6643 to i64*
  %6644 = load i64, i64* %RBP.i91
  %6645 = sub i64 %6644, 32
  %6646 = load i64, i64* %PC.i89
  %6647 = add i64 %6646, 4
  store i64 %6647, i64* %PC.i89
  %6648 = inttoptr i64 %6645 to i64*
  %6649 = load i64, i64* %6648
  store i64 %6649, i64* %RCX.i90, align 8
  store %struct.Memory* %loadMem_462bcd, %struct.Memory** %MEMORY
  %loadMem_462bd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6651 = getelementptr inbounds %struct.GPR, %struct.GPR* %6650, i32 0, i32 33
  %6652 = getelementptr inbounds %struct.Reg, %struct.Reg* %6651, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %6652 to i64*
  %6653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6654 = getelementptr inbounds %struct.GPR, %struct.GPR* %6653, i32 0, i32 1
  %6655 = getelementptr inbounds %struct.Reg, %struct.Reg* %6654, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %6655 to i32*
  %6656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6657 = getelementptr inbounds %struct.GPR, %struct.GPR* %6656, i32 0, i32 5
  %6658 = getelementptr inbounds %struct.Reg, %struct.Reg* %6657, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6658 to i64*
  %6659 = load i32, i32* %EAX.i87
  %6660 = zext i32 %6659 to i64
  %6661 = load i64, i64* %RCX.i88
  %6662 = add i64 %6661, 400
  %6663 = load i64, i64* %PC.i86
  %6664 = add i64 %6663, 6
  store i64 %6664, i64* %PC.i86
  %6665 = inttoptr i64 %6662 to i32*
  %6666 = load i32, i32* %6665
  %6667 = sub i32 %6659, %6666
  %6668 = icmp ult i32 %6659, %6666
  %6669 = zext i1 %6668 to i8
  %6670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6669, i8* %6670, align 1
  %6671 = and i32 %6667, 255
  %6672 = call i32 @llvm.ctpop.i32(i32 %6671)
  %6673 = trunc i32 %6672 to i8
  %6674 = and i8 %6673, 1
  %6675 = xor i8 %6674, 1
  %6676 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6675, i8* %6676, align 1
  %6677 = xor i32 %6666, %6659
  %6678 = xor i32 %6677, %6667
  %6679 = lshr i32 %6678, 4
  %6680 = trunc i32 %6679 to i8
  %6681 = and i8 %6680, 1
  %6682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6681, i8* %6682, align 1
  %6683 = icmp eq i32 %6667, 0
  %6684 = zext i1 %6683 to i8
  %6685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6684, i8* %6685, align 1
  %6686 = lshr i32 %6667, 31
  %6687 = trunc i32 %6686 to i8
  %6688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6687, i8* %6688, align 1
  %6689 = lshr i32 %6659, 31
  %6690 = lshr i32 %6666, 31
  %6691 = xor i32 %6690, %6689
  %6692 = xor i32 %6686, %6689
  %6693 = add i32 %6692, %6691
  %6694 = icmp eq i32 %6693, 2
  %6695 = zext i1 %6694 to i8
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6695, i8* %6696, align 1
  store %struct.Memory* %loadMem_462bd1, %struct.Memory** %MEMORY
  %loadMem_462bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6697 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6698 = getelementptr inbounds %struct.GPR, %struct.GPR* %6697, i32 0, i32 33
  %6699 = getelementptr inbounds %struct.Reg, %struct.Reg* %6698, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %6699 to i64*
  %6700 = load i64, i64* %PC.i85
  %6701 = add i64 %6700, 95
  %6702 = load i64, i64* %PC.i85
  %6703 = add i64 %6702, 6
  %6704 = load i64, i64* %PC.i85
  %6705 = add i64 %6704, 6
  store i64 %6705, i64* %PC.i85
  %6706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6707 = load i8, i8* %6706, align 1
  %6708 = icmp eq i8 %6707, 0
  %6709 = zext i1 %6708 to i8
  store i8 %6709, i8* %BRANCH_TAKEN, align 1
  %6710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6711 = select i1 %6708, i64 %6701, i64 %6703
  store i64 %6711, i64* %6710, align 8
  store %struct.Memory* %loadMem_462bd7, %struct.Memory** %MEMORY
  %loadBr_462bd7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462bd7 = icmp eq i8 %loadBr_462bd7, 1
  br i1 %cmpBr_462bd7, label %block_.L_462c36, label %block_462bdd

block_462bdd:                                     ; preds = %block_.L_462bca
  %loadMem_462bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 33
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6714 to i64*
  %6715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6716 = getelementptr inbounds %struct.GPR, %struct.GPR* %6715, i32 0, i32 1
  %6717 = getelementptr inbounds %struct.Reg, %struct.Reg* %6716, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %6717 to i64*
  %6718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6719 = getelementptr inbounds %struct.GPR, %struct.GPR* %6718, i32 0, i32 15
  %6720 = getelementptr inbounds %struct.Reg, %struct.Reg* %6719, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %6720 to i64*
  %6721 = load i64, i64* %RBP.i84
  %6722 = sub i64 %6721, 32
  %6723 = load i64, i64* %PC.i82
  %6724 = add i64 %6723, 4
  store i64 %6724, i64* %PC.i82
  %6725 = inttoptr i64 %6722 to i64*
  %6726 = load i64, i64* %6725
  store i64 %6726, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_462bdd, %struct.Memory** %MEMORY
  %loadMem_462be1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6728 = getelementptr inbounds %struct.GPR, %struct.GPR* %6727, i32 0, i32 33
  %6729 = getelementptr inbounds %struct.Reg, %struct.Reg* %6728, i32 0, i32 0
  %PC.i80 = bitcast %union.anon* %6729 to i64*
  %6730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6731 = getelementptr inbounds %struct.GPR, %struct.GPR* %6730, i32 0, i32 1
  %6732 = getelementptr inbounds %struct.Reg, %struct.Reg* %6731, i32 0, i32 0
  %RAX.i81 = bitcast %union.anon* %6732 to i64*
  %6733 = load i64, i64* %RAX.i81
  %6734 = add i64 %6733, 400
  %6735 = load i64, i64* %PC.i80
  %6736 = add i64 %6735, 7
  store i64 %6736, i64* %PC.i80
  %6737 = inttoptr i64 %6734 to i32*
  %6738 = load i32, i32* %6737
  %6739 = sub i32 %6738, 50
  %6740 = icmp ult i32 %6738, 50
  %6741 = zext i1 %6740 to i8
  %6742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6741, i8* %6742, align 1
  %6743 = and i32 %6739, 255
  %6744 = call i32 @llvm.ctpop.i32(i32 %6743)
  %6745 = trunc i32 %6744 to i8
  %6746 = and i8 %6745, 1
  %6747 = xor i8 %6746, 1
  %6748 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6747, i8* %6748, align 1
  %6749 = xor i32 %6738, 50
  %6750 = xor i32 %6749, %6739
  %6751 = lshr i32 %6750, 4
  %6752 = trunc i32 %6751 to i8
  %6753 = and i8 %6752, 1
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6753, i8* %6754, align 1
  %6755 = icmp eq i32 %6739, 0
  %6756 = zext i1 %6755 to i8
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6756, i8* %6757, align 1
  %6758 = lshr i32 %6739, 31
  %6759 = trunc i32 %6758 to i8
  %6760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6759, i8* %6760, align 1
  %6761 = lshr i32 %6738, 31
  %6762 = xor i32 %6758, %6761
  %6763 = add i32 %6762, %6761
  %6764 = icmp eq i32 %6763, 2
  %6765 = zext i1 %6764 to i8
  %6766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6765, i8* %6766, align 1
  store %struct.Memory* %loadMem_462be1, %struct.Memory** %MEMORY
  %loadMem_462be8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6768 = getelementptr inbounds %struct.GPR, %struct.GPR* %6767, i32 0, i32 33
  %6769 = getelementptr inbounds %struct.Reg, %struct.Reg* %6768, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6769 to i64*
  %6770 = load i64, i64* %PC.i79
  %6771 = add i64 %6770, 78
  %6772 = load i64, i64* %PC.i79
  %6773 = add i64 %6772, 6
  %6774 = load i64, i64* %PC.i79
  %6775 = add i64 %6774, 6
  store i64 %6775, i64* %PC.i79
  %6776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6777 = load i8, i8* %6776, align 1
  %6778 = icmp ne i8 %6777, 0
  %6779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6780 = load i8, i8* %6779, align 1
  %6781 = icmp ne i8 %6780, 0
  %6782 = xor i1 %6778, %6781
  %6783 = xor i1 %6782, true
  %6784 = zext i1 %6783 to i8
  store i8 %6784, i8* %BRANCH_TAKEN, align 1
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6786 = select i1 %6782, i64 %6773, i64 %6771
  store i64 %6786, i64* %6785, align 8
  store %struct.Memory* %loadMem_462be8, %struct.Memory** %MEMORY
  %loadBr_462be8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_462be8 = icmp eq i8 %loadBr_462be8, 1
  br i1 %cmpBr_462be8, label %block_.L_462c36, label %block_462bee

block_462bee:                                     ; preds = %block_462bdd
  %loadMem_462bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %6787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6788 = getelementptr inbounds %struct.GPR, %struct.GPR* %6787, i32 0, i32 33
  %6789 = getelementptr inbounds %struct.Reg, %struct.Reg* %6788, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %6789 to i64*
  %6790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6791 = getelementptr inbounds %struct.GPR, %struct.GPR* %6790, i32 0, i32 1
  %6792 = getelementptr inbounds %struct.Reg, %struct.Reg* %6791, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %6792 to i64*
  %6793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6794 = getelementptr inbounds %struct.GPR, %struct.GPR* %6793, i32 0, i32 15
  %6795 = getelementptr inbounds %struct.Reg, %struct.Reg* %6794, i32 0, i32 0
  %RBP.i78 = bitcast %union.anon* %6795 to i64*
  %6796 = load i64, i64* %RBP.i78
  %6797 = sub i64 %6796, 56
  %6798 = load i64, i64* %PC.i76
  %6799 = add i64 %6798, 3
  store i64 %6799, i64* %PC.i76
  %6800 = inttoptr i64 %6797 to i32*
  %6801 = load i32, i32* %6800
  %6802 = zext i32 %6801 to i64
  store i64 %6802, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_462bee, %struct.Memory** %MEMORY
  %loadMem_462bf1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6804 = getelementptr inbounds %struct.GPR, %struct.GPR* %6803, i32 0, i32 33
  %6805 = getelementptr inbounds %struct.Reg, %struct.Reg* %6804, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %6805 to i64*
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6807 = getelementptr inbounds %struct.GPR, %struct.GPR* %6806, i32 0, i32 1
  %6808 = getelementptr inbounds %struct.Reg, %struct.Reg* %6807, i32 0, i32 0
  %RAX.i74 = bitcast %union.anon* %6808 to i64*
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6810 = getelementptr inbounds %struct.GPR, %struct.GPR* %6809, i32 0, i32 15
  %6811 = getelementptr inbounds %struct.Reg, %struct.Reg* %6810, i32 0, i32 0
  %RBP.i75 = bitcast %union.anon* %6811 to i64*
  %6812 = load i64, i64* %RAX.i74
  %6813 = load i64, i64* %RBP.i75
  %6814 = sub i64 %6813, 48
  %6815 = load i64, i64* %PC.i73
  %6816 = add i64 %6815, 3
  store i64 %6816, i64* %PC.i73
  %6817 = trunc i64 %6812 to i32
  %6818 = inttoptr i64 %6814 to i32*
  %6819 = load i32, i32* %6818
  %6820 = add i32 %6819, %6817
  %6821 = zext i32 %6820 to i64
  store i64 %6821, i64* %RAX.i74, align 8
  %6822 = icmp ult i32 %6820, %6817
  %6823 = icmp ult i32 %6820, %6819
  %6824 = or i1 %6822, %6823
  %6825 = zext i1 %6824 to i8
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6825, i8* %6826, align 1
  %6827 = and i32 %6820, 255
  %6828 = call i32 @llvm.ctpop.i32(i32 %6827)
  %6829 = trunc i32 %6828 to i8
  %6830 = and i8 %6829, 1
  %6831 = xor i8 %6830, 1
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6831, i8* %6832, align 1
  %6833 = xor i32 %6819, %6817
  %6834 = xor i32 %6833, %6820
  %6835 = lshr i32 %6834, 4
  %6836 = trunc i32 %6835 to i8
  %6837 = and i8 %6836, 1
  %6838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6837, i8* %6838, align 1
  %6839 = icmp eq i32 %6820, 0
  %6840 = zext i1 %6839 to i8
  %6841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6840, i8* %6841, align 1
  %6842 = lshr i32 %6820, 31
  %6843 = trunc i32 %6842 to i8
  %6844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6843, i8* %6844, align 1
  %6845 = lshr i32 %6817, 31
  %6846 = lshr i32 %6819, 31
  %6847 = xor i32 %6842, %6845
  %6848 = xor i32 %6842, %6846
  %6849 = add i32 %6847, %6848
  %6850 = icmp eq i32 %6849, 2
  %6851 = zext i1 %6850 to i8
  %6852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6851, i8* %6852, align 1
  store %struct.Memory* %loadMem_462bf1, %struct.Memory** %MEMORY
  %loadMem_462bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6854 = getelementptr inbounds %struct.GPR, %struct.GPR* %6853, i32 0, i32 33
  %6855 = getelementptr inbounds %struct.Reg, %struct.Reg* %6854, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %6855 to i64*
  %6856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6857 = getelementptr inbounds %struct.GPR, %struct.GPR* %6856, i32 0, i32 1
  %6858 = getelementptr inbounds %struct.Reg, %struct.Reg* %6857, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %6858 to i64*
  %6859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6860 = getelementptr inbounds %struct.GPR, %struct.GPR* %6859, i32 0, i32 15
  %6861 = getelementptr inbounds %struct.Reg, %struct.Reg* %6860, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %6861 to i64*
  %6862 = load i64, i64* %RAX.i71
  %6863 = load i64, i64* %RBP.i72
  %6864 = sub i64 %6863, 52
  %6865 = load i64, i64* %PC.i70
  %6866 = add i64 %6865, 3
  store i64 %6866, i64* %PC.i70
  %6867 = trunc i64 %6862 to i32
  %6868 = inttoptr i64 %6864 to i32*
  %6869 = load i32, i32* %6868
  %6870 = add i32 %6869, %6867
  %6871 = zext i32 %6870 to i64
  store i64 %6871, i64* %RAX.i71, align 8
  %6872 = icmp ult i32 %6870, %6867
  %6873 = icmp ult i32 %6870, %6869
  %6874 = or i1 %6872, %6873
  %6875 = zext i1 %6874 to i8
  %6876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6875, i8* %6876, align 1
  %6877 = and i32 %6870, 255
  %6878 = call i32 @llvm.ctpop.i32(i32 %6877)
  %6879 = trunc i32 %6878 to i8
  %6880 = and i8 %6879, 1
  %6881 = xor i8 %6880, 1
  %6882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6881, i8* %6882, align 1
  %6883 = xor i32 %6869, %6867
  %6884 = xor i32 %6883, %6870
  %6885 = lshr i32 %6884, 4
  %6886 = trunc i32 %6885 to i8
  %6887 = and i8 %6886, 1
  %6888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6887, i8* %6888, align 1
  %6889 = icmp eq i32 %6870, 0
  %6890 = zext i1 %6889 to i8
  %6891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6890, i8* %6891, align 1
  %6892 = lshr i32 %6870, 31
  %6893 = trunc i32 %6892 to i8
  %6894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6893, i8* %6894, align 1
  %6895 = lshr i32 %6867, 31
  %6896 = lshr i32 %6869, 31
  %6897 = xor i32 %6892, %6895
  %6898 = xor i32 %6892, %6896
  %6899 = add i32 %6897, %6898
  %6900 = icmp eq i32 %6899, 2
  %6901 = zext i1 %6900 to i8
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6901, i8* %6902, align 1
  store %struct.Memory* %loadMem_462bf4, %struct.Memory** %MEMORY
  %loadMem_462bf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6903 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6904 = getelementptr inbounds %struct.GPR, %struct.GPR* %6903, i32 0, i32 33
  %6905 = getelementptr inbounds %struct.Reg, %struct.Reg* %6904, i32 0, i32 0
  %PC.i67 = bitcast %union.anon* %6905 to i64*
  %6906 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6907 = getelementptr inbounds %struct.GPR, %struct.GPR* %6906, i32 0, i32 5
  %6908 = getelementptr inbounds %struct.Reg, %struct.Reg* %6907, i32 0, i32 0
  %RCX.i68 = bitcast %union.anon* %6908 to i64*
  %6909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6910 = getelementptr inbounds %struct.GPR, %struct.GPR* %6909, i32 0, i32 15
  %6911 = getelementptr inbounds %struct.Reg, %struct.Reg* %6910, i32 0, i32 0
  %RBP.i69 = bitcast %union.anon* %6911 to i64*
  %6912 = load i64, i64* %RBP.i69
  %6913 = sub i64 %6912, 32
  %6914 = load i64, i64* %PC.i67
  %6915 = add i64 %6914, 4
  store i64 %6915, i64* %PC.i67
  %6916 = inttoptr i64 %6913 to i64*
  %6917 = load i64, i64* %6916
  store i64 %6917, i64* %RCX.i68, align 8
  store %struct.Memory* %loadMem_462bf7, %struct.Memory** %MEMORY
  %loadMem_462bfb = load %struct.Memory*, %struct.Memory** %MEMORY
  %6918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6919 = getelementptr inbounds %struct.GPR, %struct.GPR* %6918, i32 0, i32 33
  %6920 = getelementptr inbounds %struct.Reg, %struct.Reg* %6919, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %6920 to i64*
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6922 = getelementptr inbounds %struct.GPR, %struct.GPR* %6921, i32 0, i32 7
  %6923 = getelementptr inbounds %struct.Reg, %struct.Reg* %6922, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %6923 to i64*
  %6924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6925 = getelementptr inbounds %struct.GPR, %struct.GPR* %6924, i32 0, i32 15
  %6926 = getelementptr inbounds %struct.Reg, %struct.Reg* %6925, i32 0, i32 0
  %RBP.i66 = bitcast %union.anon* %6926 to i64*
  %6927 = load i64, i64* %RBP.i66
  %6928 = sub i64 %6927, 32
  %6929 = load i64, i64* %PC.i64
  %6930 = add i64 %6929, 4
  store i64 %6930, i64* %PC.i64
  %6931 = inttoptr i64 %6928 to i64*
  %6932 = load i64, i64* %6931
  store i64 %6932, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_462bfb, %struct.Memory** %MEMORY
  %loadMem_462bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %6933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6934 = getelementptr inbounds %struct.GPR, %struct.GPR* %6933, i32 0, i32 33
  %6935 = getelementptr inbounds %struct.Reg, %struct.Reg* %6934, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %6935 to i64*
  %6936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6937 = getelementptr inbounds %struct.GPR, %struct.GPR* %6936, i32 0, i32 7
  %6938 = getelementptr inbounds %struct.Reg, %struct.Reg* %6937, i32 0, i32 0
  %RDX.i63 = bitcast %union.anon* %6938 to i64*
  %6939 = load i64, i64* %RDX.i63
  %6940 = add i64 %6939, 400
  %6941 = load i64, i64* %PC.i62
  %6942 = add i64 %6941, 7
  store i64 %6942, i64* %PC.i62
  %6943 = inttoptr i64 %6940 to i32*
  %6944 = load i32, i32* %6943
  %6945 = sext i32 %6944 to i64
  store i64 %6945, i64* %RDX.i63, align 8
  store %struct.Memory* %loadMem_462bff, %struct.Memory** %MEMORY
  %loadMem_462c06 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6947 = getelementptr inbounds %struct.GPR, %struct.GPR* %6946, i32 0, i32 33
  %6948 = getelementptr inbounds %struct.Reg, %struct.Reg* %6947, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %6948 to i64*
  %6949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6950 = getelementptr inbounds %struct.GPR, %struct.GPR* %6949, i32 0, i32 1
  %6951 = getelementptr inbounds %struct.Reg, %struct.Reg* %6950, i32 0, i32 0
  %EAX.i59 = bitcast %union.anon* %6951 to i32*
  %6952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6953 = getelementptr inbounds %struct.GPR, %struct.GPR* %6952, i32 0, i32 5
  %6954 = getelementptr inbounds %struct.Reg, %struct.Reg* %6953, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %6954 to i64*
  %6955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6956 = getelementptr inbounds %struct.GPR, %struct.GPR* %6955, i32 0, i32 7
  %6957 = getelementptr inbounds %struct.Reg, %struct.Reg* %6956, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %6957 to i64*
  %6958 = load i64, i64* %RCX.i60
  %6959 = load i64, i64* %RDX.i61
  %6960 = mul i64 %6959, 4
  %6961 = add i64 %6960, %6958
  %6962 = load i32, i32* %EAX.i59
  %6963 = zext i32 %6962 to i64
  %6964 = load i64, i64* %PC.i58
  %6965 = add i64 %6964, 3
  store i64 %6965, i64* %PC.i58
  %6966 = inttoptr i64 %6961 to i32*
  store i32 %6962, i32* %6966
  store %struct.Memory* %loadMem_462c06, %struct.Memory** %MEMORY
  %loadMem_462c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6968 = getelementptr inbounds %struct.GPR, %struct.GPR* %6967, i32 0, i32 33
  %6969 = getelementptr inbounds %struct.Reg, %struct.Reg* %6968, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %6969 to i64*
  %6970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6971 = getelementptr inbounds %struct.GPR, %struct.GPR* %6970, i32 0, i32 5
  %6972 = getelementptr inbounds %struct.Reg, %struct.Reg* %6971, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %6972 to i64*
  %6973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6974 = getelementptr inbounds %struct.GPR, %struct.GPR* %6973, i32 0, i32 15
  %6975 = getelementptr inbounds %struct.Reg, %struct.Reg* %6974, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %6975 to i64*
  %6976 = load i64, i64* %RBP.i57
  %6977 = sub i64 %6976, 32
  %6978 = load i64, i64* %PC.i55
  %6979 = add i64 %6978, 4
  store i64 %6979, i64* %PC.i55
  %6980 = inttoptr i64 %6977 to i64*
  %6981 = load i64, i64* %6980
  store i64 %6981, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_462c09, %struct.Memory** %MEMORY
  %loadMem_462c0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6983 = getelementptr inbounds %struct.GPR, %struct.GPR* %6982, i32 0, i32 33
  %6984 = getelementptr inbounds %struct.Reg, %struct.Reg* %6983, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %6984 to i64*
  %6985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6986 = getelementptr inbounds %struct.GPR, %struct.GPR* %6985, i32 0, i32 7
  %6987 = getelementptr inbounds %struct.Reg, %struct.Reg* %6986, i32 0, i32 0
  %RDX.i53 = bitcast %union.anon* %6987 to i64*
  %6988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6989 = getelementptr inbounds %struct.GPR, %struct.GPR* %6988, i32 0, i32 15
  %6990 = getelementptr inbounds %struct.Reg, %struct.Reg* %6989, i32 0, i32 0
  %RBP.i54 = bitcast %union.anon* %6990 to i64*
  %6991 = load i64, i64* %RBP.i54
  %6992 = sub i64 %6991, 32
  %6993 = load i64, i64* %PC.i52
  %6994 = add i64 %6993, 4
  store i64 %6994, i64* %PC.i52
  %6995 = inttoptr i64 %6992 to i64*
  %6996 = load i64, i64* %6995
  store i64 %6996, i64* %RDX.i53, align 8
  store %struct.Memory* %loadMem_462c0d, %struct.Memory** %MEMORY
  %loadMem_462c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6997 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6998 = getelementptr inbounds %struct.GPR, %struct.GPR* %6997, i32 0, i32 33
  %6999 = getelementptr inbounds %struct.Reg, %struct.Reg* %6998, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %6999 to i64*
  %7000 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7001 = getelementptr inbounds %struct.GPR, %struct.GPR* %7000, i32 0, i32 7
  %7002 = getelementptr inbounds %struct.Reg, %struct.Reg* %7001, i32 0, i32 0
  %RDX.i51 = bitcast %union.anon* %7002 to i64*
  %7003 = load i64, i64* %RDX.i51
  %7004 = add i64 %7003, 400
  %7005 = load i64, i64* %PC.i50
  %7006 = add i64 %7005, 7
  store i64 %7006, i64* %PC.i50
  %7007 = inttoptr i64 %7004 to i32*
  %7008 = load i32, i32* %7007
  %7009 = sext i32 %7008 to i64
  store i64 %7009, i64* %RDX.i51, align 8
  store %struct.Memory* %loadMem_462c11, %struct.Memory** %MEMORY
  %loadMem_462c18 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 33
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %7012 to i64*
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7014 = getelementptr inbounds %struct.GPR, %struct.GPR* %7013, i32 0, i32 5
  %7015 = getelementptr inbounds %struct.Reg, %struct.Reg* %7014, i32 0, i32 0
  %RCX.i49 = bitcast %union.anon* %7015 to i64*
  %7016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7017 = getelementptr inbounds %struct.GPR, %struct.GPR* %7016, i32 0, i32 7
  %7018 = getelementptr inbounds %struct.Reg, %struct.Reg* %7017, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7018 to i64*
  %7019 = load i64, i64* %RCX.i49
  %7020 = load i64, i64* %RDX.i
  %7021 = mul i64 %7020, 4
  %7022 = add i64 %7019, 200
  %7023 = add i64 %7022, %7021
  %7024 = load i64, i64* %PC.i48
  %7025 = add i64 %7024, 11
  store i64 %7025, i64* %PC.i48
  %7026 = inttoptr i64 %7023 to i32*
  store i32 0, i32* %7026
  store %struct.Memory* %loadMem_462c18, %struct.Memory** %MEMORY
  %loadMem_462c23 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7028 = getelementptr inbounds %struct.GPR, %struct.GPR* %7027, i32 0, i32 33
  %7029 = getelementptr inbounds %struct.Reg, %struct.Reg* %7028, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7029 to i64*
  %7030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7031 = getelementptr inbounds %struct.GPR, %struct.GPR* %7030, i32 0, i32 5
  %7032 = getelementptr inbounds %struct.Reg, %struct.Reg* %7031, i32 0, i32 0
  %RCX.i46 = bitcast %union.anon* %7032 to i64*
  %7033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7034 = getelementptr inbounds %struct.GPR, %struct.GPR* %7033, i32 0, i32 15
  %7035 = getelementptr inbounds %struct.Reg, %struct.Reg* %7034, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %7035 to i64*
  %7036 = load i64, i64* %RBP.i47
  %7037 = sub i64 %7036, 32
  %7038 = load i64, i64* %PC.i45
  %7039 = add i64 %7038, 4
  store i64 %7039, i64* %PC.i45
  %7040 = inttoptr i64 %7037 to i64*
  %7041 = load i64, i64* %7040
  store i64 %7041, i64* %RCX.i46, align 8
  store %struct.Memory* %loadMem_462c23, %struct.Memory** %MEMORY
  %loadMem_462c27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7043 = getelementptr inbounds %struct.GPR, %struct.GPR* %7042, i32 0, i32 33
  %7044 = getelementptr inbounds %struct.Reg, %struct.Reg* %7043, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7044 to i64*
  %7045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7046 = getelementptr inbounds %struct.GPR, %struct.GPR* %7045, i32 0, i32 1
  %7047 = getelementptr inbounds %struct.Reg, %struct.Reg* %7046, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7047 to i64*
  %7048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7049 = getelementptr inbounds %struct.GPR, %struct.GPR* %7048, i32 0, i32 5
  %7050 = getelementptr inbounds %struct.Reg, %struct.Reg* %7049, i32 0, i32 0
  %RCX.i44 = bitcast %union.anon* %7050 to i64*
  %7051 = load i64, i64* %RCX.i44
  %7052 = add i64 %7051, 400
  %7053 = load i64, i64* %PC.i42
  %7054 = add i64 %7053, 6
  store i64 %7054, i64* %PC.i42
  %7055 = inttoptr i64 %7052 to i32*
  %7056 = load i32, i32* %7055
  %7057 = zext i32 %7056 to i64
  store i64 %7057, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_462c27, %struct.Memory** %MEMORY
  %loadMem_462c2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 33
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 1
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %7063 to i64*
  %7064 = load i64, i64* %RAX.i41
  %7065 = load i64, i64* %PC.i40
  %7066 = add i64 %7065, 3
  store i64 %7066, i64* %PC.i40
  %7067 = trunc i64 %7064 to i32
  %7068 = add i32 1, %7067
  %7069 = zext i32 %7068 to i64
  store i64 %7069, i64* %RAX.i41, align 8
  %7070 = icmp ult i32 %7068, %7067
  %7071 = icmp ult i32 %7068, 1
  %7072 = or i1 %7070, %7071
  %7073 = zext i1 %7072 to i8
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7073, i8* %7074, align 1
  %7075 = and i32 %7068, 255
  %7076 = call i32 @llvm.ctpop.i32(i32 %7075)
  %7077 = trunc i32 %7076 to i8
  %7078 = and i8 %7077, 1
  %7079 = xor i8 %7078, 1
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7079, i8* %7080, align 1
  %7081 = xor i64 1, %7064
  %7082 = trunc i64 %7081 to i32
  %7083 = xor i32 %7082, %7068
  %7084 = lshr i32 %7083, 4
  %7085 = trunc i32 %7084 to i8
  %7086 = and i8 %7085, 1
  %7087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7086, i8* %7087, align 1
  %7088 = icmp eq i32 %7068, 0
  %7089 = zext i1 %7088 to i8
  %7090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7089, i8* %7090, align 1
  %7091 = lshr i32 %7068, 31
  %7092 = trunc i32 %7091 to i8
  %7093 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7092, i8* %7093, align 1
  %7094 = lshr i32 %7067, 31
  %7095 = xor i32 %7091, %7094
  %7096 = add i32 %7095, %7091
  %7097 = icmp eq i32 %7096, 2
  %7098 = zext i1 %7097 to i8
  %7099 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7098, i8* %7099, align 1
  store %struct.Memory* %loadMem_462c2d, %struct.Memory** %MEMORY
  %loadMem_462c30 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7101 = getelementptr inbounds %struct.GPR, %struct.GPR* %7100, i32 0, i32 33
  %7102 = getelementptr inbounds %struct.Reg, %struct.Reg* %7101, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %7102 to i64*
  %7103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7104 = getelementptr inbounds %struct.GPR, %struct.GPR* %7103, i32 0, i32 1
  %7105 = getelementptr inbounds %struct.Reg, %struct.Reg* %7104, i32 0, i32 0
  %EAX.i39 = bitcast %union.anon* %7105 to i32*
  %7106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7107 = getelementptr inbounds %struct.GPR, %struct.GPR* %7106, i32 0, i32 5
  %7108 = getelementptr inbounds %struct.Reg, %struct.Reg* %7107, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7108 to i64*
  %7109 = load i64, i64* %RCX.i
  %7110 = add i64 %7109, 400
  %7111 = load i32, i32* %EAX.i39
  %7112 = zext i32 %7111 to i64
  %7113 = load i64, i64* %PC.i38
  %7114 = add i64 %7113, 6
  store i64 %7114, i64* %PC.i38
  %7115 = inttoptr i64 %7110 to i32*
  store i32 %7111, i32* %7115
  store %struct.Memory* %loadMem_462c30, %struct.Memory** %MEMORY
  br label %block_.L_462c36

block_.L_462c36:                                  ; preds = %block_462bee, %block_462bdd, %block_.L_462bca
  %loadMem_462c36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7117 = getelementptr inbounds %struct.GPR, %struct.GPR* %7116, i32 0, i32 33
  %7118 = getelementptr inbounds %struct.Reg, %struct.Reg* %7117, i32 0, i32 0
  %PC.i37 = bitcast %union.anon* %7118 to i64*
  %7119 = load i64, i64* %PC.i37
  %7120 = add i64 %7119, 5
  %7121 = load i64, i64* %PC.i37
  %7122 = add i64 %7121, 5
  store i64 %7122, i64* %PC.i37
  %7123 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7120, i64* %7123, align 8
  store %struct.Memory* %loadMem_462c36, %struct.Memory** %MEMORY
  br label %block_.L_462c3b

block_.L_462c3b:                                  ; preds = %block_.L_462c36
  %loadMem_462c3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7125 = getelementptr inbounds %struct.GPR, %struct.GPR* %7124, i32 0, i32 33
  %7126 = getelementptr inbounds %struct.Reg, %struct.Reg* %7125, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7126 to i64*
  %7127 = load i64, i64* %PC.i36
  %7128 = add i64 %7127, 5
  %7129 = load i64, i64* %PC.i36
  %7130 = add i64 %7129, 5
  store i64 %7130, i64* %PC.i36
  %7131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7128, i64* %7131, align 8
  store %struct.Memory* %loadMem_462c3b, %struct.Memory** %MEMORY
  br label %block_.L_462c40

block_.L_462c40:                                  ; preds = %block_.L_462c3b, %block_462b52, %block_.L_462b2b
  %loadMem_462c40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 33
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %7134 to i64*
  %7135 = load i64, i64* %PC.i35
  %7136 = add i64 %7135, 5
  %7137 = load i64, i64* %PC.i35
  %7138 = add i64 %7137, 5
  store i64 %7138, i64* %PC.i35
  %7139 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7136, i64* %7139, align 8
  store %struct.Memory* %loadMem_462c40, %struct.Memory** %MEMORY
  br label %block_.L_462c45

block_.L_462c45:                                  ; preds = %block_.L_462c40, %block_.L_462a4f
  %loadMem_462c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7141 = getelementptr inbounds %struct.GPR, %struct.GPR* %7140, i32 0, i32 33
  %7142 = getelementptr inbounds %struct.Reg, %struct.Reg* %7141, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7142 to i64*
  %7143 = load i64, i64* %PC.i34
  %7144 = add i64 %7143, 5
  %7145 = load i64, i64* %PC.i34
  %7146 = add i64 %7145, 5
  store i64 %7146, i64* %PC.i34
  %7147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7144, i64* %7147, align 8
  store %struct.Memory* %loadMem_462c45, %struct.Memory** %MEMORY
  br label %block_.L_462c4a

block_.L_462c4a:                                  ; preds = %block_.L_462c45, %block_462945, %block_462928, %block_.L_46290e
  %loadMem_462c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7149 = getelementptr inbounds %struct.GPR, %struct.GPR* %7148, i32 0, i32 33
  %7150 = getelementptr inbounds %struct.Reg, %struct.Reg* %7149, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %7150 to i64*
  %7151 = load i64, i64* %PC.i33
  %7152 = add i64 %7151, 5
  %7153 = load i64, i64* %PC.i33
  %7154 = add i64 %7153, 5
  store i64 %7154, i64* %PC.i33
  %7155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7152, i64* %7155, align 8
  store %struct.Memory* %loadMem_462c4a, %struct.Memory** %MEMORY
  br label %block_.L_462c4f

block_.L_462c4f:                                  ; preds = %block_.L_462c4a, %block_.L_462909
  %loadMem_462c4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7157 = getelementptr inbounds %struct.GPR, %struct.GPR* %7156, i32 0, i32 33
  %7158 = getelementptr inbounds %struct.Reg, %struct.Reg* %7157, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %7158 to i64*
  %7159 = load i64, i64* %PC.i32
  %7160 = add i64 %7159, 5
  %7161 = load i64, i64* %PC.i32
  %7162 = add i64 %7161, 5
  store i64 %7162, i64* %PC.i32
  %7163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7160, i64* %7163, align 8
  store %struct.Memory* %loadMem_462c4f, %struct.Memory** %MEMORY
  br label %block_.L_462c54

block_.L_462c54:                                  ; preds = %block_.L_462c4f
  %loadMem_462c54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7165 = getelementptr inbounds %struct.GPR, %struct.GPR* %7164, i32 0, i32 33
  %7166 = getelementptr inbounds %struct.Reg, %struct.Reg* %7165, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7166 to i64*
  %7167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7168 = getelementptr inbounds %struct.GPR, %struct.GPR* %7167, i32 0, i32 1
  %7169 = getelementptr inbounds %struct.Reg, %struct.Reg* %7168, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7169 to i64*
  %7170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7171 = getelementptr inbounds %struct.GPR, %struct.GPR* %7170, i32 0, i32 15
  %7172 = getelementptr inbounds %struct.Reg, %struct.Reg* %7171, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %7172 to i64*
  %7173 = load i64, i64* %RBP.i31
  %7174 = sub i64 %7173, 64
  %7175 = load i64, i64* %PC.i29
  %7176 = add i64 %7175, 3
  store i64 %7176, i64* %PC.i29
  %7177 = inttoptr i64 %7174 to i32*
  %7178 = load i32, i32* %7177
  %7179 = zext i32 %7178 to i64
  store i64 %7179, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_462c54, %struct.Memory** %MEMORY
  %loadMem_462c57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7181 = getelementptr inbounds %struct.GPR, %struct.GPR* %7180, i32 0, i32 33
  %7182 = getelementptr inbounds %struct.Reg, %struct.Reg* %7181, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %7182 to i64*
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 1
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %7185 to i64*
  %7186 = load i64, i64* %RAX.i28
  %7187 = load i64, i64* %PC.i27
  %7188 = add i64 %7187, 3
  store i64 %7188, i64* %PC.i27
  %7189 = trunc i64 %7186 to i32
  %7190 = add i32 1, %7189
  %7191 = zext i32 %7190 to i64
  store i64 %7191, i64* %RAX.i28, align 8
  %7192 = icmp ult i32 %7190, %7189
  %7193 = icmp ult i32 %7190, 1
  %7194 = or i1 %7192, %7193
  %7195 = zext i1 %7194 to i8
  %7196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7195, i8* %7196, align 1
  %7197 = and i32 %7190, 255
  %7198 = call i32 @llvm.ctpop.i32(i32 %7197)
  %7199 = trunc i32 %7198 to i8
  %7200 = and i8 %7199, 1
  %7201 = xor i8 %7200, 1
  %7202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7201, i8* %7202, align 1
  %7203 = xor i64 1, %7186
  %7204 = trunc i64 %7203 to i32
  %7205 = xor i32 %7204, %7190
  %7206 = lshr i32 %7205, 4
  %7207 = trunc i32 %7206 to i8
  %7208 = and i8 %7207, 1
  %7209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7208, i8* %7209, align 1
  %7210 = icmp eq i32 %7190, 0
  %7211 = zext i1 %7210 to i8
  %7212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7211, i8* %7212, align 1
  %7213 = lshr i32 %7190, 31
  %7214 = trunc i32 %7213 to i8
  %7215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7214, i8* %7215, align 1
  %7216 = lshr i32 %7189, 31
  %7217 = xor i32 %7213, %7216
  %7218 = add i32 %7217, %7213
  %7219 = icmp eq i32 %7218, 2
  %7220 = zext i1 %7219 to i8
  %7221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7220, i8* %7221, align 1
  store %struct.Memory* %loadMem_462c57, %struct.Memory** %MEMORY
  %loadMem_462c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7223 = getelementptr inbounds %struct.GPR, %struct.GPR* %7222, i32 0, i32 33
  %7224 = getelementptr inbounds %struct.Reg, %struct.Reg* %7223, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7224 to i64*
  %7225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7226 = getelementptr inbounds %struct.GPR, %struct.GPR* %7225, i32 0, i32 1
  %7227 = getelementptr inbounds %struct.Reg, %struct.Reg* %7226, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %7227 to i32*
  %7228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7229 = getelementptr inbounds %struct.GPR, %struct.GPR* %7228, i32 0, i32 15
  %7230 = getelementptr inbounds %struct.Reg, %struct.Reg* %7229, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %7230 to i64*
  %7231 = load i64, i64* %RBP.i26
  %7232 = sub i64 %7231, 64
  %7233 = load i32, i32* %EAX.i25
  %7234 = zext i32 %7233 to i64
  %7235 = load i64, i64* %PC.i24
  %7236 = add i64 %7235, 3
  store i64 %7236, i64* %PC.i24
  %7237 = inttoptr i64 %7232 to i32*
  store i32 %7233, i32* %7237
  store %struct.Memory* %loadMem_462c5a, %struct.Memory** %MEMORY
  %loadMem_462c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7239 = getelementptr inbounds %struct.GPR, %struct.GPR* %7238, i32 0, i32 33
  %7240 = getelementptr inbounds %struct.Reg, %struct.Reg* %7239, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %7240 to i64*
  %7241 = load i64, i64* %PC.i23
  %7242 = add i64 %7241, -1299
  %7243 = load i64, i64* %PC.i23
  %7244 = add i64 %7243, 5
  store i64 %7244, i64* %PC.i23
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7242, i64* %7245, align 8
  store %struct.Memory* %loadMem_462c5d, %struct.Memory** %MEMORY
  br label %block_.L_46274a

block_.L_462c62:                                  ; preds = %block_.L_46274a
  %loadMem_462c62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7247 = getelementptr inbounds %struct.GPR, %struct.GPR* %7246, i32 0, i32 33
  %7248 = getelementptr inbounds %struct.Reg, %struct.Reg* %7247, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %7248 to i64*
  %7249 = load i64, i64* %PC.i22
  %7250 = add i64 %7249, 5
  %7251 = load i64, i64* %PC.i22
  %7252 = add i64 %7251, 5
  store i64 %7252, i64* %PC.i22
  %7253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7250, i64* %7253, align 8
  store %struct.Memory* %loadMem_462c62, %struct.Memory** %MEMORY
  br label %block_.L_462c67

block_.L_462c67:                                  ; preds = %block_.L_462c62, %block_46273e
  %loadMem_462c67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7255 = getelementptr inbounds %struct.GPR, %struct.GPR* %7254, i32 0, i32 33
  %7256 = getelementptr inbounds %struct.Reg, %struct.Reg* %7255, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %7256 to i64*
  %7257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7258 = getelementptr inbounds %struct.GPR, %struct.GPR* %7257, i32 0, i32 1
  %7259 = getelementptr inbounds %struct.Reg, %struct.Reg* %7258, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %7259 to i64*
  %7260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7261 = getelementptr inbounds %struct.GPR, %struct.GPR* %7260, i32 0, i32 15
  %7262 = getelementptr inbounds %struct.Reg, %struct.Reg* %7261, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %7262 to i64*
  %7263 = load i64, i64* %RBP.i21
  %7264 = sub i64 %7263, 60
  %7265 = load i64, i64* %PC.i19
  %7266 = add i64 %7265, 3
  store i64 %7266, i64* %PC.i19
  %7267 = inttoptr i64 %7264 to i32*
  %7268 = load i32, i32* %7267
  %7269 = zext i32 %7268 to i64
  store i64 %7269, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_462c67, %struct.Memory** %MEMORY
  %loadMem_462c6a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7271 = getelementptr inbounds %struct.GPR, %struct.GPR* %7270, i32 0, i32 33
  %7272 = getelementptr inbounds %struct.Reg, %struct.Reg* %7271, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %7272 to i64*
  %7273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7274 = getelementptr inbounds %struct.GPR, %struct.GPR* %7273, i32 0, i32 1
  %7275 = getelementptr inbounds %struct.Reg, %struct.Reg* %7274, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %7275 to i64*
  %7276 = load i64, i64* %RAX.i18
  %7277 = load i64, i64* %PC.i17
  %7278 = add i64 %7277, 3
  store i64 %7278, i64* %PC.i17
  %7279 = trunc i64 %7276 to i32
  %7280 = add i32 1, %7279
  %7281 = zext i32 %7280 to i64
  store i64 %7281, i64* %RAX.i18, align 8
  %7282 = icmp ult i32 %7280, %7279
  %7283 = icmp ult i32 %7280, 1
  %7284 = or i1 %7282, %7283
  %7285 = zext i1 %7284 to i8
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7285, i8* %7286, align 1
  %7287 = and i32 %7280, 255
  %7288 = call i32 @llvm.ctpop.i32(i32 %7287)
  %7289 = trunc i32 %7288 to i8
  %7290 = and i8 %7289, 1
  %7291 = xor i8 %7290, 1
  %7292 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7291, i8* %7292, align 1
  %7293 = xor i64 1, %7276
  %7294 = trunc i64 %7293 to i32
  %7295 = xor i32 %7294, %7280
  %7296 = lshr i32 %7295, 4
  %7297 = trunc i32 %7296 to i8
  %7298 = and i8 %7297, 1
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7298, i8* %7299, align 1
  %7300 = icmp eq i32 %7280, 0
  %7301 = zext i1 %7300 to i8
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7301, i8* %7302, align 1
  %7303 = lshr i32 %7280, 31
  %7304 = trunc i32 %7303 to i8
  %7305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7304, i8* %7305, align 1
  %7306 = lshr i32 %7279, 31
  %7307 = xor i32 %7303, %7306
  %7308 = add i32 %7307, %7303
  %7309 = icmp eq i32 %7308, 2
  %7310 = zext i1 %7309 to i8
  %7311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7310, i8* %7311, align 1
  store %struct.Memory* %loadMem_462c6a, %struct.Memory** %MEMORY
  %loadMem_462c6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7313 = getelementptr inbounds %struct.GPR, %struct.GPR* %7312, i32 0, i32 33
  %7314 = getelementptr inbounds %struct.Reg, %struct.Reg* %7313, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %7314 to i64*
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7316 = getelementptr inbounds %struct.GPR, %struct.GPR* %7315, i32 0, i32 1
  %7317 = getelementptr inbounds %struct.Reg, %struct.Reg* %7316, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %7317 to i32*
  %7318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7319 = getelementptr inbounds %struct.GPR, %struct.GPR* %7318, i32 0, i32 15
  %7320 = getelementptr inbounds %struct.Reg, %struct.Reg* %7319, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %7320 to i64*
  %7321 = load i64, i64* %RBP.i16
  %7322 = sub i64 %7321, 60
  %7323 = load i32, i32* %EAX.i15
  %7324 = zext i32 %7323 to i64
  %7325 = load i64, i64* %PC.i14
  %7326 = add i64 %7325, 3
  store i64 %7326, i64* %PC.i14
  %7327 = inttoptr i64 %7322 to i32*
  store i32 %7323, i32* %7327
  store %struct.Memory* %loadMem_462c6d, %struct.Memory** %MEMORY
  %loadMem_462c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7329 = getelementptr inbounds %struct.GPR, %struct.GPR* %7328, i32 0, i32 33
  %7330 = getelementptr inbounds %struct.Reg, %struct.Reg* %7329, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7330 to i64*
  %7331 = load i64, i64* %PC.i13
  %7332 = add i64 %7331, -1380
  %7333 = load i64, i64* %PC.i13
  %7334 = add i64 %7333, 5
  store i64 %7334, i64* %PC.i13
  %7335 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7332, i64* %7335, align 8
  store %struct.Memory* %loadMem_462c70, %struct.Memory** %MEMORY
  br label %block_.L_46270c

block_.L_462c75:                                  ; preds = %block_.L_46270c
  %loadMem_462c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7337 = getelementptr inbounds %struct.GPR, %struct.GPR* %7336, i32 0, i32 33
  %7338 = getelementptr inbounds %struct.Reg, %struct.Reg* %7337, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7338 to i64*
  %7339 = load i64, i64* %PC.i12
  %7340 = add i64 %7339, 5
  %7341 = load i64, i64* %PC.i12
  %7342 = add i64 %7341, 5
  store i64 %7342, i64* %PC.i12
  %7343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7340, i64* %7343, align 8
  store %struct.Memory* %loadMem_462c75, %struct.Memory** %MEMORY
  br label %block_.L_462c7a

block_.L_462c7a:                                  ; preds = %block_.L_462c75
  %loadMem_462c7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 33
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %7346 to i64*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 1
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %7349 to i64*
  %7350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7351 = getelementptr inbounds %struct.GPR, %struct.GPR* %7350, i32 0, i32 15
  %7352 = getelementptr inbounds %struct.Reg, %struct.Reg* %7351, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %7352 to i64*
  %7353 = load i64, i64* %RBP.i11
  %7354 = sub i64 %7353, 68
  %7355 = load i64, i64* %PC.i9
  %7356 = add i64 %7355, 3
  store i64 %7356, i64* %PC.i9
  %7357 = inttoptr i64 %7354 to i32*
  %7358 = load i32, i32* %7357
  %7359 = zext i32 %7358 to i64
  store i64 %7359, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_462c7a, %struct.Memory** %MEMORY
  %loadMem_462c7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 33
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7362 to i64*
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7364 = getelementptr inbounds %struct.GPR, %struct.GPR* %7363, i32 0, i32 1
  %7365 = getelementptr inbounds %struct.Reg, %struct.Reg* %7364, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7365 to i64*
  %7366 = load i64, i64* %RAX.i
  %7367 = load i64, i64* %PC.i8
  %7368 = add i64 %7367, 3
  store i64 %7368, i64* %PC.i8
  %7369 = trunc i64 %7366 to i32
  %7370 = add i32 1, %7369
  %7371 = zext i32 %7370 to i64
  store i64 %7371, i64* %RAX.i, align 8
  %7372 = icmp ult i32 %7370, %7369
  %7373 = icmp ult i32 %7370, 1
  %7374 = or i1 %7372, %7373
  %7375 = zext i1 %7374 to i8
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7375, i8* %7376, align 1
  %7377 = and i32 %7370, 255
  %7378 = call i32 @llvm.ctpop.i32(i32 %7377)
  %7379 = trunc i32 %7378 to i8
  %7380 = and i8 %7379, 1
  %7381 = xor i8 %7380, 1
  %7382 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7381, i8* %7382, align 1
  %7383 = xor i64 1, %7366
  %7384 = trunc i64 %7383 to i32
  %7385 = xor i32 %7384, %7370
  %7386 = lshr i32 %7385, 4
  %7387 = trunc i32 %7386 to i8
  %7388 = and i8 %7387, 1
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7388, i8* %7389, align 1
  %7390 = icmp eq i32 %7370, 0
  %7391 = zext i1 %7390 to i8
  %7392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7391, i8* %7392, align 1
  %7393 = lshr i32 %7370, 31
  %7394 = trunc i32 %7393 to i8
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7394, i8* %7395, align 1
  %7396 = lshr i32 %7369, 31
  %7397 = xor i32 %7393, %7396
  %7398 = add i32 %7397, %7393
  %7399 = icmp eq i32 %7398, 2
  %7400 = zext i1 %7399 to i8
  %7401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7400, i8* %7401, align 1
  store %struct.Memory* %loadMem_462c7d, %struct.Memory** %MEMORY
  %loadMem_462c80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7403 = getelementptr inbounds %struct.GPR, %struct.GPR* %7402, i32 0, i32 33
  %7404 = getelementptr inbounds %struct.Reg, %struct.Reg* %7403, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %7404 to i64*
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7406 = getelementptr inbounds %struct.GPR, %struct.GPR* %7405, i32 0, i32 1
  %7407 = getelementptr inbounds %struct.Reg, %struct.Reg* %7406, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7407 to i32*
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7409 = getelementptr inbounds %struct.GPR, %struct.GPR* %7408, i32 0, i32 15
  %7410 = getelementptr inbounds %struct.Reg, %struct.Reg* %7409, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %7410 to i64*
  %7411 = load i64, i64* %RBP.i7
  %7412 = sub i64 %7411, 68
  %7413 = load i32, i32* %EAX.i
  %7414 = zext i32 %7413 to i64
  %7415 = load i64, i64* %PC.i6
  %7416 = add i64 %7415, 3
  store i64 %7416, i64* %PC.i6
  %7417 = inttoptr i64 %7412 to i32*
  store i32 %7413, i32* %7417
  store %struct.Memory* %loadMem_462c80, %struct.Memory** %MEMORY
  %loadMem_462c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 33
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7420 to i64*
  %7421 = load i64, i64* %PC.i5
  %7422 = add i64 %7421, -1432
  %7423 = load i64, i64* %PC.i5
  %7424 = add i64 %7423, 5
  store i64 %7424, i64* %PC.i5
  %7425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7422, i64* %7425, align 8
  store %struct.Memory* %loadMem_462c83, %struct.Memory** %MEMORY
  br label %block_.L_4626eb

block_.L_462c88:                                  ; preds = %block_.L_4626eb
  %loadMem_462c88 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7427 = getelementptr inbounds %struct.GPR, %struct.GPR* %7426, i32 0, i32 33
  %7428 = getelementptr inbounds %struct.Reg, %struct.Reg* %7427, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7428 to i64*
  %7429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7430 = getelementptr inbounds %struct.GPR, %struct.GPR* %7429, i32 0, i32 13
  %7431 = getelementptr inbounds %struct.Reg, %struct.Reg* %7430, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %7431 to i64*
  %7432 = load i64, i64* %RSP.i
  %7433 = load i64, i64* %PC.i4
  %7434 = add i64 %7433, 4
  store i64 %7434, i64* %PC.i4
  %7435 = add i64 96, %7432
  store i64 %7435, i64* %RSP.i, align 8
  %7436 = icmp ult i64 %7435, %7432
  %7437 = icmp ult i64 %7435, 96
  %7438 = or i1 %7436, %7437
  %7439 = zext i1 %7438 to i8
  %7440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7439, i8* %7440, align 1
  %7441 = trunc i64 %7435 to i32
  %7442 = and i32 %7441, 255
  %7443 = call i32 @llvm.ctpop.i32(i32 %7442)
  %7444 = trunc i32 %7443 to i8
  %7445 = and i8 %7444, 1
  %7446 = xor i8 %7445, 1
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7446, i8* %7447, align 1
  %7448 = xor i64 96, %7432
  %7449 = xor i64 %7448, %7435
  %7450 = lshr i64 %7449, 4
  %7451 = trunc i64 %7450 to i8
  %7452 = and i8 %7451, 1
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7452, i8* %7453, align 1
  %7454 = icmp eq i64 %7435, 0
  %7455 = zext i1 %7454 to i8
  %7456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7455, i8* %7456, align 1
  %7457 = lshr i64 %7435, 63
  %7458 = trunc i64 %7457 to i8
  %7459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7458, i8* %7459, align 1
  %7460 = lshr i64 %7432, 63
  %7461 = xor i64 %7457, %7460
  %7462 = add i64 %7461, %7457
  %7463 = icmp eq i64 %7462, 2
  %7464 = zext i1 %7463 to i8
  %7465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7464, i8* %7465, align 1
  store %struct.Memory* %loadMem_462c88, %struct.Memory** %MEMORY
  %loadMem_462c8c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7467 = getelementptr inbounds %struct.GPR, %struct.GPR* %7466, i32 0, i32 33
  %7468 = getelementptr inbounds %struct.Reg, %struct.Reg* %7467, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7468 to i64*
  %7469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7470 = getelementptr inbounds %struct.GPR, %struct.GPR* %7469, i32 0, i32 15
  %7471 = getelementptr inbounds %struct.Reg, %struct.Reg* %7470, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7471 to i64*
  %7472 = load i64, i64* %PC.i2
  %7473 = add i64 %7472, 1
  store i64 %7473, i64* %PC.i2
  %7474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7475 = load i64, i64* %7474, align 8
  %7476 = add i64 %7475, 8
  %7477 = inttoptr i64 %7475 to i64*
  %7478 = load i64, i64* %7477
  store i64 %7478, i64* %RBP.i3, align 8
  store i64 %7476, i64* %7474, align 8
  store %struct.Memory* %loadMem_462c8c, %struct.Memory** %MEMORY
  %loadMem_462c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7480 = getelementptr inbounds %struct.GPR, %struct.GPR* %7479, i32 0, i32 33
  %7481 = getelementptr inbounds %struct.Reg, %struct.Reg* %7480, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7481 to i64*
  %7482 = load i64, i64* %PC.i1
  %7483 = add i64 %7482, 1
  store i64 %7483, i64* %PC.i1
  %7484 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7486 = load i64, i64* %7485, align 8
  %7487 = inttoptr i64 %7486 to i64*
  %7488 = load i64, i64* %7487
  store i64 %7488, i64* %7484, align 8
  %7489 = add i64 %7486, 8
  store i64 %7489, i64* %7485, align 8
  store %struct.Memory* %loadMem_462c8d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_462c8d
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

define %struct.Memory* @routine_movl__0x3___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__edx__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 20
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_movl__r8d__MINUS0x24__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 36
  %14 = load i32, i32* %R8D
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 4
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rcx_1____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDX, align 8
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

define %struct.Memory* @routine_subl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 40
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

define %struct.Memory* @routine_cmpl_MINUS0x14__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 20
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

define %struct.Memory* @routine_jge_.L_462c88(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__edx__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 56
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
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

define %struct.Memory* @routine_jge_.L_462c75(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x7ae1b0___rax_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x34__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_movslq__ecx___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RAX, align 8
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

define %struct.Memory* @routine_je_.L_462743(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_462c67(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_462c62(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 4, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x3c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movslq__edx___rsi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RSI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = shl i64 %13, 32
  %17 = ashr exact i64 %16, 32
  store i64 %17, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7ae1b0___rsi_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8053168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x30__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x40__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_462789(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_movl_MINUS0x38__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 44
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

define %struct.Memory* @routine_jne_.L_46290e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %EAX
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 2
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.countlib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 4
  %14 = icmp ult i32 %9, 4
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
  %23 = xor i64 4, %10
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

define %struct.Memory* @routine_jle_.L_46290e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x24__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 36
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

define %struct.Memory* @routine_movslq_MINUS0x48__rbp____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_462822(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_46280f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x28__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_462814(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_462822(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addl_MINUS0x48__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 72
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

define %struct.Memory* @routine_jmpq_.L_4627cb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_462909(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46283c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_MINUS0x20__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 400
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

define %struct.Memory* @routine_jge_.L_4628ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x38__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 56
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

define %struct.Memory* @routine_jne_.L_4628ec(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x50__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x50__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 80
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x190__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0x1___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 1
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
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

define %struct.Memory* @routine_jge_.L_4628d4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x50__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl___rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 3
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i32*
  %22 = load i32, i32* %21
  %23 = zext i32 %22 to i64
  store i64 %23, i64* %RCX, align 8
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

define %struct.Memory* @routine_movl__ecx____rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i32, i32* %ECX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xc8__rax__rdx_4____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 200
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

define %struct.Memory* @routine_movl__ecx__0xc8__rax__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 7
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDX = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RDX
  %17 = mul i64 %16, 4
  %18 = add i64 %15, 200
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

define %struct.Memory* @routine_jmpq_.L_462870(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x190__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
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

define %struct.Memory* @routine_movl__ecx__0x190__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_4628ff(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4628f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462843(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462904(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462909(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462c4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_462c4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
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

define %struct.Memory* @routine_cmpl__0x1___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %9, 1
  %14 = icmp ult i32 %9, 1
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
  %23 = xor i64 1, %10
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

define %struct.Memory* @routine_jne_.L_462a54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_46297d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x54__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 84
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x54__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 84
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_4629e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x34__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 52
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_cmpl__esi___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 9
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %ESI = bitcast %union.anon* %11 to i32*
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %ESI
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

define %struct.Memory* @routine_jne_.L_4629ce(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0xc8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
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

define %struct.Memory* @routine_addl__0xa___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 10, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 10
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
  %26 = xor i64 10, %9
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

define %struct.Memory* @routine_movl__edx__0xc8__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 200
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

define %struct.Memory* @routine_jmpq_.L_4629e1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4629d3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462984(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_462a4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x32__0x190__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 50
  %16 = icmp ult i32 %14, 50
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
  %25 = xor i32 %14, 50
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

define %struct.Memory* @routine_jge_.L_462a4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_0x190__rdx____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 400
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl__0xa__0xc8__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 200
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 10, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x190__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0x190__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 400
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_462a4f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462c45(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462a59(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x58__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_462abd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x58__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_462aaa(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0x0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = zext i32 %12 to i64
  store i64 %13, i64* %RDX, align 8
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %14, align 1
  %15 = and i32 %12, 255
  %16 = call i32 @llvm.ctpop.i32(i32 %15)
  %17 = trunc i32 %16 to i8
  %18 = and i8 %17, 1
  %19 = xor i8 %18, 1
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %19, i8* %20, align 1
  %21 = trunc i64 %9 to i32
  %22 = xor i32 %21, %12
  %23 = lshr i32 %22, 4
  %24 = trunc i32 %23 to i8
  %25 = and i8 %24, 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %25, i8* %26, align 1
  %27 = icmp eq i32 %12, 0
  %28 = zext i1 %27 to i8
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %28, i8* %29, align 1
  %30 = lshr i32 %12, 31
  %31 = trunc i32 %30 to i8
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %31, i8* %32, align 1
  %33 = lshr i32 %12, 31
  %34 = xor i32 %30, %33
  %35 = add i32 %34, %30
  %36 = icmp eq i32 %35, 2
  %37 = zext i1 %36 to i8
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %37, i8* %38, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_462abd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462aaf(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_462a60(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_462b26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_462b26(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0xc8__rcx__rdx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = mul i64 %13, 4
  %15 = add i64 %12, 200
  %16 = add i64 %15, %14
  %17 = load i64, i64* %PC
  %18 = add i64 %17, 11
  store i64 %18, i64* %PC
  %19 = inttoptr i64 %16 to i32*
  store i32 0, i32* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_462b2b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_462c40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_462b5e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_462c40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_462b63(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_462bca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_MINUS0x30__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 48
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RSI, align 8
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

define %struct.Memory* @routine_jne_.L_462bb7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_462bca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462bbc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462b6a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_462c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_462c36(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_462c3b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462c40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462c4a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462c54(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46274a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_46270c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_462c7a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_4626eb(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
