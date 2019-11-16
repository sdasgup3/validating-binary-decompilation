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
%G_0x6d4518_type = type <{ [8 x i8] }>
%G_0x70fcf0_type = type <{ [8 x i8] }>
%G_0x7247a0_type = type <{ [4 x i8] }>
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
@G_0x6d4518 = global %G_0x6d4518_type zeroinitializer
@G_0x70fcf0 = global %G_0x70fcf0_type zeroinitializer
@G_0x7247a0 = global %G_0x7247a0_type zeroinitializer

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
define %struct.Memory* @set_mbaff_parameters(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_49cf20 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_49cf20, %struct.Memory** %MEMORY
  %loadMem_49cf21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i932 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i933 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i
  %27 = load i64, i64* %PC.i932
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i932
  store i64 %26, i64* %RBP.i933, align 8
  store %struct.Memory* %loadMem_49cf21, %struct.Memory** %MEMORY
  %loadMem_49cf24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i930 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RAX.i931 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %PC.i930
  %36 = add i64 %35, 8
  store i64 %36, i64* %PC.i930
  %37 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %37, i64* %RAX.i931, align 8
  store %struct.Memory* %loadMem_49cf24, %struct.Memory** %MEMORY
  %loadMem_49cf2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %38 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %39 = getelementptr inbounds %struct.GPR, %struct.GPR* %38, i32 0, i32 33
  %40 = getelementptr inbounds %struct.Reg, %struct.Reg* %39, i32 0, i32 0
  %PC.i928 = bitcast %union.anon* %40 to i64*
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %42 = getelementptr inbounds %struct.GPR, %struct.GPR* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.Reg, %struct.Reg* %42, i32 0, i32 0
  %RAX.i929 = bitcast %union.anon* %43 to i64*
  %44 = load i64, i64* %RAX.i929
  %45 = add i64 %44, 14168
  %46 = load i64, i64* %PC.i928
  %47 = add i64 %46, 7
  store i64 %47, i64* %PC.i928
  %48 = inttoptr i64 %45 to i64*
  %49 = load i64, i64* %48
  store i64 %49, i64* %RAX.i929, align 8
  store %struct.Memory* %loadMem_49cf2c, %struct.Memory** %MEMORY
  %loadMem_49cf33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %50 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %51 = getelementptr inbounds %struct.GPR, %struct.GPR* %50, i32 0, i32 33
  %52 = getelementptr inbounds %struct.Reg, %struct.Reg* %51, i32 0, i32 0
  %PC.i926 = bitcast %union.anon* %52 to i64*
  %53 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %54 = getelementptr inbounds %struct.GPR, %struct.GPR* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.Reg, %struct.Reg* %54, i32 0, i32 0
  %RCX.i927 = bitcast %union.anon* %55 to i64*
  %56 = load i64, i64* %PC.i926
  %57 = add i64 %56, 8
  store i64 %57, i64* %PC.i926
  %58 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %58, i64* %RCX.i927, align 8
  store %struct.Memory* %loadMem_49cf33, %struct.Memory** %MEMORY
  %loadMem_49cf3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %59 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %60 = getelementptr inbounds %struct.GPR, %struct.GPR* %59, i32 0, i32 33
  %61 = getelementptr inbounds %struct.Reg, %struct.Reg* %60, i32 0, i32 0
  %PC.i924 = bitcast %union.anon* %61 to i64*
  %62 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %63 = getelementptr inbounds %struct.GPR, %struct.GPR* %62, i32 0, i32 5
  %64 = getelementptr inbounds %struct.Reg, %struct.Reg* %63, i32 0, i32 0
  %RCX.i925 = bitcast %union.anon* %64 to i64*
  %65 = load i64, i64* %RCX.i925
  %66 = add i64 %65, 12
  %67 = load i64, i64* %PC.i924
  %68 = add i64 %67, 4
  store i64 %68, i64* %PC.i924
  %69 = inttoptr i64 %66 to i32*
  %70 = load i32, i32* %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %RCX.i925, align 8
  store %struct.Memory* %loadMem_49cf3b, %struct.Memory** %MEMORY
  %loadMem_49cf3f = load %struct.Memory*, %struct.Memory** %MEMORY
  %72 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %73 = getelementptr inbounds %struct.GPR, %struct.GPR* %72, i32 0, i32 33
  %74 = getelementptr inbounds %struct.Reg, %struct.Reg* %73, i32 0, i32 0
  %PC.i922 = bitcast %union.anon* %74 to i64*
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 5
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %RCX.i923 = bitcast %union.anon* %77 to i64*
  %78 = load i64, i64* %RCX.i923
  %79 = load i64, i64* %PC.i922
  %80 = add i64 %79, 7
  store i64 %80, i64* %PC.i922
  %81 = sext i64 %78 to i128
  %82 = and i128 %81, -18446744073709551616
  %83 = zext i64 %78 to i128
  %84 = or i128 %82, %83
  %85 = mul i128 632, %84
  %86 = trunc i128 %85 to i64
  store i64 %86, i64* %RCX.i923, align 8
  %87 = sext i64 %86 to i128
  %88 = icmp ne i128 %87, %85
  %89 = zext i1 %88 to i8
  %90 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %89, i8* %90, align 1
  %91 = trunc i128 %85 to i32
  %92 = and i32 %91, 255
  %93 = call i32 @llvm.ctpop.i32(i32 %92)
  %94 = trunc i32 %93 to i8
  %95 = and i8 %94, 1
  %96 = xor i8 %95, 1
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %96, i8* %97, align 1
  %98 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %98, align 1
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %99, align 1
  %100 = lshr i64 %86, 63
  %101 = trunc i64 %100 to i8
  %102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %101, i8* %102, align 1
  %103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %89, i8* %103, align 1
  store %struct.Memory* %loadMem_49cf3f, %struct.Memory** %MEMORY
  %loadMem_49cf46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %105 = getelementptr inbounds %struct.GPR, %struct.GPR* %104, i32 0, i32 33
  %106 = getelementptr inbounds %struct.Reg, %struct.Reg* %105, i32 0, i32 0
  %PC.i919 = bitcast %union.anon* %106 to i64*
  %107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %108 = getelementptr inbounds %struct.GPR, %struct.GPR* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.Reg, %struct.Reg* %108, i32 0, i32 0
  %RAX.i920 = bitcast %union.anon* %109 to i64*
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %111 = getelementptr inbounds %struct.GPR, %struct.GPR* %110, i32 0, i32 5
  %112 = getelementptr inbounds %struct.Reg, %struct.Reg* %111, i32 0, i32 0
  %RCX.i921 = bitcast %union.anon* %112 to i64*
  %113 = load i64, i64* %RAX.i920
  %114 = load i64, i64* %RCX.i921
  %115 = load i64, i64* %PC.i919
  %116 = add i64 %115, 3
  store i64 %116, i64* %PC.i919
  %117 = add i64 %114, %113
  store i64 %117, i64* %RAX.i920, align 8
  %118 = icmp ult i64 %117, %113
  %119 = icmp ult i64 %117, %114
  %120 = or i1 %118, %119
  %121 = zext i1 %120 to i8
  %122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %121, i8* %122, align 1
  %123 = trunc i64 %117 to i32
  %124 = and i32 %123, 255
  %125 = call i32 @llvm.ctpop.i32(i32 %124)
  %126 = trunc i32 %125 to i8
  %127 = and i8 %126, 1
  %128 = xor i8 %127, 1
  %129 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %128, i8* %129, align 1
  %130 = xor i64 %114, %113
  %131 = xor i64 %130, %117
  %132 = lshr i64 %131, 4
  %133 = trunc i64 %132 to i8
  %134 = and i8 %133, 1
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %134, i8* %135, align 1
  %136 = icmp eq i64 %117, 0
  %137 = zext i1 %136 to i8
  %138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %137, i8* %138, align 1
  %139 = lshr i64 %117, 63
  %140 = trunc i64 %139 to i8
  %141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %140, i8* %141, align 1
  %142 = lshr i64 %113, 63
  %143 = lshr i64 %114, 63
  %144 = xor i64 %139, %142
  %145 = xor i64 %139, %143
  %146 = add i64 %144, %145
  %147 = icmp eq i64 %146, 2
  %148 = zext i1 %147 to i8
  %149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %148, i8* %149, align 1
  store %struct.Memory* %loadMem_49cf46, %struct.Memory** %MEMORY
  %loadMem_49cf49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %151 = getelementptr inbounds %struct.GPR, %struct.GPR* %150, i32 0, i32 33
  %152 = getelementptr inbounds %struct.Reg, %struct.Reg* %151, i32 0, i32 0
  %PC.i916 = bitcast %union.anon* %152 to i64*
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %RAX.i917 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 15
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %RBP.i918 = bitcast %union.anon* %158 to i64*
  %159 = load i64, i64* %RBP.i918
  %160 = sub i64 %159, 24
  %161 = load i64, i64* %RAX.i917
  %162 = load i64, i64* %PC.i916
  %163 = add i64 %162, 4
  store i64 %163, i64* %PC.i916
  %164 = inttoptr i64 %160 to i64*
  store i64 %161, i64* %164
  store %struct.Memory* %loadMem_49cf49, %struct.Memory** %MEMORY
  %loadMem_49cf4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %166 = getelementptr inbounds %struct.GPR, %struct.GPR* %165, i32 0, i32 33
  %167 = getelementptr inbounds %struct.Reg, %struct.Reg* %166, i32 0, i32 0
  %PC.i914 = bitcast %union.anon* %167 to i64*
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %169 = getelementptr inbounds %struct.GPR, %struct.GPR* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.Reg, %struct.Reg* %169, i32 0, i32 0
  %RDX.i915 = bitcast %union.anon* %170 to i64*
  %171 = load i64, i64* %PC.i914
  %172 = add i64 %171, 7
  store i64 %172, i64* %PC.i914
  %173 = load i32, i32* bitcast (%G_0x7247a0_type* @G_0x7247a0 to i32*)
  %174 = zext i32 %173 to i64
  store i64 %174, i64* %RDX.i915, align 8
  store %struct.Memory* %loadMem_49cf4d, %struct.Memory** %MEMORY
  %loadMem_49cf54 = load %struct.Memory*, %struct.Memory** %MEMORY
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 33
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %PC.i911 = bitcast %union.anon* %177 to i64*
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %179 = getelementptr inbounds %struct.GPR, %struct.GPR* %178, i32 0, i32 7
  %180 = getelementptr inbounds %struct.Reg, %struct.Reg* %179, i32 0, i32 0
  %EDX.i912 = bitcast %union.anon* %180 to i32*
  %181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %182 = getelementptr inbounds %struct.GPR, %struct.GPR* %181, i32 0, i32 15
  %183 = getelementptr inbounds %struct.Reg, %struct.Reg* %182, i32 0, i32 0
  %RBP.i913 = bitcast %union.anon* %183 to i64*
  %184 = load i64, i64* %RBP.i913
  %185 = sub i64 %184, 28
  %186 = load i32, i32* %EDX.i912
  %187 = zext i32 %186 to i64
  %188 = load i64, i64* %PC.i911
  %189 = add i64 %188, 3
  store i64 %189, i64* %PC.i911
  %190 = inttoptr i64 %185 to i32*
  store i32 %186, i32* %190
  store %struct.Memory* %loadMem_49cf54, %struct.Memory** %MEMORY
  %loadMem_49cf57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %192 = getelementptr inbounds %struct.GPR, %struct.GPR* %191, i32 0, i32 33
  %193 = getelementptr inbounds %struct.Reg, %struct.Reg* %192, i32 0, i32 0
  %PC.i909 = bitcast %union.anon* %193 to i64*
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %RAX.i910 = bitcast %union.anon* %196 to i64*
  %197 = load i64, i64* %PC.i909
  %198 = add i64 %197, 8
  store i64 %198, i64* %PC.i909
  %199 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %199, i64* %RAX.i910, align 8
  store %struct.Memory* %loadMem_49cf57, %struct.Memory** %MEMORY
  %loadMem_49cf5f = load %struct.Memory*, %struct.Memory** %MEMORY
  %200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %201 = getelementptr inbounds %struct.GPR, %struct.GPR* %200, i32 0, i32 33
  %202 = getelementptr inbounds %struct.Reg, %struct.Reg* %201, i32 0, i32 0
  %PC.i907 = bitcast %union.anon* %202 to i64*
  %203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %204 = getelementptr inbounds %struct.GPR, %struct.GPR* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.Reg, %struct.Reg* %204, i32 0, i32 0
  %RAX.i908 = bitcast %union.anon* %205 to i64*
  %206 = load i64, i64* %RAX.i908
  %207 = add i64 %206, 24
  %208 = load i64, i64* %PC.i907
  %209 = add i64 %208, 4
  store i64 %209, i64* %PC.i907
  %210 = inttoptr i64 %207 to i32*
  %211 = load i32, i32* %210
  %212 = sub i32 %211, 1
  %213 = icmp ult i32 %211, 1
  %214 = zext i1 %213 to i8
  %215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %214, i8* %215, align 1
  %216 = and i32 %212, 255
  %217 = call i32 @llvm.ctpop.i32(i32 %216)
  %218 = trunc i32 %217 to i8
  %219 = and i8 %218, 1
  %220 = xor i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %220, i8* %221, align 1
  %222 = xor i32 %211, 1
  %223 = xor i32 %222, %212
  %224 = lshr i32 %223, 4
  %225 = trunc i32 %224 to i8
  %226 = and i8 %225, 1
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %226, i8* %227, align 1
  %228 = icmp eq i32 %212, 0
  %229 = zext i1 %228 to i8
  %230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %229, i8* %230, align 1
  %231 = lshr i32 %212, 31
  %232 = trunc i32 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %232, i8* %233, align 1
  %234 = lshr i32 %211, 31
  %235 = xor i32 %231, %234
  %236 = add i32 %235, %234
  %237 = icmp eq i32 %236, 2
  %238 = zext i1 %237 to i8
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %238, i8* %239, align 1
  store %struct.Memory* %loadMem_49cf5f, %struct.Memory** %MEMORY
  %loadMem_49cf63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 33
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %PC.i905 = bitcast %union.anon* %242 to i64*
  %243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %244 = getelementptr inbounds %struct.GPR, %struct.GPR* %243, i32 0, i32 9
  %245 = getelementptr inbounds %struct.Reg, %struct.Reg* %244, i32 0, i32 0
  %246 = bitcast %union.anon* %245 to %struct.anon.2*
  %SIL.i906 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %246, i32 0, i32 0
  %247 = load i64, i64* %PC.i905
  %248 = add i64 %247, 4
  store i64 %248, i64* %PC.i905
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %250 = load i8, i8* %249, align 1
  store i8 %250, i8* %SIL.i906, align 1
  store %struct.Memory* %loadMem_49cf63, %struct.Memory** %MEMORY
  %loadMem_49cf67 = load %struct.Memory*, %struct.Memory** %MEMORY
  %251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %252 = getelementptr inbounds %struct.GPR, %struct.GPR* %251, i32 0, i32 33
  %253 = getelementptr inbounds %struct.Reg, %struct.Reg* %252, i32 0, i32 0
  %PC.i903 = bitcast %union.anon* %253 to i64*
  %254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %255 = getelementptr inbounds %struct.GPR, %struct.GPR* %254, i32 0, i32 9
  %256 = getelementptr inbounds %struct.Reg, %struct.Reg* %255, i32 0, i32 0
  %257 = bitcast %union.anon* %256 to %struct.anon.2*
  %SIL.i904 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %257, i32 0, i32 0
  %258 = load i8, i8* %SIL.i904
  %259 = zext i8 %258 to i64
  %260 = load i64, i64* %PC.i903
  %261 = add i64 %260, 4
  store i64 %261, i64* %PC.i903
  %262 = and i64 1, %259
  %263 = trunc i64 %262 to i8
  store i8 %263, i8* %SIL.i904, align 1
  %264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %264, align 1
  %265 = trunc i64 %262 to i32
  %266 = and i32 %265, 255
  %267 = call i32 @llvm.ctpop.i32(i32 %266)
  %268 = trunc i32 %267 to i8
  %269 = and i8 %268, 1
  %270 = xor i8 %269, 1
  %271 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %270, i8* %271, align 1
  %272 = icmp eq i8 %263, 0
  %273 = zext i1 %272 to i8
  %274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %273, i8* %274, align 1
  %275 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %275, align 1
  %276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %276, align 1
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %277, align 1
  store %struct.Memory* %loadMem_49cf67, %struct.Memory** %MEMORY
  %loadMem_49cf6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %279 = getelementptr inbounds %struct.GPR, %struct.GPR* %278, i32 0, i32 33
  %280 = getelementptr inbounds %struct.Reg, %struct.Reg* %279, i32 0, i32 0
  %PC.i901 = bitcast %union.anon* %280 to i64*
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %282 = getelementptr inbounds %struct.GPR, %struct.GPR* %281, i32 0, i32 9
  %283 = getelementptr inbounds %struct.Reg, %struct.Reg* %282, i32 0, i32 0
  %284 = bitcast %union.anon* %283 to %struct.anon.2*
  %SIL.i = getelementptr inbounds %struct.anon.2, %struct.anon.2* %284, i32 0, i32 0
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 7
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RDX.i902 = bitcast %union.anon* %287 to i64*
  %288 = load i8, i8* %SIL.i
  %289 = zext i8 %288 to i64
  %290 = load i64, i64* %PC.i901
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC.i901
  %292 = and i64 %289, 255
  store i64 %292, i64* %RDX.i902, align 8
  store %struct.Memory* %loadMem_49cf6b, %struct.Memory** %MEMORY
  %loadMem_49cf6f = load %struct.Memory*, %struct.Memory** %MEMORY
  %293 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %294 = getelementptr inbounds %struct.GPR, %struct.GPR* %293, i32 0, i32 33
  %295 = getelementptr inbounds %struct.Reg, %struct.Reg* %294, i32 0, i32 0
  %PC.i898 = bitcast %union.anon* %295 to i64*
  %296 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %297 = getelementptr inbounds %struct.GPR, %struct.GPR* %296, i32 0, i32 7
  %298 = getelementptr inbounds %struct.Reg, %struct.Reg* %297, i32 0, i32 0
  %EDX.i899 = bitcast %union.anon* %298 to i32*
  %299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %300 = getelementptr inbounds %struct.GPR, %struct.GPR* %299, i32 0, i32 15
  %301 = getelementptr inbounds %struct.Reg, %struct.Reg* %300, i32 0, i32 0
  %RBP.i900 = bitcast %union.anon* %301 to i64*
  %302 = load i64, i64* %RBP.i900
  %303 = sub i64 %302, 32
  %304 = load i32, i32* %EDX.i899
  %305 = zext i32 %304 to i64
  %306 = load i64, i64* %PC.i898
  %307 = add i64 %306, 3
  store i64 %307, i64* %PC.i898
  %308 = inttoptr i64 %303 to i32*
  store i32 %304, i32* %308
  store %struct.Memory* %loadMem_49cf6f, %struct.Memory** %MEMORY
  %loadMem_49cf72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %310 = getelementptr inbounds %struct.GPR, %struct.GPR* %309, i32 0, i32 33
  %311 = getelementptr inbounds %struct.Reg, %struct.Reg* %310, i32 0, i32 0
  %PC.i896 = bitcast %union.anon* %311 to i64*
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %313 = getelementptr inbounds %struct.GPR, %struct.GPR* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.Reg, %struct.Reg* %313, i32 0, i32 0
  %RAX.i897 = bitcast %union.anon* %314 to i64*
  %315 = load i64, i64* %PC.i896
  %316 = add i64 %315, 8
  store i64 %316, i64* %PC.i896
  %317 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %317, i64* %RAX.i897, align 8
  store %struct.Memory* %loadMem_49cf72, %struct.Memory** %MEMORY
  %loadMem_49cf7a = load %struct.Memory*, %struct.Memory** %MEMORY
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %319 = getelementptr inbounds %struct.GPR, %struct.GPR* %318, i32 0, i32 33
  %320 = getelementptr inbounds %struct.Reg, %struct.Reg* %319, i32 0, i32 0
  %PC.i894 = bitcast %union.anon* %320 to i64*
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %322 = getelementptr inbounds %struct.GPR, %struct.GPR* %321, i32 0, i32 1
  %323 = getelementptr inbounds %struct.Reg, %struct.Reg* %322, i32 0, i32 0
  %RAX.i895 = bitcast %union.anon* %323 to i64*
  %324 = load i64, i64* %RAX.i895
  %325 = add i64 %324, 104
  %326 = load i64, i64* %PC.i894
  %327 = add i64 %326, 4
  store i64 %327, i64* %PC.i894
  %328 = inttoptr i64 %325 to i64*
  %329 = load i64, i64* %328
  store i64 %329, i64* %RAX.i895, align 8
  store %struct.Memory* %loadMem_49cf7a, %struct.Memory** %MEMORY
  %loadMem_49cf7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %331 = getelementptr inbounds %struct.GPR, %struct.GPR* %330, i32 0, i32 33
  %332 = getelementptr inbounds %struct.Reg, %struct.Reg* %331, i32 0, i32 0
  %PC.i891 = bitcast %union.anon* %332 to i64*
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %334 = getelementptr inbounds %struct.GPR, %struct.GPR* %333, i32 0, i32 1
  %335 = getelementptr inbounds %struct.Reg, %struct.Reg* %334, i32 0, i32 0
  %RAX.i892 = bitcast %union.anon* %335 to i64*
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 15
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %RBP.i893 = bitcast %union.anon* %338 to i64*
  %339 = load i64, i64* %RBP.i893
  %340 = sub i64 %339, 40
  %341 = load i64, i64* %RAX.i892
  %342 = load i64, i64* %PC.i891
  %343 = add i64 %342, 4
  store i64 %343, i64* %PC.i891
  %344 = inttoptr i64 %340 to i64*
  store i64 %341, i64* %344
  store %struct.Memory* %loadMem_49cf7e, %struct.Memory** %MEMORY
  %loadMem_49cf82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %346 = getelementptr inbounds %struct.GPR, %struct.GPR* %345, i32 0, i32 33
  %347 = getelementptr inbounds %struct.Reg, %struct.Reg* %346, i32 0, i32 0
  %PC.i889 = bitcast %union.anon* %347 to i64*
  %348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %349 = getelementptr inbounds %struct.GPR, %struct.GPR* %348, i32 0, i32 1
  %350 = getelementptr inbounds %struct.Reg, %struct.Reg* %349, i32 0, i32 0
  %RAX.i890 = bitcast %union.anon* %350 to i64*
  %351 = load i64, i64* %PC.i889
  %352 = add i64 %351, 8
  store i64 %352, i64* %PC.i889
  %353 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %353, i64* %RAX.i890, align 8
  store %struct.Memory* %loadMem_49cf82, %struct.Memory** %MEMORY
  %loadMem_49cf8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 33
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %PC.i887 = bitcast %union.anon* %356 to i64*
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %358 = getelementptr inbounds %struct.GPR, %struct.GPR* %357, i32 0, i32 1
  %359 = getelementptr inbounds %struct.Reg, %struct.Reg* %358, i32 0, i32 0
  %RAX.i888 = bitcast %union.anon* %359 to i64*
  %360 = load i64, i64* %RAX.i888
  %361 = add i64 %360, 72400
  %362 = load i64, i64* %PC.i887
  %363 = add i64 %362, 7
  store i64 %363, i64* %PC.i887
  %364 = inttoptr i64 %361 to i32*
  %365 = load i32, i32* %364
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %366, align 1
  %367 = and i32 %365, 255
  %368 = call i32 @llvm.ctpop.i32(i32 %367)
  %369 = trunc i32 %368 to i8
  %370 = and i8 %369, 1
  %371 = xor i8 %370, 1
  %372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %371, i8* %372, align 1
  %373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %373, align 1
  %374 = icmp eq i32 %365, 0
  %375 = zext i1 %374 to i8
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %375, i8* %376, align 1
  %377 = lshr i32 %365, 31
  %378 = trunc i32 %377 to i8
  %379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %378, i8* %379, align 1
  %380 = lshr i32 %365, 31
  %381 = xor i32 %377, %380
  %382 = add i32 %381, %380
  %383 = icmp eq i32 %382, 2
  %384 = zext i1 %383 to i8
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %384, i8* %385, align 1
  store %struct.Memory* %loadMem_49cf8a, %struct.Memory** %MEMORY
  %loadMem_49cf91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 33
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %PC.i886 = bitcast %union.anon* %388 to i64*
  %389 = load i64, i64* %PC.i886
  %390 = add i64 %389, 11
  %391 = load i64, i64* %PC.i886
  %392 = add i64 %391, 6
  %393 = load i64, i64* %PC.i886
  %394 = add i64 %393, 6
  store i64 %394, i64* %PC.i886
  %395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %396 = load i8, i8* %395, align 1
  %397 = icmp eq i8 %396, 0
  %398 = zext i1 %397 to i8
  store i8 %398, i8* %BRANCH_TAKEN, align 1
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %400 = select i1 %397, i64 %390, i64 %392
  store i64 %400, i64* %399, align 8
  store %struct.Memory* %loadMem_49cf91, %struct.Memory** %MEMORY
  %loadBr_49cf91 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49cf91 = icmp eq i8 %loadBr_49cf91, 1
  br i1 %cmpBr_49cf91, label %block_.L_49cf9c, label %block_49cf97

block_49cf97:                                     ; preds = %entry
  %loadMem_49cf97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %401 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %402 = getelementptr inbounds %struct.GPR, %struct.GPR* %401, i32 0, i32 33
  %403 = getelementptr inbounds %struct.Reg, %struct.Reg* %402, i32 0, i32 0
  %PC.i885 = bitcast %union.anon* %403 to i64*
  %404 = load i64, i64* %PC.i885
  %405 = add i64 %404, 1797
  %406 = load i64, i64* %PC.i885
  %407 = add i64 %406, 5
  store i64 %407, i64* %PC.i885
  %408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %405, i64* %408, align 8
  store %struct.Memory* %loadMem_49cf97, %struct.Memory** %MEMORY
  br label %block_.L_49d69c

block_.L_49cf9c:                                  ; preds = %entry
  %loadMem_49cf9c = load %struct.Memory*, %struct.Memory** %MEMORY
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 33
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %PC.i883 = bitcast %union.anon* %411 to i64*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 15
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RBP.i884 = bitcast %union.anon* %414 to i64*
  %415 = load i64, i64* %RBP.i884
  %416 = sub i64 %415, 8
  %417 = load i64, i64* %PC.i883
  %418 = add i64 %417, 7
  store i64 %418, i64* %PC.i883
  %419 = inttoptr i64 %416 to i32*
  store i32 0, i32* %419
  store %struct.Memory* %loadMem_49cf9c, %struct.Memory** %MEMORY
  br label %block_.L_49cfa3

block_.L_49cfa3:                                  ; preds = %block_.L_49d02e, %block_.L_49cf9c
  %loadMem_49cfa3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i881 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 15
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RBP.i882 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RBP.i882
  %427 = sub i64 %426, 8
  %428 = load i64, i64* %PC.i881
  %429 = add i64 %428, 4
  store i64 %429, i64* %PC.i881
  %430 = inttoptr i64 %427 to i32*
  %431 = load i32, i32* %430
  %432 = sub i32 %431, 16
  %433 = icmp ult i32 %431, 16
  %434 = zext i1 %433 to i8
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %434, i8* %435, align 1
  %436 = and i32 %432, 255
  %437 = call i32 @llvm.ctpop.i32(i32 %436)
  %438 = trunc i32 %437 to i8
  %439 = and i8 %438, 1
  %440 = xor i8 %439, 1
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %440, i8* %441, align 1
  %442 = xor i32 %431, 16
  %443 = xor i32 %442, %432
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %446, i8* %447, align 1
  %448 = icmp eq i32 %432, 0
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %449, i8* %450, align 1
  %451 = lshr i32 %432, 31
  %452 = trunc i32 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %452, i8* %453, align 1
  %454 = lshr i32 %431, 31
  %455 = xor i32 %451, %454
  %456 = add i32 %455, %454
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %458, i8* %459, align 1
  store %struct.Memory* %loadMem_49cfa3, %struct.Memory** %MEMORY
  %loadMem_49cfa7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i880 = bitcast %union.anon* %462 to i64*
  %463 = load i64, i64* %PC.i880
  %464 = add i64 %463, 149
  %465 = load i64, i64* %PC.i880
  %466 = add i64 %465, 6
  %467 = load i64, i64* %PC.i880
  %468 = add i64 %467, 6
  store i64 %468, i64* %PC.i880
  %469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %470 = load i8, i8* %469, align 1
  %471 = icmp ne i8 %470, 0
  %472 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %473 = load i8, i8* %472, align 1
  %474 = icmp ne i8 %473, 0
  %475 = xor i1 %471, %474
  %476 = xor i1 %475, true
  %477 = zext i1 %476 to i8
  store i8 %477, i8* %BRANCH_TAKEN, align 1
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %479 = select i1 %475, i64 %466, i64 %464
  store i64 %479, i64* %478, align 8
  store %struct.Memory* %loadMem_49cfa7, %struct.Memory** %MEMORY
  %loadBr_49cfa7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49cfa7 = icmp eq i8 %loadBr_49cfa7, 1
  br i1 %cmpBr_49cfa7, label %block_.L_49d03c, label %block_49cfad

block_49cfad:                                     ; preds = %block_.L_49cfa3
  %loadMem_49cfad = load %struct.Memory*, %struct.Memory** %MEMORY
  %480 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %481 = getelementptr inbounds %struct.GPR, %struct.GPR* %480, i32 0, i32 33
  %482 = getelementptr inbounds %struct.Reg, %struct.Reg* %481, i32 0, i32 0
  %PC.i878 = bitcast %union.anon* %482 to i64*
  %483 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %484 = getelementptr inbounds %struct.GPR, %struct.GPR* %483, i32 0, i32 15
  %485 = getelementptr inbounds %struct.Reg, %struct.Reg* %484, i32 0, i32 0
  %RBP.i879 = bitcast %union.anon* %485 to i64*
  %486 = load i64, i64* %RBP.i879
  %487 = sub i64 %486, 4
  %488 = load i64, i64* %PC.i878
  %489 = add i64 %488, 7
  store i64 %489, i64* %PC.i878
  %490 = inttoptr i64 %487 to i32*
  store i32 0, i32* %490
  store %struct.Memory* %loadMem_49cfad, %struct.Memory** %MEMORY
  br label %block_.L_49cfb4

block_.L_49cfb4:                                  ; preds = %block_49cfbe, %block_49cfad
  %loadMem_49cfb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 33
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %PC.i876 = bitcast %union.anon* %493 to i64*
  %494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %495 = getelementptr inbounds %struct.GPR, %struct.GPR* %494, i32 0, i32 15
  %496 = getelementptr inbounds %struct.Reg, %struct.Reg* %495, i32 0, i32 0
  %RBP.i877 = bitcast %union.anon* %496 to i64*
  %497 = load i64, i64* %RBP.i877
  %498 = sub i64 %497, 4
  %499 = load i64, i64* %PC.i876
  %500 = add i64 %499, 4
  store i64 %500, i64* %PC.i876
  %501 = inttoptr i64 %498 to i32*
  %502 = load i32, i32* %501
  %503 = sub i32 %502, 16
  %504 = icmp ult i32 %502, 16
  %505 = zext i1 %504 to i8
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %505, i8* %506, align 1
  %507 = and i32 %503, 255
  %508 = call i32 @llvm.ctpop.i32(i32 %507)
  %509 = trunc i32 %508 to i8
  %510 = and i8 %509, 1
  %511 = xor i8 %510, 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %511, i8* %512, align 1
  %513 = xor i32 %502, 16
  %514 = xor i32 %513, %503
  %515 = lshr i32 %514, 4
  %516 = trunc i32 %515 to i8
  %517 = and i8 %516, 1
  %518 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %517, i8* %518, align 1
  %519 = icmp eq i32 %503, 0
  %520 = zext i1 %519 to i8
  %521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %520, i8* %521, align 1
  %522 = lshr i32 %503, 31
  %523 = trunc i32 %522 to i8
  %524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %523, i8* %524, align 1
  %525 = lshr i32 %502, 31
  %526 = xor i32 %522, %525
  %527 = add i32 %526, %525
  %528 = icmp eq i32 %527, 2
  %529 = zext i1 %528 to i8
  %530 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %529, i8* %530, align 1
  store %struct.Memory* %loadMem_49cfb4, %struct.Memory** %MEMORY
  %loadMem_49cfb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %532 = getelementptr inbounds %struct.GPR, %struct.GPR* %531, i32 0, i32 33
  %533 = getelementptr inbounds %struct.Reg, %struct.Reg* %532, i32 0, i32 0
  %PC.i875 = bitcast %union.anon* %533 to i64*
  %534 = load i64, i64* %PC.i875
  %535 = add i64 %534, 113
  %536 = load i64, i64* %PC.i875
  %537 = add i64 %536, 6
  %538 = load i64, i64* %PC.i875
  %539 = add i64 %538, 6
  store i64 %539, i64* %PC.i875
  %540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %541 = load i8, i8* %540, align 1
  %542 = icmp ne i8 %541, 0
  %543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %544 = load i8, i8* %543, align 1
  %545 = icmp ne i8 %544, 0
  %546 = xor i1 %542, %545
  %547 = xor i1 %546, true
  %548 = zext i1 %547 to i8
  store i8 %548, i8* %BRANCH_TAKEN, align 1
  %549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %550 = select i1 %546, i64 %537, i64 %535
  store i64 %550, i64* %549, align 8
  store %struct.Memory* %loadMem_49cfb8, %struct.Memory** %MEMORY
  %loadBr_49cfb8 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49cfb8 = icmp eq i8 %loadBr_49cfb8, 1
  br i1 %cmpBr_49cfb8, label %block_.L_49d029, label %block_49cfbe

block_49cfbe:                                     ; preds = %block_.L_49cfb4
  %loadMem_49cfbe = load %struct.Memory*, %struct.Memory** %MEMORY
  %551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %552 = getelementptr inbounds %struct.GPR, %struct.GPR* %551, i32 0, i32 33
  %553 = getelementptr inbounds %struct.Reg, %struct.Reg* %552, i32 0, i32 0
  %PC.i873 = bitcast %union.anon* %553 to i64*
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 1
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %RAX.i874 = bitcast %union.anon* %556 to i64*
  %557 = load i64, i64* %PC.i873
  %558 = add i64 %557, 8
  store i64 %558, i64* %PC.i873
  %559 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %559, i64* %RAX.i874, align 8
  store %struct.Memory* %loadMem_49cfbe, %struct.Memory** %MEMORY
  %loadMem_49cfc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i871 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RAX.i872 = bitcast %union.anon* %565 to i64*
  %566 = load i64, i64* %RAX.i872
  %567 = add i64 %566, 6424
  %568 = load i64, i64* %PC.i871
  %569 = add i64 %568, 7
  store i64 %569, i64* %PC.i871
  %570 = inttoptr i64 %567 to i64*
  %571 = load i64, i64* %570
  store i64 %571, i64* %RAX.i872, align 8
  store %struct.Memory* %loadMem_49cfc6, %struct.Memory** %MEMORY
  %loadMem_49cfcd = load %struct.Memory*, %struct.Memory** %MEMORY
  %572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %573 = getelementptr inbounds %struct.GPR, %struct.GPR* %572, i32 0, i32 33
  %574 = getelementptr inbounds %struct.Reg, %struct.Reg* %573, i32 0, i32 0
  %PC.i869 = bitcast %union.anon* %574 to i64*
  %575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %576 = getelementptr inbounds %struct.GPR, %struct.GPR* %575, i32 0, i32 5
  %577 = getelementptr inbounds %struct.Reg, %struct.Reg* %576, i32 0, i32 0
  %RCX.i870 = bitcast %union.anon* %577 to i64*
  %578 = load i64, i64* %PC.i869
  %579 = add i64 %578, 8
  store i64 %579, i64* %PC.i869
  %580 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %580, i64* %RCX.i870, align 8
  store %struct.Memory* %loadMem_49cfcd, %struct.Memory** %MEMORY
  %loadMem_49cfd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %582 = getelementptr inbounds %struct.GPR, %struct.GPR* %581, i32 0, i32 33
  %583 = getelementptr inbounds %struct.Reg, %struct.Reg* %582, i32 0, i32 0
  %PC.i866 = bitcast %union.anon* %583 to i64*
  %584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %585 = getelementptr inbounds %struct.GPR, %struct.GPR* %584, i32 0, i32 5
  %586 = getelementptr inbounds %struct.Reg, %struct.Reg* %585, i32 0, i32 0
  %RCX.i867 = bitcast %union.anon* %586 to i64*
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 7
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %RDX.i868 = bitcast %union.anon* %589 to i64*
  %590 = load i64, i64* %RCX.i867
  %591 = add i64 %590, 156
  %592 = load i64, i64* %PC.i866
  %593 = add i64 %592, 6
  store i64 %593, i64* %PC.i866
  %594 = inttoptr i64 %591 to i32*
  %595 = load i32, i32* %594
  %596 = zext i32 %595 to i64
  store i64 %596, i64* %RDX.i868, align 8
  store %struct.Memory* %loadMem_49cfd5, %struct.Memory** %MEMORY
  %loadMem_49cfdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %598 = getelementptr inbounds %struct.GPR, %struct.GPR* %597, i32 0, i32 33
  %599 = getelementptr inbounds %struct.Reg, %struct.Reg* %598, i32 0, i32 0
  %PC.i863 = bitcast %union.anon* %599 to i64*
  %600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %601 = getelementptr inbounds %struct.GPR, %struct.GPR* %600, i32 0, i32 7
  %602 = getelementptr inbounds %struct.Reg, %struct.Reg* %601, i32 0, i32 0
  %RDX.i864 = bitcast %union.anon* %602 to i64*
  %603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %604 = getelementptr inbounds %struct.GPR, %struct.GPR* %603, i32 0, i32 15
  %605 = getelementptr inbounds %struct.Reg, %struct.Reg* %604, i32 0, i32 0
  %RBP.i865 = bitcast %union.anon* %605 to i64*
  %606 = load i64, i64* %RDX.i864
  %607 = load i64, i64* %RBP.i865
  %608 = sub i64 %607, 8
  %609 = load i64, i64* %PC.i863
  %610 = add i64 %609, 3
  store i64 %610, i64* %PC.i863
  %611 = trunc i64 %606 to i32
  %612 = inttoptr i64 %608 to i32*
  %613 = load i32, i32* %612
  %614 = add i32 %613, %611
  %615 = zext i32 %614 to i64
  store i64 %615, i64* %RDX.i864, align 8
  %616 = icmp ult i32 %614, %611
  %617 = icmp ult i32 %614, %613
  %618 = or i1 %616, %617
  %619 = zext i1 %618 to i8
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %619, i8* %620, align 1
  %621 = and i32 %614, 255
  %622 = call i32 @llvm.ctpop.i32(i32 %621)
  %623 = trunc i32 %622 to i8
  %624 = and i8 %623, 1
  %625 = xor i8 %624, 1
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %625, i8* %626, align 1
  %627 = xor i32 %613, %611
  %628 = xor i32 %627, %614
  %629 = lshr i32 %628, 4
  %630 = trunc i32 %629 to i8
  %631 = and i8 %630, 1
  %632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %631, i8* %632, align 1
  %633 = icmp eq i32 %614, 0
  %634 = zext i1 %633 to i8
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %634, i8* %635, align 1
  %636 = lshr i32 %614, 31
  %637 = trunc i32 %636 to i8
  %638 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %637, i8* %638, align 1
  %639 = lshr i32 %611, 31
  %640 = lshr i32 %613, 31
  %641 = xor i32 %636, %639
  %642 = xor i32 %636, %640
  %643 = add i32 %641, %642
  %644 = icmp eq i32 %643, 2
  %645 = zext i1 %644 to i8
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %645, i8* %646, align 1
  store %struct.Memory* %loadMem_49cfdb, %struct.Memory** %MEMORY
  %loadMem_49cfde = load %struct.Memory*, %struct.Memory** %MEMORY
  %647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %648 = getelementptr inbounds %struct.GPR, %struct.GPR* %647, i32 0, i32 33
  %649 = getelementptr inbounds %struct.Reg, %struct.Reg* %648, i32 0, i32 0
  %PC.i860 = bitcast %union.anon* %649 to i64*
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %651 = getelementptr inbounds %struct.GPR, %struct.GPR* %650, i32 0, i32 7
  %652 = getelementptr inbounds %struct.Reg, %struct.Reg* %651, i32 0, i32 0
  %EDX.i861 = bitcast %union.anon* %652 to i32*
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %654 = getelementptr inbounds %struct.GPR, %struct.GPR* %653, i32 0, i32 5
  %655 = getelementptr inbounds %struct.Reg, %struct.Reg* %654, i32 0, i32 0
  %RCX.i862 = bitcast %union.anon* %655 to i64*
  %656 = load i32, i32* %EDX.i861
  %657 = zext i32 %656 to i64
  %658 = load i64, i64* %PC.i860
  %659 = add i64 %658, 3
  store i64 %659, i64* %PC.i860
  %660 = shl i64 %657, 32
  %661 = ashr exact i64 %660, 32
  store i64 %661, i64* %RCX.i862, align 8
  store %struct.Memory* %loadMem_49cfde, %struct.Memory** %MEMORY
  %loadMem_49cfe1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %663 = getelementptr inbounds %struct.GPR, %struct.GPR* %662, i32 0, i32 33
  %664 = getelementptr inbounds %struct.Reg, %struct.Reg* %663, i32 0, i32 0
  %PC.i857 = bitcast %union.anon* %664 to i64*
  %665 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %666 = getelementptr inbounds %struct.GPR, %struct.GPR* %665, i32 0, i32 1
  %667 = getelementptr inbounds %struct.Reg, %struct.Reg* %666, i32 0, i32 0
  %RAX.i858 = bitcast %union.anon* %667 to i64*
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %669 = getelementptr inbounds %struct.GPR, %struct.GPR* %668, i32 0, i32 5
  %670 = getelementptr inbounds %struct.Reg, %struct.Reg* %669, i32 0, i32 0
  %RCX.i859 = bitcast %union.anon* %670 to i64*
  %671 = load i64, i64* %RAX.i858
  %672 = load i64, i64* %RCX.i859
  %673 = mul i64 %672, 8
  %674 = add i64 %673, %671
  %675 = load i64, i64* %PC.i857
  %676 = add i64 %675, 4
  store i64 %676, i64* %PC.i857
  %677 = inttoptr i64 %674 to i64*
  %678 = load i64, i64* %677
  store i64 %678, i64* %RAX.i858, align 8
  store %struct.Memory* %loadMem_49cfe1, %struct.Memory** %MEMORY
  %loadMem_49cfe5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %680 = getelementptr inbounds %struct.GPR, %struct.GPR* %679, i32 0, i32 33
  %681 = getelementptr inbounds %struct.Reg, %struct.Reg* %680, i32 0, i32 0
  %PC.i855 = bitcast %union.anon* %681 to i64*
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %683 = getelementptr inbounds %struct.GPR, %struct.GPR* %682, i32 0, i32 5
  %684 = getelementptr inbounds %struct.Reg, %struct.Reg* %683, i32 0, i32 0
  %RCX.i856 = bitcast %union.anon* %684 to i64*
  %685 = load i64, i64* %PC.i855
  %686 = add i64 %685, 8
  store i64 %686, i64* %PC.i855
  %687 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %687, i64* %RCX.i856, align 8
  store %struct.Memory* %loadMem_49cfe5, %struct.Memory** %MEMORY
  %loadMem_49cfed = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i852 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 5
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %RCX.i853 = bitcast %union.anon* %693 to i64*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 7
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RDX.i854 = bitcast %union.anon* %696 to i64*
  %697 = load i64, i64* %RCX.i853
  %698 = add i64 %697, 152
  %699 = load i64, i64* %PC.i852
  %700 = add i64 %699, 6
  store i64 %700, i64* %PC.i852
  %701 = inttoptr i64 %698 to i32*
  %702 = load i32, i32* %701
  %703 = zext i32 %702 to i64
  store i64 %703, i64* %RDX.i854, align 8
  store %struct.Memory* %loadMem_49cfed, %struct.Memory** %MEMORY
  %loadMem_49cff3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %705 = getelementptr inbounds %struct.GPR, %struct.GPR* %704, i32 0, i32 33
  %706 = getelementptr inbounds %struct.Reg, %struct.Reg* %705, i32 0, i32 0
  %PC.i849 = bitcast %union.anon* %706 to i64*
  %707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %708 = getelementptr inbounds %struct.GPR, %struct.GPR* %707, i32 0, i32 7
  %709 = getelementptr inbounds %struct.Reg, %struct.Reg* %708, i32 0, i32 0
  %RDX.i850 = bitcast %union.anon* %709 to i64*
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 15
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %RBP.i851 = bitcast %union.anon* %712 to i64*
  %713 = load i64, i64* %RDX.i850
  %714 = load i64, i64* %RBP.i851
  %715 = sub i64 %714, 4
  %716 = load i64, i64* %PC.i849
  %717 = add i64 %716, 3
  store i64 %717, i64* %PC.i849
  %718 = trunc i64 %713 to i32
  %719 = inttoptr i64 %715 to i32*
  %720 = load i32, i32* %719
  %721 = add i32 %720, %718
  %722 = zext i32 %721 to i64
  store i64 %722, i64* %RDX.i850, align 8
  %723 = icmp ult i32 %721, %718
  %724 = icmp ult i32 %721, %720
  %725 = or i1 %723, %724
  %726 = zext i1 %725 to i8
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %726, i8* %727, align 1
  %728 = and i32 %721, 255
  %729 = call i32 @llvm.ctpop.i32(i32 %728)
  %730 = trunc i32 %729 to i8
  %731 = and i8 %730, 1
  %732 = xor i8 %731, 1
  %733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %732, i8* %733, align 1
  %734 = xor i32 %720, %718
  %735 = xor i32 %734, %721
  %736 = lshr i32 %735, 4
  %737 = trunc i32 %736 to i8
  %738 = and i8 %737, 1
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %738, i8* %739, align 1
  %740 = icmp eq i32 %721, 0
  %741 = zext i1 %740 to i8
  %742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %741, i8* %742, align 1
  %743 = lshr i32 %721, 31
  %744 = trunc i32 %743 to i8
  %745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %744, i8* %745, align 1
  %746 = lshr i32 %718, 31
  %747 = lshr i32 %720, 31
  %748 = xor i32 %743, %746
  %749 = xor i32 %743, %747
  %750 = add i32 %748, %749
  %751 = icmp eq i32 %750, 2
  %752 = zext i1 %751 to i8
  %753 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %752, i8* %753, align 1
  store %struct.Memory* %loadMem_49cff3, %struct.Memory** %MEMORY
  %loadMem_49cff6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i846 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 7
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %EDX.i847 = bitcast %union.anon* %759 to i32*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 5
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RCX.i848 = bitcast %union.anon* %762 to i64*
  %763 = load i32, i32* %EDX.i847
  %764 = zext i32 %763 to i64
  %765 = load i64, i64* %PC.i846
  %766 = add i64 %765, 3
  store i64 %766, i64* %PC.i846
  %767 = shl i64 %764, 32
  %768 = ashr exact i64 %767, 32
  store i64 %768, i64* %RCX.i848, align 8
  store %struct.Memory* %loadMem_49cff6, %struct.Memory** %MEMORY
  %loadMem_49cff9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %770 = getelementptr inbounds %struct.GPR, %struct.GPR* %769, i32 0, i32 33
  %771 = getelementptr inbounds %struct.Reg, %struct.Reg* %770, i32 0, i32 0
  %PC.i842 = bitcast %union.anon* %771 to i64*
  %772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %773 = getelementptr inbounds %struct.GPR, %struct.GPR* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.Reg, %struct.Reg* %773, i32 0, i32 0
  %RAX.i843 = bitcast %union.anon* %774 to i64*
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %776 = getelementptr inbounds %struct.GPR, %struct.GPR* %775, i32 0, i32 5
  %777 = getelementptr inbounds %struct.Reg, %struct.Reg* %776, i32 0, i32 0
  %RCX.i844 = bitcast %union.anon* %777 to i64*
  %778 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %779 = getelementptr inbounds %struct.GPR, %struct.GPR* %778, i32 0, i32 7
  %780 = getelementptr inbounds %struct.Reg, %struct.Reg* %779, i32 0, i32 0
  %RDX.i845 = bitcast %union.anon* %780 to i64*
  %781 = load i64, i64* %RAX.i843
  %782 = load i64, i64* %RCX.i844
  %783 = mul i64 %782, 2
  %784 = add i64 %783, %781
  %785 = load i64, i64* %PC.i842
  %786 = add i64 %785, 4
  store i64 %786, i64* %PC.i842
  %787 = inttoptr i64 %784 to i16*
  %788 = load i16, i16* %787
  %789 = zext i16 %788 to i64
  store i64 %789, i64* %RDX.i845, align 8
  store %struct.Memory* %loadMem_49cff9, %struct.Memory** %MEMORY
  %loadMem_49cffd = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i840 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 1
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RAX.i841 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %PC.i840
  %797 = add i64 %796, 8
  store i64 %797, i64* %PC.i840
  %798 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %798, i64* %RAX.i841, align 8
  store %struct.Memory* %loadMem_49cffd, %struct.Memory** %MEMORY
  %loadMem_49d005 = load %struct.Memory*, %struct.Memory** %MEMORY
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 33
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %PC.i838 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 1
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RAX.i839 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RAX.i839
  %806 = load i64, i64* %PC.i838
  %807 = add i64 %806, 4
  store i64 %807, i64* %PC.i838
  %808 = add i64 8, %805
  store i64 %808, i64* %RAX.i839, align 8
  %809 = icmp ult i64 %808, %805
  %810 = icmp ult i64 %808, 8
  %811 = or i1 %809, %810
  %812 = zext i1 %811 to i8
  %813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %812, i8* %813, align 1
  %814 = trunc i64 %808 to i32
  %815 = and i32 %814, 255
  %816 = call i32 @llvm.ctpop.i32(i32 %815)
  %817 = trunc i32 %816 to i8
  %818 = and i8 %817, 1
  %819 = xor i8 %818, 1
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %819, i8* %820, align 1
  %821 = xor i64 8, %805
  %822 = xor i64 %821, %808
  %823 = lshr i64 %822, 4
  %824 = trunc i64 %823 to i8
  %825 = and i8 %824, 1
  %826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %825, i8* %826, align 1
  %827 = icmp eq i64 %808, 0
  %828 = zext i1 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %828, i8* %829, align 1
  %830 = lshr i64 %808, 63
  %831 = trunc i64 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %831, i8* %832, align 1
  %833 = lshr i64 %805, 63
  %834 = xor i64 %830, %833
  %835 = add i64 %834, %830
  %836 = icmp eq i64 %835, 2
  %837 = zext i1 %836 to i8
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %837, i8* %838, align 1
  store %struct.Memory* %loadMem_49d005, %struct.Memory** %MEMORY
  %loadMem_49d009 = load %struct.Memory*, %struct.Memory** %MEMORY
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %840 = getelementptr inbounds %struct.GPR, %struct.GPR* %839, i32 0, i32 33
  %841 = getelementptr inbounds %struct.Reg, %struct.Reg* %840, i32 0, i32 0
  %PC.i835 = bitcast %union.anon* %841 to i64*
  %842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %843 = getelementptr inbounds %struct.GPR, %struct.GPR* %842, i32 0, i32 5
  %844 = getelementptr inbounds %struct.Reg, %struct.Reg* %843, i32 0, i32 0
  %RCX.i836 = bitcast %union.anon* %844 to i64*
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 15
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %RBP.i837 = bitcast %union.anon* %847 to i64*
  %848 = load i64, i64* %RBP.i837
  %849 = sub i64 %848, 8
  %850 = load i64, i64* %PC.i835
  %851 = add i64 %850, 4
  store i64 %851, i64* %PC.i835
  %852 = inttoptr i64 %849 to i32*
  %853 = load i32, i32* %852
  %854 = sext i32 %853 to i64
  store i64 %854, i64* %RCX.i836, align 8
  store %struct.Memory* %loadMem_49d009, %struct.Memory** %MEMORY
  %loadMem_49d00d = load %struct.Memory*, %struct.Memory** %MEMORY
  %855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %856 = getelementptr inbounds %struct.GPR, %struct.GPR* %855, i32 0, i32 33
  %857 = getelementptr inbounds %struct.Reg, %struct.Reg* %856, i32 0, i32 0
  %PC.i833 = bitcast %union.anon* %857 to i64*
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %859 = getelementptr inbounds %struct.GPR, %struct.GPR* %858, i32 0, i32 5
  %860 = getelementptr inbounds %struct.Reg, %struct.Reg* %859, i32 0, i32 0
  %RCX.i834 = bitcast %union.anon* %860 to i64*
  %861 = load i64, i64* %RCX.i834
  %862 = load i64, i64* %PC.i833
  %863 = add i64 %862, 4
  store i64 %863, i64* %PC.i833
  %864 = shl i64 %861, 5
  %865 = icmp slt i64 %864, 0
  %866 = shl i64 %864, 1
  store i64 %866, i64* %RCX.i834, align 8
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %868 = zext i1 %865 to i8
  store i8 %868, i8* %867, align 1
  %869 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %870 = trunc i64 %866 to i32
  %871 = and i32 %870, 254
  %872 = call i32 @llvm.ctpop.i32(i32 %871)
  %873 = trunc i32 %872 to i8
  %874 = and i8 %873, 1
  %875 = xor i8 %874, 1
  store i8 %875, i8* %869, align 1
  %876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %876, align 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %878 = icmp eq i64 %866, 0
  %879 = zext i1 %878 to i8
  store i8 %879, i8* %877, align 1
  %880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %881 = lshr i64 %866, 63
  %882 = trunc i64 %881 to i8
  store i8 %882, i8* %880, align 1
  %883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %883, align 1
  store %struct.Memory* %loadMem_49d00d, %struct.Memory** %MEMORY
  %loadMem_49d011 = load %struct.Memory*, %struct.Memory** %MEMORY
  %884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %885 = getelementptr inbounds %struct.GPR, %struct.GPR* %884, i32 0, i32 33
  %886 = getelementptr inbounds %struct.Reg, %struct.Reg* %885, i32 0, i32 0
  %PC.i830 = bitcast %union.anon* %886 to i64*
  %887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %888 = getelementptr inbounds %struct.GPR, %struct.GPR* %887, i32 0, i32 1
  %889 = getelementptr inbounds %struct.Reg, %struct.Reg* %888, i32 0, i32 0
  %RAX.i831 = bitcast %union.anon* %889 to i64*
  %890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %891 = getelementptr inbounds %struct.GPR, %struct.GPR* %890, i32 0, i32 5
  %892 = getelementptr inbounds %struct.Reg, %struct.Reg* %891, i32 0, i32 0
  %RCX.i832 = bitcast %union.anon* %892 to i64*
  %893 = load i64, i64* %RAX.i831
  %894 = load i64, i64* %RCX.i832
  %895 = load i64, i64* %PC.i830
  %896 = add i64 %895, 3
  store i64 %896, i64* %PC.i830
  %897 = add i64 %894, %893
  store i64 %897, i64* %RAX.i831, align 8
  %898 = icmp ult i64 %897, %893
  %899 = icmp ult i64 %897, %894
  %900 = or i1 %898, %899
  %901 = zext i1 %900 to i8
  %902 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %901, i8* %902, align 1
  %903 = trunc i64 %897 to i32
  %904 = and i32 %903, 255
  %905 = call i32 @llvm.ctpop.i32(i32 %904)
  %906 = trunc i32 %905 to i8
  %907 = and i8 %906, 1
  %908 = xor i8 %907, 1
  %909 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %908, i8* %909, align 1
  %910 = xor i64 %894, %893
  %911 = xor i64 %910, %897
  %912 = lshr i64 %911, 4
  %913 = trunc i64 %912 to i8
  %914 = and i8 %913, 1
  %915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %914, i8* %915, align 1
  %916 = icmp eq i64 %897, 0
  %917 = zext i1 %916 to i8
  %918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %917, i8* %918, align 1
  %919 = lshr i64 %897, 63
  %920 = trunc i64 %919 to i8
  %921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %920, i8* %921, align 1
  %922 = lshr i64 %893, 63
  %923 = lshr i64 %894, 63
  %924 = xor i64 %919, %922
  %925 = xor i64 %919, %923
  %926 = add i64 %924, %925
  %927 = icmp eq i64 %926, 2
  %928 = zext i1 %927 to i8
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %928, i8* %929, align 1
  store %struct.Memory* %loadMem_49d011, %struct.Memory** %MEMORY
  %loadMem_49d014 = load %struct.Memory*, %struct.Memory** %MEMORY
  %930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %931 = getelementptr inbounds %struct.GPR, %struct.GPR* %930, i32 0, i32 33
  %932 = getelementptr inbounds %struct.Reg, %struct.Reg* %931, i32 0, i32 0
  %PC.i827 = bitcast %union.anon* %932 to i64*
  %933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %934 = getelementptr inbounds %struct.GPR, %struct.GPR* %933, i32 0, i32 5
  %935 = getelementptr inbounds %struct.Reg, %struct.Reg* %934, i32 0, i32 0
  %RCX.i828 = bitcast %union.anon* %935 to i64*
  %936 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %937 = getelementptr inbounds %struct.GPR, %struct.GPR* %936, i32 0, i32 15
  %938 = getelementptr inbounds %struct.Reg, %struct.Reg* %937, i32 0, i32 0
  %RBP.i829 = bitcast %union.anon* %938 to i64*
  %939 = load i64, i64* %RBP.i829
  %940 = sub i64 %939, 4
  %941 = load i64, i64* %PC.i827
  %942 = add i64 %941, 4
  store i64 %942, i64* %PC.i827
  %943 = inttoptr i64 %940 to i32*
  %944 = load i32, i32* %943
  %945 = sext i32 %944 to i64
  store i64 %945, i64* %RCX.i828, align 8
  store %struct.Memory* %loadMem_49d014, %struct.Memory** %MEMORY
  %loadMem_49d018 = load %struct.Memory*, %struct.Memory** %MEMORY
  %946 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %947 = getelementptr inbounds %struct.GPR, %struct.GPR* %946, i32 0, i32 33
  %948 = getelementptr inbounds %struct.Reg, %struct.Reg* %947, i32 0, i32 0
  %PC.i823 = bitcast %union.anon* %948 to i64*
  %949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %950 = getelementptr inbounds %struct.GPR, %struct.GPR* %949, i32 0, i32 7
  %951 = getelementptr inbounds %struct.Reg, %struct.Reg* %950, i32 0, i32 0
  %EDX.i824 = bitcast %union.anon* %951 to i32*
  %952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %953 = getelementptr inbounds %struct.GPR, %struct.GPR* %952, i32 0, i32 1
  %954 = getelementptr inbounds %struct.Reg, %struct.Reg* %953, i32 0, i32 0
  %RAX.i825 = bitcast %union.anon* %954 to i64*
  %955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %956 = getelementptr inbounds %struct.GPR, %struct.GPR* %955, i32 0, i32 5
  %957 = getelementptr inbounds %struct.Reg, %struct.Reg* %956, i32 0, i32 0
  %RCX.i826 = bitcast %union.anon* %957 to i64*
  %958 = load i64, i64* %RAX.i825
  %959 = load i64, i64* %RCX.i826
  %960 = mul i64 %959, 4
  %961 = add i64 %960, %958
  %962 = load i32, i32* %EDX.i824
  %963 = zext i32 %962 to i64
  %964 = load i64, i64* %PC.i823
  %965 = add i64 %964, 3
  store i64 %965, i64* %PC.i823
  %966 = inttoptr i64 %961 to i32*
  store i32 %962, i32* %966
  store %struct.Memory* %loadMem_49d018, %struct.Memory** %MEMORY
  %loadMem_49d01b = load %struct.Memory*, %struct.Memory** %MEMORY
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 33
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %PC.i820 = bitcast %union.anon* %969 to i64*
  %970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %971 = getelementptr inbounds %struct.GPR, %struct.GPR* %970, i32 0, i32 1
  %972 = getelementptr inbounds %struct.Reg, %struct.Reg* %971, i32 0, i32 0
  %RAX.i821 = bitcast %union.anon* %972 to i64*
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %974 = getelementptr inbounds %struct.GPR, %struct.GPR* %973, i32 0, i32 15
  %975 = getelementptr inbounds %struct.Reg, %struct.Reg* %974, i32 0, i32 0
  %RBP.i822 = bitcast %union.anon* %975 to i64*
  %976 = load i64, i64* %RBP.i822
  %977 = sub i64 %976, 4
  %978 = load i64, i64* %PC.i820
  %979 = add i64 %978, 3
  store i64 %979, i64* %PC.i820
  %980 = inttoptr i64 %977 to i32*
  %981 = load i32, i32* %980
  %982 = zext i32 %981 to i64
  store i64 %982, i64* %RAX.i821, align 8
  store %struct.Memory* %loadMem_49d01b, %struct.Memory** %MEMORY
  %loadMem_49d01e = load %struct.Memory*, %struct.Memory** %MEMORY
  %983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %984 = getelementptr inbounds %struct.GPR, %struct.GPR* %983, i32 0, i32 33
  %985 = getelementptr inbounds %struct.Reg, %struct.Reg* %984, i32 0, i32 0
  %PC.i818 = bitcast %union.anon* %985 to i64*
  %986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %987 = getelementptr inbounds %struct.GPR, %struct.GPR* %986, i32 0, i32 1
  %988 = getelementptr inbounds %struct.Reg, %struct.Reg* %987, i32 0, i32 0
  %RAX.i819 = bitcast %union.anon* %988 to i64*
  %989 = load i64, i64* %RAX.i819
  %990 = load i64, i64* %PC.i818
  %991 = add i64 %990, 3
  store i64 %991, i64* %PC.i818
  %992 = trunc i64 %989 to i32
  %993 = add i32 1, %992
  %994 = zext i32 %993 to i64
  store i64 %994, i64* %RAX.i819, align 8
  %995 = icmp ult i32 %993, %992
  %996 = icmp ult i32 %993, 1
  %997 = or i1 %995, %996
  %998 = zext i1 %997 to i8
  %999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %998, i8* %999, align 1
  %1000 = and i32 %993, 255
  %1001 = call i32 @llvm.ctpop.i32(i32 %1000)
  %1002 = trunc i32 %1001 to i8
  %1003 = and i8 %1002, 1
  %1004 = xor i8 %1003, 1
  %1005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1004, i8* %1005, align 1
  %1006 = xor i64 1, %989
  %1007 = trunc i64 %1006 to i32
  %1008 = xor i32 %1007, %993
  %1009 = lshr i32 %1008, 4
  %1010 = trunc i32 %1009 to i8
  %1011 = and i8 %1010, 1
  %1012 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1011, i8* %1012, align 1
  %1013 = icmp eq i32 %993, 0
  %1014 = zext i1 %1013 to i8
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1014, i8* %1015, align 1
  %1016 = lshr i32 %993, 31
  %1017 = trunc i32 %1016 to i8
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1017, i8* %1018, align 1
  %1019 = lshr i32 %992, 31
  %1020 = xor i32 %1016, %1019
  %1021 = add i32 %1020, %1016
  %1022 = icmp eq i32 %1021, 2
  %1023 = zext i1 %1022 to i8
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1023, i8* %1024, align 1
  store %struct.Memory* %loadMem_49d01e, %struct.Memory** %MEMORY
  %loadMem_49d021 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i815 = bitcast %union.anon* %1027 to i64*
  %1028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1029 = getelementptr inbounds %struct.GPR, %struct.GPR* %1028, i32 0, i32 1
  %1030 = getelementptr inbounds %struct.Reg, %struct.Reg* %1029, i32 0, i32 0
  %EAX.i816 = bitcast %union.anon* %1030 to i32*
  %1031 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1032 = getelementptr inbounds %struct.GPR, %struct.GPR* %1031, i32 0, i32 15
  %1033 = getelementptr inbounds %struct.Reg, %struct.Reg* %1032, i32 0, i32 0
  %RBP.i817 = bitcast %union.anon* %1033 to i64*
  %1034 = load i64, i64* %RBP.i817
  %1035 = sub i64 %1034, 4
  %1036 = load i32, i32* %EAX.i816
  %1037 = zext i32 %1036 to i64
  %1038 = load i64, i64* %PC.i815
  %1039 = add i64 %1038, 3
  store i64 %1039, i64* %PC.i815
  %1040 = inttoptr i64 %1035 to i32*
  store i32 %1036, i32* %1040
  store %struct.Memory* %loadMem_49d021, %struct.Memory** %MEMORY
  %loadMem_49d024 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1042 = getelementptr inbounds %struct.GPR, %struct.GPR* %1041, i32 0, i32 33
  %1043 = getelementptr inbounds %struct.Reg, %struct.Reg* %1042, i32 0, i32 0
  %PC.i814 = bitcast %union.anon* %1043 to i64*
  %1044 = load i64, i64* %PC.i814
  %1045 = add i64 %1044, -112
  %1046 = load i64, i64* %PC.i814
  %1047 = add i64 %1046, 5
  store i64 %1047, i64* %PC.i814
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1045, i64* %1048, align 8
  store %struct.Memory* %loadMem_49d024, %struct.Memory** %MEMORY
  br label %block_.L_49cfb4

block_.L_49d029:                                  ; preds = %block_.L_49cfb4
  %loadMem_49d029 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1050 = getelementptr inbounds %struct.GPR, %struct.GPR* %1049, i32 0, i32 33
  %1051 = getelementptr inbounds %struct.Reg, %struct.Reg* %1050, i32 0, i32 0
  %PC.i813 = bitcast %union.anon* %1051 to i64*
  %1052 = load i64, i64* %PC.i813
  %1053 = add i64 %1052, 5
  %1054 = load i64, i64* %PC.i813
  %1055 = add i64 %1054, 5
  store i64 %1055, i64* %PC.i813
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1053, i64* %1056, align 8
  store %struct.Memory* %loadMem_49d029, %struct.Memory** %MEMORY
  br label %block_.L_49d02e

block_.L_49d02e:                                  ; preds = %block_.L_49d029
  %loadMem_49d02e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1058 = getelementptr inbounds %struct.GPR, %struct.GPR* %1057, i32 0, i32 33
  %1059 = getelementptr inbounds %struct.Reg, %struct.Reg* %1058, i32 0, i32 0
  %PC.i810 = bitcast %union.anon* %1059 to i64*
  %1060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1061 = getelementptr inbounds %struct.GPR, %struct.GPR* %1060, i32 0, i32 1
  %1062 = getelementptr inbounds %struct.Reg, %struct.Reg* %1061, i32 0, i32 0
  %RAX.i811 = bitcast %union.anon* %1062 to i64*
  %1063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1064 = getelementptr inbounds %struct.GPR, %struct.GPR* %1063, i32 0, i32 15
  %1065 = getelementptr inbounds %struct.Reg, %struct.Reg* %1064, i32 0, i32 0
  %RBP.i812 = bitcast %union.anon* %1065 to i64*
  %1066 = load i64, i64* %RBP.i812
  %1067 = sub i64 %1066, 8
  %1068 = load i64, i64* %PC.i810
  %1069 = add i64 %1068, 3
  store i64 %1069, i64* %PC.i810
  %1070 = inttoptr i64 %1067 to i32*
  %1071 = load i32, i32* %1070
  %1072 = zext i32 %1071 to i64
  store i64 %1072, i64* %RAX.i811, align 8
  store %struct.Memory* %loadMem_49d02e, %struct.Memory** %MEMORY
  %loadMem_49d031 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i808 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 1
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RAX.i809 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RAX.i809
  %1080 = load i64, i64* %PC.i808
  %1081 = add i64 %1080, 3
  store i64 %1081, i64* %PC.i808
  %1082 = trunc i64 %1079 to i32
  %1083 = add i32 1, %1082
  %1084 = zext i32 %1083 to i64
  store i64 %1084, i64* %RAX.i809, align 8
  %1085 = icmp ult i32 %1083, %1082
  %1086 = icmp ult i32 %1083, 1
  %1087 = or i1 %1085, %1086
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1088, i8* %1089, align 1
  %1090 = and i32 %1083, 255
  %1091 = call i32 @llvm.ctpop.i32(i32 %1090)
  %1092 = trunc i32 %1091 to i8
  %1093 = and i8 %1092, 1
  %1094 = xor i8 %1093, 1
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1094, i8* %1095, align 1
  %1096 = xor i64 1, %1079
  %1097 = trunc i64 %1096 to i32
  %1098 = xor i32 %1097, %1083
  %1099 = lshr i32 %1098, 4
  %1100 = trunc i32 %1099 to i8
  %1101 = and i8 %1100, 1
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1101, i8* %1102, align 1
  %1103 = icmp eq i32 %1083, 0
  %1104 = zext i1 %1103 to i8
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1104, i8* %1105, align 1
  %1106 = lshr i32 %1083, 31
  %1107 = trunc i32 %1106 to i8
  %1108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1107, i8* %1108, align 1
  %1109 = lshr i32 %1082, 31
  %1110 = xor i32 %1106, %1109
  %1111 = add i32 %1110, %1106
  %1112 = icmp eq i32 %1111, 2
  %1113 = zext i1 %1112 to i8
  %1114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1113, i8* %1114, align 1
  store %struct.Memory* %loadMem_49d031, %struct.Memory** %MEMORY
  %loadMem_49d034 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1116 = getelementptr inbounds %struct.GPR, %struct.GPR* %1115, i32 0, i32 33
  %1117 = getelementptr inbounds %struct.Reg, %struct.Reg* %1116, i32 0, i32 0
  %PC.i805 = bitcast %union.anon* %1117 to i64*
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1119 = getelementptr inbounds %struct.GPR, %struct.GPR* %1118, i32 0, i32 1
  %1120 = getelementptr inbounds %struct.Reg, %struct.Reg* %1119, i32 0, i32 0
  %EAX.i806 = bitcast %union.anon* %1120 to i32*
  %1121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1122 = getelementptr inbounds %struct.GPR, %struct.GPR* %1121, i32 0, i32 15
  %1123 = getelementptr inbounds %struct.Reg, %struct.Reg* %1122, i32 0, i32 0
  %RBP.i807 = bitcast %union.anon* %1123 to i64*
  %1124 = load i64, i64* %RBP.i807
  %1125 = sub i64 %1124, 8
  %1126 = load i32, i32* %EAX.i806
  %1127 = zext i32 %1126 to i64
  %1128 = load i64, i64* %PC.i805
  %1129 = add i64 %1128, 3
  store i64 %1129, i64* %PC.i805
  %1130 = inttoptr i64 %1125 to i32*
  store i32 %1126, i32* %1130
  store %struct.Memory* %loadMem_49d034, %struct.Memory** %MEMORY
  %loadMem_49d037 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i804 = bitcast %union.anon* %1133 to i64*
  %1134 = load i64, i64* %PC.i804
  %1135 = add i64 %1134, -148
  %1136 = load i64, i64* %PC.i804
  %1137 = add i64 %1136, 5
  store i64 %1137, i64* %PC.i804
  %1138 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1135, i64* %1138, align 8
  store %struct.Memory* %loadMem_49d037, %struct.Memory** %MEMORY
  br label %block_.L_49cfa3

block_.L_49d03c:                                  ; preds = %block_.L_49cfa3
  %loadMem_49d03c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 33
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %PC.i802 = bitcast %union.anon* %1141 to i64*
  %1142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1143 = getelementptr inbounds %struct.GPR, %struct.GPR* %1142, i32 0, i32 1
  %1144 = getelementptr inbounds %struct.Reg, %struct.Reg* %1143, i32 0, i32 0
  %RAX.i803 = bitcast %union.anon* %1144 to i64*
  %1145 = load i64, i64* %PC.i802
  %1146 = add i64 %1145, 8
  store i64 %1146, i64* %PC.i802
  %1147 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1147, i64* %RAX.i803, align 8
  store %struct.Memory* %loadMem_49d03c, %struct.Memory** %MEMORY
  %loadMem_49d044 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i800 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 1
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RAX.i801 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RAX.i801
  %1155 = add i64 %1154, 72700
  %1156 = load i64, i64* %PC.i800
  %1157 = add i64 %1156, 7
  store i64 %1157, i64* %PC.i800
  %1158 = inttoptr i64 %1155 to i32*
  %1159 = load i32, i32* %1158
  %1160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1160, align 1
  %1161 = and i32 %1159, 255
  %1162 = call i32 @llvm.ctpop.i32(i32 %1161)
  %1163 = trunc i32 %1162 to i8
  %1164 = and i8 %1163, 1
  %1165 = xor i8 %1164, 1
  %1166 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1165, i8* %1166, align 1
  %1167 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1167, align 1
  %1168 = icmp eq i32 %1159, 0
  %1169 = zext i1 %1168 to i8
  %1170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1169, i8* %1170, align 1
  %1171 = lshr i32 %1159, 31
  %1172 = trunc i32 %1171 to i8
  %1173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1172, i8* %1173, align 1
  %1174 = lshr i32 %1159, 31
  %1175 = xor i32 %1171, %1174
  %1176 = add i32 %1175, %1174
  %1177 = icmp eq i32 %1176, 2
  %1178 = zext i1 %1177 to i8
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1178, i8* %1179, align 1
  store %struct.Memory* %loadMem_49d044, %struct.Memory** %MEMORY
  %loadMem_49d04b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1181 = getelementptr inbounds %struct.GPR, %struct.GPR* %1180, i32 0, i32 33
  %1182 = getelementptr inbounds %struct.Reg, %struct.Reg* %1181, i32 0, i32 0
  %PC.i799 = bitcast %union.anon* %1182 to i64*
  %1183 = load i64, i64* %PC.i799
  %1184 = add i64 %1183, 301
  %1185 = load i64, i64* %PC.i799
  %1186 = add i64 %1185, 6
  %1187 = load i64, i64* %PC.i799
  %1188 = add i64 %1187, 6
  store i64 %1188, i64* %PC.i799
  %1189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1190 = load i8, i8* %1189, align 1
  store i8 %1190, i8* %BRANCH_TAKEN, align 1
  %1191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1192 = icmp ne i8 %1190, 0
  %1193 = select i1 %1192, i64 %1184, i64 %1186
  store i64 %1193, i64* %1191, align 8
  store %struct.Memory* %loadMem_49d04b, %struct.Memory** %MEMORY
  %loadBr_49d04b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d04b = icmp eq i8 %loadBr_49d04b, 1
  br i1 %cmpBr_49d04b, label %block_.L_49d178, label %block_49d051

block_49d051:                                     ; preds = %block_.L_49d03c
  %loadMem_49d051 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1195 = getelementptr inbounds %struct.GPR, %struct.GPR* %1194, i32 0, i32 33
  %1196 = getelementptr inbounds %struct.Reg, %struct.Reg* %1195, i32 0, i32 0
  %PC.i797 = bitcast %union.anon* %1196 to i64*
  %1197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1198 = getelementptr inbounds %struct.GPR, %struct.GPR* %1197, i32 0, i32 15
  %1199 = getelementptr inbounds %struct.Reg, %struct.Reg* %1198, i32 0, i32 0
  %RBP.i798 = bitcast %union.anon* %1199 to i64*
  %1200 = load i64, i64* %RBP.i798
  %1201 = sub i64 %1200, 8
  %1202 = load i64, i64* %PC.i797
  %1203 = add i64 %1202, 7
  store i64 %1203, i64* %PC.i797
  %1204 = inttoptr i64 %1201 to i32*
  store i32 0, i32* %1204
  store %struct.Memory* %loadMem_49d051, %struct.Memory** %MEMORY
  br label %block_.L_49d058

block_.L_49d058:                                  ; preds = %block_.L_49d165, %block_49d051
  %loadMem_49d058 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1206 = getelementptr inbounds %struct.GPR, %struct.GPR* %1205, i32 0, i32 33
  %1207 = getelementptr inbounds %struct.Reg, %struct.Reg* %1206, i32 0, i32 0
  %PC.i794 = bitcast %union.anon* %1207 to i64*
  %1208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1209 = getelementptr inbounds %struct.GPR, %struct.GPR* %1208, i32 0, i32 1
  %1210 = getelementptr inbounds %struct.Reg, %struct.Reg* %1209, i32 0, i32 0
  %RAX.i795 = bitcast %union.anon* %1210 to i64*
  %1211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1212 = getelementptr inbounds %struct.GPR, %struct.GPR* %1211, i32 0, i32 15
  %1213 = getelementptr inbounds %struct.Reg, %struct.Reg* %1212, i32 0, i32 0
  %RBP.i796 = bitcast %union.anon* %1213 to i64*
  %1214 = load i64, i64* %RBP.i796
  %1215 = sub i64 %1214, 8
  %1216 = load i64, i64* %PC.i794
  %1217 = add i64 %1216, 3
  store i64 %1217, i64* %PC.i794
  %1218 = inttoptr i64 %1215 to i32*
  %1219 = load i32, i32* %1218
  %1220 = zext i32 %1219 to i64
  store i64 %1220, i64* %RAX.i795, align 8
  store %struct.Memory* %loadMem_49d058, %struct.Memory** %MEMORY
  %loadMem_49d05b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 33
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %PC.i792 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 5
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RCX.i793 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %PC.i792
  %1228 = add i64 %1227, 8
  store i64 %1228, i64* %PC.i792
  %1229 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1229, i64* %RCX.i793, align 8
  store %struct.Memory* %loadMem_49d05b, %struct.Memory** %MEMORY
  %loadMem_49d063 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1231 = getelementptr inbounds %struct.GPR, %struct.GPR* %1230, i32 0, i32 33
  %1232 = getelementptr inbounds %struct.Reg, %struct.Reg* %1231, i32 0, i32 0
  %PC.i789 = bitcast %union.anon* %1232 to i64*
  %1233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1234 = getelementptr inbounds %struct.GPR, %struct.GPR* %1233, i32 0, i32 1
  %1235 = getelementptr inbounds %struct.Reg, %struct.Reg* %1234, i32 0, i32 0
  %EAX.i790 = bitcast %union.anon* %1235 to i32*
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1237 = getelementptr inbounds %struct.GPR, %struct.GPR* %1236, i32 0, i32 5
  %1238 = getelementptr inbounds %struct.Reg, %struct.Reg* %1237, i32 0, i32 0
  %RCX.i791 = bitcast %union.anon* %1238 to i64*
  %1239 = load i32, i32* %EAX.i790
  %1240 = zext i32 %1239 to i64
  %1241 = load i64, i64* %RCX.i791
  %1242 = add i64 %1241, 72712
  %1243 = load i64, i64* %PC.i789
  %1244 = add i64 %1243, 6
  store i64 %1244, i64* %PC.i789
  %1245 = inttoptr i64 %1242 to i32*
  %1246 = load i32, i32* %1245
  %1247 = sub i32 %1239, %1246
  %1248 = icmp ult i32 %1239, %1246
  %1249 = zext i1 %1248 to i8
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1249, i8* %1250, align 1
  %1251 = and i32 %1247, 255
  %1252 = call i32 @llvm.ctpop.i32(i32 %1251)
  %1253 = trunc i32 %1252 to i8
  %1254 = and i8 %1253, 1
  %1255 = xor i8 %1254, 1
  %1256 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1255, i8* %1256, align 1
  %1257 = xor i32 %1246, %1239
  %1258 = xor i32 %1257, %1247
  %1259 = lshr i32 %1258, 4
  %1260 = trunc i32 %1259 to i8
  %1261 = and i8 %1260, 1
  %1262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1261, i8* %1262, align 1
  %1263 = icmp eq i32 %1247, 0
  %1264 = zext i1 %1263 to i8
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1264, i8* %1265, align 1
  %1266 = lshr i32 %1247, 31
  %1267 = trunc i32 %1266 to i8
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1267, i8* %1268, align 1
  %1269 = lshr i32 %1239, 31
  %1270 = lshr i32 %1246, 31
  %1271 = xor i32 %1270, %1269
  %1272 = xor i32 %1266, %1269
  %1273 = add i32 %1272, %1271
  %1274 = icmp eq i32 %1273, 2
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1275, i8* %1276, align 1
  store %struct.Memory* %loadMem_49d063, %struct.Memory** %MEMORY
  %loadMem_49d069 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1278 = getelementptr inbounds %struct.GPR, %struct.GPR* %1277, i32 0, i32 33
  %1279 = getelementptr inbounds %struct.Reg, %struct.Reg* %1278, i32 0, i32 0
  %PC.i788 = bitcast %union.anon* %1279 to i64*
  %1280 = load i64, i64* %PC.i788
  %1281 = add i64 %1280, 266
  %1282 = load i64, i64* %PC.i788
  %1283 = add i64 %1282, 6
  %1284 = load i64, i64* %PC.i788
  %1285 = add i64 %1284, 6
  store i64 %1285, i64* %PC.i788
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1287 = load i8, i8* %1286, align 1
  %1288 = icmp ne i8 %1287, 0
  %1289 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1290 = load i8, i8* %1289, align 1
  %1291 = icmp ne i8 %1290, 0
  %1292 = xor i1 %1288, %1291
  %1293 = xor i1 %1292, true
  %1294 = zext i1 %1293 to i8
  store i8 %1294, i8* %BRANCH_TAKEN, align 1
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1296 = select i1 %1292, i64 %1283, i64 %1281
  store i64 %1296, i64* %1295, align 8
  store %struct.Memory* %loadMem_49d069, %struct.Memory** %MEMORY
  %loadBr_49d069 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d069 = icmp eq i8 %loadBr_49d069, 1
  br i1 %cmpBr_49d069, label %block_.L_49d173, label %block_49d06f

block_49d06f:                                     ; preds = %block_.L_49d058
  %loadMem_49d06f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1298 = getelementptr inbounds %struct.GPR, %struct.GPR* %1297, i32 0, i32 33
  %1299 = getelementptr inbounds %struct.Reg, %struct.Reg* %1298, i32 0, i32 0
  %PC.i786 = bitcast %union.anon* %1299 to i64*
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 15
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %RBP.i787 = bitcast %union.anon* %1302 to i64*
  %1303 = load i64, i64* %RBP.i787
  %1304 = sub i64 %1303, 4
  %1305 = load i64, i64* %PC.i786
  %1306 = add i64 %1305, 7
  store i64 %1306, i64* %PC.i786
  %1307 = inttoptr i64 %1304 to i32*
  store i32 0, i32* %1307
  store %struct.Memory* %loadMem_49d06f, %struct.Memory** %MEMORY
  br label %block_.L_49d076

block_.L_49d076:                                  ; preds = %block_49d08d, %block_49d06f
  %loadMem_49d076 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i783 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RAX.i784 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 15
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RBP.i785 = bitcast %union.anon* %1316 to i64*
  %1317 = load i64, i64* %RBP.i785
  %1318 = sub i64 %1317, 4
  %1319 = load i64, i64* %PC.i783
  %1320 = add i64 %1319, 3
  store i64 %1320, i64* %PC.i783
  %1321 = inttoptr i64 %1318 to i32*
  %1322 = load i32, i32* %1321
  %1323 = zext i32 %1322 to i64
  store i64 %1323, i64* %RAX.i784, align 8
  store %struct.Memory* %loadMem_49d076, %struct.Memory** %MEMORY
  %loadMem_49d079 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1325 = getelementptr inbounds %struct.GPR, %struct.GPR* %1324, i32 0, i32 33
  %1326 = getelementptr inbounds %struct.Reg, %struct.Reg* %1325, i32 0, i32 0
  %PC.i781 = bitcast %union.anon* %1326 to i64*
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1328 = getelementptr inbounds %struct.GPR, %struct.GPR* %1327, i32 0, i32 5
  %1329 = getelementptr inbounds %struct.Reg, %struct.Reg* %1328, i32 0, i32 0
  %RCX.i782 = bitcast %union.anon* %1329 to i64*
  %1330 = load i64, i64* %PC.i781
  %1331 = add i64 %1330, 8
  store i64 %1331, i64* %PC.i781
  %1332 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1332, i64* %RCX.i782, align 8
  store %struct.Memory* %loadMem_49d079, %struct.Memory** %MEMORY
  %loadMem_49d081 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1334 = getelementptr inbounds %struct.GPR, %struct.GPR* %1333, i32 0, i32 33
  %1335 = getelementptr inbounds %struct.Reg, %struct.Reg* %1334, i32 0, i32 0
  %PC.i778 = bitcast %union.anon* %1335 to i64*
  %1336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1337 = getelementptr inbounds %struct.GPR, %struct.GPR* %1336, i32 0, i32 1
  %1338 = getelementptr inbounds %struct.Reg, %struct.Reg* %1337, i32 0, i32 0
  %EAX.i779 = bitcast %union.anon* %1338 to i32*
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1340 = getelementptr inbounds %struct.GPR, %struct.GPR* %1339, i32 0, i32 5
  %1341 = getelementptr inbounds %struct.Reg, %struct.Reg* %1340, i32 0, i32 0
  %RCX.i780 = bitcast %union.anon* %1341 to i64*
  %1342 = load i32, i32* %EAX.i779
  %1343 = zext i32 %1342 to i64
  %1344 = load i64, i64* %RCX.i780
  %1345 = add i64 %1344, 72708
  %1346 = load i64, i64* %PC.i778
  %1347 = add i64 %1346, 6
  store i64 %1347, i64* %PC.i778
  %1348 = inttoptr i64 %1345 to i32*
  %1349 = load i32, i32* %1348
  %1350 = sub i32 %1342, %1349
  %1351 = icmp ult i32 %1342, %1349
  %1352 = zext i1 %1351 to i8
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1352, i8* %1353, align 1
  %1354 = and i32 %1350, 255
  %1355 = call i32 @llvm.ctpop.i32(i32 %1354)
  %1356 = trunc i32 %1355 to i8
  %1357 = and i8 %1356, 1
  %1358 = xor i8 %1357, 1
  %1359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1358, i8* %1359, align 1
  %1360 = xor i32 %1349, %1342
  %1361 = xor i32 %1360, %1350
  %1362 = lshr i32 %1361, 4
  %1363 = trunc i32 %1362 to i8
  %1364 = and i8 %1363, 1
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1364, i8* %1365, align 1
  %1366 = icmp eq i32 %1350, 0
  %1367 = zext i1 %1366 to i8
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1367, i8* %1368, align 1
  %1369 = lshr i32 %1350, 31
  %1370 = trunc i32 %1369 to i8
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1370, i8* %1371, align 1
  %1372 = lshr i32 %1342, 31
  %1373 = lshr i32 %1349, 31
  %1374 = xor i32 %1373, %1372
  %1375 = xor i32 %1369, %1372
  %1376 = add i32 %1375, %1374
  %1377 = icmp eq i32 %1376, 2
  %1378 = zext i1 %1377 to i8
  %1379 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1378, i8* %1379, align 1
  store %struct.Memory* %loadMem_49d081, %struct.Memory** %MEMORY
  %loadMem_49d087 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i777 = bitcast %union.anon* %1382 to i64*
  %1383 = load i64, i64* %PC.i777
  %1384 = add i64 %1383, 217
  %1385 = load i64, i64* %PC.i777
  %1386 = add i64 %1385, 6
  %1387 = load i64, i64* %PC.i777
  %1388 = add i64 %1387, 6
  store i64 %1388, i64* %PC.i777
  %1389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1390 = load i8, i8* %1389, align 1
  %1391 = icmp ne i8 %1390, 0
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1393 = load i8, i8* %1392, align 1
  %1394 = icmp ne i8 %1393, 0
  %1395 = xor i1 %1391, %1394
  %1396 = xor i1 %1395, true
  %1397 = zext i1 %1396 to i8
  store i8 %1397, i8* %BRANCH_TAKEN, align 1
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1399 = select i1 %1395, i64 %1386, i64 %1384
  store i64 %1399, i64* %1398, align 8
  store %struct.Memory* %loadMem_49d087, %struct.Memory** %MEMORY
  %loadBr_49d087 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d087 = icmp eq i8 %loadBr_49d087, 1
  br i1 %cmpBr_49d087, label %block_.L_49d160, label %block_49d08d

block_49d08d:                                     ; preds = %block_.L_49d076
  %loadMem_49d08d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1401 = getelementptr inbounds %struct.GPR, %struct.GPR* %1400, i32 0, i32 33
  %1402 = getelementptr inbounds %struct.Reg, %struct.Reg* %1401, i32 0, i32 0
  %PC.i775 = bitcast %union.anon* %1402 to i64*
  %1403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1404 = getelementptr inbounds %struct.GPR, %struct.GPR* %1403, i32 0, i32 1
  %1405 = getelementptr inbounds %struct.Reg, %struct.Reg* %1404, i32 0, i32 0
  %RAX.i776 = bitcast %union.anon* %1405 to i64*
  %1406 = load i64, i64* %PC.i775
  %1407 = add i64 %1406, 8
  store i64 %1407, i64* %PC.i775
  %1408 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1408, i64* %RAX.i776, align 8
  store %struct.Memory* %loadMem_49d08d, %struct.Memory** %MEMORY
  %loadMem_49d095 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1410 = getelementptr inbounds %struct.GPR, %struct.GPR* %1409, i32 0, i32 33
  %1411 = getelementptr inbounds %struct.Reg, %struct.Reg* %1410, i32 0, i32 0
  %PC.i773 = bitcast %union.anon* %1411 to i64*
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 1
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %RAX.i774 = bitcast %union.anon* %1414 to i64*
  %1415 = load i64, i64* %RAX.i774
  %1416 = add i64 %1415, 6464
  %1417 = load i64, i64* %PC.i773
  %1418 = add i64 %1417, 7
  store i64 %1418, i64* %PC.i773
  %1419 = inttoptr i64 %1416 to i64*
  %1420 = load i64, i64* %1419
  store i64 %1420, i64* %RAX.i774, align 8
  store %struct.Memory* %loadMem_49d095, %struct.Memory** %MEMORY
  %loadMem_49d09c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1422 = getelementptr inbounds %struct.GPR, %struct.GPR* %1421, i32 0, i32 33
  %1423 = getelementptr inbounds %struct.Reg, %struct.Reg* %1422, i32 0, i32 0
  %PC.i771 = bitcast %union.anon* %1423 to i64*
  %1424 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1425 = getelementptr inbounds %struct.GPR, %struct.GPR* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds %struct.Reg, %struct.Reg* %1425, i32 0, i32 0
  %RAX.i772 = bitcast %union.anon* %1426 to i64*
  %1427 = load i64, i64* %RAX.i772
  %1428 = load i64, i64* %PC.i771
  %1429 = add i64 %1428, 3
  store i64 %1429, i64* %PC.i771
  %1430 = inttoptr i64 %1427 to i64*
  %1431 = load i64, i64* %1430
  store i64 %1431, i64* %RAX.i772, align 8
  store %struct.Memory* %loadMem_49d09c, %struct.Memory** %MEMORY
  %loadMem_49d09f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 33
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %PC.i769 = bitcast %union.anon* %1434 to i64*
  %1435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1436 = getelementptr inbounds %struct.GPR, %struct.GPR* %1435, i32 0, i32 5
  %1437 = getelementptr inbounds %struct.Reg, %struct.Reg* %1436, i32 0, i32 0
  %RCX.i770 = bitcast %union.anon* %1437 to i64*
  %1438 = load i64, i64* %PC.i769
  %1439 = add i64 %1438, 8
  store i64 %1439, i64* %PC.i769
  %1440 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1440, i64* %RCX.i770, align 8
  store %struct.Memory* %loadMem_49d09f, %struct.Memory** %MEMORY
  %loadMem_49d0a7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i766 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 5
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RCX.i767 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 7
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RDX.i768 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %RCX.i767
  %1451 = add i64 %1450, 164
  %1452 = load i64, i64* %PC.i766
  %1453 = add i64 %1452, 6
  store i64 %1453, i64* %PC.i766
  %1454 = inttoptr i64 %1451 to i32*
  %1455 = load i32, i32* %1454
  %1456 = zext i32 %1455 to i64
  store i64 %1456, i64* %RDX.i768, align 8
  store %struct.Memory* %loadMem_49d0a7, %struct.Memory** %MEMORY
  %loadMem_49d0ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 33
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %PC.i763 = bitcast %union.anon* %1459 to i64*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 7
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RDX.i764 = bitcast %union.anon* %1462 to i64*
  %1463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1464 = getelementptr inbounds %struct.GPR, %struct.GPR* %1463, i32 0, i32 15
  %1465 = getelementptr inbounds %struct.Reg, %struct.Reg* %1464, i32 0, i32 0
  %RBP.i765 = bitcast %union.anon* %1465 to i64*
  %1466 = load i64, i64* %RDX.i764
  %1467 = load i64, i64* %RBP.i765
  %1468 = sub i64 %1467, 8
  %1469 = load i64, i64* %PC.i763
  %1470 = add i64 %1469, 3
  store i64 %1470, i64* %PC.i763
  %1471 = trunc i64 %1466 to i32
  %1472 = inttoptr i64 %1468 to i32*
  %1473 = load i32, i32* %1472
  %1474 = add i32 %1473, %1471
  %1475 = zext i32 %1474 to i64
  store i64 %1475, i64* %RDX.i764, align 8
  %1476 = icmp ult i32 %1474, %1471
  %1477 = icmp ult i32 %1474, %1473
  %1478 = or i1 %1476, %1477
  %1479 = zext i1 %1478 to i8
  %1480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1479, i8* %1480, align 1
  %1481 = and i32 %1474, 255
  %1482 = call i32 @llvm.ctpop.i32(i32 %1481)
  %1483 = trunc i32 %1482 to i8
  %1484 = and i8 %1483, 1
  %1485 = xor i8 %1484, 1
  %1486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1485, i8* %1486, align 1
  %1487 = xor i32 %1473, %1471
  %1488 = xor i32 %1487, %1474
  %1489 = lshr i32 %1488, 4
  %1490 = trunc i32 %1489 to i8
  %1491 = and i8 %1490, 1
  %1492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1491, i8* %1492, align 1
  %1493 = icmp eq i32 %1474, 0
  %1494 = zext i1 %1493 to i8
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1494, i8* %1495, align 1
  %1496 = lshr i32 %1474, 31
  %1497 = trunc i32 %1496 to i8
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1497, i8* %1498, align 1
  %1499 = lshr i32 %1471, 31
  %1500 = lshr i32 %1473, 31
  %1501 = xor i32 %1496, %1499
  %1502 = xor i32 %1496, %1500
  %1503 = add i32 %1501, %1502
  %1504 = icmp eq i32 %1503, 2
  %1505 = zext i1 %1504 to i8
  %1506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1505, i8* %1506, align 1
  store %struct.Memory* %loadMem_49d0ad, %struct.Memory** %MEMORY
  %loadMem_49d0b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i760 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 7
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %EDX.i761 = bitcast %union.anon* %1512 to i32*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RCX.i762 = bitcast %union.anon* %1515 to i64*
  %1516 = load i32, i32* %EDX.i761
  %1517 = zext i32 %1516 to i64
  %1518 = load i64, i64* %PC.i760
  %1519 = add i64 %1518, 3
  store i64 %1519, i64* %PC.i760
  %1520 = shl i64 %1517, 32
  %1521 = ashr exact i64 %1520, 32
  store i64 %1521, i64* %RCX.i762, align 8
  store %struct.Memory* %loadMem_49d0b0, %struct.Memory** %MEMORY
  %loadMem_49d0b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1523 = getelementptr inbounds %struct.GPR, %struct.GPR* %1522, i32 0, i32 33
  %1524 = getelementptr inbounds %struct.Reg, %struct.Reg* %1523, i32 0, i32 0
  %PC.i757 = bitcast %union.anon* %1524 to i64*
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1526 = getelementptr inbounds %struct.GPR, %struct.GPR* %1525, i32 0, i32 1
  %1527 = getelementptr inbounds %struct.Reg, %struct.Reg* %1526, i32 0, i32 0
  %RAX.i758 = bitcast %union.anon* %1527 to i64*
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 5
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %RCX.i759 = bitcast %union.anon* %1530 to i64*
  %1531 = load i64, i64* %RAX.i758
  %1532 = load i64, i64* %RCX.i759
  %1533 = mul i64 %1532, 8
  %1534 = add i64 %1533, %1531
  %1535 = load i64, i64* %PC.i757
  %1536 = add i64 %1535, 4
  store i64 %1536, i64* %PC.i757
  %1537 = inttoptr i64 %1534 to i64*
  %1538 = load i64, i64* %1537
  store i64 %1538, i64* %RAX.i758, align 8
  store %struct.Memory* %loadMem_49d0b3, %struct.Memory** %MEMORY
  %loadMem_49d0b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1540 = getelementptr inbounds %struct.GPR, %struct.GPR* %1539, i32 0, i32 33
  %1541 = getelementptr inbounds %struct.Reg, %struct.Reg* %1540, i32 0, i32 0
  %PC.i755 = bitcast %union.anon* %1541 to i64*
  %1542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1543 = getelementptr inbounds %struct.GPR, %struct.GPR* %1542, i32 0, i32 5
  %1544 = getelementptr inbounds %struct.Reg, %struct.Reg* %1543, i32 0, i32 0
  %RCX.i756 = bitcast %union.anon* %1544 to i64*
  %1545 = load i64, i64* %PC.i755
  %1546 = add i64 %1545, 8
  store i64 %1546, i64* %PC.i755
  %1547 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1547, i64* %RCX.i756, align 8
  store %struct.Memory* %loadMem_49d0b7, %struct.Memory** %MEMORY
  %loadMem_49d0bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1549 = getelementptr inbounds %struct.GPR, %struct.GPR* %1548, i32 0, i32 33
  %1550 = getelementptr inbounds %struct.Reg, %struct.Reg* %1549, i32 0, i32 0
  %PC.i752 = bitcast %union.anon* %1550 to i64*
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1552 = getelementptr inbounds %struct.GPR, %struct.GPR* %1551, i32 0, i32 5
  %1553 = getelementptr inbounds %struct.Reg, %struct.Reg* %1552, i32 0, i32 0
  %RCX.i753 = bitcast %union.anon* %1553 to i64*
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 7
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %RDX.i754 = bitcast %union.anon* %1556 to i64*
  %1557 = load i64, i64* %RCX.i753
  %1558 = add i64 %1557, 160
  %1559 = load i64, i64* %PC.i752
  %1560 = add i64 %1559, 6
  store i64 %1560, i64* %PC.i752
  %1561 = inttoptr i64 %1558 to i32*
  %1562 = load i32, i32* %1561
  %1563 = zext i32 %1562 to i64
  store i64 %1563, i64* %RDX.i754, align 8
  store %struct.Memory* %loadMem_49d0bf, %struct.Memory** %MEMORY
  %loadMem_49d0c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1565 = getelementptr inbounds %struct.GPR, %struct.GPR* %1564, i32 0, i32 33
  %1566 = getelementptr inbounds %struct.Reg, %struct.Reg* %1565, i32 0, i32 0
  %PC.i749 = bitcast %union.anon* %1566 to i64*
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 7
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %RDX.i750 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1571 = getelementptr inbounds %struct.GPR, %struct.GPR* %1570, i32 0, i32 15
  %1572 = getelementptr inbounds %struct.Reg, %struct.Reg* %1571, i32 0, i32 0
  %RBP.i751 = bitcast %union.anon* %1572 to i64*
  %1573 = load i64, i64* %RDX.i750
  %1574 = load i64, i64* %RBP.i751
  %1575 = sub i64 %1574, 4
  %1576 = load i64, i64* %PC.i749
  %1577 = add i64 %1576, 3
  store i64 %1577, i64* %PC.i749
  %1578 = trunc i64 %1573 to i32
  %1579 = inttoptr i64 %1575 to i32*
  %1580 = load i32, i32* %1579
  %1581 = add i32 %1580, %1578
  %1582 = zext i32 %1581 to i64
  store i64 %1582, i64* %RDX.i750, align 8
  %1583 = icmp ult i32 %1581, %1578
  %1584 = icmp ult i32 %1581, %1580
  %1585 = or i1 %1583, %1584
  %1586 = zext i1 %1585 to i8
  %1587 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1586, i8* %1587, align 1
  %1588 = and i32 %1581, 255
  %1589 = call i32 @llvm.ctpop.i32(i32 %1588)
  %1590 = trunc i32 %1589 to i8
  %1591 = and i8 %1590, 1
  %1592 = xor i8 %1591, 1
  %1593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1592, i8* %1593, align 1
  %1594 = xor i32 %1580, %1578
  %1595 = xor i32 %1594, %1581
  %1596 = lshr i32 %1595, 4
  %1597 = trunc i32 %1596 to i8
  %1598 = and i8 %1597, 1
  %1599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1598, i8* %1599, align 1
  %1600 = icmp eq i32 %1581, 0
  %1601 = zext i1 %1600 to i8
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1601, i8* %1602, align 1
  %1603 = lshr i32 %1581, 31
  %1604 = trunc i32 %1603 to i8
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1604, i8* %1605, align 1
  %1606 = lshr i32 %1578, 31
  %1607 = lshr i32 %1580, 31
  %1608 = xor i32 %1603, %1606
  %1609 = xor i32 %1603, %1607
  %1610 = add i32 %1608, %1609
  %1611 = icmp eq i32 %1610, 2
  %1612 = zext i1 %1611 to i8
  %1613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1612, i8* %1613, align 1
  store %struct.Memory* %loadMem_49d0c5, %struct.Memory** %MEMORY
  %loadMem_49d0c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1615 = getelementptr inbounds %struct.GPR, %struct.GPR* %1614, i32 0, i32 33
  %1616 = getelementptr inbounds %struct.Reg, %struct.Reg* %1615, i32 0, i32 0
  %PC.i746 = bitcast %union.anon* %1616 to i64*
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 7
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %EDX.i747 = bitcast %union.anon* %1619 to i32*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 5
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RCX.i748 = bitcast %union.anon* %1622 to i64*
  %1623 = load i32, i32* %EDX.i747
  %1624 = zext i32 %1623 to i64
  %1625 = load i64, i64* %PC.i746
  %1626 = add i64 %1625, 3
  store i64 %1626, i64* %PC.i746
  %1627 = shl i64 %1624, 32
  %1628 = ashr exact i64 %1627, 32
  store i64 %1628, i64* %RCX.i748, align 8
  store %struct.Memory* %loadMem_49d0c8, %struct.Memory** %MEMORY
  %loadMem_49d0cb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1630 = getelementptr inbounds %struct.GPR, %struct.GPR* %1629, i32 0, i32 33
  %1631 = getelementptr inbounds %struct.Reg, %struct.Reg* %1630, i32 0, i32 0
  %PC.i742 = bitcast %union.anon* %1631 to i64*
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1633 = getelementptr inbounds %struct.GPR, %struct.GPR* %1632, i32 0, i32 1
  %1634 = getelementptr inbounds %struct.Reg, %struct.Reg* %1633, i32 0, i32 0
  %RAX.i743 = bitcast %union.anon* %1634 to i64*
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1636 = getelementptr inbounds %struct.GPR, %struct.GPR* %1635, i32 0, i32 5
  %1637 = getelementptr inbounds %struct.Reg, %struct.Reg* %1636, i32 0, i32 0
  %RCX.i744 = bitcast %union.anon* %1637 to i64*
  %1638 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1639 = getelementptr inbounds %struct.GPR, %struct.GPR* %1638, i32 0, i32 7
  %1640 = getelementptr inbounds %struct.Reg, %struct.Reg* %1639, i32 0, i32 0
  %RDX.i745 = bitcast %union.anon* %1640 to i64*
  %1641 = load i64, i64* %RAX.i743
  %1642 = load i64, i64* %RCX.i744
  %1643 = mul i64 %1642, 2
  %1644 = add i64 %1643, %1641
  %1645 = load i64, i64* %PC.i742
  %1646 = add i64 %1645, 4
  store i64 %1646, i64* %PC.i742
  %1647 = inttoptr i64 %1644 to i16*
  %1648 = load i16, i16* %1647
  %1649 = zext i16 %1648 to i64
  store i64 %1649, i64* %RDX.i745, align 8
  store %struct.Memory* %loadMem_49d0cb, %struct.Memory** %MEMORY
  %loadMem_49d0cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1650 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1651 = getelementptr inbounds %struct.GPR, %struct.GPR* %1650, i32 0, i32 33
  %1652 = getelementptr inbounds %struct.Reg, %struct.Reg* %1651, i32 0, i32 0
  %PC.i740 = bitcast %union.anon* %1652 to i64*
  %1653 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1654 = getelementptr inbounds %struct.GPR, %struct.GPR* %1653, i32 0, i32 1
  %1655 = getelementptr inbounds %struct.Reg, %struct.Reg* %1654, i32 0, i32 0
  %RAX.i741 = bitcast %union.anon* %1655 to i64*
  %1656 = load i64, i64* %PC.i740
  %1657 = add i64 %1656, 8
  store i64 %1657, i64* %PC.i740
  %1658 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %1658, i64* %RAX.i741, align 8
  store %struct.Memory* %loadMem_49d0cf, %struct.Memory** %MEMORY
  %loadMem_49d0d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 33
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %PC.i738 = bitcast %union.anon* %1661 to i64*
  %1662 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1663 = getelementptr inbounds %struct.GPR, %struct.GPR* %1662, i32 0, i32 1
  %1664 = getelementptr inbounds %struct.Reg, %struct.Reg* %1663, i32 0, i32 0
  %RAX.i739 = bitcast %union.anon* %1664 to i64*
  %1665 = load i64, i64* %RAX.i739
  %1666 = load i64, i64* %PC.i738
  %1667 = add i64 %1666, 6
  store i64 %1667, i64* %PC.i738
  %1668 = add i64 1032, %1665
  store i64 %1668, i64* %RAX.i739, align 8
  %1669 = icmp ult i64 %1668, %1665
  %1670 = icmp ult i64 %1668, 1032
  %1671 = or i1 %1669, %1670
  %1672 = zext i1 %1671 to i8
  %1673 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1672, i8* %1673, align 1
  %1674 = trunc i64 %1668 to i32
  %1675 = and i32 %1674, 255
  %1676 = call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1679, i8* %1680, align 1
  %1681 = xor i64 1032, %1665
  %1682 = xor i64 %1681, %1668
  %1683 = lshr i64 %1682, 4
  %1684 = trunc i64 %1683 to i8
  %1685 = and i8 %1684, 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1685, i8* %1686, align 1
  %1687 = icmp eq i64 %1668, 0
  %1688 = zext i1 %1687 to i8
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1688, i8* %1689, align 1
  %1690 = lshr i64 %1668, 63
  %1691 = trunc i64 %1690 to i8
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1691, i8* %1692, align 1
  %1693 = lshr i64 %1665, 63
  %1694 = xor i64 %1690, %1693
  %1695 = add i64 %1694, %1690
  %1696 = icmp eq i64 %1695, 2
  %1697 = zext i1 %1696 to i8
  %1698 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1697, i8* %1698, align 1
  store %struct.Memory* %loadMem_49d0d7, %struct.Memory** %MEMORY
  %loadMem_49d0dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1700 = getelementptr inbounds %struct.GPR, %struct.GPR* %1699, i32 0, i32 33
  %1701 = getelementptr inbounds %struct.Reg, %struct.Reg* %1700, i32 0, i32 0
  %PC.i735 = bitcast %union.anon* %1701 to i64*
  %1702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1703 = getelementptr inbounds %struct.GPR, %struct.GPR* %1702, i32 0, i32 5
  %1704 = getelementptr inbounds %struct.Reg, %struct.Reg* %1703, i32 0, i32 0
  %RCX.i736 = bitcast %union.anon* %1704 to i64*
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1706 = getelementptr inbounds %struct.GPR, %struct.GPR* %1705, i32 0, i32 15
  %1707 = getelementptr inbounds %struct.Reg, %struct.Reg* %1706, i32 0, i32 0
  %RBP.i737 = bitcast %union.anon* %1707 to i64*
  %1708 = load i64, i64* %RBP.i737
  %1709 = sub i64 %1708, 8
  %1710 = load i64, i64* %PC.i735
  %1711 = add i64 %1710, 4
  store i64 %1711, i64* %PC.i735
  %1712 = inttoptr i64 %1709 to i32*
  %1713 = load i32, i32* %1712
  %1714 = sext i32 %1713 to i64
  store i64 %1714, i64* %RCX.i736, align 8
  store %struct.Memory* %loadMem_49d0dd, %struct.Memory** %MEMORY
  %loadMem_49d0e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1716 = getelementptr inbounds %struct.GPR, %struct.GPR* %1715, i32 0, i32 33
  %1717 = getelementptr inbounds %struct.Reg, %struct.Reg* %1716, i32 0, i32 0
  %PC.i733 = bitcast %union.anon* %1717 to i64*
  %1718 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1719 = getelementptr inbounds %struct.GPR, %struct.GPR* %1718, i32 0, i32 5
  %1720 = getelementptr inbounds %struct.Reg, %struct.Reg* %1719, i32 0, i32 0
  %RCX.i734 = bitcast %union.anon* %1720 to i64*
  %1721 = load i64, i64* %RCX.i734
  %1722 = load i64, i64* %PC.i733
  %1723 = add i64 %1722, 4
  store i64 %1723, i64* %PC.i733
  %1724 = shl i64 %1721, 5
  %1725 = icmp slt i64 %1724, 0
  %1726 = shl i64 %1724, 1
  store i64 %1726, i64* %RCX.i734, align 8
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %1728 = zext i1 %1725 to i8
  store i8 %1728, i8* %1727, align 1
  %1729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %1730 = trunc i64 %1726 to i32
  %1731 = and i32 %1730, 254
  %1732 = call i32 @llvm.ctpop.i32(i32 %1731)
  %1733 = trunc i32 %1732 to i8
  %1734 = and i8 %1733, 1
  %1735 = xor i8 %1734, 1
  store i8 %1735, i8* %1729, align 1
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1736, align 1
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1738 = icmp eq i64 %1726, 0
  %1739 = zext i1 %1738 to i8
  store i8 %1739, i8* %1737, align 1
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1741 = lshr i64 %1726, 63
  %1742 = trunc i64 %1741 to i8
  store i8 %1742, i8* %1740, align 1
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1743, align 1
  store %struct.Memory* %loadMem_49d0e1, %struct.Memory** %MEMORY
  %loadMem_49d0e5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 33
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %PC.i730 = bitcast %union.anon* %1746 to i64*
  %1747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1748 = getelementptr inbounds %struct.GPR, %struct.GPR* %1747, i32 0, i32 1
  %1749 = getelementptr inbounds %struct.Reg, %struct.Reg* %1748, i32 0, i32 0
  %RAX.i731 = bitcast %union.anon* %1749 to i64*
  %1750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1751 = getelementptr inbounds %struct.GPR, %struct.GPR* %1750, i32 0, i32 5
  %1752 = getelementptr inbounds %struct.Reg, %struct.Reg* %1751, i32 0, i32 0
  %RCX.i732 = bitcast %union.anon* %1752 to i64*
  %1753 = load i64, i64* %RAX.i731
  %1754 = load i64, i64* %RCX.i732
  %1755 = load i64, i64* %PC.i730
  %1756 = add i64 %1755, 3
  store i64 %1756, i64* %PC.i730
  %1757 = add i64 %1754, %1753
  store i64 %1757, i64* %RAX.i731, align 8
  %1758 = icmp ult i64 %1757, %1753
  %1759 = icmp ult i64 %1757, %1754
  %1760 = or i1 %1758, %1759
  %1761 = zext i1 %1760 to i8
  %1762 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1761, i8* %1762, align 1
  %1763 = trunc i64 %1757 to i32
  %1764 = and i32 %1763, 255
  %1765 = call i32 @llvm.ctpop.i32(i32 %1764)
  %1766 = trunc i32 %1765 to i8
  %1767 = and i8 %1766, 1
  %1768 = xor i8 %1767, 1
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1768, i8* %1769, align 1
  %1770 = xor i64 %1754, %1753
  %1771 = xor i64 %1770, %1757
  %1772 = lshr i64 %1771, 4
  %1773 = trunc i64 %1772 to i8
  %1774 = and i8 %1773, 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1774, i8* %1775, align 1
  %1776 = icmp eq i64 %1757, 0
  %1777 = zext i1 %1776 to i8
  %1778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1777, i8* %1778, align 1
  %1779 = lshr i64 %1757, 63
  %1780 = trunc i64 %1779 to i8
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1780, i8* %1781, align 1
  %1782 = lshr i64 %1753, 63
  %1783 = lshr i64 %1754, 63
  %1784 = xor i64 %1779, %1782
  %1785 = xor i64 %1779, %1783
  %1786 = add i64 %1784, %1785
  %1787 = icmp eq i64 %1786, 2
  %1788 = zext i1 %1787 to i8
  %1789 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1788, i8* %1789, align 1
  store %struct.Memory* %loadMem_49d0e5, %struct.Memory** %MEMORY
  %loadMem_49d0e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1791 = getelementptr inbounds %struct.GPR, %struct.GPR* %1790, i32 0, i32 33
  %1792 = getelementptr inbounds %struct.Reg, %struct.Reg* %1791, i32 0, i32 0
  %PC.i727 = bitcast %union.anon* %1792 to i64*
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1794 = getelementptr inbounds %struct.GPR, %struct.GPR* %1793, i32 0, i32 5
  %1795 = getelementptr inbounds %struct.Reg, %struct.Reg* %1794, i32 0, i32 0
  %RCX.i728 = bitcast %union.anon* %1795 to i64*
  %1796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1797 = getelementptr inbounds %struct.GPR, %struct.GPR* %1796, i32 0, i32 15
  %1798 = getelementptr inbounds %struct.Reg, %struct.Reg* %1797, i32 0, i32 0
  %RBP.i729 = bitcast %union.anon* %1798 to i64*
  %1799 = load i64, i64* %RBP.i729
  %1800 = sub i64 %1799, 4
  %1801 = load i64, i64* %PC.i727
  %1802 = add i64 %1801, 4
  store i64 %1802, i64* %PC.i727
  %1803 = inttoptr i64 %1800 to i32*
  %1804 = load i32, i32* %1803
  %1805 = sext i32 %1804 to i64
  store i64 %1805, i64* %RCX.i728, align 8
  store %struct.Memory* %loadMem_49d0e8, %struct.Memory** %MEMORY
  %loadMem_49d0ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %1806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1807 = getelementptr inbounds %struct.GPR, %struct.GPR* %1806, i32 0, i32 33
  %1808 = getelementptr inbounds %struct.Reg, %struct.Reg* %1807, i32 0, i32 0
  %PC.i723 = bitcast %union.anon* %1808 to i64*
  %1809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1810 = getelementptr inbounds %struct.GPR, %struct.GPR* %1809, i32 0, i32 7
  %1811 = getelementptr inbounds %struct.Reg, %struct.Reg* %1810, i32 0, i32 0
  %EDX.i724 = bitcast %union.anon* %1811 to i32*
  %1812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1813 = getelementptr inbounds %struct.GPR, %struct.GPR* %1812, i32 0, i32 1
  %1814 = getelementptr inbounds %struct.Reg, %struct.Reg* %1813, i32 0, i32 0
  %RAX.i725 = bitcast %union.anon* %1814 to i64*
  %1815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1816 = getelementptr inbounds %struct.GPR, %struct.GPR* %1815, i32 0, i32 5
  %1817 = getelementptr inbounds %struct.Reg, %struct.Reg* %1816, i32 0, i32 0
  %RCX.i726 = bitcast %union.anon* %1817 to i64*
  %1818 = load i64, i64* %RAX.i725
  %1819 = load i64, i64* %RCX.i726
  %1820 = mul i64 %1819, 4
  %1821 = add i64 %1820, %1818
  %1822 = load i32, i32* %EDX.i724
  %1823 = zext i32 %1822 to i64
  %1824 = load i64, i64* %PC.i723
  %1825 = add i64 %1824, 3
  store i64 %1825, i64* %PC.i723
  %1826 = inttoptr i64 %1821 to i32*
  store i32 %1822, i32* %1826
  store %struct.Memory* %loadMem_49d0ec, %struct.Memory** %MEMORY
  %loadMem_49d0ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 33
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %PC.i721 = bitcast %union.anon* %1829 to i64*
  %1830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1831 = getelementptr inbounds %struct.GPR, %struct.GPR* %1830, i32 0, i32 1
  %1832 = getelementptr inbounds %struct.Reg, %struct.Reg* %1831, i32 0, i32 0
  %RAX.i722 = bitcast %union.anon* %1832 to i64*
  %1833 = load i64, i64* %PC.i721
  %1834 = add i64 %1833, 8
  store i64 %1834, i64* %PC.i721
  %1835 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %1835, i64* %RAX.i722, align 8
  store %struct.Memory* %loadMem_49d0ef, %struct.Memory** %MEMORY
  %loadMem_49d0f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1837 = getelementptr inbounds %struct.GPR, %struct.GPR* %1836, i32 0, i32 33
  %1838 = getelementptr inbounds %struct.Reg, %struct.Reg* %1837, i32 0, i32 0
  %PC.i719 = bitcast %union.anon* %1838 to i64*
  %1839 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1840 = getelementptr inbounds %struct.GPR, %struct.GPR* %1839, i32 0, i32 1
  %1841 = getelementptr inbounds %struct.Reg, %struct.Reg* %1840, i32 0, i32 0
  %RAX.i720 = bitcast %union.anon* %1841 to i64*
  %1842 = load i64, i64* %RAX.i720
  %1843 = add i64 %1842, 6464
  %1844 = load i64, i64* %PC.i719
  %1845 = add i64 %1844, 7
  store i64 %1845, i64* %PC.i719
  %1846 = inttoptr i64 %1843 to i64*
  %1847 = load i64, i64* %1846
  store i64 %1847, i64* %RAX.i720, align 8
  store %struct.Memory* %loadMem_49d0f7, %struct.Memory** %MEMORY
  %loadMem_49d0fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i717 = bitcast %union.anon* %1850 to i64*
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 1
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %RAX.i718 = bitcast %union.anon* %1853 to i64*
  %1854 = load i64, i64* %RAX.i718
  %1855 = add i64 %1854, 8
  %1856 = load i64, i64* %PC.i717
  %1857 = add i64 %1856, 4
  store i64 %1857, i64* %PC.i717
  %1858 = inttoptr i64 %1855 to i64*
  %1859 = load i64, i64* %1858
  store i64 %1859, i64* %RAX.i718, align 8
  store %struct.Memory* %loadMem_49d0fe, %struct.Memory** %MEMORY
  %loadMem_49d102 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1860 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1861 = getelementptr inbounds %struct.GPR, %struct.GPR* %1860, i32 0, i32 33
  %1862 = getelementptr inbounds %struct.Reg, %struct.Reg* %1861, i32 0, i32 0
  %PC.i715 = bitcast %union.anon* %1862 to i64*
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 5
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %RCX.i716 = bitcast %union.anon* %1865 to i64*
  %1866 = load i64, i64* %PC.i715
  %1867 = add i64 %1866, 8
  store i64 %1867, i64* %PC.i715
  %1868 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1868, i64* %RCX.i716, align 8
  store %struct.Memory* %loadMem_49d102, %struct.Memory** %MEMORY
  %loadMem_49d10a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1869 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1870 = getelementptr inbounds %struct.GPR, %struct.GPR* %1869, i32 0, i32 33
  %1871 = getelementptr inbounds %struct.Reg, %struct.Reg* %1870, i32 0, i32 0
  %PC.i712 = bitcast %union.anon* %1871 to i64*
  %1872 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1873 = getelementptr inbounds %struct.GPR, %struct.GPR* %1872, i32 0, i32 5
  %1874 = getelementptr inbounds %struct.Reg, %struct.Reg* %1873, i32 0, i32 0
  %RCX.i713 = bitcast %union.anon* %1874 to i64*
  %1875 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1876 = getelementptr inbounds %struct.GPR, %struct.GPR* %1875, i32 0, i32 7
  %1877 = getelementptr inbounds %struct.Reg, %struct.Reg* %1876, i32 0, i32 0
  %RDX.i714 = bitcast %union.anon* %1877 to i64*
  %1878 = load i64, i64* %RCX.i713
  %1879 = add i64 %1878, 164
  %1880 = load i64, i64* %PC.i712
  %1881 = add i64 %1880, 6
  store i64 %1881, i64* %PC.i712
  %1882 = inttoptr i64 %1879 to i32*
  %1883 = load i32, i32* %1882
  %1884 = zext i32 %1883 to i64
  store i64 %1884, i64* %RDX.i714, align 8
  store %struct.Memory* %loadMem_49d10a, %struct.Memory** %MEMORY
  %loadMem_49d110 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 33
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %PC.i709 = bitcast %union.anon* %1887 to i64*
  %1888 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1889 = getelementptr inbounds %struct.GPR, %struct.GPR* %1888, i32 0, i32 7
  %1890 = getelementptr inbounds %struct.Reg, %struct.Reg* %1889, i32 0, i32 0
  %RDX.i710 = bitcast %union.anon* %1890 to i64*
  %1891 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1892 = getelementptr inbounds %struct.GPR, %struct.GPR* %1891, i32 0, i32 15
  %1893 = getelementptr inbounds %struct.Reg, %struct.Reg* %1892, i32 0, i32 0
  %RBP.i711 = bitcast %union.anon* %1893 to i64*
  %1894 = load i64, i64* %RDX.i710
  %1895 = load i64, i64* %RBP.i711
  %1896 = sub i64 %1895, 8
  %1897 = load i64, i64* %PC.i709
  %1898 = add i64 %1897, 3
  store i64 %1898, i64* %PC.i709
  %1899 = trunc i64 %1894 to i32
  %1900 = inttoptr i64 %1896 to i32*
  %1901 = load i32, i32* %1900
  %1902 = add i32 %1901, %1899
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RDX.i710, align 8
  %1904 = icmp ult i32 %1902, %1899
  %1905 = icmp ult i32 %1902, %1901
  %1906 = or i1 %1904, %1905
  %1907 = zext i1 %1906 to i8
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1907, i8* %1908, align 1
  %1909 = and i32 %1902, 255
  %1910 = call i32 @llvm.ctpop.i32(i32 %1909)
  %1911 = trunc i32 %1910 to i8
  %1912 = and i8 %1911, 1
  %1913 = xor i8 %1912, 1
  %1914 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1913, i8* %1914, align 1
  %1915 = xor i32 %1901, %1899
  %1916 = xor i32 %1915, %1902
  %1917 = lshr i32 %1916, 4
  %1918 = trunc i32 %1917 to i8
  %1919 = and i8 %1918, 1
  %1920 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1919, i8* %1920, align 1
  %1921 = icmp eq i32 %1902, 0
  %1922 = zext i1 %1921 to i8
  %1923 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1922, i8* %1923, align 1
  %1924 = lshr i32 %1902, 31
  %1925 = trunc i32 %1924 to i8
  %1926 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1925, i8* %1926, align 1
  %1927 = lshr i32 %1899, 31
  %1928 = lshr i32 %1901, 31
  %1929 = xor i32 %1924, %1927
  %1930 = xor i32 %1924, %1928
  %1931 = add i32 %1929, %1930
  %1932 = icmp eq i32 %1931, 2
  %1933 = zext i1 %1932 to i8
  %1934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1933, i8* %1934, align 1
  store %struct.Memory* %loadMem_49d110, %struct.Memory** %MEMORY
  %loadMem_49d113 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i706 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 7
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %EDX.i707 = bitcast %union.anon* %1940 to i32*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 5
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RCX.i708 = bitcast %union.anon* %1943 to i64*
  %1944 = load i32, i32* %EDX.i707
  %1945 = zext i32 %1944 to i64
  %1946 = load i64, i64* %PC.i706
  %1947 = add i64 %1946, 3
  store i64 %1947, i64* %PC.i706
  %1948 = shl i64 %1945, 32
  %1949 = ashr exact i64 %1948, 32
  store i64 %1949, i64* %RCX.i708, align 8
  store %struct.Memory* %loadMem_49d113, %struct.Memory** %MEMORY
  %loadMem_49d116 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 33
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %PC.i703 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 1
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RAX.i704 = bitcast %union.anon* %1955 to i64*
  %1956 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1957 = getelementptr inbounds %struct.GPR, %struct.GPR* %1956, i32 0, i32 5
  %1958 = getelementptr inbounds %struct.Reg, %struct.Reg* %1957, i32 0, i32 0
  %RCX.i705 = bitcast %union.anon* %1958 to i64*
  %1959 = load i64, i64* %RAX.i704
  %1960 = load i64, i64* %RCX.i705
  %1961 = mul i64 %1960, 8
  %1962 = add i64 %1961, %1959
  %1963 = load i64, i64* %PC.i703
  %1964 = add i64 %1963, 4
  store i64 %1964, i64* %PC.i703
  %1965 = inttoptr i64 %1962 to i64*
  %1966 = load i64, i64* %1965
  store i64 %1966, i64* %RAX.i704, align 8
  store %struct.Memory* %loadMem_49d116, %struct.Memory** %MEMORY
  %loadMem_49d11a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 33
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %PC.i701 = bitcast %union.anon* %1969 to i64*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 5
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RCX.i702 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %PC.i701
  %1974 = add i64 %1973, 8
  store i64 %1974, i64* %PC.i701
  %1975 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %1975, i64* %RCX.i702, align 8
  store %struct.Memory* %loadMem_49d11a, %struct.Memory** %MEMORY
  %loadMem_49d122 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1977 = getelementptr inbounds %struct.GPR, %struct.GPR* %1976, i32 0, i32 33
  %1978 = getelementptr inbounds %struct.Reg, %struct.Reg* %1977, i32 0, i32 0
  %PC.i698 = bitcast %union.anon* %1978 to i64*
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1980 = getelementptr inbounds %struct.GPR, %struct.GPR* %1979, i32 0, i32 5
  %1981 = getelementptr inbounds %struct.Reg, %struct.Reg* %1980, i32 0, i32 0
  %RCX.i699 = bitcast %union.anon* %1981 to i64*
  %1982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1983 = getelementptr inbounds %struct.GPR, %struct.GPR* %1982, i32 0, i32 7
  %1984 = getelementptr inbounds %struct.Reg, %struct.Reg* %1983, i32 0, i32 0
  %RDX.i700 = bitcast %union.anon* %1984 to i64*
  %1985 = load i64, i64* %RCX.i699
  %1986 = add i64 %1985, 160
  %1987 = load i64, i64* %PC.i698
  %1988 = add i64 %1987, 6
  store i64 %1988, i64* %PC.i698
  %1989 = inttoptr i64 %1986 to i32*
  %1990 = load i32, i32* %1989
  %1991 = zext i32 %1990 to i64
  store i64 %1991, i64* %RDX.i700, align 8
  store %struct.Memory* %loadMem_49d122, %struct.Memory** %MEMORY
  %loadMem_49d128 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1992 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1993 = getelementptr inbounds %struct.GPR, %struct.GPR* %1992, i32 0, i32 33
  %1994 = getelementptr inbounds %struct.Reg, %struct.Reg* %1993, i32 0, i32 0
  %PC.i695 = bitcast %union.anon* %1994 to i64*
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1996 = getelementptr inbounds %struct.GPR, %struct.GPR* %1995, i32 0, i32 7
  %1997 = getelementptr inbounds %struct.Reg, %struct.Reg* %1996, i32 0, i32 0
  %RDX.i696 = bitcast %union.anon* %1997 to i64*
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 15
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %RBP.i697 = bitcast %union.anon* %2000 to i64*
  %2001 = load i64, i64* %RDX.i696
  %2002 = load i64, i64* %RBP.i697
  %2003 = sub i64 %2002, 4
  %2004 = load i64, i64* %PC.i695
  %2005 = add i64 %2004, 3
  store i64 %2005, i64* %PC.i695
  %2006 = trunc i64 %2001 to i32
  %2007 = inttoptr i64 %2003 to i32*
  %2008 = load i32, i32* %2007
  %2009 = add i32 %2008, %2006
  %2010 = zext i32 %2009 to i64
  store i64 %2010, i64* %RDX.i696, align 8
  %2011 = icmp ult i32 %2009, %2006
  %2012 = icmp ult i32 %2009, %2008
  %2013 = or i1 %2011, %2012
  %2014 = zext i1 %2013 to i8
  %2015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2014, i8* %2015, align 1
  %2016 = and i32 %2009, 255
  %2017 = call i32 @llvm.ctpop.i32(i32 %2016)
  %2018 = trunc i32 %2017 to i8
  %2019 = and i8 %2018, 1
  %2020 = xor i8 %2019, 1
  %2021 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2020, i8* %2021, align 1
  %2022 = xor i32 %2008, %2006
  %2023 = xor i32 %2022, %2009
  %2024 = lshr i32 %2023, 4
  %2025 = trunc i32 %2024 to i8
  %2026 = and i8 %2025, 1
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2026, i8* %2027, align 1
  %2028 = icmp eq i32 %2009, 0
  %2029 = zext i1 %2028 to i8
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2029, i8* %2030, align 1
  %2031 = lshr i32 %2009, 31
  %2032 = trunc i32 %2031 to i8
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2032, i8* %2033, align 1
  %2034 = lshr i32 %2006, 31
  %2035 = lshr i32 %2008, 31
  %2036 = xor i32 %2031, %2034
  %2037 = xor i32 %2031, %2035
  %2038 = add i32 %2036, %2037
  %2039 = icmp eq i32 %2038, 2
  %2040 = zext i1 %2039 to i8
  %2041 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2040, i8* %2041, align 1
  store %struct.Memory* %loadMem_49d128, %struct.Memory** %MEMORY
  %loadMem_49d12b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2043 = getelementptr inbounds %struct.GPR, %struct.GPR* %2042, i32 0, i32 33
  %2044 = getelementptr inbounds %struct.Reg, %struct.Reg* %2043, i32 0, i32 0
  %PC.i692 = bitcast %union.anon* %2044 to i64*
  %2045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2046 = getelementptr inbounds %struct.GPR, %struct.GPR* %2045, i32 0, i32 7
  %2047 = getelementptr inbounds %struct.Reg, %struct.Reg* %2046, i32 0, i32 0
  %EDX.i693 = bitcast %union.anon* %2047 to i32*
  %2048 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2049 = getelementptr inbounds %struct.GPR, %struct.GPR* %2048, i32 0, i32 5
  %2050 = getelementptr inbounds %struct.Reg, %struct.Reg* %2049, i32 0, i32 0
  %RCX.i694 = bitcast %union.anon* %2050 to i64*
  %2051 = load i32, i32* %EDX.i693
  %2052 = zext i32 %2051 to i64
  %2053 = load i64, i64* %PC.i692
  %2054 = add i64 %2053, 3
  store i64 %2054, i64* %PC.i692
  %2055 = shl i64 %2052, 32
  %2056 = ashr exact i64 %2055, 32
  store i64 %2056, i64* %RCX.i694, align 8
  store %struct.Memory* %loadMem_49d12b, %struct.Memory** %MEMORY
  %loadMem_49d12e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2058 = getelementptr inbounds %struct.GPR, %struct.GPR* %2057, i32 0, i32 33
  %2059 = getelementptr inbounds %struct.Reg, %struct.Reg* %2058, i32 0, i32 0
  %PC.i688 = bitcast %union.anon* %2059 to i64*
  %2060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2061 = getelementptr inbounds %struct.GPR, %struct.GPR* %2060, i32 0, i32 1
  %2062 = getelementptr inbounds %struct.Reg, %struct.Reg* %2061, i32 0, i32 0
  %RAX.i689 = bitcast %union.anon* %2062 to i64*
  %2063 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2064 = getelementptr inbounds %struct.GPR, %struct.GPR* %2063, i32 0, i32 5
  %2065 = getelementptr inbounds %struct.Reg, %struct.Reg* %2064, i32 0, i32 0
  %RCX.i690 = bitcast %union.anon* %2065 to i64*
  %2066 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2067 = getelementptr inbounds %struct.GPR, %struct.GPR* %2066, i32 0, i32 7
  %2068 = getelementptr inbounds %struct.Reg, %struct.Reg* %2067, i32 0, i32 0
  %RDX.i691 = bitcast %union.anon* %2068 to i64*
  %2069 = load i64, i64* %RAX.i689
  %2070 = load i64, i64* %RCX.i690
  %2071 = mul i64 %2070, 2
  %2072 = add i64 %2071, %2069
  %2073 = load i64, i64* %PC.i688
  %2074 = add i64 %2073, 4
  store i64 %2074, i64* %PC.i688
  %2075 = inttoptr i64 %2072 to i16*
  %2076 = load i16, i16* %2075
  %2077 = zext i16 %2076 to i64
  store i64 %2077, i64* %RDX.i691, align 8
  store %struct.Memory* %loadMem_49d12e, %struct.Memory** %MEMORY
  %loadMem_49d132 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2079 = getelementptr inbounds %struct.GPR, %struct.GPR* %2078, i32 0, i32 33
  %2080 = getelementptr inbounds %struct.Reg, %struct.Reg* %2079, i32 0, i32 0
  %PC.i686 = bitcast %union.anon* %2080 to i64*
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2082 = getelementptr inbounds %struct.GPR, %struct.GPR* %2081, i32 0, i32 1
  %2083 = getelementptr inbounds %struct.Reg, %struct.Reg* %2082, i32 0, i32 0
  %RAX.i687 = bitcast %union.anon* %2083 to i64*
  %2084 = load i64, i64* %PC.i686
  %2085 = add i64 %2084, 8
  store i64 %2085, i64* %PC.i686
  %2086 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2086, i64* %RAX.i687, align 8
  store %struct.Memory* %loadMem_49d132, %struct.Memory** %MEMORY
  %loadMem_49d13a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2088 = getelementptr inbounds %struct.GPR, %struct.GPR* %2087, i32 0, i32 33
  %2089 = getelementptr inbounds %struct.Reg, %struct.Reg* %2088, i32 0, i32 0
  %PC.i684 = bitcast %union.anon* %2089 to i64*
  %2090 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2091 = getelementptr inbounds %struct.GPR, %struct.GPR* %2090, i32 0, i32 1
  %2092 = getelementptr inbounds %struct.Reg, %struct.Reg* %2091, i32 0, i32 0
  %RAX.i685 = bitcast %union.anon* %2092 to i64*
  %2093 = load i64, i64* %RAX.i685
  %2094 = load i64, i64* %PC.i684
  %2095 = add i64 %2094, 6
  store i64 %2095, i64* %PC.i684
  %2096 = add i64 2056, %2093
  store i64 %2096, i64* %RAX.i685, align 8
  %2097 = icmp ult i64 %2096, %2093
  %2098 = icmp ult i64 %2096, 2056
  %2099 = or i1 %2097, %2098
  %2100 = zext i1 %2099 to i8
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2100, i8* %2101, align 1
  %2102 = trunc i64 %2096 to i32
  %2103 = and i32 %2102, 255
  %2104 = call i32 @llvm.ctpop.i32(i32 %2103)
  %2105 = trunc i32 %2104 to i8
  %2106 = and i8 %2105, 1
  %2107 = xor i8 %2106, 1
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2107, i8* %2108, align 1
  %2109 = xor i64 2056, %2093
  %2110 = xor i64 %2109, %2096
  %2111 = lshr i64 %2110, 4
  %2112 = trunc i64 %2111 to i8
  %2113 = and i8 %2112, 1
  %2114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2113, i8* %2114, align 1
  %2115 = icmp eq i64 %2096, 0
  %2116 = zext i1 %2115 to i8
  %2117 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2116, i8* %2117, align 1
  %2118 = lshr i64 %2096, 63
  %2119 = trunc i64 %2118 to i8
  %2120 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2119, i8* %2120, align 1
  %2121 = lshr i64 %2093, 63
  %2122 = xor i64 %2118, %2121
  %2123 = add i64 %2122, %2118
  %2124 = icmp eq i64 %2123, 2
  %2125 = zext i1 %2124 to i8
  %2126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2125, i8* %2126, align 1
  store %struct.Memory* %loadMem_49d13a, %struct.Memory** %MEMORY
  %loadMem_49d140 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2128 = getelementptr inbounds %struct.GPR, %struct.GPR* %2127, i32 0, i32 33
  %2129 = getelementptr inbounds %struct.Reg, %struct.Reg* %2128, i32 0, i32 0
  %PC.i681 = bitcast %union.anon* %2129 to i64*
  %2130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2131 = getelementptr inbounds %struct.GPR, %struct.GPR* %2130, i32 0, i32 5
  %2132 = getelementptr inbounds %struct.Reg, %struct.Reg* %2131, i32 0, i32 0
  %RCX.i682 = bitcast %union.anon* %2132 to i64*
  %2133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2134 = getelementptr inbounds %struct.GPR, %struct.GPR* %2133, i32 0, i32 15
  %2135 = getelementptr inbounds %struct.Reg, %struct.Reg* %2134, i32 0, i32 0
  %RBP.i683 = bitcast %union.anon* %2135 to i64*
  %2136 = load i64, i64* %RBP.i683
  %2137 = sub i64 %2136, 8
  %2138 = load i64, i64* %PC.i681
  %2139 = add i64 %2138, 4
  store i64 %2139, i64* %PC.i681
  %2140 = inttoptr i64 %2137 to i32*
  %2141 = load i32, i32* %2140
  %2142 = sext i32 %2141 to i64
  store i64 %2142, i64* %RCX.i682, align 8
  store %struct.Memory* %loadMem_49d140, %struct.Memory** %MEMORY
  %loadMem_49d144 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2144 = getelementptr inbounds %struct.GPR, %struct.GPR* %2143, i32 0, i32 33
  %2145 = getelementptr inbounds %struct.Reg, %struct.Reg* %2144, i32 0, i32 0
  %PC.i679 = bitcast %union.anon* %2145 to i64*
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2147 = getelementptr inbounds %struct.GPR, %struct.GPR* %2146, i32 0, i32 5
  %2148 = getelementptr inbounds %struct.Reg, %struct.Reg* %2147, i32 0, i32 0
  %RCX.i680 = bitcast %union.anon* %2148 to i64*
  %2149 = load i64, i64* %RCX.i680
  %2150 = load i64, i64* %PC.i679
  %2151 = add i64 %2150, 4
  store i64 %2151, i64* %PC.i679
  %2152 = shl i64 %2149, 5
  %2153 = icmp slt i64 %2152, 0
  %2154 = shl i64 %2152, 1
  store i64 %2154, i64* %RCX.i680, align 8
  %2155 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2156 = zext i1 %2153 to i8
  store i8 %2156, i8* %2155, align 1
  %2157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2158 = trunc i64 %2154 to i32
  %2159 = and i32 %2158, 254
  %2160 = call i32 @llvm.ctpop.i32(i32 %2159)
  %2161 = trunc i32 %2160 to i8
  %2162 = and i8 %2161, 1
  %2163 = xor i8 %2162, 1
  store i8 %2163, i8* %2157, align 1
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2164, align 1
  %2165 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2166 = icmp eq i64 %2154, 0
  %2167 = zext i1 %2166 to i8
  store i8 %2167, i8* %2165, align 1
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2169 = lshr i64 %2154, 63
  %2170 = trunc i64 %2169 to i8
  store i8 %2170, i8* %2168, align 1
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2171, align 1
  store %struct.Memory* %loadMem_49d144, %struct.Memory** %MEMORY
  %loadMem_49d148 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2173 = getelementptr inbounds %struct.GPR, %struct.GPR* %2172, i32 0, i32 33
  %2174 = getelementptr inbounds %struct.Reg, %struct.Reg* %2173, i32 0, i32 0
  %PC.i676 = bitcast %union.anon* %2174 to i64*
  %2175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2176 = getelementptr inbounds %struct.GPR, %struct.GPR* %2175, i32 0, i32 1
  %2177 = getelementptr inbounds %struct.Reg, %struct.Reg* %2176, i32 0, i32 0
  %RAX.i677 = bitcast %union.anon* %2177 to i64*
  %2178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2179 = getelementptr inbounds %struct.GPR, %struct.GPR* %2178, i32 0, i32 5
  %2180 = getelementptr inbounds %struct.Reg, %struct.Reg* %2179, i32 0, i32 0
  %RCX.i678 = bitcast %union.anon* %2180 to i64*
  %2181 = load i64, i64* %RAX.i677
  %2182 = load i64, i64* %RCX.i678
  %2183 = load i64, i64* %PC.i676
  %2184 = add i64 %2183, 3
  store i64 %2184, i64* %PC.i676
  %2185 = add i64 %2182, %2181
  store i64 %2185, i64* %RAX.i677, align 8
  %2186 = icmp ult i64 %2185, %2181
  %2187 = icmp ult i64 %2185, %2182
  %2188 = or i1 %2186, %2187
  %2189 = zext i1 %2188 to i8
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2189, i8* %2190, align 1
  %2191 = trunc i64 %2185 to i32
  %2192 = and i32 %2191, 255
  %2193 = call i32 @llvm.ctpop.i32(i32 %2192)
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = xor i8 %2195, 1
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2196, i8* %2197, align 1
  %2198 = xor i64 %2182, %2181
  %2199 = xor i64 %2198, %2185
  %2200 = lshr i64 %2199, 4
  %2201 = trunc i64 %2200 to i8
  %2202 = and i8 %2201, 1
  %2203 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2202, i8* %2203, align 1
  %2204 = icmp eq i64 %2185, 0
  %2205 = zext i1 %2204 to i8
  %2206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2205, i8* %2206, align 1
  %2207 = lshr i64 %2185, 63
  %2208 = trunc i64 %2207 to i8
  %2209 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2208, i8* %2209, align 1
  %2210 = lshr i64 %2181, 63
  %2211 = lshr i64 %2182, 63
  %2212 = xor i64 %2207, %2210
  %2213 = xor i64 %2207, %2211
  %2214 = add i64 %2212, %2213
  %2215 = icmp eq i64 %2214, 2
  %2216 = zext i1 %2215 to i8
  %2217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2216, i8* %2217, align 1
  store %struct.Memory* %loadMem_49d148, %struct.Memory** %MEMORY
  %loadMem_49d14b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2219 = getelementptr inbounds %struct.GPR, %struct.GPR* %2218, i32 0, i32 33
  %2220 = getelementptr inbounds %struct.Reg, %struct.Reg* %2219, i32 0, i32 0
  %PC.i673 = bitcast %union.anon* %2220 to i64*
  %2221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2222 = getelementptr inbounds %struct.GPR, %struct.GPR* %2221, i32 0, i32 5
  %2223 = getelementptr inbounds %struct.Reg, %struct.Reg* %2222, i32 0, i32 0
  %RCX.i674 = bitcast %union.anon* %2223 to i64*
  %2224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2225 = getelementptr inbounds %struct.GPR, %struct.GPR* %2224, i32 0, i32 15
  %2226 = getelementptr inbounds %struct.Reg, %struct.Reg* %2225, i32 0, i32 0
  %RBP.i675 = bitcast %union.anon* %2226 to i64*
  %2227 = load i64, i64* %RBP.i675
  %2228 = sub i64 %2227, 4
  %2229 = load i64, i64* %PC.i673
  %2230 = add i64 %2229, 4
  store i64 %2230, i64* %PC.i673
  %2231 = inttoptr i64 %2228 to i32*
  %2232 = load i32, i32* %2231
  %2233 = sext i32 %2232 to i64
  store i64 %2233, i64* %RCX.i674, align 8
  store %struct.Memory* %loadMem_49d14b, %struct.Memory** %MEMORY
  %loadMem_49d14f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2235 = getelementptr inbounds %struct.GPR, %struct.GPR* %2234, i32 0, i32 33
  %2236 = getelementptr inbounds %struct.Reg, %struct.Reg* %2235, i32 0, i32 0
  %PC.i669 = bitcast %union.anon* %2236 to i64*
  %2237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2238 = getelementptr inbounds %struct.GPR, %struct.GPR* %2237, i32 0, i32 7
  %2239 = getelementptr inbounds %struct.Reg, %struct.Reg* %2238, i32 0, i32 0
  %EDX.i670 = bitcast %union.anon* %2239 to i32*
  %2240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2241 = getelementptr inbounds %struct.GPR, %struct.GPR* %2240, i32 0, i32 1
  %2242 = getelementptr inbounds %struct.Reg, %struct.Reg* %2241, i32 0, i32 0
  %RAX.i671 = bitcast %union.anon* %2242 to i64*
  %2243 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2244 = getelementptr inbounds %struct.GPR, %struct.GPR* %2243, i32 0, i32 5
  %2245 = getelementptr inbounds %struct.Reg, %struct.Reg* %2244, i32 0, i32 0
  %RCX.i672 = bitcast %union.anon* %2245 to i64*
  %2246 = load i64, i64* %RAX.i671
  %2247 = load i64, i64* %RCX.i672
  %2248 = mul i64 %2247, 4
  %2249 = add i64 %2248, %2246
  %2250 = load i32, i32* %EDX.i670
  %2251 = zext i32 %2250 to i64
  %2252 = load i64, i64* %PC.i669
  %2253 = add i64 %2252, 3
  store i64 %2253, i64* %PC.i669
  %2254 = inttoptr i64 %2249 to i32*
  store i32 %2250, i32* %2254
  store %struct.Memory* %loadMem_49d14f, %struct.Memory** %MEMORY
  %loadMem_49d152 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2256 = getelementptr inbounds %struct.GPR, %struct.GPR* %2255, i32 0, i32 33
  %2257 = getelementptr inbounds %struct.Reg, %struct.Reg* %2256, i32 0, i32 0
  %PC.i666 = bitcast %union.anon* %2257 to i64*
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2259 = getelementptr inbounds %struct.GPR, %struct.GPR* %2258, i32 0, i32 1
  %2260 = getelementptr inbounds %struct.Reg, %struct.Reg* %2259, i32 0, i32 0
  %RAX.i667 = bitcast %union.anon* %2260 to i64*
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2262 = getelementptr inbounds %struct.GPR, %struct.GPR* %2261, i32 0, i32 15
  %2263 = getelementptr inbounds %struct.Reg, %struct.Reg* %2262, i32 0, i32 0
  %RBP.i668 = bitcast %union.anon* %2263 to i64*
  %2264 = load i64, i64* %RBP.i668
  %2265 = sub i64 %2264, 4
  %2266 = load i64, i64* %PC.i666
  %2267 = add i64 %2266, 3
  store i64 %2267, i64* %PC.i666
  %2268 = inttoptr i64 %2265 to i32*
  %2269 = load i32, i32* %2268
  %2270 = zext i32 %2269 to i64
  store i64 %2270, i64* %RAX.i667, align 8
  store %struct.Memory* %loadMem_49d152, %struct.Memory** %MEMORY
  %loadMem_49d155 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i664 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 1
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RAX.i665 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %RAX.i665
  %2278 = load i64, i64* %PC.i664
  %2279 = add i64 %2278, 3
  store i64 %2279, i64* %PC.i664
  %2280 = trunc i64 %2277 to i32
  %2281 = add i32 1, %2280
  %2282 = zext i32 %2281 to i64
  store i64 %2282, i64* %RAX.i665, align 8
  %2283 = icmp ult i32 %2281, %2280
  %2284 = icmp ult i32 %2281, 1
  %2285 = or i1 %2283, %2284
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2286, i8* %2287, align 1
  %2288 = and i32 %2281, 255
  %2289 = call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2292, i8* %2293, align 1
  %2294 = xor i64 1, %2277
  %2295 = trunc i64 %2294 to i32
  %2296 = xor i32 %2295, %2281
  %2297 = lshr i32 %2296, 4
  %2298 = trunc i32 %2297 to i8
  %2299 = and i8 %2298, 1
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2299, i8* %2300, align 1
  %2301 = icmp eq i32 %2281, 0
  %2302 = zext i1 %2301 to i8
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2302, i8* %2303, align 1
  %2304 = lshr i32 %2281, 31
  %2305 = trunc i32 %2304 to i8
  %2306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2305, i8* %2306, align 1
  %2307 = lshr i32 %2280, 31
  %2308 = xor i32 %2304, %2307
  %2309 = add i32 %2308, %2304
  %2310 = icmp eq i32 %2309, 2
  %2311 = zext i1 %2310 to i8
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2311, i8* %2312, align 1
  store %struct.Memory* %loadMem_49d155, %struct.Memory** %MEMORY
  %loadMem_49d158 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i661 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 1
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %EAX.i662 = bitcast %union.anon* %2318 to i32*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 15
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RBP.i663 = bitcast %union.anon* %2321 to i64*
  %2322 = load i64, i64* %RBP.i663
  %2323 = sub i64 %2322, 4
  %2324 = load i32, i32* %EAX.i662
  %2325 = zext i32 %2324 to i64
  %2326 = load i64, i64* %PC.i661
  %2327 = add i64 %2326, 3
  store i64 %2327, i64* %PC.i661
  %2328 = inttoptr i64 %2323 to i32*
  store i32 %2324, i32* %2328
  store %struct.Memory* %loadMem_49d158, %struct.Memory** %MEMORY
  %loadMem_49d15b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i660 = bitcast %union.anon* %2331 to i64*
  %2332 = load i64, i64* %PC.i660
  %2333 = add i64 %2332, -229
  %2334 = load i64, i64* %PC.i660
  %2335 = add i64 %2334, 5
  store i64 %2335, i64* %PC.i660
  %2336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2333, i64* %2336, align 8
  store %struct.Memory* %loadMem_49d15b, %struct.Memory** %MEMORY
  br label %block_.L_49d076

block_.L_49d160:                                  ; preds = %block_.L_49d076
  %loadMem_49d160 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 33
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %PC.i659 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %PC.i659
  %2341 = add i64 %2340, 5
  %2342 = load i64, i64* %PC.i659
  %2343 = add i64 %2342, 5
  store i64 %2343, i64* %PC.i659
  %2344 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2341, i64* %2344, align 8
  store %struct.Memory* %loadMem_49d160, %struct.Memory** %MEMORY
  br label %block_.L_49d165

block_.L_49d165:                                  ; preds = %block_.L_49d160
  %loadMem_49d165 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i656 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 1
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %RAX.i657 = bitcast %union.anon* %2350 to i64*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 15
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RBP.i658 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RBP.i658
  %2355 = sub i64 %2354, 8
  %2356 = load i64, i64* %PC.i656
  %2357 = add i64 %2356, 3
  store i64 %2357, i64* %PC.i656
  %2358 = inttoptr i64 %2355 to i32*
  %2359 = load i32, i32* %2358
  %2360 = zext i32 %2359 to i64
  store i64 %2360, i64* %RAX.i657, align 8
  store %struct.Memory* %loadMem_49d165, %struct.Memory** %MEMORY
  %loadMem_49d168 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i654 = bitcast %union.anon* %2363 to i64*
  %2364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2365 = getelementptr inbounds %struct.GPR, %struct.GPR* %2364, i32 0, i32 1
  %2366 = getelementptr inbounds %struct.Reg, %struct.Reg* %2365, i32 0, i32 0
  %RAX.i655 = bitcast %union.anon* %2366 to i64*
  %2367 = load i64, i64* %RAX.i655
  %2368 = load i64, i64* %PC.i654
  %2369 = add i64 %2368, 3
  store i64 %2369, i64* %PC.i654
  %2370 = trunc i64 %2367 to i32
  %2371 = add i32 1, %2370
  %2372 = zext i32 %2371 to i64
  store i64 %2372, i64* %RAX.i655, align 8
  %2373 = icmp ult i32 %2371, %2370
  %2374 = icmp ult i32 %2371, 1
  %2375 = or i1 %2373, %2374
  %2376 = zext i1 %2375 to i8
  %2377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2376, i8* %2377, align 1
  %2378 = and i32 %2371, 255
  %2379 = call i32 @llvm.ctpop.i32(i32 %2378)
  %2380 = trunc i32 %2379 to i8
  %2381 = and i8 %2380, 1
  %2382 = xor i8 %2381, 1
  %2383 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2382, i8* %2383, align 1
  %2384 = xor i64 1, %2367
  %2385 = trunc i64 %2384 to i32
  %2386 = xor i32 %2385, %2371
  %2387 = lshr i32 %2386, 4
  %2388 = trunc i32 %2387 to i8
  %2389 = and i8 %2388, 1
  %2390 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2389, i8* %2390, align 1
  %2391 = icmp eq i32 %2371, 0
  %2392 = zext i1 %2391 to i8
  %2393 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2392, i8* %2393, align 1
  %2394 = lshr i32 %2371, 31
  %2395 = trunc i32 %2394 to i8
  %2396 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2395, i8* %2396, align 1
  %2397 = lshr i32 %2370, 31
  %2398 = xor i32 %2394, %2397
  %2399 = add i32 %2398, %2394
  %2400 = icmp eq i32 %2399, 2
  %2401 = zext i1 %2400 to i8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2401, i8* %2402, align 1
  store %struct.Memory* %loadMem_49d168, %struct.Memory** %MEMORY
  %loadMem_49d16b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2404 = getelementptr inbounds %struct.GPR, %struct.GPR* %2403, i32 0, i32 33
  %2405 = getelementptr inbounds %struct.Reg, %struct.Reg* %2404, i32 0, i32 0
  %PC.i651 = bitcast %union.anon* %2405 to i64*
  %2406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2407 = getelementptr inbounds %struct.GPR, %struct.GPR* %2406, i32 0, i32 1
  %2408 = getelementptr inbounds %struct.Reg, %struct.Reg* %2407, i32 0, i32 0
  %EAX.i652 = bitcast %union.anon* %2408 to i32*
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2410 = getelementptr inbounds %struct.GPR, %struct.GPR* %2409, i32 0, i32 15
  %2411 = getelementptr inbounds %struct.Reg, %struct.Reg* %2410, i32 0, i32 0
  %RBP.i653 = bitcast %union.anon* %2411 to i64*
  %2412 = load i64, i64* %RBP.i653
  %2413 = sub i64 %2412, 8
  %2414 = load i32, i32* %EAX.i652
  %2415 = zext i32 %2414 to i64
  %2416 = load i64, i64* %PC.i651
  %2417 = add i64 %2416, 3
  store i64 %2417, i64* %PC.i651
  %2418 = inttoptr i64 %2413 to i32*
  store i32 %2414, i32* %2418
  store %struct.Memory* %loadMem_49d16b, %struct.Memory** %MEMORY
  %loadMem_49d16e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2419 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2420 = getelementptr inbounds %struct.GPR, %struct.GPR* %2419, i32 0, i32 33
  %2421 = getelementptr inbounds %struct.Reg, %struct.Reg* %2420, i32 0, i32 0
  %PC.i650 = bitcast %union.anon* %2421 to i64*
  %2422 = load i64, i64* %PC.i650
  %2423 = add i64 %2422, -278
  %2424 = load i64, i64* %PC.i650
  %2425 = add i64 %2424, 5
  store i64 %2425, i64* %PC.i650
  %2426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2423, i64* %2426, align 8
  store %struct.Memory* %loadMem_49d16e, %struct.Memory** %MEMORY
  br label %block_.L_49d058

block_.L_49d173:                                  ; preds = %block_.L_49d058
  %loadMem_49d173 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2428 = getelementptr inbounds %struct.GPR, %struct.GPR* %2427, i32 0, i32 33
  %2429 = getelementptr inbounds %struct.Reg, %struct.Reg* %2428, i32 0, i32 0
  %PC.i649 = bitcast %union.anon* %2429 to i64*
  %2430 = load i64, i64* %PC.i649
  %2431 = add i64 %2430, 5
  %2432 = load i64, i64* %PC.i649
  %2433 = add i64 %2432, 5
  store i64 %2433, i64* %PC.i649
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2431, i64* %2434, align 8
  store %struct.Memory* %loadMem_49d173, %struct.Memory** %MEMORY
  br label %block_.L_49d178

block_.L_49d178:                                  ; preds = %block_.L_49d173, %block_.L_49d03c
  %loadMem_49d178 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2436 = getelementptr inbounds %struct.GPR, %struct.GPR* %2435, i32 0, i32 33
  %2437 = getelementptr inbounds %struct.Reg, %struct.Reg* %2436, i32 0, i32 0
  %PC.i646 = bitcast %union.anon* %2437 to i64*
  %2438 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2439 = getelementptr inbounds %struct.GPR, %struct.GPR* %2438, i32 0, i32 1
  %2440 = getelementptr inbounds %struct.Reg, %struct.Reg* %2439, i32 0, i32 0
  %RAX.i647 = bitcast %union.anon* %2440 to i64*
  %2441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2442 = getelementptr inbounds %struct.GPR, %struct.GPR* %2441, i32 0, i32 15
  %2443 = getelementptr inbounds %struct.Reg, %struct.Reg* %2442, i32 0, i32 0
  %RBP.i648 = bitcast %union.anon* %2443 to i64*
  %2444 = load i64, i64* %RBP.i648
  %2445 = sub i64 %2444, 28
  %2446 = load i64, i64* %PC.i646
  %2447 = add i64 %2446, 3
  store i64 %2447, i64* %PC.i646
  %2448 = inttoptr i64 %2445 to i32*
  %2449 = load i32, i32* %2448
  %2450 = zext i32 %2449 to i64
  store i64 %2450, i64* %RAX.i647, align 8
  store %struct.Memory* %loadMem_49d178, %struct.Memory** %MEMORY
  %loadMem_49d17b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 33
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %PC.i644 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 5
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RCX.i645 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %PC.i644
  %2458 = add i64 %2457, 8
  store i64 %2458, i64* %PC.i644
  %2459 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2459, i64* %RCX.i645, align 8
  store %struct.Memory* %loadMem_49d17b, %struct.Memory** %MEMORY
  %loadMem_49d183 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i641 = bitcast %union.anon* %2462 to i64*
  %2463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2464 = getelementptr inbounds %struct.GPR, %struct.GPR* %2463, i32 0, i32 1
  %2465 = getelementptr inbounds %struct.Reg, %struct.Reg* %2464, i32 0, i32 0
  %EAX.i642 = bitcast %union.anon* %2465 to i32*
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2467 = getelementptr inbounds %struct.GPR, %struct.GPR* %2466, i32 0, i32 5
  %2468 = getelementptr inbounds %struct.Reg, %struct.Reg* %2467, i32 0, i32 0
  %RCX.i643 = bitcast %union.anon* %2468 to i64*
  %2469 = load i64, i64* %RCX.i643
  %2470 = add i64 %2469, 3224
  %2471 = load i32, i32* %EAX.i642
  %2472 = zext i32 %2471 to i64
  %2473 = load i64, i64* %PC.i641
  %2474 = add i64 %2473, 6
  store i64 %2474, i64* %PC.i641
  %2475 = inttoptr i64 %2470 to i32*
  store i32 %2471, i32* %2475
  store %struct.Memory* %loadMem_49d183, %struct.Memory** %MEMORY
  %loadMem_49d189 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i639 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 5
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RCX.i640 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %PC.i639
  %2483 = add i64 %2482, 8
  store i64 %2483, i64* %PC.i639
  %2484 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2484, i64* %RCX.i640, align 8
  store %struct.Memory* %loadMem_49d189, %struct.Memory** %MEMORY
  %loadMem_49d191 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2486 = getelementptr inbounds %struct.GPR, %struct.GPR* %2485, i32 0, i32 33
  %2487 = getelementptr inbounds %struct.Reg, %struct.Reg* %2486, i32 0, i32 0
  %PC.i636 = bitcast %union.anon* %2487 to i64*
  %2488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2489 = getelementptr inbounds %struct.GPR, %struct.GPR* %2488, i32 0, i32 1
  %2490 = getelementptr inbounds %struct.Reg, %struct.Reg* %2489, i32 0, i32 0
  %RAX.i637 = bitcast %union.anon* %2490 to i64*
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2492 = getelementptr inbounds %struct.GPR, %struct.GPR* %2491, i32 0, i32 5
  %2493 = getelementptr inbounds %struct.Reg, %struct.Reg* %2492, i32 0, i32 0
  %RCX.i638 = bitcast %union.anon* %2493 to i64*
  %2494 = load i64, i64* %RCX.i638
  %2495 = add i64 %2494, 72380
  %2496 = load i64, i64* %PC.i636
  %2497 = add i64 %2496, 6
  store i64 %2497, i64* %PC.i636
  %2498 = inttoptr i64 %2495 to i32*
  %2499 = load i32, i32* %2498
  %2500 = zext i32 %2499 to i64
  store i64 %2500, i64* %RAX.i637, align 8
  store %struct.Memory* %loadMem_49d191, %struct.Memory** %MEMORY
  %loadMem_49d197 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2502 = getelementptr inbounds %struct.GPR, %struct.GPR* %2501, i32 0, i32 33
  %2503 = getelementptr inbounds %struct.Reg, %struct.Reg* %2502, i32 0, i32 0
  %PC.i634 = bitcast %union.anon* %2503 to i64*
  %2504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2505 = getelementptr inbounds %struct.GPR, %struct.GPR* %2504, i32 0, i32 5
  %2506 = getelementptr inbounds %struct.Reg, %struct.Reg* %2505, i32 0, i32 0
  %RCX.i635 = bitcast %union.anon* %2506 to i64*
  %2507 = load i64, i64* %PC.i634
  %2508 = add i64 %2507, 8
  store i64 %2508, i64* %PC.i634
  %2509 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2509, i64* %RCX.i635, align 8
  store %struct.Memory* %loadMem_49d197, %struct.Memory** %MEMORY
  %loadMem_49d19f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2511 = getelementptr inbounds %struct.GPR, %struct.GPR* %2510, i32 0, i32 33
  %2512 = getelementptr inbounds %struct.Reg, %struct.Reg* %2511, i32 0, i32 0
  %PC.i631 = bitcast %union.anon* %2512 to i64*
  %2513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2514 = getelementptr inbounds %struct.GPR, %struct.GPR* %2513, i32 0, i32 1
  %2515 = getelementptr inbounds %struct.Reg, %struct.Reg* %2514, i32 0, i32 0
  %EAX.i632 = bitcast %union.anon* %2515 to i32*
  %2516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2517 = getelementptr inbounds %struct.GPR, %struct.GPR* %2516, i32 0, i32 5
  %2518 = getelementptr inbounds %struct.Reg, %struct.Reg* %2517, i32 0, i32 0
  %RCX.i633 = bitcast %union.anon* %2518 to i64*
  %2519 = load i64, i64* %RCX.i633
  %2520 = add i64 %2519, 3328
  %2521 = load i32, i32* %EAX.i632
  %2522 = zext i32 %2521 to i64
  %2523 = load i64, i64* %PC.i631
  %2524 = add i64 %2523, 6
  store i64 %2524, i64* %PC.i631
  %2525 = inttoptr i64 %2520 to i32*
  store i32 %2521, i32* %2525
  store %struct.Memory* %loadMem_49d19f, %struct.Memory** %MEMORY
  %loadMem_49d1a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2527 = getelementptr inbounds %struct.GPR, %struct.GPR* %2526, i32 0, i32 33
  %2528 = getelementptr inbounds %struct.Reg, %struct.Reg* %2527, i32 0, i32 0
  %PC.i628 = bitcast %union.anon* %2528 to i64*
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2530 = getelementptr inbounds %struct.GPR, %struct.GPR* %2529, i32 0, i32 5
  %2531 = getelementptr inbounds %struct.Reg, %struct.Reg* %2530, i32 0, i32 0
  %RCX.i629 = bitcast %union.anon* %2531 to i64*
  %2532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2533 = getelementptr inbounds %struct.GPR, %struct.GPR* %2532, i32 0, i32 15
  %2534 = getelementptr inbounds %struct.Reg, %struct.Reg* %2533, i32 0, i32 0
  %RBP.i630 = bitcast %union.anon* %2534 to i64*
  %2535 = load i64, i64* %RBP.i630
  %2536 = sub i64 %2535, 24
  %2537 = load i64, i64* %PC.i628
  %2538 = add i64 %2537, 4
  store i64 %2538, i64* %PC.i628
  %2539 = inttoptr i64 %2536 to i64*
  %2540 = load i64, i64* %2539
  store i64 %2540, i64* %RCX.i629, align 8
  store %struct.Memory* %loadMem_49d1a5, %struct.Memory** %MEMORY
  %loadMem_49d1a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2541 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2542 = getelementptr inbounds %struct.GPR, %struct.GPR* %2541, i32 0, i32 33
  %2543 = getelementptr inbounds %struct.Reg, %struct.Reg* %2542, i32 0, i32 0
  %PC.i625 = bitcast %union.anon* %2543 to i64*
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2545 = getelementptr inbounds %struct.GPR, %struct.GPR* %2544, i32 0, i32 1
  %2546 = getelementptr inbounds %struct.Reg, %struct.Reg* %2545, i32 0, i32 0
  %RAX.i626 = bitcast %union.anon* %2546 to i64*
  %2547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2548 = getelementptr inbounds %struct.GPR, %struct.GPR* %2547, i32 0, i32 5
  %2549 = getelementptr inbounds %struct.Reg, %struct.Reg* %2548, i32 0, i32 0
  %RCX.i627 = bitcast %union.anon* %2549 to i64*
  %2550 = load i64, i64* %RCX.i627
  %2551 = add i64 %2550, 460
  %2552 = load i64, i64* %PC.i625
  %2553 = add i64 %2552, 6
  store i64 %2553, i64* %PC.i625
  %2554 = inttoptr i64 %2551 to i32*
  %2555 = load i32, i32* %2554
  %2556 = zext i32 %2555 to i64
  store i64 %2556, i64* %RAX.i626, align 8
  store %struct.Memory* %loadMem_49d1a9, %struct.Memory** %MEMORY
  %loadMem_49d1af = load %struct.Memory*, %struct.Memory** %MEMORY
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2558 = getelementptr inbounds %struct.GPR, %struct.GPR* %2557, i32 0, i32 33
  %2559 = getelementptr inbounds %struct.Reg, %struct.Reg* %2558, i32 0, i32 0
  %PC.i623 = bitcast %union.anon* %2559 to i64*
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2561 = getelementptr inbounds %struct.GPR, %struct.GPR* %2560, i32 0, i32 5
  %2562 = getelementptr inbounds %struct.Reg, %struct.Reg* %2561, i32 0, i32 0
  %RCX.i624 = bitcast %union.anon* %2562 to i64*
  %2563 = load i64, i64* %PC.i623
  %2564 = add i64 %2563, 8
  store i64 %2564, i64* %PC.i623
  %2565 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2565, i64* %RCX.i624, align 8
  store %struct.Memory* %loadMem_49d1af, %struct.Memory** %MEMORY
  %loadMem_49d1b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2567 = getelementptr inbounds %struct.GPR, %struct.GPR* %2566, i32 0, i32 33
  %2568 = getelementptr inbounds %struct.Reg, %struct.Reg* %2567, i32 0, i32 0
  %PC.i620 = bitcast %union.anon* %2568 to i64*
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2570 = getelementptr inbounds %struct.GPR, %struct.GPR* %2569, i32 0, i32 1
  %2571 = getelementptr inbounds %struct.Reg, %struct.Reg* %2570, i32 0, i32 0
  %EAX.i621 = bitcast %union.anon* %2571 to i32*
  %2572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2573 = getelementptr inbounds %struct.GPR, %struct.GPR* %2572, i32 0, i32 5
  %2574 = getelementptr inbounds %struct.Reg, %struct.Reg* %2573, i32 0, i32 0
  %RCX.i622 = bitcast %union.anon* %2574 to i64*
  %2575 = load i64, i64* %RCX.i622
  %2576 = add i64 %2575, 3208
  %2577 = load i32, i32* %EAX.i621
  %2578 = zext i32 %2577 to i64
  %2579 = load i64, i64* %PC.i620
  %2580 = add i64 %2579, 6
  store i64 %2580, i64* %PC.i620
  %2581 = inttoptr i64 %2576 to i32*
  store i32 %2577, i32* %2581
  store %struct.Memory* %loadMem_49d1b7, %struct.Memory** %MEMORY
  %loadMem_49d1bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i617 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 5
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RCX.i618 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 15
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RBP.i619 = bitcast %union.anon* %2590 to i64*
  %2591 = load i64, i64* %RBP.i619
  %2592 = sub i64 %2591, 24
  %2593 = load i64, i64* %PC.i617
  %2594 = add i64 %2593, 4
  store i64 %2594, i64* %PC.i617
  %2595 = inttoptr i64 %2592 to i64*
  %2596 = load i64, i64* %2595
  store i64 %2596, i64* %RCX.i618, align 8
  store %struct.Memory* %loadMem_49d1bd, %struct.Memory** %MEMORY
  %loadMem_49d1c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 33
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %PC.i615 = bitcast %union.anon* %2599 to i64*
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 5
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %RCX.i616 = bitcast %union.anon* %2602 to i64*
  %2603 = load i64, i64* %RCX.i616
  %2604 = add i64 %2603, 464
  %2605 = load i64, i64* %PC.i615
  %2606 = add i64 %2605, 7
  store i64 %2606, i64* %PC.i615
  %2607 = inttoptr i64 %2604 to i64*
  %2608 = load i64, i64* %2607
  store i64 %2608, i64* %RCX.i616, align 8
  store %struct.Memory* %loadMem_49d1c1, %struct.Memory** %MEMORY
  %loadMem_49d1c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2610 = getelementptr inbounds %struct.GPR, %struct.GPR* %2609, i32 0, i32 33
  %2611 = getelementptr inbounds %struct.Reg, %struct.Reg* %2610, i32 0, i32 0
  %PC.i613 = bitcast %union.anon* %2611 to i64*
  %2612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2613 = getelementptr inbounds %struct.GPR, %struct.GPR* %2612, i32 0, i32 7
  %2614 = getelementptr inbounds %struct.Reg, %struct.Reg* %2613, i32 0, i32 0
  %RDX.i614 = bitcast %union.anon* %2614 to i64*
  %2615 = load i64, i64* %PC.i613
  %2616 = add i64 %2615, 8
  store i64 %2616, i64* %PC.i613
  %2617 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2617, i64* %RDX.i614, align 8
  store %struct.Memory* %loadMem_49d1c8, %struct.Memory** %MEMORY
  %loadMem_49d1d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i610 = bitcast %union.anon* %2620 to i64*
  %2621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2622 = getelementptr inbounds %struct.GPR, %struct.GPR* %2621, i32 0, i32 5
  %2623 = getelementptr inbounds %struct.Reg, %struct.Reg* %2622, i32 0, i32 0
  %RCX.i611 = bitcast %union.anon* %2623 to i64*
  %2624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2625 = getelementptr inbounds %struct.GPR, %struct.GPR* %2624, i32 0, i32 7
  %2626 = getelementptr inbounds %struct.Reg, %struct.Reg* %2625, i32 0, i32 0
  %RDX.i612 = bitcast %union.anon* %2626 to i64*
  %2627 = load i64, i64* %RDX.i612
  %2628 = add i64 %2627, 3216
  %2629 = load i64, i64* %RCX.i611
  %2630 = load i64, i64* %PC.i610
  %2631 = add i64 %2630, 7
  store i64 %2631, i64* %PC.i610
  %2632 = inttoptr i64 %2628 to i64*
  store i64 %2629, i64* %2632
  store %struct.Memory* %loadMem_49d1d0, %struct.Memory** %MEMORY
  %loadMem_49d1d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i607 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 5
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RCX.i608 = bitcast %union.anon* %2638 to i64*
  %2639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2640 = getelementptr inbounds %struct.GPR, %struct.GPR* %2639, i32 0, i32 15
  %2641 = getelementptr inbounds %struct.Reg, %struct.Reg* %2640, i32 0, i32 0
  %RBP.i609 = bitcast %union.anon* %2641 to i64*
  %2642 = load i64, i64* %RBP.i609
  %2643 = sub i64 %2642, 24
  %2644 = load i64, i64* %PC.i607
  %2645 = add i64 %2644, 4
  store i64 %2645, i64* %PC.i607
  %2646 = inttoptr i64 %2643 to i64*
  %2647 = load i64, i64* %2646
  store i64 %2647, i64* %RCX.i608, align 8
  store %struct.Memory* %loadMem_49d1d7, %struct.Memory** %MEMORY
  %loadMem_49d1db = load %struct.Memory*, %struct.Memory** %MEMORY
  %2648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2649 = getelementptr inbounds %struct.GPR, %struct.GPR* %2648, i32 0, i32 33
  %2650 = getelementptr inbounds %struct.Reg, %struct.Reg* %2649, i32 0, i32 0
  %PC.i604 = bitcast %union.anon* %2650 to i64*
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2652 = getelementptr inbounds %struct.GPR, %struct.GPR* %2651, i32 0, i32 1
  %2653 = getelementptr inbounds %struct.Reg, %struct.Reg* %2652, i32 0, i32 0
  %RAX.i605 = bitcast %union.anon* %2653 to i64*
  %2654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2655 = getelementptr inbounds %struct.GPR, %struct.GPR* %2654, i32 0, i32 5
  %2656 = getelementptr inbounds %struct.Reg, %struct.Reg* %2655, i32 0, i32 0
  %RCX.i606 = bitcast %union.anon* %2656 to i64*
  %2657 = load i64, i64* %RCX.i606
  %2658 = add i64 %2657, 72
  %2659 = load i64, i64* %PC.i604
  %2660 = add i64 %2659, 3
  store i64 %2660, i64* %PC.i604
  %2661 = inttoptr i64 %2658 to i32*
  %2662 = load i32, i32* %2661
  %2663 = zext i32 %2662 to i64
  store i64 %2663, i64* %RAX.i605, align 8
  store %struct.Memory* %loadMem_49d1db, %struct.Memory** %MEMORY
  %loadMem_49d1de = load %struct.Memory*, %struct.Memory** %MEMORY
  %2664 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2665 = getelementptr inbounds %struct.GPR, %struct.GPR* %2664, i32 0, i32 33
  %2666 = getelementptr inbounds %struct.Reg, %struct.Reg* %2665, i32 0, i32 0
  %PC.i602 = bitcast %union.anon* %2666 to i64*
  %2667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2668 = getelementptr inbounds %struct.GPR, %struct.GPR* %2667, i32 0, i32 5
  %2669 = getelementptr inbounds %struct.Reg, %struct.Reg* %2668, i32 0, i32 0
  %RCX.i603 = bitcast %union.anon* %2669 to i64*
  %2670 = load i64, i64* %PC.i602
  %2671 = add i64 %2670, 8
  store i64 %2671, i64* %PC.i602
  %2672 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2672, i64* %RCX.i603, align 8
  store %struct.Memory* %loadMem_49d1de, %struct.Memory** %MEMORY
  %loadMem_49d1e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2673 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2674 = getelementptr inbounds %struct.GPR, %struct.GPR* %2673, i32 0, i32 33
  %2675 = getelementptr inbounds %struct.Reg, %struct.Reg* %2674, i32 0, i32 0
  %PC.i599 = bitcast %union.anon* %2675 to i64*
  %2676 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2677 = getelementptr inbounds %struct.GPR, %struct.GPR* %2676, i32 0, i32 1
  %2678 = getelementptr inbounds %struct.Reg, %struct.Reg* %2677, i32 0, i32 0
  %EAX.i600 = bitcast %union.anon* %2678 to i32*
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 5
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %RCX.i601 = bitcast %union.anon* %2681 to i64*
  %2682 = load i64, i64* %RCX.i601
  %2683 = add i64 %2682, 3096
  %2684 = load i32, i32* %EAX.i600
  %2685 = zext i32 %2684 to i64
  %2686 = load i64, i64* %PC.i599
  %2687 = add i64 %2686, 6
  store i64 %2687, i64* %PC.i599
  %2688 = inttoptr i64 %2683 to i32*
  store i32 %2684, i32* %2688
  store %struct.Memory* %loadMem_49d1e6, %struct.Memory** %MEMORY
  %loadMem_49d1ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 33
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %PC.i596 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 5
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RCX.i597 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 15
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RBP.i598 = bitcast %union.anon* %2697 to i64*
  %2698 = load i64, i64* %RBP.i598
  %2699 = sub i64 %2698, 24
  %2700 = load i64, i64* %PC.i596
  %2701 = add i64 %2700, 4
  store i64 %2701, i64* %PC.i596
  %2702 = inttoptr i64 %2699 to i64*
  %2703 = load i64, i64* %2702
  store i64 %2703, i64* %RCX.i597, align 8
  store %struct.Memory* %loadMem_49d1ec, %struct.Memory** %MEMORY
  %loadMem_49d1f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2704 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2705 = getelementptr inbounds %struct.GPR, %struct.GPR* %2704, i32 0, i32 33
  %2706 = getelementptr inbounds %struct.Reg, %struct.Reg* %2705, i32 0, i32 0
  %PC.i593 = bitcast %union.anon* %2706 to i64*
  %2707 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2708 = getelementptr inbounds %struct.GPR, %struct.GPR* %2707, i32 0, i32 1
  %2709 = getelementptr inbounds %struct.Reg, %struct.Reg* %2708, i32 0, i32 0
  %RAX.i594 = bitcast %union.anon* %2709 to i64*
  %2710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2711 = getelementptr inbounds %struct.GPR, %struct.GPR* %2710, i32 0, i32 5
  %2712 = getelementptr inbounds %struct.Reg, %struct.Reg* %2711, i32 0, i32 0
  %RCX.i595 = bitcast %union.anon* %2712 to i64*
  %2713 = load i64, i64* %RCX.i595
  %2714 = add i64 %2713, 572
  %2715 = load i64, i64* %PC.i593
  %2716 = add i64 %2715, 6
  store i64 %2716, i64* %PC.i593
  %2717 = inttoptr i64 %2714 to i32*
  %2718 = load i32, i32* %2717
  %2719 = zext i32 %2718 to i64
  store i64 %2719, i64* %RAX.i594, align 8
  store %struct.Memory* %loadMem_49d1f0, %struct.Memory** %MEMORY
  %loadMem_49d1f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 33
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %PC.i591 = bitcast %union.anon* %2722 to i64*
  %2723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2724 = getelementptr inbounds %struct.GPR, %struct.GPR* %2723, i32 0, i32 5
  %2725 = getelementptr inbounds %struct.Reg, %struct.Reg* %2724, i32 0, i32 0
  %RCX.i592 = bitcast %union.anon* %2725 to i64*
  %2726 = load i64, i64* %PC.i591
  %2727 = add i64 %2726, 8
  store i64 %2727, i64* %PC.i591
  %2728 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2728, i64* %RCX.i592, align 8
  store %struct.Memory* %loadMem_49d1f6, %struct.Memory** %MEMORY
  %loadMem_49d1fe = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i588 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 1
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %EAX.i589 = bitcast %union.anon* %2734 to i32*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 5
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RCX.i590 = bitcast %union.anon* %2737 to i64*
  %2738 = load i64, i64* %RCX.i590
  %2739 = add i64 %2738, 3336
  %2740 = load i32, i32* %EAX.i589
  %2741 = zext i32 %2740 to i64
  %2742 = load i64, i64* %PC.i588
  %2743 = add i64 %2742, 6
  store i64 %2743, i64* %PC.i588
  %2744 = inttoptr i64 %2739 to i32*
  store i32 %2740, i32* %2744
  store %struct.Memory* %loadMem_49d1fe, %struct.Memory** %MEMORY
  %loadMem_49d204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2746 = getelementptr inbounds %struct.GPR, %struct.GPR* %2745, i32 0, i32 33
  %2747 = getelementptr inbounds %struct.Reg, %struct.Reg* %2746, i32 0, i32 0
  %PC.i586 = bitcast %union.anon* %2747 to i64*
  %2748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2749 = getelementptr inbounds %struct.GPR, %struct.GPR* %2748, i32 0, i32 5
  %2750 = getelementptr inbounds %struct.Reg, %struct.Reg* %2749, i32 0, i32 0
  %RCX.i587 = bitcast %union.anon* %2750 to i64*
  %2751 = load i64, i64* %PC.i586
  %2752 = add i64 %2751, 8
  store i64 %2752, i64* %PC.i586
  %2753 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2753, i64* %RCX.i587, align 8
  store %struct.Memory* %loadMem_49d204, %struct.Memory** %MEMORY
  %loadMem_49d20c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 33
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %PC.i584 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 5
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RCX.i585 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RCX.i585
  %2761 = add i64 %2760, 3096
  %2762 = load i64, i64* %PC.i584
  %2763 = add i64 %2762, 7
  store i64 %2763, i64* %PC.i584
  %2764 = inttoptr i64 %2761 to i32*
  %2765 = load i32, i32* %2764
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2766, align 1
  %2767 = and i32 %2765, 255
  %2768 = call i32 @llvm.ctpop.i32(i32 %2767)
  %2769 = trunc i32 %2768 to i8
  %2770 = and i8 %2769, 1
  %2771 = xor i8 %2770, 1
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2771, i8* %2772, align 1
  %2773 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2773, align 1
  %2774 = icmp eq i32 %2765, 0
  %2775 = zext i1 %2774 to i8
  %2776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2775, i8* %2776, align 1
  %2777 = lshr i32 %2765, 31
  %2778 = trunc i32 %2777 to i8
  %2779 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2778, i8* %2779, align 1
  %2780 = lshr i32 %2765, 31
  %2781 = xor i32 %2777, %2780
  %2782 = add i32 %2781, %2780
  %2783 = icmp eq i32 %2782, 2
  %2784 = zext i1 %2783 to i8
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2784, i8* %2785, align 1
  store %struct.Memory* %loadMem_49d20c, %struct.Memory** %MEMORY
  %loadMem_49d213 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2786 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2787 = getelementptr inbounds %struct.GPR, %struct.GPR* %2786, i32 0, i32 33
  %2788 = getelementptr inbounds %struct.Reg, %struct.Reg* %2787, i32 0, i32 0
  %PC.i583 = bitcast %union.anon* %2788 to i64*
  %2789 = load i64, i64* %PC.i583
  %2790 = add i64 %2789, 41
  %2791 = load i64, i64* %PC.i583
  %2792 = add i64 %2791, 6
  %2793 = load i64, i64* %PC.i583
  %2794 = add i64 %2793, 6
  store i64 %2794, i64* %PC.i583
  %2795 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2796 = load i8, i8* %2795, align 1
  %2797 = icmp eq i8 %2796, 0
  %2798 = zext i1 %2797 to i8
  store i8 %2798, i8* %BRANCH_TAKEN, align 1
  %2799 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2800 = select i1 %2797, i64 %2790, i64 %2792
  store i64 %2800, i64* %2799, align 8
  store %struct.Memory* %loadMem_49d213, %struct.Memory** %MEMORY
  %loadBr_49d213 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d213 = icmp eq i8 %loadBr_49d213, 1
  br i1 %cmpBr_49d213, label %block_.L_49d23c, label %block_49d219

block_49d219:                                     ; preds = %block_.L_49d178
  %loadMem_49d219 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2802 = getelementptr inbounds %struct.GPR, %struct.GPR* %2801, i32 0, i32 33
  %2803 = getelementptr inbounds %struct.Reg, %struct.Reg* %2802, i32 0, i32 0
  %PC.i581 = bitcast %union.anon* %2803 to i64*
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2805 = getelementptr inbounds %struct.GPR, %struct.GPR* %2804, i32 0, i32 15
  %2806 = getelementptr inbounds %struct.Reg, %struct.Reg* %2805, i32 0, i32 0
  %RBP.i582 = bitcast %union.anon* %2806 to i64*
  %2807 = load i64, i64* %RBP.i582
  %2808 = sub i64 %2807, 28
  %2809 = load i64, i64* %PC.i581
  %2810 = add i64 %2809, 4
  store i64 %2810, i64* %PC.i581
  %2811 = inttoptr i64 %2808 to i32*
  %2812 = load i32, i32* %2811
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2813, align 1
  %2814 = and i32 %2812, 255
  %2815 = call i32 @llvm.ctpop.i32(i32 %2814)
  %2816 = trunc i32 %2815 to i8
  %2817 = and i8 %2816, 1
  %2818 = xor i8 %2817, 1
  %2819 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2818, i8* %2819, align 1
  %2820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2820, align 1
  %2821 = icmp eq i32 %2812, 0
  %2822 = zext i1 %2821 to i8
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2822, i8* %2823, align 1
  %2824 = lshr i32 %2812, 31
  %2825 = trunc i32 %2824 to i8
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2825, i8* %2826, align 1
  %2827 = lshr i32 %2812, 31
  %2828 = xor i32 %2824, %2827
  %2829 = add i32 %2828, %2827
  %2830 = icmp eq i32 %2829, 2
  %2831 = zext i1 %2830 to i8
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2831, i8* %2832, align 1
  store %struct.Memory* %loadMem_49d219, %struct.Memory** %MEMORY
  %loadMem_49d21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2834 = getelementptr inbounds %struct.GPR, %struct.GPR* %2833, i32 0, i32 33
  %2835 = getelementptr inbounds %struct.Reg, %struct.Reg* %2834, i32 0, i32 0
  %PC.i580 = bitcast %union.anon* %2835 to i64*
  %2836 = load i64, i64* %PC.i580
  %2837 = add i64 %2836, 31
  %2838 = load i64, i64* %PC.i580
  %2839 = add i64 %2838, 6
  %2840 = load i64, i64* %PC.i580
  %2841 = add i64 %2840, 6
  store i64 %2841, i64* %PC.i580
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2843 = load i8, i8* %2842, align 1
  store i8 %2843, i8* %BRANCH_TAKEN, align 1
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2845 = icmp ne i8 %2843, 0
  %2846 = select i1 %2845, i64 %2837, i64 %2839
  store i64 %2846, i64* %2844, align 8
  store %struct.Memory* %loadMem_49d21d, %struct.Memory** %MEMORY
  %loadBr_49d21d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d21d = icmp eq i8 %loadBr_49d21d, 1
  br i1 %cmpBr_49d21d, label %block_.L_49d23c, label %block_49d223

block_49d223:                                     ; preds = %block_49d219
  %loadMem_49d223 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2848 = getelementptr inbounds %struct.GPR, %struct.GPR* %2847, i32 0, i32 33
  %2849 = getelementptr inbounds %struct.Reg, %struct.Reg* %2848, i32 0, i32 0
  %PC.i578 = bitcast %union.anon* %2849 to i64*
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2851 = getelementptr inbounds %struct.GPR, %struct.GPR* %2850, i32 0, i32 15
  %2852 = getelementptr inbounds %struct.Reg, %struct.Reg* %2851, i32 0, i32 0
  %RBP.i579 = bitcast %union.anon* %2852 to i64*
  %2853 = load i64, i64* %RBP.i579
  %2854 = sub i64 %2853, 28
  %2855 = load i64, i64* %PC.i578
  %2856 = add i64 %2855, 7
  store i64 %2856, i64* %PC.i578
  %2857 = inttoptr i64 %2854 to i32*
  store i32 0, i32* %2857
  store %struct.Memory* %loadMem_49d223, %struct.Memory** %MEMORY
  %loadMem_49d22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2859 = getelementptr inbounds %struct.GPR, %struct.GPR* %2858, i32 0, i32 33
  %2860 = getelementptr inbounds %struct.Reg, %struct.Reg* %2859, i32 0, i32 0
  %PC.i576 = bitcast %union.anon* %2860 to i64*
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2862 = getelementptr inbounds %struct.GPR, %struct.GPR* %2861, i32 0, i32 1
  %2863 = getelementptr inbounds %struct.Reg, %struct.Reg* %2862, i32 0, i32 0
  %RAX.i577 = bitcast %union.anon* %2863 to i64*
  %2864 = load i64, i64* %PC.i576
  %2865 = add i64 %2864, 8
  store i64 %2865, i64* %PC.i576
  %2866 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %2866, i64* %RAX.i577, align 8
  store %struct.Memory* %loadMem_49d22a, %struct.Memory** %MEMORY
  %loadMem_49d232 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2868 = getelementptr inbounds %struct.GPR, %struct.GPR* %2867, i32 0, i32 33
  %2869 = getelementptr inbounds %struct.Reg, %struct.Reg* %2868, i32 0, i32 0
  %PC.i574 = bitcast %union.anon* %2869 to i64*
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2871 = getelementptr inbounds %struct.GPR, %struct.GPR* %2870, i32 0, i32 1
  %2872 = getelementptr inbounds %struct.Reg, %struct.Reg* %2871, i32 0, i32 0
  %RAX.i575 = bitcast %union.anon* %2872 to i64*
  %2873 = load i64, i64* %RAX.i575
  %2874 = add i64 %2873, 3224
  %2875 = load i64, i64* %PC.i574
  %2876 = add i64 %2875, 10
  store i64 %2876, i64* %PC.i574
  %2877 = inttoptr i64 %2874 to i32*
  store i32 0, i32* %2877
  store %struct.Memory* %loadMem_49d232, %struct.Memory** %MEMORY
  br label %block_.L_49d23c

block_.L_49d23c:                                  ; preds = %block_49d223, %block_49d219, %block_.L_49d178
  %loadMem_49d23c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2878 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2879 = getelementptr inbounds %struct.GPR, %struct.GPR* %2878, i32 0, i32 33
  %2880 = getelementptr inbounds %struct.Reg, %struct.Reg* %2879, i32 0, i32 0
  %PC.i572 = bitcast %union.anon* %2880 to i64*
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2882 = getelementptr inbounds %struct.GPR, %struct.GPR* %2881, i32 0, i32 15
  %2883 = getelementptr inbounds %struct.Reg, %struct.Reg* %2882, i32 0, i32 0
  %RBP.i573 = bitcast %union.anon* %2883 to i64*
  %2884 = load i64, i64* %RBP.i573
  %2885 = sub i64 %2884, 4
  %2886 = load i64, i64* %PC.i572
  %2887 = add i64 %2886, 7
  store i64 %2887, i64* %PC.i572
  %2888 = inttoptr i64 %2885 to i32*
  store i32 0, i32* %2888
  store %struct.Memory* %loadMem_49d23c, %struct.Memory** %MEMORY
  br label %block_.L_49d243

block_.L_49d243:                                  ; preds = %block_.L_49d327, %block_.L_49d23c
  %loadMem_49d243 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 33
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %PC.i569 = bitcast %union.anon* %2891 to i64*
  %2892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2893 = getelementptr inbounds %struct.GPR, %struct.GPR* %2892, i32 0, i32 1
  %2894 = getelementptr inbounds %struct.Reg, %struct.Reg* %2893, i32 0, i32 0
  %RAX.i570 = bitcast %union.anon* %2894 to i64*
  %2895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2896 = getelementptr inbounds %struct.GPR, %struct.GPR* %2895, i32 0, i32 15
  %2897 = getelementptr inbounds %struct.Reg, %struct.Reg* %2896, i32 0, i32 0
  %RBP.i571 = bitcast %union.anon* %2897 to i64*
  %2898 = load i64, i64* %RBP.i571
  %2899 = sub i64 %2898, 4
  %2900 = load i64, i64* %PC.i569
  %2901 = add i64 %2900, 3
  store i64 %2901, i64* %PC.i569
  %2902 = inttoptr i64 %2899 to i32*
  %2903 = load i32, i32* %2902
  %2904 = zext i32 %2903 to i64
  store i64 %2904, i64* %RAX.i570, align 8
  store %struct.Memory* %loadMem_49d243, %struct.Memory** %MEMORY
  %loadMem_49d246 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 33
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %PC.i567 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 5
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RCX.i568 = bitcast %union.anon* %2910 to i64*
  %2911 = load i64, i64* %PC.i567
  %2912 = add i64 %2911, 8
  store i64 %2912, i64* %PC.i567
  %2913 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %2913, i64* %RCX.i568, align 8
  store %struct.Memory* %loadMem_49d246, %struct.Memory** %MEMORY
  %loadMem_49d24e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 33
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %PC.i564 = bitcast %union.anon* %2916 to i64*
  %2917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2918 = getelementptr inbounds %struct.GPR, %struct.GPR* %2917, i32 0, i32 5
  %2919 = getelementptr inbounds %struct.Reg, %struct.Reg* %2918, i32 0, i32 0
  %RCX.i565 = bitcast %union.anon* %2919 to i64*
  %2920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2921 = getelementptr inbounds %struct.GPR, %struct.GPR* %2920, i32 0, i32 7
  %2922 = getelementptr inbounds %struct.Reg, %struct.Reg* %2921, i32 0, i32 0
  %RDX.i566 = bitcast %union.anon* %2922 to i64*
  %2923 = load i64, i64* %RCX.i565
  %2924 = add i64 %2923, 72692
  %2925 = load i64, i64* %PC.i564
  %2926 = add i64 %2925, 6
  store i64 %2926, i64* %PC.i564
  %2927 = inttoptr i64 %2924 to i32*
  %2928 = load i32, i32* %2927
  %2929 = zext i32 %2928 to i64
  store i64 %2929, i64* %RDX.i566, align 8
  store %struct.Memory* %loadMem_49d24e, %struct.Memory** %MEMORY
  %loadMem_49d254 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 33
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %PC.i562 = bitcast %union.anon* %2932 to i64*
  %2933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2934 = getelementptr inbounds %struct.GPR, %struct.GPR* %2933, i32 0, i32 7
  %2935 = getelementptr inbounds %struct.Reg, %struct.Reg* %2934, i32 0, i32 0
  %RDX.i563 = bitcast %union.anon* %2935 to i64*
  %2936 = load i64, i64* %RDX.i563
  %2937 = load i64, i64* %PC.i562
  %2938 = add i64 %2937, 3
  store i64 %2938, i64* %PC.i562
  %2939 = trunc i64 %2936 to i32
  %2940 = add i32 4, %2939
  %2941 = zext i32 %2940 to i64
  store i64 %2941, i64* %RDX.i563, align 8
  %2942 = icmp ult i32 %2940, %2939
  %2943 = icmp ult i32 %2940, 4
  %2944 = or i1 %2942, %2943
  %2945 = zext i1 %2944 to i8
  %2946 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2945, i8* %2946, align 1
  %2947 = and i32 %2940, 255
  %2948 = call i32 @llvm.ctpop.i32(i32 %2947)
  %2949 = trunc i32 %2948 to i8
  %2950 = and i8 %2949, 1
  %2951 = xor i8 %2950, 1
  %2952 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2951, i8* %2952, align 1
  %2953 = xor i64 4, %2936
  %2954 = trunc i64 %2953 to i32
  %2955 = xor i32 %2954, %2940
  %2956 = lshr i32 %2955, 4
  %2957 = trunc i32 %2956 to i8
  %2958 = and i8 %2957, 1
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2958, i8* %2959, align 1
  %2960 = icmp eq i32 %2940, 0
  %2961 = zext i1 %2960 to i8
  %2962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2961, i8* %2962, align 1
  %2963 = lshr i32 %2940, 31
  %2964 = trunc i32 %2963 to i8
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2964, i8* %2965, align 1
  %2966 = lshr i32 %2939, 31
  %2967 = xor i32 %2963, %2966
  %2968 = add i32 %2967, %2963
  %2969 = icmp eq i32 %2968, 2
  %2970 = zext i1 %2969 to i8
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2970, i8* %2971, align 1
  store %struct.Memory* %loadMem_49d254, %struct.Memory** %MEMORY
  %loadMem_49d257 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2973 = getelementptr inbounds %struct.GPR, %struct.GPR* %2972, i32 0, i32 33
  %2974 = getelementptr inbounds %struct.Reg, %struct.Reg* %2973, i32 0, i32 0
  %PC.i559 = bitcast %union.anon* %2974 to i64*
  %2975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2976 = getelementptr inbounds %struct.GPR, %struct.GPR* %2975, i32 0, i32 1
  %2977 = getelementptr inbounds %struct.Reg, %struct.Reg* %2976, i32 0, i32 0
  %EAX.i560 = bitcast %union.anon* %2977 to i32*
  %2978 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2979 = getelementptr inbounds %struct.GPR, %struct.GPR* %2978, i32 0, i32 7
  %2980 = getelementptr inbounds %struct.Reg, %struct.Reg* %2979, i32 0, i32 0
  %EDX.i561 = bitcast %union.anon* %2980 to i32*
  %2981 = load i32, i32* %EAX.i560
  %2982 = zext i32 %2981 to i64
  %2983 = load i32, i32* %EDX.i561
  %2984 = zext i32 %2983 to i64
  %2985 = load i64, i64* %PC.i559
  %2986 = add i64 %2985, 2
  store i64 %2986, i64* %PC.i559
  %2987 = sub i32 %2981, %2983
  %2988 = icmp ult i32 %2981, %2983
  %2989 = zext i1 %2988 to i8
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2989, i8* %2990, align 1
  %2991 = and i32 %2987, 255
  %2992 = call i32 @llvm.ctpop.i32(i32 %2991)
  %2993 = trunc i32 %2992 to i8
  %2994 = and i8 %2993, 1
  %2995 = xor i8 %2994, 1
  %2996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2995, i8* %2996, align 1
  %2997 = xor i64 %2984, %2982
  %2998 = trunc i64 %2997 to i32
  %2999 = xor i32 %2998, %2987
  %3000 = lshr i32 %2999, 4
  %3001 = trunc i32 %3000 to i8
  %3002 = and i8 %3001, 1
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3002, i8* %3003, align 1
  %3004 = icmp eq i32 %2987, 0
  %3005 = zext i1 %3004 to i8
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3005, i8* %3006, align 1
  %3007 = lshr i32 %2987, 31
  %3008 = trunc i32 %3007 to i8
  %3009 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3008, i8* %3009, align 1
  %3010 = lshr i32 %2981, 31
  %3011 = lshr i32 %2983, 31
  %3012 = xor i32 %3011, %3010
  %3013 = xor i32 %3007, %3010
  %3014 = add i32 %3013, %3012
  %3015 = icmp eq i32 %3014, 2
  %3016 = zext i1 %3015 to i8
  %3017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3016, i8* %3017, align 1
  store %struct.Memory* %loadMem_49d257, %struct.Memory** %MEMORY
  %loadMem_49d259 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3019 = getelementptr inbounds %struct.GPR, %struct.GPR* %3018, i32 0, i32 33
  %3020 = getelementptr inbounds %struct.Reg, %struct.Reg* %3019, i32 0, i32 0
  %PC.i558 = bitcast %union.anon* %3020 to i64*
  %3021 = load i64, i64* %PC.i558
  %3022 = add i64 %3021, 220
  %3023 = load i64, i64* %PC.i558
  %3024 = add i64 %3023, 6
  %3025 = load i64, i64* %PC.i558
  %3026 = add i64 %3025, 6
  store i64 %3026, i64* %PC.i558
  %3027 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3028 = load i8, i8* %3027, align 1
  %3029 = icmp ne i8 %3028, 0
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3031 = load i8, i8* %3030, align 1
  %3032 = icmp ne i8 %3031, 0
  %3033 = xor i1 %3029, %3032
  %3034 = xor i1 %3033, true
  %3035 = zext i1 %3034 to i8
  store i8 %3035, i8* %BRANCH_TAKEN, align 1
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3037 = select i1 %3033, i64 %3024, i64 %3022
  store i64 %3037, i64* %3036, align 8
  store %struct.Memory* %loadMem_49d259, %struct.Memory** %MEMORY
  %loadBr_49d259 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d259 = icmp eq i8 %loadBr_49d259, 1
  br i1 %cmpBr_49d259, label %block_.L_49d335, label %block_49d25f

block_49d25f:                                     ; preds = %block_.L_49d243
  %loadMem_49d25f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3039 = getelementptr inbounds %struct.GPR, %struct.GPR* %3038, i32 0, i32 33
  %3040 = getelementptr inbounds %struct.Reg, %struct.Reg* %3039, i32 0, i32 0
  %PC.i556 = bitcast %union.anon* %3040 to i64*
  %3041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3042 = getelementptr inbounds %struct.GPR, %struct.GPR* %3041, i32 0, i32 15
  %3043 = getelementptr inbounds %struct.Reg, %struct.Reg* %3042, i32 0, i32 0
  %RBP.i557 = bitcast %union.anon* %3043 to i64*
  %3044 = load i64, i64* %RBP.i557
  %3045 = sub i64 %3044, 8
  %3046 = load i64, i64* %PC.i556
  %3047 = add i64 %3046, 7
  store i64 %3047, i64* %PC.i556
  %3048 = inttoptr i64 %3045 to i32*
  store i32 0, i32* %3048
  store %struct.Memory* %loadMem_49d25f, %struct.Memory** %MEMORY
  br label %block_.L_49d266

block_.L_49d266:                                  ; preds = %block_.L_49d314, %block_49d25f
  %loadMem_49d266 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3050 = getelementptr inbounds %struct.GPR, %struct.GPR* %3049, i32 0, i32 33
  %3051 = getelementptr inbounds %struct.Reg, %struct.Reg* %3050, i32 0, i32 0
  %PC.i554 = bitcast %union.anon* %3051 to i64*
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3053 = getelementptr inbounds %struct.GPR, %struct.GPR* %3052, i32 0, i32 15
  %3054 = getelementptr inbounds %struct.Reg, %struct.Reg* %3053, i32 0, i32 0
  %RBP.i555 = bitcast %union.anon* %3054 to i64*
  %3055 = load i64, i64* %RBP.i555
  %3056 = sub i64 %3055, 8
  %3057 = load i64, i64* %PC.i554
  %3058 = add i64 %3057, 4
  store i64 %3058, i64* %PC.i554
  %3059 = inttoptr i64 %3056 to i32*
  %3060 = load i32, i32* %3059
  %3061 = sub i32 %3060, 4
  %3062 = icmp ult i32 %3060, 4
  %3063 = zext i1 %3062 to i8
  %3064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3063, i8* %3064, align 1
  %3065 = and i32 %3061, 255
  %3066 = call i32 @llvm.ctpop.i32(i32 %3065)
  %3067 = trunc i32 %3066 to i8
  %3068 = and i8 %3067, 1
  %3069 = xor i8 %3068, 1
  %3070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3069, i8* %3070, align 1
  %3071 = xor i32 %3060, 4
  %3072 = xor i32 %3071, %3061
  %3073 = lshr i32 %3072, 4
  %3074 = trunc i32 %3073 to i8
  %3075 = and i8 %3074, 1
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3075, i8* %3076, align 1
  %3077 = icmp eq i32 %3061, 0
  %3078 = zext i1 %3077 to i8
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3078, i8* %3079, align 1
  %3080 = lshr i32 %3061, 31
  %3081 = trunc i32 %3080 to i8
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3081, i8* %3082, align 1
  %3083 = lshr i32 %3060, 31
  %3084 = xor i32 %3080, %3083
  %3085 = add i32 %3084, %3083
  %3086 = icmp eq i32 %3085, 2
  %3087 = zext i1 %3086 to i8
  %3088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3087, i8* %3088, align 1
  store %struct.Memory* %loadMem_49d266, %struct.Memory** %MEMORY
  %loadMem_49d26a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3090 = getelementptr inbounds %struct.GPR, %struct.GPR* %3089, i32 0, i32 33
  %3091 = getelementptr inbounds %struct.Reg, %struct.Reg* %3090, i32 0, i32 0
  %PC.i553 = bitcast %union.anon* %3091 to i64*
  %3092 = load i64, i64* %PC.i553
  %3093 = add i64 %3092, 184
  %3094 = load i64, i64* %PC.i553
  %3095 = add i64 %3094, 6
  %3096 = load i64, i64* %PC.i553
  %3097 = add i64 %3096, 6
  store i64 %3097, i64* %PC.i553
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3099 = load i8, i8* %3098, align 1
  %3100 = icmp ne i8 %3099, 0
  %3101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3102 = load i8, i8* %3101, align 1
  %3103 = icmp ne i8 %3102, 0
  %3104 = xor i1 %3100, %3103
  %3105 = xor i1 %3104, true
  %3106 = zext i1 %3105 to i8
  store i8 %3106, i8* %BRANCH_TAKEN, align 1
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3108 = select i1 %3104, i64 %3095, i64 %3093
  store i64 %3108, i64* %3107, align 8
  store %struct.Memory* %loadMem_49d26a, %struct.Memory** %MEMORY
  %loadBr_49d26a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d26a = icmp eq i8 %loadBr_49d26a, 1
  br i1 %cmpBr_49d26a, label %block_.L_49d322, label %block_49d270

block_49d270:                                     ; preds = %block_.L_49d266
  %loadMem_49d270 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3110 = getelementptr inbounds %struct.GPR, %struct.GPR* %3109, i32 0, i32 33
  %3111 = getelementptr inbounds %struct.Reg, %struct.Reg* %3110, i32 0, i32 0
  %PC.i551 = bitcast %union.anon* %3111 to i64*
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 15
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %RBP.i552 = bitcast %union.anon* %3114 to i64*
  %3115 = load i64, i64* %RBP.i552
  %3116 = sub i64 %3115, 12
  %3117 = load i64, i64* %PC.i551
  %3118 = add i64 %3117, 7
  store i64 %3118, i64* %PC.i551
  %3119 = inttoptr i64 %3116 to i32*
  store i32 0, i32* %3119
  store %struct.Memory* %loadMem_49d270, %struct.Memory** %MEMORY
  br label %block_.L_49d277

block_.L_49d277:                                  ; preds = %block_.L_49d301, %block_49d270
  %loadMem_49d277 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3121 = getelementptr inbounds %struct.GPR, %struct.GPR* %3120, i32 0, i32 33
  %3122 = getelementptr inbounds %struct.Reg, %struct.Reg* %3121, i32 0, i32 0
  %PC.i549 = bitcast %union.anon* %3122 to i64*
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 15
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %RBP.i550 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %RBP.i550
  %3127 = sub i64 %3126, 12
  %3128 = load i64, i64* %PC.i549
  %3129 = add i64 %3128, 4
  store i64 %3129, i64* %PC.i549
  %3130 = inttoptr i64 %3127 to i32*
  %3131 = load i32, i32* %3130
  %3132 = sub i32 %3131, 2
  %3133 = icmp ult i32 %3131, 2
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
  %3142 = xor i32 %3131, 2
  %3143 = xor i32 %3142, %3132
  %3144 = lshr i32 %3143, 4
  %3145 = trunc i32 %3144 to i8
  %3146 = and i8 %3145, 1
  %3147 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3146, i8* %3147, align 1
  %3148 = icmp eq i32 %3132, 0
  %3149 = zext i1 %3148 to i8
  %3150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3149, i8* %3150, align 1
  %3151 = lshr i32 %3132, 31
  %3152 = trunc i32 %3151 to i8
  %3153 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3152, i8* %3153, align 1
  %3154 = lshr i32 %3131, 31
  %3155 = xor i32 %3151, %3154
  %3156 = add i32 %3155, %3154
  %3157 = icmp eq i32 %3156, 2
  %3158 = zext i1 %3157 to i8
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3158, i8* %3159, align 1
  store %struct.Memory* %loadMem_49d277, %struct.Memory** %MEMORY
  %loadMem_49d27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3161 = getelementptr inbounds %struct.GPR, %struct.GPR* %3160, i32 0, i32 33
  %3162 = getelementptr inbounds %struct.Reg, %struct.Reg* %3161, i32 0, i32 0
  %PC.i548 = bitcast %union.anon* %3162 to i64*
  %3163 = load i64, i64* %PC.i548
  %3164 = add i64 %3163, 148
  %3165 = load i64, i64* %PC.i548
  %3166 = add i64 %3165, 6
  %3167 = load i64, i64* %PC.i548
  %3168 = add i64 %3167, 6
  store i64 %3168, i64* %PC.i548
  %3169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3170 = load i8, i8* %3169, align 1
  %3171 = icmp ne i8 %3170, 0
  %3172 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3173 = load i8, i8* %3172, align 1
  %3174 = icmp ne i8 %3173, 0
  %3175 = xor i1 %3171, %3174
  %3176 = xor i1 %3175, true
  %3177 = zext i1 %3176 to i8
  store i8 %3177, i8* %BRANCH_TAKEN, align 1
  %3178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3179 = select i1 %3175, i64 %3166, i64 %3164
  store i64 %3179, i64* %3178, align 8
  store %struct.Memory* %loadMem_49d27b, %struct.Memory** %MEMORY
  %loadBr_49d27b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d27b = icmp eq i8 %loadBr_49d27b, 1
  br i1 %cmpBr_49d27b, label %block_.L_49d30f, label %block_49d281

block_49d281:                                     ; preds = %block_.L_49d277
  %loadMem_49d281 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3181 = getelementptr inbounds %struct.GPR, %struct.GPR* %3180, i32 0, i32 33
  %3182 = getelementptr inbounds %struct.Reg, %struct.Reg* %3181, i32 0, i32 0
  %PC.i546 = bitcast %union.anon* %3182 to i64*
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 15
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %RBP.i547 = bitcast %union.anon* %3185 to i64*
  %3186 = load i64, i64* %RBP.i547
  %3187 = sub i64 %3186, 16
  %3188 = load i64, i64* %PC.i546
  %3189 = add i64 %3188, 7
  store i64 %3189, i64* %PC.i546
  %3190 = inttoptr i64 %3187 to i32*
  store i32 0, i32* %3190
  store %struct.Memory* %loadMem_49d281, %struct.Memory** %MEMORY
  br label %block_.L_49d288

block_.L_49d288:                                  ; preds = %block_49d292, %block_49d281
  %loadMem_49d288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3191 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3192 = getelementptr inbounds %struct.GPR, %struct.GPR* %3191, i32 0, i32 33
  %3193 = getelementptr inbounds %struct.Reg, %struct.Reg* %3192, i32 0, i32 0
  %PC.i544 = bitcast %union.anon* %3193 to i64*
  %3194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3195 = getelementptr inbounds %struct.GPR, %struct.GPR* %3194, i32 0, i32 15
  %3196 = getelementptr inbounds %struct.Reg, %struct.Reg* %3195, i32 0, i32 0
  %RBP.i545 = bitcast %union.anon* %3196 to i64*
  %3197 = load i64, i64* %RBP.i545
  %3198 = sub i64 %3197, 16
  %3199 = load i64, i64* %PC.i544
  %3200 = add i64 %3199, 4
  store i64 %3200, i64* %PC.i544
  %3201 = inttoptr i64 %3198 to i32*
  %3202 = load i32, i32* %3201
  %3203 = sub i32 %3202, 65
  %3204 = icmp ult i32 %3202, 65
  %3205 = zext i1 %3204 to i8
  %3206 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3205, i8* %3206, align 1
  %3207 = and i32 %3203, 255
  %3208 = call i32 @llvm.ctpop.i32(i32 %3207)
  %3209 = trunc i32 %3208 to i8
  %3210 = and i8 %3209, 1
  %3211 = xor i8 %3210, 1
  %3212 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3211, i8* %3212, align 1
  %3213 = xor i32 %3202, 65
  %3214 = xor i32 %3213, %3203
  %3215 = lshr i32 %3214, 4
  %3216 = trunc i32 %3215 to i8
  %3217 = and i8 %3216, 1
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3217, i8* %3218, align 1
  %3219 = icmp eq i32 %3203, 0
  %3220 = zext i1 %3219 to i8
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3220, i8* %3221, align 1
  %3222 = lshr i32 %3203, 31
  %3223 = trunc i32 %3222 to i8
  %3224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3223, i8* %3224, align 1
  %3225 = lshr i32 %3202, 31
  %3226 = xor i32 %3222, %3225
  %3227 = add i32 %3226, %3225
  %3228 = icmp eq i32 %3227, 2
  %3229 = zext i1 %3228 to i8
  %3230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3229, i8* %3230, align 1
  store %struct.Memory* %loadMem_49d288, %struct.Memory** %MEMORY
  %loadMem_49d28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i543 = bitcast %union.anon* %3233 to i64*
  %3234 = load i64, i64* %PC.i543
  %3235 = add i64 %3234, 112
  %3236 = load i64, i64* %PC.i543
  %3237 = add i64 %3236, 6
  %3238 = load i64, i64* %PC.i543
  %3239 = add i64 %3238, 6
  store i64 %3239, i64* %PC.i543
  %3240 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3241 = load i8, i8* %3240, align 1
  %3242 = icmp ne i8 %3241, 0
  %3243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3244 = load i8, i8* %3243, align 1
  %3245 = icmp ne i8 %3244, 0
  %3246 = xor i1 %3242, %3245
  %3247 = xor i1 %3246, true
  %3248 = zext i1 %3247 to i8
  store i8 %3248, i8* %BRANCH_TAKEN, align 1
  %3249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3250 = select i1 %3246, i64 %3237, i64 %3235
  store i64 %3250, i64* %3249, align 8
  store %struct.Memory* %loadMem_49d28c, %struct.Memory** %MEMORY
  %loadBr_49d28c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d28c = icmp eq i8 %loadBr_49d28c, 1
  br i1 %cmpBr_49d28c, label %block_.L_49d2fc, label %block_49d292

block_49d292:                                     ; preds = %block_.L_49d288
  %loadMem_49d292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3252 = getelementptr inbounds %struct.GPR, %struct.GPR* %3251, i32 0, i32 33
  %3253 = getelementptr inbounds %struct.Reg, %struct.Reg* %3252, i32 0, i32 0
  %PC.i541 = bitcast %union.anon* %3253 to i64*
  %3254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3255 = getelementptr inbounds %struct.GPR, %struct.GPR* %3254, i32 0, i32 1
  %3256 = getelementptr inbounds %struct.Reg, %struct.Reg* %3255, i32 0, i32 0
  %RAX.i542 = bitcast %union.anon* %3256 to i64*
  %3257 = load i64, i64* %PC.i541
  %3258 = add i64 %3257, 8
  store i64 %3258, i64* %PC.i541
  %3259 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %3259, i64* %RAX.i542, align 8
  store %struct.Memory* %loadMem_49d292, %struct.Memory** %MEMORY
  %loadMem_49d29a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3261 = getelementptr inbounds %struct.GPR, %struct.GPR* %3260, i32 0, i32 33
  %3262 = getelementptr inbounds %struct.Reg, %struct.Reg* %3261, i32 0, i32 0
  %PC.i539 = bitcast %union.anon* %3262 to i64*
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3264 = getelementptr inbounds %struct.GPR, %struct.GPR* %3263, i32 0, i32 1
  %3265 = getelementptr inbounds %struct.Reg, %struct.Reg* %3264, i32 0, i32 0
  %RAX.i540 = bitcast %union.anon* %3265 to i64*
  %3266 = load i64, i64* %RAX.i540
  %3267 = add i64 %3266, 14136
  %3268 = load i64, i64* %PC.i539
  %3269 = add i64 %3268, 7
  store i64 %3269, i64* %PC.i539
  %3270 = inttoptr i64 %3267 to i64*
  %3271 = load i64, i64* %3270
  store i64 %3271, i64* %RAX.i540, align 8
  store %struct.Memory* %loadMem_49d29a, %struct.Memory** %MEMORY
  %loadMem_49d2a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3273 = getelementptr inbounds %struct.GPR, %struct.GPR* %3272, i32 0, i32 33
  %3274 = getelementptr inbounds %struct.Reg, %struct.Reg* %3273, i32 0, i32 0
  %PC.i536 = bitcast %union.anon* %3274 to i64*
  %3275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3276 = getelementptr inbounds %struct.GPR, %struct.GPR* %3275, i32 0, i32 5
  %3277 = getelementptr inbounds %struct.Reg, %struct.Reg* %3276, i32 0, i32 0
  %RCX.i537 = bitcast %union.anon* %3277 to i64*
  %3278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3279 = getelementptr inbounds %struct.GPR, %struct.GPR* %3278, i32 0, i32 15
  %3280 = getelementptr inbounds %struct.Reg, %struct.Reg* %3279, i32 0, i32 0
  %RBP.i538 = bitcast %union.anon* %3280 to i64*
  %3281 = load i64, i64* %RBP.i538
  %3282 = sub i64 %3281, 4
  %3283 = load i64, i64* %PC.i536
  %3284 = add i64 %3283, 4
  store i64 %3284, i64* %PC.i536
  %3285 = inttoptr i64 %3282 to i32*
  %3286 = load i32, i32* %3285
  %3287 = sext i32 %3286 to i64
  store i64 %3287, i64* %RCX.i537, align 8
  store %struct.Memory* %loadMem_49d2a1, %struct.Memory** %MEMORY
  %loadMem_49d2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 33
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %PC.i533 = bitcast %union.anon* %3290 to i64*
  %3291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3292 = getelementptr inbounds %struct.GPR, %struct.GPR* %3291, i32 0, i32 1
  %3293 = getelementptr inbounds %struct.Reg, %struct.Reg* %3292, i32 0, i32 0
  %RAX.i534 = bitcast %union.anon* %3293 to i64*
  %3294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3295 = getelementptr inbounds %struct.GPR, %struct.GPR* %3294, i32 0, i32 5
  %3296 = getelementptr inbounds %struct.Reg, %struct.Reg* %3295, i32 0, i32 0
  %RCX.i535 = bitcast %union.anon* %3296 to i64*
  %3297 = load i64, i64* %RAX.i534
  %3298 = load i64, i64* %RCX.i535
  %3299 = mul i64 %3298, 8
  %3300 = add i64 %3299, %3297
  %3301 = load i64, i64* %PC.i533
  %3302 = add i64 %3301, 4
  store i64 %3302, i64* %PC.i533
  %3303 = inttoptr i64 %3300 to i64*
  %3304 = load i64, i64* %3303
  store i64 %3304, i64* %RAX.i534, align 8
  store %struct.Memory* %loadMem_49d2a5, %struct.Memory** %MEMORY
  %loadMem_49d2a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i530 = bitcast %union.anon* %3307 to i64*
  %3308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3309 = getelementptr inbounds %struct.GPR, %struct.GPR* %3308, i32 0, i32 5
  %3310 = getelementptr inbounds %struct.Reg, %struct.Reg* %3309, i32 0, i32 0
  %RCX.i531 = bitcast %union.anon* %3310 to i64*
  %3311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3312 = getelementptr inbounds %struct.GPR, %struct.GPR* %3311, i32 0, i32 15
  %3313 = getelementptr inbounds %struct.Reg, %struct.Reg* %3312, i32 0, i32 0
  %RBP.i532 = bitcast %union.anon* %3313 to i64*
  %3314 = load i64, i64* %RBP.i532
  %3315 = sub i64 %3314, 8
  %3316 = load i64, i64* %PC.i530
  %3317 = add i64 %3316, 4
  store i64 %3317, i64* %PC.i530
  %3318 = inttoptr i64 %3315 to i32*
  %3319 = load i32, i32* %3318
  %3320 = sext i32 %3319 to i64
  store i64 %3320, i64* %RCX.i531, align 8
  store %struct.Memory* %loadMem_49d2a9, %struct.Memory** %MEMORY
  %loadMem_49d2ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i527 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 1
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RAX.i528 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 5
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RCX.i529 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RAX.i528
  %3331 = load i64, i64* %RCX.i529
  %3332 = mul i64 %3331, 8
  %3333 = add i64 %3332, %3330
  %3334 = load i64, i64* %PC.i527
  %3335 = add i64 %3334, 4
  store i64 %3335, i64* %PC.i527
  %3336 = inttoptr i64 %3333 to i64*
  %3337 = load i64, i64* %3336
  store i64 %3337, i64* %RAX.i528, align 8
  store %struct.Memory* %loadMem_49d2ad, %struct.Memory** %MEMORY
  %loadMem_49d2b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3339 = getelementptr inbounds %struct.GPR, %struct.GPR* %3338, i32 0, i32 33
  %3340 = getelementptr inbounds %struct.Reg, %struct.Reg* %3339, i32 0, i32 0
  %PC.i524 = bitcast %union.anon* %3340 to i64*
  %3341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3342 = getelementptr inbounds %struct.GPR, %struct.GPR* %3341, i32 0, i32 5
  %3343 = getelementptr inbounds %struct.Reg, %struct.Reg* %3342, i32 0, i32 0
  %RCX.i525 = bitcast %union.anon* %3343 to i64*
  %3344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3345 = getelementptr inbounds %struct.GPR, %struct.GPR* %3344, i32 0, i32 15
  %3346 = getelementptr inbounds %struct.Reg, %struct.Reg* %3345, i32 0, i32 0
  %RBP.i526 = bitcast %union.anon* %3346 to i64*
  %3347 = load i64, i64* %RBP.i526
  %3348 = sub i64 %3347, 12
  %3349 = load i64, i64* %PC.i524
  %3350 = add i64 %3349, 4
  store i64 %3350, i64* %PC.i524
  %3351 = inttoptr i64 %3348 to i32*
  %3352 = load i32, i32* %3351
  %3353 = sext i32 %3352 to i64
  store i64 %3353, i64* %RCX.i525, align 8
  store %struct.Memory* %loadMem_49d2b1, %struct.Memory** %MEMORY
  %loadMem_49d2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3355 = getelementptr inbounds %struct.GPR, %struct.GPR* %3354, i32 0, i32 33
  %3356 = getelementptr inbounds %struct.Reg, %struct.Reg* %3355, i32 0, i32 0
  %PC.i521 = bitcast %union.anon* %3356 to i64*
  %3357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3358 = getelementptr inbounds %struct.GPR, %struct.GPR* %3357, i32 0, i32 1
  %3359 = getelementptr inbounds %struct.Reg, %struct.Reg* %3358, i32 0, i32 0
  %RAX.i522 = bitcast %union.anon* %3359 to i64*
  %3360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3361 = getelementptr inbounds %struct.GPR, %struct.GPR* %3360, i32 0, i32 5
  %3362 = getelementptr inbounds %struct.Reg, %struct.Reg* %3361, i32 0, i32 0
  %RCX.i523 = bitcast %union.anon* %3362 to i64*
  %3363 = load i64, i64* %RAX.i522
  %3364 = load i64, i64* %RCX.i523
  %3365 = mul i64 %3364, 8
  %3366 = add i64 %3365, %3363
  %3367 = load i64, i64* %PC.i521
  %3368 = add i64 %3367, 4
  store i64 %3368, i64* %PC.i521
  %3369 = inttoptr i64 %3366 to i64*
  %3370 = load i64, i64* %3369
  store i64 %3370, i64* %RAX.i522, align 8
  store %struct.Memory* %loadMem_49d2b5, %struct.Memory** %MEMORY
  %loadMem_49d2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3372 = getelementptr inbounds %struct.GPR, %struct.GPR* %3371, i32 0, i32 33
  %3373 = getelementptr inbounds %struct.Reg, %struct.Reg* %3372, i32 0, i32 0
  %PC.i518 = bitcast %union.anon* %3373 to i64*
  %3374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3375 = getelementptr inbounds %struct.GPR, %struct.GPR* %3374, i32 0, i32 5
  %3376 = getelementptr inbounds %struct.Reg, %struct.Reg* %3375, i32 0, i32 0
  %RCX.i519 = bitcast %union.anon* %3376 to i64*
  %3377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3378 = getelementptr inbounds %struct.GPR, %struct.GPR* %3377, i32 0, i32 15
  %3379 = getelementptr inbounds %struct.Reg, %struct.Reg* %3378, i32 0, i32 0
  %RBP.i520 = bitcast %union.anon* %3379 to i64*
  %3380 = load i64, i64* %RBP.i520
  %3381 = sub i64 %3380, 16
  %3382 = load i64, i64* %PC.i518
  %3383 = add i64 %3382, 4
  store i64 %3383, i64* %PC.i518
  %3384 = inttoptr i64 %3381 to i32*
  %3385 = load i32, i32* %3384
  %3386 = sext i32 %3385 to i64
  store i64 %3386, i64* %RCX.i519, align 8
  store %struct.Memory* %loadMem_49d2b9, %struct.Memory** %MEMORY
  %loadMem_49d2bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %3387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3388 = getelementptr inbounds %struct.GPR, %struct.GPR* %3387, i32 0, i32 33
  %3389 = getelementptr inbounds %struct.Reg, %struct.Reg* %3388, i32 0, i32 0
  %PC.i514 = bitcast %union.anon* %3389 to i64*
  %3390 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3391 = getelementptr inbounds %struct.GPR, %struct.GPR* %3390, i32 0, i32 1
  %3392 = getelementptr inbounds %struct.Reg, %struct.Reg* %3391, i32 0, i32 0
  %RAX.i515 = bitcast %union.anon* %3392 to i64*
  %3393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3394 = getelementptr inbounds %struct.GPR, %struct.GPR* %3393, i32 0, i32 5
  %3395 = getelementptr inbounds %struct.Reg, %struct.Reg* %3394, i32 0, i32 0
  %RCX.i516 = bitcast %union.anon* %3395 to i64*
  %3396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3397 = getelementptr inbounds %struct.GPR, %struct.GPR* %3396, i32 0, i32 7
  %3398 = getelementptr inbounds %struct.Reg, %struct.Reg* %3397, i32 0, i32 0
  %RDX.i517 = bitcast %union.anon* %3398 to i64*
  %3399 = load i64, i64* %RAX.i515
  %3400 = load i64, i64* %RCX.i516
  %3401 = mul i64 %3400, 4
  %3402 = add i64 %3401, %3399
  %3403 = load i64, i64* %PC.i514
  %3404 = add i64 %3403, 3
  store i64 %3404, i64* %PC.i514
  %3405 = inttoptr i64 %3402 to i32*
  %3406 = load i32, i32* %3405
  %3407 = zext i32 %3406 to i64
  store i64 %3407, i64* %RDX.i517, align 8
  store %struct.Memory* %loadMem_49d2bd, %struct.Memory** %MEMORY
  %loadMem_49d2c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3409 = getelementptr inbounds %struct.GPR, %struct.GPR* %3408, i32 0, i32 33
  %3410 = getelementptr inbounds %struct.Reg, %struct.Reg* %3409, i32 0, i32 0
  %PC.i512 = bitcast %union.anon* %3410 to i64*
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 1
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %RAX.i513 = bitcast %union.anon* %3413 to i64*
  %3414 = load i64, i64* %PC.i512
  %3415 = add i64 %3414, 8
  store i64 %3415, i64* %PC.i512
  %3416 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %3416, i64* %RAX.i513, align 8
  store %struct.Memory* %loadMem_49d2c0, %struct.Memory** %MEMORY
  %loadMem_49d2c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 33
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %PC.i510 = bitcast %union.anon* %3419 to i64*
  %3420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3421 = getelementptr inbounds %struct.GPR, %struct.GPR* %3420, i32 0, i32 1
  %3422 = getelementptr inbounds %struct.Reg, %struct.Reg* %3421, i32 0, i32 0
  %RAX.i511 = bitcast %union.anon* %3422 to i64*
  %3423 = load i64, i64* %RAX.i511
  %3424 = add i64 %3423, 3080
  %3425 = load i64, i64* %PC.i510
  %3426 = add i64 %3425, 7
  store i64 %3426, i64* %PC.i510
  %3427 = inttoptr i64 %3424 to i64*
  %3428 = load i64, i64* %3427
  store i64 %3428, i64* %RAX.i511, align 8
  store %struct.Memory* %loadMem_49d2c8, %struct.Memory** %MEMORY
  %loadMem_49d2cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 33
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %PC.i507 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 5
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RCX.i508 = bitcast %union.anon* %3434 to i64*
  %3435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3436 = getelementptr inbounds %struct.GPR, %struct.GPR* %3435, i32 0, i32 15
  %3437 = getelementptr inbounds %struct.Reg, %struct.Reg* %3436, i32 0, i32 0
  %RBP.i509 = bitcast %union.anon* %3437 to i64*
  %3438 = load i64, i64* %RBP.i509
  %3439 = sub i64 %3438, 4
  %3440 = load i64, i64* %PC.i507
  %3441 = add i64 %3440, 4
  store i64 %3441, i64* %PC.i507
  %3442 = inttoptr i64 %3439 to i32*
  %3443 = load i32, i32* %3442
  %3444 = sext i32 %3443 to i64
  store i64 %3444, i64* %RCX.i508, align 8
  store %struct.Memory* %loadMem_49d2cf, %struct.Memory** %MEMORY
  %loadMem_49d2d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3446 = getelementptr inbounds %struct.GPR, %struct.GPR* %3445, i32 0, i32 33
  %3447 = getelementptr inbounds %struct.Reg, %struct.Reg* %3446, i32 0, i32 0
  %PC.i504 = bitcast %union.anon* %3447 to i64*
  %3448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3449 = getelementptr inbounds %struct.GPR, %struct.GPR* %3448, i32 0, i32 1
  %3450 = getelementptr inbounds %struct.Reg, %struct.Reg* %3449, i32 0, i32 0
  %RAX.i505 = bitcast %union.anon* %3450 to i64*
  %3451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3452 = getelementptr inbounds %struct.GPR, %struct.GPR* %3451, i32 0, i32 5
  %3453 = getelementptr inbounds %struct.Reg, %struct.Reg* %3452, i32 0, i32 0
  %RCX.i506 = bitcast %union.anon* %3453 to i64*
  %3454 = load i64, i64* %RAX.i505
  %3455 = load i64, i64* %RCX.i506
  %3456 = mul i64 %3455, 8
  %3457 = add i64 %3456, %3454
  %3458 = load i64, i64* %PC.i504
  %3459 = add i64 %3458, 4
  store i64 %3459, i64* %PC.i504
  %3460 = inttoptr i64 %3457 to i64*
  %3461 = load i64, i64* %3460
  store i64 %3461, i64* %RAX.i505, align 8
  store %struct.Memory* %loadMem_49d2d3, %struct.Memory** %MEMORY
  %loadMem_49d2d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 33
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %PC.i501 = bitcast %union.anon* %3464 to i64*
  %3465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3466 = getelementptr inbounds %struct.GPR, %struct.GPR* %3465, i32 0, i32 5
  %3467 = getelementptr inbounds %struct.Reg, %struct.Reg* %3466, i32 0, i32 0
  %RCX.i502 = bitcast %union.anon* %3467 to i64*
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3469 = getelementptr inbounds %struct.GPR, %struct.GPR* %3468, i32 0, i32 15
  %3470 = getelementptr inbounds %struct.Reg, %struct.Reg* %3469, i32 0, i32 0
  %RBP.i503 = bitcast %union.anon* %3470 to i64*
  %3471 = load i64, i64* %RBP.i503
  %3472 = sub i64 %3471, 8
  %3473 = load i64, i64* %PC.i501
  %3474 = add i64 %3473, 4
  store i64 %3474, i64* %PC.i501
  %3475 = inttoptr i64 %3472 to i32*
  %3476 = load i32, i32* %3475
  %3477 = sext i32 %3476 to i64
  store i64 %3477, i64* %RCX.i502, align 8
  store %struct.Memory* %loadMem_49d2d7, %struct.Memory** %MEMORY
  %loadMem_49d2db = load %struct.Memory*, %struct.Memory** %MEMORY
  %3478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3479 = getelementptr inbounds %struct.GPR, %struct.GPR* %3478, i32 0, i32 33
  %3480 = getelementptr inbounds %struct.Reg, %struct.Reg* %3479, i32 0, i32 0
  %PC.i498 = bitcast %union.anon* %3480 to i64*
  %3481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3482 = getelementptr inbounds %struct.GPR, %struct.GPR* %3481, i32 0, i32 1
  %3483 = getelementptr inbounds %struct.Reg, %struct.Reg* %3482, i32 0, i32 0
  %RAX.i499 = bitcast %union.anon* %3483 to i64*
  %3484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3485 = getelementptr inbounds %struct.GPR, %struct.GPR* %3484, i32 0, i32 5
  %3486 = getelementptr inbounds %struct.Reg, %struct.Reg* %3485, i32 0, i32 0
  %RCX.i500 = bitcast %union.anon* %3486 to i64*
  %3487 = load i64, i64* %RAX.i499
  %3488 = load i64, i64* %RCX.i500
  %3489 = mul i64 %3488, 8
  %3490 = add i64 %3489, %3487
  %3491 = load i64, i64* %PC.i498
  %3492 = add i64 %3491, 4
  store i64 %3492, i64* %PC.i498
  %3493 = inttoptr i64 %3490 to i64*
  %3494 = load i64, i64* %3493
  store i64 %3494, i64* %RAX.i499, align 8
  store %struct.Memory* %loadMem_49d2db, %struct.Memory** %MEMORY
  %loadMem_49d2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %3495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3496 = getelementptr inbounds %struct.GPR, %struct.GPR* %3495, i32 0, i32 33
  %3497 = getelementptr inbounds %struct.Reg, %struct.Reg* %3496, i32 0, i32 0
  %PC.i495 = bitcast %union.anon* %3497 to i64*
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3499 = getelementptr inbounds %struct.GPR, %struct.GPR* %3498, i32 0, i32 5
  %3500 = getelementptr inbounds %struct.Reg, %struct.Reg* %3499, i32 0, i32 0
  %RCX.i496 = bitcast %union.anon* %3500 to i64*
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 15
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %RBP.i497 = bitcast %union.anon* %3503 to i64*
  %3504 = load i64, i64* %RBP.i497
  %3505 = sub i64 %3504, 12
  %3506 = load i64, i64* %PC.i495
  %3507 = add i64 %3506, 4
  store i64 %3507, i64* %PC.i495
  %3508 = inttoptr i64 %3505 to i32*
  %3509 = load i32, i32* %3508
  %3510 = sext i32 %3509 to i64
  store i64 %3510, i64* %RCX.i496, align 8
  store %struct.Memory* %loadMem_49d2df, %struct.Memory** %MEMORY
  %loadMem_49d2e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3512 = getelementptr inbounds %struct.GPR, %struct.GPR* %3511, i32 0, i32 33
  %3513 = getelementptr inbounds %struct.Reg, %struct.Reg* %3512, i32 0, i32 0
  %PC.i492 = bitcast %union.anon* %3513 to i64*
  %3514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3515 = getelementptr inbounds %struct.GPR, %struct.GPR* %3514, i32 0, i32 1
  %3516 = getelementptr inbounds %struct.Reg, %struct.Reg* %3515, i32 0, i32 0
  %RAX.i493 = bitcast %union.anon* %3516 to i64*
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 5
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %RCX.i494 = bitcast %union.anon* %3519 to i64*
  %3520 = load i64, i64* %RAX.i493
  %3521 = load i64, i64* %RCX.i494
  %3522 = mul i64 %3521, 8
  %3523 = add i64 %3522, %3520
  %3524 = load i64, i64* %PC.i492
  %3525 = add i64 %3524, 4
  store i64 %3525, i64* %PC.i492
  %3526 = inttoptr i64 %3523 to i64*
  %3527 = load i64, i64* %3526
  store i64 %3527, i64* %RAX.i493, align 8
  store %struct.Memory* %loadMem_49d2e3, %struct.Memory** %MEMORY
  %loadMem_49d2e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3529 = getelementptr inbounds %struct.GPR, %struct.GPR* %3528, i32 0, i32 33
  %3530 = getelementptr inbounds %struct.Reg, %struct.Reg* %3529, i32 0, i32 0
  %PC.i489 = bitcast %union.anon* %3530 to i64*
  %3531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3532 = getelementptr inbounds %struct.GPR, %struct.GPR* %3531, i32 0, i32 5
  %3533 = getelementptr inbounds %struct.Reg, %struct.Reg* %3532, i32 0, i32 0
  %RCX.i490 = bitcast %union.anon* %3533 to i64*
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3535 = getelementptr inbounds %struct.GPR, %struct.GPR* %3534, i32 0, i32 15
  %3536 = getelementptr inbounds %struct.Reg, %struct.Reg* %3535, i32 0, i32 0
  %RBP.i491 = bitcast %union.anon* %3536 to i64*
  %3537 = load i64, i64* %RBP.i491
  %3538 = sub i64 %3537, 16
  %3539 = load i64, i64* %PC.i489
  %3540 = add i64 %3539, 4
  store i64 %3540, i64* %PC.i489
  %3541 = inttoptr i64 %3538 to i32*
  %3542 = load i32, i32* %3541
  %3543 = sext i32 %3542 to i64
  store i64 %3543, i64* %RCX.i490, align 8
  store %struct.Memory* %loadMem_49d2e7, %struct.Memory** %MEMORY
  %loadMem_49d2eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3545 = getelementptr inbounds %struct.GPR, %struct.GPR* %3544, i32 0, i32 33
  %3546 = getelementptr inbounds %struct.Reg, %struct.Reg* %3545, i32 0, i32 0
  %PC.i485 = bitcast %union.anon* %3546 to i64*
  %3547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3548 = getelementptr inbounds %struct.GPR, %struct.GPR* %3547, i32 0, i32 7
  %3549 = getelementptr inbounds %struct.Reg, %struct.Reg* %3548, i32 0, i32 0
  %EDX.i486 = bitcast %union.anon* %3549 to i32*
  %3550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3551 = getelementptr inbounds %struct.GPR, %struct.GPR* %3550, i32 0, i32 1
  %3552 = getelementptr inbounds %struct.Reg, %struct.Reg* %3551, i32 0, i32 0
  %RAX.i487 = bitcast %union.anon* %3552 to i64*
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 5
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %RCX.i488 = bitcast %union.anon* %3555 to i64*
  %3556 = load i64, i64* %RAX.i487
  %3557 = load i64, i64* %RCX.i488
  %3558 = mul i64 %3557, 4
  %3559 = add i64 %3558, %3556
  %3560 = load i32, i32* %EDX.i486
  %3561 = zext i32 %3560 to i64
  %3562 = load i64, i64* %PC.i485
  %3563 = add i64 %3562, 3
  store i64 %3563, i64* %PC.i485
  %3564 = inttoptr i64 %3559 to i32*
  store i32 %3560, i32* %3564
  store %struct.Memory* %loadMem_49d2eb, %struct.Memory** %MEMORY
  %loadMem_49d2ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 33
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %PC.i482 = bitcast %union.anon* %3567 to i64*
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 1
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %RAX.i483 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i484 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i484
  %3575 = sub i64 %3574, 16
  %3576 = load i64, i64* %PC.i482
  %3577 = add i64 %3576, 3
  store i64 %3577, i64* %PC.i482
  %3578 = inttoptr i64 %3575 to i32*
  %3579 = load i32, i32* %3578
  %3580 = zext i32 %3579 to i64
  store i64 %3580, i64* %RAX.i483, align 8
  store %struct.Memory* %loadMem_49d2ee, %struct.Memory** %MEMORY
  %loadMem_49d2f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3582 = getelementptr inbounds %struct.GPR, %struct.GPR* %3581, i32 0, i32 33
  %3583 = getelementptr inbounds %struct.Reg, %struct.Reg* %3582, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %3583 to i64*
  %3584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3585 = getelementptr inbounds %struct.GPR, %struct.GPR* %3584, i32 0, i32 1
  %3586 = getelementptr inbounds %struct.Reg, %struct.Reg* %3585, i32 0, i32 0
  %RAX.i481 = bitcast %union.anon* %3586 to i64*
  %3587 = load i64, i64* %RAX.i481
  %3588 = load i64, i64* %PC.i480
  %3589 = add i64 %3588, 3
  store i64 %3589, i64* %PC.i480
  %3590 = trunc i64 %3587 to i32
  %3591 = add i32 1, %3590
  %3592 = zext i32 %3591 to i64
  store i64 %3592, i64* %RAX.i481, align 8
  %3593 = icmp ult i32 %3591, %3590
  %3594 = icmp ult i32 %3591, 1
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3596, i8* %3597, align 1
  %3598 = and i32 %3591, 255
  %3599 = call i32 @llvm.ctpop.i32(i32 %3598)
  %3600 = trunc i32 %3599 to i8
  %3601 = and i8 %3600, 1
  %3602 = xor i8 %3601, 1
  %3603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3602, i8* %3603, align 1
  %3604 = xor i64 1, %3587
  %3605 = trunc i64 %3604 to i32
  %3606 = xor i32 %3605, %3591
  %3607 = lshr i32 %3606, 4
  %3608 = trunc i32 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3609, i8* %3610, align 1
  %3611 = icmp eq i32 %3591, 0
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3612, i8* %3613, align 1
  %3614 = lshr i32 %3591, 31
  %3615 = trunc i32 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i32 %3590, 31
  %3618 = xor i32 %3614, %3617
  %3619 = add i32 %3618, %3614
  %3620 = icmp eq i32 %3619, 2
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3621, i8* %3622, align 1
  store %struct.Memory* %loadMem_49d2f1, %struct.Memory** %MEMORY
  %loadMem_49d2f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 1
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %EAX.i478 = bitcast %union.anon* %3628 to i32*
  %3629 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3630 = getelementptr inbounds %struct.GPR, %struct.GPR* %3629, i32 0, i32 15
  %3631 = getelementptr inbounds %struct.Reg, %struct.Reg* %3630, i32 0, i32 0
  %RBP.i479 = bitcast %union.anon* %3631 to i64*
  %3632 = load i64, i64* %RBP.i479
  %3633 = sub i64 %3632, 16
  %3634 = load i32, i32* %EAX.i478
  %3635 = zext i32 %3634 to i64
  %3636 = load i64, i64* %PC.i477
  %3637 = add i64 %3636, 3
  store i64 %3637, i64* %PC.i477
  %3638 = inttoptr i64 %3633 to i32*
  store i32 %3634, i32* %3638
  store %struct.Memory* %loadMem_49d2f4, %struct.Memory** %MEMORY
  %loadMem_49d2f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3640 = getelementptr inbounds %struct.GPR, %struct.GPR* %3639, i32 0, i32 33
  %3641 = getelementptr inbounds %struct.Reg, %struct.Reg* %3640, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %3641 to i64*
  %3642 = load i64, i64* %PC.i476
  %3643 = add i64 %3642, -111
  %3644 = load i64, i64* %PC.i476
  %3645 = add i64 %3644, 5
  store i64 %3645, i64* %PC.i476
  %3646 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3643, i64* %3646, align 8
  store %struct.Memory* %loadMem_49d2f7, %struct.Memory** %MEMORY
  br label %block_.L_49d288

block_.L_49d2fc:                                  ; preds = %block_.L_49d288
  %loadMem_49d2fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3647 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3648 = getelementptr inbounds %struct.GPR, %struct.GPR* %3647, i32 0, i32 33
  %3649 = getelementptr inbounds %struct.Reg, %struct.Reg* %3648, i32 0, i32 0
  %PC.i475 = bitcast %union.anon* %3649 to i64*
  %3650 = load i64, i64* %PC.i475
  %3651 = add i64 %3650, 5
  %3652 = load i64, i64* %PC.i475
  %3653 = add i64 %3652, 5
  store i64 %3653, i64* %PC.i475
  %3654 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3651, i64* %3654, align 8
  store %struct.Memory* %loadMem_49d2fc, %struct.Memory** %MEMORY
  br label %block_.L_49d301

block_.L_49d301:                                  ; preds = %block_.L_49d2fc
  %loadMem_49d301 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 33
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 1
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RAX.i473 = bitcast %union.anon* %3660 to i64*
  %3661 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3662 = getelementptr inbounds %struct.GPR, %struct.GPR* %3661, i32 0, i32 15
  %3663 = getelementptr inbounds %struct.Reg, %struct.Reg* %3662, i32 0, i32 0
  %RBP.i474 = bitcast %union.anon* %3663 to i64*
  %3664 = load i64, i64* %RBP.i474
  %3665 = sub i64 %3664, 12
  %3666 = load i64, i64* %PC.i472
  %3667 = add i64 %3666, 3
  store i64 %3667, i64* %PC.i472
  %3668 = inttoptr i64 %3665 to i32*
  %3669 = load i32, i32* %3668
  %3670 = zext i32 %3669 to i64
  store i64 %3670, i64* %RAX.i473, align 8
  store %struct.Memory* %loadMem_49d301, %struct.Memory** %MEMORY
  %loadMem_49d304 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3672 = getelementptr inbounds %struct.GPR, %struct.GPR* %3671, i32 0, i32 33
  %3673 = getelementptr inbounds %struct.Reg, %struct.Reg* %3672, i32 0, i32 0
  %PC.i470 = bitcast %union.anon* %3673 to i64*
  %3674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3675 = getelementptr inbounds %struct.GPR, %struct.GPR* %3674, i32 0, i32 1
  %3676 = getelementptr inbounds %struct.Reg, %struct.Reg* %3675, i32 0, i32 0
  %RAX.i471 = bitcast %union.anon* %3676 to i64*
  %3677 = load i64, i64* %RAX.i471
  %3678 = load i64, i64* %PC.i470
  %3679 = add i64 %3678, 3
  store i64 %3679, i64* %PC.i470
  %3680 = trunc i64 %3677 to i32
  %3681 = add i32 1, %3680
  %3682 = zext i32 %3681 to i64
  store i64 %3682, i64* %RAX.i471, align 8
  %3683 = icmp ult i32 %3681, %3680
  %3684 = icmp ult i32 %3681, 1
  %3685 = or i1 %3683, %3684
  %3686 = zext i1 %3685 to i8
  %3687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3686, i8* %3687, align 1
  %3688 = and i32 %3681, 255
  %3689 = call i32 @llvm.ctpop.i32(i32 %3688)
  %3690 = trunc i32 %3689 to i8
  %3691 = and i8 %3690, 1
  %3692 = xor i8 %3691, 1
  %3693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3692, i8* %3693, align 1
  %3694 = xor i64 1, %3677
  %3695 = trunc i64 %3694 to i32
  %3696 = xor i32 %3695, %3681
  %3697 = lshr i32 %3696, 4
  %3698 = trunc i32 %3697 to i8
  %3699 = and i8 %3698, 1
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3699, i8* %3700, align 1
  %3701 = icmp eq i32 %3681, 0
  %3702 = zext i1 %3701 to i8
  %3703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3702, i8* %3703, align 1
  %3704 = lshr i32 %3681, 31
  %3705 = trunc i32 %3704 to i8
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3705, i8* %3706, align 1
  %3707 = lshr i32 %3680, 31
  %3708 = xor i32 %3704, %3707
  %3709 = add i32 %3708, %3704
  %3710 = icmp eq i32 %3709, 2
  %3711 = zext i1 %3710 to i8
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3711, i8* %3712, align 1
  store %struct.Memory* %loadMem_49d304, %struct.Memory** %MEMORY
  %loadMem_49d307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3714 = getelementptr inbounds %struct.GPR, %struct.GPR* %3713, i32 0, i32 33
  %3715 = getelementptr inbounds %struct.Reg, %struct.Reg* %3714, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %3715 to i64*
  %3716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3717 = getelementptr inbounds %struct.GPR, %struct.GPR* %3716, i32 0, i32 1
  %3718 = getelementptr inbounds %struct.Reg, %struct.Reg* %3717, i32 0, i32 0
  %EAX.i468 = bitcast %union.anon* %3718 to i32*
  %3719 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3720 = getelementptr inbounds %struct.GPR, %struct.GPR* %3719, i32 0, i32 15
  %3721 = getelementptr inbounds %struct.Reg, %struct.Reg* %3720, i32 0, i32 0
  %RBP.i469 = bitcast %union.anon* %3721 to i64*
  %3722 = load i64, i64* %RBP.i469
  %3723 = sub i64 %3722, 12
  %3724 = load i32, i32* %EAX.i468
  %3725 = zext i32 %3724 to i64
  %3726 = load i64, i64* %PC.i467
  %3727 = add i64 %3726, 3
  store i64 %3727, i64* %PC.i467
  %3728 = inttoptr i64 %3723 to i32*
  store i32 %3724, i32* %3728
  store %struct.Memory* %loadMem_49d307, %struct.Memory** %MEMORY
  %loadMem_49d30a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3730 = getelementptr inbounds %struct.GPR, %struct.GPR* %3729, i32 0, i32 33
  %3731 = getelementptr inbounds %struct.Reg, %struct.Reg* %3730, i32 0, i32 0
  %PC.i466 = bitcast %union.anon* %3731 to i64*
  %3732 = load i64, i64* %PC.i466
  %3733 = add i64 %3732, -147
  %3734 = load i64, i64* %PC.i466
  %3735 = add i64 %3734, 5
  store i64 %3735, i64* %PC.i466
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3733, i64* %3736, align 8
  store %struct.Memory* %loadMem_49d30a, %struct.Memory** %MEMORY
  br label %block_.L_49d277

block_.L_49d30f:                                  ; preds = %block_.L_49d277
  %loadMem_49d30f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3738 = getelementptr inbounds %struct.GPR, %struct.GPR* %3737, i32 0, i32 33
  %3739 = getelementptr inbounds %struct.Reg, %struct.Reg* %3738, i32 0, i32 0
  %PC.i465 = bitcast %union.anon* %3739 to i64*
  %3740 = load i64, i64* %PC.i465
  %3741 = add i64 %3740, 5
  %3742 = load i64, i64* %PC.i465
  %3743 = add i64 %3742, 5
  store i64 %3743, i64* %PC.i465
  %3744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3741, i64* %3744, align 8
  store %struct.Memory* %loadMem_49d30f, %struct.Memory** %MEMORY
  br label %block_.L_49d314

block_.L_49d314:                                  ; preds = %block_.L_49d30f
  %loadMem_49d314 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3746 = getelementptr inbounds %struct.GPR, %struct.GPR* %3745, i32 0, i32 33
  %3747 = getelementptr inbounds %struct.Reg, %struct.Reg* %3746, i32 0, i32 0
  %PC.i462 = bitcast %union.anon* %3747 to i64*
  %3748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3749 = getelementptr inbounds %struct.GPR, %struct.GPR* %3748, i32 0, i32 1
  %3750 = getelementptr inbounds %struct.Reg, %struct.Reg* %3749, i32 0, i32 0
  %RAX.i463 = bitcast %union.anon* %3750 to i64*
  %3751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3752 = getelementptr inbounds %struct.GPR, %struct.GPR* %3751, i32 0, i32 15
  %3753 = getelementptr inbounds %struct.Reg, %struct.Reg* %3752, i32 0, i32 0
  %RBP.i464 = bitcast %union.anon* %3753 to i64*
  %3754 = load i64, i64* %RBP.i464
  %3755 = sub i64 %3754, 8
  %3756 = load i64, i64* %PC.i462
  %3757 = add i64 %3756, 3
  store i64 %3757, i64* %PC.i462
  %3758 = inttoptr i64 %3755 to i32*
  %3759 = load i32, i32* %3758
  %3760 = zext i32 %3759 to i64
  store i64 %3760, i64* %RAX.i463, align 8
  store %struct.Memory* %loadMem_49d314, %struct.Memory** %MEMORY
  %loadMem_49d317 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3762 = getelementptr inbounds %struct.GPR, %struct.GPR* %3761, i32 0, i32 33
  %3763 = getelementptr inbounds %struct.Reg, %struct.Reg* %3762, i32 0, i32 0
  %PC.i460 = bitcast %union.anon* %3763 to i64*
  %3764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3765 = getelementptr inbounds %struct.GPR, %struct.GPR* %3764, i32 0, i32 1
  %3766 = getelementptr inbounds %struct.Reg, %struct.Reg* %3765, i32 0, i32 0
  %RAX.i461 = bitcast %union.anon* %3766 to i64*
  %3767 = load i64, i64* %RAX.i461
  %3768 = load i64, i64* %PC.i460
  %3769 = add i64 %3768, 3
  store i64 %3769, i64* %PC.i460
  %3770 = trunc i64 %3767 to i32
  %3771 = add i32 1, %3770
  %3772 = zext i32 %3771 to i64
  store i64 %3772, i64* %RAX.i461, align 8
  %3773 = icmp ult i32 %3771, %3770
  %3774 = icmp ult i32 %3771, 1
  %3775 = or i1 %3773, %3774
  %3776 = zext i1 %3775 to i8
  %3777 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3776, i8* %3777, align 1
  %3778 = and i32 %3771, 255
  %3779 = call i32 @llvm.ctpop.i32(i32 %3778)
  %3780 = trunc i32 %3779 to i8
  %3781 = and i8 %3780, 1
  %3782 = xor i8 %3781, 1
  %3783 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3782, i8* %3783, align 1
  %3784 = xor i64 1, %3767
  %3785 = trunc i64 %3784 to i32
  %3786 = xor i32 %3785, %3771
  %3787 = lshr i32 %3786, 4
  %3788 = trunc i32 %3787 to i8
  %3789 = and i8 %3788, 1
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3789, i8* %3790, align 1
  %3791 = icmp eq i32 %3771, 0
  %3792 = zext i1 %3791 to i8
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3792, i8* %3793, align 1
  %3794 = lshr i32 %3771, 31
  %3795 = trunc i32 %3794 to i8
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3795, i8* %3796, align 1
  %3797 = lshr i32 %3770, 31
  %3798 = xor i32 %3794, %3797
  %3799 = add i32 %3798, %3794
  %3800 = icmp eq i32 %3799, 2
  %3801 = zext i1 %3800 to i8
  %3802 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3801, i8* %3802, align 1
  store %struct.Memory* %loadMem_49d317, %struct.Memory** %MEMORY
  %loadMem_49d31a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3803 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3804 = getelementptr inbounds %struct.GPR, %struct.GPR* %3803, i32 0, i32 33
  %3805 = getelementptr inbounds %struct.Reg, %struct.Reg* %3804, i32 0, i32 0
  %PC.i457 = bitcast %union.anon* %3805 to i64*
  %3806 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3807 = getelementptr inbounds %struct.GPR, %struct.GPR* %3806, i32 0, i32 1
  %3808 = getelementptr inbounds %struct.Reg, %struct.Reg* %3807, i32 0, i32 0
  %EAX.i458 = bitcast %union.anon* %3808 to i32*
  %3809 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3810 = getelementptr inbounds %struct.GPR, %struct.GPR* %3809, i32 0, i32 15
  %3811 = getelementptr inbounds %struct.Reg, %struct.Reg* %3810, i32 0, i32 0
  %RBP.i459 = bitcast %union.anon* %3811 to i64*
  %3812 = load i64, i64* %RBP.i459
  %3813 = sub i64 %3812, 8
  %3814 = load i32, i32* %EAX.i458
  %3815 = zext i32 %3814 to i64
  %3816 = load i64, i64* %PC.i457
  %3817 = add i64 %3816, 3
  store i64 %3817, i64* %PC.i457
  %3818 = inttoptr i64 %3813 to i32*
  store i32 %3814, i32* %3818
  store %struct.Memory* %loadMem_49d31a, %struct.Memory** %MEMORY
  %loadMem_49d31d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3820 = getelementptr inbounds %struct.GPR, %struct.GPR* %3819, i32 0, i32 33
  %3821 = getelementptr inbounds %struct.Reg, %struct.Reg* %3820, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %3821 to i64*
  %3822 = load i64, i64* %PC.i456
  %3823 = add i64 %3822, -183
  %3824 = load i64, i64* %PC.i456
  %3825 = add i64 %3824, 5
  store i64 %3825, i64* %PC.i456
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3823, i64* %3826, align 8
  store %struct.Memory* %loadMem_49d31d, %struct.Memory** %MEMORY
  br label %block_.L_49d266

block_.L_49d322:                                  ; preds = %block_.L_49d266
  %loadMem_49d322 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3828 = getelementptr inbounds %struct.GPR, %struct.GPR* %3827, i32 0, i32 33
  %3829 = getelementptr inbounds %struct.Reg, %struct.Reg* %3828, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %3829 to i64*
  %3830 = load i64, i64* %PC.i455
  %3831 = add i64 %3830, 5
  %3832 = load i64, i64* %PC.i455
  %3833 = add i64 %3832, 5
  store i64 %3833, i64* %PC.i455
  %3834 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3831, i64* %3834, align 8
  store %struct.Memory* %loadMem_49d322, %struct.Memory** %MEMORY
  br label %block_.L_49d327

block_.L_49d327:                                  ; preds = %block_.L_49d322
  %loadMem_49d327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3836 = getelementptr inbounds %struct.GPR, %struct.GPR* %3835, i32 0, i32 33
  %3837 = getelementptr inbounds %struct.Reg, %struct.Reg* %3836, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %3837 to i64*
  %3838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3839 = getelementptr inbounds %struct.GPR, %struct.GPR* %3838, i32 0, i32 1
  %3840 = getelementptr inbounds %struct.Reg, %struct.Reg* %3839, i32 0, i32 0
  %RAX.i453 = bitcast %union.anon* %3840 to i64*
  %3841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3842 = getelementptr inbounds %struct.GPR, %struct.GPR* %3841, i32 0, i32 15
  %3843 = getelementptr inbounds %struct.Reg, %struct.Reg* %3842, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %3843 to i64*
  %3844 = load i64, i64* %RBP.i454
  %3845 = sub i64 %3844, 4
  %3846 = load i64, i64* %PC.i452
  %3847 = add i64 %3846, 3
  store i64 %3847, i64* %PC.i452
  %3848 = inttoptr i64 %3845 to i32*
  %3849 = load i32, i32* %3848
  %3850 = zext i32 %3849 to i64
  store i64 %3850, i64* %RAX.i453, align 8
  store %struct.Memory* %loadMem_49d327, %struct.Memory** %MEMORY
  %loadMem_49d32a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 33
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %3853 to i64*
  %3854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3855 = getelementptr inbounds %struct.GPR, %struct.GPR* %3854, i32 0, i32 1
  %3856 = getelementptr inbounds %struct.Reg, %struct.Reg* %3855, i32 0, i32 0
  %RAX.i451 = bitcast %union.anon* %3856 to i64*
  %3857 = load i64, i64* %RAX.i451
  %3858 = load i64, i64* %PC.i450
  %3859 = add i64 %3858, 3
  store i64 %3859, i64* %PC.i450
  %3860 = trunc i64 %3857 to i32
  %3861 = add i32 1, %3860
  %3862 = zext i32 %3861 to i64
  store i64 %3862, i64* %RAX.i451, align 8
  %3863 = icmp ult i32 %3861, %3860
  %3864 = icmp ult i32 %3861, 1
  %3865 = or i1 %3863, %3864
  %3866 = zext i1 %3865 to i8
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3866, i8* %3867, align 1
  %3868 = and i32 %3861, 255
  %3869 = call i32 @llvm.ctpop.i32(i32 %3868)
  %3870 = trunc i32 %3869 to i8
  %3871 = and i8 %3870, 1
  %3872 = xor i8 %3871, 1
  %3873 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3872, i8* %3873, align 1
  %3874 = xor i64 1, %3857
  %3875 = trunc i64 %3874 to i32
  %3876 = xor i32 %3875, %3861
  %3877 = lshr i32 %3876, 4
  %3878 = trunc i32 %3877 to i8
  %3879 = and i8 %3878, 1
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3879, i8* %3880, align 1
  %3881 = icmp eq i32 %3861, 0
  %3882 = zext i1 %3881 to i8
  %3883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3882, i8* %3883, align 1
  %3884 = lshr i32 %3861, 31
  %3885 = trunc i32 %3884 to i8
  %3886 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3885, i8* %3886, align 1
  %3887 = lshr i32 %3860, 31
  %3888 = xor i32 %3884, %3887
  %3889 = add i32 %3888, %3884
  %3890 = icmp eq i32 %3889, 2
  %3891 = zext i1 %3890 to i8
  %3892 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3891, i8* %3892, align 1
  store %struct.Memory* %loadMem_49d32a, %struct.Memory** %MEMORY
  %loadMem_49d32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3894 = getelementptr inbounds %struct.GPR, %struct.GPR* %3893, i32 0, i32 33
  %3895 = getelementptr inbounds %struct.Reg, %struct.Reg* %3894, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %3895 to i64*
  %3896 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3897 = getelementptr inbounds %struct.GPR, %struct.GPR* %3896, i32 0, i32 1
  %3898 = getelementptr inbounds %struct.Reg, %struct.Reg* %3897, i32 0, i32 0
  %EAX.i448 = bitcast %union.anon* %3898 to i32*
  %3899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3900 = getelementptr inbounds %struct.GPR, %struct.GPR* %3899, i32 0, i32 15
  %3901 = getelementptr inbounds %struct.Reg, %struct.Reg* %3900, i32 0, i32 0
  %RBP.i449 = bitcast %union.anon* %3901 to i64*
  %3902 = load i64, i64* %RBP.i449
  %3903 = sub i64 %3902, 4
  %3904 = load i32, i32* %EAX.i448
  %3905 = zext i32 %3904 to i64
  %3906 = load i64, i64* %PC.i447
  %3907 = add i64 %3906, 3
  store i64 %3907, i64* %PC.i447
  %3908 = inttoptr i64 %3903 to i32*
  store i32 %3904, i32* %3908
  store %struct.Memory* %loadMem_49d32d, %struct.Memory** %MEMORY
  %loadMem_49d330 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3909 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3910 = getelementptr inbounds %struct.GPR, %struct.GPR* %3909, i32 0, i32 33
  %3911 = getelementptr inbounds %struct.Reg, %struct.Reg* %3910, i32 0, i32 0
  %PC.i446 = bitcast %union.anon* %3911 to i64*
  %3912 = load i64, i64* %PC.i446
  %3913 = add i64 %3912, -237
  %3914 = load i64, i64* %PC.i446
  %3915 = add i64 %3914, 5
  store i64 %3915, i64* %PC.i446
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3913, i64* %3916, align 8
  store %struct.Memory* %loadMem_49d330, %struct.Memory** %MEMORY
  br label %block_.L_49d243

block_.L_49d335:                                  ; preds = %block_.L_49d243
  %loadMem_49d335 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i444 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 15
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %RBP.i445 = bitcast %union.anon* %3922 to i64*
  %3923 = load i64, i64* %RBP.i445
  %3924 = sub i64 %3923, 4
  %3925 = load i64, i64* %PC.i444
  %3926 = add i64 %3925, 7
  store i64 %3926, i64* %PC.i444
  %3927 = inttoptr i64 %3924 to i32*
  store i32 0, i32* %3927
  store %struct.Memory* %loadMem_49d335, %struct.Memory** %MEMORY
  br label %block_.L_49d33c

block_.L_49d33c:                                  ; preds = %block_.L_49d3da, %block_.L_49d335
  %loadMem_49d33c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3929 = getelementptr inbounds %struct.GPR, %struct.GPR* %3928, i32 0, i32 33
  %3930 = getelementptr inbounds %struct.Reg, %struct.Reg* %3929, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %3930 to i64*
  %3931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3932 = getelementptr inbounds %struct.GPR, %struct.GPR* %3931, i32 0, i32 15
  %3933 = getelementptr inbounds %struct.Reg, %struct.Reg* %3932, i32 0, i32 0
  %RBP.i443 = bitcast %union.anon* %3933 to i64*
  %3934 = load i64, i64* %RBP.i443
  %3935 = sub i64 %3934, 4
  %3936 = load i64, i64* %PC.i442
  %3937 = add i64 %3936, 4
  store i64 %3937, i64* %PC.i442
  %3938 = inttoptr i64 %3935 to i32*
  %3939 = load i32, i32* %3938
  %3940 = sub i32 %3939, 3
  %3941 = icmp ult i32 %3939, 3
  %3942 = zext i1 %3941 to i8
  %3943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3942, i8* %3943, align 1
  %3944 = and i32 %3940, 255
  %3945 = call i32 @llvm.ctpop.i32(i32 %3944)
  %3946 = trunc i32 %3945 to i8
  %3947 = and i8 %3946, 1
  %3948 = xor i8 %3947, 1
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3948, i8* %3949, align 1
  %3950 = xor i32 %3939, 3
  %3951 = xor i32 %3950, %3940
  %3952 = lshr i32 %3951, 4
  %3953 = trunc i32 %3952 to i8
  %3954 = and i8 %3953, 1
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3954, i8* %3955, align 1
  %3956 = icmp eq i32 %3940, 0
  %3957 = zext i1 %3956 to i8
  %3958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3957, i8* %3958, align 1
  %3959 = lshr i32 %3940, 31
  %3960 = trunc i32 %3959 to i8
  %3961 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3960, i8* %3961, align 1
  %3962 = lshr i32 %3939, 31
  %3963 = xor i32 %3959, %3962
  %3964 = add i32 %3963, %3962
  %3965 = icmp eq i32 %3964, 2
  %3966 = zext i1 %3965 to i8
  %3967 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3966, i8* %3967, align 1
  store %struct.Memory* %loadMem_49d33c, %struct.Memory** %MEMORY
  %loadMem_49d340 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 33
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %PC.i441 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %PC.i441
  %3972 = add i64 %3971, 168
  %3973 = load i64, i64* %PC.i441
  %3974 = add i64 %3973, 6
  %3975 = load i64, i64* %PC.i441
  %3976 = add i64 %3975, 6
  store i64 %3976, i64* %PC.i441
  %3977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3978 = load i8, i8* %3977, align 1
  %3979 = icmp ne i8 %3978, 0
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3981 = load i8, i8* %3980, align 1
  %3982 = icmp ne i8 %3981, 0
  %3983 = xor i1 %3979, %3982
  %3984 = xor i1 %3983, true
  %3985 = zext i1 %3984 to i8
  store i8 %3985, i8* %BRANCH_TAKEN, align 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3987 = select i1 %3983, i64 %3974, i64 %3972
  store i64 %3987, i64* %3986, align 8
  store %struct.Memory* %loadMem_49d340, %struct.Memory** %MEMORY
  %loadBr_49d340 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d340 = icmp eq i8 %loadBr_49d340, 1
  br i1 %cmpBr_49d340, label %block_.L_49d3e8, label %block_49d346

block_49d346:                                     ; preds = %block_.L_49d33c
  %loadMem_49d346 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3989 = getelementptr inbounds %struct.GPR, %struct.GPR* %3988, i32 0, i32 33
  %3990 = getelementptr inbounds %struct.Reg, %struct.Reg* %3989, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %3990 to i64*
  %3991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3992 = getelementptr inbounds %struct.GPR, %struct.GPR* %3991, i32 0, i32 15
  %3993 = getelementptr inbounds %struct.Reg, %struct.Reg* %3992, i32 0, i32 0
  %RBP.i440 = bitcast %union.anon* %3993 to i64*
  %3994 = load i64, i64* %RBP.i440
  %3995 = sub i64 %3994, 12
  %3996 = load i64, i64* %PC.i439
  %3997 = add i64 %3996, 7
  store i64 %3997, i64* %PC.i439
  %3998 = inttoptr i64 %3995 to i32*
  store i32 0, i32* %3998
  store %struct.Memory* %loadMem_49d346, %struct.Memory** %MEMORY
  br label %block_.L_49d34d

block_.L_49d34d:                                  ; preds = %block_.L_49d3c7, %block_49d346
  %loadMem_49d34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3999 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4000 = getelementptr inbounds %struct.GPR, %struct.GPR* %3999, i32 0, i32 33
  %4001 = getelementptr inbounds %struct.Reg, %struct.Reg* %4000, i32 0, i32 0
  %PC.i437 = bitcast %union.anon* %4001 to i64*
  %4002 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4003 = getelementptr inbounds %struct.GPR, %struct.GPR* %4002, i32 0, i32 15
  %4004 = getelementptr inbounds %struct.Reg, %struct.Reg* %4003, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %4004 to i64*
  %4005 = load i64, i64* %RBP.i438
  %4006 = sub i64 %4005, 12
  %4007 = load i64, i64* %PC.i437
  %4008 = add i64 %4007, 4
  store i64 %4008, i64* %PC.i437
  %4009 = inttoptr i64 %4006 to i32*
  %4010 = load i32, i32* %4009
  %4011 = sub i32 %4010, 2
  %4012 = icmp ult i32 %4010, 2
  %4013 = zext i1 %4012 to i8
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4013, i8* %4014, align 1
  %4015 = and i32 %4011, 255
  %4016 = call i32 @llvm.ctpop.i32(i32 %4015)
  %4017 = trunc i32 %4016 to i8
  %4018 = and i8 %4017, 1
  %4019 = xor i8 %4018, 1
  %4020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4019, i8* %4020, align 1
  %4021 = xor i32 %4010, 2
  %4022 = xor i32 %4021, %4011
  %4023 = lshr i32 %4022, 4
  %4024 = trunc i32 %4023 to i8
  %4025 = and i8 %4024, 1
  %4026 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4025, i8* %4026, align 1
  %4027 = icmp eq i32 %4011, 0
  %4028 = zext i1 %4027 to i8
  %4029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4028, i8* %4029, align 1
  %4030 = lshr i32 %4011, 31
  %4031 = trunc i32 %4030 to i8
  %4032 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4031, i8* %4032, align 1
  %4033 = lshr i32 %4010, 31
  %4034 = xor i32 %4030, %4033
  %4035 = add i32 %4034, %4033
  %4036 = icmp eq i32 %4035, 2
  %4037 = zext i1 %4036 to i8
  %4038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4037, i8* %4038, align 1
  store %struct.Memory* %loadMem_49d34d, %struct.Memory** %MEMORY
  %loadMem_49d351 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4040 = getelementptr inbounds %struct.GPR, %struct.GPR* %4039, i32 0, i32 33
  %4041 = getelementptr inbounds %struct.Reg, %struct.Reg* %4040, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %4041 to i64*
  %4042 = load i64, i64* %PC.i436
  %4043 = add i64 %4042, 132
  %4044 = load i64, i64* %PC.i436
  %4045 = add i64 %4044, 6
  %4046 = load i64, i64* %PC.i436
  %4047 = add i64 %4046, 6
  store i64 %4047, i64* %PC.i436
  %4048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4049 = load i8, i8* %4048, align 1
  %4050 = icmp ne i8 %4049, 0
  %4051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4052 = load i8, i8* %4051, align 1
  %4053 = icmp ne i8 %4052, 0
  %4054 = xor i1 %4050, %4053
  %4055 = xor i1 %4054, true
  %4056 = zext i1 %4055 to i8
  store i8 %4056, i8* %BRANCH_TAKEN, align 1
  %4057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4058 = select i1 %4054, i64 %4045, i64 %4043
  store i64 %4058, i64* %4057, align 8
  store %struct.Memory* %loadMem_49d351, %struct.Memory** %MEMORY
  %loadBr_49d351 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d351 = icmp eq i8 %loadBr_49d351, 1
  br i1 %cmpBr_49d351, label %block_.L_49d3d5, label %block_49d357

block_49d357:                                     ; preds = %block_.L_49d34d
  %loadMem_49d357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %4061 to i64*
  %4062 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4063 = getelementptr inbounds %struct.GPR, %struct.GPR* %4062, i32 0, i32 15
  %4064 = getelementptr inbounds %struct.Reg, %struct.Reg* %4063, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %4064 to i64*
  %4065 = load i64, i64* %RBP.i435
  %4066 = sub i64 %4065, 16
  %4067 = load i64, i64* %PC.i434
  %4068 = add i64 %4067, 7
  store i64 %4068, i64* %PC.i434
  %4069 = inttoptr i64 %4066 to i32*
  store i32 0, i32* %4069
  store %struct.Memory* %loadMem_49d357, %struct.Memory** %MEMORY
  br label %block_.L_49d35e

block_.L_49d35e:                                  ; preds = %block_49d368, %block_49d357
  %loadMem_49d35e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4071 = getelementptr inbounds %struct.GPR, %struct.GPR* %4070, i32 0, i32 33
  %4072 = getelementptr inbounds %struct.Reg, %struct.Reg* %4071, i32 0, i32 0
  %PC.i432 = bitcast %union.anon* %4072 to i64*
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 15
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %RBP.i433 = bitcast %union.anon* %4075 to i64*
  %4076 = load i64, i64* %RBP.i433
  %4077 = sub i64 %4076, 16
  %4078 = load i64, i64* %PC.i432
  %4079 = add i64 %4078, 4
  store i64 %4079, i64* %PC.i432
  %4080 = inttoptr i64 %4077 to i32*
  %4081 = load i32, i32* %4080
  %4082 = sub i32 %4081, 18
  %4083 = icmp ult i32 %4081, 18
  %4084 = zext i1 %4083 to i8
  %4085 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4084, i8* %4085, align 1
  %4086 = and i32 %4082, 255
  %4087 = call i32 @llvm.ctpop.i32(i32 %4086)
  %4088 = trunc i32 %4087 to i8
  %4089 = and i8 %4088, 1
  %4090 = xor i8 %4089, 1
  %4091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4090, i8* %4091, align 1
  %4092 = xor i32 %4081, 18
  %4093 = xor i32 %4092, %4082
  %4094 = lshr i32 %4093, 4
  %4095 = trunc i32 %4094 to i8
  %4096 = and i8 %4095, 1
  %4097 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4096, i8* %4097, align 1
  %4098 = icmp eq i32 %4082, 0
  %4099 = zext i1 %4098 to i8
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4099, i8* %4100, align 1
  %4101 = lshr i32 %4082, 31
  %4102 = trunc i32 %4101 to i8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4102, i8* %4103, align 1
  %4104 = lshr i32 %4081, 31
  %4105 = xor i32 %4101, %4104
  %4106 = add i32 %4105, %4104
  %4107 = icmp eq i32 %4106, 2
  %4108 = zext i1 %4107 to i8
  %4109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4108, i8* %4109, align 1
  store %struct.Memory* %loadMem_49d35e, %struct.Memory** %MEMORY
  %loadMem_49d362 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4111 = getelementptr inbounds %struct.GPR, %struct.GPR* %4110, i32 0, i32 33
  %4112 = getelementptr inbounds %struct.Reg, %struct.Reg* %4111, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %4112 to i64*
  %4113 = load i64, i64* %PC.i431
  %4114 = add i64 %4113, 96
  %4115 = load i64, i64* %PC.i431
  %4116 = add i64 %4115, 6
  %4117 = load i64, i64* %PC.i431
  %4118 = add i64 %4117, 6
  store i64 %4118, i64* %PC.i431
  %4119 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4120 = load i8, i8* %4119, align 1
  %4121 = icmp ne i8 %4120, 0
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4123 = load i8, i8* %4122, align 1
  %4124 = icmp ne i8 %4123, 0
  %4125 = xor i1 %4121, %4124
  %4126 = xor i1 %4125, true
  %4127 = zext i1 %4126 to i8
  store i8 %4127, i8* %BRANCH_TAKEN, align 1
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4129 = select i1 %4125, i64 %4116, i64 %4114
  store i64 %4129, i64* %4128, align 8
  store %struct.Memory* %loadMem_49d362, %struct.Memory** %MEMORY
  %loadBr_49d362 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d362 = icmp eq i8 %loadBr_49d362, 1
  br i1 %cmpBr_49d362, label %block_.L_49d3c2, label %block_49d368

block_49d368:                                     ; preds = %block_.L_49d35e
  %loadMem_49d368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4131 = getelementptr inbounds %struct.GPR, %struct.GPR* %4130, i32 0, i32 33
  %4132 = getelementptr inbounds %struct.Reg, %struct.Reg* %4131, i32 0, i32 0
  %PC.i429 = bitcast %union.anon* %4132 to i64*
  %4133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4134 = getelementptr inbounds %struct.GPR, %struct.GPR* %4133, i32 0, i32 1
  %4135 = getelementptr inbounds %struct.Reg, %struct.Reg* %4134, i32 0, i32 0
  %RAX.i430 = bitcast %union.anon* %4135 to i64*
  %4136 = load i64, i64* %PC.i429
  %4137 = add i64 %4136, 8
  store i64 %4137, i64* %PC.i429
  %4138 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %4138, i64* %RAX.i430, align 8
  store %struct.Memory* %loadMem_49d368, %struct.Memory** %MEMORY
  %loadMem_49d370 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %4141 to i64*
  %4142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4143 = getelementptr inbounds %struct.GPR, %struct.GPR* %4142, i32 0, i32 1
  %4144 = getelementptr inbounds %struct.Reg, %struct.Reg* %4143, i32 0, i32 0
  %RAX.i428 = bitcast %union.anon* %4144 to i64*
  %4145 = load i64, i64* %RAX.i428
  %4146 = add i64 %4145, 14144
  %4147 = load i64, i64* %PC.i427
  %4148 = add i64 %4147, 7
  store i64 %4148, i64* %PC.i427
  %4149 = inttoptr i64 %4146 to i64*
  %4150 = load i64, i64* %4149
  store i64 %4150, i64* %RAX.i428, align 8
  store %struct.Memory* %loadMem_49d370, %struct.Memory** %MEMORY
  %loadMem_49d377 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4152 = getelementptr inbounds %struct.GPR, %struct.GPR* %4151, i32 0, i32 33
  %4153 = getelementptr inbounds %struct.Reg, %struct.Reg* %4152, i32 0, i32 0
  %PC.i424 = bitcast %union.anon* %4153 to i64*
  %4154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4155 = getelementptr inbounds %struct.GPR, %struct.GPR* %4154, i32 0, i32 5
  %4156 = getelementptr inbounds %struct.Reg, %struct.Reg* %4155, i32 0, i32 0
  %RCX.i425 = bitcast %union.anon* %4156 to i64*
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 15
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %RBP.i426 = bitcast %union.anon* %4159 to i64*
  %4160 = load i64, i64* %RBP.i426
  %4161 = sub i64 %4160, 4
  %4162 = load i64, i64* %PC.i424
  %4163 = add i64 %4162, 4
  store i64 %4163, i64* %PC.i424
  %4164 = inttoptr i64 %4161 to i32*
  %4165 = load i32, i32* %4164
  %4166 = sext i32 %4165 to i64
  store i64 %4166, i64* %RCX.i425, align 8
  store %struct.Memory* %loadMem_49d377, %struct.Memory** %MEMORY
  %loadMem_49d37b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4168 = getelementptr inbounds %struct.GPR, %struct.GPR* %4167, i32 0, i32 33
  %4169 = getelementptr inbounds %struct.Reg, %struct.Reg* %4168, i32 0, i32 0
  %PC.i421 = bitcast %union.anon* %4169 to i64*
  %4170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4171 = getelementptr inbounds %struct.GPR, %struct.GPR* %4170, i32 0, i32 1
  %4172 = getelementptr inbounds %struct.Reg, %struct.Reg* %4171, i32 0, i32 0
  %RAX.i422 = bitcast %union.anon* %4172 to i64*
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4174 = getelementptr inbounds %struct.GPR, %struct.GPR* %4173, i32 0, i32 5
  %4175 = getelementptr inbounds %struct.Reg, %struct.Reg* %4174, i32 0, i32 0
  %RCX.i423 = bitcast %union.anon* %4175 to i64*
  %4176 = load i64, i64* %RAX.i422
  %4177 = load i64, i64* %RCX.i423
  %4178 = mul i64 %4177, 8
  %4179 = add i64 %4178, %4176
  %4180 = load i64, i64* %PC.i421
  %4181 = add i64 %4180, 4
  store i64 %4181, i64* %PC.i421
  %4182 = inttoptr i64 %4179 to i64*
  %4183 = load i64, i64* %4182
  store i64 %4183, i64* %RAX.i422, align 8
  store %struct.Memory* %loadMem_49d37b, %struct.Memory** %MEMORY
  %loadMem_49d37f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4185 = getelementptr inbounds %struct.GPR, %struct.GPR* %4184, i32 0, i32 33
  %4186 = getelementptr inbounds %struct.Reg, %struct.Reg* %4185, i32 0, i32 0
  %PC.i418 = bitcast %union.anon* %4186 to i64*
  %4187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4188 = getelementptr inbounds %struct.GPR, %struct.GPR* %4187, i32 0, i32 5
  %4189 = getelementptr inbounds %struct.Reg, %struct.Reg* %4188, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %4189 to i64*
  %4190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4191 = getelementptr inbounds %struct.GPR, %struct.GPR* %4190, i32 0, i32 15
  %4192 = getelementptr inbounds %struct.Reg, %struct.Reg* %4191, i32 0, i32 0
  %RBP.i420 = bitcast %union.anon* %4192 to i64*
  %4193 = load i64, i64* %RBP.i420
  %4194 = sub i64 %4193, 12
  %4195 = load i64, i64* %PC.i418
  %4196 = add i64 %4195, 4
  store i64 %4196, i64* %PC.i418
  %4197 = inttoptr i64 %4194 to i32*
  %4198 = load i32, i32* %4197
  %4199 = sext i32 %4198 to i64
  store i64 %4199, i64* %RCX.i419, align 8
  store %struct.Memory* %loadMem_49d37f, %struct.Memory** %MEMORY
  %loadMem_49d383 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4201 = getelementptr inbounds %struct.GPR, %struct.GPR* %4200, i32 0, i32 33
  %4202 = getelementptr inbounds %struct.Reg, %struct.Reg* %4201, i32 0, i32 0
  %PC.i415 = bitcast %union.anon* %4202 to i64*
  %4203 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4204 = getelementptr inbounds %struct.GPR, %struct.GPR* %4203, i32 0, i32 1
  %4205 = getelementptr inbounds %struct.Reg, %struct.Reg* %4204, i32 0, i32 0
  %RAX.i416 = bitcast %union.anon* %4205 to i64*
  %4206 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4207 = getelementptr inbounds %struct.GPR, %struct.GPR* %4206, i32 0, i32 5
  %4208 = getelementptr inbounds %struct.Reg, %struct.Reg* %4207, i32 0, i32 0
  %RCX.i417 = bitcast %union.anon* %4208 to i64*
  %4209 = load i64, i64* %RAX.i416
  %4210 = load i64, i64* %RCX.i417
  %4211 = mul i64 %4210, 8
  %4212 = add i64 %4211, %4209
  %4213 = load i64, i64* %PC.i415
  %4214 = add i64 %4213, 4
  store i64 %4214, i64* %PC.i415
  %4215 = inttoptr i64 %4212 to i64*
  %4216 = load i64, i64* %4215
  store i64 %4216, i64* %RAX.i416, align 8
  store %struct.Memory* %loadMem_49d383, %struct.Memory** %MEMORY
  %loadMem_49d387 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 33
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 5
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RCX.i413 = bitcast %union.anon* %4222 to i64*
  %4223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4224 = getelementptr inbounds %struct.GPR, %struct.GPR* %4223, i32 0, i32 15
  %4225 = getelementptr inbounds %struct.Reg, %struct.Reg* %4224, i32 0, i32 0
  %RBP.i414 = bitcast %union.anon* %4225 to i64*
  %4226 = load i64, i64* %RBP.i414
  %4227 = sub i64 %4226, 16
  %4228 = load i64, i64* %PC.i412
  %4229 = add i64 %4228, 4
  store i64 %4229, i64* %PC.i412
  %4230 = inttoptr i64 %4227 to i32*
  %4231 = load i32, i32* %4230
  %4232 = sext i32 %4231 to i64
  store i64 %4232, i64* %RCX.i413, align 8
  store %struct.Memory* %loadMem_49d387, %struct.Memory** %MEMORY
  %loadMem_49d38b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4234 = getelementptr inbounds %struct.GPR, %struct.GPR* %4233, i32 0, i32 33
  %4235 = getelementptr inbounds %struct.Reg, %struct.Reg* %4234, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %4235 to i64*
  %4236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4237 = getelementptr inbounds %struct.GPR, %struct.GPR* %4236, i32 0, i32 1
  %4238 = getelementptr inbounds %struct.Reg, %struct.Reg* %4237, i32 0, i32 0
  %RAX.i409 = bitcast %union.anon* %4238 to i64*
  %4239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4240 = getelementptr inbounds %struct.GPR, %struct.GPR* %4239, i32 0, i32 5
  %4241 = getelementptr inbounds %struct.Reg, %struct.Reg* %4240, i32 0, i32 0
  %RCX.i410 = bitcast %union.anon* %4241 to i64*
  %4242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4243 = getelementptr inbounds %struct.GPR, %struct.GPR* %4242, i32 0, i32 7
  %4244 = getelementptr inbounds %struct.Reg, %struct.Reg* %4243, i32 0, i32 0
  %RDX.i411 = bitcast %union.anon* %4244 to i64*
  %4245 = load i64, i64* %RAX.i409
  %4246 = load i64, i64* %RCX.i410
  %4247 = mul i64 %4246, 4
  %4248 = add i64 %4247, %4245
  %4249 = load i64, i64* %PC.i408
  %4250 = add i64 %4249, 3
  store i64 %4250, i64* %PC.i408
  %4251 = inttoptr i64 %4248 to i32*
  %4252 = load i32, i32* %4251
  %4253 = zext i32 %4252 to i64
  store i64 %4253, i64* %RDX.i411, align 8
  store %struct.Memory* %loadMem_49d38b, %struct.Memory** %MEMORY
  %loadMem_49d38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4254 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4255 = getelementptr inbounds %struct.GPR, %struct.GPR* %4254, i32 0, i32 33
  %4256 = getelementptr inbounds %struct.Reg, %struct.Reg* %4255, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %4256 to i64*
  %4257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4258 = getelementptr inbounds %struct.GPR, %struct.GPR* %4257, i32 0, i32 1
  %4259 = getelementptr inbounds %struct.Reg, %struct.Reg* %4258, i32 0, i32 0
  %RAX.i407 = bitcast %union.anon* %4259 to i64*
  %4260 = load i64, i64* %PC.i406
  %4261 = add i64 %4260, 8
  store i64 %4261, i64* %PC.i406
  %4262 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %4262, i64* %RAX.i407, align 8
  store %struct.Memory* %loadMem_49d38e, %struct.Memory** %MEMORY
  %loadMem_49d396 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4264 = getelementptr inbounds %struct.GPR, %struct.GPR* %4263, i32 0, i32 33
  %4265 = getelementptr inbounds %struct.Reg, %struct.Reg* %4264, i32 0, i32 0
  %PC.i404 = bitcast %union.anon* %4265 to i64*
  %4266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4267 = getelementptr inbounds %struct.GPR, %struct.GPR* %4266, i32 0, i32 1
  %4268 = getelementptr inbounds %struct.Reg, %struct.Reg* %4267, i32 0, i32 0
  %RAX.i405 = bitcast %union.anon* %4268 to i64*
  %4269 = load i64, i64* %RAX.i405
  %4270 = add i64 %4269, 3088
  %4271 = load i64, i64* %PC.i404
  %4272 = add i64 %4271, 7
  store i64 %4272, i64* %PC.i404
  %4273 = inttoptr i64 %4270 to i64*
  %4274 = load i64, i64* %4273
  store i64 %4274, i64* %RAX.i405, align 8
  store %struct.Memory* %loadMem_49d396, %struct.Memory** %MEMORY
  %loadMem_49d39d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4275 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4276 = getelementptr inbounds %struct.GPR, %struct.GPR* %4275, i32 0, i32 33
  %4277 = getelementptr inbounds %struct.Reg, %struct.Reg* %4276, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %4277 to i64*
  %4278 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4279 = getelementptr inbounds %struct.GPR, %struct.GPR* %4278, i32 0, i32 5
  %4280 = getelementptr inbounds %struct.Reg, %struct.Reg* %4279, i32 0, i32 0
  %RCX.i402 = bitcast %union.anon* %4280 to i64*
  %4281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4282 = getelementptr inbounds %struct.GPR, %struct.GPR* %4281, i32 0, i32 15
  %4283 = getelementptr inbounds %struct.Reg, %struct.Reg* %4282, i32 0, i32 0
  %RBP.i403 = bitcast %union.anon* %4283 to i64*
  %4284 = load i64, i64* %RBP.i403
  %4285 = sub i64 %4284, 4
  %4286 = load i64, i64* %PC.i401
  %4287 = add i64 %4286, 4
  store i64 %4287, i64* %PC.i401
  %4288 = inttoptr i64 %4285 to i32*
  %4289 = load i32, i32* %4288
  %4290 = sext i32 %4289 to i64
  store i64 %4290, i64* %RCX.i402, align 8
  store %struct.Memory* %loadMem_49d39d, %struct.Memory** %MEMORY
  %loadMem_49d3a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4292 = getelementptr inbounds %struct.GPR, %struct.GPR* %4291, i32 0, i32 33
  %4293 = getelementptr inbounds %struct.Reg, %struct.Reg* %4292, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %4293 to i64*
  %4294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4295 = getelementptr inbounds %struct.GPR, %struct.GPR* %4294, i32 0, i32 1
  %4296 = getelementptr inbounds %struct.Reg, %struct.Reg* %4295, i32 0, i32 0
  %RAX.i399 = bitcast %union.anon* %4296 to i64*
  %4297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4298 = getelementptr inbounds %struct.GPR, %struct.GPR* %4297, i32 0, i32 5
  %4299 = getelementptr inbounds %struct.Reg, %struct.Reg* %4298, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %4299 to i64*
  %4300 = load i64, i64* %RAX.i399
  %4301 = load i64, i64* %RCX.i400
  %4302 = mul i64 %4301, 8
  %4303 = add i64 %4302, %4300
  %4304 = load i64, i64* %PC.i398
  %4305 = add i64 %4304, 4
  store i64 %4305, i64* %PC.i398
  %4306 = inttoptr i64 %4303 to i64*
  %4307 = load i64, i64* %4306
  store i64 %4307, i64* %RAX.i399, align 8
  store %struct.Memory* %loadMem_49d3a1, %struct.Memory** %MEMORY
  %loadMem_49d3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4309 = getelementptr inbounds %struct.GPR, %struct.GPR* %4308, i32 0, i32 33
  %4310 = getelementptr inbounds %struct.Reg, %struct.Reg* %4309, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %4310 to i64*
  %4311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4312 = getelementptr inbounds %struct.GPR, %struct.GPR* %4311, i32 0, i32 5
  %4313 = getelementptr inbounds %struct.Reg, %struct.Reg* %4312, i32 0, i32 0
  %RCX.i396 = bitcast %union.anon* %4313 to i64*
  %4314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4315 = getelementptr inbounds %struct.GPR, %struct.GPR* %4314, i32 0, i32 15
  %4316 = getelementptr inbounds %struct.Reg, %struct.Reg* %4315, i32 0, i32 0
  %RBP.i397 = bitcast %union.anon* %4316 to i64*
  %4317 = load i64, i64* %RBP.i397
  %4318 = sub i64 %4317, 12
  %4319 = load i64, i64* %PC.i395
  %4320 = add i64 %4319, 4
  store i64 %4320, i64* %PC.i395
  %4321 = inttoptr i64 %4318 to i32*
  %4322 = load i32, i32* %4321
  %4323 = sext i32 %4322 to i64
  store i64 %4323, i64* %RCX.i396, align 8
  store %struct.Memory* %loadMem_49d3a5, %struct.Memory** %MEMORY
  %loadMem_49d3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4325 = getelementptr inbounds %struct.GPR, %struct.GPR* %4324, i32 0, i32 33
  %4326 = getelementptr inbounds %struct.Reg, %struct.Reg* %4325, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %4326 to i64*
  %4327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4328 = getelementptr inbounds %struct.GPR, %struct.GPR* %4327, i32 0, i32 1
  %4329 = getelementptr inbounds %struct.Reg, %struct.Reg* %4328, i32 0, i32 0
  %RAX.i393 = bitcast %union.anon* %4329 to i64*
  %4330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4331 = getelementptr inbounds %struct.GPR, %struct.GPR* %4330, i32 0, i32 5
  %4332 = getelementptr inbounds %struct.Reg, %struct.Reg* %4331, i32 0, i32 0
  %RCX.i394 = bitcast %union.anon* %4332 to i64*
  %4333 = load i64, i64* %RAX.i393
  %4334 = load i64, i64* %RCX.i394
  %4335 = mul i64 %4334, 8
  %4336 = add i64 %4335, %4333
  %4337 = load i64, i64* %PC.i392
  %4338 = add i64 %4337, 4
  store i64 %4338, i64* %PC.i392
  %4339 = inttoptr i64 %4336 to i64*
  %4340 = load i64, i64* %4339
  store i64 %4340, i64* %RAX.i393, align 8
  store %struct.Memory* %loadMem_49d3a9, %struct.Memory** %MEMORY
  %loadMem_49d3ad = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %4343 to i64*
  %4344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4345 = getelementptr inbounds %struct.GPR, %struct.GPR* %4344, i32 0, i32 5
  %4346 = getelementptr inbounds %struct.Reg, %struct.Reg* %4345, i32 0, i32 0
  %RCX.i390 = bitcast %union.anon* %4346 to i64*
  %4347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4348 = getelementptr inbounds %struct.GPR, %struct.GPR* %4347, i32 0, i32 15
  %4349 = getelementptr inbounds %struct.Reg, %struct.Reg* %4348, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %4349 to i64*
  %4350 = load i64, i64* %RBP.i391
  %4351 = sub i64 %4350, 16
  %4352 = load i64, i64* %PC.i389
  %4353 = add i64 %4352, 4
  store i64 %4353, i64* %PC.i389
  %4354 = inttoptr i64 %4351 to i32*
  %4355 = load i32, i32* %4354
  %4356 = sext i32 %4355 to i64
  store i64 %4356, i64* %RCX.i390, align 8
  store %struct.Memory* %loadMem_49d3ad, %struct.Memory** %MEMORY
  %loadMem_49d3b1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4358 = getelementptr inbounds %struct.GPR, %struct.GPR* %4357, i32 0, i32 33
  %4359 = getelementptr inbounds %struct.Reg, %struct.Reg* %4358, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %4359 to i64*
  %4360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4361 = getelementptr inbounds %struct.GPR, %struct.GPR* %4360, i32 0, i32 7
  %4362 = getelementptr inbounds %struct.Reg, %struct.Reg* %4361, i32 0, i32 0
  %EDX.i386 = bitcast %union.anon* %4362 to i32*
  %4363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4364 = getelementptr inbounds %struct.GPR, %struct.GPR* %4363, i32 0, i32 1
  %4365 = getelementptr inbounds %struct.Reg, %struct.Reg* %4364, i32 0, i32 0
  %RAX.i387 = bitcast %union.anon* %4365 to i64*
  %4366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4367 = getelementptr inbounds %struct.GPR, %struct.GPR* %4366, i32 0, i32 5
  %4368 = getelementptr inbounds %struct.Reg, %struct.Reg* %4367, i32 0, i32 0
  %RCX.i388 = bitcast %union.anon* %4368 to i64*
  %4369 = load i64, i64* %RAX.i387
  %4370 = load i64, i64* %RCX.i388
  %4371 = mul i64 %4370, 4
  %4372 = add i64 %4371, %4369
  %4373 = load i32, i32* %EDX.i386
  %4374 = zext i32 %4373 to i64
  %4375 = load i64, i64* %PC.i385
  %4376 = add i64 %4375, 3
  store i64 %4376, i64* %PC.i385
  %4377 = inttoptr i64 %4372 to i32*
  store i32 %4373, i32* %4377
  store %struct.Memory* %loadMem_49d3b1, %struct.Memory** %MEMORY
  %loadMem_49d3b4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 33
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %PC.i382 = bitcast %union.anon* %4380 to i64*
  %4381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4382 = getelementptr inbounds %struct.GPR, %struct.GPR* %4381, i32 0, i32 1
  %4383 = getelementptr inbounds %struct.Reg, %struct.Reg* %4382, i32 0, i32 0
  %RAX.i383 = bitcast %union.anon* %4383 to i64*
  %4384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4385 = getelementptr inbounds %struct.GPR, %struct.GPR* %4384, i32 0, i32 15
  %4386 = getelementptr inbounds %struct.Reg, %struct.Reg* %4385, i32 0, i32 0
  %RBP.i384 = bitcast %union.anon* %4386 to i64*
  %4387 = load i64, i64* %RBP.i384
  %4388 = sub i64 %4387, 16
  %4389 = load i64, i64* %PC.i382
  %4390 = add i64 %4389, 3
  store i64 %4390, i64* %PC.i382
  %4391 = inttoptr i64 %4388 to i32*
  %4392 = load i32, i32* %4391
  %4393 = zext i32 %4392 to i64
  store i64 %4393, i64* %RAX.i383, align 8
  store %struct.Memory* %loadMem_49d3b4, %struct.Memory** %MEMORY
  %loadMem_49d3b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4395 = getelementptr inbounds %struct.GPR, %struct.GPR* %4394, i32 0, i32 33
  %4396 = getelementptr inbounds %struct.Reg, %struct.Reg* %4395, i32 0, i32 0
  %PC.i380 = bitcast %union.anon* %4396 to i64*
  %4397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4398 = getelementptr inbounds %struct.GPR, %struct.GPR* %4397, i32 0, i32 1
  %4399 = getelementptr inbounds %struct.Reg, %struct.Reg* %4398, i32 0, i32 0
  %RAX.i381 = bitcast %union.anon* %4399 to i64*
  %4400 = load i64, i64* %RAX.i381
  %4401 = load i64, i64* %PC.i380
  %4402 = add i64 %4401, 3
  store i64 %4402, i64* %PC.i380
  %4403 = trunc i64 %4400 to i32
  %4404 = add i32 1, %4403
  %4405 = zext i32 %4404 to i64
  store i64 %4405, i64* %RAX.i381, align 8
  %4406 = icmp ult i32 %4404, %4403
  %4407 = icmp ult i32 %4404, 1
  %4408 = or i1 %4406, %4407
  %4409 = zext i1 %4408 to i8
  %4410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4409, i8* %4410, align 1
  %4411 = and i32 %4404, 255
  %4412 = call i32 @llvm.ctpop.i32(i32 %4411)
  %4413 = trunc i32 %4412 to i8
  %4414 = and i8 %4413, 1
  %4415 = xor i8 %4414, 1
  %4416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4415, i8* %4416, align 1
  %4417 = xor i64 1, %4400
  %4418 = trunc i64 %4417 to i32
  %4419 = xor i32 %4418, %4404
  %4420 = lshr i32 %4419, 4
  %4421 = trunc i32 %4420 to i8
  %4422 = and i8 %4421, 1
  %4423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4422, i8* %4423, align 1
  %4424 = icmp eq i32 %4404, 0
  %4425 = zext i1 %4424 to i8
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4425, i8* %4426, align 1
  %4427 = lshr i32 %4404, 31
  %4428 = trunc i32 %4427 to i8
  %4429 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4428, i8* %4429, align 1
  %4430 = lshr i32 %4403, 31
  %4431 = xor i32 %4427, %4430
  %4432 = add i32 %4431, %4427
  %4433 = icmp eq i32 %4432, 2
  %4434 = zext i1 %4433 to i8
  %4435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4434, i8* %4435, align 1
  store %struct.Memory* %loadMem_49d3b7, %struct.Memory** %MEMORY
  %loadMem_49d3ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %4436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4437 = getelementptr inbounds %struct.GPR, %struct.GPR* %4436, i32 0, i32 33
  %4438 = getelementptr inbounds %struct.Reg, %struct.Reg* %4437, i32 0, i32 0
  %PC.i377 = bitcast %union.anon* %4438 to i64*
  %4439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4440 = getelementptr inbounds %struct.GPR, %struct.GPR* %4439, i32 0, i32 1
  %4441 = getelementptr inbounds %struct.Reg, %struct.Reg* %4440, i32 0, i32 0
  %EAX.i378 = bitcast %union.anon* %4441 to i32*
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 15
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %RBP.i379 = bitcast %union.anon* %4444 to i64*
  %4445 = load i64, i64* %RBP.i379
  %4446 = sub i64 %4445, 16
  %4447 = load i32, i32* %EAX.i378
  %4448 = zext i32 %4447 to i64
  %4449 = load i64, i64* %PC.i377
  %4450 = add i64 %4449, 3
  store i64 %4450, i64* %PC.i377
  %4451 = inttoptr i64 %4446 to i32*
  store i32 %4447, i32* %4451
  store %struct.Memory* %loadMem_49d3ba, %struct.Memory** %MEMORY
  %loadMem_49d3bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4453 = getelementptr inbounds %struct.GPR, %struct.GPR* %4452, i32 0, i32 33
  %4454 = getelementptr inbounds %struct.Reg, %struct.Reg* %4453, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %4454 to i64*
  %4455 = load i64, i64* %PC.i376
  %4456 = add i64 %4455, -95
  %4457 = load i64, i64* %PC.i376
  %4458 = add i64 %4457, 5
  store i64 %4458, i64* %PC.i376
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4456, i64* %4459, align 8
  store %struct.Memory* %loadMem_49d3bd, %struct.Memory** %MEMORY
  br label %block_.L_49d35e

block_.L_49d3c2:                                  ; preds = %block_.L_49d35e
  %loadMem_49d3c2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4461 = getelementptr inbounds %struct.GPR, %struct.GPR* %4460, i32 0, i32 33
  %4462 = getelementptr inbounds %struct.Reg, %struct.Reg* %4461, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %4462 to i64*
  %4463 = load i64, i64* %PC.i375
  %4464 = add i64 %4463, 5
  %4465 = load i64, i64* %PC.i375
  %4466 = add i64 %4465, 5
  store i64 %4466, i64* %PC.i375
  %4467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4464, i64* %4467, align 8
  store %struct.Memory* %loadMem_49d3c2, %struct.Memory** %MEMORY
  br label %block_.L_49d3c7

block_.L_49d3c7:                                  ; preds = %block_.L_49d3c2
  %loadMem_49d3c7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4469 = getelementptr inbounds %struct.GPR, %struct.GPR* %4468, i32 0, i32 33
  %4470 = getelementptr inbounds %struct.Reg, %struct.Reg* %4469, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %4470 to i64*
  %4471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4472 = getelementptr inbounds %struct.GPR, %struct.GPR* %4471, i32 0, i32 1
  %4473 = getelementptr inbounds %struct.Reg, %struct.Reg* %4472, i32 0, i32 0
  %RAX.i373 = bitcast %union.anon* %4473 to i64*
  %4474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4475 = getelementptr inbounds %struct.GPR, %struct.GPR* %4474, i32 0, i32 15
  %4476 = getelementptr inbounds %struct.Reg, %struct.Reg* %4475, i32 0, i32 0
  %RBP.i374 = bitcast %union.anon* %4476 to i64*
  %4477 = load i64, i64* %RBP.i374
  %4478 = sub i64 %4477, 12
  %4479 = load i64, i64* %PC.i372
  %4480 = add i64 %4479, 3
  store i64 %4480, i64* %PC.i372
  %4481 = inttoptr i64 %4478 to i32*
  %4482 = load i32, i32* %4481
  %4483 = zext i32 %4482 to i64
  store i64 %4483, i64* %RAX.i373, align 8
  store %struct.Memory* %loadMem_49d3c7, %struct.Memory** %MEMORY
  %loadMem_49d3ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4485 = getelementptr inbounds %struct.GPR, %struct.GPR* %4484, i32 0, i32 33
  %4486 = getelementptr inbounds %struct.Reg, %struct.Reg* %4485, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %4486 to i64*
  %4487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4488 = getelementptr inbounds %struct.GPR, %struct.GPR* %4487, i32 0, i32 1
  %4489 = getelementptr inbounds %struct.Reg, %struct.Reg* %4488, i32 0, i32 0
  %RAX.i371 = bitcast %union.anon* %4489 to i64*
  %4490 = load i64, i64* %RAX.i371
  %4491 = load i64, i64* %PC.i370
  %4492 = add i64 %4491, 3
  store i64 %4492, i64* %PC.i370
  %4493 = trunc i64 %4490 to i32
  %4494 = add i32 1, %4493
  %4495 = zext i32 %4494 to i64
  store i64 %4495, i64* %RAX.i371, align 8
  %4496 = icmp ult i32 %4494, %4493
  %4497 = icmp ult i32 %4494, 1
  %4498 = or i1 %4496, %4497
  %4499 = zext i1 %4498 to i8
  %4500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4499, i8* %4500, align 1
  %4501 = and i32 %4494, 255
  %4502 = call i32 @llvm.ctpop.i32(i32 %4501)
  %4503 = trunc i32 %4502 to i8
  %4504 = and i8 %4503, 1
  %4505 = xor i8 %4504, 1
  %4506 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4505, i8* %4506, align 1
  %4507 = xor i64 1, %4490
  %4508 = trunc i64 %4507 to i32
  %4509 = xor i32 %4508, %4494
  %4510 = lshr i32 %4509, 4
  %4511 = trunc i32 %4510 to i8
  %4512 = and i8 %4511, 1
  %4513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4512, i8* %4513, align 1
  %4514 = icmp eq i32 %4494, 0
  %4515 = zext i1 %4514 to i8
  %4516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4515, i8* %4516, align 1
  %4517 = lshr i32 %4494, 31
  %4518 = trunc i32 %4517 to i8
  %4519 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4518, i8* %4519, align 1
  %4520 = lshr i32 %4493, 31
  %4521 = xor i32 %4517, %4520
  %4522 = add i32 %4521, %4517
  %4523 = icmp eq i32 %4522, 2
  %4524 = zext i1 %4523 to i8
  %4525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4524, i8* %4525, align 1
  store %struct.Memory* %loadMem_49d3ca, %struct.Memory** %MEMORY
  %loadMem_49d3cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4527 = getelementptr inbounds %struct.GPR, %struct.GPR* %4526, i32 0, i32 33
  %4528 = getelementptr inbounds %struct.Reg, %struct.Reg* %4527, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %4528 to i64*
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 1
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %EAX.i368 = bitcast %union.anon* %4531 to i32*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 15
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %RBP.i369
  %4536 = sub i64 %4535, 12
  %4537 = load i32, i32* %EAX.i368
  %4538 = zext i32 %4537 to i64
  %4539 = load i64, i64* %PC.i367
  %4540 = add i64 %4539, 3
  store i64 %4540, i64* %PC.i367
  %4541 = inttoptr i64 %4536 to i32*
  store i32 %4537, i32* %4541
  store %struct.Memory* %loadMem_49d3cd, %struct.Memory** %MEMORY
  %loadMem_49d3d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4543 = getelementptr inbounds %struct.GPR, %struct.GPR* %4542, i32 0, i32 33
  %4544 = getelementptr inbounds %struct.Reg, %struct.Reg* %4543, i32 0, i32 0
  %PC.i366 = bitcast %union.anon* %4544 to i64*
  %4545 = load i64, i64* %PC.i366
  %4546 = add i64 %4545, -131
  %4547 = load i64, i64* %PC.i366
  %4548 = add i64 %4547, 5
  store i64 %4548, i64* %PC.i366
  %4549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4546, i64* %4549, align 8
  store %struct.Memory* %loadMem_49d3d0, %struct.Memory** %MEMORY
  br label %block_.L_49d34d

block_.L_49d3d5:                                  ; preds = %block_.L_49d34d
  %loadMem_49d3d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4551 = getelementptr inbounds %struct.GPR, %struct.GPR* %4550, i32 0, i32 33
  %4552 = getelementptr inbounds %struct.Reg, %struct.Reg* %4551, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %4552 to i64*
  %4553 = load i64, i64* %PC.i365
  %4554 = add i64 %4553, 5
  %4555 = load i64, i64* %PC.i365
  %4556 = add i64 %4555, 5
  store i64 %4556, i64* %PC.i365
  %4557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4554, i64* %4557, align 8
  store %struct.Memory* %loadMem_49d3d5, %struct.Memory** %MEMORY
  br label %block_.L_49d3da

block_.L_49d3da:                                  ; preds = %block_.L_49d3d5
  %loadMem_49d3da = load %struct.Memory*, %struct.Memory** %MEMORY
  %4558 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4559 = getelementptr inbounds %struct.GPR, %struct.GPR* %4558, i32 0, i32 33
  %4560 = getelementptr inbounds %struct.Reg, %struct.Reg* %4559, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %4560 to i64*
  %4561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4562 = getelementptr inbounds %struct.GPR, %struct.GPR* %4561, i32 0, i32 1
  %4563 = getelementptr inbounds %struct.Reg, %struct.Reg* %4562, i32 0, i32 0
  %RAX.i363 = bitcast %union.anon* %4563 to i64*
  %4564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4565 = getelementptr inbounds %struct.GPR, %struct.GPR* %4564, i32 0, i32 15
  %4566 = getelementptr inbounds %struct.Reg, %struct.Reg* %4565, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %4566 to i64*
  %4567 = load i64, i64* %RBP.i364
  %4568 = sub i64 %4567, 4
  %4569 = load i64, i64* %PC.i362
  %4570 = add i64 %4569, 3
  store i64 %4570, i64* %PC.i362
  %4571 = inttoptr i64 %4568 to i32*
  %4572 = load i32, i32* %4571
  %4573 = zext i32 %4572 to i64
  store i64 %4573, i64* %RAX.i363, align 8
  store %struct.Memory* %loadMem_49d3da, %struct.Memory** %MEMORY
  %loadMem_49d3dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4575 = getelementptr inbounds %struct.GPR, %struct.GPR* %4574, i32 0, i32 33
  %4576 = getelementptr inbounds %struct.Reg, %struct.Reg* %4575, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %4576 to i64*
  %4577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4578 = getelementptr inbounds %struct.GPR, %struct.GPR* %4577, i32 0, i32 1
  %4579 = getelementptr inbounds %struct.Reg, %struct.Reg* %4578, i32 0, i32 0
  %RAX.i361 = bitcast %union.anon* %4579 to i64*
  %4580 = load i64, i64* %RAX.i361
  %4581 = load i64, i64* %PC.i360
  %4582 = add i64 %4581, 3
  store i64 %4582, i64* %PC.i360
  %4583 = trunc i64 %4580 to i32
  %4584 = add i32 1, %4583
  %4585 = zext i32 %4584 to i64
  store i64 %4585, i64* %RAX.i361, align 8
  %4586 = icmp ult i32 %4584, %4583
  %4587 = icmp ult i32 %4584, 1
  %4588 = or i1 %4586, %4587
  %4589 = zext i1 %4588 to i8
  %4590 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4589, i8* %4590, align 1
  %4591 = and i32 %4584, 255
  %4592 = call i32 @llvm.ctpop.i32(i32 %4591)
  %4593 = trunc i32 %4592 to i8
  %4594 = and i8 %4593, 1
  %4595 = xor i8 %4594, 1
  %4596 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4595, i8* %4596, align 1
  %4597 = xor i64 1, %4580
  %4598 = trunc i64 %4597 to i32
  %4599 = xor i32 %4598, %4584
  %4600 = lshr i32 %4599, 4
  %4601 = trunc i32 %4600 to i8
  %4602 = and i8 %4601, 1
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4602, i8* %4603, align 1
  %4604 = icmp eq i32 %4584, 0
  %4605 = zext i1 %4604 to i8
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4605, i8* %4606, align 1
  %4607 = lshr i32 %4584, 31
  %4608 = trunc i32 %4607 to i8
  %4609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4608, i8* %4609, align 1
  %4610 = lshr i32 %4583, 31
  %4611 = xor i32 %4607, %4610
  %4612 = add i32 %4611, %4607
  %4613 = icmp eq i32 %4612, 2
  %4614 = zext i1 %4613 to i8
  %4615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4614, i8* %4615, align 1
  store %struct.Memory* %loadMem_49d3dd, %struct.Memory** %MEMORY
  %loadMem_49d3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4617 = getelementptr inbounds %struct.GPR, %struct.GPR* %4616, i32 0, i32 33
  %4618 = getelementptr inbounds %struct.Reg, %struct.Reg* %4617, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %4618 to i64*
  %4619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4620 = getelementptr inbounds %struct.GPR, %struct.GPR* %4619, i32 0, i32 1
  %4621 = getelementptr inbounds %struct.Reg, %struct.Reg* %4620, i32 0, i32 0
  %EAX.i358 = bitcast %union.anon* %4621 to i32*
  %4622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4623 = getelementptr inbounds %struct.GPR, %struct.GPR* %4622, i32 0, i32 15
  %4624 = getelementptr inbounds %struct.Reg, %struct.Reg* %4623, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %4624 to i64*
  %4625 = load i64, i64* %RBP.i359
  %4626 = sub i64 %4625, 4
  %4627 = load i32, i32* %EAX.i358
  %4628 = zext i32 %4627 to i64
  %4629 = load i64, i64* %PC.i357
  %4630 = add i64 %4629, 3
  store i64 %4630, i64* %PC.i357
  %4631 = inttoptr i64 %4626 to i32*
  store i32 %4627, i32* %4631
  store %struct.Memory* %loadMem_49d3e0, %struct.Memory** %MEMORY
  %loadMem_49d3e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4632 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4633 = getelementptr inbounds %struct.GPR, %struct.GPR* %4632, i32 0, i32 33
  %4634 = getelementptr inbounds %struct.Reg, %struct.Reg* %4633, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %4634 to i64*
  %4635 = load i64, i64* %PC.i356
  %4636 = add i64 %4635, -167
  %4637 = load i64, i64* %PC.i356
  %4638 = add i64 %4637, 5
  store i64 %4638, i64* %PC.i356
  %4639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4636, i64* %4639, align 8
  store %struct.Memory* %loadMem_49d3e3, %struct.Memory** %MEMORY
  br label %block_.L_49d33c

block_.L_49d3e8:                                  ; preds = %block_.L_49d33c
  %loadMem_49d3e8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4641 = getelementptr inbounds %struct.GPR, %struct.GPR* %4640, i32 0, i32 33
  %4642 = getelementptr inbounds %struct.Reg, %struct.Reg* %4641, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %4642 to i64*
  %4643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4644 = getelementptr inbounds %struct.GPR, %struct.GPR* %4643, i32 0, i32 15
  %4645 = getelementptr inbounds %struct.Reg, %struct.Reg* %4644, i32 0, i32 0
  %RBP.i355 = bitcast %union.anon* %4645 to i64*
  %4646 = load i64, i64* %RBP.i355
  %4647 = sub i64 %4646, 4
  %4648 = load i64, i64* %PC.i354
  %4649 = add i64 %4648, 7
  store i64 %4649, i64* %PC.i354
  %4650 = inttoptr i64 %4647 to i32*
  store i32 0, i32* %4650
  store %struct.Memory* %loadMem_49d3e8, %struct.Memory** %MEMORY
  br label %block_.L_49d3ef

block_.L_49d3ef:                                  ; preds = %block_49d3f9, %block_.L_49d3e8
  %loadMem_49d3ef = load %struct.Memory*, %struct.Memory** %MEMORY
  %4651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4652 = getelementptr inbounds %struct.GPR, %struct.GPR* %4651, i32 0, i32 33
  %4653 = getelementptr inbounds %struct.Reg, %struct.Reg* %4652, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %4653 to i64*
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 15
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %RBP.i353 = bitcast %union.anon* %4656 to i64*
  %4657 = load i64, i64* %RBP.i353
  %4658 = sub i64 %4657, 4
  %4659 = load i64, i64* %PC.i352
  %4660 = add i64 %4659, 4
  store i64 %4660, i64* %PC.i352
  %4661 = inttoptr i64 %4658 to i32*
  %4662 = load i32, i32* %4661
  %4663 = sub i32 %4662, 4
  %4664 = icmp ult i32 %4662, 4
  %4665 = zext i1 %4664 to i8
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4665, i8* %4666, align 1
  %4667 = and i32 %4663, 255
  %4668 = call i32 @llvm.ctpop.i32(i32 %4667)
  %4669 = trunc i32 %4668 to i8
  %4670 = and i8 %4669, 1
  %4671 = xor i8 %4670, 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4671, i8* %4672, align 1
  %4673 = xor i32 %4662, 4
  %4674 = xor i32 %4673, %4663
  %4675 = lshr i32 %4674, 4
  %4676 = trunc i32 %4675 to i8
  %4677 = and i8 %4676, 1
  %4678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4677, i8* %4678, align 1
  %4679 = icmp eq i32 %4663, 0
  %4680 = zext i1 %4679 to i8
  %4681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4680, i8* %4681, align 1
  %4682 = lshr i32 %4663, 31
  %4683 = trunc i32 %4682 to i8
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4683, i8* %4684, align 1
  %4685 = lshr i32 %4662, 31
  %4686 = xor i32 %4682, %4685
  %4687 = add i32 %4686, %4685
  %4688 = icmp eq i32 %4687, 2
  %4689 = zext i1 %4688 to i8
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4689, i8* %4690, align 1
  store %struct.Memory* %loadMem_49d3ef, %struct.Memory** %MEMORY
  %loadMem_49d3f3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4692 = getelementptr inbounds %struct.GPR, %struct.GPR* %4691, i32 0, i32 33
  %4693 = getelementptr inbounds %struct.Reg, %struct.Reg* %4692, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %4693 to i64*
  %4694 = load i64, i64* %PC.i351
  %4695 = add i64 %4694, 88
  %4696 = load i64, i64* %PC.i351
  %4697 = add i64 %4696, 6
  %4698 = load i64, i64* %PC.i351
  %4699 = add i64 %4698, 6
  store i64 %4699, i64* %PC.i351
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4701 = load i8, i8* %4700, align 1
  %4702 = icmp ne i8 %4701, 0
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4704 = load i8, i8* %4703, align 1
  %4705 = icmp ne i8 %4704, 0
  %4706 = xor i1 %4702, %4705
  %4707 = xor i1 %4706, true
  %4708 = zext i1 %4707 to i8
  store i8 %4708, i8* %BRANCH_TAKEN, align 1
  %4709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4710 = select i1 %4706, i64 %4697, i64 %4695
  store i64 %4710, i64* %4709, align 8
  store %struct.Memory* %loadMem_49d3f3, %struct.Memory** %MEMORY
  %loadBr_49d3f3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d3f3 = icmp eq i8 %loadBr_49d3f3, 1
  br i1 %cmpBr_49d3f3, label %block_.L_49d44b, label %block_49d3f9

block_49d3f9:                                     ; preds = %block_.L_49d3ef
  %loadMem_49d3f9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4712 = getelementptr inbounds %struct.GPR, %struct.GPR* %4711, i32 0, i32 33
  %4713 = getelementptr inbounds %struct.Reg, %struct.Reg* %4712, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %4713 to i64*
  %4714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4715 = getelementptr inbounds %struct.GPR, %struct.GPR* %4714, i32 0, i32 1
  %4716 = getelementptr inbounds %struct.Reg, %struct.Reg* %4715, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %4716 to i64*
  %4717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4718 = getelementptr inbounds %struct.GPR, %struct.GPR* %4717, i32 0, i32 15
  %4719 = getelementptr inbounds %struct.Reg, %struct.Reg* %4718, i32 0, i32 0
  %RBP.i350 = bitcast %union.anon* %4719 to i64*
  %4720 = load i64, i64* %RBP.i350
  %4721 = sub i64 %4720, 24
  %4722 = load i64, i64* %PC.i348
  %4723 = add i64 %4722, 4
  store i64 %4723, i64* %PC.i348
  %4724 = inttoptr i64 %4721 to i64*
  %4725 = load i64, i64* %4724
  store i64 %4725, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_49d3f9, %struct.Memory** %MEMORY
  %loadMem_49d3fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4727 = getelementptr inbounds %struct.GPR, %struct.GPR* %4726, i32 0, i32 33
  %4728 = getelementptr inbounds %struct.Reg, %struct.Reg* %4727, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %4728 to i64*
  %4729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4730 = getelementptr inbounds %struct.GPR, %struct.GPR* %4729, i32 0, i32 5
  %4731 = getelementptr inbounds %struct.Reg, %struct.Reg* %4730, i32 0, i32 0
  %RCX.i346 = bitcast %union.anon* %4731 to i64*
  %4732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4733 = getelementptr inbounds %struct.GPR, %struct.GPR* %4732, i32 0, i32 15
  %4734 = getelementptr inbounds %struct.Reg, %struct.Reg* %4733, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %4734 to i64*
  %4735 = load i64, i64* %RBP.i347
  %4736 = sub i64 %4735, 4
  %4737 = load i64, i64* %PC.i345
  %4738 = add i64 %4737, 4
  store i64 %4738, i64* %PC.i345
  %4739 = inttoptr i64 %4736 to i32*
  %4740 = load i32, i32* %4739
  %4741 = sext i32 %4740 to i64
  store i64 %4741, i64* %RCX.i346, align 8
  store %struct.Memory* %loadMem_49d3fd, %struct.Memory** %MEMORY
  %loadMem_49d401 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4743 = getelementptr inbounds %struct.GPR, %struct.GPR* %4742, i32 0, i32 33
  %4744 = getelementptr inbounds %struct.Reg, %struct.Reg* %4743, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %4744 to i64*
  %4745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4746 = getelementptr inbounds %struct.GPR, %struct.GPR* %4745, i32 0, i32 1
  %4747 = getelementptr inbounds %struct.Reg, %struct.Reg* %4746, i32 0, i32 0
  %RAX.i342 = bitcast %union.anon* %4747 to i64*
  %4748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4749 = getelementptr inbounds %struct.GPR, %struct.GPR* %4748, i32 0, i32 5
  %4750 = getelementptr inbounds %struct.Reg, %struct.Reg* %4749, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %4750 to i64*
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 7
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %RDX.i344 = bitcast %union.anon* %4753 to i64*
  %4754 = load i64, i64* %RAX.i342
  %4755 = load i64, i64* %RCX.i343
  %4756 = mul i64 %4755, 4
  %4757 = add i64 %4754, 472
  %4758 = add i64 %4757, %4756
  %4759 = load i64, i64* %PC.i341
  %4760 = add i64 %4759, 7
  store i64 %4760, i64* %PC.i341
  %4761 = inttoptr i64 %4758 to i32*
  %4762 = load i32, i32* %4761
  %4763 = zext i32 %4762 to i64
  store i64 %4763, i64* %RDX.i344, align 8
  store %struct.Memory* %loadMem_49d401, %struct.Memory** %MEMORY
  %loadMem_49d408 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4765 = getelementptr inbounds %struct.GPR, %struct.GPR* %4764, i32 0, i32 33
  %4766 = getelementptr inbounds %struct.Reg, %struct.Reg* %4765, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %4766 to i64*
  %4767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4768 = getelementptr inbounds %struct.GPR, %struct.GPR* %4767, i32 0, i32 1
  %4769 = getelementptr inbounds %struct.Reg, %struct.Reg* %4768, i32 0, i32 0
  %RAX.i340 = bitcast %union.anon* %4769 to i64*
  %4770 = load i64, i64* %PC.i339
  %4771 = add i64 %4770, 8
  store i64 %4771, i64* %PC.i339
  %4772 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %4772, i64* %RAX.i340, align 8
  store %struct.Memory* %loadMem_49d408, %struct.Memory** %MEMORY
  %loadMem_49d410 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4773 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4774 = getelementptr inbounds %struct.GPR, %struct.GPR* %4773, i32 0, i32 33
  %4775 = getelementptr inbounds %struct.Reg, %struct.Reg* %4774, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %4775 to i64*
  %4776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4777 = getelementptr inbounds %struct.GPR, %struct.GPR* %4776, i32 0, i32 5
  %4778 = getelementptr inbounds %struct.Reg, %struct.Reg* %4777, i32 0, i32 0
  %RCX.i337 = bitcast %union.anon* %4778 to i64*
  %4779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4780 = getelementptr inbounds %struct.GPR, %struct.GPR* %4779, i32 0, i32 15
  %4781 = getelementptr inbounds %struct.Reg, %struct.Reg* %4780, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %4781 to i64*
  %4782 = load i64, i64* %RBP.i338
  %4783 = sub i64 %4782, 4
  %4784 = load i64, i64* %PC.i336
  %4785 = add i64 %4784, 4
  store i64 %4785, i64* %PC.i336
  %4786 = inttoptr i64 %4783 to i32*
  %4787 = load i32, i32* %4786
  %4788 = sext i32 %4787 to i64
  store i64 %4788, i64* %RCX.i337, align 8
  store %struct.Memory* %loadMem_49d410, %struct.Memory** %MEMORY
  %loadMem_49d414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4789 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4790 = getelementptr inbounds %struct.GPR, %struct.GPR* %4789, i32 0, i32 33
  %4791 = getelementptr inbounds %struct.Reg, %struct.Reg* %4790, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %4791 to i64*
  %4792 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4793 = getelementptr inbounds %struct.GPR, %struct.GPR* %4792, i32 0, i32 7
  %4794 = getelementptr inbounds %struct.Reg, %struct.Reg* %4793, i32 0, i32 0
  %EDX.i333 = bitcast %union.anon* %4794 to i32*
  %4795 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4796 = getelementptr inbounds %struct.GPR, %struct.GPR* %4795, i32 0, i32 1
  %4797 = getelementptr inbounds %struct.Reg, %struct.Reg* %4796, i32 0, i32 0
  %RAX.i334 = bitcast %union.anon* %4797 to i64*
  %4798 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4799 = getelementptr inbounds %struct.GPR, %struct.GPR* %4798, i32 0, i32 5
  %4800 = getelementptr inbounds %struct.Reg, %struct.Reg* %4799, i32 0, i32 0
  %RCX.i335 = bitcast %union.anon* %4800 to i64*
  %4801 = load i64, i64* %RAX.i334
  %4802 = load i64, i64* %RCX.i335
  %4803 = mul i64 %4802, 4
  %4804 = add i64 %4801, 3104
  %4805 = add i64 %4804, %4803
  %4806 = load i32, i32* %EDX.i333
  %4807 = zext i32 %4806 to i64
  %4808 = load i64, i64* %PC.i332
  %4809 = add i64 %4808, 7
  store i64 %4809, i64* %PC.i332
  %4810 = inttoptr i64 %4805 to i32*
  store i32 %4806, i32* %4810
  store %struct.Memory* %loadMem_49d414, %struct.Memory** %MEMORY
  %loadMem_49d41b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4812 = getelementptr inbounds %struct.GPR, %struct.GPR* %4811, i32 0, i32 33
  %4813 = getelementptr inbounds %struct.Reg, %struct.Reg* %4812, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %4813 to i64*
  %4814 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4815 = getelementptr inbounds %struct.GPR, %struct.GPR* %4814, i32 0, i32 1
  %4816 = getelementptr inbounds %struct.Reg, %struct.Reg* %4815, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %4816 to i64*
  %4817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4818 = getelementptr inbounds %struct.GPR, %struct.GPR* %4817, i32 0, i32 15
  %4819 = getelementptr inbounds %struct.Reg, %struct.Reg* %4818, i32 0, i32 0
  %RBP.i331 = bitcast %union.anon* %4819 to i64*
  %4820 = load i64, i64* %RBP.i331
  %4821 = sub i64 %4820, 24
  %4822 = load i64, i64* %PC.i329
  %4823 = add i64 %4822, 4
  store i64 %4823, i64* %PC.i329
  %4824 = inttoptr i64 %4821 to i64*
  %4825 = load i64, i64* %4824
  store i64 %4825, i64* %RAX.i330, align 8
  store %struct.Memory* %loadMem_49d41b, %struct.Memory** %MEMORY
  %loadMem_49d41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4827 = getelementptr inbounds %struct.GPR, %struct.GPR* %4826, i32 0, i32 33
  %4828 = getelementptr inbounds %struct.Reg, %struct.Reg* %4827, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %4828 to i64*
  %4829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4830 = getelementptr inbounds %struct.GPR, %struct.GPR* %4829, i32 0, i32 5
  %4831 = getelementptr inbounds %struct.Reg, %struct.Reg* %4830, i32 0, i32 0
  %RCX.i327 = bitcast %union.anon* %4831 to i64*
  %4832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4833 = getelementptr inbounds %struct.GPR, %struct.GPR* %4832, i32 0, i32 15
  %4834 = getelementptr inbounds %struct.Reg, %struct.Reg* %4833, i32 0, i32 0
  %RBP.i328 = bitcast %union.anon* %4834 to i64*
  %4835 = load i64, i64* %RBP.i328
  %4836 = sub i64 %4835, 4
  %4837 = load i64, i64* %PC.i326
  %4838 = add i64 %4837, 4
  store i64 %4838, i64* %PC.i326
  %4839 = inttoptr i64 %4836 to i32*
  %4840 = load i32, i32* %4839
  %4841 = sext i32 %4840 to i64
  store i64 %4841, i64* %RCX.i327, align 8
  store %struct.Memory* %loadMem_49d41f, %struct.Memory** %MEMORY
  %loadMem_49d423 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4843 = getelementptr inbounds %struct.GPR, %struct.GPR* %4842, i32 0, i32 33
  %4844 = getelementptr inbounds %struct.Reg, %struct.Reg* %4843, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %4844 to i64*
  %4845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4846 = getelementptr inbounds %struct.GPR, %struct.GPR* %4845, i32 0, i32 1
  %4847 = getelementptr inbounds %struct.Reg, %struct.Reg* %4846, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %4847 to i64*
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4849 = getelementptr inbounds %struct.GPR, %struct.GPR* %4848, i32 0, i32 5
  %4850 = getelementptr inbounds %struct.Reg, %struct.Reg* %4849, i32 0, i32 0
  %RCX.i324 = bitcast %union.anon* %4850 to i64*
  %4851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4852 = getelementptr inbounds %struct.GPR, %struct.GPR* %4851, i32 0, i32 7
  %4853 = getelementptr inbounds %struct.Reg, %struct.Reg* %4852, i32 0, i32 0
  %RDX.i325 = bitcast %union.anon* %4853 to i64*
  %4854 = load i64, i64* %RAX.i323
  %4855 = load i64, i64* %RCX.i324
  %4856 = mul i64 %4855, 4
  %4857 = add i64 %4854, 488
  %4858 = add i64 %4857, %4856
  %4859 = load i64, i64* %PC.i322
  %4860 = add i64 %4859, 7
  store i64 %4860, i64* %PC.i322
  %4861 = inttoptr i64 %4858 to i32*
  %4862 = load i32, i32* %4861
  %4863 = zext i32 %4862 to i64
  store i64 %4863, i64* %RDX.i325, align 8
  store %struct.Memory* %loadMem_49d423, %struct.Memory** %MEMORY
  %loadMem_49d42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4865 = getelementptr inbounds %struct.GPR, %struct.GPR* %4864, i32 0, i32 33
  %4866 = getelementptr inbounds %struct.Reg, %struct.Reg* %4865, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %4866 to i64*
  %4867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4868 = getelementptr inbounds %struct.GPR, %struct.GPR* %4867, i32 0, i32 1
  %4869 = getelementptr inbounds %struct.Reg, %struct.Reg* %4868, i32 0, i32 0
  %RAX.i321 = bitcast %union.anon* %4869 to i64*
  %4870 = load i64, i64* %PC.i320
  %4871 = add i64 %4870, 8
  store i64 %4871, i64* %PC.i320
  %4872 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %4872, i64* %RAX.i321, align 8
  store %struct.Memory* %loadMem_49d42a, %struct.Memory** %MEMORY
  %loadMem_49d432 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4873 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4874 = getelementptr inbounds %struct.GPR, %struct.GPR* %4873, i32 0, i32 33
  %4875 = getelementptr inbounds %struct.Reg, %struct.Reg* %4874, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %4875 to i64*
  %4876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4877 = getelementptr inbounds %struct.GPR, %struct.GPR* %4876, i32 0, i32 5
  %4878 = getelementptr inbounds %struct.Reg, %struct.Reg* %4877, i32 0, i32 0
  %RCX.i318 = bitcast %union.anon* %4878 to i64*
  %4879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4880 = getelementptr inbounds %struct.GPR, %struct.GPR* %4879, i32 0, i32 15
  %4881 = getelementptr inbounds %struct.Reg, %struct.Reg* %4880, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %4881 to i64*
  %4882 = load i64, i64* %RBP.i319
  %4883 = sub i64 %4882, 4
  %4884 = load i64, i64* %PC.i317
  %4885 = add i64 %4884, 4
  store i64 %4885, i64* %PC.i317
  %4886 = inttoptr i64 %4883 to i32*
  %4887 = load i32, i32* %4886
  %4888 = sext i32 %4887 to i64
  store i64 %4888, i64* %RCX.i318, align 8
  store %struct.Memory* %loadMem_49d432, %struct.Memory** %MEMORY
  %loadMem_49d436 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4890 = getelementptr inbounds %struct.GPR, %struct.GPR* %4889, i32 0, i32 33
  %4891 = getelementptr inbounds %struct.Reg, %struct.Reg* %4890, i32 0, i32 0
  %PC.i313 = bitcast %union.anon* %4891 to i64*
  %4892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4893 = getelementptr inbounds %struct.GPR, %struct.GPR* %4892, i32 0, i32 7
  %4894 = getelementptr inbounds %struct.Reg, %struct.Reg* %4893, i32 0, i32 0
  %EDX.i314 = bitcast %union.anon* %4894 to i32*
  %4895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4896 = getelementptr inbounds %struct.GPR, %struct.GPR* %4895, i32 0, i32 1
  %4897 = getelementptr inbounds %struct.Reg, %struct.Reg* %4896, i32 0, i32 0
  %RAX.i315 = bitcast %union.anon* %4897 to i64*
  %4898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4899 = getelementptr inbounds %struct.GPR, %struct.GPR* %4898, i32 0, i32 5
  %4900 = getelementptr inbounds %struct.Reg, %struct.Reg* %4899, i32 0, i32 0
  %RCX.i316 = bitcast %union.anon* %4900 to i64*
  %4901 = load i64, i64* %RAX.i315
  %4902 = load i64, i64* %RCX.i316
  %4903 = mul i64 %4902, 4
  %4904 = add i64 %4901, 3120
  %4905 = add i64 %4904, %4903
  %4906 = load i32, i32* %EDX.i314
  %4907 = zext i32 %4906 to i64
  %4908 = load i64, i64* %PC.i313
  %4909 = add i64 %4908, 7
  store i64 %4909, i64* %PC.i313
  %4910 = inttoptr i64 %4905 to i32*
  store i32 %4906, i32* %4910
  store %struct.Memory* %loadMem_49d436, %struct.Memory** %MEMORY
  %loadMem_49d43d = load %struct.Memory*, %struct.Memory** %MEMORY
  %4911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4912 = getelementptr inbounds %struct.GPR, %struct.GPR* %4911, i32 0, i32 33
  %4913 = getelementptr inbounds %struct.Reg, %struct.Reg* %4912, i32 0, i32 0
  %PC.i310 = bitcast %union.anon* %4913 to i64*
  %4914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4915 = getelementptr inbounds %struct.GPR, %struct.GPR* %4914, i32 0, i32 1
  %4916 = getelementptr inbounds %struct.Reg, %struct.Reg* %4915, i32 0, i32 0
  %RAX.i311 = bitcast %union.anon* %4916 to i64*
  %4917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4918 = getelementptr inbounds %struct.GPR, %struct.GPR* %4917, i32 0, i32 15
  %4919 = getelementptr inbounds %struct.Reg, %struct.Reg* %4918, i32 0, i32 0
  %RBP.i312 = bitcast %union.anon* %4919 to i64*
  %4920 = load i64, i64* %RBP.i312
  %4921 = sub i64 %4920, 4
  %4922 = load i64, i64* %PC.i310
  %4923 = add i64 %4922, 3
  store i64 %4923, i64* %PC.i310
  %4924 = inttoptr i64 %4921 to i32*
  %4925 = load i32, i32* %4924
  %4926 = zext i32 %4925 to i64
  store i64 %4926, i64* %RAX.i311, align 8
  store %struct.Memory* %loadMem_49d43d, %struct.Memory** %MEMORY
  %loadMem_49d440 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4928 = getelementptr inbounds %struct.GPR, %struct.GPR* %4927, i32 0, i32 33
  %4929 = getelementptr inbounds %struct.Reg, %struct.Reg* %4928, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %4929 to i64*
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4931 = getelementptr inbounds %struct.GPR, %struct.GPR* %4930, i32 0, i32 1
  %4932 = getelementptr inbounds %struct.Reg, %struct.Reg* %4931, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %4932 to i64*
  %4933 = load i64, i64* %RAX.i309
  %4934 = load i64, i64* %PC.i308
  %4935 = add i64 %4934, 3
  store i64 %4935, i64* %PC.i308
  %4936 = trunc i64 %4933 to i32
  %4937 = add i32 1, %4936
  %4938 = zext i32 %4937 to i64
  store i64 %4938, i64* %RAX.i309, align 8
  %4939 = icmp ult i32 %4937, %4936
  %4940 = icmp ult i32 %4937, 1
  %4941 = or i1 %4939, %4940
  %4942 = zext i1 %4941 to i8
  %4943 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4942, i8* %4943, align 1
  %4944 = and i32 %4937, 255
  %4945 = call i32 @llvm.ctpop.i32(i32 %4944)
  %4946 = trunc i32 %4945 to i8
  %4947 = and i8 %4946, 1
  %4948 = xor i8 %4947, 1
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4948, i8* %4949, align 1
  %4950 = xor i64 1, %4933
  %4951 = trunc i64 %4950 to i32
  %4952 = xor i32 %4951, %4937
  %4953 = lshr i32 %4952, 4
  %4954 = trunc i32 %4953 to i8
  %4955 = and i8 %4954, 1
  %4956 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4955, i8* %4956, align 1
  %4957 = icmp eq i32 %4937, 0
  %4958 = zext i1 %4957 to i8
  %4959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4958, i8* %4959, align 1
  %4960 = lshr i32 %4937, 31
  %4961 = trunc i32 %4960 to i8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4961, i8* %4962, align 1
  %4963 = lshr i32 %4936, 31
  %4964 = xor i32 %4960, %4963
  %4965 = add i32 %4964, %4960
  %4966 = icmp eq i32 %4965, 2
  %4967 = zext i1 %4966 to i8
  %4968 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4967, i8* %4968, align 1
  store %struct.Memory* %loadMem_49d440, %struct.Memory** %MEMORY
  %loadMem_49d443 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4970 = getelementptr inbounds %struct.GPR, %struct.GPR* %4969, i32 0, i32 33
  %4971 = getelementptr inbounds %struct.Reg, %struct.Reg* %4970, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %4971 to i64*
  %4972 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4973 = getelementptr inbounds %struct.GPR, %struct.GPR* %4972, i32 0, i32 1
  %4974 = getelementptr inbounds %struct.Reg, %struct.Reg* %4973, i32 0, i32 0
  %EAX.i306 = bitcast %union.anon* %4974 to i32*
  %4975 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4976 = getelementptr inbounds %struct.GPR, %struct.GPR* %4975, i32 0, i32 15
  %4977 = getelementptr inbounds %struct.Reg, %struct.Reg* %4976, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %4977 to i64*
  %4978 = load i64, i64* %RBP.i307
  %4979 = sub i64 %4978, 4
  %4980 = load i32, i32* %EAX.i306
  %4981 = zext i32 %4980 to i64
  %4982 = load i64, i64* %PC.i305
  %4983 = add i64 %4982, 3
  store i64 %4983, i64* %PC.i305
  %4984 = inttoptr i64 %4979 to i32*
  store i32 %4980, i32* %4984
  store %struct.Memory* %loadMem_49d443, %struct.Memory** %MEMORY
  %loadMem_49d446 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4986 = getelementptr inbounds %struct.GPR, %struct.GPR* %4985, i32 0, i32 33
  %4987 = getelementptr inbounds %struct.Reg, %struct.Reg* %4986, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %4987 to i64*
  %4988 = load i64, i64* %PC.i304
  %4989 = add i64 %4988, -87
  %4990 = load i64, i64* %PC.i304
  %4991 = add i64 %4990, 5
  store i64 %4991, i64* %PC.i304
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4989, i64* %4992, align 8
  store %struct.Memory* %loadMem_49d446, %struct.Memory** %MEMORY
  br label %block_.L_49d3ef

block_.L_49d44b:                                  ; preds = %block_.L_49d3ef
  %loadMem_49d44b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 33
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %4995 to i64*
  %4996 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4997 = getelementptr inbounds %struct.GPR, %struct.GPR* %4996, i32 0, i32 15
  %4998 = getelementptr inbounds %struct.Reg, %struct.Reg* %4997, i32 0, i32 0
  %RBP.i303 = bitcast %union.anon* %4998 to i64*
  %4999 = load i64, i64* %RBP.i303
  %5000 = sub i64 %4999, 8
  %5001 = load i64, i64* %PC.i302
  %5002 = add i64 %5001, 7
  store i64 %5002, i64* %PC.i302
  %5003 = inttoptr i64 %5000 to i32*
  store i32 0, i32* %5003
  store %struct.Memory* %loadMem_49d44b, %struct.Memory** %MEMORY
  br label %block_.L_49d452

block_.L_49d452:                                  ; preds = %block_.L_49d4e3, %block_.L_49d44b
  %loadMem_49d452 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5005 = getelementptr inbounds %struct.GPR, %struct.GPR* %5004, i32 0, i32 33
  %5006 = getelementptr inbounds %struct.Reg, %struct.Reg* %5005, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %5006 to i64*
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 15
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %RBP.i301 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %RBP.i301
  %5011 = sub i64 %5010, 8
  %5012 = load i64, i64* %PC.i300
  %5013 = add i64 %5012, 4
  store i64 %5013, i64* %PC.i300
  %5014 = inttoptr i64 %5011 to i32*
  %5015 = load i32, i32* %5014
  %5016 = sub i32 %5015, 4
  %5017 = icmp ult i32 %5015, 4
  %5018 = zext i1 %5017 to i8
  %5019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5018, i8* %5019, align 1
  %5020 = and i32 %5016, 255
  %5021 = call i32 @llvm.ctpop.i32(i32 %5020)
  %5022 = trunc i32 %5021 to i8
  %5023 = and i8 %5022, 1
  %5024 = xor i8 %5023, 1
  %5025 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5024, i8* %5025, align 1
  %5026 = xor i32 %5015, 4
  %5027 = xor i32 %5026, %5016
  %5028 = lshr i32 %5027, 4
  %5029 = trunc i32 %5028 to i8
  %5030 = and i8 %5029, 1
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5030, i8* %5031, align 1
  %5032 = icmp eq i32 %5016, 0
  %5033 = zext i1 %5032 to i8
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5033, i8* %5034, align 1
  %5035 = lshr i32 %5016, 31
  %5036 = trunc i32 %5035 to i8
  %5037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5036, i8* %5037, align 1
  %5038 = lshr i32 %5015, 31
  %5039 = xor i32 %5035, %5038
  %5040 = add i32 %5039, %5038
  %5041 = icmp eq i32 %5040, 2
  %5042 = zext i1 %5041 to i8
  %5043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5042, i8* %5043, align 1
  store %struct.Memory* %loadMem_49d452, %struct.Memory** %MEMORY
  %loadMem_49d456 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5045 = getelementptr inbounds %struct.GPR, %struct.GPR* %5044, i32 0, i32 33
  %5046 = getelementptr inbounds %struct.Reg, %struct.Reg* %5045, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %5046 to i64*
  %5047 = load i64, i64* %PC.i299
  %5048 = add i64 %5047, 155
  %5049 = load i64, i64* %PC.i299
  %5050 = add i64 %5049, 6
  %5051 = load i64, i64* %PC.i299
  %5052 = add i64 %5051, 6
  store i64 %5052, i64* %PC.i299
  %5053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5054 = load i8, i8* %5053, align 1
  %5055 = icmp ne i8 %5054, 0
  %5056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5057 = load i8, i8* %5056, align 1
  %5058 = icmp ne i8 %5057, 0
  %5059 = xor i1 %5055, %5058
  %5060 = xor i1 %5059, true
  %5061 = zext i1 %5060 to i8
  store i8 %5061, i8* %BRANCH_TAKEN, align 1
  %5062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5063 = select i1 %5059, i64 %5050, i64 %5048
  store i64 %5063, i64* %5062, align 8
  store %struct.Memory* %loadMem_49d456, %struct.Memory** %MEMORY
  %loadBr_49d456 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d456 = icmp eq i8 %loadBr_49d456, 1
  br i1 %cmpBr_49d456, label %block_.L_49d4f1, label %block_49d45c

block_49d45c:                                     ; preds = %block_.L_49d452
  %loadMem_49d45c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5065 = getelementptr inbounds %struct.GPR, %struct.GPR* %5064, i32 0, i32 33
  %5066 = getelementptr inbounds %struct.Reg, %struct.Reg* %5065, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %5066 to i64*
  %5067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5068 = getelementptr inbounds %struct.GPR, %struct.GPR* %5067, i32 0, i32 15
  %5069 = getelementptr inbounds %struct.Reg, %struct.Reg* %5068, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %5069 to i64*
  %5070 = load i64, i64* %RBP.i298
  %5071 = sub i64 %5070, 4
  %5072 = load i64, i64* %PC.i297
  %5073 = add i64 %5072, 7
  store i64 %5073, i64* %PC.i297
  %5074 = inttoptr i64 %5071 to i32*
  store i32 0, i32* %5074
  store %struct.Memory* %loadMem_49d45c, %struct.Memory** %MEMORY
  br label %block_.L_49d463

block_.L_49d463:                                  ; preds = %block_49d46d, %block_49d45c
  %loadMem_49d463 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5075 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5076 = getelementptr inbounds %struct.GPR, %struct.GPR* %5075, i32 0, i32 33
  %5077 = getelementptr inbounds %struct.Reg, %struct.Reg* %5076, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %5077 to i64*
  %5078 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5079 = getelementptr inbounds %struct.GPR, %struct.GPR* %5078, i32 0, i32 15
  %5080 = getelementptr inbounds %struct.Reg, %struct.Reg* %5079, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %5080 to i64*
  %5081 = load i64, i64* %RBP.i296
  %5082 = sub i64 %5081, 4
  %5083 = load i64, i64* %PC.i295
  %5084 = add i64 %5083, 4
  store i64 %5084, i64* %PC.i295
  %5085 = inttoptr i64 %5082 to i32*
  %5086 = load i32, i32* %5085
  %5087 = sub i32 %5086, 4
  %5088 = icmp ult i32 %5086, 4
  %5089 = zext i1 %5088 to i8
  %5090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5089, i8* %5090, align 1
  %5091 = and i32 %5087, 255
  %5092 = call i32 @llvm.ctpop.i32(i32 %5091)
  %5093 = trunc i32 %5092 to i8
  %5094 = and i8 %5093, 1
  %5095 = xor i8 %5094, 1
  %5096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5095, i8* %5096, align 1
  %5097 = xor i32 %5086, 4
  %5098 = xor i32 %5097, %5087
  %5099 = lshr i32 %5098, 4
  %5100 = trunc i32 %5099 to i8
  %5101 = and i8 %5100, 1
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5101, i8* %5102, align 1
  %5103 = icmp eq i32 %5087, 0
  %5104 = zext i1 %5103 to i8
  %5105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5104, i8* %5105, align 1
  %5106 = lshr i32 %5087, 31
  %5107 = trunc i32 %5106 to i8
  %5108 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5107, i8* %5108, align 1
  %5109 = lshr i32 %5086, 31
  %5110 = xor i32 %5106, %5109
  %5111 = add i32 %5110, %5109
  %5112 = icmp eq i32 %5111, 2
  %5113 = zext i1 %5112 to i8
  %5114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5113, i8* %5114, align 1
  store %struct.Memory* %loadMem_49d463, %struct.Memory** %MEMORY
  %loadMem_49d467 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %PC.i294
  %5119 = add i64 %5118, 119
  %5120 = load i64, i64* %PC.i294
  %5121 = add i64 %5120, 6
  %5122 = load i64, i64* %PC.i294
  %5123 = add i64 %5122, 6
  store i64 %5123, i64* %PC.i294
  %5124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5125 = load i8, i8* %5124, align 1
  %5126 = icmp ne i8 %5125, 0
  %5127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5128 = load i8, i8* %5127, align 1
  %5129 = icmp ne i8 %5128, 0
  %5130 = xor i1 %5126, %5129
  %5131 = xor i1 %5130, true
  %5132 = zext i1 %5131 to i8
  store i8 %5132, i8* %BRANCH_TAKEN, align 1
  %5133 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5134 = select i1 %5130, i64 %5121, i64 %5119
  store i64 %5134, i64* %5133, align 8
  store %struct.Memory* %loadMem_49d467, %struct.Memory** %MEMORY
  %loadBr_49d467 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d467 = icmp eq i8 %loadBr_49d467, 1
  br i1 %cmpBr_49d467, label %block_.L_49d4de, label %block_49d46d

block_49d46d:                                     ; preds = %block_.L_49d463
  %loadMem_49d46d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5136 = getelementptr inbounds %struct.GPR, %struct.GPR* %5135, i32 0, i32 33
  %5137 = getelementptr inbounds %struct.Reg, %struct.Reg* %5136, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %5137 to i64*
  %5138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5139 = getelementptr inbounds %struct.GPR, %struct.GPR* %5138, i32 0, i32 1
  %5140 = getelementptr inbounds %struct.Reg, %struct.Reg* %5139, i32 0, i32 0
  %RAX.i293 = bitcast %union.anon* %5140 to i64*
  %5141 = load i64, i64* %PC.i292
  %5142 = add i64 %5141, 8
  store i64 %5142, i64* %PC.i292
  %5143 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %5143, i64* %RAX.i293, align 8
  store %struct.Memory* %loadMem_49d46d, %struct.Memory** %MEMORY
  %loadMem_49d475 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5145 = getelementptr inbounds %struct.GPR, %struct.GPR* %5144, i32 0, i32 33
  %5146 = getelementptr inbounds %struct.Reg, %struct.Reg* %5145, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %5146 to i64*
  %5147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5148 = getelementptr inbounds %struct.GPR, %struct.GPR* %5147, i32 0, i32 1
  %5149 = getelementptr inbounds %struct.Reg, %struct.Reg* %5148, i32 0, i32 0
  %RAX.i291 = bitcast %union.anon* %5149 to i64*
  %5150 = load i64, i64* %RAX.i291
  %5151 = add i64 %5150, 6480
  %5152 = load i64, i64* %PC.i290
  %5153 = add i64 %5152, 7
  store i64 %5153, i64* %PC.i290
  %5154 = inttoptr i64 %5151 to i64*
  %5155 = load i64, i64* %5154
  store i64 %5155, i64* %RAX.i291, align 8
  store %struct.Memory* %loadMem_49d475, %struct.Memory** %MEMORY
  %loadMem_49d47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5157 = getelementptr inbounds %struct.GPR, %struct.GPR* %5156, i32 0, i32 33
  %5158 = getelementptr inbounds %struct.Reg, %struct.Reg* %5157, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %5158 to i64*
  %5159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5160 = getelementptr inbounds %struct.GPR, %struct.GPR* %5159, i32 0, i32 1
  %5161 = getelementptr inbounds %struct.Reg, %struct.Reg* %5160, i32 0, i32 0
  %RAX.i289 = bitcast %union.anon* %5161 to i64*
  %5162 = load i64, i64* %RAX.i289
  %5163 = load i64, i64* %PC.i288
  %5164 = add i64 %5163, 3
  store i64 %5164, i64* %PC.i288
  %5165 = inttoptr i64 %5162 to i64*
  %5166 = load i64, i64* %5165
  store i64 %5166, i64* %RAX.i289, align 8
  store %struct.Memory* %loadMem_49d47c, %struct.Memory** %MEMORY
  %loadMem_49d47f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 33
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %PC.i286 = bitcast %union.anon* %5169 to i64*
  %5170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5171 = getelementptr inbounds %struct.GPR, %struct.GPR* %5170, i32 0, i32 5
  %5172 = getelementptr inbounds %struct.Reg, %struct.Reg* %5171, i32 0, i32 0
  %RCX.i287 = bitcast %union.anon* %5172 to i64*
  %5173 = load i64, i64* %PC.i286
  %5174 = add i64 %5173, 8
  store i64 %5174, i64* %PC.i286
  %5175 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5175, i64* %RCX.i287, align 8
  store %struct.Memory* %loadMem_49d47f, %struct.Memory** %MEMORY
  %loadMem_49d487 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5177 = getelementptr inbounds %struct.GPR, %struct.GPR* %5176, i32 0, i32 33
  %5178 = getelementptr inbounds %struct.Reg, %struct.Reg* %5177, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %5178 to i64*
  %5179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5180 = getelementptr inbounds %struct.GPR, %struct.GPR* %5179, i32 0, i32 5
  %5181 = getelementptr inbounds %struct.Reg, %struct.Reg* %5180, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %5181 to i64*
  %5182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5183 = getelementptr inbounds %struct.GPR, %struct.GPR* %5182, i32 0, i32 7
  %5184 = getelementptr inbounds %struct.Reg, %struct.Reg* %5183, i32 0, i32 0
  %RDX.i285 = bitcast %union.anon* %5184 to i64*
  %5185 = load i64, i64* %RCX.i284
  %5186 = add i64 %5185, 144
  %5187 = load i64, i64* %PC.i283
  %5188 = add i64 %5187, 6
  store i64 %5188, i64* %PC.i283
  %5189 = inttoptr i64 %5186 to i32*
  %5190 = load i32, i32* %5189
  %5191 = zext i32 %5190 to i64
  store i64 %5191, i64* %RDX.i285, align 8
  store %struct.Memory* %loadMem_49d487, %struct.Memory** %MEMORY
  %loadMem_49d48d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5193 = getelementptr inbounds %struct.GPR, %struct.GPR* %5192, i32 0, i32 33
  %5194 = getelementptr inbounds %struct.Reg, %struct.Reg* %5193, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %5194 to i64*
  %5195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5196 = getelementptr inbounds %struct.GPR, %struct.GPR* %5195, i32 0, i32 7
  %5197 = getelementptr inbounds %struct.Reg, %struct.Reg* %5196, i32 0, i32 0
  %RDX.i281 = bitcast %union.anon* %5197 to i64*
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5199 = getelementptr inbounds %struct.GPR, %struct.GPR* %5198, i32 0, i32 15
  %5200 = getelementptr inbounds %struct.Reg, %struct.Reg* %5199, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %5200 to i64*
  %5201 = load i64, i64* %RDX.i281
  %5202 = load i64, i64* %RBP.i282
  %5203 = sub i64 %5202, 4
  %5204 = load i64, i64* %PC.i280
  %5205 = add i64 %5204, 3
  store i64 %5205, i64* %PC.i280
  %5206 = trunc i64 %5201 to i32
  %5207 = inttoptr i64 %5203 to i32*
  %5208 = load i32, i32* %5207
  %5209 = add i32 %5208, %5206
  %5210 = zext i32 %5209 to i64
  store i64 %5210, i64* %RDX.i281, align 8
  %5211 = icmp ult i32 %5209, %5206
  %5212 = icmp ult i32 %5209, %5208
  %5213 = or i1 %5211, %5212
  %5214 = zext i1 %5213 to i8
  %5215 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5214, i8* %5215, align 1
  %5216 = and i32 %5209, 255
  %5217 = call i32 @llvm.ctpop.i32(i32 %5216)
  %5218 = trunc i32 %5217 to i8
  %5219 = and i8 %5218, 1
  %5220 = xor i8 %5219, 1
  %5221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5220, i8* %5221, align 1
  %5222 = xor i32 %5208, %5206
  %5223 = xor i32 %5222, %5209
  %5224 = lshr i32 %5223, 4
  %5225 = trunc i32 %5224 to i8
  %5226 = and i8 %5225, 1
  %5227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5226, i8* %5227, align 1
  %5228 = icmp eq i32 %5209, 0
  %5229 = zext i1 %5228 to i8
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5229, i8* %5230, align 1
  %5231 = lshr i32 %5209, 31
  %5232 = trunc i32 %5231 to i8
  %5233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5232, i8* %5233, align 1
  %5234 = lshr i32 %5206, 31
  %5235 = lshr i32 %5208, 31
  %5236 = xor i32 %5231, %5234
  %5237 = xor i32 %5231, %5235
  %5238 = add i32 %5236, %5237
  %5239 = icmp eq i32 %5238, 2
  %5240 = zext i1 %5239 to i8
  %5241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5240, i8* %5241, align 1
  store %struct.Memory* %loadMem_49d48d, %struct.Memory** %MEMORY
  %loadMem_49d490 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5242 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5243 = getelementptr inbounds %struct.GPR, %struct.GPR* %5242, i32 0, i32 33
  %5244 = getelementptr inbounds %struct.Reg, %struct.Reg* %5243, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %5244 to i64*
  %5245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5246 = getelementptr inbounds %struct.GPR, %struct.GPR* %5245, i32 0, i32 7
  %5247 = getelementptr inbounds %struct.Reg, %struct.Reg* %5246, i32 0, i32 0
  %EDX.i278 = bitcast %union.anon* %5247 to i32*
  %5248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5249 = getelementptr inbounds %struct.GPR, %struct.GPR* %5248, i32 0, i32 5
  %5250 = getelementptr inbounds %struct.Reg, %struct.Reg* %5249, i32 0, i32 0
  %RCX.i279 = bitcast %union.anon* %5250 to i64*
  %5251 = load i32, i32* %EDX.i278
  %5252 = zext i32 %5251 to i64
  %5253 = load i64, i64* %PC.i277
  %5254 = add i64 %5253, 3
  store i64 %5254, i64* %PC.i277
  %5255 = shl i64 %5252, 32
  %5256 = ashr exact i64 %5255, 32
  store i64 %5256, i64* %RCX.i279, align 8
  store %struct.Memory* %loadMem_49d490, %struct.Memory** %MEMORY
  %loadMem_49d493 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5258 = getelementptr inbounds %struct.GPR, %struct.GPR* %5257, i32 0, i32 33
  %5259 = getelementptr inbounds %struct.Reg, %struct.Reg* %5258, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %5259 to i64*
  %5260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5261 = getelementptr inbounds %struct.GPR, %struct.GPR* %5260, i32 0, i32 1
  %5262 = getelementptr inbounds %struct.Reg, %struct.Reg* %5261, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %5262 to i64*
  %5263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5264 = getelementptr inbounds %struct.GPR, %struct.GPR* %5263, i32 0, i32 5
  %5265 = getelementptr inbounds %struct.Reg, %struct.Reg* %5264, i32 0, i32 0
  %RCX.i276 = bitcast %union.anon* %5265 to i64*
  %5266 = load i64, i64* %RAX.i275
  %5267 = load i64, i64* %RCX.i276
  %5268 = mul i64 %5267, 8
  %5269 = add i64 %5268, %5266
  %5270 = load i64, i64* %PC.i274
  %5271 = add i64 %5270, 4
  store i64 %5271, i64* %PC.i274
  %5272 = inttoptr i64 %5269 to i64*
  %5273 = load i64, i64* %5272
  store i64 %5273, i64* %RAX.i275, align 8
  store %struct.Memory* %loadMem_49d493, %struct.Memory** %MEMORY
  %loadMem_49d497 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5275 = getelementptr inbounds %struct.GPR, %struct.GPR* %5274, i32 0, i32 33
  %5276 = getelementptr inbounds %struct.Reg, %struct.Reg* %5275, i32 0, i32 0
  %PC.i272 = bitcast %union.anon* %5276 to i64*
  %5277 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5278 = getelementptr inbounds %struct.GPR, %struct.GPR* %5277, i32 0, i32 5
  %5279 = getelementptr inbounds %struct.Reg, %struct.Reg* %5278, i32 0, i32 0
  %RCX.i273 = bitcast %union.anon* %5279 to i64*
  %5280 = load i64, i64* %PC.i272
  %5281 = add i64 %5280, 8
  store i64 %5281, i64* %PC.i272
  %5282 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5282, i64* %RCX.i273, align 8
  store %struct.Memory* %loadMem_49d497, %struct.Memory** %MEMORY
  %loadMem_49d49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5284 = getelementptr inbounds %struct.GPR, %struct.GPR* %5283, i32 0, i32 33
  %5285 = getelementptr inbounds %struct.Reg, %struct.Reg* %5284, i32 0, i32 0
  %PC.i269 = bitcast %union.anon* %5285 to i64*
  %5286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5287 = getelementptr inbounds %struct.GPR, %struct.GPR* %5286, i32 0, i32 5
  %5288 = getelementptr inbounds %struct.Reg, %struct.Reg* %5287, i32 0, i32 0
  %RCX.i270 = bitcast %union.anon* %5288 to i64*
  %5289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5290 = getelementptr inbounds %struct.GPR, %struct.GPR* %5289, i32 0, i32 7
  %5291 = getelementptr inbounds %struct.Reg, %struct.Reg* %5290, i32 0, i32 0
  %RDX.i271 = bitcast %union.anon* %5291 to i64*
  %5292 = load i64, i64* %RCX.i270
  %5293 = add i64 %5292, 148
  %5294 = load i64, i64* %PC.i269
  %5295 = add i64 %5294, 6
  store i64 %5295, i64* %PC.i269
  %5296 = inttoptr i64 %5293 to i32*
  %5297 = load i32, i32* %5296
  %5298 = zext i32 %5297 to i64
  store i64 %5298, i64* %RDX.i271, align 8
  store %struct.Memory* %loadMem_49d49f, %struct.Memory** %MEMORY
  %loadMem_49d4a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5300 = getelementptr inbounds %struct.GPR, %struct.GPR* %5299, i32 0, i32 33
  %5301 = getelementptr inbounds %struct.Reg, %struct.Reg* %5300, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %5301 to i64*
  %5302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5303 = getelementptr inbounds %struct.GPR, %struct.GPR* %5302, i32 0, i32 7
  %5304 = getelementptr inbounds %struct.Reg, %struct.Reg* %5303, i32 0, i32 0
  %RDX.i267 = bitcast %union.anon* %5304 to i64*
  %5305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5306 = getelementptr inbounds %struct.GPR, %struct.GPR* %5305, i32 0, i32 15
  %5307 = getelementptr inbounds %struct.Reg, %struct.Reg* %5306, i32 0, i32 0
  %RBP.i268 = bitcast %union.anon* %5307 to i64*
  %5308 = load i64, i64* %RDX.i267
  %5309 = load i64, i64* %RBP.i268
  %5310 = sub i64 %5309, 8
  %5311 = load i64, i64* %PC.i266
  %5312 = add i64 %5311, 3
  store i64 %5312, i64* %PC.i266
  %5313 = trunc i64 %5308 to i32
  %5314 = inttoptr i64 %5310 to i32*
  %5315 = load i32, i32* %5314
  %5316 = add i32 %5315, %5313
  %5317 = zext i32 %5316 to i64
  store i64 %5317, i64* %RDX.i267, align 8
  %5318 = icmp ult i32 %5316, %5313
  %5319 = icmp ult i32 %5316, %5315
  %5320 = or i1 %5318, %5319
  %5321 = zext i1 %5320 to i8
  %5322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5321, i8* %5322, align 1
  %5323 = and i32 %5316, 255
  %5324 = call i32 @llvm.ctpop.i32(i32 %5323)
  %5325 = trunc i32 %5324 to i8
  %5326 = and i8 %5325, 1
  %5327 = xor i8 %5326, 1
  %5328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5327, i8* %5328, align 1
  %5329 = xor i32 %5315, %5313
  %5330 = xor i32 %5329, %5316
  %5331 = lshr i32 %5330, 4
  %5332 = trunc i32 %5331 to i8
  %5333 = and i8 %5332, 1
  %5334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5333, i8* %5334, align 1
  %5335 = icmp eq i32 %5316, 0
  %5336 = zext i1 %5335 to i8
  %5337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5336, i8* %5337, align 1
  %5338 = lshr i32 %5316, 31
  %5339 = trunc i32 %5338 to i8
  %5340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5339, i8* %5340, align 1
  %5341 = lshr i32 %5313, 31
  %5342 = lshr i32 %5315, 31
  %5343 = xor i32 %5338, %5341
  %5344 = xor i32 %5338, %5342
  %5345 = add i32 %5343, %5344
  %5346 = icmp eq i32 %5345, 2
  %5347 = zext i1 %5346 to i8
  %5348 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5347, i8* %5348, align 1
  store %struct.Memory* %loadMem_49d4a5, %struct.Memory** %MEMORY
  %loadMem_49d4a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5349 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5350 = getelementptr inbounds %struct.GPR, %struct.GPR* %5349, i32 0, i32 33
  %5351 = getelementptr inbounds %struct.Reg, %struct.Reg* %5350, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %5351 to i64*
  %5352 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5353 = getelementptr inbounds %struct.GPR, %struct.GPR* %5352, i32 0, i32 7
  %5354 = getelementptr inbounds %struct.Reg, %struct.Reg* %5353, i32 0, i32 0
  %EDX.i264 = bitcast %union.anon* %5354 to i32*
  %5355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5356 = getelementptr inbounds %struct.GPR, %struct.GPR* %5355, i32 0, i32 5
  %5357 = getelementptr inbounds %struct.Reg, %struct.Reg* %5356, i32 0, i32 0
  %RCX.i265 = bitcast %union.anon* %5357 to i64*
  %5358 = load i32, i32* %EDX.i264
  %5359 = zext i32 %5358 to i64
  %5360 = load i64, i64* %PC.i263
  %5361 = add i64 %5360, 3
  store i64 %5361, i64* %PC.i263
  %5362 = shl i64 %5359, 32
  %5363 = ashr exact i64 %5362, 32
  store i64 %5363, i64* %RCX.i265, align 8
  store %struct.Memory* %loadMem_49d4a8, %struct.Memory** %MEMORY
  %loadMem_49d4ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %5364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5365 = getelementptr inbounds %struct.GPR, %struct.GPR* %5364, i32 0, i32 33
  %5366 = getelementptr inbounds %struct.Reg, %struct.Reg* %5365, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %5366 to i64*
  %5367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5368 = getelementptr inbounds %struct.GPR, %struct.GPR* %5367, i32 0, i32 9
  %5369 = getelementptr inbounds %struct.Reg, %struct.Reg* %5368, i32 0, i32 0
  %SI.i260 = bitcast %union.anon* %5369 to i16*
  %5370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5371 = getelementptr inbounds %struct.GPR, %struct.GPR* %5370, i32 0, i32 1
  %5372 = getelementptr inbounds %struct.Reg, %struct.Reg* %5371, i32 0, i32 0
  %RAX.i261 = bitcast %union.anon* %5372 to i64*
  %5373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5374 = getelementptr inbounds %struct.GPR, %struct.GPR* %5373, i32 0, i32 5
  %5375 = getelementptr inbounds %struct.Reg, %struct.Reg* %5374, i32 0, i32 0
  %RCX.i262 = bitcast %union.anon* %5375 to i64*
  %5376 = load i64, i64* %RAX.i261
  %5377 = load i64, i64* %RCX.i262
  %5378 = mul i64 %5377, 2
  %5379 = add i64 %5378, %5376
  %5380 = load i64, i64* %PC.i259
  %5381 = add i64 %5380, 4
  store i64 %5381, i64* %PC.i259
  %5382 = inttoptr i64 %5379 to i16*
  %5383 = load i16, i16* %5382
  store i16 %5383, i16* %SI.i260, align 2
  store %struct.Memory* %loadMem_49d4ab, %struct.Memory** %MEMORY
  %loadMem_49d4af = load %struct.Memory*, %struct.Memory** %MEMORY
  %5384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5385 = getelementptr inbounds %struct.GPR, %struct.GPR* %5384, i32 0, i32 33
  %5386 = getelementptr inbounds %struct.Reg, %struct.Reg* %5385, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %5386 to i64*
  %5387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5388 = getelementptr inbounds %struct.GPR, %struct.GPR* %5387, i32 0, i32 1
  %5389 = getelementptr inbounds %struct.Reg, %struct.Reg* %5388, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %5389 to i64*
  %5390 = load i64, i64* %PC.i257
  %5391 = add i64 %5390, 8
  store i64 %5391, i64* %PC.i257
  %5392 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %5392, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_49d4af, %struct.Memory** %MEMORY
  %loadMem_49d4b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5393 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5394 = getelementptr inbounds %struct.GPR, %struct.GPR* %5393, i32 0, i32 33
  %5395 = getelementptr inbounds %struct.Reg, %struct.Reg* %5394, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %5395 to i64*
  %5396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5397 = getelementptr inbounds %struct.GPR, %struct.GPR* %5396, i32 0, i32 1
  %5398 = getelementptr inbounds %struct.Reg, %struct.Reg* %5397, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %5398 to i64*
  %5399 = load i64, i64* %RAX.i256
  %5400 = load i64, i64* %PC.i255
  %5401 = add i64 %5400, 6
  store i64 %5401, i64* %PC.i255
  %5402 = add i64 3264, %5399
  store i64 %5402, i64* %RAX.i256, align 8
  %5403 = icmp ult i64 %5402, %5399
  %5404 = icmp ult i64 %5402, 3264
  %5405 = or i1 %5403, %5404
  %5406 = zext i1 %5405 to i8
  %5407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5406, i8* %5407, align 1
  %5408 = trunc i64 %5402 to i32
  %5409 = and i32 %5408, 255
  %5410 = call i32 @llvm.ctpop.i32(i32 %5409)
  %5411 = trunc i32 %5410 to i8
  %5412 = and i8 %5411, 1
  %5413 = xor i8 %5412, 1
  %5414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5413, i8* %5414, align 1
  %5415 = xor i64 3264, %5399
  %5416 = xor i64 %5415, %5402
  %5417 = lshr i64 %5416, 4
  %5418 = trunc i64 %5417 to i8
  %5419 = and i8 %5418, 1
  %5420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5419, i8* %5420, align 1
  %5421 = icmp eq i64 %5402, 0
  %5422 = zext i1 %5421 to i8
  %5423 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5422, i8* %5423, align 1
  %5424 = lshr i64 %5402, 63
  %5425 = trunc i64 %5424 to i8
  %5426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5425, i8* %5426, align 1
  %5427 = lshr i64 %5399, 63
  %5428 = xor i64 %5424, %5427
  %5429 = add i64 %5428, %5424
  %5430 = icmp eq i64 %5429, 2
  %5431 = zext i1 %5430 to i8
  %5432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5431, i8* %5432, align 1
  store %struct.Memory* %loadMem_49d4b7, %struct.Memory** %MEMORY
  %loadMem_49d4bd = load %struct.Memory*, %struct.Memory** %MEMORY
  %5433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5434 = getelementptr inbounds %struct.GPR, %struct.GPR* %5433, i32 0, i32 33
  %5435 = getelementptr inbounds %struct.Reg, %struct.Reg* %5434, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %5435 to i64*
  %5436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5437 = getelementptr inbounds %struct.GPR, %struct.GPR* %5436, i32 0, i32 5
  %5438 = getelementptr inbounds %struct.Reg, %struct.Reg* %5437, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %5438 to i64*
  %5439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5440 = getelementptr inbounds %struct.GPR, %struct.GPR* %5439, i32 0, i32 15
  %5441 = getelementptr inbounds %struct.Reg, %struct.Reg* %5440, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %5441 to i64*
  %5442 = load i64, i64* %RBP.i254
  %5443 = sub i64 %5442, 8
  %5444 = load i64, i64* %PC.i252
  %5445 = add i64 %5444, 4
  store i64 %5445, i64* %PC.i252
  %5446 = inttoptr i64 %5443 to i32*
  %5447 = load i32, i32* %5446
  %5448 = sext i32 %5447 to i64
  store i64 %5448, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_49d4bd, %struct.Memory** %MEMORY
  %loadMem_49d4c1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5450 = getelementptr inbounds %struct.GPR, %struct.GPR* %5449, i32 0, i32 33
  %5451 = getelementptr inbounds %struct.Reg, %struct.Reg* %5450, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %5451 to i64*
  %5452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5453 = getelementptr inbounds %struct.GPR, %struct.GPR* %5452, i32 0, i32 5
  %5454 = getelementptr inbounds %struct.Reg, %struct.Reg* %5453, i32 0, i32 0
  %RCX.i251 = bitcast %union.anon* %5454 to i64*
  %5455 = load i64, i64* %RCX.i251
  %5456 = load i64, i64* %PC.i250
  %5457 = add i64 %5456, 4
  store i64 %5457, i64* %PC.i250
  %5458 = shl i64 %5455, 2
  %5459 = icmp slt i64 %5458, 0
  %5460 = shl i64 %5458, 1
  store i64 %5460, i64* %RCX.i251, align 8
  %5461 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %5462 = zext i1 %5459 to i8
  store i8 %5462, i8* %5461, align 1
  %5463 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %5464 = trunc i64 %5460 to i32
  %5465 = and i32 %5464, 254
  %5466 = call i32 @llvm.ctpop.i32(i32 %5465)
  %5467 = trunc i32 %5466 to i8
  %5468 = and i8 %5467, 1
  %5469 = xor i8 %5468, 1
  store i8 %5469, i8* %5463, align 1
  %5470 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5470, align 1
  %5471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5472 = icmp eq i64 %5460, 0
  %5473 = zext i1 %5472 to i8
  store i8 %5473, i8* %5471, align 1
  %5474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5475 = lshr i64 %5460, 63
  %5476 = trunc i64 %5475 to i8
  store i8 %5476, i8* %5474, align 1
  %5477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %5477, align 1
  store %struct.Memory* %loadMem_49d4c1, %struct.Memory** %MEMORY
  %loadMem_49d4c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5479 = getelementptr inbounds %struct.GPR, %struct.GPR* %5478, i32 0, i32 33
  %5480 = getelementptr inbounds %struct.Reg, %struct.Reg* %5479, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %5480 to i64*
  %5481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5482 = getelementptr inbounds %struct.GPR, %struct.GPR* %5481, i32 0, i32 1
  %5483 = getelementptr inbounds %struct.Reg, %struct.Reg* %5482, i32 0, i32 0
  %RAX.i248 = bitcast %union.anon* %5483 to i64*
  %5484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5485 = getelementptr inbounds %struct.GPR, %struct.GPR* %5484, i32 0, i32 5
  %5486 = getelementptr inbounds %struct.Reg, %struct.Reg* %5485, i32 0, i32 0
  %RCX.i249 = bitcast %union.anon* %5486 to i64*
  %5487 = load i64, i64* %RAX.i248
  %5488 = load i64, i64* %RCX.i249
  %5489 = load i64, i64* %PC.i247
  %5490 = add i64 %5489, 3
  store i64 %5490, i64* %PC.i247
  %5491 = add i64 %5488, %5487
  store i64 %5491, i64* %RAX.i248, align 8
  %5492 = icmp ult i64 %5491, %5487
  %5493 = icmp ult i64 %5491, %5488
  %5494 = or i1 %5492, %5493
  %5495 = zext i1 %5494 to i8
  %5496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5495, i8* %5496, align 1
  %5497 = trunc i64 %5491 to i32
  %5498 = and i32 %5497, 255
  %5499 = call i32 @llvm.ctpop.i32(i32 %5498)
  %5500 = trunc i32 %5499 to i8
  %5501 = and i8 %5500, 1
  %5502 = xor i8 %5501, 1
  %5503 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5502, i8* %5503, align 1
  %5504 = xor i64 %5488, %5487
  %5505 = xor i64 %5504, %5491
  %5506 = lshr i64 %5505, 4
  %5507 = trunc i64 %5506 to i8
  %5508 = and i8 %5507, 1
  %5509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5508, i8* %5509, align 1
  %5510 = icmp eq i64 %5491, 0
  %5511 = zext i1 %5510 to i8
  %5512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5511, i8* %5512, align 1
  %5513 = lshr i64 %5491, 63
  %5514 = trunc i64 %5513 to i8
  %5515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5514, i8* %5515, align 1
  %5516 = lshr i64 %5487, 63
  %5517 = lshr i64 %5488, 63
  %5518 = xor i64 %5513, %5516
  %5519 = xor i64 %5513, %5517
  %5520 = add i64 %5518, %5519
  %5521 = icmp eq i64 %5520, 2
  %5522 = zext i1 %5521 to i8
  %5523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5522, i8* %5523, align 1
  store %struct.Memory* %loadMem_49d4c5, %struct.Memory** %MEMORY
  %loadMem_49d4c8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5525 = getelementptr inbounds %struct.GPR, %struct.GPR* %5524, i32 0, i32 33
  %5526 = getelementptr inbounds %struct.Reg, %struct.Reg* %5525, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %5526 to i64*
  %5527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5528 = getelementptr inbounds %struct.GPR, %struct.GPR* %5527, i32 0, i32 5
  %5529 = getelementptr inbounds %struct.Reg, %struct.Reg* %5528, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %5529 to i64*
  %5530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5531 = getelementptr inbounds %struct.GPR, %struct.GPR* %5530, i32 0, i32 15
  %5532 = getelementptr inbounds %struct.Reg, %struct.Reg* %5531, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %5532 to i64*
  %5533 = load i64, i64* %RBP.i246
  %5534 = sub i64 %5533, 4
  %5535 = load i64, i64* %PC.i244
  %5536 = add i64 %5535, 4
  store i64 %5536, i64* %PC.i244
  %5537 = inttoptr i64 %5534 to i32*
  %5538 = load i32, i32* %5537
  %5539 = sext i32 %5538 to i64
  store i64 %5539, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_49d4c8, %struct.Memory** %MEMORY
  %loadMem_49d4cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %5540 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5541 = getelementptr inbounds %struct.GPR, %struct.GPR* %5540, i32 0, i32 33
  %5542 = getelementptr inbounds %struct.Reg, %struct.Reg* %5541, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %5542 to i64*
  %5543 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5544 = getelementptr inbounds %struct.GPR, %struct.GPR* %5543, i32 0, i32 9
  %5545 = getelementptr inbounds %struct.Reg, %struct.Reg* %5544, i32 0, i32 0
  %SI.i241 = bitcast %union.anon* %5545 to i16*
  %5546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5547 = getelementptr inbounds %struct.GPR, %struct.GPR* %5546, i32 0, i32 1
  %5548 = getelementptr inbounds %struct.Reg, %struct.Reg* %5547, i32 0, i32 0
  %RAX.i242 = bitcast %union.anon* %5548 to i64*
  %5549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5550 = getelementptr inbounds %struct.GPR, %struct.GPR* %5549, i32 0, i32 5
  %5551 = getelementptr inbounds %struct.Reg, %struct.Reg* %5550, i32 0, i32 0
  %RCX.i243 = bitcast %union.anon* %5551 to i64*
  %5552 = load i64, i64* %RAX.i242
  %5553 = load i64, i64* %RCX.i243
  %5554 = mul i64 %5553, 2
  %5555 = add i64 %5554, %5552
  %5556 = load i16, i16* %SI.i241
  %5557 = zext i16 %5556 to i64
  %5558 = load i64, i64* %PC.i240
  %5559 = add i64 %5558, 4
  store i64 %5559, i64* %PC.i240
  %5560 = inttoptr i64 %5555 to i16*
  store i16 %5556, i16* %5560
  store %struct.Memory* %loadMem_49d4cc, %struct.Memory** %MEMORY
  %loadMem_49d4d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5561 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5562 = getelementptr inbounds %struct.GPR, %struct.GPR* %5561, i32 0, i32 33
  %5563 = getelementptr inbounds %struct.Reg, %struct.Reg* %5562, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %5563 to i64*
  %5564 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5565 = getelementptr inbounds %struct.GPR, %struct.GPR* %5564, i32 0, i32 1
  %5566 = getelementptr inbounds %struct.Reg, %struct.Reg* %5565, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %5566 to i64*
  %5567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5568 = getelementptr inbounds %struct.GPR, %struct.GPR* %5567, i32 0, i32 15
  %5569 = getelementptr inbounds %struct.Reg, %struct.Reg* %5568, i32 0, i32 0
  %RBP.i239 = bitcast %union.anon* %5569 to i64*
  %5570 = load i64, i64* %RBP.i239
  %5571 = sub i64 %5570, 4
  %5572 = load i64, i64* %PC.i237
  %5573 = add i64 %5572, 3
  store i64 %5573, i64* %PC.i237
  %5574 = inttoptr i64 %5571 to i32*
  %5575 = load i32, i32* %5574
  %5576 = zext i32 %5575 to i64
  store i64 %5576, i64* %RAX.i238, align 8
  store %struct.Memory* %loadMem_49d4d0, %struct.Memory** %MEMORY
  %loadMem_49d4d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5578 = getelementptr inbounds %struct.GPR, %struct.GPR* %5577, i32 0, i32 33
  %5579 = getelementptr inbounds %struct.Reg, %struct.Reg* %5578, i32 0, i32 0
  %PC.i235 = bitcast %union.anon* %5579 to i64*
  %5580 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5581 = getelementptr inbounds %struct.GPR, %struct.GPR* %5580, i32 0, i32 1
  %5582 = getelementptr inbounds %struct.Reg, %struct.Reg* %5581, i32 0, i32 0
  %RAX.i236 = bitcast %union.anon* %5582 to i64*
  %5583 = load i64, i64* %RAX.i236
  %5584 = load i64, i64* %PC.i235
  %5585 = add i64 %5584, 3
  store i64 %5585, i64* %PC.i235
  %5586 = trunc i64 %5583 to i32
  %5587 = add i32 1, %5586
  %5588 = zext i32 %5587 to i64
  store i64 %5588, i64* %RAX.i236, align 8
  %5589 = icmp ult i32 %5587, %5586
  %5590 = icmp ult i32 %5587, 1
  %5591 = or i1 %5589, %5590
  %5592 = zext i1 %5591 to i8
  %5593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5592, i8* %5593, align 1
  %5594 = and i32 %5587, 255
  %5595 = call i32 @llvm.ctpop.i32(i32 %5594)
  %5596 = trunc i32 %5595 to i8
  %5597 = and i8 %5596, 1
  %5598 = xor i8 %5597, 1
  %5599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5598, i8* %5599, align 1
  %5600 = xor i64 1, %5583
  %5601 = trunc i64 %5600 to i32
  %5602 = xor i32 %5601, %5587
  %5603 = lshr i32 %5602, 4
  %5604 = trunc i32 %5603 to i8
  %5605 = and i8 %5604, 1
  %5606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5605, i8* %5606, align 1
  %5607 = icmp eq i32 %5587, 0
  %5608 = zext i1 %5607 to i8
  %5609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5608, i8* %5609, align 1
  %5610 = lshr i32 %5587, 31
  %5611 = trunc i32 %5610 to i8
  %5612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5611, i8* %5612, align 1
  %5613 = lshr i32 %5586, 31
  %5614 = xor i32 %5610, %5613
  %5615 = add i32 %5614, %5610
  %5616 = icmp eq i32 %5615, 2
  %5617 = zext i1 %5616 to i8
  %5618 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5617, i8* %5618, align 1
  store %struct.Memory* %loadMem_49d4d3, %struct.Memory** %MEMORY
  %loadMem_49d4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5620 = getelementptr inbounds %struct.GPR, %struct.GPR* %5619, i32 0, i32 33
  %5621 = getelementptr inbounds %struct.Reg, %struct.Reg* %5620, i32 0, i32 0
  %PC.i232 = bitcast %union.anon* %5621 to i64*
  %5622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5623 = getelementptr inbounds %struct.GPR, %struct.GPR* %5622, i32 0, i32 1
  %5624 = getelementptr inbounds %struct.Reg, %struct.Reg* %5623, i32 0, i32 0
  %EAX.i233 = bitcast %union.anon* %5624 to i32*
  %5625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5626 = getelementptr inbounds %struct.GPR, %struct.GPR* %5625, i32 0, i32 15
  %5627 = getelementptr inbounds %struct.Reg, %struct.Reg* %5626, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %5627 to i64*
  %5628 = load i64, i64* %RBP.i234
  %5629 = sub i64 %5628, 4
  %5630 = load i32, i32* %EAX.i233
  %5631 = zext i32 %5630 to i64
  %5632 = load i64, i64* %PC.i232
  %5633 = add i64 %5632, 3
  store i64 %5633, i64* %PC.i232
  %5634 = inttoptr i64 %5629 to i32*
  store i32 %5630, i32* %5634
  store %struct.Memory* %loadMem_49d4d6, %struct.Memory** %MEMORY
  %loadMem_49d4d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5635 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5636 = getelementptr inbounds %struct.GPR, %struct.GPR* %5635, i32 0, i32 33
  %5637 = getelementptr inbounds %struct.Reg, %struct.Reg* %5636, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %5637 to i64*
  %5638 = load i64, i64* %PC.i231
  %5639 = add i64 %5638, -118
  %5640 = load i64, i64* %PC.i231
  %5641 = add i64 %5640, 5
  store i64 %5641, i64* %PC.i231
  %5642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5639, i64* %5642, align 8
  store %struct.Memory* %loadMem_49d4d9, %struct.Memory** %MEMORY
  br label %block_.L_49d463

block_.L_49d4de:                                  ; preds = %block_.L_49d463
  %loadMem_49d4de = load %struct.Memory*, %struct.Memory** %MEMORY
  %5643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5644 = getelementptr inbounds %struct.GPR, %struct.GPR* %5643, i32 0, i32 33
  %5645 = getelementptr inbounds %struct.Reg, %struct.Reg* %5644, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %5645 to i64*
  %5646 = load i64, i64* %PC.i230
  %5647 = add i64 %5646, 5
  %5648 = load i64, i64* %PC.i230
  %5649 = add i64 %5648, 5
  store i64 %5649, i64* %PC.i230
  %5650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5647, i64* %5650, align 8
  store %struct.Memory* %loadMem_49d4de, %struct.Memory** %MEMORY
  br label %block_.L_49d4e3

block_.L_49d4e3:                                  ; preds = %block_.L_49d4de
  %loadMem_49d4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5651 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5652 = getelementptr inbounds %struct.GPR, %struct.GPR* %5651, i32 0, i32 33
  %5653 = getelementptr inbounds %struct.Reg, %struct.Reg* %5652, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %5653 to i64*
  %5654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5655 = getelementptr inbounds %struct.GPR, %struct.GPR* %5654, i32 0, i32 1
  %5656 = getelementptr inbounds %struct.Reg, %struct.Reg* %5655, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %5656 to i64*
  %5657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5658 = getelementptr inbounds %struct.GPR, %struct.GPR* %5657, i32 0, i32 15
  %5659 = getelementptr inbounds %struct.Reg, %struct.Reg* %5658, i32 0, i32 0
  %RBP.i229 = bitcast %union.anon* %5659 to i64*
  %5660 = load i64, i64* %RBP.i229
  %5661 = sub i64 %5660, 8
  %5662 = load i64, i64* %PC.i227
  %5663 = add i64 %5662, 3
  store i64 %5663, i64* %PC.i227
  %5664 = inttoptr i64 %5661 to i32*
  %5665 = load i32, i32* %5664
  %5666 = zext i32 %5665 to i64
  store i64 %5666, i64* %RAX.i228, align 8
  store %struct.Memory* %loadMem_49d4e3, %struct.Memory** %MEMORY
  %loadMem_49d4e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5667 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5668 = getelementptr inbounds %struct.GPR, %struct.GPR* %5667, i32 0, i32 33
  %5669 = getelementptr inbounds %struct.Reg, %struct.Reg* %5668, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %5669 to i64*
  %5670 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5671 = getelementptr inbounds %struct.GPR, %struct.GPR* %5670, i32 0, i32 1
  %5672 = getelementptr inbounds %struct.Reg, %struct.Reg* %5671, i32 0, i32 0
  %RAX.i226 = bitcast %union.anon* %5672 to i64*
  %5673 = load i64, i64* %RAX.i226
  %5674 = load i64, i64* %PC.i225
  %5675 = add i64 %5674, 3
  store i64 %5675, i64* %PC.i225
  %5676 = trunc i64 %5673 to i32
  %5677 = add i32 1, %5676
  %5678 = zext i32 %5677 to i64
  store i64 %5678, i64* %RAX.i226, align 8
  %5679 = icmp ult i32 %5677, %5676
  %5680 = icmp ult i32 %5677, 1
  %5681 = or i1 %5679, %5680
  %5682 = zext i1 %5681 to i8
  %5683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5682, i8* %5683, align 1
  %5684 = and i32 %5677, 255
  %5685 = call i32 @llvm.ctpop.i32(i32 %5684)
  %5686 = trunc i32 %5685 to i8
  %5687 = and i8 %5686, 1
  %5688 = xor i8 %5687, 1
  %5689 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5688, i8* %5689, align 1
  %5690 = xor i64 1, %5673
  %5691 = trunc i64 %5690 to i32
  %5692 = xor i32 %5691, %5677
  %5693 = lshr i32 %5692, 4
  %5694 = trunc i32 %5693 to i8
  %5695 = and i8 %5694, 1
  %5696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5695, i8* %5696, align 1
  %5697 = icmp eq i32 %5677, 0
  %5698 = zext i1 %5697 to i8
  %5699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5698, i8* %5699, align 1
  %5700 = lshr i32 %5677, 31
  %5701 = trunc i32 %5700 to i8
  %5702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5701, i8* %5702, align 1
  %5703 = lshr i32 %5676, 31
  %5704 = xor i32 %5700, %5703
  %5705 = add i32 %5704, %5700
  %5706 = icmp eq i32 %5705, 2
  %5707 = zext i1 %5706 to i8
  %5708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5707, i8* %5708, align 1
  store %struct.Memory* %loadMem_49d4e6, %struct.Memory** %MEMORY
  %loadMem_49d4e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5710 = getelementptr inbounds %struct.GPR, %struct.GPR* %5709, i32 0, i32 33
  %5711 = getelementptr inbounds %struct.Reg, %struct.Reg* %5710, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %5711 to i64*
  %5712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5713 = getelementptr inbounds %struct.GPR, %struct.GPR* %5712, i32 0, i32 1
  %5714 = getelementptr inbounds %struct.Reg, %struct.Reg* %5713, i32 0, i32 0
  %EAX.i223 = bitcast %union.anon* %5714 to i32*
  %5715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5716 = getelementptr inbounds %struct.GPR, %struct.GPR* %5715, i32 0, i32 15
  %5717 = getelementptr inbounds %struct.Reg, %struct.Reg* %5716, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %5717 to i64*
  %5718 = load i64, i64* %RBP.i224
  %5719 = sub i64 %5718, 8
  %5720 = load i32, i32* %EAX.i223
  %5721 = zext i32 %5720 to i64
  %5722 = load i64, i64* %PC.i222
  %5723 = add i64 %5722, 3
  store i64 %5723, i64* %PC.i222
  %5724 = inttoptr i64 %5719 to i32*
  store i32 %5720, i32* %5724
  store %struct.Memory* %loadMem_49d4e9, %struct.Memory** %MEMORY
  %loadMem_49d4ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %5725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5726 = getelementptr inbounds %struct.GPR, %struct.GPR* %5725, i32 0, i32 33
  %5727 = getelementptr inbounds %struct.Reg, %struct.Reg* %5726, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %5727 to i64*
  %5728 = load i64, i64* %PC.i221
  %5729 = add i64 %5728, -154
  %5730 = load i64, i64* %PC.i221
  %5731 = add i64 %5730, 5
  store i64 %5731, i64* %PC.i221
  %5732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5729, i64* %5732, align 8
  store %struct.Memory* %loadMem_49d4ec, %struct.Memory** %MEMORY
  br label %block_.L_49d452

block_.L_49d4f1:                                  ; preds = %block_.L_49d452
  %loadMem_49d4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5734 = getelementptr inbounds %struct.GPR, %struct.GPR* %5733, i32 0, i32 33
  %5735 = getelementptr inbounds %struct.Reg, %struct.Reg* %5734, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %5735 to i64*
  %5736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5737 = getelementptr inbounds %struct.GPR, %struct.GPR* %5736, i32 0, i32 15
  %5738 = getelementptr inbounds %struct.Reg, %struct.Reg* %5737, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %5738 to i64*
  %5739 = load i64, i64* %RBP.i220
  %5740 = sub i64 %5739, 32
  %5741 = load i64, i64* %PC.i219
  %5742 = add i64 %5741, 4
  store i64 %5742, i64* %PC.i219
  %5743 = inttoptr i64 %5740 to i32*
  %5744 = load i32, i32* %5743
  %5745 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5745, align 1
  %5746 = and i32 %5744, 255
  %5747 = call i32 @llvm.ctpop.i32(i32 %5746)
  %5748 = trunc i32 %5747 to i8
  %5749 = and i8 %5748, 1
  %5750 = xor i8 %5749, 1
  %5751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5750, i8* %5751, align 1
  %5752 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %5752, align 1
  %5753 = icmp eq i32 %5744, 0
  %5754 = zext i1 %5753 to i8
  %5755 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5754, i8* %5755, align 1
  %5756 = lshr i32 %5744, 31
  %5757 = trunc i32 %5756 to i8
  %5758 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5757, i8* %5758, align 1
  %5759 = lshr i32 %5744, 31
  %5760 = xor i32 %5756, %5759
  %5761 = add i32 %5760, %5759
  %5762 = icmp eq i32 %5761, 2
  %5763 = zext i1 %5762 to i8
  %5764 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5763, i8* %5764, align 1
  store %struct.Memory* %loadMem_49d4f1, %struct.Memory** %MEMORY
  %loadMem_49d4f5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5765 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5766 = getelementptr inbounds %struct.GPR, %struct.GPR* %5765, i32 0, i32 33
  %5767 = getelementptr inbounds %struct.Reg, %struct.Reg* %5766, i32 0, i32 0
  %PC.i218 = bitcast %union.anon* %5767 to i64*
  %5768 = load i64, i64* %PC.i218
  %5769 = add i64 %5768, 201
  %5770 = load i64, i64* %PC.i218
  %5771 = add i64 %5770, 6
  %5772 = load i64, i64* %PC.i218
  %5773 = add i64 %5772, 6
  store i64 %5773, i64* %PC.i218
  %5774 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5775 = load i8, i8* %5774, align 1
  store i8 %5775, i8* %BRANCH_TAKEN, align 1
  %5776 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5777 = icmp ne i8 %5775, 0
  %5778 = select i1 %5777, i64 %5769, i64 %5771
  store i64 %5778, i64* %5776, align 8
  store %struct.Memory* %loadMem_49d4f5, %struct.Memory** %MEMORY
  %loadBr_49d4f5 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d4f5 = icmp eq i8 %loadBr_49d4f5, 1
  br i1 %cmpBr_49d4f5, label %block_.L_49d5be, label %block_49d4fb

block_49d4fb:                                     ; preds = %block_.L_49d4f1
  %loadMem_49d4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5780 = getelementptr inbounds %struct.GPR, %struct.GPR* %5779, i32 0, i32 33
  %5781 = getelementptr inbounds %struct.Reg, %struct.Reg* %5780, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %5781 to i64*
  %5782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5783 = getelementptr inbounds %struct.GPR, %struct.GPR* %5782, i32 0, i32 15
  %5784 = getelementptr inbounds %struct.Reg, %struct.Reg* %5783, i32 0, i32 0
  %RBP.i217 = bitcast %union.anon* %5784 to i64*
  %5785 = load i64, i64* %RBP.i217
  %5786 = sub i64 %5785, 8
  %5787 = load i64, i64* %PC.i216
  %5788 = add i64 %5787, 7
  store i64 %5788, i64* %PC.i216
  %5789 = inttoptr i64 %5786 to i32*
  store i32 0, i32* %5789
  store %struct.Memory* %loadMem_49d4fb, %struct.Memory** %MEMORY
  br label %block_.L_49d502

block_.L_49d502:                                  ; preds = %block_.L_49d598, %block_49d4fb
  %loadMem_49d502 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5791 = getelementptr inbounds %struct.GPR, %struct.GPR* %5790, i32 0, i32 33
  %5792 = getelementptr inbounds %struct.Reg, %struct.Reg* %5791, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %5792 to i64*
  %5793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5794 = getelementptr inbounds %struct.GPR, %struct.GPR* %5793, i32 0, i32 15
  %5795 = getelementptr inbounds %struct.Reg, %struct.Reg* %5794, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %5795 to i64*
  %5796 = load i64, i64* %RBP.i215
  %5797 = sub i64 %5796, 8
  %5798 = load i64, i64* %PC.i214
  %5799 = add i64 %5798, 4
  store i64 %5799, i64* %PC.i214
  %5800 = inttoptr i64 %5797 to i32*
  %5801 = load i32, i32* %5800
  %5802 = sub i32 %5801, 4
  %5803 = icmp ult i32 %5801, 4
  %5804 = zext i1 %5803 to i8
  %5805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5804, i8* %5805, align 1
  %5806 = and i32 %5802, 255
  %5807 = call i32 @llvm.ctpop.i32(i32 %5806)
  %5808 = trunc i32 %5807 to i8
  %5809 = and i8 %5808, 1
  %5810 = xor i8 %5809, 1
  %5811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5810, i8* %5811, align 1
  %5812 = xor i32 %5801, 4
  %5813 = xor i32 %5812, %5802
  %5814 = lshr i32 %5813, 4
  %5815 = trunc i32 %5814 to i8
  %5816 = and i8 %5815, 1
  %5817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5816, i8* %5817, align 1
  %5818 = icmp eq i32 %5802, 0
  %5819 = zext i1 %5818 to i8
  %5820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5819, i8* %5820, align 1
  %5821 = lshr i32 %5802, 31
  %5822 = trunc i32 %5821 to i8
  %5823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5822, i8* %5823, align 1
  %5824 = lshr i32 %5801, 31
  %5825 = xor i32 %5821, %5824
  %5826 = add i32 %5825, %5824
  %5827 = icmp eq i32 %5826, 2
  %5828 = zext i1 %5827 to i8
  %5829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5828, i8* %5829, align 1
  store %struct.Memory* %loadMem_49d502, %struct.Memory** %MEMORY
  %loadMem_49d506 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5831 = getelementptr inbounds %struct.GPR, %struct.GPR* %5830, i32 0, i32 33
  %5832 = getelementptr inbounds %struct.Reg, %struct.Reg* %5831, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %5832 to i64*
  %5833 = load i64, i64* %PC.i213
  %5834 = add i64 %5833, 160
  %5835 = load i64, i64* %PC.i213
  %5836 = add i64 %5835, 6
  %5837 = load i64, i64* %PC.i213
  %5838 = add i64 %5837, 6
  store i64 %5838, i64* %PC.i213
  %5839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5840 = load i8, i8* %5839, align 1
  %5841 = icmp ne i8 %5840, 0
  %5842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5843 = load i8, i8* %5842, align 1
  %5844 = icmp ne i8 %5843, 0
  %5845 = xor i1 %5841, %5844
  %5846 = xor i1 %5845, true
  %5847 = zext i1 %5846 to i8
  store i8 %5847, i8* %BRANCH_TAKEN, align 1
  %5848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5849 = select i1 %5845, i64 %5836, i64 %5834
  store i64 %5849, i64* %5848, align 8
  store %struct.Memory* %loadMem_49d506, %struct.Memory** %MEMORY
  %loadBr_49d506 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d506 = icmp eq i8 %loadBr_49d506, 1
  br i1 %cmpBr_49d506, label %block_.L_49d5a6, label %block_49d50c

block_49d50c:                                     ; preds = %block_.L_49d502
  %loadMem_49d50c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5851 = getelementptr inbounds %struct.GPR, %struct.GPR* %5850, i32 0, i32 33
  %5852 = getelementptr inbounds %struct.Reg, %struct.Reg* %5851, i32 0, i32 0
  %PC.i211 = bitcast %union.anon* %5852 to i64*
  %5853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5854 = getelementptr inbounds %struct.GPR, %struct.GPR* %5853, i32 0, i32 15
  %5855 = getelementptr inbounds %struct.Reg, %struct.Reg* %5854, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %5855 to i64*
  %5856 = load i64, i64* %RBP.i212
  %5857 = sub i64 %5856, 4
  %5858 = load i64, i64* %PC.i211
  %5859 = add i64 %5858, 7
  store i64 %5859, i64* %PC.i211
  %5860 = inttoptr i64 %5857 to i32*
  store i32 0, i32* %5860
  store %struct.Memory* %loadMem_49d50c, %struct.Memory** %MEMORY
  br label %block_.L_49d513

block_.L_49d513:                                  ; preds = %block_49d51d, %block_49d50c
  %loadMem_49d513 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5862 = getelementptr inbounds %struct.GPR, %struct.GPR* %5861, i32 0, i32 33
  %5863 = getelementptr inbounds %struct.Reg, %struct.Reg* %5862, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %5863 to i64*
  %5864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5865 = getelementptr inbounds %struct.GPR, %struct.GPR* %5864, i32 0, i32 15
  %5866 = getelementptr inbounds %struct.Reg, %struct.Reg* %5865, i32 0, i32 0
  %RBP.i210 = bitcast %union.anon* %5866 to i64*
  %5867 = load i64, i64* %RBP.i210
  %5868 = sub i64 %5867, 4
  %5869 = load i64, i64* %PC.i209
  %5870 = add i64 %5869, 4
  store i64 %5870, i64* %PC.i209
  %5871 = inttoptr i64 %5868 to i32*
  %5872 = load i32, i32* %5871
  %5873 = sub i32 %5872, 4
  %5874 = icmp ult i32 %5872, 4
  %5875 = zext i1 %5874 to i8
  %5876 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5875, i8* %5876, align 1
  %5877 = and i32 %5873, 255
  %5878 = call i32 @llvm.ctpop.i32(i32 %5877)
  %5879 = trunc i32 %5878 to i8
  %5880 = and i8 %5879, 1
  %5881 = xor i8 %5880, 1
  %5882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5881, i8* %5882, align 1
  %5883 = xor i32 %5872, 4
  %5884 = xor i32 %5883, %5873
  %5885 = lshr i32 %5884, 4
  %5886 = trunc i32 %5885 to i8
  %5887 = and i8 %5886, 1
  %5888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5887, i8* %5888, align 1
  %5889 = icmp eq i32 %5873, 0
  %5890 = zext i1 %5889 to i8
  %5891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5890, i8* %5891, align 1
  %5892 = lshr i32 %5873, 31
  %5893 = trunc i32 %5892 to i8
  %5894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5893, i8* %5894, align 1
  %5895 = lshr i32 %5872, 31
  %5896 = xor i32 %5892, %5895
  %5897 = add i32 %5896, %5895
  %5898 = icmp eq i32 %5897, 2
  %5899 = zext i1 %5898 to i8
  %5900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5899, i8* %5900, align 1
  store %struct.Memory* %loadMem_49d513, %struct.Memory** %MEMORY
  %loadMem_49d517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5902 = getelementptr inbounds %struct.GPR, %struct.GPR* %5901, i32 0, i32 33
  %5903 = getelementptr inbounds %struct.Reg, %struct.Reg* %5902, i32 0, i32 0
  %PC.i208 = bitcast %union.anon* %5903 to i64*
  %5904 = load i64, i64* %PC.i208
  %5905 = add i64 %5904, 124
  %5906 = load i64, i64* %PC.i208
  %5907 = add i64 %5906, 6
  %5908 = load i64, i64* %PC.i208
  %5909 = add i64 %5908, 6
  store i64 %5909, i64* %PC.i208
  %5910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %5911 = load i8, i8* %5910, align 1
  %5912 = icmp ne i8 %5911, 0
  %5913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %5914 = load i8, i8* %5913, align 1
  %5915 = icmp ne i8 %5914, 0
  %5916 = xor i1 %5912, %5915
  %5917 = xor i1 %5916, true
  %5918 = zext i1 %5917 to i8
  store i8 %5918, i8* %BRANCH_TAKEN, align 1
  %5919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5920 = select i1 %5916, i64 %5907, i64 %5905
  store i64 %5920, i64* %5919, align 8
  store %struct.Memory* %loadMem_49d517, %struct.Memory** %MEMORY
  %loadBr_49d517 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d517 = icmp eq i8 %loadBr_49d517, 1
  br i1 %cmpBr_49d517, label %block_.L_49d593, label %block_49d51d

block_49d51d:                                     ; preds = %block_.L_49d513
  %loadMem_49d51d = load %struct.Memory*, %struct.Memory** %MEMORY
  %5921 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5922 = getelementptr inbounds %struct.GPR, %struct.GPR* %5921, i32 0, i32 33
  %5923 = getelementptr inbounds %struct.Reg, %struct.Reg* %5922, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %5923 to i64*
  %5924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5925 = getelementptr inbounds %struct.GPR, %struct.GPR* %5924, i32 0, i32 1
  %5926 = getelementptr inbounds %struct.Reg, %struct.Reg* %5925, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %5926 to i64*
  %5927 = load i64, i64* %PC.i206
  %5928 = add i64 %5927, 8
  store i64 %5928, i64* %PC.i206
  %5929 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %5929, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_49d51d, %struct.Memory** %MEMORY
  %loadMem_49d525 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5931 = getelementptr inbounds %struct.GPR, %struct.GPR* %5930, i32 0, i32 33
  %5932 = getelementptr inbounds %struct.Reg, %struct.Reg* %5931, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %5932 to i64*
  %5933 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5934 = getelementptr inbounds %struct.GPR, %struct.GPR* %5933, i32 0, i32 1
  %5935 = getelementptr inbounds %struct.Reg, %struct.Reg* %5934, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %5935 to i64*
  %5936 = load i64, i64* %RAX.i205
  %5937 = add i64 %5936, 6480
  %5938 = load i64, i64* %PC.i204
  %5939 = add i64 %5938, 7
  store i64 %5939, i64* %PC.i204
  %5940 = inttoptr i64 %5937 to i64*
  %5941 = load i64, i64* %5940
  store i64 %5941, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_49d525, %struct.Memory** %MEMORY
  %loadMem_49d52c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5943 = getelementptr inbounds %struct.GPR, %struct.GPR* %5942, i32 0, i32 33
  %5944 = getelementptr inbounds %struct.Reg, %struct.Reg* %5943, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %5944 to i64*
  %5945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5946 = getelementptr inbounds %struct.GPR, %struct.GPR* %5945, i32 0, i32 1
  %5947 = getelementptr inbounds %struct.Reg, %struct.Reg* %5946, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %5947 to i64*
  %5948 = load i64, i64* %RAX.i203
  %5949 = add i64 %5948, 8
  %5950 = load i64, i64* %PC.i202
  %5951 = add i64 %5950, 4
  store i64 %5951, i64* %PC.i202
  %5952 = inttoptr i64 %5949 to i64*
  %5953 = load i64, i64* %5952
  store i64 %5953, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_49d52c, %struct.Memory** %MEMORY
  %loadMem_49d530 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5955 = getelementptr inbounds %struct.GPR, %struct.GPR* %5954, i32 0, i32 33
  %5956 = getelementptr inbounds %struct.Reg, %struct.Reg* %5955, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %5956 to i64*
  %5957 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5958 = getelementptr inbounds %struct.GPR, %struct.GPR* %5957, i32 0, i32 5
  %5959 = getelementptr inbounds %struct.Reg, %struct.Reg* %5958, i32 0, i32 0
  %RCX.i201 = bitcast %union.anon* %5959 to i64*
  %5960 = load i64, i64* %PC.i200
  %5961 = add i64 %5960, 8
  store i64 %5961, i64* %PC.i200
  %5962 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %5962, i64* %RCX.i201, align 8
  store %struct.Memory* %loadMem_49d530, %struct.Memory** %MEMORY
  %loadMem_49d538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5964 = getelementptr inbounds %struct.GPR, %struct.GPR* %5963, i32 0, i32 33
  %5965 = getelementptr inbounds %struct.Reg, %struct.Reg* %5964, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %5965 to i64*
  %5966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5967 = getelementptr inbounds %struct.GPR, %struct.GPR* %5966, i32 0, i32 5
  %5968 = getelementptr inbounds %struct.Reg, %struct.Reg* %5967, i32 0, i32 0
  %RCX.i198 = bitcast %union.anon* %5968 to i64*
  %5969 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5970 = getelementptr inbounds %struct.GPR, %struct.GPR* %5969, i32 0, i32 7
  %5971 = getelementptr inbounds %struct.Reg, %struct.Reg* %5970, i32 0, i32 0
  %RDX.i199 = bitcast %union.anon* %5971 to i64*
  %5972 = load i64, i64* %RCX.i198
  %5973 = add i64 %5972, 144
  %5974 = load i64, i64* %PC.i197
  %5975 = add i64 %5974, 6
  store i64 %5975, i64* %PC.i197
  %5976 = inttoptr i64 %5973 to i32*
  %5977 = load i32, i32* %5976
  %5978 = zext i32 %5977 to i64
  store i64 %5978, i64* %RDX.i199, align 8
  store %struct.Memory* %loadMem_49d538, %struct.Memory** %MEMORY
  %loadMem_49d53e = load %struct.Memory*, %struct.Memory** %MEMORY
  %5979 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5980 = getelementptr inbounds %struct.GPR, %struct.GPR* %5979, i32 0, i32 33
  %5981 = getelementptr inbounds %struct.Reg, %struct.Reg* %5980, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %5981 to i64*
  %5982 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5983 = getelementptr inbounds %struct.GPR, %struct.GPR* %5982, i32 0, i32 7
  %5984 = getelementptr inbounds %struct.Reg, %struct.Reg* %5983, i32 0, i32 0
  %RDX.i195 = bitcast %union.anon* %5984 to i64*
  %5985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5986 = getelementptr inbounds %struct.GPR, %struct.GPR* %5985, i32 0, i32 15
  %5987 = getelementptr inbounds %struct.Reg, %struct.Reg* %5986, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %5987 to i64*
  %5988 = load i64, i64* %RDX.i195
  %5989 = load i64, i64* %RBP.i196
  %5990 = sub i64 %5989, 4
  %5991 = load i64, i64* %PC.i194
  %5992 = add i64 %5991, 3
  store i64 %5992, i64* %PC.i194
  %5993 = trunc i64 %5988 to i32
  %5994 = inttoptr i64 %5990 to i32*
  %5995 = load i32, i32* %5994
  %5996 = add i32 %5995, %5993
  %5997 = zext i32 %5996 to i64
  store i64 %5997, i64* %RDX.i195, align 8
  %5998 = icmp ult i32 %5996, %5993
  %5999 = icmp ult i32 %5996, %5995
  %6000 = or i1 %5998, %5999
  %6001 = zext i1 %6000 to i8
  %6002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6001, i8* %6002, align 1
  %6003 = and i32 %5996, 255
  %6004 = call i32 @llvm.ctpop.i32(i32 %6003)
  %6005 = trunc i32 %6004 to i8
  %6006 = and i8 %6005, 1
  %6007 = xor i8 %6006, 1
  %6008 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6007, i8* %6008, align 1
  %6009 = xor i32 %5995, %5993
  %6010 = xor i32 %6009, %5996
  %6011 = lshr i32 %6010, 4
  %6012 = trunc i32 %6011 to i8
  %6013 = and i8 %6012, 1
  %6014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6013, i8* %6014, align 1
  %6015 = icmp eq i32 %5996, 0
  %6016 = zext i1 %6015 to i8
  %6017 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6016, i8* %6017, align 1
  %6018 = lshr i32 %5996, 31
  %6019 = trunc i32 %6018 to i8
  %6020 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6019, i8* %6020, align 1
  %6021 = lshr i32 %5993, 31
  %6022 = lshr i32 %5995, 31
  %6023 = xor i32 %6018, %6021
  %6024 = xor i32 %6018, %6022
  %6025 = add i32 %6023, %6024
  %6026 = icmp eq i32 %6025, 2
  %6027 = zext i1 %6026 to i8
  %6028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6027, i8* %6028, align 1
  store %struct.Memory* %loadMem_49d53e, %struct.Memory** %MEMORY
  %loadMem_49d541 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6029 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6030 = getelementptr inbounds %struct.GPR, %struct.GPR* %6029, i32 0, i32 33
  %6031 = getelementptr inbounds %struct.Reg, %struct.Reg* %6030, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %6031 to i64*
  %6032 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6033 = getelementptr inbounds %struct.GPR, %struct.GPR* %6032, i32 0, i32 7
  %6034 = getelementptr inbounds %struct.Reg, %struct.Reg* %6033, i32 0, i32 0
  %EDX.i192 = bitcast %union.anon* %6034 to i32*
  %6035 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6036 = getelementptr inbounds %struct.GPR, %struct.GPR* %6035, i32 0, i32 5
  %6037 = getelementptr inbounds %struct.Reg, %struct.Reg* %6036, i32 0, i32 0
  %RCX.i193 = bitcast %union.anon* %6037 to i64*
  %6038 = load i32, i32* %EDX.i192
  %6039 = zext i32 %6038 to i64
  %6040 = load i64, i64* %PC.i191
  %6041 = add i64 %6040, 3
  store i64 %6041, i64* %PC.i191
  %6042 = shl i64 %6039, 32
  %6043 = ashr exact i64 %6042, 32
  store i64 %6043, i64* %RCX.i193, align 8
  store %struct.Memory* %loadMem_49d541, %struct.Memory** %MEMORY
  %loadMem_49d544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6045 = getelementptr inbounds %struct.GPR, %struct.GPR* %6044, i32 0, i32 33
  %6046 = getelementptr inbounds %struct.Reg, %struct.Reg* %6045, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %6046 to i64*
  %6047 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6048 = getelementptr inbounds %struct.GPR, %struct.GPR* %6047, i32 0, i32 1
  %6049 = getelementptr inbounds %struct.Reg, %struct.Reg* %6048, i32 0, i32 0
  %RAX.i189 = bitcast %union.anon* %6049 to i64*
  %6050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6051 = getelementptr inbounds %struct.GPR, %struct.GPR* %6050, i32 0, i32 5
  %6052 = getelementptr inbounds %struct.Reg, %struct.Reg* %6051, i32 0, i32 0
  %RCX.i190 = bitcast %union.anon* %6052 to i64*
  %6053 = load i64, i64* %RAX.i189
  %6054 = load i64, i64* %RCX.i190
  %6055 = mul i64 %6054, 8
  %6056 = add i64 %6055, %6053
  %6057 = load i64, i64* %PC.i188
  %6058 = add i64 %6057, 4
  store i64 %6058, i64* %PC.i188
  %6059 = inttoptr i64 %6056 to i64*
  %6060 = load i64, i64* %6059
  store i64 %6060, i64* %RAX.i189, align 8
  store %struct.Memory* %loadMem_49d544, %struct.Memory** %MEMORY
  %loadMem_49d548 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6062 = getelementptr inbounds %struct.GPR, %struct.GPR* %6061, i32 0, i32 33
  %6063 = getelementptr inbounds %struct.Reg, %struct.Reg* %6062, i32 0, i32 0
  %PC.i186 = bitcast %union.anon* %6063 to i64*
  %6064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6065 = getelementptr inbounds %struct.GPR, %struct.GPR* %6064, i32 0, i32 5
  %6066 = getelementptr inbounds %struct.Reg, %struct.Reg* %6065, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %6066 to i64*
  %6067 = load i64, i64* %PC.i186
  %6068 = add i64 %6067, 8
  store i64 %6068, i64* %PC.i186
  %6069 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6069, i64* %RCX.i187, align 8
  store %struct.Memory* %loadMem_49d548, %struct.Memory** %MEMORY
  %loadMem_49d550 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6070 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6071 = getelementptr inbounds %struct.GPR, %struct.GPR* %6070, i32 0, i32 33
  %6072 = getelementptr inbounds %struct.Reg, %struct.Reg* %6071, i32 0, i32 0
  %PC.i183 = bitcast %union.anon* %6072 to i64*
  %6073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6074 = getelementptr inbounds %struct.GPR, %struct.GPR* %6073, i32 0, i32 5
  %6075 = getelementptr inbounds %struct.Reg, %struct.Reg* %6074, i32 0, i32 0
  %RCX.i184 = bitcast %union.anon* %6075 to i64*
  %6076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6077 = getelementptr inbounds %struct.GPR, %struct.GPR* %6076, i32 0, i32 7
  %6078 = getelementptr inbounds %struct.Reg, %struct.Reg* %6077, i32 0, i32 0
  %RDX.i185 = bitcast %union.anon* %6078 to i64*
  %6079 = load i64, i64* %RCX.i184
  %6080 = add i64 %6079, 148
  %6081 = load i64, i64* %PC.i183
  %6082 = add i64 %6081, 6
  store i64 %6082, i64* %PC.i183
  %6083 = inttoptr i64 %6080 to i32*
  %6084 = load i32, i32* %6083
  %6085 = zext i32 %6084 to i64
  store i64 %6085, i64* %RDX.i185, align 8
  store %struct.Memory* %loadMem_49d550, %struct.Memory** %MEMORY
  %loadMem_49d556 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6086 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6087 = getelementptr inbounds %struct.GPR, %struct.GPR* %6086, i32 0, i32 33
  %6088 = getelementptr inbounds %struct.Reg, %struct.Reg* %6087, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %6088 to i64*
  %6089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6090 = getelementptr inbounds %struct.GPR, %struct.GPR* %6089, i32 0, i32 7
  %6091 = getelementptr inbounds %struct.Reg, %struct.Reg* %6090, i32 0, i32 0
  %RDX.i181 = bitcast %union.anon* %6091 to i64*
  %6092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6093 = getelementptr inbounds %struct.GPR, %struct.GPR* %6092, i32 0, i32 15
  %6094 = getelementptr inbounds %struct.Reg, %struct.Reg* %6093, i32 0, i32 0
  %RBP.i182 = bitcast %union.anon* %6094 to i64*
  %6095 = load i64, i64* %RDX.i181
  %6096 = load i64, i64* %RBP.i182
  %6097 = sub i64 %6096, 8
  %6098 = load i64, i64* %PC.i180
  %6099 = add i64 %6098, 3
  store i64 %6099, i64* %PC.i180
  %6100 = trunc i64 %6095 to i32
  %6101 = inttoptr i64 %6097 to i32*
  %6102 = load i32, i32* %6101
  %6103 = add i32 %6102, %6100
  %6104 = zext i32 %6103 to i64
  store i64 %6104, i64* %RDX.i181, align 8
  %6105 = icmp ult i32 %6103, %6100
  %6106 = icmp ult i32 %6103, %6102
  %6107 = or i1 %6105, %6106
  %6108 = zext i1 %6107 to i8
  %6109 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6108, i8* %6109, align 1
  %6110 = and i32 %6103, 255
  %6111 = call i32 @llvm.ctpop.i32(i32 %6110)
  %6112 = trunc i32 %6111 to i8
  %6113 = and i8 %6112, 1
  %6114 = xor i8 %6113, 1
  %6115 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6114, i8* %6115, align 1
  %6116 = xor i32 %6102, %6100
  %6117 = xor i32 %6116, %6103
  %6118 = lshr i32 %6117, 4
  %6119 = trunc i32 %6118 to i8
  %6120 = and i8 %6119, 1
  %6121 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6120, i8* %6121, align 1
  %6122 = icmp eq i32 %6103, 0
  %6123 = zext i1 %6122 to i8
  %6124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6123, i8* %6124, align 1
  %6125 = lshr i32 %6103, 31
  %6126 = trunc i32 %6125 to i8
  %6127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6126, i8* %6127, align 1
  %6128 = lshr i32 %6100, 31
  %6129 = lshr i32 %6102, 31
  %6130 = xor i32 %6125, %6128
  %6131 = xor i32 %6125, %6129
  %6132 = add i32 %6130, %6131
  %6133 = icmp eq i32 %6132, 2
  %6134 = zext i1 %6133 to i8
  %6135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6134, i8* %6135, align 1
  store %struct.Memory* %loadMem_49d556, %struct.Memory** %MEMORY
  %loadMem_49d559 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6137 = getelementptr inbounds %struct.GPR, %struct.GPR* %6136, i32 0, i32 33
  %6138 = getelementptr inbounds %struct.Reg, %struct.Reg* %6137, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %6138 to i64*
  %6139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6140 = getelementptr inbounds %struct.GPR, %struct.GPR* %6139, i32 0, i32 7
  %6141 = getelementptr inbounds %struct.Reg, %struct.Reg* %6140, i32 0, i32 0
  %EDX.i178 = bitcast %union.anon* %6141 to i32*
  %6142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6143 = getelementptr inbounds %struct.GPR, %struct.GPR* %6142, i32 0, i32 5
  %6144 = getelementptr inbounds %struct.Reg, %struct.Reg* %6143, i32 0, i32 0
  %RCX.i179 = bitcast %union.anon* %6144 to i64*
  %6145 = load i32, i32* %EDX.i178
  %6146 = zext i32 %6145 to i64
  %6147 = load i64, i64* %PC.i177
  %6148 = add i64 %6147, 3
  store i64 %6148, i64* %PC.i177
  %6149 = shl i64 %6146, 32
  %6150 = ashr exact i64 %6149, 32
  store i64 %6150, i64* %RCX.i179, align 8
  store %struct.Memory* %loadMem_49d559, %struct.Memory** %MEMORY
  %loadMem_49d55c = load %struct.Memory*, %struct.Memory** %MEMORY
  %6151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6152 = getelementptr inbounds %struct.GPR, %struct.GPR* %6151, i32 0, i32 33
  %6153 = getelementptr inbounds %struct.Reg, %struct.Reg* %6152, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %6153 to i64*
  %6154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6155 = getelementptr inbounds %struct.GPR, %struct.GPR* %6154, i32 0, i32 9
  %6156 = getelementptr inbounds %struct.Reg, %struct.Reg* %6155, i32 0, i32 0
  %SI.i174 = bitcast %union.anon* %6156 to i16*
  %6157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6158 = getelementptr inbounds %struct.GPR, %struct.GPR* %6157, i32 0, i32 1
  %6159 = getelementptr inbounds %struct.Reg, %struct.Reg* %6158, i32 0, i32 0
  %RAX.i175 = bitcast %union.anon* %6159 to i64*
  %6160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6161 = getelementptr inbounds %struct.GPR, %struct.GPR* %6160, i32 0, i32 5
  %6162 = getelementptr inbounds %struct.Reg, %struct.Reg* %6161, i32 0, i32 0
  %RCX.i176 = bitcast %union.anon* %6162 to i64*
  %6163 = load i64, i64* %RAX.i175
  %6164 = load i64, i64* %RCX.i176
  %6165 = mul i64 %6164, 2
  %6166 = add i64 %6165, %6163
  %6167 = load i64, i64* %PC.i173
  %6168 = add i64 %6167, 4
  store i64 %6168, i64* %PC.i173
  %6169 = inttoptr i64 %6166 to i16*
  %6170 = load i16, i16* %6169
  store i16 %6170, i16* %SI.i174, align 2
  store %struct.Memory* %loadMem_49d55c, %struct.Memory** %MEMORY
  %loadMem_49d560 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6172 = getelementptr inbounds %struct.GPR, %struct.GPR* %6171, i32 0, i32 33
  %6173 = getelementptr inbounds %struct.Reg, %struct.Reg* %6172, i32 0, i32 0
  %PC.i171 = bitcast %union.anon* %6173 to i64*
  %6174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6175 = getelementptr inbounds %struct.GPR, %struct.GPR* %6174, i32 0, i32 1
  %6176 = getelementptr inbounds %struct.Reg, %struct.Reg* %6175, i32 0, i32 0
  %RAX.i172 = bitcast %union.anon* %6176 to i64*
  %6177 = load i64, i64* %PC.i171
  %6178 = add i64 %6177, 8
  store i64 %6178, i64* %PC.i171
  %6179 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %6179, i64* %RAX.i172, align 8
  store %struct.Memory* %loadMem_49d560, %struct.Memory** %MEMORY
  %loadMem_49d568 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6181 = getelementptr inbounds %struct.GPR, %struct.GPR* %6180, i32 0, i32 33
  %6182 = getelementptr inbounds %struct.Reg, %struct.Reg* %6181, i32 0, i32 0
  %PC.i169 = bitcast %union.anon* %6182 to i64*
  %6183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6184 = getelementptr inbounds %struct.GPR, %struct.GPR* %6183, i32 0, i32 1
  %6185 = getelementptr inbounds %struct.Reg, %struct.Reg* %6184, i32 0, i32 0
  %RAX.i170 = bitcast %union.anon* %6185 to i64*
  %6186 = load i64, i64* %RAX.i170
  %6187 = load i64, i64* %PC.i169
  %6188 = add i64 %6187, 6
  store i64 %6188, i64* %PC.i169
  %6189 = add i64 3264, %6186
  store i64 %6189, i64* %RAX.i170, align 8
  %6190 = icmp ult i64 %6189, %6186
  %6191 = icmp ult i64 %6189, 3264
  %6192 = or i1 %6190, %6191
  %6193 = zext i1 %6192 to i8
  %6194 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6193, i8* %6194, align 1
  %6195 = trunc i64 %6189 to i32
  %6196 = and i32 %6195, 255
  %6197 = call i32 @llvm.ctpop.i32(i32 %6196)
  %6198 = trunc i32 %6197 to i8
  %6199 = and i8 %6198, 1
  %6200 = xor i8 %6199, 1
  %6201 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6200, i8* %6201, align 1
  %6202 = xor i64 3264, %6186
  %6203 = xor i64 %6202, %6189
  %6204 = lshr i64 %6203, 4
  %6205 = trunc i64 %6204 to i8
  %6206 = and i8 %6205, 1
  %6207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6206, i8* %6207, align 1
  %6208 = icmp eq i64 %6189, 0
  %6209 = zext i1 %6208 to i8
  %6210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6209, i8* %6210, align 1
  %6211 = lshr i64 %6189, 63
  %6212 = trunc i64 %6211 to i8
  %6213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6212, i8* %6213, align 1
  %6214 = lshr i64 %6186, 63
  %6215 = xor i64 %6211, %6214
  %6216 = add i64 %6215, %6211
  %6217 = icmp eq i64 %6216, 2
  %6218 = zext i1 %6217 to i8
  %6219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6218, i8* %6219, align 1
  store %struct.Memory* %loadMem_49d568, %struct.Memory** %MEMORY
  %loadMem_49d56e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6221 = getelementptr inbounds %struct.GPR, %struct.GPR* %6220, i32 0, i32 33
  %6222 = getelementptr inbounds %struct.Reg, %struct.Reg* %6221, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %6222 to i64*
  %6223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6224 = getelementptr inbounds %struct.GPR, %struct.GPR* %6223, i32 0, i32 1
  %6225 = getelementptr inbounds %struct.Reg, %struct.Reg* %6224, i32 0, i32 0
  %RAX.i168 = bitcast %union.anon* %6225 to i64*
  %6226 = load i64, i64* %RAX.i168
  %6227 = load i64, i64* %PC.i167
  %6228 = add i64 %6227, 4
  store i64 %6228, i64* %PC.i167
  %6229 = add i64 32, %6226
  store i64 %6229, i64* %RAX.i168, align 8
  %6230 = icmp ult i64 %6229, %6226
  %6231 = icmp ult i64 %6229, 32
  %6232 = or i1 %6230, %6231
  %6233 = zext i1 %6232 to i8
  %6234 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6233, i8* %6234, align 1
  %6235 = trunc i64 %6229 to i32
  %6236 = and i32 %6235, 255
  %6237 = call i32 @llvm.ctpop.i32(i32 %6236)
  %6238 = trunc i32 %6237 to i8
  %6239 = and i8 %6238, 1
  %6240 = xor i8 %6239, 1
  %6241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6240, i8* %6241, align 1
  %6242 = xor i64 32, %6226
  %6243 = xor i64 %6242, %6229
  %6244 = lshr i64 %6243, 4
  %6245 = trunc i64 %6244 to i8
  %6246 = and i8 %6245, 1
  %6247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6246, i8* %6247, align 1
  %6248 = icmp eq i64 %6229, 0
  %6249 = zext i1 %6248 to i8
  %6250 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6249, i8* %6250, align 1
  %6251 = lshr i64 %6229, 63
  %6252 = trunc i64 %6251 to i8
  %6253 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6252, i8* %6253, align 1
  %6254 = lshr i64 %6226, 63
  %6255 = xor i64 %6251, %6254
  %6256 = add i64 %6255, %6251
  %6257 = icmp eq i64 %6256, 2
  %6258 = zext i1 %6257 to i8
  %6259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6258, i8* %6259, align 1
  store %struct.Memory* %loadMem_49d56e, %struct.Memory** %MEMORY
  %loadMem_49d572 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6261 = getelementptr inbounds %struct.GPR, %struct.GPR* %6260, i32 0, i32 33
  %6262 = getelementptr inbounds %struct.Reg, %struct.Reg* %6261, i32 0, i32 0
  %PC.i164 = bitcast %union.anon* %6262 to i64*
  %6263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6264 = getelementptr inbounds %struct.GPR, %struct.GPR* %6263, i32 0, i32 5
  %6265 = getelementptr inbounds %struct.Reg, %struct.Reg* %6264, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %6265 to i64*
  %6266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6267 = getelementptr inbounds %struct.GPR, %struct.GPR* %6266, i32 0, i32 15
  %6268 = getelementptr inbounds %struct.Reg, %struct.Reg* %6267, i32 0, i32 0
  %RBP.i166 = bitcast %union.anon* %6268 to i64*
  %6269 = load i64, i64* %RBP.i166
  %6270 = sub i64 %6269, 8
  %6271 = load i64, i64* %PC.i164
  %6272 = add i64 %6271, 4
  store i64 %6272, i64* %PC.i164
  %6273 = inttoptr i64 %6270 to i32*
  %6274 = load i32, i32* %6273
  %6275 = sext i32 %6274 to i64
  store i64 %6275, i64* %RCX.i165, align 8
  store %struct.Memory* %loadMem_49d572, %struct.Memory** %MEMORY
  %loadMem_49d576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6277 = getelementptr inbounds %struct.GPR, %struct.GPR* %6276, i32 0, i32 33
  %6278 = getelementptr inbounds %struct.Reg, %struct.Reg* %6277, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %6278 to i64*
  %6279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6280 = getelementptr inbounds %struct.GPR, %struct.GPR* %6279, i32 0, i32 5
  %6281 = getelementptr inbounds %struct.Reg, %struct.Reg* %6280, i32 0, i32 0
  %RCX.i163 = bitcast %union.anon* %6281 to i64*
  %6282 = load i64, i64* %RCX.i163
  %6283 = load i64, i64* %PC.i162
  %6284 = add i64 %6283, 4
  store i64 %6284, i64* %PC.i162
  %6285 = shl i64 %6282, 2
  %6286 = icmp slt i64 %6285, 0
  %6287 = shl i64 %6285, 1
  store i64 %6287, i64* %RCX.i163, align 8
  %6288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %6289 = zext i1 %6286 to i8
  store i8 %6289, i8* %6288, align 1
  %6290 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %6291 = trunc i64 %6287 to i32
  %6292 = and i32 %6291, 254
  %6293 = call i32 @llvm.ctpop.i32(i32 %6292)
  %6294 = trunc i32 %6293 to i8
  %6295 = and i8 %6294, 1
  %6296 = xor i8 %6295, 1
  store i8 %6296, i8* %6290, align 1
  %6297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %6297, align 1
  %6298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %6299 = icmp eq i64 %6287, 0
  %6300 = zext i1 %6299 to i8
  store i8 %6300, i8* %6298, align 1
  %6301 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6302 = lshr i64 %6287, 63
  %6303 = trunc i64 %6302 to i8
  store i8 %6303, i8* %6301, align 1
  %6304 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %6304, align 1
  store %struct.Memory* %loadMem_49d576, %struct.Memory** %MEMORY
  %loadMem_49d57a = load %struct.Memory*, %struct.Memory** %MEMORY
  %6305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6306 = getelementptr inbounds %struct.GPR, %struct.GPR* %6305, i32 0, i32 33
  %6307 = getelementptr inbounds %struct.Reg, %struct.Reg* %6306, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %6307 to i64*
  %6308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6309 = getelementptr inbounds %struct.GPR, %struct.GPR* %6308, i32 0, i32 1
  %6310 = getelementptr inbounds %struct.Reg, %struct.Reg* %6309, i32 0, i32 0
  %RAX.i160 = bitcast %union.anon* %6310 to i64*
  %6311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6312 = getelementptr inbounds %struct.GPR, %struct.GPR* %6311, i32 0, i32 5
  %6313 = getelementptr inbounds %struct.Reg, %struct.Reg* %6312, i32 0, i32 0
  %RCX.i161 = bitcast %union.anon* %6313 to i64*
  %6314 = load i64, i64* %RAX.i160
  %6315 = load i64, i64* %RCX.i161
  %6316 = load i64, i64* %PC.i159
  %6317 = add i64 %6316, 3
  store i64 %6317, i64* %PC.i159
  %6318 = add i64 %6315, %6314
  store i64 %6318, i64* %RAX.i160, align 8
  %6319 = icmp ult i64 %6318, %6314
  %6320 = icmp ult i64 %6318, %6315
  %6321 = or i1 %6319, %6320
  %6322 = zext i1 %6321 to i8
  %6323 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6322, i8* %6323, align 1
  %6324 = trunc i64 %6318 to i32
  %6325 = and i32 %6324, 255
  %6326 = call i32 @llvm.ctpop.i32(i32 %6325)
  %6327 = trunc i32 %6326 to i8
  %6328 = and i8 %6327, 1
  %6329 = xor i8 %6328, 1
  %6330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6329, i8* %6330, align 1
  %6331 = xor i64 %6315, %6314
  %6332 = xor i64 %6331, %6318
  %6333 = lshr i64 %6332, 4
  %6334 = trunc i64 %6333 to i8
  %6335 = and i8 %6334, 1
  %6336 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6335, i8* %6336, align 1
  %6337 = icmp eq i64 %6318, 0
  %6338 = zext i1 %6337 to i8
  %6339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6338, i8* %6339, align 1
  %6340 = lshr i64 %6318, 63
  %6341 = trunc i64 %6340 to i8
  %6342 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6341, i8* %6342, align 1
  %6343 = lshr i64 %6314, 63
  %6344 = lshr i64 %6315, 63
  %6345 = xor i64 %6340, %6343
  %6346 = xor i64 %6340, %6344
  %6347 = add i64 %6345, %6346
  %6348 = icmp eq i64 %6347, 2
  %6349 = zext i1 %6348 to i8
  %6350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6349, i8* %6350, align 1
  store %struct.Memory* %loadMem_49d57a, %struct.Memory** %MEMORY
  %loadMem_49d57d = load %struct.Memory*, %struct.Memory** %MEMORY
  %6351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6352 = getelementptr inbounds %struct.GPR, %struct.GPR* %6351, i32 0, i32 33
  %6353 = getelementptr inbounds %struct.Reg, %struct.Reg* %6352, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %6353 to i64*
  %6354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6355 = getelementptr inbounds %struct.GPR, %struct.GPR* %6354, i32 0, i32 5
  %6356 = getelementptr inbounds %struct.Reg, %struct.Reg* %6355, i32 0, i32 0
  %RCX.i157 = bitcast %union.anon* %6356 to i64*
  %6357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6358 = getelementptr inbounds %struct.GPR, %struct.GPR* %6357, i32 0, i32 15
  %6359 = getelementptr inbounds %struct.Reg, %struct.Reg* %6358, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %6359 to i64*
  %6360 = load i64, i64* %RBP.i158
  %6361 = sub i64 %6360, 4
  %6362 = load i64, i64* %PC.i156
  %6363 = add i64 %6362, 4
  store i64 %6363, i64* %PC.i156
  %6364 = inttoptr i64 %6361 to i32*
  %6365 = load i32, i32* %6364
  %6366 = sext i32 %6365 to i64
  store i64 %6366, i64* %RCX.i157, align 8
  store %struct.Memory* %loadMem_49d57d, %struct.Memory** %MEMORY
  %loadMem_49d581 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6368 = getelementptr inbounds %struct.GPR, %struct.GPR* %6367, i32 0, i32 33
  %6369 = getelementptr inbounds %struct.Reg, %struct.Reg* %6368, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %6369 to i64*
  %6370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6371 = getelementptr inbounds %struct.GPR, %struct.GPR* %6370, i32 0, i32 9
  %6372 = getelementptr inbounds %struct.Reg, %struct.Reg* %6371, i32 0, i32 0
  %SI.i = bitcast %union.anon* %6372 to i16*
  %6373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6374 = getelementptr inbounds %struct.GPR, %struct.GPR* %6373, i32 0, i32 1
  %6375 = getelementptr inbounds %struct.Reg, %struct.Reg* %6374, i32 0, i32 0
  %RAX.i154 = bitcast %union.anon* %6375 to i64*
  %6376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6377 = getelementptr inbounds %struct.GPR, %struct.GPR* %6376, i32 0, i32 5
  %6378 = getelementptr inbounds %struct.Reg, %struct.Reg* %6377, i32 0, i32 0
  %RCX.i155 = bitcast %union.anon* %6378 to i64*
  %6379 = load i64, i64* %RAX.i154
  %6380 = load i64, i64* %RCX.i155
  %6381 = mul i64 %6380, 2
  %6382 = add i64 %6381, %6379
  %6383 = load i16, i16* %SI.i
  %6384 = zext i16 %6383 to i64
  %6385 = load i64, i64* %PC.i153
  %6386 = add i64 %6385, 4
  store i64 %6386, i64* %PC.i153
  %6387 = inttoptr i64 %6382 to i16*
  store i16 %6383, i16* %6387
  store %struct.Memory* %loadMem_49d581, %struct.Memory** %MEMORY
  %loadMem_49d585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6389 = getelementptr inbounds %struct.GPR, %struct.GPR* %6388, i32 0, i32 33
  %6390 = getelementptr inbounds %struct.Reg, %struct.Reg* %6389, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %6390 to i64*
  %6391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6392 = getelementptr inbounds %struct.GPR, %struct.GPR* %6391, i32 0, i32 1
  %6393 = getelementptr inbounds %struct.Reg, %struct.Reg* %6392, i32 0, i32 0
  %RAX.i151 = bitcast %union.anon* %6393 to i64*
  %6394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6395 = getelementptr inbounds %struct.GPR, %struct.GPR* %6394, i32 0, i32 15
  %6396 = getelementptr inbounds %struct.Reg, %struct.Reg* %6395, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %6396 to i64*
  %6397 = load i64, i64* %RBP.i152
  %6398 = sub i64 %6397, 4
  %6399 = load i64, i64* %PC.i150
  %6400 = add i64 %6399, 3
  store i64 %6400, i64* %PC.i150
  %6401 = inttoptr i64 %6398 to i32*
  %6402 = load i32, i32* %6401
  %6403 = zext i32 %6402 to i64
  store i64 %6403, i64* %RAX.i151, align 8
  store %struct.Memory* %loadMem_49d585, %struct.Memory** %MEMORY
  %loadMem_49d588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6404 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6405 = getelementptr inbounds %struct.GPR, %struct.GPR* %6404, i32 0, i32 33
  %6406 = getelementptr inbounds %struct.Reg, %struct.Reg* %6405, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %6406 to i64*
  %6407 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6408 = getelementptr inbounds %struct.GPR, %struct.GPR* %6407, i32 0, i32 1
  %6409 = getelementptr inbounds %struct.Reg, %struct.Reg* %6408, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %6409 to i64*
  %6410 = load i64, i64* %RAX.i149
  %6411 = load i64, i64* %PC.i148
  %6412 = add i64 %6411, 3
  store i64 %6412, i64* %PC.i148
  %6413 = trunc i64 %6410 to i32
  %6414 = add i32 1, %6413
  %6415 = zext i32 %6414 to i64
  store i64 %6415, i64* %RAX.i149, align 8
  %6416 = icmp ult i32 %6414, %6413
  %6417 = icmp ult i32 %6414, 1
  %6418 = or i1 %6416, %6417
  %6419 = zext i1 %6418 to i8
  %6420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6419, i8* %6420, align 1
  %6421 = and i32 %6414, 255
  %6422 = call i32 @llvm.ctpop.i32(i32 %6421)
  %6423 = trunc i32 %6422 to i8
  %6424 = and i8 %6423, 1
  %6425 = xor i8 %6424, 1
  %6426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6425, i8* %6426, align 1
  %6427 = xor i64 1, %6410
  %6428 = trunc i64 %6427 to i32
  %6429 = xor i32 %6428, %6414
  %6430 = lshr i32 %6429, 4
  %6431 = trunc i32 %6430 to i8
  %6432 = and i8 %6431, 1
  %6433 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6432, i8* %6433, align 1
  %6434 = icmp eq i32 %6414, 0
  %6435 = zext i1 %6434 to i8
  %6436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6435, i8* %6436, align 1
  %6437 = lshr i32 %6414, 31
  %6438 = trunc i32 %6437 to i8
  %6439 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6438, i8* %6439, align 1
  %6440 = lshr i32 %6413, 31
  %6441 = xor i32 %6437, %6440
  %6442 = add i32 %6441, %6437
  %6443 = icmp eq i32 %6442, 2
  %6444 = zext i1 %6443 to i8
  %6445 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6444, i8* %6445, align 1
  store %struct.Memory* %loadMem_49d588, %struct.Memory** %MEMORY
  %loadMem_49d58b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6447 = getelementptr inbounds %struct.GPR, %struct.GPR* %6446, i32 0, i32 33
  %6448 = getelementptr inbounds %struct.Reg, %struct.Reg* %6447, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %6448 to i64*
  %6449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6450 = getelementptr inbounds %struct.GPR, %struct.GPR* %6449, i32 0, i32 1
  %6451 = getelementptr inbounds %struct.Reg, %struct.Reg* %6450, i32 0, i32 0
  %EAX.i146 = bitcast %union.anon* %6451 to i32*
  %6452 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6453 = getelementptr inbounds %struct.GPR, %struct.GPR* %6452, i32 0, i32 15
  %6454 = getelementptr inbounds %struct.Reg, %struct.Reg* %6453, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %6454 to i64*
  %6455 = load i64, i64* %RBP.i147
  %6456 = sub i64 %6455, 4
  %6457 = load i32, i32* %EAX.i146
  %6458 = zext i32 %6457 to i64
  %6459 = load i64, i64* %PC.i145
  %6460 = add i64 %6459, 3
  store i64 %6460, i64* %PC.i145
  %6461 = inttoptr i64 %6456 to i32*
  store i32 %6457, i32* %6461
  store %struct.Memory* %loadMem_49d58b, %struct.Memory** %MEMORY
  %loadMem_49d58e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6463 = getelementptr inbounds %struct.GPR, %struct.GPR* %6462, i32 0, i32 33
  %6464 = getelementptr inbounds %struct.Reg, %struct.Reg* %6463, i32 0, i32 0
  %PC.i144 = bitcast %union.anon* %6464 to i64*
  %6465 = load i64, i64* %PC.i144
  %6466 = add i64 %6465, -123
  %6467 = load i64, i64* %PC.i144
  %6468 = add i64 %6467, 5
  store i64 %6468, i64* %PC.i144
  %6469 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6466, i64* %6469, align 8
  store %struct.Memory* %loadMem_49d58e, %struct.Memory** %MEMORY
  br label %block_.L_49d513

block_.L_49d593:                                  ; preds = %block_.L_49d513
  %loadMem_49d593 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6471 = getelementptr inbounds %struct.GPR, %struct.GPR* %6470, i32 0, i32 33
  %6472 = getelementptr inbounds %struct.Reg, %struct.Reg* %6471, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %6472 to i64*
  %6473 = load i64, i64* %PC.i143
  %6474 = add i64 %6473, 5
  %6475 = load i64, i64* %PC.i143
  %6476 = add i64 %6475, 5
  store i64 %6476, i64* %PC.i143
  %6477 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6474, i64* %6477, align 8
  store %struct.Memory* %loadMem_49d593, %struct.Memory** %MEMORY
  br label %block_.L_49d598

block_.L_49d598:                                  ; preds = %block_.L_49d593
  %loadMem_49d598 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6479 = getelementptr inbounds %struct.GPR, %struct.GPR* %6478, i32 0, i32 33
  %6480 = getelementptr inbounds %struct.Reg, %struct.Reg* %6479, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %6480 to i64*
  %6481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6482 = getelementptr inbounds %struct.GPR, %struct.GPR* %6481, i32 0, i32 1
  %6483 = getelementptr inbounds %struct.Reg, %struct.Reg* %6482, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %6483 to i64*
  %6484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6485 = getelementptr inbounds %struct.GPR, %struct.GPR* %6484, i32 0, i32 15
  %6486 = getelementptr inbounds %struct.Reg, %struct.Reg* %6485, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %6486 to i64*
  %6487 = load i64, i64* %RBP.i142
  %6488 = sub i64 %6487, 8
  %6489 = load i64, i64* %PC.i140
  %6490 = add i64 %6489, 3
  store i64 %6490, i64* %PC.i140
  %6491 = inttoptr i64 %6488 to i32*
  %6492 = load i32, i32* %6491
  %6493 = zext i32 %6492 to i64
  store i64 %6493, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_49d598, %struct.Memory** %MEMORY
  %loadMem_49d59b = load %struct.Memory*, %struct.Memory** %MEMORY
  %6494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6495 = getelementptr inbounds %struct.GPR, %struct.GPR* %6494, i32 0, i32 33
  %6496 = getelementptr inbounds %struct.Reg, %struct.Reg* %6495, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %6496 to i64*
  %6497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6498 = getelementptr inbounds %struct.GPR, %struct.GPR* %6497, i32 0, i32 1
  %6499 = getelementptr inbounds %struct.Reg, %struct.Reg* %6498, i32 0, i32 0
  %RAX.i139 = bitcast %union.anon* %6499 to i64*
  %6500 = load i64, i64* %RAX.i139
  %6501 = load i64, i64* %PC.i138
  %6502 = add i64 %6501, 3
  store i64 %6502, i64* %PC.i138
  %6503 = trunc i64 %6500 to i32
  %6504 = add i32 1, %6503
  %6505 = zext i32 %6504 to i64
  store i64 %6505, i64* %RAX.i139, align 8
  %6506 = icmp ult i32 %6504, %6503
  %6507 = icmp ult i32 %6504, 1
  %6508 = or i1 %6506, %6507
  %6509 = zext i1 %6508 to i8
  %6510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6509, i8* %6510, align 1
  %6511 = and i32 %6504, 255
  %6512 = call i32 @llvm.ctpop.i32(i32 %6511)
  %6513 = trunc i32 %6512 to i8
  %6514 = and i8 %6513, 1
  %6515 = xor i8 %6514, 1
  %6516 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6515, i8* %6516, align 1
  %6517 = xor i64 1, %6500
  %6518 = trunc i64 %6517 to i32
  %6519 = xor i32 %6518, %6504
  %6520 = lshr i32 %6519, 4
  %6521 = trunc i32 %6520 to i8
  %6522 = and i8 %6521, 1
  %6523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6522, i8* %6523, align 1
  %6524 = icmp eq i32 %6504, 0
  %6525 = zext i1 %6524 to i8
  %6526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6525, i8* %6526, align 1
  %6527 = lshr i32 %6504, 31
  %6528 = trunc i32 %6527 to i8
  %6529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6528, i8* %6529, align 1
  %6530 = lshr i32 %6503, 31
  %6531 = xor i32 %6527, %6530
  %6532 = add i32 %6531, %6527
  %6533 = icmp eq i32 %6532, 2
  %6534 = zext i1 %6533 to i8
  %6535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6534, i8* %6535, align 1
  store %struct.Memory* %loadMem_49d59b, %struct.Memory** %MEMORY
  %loadMem_49d59e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6537 = getelementptr inbounds %struct.GPR, %struct.GPR* %6536, i32 0, i32 33
  %6538 = getelementptr inbounds %struct.Reg, %struct.Reg* %6537, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %6538 to i64*
  %6539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6540 = getelementptr inbounds %struct.GPR, %struct.GPR* %6539, i32 0, i32 1
  %6541 = getelementptr inbounds %struct.Reg, %struct.Reg* %6540, i32 0, i32 0
  %EAX.i136 = bitcast %union.anon* %6541 to i32*
  %6542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6543 = getelementptr inbounds %struct.GPR, %struct.GPR* %6542, i32 0, i32 15
  %6544 = getelementptr inbounds %struct.Reg, %struct.Reg* %6543, i32 0, i32 0
  %RBP.i137 = bitcast %union.anon* %6544 to i64*
  %6545 = load i64, i64* %RBP.i137
  %6546 = sub i64 %6545, 8
  %6547 = load i32, i32* %EAX.i136
  %6548 = zext i32 %6547 to i64
  %6549 = load i64, i64* %PC.i135
  %6550 = add i64 %6549, 3
  store i64 %6550, i64* %PC.i135
  %6551 = inttoptr i64 %6546 to i32*
  store i32 %6547, i32* %6551
  store %struct.Memory* %loadMem_49d59e, %struct.Memory** %MEMORY
  %loadMem_49d5a1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6552 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6553 = getelementptr inbounds %struct.GPR, %struct.GPR* %6552, i32 0, i32 33
  %6554 = getelementptr inbounds %struct.Reg, %struct.Reg* %6553, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %6554 to i64*
  %6555 = load i64, i64* %PC.i134
  %6556 = add i64 %6555, -159
  %6557 = load i64, i64* %PC.i134
  %6558 = add i64 %6557, 5
  store i64 %6558, i64* %PC.i134
  %6559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %6556, i64* %6559, align 8
  store %struct.Memory* %loadMem_49d5a1, %struct.Memory** %MEMORY
  br label %block_.L_49d502

block_.L_49d5a6:                                  ; preds = %block_.L_49d502
  %loadMem_49d5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6561 = getelementptr inbounds %struct.GPR, %struct.GPR* %6560, i32 0, i32 33
  %6562 = getelementptr inbounds %struct.Reg, %struct.Reg* %6561, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %6562 to i64*
  %6563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6564 = getelementptr inbounds %struct.GPR, %struct.GPR* %6563, i32 0, i32 1
  %6565 = getelementptr inbounds %struct.Reg, %struct.Reg* %6564, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %6565 to i64*
  %6566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6567 = getelementptr inbounds %struct.GPR, %struct.GPR* %6566, i32 0, i32 15
  %6568 = getelementptr inbounds %struct.Reg, %struct.Reg* %6567, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %6568 to i64*
  %6569 = load i64, i64* %RBP.i133
  %6570 = sub i64 %6569, 24
  %6571 = load i64, i64* %PC.i131
  %6572 = add i64 %6571, 4
  store i64 %6572, i64* %PC.i131
  %6573 = inttoptr i64 %6570 to i64*
  %6574 = load i64, i64* %6573
  store i64 %6574, i64* %RAX.i132, align 8
  store %struct.Memory* %loadMem_49d5a6, %struct.Memory** %MEMORY
  %loadMem_49d5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6576 = getelementptr inbounds %struct.GPR, %struct.GPR* %6575, i32 0, i32 33
  %6577 = getelementptr inbounds %struct.Reg, %struct.Reg* %6576, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %6577 to i64*
  %6578 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6579 = getelementptr inbounds %struct.GPR, %struct.GPR* %6578, i32 0, i32 1
  %6580 = getelementptr inbounds %struct.Reg, %struct.Reg* %6579, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %6580 to i64*
  %6581 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6582 = getelementptr inbounds %struct.GPR, %struct.GPR* %6581, i32 0, i32 5
  %6583 = getelementptr inbounds %struct.Reg, %struct.Reg* %6582, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %6583 to i64*
  %6584 = load i64, i64* %RAX.i129
  %6585 = add i64 %6584, 580
  %6586 = load i64, i64* %PC.i128
  %6587 = add i64 %6586, 6
  store i64 %6587, i64* %PC.i128
  %6588 = inttoptr i64 %6585 to i32*
  %6589 = load i32, i32* %6588
  %6590 = zext i32 %6589 to i64
  store i64 %6590, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_49d5aa, %struct.Memory** %MEMORY
  %loadMem_49d5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6592 = getelementptr inbounds %struct.GPR, %struct.GPR* %6591, i32 0, i32 33
  %6593 = getelementptr inbounds %struct.Reg, %struct.Reg* %6592, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %6593 to i64*
  %6594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6595 = getelementptr inbounds %struct.GPR, %struct.GPR* %6594, i32 0, i32 1
  %6596 = getelementptr inbounds %struct.Reg, %struct.Reg* %6595, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %6596 to i64*
  %6597 = load i64, i64* %PC.i126
  %6598 = add i64 %6597, 8
  store i64 %6598, i64* %PC.i126
  %6599 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %6599, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_49d5b0, %struct.Memory** %MEMORY
  %loadMem_49d5b8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6601 = getelementptr inbounds %struct.GPR, %struct.GPR* %6600, i32 0, i32 33
  %6602 = getelementptr inbounds %struct.Reg, %struct.Reg* %6601, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %6602 to i64*
  %6603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6604 = getelementptr inbounds %struct.GPR, %struct.GPR* %6603, i32 0, i32 5
  %6605 = getelementptr inbounds %struct.Reg, %struct.Reg* %6604, i32 0, i32 0
  %ECX.i124 = bitcast %union.anon* %6605 to i32*
  %6606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6607 = getelementptr inbounds %struct.GPR, %struct.GPR* %6606, i32 0, i32 1
  %6608 = getelementptr inbounds %struct.Reg, %struct.Reg* %6607, i32 0, i32 0
  %RAX.i125 = bitcast %union.anon* %6608 to i64*
  %6609 = load i64, i64* %RAX.i125
  %6610 = add i64 %6609, 3100
  %6611 = load i32, i32* %ECX.i124
  %6612 = zext i32 %6611 to i64
  %6613 = load i64, i64* %PC.i123
  %6614 = add i64 %6613, 6
  store i64 %6614, i64* %PC.i123
  %6615 = inttoptr i64 %6610 to i32*
  store i32 %6611, i32* %6615
  store %struct.Memory* %loadMem_49d5b8, %struct.Memory** %MEMORY
  br label %block_.L_49d5be

block_.L_49d5be:                                  ; preds = %block_.L_49d5a6, %block_.L_49d4f1
  %loadMem_49d5be = load %struct.Memory*, %struct.Memory** %MEMORY
  %6616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6617 = getelementptr inbounds %struct.GPR, %struct.GPR* %6616, i32 0, i32 33
  %6618 = getelementptr inbounds %struct.Reg, %struct.Reg* %6617, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %6618 to i64*
  %6619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6620 = getelementptr inbounds %struct.GPR, %struct.GPR* %6619, i32 0, i32 15
  %6621 = getelementptr inbounds %struct.Reg, %struct.Reg* %6620, i32 0, i32 0
  %RBP.i122 = bitcast %union.anon* %6621 to i64*
  %6622 = load i64, i64* %RBP.i122
  %6623 = sub i64 %6622, 12
  %6624 = load i64, i64* %PC.i121
  %6625 = add i64 %6624, 7
  store i64 %6625, i64* %PC.i121
  %6626 = inttoptr i64 %6623 to i32*
  store i32 0, i32* %6626
  store %struct.Memory* %loadMem_49d5be, %struct.Memory** %MEMORY
  %loadMem_49d5c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6627 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6628 = getelementptr inbounds %struct.GPR, %struct.GPR* %6627, i32 0, i32 33
  %6629 = getelementptr inbounds %struct.Reg, %struct.Reg* %6628, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %6629 to i64*
  %6630 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6631 = getelementptr inbounds %struct.GPR, %struct.GPR* %6630, i32 0, i32 1
  %6632 = getelementptr inbounds %struct.Reg, %struct.Reg* %6631, i32 0, i32 0
  %RAX.i120 = bitcast %union.anon* %6632 to i64*
  %6633 = load i64, i64* %PC.i119
  %6634 = add i64 %6633, 8
  store i64 %6634, i64* %PC.i119
  %6635 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6635, i64* %RAX.i120, align 8
  store %struct.Memory* %loadMem_49d5c5, %struct.Memory** %MEMORY
  %loadMem_49d5cd = load %struct.Memory*, %struct.Memory** %MEMORY
  %6636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6637 = getelementptr inbounds %struct.GPR, %struct.GPR* %6636, i32 0, i32 33
  %6638 = getelementptr inbounds %struct.Reg, %struct.Reg* %6637, i32 0, i32 0
  %PC.i116 = bitcast %union.anon* %6638 to i64*
  %6639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6640 = getelementptr inbounds %struct.GPR, %struct.GPR* %6639, i32 0, i32 1
  %6641 = getelementptr inbounds %struct.Reg, %struct.Reg* %6640, i32 0, i32 0
  %RAX.i117 = bitcast %union.anon* %6641 to i64*
  %6642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6643 = getelementptr inbounds %struct.GPR, %struct.GPR* %6642, i32 0, i32 5
  %6644 = getelementptr inbounds %struct.Reg, %struct.Reg* %6643, i32 0, i32 0
  %RCX.i118 = bitcast %union.anon* %6644 to i64*
  %6645 = load i64, i64* %RAX.i117
  %6646 = add i64 %6645, 148
  %6647 = load i64, i64* %PC.i116
  %6648 = add i64 %6647, 6
  store i64 %6648, i64* %PC.i116
  %6649 = inttoptr i64 %6646 to i32*
  %6650 = load i32, i32* %6649
  %6651 = zext i32 %6650 to i64
  store i64 %6651, i64* %RCX.i118, align 8
  store %struct.Memory* %loadMem_49d5cd, %struct.Memory** %MEMORY
  %loadMem_49d5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6653 = getelementptr inbounds %struct.GPR, %struct.GPR* %6652, i32 0, i32 33
  %6654 = getelementptr inbounds %struct.Reg, %struct.Reg* %6653, i32 0, i32 0
  %PC.i113 = bitcast %union.anon* %6654 to i64*
  %6655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6656 = getelementptr inbounds %struct.GPR, %struct.GPR* %6655, i32 0, i32 5
  %6657 = getelementptr inbounds %struct.Reg, %struct.Reg* %6656, i32 0, i32 0
  %ECX.i114 = bitcast %union.anon* %6657 to i32*
  %6658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6659 = getelementptr inbounds %struct.GPR, %struct.GPR* %6658, i32 0, i32 15
  %6660 = getelementptr inbounds %struct.Reg, %struct.Reg* %6659, i32 0, i32 0
  %RBP.i115 = bitcast %union.anon* %6660 to i64*
  %6661 = load i64, i64* %RBP.i115
  %6662 = sub i64 %6661, 8
  %6663 = load i32, i32* %ECX.i114
  %6664 = zext i32 %6663 to i64
  %6665 = load i64, i64* %PC.i113
  %6666 = add i64 %6665, 3
  store i64 %6666, i64* %PC.i113
  %6667 = inttoptr i64 %6662 to i32*
  store i32 %6663, i32* %6667
  store %struct.Memory* %loadMem_49d5d3, %struct.Memory** %MEMORY
  br label %block_.L_49d5d6

block_.L_49d5d6:                                  ; preds = %block_.L_49d68e, %block_.L_49d5be
  %loadMem_49d5d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6668 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6669 = getelementptr inbounds %struct.GPR, %struct.GPR* %6668, i32 0, i32 33
  %6670 = getelementptr inbounds %struct.Reg, %struct.Reg* %6669, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %6670 to i64*
  %6671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6672 = getelementptr inbounds %struct.GPR, %struct.GPR* %6671, i32 0, i32 1
  %6673 = getelementptr inbounds %struct.Reg, %struct.Reg* %6672, i32 0, i32 0
  %RAX.i111 = bitcast %union.anon* %6673 to i64*
  %6674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6675 = getelementptr inbounds %struct.GPR, %struct.GPR* %6674, i32 0, i32 15
  %6676 = getelementptr inbounds %struct.Reg, %struct.Reg* %6675, i32 0, i32 0
  %RBP.i112 = bitcast %union.anon* %6676 to i64*
  %6677 = load i64, i64* %RBP.i112
  %6678 = sub i64 %6677, 8
  %6679 = load i64, i64* %PC.i110
  %6680 = add i64 %6679, 3
  store i64 %6680, i64* %PC.i110
  %6681 = inttoptr i64 %6678 to i32*
  %6682 = load i32, i32* %6681
  %6683 = zext i32 %6682 to i64
  store i64 %6683, i64* %RAX.i111, align 8
  store %struct.Memory* %loadMem_49d5d6, %struct.Memory** %MEMORY
  %loadMem_49d5d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6685 = getelementptr inbounds %struct.GPR, %struct.GPR* %6684, i32 0, i32 33
  %6686 = getelementptr inbounds %struct.Reg, %struct.Reg* %6685, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %6686 to i64*
  %6687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6688 = getelementptr inbounds %struct.GPR, %struct.GPR* %6687, i32 0, i32 5
  %6689 = getelementptr inbounds %struct.Reg, %struct.Reg* %6688, i32 0, i32 0
  %RCX.i109 = bitcast %union.anon* %6689 to i64*
  %6690 = load i64, i64* %PC.i108
  %6691 = add i64 %6690, 8
  store i64 %6691, i64* %PC.i108
  %6692 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6692, i64* %RCX.i109, align 8
  store %struct.Memory* %loadMem_49d5d9, %struct.Memory** %MEMORY
  %loadMem_49d5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6693 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6694 = getelementptr inbounds %struct.GPR, %struct.GPR* %6693, i32 0, i32 33
  %6695 = getelementptr inbounds %struct.Reg, %struct.Reg* %6694, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %6695 to i64*
  %6696 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6697 = getelementptr inbounds %struct.GPR, %struct.GPR* %6696, i32 0, i32 5
  %6698 = getelementptr inbounds %struct.Reg, %struct.Reg* %6697, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %6698 to i64*
  %6699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6700 = getelementptr inbounds %struct.GPR, %struct.GPR* %6699, i32 0, i32 7
  %6701 = getelementptr inbounds %struct.Reg, %struct.Reg* %6700, i32 0, i32 0
  %RDX.i107 = bitcast %union.anon* %6701 to i64*
  %6702 = load i64, i64* %RCX.i106
  %6703 = add i64 %6702, 148
  %6704 = load i64, i64* %PC.i105
  %6705 = add i64 %6704, 6
  store i64 %6705, i64* %PC.i105
  %6706 = inttoptr i64 %6703 to i32*
  %6707 = load i32, i32* %6706
  %6708 = zext i32 %6707 to i64
  store i64 %6708, i64* %RDX.i107, align 8
  store %struct.Memory* %loadMem_49d5e1, %struct.Memory** %MEMORY
  %loadMem_49d5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6710 = getelementptr inbounds %struct.GPR, %struct.GPR* %6709, i32 0, i32 33
  %6711 = getelementptr inbounds %struct.Reg, %struct.Reg* %6710, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %6711 to i64*
  %6712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6713 = getelementptr inbounds %struct.GPR, %struct.GPR* %6712, i32 0, i32 7
  %6714 = getelementptr inbounds %struct.Reg, %struct.Reg* %6713, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %6714 to i64*
  %6715 = load i64, i64* %RDX.i104
  %6716 = load i64, i64* %PC.i103
  %6717 = add i64 %6716, 3
  store i64 %6717, i64* %PC.i103
  %6718 = trunc i64 %6715 to i32
  %6719 = add i32 4, %6718
  %6720 = zext i32 %6719 to i64
  store i64 %6720, i64* %RDX.i104, align 8
  %6721 = icmp ult i32 %6719, %6718
  %6722 = icmp ult i32 %6719, 4
  %6723 = or i1 %6721, %6722
  %6724 = zext i1 %6723 to i8
  %6725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6724, i8* %6725, align 1
  %6726 = and i32 %6719, 255
  %6727 = call i32 @llvm.ctpop.i32(i32 %6726)
  %6728 = trunc i32 %6727 to i8
  %6729 = and i8 %6728, 1
  %6730 = xor i8 %6729, 1
  %6731 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6730, i8* %6731, align 1
  %6732 = xor i64 4, %6715
  %6733 = trunc i64 %6732 to i32
  %6734 = xor i32 %6733, %6719
  %6735 = lshr i32 %6734, 4
  %6736 = trunc i32 %6735 to i8
  %6737 = and i8 %6736, 1
  %6738 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6737, i8* %6738, align 1
  %6739 = icmp eq i32 %6719, 0
  %6740 = zext i1 %6739 to i8
  %6741 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6740, i8* %6741, align 1
  %6742 = lshr i32 %6719, 31
  %6743 = trunc i32 %6742 to i8
  %6744 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6743, i8* %6744, align 1
  %6745 = lshr i32 %6718, 31
  %6746 = xor i32 %6742, %6745
  %6747 = add i32 %6746, %6742
  %6748 = icmp eq i32 %6747, 2
  %6749 = zext i1 %6748 to i8
  %6750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6749, i8* %6750, align 1
  store %struct.Memory* %loadMem_49d5e7, %struct.Memory** %MEMORY
  %loadMem_49d5ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %6751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6752 = getelementptr inbounds %struct.GPR, %struct.GPR* %6751, i32 0, i32 33
  %6753 = getelementptr inbounds %struct.Reg, %struct.Reg* %6752, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %6753 to i64*
  %6754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6755 = getelementptr inbounds %struct.GPR, %struct.GPR* %6754, i32 0, i32 1
  %6756 = getelementptr inbounds %struct.Reg, %struct.Reg* %6755, i32 0, i32 0
  %EAX.i101 = bitcast %union.anon* %6756 to i32*
  %6757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6758 = getelementptr inbounds %struct.GPR, %struct.GPR* %6757, i32 0, i32 7
  %6759 = getelementptr inbounds %struct.Reg, %struct.Reg* %6758, i32 0, i32 0
  %EDX.i102 = bitcast %union.anon* %6759 to i32*
  %6760 = load i32, i32* %EAX.i101
  %6761 = zext i32 %6760 to i64
  %6762 = load i32, i32* %EDX.i102
  %6763 = zext i32 %6762 to i64
  %6764 = load i64, i64* %PC.i100
  %6765 = add i64 %6764, 2
  store i64 %6765, i64* %PC.i100
  %6766 = sub i32 %6760, %6762
  %6767 = icmp ult i32 %6760, %6762
  %6768 = zext i1 %6767 to i8
  %6769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6768, i8* %6769, align 1
  %6770 = and i32 %6766, 255
  %6771 = call i32 @llvm.ctpop.i32(i32 %6770)
  %6772 = trunc i32 %6771 to i8
  %6773 = and i8 %6772, 1
  %6774 = xor i8 %6773, 1
  %6775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6774, i8* %6775, align 1
  %6776 = xor i64 %6763, %6761
  %6777 = trunc i64 %6776 to i32
  %6778 = xor i32 %6777, %6766
  %6779 = lshr i32 %6778, 4
  %6780 = trunc i32 %6779 to i8
  %6781 = and i8 %6780, 1
  %6782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6781, i8* %6782, align 1
  %6783 = icmp eq i32 %6766, 0
  %6784 = zext i1 %6783 to i8
  %6785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6784, i8* %6785, align 1
  %6786 = lshr i32 %6766, 31
  %6787 = trunc i32 %6786 to i8
  %6788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6787, i8* %6788, align 1
  %6789 = lshr i32 %6760, 31
  %6790 = lshr i32 %6762, 31
  %6791 = xor i32 %6790, %6789
  %6792 = xor i32 %6786, %6789
  %6793 = add i32 %6792, %6791
  %6794 = icmp eq i32 %6793, 2
  %6795 = zext i1 %6794 to i8
  %6796 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6795, i8* %6796, align 1
  store %struct.Memory* %loadMem_49d5ea, %struct.Memory** %MEMORY
  %loadMem_49d5ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %6797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6798 = getelementptr inbounds %struct.GPR, %struct.GPR* %6797, i32 0, i32 33
  %6799 = getelementptr inbounds %struct.Reg, %struct.Reg* %6798, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %6799 to i64*
  %6800 = load i64, i64* %PC.i99
  %6801 = add i64 %6800, 176
  %6802 = load i64, i64* %PC.i99
  %6803 = add i64 %6802, 6
  %6804 = load i64, i64* %PC.i99
  %6805 = add i64 %6804, 6
  store i64 %6805, i64* %PC.i99
  %6806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6807 = load i8, i8* %6806, align 1
  %6808 = icmp ne i8 %6807, 0
  %6809 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %6810 = load i8, i8* %6809, align 1
  %6811 = icmp ne i8 %6810, 0
  %6812 = xor i1 %6808, %6811
  %6813 = xor i1 %6812, true
  %6814 = zext i1 %6813 to i8
  store i8 %6814, i8* %BRANCH_TAKEN, align 1
  %6815 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %6816 = select i1 %6812, i64 %6803, i64 %6801
  store i64 %6816, i64* %6815, align 8
  store %struct.Memory* %loadMem_49d5ec, %struct.Memory** %MEMORY
  %loadBr_49d5ec = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d5ec = icmp eq i8 %loadBr_49d5ec, 1
  br i1 %cmpBr_49d5ec, label %block_.L_49d69c, label %block_49d5f2

block_49d5f2:                                     ; preds = %block_.L_49d5d6
  %loadMem_49d5f2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6818 = getelementptr inbounds %struct.GPR, %struct.GPR* %6817, i32 0, i32 33
  %6819 = getelementptr inbounds %struct.Reg, %struct.Reg* %6818, i32 0, i32 0
  %PC.i97 = bitcast %union.anon* %6819 to i64*
  %6820 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6821 = getelementptr inbounds %struct.GPR, %struct.GPR* %6820, i32 0, i32 1
  %6822 = getelementptr inbounds %struct.Reg, %struct.Reg* %6821, i32 0, i32 0
  %RAX.i98 = bitcast %union.anon* %6822 to i64*
  %6823 = load i64, i64* %PC.i97
  %6824 = add i64 %6823, 8
  store i64 %6824, i64* %PC.i97
  %6825 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6825, i64* %RAX.i98, align 8
  store %struct.Memory* %loadMem_49d5f2, %struct.Memory** %MEMORY
  %loadMem_49d5fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %6826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6827 = getelementptr inbounds %struct.GPR, %struct.GPR* %6826, i32 0, i32 33
  %6828 = getelementptr inbounds %struct.Reg, %struct.Reg* %6827, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %6828 to i64*
  %6829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6830 = getelementptr inbounds %struct.GPR, %struct.GPR* %6829, i32 0, i32 1
  %6831 = getelementptr inbounds %struct.Reg, %struct.Reg* %6830, i32 0, i32 0
  %RAX.i95 = bitcast %union.anon* %6831 to i64*
  %6832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6833 = getelementptr inbounds %struct.GPR, %struct.GPR* %6832, i32 0, i32 5
  %6834 = getelementptr inbounds %struct.Reg, %struct.Reg* %6833, i32 0, i32 0
  %RCX.i96 = bitcast %union.anon* %6834 to i64*
  %6835 = load i64, i64* %RAX.i95
  %6836 = add i64 %6835, 144
  %6837 = load i64, i64* %PC.i94
  %6838 = add i64 %6837, 6
  store i64 %6838, i64* %PC.i94
  %6839 = inttoptr i64 %6836 to i32*
  %6840 = load i32, i32* %6839
  %6841 = zext i32 %6840 to i64
  store i64 %6841, i64* %RCX.i96, align 8
  store %struct.Memory* %loadMem_49d5fa, %struct.Memory** %MEMORY
  %loadMem_49d600 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6843 = getelementptr inbounds %struct.GPR, %struct.GPR* %6842, i32 0, i32 33
  %6844 = getelementptr inbounds %struct.Reg, %struct.Reg* %6843, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %6844 to i64*
  %6845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6846 = getelementptr inbounds %struct.GPR, %struct.GPR* %6845, i32 0, i32 5
  %6847 = getelementptr inbounds %struct.Reg, %struct.Reg* %6846, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %6847 to i32*
  %6848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6849 = getelementptr inbounds %struct.GPR, %struct.GPR* %6848, i32 0, i32 15
  %6850 = getelementptr inbounds %struct.Reg, %struct.Reg* %6849, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %6850 to i64*
  %6851 = load i64, i64* %RBP.i93
  %6852 = sub i64 %6851, 4
  %6853 = load i32, i32* %ECX.i
  %6854 = zext i32 %6853 to i64
  %6855 = load i64, i64* %PC.i92
  %6856 = add i64 %6855, 3
  store i64 %6856, i64* %PC.i92
  %6857 = inttoptr i64 %6852 to i32*
  store i32 %6853, i32* %6857
  store %struct.Memory* %loadMem_49d600, %struct.Memory** %MEMORY
  br label %block_.L_49d603

block_.L_49d603:                                  ; preds = %block_49d61f, %block_49d5f2
  %loadMem_49d603 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6858 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6859 = getelementptr inbounds %struct.GPR, %struct.GPR* %6858, i32 0, i32 33
  %6860 = getelementptr inbounds %struct.Reg, %struct.Reg* %6859, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %6860 to i64*
  %6861 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6862 = getelementptr inbounds %struct.GPR, %struct.GPR* %6861, i32 0, i32 1
  %6863 = getelementptr inbounds %struct.Reg, %struct.Reg* %6862, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %6863 to i64*
  %6864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6865 = getelementptr inbounds %struct.GPR, %struct.GPR* %6864, i32 0, i32 15
  %6866 = getelementptr inbounds %struct.Reg, %struct.Reg* %6865, i32 0, i32 0
  %RBP.i91 = bitcast %union.anon* %6866 to i64*
  %6867 = load i64, i64* %RBP.i91
  %6868 = sub i64 %6867, 4
  %6869 = load i64, i64* %PC.i89
  %6870 = add i64 %6869, 3
  store i64 %6870, i64* %PC.i89
  %6871 = inttoptr i64 %6868 to i32*
  %6872 = load i32, i32* %6871
  %6873 = zext i32 %6872 to i64
  store i64 %6873, i64* %RAX.i90, align 8
  store %struct.Memory* %loadMem_49d603, %struct.Memory** %MEMORY
  %loadMem_49d606 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6875 = getelementptr inbounds %struct.GPR, %struct.GPR* %6874, i32 0, i32 33
  %6876 = getelementptr inbounds %struct.Reg, %struct.Reg* %6875, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %6876 to i64*
  %6877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6878 = getelementptr inbounds %struct.GPR, %struct.GPR* %6877, i32 0, i32 5
  %6879 = getelementptr inbounds %struct.Reg, %struct.Reg* %6878, i32 0, i32 0
  %RCX.i88 = bitcast %union.anon* %6879 to i64*
  %6880 = load i64, i64* %PC.i87
  %6881 = add i64 %6880, 8
  store i64 %6881, i64* %PC.i87
  %6882 = load i64, i64* bitcast (%G_0x6cb900_type* @G_0x6cb900 to i64*)
  store i64 %6882, i64* %RCX.i88, align 8
  store %struct.Memory* %loadMem_49d606, %struct.Memory** %MEMORY
  %loadMem_49d60e = load %struct.Memory*, %struct.Memory** %MEMORY
  %6883 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6884 = getelementptr inbounds %struct.GPR, %struct.GPR* %6883, i32 0, i32 33
  %6885 = getelementptr inbounds %struct.Reg, %struct.Reg* %6884, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %6885 to i64*
  %6886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6887 = getelementptr inbounds %struct.GPR, %struct.GPR* %6886, i32 0, i32 5
  %6888 = getelementptr inbounds %struct.Reg, %struct.Reg* %6887, i32 0, i32 0
  %RCX.i85 = bitcast %union.anon* %6888 to i64*
  %6889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6890 = getelementptr inbounds %struct.GPR, %struct.GPR* %6889, i32 0, i32 7
  %6891 = getelementptr inbounds %struct.Reg, %struct.Reg* %6890, i32 0, i32 0
  %RDX.i86 = bitcast %union.anon* %6891 to i64*
  %6892 = load i64, i64* %RCX.i85
  %6893 = add i64 %6892, 144
  %6894 = load i64, i64* %PC.i84
  %6895 = add i64 %6894, 6
  store i64 %6895, i64* %PC.i84
  %6896 = inttoptr i64 %6893 to i32*
  %6897 = load i32, i32* %6896
  %6898 = zext i32 %6897 to i64
  store i64 %6898, i64* %RDX.i86, align 8
  store %struct.Memory* %loadMem_49d60e, %struct.Memory** %MEMORY
  %loadMem_49d614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6899 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6900 = getelementptr inbounds %struct.GPR, %struct.GPR* %6899, i32 0, i32 33
  %6901 = getelementptr inbounds %struct.Reg, %struct.Reg* %6900, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %6901 to i64*
  %6902 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6903 = getelementptr inbounds %struct.GPR, %struct.GPR* %6902, i32 0, i32 7
  %6904 = getelementptr inbounds %struct.Reg, %struct.Reg* %6903, i32 0, i32 0
  %RDX.i83 = bitcast %union.anon* %6904 to i64*
  %6905 = load i64, i64* %RDX.i83
  %6906 = load i64, i64* %PC.i82
  %6907 = add i64 %6906, 3
  store i64 %6907, i64* %PC.i82
  %6908 = trunc i64 %6905 to i32
  %6909 = add i32 4, %6908
  %6910 = zext i32 %6909 to i64
  store i64 %6910, i64* %RDX.i83, align 8
  %6911 = icmp ult i32 %6909, %6908
  %6912 = icmp ult i32 %6909, 4
  %6913 = or i1 %6911, %6912
  %6914 = zext i1 %6913 to i8
  %6915 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6914, i8* %6915, align 1
  %6916 = and i32 %6909, 255
  %6917 = call i32 @llvm.ctpop.i32(i32 %6916)
  %6918 = trunc i32 %6917 to i8
  %6919 = and i8 %6918, 1
  %6920 = xor i8 %6919, 1
  %6921 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6920, i8* %6921, align 1
  %6922 = xor i64 4, %6905
  %6923 = trunc i64 %6922 to i32
  %6924 = xor i32 %6923, %6909
  %6925 = lshr i32 %6924, 4
  %6926 = trunc i32 %6925 to i8
  %6927 = and i8 %6926, 1
  %6928 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6927, i8* %6928, align 1
  %6929 = icmp eq i32 %6909, 0
  %6930 = zext i1 %6929 to i8
  %6931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6930, i8* %6931, align 1
  %6932 = lshr i32 %6909, 31
  %6933 = trunc i32 %6932 to i8
  %6934 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6933, i8* %6934, align 1
  %6935 = lshr i32 %6908, 31
  %6936 = xor i32 %6932, %6935
  %6937 = add i32 %6936, %6932
  %6938 = icmp eq i32 %6937, 2
  %6939 = zext i1 %6938 to i8
  %6940 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6939, i8* %6940, align 1
  store %struct.Memory* %loadMem_49d614, %struct.Memory** %MEMORY
  %loadMem_49d617 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6942 = getelementptr inbounds %struct.GPR, %struct.GPR* %6941, i32 0, i32 33
  %6943 = getelementptr inbounds %struct.Reg, %struct.Reg* %6942, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %6943 to i64*
  %6944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6945 = getelementptr inbounds %struct.GPR, %struct.GPR* %6944, i32 0, i32 1
  %6946 = getelementptr inbounds %struct.Reg, %struct.Reg* %6945, i32 0, i32 0
  %EAX.i80 = bitcast %union.anon* %6946 to i32*
  %6947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6948 = getelementptr inbounds %struct.GPR, %struct.GPR* %6947, i32 0, i32 7
  %6949 = getelementptr inbounds %struct.Reg, %struct.Reg* %6948, i32 0, i32 0
  %EDX.i81 = bitcast %union.anon* %6949 to i32*
  %6950 = load i32, i32* %EAX.i80
  %6951 = zext i32 %6950 to i64
  %6952 = load i32, i32* %EDX.i81
  %6953 = zext i32 %6952 to i64
  %6954 = load i64, i64* %PC.i79
  %6955 = add i64 %6954, 2
  store i64 %6955, i64* %PC.i79
  %6956 = sub i32 %6950, %6952
  %6957 = icmp ult i32 %6950, %6952
  %6958 = zext i1 %6957 to i8
  %6959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %6958, i8* %6959, align 1
  %6960 = and i32 %6956, 255
  %6961 = call i32 @llvm.ctpop.i32(i32 %6960)
  %6962 = trunc i32 %6961 to i8
  %6963 = and i8 %6962, 1
  %6964 = xor i8 %6963, 1
  %6965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %6964, i8* %6965, align 1
  %6966 = xor i64 %6953, %6951
  %6967 = trunc i64 %6966 to i32
  %6968 = xor i32 %6967, %6956
  %6969 = lshr i32 %6968, 4
  %6970 = trunc i32 %6969 to i8
  %6971 = and i8 %6970, 1
  %6972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %6971, i8* %6972, align 1
  %6973 = icmp eq i32 %6956, 0
  %6974 = zext i1 %6973 to i8
  %6975 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %6974, i8* %6975, align 1
  %6976 = lshr i32 %6956, 31
  %6977 = trunc i32 %6976 to i8
  %6978 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %6977, i8* %6978, align 1
  %6979 = lshr i32 %6950, 31
  %6980 = lshr i32 %6952, 31
  %6981 = xor i32 %6980, %6979
  %6982 = xor i32 %6976, %6979
  %6983 = add i32 %6982, %6981
  %6984 = icmp eq i32 %6983, 2
  %6985 = zext i1 %6984 to i8
  %6986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %6985, i8* %6986, align 1
  store %struct.Memory* %loadMem_49d617, %struct.Memory** %MEMORY
  %loadMem_49d619 = load %struct.Memory*, %struct.Memory** %MEMORY
  %6987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %6988 = getelementptr inbounds %struct.GPR, %struct.GPR* %6987, i32 0, i32 33
  %6989 = getelementptr inbounds %struct.Reg, %struct.Reg* %6988, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %6989 to i64*
  %6990 = load i64, i64* %PC.i78
  %6991 = add i64 %6990, 112
  %6992 = load i64, i64* %PC.i78
  %6993 = add i64 %6992, 6
  %6994 = load i64, i64* %PC.i78
  %6995 = add i64 %6994, 6
  store i64 %6995, i64* %PC.i78
  %6996 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %6997 = load i8, i8* %6996, align 1
  %6998 = icmp ne i8 %6997, 0
  %6999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %7000 = load i8, i8* %6999, align 1
  %7001 = icmp ne i8 %7000, 0
  %7002 = xor i1 %6998, %7001
  %7003 = xor i1 %7002, true
  %7004 = zext i1 %7003 to i8
  store i8 %7004, i8* %BRANCH_TAKEN, align 1
  %7005 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7006 = select i1 %7002, i64 %6993, i64 %6991
  store i64 %7006, i64* %7005, align 8
  store %struct.Memory* %loadMem_49d619, %struct.Memory** %MEMORY
  %loadBr_49d619 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_49d619 = icmp eq i8 %loadBr_49d619, 1
  br i1 %cmpBr_49d619, label %block_.L_49d689, label %block_49d61f

block_49d61f:                                     ; preds = %block_.L_49d603
  %loadMem_49d61f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7008 = getelementptr inbounds %struct.GPR, %struct.GPR* %7007, i32 0, i32 33
  %7009 = getelementptr inbounds %struct.Reg, %struct.Reg* %7008, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %7009 to i64*
  %7010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7011 = getelementptr inbounds %struct.GPR, %struct.GPR* %7010, i32 0, i32 1
  %7012 = getelementptr inbounds %struct.Reg, %struct.Reg* %7011, i32 0, i32 0
  %RAX.i76 = bitcast %union.anon* %7012 to i64*
  %7013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7014 = getelementptr inbounds %struct.GPR, %struct.GPR* %7013, i32 0, i32 15
  %7015 = getelementptr inbounds %struct.Reg, %struct.Reg* %7014, i32 0, i32 0
  %RBP.i77 = bitcast %union.anon* %7015 to i64*
  %7016 = load i64, i64* %RBP.i77
  %7017 = sub i64 %7016, 40
  %7018 = load i64, i64* %PC.i75
  %7019 = add i64 %7018, 4
  store i64 %7019, i64* %PC.i75
  %7020 = inttoptr i64 %7017 to i64*
  %7021 = load i64, i64* %7020
  store i64 %7021, i64* %RAX.i76, align 8
  store %struct.Memory* %loadMem_49d61f, %struct.Memory** %MEMORY
  %loadMem_49d623 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7023 = getelementptr inbounds %struct.GPR, %struct.GPR* %7022, i32 0, i32 33
  %7024 = getelementptr inbounds %struct.Reg, %struct.Reg* %7023, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %7024 to i64*
  %7025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7026 = getelementptr inbounds %struct.GPR, %struct.GPR* %7025, i32 0, i32 5
  %7027 = getelementptr inbounds %struct.Reg, %struct.Reg* %7026, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %7027 to i64*
  %7028 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7029 = getelementptr inbounds %struct.GPR, %struct.GPR* %7028, i32 0, i32 15
  %7030 = getelementptr inbounds %struct.Reg, %struct.Reg* %7029, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %7030 to i64*
  %7031 = load i64, i64* %RBP.i74
  %7032 = sub i64 %7031, 4
  %7033 = load i64, i64* %PC.i72
  %7034 = add i64 %7033, 4
  store i64 %7034, i64* %PC.i72
  %7035 = inttoptr i64 %7032 to i32*
  %7036 = load i32, i32* %7035
  %7037 = sext i32 %7036 to i64
  store i64 %7037, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_49d623, %struct.Memory** %MEMORY
  %loadMem_49d627 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7038 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7039 = getelementptr inbounds %struct.GPR, %struct.GPR* %7038, i32 0, i32 33
  %7040 = getelementptr inbounds %struct.Reg, %struct.Reg* %7039, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %7040 to i64*
  %7041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7042 = getelementptr inbounds %struct.GPR, %struct.GPR* %7041, i32 0, i32 1
  %7043 = getelementptr inbounds %struct.Reg, %struct.Reg* %7042, i32 0, i32 0
  %RAX.i70 = bitcast %union.anon* %7043 to i64*
  %7044 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7045 = getelementptr inbounds %struct.GPR, %struct.GPR* %7044, i32 0, i32 5
  %7046 = getelementptr inbounds %struct.Reg, %struct.Reg* %7045, i32 0, i32 0
  %RCX.i71 = bitcast %union.anon* %7046 to i64*
  %7047 = load i64, i64* %RAX.i70
  %7048 = load i64, i64* %RCX.i71
  %7049 = mul i64 %7048, 8
  %7050 = add i64 %7049, %7047
  %7051 = load i64, i64* %PC.i69
  %7052 = add i64 %7051, 4
  store i64 %7052, i64* %PC.i69
  %7053 = inttoptr i64 %7050 to i64*
  %7054 = load i64, i64* %7053
  store i64 %7054, i64* %RAX.i70, align 8
  store %struct.Memory* %loadMem_49d627, %struct.Memory** %MEMORY
  %loadMem_49d62b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7056 = getelementptr inbounds %struct.GPR, %struct.GPR* %7055, i32 0, i32 33
  %7057 = getelementptr inbounds %struct.Reg, %struct.Reg* %7056, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %7057 to i64*
  %7058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7059 = getelementptr inbounds %struct.GPR, %struct.GPR* %7058, i32 0, i32 5
  %7060 = getelementptr inbounds %struct.Reg, %struct.Reg* %7059, i32 0, i32 0
  %RCX.i67 = bitcast %union.anon* %7060 to i64*
  %7061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7062 = getelementptr inbounds %struct.GPR, %struct.GPR* %7061, i32 0, i32 15
  %7063 = getelementptr inbounds %struct.Reg, %struct.Reg* %7062, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %7063 to i64*
  %7064 = load i64, i64* %RBP.i68
  %7065 = sub i64 %7064, 8
  %7066 = load i64, i64* %PC.i66
  %7067 = add i64 %7066, 4
  store i64 %7067, i64* %PC.i66
  %7068 = inttoptr i64 %7065 to i32*
  %7069 = load i32, i32* %7068
  %7070 = sext i32 %7069 to i64
  store i64 %7070, i64* %RCX.i67, align 8
  store %struct.Memory* %loadMem_49d62b, %struct.Memory** %MEMORY
  %loadMem_49d62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7071 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7072 = getelementptr inbounds %struct.GPR, %struct.GPR* %7071, i32 0, i32 33
  %7073 = getelementptr inbounds %struct.Reg, %struct.Reg* %7072, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %7073 to i64*
  %7074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7075 = getelementptr inbounds %struct.GPR, %struct.GPR* %7074, i32 0, i32 1
  %7076 = getelementptr inbounds %struct.Reg, %struct.Reg* %7075, i32 0, i32 0
  %RAX.i63 = bitcast %union.anon* %7076 to i64*
  %7077 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7078 = getelementptr inbounds %struct.GPR, %struct.GPR* %7077, i32 0, i32 5
  %7079 = getelementptr inbounds %struct.Reg, %struct.Reg* %7078, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %7079 to i64*
  %7080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7081 = getelementptr inbounds %struct.GPR, %struct.GPR* %7080, i32 0, i32 7
  %7082 = getelementptr inbounds %struct.Reg, %struct.Reg* %7081, i32 0, i32 0
  %RDX.i65 = bitcast %union.anon* %7082 to i64*
  %7083 = load i64, i64* %RAX.i63
  %7084 = load i64, i64* %RCX.i64
  %7085 = mul i64 %7084, 4
  %7086 = add i64 %7085, %7083
  %7087 = load i64, i64* %PC.i62
  %7088 = add i64 %7087, 3
  store i64 %7088, i64* %PC.i62
  %7089 = inttoptr i64 %7086 to i32*
  %7090 = load i32, i32* %7089
  %7091 = zext i32 %7090 to i64
  store i64 %7091, i64* %RDX.i65, align 8
  store %struct.Memory* %loadMem_49d62f, %struct.Memory** %MEMORY
  %loadMem_49d632 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7093 = getelementptr inbounds %struct.GPR, %struct.GPR* %7092, i32 0, i32 33
  %7094 = getelementptr inbounds %struct.Reg, %struct.Reg* %7093, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %7094 to i64*
  %7095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7096 = getelementptr inbounds %struct.GPR, %struct.GPR* %7095, i32 0, i32 1
  %7097 = getelementptr inbounds %struct.Reg, %struct.Reg* %7096, i32 0, i32 0
  %RAX.i61 = bitcast %union.anon* %7097 to i64*
  %7098 = load i64, i64* %PC.i60
  %7099 = add i64 %7098, 8
  store i64 %7099, i64* %PC.i60
  %7100 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %7100, i64* %RAX.i61, align 8
  store %struct.Memory* %loadMem_49d632, %struct.Memory** %MEMORY
  %loadMem_49d63a = load %struct.Memory*, %struct.Memory** %MEMORY
  %7101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7102 = getelementptr inbounds %struct.GPR, %struct.GPR* %7101, i32 0, i32 33
  %7103 = getelementptr inbounds %struct.Reg, %struct.Reg* %7102, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %7103 to i64*
  %7104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7105 = getelementptr inbounds %struct.GPR, %struct.GPR* %7104, i32 0, i32 1
  %7106 = getelementptr inbounds %struct.Reg, %struct.Reg* %7105, i32 0, i32 0
  %RAX.i59 = bitcast %union.anon* %7106 to i64*
  %7107 = load i64, i64* %RAX.i59
  %7108 = add i64 %7107, 3136
  %7109 = load i64, i64* %PC.i58
  %7110 = add i64 %7109, 7
  store i64 %7110, i64* %PC.i58
  %7111 = inttoptr i64 %7108 to i64*
  %7112 = load i64, i64* %7111
  store i64 %7112, i64* %RAX.i59, align 8
  store %struct.Memory* %loadMem_49d63a, %struct.Memory** %MEMORY
  %loadMem_49d641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7114 = getelementptr inbounds %struct.GPR, %struct.GPR* %7113, i32 0, i32 33
  %7115 = getelementptr inbounds %struct.Reg, %struct.Reg* %7114, i32 0, i32 0
  %PC.i55 = bitcast %union.anon* %7115 to i64*
  %7116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7117 = getelementptr inbounds %struct.GPR, %struct.GPR* %7116, i32 0, i32 5
  %7118 = getelementptr inbounds %struct.Reg, %struct.Reg* %7117, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %7118 to i64*
  %7119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7120 = getelementptr inbounds %struct.GPR, %struct.GPR* %7119, i32 0, i32 15
  %7121 = getelementptr inbounds %struct.Reg, %struct.Reg* %7120, i32 0, i32 0
  %RBP.i57 = bitcast %union.anon* %7121 to i64*
  %7122 = load i64, i64* %RBP.i57
  %7123 = sub i64 %7122, 4
  %7124 = load i64, i64* %PC.i55
  %7125 = add i64 %7124, 4
  store i64 %7125, i64* %PC.i55
  %7126 = inttoptr i64 %7123 to i32*
  %7127 = load i32, i32* %7126
  %7128 = sext i32 %7127 to i64
  store i64 %7128, i64* %RCX.i56, align 8
  store %struct.Memory* %loadMem_49d641, %struct.Memory** %MEMORY
  %loadMem_49d645 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7129 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7130 = getelementptr inbounds %struct.GPR, %struct.GPR* %7129, i32 0, i32 33
  %7131 = getelementptr inbounds %struct.Reg, %struct.Reg* %7130, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %7131 to i64*
  %7132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7133 = getelementptr inbounds %struct.GPR, %struct.GPR* %7132, i32 0, i32 1
  %7134 = getelementptr inbounds %struct.Reg, %struct.Reg* %7133, i32 0, i32 0
  %RAX.i53 = bitcast %union.anon* %7134 to i64*
  %7135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7136 = getelementptr inbounds %struct.GPR, %struct.GPR* %7135, i32 0, i32 5
  %7137 = getelementptr inbounds %struct.Reg, %struct.Reg* %7136, i32 0, i32 0
  %RCX.i54 = bitcast %union.anon* %7137 to i64*
  %7138 = load i64, i64* %RAX.i53
  %7139 = load i64, i64* %RCX.i54
  %7140 = mul i64 %7139, 8
  %7141 = add i64 %7140, %7138
  %7142 = load i64, i64* %PC.i52
  %7143 = add i64 %7142, 4
  store i64 %7143, i64* %PC.i52
  %7144 = inttoptr i64 %7141 to i64*
  %7145 = load i64, i64* %7144
  store i64 %7145, i64* %RAX.i53, align 8
  store %struct.Memory* %loadMem_49d645, %struct.Memory** %MEMORY
  %loadMem_49d649 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7146 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7147 = getelementptr inbounds %struct.GPR, %struct.GPR* %7146, i32 0, i32 33
  %7148 = getelementptr inbounds %struct.Reg, %struct.Reg* %7147, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %7148 to i64*
  %7149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7150 = getelementptr inbounds %struct.GPR, %struct.GPR* %7149, i32 0, i32 5
  %7151 = getelementptr inbounds %struct.Reg, %struct.Reg* %7150, i32 0, i32 0
  %RCX.i50 = bitcast %union.anon* %7151 to i64*
  %7152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7153 = getelementptr inbounds %struct.GPR, %struct.GPR* %7152, i32 0, i32 15
  %7154 = getelementptr inbounds %struct.Reg, %struct.Reg* %7153, i32 0, i32 0
  %RBP.i51 = bitcast %union.anon* %7154 to i64*
  %7155 = load i64, i64* %RBP.i51
  %7156 = sub i64 %7155, 8
  %7157 = load i64, i64* %PC.i49
  %7158 = add i64 %7157, 4
  store i64 %7158, i64* %PC.i49
  %7159 = inttoptr i64 %7156 to i32*
  %7160 = load i32, i32* %7159
  %7161 = sext i32 %7160 to i64
  store i64 %7161, i64* %RCX.i50, align 8
  store %struct.Memory* %loadMem_49d649, %struct.Memory** %MEMORY
  %loadMem_49d64d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7163 = getelementptr inbounds %struct.GPR, %struct.GPR* %7162, i32 0, i32 33
  %7164 = getelementptr inbounds %struct.Reg, %struct.Reg* %7163, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %7164 to i64*
  %7165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7166 = getelementptr inbounds %struct.GPR, %struct.GPR* %7165, i32 0, i32 7
  %7167 = getelementptr inbounds %struct.Reg, %struct.Reg* %7166, i32 0, i32 0
  %EDX.i46 = bitcast %union.anon* %7167 to i32*
  %7168 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7169 = getelementptr inbounds %struct.GPR, %struct.GPR* %7168, i32 0, i32 1
  %7170 = getelementptr inbounds %struct.Reg, %struct.Reg* %7169, i32 0, i32 0
  %RAX.i47 = bitcast %union.anon* %7170 to i64*
  %7171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7172 = getelementptr inbounds %struct.GPR, %struct.GPR* %7171, i32 0, i32 5
  %7173 = getelementptr inbounds %struct.Reg, %struct.Reg* %7172, i32 0, i32 0
  %RCX.i48 = bitcast %union.anon* %7173 to i64*
  %7174 = load i64, i64* %RAX.i47
  %7175 = load i64, i64* %RCX.i48
  %7176 = mul i64 %7175, 4
  %7177 = add i64 %7176, %7174
  %7178 = load i32, i32* %EDX.i46
  %7179 = zext i32 %7178 to i64
  %7180 = load i64, i64* %PC.i45
  %7181 = add i64 %7180, 3
  store i64 %7181, i64* %PC.i45
  %7182 = inttoptr i64 %7177 to i32*
  store i32 %7178, i32* %7182
  store %struct.Memory* %loadMem_49d64d, %struct.Memory** %MEMORY
  %loadMem_49d650 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7184 = getelementptr inbounds %struct.GPR, %struct.GPR* %7183, i32 0, i32 33
  %7185 = getelementptr inbounds %struct.Reg, %struct.Reg* %7184, i32 0, i32 0
  %PC.i42 = bitcast %union.anon* %7185 to i64*
  %7186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7187 = getelementptr inbounds %struct.GPR, %struct.GPR* %7186, i32 0, i32 1
  %7188 = getelementptr inbounds %struct.Reg, %struct.Reg* %7187, i32 0, i32 0
  %RAX.i43 = bitcast %union.anon* %7188 to i64*
  %7189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7190 = getelementptr inbounds %struct.GPR, %struct.GPR* %7189, i32 0, i32 15
  %7191 = getelementptr inbounds %struct.Reg, %struct.Reg* %7190, i32 0, i32 0
  %RBP.i44 = bitcast %union.anon* %7191 to i64*
  %7192 = load i64, i64* %RBP.i44
  %7193 = sub i64 %7192, 24
  %7194 = load i64, i64* %PC.i42
  %7195 = add i64 %7194, 4
  store i64 %7195, i64* %PC.i42
  %7196 = inttoptr i64 %7193 to i64*
  %7197 = load i64, i64* %7196
  store i64 %7197, i64* %RAX.i43, align 8
  store %struct.Memory* %loadMem_49d650, %struct.Memory** %MEMORY
  %loadMem_49d654 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7199 = getelementptr inbounds %struct.GPR, %struct.GPR* %7198, i32 0, i32 33
  %7200 = getelementptr inbounds %struct.Reg, %struct.Reg* %7199, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %7200 to i64*
  %7201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7202 = getelementptr inbounds %struct.GPR, %struct.GPR* %7201, i32 0, i32 5
  %7203 = getelementptr inbounds %struct.Reg, %struct.Reg* %7202, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %7203 to i64*
  %7204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7205 = getelementptr inbounds %struct.GPR, %struct.GPR* %7204, i32 0, i32 15
  %7206 = getelementptr inbounds %struct.Reg, %struct.Reg* %7205, i32 0, i32 0
  %RBP.i41 = bitcast %union.anon* %7206 to i64*
  %7207 = load i64, i64* %RBP.i41
  %7208 = sub i64 %7207, 12
  %7209 = load i64, i64* %PC.i39
  %7210 = add i64 %7209, 4
  store i64 %7210, i64* %PC.i39
  %7211 = inttoptr i64 %7208 to i32*
  %7212 = load i32, i32* %7211
  %7213 = sext i32 %7212 to i64
  store i64 %7213, i64* %RCX.i40, align 8
  store %struct.Memory* %loadMem_49d654, %struct.Memory** %MEMORY
  %loadMem_49d658 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7215 = getelementptr inbounds %struct.GPR, %struct.GPR* %7214, i32 0, i32 33
  %7216 = getelementptr inbounds %struct.Reg, %struct.Reg* %7215, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %7216 to i64*
  %7217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7218 = getelementptr inbounds %struct.GPR, %struct.GPR* %7217, i32 0, i32 1
  %7219 = getelementptr inbounds %struct.Reg, %struct.Reg* %7218, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %7219 to i64*
  %7220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7221 = getelementptr inbounds %struct.GPR, %struct.GPR* %7220, i32 0, i32 5
  %7222 = getelementptr inbounds %struct.Reg, %struct.Reg* %7221, i32 0, i32 0
  %RCX.i38 = bitcast %union.anon* %7222 to i64*
  %7223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7224 = getelementptr inbounds %struct.GPR, %struct.GPR* %7223, i32 0, i32 7
  %7225 = getelementptr inbounds %struct.Reg, %struct.Reg* %7224, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %7225 to i64*
  %7226 = load i64, i64* %RAX.i37
  %7227 = load i64, i64* %RCX.i38
  %7228 = mul i64 %7227, 4
  %7229 = add i64 %7226, 332
  %7230 = add i64 %7229, %7228
  %7231 = load i64, i64* %PC.i36
  %7232 = add i64 %7231, 7
  store i64 %7232, i64* %PC.i36
  %7233 = inttoptr i64 %7230 to i32*
  %7234 = load i32, i32* %7233
  %7235 = zext i32 %7234 to i64
  store i64 %7235, i64* %RDX.i, align 8
  store %struct.Memory* %loadMem_49d658, %struct.Memory** %MEMORY
  %loadMem_49d65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %7236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7237 = getelementptr inbounds %struct.GPR, %struct.GPR* %7236, i32 0, i32 33
  %7238 = getelementptr inbounds %struct.Reg, %struct.Reg* %7237, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %7238 to i64*
  %7239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7240 = getelementptr inbounds %struct.GPR, %struct.GPR* %7239, i32 0, i32 1
  %7241 = getelementptr inbounds %struct.Reg, %struct.Reg* %7240, i32 0, i32 0
  %RAX.i35 = bitcast %union.anon* %7241 to i64*
  %7242 = load i64, i64* %PC.i34
  %7243 = add i64 %7242, 8
  store i64 %7243, i64* %PC.i34
  %7244 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %7244, i64* %RAX.i35, align 8
  store %struct.Memory* %loadMem_49d65f, %struct.Memory** %MEMORY
  %loadMem_49d667 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7245 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7246 = getelementptr inbounds %struct.GPR, %struct.GPR* %7245, i32 0, i32 33
  %7247 = getelementptr inbounds %struct.Reg, %struct.Reg* %7246, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %7247 to i64*
  %7248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7249 = getelementptr inbounds %struct.GPR, %struct.GPR* %7248, i32 0, i32 5
  %7250 = getelementptr inbounds %struct.Reg, %struct.Reg* %7249, i32 0, i32 0
  %RCX.i32 = bitcast %union.anon* %7250 to i64*
  %7251 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7252 = getelementptr inbounds %struct.GPR, %struct.GPR* %7251, i32 0, i32 15
  %7253 = getelementptr inbounds %struct.Reg, %struct.Reg* %7252, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %7253 to i64*
  %7254 = load i64, i64* %RBP.i33
  %7255 = sub i64 %7254, 12
  %7256 = load i64, i64* %PC.i31
  %7257 = add i64 %7256, 4
  store i64 %7257, i64* %PC.i31
  %7258 = inttoptr i64 %7255 to i32*
  %7259 = load i32, i32* %7258
  %7260 = sext i32 %7259 to i64
  store i64 %7260, i64* %RCX.i32, align 8
  store %struct.Memory* %loadMem_49d667, %struct.Memory** %MEMORY
  %loadMem_49d66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7262 = getelementptr inbounds %struct.GPR, %struct.GPR* %7261, i32 0, i32 33
  %7263 = getelementptr inbounds %struct.Reg, %struct.Reg* %7262, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %7263 to i64*
  %7264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7265 = getelementptr inbounds %struct.GPR, %struct.GPR* %7264, i32 0, i32 7
  %7266 = getelementptr inbounds %struct.Reg, %struct.Reg* %7265, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %7266 to i32*
  %7267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7268 = getelementptr inbounds %struct.GPR, %struct.GPR* %7267, i32 0, i32 1
  %7269 = getelementptr inbounds %struct.Reg, %struct.Reg* %7268, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %7269 to i64*
  %7270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7271 = getelementptr inbounds %struct.GPR, %struct.GPR* %7270, i32 0, i32 5
  %7272 = getelementptr inbounds %struct.Reg, %struct.Reg* %7271, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %7272 to i64*
  %7273 = load i64, i64* %RAX.i30
  %7274 = load i64, i64* %RCX.i
  %7275 = mul i64 %7274, 4
  %7276 = add i64 %7273, 3144
  %7277 = add i64 %7276, %7275
  %7278 = load i32, i32* %EDX.i
  %7279 = zext i32 %7278 to i64
  %7280 = load i64, i64* %PC.i29
  %7281 = add i64 %7280, 7
  store i64 %7281, i64* %PC.i29
  %7282 = inttoptr i64 %7277 to i32*
  store i32 %7278, i32* %7282
  store %struct.Memory* %loadMem_49d66b, %struct.Memory** %MEMORY
  %loadMem_49d672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7284 = getelementptr inbounds %struct.GPR, %struct.GPR* %7283, i32 0, i32 33
  %7285 = getelementptr inbounds %struct.Reg, %struct.Reg* %7284, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %7285 to i64*
  %7286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7287 = getelementptr inbounds %struct.GPR, %struct.GPR* %7286, i32 0, i32 1
  %7288 = getelementptr inbounds %struct.Reg, %struct.Reg* %7287, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %7288 to i64*
  %7289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7290 = getelementptr inbounds %struct.GPR, %struct.GPR* %7289, i32 0, i32 15
  %7291 = getelementptr inbounds %struct.Reg, %struct.Reg* %7290, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %7291 to i64*
  %7292 = load i64, i64* %RBP.i28
  %7293 = sub i64 %7292, 4
  %7294 = load i64, i64* %PC.i26
  %7295 = add i64 %7294, 3
  store i64 %7295, i64* %PC.i26
  %7296 = inttoptr i64 %7293 to i32*
  %7297 = load i32, i32* %7296
  %7298 = zext i32 %7297 to i64
  store i64 %7298, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_49d672, %struct.Memory** %MEMORY
  %loadMem_49d675 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7299 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7300 = getelementptr inbounds %struct.GPR, %struct.GPR* %7299, i32 0, i32 33
  %7301 = getelementptr inbounds %struct.Reg, %struct.Reg* %7300, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %7301 to i64*
  %7302 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7303 = getelementptr inbounds %struct.GPR, %struct.GPR* %7302, i32 0, i32 1
  %7304 = getelementptr inbounds %struct.Reg, %struct.Reg* %7303, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %7304 to i64*
  %7305 = load i64, i64* %RAX.i25
  %7306 = load i64, i64* %PC.i24
  %7307 = add i64 %7306, 3
  store i64 %7307, i64* %PC.i24
  %7308 = trunc i64 %7305 to i32
  %7309 = add i32 1, %7308
  %7310 = zext i32 %7309 to i64
  store i64 %7310, i64* %RAX.i25, align 8
  %7311 = icmp ult i32 %7309, %7308
  %7312 = icmp ult i32 %7309, 1
  %7313 = or i1 %7311, %7312
  %7314 = zext i1 %7313 to i8
  %7315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7314, i8* %7315, align 1
  %7316 = and i32 %7309, 255
  %7317 = call i32 @llvm.ctpop.i32(i32 %7316)
  %7318 = trunc i32 %7317 to i8
  %7319 = and i8 %7318, 1
  %7320 = xor i8 %7319, 1
  %7321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7320, i8* %7321, align 1
  %7322 = xor i64 1, %7305
  %7323 = trunc i64 %7322 to i32
  %7324 = xor i32 %7323, %7309
  %7325 = lshr i32 %7324, 4
  %7326 = trunc i32 %7325 to i8
  %7327 = and i8 %7326, 1
  %7328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7327, i8* %7328, align 1
  %7329 = icmp eq i32 %7309, 0
  %7330 = zext i1 %7329 to i8
  %7331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7330, i8* %7331, align 1
  %7332 = lshr i32 %7309, 31
  %7333 = trunc i32 %7332 to i8
  %7334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7333, i8* %7334, align 1
  %7335 = lshr i32 %7308, 31
  %7336 = xor i32 %7332, %7335
  %7337 = add i32 %7336, %7332
  %7338 = icmp eq i32 %7337, 2
  %7339 = zext i1 %7338 to i8
  %7340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7339, i8* %7340, align 1
  store %struct.Memory* %loadMem_49d675, %struct.Memory** %MEMORY
  %loadMem_49d678 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7342 = getelementptr inbounds %struct.GPR, %struct.GPR* %7341, i32 0, i32 33
  %7343 = getelementptr inbounds %struct.Reg, %struct.Reg* %7342, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %7343 to i64*
  %7344 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7345 = getelementptr inbounds %struct.GPR, %struct.GPR* %7344, i32 0, i32 1
  %7346 = getelementptr inbounds %struct.Reg, %struct.Reg* %7345, i32 0, i32 0
  %EAX.i22 = bitcast %union.anon* %7346 to i32*
  %7347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7348 = getelementptr inbounds %struct.GPR, %struct.GPR* %7347, i32 0, i32 15
  %7349 = getelementptr inbounds %struct.Reg, %struct.Reg* %7348, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %7349 to i64*
  %7350 = load i64, i64* %RBP.i23
  %7351 = sub i64 %7350, 4
  %7352 = load i32, i32* %EAX.i22
  %7353 = zext i32 %7352 to i64
  %7354 = load i64, i64* %PC.i21
  %7355 = add i64 %7354, 3
  store i64 %7355, i64* %PC.i21
  %7356 = inttoptr i64 %7351 to i32*
  store i32 %7352, i32* %7356
  store %struct.Memory* %loadMem_49d678, %struct.Memory** %MEMORY
  %loadMem_49d67b = load %struct.Memory*, %struct.Memory** %MEMORY
  %7357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7358 = getelementptr inbounds %struct.GPR, %struct.GPR* %7357, i32 0, i32 33
  %7359 = getelementptr inbounds %struct.Reg, %struct.Reg* %7358, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %7359 to i64*
  %7360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7361 = getelementptr inbounds %struct.GPR, %struct.GPR* %7360, i32 0, i32 1
  %7362 = getelementptr inbounds %struct.Reg, %struct.Reg* %7361, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %7362 to i64*
  %7363 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7364 = getelementptr inbounds %struct.GPR, %struct.GPR* %7363, i32 0, i32 15
  %7365 = getelementptr inbounds %struct.Reg, %struct.Reg* %7364, i32 0, i32 0
  %RBP.i20 = bitcast %union.anon* %7365 to i64*
  %7366 = load i64, i64* %RBP.i20
  %7367 = sub i64 %7366, 12
  %7368 = load i64, i64* %PC.i18
  %7369 = add i64 %7368, 3
  store i64 %7369, i64* %PC.i18
  %7370 = inttoptr i64 %7367 to i32*
  %7371 = load i32, i32* %7370
  %7372 = zext i32 %7371 to i64
  store i64 %7372, i64* %RAX.i19, align 8
  store %struct.Memory* %loadMem_49d67b, %struct.Memory** %MEMORY
  %loadMem_49d67e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7374 = getelementptr inbounds %struct.GPR, %struct.GPR* %7373, i32 0, i32 33
  %7375 = getelementptr inbounds %struct.Reg, %struct.Reg* %7374, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %7375 to i64*
  %7376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7377 = getelementptr inbounds %struct.GPR, %struct.GPR* %7376, i32 0, i32 1
  %7378 = getelementptr inbounds %struct.Reg, %struct.Reg* %7377, i32 0, i32 0
  %RAX.i17 = bitcast %union.anon* %7378 to i64*
  %7379 = load i64, i64* %RAX.i17
  %7380 = load i64, i64* %PC.i16
  %7381 = add i64 %7380, 3
  store i64 %7381, i64* %PC.i16
  %7382 = trunc i64 %7379 to i32
  %7383 = add i32 1, %7382
  %7384 = zext i32 %7383 to i64
  store i64 %7384, i64* %RAX.i17, align 8
  %7385 = icmp ult i32 %7383, %7382
  %7386 = icmp ult i32 %7383, 1
  %7387 = or i1 %7385, %7386
  %7388 = zext i1 %7387 to i8
  %7389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7388, i8* %7389, align 1
  %7390 = and i32 %7383, 255
  %7391 = call i32 @llvm.ctpop.i32(i32 %7390)
  %7392 = trunc i32 %7391 to i8
  %7393 = and i8 %7392, 1
  %7394 = xor i8 %7393, 1
  %7395 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7394, i8* %7395, align 1
  %7396 = xor i64 1, %7379
  %7397 = trunc i64 %7396 to i32
  %7398 = xor i32 %7397, %7383
  %7399 = lshr i32 %7398, 4
  %7400 = trunc i32 %7399 to i8
  %7401 = and i8 %7400, 1
  %7402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7401, i8* %7402, align 1
  %7403 = icmp eq i32 %7383, 0
  %7404 = zext i1 %7403 to i8
  %7405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7404, i8* %7405, align 1
  %7406 = lshr i32 %7383, 31
  %7407 = trunc i32 %7406 to i8
  %7408 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7407, i8* %7408, align 1
  %7409 = lshr i32 %7382, 31
  %7410 = xor i32 %7406, %7409
  %7411 = add i32 %7410, %7406
  %7412 = icmp eq i32 %7411, 2
  %7413 = zext i1 %7412 to i8
  %7414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7413, i8* %7414, align 1
  store %struct.Memory* %loadMem_49d67e, %struct.Memory** %MEMORY
  %loadMem_49d681 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7416 = getelementptr inbounds %struct.GPR, %struct.GPR* %7415, i32 0, i32 33
  %7417 = getelementptr inbounds %struct.Reg, %struct.Reg* %7416, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %7417 to i64*
  %7418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7419 = getelementptr inbounds %struct.GPR, %struct.GPR* %7418, i32 0, i32 1
  %7420 = getelementptr inbounds %struct.Reg, %struct.Reg* %7419, i32 0, i32 0
  %EAX.i14 = bitcast %union.anon* %7420 to i32*
  %7421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7422 = getelementptr inbounds %struct.GPR, %struct.GPR* %7421, i32 0, i32 15
  %7423 = getelementptr inbounds %struct.Reg, %struct.Reg* %7422, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %7423 to i64*
  %7424 = load i64, i64* %RBP.i15
  %7425 = sub i64 %7424, 12
  %7426 = load i32, i32* %EAX.i14
  %7427 = zext i32 %7426 to i64
  %7428 = load i64, i64* %PC.i13
  %7429 = add i64 %7428, 3
  store i64 %7429, i64* %PC.i13
  %7430 = inttoptr i64 %7425 to i32*
  store i32 %7426, i32* %7430
  store %struct.Memory* %loadMem_49d681, %struct.Memory** %MEMORY
  %loadMem_49d684 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7431 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7432 = getelementptr inbounds %struct.GPR, %struct.GPR* %7431, i32 0, i32 33
  %7433 = getelementptr inbounds %struct.Reg, %struct.Reg* %7432, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %7433 to i64*
  %7434 = load i64, i64* %PC.i12
  %7435 = add i64 %7434, -129
  %7436 = load i64, i64* %PC.i12
  %7437 = add i64 %7436, 5
  store i64 %7437, i64* %PC.i12
  %7438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7435, i64* %7438, align 8
  store %struct.Memory* %loadMem_49d684, %struct.Memory** %MEMORY
  br label %block_.L_49d603

block_.L_49d689:                                  ; preds = %block_.L_49d603
  %loadMem_49d689 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7440 = getelementptr inbounds %struct.GPR, %struct.GPR* %7439, i32 0, i32 33
  %7441 = getelementptr inbounds %struct.Reg, %struct.Reg* %7440, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %7441 to i64*
  %7442 = load i64, i64* %PC.i11
  %7443 = add i64 %7442, 5
  %7444 = load i64, i64* %PC.i11
  %7445 = add i64 %7444, 5
  store i64 %7445, i64* %PC.i11
  %7446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7443, i64* %7446, align 8
  store %struct.Memory* %loadMem_49d689, %struct.Memory** %MEMORY
  br label %block_.L_49d68e

block_.L_49d68e:                                  ; preds = %block_.L_49d689
  %loadMem_49d68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %7447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7448 = getelementptr inbounds %struct.GPR, %struct.GPR* %7447, i32 0, i32 33
  %7449 = getelementptr inbounds %struct.Reg, %struct.Reg* %7448, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %7449 to i64*
  %7450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7451 = getelementptr inbounds %struct.GPR, %struct.GPR* %7450, i32 0, i32 1
  %7452 = getelementptr inbounds %struct.Reg, %struct.Reg* %7451, i32 0, i32 0
  %RAX.i9 = bitcast %union.anon* %7452 to i64*
  %7453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7454 = getelementptr inbounds %struct.GPR, %struct.GPR* %7453, i32 0, i32 15
  %7455 = getelementptr inbounds %struct.Reg, %struct.Reg* %7454, i32 0, i32 0
  %RBP.i10 = bitcast %union.anon* %7455 to i64*
  %7456 = load i64, i64* %RBP.i10
  %7457 = sub i64 %7456, 8
  %7458 = load i64, i64* %PC.i8
  %7459 = add i64 %7458, 3
  store i64 %7459, i64* %PC.i8
  %7460 = inttoptr i64 %7457 to i32*
  %7461 = load i32, i32* %7460
  %7462 = zext i32 %7461 to i64
  store i64 %7462, i64* %RAX.i9, align 8
  store %struct.Memory* %loadMem_49d68e, %struct.Memory** %MEMORY
  %loadMem_49d691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7464 = getelementptr inbounds %struct.GPR, %struct.GPR* %7463, i32 0, i32 33
  %7465 = getelementptr inbounds %struct.Reg, %struct.Reg* %7464, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %7465 to i64*
  %7466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7467 = getelementptr inbounds %struct.GPR, %struct.GPR* %7466, i32 0, i32 1
  %7468 = getelementptr inbounds %struct.Reg, %struct.Reg* %7467, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %7468 to i64*
  %7469 = load i64, i64* %RAX.i
  %7470 = load i64, i64* %PC.i7
  %7471 = add i64 %7470, 3
  store i64 %7471, i64* %PC.i7
  %7472 = trunc i64 %7469 to i32
  %7473 = add i32 1, %7472
  %7474 = zext i32 %7473 to i64
  store i64 %7474, i64* %RAX.i, align 8
  %7475 = icmp ult i32 %7473, %7472
  %7476 = icmp ult i32 %7473, 1
  %7477 = or i1 %7475, %7476
  %7478 = zext i1 %7477 to i8
  %7479 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %7478, i8* %7479, align 1
  %7480 = and i32 %7473, 255
  %7481 = call i32 @llvm.ctpop.i32(i32 %7480)
  %7482 = trunc i32 %7481 to i8
  %7483 = and i8 %7482, 1
  %7484 = xor i8 %7483, 1
  %7485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %7484, i8* %7485, align 1
  %7486 = xor i64 1, %7469
  %7487 = trunc i64 %7486 to i32
  %7488 = xor i32 %7487, %7473
  %7489 = lshr i32 %7488, 4
  %7490 = trunc i32 %7489 to i8
  %7491 = and i8 %7490, 1
  %7492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %7491, i8* %7492, align 1
  %7493 = icmp eq i32 %7473, 0
  %7494 = zext i1 %7493 to i8
  %7495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %7494, i8* %7495, align 1
  %7496 = lshr i32 %7473, 31
  %7497 = trunc i32 %7496 to i8
  %7498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %7497, i8* %7498, align 1
  %7499 = lshr i32 %7472, 31
  %7500 = xor i32 %7496, %7499
  %7501 = add i32 %7500, %7496
  %7502 = icmp eq i32 %7501, 2
  %7503 = zext i1 %7502 to i8
  %7504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %7503, i8* %7504, align 1
  store %struct.Memory* %loadMem_49d691, %struct.Memory** %MEMORY
  %loadMem_49d694 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7505 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7506 = getelementptr inbounds %struct.GPR, %struct.GPR* %7505, i32 0, i32 33
  %7507 = getelementptr inbounds %struct.Reg, %struct.Reg* %7506, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %7507 to i64*
  %7508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7509 = getelementptr inbounds %struct.GPR, %struct.GPR* %7508, i32 0, i32 1
  %7510 = getelementptr inbounds %struct.Reg, %struct.Reg* %7509, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %7510 to i32*
  %7511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7512 = getelementptr inbounds %struct.GPR, %struct.GPR* %7511, i32 0, i32 15
  %7513 = getelementptr inbounds %struct.Reg, %struct.Reg* %7512, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %7513 to i64*
  %7514 = load i64, i64* %RBP.i6
  %7515 = sub i64 %7514, 8
  %7516 = load i32, i32* %EAX.i
  %7517 = zext i32 %7516 to i64
  %7518 = load i64, i64* %PC.i5
  %7519 = add i64 %7518, 3
  store i64 %7519, i64* %PC.i5
  %7520 = inttoptr i64 %7515 to i32*
  store i32 %7516, i32* %7520
  store %struct.Memory* %loadMem_49d694, %struct.Memory** %MEMORY
  %loadMem_49d697 = load %struct.Memory*, %struct.Memory** %MEMORY
  %7521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7522 = getelementptr inbounds %struct.GPR, %struct.GPR* %7521, i32 0, i32 33
  %7523 = getelementptr inbounds %struct.Reg, %struct.Reg* %7522, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %7523 to i64*
  %7524 = load i64, i64* %PC.i4
  %7525 = add i64 %7524, -193
  %7526 = load i64, i64* %PC.i4
  %7527 = add i64 %7526, 5
  store i64 %7527, i64* %PC.i4
  %7528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %7525, i64* %7528, align 8
  store %struct.Memory* %loadMem_49d697, %struct.Memory** %MEMORY
  br label %block_.L_49d5d6

block_.L_49d69c:                                  ; preds = %block_.L_49d5d6, %block_49cf97
  %loadMem_49d69c = load %struct.Memory*, %struct.Memory** %MEMORY
  %7529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7530 = getelementptr inbounds %struct.GPR, %struct.GPR* %7529, i32 0, i32 33
  %7531 = getelementptr inbounds %struct.Reg, %struct.Reg* %7530, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %7531 to i64*
  %7532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7533 = getelementptr inbounds %struct.GPR, %struct.GPR* %7532, i32 0, i32 15
  %7534 = getelementptr inbounds %struct.Reg, %struct.Reg* %7533, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %7534 to i64*
  %7535 = load i64, i64* %PC.i2
  %7536 = add i64 %7535, 1
  store i64 %7536, i64* %PC.i2
  %7537 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7538 = load i64, i64* %7537, align 8
  %7539 = add i64 %7538, 8
  %7540 = inttoptr i64 %7538 to i64*
  %7541 = load i64, i64* %7540
  store i64 %7541, i64* %RBP.i3, align 8
  store i64 %7539, i64* %7537, align 8
  store %struct.Memory* %loadMem_49d69c, %struct.Memory** %MEMORY
  %loadMem_49d69d = load %struct.Memory*, %struct.Memory** %MEMORY
  %7542 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7543 = getelementptr inbounds %struct.GPR, %struct.GPR* %7542, i32 0, i32 33
  %7544 = getelementptr inbounds %struct.Reg, %struct.Reg* %7543, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %7544 to i64*
  %7545 = load i64, i64* %PC.i1
  %7546 = add i64 %7545, 1
  store i64 %7546, i64* %PC.i1
  %7547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %7548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7549 = load i64, i64* %7548, align 8
  %7550 = inttoptr i64 %7549 to i64*
  %7551 = load i64, i64* %7550
  store i64 %7551, i64* %7547, align 8
  %7552 = add i64 %7549, 8
  store i64 %7552, i64* %7548, align 8
  store %struct.Memory* %loadMem_49d69d, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_49d69d
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

define %struct.Memory* @routine_movslq_0xc__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rax__MINUS0x18__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x7247a0___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x7247a0_type* @G_0x7247a0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 24
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

define %struct.Memory* @routine_sete__sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i64, i64* %PC
  %11 = add i64 %10, 4
  store i64 %11, i64* %PC
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %13 = load i8, i8* %12, align 1
  store i8 %13, i8* %SIL, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andb__0x1___sil(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = load i8, i8* %SIL
  %11 = zext i8 %10 to i64
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = and i64 1, %11
  %15 = trunc i64 %14 to i8
  store i8 %15, i8* %SIL, align 1
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

define %struct.Memory* @routine_movzbl__sil___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.anon.2*
  %SIL = getelementptr inbounds %struct.anon.2, %struct.anon.2* %9, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %11 = getelementptr inbounds %struct.GPR, %struct.GPR* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.Reg, %struct.Reg* %11, i32 0, i32 0
  %RDX = bitcast %union.anon* %12 to i64*
  %13 = load i8, i8* %SIL
  %14 = zext i8 %13 to i64
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = and i64 %14, 255
  store i64 %17, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 32
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x68__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 104
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x0__0x11ad0__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_49cf9c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_49d69c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jge_.L_49d03c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x10__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
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

define %struct.Memory* @routine_jge_.L_49d029(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x70fcf0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x70fcf0_type* @G_0x70fcf0 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1918__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6424
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x9c__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 156
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x8__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 8
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movl_0x98__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 152
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl_MINUS0x4__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 3
  store i64 %16, i64* %PC
  %17 = trunc i64 %12 to i32
  %18 = inttoptr i64 %14 to i32*
  %19 = load i32, i32* %18
  %20 = add i32 %19, %17
  %21 = zext i32 %20 to i64
  store i64 %21, i64* %RDX, align 8
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

define %struct.Memory* @routine_movzwl___rax__rcx_2____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  %23 = zext i16 %22 to i64
  store i64 %23, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d4518___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %11, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x8___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 8, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 8
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
  %25 = xor i64 8, %9
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

define %struct.Memory* @routine_movslq_MINUS0x8__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_shlq__0x6___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = shl i64 %9, 5
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

define %struct.Memory* @routine_movl__edx____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %17, %15
  %19 = load i32, i32* %EDX
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 3
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i32*
  store i32 %19, i32* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
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

define %struct.Memory* @routine_movl__eax__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49cfb4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d02e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x8__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49cfa3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__0x11bfc__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 72700
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

define %struct.Memory* @routine_je_.L_49d178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x11c08__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72712
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

define %struct.Memory* @routine_jge_.L_49d173(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_0x11c04__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 72708
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

define %struct.Memory* @routine_jge_.L_49d160(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x1940__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl_0xa4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 164
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0xa0__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 160
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x408___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 1032, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 1032
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
  %25 = xor i64 1032, %9
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

define %struct.Memory* @routine_movq_0x8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x808___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 2056, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 2056
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
  %25 = xor i64 2056, %9
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

define %struct.Memory* @routine_jmpq_.L_49d076(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d165(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d058(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d178(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0x6d4518___rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %11, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xc98__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3224
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11abc__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72380
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xd00__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3328
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_MINUS0x18__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1cc__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 460
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xc88__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3208
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x1d0__rcx____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 464
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x6d4518___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = load i64, i64* bitcast (%G_0x6d4518_type* @G_0x6d4518 to i64*)
  store i64 %11, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rcx__0xc90__rdx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 3216
  %14 = load i64, i64* %RCX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x48__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movl__eax__0xc18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3096
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x23c__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 572
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__0xd08__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3336
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x0__0xc18__rcx_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3096
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

define %struct.Memory* @routine_jne_.L_49d23c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_49d23c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__0xc98__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3224
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 10
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x11bf4__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 72692
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addl__0x4___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 4, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RDX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 4
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
  %26 = xor i64 4, %9
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

define %struct.Memory* @routine_jge_.L_49d335(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 8
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

define %struct.Memory* @routine_jge_.L_49d322(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x2__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 12
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

define %struct.Memory* @routine_jge_.L_49d30f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x41__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 65
  %16 = icmp ult i32 %14, 65
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
  %25 = xor i32 %14, 65
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

define %struct.Memory* @routine_jge_.L_49d2fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x3738__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0xc__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movslq_MINUS0x10__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movq_0xc08__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3080
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
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

define %struct.Memory* @routine_movl__eax__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 16
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49d288(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d301(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0xc__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 12
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49d277(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d314(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d266(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d327(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d243(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x3__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 3
  %16 = icmp ult i32 %14, 3
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
  %25 = xor i32 %14, 3
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

define %struct.Memory* @routine_jge_.L_49d3e8(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_49d3d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x12__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 16
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 4
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  %14 = load i32, i32* %13
  %15 = sub i32 %14, 18
  %16 = icmp ult i32 %14, 18
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
  %25 = xor i32 %14, 18
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

define %struct.Memory* @routine_jge_.L_49d3c2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x3740__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 14144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xc10__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3088
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49d35e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d3c7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d34d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d3da(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d33c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 4
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

define %struct.Memory* @routine_jge_.L_49d44b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x1d8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 472
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

define %struct.Memory* @routine_movl__edx__0xc20__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 3104
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

define %struct.Memory* @routine_movl_0x1e8__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 488
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

define %struct.Memory* @routine_movl__edx__0xc30__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 3120
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

define %struct.Memory* @routine_jmpq_.L_49d3ef(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_49d4f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_49d4de(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x1950__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 6480
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x90__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x94__rcx____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movw___rax__rcx_2____si(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i16*
  %22 = load i16, i16* %21
  store i16 %22, i16* %SI, align 2
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0xcc0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 3264, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 3264
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
  %25 = xor i64 3264, %9
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

define %struct.Memory* @routine_movw__si____rax__rcx_2_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %SI = bitcast %union.anon* %8 to i16*
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
  %17 = mul i64 %16, 2
  %18 = add i64 %17, %15
  %19 = load i16, i16* %SI
  %20 = zext i16 %19 to i64
  %21 = load i64, i64* %PC
  %22 = add i64 %21, 4
  store i64 %22, i64* %PC
  %23 = inttoptr i64 %18 to i16*
  store i16 %19, i16* %23
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_49d463(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d4e3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d452(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x0__MINUS0x20__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_49d5be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_49d5a6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_49d593(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x20___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 32, %9
  store i64 %12, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_49d513(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d598(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d502(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x244__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 580
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0xc1c__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 3100
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x94__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 148
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 8
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_49d69c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x90__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 144
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_49d689(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0xc40__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 3136
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x14c__rax__rcx_4____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 332
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

define %struct.Memory* @routine_movl__edx__0xc48__rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %18 = add i64 %15, 3144
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

define %struct.Memory* @routine_jmpq_.L_49d603(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d68e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_49d5d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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
