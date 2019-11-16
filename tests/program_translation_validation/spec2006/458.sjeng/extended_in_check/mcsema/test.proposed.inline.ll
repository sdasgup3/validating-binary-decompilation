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
%G_0x85f154_type = type <{ [1 x i8] }>
%G_0x8661bc_type = type <{ [1 x i8] }>
%G_0x8661d0_type = type <{ [4 x i8] }>
%G_0x86bd7c_type = type <{ [4 x i8] }>
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
@G_0x85f154 = global %G_0x85f154_type zeroinitializer
@G_0x8661bc = global %G_0x8661bc_type zeroinitializer
@G_0x8661d0 = global %G_0x8661d0_type zeroinitializer
@G_0x86bd7c = global %G_0x86bd7c_type zeroinitializer

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

declare %struct.Memory* @sub_4013e0.is_attacked(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @extended_in_check(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_40b200 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_40b200, %struct.Memory** %MEMORY
  %loadMem_40b201 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i480 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i481 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i482 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i481
  %27 = load i64, i64* %PC.i480
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i480
  store i64 %26, i64* %RBP.i482, align 8
  store %struct.Memory* %loadMem_40b201, %struct.Memory** %MEMORY
  %loadMem_40b204 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i478 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i479 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i479
  %36 = load i64, i64* %PC.i478
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i478
  %38 = sub i64 %35, 16
  store i64 %38, i64* %RSP.i479, align 8
  %39 = icmp ult i64 %35, 16
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
  %49 = xor i64 16, %35
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
  store %struct.Memory* %loadMem_40b204, %struct.Memory** %MEMORY
  %loadMem_40b208 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i477 = bitcast %union.anon* %69 to i64*
  %70 = load i64, i64* %PC.i477
  %71 = add i64 %70, 8
  store i64 %71, i64* %PC.i477
  %72 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %73 = sub i32 %72, 3
  %74 = icmp ult i32 %72, 3
  %75 = zext i1 %74 to i8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %75, i8* %76, align 1
  %77 = and i32 %73, 255
  %78 = call i32 @llvm.ctpop.i32(i32 %77)
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 1
  %81 = xor i8 %80, 1
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %81, i8* %82, align 1
  %83 = xor i32 %72, 3
  %84 = xor i32 %83, %73
  %85 = lshr i32 %84, 4
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %87, i8* %88, align 1
  %89 = icmp eq i32 %73, 0
  %90 = zext i1 %89 to i8
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %90, i8* %91, align 1
  %92 = lshr i32 %73, 31
  %93 = trunc i32 %92 to i8
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %93, i8* %94, align 1
  %95 = lshr i32 %72, 31
  %96 = xor i32 %92, %95
  %97 = add i32 %96, %95
  %98 = icmp eq i32 %97, 2
  %99 = zext i1 %98 to i8
  %100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %99, i8* %100, align 1
  store %struct.Memory* %loadMem_40b208, %struct.Memory** %MEMORY
  %loadMem_40b210 = load %struct.Memory*, %struct.Memory** %MEMORY
  %101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %102 = getelementptr inbounds %struct.GPR, %struct.GPR* %101, i32 0, i32 33
  %103 = getelementptr inbounds %struct.Reg, %struct.Reg* %102, i32 0, i32 0
  %PC.i476 = bitcast %union.anon* %103 to i64*
  %104 = load i64, i64* %PC.i476
  %105 = add i64 %104, 18
  %106 = load i64, i64* %PC.i476
  %107 = add i64 %106, 6
  %108 = load i64, i64* %PC.i476
  %109 = add i64 %108, 6
  store i64 %109, i64* %PC.i476
  %110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %111 = load i8, i8* %110, align 1
  %112 = icmp eq i8 %111, 0
  %113 = zext i1 %112 to i8
  store i8 %113, i8* %BRANCH_TAKEN, align 1
  %114 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %115 = select i1 %112, i64 %105, i64 %107
  store i64 %115, i64* %114, align 8
  store %struct.Memory* %loadMem_40b210, %struct.Memory** %MEMORY
  %loadBr_40b210 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b210 = icmp eq i8 %loadBr_40b210, 1
  br i1 %cmpBr_40b210, label %block_.L_40b222, label %block_40b216

block_40b216:                                     ; preds = %entry
  %loadMem_40b216 = load %struct.Memory*, %struct.Memory** %MEMORY
  %116 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %117 = getelementptr inbounds %struct.GPR, %struct.GPR* %116, i32 0, i32 33
  %118 = getelementptr inbounds %struct.Reg, %struct.Reg* %117, i32 0, i32 0
  %PC.i474 = bitcast %union.anon* %118 to i64*
  %119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %120 = getelementptr inbounds %struct.GPR, %struct.GPR* %119, i32 0, i32 15
  %121 = getelementptr inbounds %struct.Reg, %struct.Reg* %120, i32 0, i32 0
  %RBP.i475 = bitcast %union.anon* %121 to i64*
  %122 = load i64, i64* %RBP.i475
  %123 = sub i64 %122, 4
  %124 = load i64, i64* %PC.i474
  %125 = add i64 %124, 7
  store i64 %125, i64* %PC.i474
  %126 = inttoptr i64 %123 to i32*
  store i32 0, i32* %126
  store %struct.Memory* %loadMem_40b216, %struct.Memory** %MEMORY
  %loadMem_40b21d = load %struct.Memory*, %struct.Memory** %MEMORY
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 33
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %PC.i473 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %PC.i473
  %131 = add i64 %130, 1275
  %132 = load i64, i64* %PC.i473
  %133 = add i64 %132, 5
  store i64 %133, i64* %PC.i473
  %134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %131, i64* %134, align 8
  store %struct.Memory* %loadMem_40b21d, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b222:                                  ; preds = %entry
  %loadMem_40b222 = load %struct.Memory*, %struct.Memory** %MEMORY
  %135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %136 = getelementptr inbounds %struct.GPR, %struct.GPR* %135, i32 0, i32 33
  %137 = getelementptr inbounds %struct.Reg, %struct.Reg* %136, i32 0, i32 0
  %PC.i472 = bitcast %union.anon* %137 to i64*
  %138 = load i64, i64* %PC.i472
  %139 = add i64 %138, 8
  store i64 %139, i64* %PC.i472
  %140 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %141 = sub i32 %140, 1
  %142 = icmp ult i32 %140, 1
  %143 = zext i1 %142 to i8
  %144 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %143, i8* %144, align 1
  %145 = and i32 %141, 255
  %146 = call i32 @llvm.ctpop.i32(i32 %145)
  %147 = trunc i32 %146 to i8
  %148 = and i8 %147, 1
  %149 = xor i8 %148, 1
  %150 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %149, i8* %150, align 1
  %151 = xor i32 %140, 1
  %152 = xor i32 %151, %141
  %153 = lshr i32 %152, 4
  %154 = trunc i32 %153 to i8
  %155 = and i8 %154, 1
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %155, i8* %156, align 1
  %157 = icmp eq i32 %141, 0
  %158 = zext i1 %157 to i8
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %158, i8* %159, align 1
  %160 = lshr i32 %141, 31
  %161 = trunc i32 %160 to i8
  %162 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %161, i8* %162, align 1
  %163 = lshr i32 %140, 31
  %164 = xor i32 %160, %163
  %165 = add i32 %164, %163
  %166 = icmp eq i32 %165, 2
  %167 = zext i1 %166 to i8
  %168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %167, i8* %168, align 1
  store %struct.Memory* %loadMem_40b222, %struct.Memory** %MEMORY
  %loadMem_40b22a = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i471 = bitcast %union.anon* %171 to i64*
  %172 = load i64, i64* %PC.i471
  %173 = add i64 %172, 629
  %174 = load i64, i64* %PC.i471
  %175 = add i64 %174, 6
  %176 = load i64, i64* %PC.i471
  %177 = add i64 %176, 6
  store i64 %177, i64* %PC.i471
  %178 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %179 = load i8, i8* %178, align 1
  %180 = icmp eq i8 %179, 0
  %181 = zext i1 %180 to i8
  store i8 %181, i8* %BRANCH_TAKEN, align 1
  %182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %183 = select i1 %180, i64 %173, i64 %175
  store i64 %183, i64* %182, align 8
  store %struct.Memory* %loadMem_40b22a, %struct.Memory** %MEMORY
  %loadBr_40b22a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b22a = icmp eq i8 %loadBr_40b22a, 1
  br i1 %cmpBr_40b22a, label %block_.L_40b49f, label %block_40b230

block_40b230:                                     ; preds = %block_.L_40b222
  %loadMem_40b230 = load %struct.Memory*, %struct.Memory** %MEMORY
  %184 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %185 = getelementptr inbounds %struct.GPR, %struct.GPR* %184, i32 0, i32 33
  %186 = getelementptr inbounds %struct.Reg, %struct.Reg* %185, i32 0, i32 0
  %PC.i469 = bitcast %union.anon* %186 to i64*
  %187 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %188 = getelementptr inbounds %struct.GPR, %struct.GPR* %187, i32 0, i32 1
  %189 = getelementptr inbounds %struct.Reg, %struct.Reg* %188, i32 0, i32 0
  %RAX.i470 = bitcast %union.anon* %189 to i64*
  %190 = load i64, i64* %PC.i469
  %191 = add i64 %190, 7
  store i64 %191, i64* %PC.i469
  %192 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %193 = zext i32 %192 to i64
  store i64 %193, i64* %RAX.i470, align 8
  store %struct.Memory* %loadMem_40b230, %struct.Memory** %MEMORY
  %loadMem_40b237 = load %struct.Memory*, %struct.Memory** %MEMORY
  %194 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %195 = getelementptr inbounds %struct.GPR, %struct.GPR* %194, i32 0, i32 33
  %196 = getelementptr inbounds %struct.Reg, %struct.Reg* %195, i32 0, i32 0
  %PC.i467 = bitcast %union.anon* %196 to i64*
  %197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %198 = getelementptr inbounds %struct.GPR, %struct.GPR* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.Reg, %struct.Reg* %198, i32 0, i32 0
  %RAX.i468 = bitcast %union.anon* %199 to i64*
  %200 = load i64, i64* %RAX.i468
  %201 = load i64, i64* %PC.i467
  %202 = add i64 %201, 3
  store i64 %202, i64* %PC.i467
  %203 = trunc i64 %200 to i32
  %204 = sub i32 %203, 12
  %205 = zext i32 %204 to i64
  store i64 %205, i64* %RAX.i468, align 8
  %206 = icmp ult i32 %203, 12
  %207 = zext i1 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %207, i8* %208, align 1
  %209 = and i32 %204, 255
  %210 = call i32 @llvm.ctpop.i32(i32 %209)
  %211 = trunc i32 %210 to i8
  %212 = and i8 %211, 1
  %213 = xor i8 %212, 1
  %214 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %213, i8* %214, align 1
  %215 = xor i64 12, %200
  %216 = trunc i64 %215 to i32
  %217 = xor i32 %216, %204
  %218 = lshr i32 %217, 4
  %219 = trunc i32 %218 to i8
  %220 = and i8 %219, 1
  %221 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %220, i8* %221, align 1
  %222 = icmp eq i32 %204, 0
  %223 = zext i1 %222 to i8
  %224 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %223, i8* %224, align 1
  %225 = lshr i32 %204, 31
  %226 = trunc i32 %225 to i8
  %227 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %226, i8* %227, align 1
  %228 = lshr i32 %203, 31
  %229 = xor i32 %225, %228
  %230 = add i32 %229, %228
  %231 = icmp eq i32 %230, 2
  %232 = zext i1 %231 to i8
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %232, i8* %233, align 1
  store %struct.Memory* %loadMem_40b237, %struct.Memory** %MEMORY
  %loadMem_40b23a = load %struct.Memory*, %struct.Memory** %MEMORY
  %234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %235 = getelementptr inbounds %struct.GPR, %struct.GPR* %234, i32 0, i32 33
  %236 = getelementptr inbounds %struct.Reg, %struct.Reg* %235, i32 0, i32 0
  %PC.i464 = bitcast %union.anon* %236 to i64*
  %237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %238 = getelementptr inbounds %struct.GPR, %struct.GPR* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.Reg, %struct.Reg* %238, i32 0, i32 0
  %EAX.i465 = bitcast %union.anon* %239 to i32*
  %240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %241 = getelementptr inbounds %struct.GPR, %struct.GPR* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.Reg, %struct.Reg* %241, i32 0, i32 0
  %RCX.i466 = bitcast %union.anon* %242 to i64*
  %243 = load i32, i32* %EAX.i465
  %244 = zext i32 %243 to i64
  %245 = load i64, i64* %PC.i464
  %246 = add i64 %245, 3
  store i64 %246, i64* %PC.i464
  %247 = shl i64 %244, 32
  %248 = ashr exact i64 %247, 32
  store i64 %248, i64* %RCX.i466, align 8
  store %struct.Memory* %loadMem_40b23a, %struct.Memory** %MEMORY
  %loadMem_40b23d = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i461 = bitcast %union.anon* %251 to i64*
  %252 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %253 = getelementptr inbounds %struct.GPR, %struct.GPR* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.Reg, %struct.Reg* %253, i32 0, i32 0
  %RAX.i462 = bitcast %union.anon* %254 to i64*
  %255 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %256 = getelementptr inbounds %struct.GPR, %struct.GPR* %255, i32 0, i32 5
  %257 = getelementptr inbounds %struct.Reg, %struct.Reg* %256, i32 0, i32 0
  %RCX.i463 = bitcast %union.anon* %257 to i64*
  %258 = load i64, i64* %RCX.i463
  %259 = mul i64 %258, 4
  %260 = add i64 %259, 8807744
  %261 = load i64, i64* %PC.i461
  %262 = add i64 %261, 7
  store i64 %262, i64* %PC.i461
  %263 = inttoptr i64 %260 to i32*
  %264 = load i32, i32* %263
  %265 = zext i32 %264 to i64
  store i64 %265, i64* %RAX.i462, align 8
  store %struct.Memory* %loadMem_40b23d, %struct.Memory** %MEMORY
  %loadMem_40b244 = load %struct.Memory*, %struct.Memory** %MEMORY
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 33
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %PC.i458 = bitcast %union.anon* %268 to i64*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 1
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %EAX.i459 = bitcast %union.anon* %271 to i32*
  %272 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %273 = getelementptr inbounds %struct.GPR, %struct.GPR* %272, i32 0, i32 15
  %274 = getelementptr inbounds %struct.Reg, %struct.Reg* %273, i32 0, i32 0
  %RBP.i460 = bitcast %union.anon* %274 to i64*
  %275 = load i64, i64* %RBP.i460
  %276 = sub i64 %275, 8
  %277 = load i32, i32* %EAX.i459
  %278 = zext i32 %277 to i64
  %279 = load i64, i64* %PC.i458
  %280 = add i64 %279, 3
  store i64 %280, i64* %PC.i458
  %281 = inttoptr i64 %276 to i32*
  store i32 %277, i32* %281
  store %struct.Memory* %loadMem_40b244, %struct.Memory** %MEMORY
  %loadMem_40b247 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i456 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 15
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RBP.i457 = bitcast %union.anon* %287 to i64*
  %288 = load i64, i64* %RBP.i457
  %289 = sub i64 %288, 8
  %290 = load i64, i64* %PC.i456
  %291 = add i64 %290, 4
  store i64 %291, i64* %PC.i456
  %292 = inttoptr i64 %289 to i32*
  %293 = load i32, i32* %292
  %294 = sub i32 %293, 8
  %295 = icmp ult i32 %293, 8
  %296 = zext i1 %295 to i8
  %297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %296, i8* %297, align 1
  %298 = and i32 %294, 255
  %299 = call i32 @llvm.ctpop.i32(i32 %298)
  %300 = trunc i32 %299 to i8
  %301 = and i8 %300, 1
  %302 = xor i8 %301, 1
  %303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %302, i8* %303, align 1
  %304 = xor i32 %293, 8
  %305 = xor i32 %304, %294
  %306 = lshr i32 %305, 4
  %307 = trunc i32 %306 to i8
  %308 = and i8 %307, 1
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %308, i8* %309, align 1
  %310 = icmp eq i32 %294, 0
  %311 = zext i1 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %311, i8* %312, align 1
  %313 = lshr i32 %294, 31
  %314 = trunc i32 %313 to i8
  %315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %314, i8* %315, align 1
  %316 = lshr i32 %293, 31
  %317 = xor i32 %313, %316
  %318 = add i32 %317, %316
  %319 = icmp eq i32 %318, 2
  %320 = zext i1 %319 to i8
  %321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %320, i8* %321, align 1
  store %struct.Memory* %loadMem_40b247, %struct.Memory** %MEMORY
  %loadMem_40b24b = load %struct.Memory*, %struct.Memory** %MEMORY
  %322 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %323 = getelementptr inbounds %struct.GPR, %struct.GPR* %322, i32 0, i32 33
  %324 = getelementptr inbounds %struct.Reg, %struct.Reg* %323, i32 0, i32 0
  %PC.i455 = bitcast %union.anon* %324 to i64*
  %325 = load i64, i64* %PC.i455
  %326 = add i64 %325, 16
  %327 = load i64, i64* %PC.i455
  %328 = add i64 %327, 6
  %329 = load i64, i64* %PC.i455
  %330 = add i64 %329, 6
  store i64 %330, i64* %PC.i455
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %332 = load i8, i8* %331, align 1
  store i8 %332, i8* %BRANCH_TAKEN, align 1
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %334 = icmp ne i8 %332, 0
  %335 = select i1 %334, i64 %326, i64 %328
  store i64 %335, i64* %333, align 8
  store %struct.Memory* %loadMem_40b24b, %struct.Memory** %MEMORY
  %loadBr_40b24b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b24b = icmp eq i8 %loadBr_40b24b, 1
  br i1 %cmpBr_40b24b, label %block_.L_40b25b, label %block_40b251

block_40b251:                                     ; preds = %block_40b230
  %loadMem_40b251 = load %struct.Memory*, %struct.Memory** %MEMORY
  %336 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %337 = getelementptr inbounds %struct.GPR, %struct.GPR* %336, i32 0, i32 33
  %338 = getelementptr inbounds %struct.Reg, %struct.Reg* %337, i32 0, i32 0
  %PC.i453 = bitcast %union.anon* %338 to i64*
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %340 = getelementptr inbounds %struct.GPR, %struct.GPR* %339, i32 0, i32 15
  %341 = getelementptr inbounds %struct.Reg, %struct.Reg* %340, i32 0, i32 0
  %RBP.i454 = bitcast %union.anon* %341 to i64*
  %342 = load i64, i64* %RBP.i454
  %343 = sub i64 %342, 8
  %344 = load i64, i64* %PC.i453
  %345 = add i64 %344, 4
  store i64 %345, i64* %PC.i453
  %346 = inttoptr i64 %343 to i32*
  %347 = load i32, i32* %346
  %348 = sub i32 %347, 10
  %349 = icmp ult i32 %347, 10
  %350 = zext i1 %349 to i8
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %350, i8* %351, align 1
  %352 = and i32 %348, 255
  %353 = call i32 @llvm.ctpop.i32(i32 %352)
  %354 = trunc i32 %353 to i8
  %355 = and i8 %354, 1
  %356 = xor i8 %355, 1
  %357 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %356, i8* %357, align 1
  %358 = xor i32 %347, 10
  %359 = xor i32 %358, %348
  %360 = lshr i32 %359, 4
  %361 = trunc i32 %360 to i8
  %362 = and i8 %361, 1
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %362, i8* %363, align 1
  %364 = icmp eq i32 %348, 0
  %365 = zext i1 %364 to i8
  %366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %365, i8* %366, align 1
  %367 = lshr i32 %348, 31
  %368 = trunc i32 %367 to i8
  %369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %368, i8* %369, align 1
  %370 = lshr i32 %347, 31
  %371 = xor i32 %367, %370
  %372 = add i32 %371, %370
  %373 = icmp eq i32 %372, 2
  %374 = zext i1 %373 to i8
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %374, i8* %375, align 1
  store %struct.Memory* %loadMem_40b251, %struct.Memory** %MEMORY
  %loadMem_40b255 = load %struct.Memory*, %struct.Memory** %MEMORY
  %376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %377 = getelementptr inbounds %struct.GPR, %struct.GPR* %376, i32 0, i32 33
  %378 = getelementptr inbounds %struct.Reg, %struct.Reg* %377, i32 0, i32 0
  %PC.i452 = bitcast %union.anon* %378 to i64*
  %379 = load i64, i64* %PC.i452
  %380 = add i64 %379, 18
  %381 = load i64, i64* %PC.i452
  %382 = add i64 %381, 6
  %383 = load i64, i64* %PC.i452
  %384 = add i64 %383, 6
  store i64 %384, i64* %PC.i452
  %385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %386 = load i8, i8* %385, align 1
  %387 = icmp eq i8 %386, 0
  %388 = zext i1 %387 to i8
  store i8 %388, i8* %BRANCH_TAKEN, align 1
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %390 = select i1 %387, i64 %380, i64 %382
  store i64 %390, i64* %389, align 8
  store %struct.Memory* %loadMem_40b255, %struct.Memory** %MEMORY
  %loadBr_40b255 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b255 = icmp eq i8 %loadBr_40b255, 1
  br i1 %cmpBr_40b255, label %block_.L_40b267, label %block_.L_40b25b

block_.L_40b25b:                                  ; preds = %block_40b251, %block_40b230
  %loadMem_40b25b = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i450 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 15
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RBP.i451 = bitcast %union.anon* %396 to i64*
  %397 = load i64, i64* %RBP.i451
  %398 = sub i64 %397, 4
  %399 = load i64, i64* %PC.i450
  %400 = add i64 %399, 7
  store i64 %400, i64* %PC.i450
  %401 = inttoptr i64 %398 to i32*
  store i32 2, i32* %401
  store %struct.Memory* %loadMem_40b25b, %struct.Memory** %MEMORY
  %loadMem_40b262 = load %struct.Memory*, %struct.Memory** %MEMORY
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 33
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %PC.i449 = bitcast %union.anon* %404 to i64*
  %405 = load i64, i64* %PC.i449
  %406 = add i64 %405, 1206
  %407 = load i64, i64* %PC.i449
  %408 = add i64 %407, 5
  store i64 %408, i64* %PC.i449
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %406, i64* %409, align 8
  store %struct.Memory* %loadMem_40b262, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b267:                                  ; preds = %block_40b251
  %loadMem_40b267 = load %struct.Memory*, %struct.Memory** %MEMORY
  %410 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %411 = getelementptr inbounds %struct.GPR, %struct.GPR* %410, i32 0, i32 33
  %412 = getelementptr inbounds %struct.Reg, %struct.Reg* %411, i32 0, i32 0
  %PC.i447 = bitcast %union.anon* %412 to i64*
  %413 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %414 = getelementptr inbounds %struct.GPR, %struct.GPR* %413, i32 0, i32 1
  %415 = getelementptr inbounds %struct.Reg, %struct.Reg* %414, i32 0, i32 0
  %RAX.i448 = bitcast %union.anon* %415 to i64*
  %416 = load i64, i64* %PC.i447
  %417 = add i64 %416, 7
  store i64 %417, i64* %PC.i447
  %418 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %419 = zext i32 %418 to i64
  store i64 %419, i64* %RAX.i448, align 8
  store %struct.Memory* %loadMem_40b267, %struct.Memory** %MEMORY
  %loadMem_40b26e = load %struct.Memory*, %struct.Memory** %MEMORY
  %420 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %421 = getelementptr inbounds %struct.GPR, %struct.GPR* %420, i32 0, i32 33
  %422 = getelementptr inbounds %struct.Reg, %struct.Reg* %421, i32 0, i32 0
  %PC.i445 = bitcast %union.anon* %422 to i64*
  %423 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %424 = getelementptr inbounds %struct.GPR, %struct.GPR* %423, i32 0, i32 1
  %425 = getelementptr inbounds %struct.Reg, %struct.Reg* %424, i32 0, i32 0
  %RAX.i446 = bitcast %union.anon* %425 to i64*
  %426 = load i64, i64* %RAX.i446
  %427 = load i64, i64* %PC.i445
  %428 = add i64 %427, 3
  store i64 %428, i64* %PC.i445
  %429 = trunc i64 %426 to i32
  %430 = sub i32 %429, 1
  %431 = zext i32 %430 to i64
  store i64 %431, i64* %RAX.i446, align 8
  %432 = icmp ult i32 %429, 1
  %433 = zext i1 %432 to i8
  %434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %433, i8* %434, align 1
  %435 = and i32 %430, 255
  %436 = call i32 @llvm.ctpop.i32(i32 %435)
  %437 = trunc i32 %436 to i8
  %438 = and i8 %437, 1
  %439 = xor i8 %438, 1
  %440 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %439, i8* %440, align 1
  %441 = xor i64 1, %426
  %442 = trunc i64 %441 to i32
  %443 = xor i32 %442, %430
  %444 = lshr i32 %443, 4
  %445 = trunc i32 %444 to i8
  %446 = and i8 %445, 1
  %447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %446, i8* %447, align 1
  %448 = icmp eq i32 %430, 0
  %449 = zext i1 %448 to i8
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %449, i8* %450, align 1
  %451 = lshr i32 %430, 31
  %452 = trunc i32 %451 to i8
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %452, i8* %453, align 1
  %454 = lshr i32 %429, 31
  %455 = xor i32 %451, %454
  %456 = add i32 %455, %454
  %457 = icmp eq i32 %456, 2
  %458 = zext i1 %457 to i8
  %459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %458, i8* %459, align 1
  store %struct.Memory* %loadMem_40b26e, %struct.Memory** %MEMORY
  %loadMem_40b271 = load %struct.Memory*, %struct.Memory** %MEMORY
  %460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %461 = getelementptr inbounds %struct.GPR, %struct.GPR* %460, i32 0, i32 33
  %462 = getelementptr inbounds %struct.Reg, %struct.Reg* %461, i32 0, i32 0
  %PC.i442 = bitcast %union.anon* %462 to i64*
  %463 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %464 = getelementptr inbounds %struct.GPR, %struct.GPR* %463, i32 0, i32 1
  %465 = getelementptr inbounds %struct.Reg, %struct.Reg* %464, i32 0, i32 0
  %EAX.i443 = bitcast %union.anon* %465 to i32*
  %466 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %467 = getelementptr inbounds %struct.GPR, %struct.GPR* %466, i32 0, i32 5
  %468 = getelementptr inbounds %struct.Reg, %struct.Reg* %467, i32 0, i32 0
  %RCX.i444 = bitcast %union.anon* %468 to i64*
  %469 = load i32, i32* %EAX.i443
  %470 = zext i32 %469 to i64
  %471 = load i64, i64* %PC.i442
  %472 = add i64 %471, 3
  store i64 %472, i64* %PC.i442
  %473 = shl i64 %470, 32
  %474 = ashr exact i64 %473, 32
  store i64 %474, i64* %RCX.i444, align 8
  store %struct.Memory* %loadMem_40b271, %struct.Memory** %MEMORY
  %loadMem_40b274 = load %struct.Memory*, %struct.Memory** %MEMORY
  %475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %476 = getelementptr inbounds %struct.GPR, %struct.GPR* %475, i32 0, i32 33
  %477 = getelementptr inbounds %struct.Reg, %struct.Reg* %476, i32 0, i32 0
  %PC.i439 = bitcast %union.anon* %477 to i64*
  %478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %479 = getelementptr inbounds %struct.GPR, %struct.GPR* %478, i32 0, i32 1
  %480 = getelementptr inbounds %struct.Reg, %struct.Reg* %479, i32 0, i32 0
  %RAX.i440 = bitcast %union.anon* %480 to i64*
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %482 = getelementptr inbounds %struct.GPR, %struct.GPR* %481, i32 0, i32 5
  %483 = getelementptr inbounds %struct.Reg, %struct.Reg* %482, i32 0, i32 0
  %RCX.i441 = bitcast %union.anon* %483 to i64*
  %484 = load i64, i64* %RCX.i441
  %485 = mul i64 %484, 4
  %486 = add i64 %485, 8807744
  %487 = load i64, i64* %PC.i439
  %488 = add i64 %487, 7
  store i64 %488, i64* %PC.i439
  %489 = inttoptr i64 %486 to i32*
  %490 = load i32, i32* %489
  %491 = zext i32 %490 to i64
  store i64 %491, i64* %RAX.i440, align 8
  store %struct.Memory* %loadMem_40b274, %struct.Memory** %MEMORY
  %loadMem_40b27b = load %struct.Memory*, %struct.Memory** %MEMORY
  %492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %493 = getelementptr inbounds %struct.GPR, %struct.GPR* %492, i32 0, i32 33
  %494 = getelementptr inbounds %struct.Reg, %struct.Reg* %493, i32 0, i32 0
  %PC.i436 = bitcast %union.anon* %494 to i64*
  %495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %496 = getelementptr inbounds %struct.GPR, %struct.GPR* %495, i32 0, i32 1
  %497 = getelementptr inbounds %struct.Reg, %struct.Reg* %496, i32 0, i32 0
  %EAX.i437 = bitcast %union.anon* %497 to i32*
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %499 = getelementptr inbounds %struct.GPR, %struct.GPR* %498, i32 0, i32 15
  %500 = getelementptr inbounds %struct.Reg, %struct.Reg* %499, i32 0, i32 0
  %RBP.i438 = bitcast %union.anon* %500 to i64*
  %501 = load i64, i64* %RBP.i438
  %502 = sub i64 %501, 8
  %503 = load i32, i32* %EAX.i437
  %504 = zext i32 %503 to i64
  %505 = load i64, i64* %PC.i436
  %506 = add i64 %505, 3
  store i64 %506, i64* %PC.i436
  %507 = inttoptr i64 %502 to i32*
  store i32 %503, i32* %507
  store %struct.Memory* %loadMem_40b27b, %struct.Memory** %MEMORY
  %loadMem_40b27e = load %struct.Memory*, %struct.Memory** %MEMORY
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %509 = getelementptr inbounds %struct.GPR, %struct.GPR* %508, i32 0, i32 33
  %510 = getelementptr inbounds %struct.Reg, %struct.Reg* %509, i32 0, i32 0
  %PC.i434 = bitcast %union.anon* %510 to i64*
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %512 = getelementptr inbounds %struct.GPR, %struct.GPR* %511, i32 0, i32 15
  %513 = getelementptr inbounds %struct.Reg, %struct.Reg* %512, i32 0, i32 0
  %RBP.i435 = bitcast %union.anon* %513 to i64*
  %514 = load i64, i64* %RBP.i435
  %515 = sub i64 %514, 8
  %516 = load i64, i64* %PC.i434
  %517 = add i64 %516, 4
  store i64 %517, i64* %PC.i434
  %518 = inttoptr i64 %515 to i32*
  %519 = load i32, i32* %518
  %520 = sub i32 %519, 8
  %521 = icmp ult i32 %519, 8
  %522 = zext i1 %521 to i8
  %523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %522, i8* %523, align 1
  %524 = and i32 %520, 255
  %525 = call i32 @llvm.ctpop.i32(i32 %524)
  %526 = trunc i32 %525 to i8
  %527 = and i8 %526, 1
  %528 = xor i8 %527, 1
  %529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %528, i8* %529, align 1
  %530 = xor i32 %519, 8
  %531 = xor i32 %530, %520
  %532 = lshr i32 %531, 4
  %533 = trunc i32 %532 to i8
  %534 = and i8 %533, 1
  %535 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %534, i8* %535, align 1
  %536 = icmp eq i32 %520, 0
  %537 = zext i1 %536 to i8
  %538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %537, i8* %538, align 1
  %539 = lshr i32 %520, 31
  %540 = trunc i32 %539 to i8
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %540, i8* %541, align 1
  %542 = lshr i32 %519, 31
  %543 = xor i32 %539, %542
  %544 = add i32 %543, %542
  %545 = icmp eq i32 %544, 2
  %546 = zext i1 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %546, i8* %547, align 1
  store %struct.Memory* %loadMem_40b27e, %struct.Memory** %MEMORY
  %loadMem_40b282 = load %struct.Memory*, %struct.Memory** %MEMORY
  %548 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %549 = getelementptr inbounds %struct.GPR, %struct.GPR* %548, i32 0, i32 33
  %550 = getelementptr inbounds %struct.Reg, %struct.Reg* %549, i32 0, i32 0
  %PC.i433 = bitcast %union.anon* %550 to i64*
  %551 = load i64, i64* %PC.i433
  %552 = add i64 %551, 16
  %553 = load i64, i64* %PC.i433
  %554 = add i64 %553, 6
  %555 = load i64, i64* %PC.i433
  %556 = add i64 %555, 6
  store i64 %556, i64* %PC.i433
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %558 = load i8, i8* %557, align 1
  store i8 %558, i8* %BRANCH_TAKEN, align 1
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %560 = icmp ne i8 %558, 0
  %561 = select i1 %560, i64 %552, i64 %554
  store i64 %561, i64* %559, align 8
  store %struct.Memory* %loadMem_40b282, %struct.Memory** %MEMORY
  %loadBr_40b282 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b282 = icmp eq i8 %loadBr_40b282, 1
  br i1 %cmpBr_40b282, label %block_.L_40b292, label %block_40b288

block_40b288:                                     ; preds = %block_.L_40b267
  %loadMem_40b288 = load %struct.Memory*, %struct.Memory** %MEMORY
  %562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %563 = getelementptr inbounds %struct.GPR, %struct.GPR* %562, i32 0, i32 33
  %564 = getelementptr inbounds %struct.Reg, %struct.Reg* %563, i32 0, i32 0
  %PC.i431 = bitcast %union.anon* %564 to i64*
  %565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %566 = getelementptr inbounds %struct.GPR, %struct.GPR* %565, i32 0, i32 15
  %567 = getelementptr inbounds %struct.Reg, %struct.Reg* %566, i32 0, i32 0
  %RBP.i432 = bitcast %union.anon* %567 to i64*
  %568 = load i64, i64* %RBP.i432
  %569 = sub i64 %568, 8
  %570 = load i64, i64* %PC.i431
  %571 = add i64 %570, 4
  store i64 %571, i64* %PC.i431
  %572 = inttoptr i64 %569 to i32*
  %573 = load i32, i32* %572
  %574 = sub i32 %573, 10
  %575 = icmp ult i32 %573, 10
  %576 = zext i1 %575 to i8
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %576, i8* %577, align 1
  %578 = and i32 %574, 255
  %579 = call i32 @llvm.ctpop.i32(i32 %578)
  %580 = trunc i32 %579 to i8
  %581 = and i8 %580, 1
  %582 = xor i8 %581, 1
  %583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %582, i8* %583, align 1
  %584 = xor i32 %573, 10
  %585 = xor i32 %584, %574
  %586 = lshr i32 %585, 4
  %587 = trunc i32 %586 to i8
  %588 = and i8 %587, 1
  %589 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %588, i8* %589, align 1
  %590 = icmp eq i32 %574, 0
  %591 = zext i1 %590 to i8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %591, i8* %592, align 1
  %593 = lshr i32 %574, 31
  %594 = trunc i32 %593 to i8
  %595 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %594, i8* %595, align 1
  %596 = lshr i32 %573, 31
  %597 = xor i32 %593, %596
  %598 = add i32 %597, %596
  %599 = icmp eq i32 %598, 2
  %600 = zext i1 %599 to i8
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %600, i8* %601, align 1
  store %struct.Memory* %loadMem_40b288, %struct.Memory** %MEMORY
  %loadMem_40b28c = load %struct.Memory*, %struct.Memory** %MEMORY
  %602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %603 = getelementptr inbounds %struct.GPR, %struct.GPR* %602, i32 0, i32 33
  %604 = getelementptr inbounds %struct.Reg, %struct.Reg* %603, i32 0, i32 0
  %PC.i430 = bitcast %union.anon* %604 to i64*
  %605 = load i64, i64* %PC.i430
  %606 = add i64 %605, 18
  %607 = load i64, i64* %PC.i430
  %608 = add i64 %607, 6
  %609 = load i64, i64* %PC.i430
  %610 = add i64 %609, 6
  store i64 %610, i64* %PC.i430
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %612 = load i8, i8* %611, align 1
  %613 = icmp eq i8 %612, 0
  %614 = zext i1 %613 to i8
  store i8 %614, i8* %BRANCH_TAKEN, align 1
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %616 = select i1 %613, i64 %606, i64 %608
  store i64 %616, i64* %615, align 8
  store %struct.Memory* %loadMem_40b28c, %struct.Memory** %MEMORY
  %loadBr_40b28c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b28c = icmp eq i8 %loadBr_40b28c, 1
  br i1 %cmpBr_40b28c, label %block_.L_40b29e, label %block_.L_40b292

block_.L_40b292:                                  ; preds = %block_40b288, %block_.L_40b267
  %loadMem_40b292 = load %struct.Memory*, %struct.Memory** %MEMORY
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %618 = getelementptr inbounds %struct.GPR, %struct.GPR* %617, i32 0, i32 33
  %619 = getelementptr inbounds %struct.Reg, %struct.Reg* %618, i32 0, i32 0
  %PC.i428 = bitcast %union.anon* %619 to i64*
  %620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %621 = getelementptr inbounds %struct.GPR, %struct.GPR* %620, i32 0, i32 15
  %622 = getelementptr inbounds %struct.Reg, %struct.Reg* %621, i32 0, i32 0
  %RBP.i429 = bitcast %union.anon* %622 to i64*
  %623 = load i64, i64* %RBP.i429
  %624 = sub i64 %623, 4
  %625 = load i64, i64* %PC.i428
  %626 = add i64 %625, 7
  store i64 %626, i64* %PC.i428
  %627 = inttoptr i64 %624 to i32*
  store i32 2, i32* %627
  store %struct.Memory* %loadMem_40b292, %struct.Memory** %MEMORY
  %loadMem_40b299 = load %struct.Memory*, %struct.Memory** %MEMORY
  %628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %629 = getelementptr inbounds %struct.GPR, %struct.GPR* %628, i32 0, i32 33
  %630 = getelementptr inbounds %struct.Reg, %struct.Reg* %629, i32 0, i32 0
  %PC.i427 = bitcast %union.anon* %630 to i64*
  %631 = load i64, i64* %PC.i427
  %632 = add i64 %631, 1151
  %633 = load i64, i64* %PC.i427
  %634 = add i64 %633, 5
  store i64 %634, i64* %PC.i427
  %635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %632, i64* %635, align 8
  store %struct.Memory* %loadMem_40b299, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b29e:                                  ; preds = %block_40b288
  %loadMem_40b29e = load %struct.Memory*, %struct.Memory** %MEMORY
  %636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %637 = getelementptr inbounds %struct.GPR, %struct.GPR* %636, i32 0, i32 33
  %638 = getelementptr inbounds %struct.Reg, %struct.Reg* %637, i32 0, i32 0
  %PC.i425 = bitcast %union.anon* %638 to i64*
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %640 = getelementptr inbounds %struct.GPR, %struct.GPR* %639, i32 0, i32 1
  %641 = getelementptr inbounds %struct.Reg, %struct.Reg* %640, i32 0, i32 0
  %RAX.i426 = bitcast %union.anon* %641 to i64*
  %642 = load i64, i64* %PC.i425
  %643 = add i64 %642, 7
  store i64 %643, i64* %PC.i425
  %644 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %645 = zext i32 %644 to i64
  store i64 %645, i64* %RAX.i426, align 8
  store %struct.Memory* %loadMem_40b29e, %struct.Memory** %MEMORY
  %loadMem_40b2a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %646 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %647 = getelementptr inbounds %struct.GPR, %struct.GPR* %646, i32 0, i32 33
  %648 = getelementptr inbounds %struct.Reg, %struct.Reg* %647, i32 0, i32 0
  %PC.i423 = bitcast %union.anon* %648 to i64*
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %650 = getelementptr inbounds %struct.GPR, %struct.GPR* %649, i32 0, i32 1
  %651 = getelementptr inbounds %struct.Reg, %struct.Reg* %650, i32 0, i32 0
  %RAX.i424 = bitcast %union.anon* %651 to i64*
  %652 = load i64, i64* %RAX.i424
  %653 = load i64, i64* %PC.i423
  %654 = add i64 %653, 3
  store i64 %654, i64* %PC.i423
  %655 = trunc i64 %652 to i32
  %656 = add i32 1, %655
  %657 = zext i32 %656 to i64
  store i64 %657, i64* %RAX.i424, align 8
  %658 = icmp ult i32 %656, %655
  %659 = icmp ult i32 %656, 1
  %660 = or i1 %658, %659
  %661 = zext i1 %660 to i8
  %662 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %661, i8* %662, align 1
  %663 = and i32 %656, 255
  %664 = call i32 @llvm.ctpop.i32(i32 %663)
  %665 = trunc i32 %664 to i8
  %666 = and i8 %665, 1
  %667 = xor i8 %666, 1
  %668 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %667, i8* %668, align 1
  %669 = xor i64 1, %652
  %670 = trunc i64 %669 to i32
  %671 = xor i32 %670, %656
  %672 = lshr i32 %671, 4
  %673 = trunc i32 %672 to i8
  %674 = and i8 %673, 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %674, i8* %675, align 1
  %676 = icmp eq i32 %656, 0
  %677 = zext i1 %676 to i8
  %678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %677, i8* %678, align 1
  %679 = lshr i32 %656, 31
  %680 = trunc i32 %679 to i8
  %681 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %680, i8* %681, align 1
  %682 = lshr i32 %655, 31
  %683 = xor i32 %679, %682
  %684 = add i32 %683, %679
  %685 = icmp eq i32 %684, 2
  %686 = zext i1 %685 to i8
  %687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %686, i8* %687, align 1
  store %struct.Memory* %loadMem_40b2a5, %struct.Memory** %MEMORY
  %loadMem_40b2a8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %689 = getelementptr inbounds %struct.GPR, %struct.GPR* %688, i32 0, i32 33
  %690 = getelementptr inbounds %struct.Reg, %struct.Reg* %689, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %690 to i64*
  %691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %692 = getelementptr inbounds %struct.GPR, %struct.GPR* %691, i32 0, i32 1
  %693 = getelementptr inbounds %struct.Reg, %struct.Reg* %692, i32 0, i32 0
  %EAX.i421 = bitcast %union.anon* %693 to i32*
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %695 = getelementptr inbounds %struct.GPR, %struct.GPR* %694, i32 0, i32 5
  %696 = getelementptr inbounds %struct.Reg, %struct.Reg* %695, i32 0, i32 0
  %RCX.i422 = bitcast %union.anon* %696 to i64*
  %697 = load i32, i32* %EAX.i421
  %698 = zext i32 %697 to i64
  %699 = load i64, i64* %PC.i420
  %700 = add i64 %699, 3
  store i64 %700, i64* %PC.i420
  %701 = shl i64 %698, 32
  %702 = ashr exact i64 %701, 32
  store i64 %702, i64* %RCX.i422, align 8
  store %struct.Memory* %loadMem_40b2a8, %struct.Memory** %MEMORY
  %loadMem_40b2ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %704 = getelementptr inbounds %struct.GPR, %struct.GPR* %703, i32 0, i32 33
  %705 = getelementptr inbounds %struct.Reg, %struct.Reg* %704, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %705 to i64*
  %706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %707 = getelementptr inbounds %struct.GPR, %struct.GPR* %706, i32 0, i32 1
  %708 = getelementptr inbounds %struct.Reg, %struct.Reg* %707, i32 0, i32 0
  %RAX.i418 = bitcast %union.anon* %708 to i64*
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 5
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %RCX.i419 = bitcast %union.anon* %711 to i64*
  %712 = load i64, i64* %RCX.i419
  %713 = mul i64 %712, 4
  %714 = add i64 %713, 8807744
  %715 = load i64, i64* %PC.i417
  %716 = add i64 %715, 7
  store i64 %716, i64* %PC.i417
  %717 = inttoptr i64 %714 to i32*
  %718 = load i32, i32* %717
  %719 = zext i32 %718 to i64
  store i64 %719, i64* %RAX.i418, align 8
  store %struct.Memory* %loadMem_40b2ab, %struct.Memory** %MEMORY
  %loadMem_40b2b2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %721 = getelementptr inbounds %struct.GPR, %struct.GPR* %720, i32 0, i32 33
  %722 = getelementptr inbounds %struct.Reg, %struct.Reg* %721, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %722 to i64*
  %723 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %724 = getelementptr inbounds %struct.GPR, %struct.GPR* %723, i32 0, i32 1
  %725 = getelementptr inbounds %struct.Reg, %struct.Reg* %724, i32 0, i32 0
  %EAX.i415 = bitcast %union.anon* %725 to i32*
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 15
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %728 to i64*
  %729 = load i64, i64* %RBP.i416
  %730 = sub i64 %729, 8
  %731 = load i32, i32* %EAX.i415
  %732 = zext i32 %731 to i64
  %733 = load i64, i64* %PC.i414
  %734 = add i64 %733, 3
  store i64 %734, i64* %PC.i414
  %735 = inttoptr i64 %730 to i32*
  store i32 %731, i32* %735
  store %struct.Memory* %loadMem_40b2b2, %struct.Memory** %MEMORY
  %loadMem_40b2b5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %737 = getelementptr inbounds %struct.GPR, %struct.GPR* %736, i32 0, i32 33
  %738 = getelementptr inbounds %struct.Reg, %struct.Reg* %737, i32 0, i32 0
  %PC.i412 = bitcast %union.anon* %738 to i64*
  %739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %740 = getelementptr inbounds %struct.GPR, %struct.GPR* %739, i32 0, i32 15
  %741 = getelementptr inbounds %struct.Reg, %struct.Reg* %740, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %741 to i64*
  %742 = load i64, i64* %RBP.i413
  %743 = sub i64 %742, 8
  %744 = load i64, i64* %PC.i412
  %745 = add i64 %744, 4
  store i64 %745, i64* %PC.i412
  %746 = inttoptr i64 %743 to i32*
  %747 = load i32, i32* %746
  %748 = sub i32 %747, 8
  %749 = icmp ult i32 %747, 8
  %750 = zext i1 %749 to i8
  %751 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %750, i8* %751, align 1
  %752 = and i32 %748, 255
  %753 = call i32 @llvm.ctpop.i32(i32 %752)
  %754 = trunc i32 %753 to i8
  %755 = and i8 %754, 1
  %756 = xor i8 %755, 1
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %756, i8* %757, align 1
  %758 = xor i32 %747, 8
  %759 = xor i32 %758, %748
  %760 = lshr i32 %759, 4
  %761 = trunc i32 %760 to i8
  %762 = and i8 %761, 1
  %763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %762, i8* %763, align 1
  %764 = icmp eq i32 %748, 0
  %765 = zext i1 %764 to i8
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %765, i8* %766, align 1
  %767 = lshr i32 %748, 31
  %768 = trunc i32 %767 to i8
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %768, i8* %769, align 1
  %770 = lshr i32 %747, 31
  %771 = xor i32 %767, %770
  %772 = add i32 %771, %770
  %773 = icmp eq i32 %772, 2
  %774 = zext i1 %773 to i8
  %775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %774, i8* %775, align 1
  store %struct.Memory* %loadMem_40b2b5, %struct.Memory** %MEMORY
  %loadMem_40b2b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %776 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %777 = getelementptr inbounds %struct.GPR, %struct.GPR* %776, i32 0, i32 33
  %778 = getelementptr inbounds %struct.Reg, %struct.Reg* %777, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %778 to i64*
  %779 = load i64, i64* %PC.i411
  %780 = add i64 %779, 16
  %781 = load i64, i64* %PC.i411
  %782 = add i64 %781, 6
  %783 = load i64, i64* %PC.i411
  %784 = add i64 %783, 6
  store i64 %784, i64* %PC.i411
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %786 = load i8, i8* %785, align 1
  store i8 %786, i8* %BRANCH_TAKEN, align 1
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %788 = icmp ne i8 %786, 0
  %789 = select i1 %788, i64 %780, i64 %782
  store i64 %789, i64* %787, align 8
  store %struct.Memory* %loadMem_40b2b9, %struct.Memory** %MEMORY
  %loadBr_40b2b9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b2b9 = icmp eq i8 %loadBr_40b2b9, 1
  br i1 %cmpBr_40b2b9, label %block_.L_40b2c9, label %block_40b2bf

block_40b2bf:                                     ; preds = %block_.L_40b29e
  %loadMem_40b2bf = load %struct.Memory*, %struct.Memory** %MEMORY
  %790 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %791 = getelementptr inbounds %struct.GPR, %struct.GPR* %790, i32 0, i32 33
  %792 = getelementptr inbounds %struct.Reg, %struct.Reg* %791, i32 0, i32 0
  %PC.i409 = bitcast %union.anon* %792 to i64*
  %793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %794 = getelementptr inbounds %struct.GPR, %struct.GPR* %793, i32 0, i32 15
  %795 = getelementptr inbounds %struct.Reg, %struct.Reg* %794, i32 0, i32 0
  %RBP.i410 = bitcast %union.anon* %795 to i64*
  %796 = load i64, i64* %RBP.i410
  %797 = sub i64 %796, 8
  %798 = load i64, i64* %PC.i409
  %799 = add i64 %798, 4
  store i64 %799, i64* %PC.i409
  %800 = inttoptr i64 %797 to i32*
  %801 = load i32, i32* %800
  %802 = sub i32 %801, 10
  %803 = icmp ult i32 %801, 10
  %804 = zext i1 %803 to i8
  %805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %804, i8* %805, align 1
  %806 = and i32 %802, 255
  %807 = call i32 @llvm.ctpop.i32(i32 %806)
  %808 = trunc i32 %807 to i8
  %809 = and i8 %808, 1
  %810 = xor i8 %809, 1
  %811 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %810, i8* %811, align 1
  %812 = xor i32 %801, 10
  %813 = xor i32 %812, %802
  %814 = lshr i32 %813, 4
  %815 = trunc i32 %814 to i8
  %816 = and i8 %815, 1
  %817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %816, i8* %817, align 1
  %818 = icmp eq i32 %802, 0
  %819 = zext i1 %818 to i8
  %820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %819, i8* %820, align 1
  %821 = lshr i32 %802, 31
  %822 = trunc i32 %821 to i8
  %823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %822, i8* %823, align 1
  %824 = lshr i32 %801, 31
  %825 = xor i32 %821, %824
  %826 = add i32 %825, %824
  %827 = icmp eq i32 %826, 2
  %828 = zext i1 %827 to i8
  %829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %828, i8* %829, align 1
  store %struct.Memory* %loadMem_40b2bf, %struct.Memory** %MEMORY
  %loadMem_40b2c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %832 to i64*
  %833 = load i64, i64* %PC.i408
  %834 = add i64 %833, 18
  %835 = load i64, i64* %PC.i408
  %836 = add i64 %835, 6
  %837 = load i64, i64* %PC.i408
  %838 = add i64 %837, 6
  store i64 %838, i64* %PC.i408
  %839 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %840 = load i8, i8* %839, align 1
  %841 = icmp eq i8 %840, 0
  %842 = zext i1 %841 to i8
  store i8 %842, i8* %BRANCH_TAKEN, align 1
  %843 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %844 = select i1 %841, i64 %834, i64 %836
  store i64 %844, i64* %843, align 8
  store %struct.Memory* %loadMem_40b2c3, %struct.Memory** %MEMORY
  %loadBr_40b2c3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b2c3 = icmp eq i8 %loadBr_40b2c3, 1
  br i1 %cmpBr_40b2c3, label %block_.L_40b2d5, label %block_.L_40b2c9

block_.L_40b2c9:                                  ; preds = %block_40b2bf, %block_.L_40b29e
  %loadMem_40b2c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %846 = getelementptr inbounds %struct.GPR, %struct.GPR* %845, i32 0, i32 33
  %847 = getelementptr inbounds %struct.Reg, %struct.Reg* %846, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %847 to i64*
  %848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %849 = getelementptr inbounds %struct.GPR, %struct.GPR* %848, i32 0, i32 15
  %850 = getelementptr inbounds %struct.Reg, %struct.Reg* %849, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %850 to i64*
  %851 = load i64, i64* %RBP.i407
  %852 = sub i64 %851, 4
  %853 = load i64, i64* %PC.i406
  %854 = add i64 %853, 7
  store i64 %854, i64* %PC.i406
  %855 = inttoptr i64 %852 to i32*
  store i32 2, i32* %855
  store %struct.Memory* %loadMem_40b2c9, %struct.Memory** %MEMORY
  %loadMem_40b2d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %856 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %857 = getelementptr inbounds %struct.GPR, %struct.GPR* %856, i32 0, i32 33
  %858 = getelementptr inbounds %struct.Reg, %struct.Reg* %857, i32 0, i32 0
  %PC.i405 = bitcast %union.anon* %858 to i64*
  %859 = load i64, i64* %PC.i405
  %860 = add i64 %859, 1096
  %861 = load i64, i64* %PC.i405
  %862 = add i64 %861, 5
  store i64 %862, i64* %PC.i405
  %863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %860, i64* %863, align 8
  store %struct.Memory* %loadMem_40b2d0, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b2d5:                                  ; preds = %block_40b2bf
  %loadMem_40b2d5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %865 = getelementptr inbounds %struct.GPR, %struct.GPR* %864, i32 0, i32 33
  %866 = getelementptr inbounds %struct.Reg, %struct.Reg* %865, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %866 to i64*
  %867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %868 = getelementptr inbounds %struct.GPR, %struct.GPR* %867, i32 0, i32 1
  %869 = getelementptr inbounds %struct.Reg, %struct.Reg* %868, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %869 to i64*
  %870 = load i64, i64* %PC.i403
  %871 = add i64 %870, 7
  store i64 %871, i64* %PC.i403
  %872 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %873 = zext i32 %872 to i64
  store i64 %873, i64* %RAX.i404, align 8
  store %struct.Memory* %loadMem_40b2d5, %struct.Memory** %MEMORY
  %loadMem_40b2dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i401 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i402 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RAX.i402
  %881 = load i64, i64* %PC.i401
  %882 = add i64 %881, 3
  store i64 %882, i64* %PC.i401
  %883 = trunc i64 %880 to i32
  %884 = add i32 12, %883
  %885 = zext i32 %884 to i64
  store i64 %885, i64* %RAX.i402, align 8
  %886 = icmp ult i32 %884, %883
  %887 = icmp ult i32 %884, 12
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
  %897 = xor i64 12, %880
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
  store %struct.Memory* %loadMem_40b2dc, %struct.Memory** %MEMORY
  %loadMem_40b2df = load %struct.Memory*, %struct.Memory** %MEMORY
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 33
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %PC.i398 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 1
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %EAX.i399 = bitcast %union.anon* %921 to i32*
  %922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %923 = getelementptr inbounds %struct.GPR, %struct.GPR* %922, i32 0, i32 5
  %924 = getelementptr inbounds %struct.Reg, %struct.Reg* %923, i32 0, i32 0
  %RCX.i400 = bitcast %union.anon* %924 to i64*
  %925 = load i32, i32* %EAX.i399
  %926 = zext i32 %925 to i64
  %927 = load i64, i64* %PC.i398
  %928 = add i64 %927, 3
  store i64 %928, i64* %PC.i398
  %929 = shl i64 %926, 32
  %930 = ashr exact i64 %929, 32
  store i64 %930, i64* %RCX.i400, align 8
  store %struct.Memory* %loadMem_40b2df, %struct.Memory** %MEMORY
  %loadMem_40b2e2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i395 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 1
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %RAX.i396 = bitcast %union.anon* %936 to i64*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 5
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RCX.i397 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RCX.i397
  %941 = mul i64 %940, 4
  %942 = add i64 %941, 8807744
  %943 = load i64, i64* %PC.i395
  %944 = add i64 %943, 7
  store i64 %944, i64* %PC.i395
  %945 = inttoptr i64 %942 to i32*
  %946 = load i32, i32* %945
  %947 = zext i32 %946 to i64
  store i64 %947, i64* %RAX.i396, align 8
  store %struct.Memory* %loadMem_40b2e2, %struct.Memory** %MEMORY
  %loadMem_40b2e9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 33
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %PC.i392 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %952 = getelementptr inbounds %struct.GPR, %struct.GPR* %951, i32 0, i32 1
  %953 = getelementptr inbounds %struct.Reg, %struct.Reg* %952, i32 0, i32 0
  %EAX.i393 = bitcast %union.anon* %953 to i32*
  %954 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %955 = getelementptr inbounds %struct.GPR, %struct.GPR* %954, i32 0, i32 15
  %956 = getelementptr inbounds %struct.Reg, %struct.Reg* %955, i32 0, i32 0
  %RBP.i394 = bitcast %union.anon* %956 to i64*
  %957 = load i64, i64* %RBP.i394
  %958 = sub i64 %957, 8
  %959 = load i32, i32* %EAX.i393
  %960 = zext i32 %959 to i64
  %961 = load i64, i64* %PC.i392
  %962 = add i64 %961, 3
  store i64 %962, i64* %PC.i392
  %963 = inttoptr i64 %958 to i32*
  store i32 %959, i32* %963
  store %struct.Memory* %loadMem_40b2e9, %struct.Memory** %MEMORY
  %loadMem_40b2ec = load %struct.Memory*, %struct.Memory** %MEMORY
  %964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %965 = getelementptr inbounds %struct.GPR, %struct.GPR* %964, i32 0, i32 33
  %966 = getelementptr inbounds %struct.Reg, %struct.Reg* %965, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %966 to i64*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %968 = getelementptr inbounds %struct.GPR, %struct.GPR* %967, i32 0, i32 15
  %969 = getelementptr inbounds %struct.Reg, %struct.Reg* %968, i32 0, i32 0
  %RBP.i391 = bitcast %union.anon* %969 to i64*
  %970 = load i64, i64* %RBP.i391
  %971 = sub i64 %970, 8
  %972 = load i64, i64* %PC.i390
  %973 = add i64 %972, 4
  store i64 %973, i64* %PC.i390
  %974 = inttoptr i64 %971 to i32*
  %975 = load i32, i32* %974
  %976 = sub i32 %975, 8
  %977 = icmp ult i32 %975, 8
  %978 = zext i1 %977 to i8
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %978, i8* %979, align 1
  %980 = and i32 %976, 255
  %981 = call i32 @llvm.ctpop.i32(i32 %980)
  %982 = trunc i32 %981 to i8
  %983 = and i8 %982, 1
  %984 = xor i8 %983, 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %984, i8* %985, align 1
  %986 = xor i32 %975, 8
  %987 = xor i32 %986, %976
  %988 = lshr i32 %987, 4
  %989 = trunc i32 %988 to i8
  %990 = and i8 %989, 1
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %990, i8* %991, align 1
  %992 = icmp eq i32 %976, 0
  %993 = zext i1 %992 to i8
  %994 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %993, i8* %994, align 1
  %995 = lshr i32 %976, 31
  %996 = trunc i32 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %996, i8* %997, align 1
  %998 = lshr i32 %975, 31
  %999 = xor i32 %995, %998
  %1000 = add i32 %999, %998
  %1001 = icmp eq i32 %1000, 2
  %1002 = zext i1 %1001 to i8
  %1003 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1002, i8* %1003, align 1
  store %struct.Memory* %loadMem_40b2ec, %struct.Memory** %MEMORY
  %loadMem_40b2f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1005 = getelementptr inbounds %struct.GPR, %struct.GPR* %1004, i32 0, i32 33
  %1006 = getelementptr inbounds %struct.Reg, %struct.Reg* %1005, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %1006 to i64*
  %1007 = load i64, i64* %PC.i389
  %1008 = add i64 %1007, 16
  %1009 = load i64, i64* %PC.i389
  %1010 = add i64 %1009, 6
  %1011 = load i64, i64* %PC.i389
  %1012 = add i64 %1011, 6
  store i64 %1012, i64* %PC.i389
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1014 = load i8, i8* %1013, align 1
  store i8 %1014, i8* %BRANCH_TAKEN, align 1
  %1015 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1016 = icmp ne i8 %1014, 0
  %1017 = select i1 %1016, i64 %1008, i64 %1010
  store i64 %1017, i64* %1015, align 8
  store %struct.Memory* %loadMem_40b2f0, %struct.Memory** %MEMORY
  %loadBr_40b2f0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b2f0 = icmp eq i8 %loadBr_40b2f0, 1
  br i1 %cmpBr_40b2f0, label %block_.L_40b300, label %block_40b2f6

block_40b2f6:                                     ; preds = %block_.L_40b2d5
  %loadMem_40b2f6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 15
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RBP.i388 = bitcast %union.anon* %1023 to i64*
  %1024 = load i64, i64* %RBP.i388
  %1025 = sub i64 %1024, 8
  %1026 = load i64, i64* %PC.i387
  %1027 = add i64 %1026, 4
  store i64 %1027, i64* %PC.i387
  %1028 = inttoptr i64 %1025 to i32*
  %1029 = load i32, i32* %1028
  %1030 = sub i32 %1029, 10
  %1031 = icmp ult i32 %1029, 10
  %1032 = zext i1 %1031 to i8
  %1033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1032, i8* %1033, align 1
  %1034 = and i32 %1030, 255
  %1035 = call i32 @llvm.ctpop.i32(i32 %1034)
  %1036 = trunc i32 %1035 to i8
  %1037 = and i8 %1036, 1
  %1038 = xor i8 %1037, 1
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1038, i8* %1039, align 1
  %1040 = xor i32 %1029, 10
  %1041 = xor i32 %1040, %1030
  %1042 = lshr i32 %1041, 4
  %1043 = trunc i32 %1042 to i8
  %1044 = and i8 %1043, 1
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1044, i8* %1045, align 1
  %1046 = icmp eq i32 %1030, 0
  %1047 = zext i1 %1046 to i8
  %1048 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1047, i8* %1048, align 1
  %1049 = lshr i32 %1030, 31
  %1050 = trunc i32 %1049 to i8
  %1051 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1050, i8* %1051, align 1
  %1052 = lshr i32 %1029, 31
  %1053 = xor i32 %1049, %1052
  %1054 = add i32 %1053, %1052
  %1055 = icmp eq i32 %1054, 2
  %1056 = zext i1 %1055 to i8
  %1057 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1056, i8* %1057, align 1
  store %struct.Memory* %loadMem_40b2f6, %struct.Memory** %MEMORY
  %loadMem_40b2fa = load %struct.Memory*, %struct.Memory** %MEMORY
  %1058 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1059 = getelementptr inbounds %struct.GPR, %struct.GPR* %1058, i32 0, i32 33
  %1060 = getelementptr inbounds %struct.Reg, %struct.Reg* %1059, i32 0, i32 0
  %PC.i386 = bitcast %union.anon* %1060 to i64*
  %1061 = load i64, i64* %PC.i386
  %1062 = add i64 %1061, 18
  %1063 = load i64, i64* %PC.i386
  %1064 = add i64 %1063, 6
  %1065 = load i64, i64* %PC.i386
  %1066 = add i64 %1065, 6
  store i64 %1066, i64* %PC.i386
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1068 = load i8, i8* %1067, align 1
  %1069 = icmp eq i8 %1068, 0
  %1070 = zext i1 %1069 to i8
  store i8 %1070, i8* %BRANCH_TAKEN, align 1
  %1071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1072 = select i1 %1069, i64 %1062, i64 %1064
  store i64 %1072, i64* %1071, align 8
  store %struct.Memory* %loadMem_40b2fa, %struct.Memory** %MEMORY
  %loadBr_40b2fa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b2fa = icmp eq i8 %loadBr_40b2fa, 1
  br i1 %cmpBr_40b2fa, label %block_.L_40b30c, label %block_.L_40b300

block_.L_40b300:                                  ; preds = %block_40b2f6, %block_.L_40b2d5
  %loadMem_40b300 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1074 = getelementptr inbounds %struct.GPR, %struct.GPR* %1073, i32 0, i32 33
  %1075 = getelementptr inbounds %struct.Reg, %struct.Reg* %1074, i32 0, i32 0
  %PC.i384 = bitcast %union.anon* %1075 to i64*
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 15
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %RBP.i385 = bitcast %union.anon* %1078 to i64*
  %1079 = load i64, i64* %RBP.i385
  %1080 = sub i64 %1079, 4
  %1081 = load i64, i64* %PC.i384
  %1082 = add i64 %1081, 7
  store i64 %1082, i64* %PC.i384
  %1083 = inttoptr i64 %1080 to i32*
  store i32 2, i32* %1083
  store %struct.Memory* %loadMem_40b300, %struct.Memory** %MEMORY
  %loadMem_40b307 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1084 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1085 = getelementptr inbounds %struct.GPR, %struct.GPR* %1084, i32 0, i32 33
  %1086 = getelementptr inbounds %struct.Reg, %struct.Reg* %1085, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %1086 to i64*
  %1087 = load i64, i64* %PC.i383
  %1088 = add i64 %1087, 1041
  %1089 = load i64, i64* %PC.i383
  %1090 = add i64 %1089, 5
  store i64 %1090, i64* %PC.i383
  %1091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1088, i64* %1091, align 8
  store %struct.Memory* %loadMem_40b307, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b30c:                                  ; preds = %block_40b2f6
  %loadMem_40b30c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1093 = getelementptr inbounds %struct.GPR, %struct.GPR* %1092, i32 0, i32 33
  %1094 = getelementptr inbounds %struct.Reg, %struct.Reg* %1093, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %1094 to i64*
  %1095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1096 = getelementptr inbounds %struct.GPR, %struct.GPR* %1095, i32 0, i32 1
  %1097 = getelementptr inbounds %struct.Reg, %struct.Reg* %1096, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %1097 to i64*
  %1098 = load i64, i64* %PC.i381
  %1099 = add i64 %1098, 7
  store i64 %1099, i64* %PC.i381
  %1100 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %1101 = zext i32 %1100 to i64
  store i64 %1101, i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_40b30c, %struct.Memory** %MEMORY
  %loadMem_40b313 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1103 = getelementptr inbounds %struct.GPR, %struct.GPR* %1102, i32 0, i32 33
  %1104 = getelementptr inbounds %struct.Reg, %struct.Reg* %1103, i32 0, i32 0
  %PC.i379 = bitcast %union.anon* %1104 to i64*
  %1105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1106 = getelementptr inbounds %struct.GPR, %struct.GPR* %1105, i32 0, i32 1
  %1107 = getelementptr inbounds %struct.Reg, %struct.Reg* %1106, i32 0, i32 0
  %RAX.i380 = bitcast %union.anon* %1107 to i64*
  %1108 = load i64, i64* %RAX.i380
  %1109 = load i64, i64* %PC.i379
  %1110 = add i64 %1109, 3
  store i64 %1110, i64* %PC.i379
  %1111 = trunc i64 %1108 to i32
  %1112 = add i32 13, %1111
  %1113 = zext i32 %1112 to i64
  store i64 %1113, i64* %RAX.i380, align 8
  %1114 = icmp ult i32 %1112, %1111
  %1115 = icmp ult i32 %1112, 13
  %1116 = or i1 %1114, %1115
  %1117 = zext i1 %1116 to i8
  %1118 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1117, i8* %1118, align 1
  %1119 = and i32 %1112, 255
  %1120 = call i32 @llvm.ctpop.i32(i32 %1119)
  %1121 = trunc i32 %1120 to i8
  %1122 = and i8 %1121, 1
  %1123 = xor i8 %1122, 1
  %1124 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1123, i8* %1124, align 1
  %1125 = xor i64 13, %1108
  %1126 = trunc i64 %1125 to i32
  %1127 = xor i32 %1126, %1112
  %1128 = lshr i32 %1127, 4
  %1129 = trunc i32 %1128 to i8
  %1130 = and i8 %1129, 1
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1130, i8* %1131, align 1
  %1132 = icmp eq i32 %1112, 0
  %1133 = zext i1 %1132 to i8
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1133, i8* %1134, align 1
  %1135 = lshr i32 %1112, 31
  %1136 = trunc i32 %1135 to i8
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1136, i8* %1137, align 1
  %1138 = lshr i32 %1111, 31
  %1139 = xor i32 %1135, %1138
  %1140 = add i32 %1139, %1135
  %1141 = icmp eq i32 %1140, 2
  %1142 = zext i1 %1141 to i8
  %1143 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1142, i8* %1143, align 1
  store %struct.Memory* %loadMem_40b313, %struct.Memory** %MEMORY
  %loadMem_40b316 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1145 = getelementptr inbounds %struct.GPR, %struct.GPR* %1144, i32 0, i32 33
  %1146 = getelementptr inbounds %struct.Reg, %struct.Reg* %1145, i32 0, i32 0
  %PC.i376 = bitcast %union.anon* %1146 to i64*
  %1147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1148 = getelementptr inbounds %struct.GPR, %struct.GPR* %1147, i32 0, i32 1
  %1149 = getelementptr inbounds %struct.Reg, %struct.Reg* %1148, i32 0, i32 0
  %EAX.i377 = bitcast %union.anon* %1149 to i32*
  %1150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1151 = getelementptr inbounds %struct.GPR, %struct.GPR* %1150, i32 0, i32 5
  %1152 = getelementptr inbounds %struct.Reg, %struct.Reg* %1151, i32 0, i32 0
  %RCX.i378 = bitcast %union.anon* %1152 to i64*
  %1153 = load i32, i32* %EAX.i377
  %1154 = zext i32 %1153 to i64
  %1155 = load i64, i64* %PC.i376
  %1156 = add i64 %1155, 3
  store i64 %1156, i64* %PC.i376
  %1157 = shl i64 %1154, 32
  %1158 = ashr exact i64 %1157, 32
  store i64 %1158, i64* %RCX.i378, align 8
  store %struct.Memory* %loadMem_40b316, %struct.Memory** %MEMORY
  %loadMem_40b319 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i373 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 5
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RCX.i375 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %RCX.i375
  %1169 = mul i64 %1168, 4
  %1170 = add i64 %1169, 8807744
  %1171 = load i64, i64* %PC.i373
  %1172 = add i64 %1171, 7
  store i64 %1172, i64* %PC.i373
  %1173 = inttoptr i64 %1170 to i32*
  %1174 = load i32, i32* %1173
  %1175 = zext i32 %1174 to i64
  store i64 %1175, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_40b319, %struct.Memory** %MEMORY
  %loadMem_40b320 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1176 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1177 = getelementptr inbounds %struct.GPR, %struct.GPR* %1176, i32 0, i32 33
  %1178 = getelementptr inbounds %struct.Reg, %struct.Reg* %1177, i32 0, i32 0
  %PC.i370 = bitcast %union.anon* %1178 to i64*
  %1179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1180 = getelementptr inbounds %struct.GPR, %struct.GPR* %1179, i32 0, i32 1
  %1181 = getelementptr inbounds %struct.Reg, %struct.Reg* %1180, i32 0, i32 0
  %EAX.i371 = bitcast %union.anon* %1181 to i32*
  %1182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1183 = getelementptr inbounds %struct.GPR, %struct.GPR* %1182, i32 0, i32 15
  %1184 = getelementptr inbounds %struct.Reg, %struct.Reg* %1183, i32 0, i32 0
  %RBP.i372 = bitcast %union.anon* %1184 to i64*
  %1185 = load i64, i64* %RBP.i372
  %1186 = sub i64 %1185, 8
  %1187 = load i32, i32* %EAX.i371
  %1188 = zext i32 %1187 to i64
  %1189 = load i64, i64* %PC.i370
  %1190 = add i64 %1189, 3
  store i64 %1190, i64* %PC.i370
  %1191 = inttoptr i64 %1186 to i32*
  store i32 %1187, i32* %1191
  store %struct.Memory* %loadMem_40b320, %struct.Memory** %MEMORY
  %loadMem_40b323 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1193 = getelementptr inbounds %struct.GPR, %struct.GPR* %1192, i32 0, i32 33
  %1194 = getelementptr inbounds %struct.Reg, %struct.Reg* %1193, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %1194 to i64*
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1196 = getelementptr inbounds %struct.GPR, %struct.GPR* %1195, i32 0, i32 15
  %1197 = getelementptr inbounds %struct.Reg, %struct.Reg* %1196, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %1197 to i64*
  %1198 = load i64, i64* %RBP.i369
  %1199 = sub i64 %1198, 8
  %1200 = load i64, i64* %PC.i368
  %1201 = add i64 %1200, 4
  store i64 %1201, i64* %PC.i368
  %1202 = inttoptr i64 %1199 to i32*
  %1203 = load i32, i32* %1202
  %1204 = sub i32 %1203, 12
  %1205 = icmp ult i32 %1203, 12
  %1206 = zext i1 %1205 to i8
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1206, i8* %1207, align 1
  %1208 = and i32 %1204, 255
  %1209 = call i32 @llvm.ctpop.i32(i32 %1208)
  %1210 = trunc i32 %1209 to i8
  %1211 = and i8 %1210, 1
  %1212 = xor i8 %1211, 1
  %1213 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1212, i8* %1213, align 1
  %1214 = xor i32 %1203, 12
  %1215 = xor i32 %1214, %1204
  %1216 = lshr i32 %1215, 4
  %1217 = trunc i32 %1216 to i8
  %1218 = and i8 %1217, 1
  %1219 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1218, i8* %1219, align 1
  %1220 = icmp eq i32 %1204, 0
  %1221 = zext i1 %1220 to i8
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1221, i8* %1222, align 1
  %1223 = lshr i32 %1204, 31
  %1224 = trunc i32 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i32 %1203, 31
  %1227 = xor i32 %1223, %1226
  %1228 = add i32 %1227, %1226
  %1229 = icmp eq i32 %1228, 2
  %1230 = zext i1 %1229 to i8
  %1231 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1230, i8* %1231, align 1
  store %struct.Memory* %loadMem_40b323, %struct.Memory** %MEMORY
  %loadMem_40b327 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1232 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1233 = getelementptr inbounds %struct.GPR, %struct.GPR* %1232, i32 0, i32 33
  %1234 = getelementptr inbounds %struct.Reg, %struct.Reg* %1233, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %1234 to i64*
  %1235 = load i64, i64* %PC.i367
  %1236 = add i64 %1235, 26
  %1237 = load i64, i64* %PC.i367
  %1238 = add i64 %1237, 6
  %1239 = load i64, i64* %PC.i367
  %1240 = add i64 %1239, 6
  store i64 %1240, i64* %PC.i367
  %1241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1242 = load i8, i8* %1241, align 1
  store i8 %1242, i8* %BRANCH_TAKEN, align 1
  %1243 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1244 = icmp ne i8 %1242, 0
  %1245 = select i1 %1244, i64 %1236, i64 %1238
  store i64 %1245, i64* %1243, align 8
  store %struct.Memory* %loadMem_40b327, %struct.Memory** %MEMORY
  %loadBr_40b327 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b327 = icmp eq i8 %loadBr_40b327, 1
  br i1 %cmpBr_40b327, label %block_.L_40b341, label %block_40b32d

block_40b32d:                                     ; preds = %block_.L_40b30c
  %loadMem_40b32d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1247 = getelementptr inbounds %struct.GPR, %struct.GPR* %1246, i32 0, i32 33
  %1248 = getelementptr inbounds %struct.Reg, %struct.Reg* %1247, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %1248 to i64*
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1250 = getelementptr inbounds %struct.GPR, %struct.GPR* %1249, i32 0, i32 15
  %1251 = getelementptr inbounds %struct.Reg, %struct.Reg* %1250, i32 0, i32 0
  %RBP.i366 = bitcast %union.anon* %1251 to i64*
  %1252 = load i64, i64* %RBP.i366
  %1253 = sub i64 %1252, 8
  %1254 = load i64, i64* %PC.i365
  %1255 = add i64 %1254, 4
  store i64 %1255, i64* %PC.i365
  %1256 = inttoptr i64 %1253 to i32*
  %1257 = load i32, i32* %1256
  %1258 = sub i32 %1257, 10
  %1259 = icmp ult i32 %1257, 10
  %1260 = zext i1 %1259 to i8
  %1261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1260, i8* %1261, align 1
  %1262 = and i32 %1258, 255
  %1263 = call i32 @llvm.ctpop.i32(i32 %1262)
  %1264 = trunc i32 %1263 to i8
  %1265 = and i8 %1264, 1
  %1266 = xor i8 %1265, 1
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1266, i8* %1267, align 1
  %1268 = xor i32 %1257, 10
  %1269 = xor i32 %1268, %1258
  %1270 = lshr i32 %1269, 4
  %1271 = trunc i32 %1270 to i8
  %1272 = and i8 %1271, 1
  %1273 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1272, i8* %1273, align 1
  %1274 = icmp eq i32 %1258, 0
  %1275 = zext i1 %1274 to i8
  %1276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1275, i8* %1276, align 1
  %1277 = lshr i32 %1258, 31
  %1278 = trunc i32 %1277 to i8
  %1279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1278, i8* %1279, align 1
  %1280 = lshr i32 %1257, 31
  %1281 = xor i32 %1277, %1280
  %1282 = add i32 %1281, %1280
  %1283 = icmp eq i32 %1282, 2
  %1284 = zext i1 %1283 to i8
  %1285 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1284, i8* %1285, align 1
  store %struct.Memory* %loadMem_40b32d, %struct.Memory** %MEMORY
  %loadMem_40b331 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1286 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1287 = getelementptr inbounds %struct.GPR, %struct.GPR* %1286, i32 0, i32 33
  %1288 = getelementptr inbounds %struct.Reg, %struct.Reg* %1287, i32 0, i32 0
  %PC.i364 = bitcast %union.anon* %1288 to i64*
  %1289 = load i64, i64* %PC.i364
  %1290 = add i64 %1289, 16
  %1291 = load i64, i64* %PC.i364
  %1292 = add i64 %1291, 6
  %1293 = load i64, i64* %PC.i364
  %1294 = add i64 %1293, 6
  store i64 %1294, i64* %PC.i364
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1296 = load i8, i8* %1295, align 1
  store i8 %1296, i8* %BRANCH_TAKEN, align 1
  %1297 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1298 = icmp ne i8 %1296, 0
  %1299 = select i1 %1298, i64 %1290, i64 %1292
  store i64 %1299, i64* %1297, align 8
  store %struct.Memory* %loadMem_40b331, %struct.Memory** %MEMORY
  %loadBr_40b331 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b331 = icmp eq i8 %loadBr_40b331, 1
  br i1 %cmpBr_40b331, label %block_.L_40b341, label %block_40b337

block_40b337:                                     ; preds = %block_40b32d
  %loadMem_40b337 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1301 = getelementptr inbounds %struct.GPR, %struct.GPR* %1300, i32 0, i32 33
  %1302 = getelementptr inbounds %struct.Reg, %struct.Reg* %1301, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %1302 to i64*
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1304 = getelementptr inbounds %struct.GPR, %struct.GPR* %1303, i32 0, i32 15
  %1305 = getelementptr inbounds %struct.Reg, %struct.Reg* %1304, i32 0, i32 0
  %RBP.i363 = bitcast %union.anon* %1305 to i64*
  %1306 = load i64, i64* %RBP.i363
  %1307 = sub i64 %1306, 8
  %1308 = load i64, i64* %PC.i362
  %1309 = add i64 %1308, 4
  store i64 %1309, i64* %PC.i362
  %1310 = inttoptr i64 %1307 to i32*
  %1311 = load i32, i32* %1310
  %1312 = sub i32 %1311, 2
  %1313 = icmp ult i32 %1311, 2
  %1314 = zext i1 %1313 to i8
  %1315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1314, i8* %1315, align 1
  %1316 = and i32 %1312, 255
  %1317 = call i32 @llvm.ctpop.i32(i32 %1316)
  %1318 = trunc i32 %1317 to i8
  %1319 = and i8 %1318, 1
  %1320 = xor i8 %1319, 1
  %1321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1320, i8* %1321, align 1
  %1322 = xor i32 %1311, 2
  %1323 = xor i32 %1322, %1312
  %1324 = lshr i32 %1323, 4
  %1325 = trunc i32 %1324 to i8
  %1326 = and i8 %1325, 1
  %1327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1326, i8* %1327, align 1
  %1328 = icmp eq i32 %1312, 0
  %1329 = zext i1 %1328 to i8
  %1330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1329, i8* %1330, align 1
  %1331 = lshr i32 %1312, 31
  %1332 = trunc i32 %1331 to i8
  %1333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1332, i8* %1333, align 1
  %1334 = lshr i32 %1311, 31
  %1335 = xor i32 %1331, %1334
  %1336 = add i32 %1335, %1334
  %1337 = icmp eq i32 %1336, 2
  %1338 = zext i1 %1337 to i8
  %1339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1338, i8* %1339, align 1
  store %struct.Memory* %loadMem_40b337, %struct.Memory** %MEMORY
  %loadMem_40b33b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1341 = getelementptr inbounds %struct.GPR, %struct.GPR* %1340, i32 0, i32 33
  %1342 = getelementptr inbounds %struct.Reg, %struct.Reg* %1341, i32 0, i32 0
  %PC.i361 = bitcast %union.anon* %1342 to i64*
  %1343 = load i64, i64* %PC.i361
  %1344 = add i64 %1343, 18
  %1345 = load i64, i64* %PC.i361
  %1346 = add i64 %1345, 6
  %1347 = load i64, i64* %PC.i361
  %1348 = add i64 %1347, 6
  store i64 %1348, i64* %PC.i361
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1350 = load i8, i8* %1349, align 1
  %1351 = icmp eq i8 %1350, 0
  %1352 = zext i1 %1351 to i8
  store i8 %1352, i8* %BRANCH_TAKEN, align 1
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1354 = select i1 %1351, i64 %1344, i64 %1346
  store i64 %1354, i64* %1353, align 8
  store %struct.Memory* %loadMem_40b33b, %struct.Memory** %MEMORY
  %loadBr_40b33b = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b33b = icmp eq i8 %loadBr_40b33b, 1
  br i1 %cmpBr_40b33b, label %block_.L_40b34d, label %block_.L_40b341

block_.L_40b341:                                  ; preds = %block_40b337, %block_40b32d, %block_.L_40b30c
  %loadMem_40b341 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1356 = getelementptr inbounds %struct.GPR, %struct.GPR* %1355, i32 0, i32 33
  %1357 = getelementptr inbounds %struct.Reg, %struct.Reg* %1356, i32 0, i32 0
  %PC.i359 = bitcast %union.anon* %1357 to i64*
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1359 = getelementptr inbounds %struct.GPR, %struct.GPR* %1358, i32 0, i32 15
  %1360 = getelementptr inbounds %struct.Reg, %struct.Reg* %1359, i32 0, i32 0
  %RBP.i360 = bitcast %union.anon* %1360 to i64*
  %1361 = load i64, i64* %RBP.i360
  %1362 = sub i64 %1361, 4
  %1363 = load i64, i64* %PC.i359
  %1364 = add i64 %1363, 7
  store i64 %1364, i64* %PC.i359
  %1365 = inttoptr i64 %1362 to i32*
  store i32 2, i32* %1365
  store %struct.Memory* %loadMem_40b341, %struct.Memory** %MEMORY
  %loadMem_40b348 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1366 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1367 = getelementptr inbounds %struct.GPR, %struct.GPR* %1366, i32 0, i32 33
  %1368 = getelementptr inbounds %struct.Reg, %struct.Reg* %1367, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %1368 to i64*
  %1369 = load i64, i64* %PC.i358
  %1370 = add i64 %1369, 976
  %1371 = load i64, i64* %PC.i358
  %1372 = add i64 %1371, 5
  store i64 %1372, i64* %PC.i358
  %1373 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1370, i64* %1373, align 8
  store %struct.Memory* %loadMem_40b348, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b34d:                                  ; preds = %block_40b337
  %loadMem_40b34d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1374 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1375 = getelementptr inbounds %struct.GPR, %struct.GPR* %1374, i32 0, i32 33
  %1376 = getelementptr inbounds %struct.Reg, %struct.Reg* %1375, i32 0, i32 0
  %PC.i356 = bitcast %union.anon* %1376 to i64*
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1378 = getelementptr inbounds %struct.GPR, %struct.GPR* %1377, i32 0, i32 1
  %1379 = getelementptr inbounds %struct.Reg, %struct.Reg* %1378, i32 0, i32 0
  %RAX.i357 = bitcast %union.anon* %1379 to i64*
  %1380 = load i64, i64* %PC.i356
  %1381 = add i64 %1380, 7
  store i64 %1381, i64* %PC.i356
  %1382 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %1383 = zext i32 %1382 to i64
  store i64 %1383, i64* %RAX.i357, align 8
  store %struct.Memory* %loadMem_40b34d, %struct.Memory** %MEMORY
  %loadMem_40b354 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1384 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1385 = getelementptr inbounds %struct.GPR, %struct.GPR* %1384, i32 0, i32 33
  %1386 = getelementptr inbounds %struct.Reg, %struct.Reg* %1385, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %1386 to i64*
  %1387 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1388 = getelementptr inbounds %struct.GPR, %struct.GPR* %1387, i32 0, i32 1
  %1389 = getelementptr inbounds %struct.Reg, %struct.Reg* %1388, i32 0, i32 0
  %RAX.i355 = bitcast %union.anon* %1389 to i64*
  %1390 = load i64, i64* %RAX.i355
  %1391 = load i64, i64* %PC.i354
  %1392 = add i64 %1391, 3
  store i64 %1392, i64* %PC.i354
  %1393 = trunc i64 %1390 to i32
  %1394 = add i32 11, %1393
  %1395 = zext i32 %1394 to i64
  store i64 %1395, i64* %RAX.i355, align 8
  %1396 = icmp ult i32 %1394, %1393
  %1397 = icmp ult i32 %1394, 11
  %1398 = or i1 %1396, %1397
  %1399 = zext i1 %1398 to i8
  %1400 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1399, i8* %1400, align 1
  %1401 = and i32 %1394, 255
  %1402 = call i32 @llvm.ctpop.i32(i32 %1401)
  %1403 = trunc i32 %1402 to i8
  %1404 = and i8 %1403, 1
  %1405 = xor i8 %1404, 1
  %1406 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1405, i8* %1406, align 1
  %1407 = xor i64 11, %1390
  %1408 = trunc i64 %1407 to i32
  %1409 = xor i32 %1408, %1394
  %1410 = lshr i32 %1409, 4
  %1411 = trunc i32 %1410 to i8
  %1412 = and i8 %1411, 1
  %1413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1412, i8* %1413, align 1
  %1414 = icmp eq i32 %1394, 0
  %1415 = zext i1 %1414 to i8
  %1416 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1415, i8* %1416, align 1
  %1417 = lshr i32 %1394, 31
  %1418 = trunc i32 %1417 to i8
  %1419 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1418, i8* %1419, align 1
  %1420 = lshr i32 %1393, 31
  %1421 = xor i32 %1417, %1420
  %1422 = add i32 %1421, %1417
  %1423 = icmp eq i32 %1422, 2
  %1424 = zext i1 %1423 to i8
  %1425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1424, i8* %1425, align 1
  store %struct.Memory* %loadMem_40b354, %struct.Memory** %MEMORY
  %loadMem_40b357 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1427 = getelementptr inbounds %struct.GPR, %struct.GPR* %1426, i32 0, i32 33
  %1428 = getelementptr inbounds %struct.Reg, %struct.Reg* %1427, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %1428 to i64*
  %1429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1430 = getelementptr inbounds %struct.GPR, %struct.GPR* %1429, i32 0, i32 1
  %1431 = getelementptr inbounds %struct.Reg, %struct.Reg* %1430, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %1431 to i32*
  %1432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1433 = getelementptr inbounds %struct.GPR, %struct.GPR* %1432, i32 0, i32 5
  %1434 = getelementptr inbounds %struct.Reg, %struct.Reg* %1433, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %1434 to i64*
  %1435 = load i32, i32* %EAX.i352
  %1436 = zext i32 %1435 to i64
  %1437 = load i64, i64* %PC.i351
  %1438 = add i64 %1437, 3
  store i64 %1438, i64* %PC.i351
  %1439 = shl i64 %1436, 32
  %1440 = ashr exact i64 %1439, 32
  store i64 %1440, i64* %RCX.i353, align 8
  store %struct.Memory* %loadMem_40b357, %struct.Memory** %MEMORY
  %loadMem_40b35a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1442 = getelementptr inbounds %struct.GPR, %struct.GPR* %1441, i32 0, i32 33
  %1443 = getelementptr inbounds %struct.Reg, %struct.Reg* %1442, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %1443 to i64*
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1445 = getelementptr inbounds %struct.GPR, %struct.GPR* %1444, i32 0, i32 1
  %1446 = getelementptr inbounds %struct.Reg, %struct.Reg* %1445, i32 0, i32 0
  %RAX.i349 = bitcast %union.anon* %1446 to i64*
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 5
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %RCX.i350 = bitcast %union.anon* %1449 to i64*
  %1450 = load i64, i64* %RCX.i350
  %1451 = mul i64 %1450, 4
  %1452 = add i64 %1451, 8807744
  %1453 = load i64, i64* %PC.i348
  %1454 = add i64 %1453, 7
  store i64 %1454, i64* %PC.i348
  %1455 = inttoptr i64 %1452 to i32*
  %1456 = load i32, i32* %1455
  %1457 = zext i32 %1456 to i64
  store i64 %1457, i64* %RAX.i349, align 8
  store %struct.Memory* %loadMem_40b35a, %struct.Memory** %MEMORY
  %loadMem_40b361 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1459 = getelementptr inbounds %struct.GPR, %struct.GPR* %1458, i32 0, i32 33
  %1460 = getelementptr inbounds %struct.Reg, %struct.Reg* %1459, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %1460 to i64*
  %1461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1462 = getelementptr inbounds %struct.GPR, %struct.GPR* %1461, i32 0, i32 1
  %1463 = getelementptr inbounds %struct.Reg, %struct.Reg* %1462, i32 0, i32 0
  %EAX.i346 = bitcast %union.anon* %1463 to i32*
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 15
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %RBP.i347 = bitcast %union.anon* %1466 to i64*
  %1467 = load i64, i64* %RBP.i347
  %1468 = sub i64 %1467, 8
  %1469 = load i32, i32* %EAX.i346
  %1470 = zext i32 %1469 to i64
  %1471 = load i64, i64* %PC.i345
  %1472 = add i64 %1471, 3
  store i64 %1472, i64* %PC.i345
  %1473 = inttoptr i64 %1468 to i32*
  store i32 %1469, i32* %1473
  store %struct.Memory* %loadMem_40b361, %struct.Memory** %MEMORY
  %loadMem_40b364 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1475 = getelementptr inbounds %struct.GPR, %struct.GPR* %1474, i32 0, i32 33
  %1476 = getelementptr inbounds %struct.Reg, %struct.Reg* %1475, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %1476 to i64*
  %1477 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1478 = getelementptr inbounds %struct.GPR, %struct.GPR* %1477, i32 0, i32 15
  %1479 = getelementptr inbounds %struct.Reg, %struct.Reg* %1478, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %1479 to i64*
  %1480 = load i64, i64* %RBP.i344
  %1481 = sub i64 %1480, 8
  %1482 = load i64, i64* %PC.i343
  %1483 = add i64 %1482, 4
  store i64 %1483, i64* %PC.i343
  %1484 = inttoptr i64 %1481 to i32*
  %1485 = load i32, i32* %1484
  %1486 = sub i32 %1485, 12
  %1487 = icmp ult i32 %1485, 12
  %1488 = zext i1 %1487 to i8
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1488, i8* %1489, align 1
  %1490 = and i32 %1486, 255
  %1491 = call i32 @llvm.ctpop.i32(i32 %1490)
  %1492 = trunc i32 %1491 to i8
  %1493 = and i8 %1492, 1
  %1494 = xor i8 %1493, 1
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1494, i8* %1495, align 1
  %1496 = xor i32 %1485, 12
  %1497 = xor i32 %1496, %1486
  %1498 = lshr i32 %1497, 4
  %1499 = trunc i32 %1498 to i8
  %1500 = and i8 %1499, 1
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1500, i8* %1501, align 1
  %1502 = icmp eq i32 %1486, 0
  %1503 = zext i1 %1502 to i8
  %1504 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1503, i8* %1504, align 1
  %1505 = lshr i32 %1486, 31
  %1506 = trunc i32 %1505 to i8
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1506, i8* %1507, align 1
  %1508 = lshr i32 %1485, 31
  %1509 = xor i32 %1505, %1508
  %1510 = add i32 %1509, %1508
  %1511 = icmp eq i32 %1510, 2
  %1512 = zext i1 %1511 to i8
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1512, i8* %1513, align 1
  store %struct.Memory* %loadMem_40b364, %struct.Memory** %MEMORY
  %loadMem_40b368 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 33
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %1516 to i64*
  %1517 = load i64, i64* %PC.i342
  %1518 = add i64 %1517, 26
  %1519 = load i64, i64* %PC.i342
  %1520 = add i64 %1519, 6
  %1521 = load i64, i64* %PC.i342
  %1522 = add i64 %1521, 6
  store i64 %1522, i64* %PC.i342
  %1523 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1524 = load i8, i8* %1523, align 1
  store i8 %1524, i8* %BRANCH_TAKEN, align 1
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1526 = icmp ne i8 %1524, 0
  %1527 = select i1 %1526, i64 %1518, i64 %1520
  store i64 %1527, i64* %1525, align 8
  store %struct.Memory* %loadMem_40b368, %struct.Memory** %MEMORY
  %loadBr_40b368 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b368 = icmp eq i8 %loadBr_40b368, 1
  br i1 %cmpBr_40b368, label %block_.L_40b382, label %block_40b36e

block_40b36e:                                     ; preds = %block_.L_40b34d
  %loadMem_40b36e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1528 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1529 = getelementptr inbounds %struct.GPR, %struct.GPR* %1528, i32 0, i32 33
  %1530 = getelementptr inbounds %struct.Reg, %struct.Reg* %1529, i32 0, i32 0
  %PC.i340 = bitcast %union.anon* %1530 to i64*
  %1531 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1532 = getelementptr inbounds %struct.GPR, %struct.GPR* %1531, i32 0, i32 15
  %1533 = getelementptr inbounds %struct.Reg, %struct.Reg* %1532, i32 0, i32 0
  %RBP.i341 = bitcast %union.anon* %1533 to i64*
  %1534 = load i64, i64* %RBP.i341
  %1535 = sub i64 %1534, 8
  %1536 = load i64, i64* %PC.i340
  %1537 = add i64 %1536, 4
  store i64 %1537, i64* %PC.i340
  %1538 = inttoptr i64 %1535 to i32*
  %1539 = load i32, i32* %1538
  %1540 = sub i32 %1539, 10
  %1541 = icmp ult i32 %1539, 10
  %1542 = zext i1 %1541 to i8
  %1543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1542, i8* %1543, align 1
  %1544 = and i32 %1540, 255
  %1545 = call i32 @llvm.ctpop.i32(i32 %1544)
  %1546 = trunc i32 %1545 to i8
  %1547 = and i8 %1546, 1
  %1548 = xor i8 %1547, 1
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1548, i8* %1549, align 1
  %1550 = xor i32 %1539, 10
  %1551 = xor i32 %1550, %1540
  %1552 = lshr i32 %1551, 4
  %1553 = trunc i32 %1552 to i8
  %1554 = and i8 %1553, 1
  %1555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1554, i8* %1555, align 1
  %1556 = icmp eq i32 %1540, 0
  %1557 = zext i1 %1556 to i8
  %1558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1557, i8* %1558, align 1
  %1559 = lshr i32 %1540, 31
  %1560 = trunc i32 %1559 to i8
  %1561 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1560, i8* %1561, align 1
  %1562 = lshr i32 %1539, 31
  %1563 = xor i32 %1559, %1562
  %1564 = add i32 %1563, %1562
  %1565 = icmp eq i32 %1564, 2
  %1566 = zext i1 %1565 to i8
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1566, i8* %1567, align 1
  store %struct.Memory* %loadMem_40b36e, %struct.Memory** %MEMORY
  %loadMem_40b372 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1569 = getelementptr inbounds %struct.GPR, %struct.GPR* %1568, i32 0, i32 33
  %1570 = getelementptr inbounds %struct.Reg, %struct.Reg* %1569, i32 0, i32 0
  %PC.i339 = bitcast %union.anon* %1570 to i64*
  %1571 = load i64, i64* %PC.i339
  %1572 = add i64 %1571, 16
  %1573 = load i64, i64* %PC.i339
  %1574 = add i64 %1573, 6
  %1575 = load i64, i64* %PC.i339
  %1576 = add i64 %1575, 6
  store i64 %1576, i64* %PC.i339
  %1577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1578 = load i8, i8* %1577, align 1
  store i8 %1578, i8* %BRANCH_TAKEN, align 1
  %1579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1580 = icmp ne i8 %1578, 0
  %1581 = select i1 %1580, i64 %1572, i64 %1574
  store i64 %1581, i64* %1579, align 8
  store %struct.Memory* %loadMem_40b372, %struct.Memory** %MEMORY
  %loadBr_40b372 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b372 = icmp eq i8 %loadBr_40b372, 1
  br i1 %cmpBr_40b372, label %block_.L_40b382, label %block_40b378

block_40b378:                                     ; preds = %block_40b36e
  %loadMem_40b378 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1583 = getelementptr inbounds %struct.GPR, %struct.GPR* %1582, i32 0, i32 33
  %1584 = getelementptr inbounds %struct.Reg, %struct.Reg* %1583, i32 0, i32 0
  %PC.i337 = bitcast %union.anon* %1584 to i64*
  %1585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1586 = getelementptr inbounds %struct.GPR, %struct.GPR* %1585, i32 0, i32 15
  %1587 = getelementptr inbounds %struct.Reg, %struct.Reg* %1586, i32 0, i32 0
  %RBP.i338 = bitcast %union.anon* %1587 to i64*
  %1588 = load i64, i64* %RBP.i338
  %1589 = sub i64 %1588, 8
  %1590 = load i64, i64* %PC.i337
  %1591 = add i64 %1590, 4
  store i64 %1591, i64* %PC.i337
  %1592 = inttoptr i64 %1589 to i32*
  %1593 = load i32, i32* %1592
  %1594 = sub i32 %1593, 2
  %1595 = icmp ult i32 %1593, 2
  %1596 = zext i1 %1595 to i8
  %1597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1596, i8* %1597, align 1
  %1598 = and i32 %1594, 255
  %1599 = call i32 @llvm.ctpop.i32(i32 %1598)
  %1600 = trunc i32 %1599 to i8
  %1601 = and i8 %1600, 1
  %1602 = xor i8 %1601, 1
  %1603 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1602, i8* %1603, align 1
  %1604 = xor i32 %1593, 2
  %1605 = xor i32 %1604, %1594
  %1606 = lshr i32 %1605, 4
  %1607 = trunc i32 %1606 to i8
  %1608 = and i8 %1607, 1
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1608, i8* %1609, align 1
  %1610 = icmp eq i32 %1594, 0
  %1611 = zext i1 %1610 to i8
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1611, i8* %1612, align 1
  %1613 = lshr i32 %1594, 31
  %1614 = trunc i32 %1613 to i8
  %1615 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1614, i8* %1615, align 1
  %1616 = lshr i32 %1593, 31
  %1617 = xor i32 %1613, %1616
  %1618 = add i32 %1617, %1616
  %1619 = icmp eq i32 %1618, 2
  %1620 = zext i1 %1619 to i8
  %1621 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1620, i8* %1621, align 1
  store %struct.Memory* %loadMem_40b378, %struct.Memory** %MEMORY
  %loadMem_40b37c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1623 = getelementptr inbounds %struct.GPR, %struct.GPR* %1622, i32 0, i32 33
  %1624 = getelementptr inbounds %struct.Reg, %struct.Reg* %1623, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %1624 to i64*
  %1625 = load i64, i64* %PC.i336
  %1626 = add i64 %1625, 18
  %1627 = load i64, i64* %PC.i336
  %1628 = add i64 %1627, 6
  %1629 = load i64, i64* %PC.i336
  %1630 = add i64 %1629, 6
  store i64 %1630, i64* %PC.i336
  %1631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1632 = load i8, i8* %1631, align 1
  %1633 = icmp eq i8 %1632, 0
  %1634 = zext i1 %1633 to i8
  store i8 %1634, i8* %BRANCH_TAKEN, align 1
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1636 = select i1 %1633, i64 %1626, i64 %1628
  store i64 %1636, i64* %1635, align 8
  store %struct.Memory* %loadMem_40b37c, %struct.Memory** %MEMORY
  %loadBr_40b37c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b37c = icmp eq i8 %loadBr_40b37c, 1
  br i1 %cmpBr_40b37c, label %block_.L_40b38e, label %block_.L_40b382

block_.L_40b382:                                  ; preds = %block_40b378, %block_40b36e, %block_.L_40b34d
  %loadMem_40b382 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1638 = getelementptr inbounds %struct.GPR, %struct.GPR* %1637, i32 0, i32 33
  %1639 = getelementptr inbounds %struct.Reg, %struct.Reg* %1638, i32 0, i32 0
  %PC.i334 = bitcast %union.anon* %1639 to i64*
  %1640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1641 = getelementptr inbounds %struct.GPR, %struct.GPR* %1640, i32 0, i32 15
  %1642 = getelementptr inbounds %struct.Reg, %struct.Reg* %1641, i32 0, i32 0
  %RBP.i335 = bitcast %union.anon* %1642 to i64*
  %1643 = load i64, i64* %RBP.i335
  %1644 = sub i64 %1643, 4
  %1645 = load i64, i64* %PC.i334
  %1646 = add i64 %1645, 7
  store i64 %1646, i64* %PC.i334
  %1647 = inttoptr i64 %1644 to i32*
  store i32 2, i32* %1647
  store %struct.Memory* %loadMem_40b382, %struct.Memory** %MEMORY
  %loadMem_40b389 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1649 = getelementptr inbounds %struct.GPR, %struct.GPR* %1648, i32 0, i32 33
  %1650 = getelementptr inbounds %struct.Reg, %struct.Reg* %1649, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %1650 to i64*
  %1651 = load i64, i64* %PC.i333
  %1652 = add i64 %1651, 911
  %1653 = load i64, i64* %PC.i333
  %1654 = add i64 %1653, 5
  store i64 %1654, i64* %PC.i333
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1652, i64* %1655, align 8
  store %struct.Memory* %loadMem_40b389, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b38e:                                  ; preds = %block_40b378
  %loadMem_40b38e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1656 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1657 = getelementptr inbounds %struct.GPR, %struct.GPR* %1656, i32 0, i32 33
  %1658 = getelementptr inbounds %struct.Reg, %struct.Reg* %1657, i32 0, i32 0
  %PC.i331 = bitcast %union.anon* %1658 to i64*
  %1659 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1660 = getelementptr inbounds %struct.GPR, %struct.GPR* %1659, i32 0, i32 1
  %1661 = getelementptr inbounds %struct.Reg, %struct.Reg* %1660, i32 0, i32 0
  %RAX.i332 = bitcast %union.anon* %1661 to i64*
  %1662 = load i64, i64* %PC.i331
  %1663 = add i64 %1662, 7
  store i64 %1663, i64* %PC.i331
  %1664 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %1665 = zext i32 %1664 to i64
  store i64 %1665, i64* %RAX.i332, align 8
  store %struct.Memory* %loadMem_40b38e, %struct.Memory** %MEMORY
  %loadMem_40b395 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i329 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 1
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RAX.i330 = bitcast %union.anon* %1671 to i64*
  %1672 = load i64, i64* %RAX.i330
  %1673 = load i64, i64* %PC.i329
  %1674 = add i64 %1673, 3
  store i64 %1674, i64* %PC.i329
  %1675 = trunc i64 %1672 to i32
  %1676 = sub i32 %1675, 11
  %1677 = zext i32 %1676 to i64
  store i64 %1677, i64* %RAX.i330, align 8
  %1678 = icmp ult i32 %1675, 11
  %1679 = zext i1 %1678 to i8
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1679, i8* %1680, align 1
  %1681 = and i32 %1676, 255
  %1682 = call i32 @llvm.ctpop.i32(i32 %1681)
  %1683 = trunc i32 %1682 to i8
  %1684 = and i8 %1683, 1
  %1685 = xor i8 %1684, 1
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1685, i8* %1686, align 1
  %1687 = xor i64 11, %1672
  %1688 = trunc i64 %1687 to i32
  %1689 = xor i32 %1688, %1676
  %1690 = lshr i32 %1689, 4
  %1691 = trunc i32 %1690 to i8
  %1692 = and i8 %1691, 1
  %1693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1692, i8* %1693, align 1
  %1694 = icmp eq i32 %1676, 0
  %1695 = zext i1 %1694 to i8
  %1696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1695, i8* %1696, align 1
  %1697 = lshr i32 %1676, 31
  %1698 = trunc i32 %1697 to i8
  %1699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1698, i8* %1699, align 1
  %1700 = lshr i32 %1675, 31
  %1701 = xor i32 %1697, %1700
  %1702 = add i32 %1701, %1700
  %1703 = icmp eq i32 %1702, 2
  %1704 = zext i1 %1703 to i8
  %1705 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1704, i8* %1705, align 1
  store %struct.Memory* %loadMem_40b395, %struct.Memory** %MEMORY
  %loadMem_40b398 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1707 = getelementptr inbounds %struct.GPR, %struct.GPR* %1706, i32 0, i32 33
  %1708 = getelementptr inbounds %struct.Reg, %struct.Reg* %1707, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %1708 to i64*
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 1
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %EAX.i327 = bitcast %union.anon* %1711 to i32*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1713 = getelementptr inbounds %struct.GPR, %struct.GPR* %1712, i32 0, i32 5
  %1714 = getelementptr inbounds %struct.Reg, %struct.Reg* %1713, i32 0, i32 0
  %RCX.i328 = bitcast %union.anon* %1714 to i64*
  %1715 = load i32, i32* %EAX.i327
  %1716 = zext i32 %1715 to i64
  %1717 = load i64, i64* %PC.i326
  %1718 = add i64 %1717, 3
  store i64 %1718, i64* %PC.i326
  %1719 = shl i64 %1716, 32
  %1720 = ashr exact i64 %1719, 32
  store i64 %1720, i64* %RCX.i328, align 8
  store %struct.Memory* %loadMem_40b398, %struct.Memory** %MEMORY
  %loadMem_40b39b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1721 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1722 = getelementptr inbounds %struct.GPR, %struct.GPR* %1721, i32 0, i32 33
  %1723 = getelementptr inbounds %struct.Reg, %struct.Reg* %1722, i32 0, i32 0
  %PC.i323 = bitcast %union.anon* %1723 to i64*
  %1724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1725 = getelementptr inbounds %struct.GPR, %struct.GPR* %1724, i32 0, i32 1
  %1726 = getelementptr inbounds %struct.Reg, %struct.Reg* %1725, i32 0, i32 0
  %RAX.i324 = bitcast %union.anon* %1726 to i64*
  %1727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1728 = getelementptr inbounds %struct.GPR, %struct.GPR* %1727, i32 0, i32 5
  %1729 = getelementptr inbounds %struct.Reg, %struct.Reg* %1728, i32 0, i32 0
  %RCX.i325 = bitcast %union.anon* %1729 to i64*
  %1730 = load i64, i64* %RCX.i325
  %1731 = mul i64 %1730, 4
  %1732 = add i64 %1731, 8807744
  %1733 = load i64, i64* %PC.i323
  %1734 = add i64 %1733, 7
  store i64 %1734, i64* %PC.i323
  %1735 = inttoptr i64 %1732 to i32*
  %1736 = load i32, i32* %1735
  %1737 = zext i32 %1736 to i64
  store i64 %1737, i64* %RAX.i324, align 8
  store %struct.Memory* %loadMem_40b39b, %struct.Memory** %MEMORY
  %loadMem_40b3a2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1739 = getelementptr inbounds %struct.GPR, %struct.GPR* %1738, i32 0, i32 33
  %1740 = getelementptr inbounds %struct.Reg, %struct.Reg* %1739, i32 0, i32 0
  %PC.i320 = bitcast %union.anon* %1740 to i64*
  %1741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1742 = getelementptr inbounds %struct.GPR, %struct.GPR* %1741, i32 0, i32 1
  %1743 = getelementptr inbounds %struct.Reg, %struct.Reg* %1742, i32 0, i32 0
  %EAX.i321 = bitcast %union.anon* %1743 to i32*
  %1744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1745 = getelementptr inbounds %struct.GPR, %struct.GPR* %1744, i32 0, i32 15
  %1746 = getelementptr inbounds %struct.Reg, %struct.Reg* %1745, i32 0, i32 0
  %RBP.i322 = bitcast %union.anon* %1746 to i64*
  %1747 = load i64, i64* %RBP.i322
  %1748 = sub i64 %1747, 8
  %1749 = load i32, i32* %EAX.i321
  %1750 = zext i32 %1749 to i64
  %1751 = load i64, i64* %PC.i320
  %1752 = add i64 %1751, 3
  store i64 %1752, i64* %PC.i320
  %1753 = inttoptr i64 %1748 to i32*
  store i32 %1749, i32* %1753
  store %struct.Memory* %loadMem_40b3a2, %struct.Memory** %MEMORY
  %loadMem_40b3a5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1755 = getelementptr inbounds %struct.GPR, %struct.GPR* %1754, i32 0, i32 33
  %1756 = getelementptr inbounds %struct.Reg, %struct.Reg* %1755, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %1756 to i64*
  %1757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1758 = getelementptr inbounds %struct.GPR, %struct.GPR* %1757, i32 0, i32 15
  %1759 = getelementptr inbounds %struct.Reg, %struct.Reg* %1758, i32 0, i32 0
  %RBP.i319 = bitcast %union.anon* %1759 to i64*
  %1760 = load i64, i64* %RBP.i319
  %1761 = sub i64 %1760, 8
  %1762 = load i64, i64* %PC.i318
  %1763 = add i64 %1762, 4
  store i64 %1763, i64* %PC.i318
  %1764 = inttoptr i64 %1761 to i32*
  %1765 = load i32, i32* %1764
  %1766 = sub i32 %1765, 12
  %1767 = icmp ult i32 %1765, 12
  %1768 = zext i1 %1767 to i8
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1768, i8* %1769, align 1
  %1770 = and i32 %1766, 255
  %1771 = call i32 @llvm.ctpop.i32(i32 %1770)
  %1772 = trunc i32 %1771 to i8
  %1773 = and i8 %1772, 1
  %1774 = xor i8 %1773, 1
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1774, i8* %1775, align 1
  %1776 = xor i32 %1765, 12
  %1777 = xor i32 %1776, %1766
  %1778 = lshr i32 %1777, 4
  %1779 = trunc i32 %1778 to i8
  %1780 = and i8 %1779, 1
  %1781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1780, i8* %1781, align 1
  %1782 = icmp eq i32 %1766, 0
  %1783 = zext i1 %1782 to i8
  %1784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1783, i8* %1784, align 1
  %1785 = lshr i32 %1766, 31
  %1786 = trunc i32 %1785 to i8
  %1787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1786, i8* %1787, align 1
  %1788 = lshr i32 %1765, 31
  %1789 = xor i32 %1785, %1788
  %1790 = add i32 %1789, %1788
  %1791 = icmp eq i32 %1790, 2
  %1792 = zext i1 %1791 to i8
  %1793 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1792, i8* %1793, align 1
  store %struct.Memory* %loadMem_40b3a5, %struct.Memory** %MEMORY
  %loadMem_40b3a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 33
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %PC.i317 = bitcast %union.anon* %1796 to i64*
  %1797 = load i64, i64* %PC.i317
  %1798 = add i64 %1797, 16
  %1799 = load i64, i64* %PC.i317
  %1800 = add i64 %1799, 6
  %1801 = load i64, i64* %PC.i317
  %1802 = add i64 %1801, 6
  store i64 %1802, i64* %PC.i317
  %1803 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1804 = load i8, i8* %1803, align 1
  store i8 %1804, i8* %BRANCH_TAKEN, align 1
  %1805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1806 = icmp ne i8 %1804, 0
  %1807 = select i1 %1806, i64 %1798, i64 %1800
  store i64 %1807, i64* %1805, align 8
  store %struct.Memory* %loadMem_40b3a9, %struct.Memory** %MEMORY
  %loadBr_40b3a9 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b3a9 = icmp eq i8 %loadBr_40b3a9, 1
  br i1 %cmpBr_40b3a9, label %block_.L_40b3b9, label %block_40b3af

block_40b3af:                                     ; preds = %block_.L_40b38e
  %loadMem_40b3af = load %struct.Memory*, %struct.Memory** %MEMORY
  %1808 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1809 = getelementptr inbounds %struct.GPR, %struct.GPR* %1808, i32 0, i32 33
  %1810 = getelementptr inbounds %struct.Reg, %struct.Reg* %1809, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %1810 to i64*
  %1811 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1812 = getelementptr inbounds %struct.GPR, %struct.GPR* %1811, i32 0, i32 15
  %1813 = getelementptr inbounds %struct.Reg, %struct.Reg* %1812, i32 0, i32 0
  %RBP.i316 = bitcast %union.anon* %1813 to i64*
  %1814 = load i64, i64* %RBP.i316
  %1815 = sub i64 %1814, 8
  %1816 = load i64, i64* %PC.i315
  %1817 = add i64 %1816, 4
  store i64 %1817, i64* %PC.i315
  %1818 = inttoptr i64 %1815 to i32*
  %1819 = load i32, i32* %1818
  %1820 = sub i32 %1819, 10
  %1821 = icmp ult i32 %1819, 10
  %1822 = zext i1 %1821 to i8
  %1823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1822, i8* %1823, align 1
  %1824 = and i32 %1820, 255
  %1825 = call i32 @llvm.ctpop.i32(i32 %1824)
  %1826 = trunc i32 %1825 to i8
  %1827 = and i8 %1826, 1
  %1828 = xor i8 %1827, 1
  %1829 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1828, i8* %1829, align 1
  %1830 = xor i32 %1819, 10
  %1831 = xor i32 %1830, %1820
  %1832 = lshr i32 %1831, 4
  %1833 = trunc i32 %1832 to i8
  %1834 = and i8 %1833, 1
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1834, i8* %1835, align 1
  %1836 = icmp eq i32 %1820, 0
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1837, i8* %1838, align 1
  %1839 = lshr i32 %1820, 31
  %1840 = trunc i32 %1839 to i8
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1840, i8* %1841, align 1
  %1842 = lshr i32 %1819, 31
  %1843 = xor i32 %1839, %1842
  %1844 = add i32 %1843, %1842
  %1845 = icmp eq i32 %1844, 2
  %1846 = zext i1 %1845 to i8
  %1847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1846, i8* %1847, align 1
  store %struct.Memory* %loadMem_40b3af, %struct.Memory** %MEMORY
  %loadMem_40b3b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1849 = getelementptr inbounds %struct.GPR, %struct.GPR* %1848, i32 0, i32 33
  %1850 = getelementptr inbounds %struct.Reg, %struct.Reg* %1849, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %1850 to i64*
  %1851 = load i64, i64* %PC.i314
  %1852 = add i64 %1851, 18
  %1853 = load i64, i64* %PC.i314
  %1854 = add i64 %1853, 6
  %1855 = load i64, i64* %PC.i314
  %1856 = add i64 %1855, 6
  store i64 %1856, i64* %PC.i314
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1858 = load i8, i8* %1857, align 1
  %1859 = icmp eq i8 %1858, 0
  %1860 = zext i1 %1859 to i8
  store i8 %1860, i8* %BRANCH_TAKEN, align 1
  %1861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1862 = select i1 %1859, i64 %1852, i64 %1854
  store i64 %1862, i64* %1861, align 8
  store %struct.Memory* %loadMem_40b3b3, %struct.Memory** %MEMORY
  %loadBr_40b3b3 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b3b3 = icmp eq i8 %loadBr_40b3b3, 1
  br i1 %cmpBr_40b3b3, label %block_.L_40b3c5, label %block_.L_40b3b9

block_.L_40b3b9:                                  ; preds = %block_40b3af, %block_.L_40b38e
  %loadMem_40b3b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1864 = getelementptr inbounds %struct.GPR, %struct.GPR* %1863, i32 0, i32 33
  %1865 = getelementptr inbounds %struct.Reg, %struct.Reg* %1864, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %1865 to i64*
  %1866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1867 = getelementptr inbounds %struct.GPR, %struct.GPR* %1866, i32 0, i32 15
  %1868 = getelementptr inbounds %struct.Reg, %struct.Reg* %1867, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %1868 to i64*
  %1869 = load i64, i64* %RBP.i313
  %1870 = sub i64 %1869, 4
  %1871 = load i64, i64* %PC.i312
  %1872 = add i64 %1871, 7
  store i64 %1872, i64* %PC.i312
  %1873 = inttoptr i64 %1870 to i32*
  store i32 2, i32* %1873
  store %struct.Memory* %loadMem_40b3b9, %struct.Memory** %MEMORY
  %loadMem_40b3c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1875 = getelementptr inbounds %struct.GPR, %struct.GPR* %1874, i32 0, i32 33
  %1876 = getelementptr inbounds %struct.Reg, %struct.Reg* %1875, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %1876 to i64*
  %1877 = load i64, i64* %PC.i311
  %1878 = add i64 %1877, 856
  %1879 = load i64, i64* %PC.i311
  %1880 = add i64 %1879, 5
  store i64 %1880, i64* %PC.i311
  %1881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1878, i64* %1881, align 8
  store %struct.Memory* %loadMem_40b3c0, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b3c5:                                  ; preds = %block_40b3af
  %loadMem_40b3c5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1883 = getelementptr inbounds %struct.GPR, %struct.GPR* %1882, i32 0, i32 33
  %1884 = getelementptr inbounds %struct.Reg, %struct.Reg* %1883, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %1884 to i64*
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1886 = getelementptr inbounds %struct.GPR, %struct.GPR* %1885, i32 0, i32 1
  %1887 = getelementptr inbounds %struct.Reg, %struct.Reg* %1886, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %1887 to i64*
  %1888 = load i64, i64* %PC.i309
  %1889 = add i64 %1888, 7
  store i64 %1889, i64* %PC.i309
  %1890 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %1891 = zext i32 %1890 to i64
  store i64 %1891, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_40b3c5, %struct.Memory** %MEMORY
  %loadMem_40b3cc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1892 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1893 = getelementptr inbounds %struct.GPR, %struct.GPR* %1892, i32 0, i32 33
  %1894 = getelementptr inbounds %struct.Reg, %struct.Reg* %1893, i32 0, i32 0
  %PC.i307 = bitcast %union.anon* %1894 to i64*
  %1895 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1896 = getelementptr inbounds %struct.GPR, %struct.GPR* %1895, i32 0, i32 1
  %1897 = getelementptr inbounds %struct.Reg, %struct.Reg* %1896, i32 0, i32 0
  %RAX.i308 = bitcast %union.anon* %1897 to i64*
  %1898 = load i64, i64* %RAX.i308
  %1899 = load i64, i64* %PC.i307
  %1900 = add i64 %1899, 3
  store i64 %1900, i64* %PC.i307
  %1901 = trunc i64 %1898 to i32
  %1902 = sub i32 %1901, 13
  %1903 = zext i32 %1902 to i64
  store i64 %1903, i64* %RAX.i308, align 8
  %1904 = icmp ult i32 %1901, 13
  %1905 = zext i1 %1904 to i8
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1905, i8* %1906, align 1
  %1907 = and i32 %1902, 255
  %1908 = call i32 @llvm.ctpop.i32(i32 %1907)
  %1909 = trunc i32 %1908 to i8
  %1910 = and i8 %1909, 1
  %1911 = xor i8 %1910, 1
  %1912 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1911, i8* %1912, align 1
  %1913 = xor i64 13, %1898
  %1914 = trunc i64 %1913 to i32
  %1915 = xor i32 %1914, %1902
  %1916 = lshr i32 %1915, 4
  %1917 = trunc i32 %1916 to i8
  %1918 = and i8 %1917, 1
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1918, i8* %1919, align 1
  %1920 = icmp eq i32 %1902, 0
  %1921 = zext i1 %1920 to i8
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1921, i8* %1922, align 1
  %1923 = lshr i32 %1902, 31
  %1924 = trunc i32 %1923 to i8
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1924, i8* %1925, align 1
  %1926 = lshr i32 %1901, 31
  %1927 = xor i32 %1923, %1926
  %1928 = add i32 %1927, %1926
  %1929 = icmp eq i32 %1928, 2
  %1930 = zext i1 %1929 to i8
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1930, i8* %1931, align 1
  store %struct.Memory* %loadMem_40b3cc, %struct.Memory** %MEMORY
  %loadMem_40b3cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1933 = getelementptr inbounds %struct.GPR, %struct.GPR* %1932, i32 0, i32 33
  %1934 = getelementptr inbounds %struct.Reg, %struct.Reg* %1933, i32 0, i32 0
  %PC.i304 = bitcast %union.anon* %1934 to i64*
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 1
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %EAX.i305 = bitcast %union.anon* %1937 to i32*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 5
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RCX.i306 = bitcast %union.anon* %1940 to i64*
  %1941 = load i32, i32* %EAX.i305
  %1942 = zext i32 %1941 to i64
  %1943 = load i64, i64* %PC.i304
  %1944 = add i64 %1943, 3
  store i64 %1944, i64* %PC.i304
  %1945 = shl i64 %1942, 32
  %1946 = ashr exact i64 %1945, 32
  store i64 %1946, i64* %RCX.i306, align 8
  store %struct.Memory* %loadMem_40b3cf, %struct.Memory** %MEMORY
  %loadMem_40b3d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 33
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %1949 to i64*
  %1950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1951 = getelementptr inbounds %struct.GPR, %struct.GPR* %1950, i32 0, i32 1
  %1952 = getelementptr inbounds %struct.Reg, %struct.Reg* %1951, i32 0, i32 0
  %RAX.i302 = bitcast %union.anon* %1952 to i64*
  %1953 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1954 = getelementptr inbounds %struct.GPR, %struct.GPR* %1953, i32 0, i32 5
  %1955 = getelementptr inbounds %struct.Reg, %struct.Reg* %1954, i32 0, i32 0
  %RCX.i303 = bitcast %union.anon* %1955 to i64*
  %1956 = load i64, i64* %RCX.i303
  %1957 = mul i64 %1956, 4
  %1958 = add i64 %1957, 8807744
  %1959 = load i64, i64* %PC.i301
  %1960 = add i64 %1959, 7
  store i64 %1960, i64* %PC.i301
  %1961 = inttoptr i64 %1958 to i32*
  %1962 = load i32, i32* %1961
  %1963 = zext i32 %1962 to i64
  store i64 %1963, i64* %RAX.i302, align 8
  store %struct.Memory* %loadMem_40b3d2, %struct.Memory** %MEMORY
  %loadMem_40b3d9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1965 = getelementptr inbounds %struct.GPR, %struct.GPR* %1964, i32 0, i32 33
  %1966 = getelementptr inbounds %struct.Reg, %struct.Reg* %1965, i32 0, i32 0
  %PC.i298 = bitcast %union.anon* %1966 to i64*
  %1967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1968 = getelementptr inbounds %struct.GPR, %struct.GPR* %1967, i32 0, i32 1
  %1969 = getelementptr inbounds %struct.Reg, %struct.Reg* %1968, i32 0, i32 0
  %EAX.i299 = bitcast %union.anon* %1969 to i32*
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1971 = getelementptr inbounds %struct.GPR, %struct.GPR* %1970, i32 0, i32 15
  %1972 = getelementptr inbounds %struct.Reg, %struct.Reg* %1971, i32 0, i32 0
  %RBP.i300 = bitcast %union.anon* %1972 to i64*
  %1973 = load i64, i64* %RBP.i300
  %1974 = sub i64 %1973, 8
  %1975 = load i32, i32* %EAX.i299
  %1976 = zext i32 %1975 to i64
  %1977 = load i64, i64* %PC.i298
  %1978 = add i64 %1977, 3
  store i64 %1978, i64* %PC.i298
  %1979 = inttoptr i64 %1974 to i32*
  store i32 %1975, i32* %1979
  store %struct.Memory* %loadMem_40b3d9, %struct.Memory** %MEMORY
  %loadMem_40b3dc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1980 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1981 = getelementptr inbounds %struct.GPR, %struct.GPR* %1980, i32 0, i32 33
  %1982 = getelementptr inbounds %struct.Reg, %struct.Reg* %1981, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %1982 to i64*
  %1983 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1984 = getelementptr inbounds %struct.GPR, %struct.GPR* %1983, i32 0, i32 15
  %1985 = getelementptr inbounds %struct.Reg, %struct.Reg* %1984, i32 0, i32 0
  %RBP.i297 = bitcast %union.anon* %1985 to i64*
  %1986 = load i64, i64* %RBP.i297
  %1987 = sub i64 %1986, 8
  %1988 = load i64, i64* %PC.i296
  %1989 = add i64 %1988, 4
  store i64 %1989, i64* %PC.i296
  %1990 = inttoptr i64 %1987 to i32*
  %1991 = load i32, i32* %1990
  %1992 = sub i32 %1991, 12
  %1993 = icmp ult i32 %1991, 12
  %1994 = zext i1 %1993 to i8
  %1995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1994, i8* %1995, align 1
  %1996 = and i32 %1992, 255
  %1997 = call i32 @llvm.ctpop.i32(i32 %1996)
  %1998 = trunc i32 %1997 to i8
  %1999 = and i8 %1998, 1
  %2000 = xor i8 %1999, 1
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2000, i8* %2001, align 1
  %2002 = xor i32 %1991, 12
  %2003 = xor i32 %2002, %1992
  %2004 = lshr i32 %2003, 4
  %2005 = trunc i32 %2004 to i8
  %2006 = and i8 %2005, 1
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2006, i8* %2007, align 1
  %2008 = icmp eq i32 %1992, 0
  %2009 = zext i1 %2008 to i8
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2009, i8* %2010, align 1
  %2011 = lshr i32 %1992, 31
  %2012 = trunc i32 %2011 to i8
  %2013 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2012, i8* %2013, align 1
  %2014 = lshr i32 %1991, 31
  %2015 = xor i32 %2011, %2014
  %2016 = add i32 %2015, %2014
  %2017 = icmp eq i32 %2016, 2
  %2018 = zext i1 %2017 to i8
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2018, i8* %2019, align 1
  store %struct.Memory* %loadMem_40b3dc, %struct.Memory** %MEMORY
  %loadMem_40b3e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 33
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %PC.i295 = bitcast %union.anon* %2022 to i64*
  %2023 = load i64, i64* %PC.i295
  %2024 = add i64 %2023, 16
  %2025 = load i64, i64* %PC.i295
  %2026 = add i64 %2025, 6
  %2027 = load i64, i64* %PC.i295
  %2028 = add i64 %2027, 6
  store i64 %2028, i64* %PC.i295
  %2029 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2030 = load i8, i8* %2029, align 1
  store i8 %2030, i8* %BRANCH_TAKEN, align 1
  %2031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2032 = icmp ne i8 %2030, 0
  %2033 = select i1 %2032, i64 %2024, i64 %2026
  store i64 %2033, i64* %2031, align 8
  store %struct.Memory* %loadMem_40b3e0, %struct.Memory** %MEMORY
  %loadBr_40b3e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b3e0 = icmp eq i8 %loadBr_40b3e0, 1
  br i1 %cmpBr_40b3e0, label %block_.L_40b3f0, label %block_40b3e6

block_40b3e6:                                     ; preds = %block_.L_40b3c5
  %loadMem_40b3e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2035 = getelementptr inbounds %struct.GPR, %struct.GPR* %2034, i32 0, i32 33
  %2036 = getelementptr inbounds %struct.Reg, %struct.Reg* %2035, i32 0, i32 0
  %PC.i293 = bitcast %union.anon* %2036 to i64*
  %2037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2038 = getelementptr inbounds %struct.GPR, %struct.GPR* %2037, i32 0, i32 15
  %2039 = getelementptr inbounds %struct.Reg, %struct.Reg* %2038, i32 0, i32 0
  %RBP.i294 = bitcast %union.anon* %2039 to i64*
  %2040 = load i64, i64* %RBP.i294
  %2041 = sub i64 %2040, 8
  %2042 = load i64, i64* %PC.i293
  %2043 = add i64 %2042, 4
  store i64 %2043, i64* %PC.i293
  %2044 = inttoptr i64 %2041 to i32*
  %2045 = load i32, i32* %2044
  %2046 = sub i32 %2045, 10
  %2047 = icmp ult i32 %2045, 10
  %2048 = zext i1 %2047 to i8
  %2049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2048, i8* %2049, align 1
  %2050 = and i32 %2046, 255
  %2051 = call i32 @llvm.ctpop.i32(i32 %2050)
  %2052 = trunc i32 %2051 to i8
  %2053 = and i8 %2052, 1
  %2054 = xor i8 %2053, 1
  %2055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2054, i8* %2055, align 1
  %2056 = xor i32 %2045, 10
  %2057 = xor i32 %2056, %2046
  %2058 = lshr i32 %2057, 4
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2060, i8* %2061, align 1
  %2062 = icmp eq i32 %2046, 0
  %2063 = zext i1 %2062 to i8
  %2064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2063, i8* %2064, align 1
  %2065 = lshr i32 %2046, 31
  %2066 = trunc i32 %2065 to i8
  %2067 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2066, i8* %2067, align 1
  %2068 = lshr i32 %2045, 31
  %2069 = xor i32 %2065, %2068
  %2070 = add i32 %2069, %2068
  %2071 = icmp eq i32 %2070, 2
  %2072 = zext i1 %2071 to i8
  %2073 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2072, i8* %2073, align 1
  store %struct.Memory* %loadMem_40b3e6, %struct.Memory** %MEMORY
  %loadMem_40b3ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2074 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2075 = getelementptr inbounds %struct.GPR, %struct.GPR* %2074, i32 0, i32 33
  %2076 = getelementptr inbounds %struct.Reg, %struct.Reg* %2075, i32 0, i32 0
  %PC.i292 = bitcast %union.anon* %2076 to i64*
  %2077 = load i64, i64* %PC.i292
  %2078 = add i64 %2077, 18
  %2079 = load i64, i64* %PC.i292
  %2080 = add i64 %2079, 6
  %2081 = load i64, i64* %PC.i292
  %2082 = add i64 %2081, 6
  store i64 %2082, i64* %PC.i292
  %2083 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2084 = load i8, i8* %2083, align 1
  %2085 = icmp eq i8 %2084, 0
  %2086 = zext i1 %2085 to i8
  store i8 %2086, i8* %BRANCH_TAKEN, align 1
  %2087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2088 = select i1 %2085, i64 %2078, i64 %2080
  store i64 %2088, i64* %2087, align 8
  store %struct.Memory* %loadMem_40b3ea, %struct.Memory** %MEMORY
  %loadBr_40b3ea = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b3ea = icmp eq i8 %loadBr_40b3ea, 1
  br i1 %cmpBr_40b3ea, label %block_.L_40b3fc, label %block_.L_40b3f0

block_.L_40b3f0:                                  ; preds = %block_40b3e6, %block_.L_40b3c5
  %loadMem_40b3f0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2090 = getelementptr inbounds %struct.GPR, %struct.GPR* %2089, i32 0, i32 33
  %2091 = getelementptr inbounds %struct.Reg, %struct.Reg* %2090, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %2091 to i64*
  %2092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2093 = getelementptr inbounds %struct.GPR, %struct.GPR* %2092, i32 0, i32 15
  %2094 = getelementptr inbounds %struct.Reg, %struct.Reg* %2093, i32 0, i32 0
  %RBP.i291 = bitcast %union.anon* %2094 to i64*
  %2095 = load i64, i64* %RBP.i291
  %2096 = sub i64 %2095, 4
  %2097 = load i64, i64* %PC.i290
  %2098 = add i64 %2097, 7
  store i64 %2098, i64* %PC.i290
  %2099 = inttoptr i64 %2096 to i32*
  store i32 2, i32* %2099
  store %struct.Memory* %loadMem_40b3f0, %struct.Memory** %MEMORY
  %loadMem_40b3f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2100 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2101 = getelementptr inbounds %struct.GPR, %struct.GPR* %2100, i32 0, i32 33
  %2102 = getelementptr inbounds %struct.Reg, %struct.Reg* %2101, i32 0, i32 0
  %PC.i289 = bitcast %union.anon* %2102 to i64*
  %2103 = load i64, i64* %PC.i289
  %2104 = add i64 %2103, 801
  %2105 = load i64, i64* %PC.i289
  %2106 = add i64 %2105, 5
  store i64 %2106, i64* %PC.i289
  %2107 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2104, i64* %2107, align 8
  store %struct.Memory* %loadMem_40b3f7, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b3fc:                                  ; preds = %block_40b3e6
  %loadMem_40b3fc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 33
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %2110 to i64*
  %2111 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2112 = getelementptr inbounds %struct.GPR, %struct.GPR* %2111, i32 0, i32 15
  %2113 = getelementptr inbounds %struct.Reg, %struct.Reg* %2112, i32 0, i32 0
  %RBP.i288 = bitcast %union.anon* %2113 to i64*
  %2114 = load i64, i64* %RBP.i288
  %2115 = sub i64 %2114, 8
  %2116 = load i64, i64* %PC.i287
  %2117 = add i64 %2116, 7
  store i64 %2117, i64* %PC.i287
  %2118 = inttoptr i64 %2115 to i32*
  store i32 0, i32* %2118
  store %struct.Memory* %loadMem_40b3fc, %struct.Memory** %MEMORY
  br label %block_.L_40b403

block_.L_40b403:                                  ; preds = %block_.L_40b441, %block_.L_40b3fc
  %loadMem_40b403 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2119 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2120 = getelementptr inbounds %struct.GPR, %struct.GPR* %2119, i32 0, i32 33
  %2121 = getelementptr inbounds %struct.Reg, %struct.Reg* %2120, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %2121 to i64*
  %2122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2123 = getelementptr inbounds %struct.GPR, %struct.GPR* %2122, i32 0, i32 15
  %2124 = getelementptr inbounds %struct.Reg, %struct.Reg* %2123, i32 0, i32 0
  %RBP.i286 = bitcast %union.anon* %2124 to i64*
  %2125 = load i64, i64* %RBP.i286
  %2126 = sub i64 %2125, 8
  %2127 = load i64, i64* %PC.i285
  %2128 = add i64 %2127, 4
  store i64 %2128, i64* %PC.i285
  %2129 = inttoptr i64 %2126 to i32*
  %2130 = load i32, i32* %2129
  %2131 = sub i32 %2130, 8
  %2132 = icmp ult i32 %2130, 8
  %2133 = zext i1 %2132 to i8
  %2134 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2133, i8* %2134, align 1
  %2135 = and i32 %2131, 255
  %2136 = call i32 @llvm.ctpop.i32(i32 %2135)
  %2137 = trunc i32 %2136 to i8
  %2138 = and i8 %2137, 1
  %2139 = xor i8 %2138, 1
  %2140 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2139, i8* %2140, align 1
  %2141 = xor i32 %2130, 8
  %2142 = xor i32 %2141, %2131
  %2143 = lshr i32 %2142, 4
  %2144 = trunc i32 %2143 to i8
  %2145 = and i8 %2144, 1
  %2146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2145, i8* %2146, align 1
  %2147 = icmp eq i32 %2131, 0
  %2148 = zext i1 %2147 to i8
  %2149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2148, i8* %2149, align 1
  %2150 = lshr i32 %2131, 31
  %2151 = trunc i32 %2150 to i8
  %2152 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2151, i8* %2152, align 1
  %2153 = lshr i32 %2130, 31
  %2154 = xor i32 %2150, %2153
  %2155 = add i32 %2154, %2153
  %2156 = icmp eq i32 %2155, 2
  %2157 = zext i1 %2156 to i8
  %2158 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2157, i8* %2158, align 1
  store %struct.Memory* %loadMem_40b403, %struct.Memory** %MEMORY
  %loadMem_40b407 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2160 = getelementptr inbounds %struct.GPR, %struct.GPR* %2159, i32 0, i32 33
  %2161 = getelementptr inbounds %struct.Reg, %struct.Reg* %2160, i32 0, i32 0
  %PC.i284 = bitcast %union.anon* %2161 to i64*
  %2162 = load i64, i64* %PC.i284
  %2163 = add i64 %2162, 72
  %2164 = load i64, i64* %PC.i284
  %2165 = add i64 %2164, 6
  %2166 = load i64, i64* %PC.i284
  %2167 = add i64 %2166, 6
  store i64 %2167, i64* %PC.i284
  %2168 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2169 = load i8, i8* %2168, align 1
  %2170 = icmp ne i8 %2169, 0
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2172 = load i8, i8* %2171, align 1
  %2173 = icmp ne i8 %2172, 0
  %2174 = xor i1 %2170, %2173
  %2175 = xor i1 %2174, true
  %2176 = zext i1 %2175 to i8
  store i8 %2176, i8* %BRANCH_TAKEN, align 1
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2178 = select i1 %2174, i64 %2165, i64 %2163
  store i64 %2178, i64* %2177, align 8
  store %struct.Memory* %loadMem_40b407, %struct.Memory** %MEMORY
  %loadBr_40b407 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b407 = icmp eq i8 %loadBr_40b407, 1
  br i1 %cmpBr_40b407, label %block_.L_40b44f, label %block_40b40d

block_40b40d:                                     ; preds = %block_.L_40b403
  %loadMem_40b40d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2179 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2180 = getelementptr inbounds %struct.GPR, %struct.GPR* %2179, i32 0, i32 33
  %2181 = getelementptr inbounds %struct.Reg, %struct.Reg* %2180, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %2181 to i64*
  %2182 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2183 = getelementptr inbounds %struct.GPR, %struct.GPR* %2182, i32 0, i32 1
  %2184 = getelementptr inbounds %struct.Reg, %struct.Reg* %2183, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %2184 to i64*
  %2185 = load i64, i64* %PC.i282
  %2186 = add i64 %2185, 7
  store i64 %2186, i64* %PC.i282
  %2187 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %2188 = zext i32 %2187 to i64
  store i64 %2188, i64* %RAX.i283, align 8
  store %struct.Memory* %loadMem_40b40d, %struct.Memory** %MEMORY
  %loadMem_40b414 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2190 = getelementptr inbounds %struct.GPR, %struct.GPR* %2189, i32 0, i32 33
  %2191 = getelementptr inbounds %struct.Reg, %struct.Reg* %2190, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %2191 to i64*
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2193 = getelementptr inbounds %struct.GPR, %struct.GPR* %2192, i32 0, i32 5
  %2194 = getelementptr inbounds %struct.Reg, %struct.Reg* %2193, i32 0, i32 0
  %RCX.i280 = bitcast %union.anon* %2194 to i64*
  %2195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2196 = getelementptr inbounds %struct.GPR, %struct.GPR* %2195, i32 0, i32 15
  %2197 = getelementptr inbounds %struct.Reg, %struct.Reg* %2196, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %2197 to i64*
  %2198 = load i64, i64* %RBP.i281
  %2199 = sub i64 %2198, 8
  %2200 = load i64, i64* %PC.i279
  %2201 = add i64 %2200, 4
  store i64 %2201, i64* %PC.i279
  %2202 = inttoptr i64 %2199 to i32*
  %2203 = load i32, i32* %2202
  %2204 = sext i32 %2203 to i64
  store i64 %2204, i64* %RCX.i280, align 8
  store %struct.Memory* %loadMem_40b414, %struct.Memory** %MEMORY
  %loadMem_40b418 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2206 = getelementptr inbounds %struct.GPR, %struct.GPR* %2205, i32 0, i32 33
  %2207 = getelementptr inbounds %struct.Reg, %struct.Reg* %2206, i32 0, i32 0
  %PC.i276 = bitcast %union.anon* %2207 to i64*
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 1
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %RAX.i277 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 5
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RAX.i277
  %2215 = load i64, i64* %RCX.i278
  %2216 = mul i64 %2215, 4
  %2217 = add i64 %2216, 4357040
  %2218 = load i64, i64* %PC.i276
  %2219 = add i64 %2218, 7
  store i64 %2219, i64* %PC.i276
  %2220 = trunc i64 %2214 to i32
  %2221 = inttoptr i64 %2217 to i32*
  %2222 = load i32, i32* %2221
  %2223 = add i32 %2222, %2220
  %2224 = zext i32 %2223 to i64
  store i64 %2224, i64* %RAX.i277, align 8
  %2225 = icmp ult i32 %2223, %2220
  %2226 = icmp ult i32 %2223, %2222
  %2227 = or i1 %2225, %2226
  %2228 = zext i1 %2227 to i8
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2228, i8* %2229, align 1
  %2230 = and i32 %2223, 255
  %2231 = call i32 @llvm.ctpop.i32(i32 %2230)
  %2232 = trunc i32 %2231 to i8
  %2233 = and i8 %2232, 1
  %2234 = xor i8 %2233, 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2234, i8* %2235, align 1
  %2236 = xor i32 %2222, %2220
  %2237 = xor i32 %2236, %2223
  %2238 = lshr i32 %2237, 4
  %2239 = trunc i32 %2238 to i8
  %2240 = and i8 %2239, 1
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2240, i8* %2241, align 1
  %2242 = icmp eq i32 %2223, 0
  %2243 = zext i1 %2242 to i8
  %2244 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2243, i8* %2244, align 1
  %2245 = lshr i32 %2223, 31
  %2246 = trunc i32 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2246, i8* %2247, align 1
  %2248 = lshr i32 %2220, 31
  %2249 = lshr i32 %2222, 31
  %2250 = xor i32 %2245, %2248
  %2251 = xor i32 %2245, %2249
  %2252 = add i32 %2250, %2251
  %2253 = icmp eq i32 %2252, 2
  %2254 = zext i1 %2253 to i8
  %2255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2254, i8* %2255, align 1
  store %struct.Memory* %loadMem_40b418, %struct.Memory** %MEMORY
  %loadMem_40b41f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2256 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2257 = getelementptr inbounds %struct.GPR, %struct.GPR* %2256, i32 0, i32 33
  %2258 = getelementptr inbounds %struct.Reg, %struct.Reg* %2257, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %2258 to i64*
  %2259 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2260 = getelementptr inbounds %struct.GPR, %struct.GPR* %2259, i32 0, i32 1
  %2261 = getelementptr inbounds %struct.Reg, %struct.Reg* %2260, i32 0, i32 0
  %EAX.i274 = bitcast %union.anon* %2261 to i32*
  %2262 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2263 = getelementptr inbounds %struct.GPR, %struct.GPR* %2262, i32 0, i32 5
  %2264 = getelementptr inbounds %struct.Reg, %struct.Reg* %2263, i32 0, i32 0
  %RCX.i275 = bitcast %union.anon* %2264 to i64*
  %2265 = load i32, i32* %EAX.i274
  %2266 = zext i32 %2265 to i64
  %2267 = load i64, i64* %PC.i273
  %2268 = add i64 %2267, 3
  store i64 %2268, i64* %PC.i273
  %2269 = shl i64 %2266, 32
  %2270 = ashr exact i64 %2269, 32
  store i64 %2270, i64* %RCX.i275, align 8
  store %struct.Memory* %loadMem_40b41f, %struct.Memory** %MEMORY
  %loadMem_40b422 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 33
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %2273 to i64*
  %2274 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2275 = getelementptr inbounds %struct.GPR, %struct.GPR* %2274, i32 0, i32 5
  %2276 = getelementptr inbounds %struct.Reg, %struct.Reg* %2275, i32 0, i32 0
  %RCX.i272 = bitcast %union.anon* %2276 to i64*
  %2277 = load i64, i64* %RCX.i272
  %2278 = mul i64 %2277, 4
  %2279 = add i64 %2278, 8807744
  %2280 = load i64, i64* %PC.i271
  %2281 = add i64 %2280, 8
  store i64 %2281, i64* %PC.i271
  %2282 = inttoptr i64 %2279 to i32*
  %2283 = load i32, i32* %2282
  %2284 = sub i32 %2283, 4
  %2285 = icmp ult i32 %2283, 4
  %2286 = zext i1 %2285 to i8
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2286, i8* %2287, align 1
  %2288 = and i32 %2284, 255
  %2289 = call i32 @llvm.ctpop.i32(i32 %2288)
  %2290 = trunc i32 %2289 to i8
  %2291 = and i8 %2290, 1
  %2292 = xor i8 %2291, 1
  %2293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2292, i8* %2293, align 1
  %2294 = xor i32 %2283, 4
  %2295 = xor i32 %2294, %2284
  %2296 = lshr i32 %2295, 4
  %2297 = trunc i32 %2296 to i8
  %2298 = and i8 %2297, 1
  %2299 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2298, i8* %2299, align 1
  %2300 = icmp eq i32 %2284, 0
  %2301 = zext i1 %2300 to i8
  %2302 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2301, i8* %2302, align 1
  %2303 = lshr i32 %2284, 31
  %2304 = trunc i32 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2304, i8* %2305, align 1
  %2306 = lshr i32 %2283, 31
  %2307 = xor i32 %2303, %2306
  %2308 = add i32 %2307, %2306
  %2309 = icmp eq i32 %2308, 2
  %2310 = zext i1 %2309 to i8
  %2311 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2310, i8* %2311, align 1
  store %struct.Memory* %loadMem_40b422, %struct.Memory** %MEMORY
  %loadMem_40b42a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2313 = getelementptr inbounds %struct.GPR, %struct.GPR* %2312, i32 0, i32 33
  %2314 = getelementptr inbounds %struct.Reg, %struct.Reg* %2313, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %2314 to i64*
  %2315 = load i64, i64* %PC.i270
  %2316 = add i64 %2315, 18
  %2317 = load i64, i64* %PC.i270
  %2318 = add i64 %2317, 6
  %2319 = load i64, i64* %PC.i270
  %2320 = add i64 %2319, 6
  store i64 %2320, i64* %PC.i270
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2322 = load i8, i8* %2321, align 1
  %2323 = icmp eq i8 %2322, 0
  %2324 = zext i1 %2323 to i8
  store i8 %2324, i8* %BRANCH_TAKEN, align 1
  %2325 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2326 = select i1 %2323, i64 %2316, i64 %2318
  store i64 %2326, i64* %2325, align 8
  store %struct.Memory* %loadMem_40b42a, %struct.Memory** %MEMORY
  %loadBr_40b42a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b42a = icmp eq i8 %loadBr_40b42a, 1
  br i1 %cmpBr_40b42a, label %block_.L_40b43c, label %block_40b430

block_40b430:                                     ; preds = %block_40b40d
  %loadMem_40b430 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2328 = getelementptr inbounds %struct.GPR, %struct.GPR* %2327, i32 0, i32 33
  %2329 = getelementptr inbounds %struct.Reg, %struct.Reg* %2328, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %2329 to i64*
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2331 = getelementptr inbounds %struct.GPR, %struct.GPR* %2330, i32 0, i32 15
  %2332 = getelementptr inbounds %struct.Reg, %struct.Reg* %2331, i32 0, i32 0
  %RBP.i269 = bitcast %union.anon* %2332 to i64*
  %2333 = load i64, i64* %RBP.i269
  %2334 = sub i64 %2333, 4
  %2335 = load i64, i64* %PC.i268
  %2336 = add i64 %2335, 7
  store i64 %2336, i64* %PC.i268
  %2337 = inttoptr i64 %2334 to i32*
  store i32 2, i32* %2337
  store %struct.Memory* %loadMem_40b430, %struct.Memory** %MEMORY
  %loadMem_40b437 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2338 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2339 = getelementptr inbounds %struct.GPR, %struct.GPR* %2338, i32 0, i32 33
  %2340 = getelementptr inbounds %struct.Reg, %struct.Reg* %2339, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %2340 to i64*
  %2341 = load i64, i64* %PC.i267
  %2342 = add i64 %2341, 737
  %2343 = load i64, i64* %PC.i267
  %2344 = add i64 %2343, 5
  store i64 %2344, i64* %PC.i267
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2342, i64* %2345, align 8
  store %struct.Memory* %loadMem_40b437, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b43c:                                  ; preds = %block_40b40d
  %loadMem_40b43c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2347 = getelementptr inbounds %struct.GPR, %struct.GPR* %2346, i32 0, i32 33
  %2348 = getelementptr inbounds %struct.Reg, %struct.Reg* %2347, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %2348 to i64*
  %2349 = load i64, i64* %PC.i266
  %2350 = add i64 %2349, 5
  %2351 = load i64, i64* %PC.i266
  %2352 = add i64 %2351, 5
  store i64 %2352, i64* %PC.i266
  %2353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2350, i64* %2353, align 8
  store %struct.Memory* %loadMem_40b43c, %struct.Memory** %MEMORY
  br label %block_.L_40b441

block_.L_40b441:                                  ; preds = %block_.L_40b43c
  %loadMem_40b441 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2355 = getelementptr inbounds %struct.GPR, %struct.GPR* %2354, i32 0, i32 33
  %2356 = getelementptr inbounds %struct.Reg, %struct.Reg* %2355, i32 0, i32 0
  %PC.i263 = bitcast %union.anon* %2356 to i64*
  %2357 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2358 = getelementptr inbounds %struct.GPR, %struct.GPR* %2357, i32 0, i32 1
  %2359 = getelementptr inbounds %struct.Reg, %struct.Reg* %2358, i32 0, i32 0
  %RAX.i264 = bitcast %union.anon* %2359 to i64*
  %2360 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2361 = getelementptr inbounds %struct.GPR, %struct.GPR* %2360, i32 0, i32 15
  %2362 = getelementptr inbounds %struct.Reg, %struct.Reg* %2361, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %2362 to i64*
  %2363 = load i64, i64* %RBP.i265
  %2364 = sub i64 %2363, 8
  %2365 = load i64, i64* %PC.i263
  %2366 = add i64 %2365, 3
  store i64 %2366, i64* %PC.i263
  %2367 = inttoptr i64 %2364 to i32*
  %2368 = load i32, i32* %2367
  %2369 = zext i32 %2368 to i64
  store i64 %2369, i64* %RAX.i264, align 8
  store %struct.Memory* %loadMem_40b441, %struct.Memory** %MEMORY
  %loadMem_40b444 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2371 = getelementptr inbounds %struct.GPR, %struct.GPR* %2370, i32 0, i32 33
  %2372 = getelementptr inbounds %struct.Reg, %struct.Reg* %2371, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %2372 to i64*
  %2373 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2374 = getelementptr inbounds %struct.GPR, %struct.GPR* %2373, i32 0, i32 1
  %2375 = getelementptr inbounds %struct.Reg, %struct.Reg* %2374, i32 0, i32 0
  %RAX.i262 = bitcast %union.anon* %2375 to i64*
  %2376 = load i64, i64* %RAX.i262
  %2377 = load i64, i64* %PC.i261
  %2378 = add i64 %2377, 3
  store i64 %2378, i64* %PC.i261
  %2379 = trunc i64 %2376 to i32
  %2380 = add i32 1, %2379
  %2381 = zext i32 %2380 to i64
  store i64 %2381, i64* %RAX.i262, align 8
  %2382 = icmp ult i32 %2380, %2379
  %2383 = icmp ult i32 %2380, 1
  %2384 = or i1 %2382, %2383
  %2385 = zext i1 %2384 to i8
  %2386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2385, i8* %2386, align 1
  %2387 = and i32 %2380, 255
  %2388 = call i32 @llvm.ctpop.i32(i32 %2387)
  %2389 = trunc i32 %2388 to i8
  %2390 = and i8 %2389, 1
  %2391 = xor i8 %2390, 1
  %2392 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2391, i8* %2392, align 1
  %2393 = xor i64 1, %2376
  %2394 = trunc i64 %2393 to i32
  %2395 = xor i32 %2394, %2380
  %2396 = lshr i32 %2395, 4
  %2397 = trunc i32 %2396 to i8
  %2398 = and i8 %2397, 1
  %2399 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2398, i8* %2399, align 1
  %2400 = icmp eq i32 %2380, 0
  %2401 = zext i1 %2400 to i8
  %2402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2401, i8* %2402, align 1
  %2403 = lshr i32 %2380, 31
  %2404 = trunc i32 %2403 to i8
  %2405 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2404, i8* %2405, align 1
  %2406 = lshr i32 %2379, 31
  %2407 = xor i32 %2403, %2406
  %2408 = add i32 %2407, %2403
  %2409 = icmp eq i32 %2408, 2
  %2410 = zext i1 %2409 to i8
  %2411 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2410, i8* %2411, align 1
  store %struct.Memory* %loadMem_40b444, %struct.Memory** %MEMORY
  %loadMem_40b447 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2413 = getelementptr inbounds %struct.GPR, %struct.GPR* %2412, i32 0, i32 33
  %2414 = getelementptr inbounds %struct.Reg, %struct.Reg* %2413, i32 0, i32 0
  %PC.i258 = bitcast %union.anon* %2414 to i64*
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2416 = getelementptr inbounds %struct.GPR, %struct.GPR* %2415, i32 0, i32 1
  %2417 = getelementptr inbounds %struct.Reg, %struct.Reg* %2416, i32 0, i32 0
  %EAX.i259 = bitcast %union.anon* %2417 to i32*
  %2418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2419 = getelementptr inbounds %struct.GPR, %struct.GPR* %2418, i32 0, i32 15
  %2420 = getelementptr inbounds %struct.Reg, %struct.Reg* %2419, i32 0, i32 0
  %RBP.i260 = bitcast %union.anon* %2420 to i64*
  %2421 = load i64, i64* %RBP.i260
  %2422 = sub i64 %2421, 8
  %2423 = load i32, i32* %EAX.i259
  %2424 = zext i32 %2423 to i64
  %2425 = load i64, i64* %PC.i258
  %2426 = add i64 %2425, 3
  store i64 %2426, i64* %PC.i258
  %2427 = inttoptr i64 %2422 to i32*
  store i32 %2423, i32* %2427
  store %struct.Memory* %loadMem_40b447, %struct.Memory** %MEMORY
  %loadMem_40b44a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 33
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %2430 to i64*
  %2431 = load i64, i64* %PC.i257
  %2432 = add i64 %2431, -71
  %2433 = load i64, i64* %PC.i257
  %2434 = add i64 %2433, 5
  store i64 %2434, i64* %PC.i257
  %2435 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2432, i64* %2435, align 8
  store %struct.Memory* %loadMem_40b44a, %struct.Memory** %MEMORY
  br label %block_.L_40b403

block_.L_40b44f:                                  ; preds = %block_.L_40b403
  %loadMem_40b44f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2437 = getelementptr inbounds %struct.GPR, %struct.GPR* %2436, i32 0, i32 33
  %2438 = getelementptr inbounds %struct.Reg, %struct.Reg* %2437, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %2438 to i64*
  %2439 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2440 = getelementptr inbounds %struct.GPR, %struct.GPR* %2439, i32 0, i32 9
  %2441 = getelementptr inbounds %struct.Reg, %struct.Reg* %2440, i32 0, i32 0
  %ESI.i = bitcast %union.anon* %2441 to i32*
  %2442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2443 = getelementptr inbounds %struct.GPR, %struct.GPR* %2442, i32 0, i32 9
  %2444 = getelementptr inbounds %struct.Reg, %struct.Reg* %2443, i32 0, i32 0
  %RSI.i256 = bitcast %union.anon* %2444 to i64*
  %2445 = load i64, i64* %RSI.i256
  %2446 = load i32, i32* %ESI.i
  %2447 = zext i32 %2446 to i64
  %2448 = load i64, i64* %PC.i255
  %2449 = add i64 %2448, 2
  store i64 %2449, i64* %PC.i255
  %2450 = xor i64 %2447, %2445
  %2451 = trunc i64 %2450 to i32
  %2452 = and i64 %2450, 4294967295
  store i64 %2452, i64* %RSI.i256, align 8
  %2453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2453, align 1
  %2454 = and i32 %2451, 255
  %2455 = call i32 @llvm.ctpop.i32(i32 %2454)
  %2456 = trunc i32 %2455 to i8
  %2457 = and i8 %2456, 1
  %2458 = xor i8 %2457, 1
  %2459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2458, i8* %2459, align 1
  %2460 = icmp eq i32 %2451, 0
  %2461 = zext i1 %2460 to i8
  %2462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2461, i8* %2462, align 1
  %2463 = lshr i32 %2451, 31
  %2464 = trunc i32 %2463 to i8
  %2465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2464, i8* %2465, align 1
  %2466 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2466, align 1
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2467, align 1
  store %struct.Memory* %loadMem_40b44f, %struct.Memory** %MEMORY
  %loadMem_40b451 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i253 = bitcast %union.anon* %2470 to i64*
  %2471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2472 = getelementptr inbounds %struct.GPR, %struct.GPR* %2471, i32 0, i32 11
  %2473 = getelementptr inbounds %struct.Reg, %struct.Reg* %2472, i32 0, i32 0
  %RDI.i254 = bitcast %union.anon* %2473 to i64*
  %2474 = load i64, i64* %PC.i253
  %2475 = add i64 %2474, 7
  store i64 %2475, i64* %PC.i253
  %2476 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %2477 = zext i32 %2476 to i64
  store i64 %2477, i64* %RDI.i254, align 8
  store %struct.Memory* %loadMem_40b451, %struct.Memory** %MEMORY
  %loadMem1_40b458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2479 = getelementptr inbounds %struct.GPR, %struct.GPR* %2478, i32 0, i32 33
  %2480 = getelementptr inbounds %struct.Reg, %struct.Reg* %2479, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %2480 to i64*
  %2481 = load i64, i64* %PC.i252
  %2482 = add i64 %2481, -41080
  %2483 = load i64, i64* %PC.i252
  %2484 = add i64 %2483, 5
  %2485 = load i64, i64* %PC.i252
  %2486 = add i64 %2485, 5
  store i64 %2486, i64* %PC.i252
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2488 = load i64, i64* %2487, align 8
  %2489 = add i64 %2488, -8
  %2490 = inttoptr i64 %2489 to i64*
  store i64 %2484, i64* %2490
  store i64 %2489, i64* %2487, align 8
  %2491 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2482, i64* %2491, align 8
  store %struct.Memory* %loadMem1_40b458, %struct.Memory** %MEMORY
  %loadMem2_40b458 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40b458 = load i64, i64* %3
  %call2_40b458 = call %struct.Memory* @sub_4013e0.is_attacked(%struct.State* %0, i64 %loadPC_40b458, %struct.Memory* %loadMem2_40b458)
  store %struct.Memory* %call2_40b458, %struct.Memory** %MEMORY
  %loadMem_40b45d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2492 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2493 = getelementptr inbounds %struct.GPR, %struct.GPR* %2492, i32 0, i32 33
  %2494 = getelementptr inbounds %struct.Reg, %struct.Reg* %2493, i32 0, i32 0
  %PC.i250 = bitcast %union.anon* %2494 to i64*
  %2495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2496 = getelementptr inbounds %struct.GPR, %struct.GPR* %2495, i32 0, i32 1
  %2497 = getelementptr inbounds %struct.Reg, %struct.Reg* %2496, i32 0, i32 0
  %EAX.i251 = bitcast %union.anon* %2497 to i32*
  %2498 = load i32, i32* %EAX.i251
  %2499 = zext i32 %2498 to i64
  %2500 = load i64, i64* %PC.i250
  %2501 = add i64 %2500, 3
  store i64 %2501, i64* %PC.i250
  %2502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2502, align 1
  %2503 = and i32 %2498, 255
  %2504 = call i32 @llvm.ctpop.i32(i32 %2503)
  %2505 = trunc i32 %2504 to i8
  %2506 = and i8 %2505, 1
  %2507 = xor i8 %2506, 1
  %2508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2507, i8* %2508, align 1
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2509, align 1
  %2510 = icmp eq i32 %2498, 0
  %2511 = zext i1 %2510 to i8
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2511, i8* %2512, align 1
  %2513 = lshr i32 %2498, 31
  %2514 = trunc i32 %2513 to i8
  %2515 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2514, i8* %2515, align 1
  %2516 = lshr i32 %2498, 31
  %2517 = xor i32 %2513, %2516
  %2518 = add i32 %2517, %2516
  %2519 = icmp eq i32 %2518, 2
  %2520 = zext i1 %2519 to i8
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2520, i8* %2521, align 1
  store %struct.Memory* %loadMem_40b45d, %struct.Memory** %MEMORY
  %loadMem_40b460 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %PC.i249
  %2526 = add i64 %2525, 58
  %2527 = load i64, i64* %PC.i249
  %2528 = add i64 %2527, 6
  %2529 = load i64, i64* %PC.i249
  %2530 = add i64 %2529, 6
  store i64 %2530, i64* %PC.i249
  %2531 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2532 = load i8, i8* %2531, align 1
  store i8 %2532, i8* %BRANCH_TAKEN, align 1
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2534 = icmp ne i8 %2532, 0
  %2535 = select i1 %2534, i64 %2526, i64 %2528
  store i64 %2535, i64* %2533, align 8
  store %struct.Memory* %loadMem_40b460, %struct.Memory** %MEMORY
  %loadBr_40b460 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b460 = icmp eq i8 %loadBr_40b460, 1
  br i1 %cmpBr_40b460, label %block_.L_40b49a, label %block_40b466

block_40b466:                                     ; preds = %block_.L_40b44f
  %loadMem_40b466 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2537 = getelementptr inbounds %struct.GPR, %struct.GPR* %2536, i32 0, i32 33
  %2538 = getelementptr inbounds %struct.Reg, %struct.Reg* %2537, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %2538 to i64*
  %2539 = load i64, i64* %PC.i248
  %2540 = add i64 %2539, 8
  store i64 %2540, i64* %PC.i248
  %2541 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %2542 = sub i32 %2541, 2
  %2543 = icmp ult i32 %2541, 2
  %2544 = zext i1 %2543 to i8
  %2545 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2544, i8* %2545, align 1
  %2546 = and i32 %2542, 255
  %2547 = call i32 @llvm.ctpop.i32(i32 %2546)
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = xor i8 %2549, 1
  %2551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2550, i8* %2551, align 1
  %2552 = xor i32 %2541, 2
  %2553 = xor i32 %2552, %2542
  %2554 = lshr i32 %2553, 4
  %2555 = trunc i32 %2554 to i8
  %2556 = and i8 %2555, 1
  %2557 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2556, i8* %2557, align 1
  %2558 = icmp eq i32 %2542, 0
  %2559 = zext i1 %2558 to i8
  %2560 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2559, i8* %2560, align 1
  %2561 = lshr i32 %2542, 31
  %2562 = trunc i32 %2561 to i8
  %2563 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2562, i8* %2563, align 1
  %2564 = lshr i32 %2541, 31
  %2565 = xor i32 %2561, %2564
  %2566 = add i32 %2565, %2564
  %2567 = icmp eq i32 %2566, 2
  %2568 = zext i1 %2567 to i8
  %2569 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2568, i8* %2569, align 1
  store %struct.Memory* %loadMem_40b466, %struct.Memory** %MEMORY
  %loadMem_40b46e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 33
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %2572 to i64*
  %2573 = load i64, i64* %PC.i247
  %2574 = add i64 %2573, 20
  %2575 = load i64, i64* %PC.i247
  %2576 = add i64 %2575, 6
  %2577 = load i64, i64* %PC.i247
  %2578 = add i64 %2577, 6
  store i64 %2578, i64* %PC.i247
  %2579 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2580 = load i8, i8* %2579, align 1
  store i8 %2580, i8* %BRANCH_TAKEN, align 1
  %2581 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2582 = icmp ne i8 %2580, 0
  %2583 = select i1 %2582, i64 %2574, i64 %2576
  store i64 %2583, i64* %2581, align 8
  store %struct.Memory* %loadMem_40b46e, %struct.Memory** %MEMORY
  %loadBr_40b46e = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b46e = icmp eq i8 %loadBr_40b46e, 1
  br i1 %cmpBr_40b46e, label %block_.L_40b482, label %block_40b474

block_40b474:                                     ; preds = %block_40b466
  %loadMem_40b474 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2585 = getelementptr inbounds %struct.GPR, %struct.GPR* %2584, i32 0, i32 33
  %2586 = getelementptr inbounds %struct.Reg, %struct.Reg* %2585, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %2586 to i64*
  %2587 = load i64, i64* %PC.i246
  %2588 = add i64 %2587, 8
  store i64 %2588, i64* %PC.i246
  %2589 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %2590 = sub i32 %2589, 4
  %2591 = icmp ult i32 %2589, 4
  %2592 = zext i1 %2591 to i8
  %2593 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2592, i8* %2593, align 1
  %2594 = and i32 %2590, 255
  %2595 = call i32 @llvm.ctpop.i32(i32 %2594)
  %2596 = trunc i32 %2595 to i8
  %2597 = and i8 %2596, 1
  %2598 = xor i8 %2597, 1
  %2599 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2598, i8* %2599, align 1
  %2600 = xor i32 %2589, 4
  %2601 = xor i32 %2600, %2590
  %2602 = lshr i32 %2601, 4
  %2603 = trunc i32 %2602 to i8
  %2604 = and i8 %2603, 1
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2604, i8* %2605, align 1
  %2606 = icmp eq i32 %2590, 0
  %2607 = zext i1 %2606 to i8
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2607, i8* %2608, align 1
  %2609 = lshr i32 %2590, 31
  %2610 = trunc i32 %2609 to i8
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2610, i8* %2611, align 1
  %2612 = lshr i32 %2589, 31
  %2613 = xor i32 %2609, %2612
  %2614 = add i32 %2613, %2612
  %2615 = icmp eq i32 %2614, 2
  %2616 = zext i1 %2615 to i8
  %2617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2616, i8* %2617, align 1
  store %struct.Memory* %loadMem_40b474, %struct.Memory** %MEMORY
  %loadMem_40b47c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2619 = getelementptr inbounds %struct.GPR, %struct.GPR* %2618, i32 0, i32 33
  %2620 = getelementptr inbounds %struct.Reg, %struct.Reg* %2619, i32 0, i32 0
  %PC.i245 = bitcast %union.anon* %2620 to i64*
  %2621 = load i64, i64* %PC.i245
  %2622 = add i64 %2621, 18
  %2623 = load i64, i64* %PC.i245
  %2624 = add i64 %2623, 6
  %2625 = load i64, i64* %PC.i245
  %2626 = add i64 %2625, 6
  store i64 %2626, i64* %PC.i245
  %2627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2628 = load i8, i8* %2627, align 1
  %2629 = icmp eq i8 %2628, 0
  %2630 = zext i1 %2629 to i8
  store i8 %2630, i8* %BRANCH_TAKEN, align 1
  %2631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2632 = select i1 %2629, i64 %2622, i64 %2624
  store i64 %2632, i64* %2631, align 8
  store %struct.Memory* %loadMem_40b47c, %struct.Memory** %MEMORY
  %loadBr_40b47c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b47c = icmp eq i8 %loadBr_40b47c, 1
  br i1 %cmpBr_40b47c, label %block_.L_40b48e, label %block_.L_40b482

block_.L_40b482:                                  ; preds = %block_40b474, %block_40b466
  %loadMem_40b482 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2633 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2634 = getelementptr inbounds %struct.GPR, %struct.GPR* %2633, i32 0, i32 33
  %2635 = getelementptr inbounds %struct.Reg, %struct.Reg* %2634, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %2635 to i64*
  %2636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2637 = getelementptr inbounds %struct.GPR, %struct.GPR* %2636, i32 0, i32 15
  %2638 = getelementptr inbounds %struct.Reg, %struct.Reg* %2637, i32 0, i32 0
  %RBP.i244 = bitcast %union.anon* %2638 to i64*
  %2639 = load i64, i64* %RBP.i244
  %2640 = sub i64 %2639, 4
  %2641 = load i64, i64* %PC.i243
  %2642 = add i64 %2641, 7
  store i64 %2642, i64* %PC.i243
  %2643 = inttoptr i64 %2640 to i32*
  store i32 2, i32* %2643
  store %struct.Memory* %loadMem_40b482, %struct.Memory** %MEMORY
  %loadMem_40b489 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2644 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2645 = getelementptr inbounds %struct.GPR, %struct.GPR* %2644, i32 0, i32 33
  %2646 = getelementptr inbounds %struct.Reg, %struct.Reg* %2645, i32 0, i32 0
  %PC.i242 = bitcast %union.anon* %2646 to i64*
  %2647 = load i64, i64* %PC.i242
  %2648 = add i64 %2647, 655
  %2649 = load i64, i64* %PC.i242
  %2650 = add i64 %2649, 5
  store i64 %2650, i64* %PC.i242
  %2651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2648, i64* %2651, align 8
  store %struct.Memory* %loadMem_40b489, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b48e:                                  ; preds = %block_40b474
  %loadMem_40b48e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 33
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %2654 to i64*
  %2655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2656 = getelementptr inbounds %struct.GPR, %struct.GPR* %2655, i32 0, i32 15
  %2657 = getelementptr inbounds %struct.Reg, %struct.Reg* %2656, i32 0, i32 0
  %RBP.i241 = bitcast %union.anon* %2657 to i64*
  %2658 = load i64, i64* %RBP.i241
  %2659 = sub i64 %2658, 4
  %2660 = load i64, i64* %PC.i240
  %2661 = add i64 %2660, 7
  store i64 %2661, i64* %PC.i240
  %2662 = inttoptr i64 %2659 to i32*
  store i32 1, i32* %2662
  store %struct.Memory* %loadMem_40b48e, %struct.Memory** %MEMORY
  %loadMem_40b495 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 33
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %PC.i239 = bitcast %union.anon* %2665 to i64*
  %2666 = load i64, i64* %PC.i239
  %2667 = add i64 %2666, 643
  %2668 = load i64, i64* %PC.i239
  %2669 = add i64 %2668, 5
  store i64 %2669, i64* %PC.i239
  %2670 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2667, i64* %2670, align 8
  store %struct.Memory* %loadMem_40b495, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b49a:                                  ; preds = %block_.L_40b44f
  %loadMem_40b49a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2671 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2672 = getelementptr inbounds %struct.GPR, %struct.GPR* %2671, i32 0, i32 33
  %2673 = getelementptr inbounds %struct.Reg, %struct.Reg* %2672, i32 0, i32 0
  %PC.i238 = bitcast %union.anon* %2673 to i64*
  %2674 = load i64, i64* %PC.i238
  %2675 = add i64 %2674, 631
  %2676 = load i64, i64* %PC.i238
  %2677 = add i64 %2676, 5
  store i64 %2677, i64* %PC.i238
  %2678 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2675, i64* %2678, align 8
  store %struct.Memory* %loadMem_40b49a, %struct.Memory** %MEMORY
  br label %block_.L_40b711

block_.L_40b49f:                                  ; preds = %block_.L_40b222
  %loadMem_40b49f = load %struct.Memory*, %struct.Memory** %MEMORY
  %2679 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2680 = getelementptr inbounds %struct.GPR, %struct.GPR* %2679, i32 0, i32 33
  %2681 = getelementptr inbounds %struct.Reg, %struct.Reg* %2680, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %2681 to i64*
  %2682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2683 = getelementptr inbounds %struct.GPR, %struct.GPR* %2682, i32 0, i32 1
  %2684 = getelementptr inbounds %struct.Reg, %struct.Reg* %2683, i32 0, i32 0
  %RAX.i237 = bitcast %union.anon* %2684 to i64*
  %2685 = load i64, i64* %PC.i236
  %2686 = add i64 %2685, 7
  store i64 %2686, i64* %PC.i236
  %2687 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %2688 = zext i32 %2687 to i64
  store i64 %2688, i64* %RAX.i237, align 8
  store %struct.Memory* %loadMem_40b49f, %struct.Memory** %MEMORY
  %loadMem_40b4a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2690 = getelementptr inbounds %struct.GPR, %struct.GPR* %2689, i32 0, i32 33
  %2691 = getelementptr inbounds %struct.Reg, %struct.Reg* %2690, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %2691 to i64*
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 1
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %RAX.i235 = bitcast %union.anon* %2694 to i64*
  %2695 = load i64, i64* %RAX.i235
  %2696 = load i64, i64* %PC.i234
  %2697 = add i64 %2696, 3
  store i64 %2697, i64* %PC.i234
  %2698 = trunc i64 %2695 to i32
  %2699 = sub i32 %2698, 12
  %2700 = zext i32 %2699 to i64
  store i64 %2700, i64* %RAX.i235, align 8
  %2701 = icmp ult i32 %2698, 12
  %2702 = zext i1 %2701 to i8
  %2703 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2702, i8* %2703, align 1
  %2704 = and i32 %2699, 255
  %2705 = call i32 @llvm.ctpop.i32(i32 %2704)
  %2706 = trunc i32 %2705 to i8
  %2707 = and i8 %2706, 1
  %2708 = xor i8 %2707, 1
  %2709 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2708, i8* %2709, align 1
  %2710 = xor i64 12, %2695
  %2711 = trunc i64 %2710 to i32
  %2712 = xor i32 %2711, %2699
  %2713 = lshr i32 %2712, 4
  %2714 = trunc i32 %2713 to i8
  %2715 = and i8 %2714, 1
  %2716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2715, i8* %2716, align 1
  %2717 = icmp eq i32 %2699, 0
  %2718 = zext i1 %2717 to i8
  %2719 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2718, i8* %2719, align 1
  %2720 = lshr i32 %2699, 31
  %2721 = trunc i32 %2720 to i8
  %2722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2721, i8* %2722, align 1
  %2723 = lshr i32 %2698, 31
  %2724 = xor i32 %2720, %2723
  %2725 = add i32 %2724, %2723
  %2726 = icmp eq i32 %2725, 2
  %2727 = zext i1 %2726 to i8
  %2728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2727, i8* %2728, align 1
  store %struct.Memory* %loadMem_40b4a6, %struct.Memory** %MEMORY
  %loadMem_40b4a9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2730 = getelementptr inbounds %struct.GPR, %struct.GPR* %2729, i32 0, i32 33
  %2731 = getelementptr inbounds %struct.Reg, %struct.Reg* %2730, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %2731 to i64*
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2733 = getelementptr inbounds %struct.GPR, %struct.GPR* %2732, i32 0, i32 1
  %2734 = getelementptr inbounds %struct.Reg, %struct.Reg* %2733, i32 0, i32 0
  %EAX.i232 = bitcast %union.anon* %2734 to i32*
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 5
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %RCX.i233 = bitcast %union.anon* %2737 to i64*
  %2738 = load i32, i32* %EAX.i232
  %2739 = zext i32 %2738 to i64
  %2740 = load i64, i64* %PC.i231
  %2741 = add i64 %2740, 3
  store i64 %2741, i64* %PC.i231
  %2742 = shl i64 %2739, 32
  %2743 = ashr exact i64 %2742, 32
  store i64 %2743, i64* %RCX.i233, align 8
  store %struct.Memory* %loadMem_40b4a9, %struct.Memory** %MEMORY
  %loadMem_40b4ac = load %struct.Memory*, %struct.Memory** %MEMORY
  %2744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2745 = getelementptr inbounds %struct.GPR, %struct.GPR* %2744, i32 0, i32 33
  %2746 = getelementptr inbounds %struct.Reg, %struct.Reg* %2745, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %2746 to i64*
  %2747 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2748 = getelementptr inbounds %struct.GPR, %struct.GPR* %2747, i32 0, i32 1
  %2749 = getelementptr inbounds %struct.Reg, %struct.Reg* %2748, i32 0, i32 0
  %RAX.i229 = bitcast %union.anon* %2749 to i64*
  %2750 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2751 = getelementptr inbounds %struct.GPR, %struct.GPR* %2750, i32 0, i32 5
  %2752 = getelementptr inbounds %struct.Reg, %struct.Reg* %2751, i32 0, i32 0
  %RCX.i230 = bitcast %union.anon* %2752 to i64*
  %2753 = load i64, i64* %RCX.i230
  %2754 = mul i64 %2753, 4
  %2755 = add i64 %2754, 8807744
  %2756 = load i64, i64* %PC.i228
  %2757 = add i64 %2756, 7
  store i64 %2757, i64* %PC.i228
  %2758 = inttoptr i64 %2755 to i32*
  %2759 = load i32, i32* %2758
  %2760 = zext i32 %2759 to i64
  store i64 %2760, i64* %RAX.i229, align 8
  store %struct.Memory* %loadMem_40b4ac, %struct.Memory** %MEMORY
  %loadMem_40b4b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2761 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2762 = getelementptr inbounds %struct.GPR, %struct.GPR* %2761, i32 0, i32 33
  %2763 = getelementptr inbounds %struct.Reg, %struct.Reg* %2762, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %2763 to i64*
  %2764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2765 = getelementptr inbounds %struct.GPR, %struct.GPR* %2764, i32 0, i32 1
  %2766 = getelementptr inbounds %struct.Reg, %struct.Reg* %2765, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %2766 to i32*
  %2767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2768 = getelementptr inbounds %struct.GPR, %struct.GPR* %2767, i32 0, i32 15
  %2769 = getelementptr inbounds %struct.Reg, %struct.Reg* %2768, i32 0, i32 0
  %RBP.i227 = bitcast %union.anon* %2769 to i64*
  %2770 = load i64, i64* %RBP.i227
  %2771 = sub i64 %2770, 8
  %2772 = load i32, i32* %EAX.i226
  %2773 = zext i32 %2772 to i64
  %2774 = load i64, i64* %PC.i225
  %2775 = add i64 %2774, 3
  store i64 %2775, i64* %PC.i225
  %2776 = inttoptr i64 %2771 to i32*
  store i32 %2772, i32* %2776
  store %struct.Memory* %loadMem_40b4b3, %struct.Memory** %MEMORY
  %loadMem_40b4b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2777 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2778 = getelementptr inbounds %struct.GPR, %struct.GPR* %2777, i32 0, i32 33
  %2779 = getelementptr inbounds %struct.Reg, %struct.Reg* %2778, i32 0, i32 0
  %PC.i223 = bitcast %union.anon* %2779 to i64*
  %2780 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2781 = getelementptr inbounds %struct.GPR, %struct.GPR* %2780, i32 0, i32 15
  %2782 = getelementptr inbounds %struct.Reg, %struct.Reg* %2781, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %2782 to i64*
  %2783 = load i64, i64* %RBP.i224
  %2784 = sub i64 %2783, 8
  %2785 = load i64, i64* %PC.i223
  %2786 = add i64 %2785, 4
  store i64 %2786, i64* %PC.i223
  %2787 = inttoptr i64 %2784 to i32*
  %2788 = load i32, i32* %2787
  %2789 = sub i32 %2788, 7
  %2790 = icmp ult i32 %2788, 7
  %2791 = zext i1 %2790 to i8
  %2792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2791, i8* %2792, align 1
  %2793 = and i32 %2789, 255
  %2794 = call i32 @llvm.ctpop.i32(i32 %2793)
  %2795 = trunc i32 %2794 to i8
  %2796 = and i8 %2795, 1
  %2797 = xor i8 %2796, 1
  %2798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2797, i8* %2798, align 1
  %2799 = xor i32 %2788, 7
  %2800 = xor i32 %2799, %2789
  %2801 = lshr i32 %2800, 4
  %2802 = trunc i32 %2801 to i8
  %2803 = and i8 %2802, 1
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2803, i8* %2804, align 1
  %2805 = icmp eq i32 %2789, 0
  %2806 = zext i1 %2805 to i8
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2806, i8* %2807, align 1
  %2808 = lshr i32 %2789, 31
  %2809 = trunc i32 %2808 to i8
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2809, i8* %2810, align 1
  %2811 = lshr i32 %2788, 31
  %2812 = xor i32 %2808, %2811
  %2813 = add i32 %2812, %2811
  %2814 = icmp eq i32 %2813, 2
  %2815 = zext i1 %2814 to i8
  %2816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2815, i8* %2816, align 1
  store %struct.Memory* %loadMem_40b4b6, %struct.Memory** %MEMORY
  %loadMem_40b4ba = load %struct.Memory*, %struct.Memory** %MEMORY
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2818 = getelementptr inbounds %struct.GPR, %struct.GPR* %2817, i32 0, i32 33
  %2819 = getelementptr inbounds %struct.Reg, %struct.Reg* %2818, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %2819 to i64*
  %2820 = load i64, i64* %PC.i222
  %2821 = add i64 %2820, 16
  %2822 = load i64, i64* %PC.i222
  %2823 = add i64 %2822, 6
  %2824 = load i64, i64* %PC.i222
  %2825 = add i64 %2824, 6
  store i64 %2825, i64* %PC.i222
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2827 = load i8, i8* %2826, align 1
  store i8 %2827, i8* %BRANCH_TAKEN, align 1
  %2828 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2829 = icmp ne i8 %2827, 0
  %2830 = select i1 %2829, i64 %2821, i64 %2823
  store i64 %2830, i64* %2828, align 8
  store %struct.Memory* %loadMem_40b4ba, %struct.Memory** %MEMORY
  %loadBr_40b4ba = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4ba = icmp eq i8 %loadBr_40b4ba, 1
  br i1 %cmpBr_40b4ba, label %block_.L_40b4ca, label %block_40b4c0

block_40b4c0:                                     ; preds = %block_.L_40b49f
  %loadMem_40b4c0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2831 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2832 = getelementptr inbounds %struct.GPR, %struct.GPR* %2831, i32 0, i32 33
  %2833 = getelementptr inbounds %struct.Reg, %struct.Reg* %2832, i32 0, i32 0
  %PC.i220 = bitcast %union.anon* %2833 to i64*
  %2834 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2835 = getelementptr inbounds %struct.GPR, %struct.GPR* %2834, i32 0, i32 15
  %2836 = getelementptr inbounds %struct.Reg, %struct.Reg* %2835, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %2836 to i64*
  %2837 = load i64, i64* %RBP.i221
  %2838 = sub i64 %2837, 8
  %2839 = load i64, i64* %PC.i220
  %2840 = add i64 %2839, 4
  store i64 %2840, i64* %PC.i220
  %2841 = inttoptr i64 %2838 to i32*
  %2842 = load i32, i32* %2841
  %2843 = sub i32 %2842, 9
  %2844 = icmp ult i32 %2842, 9
  %2845 = zext i1 %2844 to i8
  %2846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2845, i8* %2846, align 1
  %2847 = and i32 %2843, 255
  %2848 = call i32 @llvm.ctpop.i32(i32 %2847)
  %2849 = trunc i32 %2848 to i8
  %2850 = and i8 %2849, 1
  %2851 = xor i8 %2850, 1
  %2852 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2851, i8* %2852, align 1
  %2853 = xor i32 %2842, 9
  %2854 = xor i32 %2853, %2843
  %2855 = lshr i32 %2854, 4
  %2856 = trunc i32 %2855 to i8
  %2857 = and i8 %2856, 1
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2857, i8* %2858, align 1
  %2859 = icmp eq i32 %2843, 0
  %2860 = zext i1 %2859 to i8
  %2861 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2860, i8* %2861, align 1
  %2862 = lshr i32 %2843, 31
  %2863 = trunc i32 %2862 to i8
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2863, i8* %2864, align 1
  %2865 = lshr i32 %2842, 31
  %2866 = xor i32 %2862, %2865
  %2867 = add i32 %2866, %2865
  %2868 = icmp eq i32 %2867, 2
  %2869 = zext i1 %2868 to i8
  %2870 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2869, i8* %2870, align 1
  store %struct.Memory* %loadMem_40b4c0, %struct.Memory** %MEMORY
  %loadMem_40b4c4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2872 = getelementptr inbounds %struct.GPR, %struct.GPR* %2871, i32 0, i32 33
  %2873 = getelementptr inbounds %struct.Reg, %struct.Reg* %2872, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %2873 to i64*
  %2874 = load i64, i64* %PC.i219
  %2875 = add i64 %2874, 18
  %2876 = load i64, i64* %PC.i219
  %2877 = add i64 %2876, 6
  %2878 = load i64, i64* %PC.i219
  %2879 = add i64 %2878, 6
  store i64 %2879, i64* %PC.i219
  %2880 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2881 = load i8, i8* %2880, align 1
  %2882 = icmp eq i8 %2881, 0
  %2883 = zext i1 %2882 to i8
  store i8 %2883, i8* %BRANCH_TAKEN, align 1
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2885 = select i1 %2882, i64 %2875, i64 %2877
  store i64 %2885, i64* %2884, align 8
  store %struct.Memory* %loadMem_40b4c4, %struct.Memory** %MEMORY
  %loadBr_40b4c4 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4c4 = icmp eq i8 %loadBr_40b4c4, 1
  br i1 %cmpBr_40b4c4, label %block_.L_40b4d6, label %block_.L_40b4ca

block_.L_40b4ca:                                  ; preds = %block_40b4c0, %block_.L_40b49f
  %loadMem_40b4ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %2886 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2887 = getelementptr inbounds %struct.GPR, %struct.GPR* %2886, i32 0, i32 33
  %2888 = getelementptr inbounds %struct.Reg, %struct.Reg* %2887, i32 0, i32 0
  %PC.i217 = bitcast %union.anon* %2888 to i64*
  %2889 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2890 = getelementptr inbounds %struct.GPR, %struct.GPR* %2889, i32 0, i32 15
  %2891 = getelementptr inbounds %struct.Reg, %struct.Reg* %2890, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %2891 to i64*
  %2892 = load i64, i64* %RBP.i218
  %2893 = sub i64 %2892, 4
  %2894 = load i64, i64* %PC.i217
  %2895 = add i64 %2894, 7
  store i64 %2895, i64* %PC.i217
  %2896 = inttoptr i64 %2893 to i32*
  store i32 2, i32* %2896
  store %struct.Memory* %loadMem_40b4ca, %struct.Memory** %MEMORY
  %loadMem_40b4d1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2898 = getelementptr inbounds %struct.GPR, %struct.GPR* %2897, i32 0, i32 33
  %2899 = getelementptr inbounds %struct.Reg, %struct.Reg* %2898, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %2899 to i64*
  %2900 = load i64, i64* %PC.i216
  %2901 = add i64 %2900, 583
  %2902 = load i64, i64* %PC.i216
  %2903 = add i64 %2902, 5
  store i64 %2903, i64* %PC.i216
  %2904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2901, i64* %2904, align 8
  store %struct.Memory* %loadMem_40b4d1, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b4d6:                                  ; preds = %block_40b4c0
  %loadMem_40b4d6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2905 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2906 = getelementptr inbounds %struct.GPR, %struct.GPR* %2905, i32 0, i32 33
  %2907 = getelementptr inbounds %struct.Reg, %struct.Reg* %2906, i32 0, i32 0
  %PC.i214 = bitcast %union.anon* %2907 to i64*
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 1
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %RAX.i215 = bitcast %union.anon* %2910 to i64*
  %2911 = load i64, i64* %PC.i214
  %2912 = add i64 %2911, 7
  store i64 %2912, i64* %PC.i214
  %2913 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %2914 = zext i32 %2913 to i64
  store i64 %2914, i64* %RAX.i215, align 8
  store %struct.Memory* %loadMem_40b4d6, %struct.Memory** %MEMORY
  %loadMem_40b4dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2915 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2916 = getelementptr inbounds %struct.GPR, %struct.GPR* %2915, i32 0, i32 33
  %2917 = getelementptr inbounds %struct.Reg, %struct.Reg* %2916, i32 0, i32 0
  %PC.i212 = bitcast %union.anon* %2917 to i64*
  %2918 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2919 = getelementptr inbounds %struct.GPR, %struct.GPR* %2918, i32 0, i32 1
  %2920 = getelementptr inbounds %struct.Reg, %struct.Reg* %2919, i32 0, i32 0
  %RAX.i213 = bitcast %union.anon* %2920 to i64*
  %2921 = load i64, i64* %RAX.i213
  %2922 = load i64, i64* %PC.i212
  %2923 = add i64 %2922, 3
  store i64 %2923, i64* %PC.i212
  %2924 = trunc i64 %2921 to i32
  %2925 = sub i32 %2924, 1
  %2926 = zext i32 %2925 to i64
  store i64 %2926, i64* %RAX.i213, align 8
  %2927 = icmp ult i32 %2924, 1
  %2928 = zext i1 %2927 to i8
  %2929 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2928, i8* %2929, align 1
  %2930 = and i32 %2925, 255
  %2931 = call i32 @llvm.ctpop.i32(i32 %2930)
  %2932 = trunc i32 %2931 to i8
  %2933 = and i8 %2932, 1
  %2934 = xor i8 %2933, 1
  %2935 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2934, i8* %2935, align 1
  %2936 = xor i64 1, %2921
  %2937 = trunc i64 %2936 to i32
  %2938 = xor i32 %2937, %2925
  %2939 = lshr i32 %2938, 4
  %2940 = trunc i32 %2939 to i8
  %2941 = and i8 %2940, 1
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2941, i8* %2942, align 1
  %2943 = icmp eq i32 %2925, 0
  %2944 = zext i1 %2943 to i8
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2944, i8* %2945, align 1
  %2946 = lshr i32 %2925, 31
  %2947 = trunc i32 %2946 to i8
  %2948 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2947, i8* %2948, align 1
  %2949 = lshr i32 %2924, 31
  %2950 = xor i32 %2946, %2949
  %2951 = add i32 %2950, %2949
  %2952 = icmp eq i32 %2951, 2
  %2953 = zext i1 %2952 to i8
  %2954 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2953, i8* %2954, align 1
  store %struct.Memory* %loadMem_40b4dd, %struct.Memory** %MEMORY
  %loadMem_40b4e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2956 = getelementptr inbounds %struct.GPR, %struct.GPR* %2955, i32 0, i32 33
  %2957 = getelementptr inbounds %struct.Reg, %struct.Reg* %2956, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %2957 to i64*
  %2958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2959 = getelementptr inbounds %struct.GPR, %struct.GPR* %2958, i32 0, i32 1
  %2960 = getelementptr inbounds %struct.Reg, %struct.Reg* %2959, i32 0, i32 0
  %EAX.i210 = bitcast %union.anon* %2960 to i32*
  %2961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2962 = getelementptr inbounds %struct.GPR, %struct.GPR* %2961, i32 0, i32 5
  %2963 = getelementptr inbounds %struct.Reg, %struct.Reg* %2962, i32 0, i32 0
  %RCX.i211 = bitcast %union.anon* %2963 to i64*
  %2964 = load i32, i32* %EAX.i210
  %2965 = zext i32 %2964 to i64
  %2966 = load i64, i64* %PC.i209
  %2967 = add i64 %2966, 3
  store i64 %2967, i64* %PC.i209
  %2968 = shl i64 %2965, 32
  %2969 = ashr exact i64 %2968, 32
  store i64 %2969, i64* %RCX.i211, align 8
  store %struct.Memory* %loadMem_40b4e0, %struct.Memory** %MEMORY
  %loadMem_40b4e3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2970 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2971 = getelementptr inbounds %struct.GPR, %struct.GPR* %2970, i32 0, i32 33
  %2972 = getelementptr inbounds %struct.Reg, %struct.Reg* %2971, i32 0, i32 0
  %PC.i206 = bitcast %union.anon* %2972 to i64*
  %2973 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2974 = getelementptr inbounds %struct.GPR, %struct.GPR* %2973, i32 0, i32 1
  %2975 = getelementptr inbounds %struct.Reg, %struct.Reg* %2974, i32 0, i32 0
  %RAX.i207 = bitcast %union.anon* %2975 to i64*
  %2976 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2977 = getelementptr inbounds %struct.GPR, %struct.GPR* %2976, i32 0, i32 5
  %2978 = getelementptr inbounds %struct.Reg, %struct.Reg* %2977, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %2978 to i64*
  %2979 = load i64, i64* %RCX.i208
  %2980 = mul i64 %2979, 4
  %2981 = add i64 %2980, 8807744
  %2982 = load i64, i64* %PC.i206
  %2983 = add i64 %2982, 7
  store i64 %2983, i64* %PC.i206
  %2984 = inttoptr i64 %2981 to i32*
  %2985 = load i32, i32* %2984
  %2986 = zext i32 %2985 to i64
  store i64 %2986, i64* %RAX.i207, align 8
  store %struct.Memory* %loadMem_40b4e3, %struct.Memory** %MEMORY
  %loadMem_40b4ea = load %struct.Memory*, %struct.Memory** %MEMORY
  %2987 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2988 = getelementptr inbounds %struct.GPR, %struct.GPR* %2987, i32 0, i32 33
  %2989 = getelementptr inbounds %struct.Reg, %struct.Reg* %2988, i32 0, i32 0
  %PC.i203 = bitcast %union.anon* %2989 to i64*
  %2990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2991 = getelementptr inbounds %struct.GPR, %struct.GPR* %2990, i32 0, i32 1
  %2992 = getelementptr inbounds %struct.Reg, %struct.Reg* %2991, i32 0, i32 0
  %EAX.i204 = bitcast %union.anon* %2992 to i32*
  %2993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2994 = getelementptr inbounds %struct.GPR, %struct.GPR* %2993, i32 0, i32 15
  %2995 = getelementptr inbounds %struct.Reg, %struct.Reg* %2994, i32 0, i32 0
  %RBP.i205 = bitcast %union.anon* %2995 to i64*
  %2996 = load i64, i64* %RBP.i205
  %2997 = sub i64 %2996, 8
  %2998 = load i32, i32* %EAX.i204
  %2999 = zext i32 %2998 to i64
  %3000 = load i64, i64* %PC.i203
  %3001 = add i64 %3000, 3
  store i64 %3001, i64* %PC.i203
  %3002 = inttoptr i64 %2997 to i32*
  store i32 %2998, i32* %3002
  store %struct.Memory* %loadMem_40b4ea, %struct.Memory** %MEMORY
  %loadMem_40b4ed = load %struct.Memory*, %struct.Memory** %MEMORY
  %3003 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3004 = getelementptr inbounds %struct.GPR, %struct.GPR* %3003, i32 0, i32 33
  %3005 = getelementptr inbounds %struct.Reg, %struct.Reg* %3004, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %3005 to i64*
  %3006 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3007 = getelementptr inbounds %struct.GPR, %struct.GPR* %3006, i32 0, i32 15
  %3008 = getelementptr inbounds %struct.Reg, %struct.Reg* %3007, i32 0, i32 0
  %RBP.i202 = bitcast %union.anon* %3008 to i64*
  %3009 = load i64, i64* %RBP.i202
  %3010 = sub i64 %3009, 8
  %3011 = load i64, i64* %PC.i201
  %3012 = add i64 %3011, 4
  store i64 %3012, i64* %PC.i201
  %3013 = inttoptr i64 %3010 to i32*
  %3014 = load i32, i32* %3013
  %3015 = sub i32 %3014, 7
  %3016 = icmp ult i32 %3014, 7
  %3017 = zext i1 %3016 to i8
  %3018 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3017, i8* %3018, align 1
  %3019 = and i32 %3015, 255
  %3020 = call i32 @llvm.ctpop.i32(i32 %3019)
  %3021 = trunc i32 %3020 to i8
  %3022 = and i8 %3021, 1
  %3023 = xor i8 %3022, 1
  %3024 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3023, i8* %3024, align 1
  %3025 = xor i32 %3014, 7
  %3026 = xor i32 %3025, %3015
  %3027 = lshr i32 %3026, 4
  %3028 = trunc i32 %3027 to i8
  %3029 = and i8 %3028, 1
  %3030 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3029, i8* %3030, align 1
  %3031 = icmp eq i32 %3015, 0
  %3032 = zext i1 %3031 to i8
  %3033 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3032, i8* %3033, align 1
  %3034 = lshr i32 %3015, 31
  %3035 = trunc i32 %3034 to i8
  %3036 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3035, i8* %3036, align 1
  %3037 = lshr i32 %3014, 31
  %3038 = xor i32 %3034, %3037
  %3039 = add i32 %3038, %3037
  %3040 = icmp eq i32 %3039, 2
  %3041 = zext i1 %3040 to i8
  %3042 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3041, i8* %3042, align 1
  store %struct.Memory* %loadMem_40b4ed, %struct.Memory** %MEMORY
  %loadMem_40b4f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3044 = getelementptr inbounds %struct.GPR, %struct.GPR* %3043, i32 0, i32 33
  %3045 = getelementptr inbounds %struct.Reg, %struct.Reg* %3044, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %3045 to i64*
  %3046 = load i64, i64* %PC.i200
  %3047 = add i64 %3046, 16
  %3048 = load i64, i64* %PC.i200
  %3049 = add i64 %3048, 6
  %3050 = load i64, i64* %PC.i200
  %3051 = add i64 %3050, 6
  store i64 %3051, i64* %PC.i200
  %3052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3053 = load i8, i8* %3052, align 1
  store i8 %3053, i8* %BRANCH_TAKEN, align 1
  %3054 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3055 = icmp ne i8 %3053, 0
  %3056 = select i1 %3055, i64 %3047, i64 %3049
  store i64 %3056, i64* %3054, align 8
  store %struct.Memory* %loadMem_40b4f1, %struct.Memory** %MEMORY
  %loadBr_40b4f1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4f1 = icmp eq i8 %loadBr_40b4f1, 1
  br i1 %cmpBr_40b4f1, label %block_.L_40b501, label %block_40b4f7

block_40b4f7:                                     ; preds = %block_.L_40b4d6
  %loadMem_40b4f7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3057 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3058 = getelementptr inbounds %struct.GPR, %struct.GPR* %3057, i32 0, i32 33
  %3059 = getelementptr inbounds %struct.Reg, %struct.Reg* %3058, i32 0, i32 0
  %PC.i198 = bitcast %union.anon* %3059 to i64*
  %3060 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3061 = getelementptr inbounds %struct.GPR, %struct.GPR* %3060, i32 0, i32 15
  %3062 = getelementptr inbounds %struct.Reg, %struct.Reg* %3061, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %3062 to i64*
  %3063 = load i64, i64* %RBP.i199
  %3064 = sub i64 %3063, 8
  %3065 = load i64, i64* %PC.i198
  %3066 = add i64 %3065, 4
  store i64 %3066, i64* %PC.i198
  %3067 = inttoptr i64 %3064 to i32*
  %3068 = load i32, i32* %3067
  %3069 = sub i32 %3068, 9
  %3070 = icmp ult i32 %3068, 9
  %3071 = zext i1 %3070 to i8
  %3072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3071, i8* %3072, align 1
  %3073 = and i32 %3069, 255
  %3074 = call i32 @llvm.ctpop.i32(i32 %3073)
  %3075 = trunc i32 %3074 to i8
  %3076 = and i8 %3075, 1
  %3077 = xor i8 %3076, 1
  %3078 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3077, i8* %3078, align 1
  %3079 = xor i32 %3068, 9
  %3080 = xor i32 %3079, %3069
  %3081 = lshr i32 %3080, 4
  %3082 = trunc i32 %3081 to i8
  %3083 = and i8 %3082, 1
  %3084 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3083, i8* %3084, align 1
  %3085 = icmp eq i32 %3069, 0
  %3086 = zext i1 %3085 to i8
  %3087 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3086, i8* %3087, align 1
  %3088 = lshr i32 %3069, 31
  %3089 = trunc i32 %3088 to i8
  %3090 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3089, i8* %3090, align 1
  %3091 = lshr i32 %3068, 31
  %3092 = xor i32 %3088, %3091
  %3093 = add i32 %3092, %3091
  %3094 = icmp eq i32 %3093, 2
  %3095 = zext i1 %3094 to i8
  %3096 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3095, i8* %3096, align 1
  store %struct.Memory* %loadMem_40b4f7, %struct.Memory** %MEMORY
  %loadMem_40b4fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %3097 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3098 = getelementptr inbounds %struct.GPR, %struct.GPR* %3097, i32 0, i32 33
  %3099 = getelementptr inbounds %struct.Reg, %struct.Reg* %3098, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %3099 to i64*
  %3100 = load i64, i64* %PC.i197
  %3101 = add i64 %3100, 18
  %3102 = load i64, i64* %PC.i197
  %3103 = add i64 %3102, 6
  %3104 = load i64, i64* %PC.i197
  %3105 = add i64 %3104, 6
  store i64 %3105, i64* %PC.i197
  %3106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3107 = load i8, i8* %3106, align 1
  %3108 = icmp eq i8 %3107, 0
  %3109 = zext i1 %3108 to i8
  store i8 %3109, i8* %BRANCH_TAKEN, align 1
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3111 = select i1 %3108, i64 %3101, i64 %3103
  store i64 %3111, i64* %3110, align 8
  store %struct.Memory* %loadMem_40b4fb, %struct.Memory** %MEMORY
  %loadBr_40b4fb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b4fb = icmp eq i8 %loadBr_40b4fb, 1
  br i1 %cmpBr_40b4fb, label %block_.L_40b50d, label %block_.L_40b501

block_.L_40b501:                                  ; preds = %block_40b4f7, %block_.L_40b4d6
  %loadMem_40b501 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3113 = getelementptr inbounds %struct.GPR, %struct.GPR* %3112, i32 0, i32 33
  %3114 = getelementptr inbounds %struct.Reg, %struct.Reg* %3113, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %3114 to i64*
  %3115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3116 = getelementptr inbounds %struct.GPR, %struct.GPR* %3115, i32 0, i32 15
  %3117 = getelementptr inbounds %struct.Reg, %struct.Reg* %3116, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %3117 to i64*
  %3118 = load i64, i64* %RBP.i196
  %3119 = sub i64 %3118, 4
  %3120 = load i64, i64* %PC.i195
  %3121 = add i64 %3120, 7
  store i64 %3121, i64* %PC.i195
  %3122 = inttoptr i64 %3119 to i32*
  store i32 2, i32* %3122
  store %struct.Memory* %loadMem_40b501, %struct.Memory** %MEMORY
  %loadMem_40b508 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3124 = getelementptr inbounds %struct.GPR, %struct.GPR* %3123, i32 0, i32 33
  %3125 = getelementptr inbounds %struct.Reg, %struct.Reg* %3124, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %3125 to i64*
  %3126 = load i64, i64* %PC.i194
  %3127 = add i64 %3126, 528
  %3128 = load i64, i64* %PC.i194
  %3129 = add i64 %3128, 5
  store i64 %3129, i64* %PC.i194
  %3130 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3127, i64* %3130, align 8
  store %struct.Memory* %loadMem_40b508, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b50d:                                  ; preds = %block_40b4f7
  %loadMem_40b50d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3132 = getelementptr inbounds %struct.GPR, %struct.GPR* %3131, i32 0, i32 33
  %3133 = getelementptr inbounds %struct.Reg, %struct.Reg* %3132, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %3133 to i64*
  %3134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3135 = getelementptr inbounds %struct.GPR, %struct.GPR* %3134, i32 0, i32 1
  %3136 = getelementptr inbounds %struct.Reg, %struct.Reg* %3135, i32 0, i32 0
  %RAX.i193 = bitcast %union.anon* %3136 to i64*
  %3137 = load i64, i64* %PC.i192
  %3138 = add i64 %3137, 7
  store i64 %3138, i64* %PC.i192
  %3139 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %3140 = zext i32 %3139 to i64
  store i64 %3140, i64* %RAX.i193, align 8
  store %struct.Memory* %loadMem_40b50d, %struct.Memory** %MEMORY
  %loadMem_40b514 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 33
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 1
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RAX.i191 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %RAX.i191
  %3148 = load i64, i64* %PC.i190
  %3149 = add i64 %3148, 3
  store i64 %3149, i64* %PC.i190
  %3150 = trunc i64 %3147 to i32
  %3151 = add i32 1, %3150
  %3152 = zext i32 %3151 to i64
  store i64 %3152, i64* %RAX.i191, align 8
  %3153 = icmp ult i32 %3151, %3150
  %3154 = icmp ult i32 %3151, 1
  %3155 = or i1 %3153, %3154
  %3156 = zext i1 %3155 to i8
  %3157 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3156, i8* %3157, align 1
  %3158 = and i32 %3151, 255
  %3159 = call i32 @llvm.ctpop.i32(i32 %3158)
  %3160 = trunc i32 %3159 to i8
  %3161 = and i8 %3160, 1
  %3162 = xor i8 %3161, 1
  %3163 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3162, i8* %3163, align 1
  %3164 = xor i64 1, %3147
  %3165 = trunc i64 %3164 to i32
  %3166 = xor i32 %3165, %3151
  %3167 = lshr i32 %3166, 4
  %3168 = trunc i32 %3167 to i8
  %3169 = and i8 %3168, 1
  %3170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3169, i8* %3170, align 1
  %3171 = icmp eq i32 %3151, 0
  %3172 = zext i1 %3171 to i8
  %3173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3172, i8* %3173, align 1
  %3174 = lshr i32 %3151, 31
  %3175 = trunc i32 %3174 to i8
  %3176 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3175, i8* %3176, align 1
  %3177 = lshr i32 %3150, 31
  %3178 = xor i32 %3174, %3177
  %3179 = add i32 %3178, %3174
  %3180 = icmp eq i32 %3179, 2
  %3181 = zext i1 %3180 to i8
  %3182 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3181, i8* %3182, align 1
  store %struct.Memory* %loadMem_40b514, %struct.Memory** %MEMORY
  %loadMem_40b517 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3184 = getelementptr inbounds %struct.GPR, %struct.GPR* %3183, i32 0, i32 33
  %3185 = getelementptr inbounds %struct.Reg, %struct.Reg* %3184, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %3185 to i64*
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 1
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %EAX.i188 = bitcast %union.anon* %3188 to i32*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 5
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %3191 to i64*
  %3192 = load i32, i32* %EAX.i188
  %3193 = zext i32 %3192 to i64
  %3194 = load i64, i64* %PC.i187
  %3195 = add i64 %3194, 3
  store i64 %3195, i64* %PC.i187
  %3196 = shl i64 %3193, 32
  %3197 = ashr exact i64 %3196, 32
  store i64 %3197, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_40b517, %struct.Memory** %MEMORY
  %loadMem_40b51a = load %struct.Memory*, %struct.Memory** %MEMORY
  %3198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3199 = getelementptr inbounds %struct.GPR, %struct.GPR* %3198, i32 0, i32 33
  %3200 = getelementptr inbounds %struct.Reg, %struct.Reg* %3199, i32 0, i32 0
  %PC.i184 = bitcast %union.anon* %3200 to i64*
  %3201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3202 = getelementptr inbounds %struct.GPR, %struct.GPR* %3201, i32 0, i32 1
  %3203 = getelementptr inbounds %struct.Reg, %struct.Reg* %3202, i32 0, i32 0
  %RAX.i185 = bitcast %union.anon* %3203 to i64*
  %3204 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3205 = getelementptr inbounds %struct.GPR, %struct.GPR* %3204, i32 0, i32 5
  %3206 = getelementptr inbounds %struct.Reg, %struct.Reg* %3205, i32 0, i32 0
  %RCX.i186 = bitcast %union.anon* %3206 to i64*
  %3207 = load i64, i64* %RCX.i186
  %3208 = mul i64 %3207, 4
  %3209 = add i64 %3208, 8807744
  %3210 = load i64, i64* %PC.i184
  %3211 = add i64 %3210, 7
  store i64 %3211, i64* %PC.i184
  %3212 = inttoptr i64 %3209 to i32*
  %3213 = load i32, i32* %3212
  %3214 = zext i32 %3213 to i64
  store i64 %3214, i64* %RAX.i185, align 8
  store %struct.Memory* %loadMem_40b51a, %struct.Memory** %MEMORY
  %loadMem_40b521 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3215 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3216 = getelementptr inbounds %struct.GPR, %struct.GPR* %3215, i32 0, i32 33
  %3217 = getelementptr inbounds %struct.Reg, %struct.Reg* %3216, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %3217 to i64*
  %3218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3219 = getelementptr inbounds %struct.GPR, %struct.GPR* %3218, i32 0, i32 1
  %3220 = getelementptr inbounds %struct.Reg, %struct.Reg* %3219, i32 0, i32 0
  %EAX.i182 = bitcast %union.anon* %3220 to i32*
  %3221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3222 = getelementptr inbounds %struct.GPR, %struct.GPR* %3221, i32 0, i32 15
  %3223 = getelementptr inbounds %struct.Reg, %struct.Reg* %3222, i32 0, i32 0
  %RBP.i183 = bitcast %union.anon* %3223 to i64*
  %3224 = load i64, i64* %RBP.i183
  %3225 = sub i64 %3224, 8
  %3226 = load i32, i32* %EAX.i182
  %3227 = zext i32 %3226 to i64
  %3228 = load i64, i64* %PC.i181
  %3229 = add i64 %3228, 3
  store i64 %3229, i64* %PC.i181
  %3230 = inttoptr i64 %3225 to i32*
  store i32 %3226, i32* %3230
  store %struct.Memory* %loadMem_40b521, %struct.Memory** %MEMORY
  %loadMem_40b524 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i179 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 15
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RBP.i180 = bitcast %union.anon* %3236 to i64*
  %3237 = load i64, i64* %RBP.i180
  %3238 = sub i64 %3237, 8
  %3239 = load i64, i64* %PC.i179
  %3240 = add i64 %3239, 4
  store i64 %3240, i64* %PC.i179
  %3241 = inttoptr i64 %3238 to i32*
  %3242 = load i32, i32* %3241
  %3243 = sub i32 %3242, 7
  %3244 = icmp ult i32 %3242, 7
  %3245 = zext i1 %3244 to i8
  %3246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3245, i8* %3246, align 1
  %3247 = and i32 %3243, 255
  %3248 = call i32 @llvm.ctpop.i32(i32 %3247)
  %3249 = trunc i32 %3248 to i8
  %3250 = and i8 %3249, 1
  %3251 = xor i8 %3250, 1
  %3252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3251, i8* %3252, align 1
  %3253 = xor i32 %3242, 7
  %3254 = xor i32 %3253, %3243
  %3255 = lshr i32 %3254, 4
  %3256 = trunc i32 %3255 to i8
  %3257 = and i8 %3256, 1
  %3258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3257, i8* %3258, align 1
  %3259 = icmp eq i32 %3243, 0
  %3260 = zext i1 %3259 to i8
  %3261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3260, i8* %3261, align 1
  %3262 = lshr i32 %3243, 31
  %3263 = trunc i32 %3262 to i8
  %3264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3263, i8* %3264, align 1
  %3265 = lshr i32 %3242, 31
  %3266 = xor i32 %3262, %3265
  %3267 = add i32 %3266, %3265
  %3268 = icmp eq i32 %3267, 2
  %3269 = zext i1 %3268 to i8
  %3270 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3269, i8* %3270, align 1
  store %struct.Memory* %loadMem_40b524, %struct.Memory** %MEMORY
  %loadMem_40b528 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3272 = getelementptr inbounds %struct.GPR, %struct.GPR* %3271, i32 0, i32 33
  %3273 = getelementptr inbounds %struct.Reg, %struct.Reg* %3272, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %3273 to i64*
  %3274 = load i64, i64* %PC.i178
  %3275 = add i64 %3274, 16
  %3276 = load i64, i64* %PC.i178
  %3277 = add i64 %3276, 6
  %3278 = load i64, i64* %PC.i178
  %3279 = add i64 %3278, 6
  store i64 %3279, i64* %PC.i178
  %3280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3281 = load i8, i8* %3280, align 1
  store i8 %3281, i8* %BRANCH_TAKEN, align 1
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3283 = icmp ne i8 %3281, 0
  %3284 = select i1 %3283, i64 %3275, i64 %3277
  store i64 %3284, i64* %3282, align 8
  store %struct.Memory* %loadMem_40b528, %struct.Memory** %MEMORY
  %loadBr_40b528 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b528 = icmp eq i8 %loadBr_40b528, 1
  br i1 %cmpBr_40b528, label %block_.L_40b538, label %block_40b52e

block_40b52e:                                     ; preds = %block_.L_40b50d
  %loadMem_40b52e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3286 = getelementptr inbounds %struct.GPR, %struct.GPR* %3285, i32 0, i32 33
  %3287 = getelementptr inbounds %struct.Reg, %struct.Reg* %3286, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %3287 to i64*
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3289 = getelementptr inbounds %struct.GPR, %struct.GPR* %3288, i32 0, i32 15
  %3290 = getelementptr inbounds %struct.Reg, %struct.Reg* %3289, i32 0, i32 0
  %RBP.i177 = bitcast %union.anon* %3290 to i64*
  %3291 = load i64, i64* %RBP.i177
  %3292 = sub i64 %3291, 8
  %3293 = load i64, i64* %PC.i176
  %3294 = add i64 %3293, 4
  store i64 %3294, i64* %PC.i176
  %3295 = inttoptr i64 %3292 to i32*
  %3296 = load i32, i32* %3295
  %3297 = sub i32 %3296, 9
  %3298 = icmp ult i32 %3296, 9
  %3299 = zext i1 %3298 to i8
  %3300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3299, i8* %3300, align 1
  %3301 = and i32 %3297, 255
  %3302 = call i32 @llvm.ctpop.i32(i32 %3301)
  %3303 = trunc i32 %3302 to i8
  %3304 = and i8 %3303, 1
  %3305 = xor i8 %3304, 1
  %3306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3305, i8* %3306, align 1
  %3307 = xor i32 %3296, 9
  %3308 = xor i32 %3307, %3297
  %3309 = lshr i32 %3308, 4
  %3310 = trunc i32 %3309 to i8
  %3311 = and i8 %3310, 1
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3311, i8* %3312, align 1
  %3313 = icmp eq i32 %3297, 0
  %3314 = zext i1 %3313 to i8
  %3315 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3314, i8* %3315, align 1
  %3316 = lshr i32 %3297, 31
  %3317 = trunc i32 %3316 to i8
  %3318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3317, i8* %3318, align 1
  %3319 = lshr i32 %3296, 31
  %3320 = xor i32 %3316, %3319
  %3321 = add i32 %3320, %3319
  %3322 = icmp eq i32 %3321, 2
  %3323 = zext i1 %3322 to i8
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3323, i8* %3324, align 1
  store %struct.Memory* %loadMem_40b52e, %struct.Memory** %MEMORY
  %loadMem_40b532 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3325 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3326 = getelementptr inbounds %struct.GPR, %struct.GPR* %3325, i32 0, i32 33
  %3327 = getelementptr inbounds %struct.Reg, %struct.Reg* %3326, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %3327 to i64*
  %3328 = load i64, i64* %PC.i175
  %3329 = add i64 %3328, 18
  %3330 = load i64, i64* %PC.i175
  %3331 = add i64 %3330, 6
  %3332 = load i64, i64* %PC.i175
  %3333 = add i64 %3332, 6
  store i64 %3333, i64* %PC.i175
  %3334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3335 = load i8, i8* %3334, align 1
  %3336 = icmp eq i8 %3335, 0
  %3337 = zext i1 %3336 to i8
  store i8 %3337, i8* %BRANCH_TAKEN, align 1
  %3338 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3339 = select i1 %3336, i64 %3329, i64 %3331
  store i64 %3339, i64* %3338, align 8
  store %struct.Memory* %loadMem_40b532, %struct.Memory** %MEMORY
  %loadBr_40b532 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b532 = icmp eq i8 %loadBr_40b532, 1
  br i1 %cmpBr_40b532, label %block_.L_40b544, label %block_.L_40b538

block_.L_40b538:                                  ; preds = %block_40b52e, %block_.L_40b50d
  %loadMem_40b538 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 33
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %3342 to i64*
  %3343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3344 = getelementptr inbounds %struct.GPR, %struct.GPR* %3343, i32 0, i32 15
  %3345 = getelementptr inbounds %struct.Reg, %struct.Reg* %3344, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %3345 to i64*
  %3346 = load i64, i64* %RBP.i174
  %3347 = sub i64 %3346, 4
  %3348 = load i64, i64* %PC.i173
  %3349 = add i64 %3348, 7
  store i64 %3349, i64* %PC.i173
  %3350 = inttoptr i64 %3347 to i32*
  store i32 2, i32* %3350
  store %struct.Memory* %loadMem_40b538, %struct.Memory** %MEMORY
  %loadMem_40b53f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3352 = getelementptr inbounds %struct.GPR, %struct.GPR* %3351, i32 0, i32 33
  %3353 = getelementptr inbounds %struct.Reg, %struct.Reg* %3352, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %3353 to i64*
  %3354 = load i64, i64* %PC.i172
  %3355 = add i64 %3354, 473
  %3356 = load i64, i64* %PC.i172
  %3357 = add i64 %3356, 5
  store i64 %3357, i64* %PC.i172
  %3358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3355, i64* %3358, align 8
  store %struct.Memory* %loadMem_40b53f, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b544:                                  ; preds = %block_40b52e
  %loadMem_40b544 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3360 = getelementptr inbounds %struct.GPR, %struct.GPR* %3359, i32 0, i32 33
  %3361 = getelementptr inbounds %struct.Reg, %struct.Reg* %3360, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %3361 to i64*
  %3362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3363 = getelementptr inbounds %struct.GPR, %struct.GPR* %3362, i32 0, i32 1
  %3364 = getelementptr inbounds %struct.Reg, %struct.Reg* %3363, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %3364 to i64*
  %3365 = load i64, i64* %PC.i170
  %3366 = add i64 %3365, 7
  store i64 %3366, i64* %PC.i170
  %3367 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %3368 = zext i32 %3367 to i64
  store i64 %3368, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_40b544, %struct.Memory** %MEMORY
  %loadMem_40b54b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3370 = getelementptr inbounds %struct.GPR, %struct.GPR* %3369, i32 0, i32 33
  %3371 = getelementptr inbounds %struct.Reg, %struct.Reg* %3370, i32 0, i32 0
  %PC.i168 = bitcast %union.anon* %3371 to i64*
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3373 = getelementptr inbounds %struct.GPR, %struct.GPR* %3372, i32 0, i32 1
  %3374 = getelementptr inbounds %struct.Reg, %struct.Reg* %3373, i32 0, i32 0
  %RAX.i169 = bitcast %union.anon* %3374 to i64*
  %3375 = load i64, i64* %RAX.i169
  %3376 = load i64, i64* %PC.i168
  %3377 = add i64 %3376, 3
  store i64 %3377, i64* %PC.i168
  %3378 = trunc i64 %3375 to i32
  %3379 = add i32 12, %3378
  %3380 = zext i32 %3379 to i64
  store i64 %3380, i64* %RAX.i169, align 8
  %3381 = icmp ult i32 %3379, %3378
  %3382 = icmp ult i32 %3379, 12
  %3383 = or i1 %3381, %3382
  %3384 = zext i1 %3383 to i8
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3384, i8* %3385, align 1
  %3386 = and i32 %3379, 255
  %3387 = call i32 @llvm.ctpop.i32(i32 %3386)
  %3388 = trunc i32 %3387 to i8
  %3389 = and i8 %3388, 1
  %3390 = xor i8 %3389, 1
  %3391 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3390, i8* %3391, align 1
  %3392 = xor i64 12, %3375
  %3393 = trunc i64 %3392 to i32
  %3394 = xor i32 %3393, %3379
  %3395 = lshr i32 %3394, 4
  %3396 = trunc i32 %3395 to i8
  %3397 = and i8 %3396, 1
  %3398 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3397, i8* %3398, align 1
  %3399 = icmp eq i32 %3379, 0
  %3400 = zext i1 %3399 to i8
  %3401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3400, i8* %3401, align 1
  %3402 = lshr i32 %3379, 31
  %3403 = trunc i32 %3402 to i8
  %3404 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3403, i8* %3404, align 1
  %3405 = lshr i32 %3378, 31
  %3406 = xor i32 %3402, %3405
  %3407 = add i32 %3406, %3402
  %3408 = icmp eq i32 %3407, 2
  %3409 = zext i1 %3408 to i8
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3409, i8* %3410, align 1
  store %struct.Memory* %loadMem_40b54b, %struct.Memory** %MEMORY
  %loadMem_40b54e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 33
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %PC.i165 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 1
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %EAX.i166 = bitcast %union.anon* %3416 to i32*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 5
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RCX.i167 = bitcast %union.anon* %3419 to i64*
  %3420 = load i32, i32* %EAX.i166
  %3421 = zext i32 %3420 to i64
  %3422 = load i64, i64* %PC.i165
  %3423 = add i64 %3422, 3
  store i64 %3423, i64* %PC.i165
  %3424 = shl i64 %3421, 32
  %3425 = ashr exact i64 %3424, 32
  store i64 %3425, i64* %RCX.i167, align 8
  store %struct.Memory* %loadMem_40b54e, %struct.Memory** %MEMORY
  %loadMem_40b551 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3426 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3427 = getelementptr inbounds %struct.GPR, %struct.GPR* %3426, i32 0, i32 33
  %3428 = getelementptr inbounds %struct.Reg, %struct.Reg* %3427, i32 0, i32 0
  %PC.i162 = bitcast %union.anon* %3428 to i64*
  %3429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3430 = getelementptr inbounds %struct.GPR, %struct.GPR* %3429, i32 0, i32 1
  %3431 = getelementptr inbounds %struct.Reg, %struct.Reg* %3430, i32 0, i32 0
  %RAX.i163 = bitcast %union.anon* %3431 to i64*
  %3432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3433 = getelementptr inbounds %struct.GPR, %struct.GPR* %3432, i32 0, i32 5
  %3434 = getelementptr inbounds %struct.Reg, %struct.Reg* %3433, i32 0, i32 0
  %RCX.i164 = bitcast %union.anon* %3434 to i64*
  %3435 = load i64, i64* %RCX.i164
  %3436 = mul i64 %3435, 4
  %3437 = add i64 %3436, 8807744
  %3438 = load i64, i64* %PC.i162
  %3439 = add i64 %3438, 7
  store i64 %3439, i64* %PC.i162
  %3440 = inttoptr i64 %3437 to i32*
  %3441 = load i32, i32* %3440
  %3442 = zext i32 %3441 to i64
  store i64 %3442, i64* %RAX.i163, align 8
  store %struct.Memory* %loadMem_40b551, %struct.Memory** %MEMORY
  %loadMem_40b558 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3444 = getelementptr inbounds %struct.GPR, %struct.GPR* %3443, i32 0, i32 33
  %3445 = getelementptr inbounds %struct.Reg, %struct.Reg* %3444, i32 0, i32 0
  %PC.i159 = bitcast %union.anon* %3445 to i64*
  %3446 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3447 = getelementptr inbounds %struct.GPR, %struct.GPR* %3446, i32 0, i32 1
  %3448 = getelementptr inbounds %struct.Reg, %struct.Reg* %3447, i32 0, i32 0
  %EAX.i160 = bitcast %union.anon* %3448 to i32*
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3450 = getelementptr inbounds %struct.GPR, %struct.GPR* %3449, i32 0, i32 15
  %3451 = getelementptr inbounds %struct.Reg, %struct.Reg* %3450, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %3451 to i64*
  %3452 = load i64, i64* %RBP.i161
  %3453 = sub i64 %3452, 8
  %3454 = load i32, i32* %EAX.i160
  %3455 = zext i32 %3454 to i64
  %3456 = load i64, i64* %PC.i159
  %3457 = add i64 %3456, 3
  store i64 %3457, i64* %PC.i159
  %3458 = inttoptr i64 %3453 to i32*
  store i32 %3454, i32* %3458
  store %struct.Memory* %loadMem_40b558, %struct.Memory** %MEMORY
  %loadMem_40b55b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3460 = getelementptr inbounds %struct.GPR, %struct.GPR* %3459, i32 0, i32 33
  %3461 = getelementptr inbounds %struct.Reg, %struct.Reg* %3460, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %3461 to i64*
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3463 = getelementptr inbounds %struct.GPR, %struct.GPR* %3462, i32 0, i32 15
  %3464 = getelementptr inbounds %struct.Reg, %struct.Reg* %3463, i32 0, i32 0
  %RBP.i158 = bitcast %union.anon* %3464 to i64*
  %3465 = load i64, i64* %RBP.i158
  %3466 = sub i64 %3465, 8
  %3467 = load i64, i64* %PC.i157
  %3468 = add i64 %3467, 4
  store i64 %3468, i64* %PC.i157
  %3469 = inttoptr i64 %3466 to i32*
  %3470 = load i32, i32* %3469
  %3471 = sub i32 %3470, 7
  %3472 = icmp ult i32 %3470, 7
  %3473 = zext i1 %3472 to i8
  %3474 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3473, i8* %3474, align 1
  %3475 = and i32 %3471, 255
  %3476 = call i32 @llvm.ctpop.i32(i32 %3475)
  %3477 = trunc i32 %3476 to i8
  %3478 = and i8 %3477, 1
  %3479 = xor i8 %3478, 1
  %3480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3479, i8* %3480, align 1
  %3481 = xor i32 %3470, 7
  %3482 = xor i32 %3481, %3471
  %3483 = lshr i32 %3482, 4
  %3484 = trunc i32 %3483 to i8
  %3485 = and i8 %3484, 1
  %3486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3485, i8* %3486, align 1
  %3487 = icmp eq i32 %3471, 0
  %3488 = zext i1 %3487 to i8
  %3489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3488, i8* %3489, align 1
  %3490 = lshr i32 %3471, 31
  %3491 = trunc i32 %3490 to i8
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3491, i8* %3492, align 1
  %3493 = lshr i32 %3470, 31
  %3494 = xor i32 %3490, %3493
  %3495 = add i32 %3494, %3493
  %3496 = icmp eq i32 %3495, 2
  %3497 = zext i1 %3496 to i8
  %3498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3497, i8* %3498, align 1
  store %struct.Memory* %loadMem_40b55b, %struct.Memory** %MEMORY
  %loadMem_40b55f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3499 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3500 = getelementptr inbounds %struct.GPR, %struct.GPR* %3499, i32 0, i32 33
  %3501 = getelementptr inbounds %struct.Reg, %struct.Reg* %3500, i32 0, i32 0
  %PC.i156 = bitcast %union.anon* %3501 to i64*
  %3502 = load i64, i64* %PC.i156
  %3503 = add i64 %3502, 16
  %3504 = load i64, i64* %PC.i156
  %3505 = add i64 %3504, 6
  %3506 = load i64, i64* %PC.i156
  %3507 = add i64 %3506, 6
  store i64 %3507, i64* %PC.i156
  %3508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3509 = load i8, i8* %3508, align 1
  store i8 %3509, i8* %BRANCH_TAKEN, align 1
  %3510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3511 = icmp ne i8 %3509, 0
  %3512 = select i1 %3511, i64 %3503, i64 %3505
  store i64 %3512, i64* %3510, align 8
  store %struct.Memory* %loadMem_40b55f, %struct.Memory** %MEMORY
  %loadBr_40b55f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b55f = icmp eq i8 %loadBr_40b55f, 1
  br i1 %cmpBr_40b55f, label %block_.L_40b56f, label %block_40b565

block_40b565:                                     ; preds = %block_.L_40b544
  %loadMem_40b565 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3514 = getelementptr inbounds %struct.GPR, %struct.GPR* %3513, i32 0, i32 33
  %3515 = getelementptr inbounds %struct.Reg, %struct.Reg* %3514, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %3515 to i64*
  %3516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3517 = getelementptr inbounds %struct.GPR, %struct.GPR* %3516, i32 0, i32 15
  %3518 = getelementptr inbounds %struct.Reg, %struct.Reg* %3517, i32 0, i32 0
  %RBP.i155 = bitcast %union.anon* %3518 to i64*
  %3519 = load i64, i64* %RBP.i155
  %3520 = sub i64 %3519, 8
  %3521 = load i64, i64* %PC.i154
  %3522 = add i64 %3521, 4
  store i64 %3522, i64* %PC.i154
  %3523 = inttoptr i64 %3520 to i32*
  %3524 = load i32, i32* %3523
  %3525 = sub i32 %3524, 9
  %3526 = icmp ult i32 %3524, 9
  %3527 = zext i1 %3526 to i8
  %3528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3527, i8* %3528, align 1
  %3529 = and i32 %3525, 255
  %3530 = call i32 @llvm.ctpop.i32(i32 %3529)
  %3531 = trunc i32 %3530 to i8
  %3532 = and i8 %3531, 1
  %3533 = xor i8 %3532, 1
  %3534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3533, i8* %3534, align 1
  %3535 = xor i32 %3524, 9
  %3536 = xor i32 %3535, %3525
  %3537 = lshr i32 %3536, 4
  %3538 = trunc i32 %3537 to i8
  %3539 = and i8 %3538, 1
  %3540 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3539, i8* %3540, align 1
  %3541 = icmp eq i32 %3525, 0
  %3542 = zext i1 %3541 to i8
  %3543 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3542, i8* %3543, align 1
  %3544 = lshr i32 %3525, 31
  %3545 = trunc i32 %3544 to i8
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3545, i8* %3546, align 1
  %3547 = lshr i32 %3524, 31
  %3548 = xor i32 %3544, %3547
  %3549 = add i32 %3548, %3547
  %3550 = icmp eq i32 %3549, 2
  %3551 = zext i1 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3551, i8* %3552, align 1
  store %struct.Memory* %loadMem_40b565, %struct.Memory** %MEMORY
  %loadMem_40b569 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3553 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3554 = getelementptr inbounds %struct.GPR, %struct.GPR* %3553, i32 0, i32 33
  %3555 = getelementptr inbounds %struct.Reg, %struct.Reg* %3554, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %3555 to i64*
  %3556 = load i64, i64* %PC.i153
  %3557 = add i64 %3556, 18
  %3558 = load i64, i64* %PC.i153
  %3559 = add i64 %3558, 6
  %3560 = load i64, i64* %PC.i153
  %3561 = add i64 %3560, 6
  store i64 %3561, i64* %PC.i153
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3563 = load i8, i8* %3562, align 1
  %3564 = icmp eq i8 %3563, 0
  %3565 = zext i1 %3564 to i8
  store i8 %3565, i8* %BRANCH_TAKEN, align 1
  %3566 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3567 = select i1 %3564, i64 %3557, i64 %3559
  store i64 %3567, i64* %3566, align 8
  store %struct.Memory* %loadMem_40b569, %struct.Memory** %MEMORY
  %loadBr_40b569 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b569 = icmp eq i8 %loadBr_40b569, 1
  br i1 %cmpBr_40b569, label %block_.L_40b57b, label %block_.L_40b56f

block_.L_40b56f:                                  ; preds = %block_40b565, %block_.L_40b544
  %loadMem_40b56f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3568 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3569 = getelementptr inbounds %struct.GPR, %struct.GPR* %3568, i32 0, i32 33
  %3570 = getelementptr inbounds %struct.Reg, %struct.Reg* %3569, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %3570 to i64*
  %3571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3572 = getelementptr inbounds %struct.GPR, %struct.GPR* %3571, i32 0, i32 15
  %3573 = getelementptr inbounds %struct.Reg, %struct.Reg* %3572, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %3573 to i64*
  %3574 = load i64, i64* %RBP.i152
  %3575 = sub i64 %3574, 4
  %3576 = load i64, i64* %PC.i151
  %3577 = add i64 %3576, 7
  store i64 %3577, i64* %PC.i151
  %3578 = inttoptr i64 %3575 to i32*
  store i32 2, i32* %3578
  store %struct.Memory* %loadMem_40b56f, %struct.Memory** %MEMORY
  %loadMem_40b576 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3580 = getelementptr inbounds %struct.GPR, %struct.GPR* %3579, i32 0, i32 33
  %3581 = getelementptr inbounds %struct.Reg, %struct.Reg* %3580, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %3581 to i64*
  %3582 = load i64, i64* %PC.i150
  %3583 = add i64 %3582, 418
  %3584 = load i64, i64* %PC.i150
  %3585 = add i64 %3584, 5
  store i64 %3585, i64* %PC.i150
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3583, i64* %3586, align 8
  store %struct.Memory* %loadMem_40b576, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b57b:                                  ; preds = %block_40b565
  %loadMem_40b57b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3588 = getelementptr inbounds %struct.GPR, %struct.GPR* %3587, i32 0, i32 33
  %3589 = getelementptr inbounds %struct.Reg, %struct.Reg* %3588, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %3589 to i64*
  %3590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3591 = getelementptr inbounds %struct.GPR, %struct.GPR* %3590, i32 0, i32 1
  %3592 = getelementptr inbounds %struct.Reg, %struct.Reg* %3591, i32 0, i32 0
  %RAX.i149 = bitcast %union.anon* %3592 to i64*
  %3593 = load i64, i64* %PC.i148
  %3594 = add i64 %3593, 7
  store i64 %3594, i64* %PC.i148
  %3595 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %3596 = zext i32 %3595 to i64
  store i64 %3596, i64* %RAX.i149, align 8
  store %struct.Memory* %loadMem_40b57b, %struct.Memory** %MEMORY
  %loadMem_40b582 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3598 = getelementptr inbounds %struct.GPR, %struct.GPR* %3597, i32 0, i32 33
  %3599 = getelementptr inbounds %struct.Reg, %struct.Reg* %3598, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %3599 to i64*
  %3600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3601 = getelementptr inbounds %struct.GPR, %struct.GPR* %3600, i32 0, i32 1
  %3602 = getelementptr inbounds %struct.Reg, %struct.Reg* %3601, i32 0, i32 0
  %RAX.i147 = bitcast %union.anon* %3602 to i64*
  %3603 = load i64, i64* %RAX.i147
  %3604 = load i64, i64* %PC.i146
  %3605 = add i64 %3604, 3
  store i64 %3605, i64* %PC.i146
  %3606 = trunc i64 %3603 to i32
  %3607 = sub i32 %3606, 13
  %3608 = zext i32 %3607 to i64
  store i64 %3608, i64* %RAX.i147, align 8
  %3609 = icmp ult i32 %3606, 13
  %3610 = zext i1 %3609 to i8
  %3611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3610, i8* %3611, align 1
  %3612 = and i32 %3607, 255
  %3613 = call i32 @llvm.ctpop.i32(i32 %3612)
  %3614 = trunc i32 %3613 to i8
  %3615 = and i8 %3614, 1
  %3616 = xor i8 %3615, 1
  %3617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3616, i8* %3617, align 1
  %3618 = xor i64 13, %3603
  %3619 = trunc i64 %3618 to i32
  %3620 = xor i32 %3619, %3607
  %3621 = lshr i32 %3620, 4
  %3622 = trunc i32 %3621 to i8
  %3623 = and i8 %3622, 1
  %3624 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3623, i8* %3624, align 1
  %3625 = icmp eq i32 %3607, 0
  %3626 = zext i1 %3625 to i8
  %3627 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3626, i8* %3627, align 1
  %3628 = lshr i32 %3607, 31
  %3629 = trunc i32 %3628 to i8
  %3630 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3629, i8* %3630, align 1
  %3631 = lshr i32 %3606, 31
  %3632 = xor i32 %3628, %3631
  %3633 = add i32 %3632, %3631
  %3634 = icmp eq i32 %3633, 2
  %3635 = zext i1 %3634 to i8
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3635, i8* %3636, align 1
  store %struct.Memory* %loadMem_40b582, %struct.Memory** %MEMORY
  %loadMem_40b585 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3638 = getelementptr inbounds %struct.GPR, %struct.GPR* %3637, i32 0, i32 33
  %3639 = getelementptr inbounds %struct.Reg, %struct.Reg* %3638, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %3639 to i64*
  %3640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3641 = getelementptr inbounds %struct.GPR, %struct.GPR* %3640, i32 0, i32 1
  %3642 = getelementptr inbounds %struct.Reg, %struct.Reg* %3641, i32 0, i32 0
  %EAX.i144 = bitcast %union.anon* %3642 to i32*
  %3643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3644 = getelementptr inbounds %struct.GPR, %struct.GPR* %3643, i32 0, i32 5
  %3645 = getelementptr inbounds %struct.Reg, %struct.Reg* %3644, i32 0, i32 0
  %RCX.i145 = bitcast %union.anon* %3645 to i64*
  %3646 = load i32, i32* %EAX.i144
  %3647 = zext i32 %3646 to i64
  %3648 = load i64, i64* %PC.i143
  %3649 = add i64 %3648, 3
  store i64 %3649, i64* %PC.i143
  %3650 = shl i64 %3647, 32
  %3651 = ashr exact i64 %3650, 32
  store i64 %3651, i64* %RCX.i145, align 8
  store %struct.Memory* %loadMem_40b585, %struct.Memory** %MEMORY
  %loadMem_40b588 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3653 = getelementptr inbounds %struct.GPR, %struct.GPR* %3652, i32 0, i32 33
  %3654 = getelementptr inbounds %struct.Reg, %struct.Reg* %3653, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %3654 to i64*
  %3655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3656 = getelementptr inbounds %struct.GPR, %struct.GPR* %3655, i32 0, i32 1
  %3657 = getelementptr inbounds %struct.Reg, %struct.Reg* %3656, i32 0, i32 0
  %RAX.i141 = bitcast %union.anon* %3657 to i64*
  %3658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3659 = getelementptr inbounds %struct.GPR, %struct.GPR* %3658, i32 0, i32 5
  %3660 = getelementptr inbounds %struct.Reg, %struct.Reg* %3659, i32 0, i32 0
  %RCX.i142 = bitcast %union.anon* %3660 to i64*
  %3661 = load i64, i64* %RCX.i142
  %3662 = mul i64 %3661, 4
  %3663 = add i64 %3662, 8807744
  %3664 = load i64, i64* %PC.i140
  %3665 = add i64 %3664, 7
  store i64 %3665, i64* %PC.i140
  %3666 = inttoptr i64 %3663 to i32*
  %3667 = load i32, i32* %3666
  %3668 = zext i32 %3667 to i64
  store i64 %3668, i64* %RAX.i141, align 8
  store %struct.Memory* %loadMem_40b588, %struct.Memory** %MEMORY
  %loadMem_40b58f = load %struct.Memory*, %struct.Memory** %MEMORY
  %3669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3670 = getelementptr inbounds %struct.GPR, %struct.GPR* %3669, i32 0, i32 33
  %3671 = getelementptr inbounds %struct.Reg, %struct.Reg* %3670, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %3671 to i64*
  %3672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3673 = getelementptr inbounds %struct.GPR, %struct.GPR* %3672, i32 0, i32 1
  %3674 = getelementptr inbounds %struct.Reg, %struct.Reg* %3673, i32 0, i32 0
  %EAX.i138 = bitcast %union.anon* %3674 to i32*
  %3675 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3676 = getelementptr inbounds %struct.GPR, %struct.GPR* %3675, i32 0, i32 15
  %3677 = getelementptr inbounds %struct.Reg, %struct.Reg* %3676, i32 0, i32 0
  %RBP.i139 = bitcast %union.anon* %3677 to i64*
  %3678 = load i64, i64* %RBP.i139
  %3679 = sub i64 %3678, 8
  %3680 = load i32, i32* %EAX.i138
  %3681 = zext i32 %3680 to i64
  %3682 = load i64, i64* %PC.i137
  %3683 = add i64 %3682, 3
  store i64 %3683, i64* %PC.i137
  %3684 = inttoptr i64 %3679 to i32*
  store i32 %3680, i32* %3684
  store %struct.Memory* %loadMem_40b58f, %struct.Memory** %MEMORY
  %loadMem_40b592 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3686 = getelementptr inbounds %struct.GPR, %struct.GPR* %3685, i32 0, i32 33
  %3687 = getelementptr inbounds %struct.Reg, %struct.Reg* %3686, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %3687 to i64*
  %3688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3689 = getelementptr inbounds %struct.GPR, %struct.GPR* %3688, i32 0, i32 15
  %3690 = getelementptr inbounds %struct.Reg, %struct.Reg* %3689, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %3690 to i64*
  %3691 = load i64, i64* %RBP.i136
  %3692 = sub i64 %3691, 8
  %3693 = load i64, i64* %PC.i135
  %3694 = add i64 %3693, 4
  store i64 %3694, i64* %PC.i135
  %3695 = inttoptr i64 %3692 to i32*
  %3696 = load i32, i32* %3695
  %3697 = sub i32 %3696, 11
  %3698 = icmp ult i32 %3696, 11
  %3699 = zext i1 %3698 to i8
  %3700 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3699, i8* %3700, align 1
  %3701 = and i32 %3697, 255
  %3702 = call i32 @llvm.ctpop.i32(i32 %3701)
  %3703 = trunc i32 %3702 to i8
  %3704 = and i8 %3703, 1
  %3705 = xor i8 %3704, 1
  %3706 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3705, i8* %3706, align 1
  %3707 = xor i32 %3696, 11
  %3708 = xor i32 %3707, %3697
  %3709 = lshr i32 %3708, 4
  %3710 = trunc i32 %3709 to i8
  %3711 = and i8 %3710, 1
  %3712 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3711, i8* %3712, align 1
  %3713 = icmp eq i32 %3697, 0
  %3714 = zext i1 %3713 to i8
  %3715 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3714, i8* %3715, align 1
  %3716 = lshr i32 %3697, 31
  %3717 = trunc i32 %3716 to i8
  %3718 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3717, i8* %3718, align 1
  %3719 = lshr i32 %3696, 31
  %3720 = xor i32 %3716, %3719
  %3721 = add i32 %3720, %3719
  %3722 = icmp eq i32 %3721, 2
  %3723 = zext i1 %3722 to i8
  %3724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3723, i8* %3724, align 1
  store %struct.Memory* %loadMem_40b592, %struct.Memory** %MEMORY
  %loadMem_40b596 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3725 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3726 = getelementptr inbounds %struct.GPR, %struct.GPR* %3725, i32 0, i32 33
  %3727 = getelementptr inbounds %struct.Reg, %struct.Reg* %3726, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %3727 to i64*
  %3728 = load i64, i64* %PC.i134
  %3729 = add i64 %3728, 26
  %3730 = load i64, i64* %PC.i134
  %3731 = add i64 %3730, 6
  %3732 = load i64, i64* %PC.i134
  %3733 = add i64 %3732, 6
  store i64 %3733, i64* %PC.i134
  %3734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3735 = load i8, i8* %3734, align 1
  store i8 %3735, i8* %BRANCH_TAKEN, align 1
  %3736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3737 = icmp ne i8 %3735, 0
  %3738 = select i1 %3737, i64 %3729, i64 %3731
  store i64 %3738, i64* %3736, align 8
  store %struct.Memory* %loadMem_40b596, %struct.Memory** %MEMORY
  %loadBr_40b596 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b596 = icmp eq i8 %loadBr_40b596, 1
  br i1 %cmpBr_40b596, label %block_.L_40b5b0, label %block_40b59c

block_40b59c:                                     ; preds = %block_.L_40b57b
  %loadMem_40b59c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3740 = getelementptr inbounds %struct.GPR, %struct.GPR* %3739, i32 0, i32 33
  %3741 = getelementptr inbounds %struct.Reg, %struct.Reg* %3740, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %3741 to i64*
  %3742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3743 = getelementptr inbounds %struct.GPR, %struct.GPR* %3742, i32 0, i32 15
  %3744 = getelementptr inbounds %struct.Reg, %struct.Reg* %3743, i32 0, i32 0
  %RBP.i133 = bitcast %union.anon* %3744 to i64*
  %3745 = load i64, i64* %RBP.i133
  %3746 = sub i64 %3745, 8
  %3747 = load i64, i64* %PC.i132
  %3748 = add i64 %3747, 4
  store i64 %3748, i64* %PC.i132
  %3749 = inttoptr i64 %3746 to i32*
  %3750 = load i32, i32* %3749
  %3751 = sub i32 %3750, 9
  %3752 = icmp ult i32 %3750, 9
  %3753 = zext i1 %3752 to i8
  %3754 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3753, i8* %3754, align 1
  %3755 = and i32 %3751, 255
  %3756 = call i32 @llvm.ctpop.i32(i32 %3755)
  %3757 = trunc i32 %3756 to i8
  %3758 = and i8 %3757, 1
  %3759 = xor i8 %3758, 1
  %3760 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3759, i8* %3760, align 1
  %3761 = xor i32 %3750, 9
  %3762 = xor i32 %3761, %3751
  %3763 = lshr i32 %3762, 4
  %3764 = trunc i32 %3763 to i8
  %3765 = and i8 %3764, 1
  %3766 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3765, i8* %3766, align 1
  %3767 = icmp eq i32 %3751, 0
  %3768 = zext i1 %3767 to i8
  %3769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3768, i8* %3769, align 1
  %3770 = lshr i32 %3751, 31
  %3771 = trunc i32 %3770 to i8
  %3772 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3771, i8* %3772, align 1
  %3773 = lshr i32 %3750, 31
  %3774 = xor i32 %3770, %3773
  %3775 = add i32 %3774, %3773
  %3776 = icmp eq i32 %3775, 2
  %3777 = zext i1 %3776 to i8
  %3778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3777, i8* %3778, align 1
  store %struct.Memory* %loadMem_40b59c, %struct.Memory** %MEMORY
  %loadMem_40b5a0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3780 = getelementptr inbounds %struct.GPR, %struct.GPR* %3779, i32 0, i32 33
  %3781 = getelementptr inbounds %struct.Reg, %struct.Reg* %3780, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %3781 to i64*
  %3782 = load i64, i64* %PC.i131
  %3783 = add i64 %3782, 16
  %3784 = load i64, i64* %PC.i131
  %3785 = add i64 %3784, 6
  %3786 = load i64, i64* %PC.i131
  %3787 = add i64 %3786, 6
  store i64 %3787, i64* %PC.i131
  %3788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3789 = load i8, i8* %3788, align 1
  store i8 %3789, i8* %BRANCH_TAKEN, align 1
  %3790 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3791 = icmp ne i8 %3789, 0
  %3792 = select i1 %3791, i64 %3783, i64 %3785
  store i64 %3792, i64* %3790, align 8
  store %struct.Memory* %loadMem_40b5a0, %struct.Memory** %MEMORY
  %loadBr_40b5a0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b5a0 = icmp eq i8 %loadBr_40b5a0, 1
  br i1 %cmpBr_40b5a0, label %block_.L_40b5b0, label %block_40b5a6

block_40b5a6:                                     ; preds = %block_40b59c
  %loadMem_40b5a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3793 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3794 = getelementptr inbounds %struct.GPR, %struct.GPR* %3793, i32 0, i32 33
  %3795 = getelementptr inbounds %struct.Reg, %struct.Reg* %3794, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %3795 to i64*
  %3796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3797 = getelementptr inbounds %struct.GPR, %struct.GPR* %3796, i32 0, i32 15
  %3798 = getelementptr inbounds %struct.Reg, %struct.Reg* %3797, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %3798 to i64*
  %3799 = load i64, i64* %RBP.i130
  %3800 = sub i64 %3799, 8
  %3801 = load i64, i64* %PC.i129
  %3802 = add i64 %3801, 4
  store i64 %3802, i64* %PC.i129
  %3803 = inttoptr i64 %3800 to i32*
  %3804 = load i32, i32* %3803
  %3805 = sub i32 %3804, 1
  %3806 = icmp ult i32 %3804, 1
  %3807 = zext i1 %3806 to i8
  %3808 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3807, i8* %3808, align 1
  %3809 = and i32 %3805, 255
  %3810 = call i32 @llvm.ctpop.i32(i32 %3809)
  %3811 = trunc i32 %3810 to i8
  %3812 = and i8 %3811, 1
  %3813 = xor i8 %3812, 1
  %3814 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3813, i8* %3814, align 1
  %3815 = xor i32 %3804, 1
  %3816 = xor i32 %3815, %3805
  %3817 = lshr i32 %3816, 4
  %3818 = trunc i32 %3817 to i8
  %3819 = and i8 %3818, 1
  %3820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3819, i8* %3820, align 1
  %3821 = icmp eq i32 %3805, 0
  %3822 = zext i1 %3821 to i8
  %3823 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3822, i8* %3823, align 1
  %3824 = lshr i32 %3805, 31
  %3825 = trunc i32 %3824 to i8
  %3826 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3825, i8* %3826, align 1
  %3827 = lshr i32 %3804, 31
  %3828 = xor i32 %3824, %3827
  %3829 = add i32 %3828, %3827
  %3830 = icmp eq i32 %3829, 2
  %3831 = zext i1 %3830 to i8
  %3832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3831, i8* %3832, align 1
  store %struct.Memory* %loadMem_40b5a6, %struct.Memory** %MEMORY
  %loadMem_40b5aa = load %struct.Memory*, %struct.Memory** %MEMORY
  %3833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3834 = getelementptr inbounds %struct.GPR, %struct.GPR* %3833, i32 0, i32 33
  %3835 = getelementptr inbounds %struct.Reg, %struct.Reg* %3834, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %3835 to i64*
  %3836 = load i64, i64* %PC.i128
  %3837 = add i64 %3836, 18
  %3838 = load i64, i64* %PC.i128
  %3839 = add i64 %3838, 6
  %3840 = load i64, i64* %PC.i128
  %3841 = add i64 %3840, 6
  store i64 %3841, i64* %PC.i128
  %3842 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %3843 = load i8, i8* %3842, align 1
  %3844 = icmp eq i8 %3843, 0
  %3845 = zext i1 %3844 to i8
  store i8 %3845, i8* %BRANCH_TAKEN, align 1
  %3846 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3847 = select i1 %3844, i64 %3837, i64 %3839
  store i64 %3847, i64* %3846, align 8
  store %struct.Memory* %loadMem_40b5aa, %struct.Memory** %MEMORY
  %loadBr_40b5aa = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b5aa = icmp eq i8 %loadBr_40b5aa, 1
  br i1 %cmpBr_40b5aa, label %block_.L_40b5bc, label %block_.L_40b5b0

block_.L_40b5b0:                                  ; preds = %block_40b5a6, %block_40b59c, %block_.L_40b57b
  %loadMem_40b5b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3848 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3849 = getelementptr inbounds %struct.GPR, %struct.GPR* %3848, i32 0, i32 33
  %3850 = getelementptr inbounds %struct.Reg, %struct.Reg* %3849, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %3850 to i64*
  %3851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3852 = getelementptr inbounds %struct.GPR, %struct.GPR* %3851, i32 0, i32 15
  %3853 = getelementptr inbounds %struct.Reg, %struct.Reg* %3852, i32 0, i32 0
  %RBP.i127 = bitcast %union.anon* %3853 to i64*
  %3854 = load i64, i64* %RBP.i127
  %3855 = sub i64 %3854, 4
  %3856 = load i64, i64* %PC.i126
  %3857 = add i64 %3856, 7
  store i64 %3857, i64* %PC.i126
  %3858 = inttoptr i64 %3855 to i32*
  store i32 2, i32* %3858
  store %struct.Memory* %loadMem_40b5b0, %struct.Memory** %MEMORY
  %loadMem_40b5b7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3860 = getelementptr inbounds %struct.GPR, %struct.GPR* %3859, i32 0, i32 33
  %3861 = getelementptr inbounds %struct.Reg, %struct.Reg* %3860, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %3861 to i64*
  %3862 = load i64, i64* %PC.i125
  %3863 = add i64 %3862, 353
  %3864 = load i64, i64* %PC.i125
  %3865 = add i64 %3864, 5
  store i64 %3865, i64* %PC.i125
  %3866 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3863, i64* %3866, align 8
  store %struct.Memory* %loadMem_40b5b7, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b5bc:                                  ; preds = %block_40b5a6
  %loadMem_40b5bc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3868 = getelementptr inbounds %struct.GPR, %struct.GPR* %3867, i32 0, i32 33
  %3869 = getelementptr inbounds %struct.Reg, %struct.Reg* %3868, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %3869 to i64*
  %3870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3871 = getelementptr inbounds %struct.GPR, %struct.GPR* %3870, i32 0, i32 1
  %3872 = getelementptr inbounds %struct.Reg, %struct.Reg* %3871, i32 0, i32 0
  %RAX.i124 = bitcast %union.anon* %3872 to i64*
  %3873 = load i64, i64* %PC.i123
  %3874 = add i64 %3873, 7
  store i64 %3874, i64* %PC.i123
  %3875 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %3876 = zext i32 %3875 to i64
  store i64 %3876, i64* %RAX.i124, align 8
  store %struct.Memory* %loadMem_40b5bc, %struct.Memory** %MEMORY
  %loadMem_40b5c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3878 = getelementptr inbounds %struct.GPR, %struct.GPR* %3877, i32 0, i32 33
  %3879 = getelementptr inbounds %struct.Reg, %struct.Reg* %3878, i32 0, i32 0
  %PC.i121 = bitcast %union.anon* %3879 to i64*
  %3880 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3881 = getelementptr inbounds %struct.GPR, %struct.GPR* %3880, i32 0, i32 1
  %3882 = getelementptr inbounds %struct.Reg, %struct.Reg* %3881, i32 0, i32 0
  %RAX.i122 = bitcast %union.anon* %3882 to i64*
  %3883 = load i64, i64* %RAX.i122
  %3884 = load i64, i64* %PC.i121
  %3885 = add i64 %3884, 3
  store i64 %3885, i64* %PC.i121
  %3886 = trunc i64 %3883 to i32
  %3887 = sub i32 %3886, 11
  %3888 = zext i32 %3887 to i64
  store i64 %3888, i64* %RAX.i122, align 8
  %3889 = icmp ult i32 %3886, 11
  %3890 = zext i1 %3889 to i8
  %3891 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3890, i8* %3891, align 1
  %3892 = and i32 %3887, 255
  %3893 = call i32 @llvm.ctpop.i32(i32 %3892)
  %3894 = trunc i32 %3893 to i8
  %3895 = and i8 %3894, 1
  %3896 = xor i8 %3895, 1
  %3897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3896, i8* %3897, align 1
  %3898 = xor i64 11, %3883
  %3899 = trunc i64 %3898 to i32
  %3900 = xor i32 %3899, %3887
  %3901 = lshr i32 %3900, 4
  %3902 = trunc i32 %3901 to i8
  %3903 = and i8 %3902, 1
  %3904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3903, i8* %3904, align 1
  %3905 = icmp eq i32 %3887, 0
  %3906 = zext i1 %3905 to i8
  %3907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3906, i8* %3907, align 1
  %3908 = lshr i32 %3887, 31
  %3909 = trunc i32 %3908 to i8
  %3910 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3909, i8* %3910, align 1
  %3911 = lshr i32 %3886, 31
  %3912 = xor i32 %3908, %3911
  %3913 = add i32 %3912, %3911
  %3914 = icmp eq i32 %3913, 2
  %3915 = zext i1 %3914 to i8
  %3916 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3915, i8* %3916, align 1
  store %struct.Memory* %loadMem_40b5c3, %struct.Memory** %MEMORY
  %loadMem_40b5c6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3918 = getelementptr inbounds %struct.GPR, %struct.GPR* %3917, i32 0, i32 33
  %3919 = getelementptr inbounds %struct.Reg, %struct.Reg* %3918, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %3919 to i64*
  %3920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3921 = getelementptr inbounds %struct.GPR, %struct.GPR* %3920, i32 0, i32 1
  %3922 = getelementptr inbounds %struct.Reg, %struct.Reg* %3921, i32 0, i32 0
  %EAX.i119 = bitcast %union.anon* %3922 to i32*
  %3923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3924 = getelementptr inbounds %struct.GPR, %struct.GPR* %3923, i32 0, i32 5
  %3925 = getelementptr inbounds %struct.Reg, %struct.Reg* %3924, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %3925 to i64*
  %3926 = load i32, i32* %EAX.i119
  %3927 = zext i32 %3926 to i64
  %3928 = load i64, i64* %PC.i118
  %3929 = add i64 %3928, 3
  store i64 %3929, i64* %PC.i118
  %3930 = shl i64 %3927, 32
  %3931 = ashr exact i64 %3930, 32
  store i64 %3931, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_40b5c6, %struct.Memory** %MEMORY
  %loadMem_40b5c9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3933 = getelementptr inbounds %struct.GPR, %struct.GPR* %3932, i32 0, i32 33
  %3934 = getelementptr inbounds %struct.Reg, %struct.Reg* %3933, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %3934 to i64*
  %3935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3936 = getelementptr inbounds %struct.GPR, %struct.GPR* %3935, i32 0, i32 1
  %3937 = getelementptr inbounds %struct.Reg, %struct.Reg* %3936, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %3937 to i64*
  %3938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3939 = getelementptr inbounds %struct.GPR, %struct.GPR* %3938, i32 0, i32 5
  %3940 = getelementptr inbounds %struct.Reg, %struct.Reg* %3939, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %3940 to i64*
  %3941 = load i64, i64* %RCX.i117
  %3942 = mul i64 %3941, 4
  %3943 = add i64 %3942, 8807744
  %3944 = load i64, i64* %PC.i115
  %3945 = add i64 %3944, 7
  store i64 %3945, i64* %PC.i115
  %3946 = inttoptr i64 %3943 to i32*
  %3947 = load i32, i32* %3946
  %3948 = zext i32 %3947 to i64
  store i64 %3948, i64* %RAX.i116, align 8
  store %struct.Memory* %loadMem_40b5c9, %struct.Memory** %MEMORY
  %loadMem_40b5d0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3950 = getelementptr inbounds %struct.GPR, %struct.GPR* %3949, i32 0, i32 33
  %3951 = getelementptr inbounds %struct.Reg, %struct.Reg* %3950, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %3951 to i64*
  %3952 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3953 = getelementptr inbounds %struct.GPR, %struct.GPR* %3952, i32 0, i32 1
  %3954 = getelementptr inbounds %struct.Reg, %struct.Reg* %3953, i32 0, i32 0
  %EAX.i113 = bitcast %union.anon* %3954 to i32*
  %3955 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3956 = getelementptr inbounds %struct.GPR, %struct.GPR* %3955, i32 0, i32 15
  %3957 = getelementptr inbounds %struct.Reg, %struct.Reg* %3956, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %3957 to i64*
  %3958 = load i64, i64* %RBP.i114
  %3959 = sub i64 %3958, 8
  %3960 = load i32, i32* %EAX.i113
  %3961 = zext i32 %3960 to i64
  %3962 = load i64, i64* %PC.i112
  %3963 = add i64 %3962, 3
  store i64 %3963, i64* %PC.i112
  %3964 = inttoptr i64 %3959 to i32*
  store i32 %3960, i32* %3964
  store %struct.Memory* %loadMem_40b5d0, %struct.Memory** %MEMORY
  %loadMem_40b5d3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3966 = getelementptr inbounds %struct.GPR, %struct.GPR* %3965, i32 0, i32 33
  %3967 = getelementptr inbounds %struct.Reg, %struct.Reg* %3966, i32 0, i32 0
  %PC.i110 = bitcast %union.anon* %3967 to i64*
  %3968 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3969 = getelementptr inbounds %struct.GPR, %struct.GPR* %3968, i32 0, i32 15
  %3970 = getelementptr inbounds %struct.Reg, %struct.Reg* %3969, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %3970 to i64*
  %3971 = load i64, i64* %RBP.i111
  %3972 = sub i64 %3971, 8
  %3973 = load i64, i64* %PC.i110
  %3974 = add i64 %3973, 4
  store i64 %3974, i64* %PC.i110
  %3975 = inttoptr i64 %3972 to i32*
  %3976 = load i32, i32* %3975
  %3977 = sub i32 %3976, 11
  %3978 = icmp ult i32 %3976, 11
  %3979 = zext i1 %3978 to i8
  %3980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3979, i8* %3980, align 1
  %3981 = and i32 %3977, 255
  %3982 = call i32 @llvm.ctpop.i32(i32 %3981)
  %3983 = trunc i32 %3982 to i8
  %3984 = and i8 %3983, 1
  %3985 = xor i8 %3984, 1
  %3986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3985, i8* %3986, align 1
  %3987 = xor i32 %3976, 11
  %3988 = xor i32 %3987, %3977
  %3989 = lshr i32 %3988, 4
  %3990 = trunc i32 %3989 to i8
  %3991 = and i8 %3990, 1
  %3992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3991, i8* %3992, align 1
  %3993 = icmp eq i32 %3977, 0
  %3994 = zext i1 %3993 to i8
  %3995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3994, i8* %3995, align 1
  %3996 = lshr i32 %3977, 31
  %3997 = trunc i32 %3996 to i8
  %3998 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3997, i8* %3998, align 1
  %3999 = lshr i32 %3976, 31
  %4000 = xor i32 %3996, %3999
  %4001 = add i32 %4000, %3999
  %4002 = icmp eq i32 %4001, 2
  %4003 = zext i1 %4002 to i8
  %4004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4003, i8* %4004, align 1
  store %struct.Memory* %loadMem_40b5d3, %struct.Memory** %MEMORY
  %loadMem_40b5d7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4005 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4006 = getelementptr inbounds %struct.GPR, %struct.GPR* %4005, i32 0, i32 33
  %4007 = getelementptr inbounds %struct.Reg, %struct.Reg* %4006, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %4007 to i64*
  %4008 = load i64, i64* %PC.i109
  %4009 = add i64 %4008, 26
  %4010 = load i64, i64* %PC.i109
  %4011 = add i64 %4010, 6
  %4012 = load i64, i64* %PC.i109
  %4013 = add i64 %4012, 6
  store i64 %4013, i64* %PC.i109
  %4014 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4015 = load i8, i8* %4014, align 1
  store i8 %4015, i8* %BRANCH_TAKEN, align 1
  %4016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4017 = icmp ne i8 %4015, 0
  %4018 = select i1 %4017, i64 %4009, i64 %4011
  store i64 %4018, i64* %4016, align 8
  store %struct.Memory* %loadMem_40b5d7, %struct.Memory** %MEMORY
  %loadBr_40b5d7 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b5d7 = icmp eq i8 %loadBr_40b5d7, 1
  br i1 %cmpBr_40b5d7, label %block_.L_40b5f1, label %block_40b5dd

block_40b5dd:                                     ; preds = %block_.L_40b5bc
  %loadMem_40b5dd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4020 = getelementptr inbounds %struct.GPR, %struct.GPR* %4019, i32 0, i32 33
  %4021 = getelementptr inbounds %struct.Reg, %struct.Reg* %4020, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %4021 to i64*
  %4022 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4023 = getelementptr inbounds %struct.GPR, %struct.GPR* %4022, i32 0, i32 15
  %4024 = getelementptr inbounds %struct.Reg, %struct.Reg* %4023, i32 0, i32 0
  %RBP.i108 = bitcast %union.anon* %4024 to i64*
  %4025 = load i64, i64* %RBP.i108
  %4026 = sub i64 %4025, 8
  %4027 = load i64, i64* %PC.i107
  %4028 = add i64 %4027, 4
  store i64 %4028, i64* %PC.i107
  %4029 = inttoptr i64 %4026 to i32*
  %4030 = load i32, i32* %4029
  %4031 = sub i32 %4030, 9
  %4032 = icmp ult i32 %4030, 9
  %4033 = zext i1 %4032 to i8
  %4034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4033, i8* %4034, align 1
  %4035 = and i32 %4031, 255
  %4036 = call i32 @llvm.ctpop.i32(i32 %4035)
  %4037 = trunc i32 %4036 to i8
  %4038 = and i8 %4037, 1
  %4039 = xor i8 %4038, 1
  %4040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4039, i8* %4040, align 1
  %4041 = xor i32 %4030, 9
  %4042 = xor i32 %4041, %4031
  %4043 = lshr i32 %4042, 4
  %4044 = trunc i32 %4043 to i8
  %4045 = and i8 %4044, 1
  %4046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4045, i8* %4046, align 1
  %4047 = icmp eq i32 %4031, 0
  %4048 = zext i1 %4047 to i8
  %4049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4048, i8* %4049, align 1
  %4050 = lshr i32 %4031, 31
  %4051 = trunc i32 %4050 to i8
  %4052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4051, i8* %4052, align 1
  %4053 = lshr i32 %4030, 31
  %4054 = xor i32 %4050, %4053
  %4055 = add i32 %4054, %4053
  %4056 = icmp eq i32 %4055, 2
  %4057 = zext i1 %4056 to i8
  %4058 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4057, i8* %4058, align 1
  store %struct.Memory* %loadMem_40b5dd, %struct.Memory** %MEMORY
  %loadMem_40b5e1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4059 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4060 = getelementptr inbounds %struct.GPR, %struct.GPR* %4059, i32 0, i32 33
  %4061 = getelementptr inbounds %struct.Reg, %struct.Reg* %4060, i32 0, i32 0
  %PC.i106 = bitcast %union.anon* %4061 to i64*
  %4062 = load i64, i64* %PC.i106
  %4063 = add i64 %4062, 16
  %4064 = load i64, i64* %PC.i106
  %4065 = add i64 %4064, 6
  %4066 = load i64, i64* %PC.i106
  %4067 = add i64 %4066, 6
  store i64 %4067, i64* %PC.i106
  %4068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4069 = load i8, i8* %4068, align 1
  store i8 %4069, i8* %BRANCH_TAKEN, align 1
  %4070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4071 = icmp ne i8 %4069, 0
  %4072 = select i1 %4071, i64 %4063, i64 %4065
  store i64 %4072, i64* %4070, align 8
  store %struct.Memory* %loadMem_40b5e1, %struct.Memory** %MEMORY
  %loadBr_40b5e1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b5e1 = icmp eq i8 %loadBr_40b5e1, 1
  br i1 %cmpBr_40b5e1, label %block_.L_40b5f1, label %block_40b5e7

block_40b5e7:                                     ; preds = %block_40b5dd
  %loadMem_40b5e7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4073 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4074 = getelementptr inbounds %struct.GPR, %struct.GPR* %4073, i32 0, i32 33
  %4075 = getelementptr inbounds %struct.Reg, %struct.Reg* %4074, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %4075 to i64*
  %4076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4077 = getelementptr inbounds %struct.GPR, %struct.GPR* %4076, i32 0, i32 15
  %4078 = getelementptr inbounds %struct.Reg, %struct.Reg* %4077, i32 0, i32 0
  %RBP.i105 = bitcast %union.anon* %4078 to i64*
  %4079 = load i64, i64* %RBP.i105
  %4080 = sub i64 %4079, 8
  %4081 = load i64, i64* %PC.i104
  %4082 = add i64 %4081, 4
  store i64 %4082, i64* %PC.i104
  %4083 = inttoptr i64 %4080 to i32*
  %4084 = load i32, i32* %4083
  %4085 = sub i32 %4084, 1
  %4086 = icmp ult i32 %4084, 1
  %4087 = zext i1 %4086 to i8
  %4088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4087, i8* %4088, align 1
  %4089 = and i32 %4085, 255
  %4090 = call i32 @llvm.ctpop.i32(i32 %4089)
  %4091 = trunc i32 %4090 to i8
  %4092 = and i8 %4091, 1
  %4093 = xor i8 %4092, 1
  %4094 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4093, i8* %4094, align 1
  %4095 = xor i32 %4084, 1
  %4096 = xor i32 %4095, %4085
  %4097 = lshr i32 %4096, 4
  %4098 = trunc i32 %4097 to i8
  %4099 = and i8 %4098, 1
  %4100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4099, i8* %4100, align 1
  %4101 = icmp eq i32 %4085, 0
  %4102 = zext i1 %4101 to i8
  %4103 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4102, i8* %4103, align 1
  %4104 = lshr i32 %4085, 31
  %4105 = trunc i32 %4104 to i8
  %4106 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4105, i8* %4106, align 1
  %4107 = lshr i32 %4084, 31
  %4108 = xor i32 %4104, %4107
  %4109 = add i32 %4108, %4107
  %4110 = icmp eq i32 %4109, 2
  %4111 = zext i1 %4110 to i8
  %4112 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4111, i8* %4112, align 1
  store %struct.Memory* %loadMem_40b5e7, %struct.Memory** %MEMORY
  %loadMem_40b5eb = load %struct.Memory*, %struct.Memory** %MEMORY
  %4113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4114 = getelementptr inbounds %struct.GPR, %struct.GPR* %4113, i32 0, i32 33
  %4115 = getelementptr inbounds %struct.Reg, %struct.Reg* %4114, i32 0, i32 0
  %PC.i103 = bitcast %union.anon* %4115 to i64*
  %4116 = load i64, i64* %PC.i103
  %4117 = add i64 %4116, 18
  %4118 = load i64, i64* %PC.i103
  %4119 = add i64 %4118, 6
  %4120 = load i64, i64* %PC.i103
  %4121 = add i64 %4120, 6
  store i64 %4121, i64* %PC.i103
  %4122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4123 = load i8, i8* %4122, align 1
  %4124 = icmp eq i8 %4123, 0
  %4125 = zext i1 %4124 to i8
  store i8 %4125, i8* %BRANCH_TAKEN, align 1
  %4126 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4127 = select i1 %4124, i64 %4117, i64 %4119
  store i64 %4127, i64* %4126, align 8
  store %struct.Memory* %loadMem_40b5eb, %struct.Memory** %MEMORY
  %loadBr_40b5eb = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b5eb = icmp eq i8 %loadBr_40b5eb, 1
  br i1 %cmpBr_40b5eb, label %block_.L_40b5fd, label %block_.L_40b5f1

block_.L_40b5f1:                                  ; preds = %block_40b5e7, %block_40b5dd, %block_.L_40b5bc
  %loadMem_40b5f1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4128 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4129 = getelementptr inbounds %struct.GPR, %struct.GPR* %4128, i32 0, i32 33
  %4130 = getelementptr inbounds %struct.Reg, %struct.Reg* %4129, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %4130 to i64*
  %4131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4132 = getelementptr inbounds %struct.GPR, %struct.GPR* %4131, i32 0, i32 15
  %4133 = getelementptr inbounds %struct.Reg, %struct.Reg* %4132, i32 0, i32 0
  %RBP.i102 = bitcast %union.anon* %4133 to i64*
  %4134 = load i64, i64* %RBP.i102
  %4135 = sub i64 %4134, 4
  %4136 = load i64, i64* %PC.i101
  %4137 = add i64 %4136, 7
  store i64 %4137, i64* %PC.i101
  %4138 = inttoptr i64 %4135 to i32*
  store i32 2, i32* %4138
  store %struct.Memory* %loadMem_40b5f1, %struct.Memory** %MEMORY
  %loadMem_40b5f8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4140 = getelementptr inbounds %struct.GPR, %struct.GPR* %4139, i32 0, i32 33
  %4141 = getelementptr inbounds %struct.Reg, %struct.Reg* %4140, i32 0, i32 0
  %PC.i100 = bitcast %union.anon* %4141 to i64*
  %4142 = load i64, i64* %PC.i100
  %4143 = add i64 %4142, 288
  %4144 = load i64, i64* %PC.i100
  %4145 = add i64 %4144, 5
  store i64 %4145, i64* %PC.i100
  %4146 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4143, i64* %4146, align 8
  store %struct.Memory* %loadMem_40b5f8, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b5fd:                                  ; preds = %block_40b5e7
  %loadMem_40b5fd = load %struct.Memory*, %struct.Memory** %MEMORY
  %4147 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4148 = getelementptr inbounds %struct.GPR, %struct.GPR* %4147, i32 0, i32 33
  %4149 = getelementptr inbounds %struct.Reg, %struct.Reg* %4148, i32 0, i32 0
  %PC.i98 = bitcast %union.anon* %4149 to i64*
  %4150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4151 = getelementptr inbounds %struct.GPR, %struct.GPR* %4150, i32 0, i32 1
  %4152 = getelementptr inbounds %struct.Reg, %struct.Reg* %4151, i32 0, i32 0
  %RAX.i99 = bitcast %union.anon* %4152 to i64*
  %4153 = load i64, i64* %PC.i98
  %4154 = add i64 %4153, 7
  store i64 %4154, i64* %PC.i98
  %4155 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %4156 = zext i32 %4155 to i64
  store i64 %4156, i64* %RAX.i99, align 8
  store %struct.Memory* %loadMem_40b5fd, %struct.Memory** %MEMORY
  %loadMem_40b604 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4157 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4158 = getelementptr inbounds %struct.GPR, %struct.GPR* %4157, i32 0, i32 33
  %4159 = getelementptr inbounds %struct.Reg, %struct.Reg* %4158, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %4159 to i64*
  %4160 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4161 = getelementptr inbounds %struct.GPR, %struct.GPR* %4160, i32 0, i32 1
  %4162 = getelementptr inbounds %struct.Reg, %struct.Reg* %4161, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %4162 to i64*
  %4163 = load i64, i64* %RAX.i97
  %4164 = load i64, i64* %PC.i96
  %4165 = add i64 %4164, 3
  store i64 %4165, i64* %PC.i96
  %4166 = trunc i64 %4163 to i32
  %4167 = add i32 11, %4166
  %4168 = zext i32 %4167 to i64
  store i64 %4168, i64* %RAX.i97, align 8
  %4169 = icmp ult i32 %4167, %4166
  %4170 = icmp ult i32 %4167, 11
  %4171 = or i1 %4169, %4170
  %4172 = zext i1 %4171 to i8
  %4173 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4172, i8* %4173, align 1
  %4174 = and i32 %4167, 255
  %4175 = call i32 @llvm.ctpop.i32(i32 %4174)
  %4176 = trunc i32 %4175 to i8
  %4177 = and i8 %4176, 1
  %4178 = xor i8 %4177, 1
  %4179 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4178, i8* %4179, align 1
  %4180 = xor i64 11, %4163
  %4181 = trunc i64 %4180 to i32
  %4182 = xor i32 %4181, %4167
  %4183 = lshr i32 %4182, 4
  %4184 = trunc i32 %4183 to i8
  %4185 = and i8 %4184, 1
  %4186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4185, i8* %4186, align 1
  %4187 = icmp eq i32 %4167, 0
  %4188 = zext i1 %4187 to i8
  %4189 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4188, i8* %4189, align 1
  %4190 = lshr i32 %4167, 31
  %4191 = trunc i32 %4190 to i8
  %4192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4191, i8* %4192, align 1
  %4193 = lshr i32 %4166, 31
  %4194 = xor i32 %4190, %4193
  %4195 = add i32 %4194, %4190
  %4196 = icmp eq i32 %4195, 2
  %4197 = zext i1 %4196 to i8
  %4198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4197, i8* %4198, align 1
  store %struct.Memory* %loadMem_40b604, %struct.Memory** %MEMORY
  %loadMem_40b607 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4200 = getelementptr inbounds %struct.GPR, %struct.GPR* %4199, i32 0, i32 33
  %4201 = getelementptr inbounds %struct.Reg, %struct.Reg* %4200, i32 0, i32 0
  %PC.i93 = bitcast %union.anon* %4201 to i64*
  %4202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4203 = getelementptr inbounds %struct.GPR, %struct.GPR* %4202, i32 0, i32 1
  %4204 = getelementptr inbounds %struct.Reg, %struct.Reg* %4203, i32 0, i32 0
  %EAX.i94 = bitcast %union.anon* %4204 to i32*
  %4205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4206 = getelementptr inbounds %struct.GPR, %struct.GPR* %4205, i32 0, i32 5
  %4207 = getelementptr inbounds %struct.Reg, %struct.Reg* %4206, i32 0, i32 0
  %RCX.i95 = bitcast %union.anon* %4207 to i64*
  %4208 = load i32, i32* %EAX.i94
  %4209 = zext i32 %4208 to i64
  %4210 = load i64, i64* %PC.i93
  %4211 = add i64 %4210, 3
  store i64 %4211, i64* %PC.i93
  %4212 = shl i64 %4209, 32
  %4213 = ashr exact i64 %4212, 32
  store i64 %4213, i64* %RCX.i95, align 8
  store %struct.Memory* %loadMem_40b607, %struct.Memory** %MEMORY
  %loadMem_40b60a = load %struct.Memory*, %struct.Memory** %MEMORY
  %4214 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4215 = getelementptr inbounds %struct.GPR, %struct.GPR* %4214, i32 0, i32 33
  %4216 = getelementptr inbounds %struct.Reg, %struct.Reg* %4215, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %4216 to i64*
  %4217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4218 = getelementptr inbounds %struct.GPR, %struct.GPR* %4217, i32 0, i32 1
  %4219 = getelementptr inbounds %struct.Reg, %struct.Reg* %4218, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %4219 to i64*
  %4220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4221 = getelementptr inbounds %struct.GPR, %struct.GPR* %4220, i32 0, i32 5
  %4222 = getelementptr inbounds %struct.Reg, %struct.Reg* %4221, i32 0, i32 0
  %RCX.i92 = bitcast %union.anon* %4222 to i64*
  %4223 = load i64, i64* %RCX.i92
  %4224 = mul i64 %4223, 4
  %4225 = add i64 %4224, 8807744
  %4226 = load i64, i64* %PC.i90
  %4227 = add i64 %4226, 7
  store i64 %4227, i64* %PC.i90
  %4228 = inttoptr i64 %4225 to i32*
  %4229 = load i32, i32* %4228
  %4230 = zext i32 %4229 to i64
  store i64 %4230, i64* %RAX.i91, align 8
  store %struct.Memory* %loadMem_40b60a, %struct.Memory** %MEMORY
  %loadMem_40b611 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4232 = getelementptr inbounds %struct.GPR, %struct.GPR* %4231, i32 0, i32 33
  %4233 = getelementptr inbounds %struct.Reg, %struct.Reg* %4232, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %4233 to i64*
  %4234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4235 = getelementptr inbounds %struct.GPR, %struct.GPR* %4234, i32 0, i32 1
  %4236 = getelementptr inbounds %struct.Reg, %struct.Reg* %4235, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %4236 to i32*
  %4237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4238 = getelementptr inbounds %struct.GPR, %struct.GPR* %4237, i32 0, i32 15
  %4239 = getelementptr inbounds %struct.Reg, %struct.Reg* %4238, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %4239 to i64*
  %4240 = load i64, i64* %RBP.i89
  %4241 = sub i64 %4240, 8
  %4242 = load i32, i32* %EAX.i88
  %4243 = zext i32 %4242 to i64
  %4244 = load i64, i64* %PC.i87
  %4245 = add i64 %4244, 3
  store i64 %4245, i64* %PC.i87
  %4246 = inttoptr i64 %4241 to i32*
  store i32 %4242, i32* %4246
  store %struct.Memory* %loadMem_40b611, %struct.Memory** %MEMORY
  %loadMem_40b614 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4248 = getelementptr inbounds %struct.GPR, %struct.GPR* %4247, i32 0, i32 33
  %4249 = getelementptr inbounds %struct.Reg, %struct.Reg* %4248, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %4249 to i64*
  %4250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4251 = getelementptr inbounds %struct.GPR, %struct.GPR* %4250, i32 0, i32 15
  %4252 = getelementptr inbounds %struct.Reg, %struct.Reg* %4251, i32 0, i32 0
  %RBP.i86 = bitcast %union.anon* %4252 to i64*
  %4253 = load i64, i64* %RBP.i86
  %4254 = sub i64 %4253, 8
  %4255 = load i64, i64* %PC.i85
  %4256 = add i64 %4255, 4
  store i64 %4256, i64* %PC.i85
  %4257 = inttoptr i64 %4254 to i32*
  %4258 = load i32, i32* %4257
  %4259 = sub i32 %4258, 11
  %4260 = icmp ult i32 %4258, 11
  %4261 = zext i1 %4260 to i8
  %4262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4261, i8* %4262, align 1
  %4263 = and i32 %4259, 255
  %4264 = call i32 @llvm.ctpop.i32(i32 %4263)
  %4265 = trunc i32 %4264 to i8
  %4266 = and i8 %4265, 1
  %4267 = xor i8 %4266, 1
  %4268 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4267, i8* %4268, align 1
  %4269 = xor i32 %4258, 11
  %4270 = xor i32 %4269, %4259
  %4271 = lshr i32 %4270, 4
  %4272 = trunc i32 %4271 to i8
  %4273 = and i8 %4272, 1
  %4274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4273, i8* %4274, align 1
  %4275 = icmp eq i32 %4259, 0
  %4276 = zext i1 %4275 to i8
  %4277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4276, i8* %4277, align 1
  %4278 = lshr i32 %4259, 31
  %4279 = trunc i32 %4278 to i8
  %4280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4279, i8* %4280, align 1
  %4281 = lshr i32 %4258, 31
  %4282 = xor i32 %4278, %4281
  %4283 = add i32 %4282, %4281
  %4284 = icmp eq i32 %4283, 2
  %4285 = zext i1 %4284 to i8
  %4286 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4285, i8* %4286, align 1
  store %struct.Memory* %loadMem_40b614, %struct.Memory** %MEMORY
  %loadMem_40b618 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4288 = getelementptr inbounds %struct.GPR, %struct.GPR* %4287, i32 0, i32 33
  %4289 = getelementptr inbounds %struct.Reg, %struct.Reg* %4288, i32 0, i32 0
  %PC.i84 = bitcast %union.anon* %4289 to i64*
  %4290 = load i64, i64* %PC.i84
  %4291 = add i64 %4290, 16
  %4292 = load i64, i64* %PC.i84
  %4293 = add i64 %4292, 6
  %4294 = load i64, i64* %PC.i84
  %4295 = add i64 %4294, 6
  store i64 %4295, i64* %PC.i84
  %4296 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4297 = load i8, i8* %4296, align 1
  store i8 %4297, i8* %BRANCH_TAKEN, align 1
  %4298 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4299 = icmp ne i8 %4297, 0
  %4300 = select i1 %4299, i64 %4291, i64 %4293
  store i64 %4300, i64* %4298, align 8
  store %struct.Memory* %loadMem_40b618, %struct.Memory** %MEMORY
  %loadBr_40b618 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b618 = icmp eq i8 %loadBr_40b618, 1
  br i1 %cmpBr_40b618, label %block_.L_40b628, label %block_40b61e

block_40b61e:                                     ; preds = %block_.L_40b5fd
  %loadMem_40b61e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4302 = getelementptr inbounds %struct.GPR, %struct.GPR* %4301, i32 0, i32 33
  %4303 = getelementptr inbounds %struct.Reg, %struct.Reg* %4302, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %4303 to i64*
  %4304 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4305 = getelementptr inbounds %struct.GPR, %struct.GPR* %4304, i32 0, i32 15
  %4306 = getelementptr inbounds %struct.Reg, %struct.Reg* %4305, i32 0, i32 0
  %RBP.i83 = bitcast %union.anon* %4306 to i64*
  %4307 = load i64, i64* %RBP.i83
  %4308 = sub i64 %4307, 8
  %4309 = load i64, i64* %PC.i82
  %4310 = add i64 %4309, 4
  store i64 %4310, i64* %PC.i82
  %4311 = inttoptr i64 %4308 to i32*
  %4312 = load i32, i32* %4311
  %4313 = sub i32 %4312, 9
  %4314 = icmp ult i32 %4312, 9
  %4315 = zext i1 %4314 to i8
  %4316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4315, i8* %4316, align 1
  %4317 = and i32 %4313, 255
  %4318 = call i32 @llvm.ctpop.i32(i32 %4317)
  %4319 = trunc i32 %4318 to i8
  %4320 = and i8 %4319, 1
  %4321 = xor i8 %4320, 1
  %4322 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4321, i8* %4322, align 1
  %4323 = xor i32 %4312, 9
  %4324 = xor i32 %4323, %4313
  %4325 = lshr i32 %4324, 4
  %4326 = trunc i32 %4325 to i8
  %4327 = and i8 %4326, 1
  %4328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4327, i8* %4328, align 1
  %4329 = icmp eq i32 %4313, 0
  %4330 = zext i1 %4329 to i8
  %4331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4330, i8* %4331, align 1
  %4332 = lshr i32 %4313, 31
  %4333 = trunc i32 %4332 to i8
  %4334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4333, i8* %4334, align 1
  %4335 = lshr i32 %4312, 31
  %4336 = xor i32 %4332, %4335
  %4337 = add i32 %4336, %4335
  %4338 = icmp eq i32 %4337, 2
  %4339 = zext i1 %4338 to i8
  %4340 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4339, i8* %4340, align 1
  store %struct.Memory* %loadMem_40b61e, %struct.Memory** %MEMORY
  %loadMem_40b622 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4341 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4342 = getelementptr inbounds %struct.GPR, %struct.GPR* %4341, i32 0, i32 33
  %4343 = getelementptr inbounds %struct.Reg, %struct.Reg* %4342, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %4343 to i64*
  %4344 = load i64, i64* %PC.i81
  %4345 = add i64 %4344, 18
  %4346 = load i64, i64* %PC.i81
  %4347 = add i64 %4346, 6
  %4348 = load i64, i64* %PC.i81
  %4349 = add i64 %4348, 6
  store i64 %4349, i64* %PC.i81
  %4350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4351 = load i8, i8* %4350, align 1
  %4352 = icmp eq i8 %4351, 0
  %4353 = zext i1 %4352 to i8
  store i8 %4353, i8* %BRANCH_TAKEN, align 1
  %4354 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4355 = select i1 %4352, i64 %4345, i64 %4347
  store i64 %4355, i64* %4354, align 8
  store %struct.Memory* %loadMem_40b622, %struct.Memory** %MEMORY
  %loadBr_40b622 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b622 = icmp eq i8 %loadBr_40b622, 1
  br i1 %cmpBr_40b622, label %block_.L_40b634, label %block_.L_40b628

block_.L_40b628:                                  ; preds = %block_40b61e, %block_.L_40b5fd
  %loadMem_40b628 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4357 = getelementptr inbounds %struct.GPR, %struct.GPR* %4356, i32 0, i32 33
  %4358 = getelementptr inbounds %struct.Reg, %struct.Reg* %4357, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %4358 to i64*
  %4359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4360 = getelementptr inbounds %struct.GPR, %struct.GPR* %4359, i32 0, i32 15
  %4361 = getelementptr inbounds %struct.Reg, %struct.Reg* %4360, i32 0, i32 0
  %RBP.i80 = bitcast %union.anon* %4361 to i64*
  %4362 = load i64, i64* %RBP.i80
  %4363 = sub i64 %4362, 4
  %4364 = load i64, i64* %PC.i79
  %4365 = add i64 %4364, 7
  store i64 %4365, i64* %PC.i79
  %4366 = inttoptr i64 %4363 to i32*
  store i32 2, i32* %4366
  store %struct.Memory* %loadMem_40b628, %struct.Memory** %MEMORY
  %loadMem_40b62f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4368 = getelementptr inbounds %struct.GPR, %struct.GPR* %4367, i32 0, i32 33
  %4369 = getelementptr inbounds %struct.Reg, %struct.Reg* %4368, i32 0, i32 0
  %PC.i78 = bitcast %union.anon* %4369 to i64*
  %4370 = load i64, i64* %PC.i78
  %4371 = add i64 %4370, 233
  %4372 = load i64, i64* %PC.i78
  %4373 = add i64 %4372, 5
  store i64 %4373, i64* %PC.i78
  %4374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4371, i64* %4374, align 8
  store %struct.Memory* %loadMem_40b62f, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b634:                                  ; preds = %block_40b61e
  %loadMem_40b634 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4376 = getelementptr inbounds %struct.GPR, %struct.GPR* %4375, i32 0, i32 33
  %4377 = getelementptr inbounds %struct.Reg, %struct.Reg* %4376, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %4377 to i64*
  %4378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4379 = getelementptr inbounds %struct.GPR, %struct.GPR* %4378, i32 0, i32 1
  %4380 = getelementptr inbounds %struct.Reg, %struct.Reg* %4379, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %4380 to i64*
  %4381 = load i64, i64* %PC.i76
  %4382 = add i64 %4381, 7
  store i64 %4382, i64* %PC.i76
  %4383 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %4384 = zext i32 %4383 to i64
  store i64 %4384, i64* %RAX.i77, align 8
  store %struct.Memory* %loadMem_40b634, %struct.Memory** %MEMORY
  %loadMem_40b63b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4386 = getelementptr inbounds %struct.GPR, %struct.GPR* %4385, i32 0, i32 33
  %4387 = getelementptr inbounds %struct.Reg, %struct.Reg* %4386, i32 0, i32 0
  %PC.i74 = bitcast %union.anon* %4387 to i64*
  %4388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4389 = getelementptr inbounds %struct.GPR, %struct.GPR* %4388, i32 0, i32 1
  %4390 = getelementptr inbounds %struct.Reg, %struct.Reg* %4389, i32 0, i32 0
  %RAX.i75 = bitcast %union.anon* %4390 to i64*
  %4391 = load i64, i64* %RAX.i75
  %4392 = load i64, i64* %PC.i74
  %4393 = add i64 %4392, 3
  store i64 %4393, i64* %PC.i74
  %4394 = trunc i64 %4391 to i32
  %4395 = add i32 13, %4394
  %4396 = zext i32 %4395 to i64
  store i64 %4396, i64* %RAX.i75, align 8
  %4397 = icmp ult i32 %4395, %4394
  %4398 = icmp ult i32 %4395, 13
  %4399 = or i1 %4397, %4398
  %4400 = zext i1 %4399 to i8
  %4401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4400, i8* %4401, align 1
  %4402 = and i32 %4395, 255
  %4403 = call i32 @llvm.ctpop.i32(i32 %4402)
  %4404 = trunc i32 %4403 to i8
  %4405 = and i8 %4404, 1
  %4406 = xor i8 %4405, 1
  %4407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4406, i8* %4407, align 1
  %4408 = xor i64 13, %4391
  %4409 = trunc i64 %4408 to i32
  %4410 = xor i32 %4409, %4395
  %4411 = lshr i32 %4410, 4
  %4412 = trunc i32 %4411 to i8
  %4413 = and i8 %4412, 1
  %4414 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4413, i8* %4414, align 1
  %4415 = icmp eq i32 %4395, 0
  %4416 = zext i1 %4415 to i8
  %4417 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4416, i8* %4417, align 1
  %4418 = lshr i32 %4395, 31
  %4419 = trunc i32 %4418 to i8
  %4420 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4419, i8* %4420, align 1
  %4421 = lshr i32 %4394, 31
  %4422 = xor i32 %4418, %4421
  %4423 = add i32 %4422, %4418
  %4424 = icmp eq i32 %4423, 2
  %4425 = zext i1 %4424 to i8
  %4426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4425, i8* %4426, align 1
  store %struct.Memory* %loadMem_40b63b, %struct.Memory** %MEMORY
  %loadMem_40b63e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4428 = getelementptr inbounds %struct.GPR, %struct.GPR* %4427, i32 0, i32 33
  %4429 = getelementptr inbounds %struct.Reg, %struct.Reg* %4428, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %4429 to i64*
  %4430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4431 = getelementptr inbounds %struct.GPR, %struct.GPR* %4430, i32 0, i32 1
  %4432 = getelementptr inbounds %struct.Reg, %struct.Reg* %4431, i32 0, i32 0
  %EAX.i72 = bitcast %union.anon* %4432 to i32*
  %4433 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4434 = getelementptr inbounds %struct.GPR, %struct.GPR* %4433, i32 0, i32 5
  %4435 = getelementptr inbounds %struct.Reg, %struct.Reg* %4434, i32 0, i32 0
  %RCX.i73 = bitcast %union.anon* %4435 to i64*
  %4436 = load i32, i32* %EAX.i72
  %4437 = zext i32 %4436 to i64
  %4438 = load i64, i64* %PC.i71
  %4439 = add i64 %4438, 3
  store i64 %4439, i64* %PC.i71
  %4440 = shl i64 %4437, 32
  %4441 = ashr exact i64 %4440, 32
  store i64 %4441, i64* %RCX.i73, align 8
  store %struct.Memory* %loadMem_40b63e, %struct.Memory** %MEMORY
  %loadMem_40b641 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4442 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4443 = getelementptr inbounds %struct.GPR, %struct.GPR* %4442, i32 0, i32 33
  %4444 = getelementptr inbounds %struct.Reg, %struct.Reg* %4443, i32 0, i32 0
  %PC.i68 = bitcast %union.anon* %4444 to i64*
  %4445 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4446 = getelementptr inbounds %struct.GPR, %struct.GPR* %4445, i32 0, i32 1
  %4447 = getelementptr inbounds %struct.Reg, %struct.Reg* %4446, i32 0, i32 0
  %RAX.i69 = bitcast %union.anon* %4447 to i64*
  %4448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4449 = getelementptr inbounds %struct.GPR, %struct.GPR* %4448, i32 0, i32 5
  %4450 = getelementptr inbounds %struct.Reg, %struct.Reg* %4449, i32 0, i32 0
  %RCX.i70 = bitcast %union.anon* %4450 to i64*
  %4451 = load i64, i64* %RCX.i70
  %4452 = mul i64 %4451, 4
  %4453 = add i64 %4452, 8807744
  %4454 = load i64, i64* %PC.i68
  %4455 = add i64 %4454, 7
  store i64 %4455, i64* %PC.i68
  %4456 = inttoptr i64 %4453 to i32*
  %4457 = load i32, i32* %4456
  %4458 = zext i32 %4457 to i64
  store i64 %4458, i64* %RAX.i69, align 8
  store %struct.Memory* %loadMem_40b641, %struct.Memory** %MEMORY
  %loadMem_40b648 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4459 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4460 = getelementptr inbounds %struct.GPR, %struct.GPR* %4459, i32 0, i32 33
  %4461 = getelementptr inbounds %struct.Reg, %struct.Reg* %4460, i32 0, i32 0
  %PC.i65 = bitcast %union.anon* %4461 to i64*
  %4462 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4463 = getelementptr inbounds %struct.GPR, %struct.GPR* %4462, i32 0, i32 1
  %4464 = getelementptr inbounds %struct.Reg, %struct.Reg* %4463, i32 0, i32 0
  %EAX.i66 = bitcast %union.anon* %4464 to i32*
  %4465 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4466 = getelementptr inbounds %struct.GPR, %struct.GPR* %4465, i32 0, i32 15
  %4467 = getelementptr inbounds %struct.Reg, %struct.Reg* %4466, i32 0, i32 0
  %RBP.i67 = bitcast %union.anon* %4467 to i64*
  %4468 = load i64, i64* %RBP.i67
  %4469 = sub i64 %4468, 8
  %4470 = load i32, i32* %EAX.i66
  %4471 = zext i32 %4470 to i64
  %4472 = load i64, i64* %PC.i65
  %4473 = add i64 %4472, 3
  store i64 %4473, i64* %PC.i65
  %4474 = inttoptr i64 %4469 to i32*
  store i32 %4470, i32* %4474
  store %struct.Memory* %loadMem_40b648, %struct.Memory** %MEMORY
  %loadMem_40b64b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4476 = getelementptr inbounds %struct.GPR, %struct.GPR* %4475, i32 0, i32 33
  %4477 = getelementptr inbounds %struct.Reg, %struct.Reg* %4476, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %4477 to i64*
  %4478 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4479 = getelementptr inbounds %struct.GPR, %struct.GPR* %4478, i32 0, i32 15
  %4480 = getelementptr inbounds %struct.Reg, %struct.Reg* %4479, i32 0, i32 0
  %RBP.i64 = bitcast %union.anon* %4480 to i64*
  %4481 = load i64, i64* %RBP.i64
  %4482 = sub i64 %4481, 8
  %4483 = load i64, i64* %PC.i63
  %4484 = add i64 %4483, 4
  store i64 %4484, i64* %PC.i63
  %4485 = inttoptr i64 %4482 to i32*
  %4486 = load i32, i32* %4485
  %4487 = sub i32 %4486, 11
  %4488 = icmp ult i32 %4486, 11
  %4489 = zext i1 %4488 to i8
  %4490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4489, i8* %4490, align 1
  %4491 = and i32 %4487, 255
  %4492 = call i32 @llvm.ctpop.i32(i32 %4491)
  %4493 = trunc i32 %4492 to i8
  %4494 = and i8 %4493, 1
  %4495 = xor i8 %4494, 1
  %4496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4495, i8* %4496, align 1
  %4497 = xor i32 %4486, 11
  %4498 = xor i32 %4497, %4487
  %4499 = lshr i32 %4498, 4
  %4500 = trunc i32 %4499 to i8
  %4501 = and i8 %4500, 1
  %4502 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4501, i8* %4502, align 1
  %4503 = icmp eq i32 %4487, 0
  %4504 = zext i1 %4503 to i8
  %4505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4504, i8* %4505, align 1
  %4506 = lshr i32 %4487, 31
  %4507 = trunc i32 %4506 to i8
  %4508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4507, i8* %4508, align 1
  %4509 = lshr i32 %4486, 31
  %4510 = xor i32 %4506, %4509
  %4511 = add i32 %4510, %4509
  %4512 = icmp eq i32 %4511, 2
  %4513 = zext i1 %4512 to i8
  %4514 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4513, i8* %4514, align 1
  store %struct.Memory* %loadMem_40b64b, %struct.Memory** %MEMORY
  %loadMem_40b64f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4515 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4516 = getelementptr inbounds %struct.GPR, %struct.GPR* %4515, i32 0, i32 33
  %4517 = getelementptr inbounds %struct.Reg, %struct.Reg* %4516, i32 0, i32 0
  %PC.i62 = bitcast %union.anon* %4517 to i64*
  %4518 = load i64, i64* %PC.i62
  %4519 = add i64 %4518, 16
  %4520 = load i64, i64* %PC.i62
  %4521 = add i64 %4520, 6
  %4522 = load i64, i64* %PC.i62
  %4523 = add i64 %4522, 6
  store i64 %4523, i64* %PC.i62
  %4524 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4525 = load i8, i8* %4524, align 1
  store i8 %4525, i8* %BRANCH_TAKEN, align 1
  %4526 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4527 = icmp ne i8 %4525, 0
  %4528 = select i1 %4527, i64 %4519, i64 %4521
  store i64 %4528, i64* %4526, align 8
  store %struct.Memory* %loadMem_40b64f, %struct.Memory** %MEMORY
  %loadBr_40b64f = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b64f = icmp eq i8 %loadBr_40b64f, 1
  br i1 %cmpBr_40b64f, label %block_.L_40b65f, label %block_40b655

block_40b655:                                     ; preds = %block_.L_40b634
  %loadMem_40b655 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4529 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4530 = getelementptr inbounds %struct.GPR, %struct.GPR* %4529, i32 0, i32 33
  %4531 = getelementptr inbounds %struct.Reg, %struct.Reg* %4530, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %4531 to i64*
  %4532 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4533 = getelementptr inbounds %struct.GPR, %struct.GPR* %4532, i32 0, i32 15
  %4534 = getelementptr inbounds %struct.Reg, %struct.Reg* %4533, i32 0, i32 0
  %RBP.i61 = bitcast %union.anon* %4534 to i64*
  %4535 = load i64, i64* %RBP.i61
  %4536 = sub i64 %4535, 8
  %4537 = load i64, i64* %PC.i60
  %4538 = add i64 %4537, 4
  store i64 %4538, i64* %PC.i60
  %4539 = inttoptr i64 %4536 to i32*
  %4540 = load i32, i32* %4539
  %4541 = sub i32 %4540, 9
  %4542 = icmp ult i32 %4540, 9
  %4543 = zext i1 %4542 to i8
  %4544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4543, i8* %4544, align 1
  %4545 = and i32 %4541, 255
  %4546 = call i32 @llvm.ctpop.i32(i32 %4545)
  %4547 = trunc i32 %4546 to i8
  %4548 = and i8 %4547, 1
  %4549 = xor i8 %4548, 1
  %4550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4549, i8* %4550, align 1
  %4551 = xor i32 %4540, 9
  %4552 = xor i32 %4551, %4541
  %4553 = lshr i32 %4552, 4
  %4554 = trunc i32 %4553 to i8
  %4555 = and i8 %4554, 1
  %4556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4555, i8* %4556, align 1
  %4557 = icmp eq i32 %4541, 0
  %4558 = zext i1 %4557 to i8
  %4559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4558, i8* %4559, align 1
  %4560 = lshr i32 %4541, 31
  %4561 = trunc i32 %4560 to i8
  %4562 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4561, i8* %4562, align 1
  %4563 = lshr i32 %4540, 31
  %4564 = xor i32 %4560, %4563
  %4565 = add i32 %4564, %4563
  %4566 = icmp eq i32 %4565, 2
  %4567 = zext i1 %4566 to i8
  %4568 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4567, i8* %4568, align 1
  store %struct.Memory* %loadMem_40b655, %struct.Memory** %MEMORY
  %loadMem_40b659 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4570 = getelementptr inbounds %struct.GPR, %struct.GPR* %4569, i32 0, i32 33
  %4571 = getelementptr inbounds %struct.Reg, %struct.Reg* %4570, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %4571 to i64*
  %4572 = load i64, i64* %PC.i59
  %4573 = add i64 %4572, 18
  %4574 = load i64, i64* %PC.i59
  %4575 = add i64 %4574, 6
  %4576 = load i64, i64* %PC.i59
  %4577 = add i64 %4576, 6
  store i64 %4577, i64* %PC.i59
  %4578 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4579 = load i8, i8* %4578, align 1
  %4580 = icmp eq i8 %4579, 0
  %4581 = zext i1 %4580 to i8
  store i8 %4581, i8* %BRANCH_TAKEN, align 1
  %4582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4583 = select i1 %4580, i64 %4573, i64 %4575
  store i64 %4583, i64* %4582, align 8
  store %struct.Memory* %loadMem_40b659, %struct.Memory** %MEMORY
  %loadBr_40b659 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b659 = icmp eq i8 %loadBr_40b659, 1
  br i1 %cmpBr_40b659, label %block_.L_40b66b, label %block_.L_40b65f

block_.L_40b65f:                                  ; preds = %block_40b655, %block_.L_40b634
  %loadMem_40b65f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4584 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4585 = getelementptr inbounds %struct.GPR, %struct.GPR* %4584, i32 0, i32 33
  %4586 = getelementptr inbounds %struct.Reg, %struct.Reg* %4585, i32 0, i32 0
  %PC.i57 = bitcast %union.anon* %4586 to i64*
  %4587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4588 = getelementptr inbounds %struct.GPR, %struct.GPR* %4587, i32 0, i32 15
  %4589 = getelementptr inbounds %struct.Reg, %struct.Reg* %4588, i32 0, i32 0
  %RBP.i58 = bitcast %union.anon* %4589 to i64*
  %4590 = load i64, i64* %RBP.i58
  %4591 = sub i64 %4590, 4
  %4592 = load i64, i64* %PC.i57
  %4593 = add i64 %4592, 7
  store i64 %4593, i64* %PC.i57
  %4594 = inttoptr i64 %4591 to i32*
  store i32 2, i32* %4594
  store %struct.Memory* %loadMem_40b65f, %struct.Memory** %MEMORY
  %loadMem_40b666 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4596 = getelementptr inbounds %struct.GPR, %struct.GPR* %4595, i32 0, i32 33
  %4597 = getelementptr inbounds %struct.Reg, %struct.Reg* %4596, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %4597 to i64*
  %4598 = load i64, i64* %PC.i56
  %4599 = add i64 %4598, 178
  %4600 = load i64, i64* %PC.i56
  %4601 = add i64 %4600, 5
  store i64 %4601, i64* %PC.i56
  %4602 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4599, i64* %4602, align 8
  store %struct.Memory* %loadMem_40b666, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b66b:                                  ; preds = %block_40b655
  %loadMem_40b66b = load %struct.Memory*, %struct.Memory** %MEMORY
  %4603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4604 = getelementptr inbounds %struct.GPR, %struct.GPR* %4603, i32 0, i32 33
  %4605 = getelementptr inbounds %struct.Reg, %struct.Reg* %4604, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %4605 to i64*
  %4606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4607 = getelementptr inbounds %struct.GPR, %struct.GPR* %4606, i32 0, i32 15
  %4608 = getelementptr inbounds %struct.Reg, %struct.Reg* %4607, i32 0, i32 0
  %RBP.i55 = bitcast %union.anon* %4608 to i64*
  %4609 = load i64, i64* %RBP.i55
  %4610 = sub i64 %4609, 8
  %4611 = load i64, i64* %PC.i54
  %4612 = add i64 %4611, 7
  store i64 %4612, i64* %PC.i54
  %4613 = inttoptr i64 %4610 to i32*
  store i32 0, i32* %4613
  store %struct.Memory* %loadMem_40b66b, %struct.Memory** %MEMORY
  br label %block_.L_40b672

block_.L_40b672:                                  ; preds = %block_.L_40b6b0, %block_.L_40b66b
  %loadMem_40b672 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4614 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4615 = getelementptr inbounds %struct.GPR, %struct.GPR* %4614, i32 0, i32 33
  %4616 = getelementptr inbounds %struct.Reg, %struct.Reg* %4615, i32 0, i32 0
  %PC.i52 = bitcast %union.anon* %4616 to i64*
  %4617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4618 = getelementptr inbounds %struct.GPR, %struct.GPR* %4617, i32 0, i32 15
  %4619 = getelementptr inbounds %struct.Reg, %struct.Reg* %4618, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %4619 to i64*
  %4620 = load i64, i64* %RBP.i53
  %4621 = sub i64 %4620, 8
  %4622 = load i64, i64* %PC.i52
  %4623 = add i64 %4622, 4
  store i64 %4623, i64* %PC.i52
  %4624 = inttoptr i64 %4621 to i32*
  %4625 = load i32, i32* %4624
  %4626 = sub i32 %4625, 8
  %4627 = icmp ult i32 %4625, 8
  %4628 = zext i1 %4627 to i8
  %4629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4628, i8* %4629, align 1
  %4630 = and i32 %4626, 255
  %4631 = call i32 @llvm.ctpop.i32(i32 %4630)
  %4632 = trunc i32 %4631 to i8
  %4633 = and i8 %4632, 1
  %4634 = xor i8 %4633, 1
  %4635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4634, i8* %4635, align 1
  %4636 = xor i32 %4625, 8
  %4637 = xor i32 %4636, %4626
  %4638 = lshr i32 %4637, 4
  %4639 = trunc i32 %4638 to i8
  %4640 = and i8 %4639, 1
  %4641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4640, i8* %4641, align 1
  %4642 = icmp eq i32 %4626, 0
  %4643 = zext i1 %4642 to i8
  %4644 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4643, i8* %4644, align 1
  %4645 = lshr i32 %4626, 31
  %4646 = trunc i32 %4645 to i8
  %4647 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4646, i8* %4647, align 1
  %4648 = lshr i32 %4625, 31
  %4649 = xor i32 %4645, %4648
  %4650 = add i32 %4649, %4648
  %4651 = icmp eq i32 %4650, 2
  %4652 = zext i1 %4651 to i8
  %4653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4652, i8* %4653, align 1
  store %struct.Memory* %loadMem_40b672, %struct.Memory** %MEMORY
  %loadMem_40b676 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4655 = getelementptr inbounds %struct.GPR, %struct.GPR* %4654, i32 0, i32 33
  %4656 = getelementptr inbounds %struct.Reg, %struct.Reg* %4655, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %4656 to i64*
  %4657 = load i64, i64* %PC.i51
  %4658 = add i64 %4657, 72
  %4659 = load i64, i64* %PC.i51
  %4660 = add i64 %4659, 6
  %4661 = load i64, i64* %PC.i51
  %4662 = add i64 %4661, 6
  store i64 %4662, i64* %PC.i51
  %4663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %4664 = load i8, i8* %4663, align 1
  %4665 = icmp ne i8 %4664, 0
  %4666 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %4667 = load i8, i8* %4666, align 1
  %4668 = icmp ne i8 %4667, 0
  %4669 = xor i1 %4665, %4668
  %4670 = xor i1 %4669, true
  %4671 = zext i1 %4670 to i8
  store i8 %4671, i8* %BRANCH_TAKEN, align 1
  %4672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4673 = select i1 %4669, i64 %4660, i64 %4658
  store i64 %4673, i64* %4672, align 8
  store %struct.Memory* %loadMem_40b676, %struct.Memory** %MEMORY
  %loadBr_40b676 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b676 = icmp eq i8 %loadBr_40b676, 1
  br i1 %cmpBr_40b676, label %block_.L_40b6be, label %block_40b67c

block_40b67c:                                     ; preds = %block_.L_40b672
  %loadMem_40b67c = load %struct.Memory*, %struct.Memory** %MEMORY
  %4674 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4675 = getelementptr inbounds %struct.GPR, %struct.GPR* %4674, i32 0, i32 33
  %4676 = getelementptr inbounds %struct.Reg, %struct.Reg* %4675, i32 0, i32 0
  %PC.i49 = bitcast %union.anon* %4676 to i64*
  %4677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4678 = getelementptr inbounds %struct.GPR, %struct.GPR* %4677, i32 0, i32 1
  %4679 = getelementptr inbounds %struct.Reg, %struct.Reg* %4678, i32 0, i32 0
  %RAX.i50 = bitcast %union.anon* %4679 to i64*
  %4680 = load i64, i64* %PC.i49
  %4681 = add i64 %4680, 7
  store i64 %4681, i64* %PC.i49
  %4682 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %4683 = zext i32 %4682 to i64
  store i64 %4683, i64* %RAX.i50, align 8
  store %struct.Memory* %loadMem_40b67c, %struct.Memory** %MEMORY
  %loadMem_40b683 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4685 = getelementptr inbounds %struct.GPR, %struct.GPR* %4684, i32 0, i32 33
  %4686 = getelementptr inbounds %struct.Reg, %struct.Reg* %4685, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %4686 to i64*
  %4687 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4688 = getelementptr inbounds %struct.GPR, %struct.GPR* %4687, i32 0, i32 5
  %4689 = getelementptr inbounds %struct.Reg, %struct.Reg* %4688, i32 0, i32 0
  %RCX.i47 = bitcast %union.anon* %4689 to i64*
  %4690 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4691 = getelementptr inbounds %struct.GPR, %struct.GPR* %4690, i32 0, i32 15
  %4692 = getelementptr inbounds %struct.Reg, %struct.Reg* %4691, i32 0, i32 0
  %RBP.i48 = bitcast %union.anon* %4692 to i64*
  %4693 = load i64, i64* %RBP.i48
  %4694 = sub i64 %4693, 8
  %4695 = load i64, i64* %PC.i46
  %4696 = add i64 %4695, 4
  store i64 %4696, i64* %PC.i46
  %4697 = inttoptr i64 %4694 to i32*
  %4698 = load i32, i32* %4697
  %4699 = sext i32 %4698 to i64
  store i64 %4699, i64* %RCX.i47, align 8
  store %struct.Memory* %loadMem_40b683, %struct.Memory** %MEMORY
  %loadMem_40b687 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4700 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4701 = getelementptr inbounds %struct.GPR, %struct.GPR* %4700, i32 0, i32 33
  %4702 = getelementptr inbounds %struct.Reg, %struct.Reg* %4701, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %4702 to i64*
  %4703 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4704 = getelementptr inbounds %struct.GPR, %struct.GPR* %4703, i32 0, i32 1
  %4705 = getelementptr inbounds %struct.Reg, %struct.Reg* %4704, i32 0, i32 0
  %RAX.i44 = bitcast %union.anon* %4705 to i64*
  %4706 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4707 = getelementptr inbounds %struct.GPR, %struct.GPR* %4706, i32 0, i32 5
  %4708 = getelementptr inbounds %struct.Reg, %struct.Reg* %4707, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %4708 to i64*
  %4709 = load i64, i64* %RAX.i44
  %4710 = load i64, i64* %RCX.i45
  %4711 = mul i64 %4710, 4
  %4712 = add i64 %4711, 4357040
  %4713 = load i64, i64* %PC.i43
  %4714 = add i64 %4713, 7
  store i64 %4714, i64* %PC.i43
  %4715 = trunc i64 %4709 to i32
  %4716 = inttoptr i64 %4712 to i32*
  %4717 = load i32, i32* %4716
  %4718 = add i32 %4717, %4715
  %4719 = zext i32 %4718 to i64
  store i64 %4719, i64* %RAX.i44, align 8
  %4720 = icmp ult i32 %4718, %4715
  %4721 = icmp ult i32 %4718, %4717
  %4722 = or i1 %4720, %4721
  %4723 = zext i1 %4722 to i8
  %4724 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4723, i8* %4724, align 1
  %4725 = and i32 %4718, 255
  %4726 = call i32 @llvm.ctpop.i32(i32 %4725)
  %4727 = trunc i32 %4726 to i8
  %4728 = and i8 %4727, 1
  %4729 = xor i8 %4728, 1
  %4730 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4729, i8* %4730, align 1
  %4731 = xor i32 %4717, %4715
  %4732 = xor i32 %4731, %4718
  %4733 = lshr i32 %4732, 4
  %4734 = trunc i32 %4733 to i8
  %4735 = and i8 %4734, 1
  %4736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4735, i8* %4736, align 1
  %4737 = icmp eq i32 %4718, 0
  %4738 = zext i1 %4737 to i8
  %4739 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4738, i8* %4739, align 1
  %4740 = lshr i32 %4718, 31
  %4741 = trunc i32 %4740 to i8
  %4742 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4741, i8* %4742, align 1
  %4743 = lshr i32 %4715, 31
  %4744 = lshr i32 %4717, 31
  %4745 = xor i32 %4740, %4743
  %4746 = xor i32 %4740, %4744
  %4747 = add i32 %4745, %4746
  %4748 = icmp eq i32 %4747, 2
  %4749 = zext i1 %4748 to i8
  %4750 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4749, i8* %4750, align 1
  store %struct.Memory* %loadMem_40b687, %struct.Memory** %MEMORY
  %loadMem_40b68e = load %struct.Memory*, %struct.Memory** %MEMORY
  %4751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4752 = getelementptr inbounds %struct.GPR, %struct.GPR* %4751, i32 0, i32 33
  %4753 = getelementptr inbounds %struct.Reg, %struct.Reg* %4752, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %4753 to i64*
  %4754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4755 = getelementptr inbounds %struct.GPR, %struct.GPR* %4754, i32 0, i32 1
  %4756 = getelementptr inbounds %struct.Reg, %struct.Reg* %4755, i32 0, i32 0
  %EAX.i41 = bitcast %union.anon* %4756 to i32*
  %4757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4758 = getelementptr inbounds %struct.GPR, %struct.GPR* %4757, i32 0, i32 5
  %4759 = getelementptr inbounds %struct.Reg, %struct.Reg* %4758, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %4759 to i64*
  %4760 = load i32, i32* %EAX.i41
  %4761 = zext i32 %4760 to i64
  %4762 = load i64, i64* %PC.i40
  %4763 = add i64 %4762, 3
  store i64 %4763, i64* %PC.i40
  %4764 = shl i64 %4761, 32
  %4765 = ashr exact i64 %4764, 32
  store i64 %4765, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_40b68e, %struct.Memory** %MEMORY
  %loadMem_40b691 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4767 = getelementptr inbounds %struct.GPR, %struct.GPR* %4766, i32 0, i32 33
  %4768 = getelementptr inbounds %struct.Reg, %struct.Reg* %4767, i32 0, i32 0
  %PC.i39 = bitcast %union.anon* %4768 to i64*
  %4769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4770 = getelementptr inbounds %struct.GPR, %struct.GPR* %4769, i32 0, i32 5
  %4771 = getelementptr inbounds %struct.Reg, %struct.Reg* %4770, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %4771 to i64*
  %4772 = load i64, i64* %RCX.i
  %4773 = mul i64 %4772, 4
  %4774 = add i64 %4773, 8807744
  %4775 = load i64, i64* %PC.i39
  %4776 = add i64 %4775, 8
  store i64 %4776, i64* %PC.i39
  %4777 = inttoptr i64 %4774 to i32*
  %4778 = load i32, i32* %4777
  %4779 = sub i32 %4778, 3
  %4780 = icmp ult i32 %4778, 3
  %4781 = zext i1 %4780 to i8
  %4782 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4781, i8* %4782, align 1
  %4783 = and i32 %4779, 255
  %4784 = call i32 @llvm.ctpop.i32(i32 %4783)
  %4785 = trunc i32 %4784 to i8
  %4786 = and i8 %4785, 1
  %4787 = xor i8 %4786, 1
  %4788 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4787, i8* %4788, align 1
  %4789 = xor i32 %4778, 3
  %4790 = xor i32 %4789, %4779
  %4791 = lshr i32 %4790, 4
  %4792 = trunc i32 %4791 to i8
  %4793 = and i8 %4792, 1
  %4794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4793, i8* %4794, align 1
  %4795 = icmp eq i32 %4779, 0
  %4796 = zext i1 %4795 to i8
  %4797 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4796, i8* %4797, align 1
  %4798 = lshr i32 %4779, 31
  %4799 = trunc i32 %4798 to i8
  %4800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4799, i8* %4800, align 1
  %4801 = lshr i32 %4778, 31
  %4802 = xor i32 %4798, %4801
  %4803 = add i32 %4802, %4801
  %4804 = icmp eq i32 %4803, 2
  %4805 = zext i1 %4804 to i8
  %4806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4805, i8* %4806, align 1
  store %struct.Memory* %loadMem_40b691, %struct.Memory** %MEMORY
  %loadMem_40b699 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4808 = getelementptr inbounds %struct.GPR, %struct.GPR* %4807, i32 0, i32 33
  %4809 = getelementptr inbounds %struct.Reg, %struct.Reg* %4808, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %4809 to i64*
  %4810 = load i64, i64* %PC.i38
  %4811 = add i64 %4810, 18
  %4812 = load i64, i64* %PC.i38
  %4813 = add i64 %4812, 6
  %4814 = load i64, i64* %PC.i38
  %4815 = add i64 %4814, 6
  store i64 %4815, i64* %PC.i38
  %4816 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %4817 = load i8, i8* %4816, align 1
  %4818 = icmp eq i8 %4817, 0
  %4819 = zext i1 %4818 to i8
  store i8 %4819, i8* %BRANCH_TAKEN, align 1
  %4820 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4821 = select i1 %4818, i64 %4811, i64 %4813
  store i64 %4821, i64* %4820, align 8
  store %struct.Memory* %loadMem_40b699, %struct.Memory** %MEMORY
  %loadBr_40b699 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b699 = icmp eq i8 %loadBr_40b699, 1
  br i1 %cmpBr_40b699, label %block_.L_40b6ab, label %block_40b69f

block_40b69f:                                     ; preds = %block_40b67c
  %loadMem_40b69f = load %struct.Memory*, %struct.Memory** %MEMORY
  %4822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4823 = getelementptr inbounds %struct.GPR, %struct.GPR* %4822, i32 0, i32 33
  %4824 = getelementptr inbounds %struct.Reg, %struct.Reg* %4823, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %4824 to i64*
  %4825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4826 = getelementptr inbounds %struct.GPR, %struct.GPR* %4825, i32 0, i32 15
  %4827 = getelementptr inbounds %struct.Reg, %struct.Reg* %4826, i32 0, i32 0
  %RBP.i37 = bitcast %union.anon* %4827 to i64*
  %4828 = load i64, i64* %RBP.i37
  %4829 = sub i64 %4828, 4
  %4830 = load i64, i64* %PC.i36
  %4831 = add i64 %4830, 7
  store i64 %4831, i64* %PC.i36
  %4832 = inttoptr i64 %4829 to i32*
  store i32 2, i32* %4832
  store %struct.Memory* %loadMem_40b69f, %struct.Memory** %MEMORY
  %loadMem_40b6a6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4834 = getelementptr inbounds %struct.GPR, %struct.GPR* %4833, i32 0, i32 33
  %4835 = getelementptr inbounds %struct.Reg, %struct.Reg* %4834, i32 0, i32 0
  %PC.i35 = bitcast %union.anon* %4835 to i64*
  %4836 = load i64, i64* %PC.i35
  %4837 = add i64 %4836, 114
  %4838 = load i64, i64* %PC.i35
  %4839 = add i64 %4838, 5
  store i64 %4839, i64* %PC.i35
  %4840 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4837, i64* %4840, align 8
  store %struct.Memory* %loadMem_40b6a6, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b6ab:                                  ; preds = %block_40b67c
  %loadMem_40b6ab = load %struct.Memory*, %struct.Memory** %MEMORY
  %4841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4842 = getelementptr inbounds %struct.GPR, %struct.GPR* %4841, i32 0, i32 33
  %4843 = getelementptr inbounds %struct.Reg, %struct.Reg* %4842, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %4843 to i64*
  %4844 = load i64, i64* %PC.i34
  %4845 = add i64 %4844, 5
  %4846 = load i64, i64* %PC.i34
  %4847 = add i64 %4846, 5
  store i64 %4847, i64* %PC.i34
  %4848 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4845, i64* %4848, align 8
  store %struct.Memory* %loadMem_40b6ab, %struct.Memory** %MEMORY
  br label %block_.L_40b6b0

block_.L_40b6b0:                                  ; preds = %block_.L_40b6ab
  %loadMem_40b6b0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4849 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4850 = getelementptr inbounds %struct.GPR, %struct.GPR* %4849, i32 0, i32 33
  %4851 = getelementptr inbounds %struct.Reg, %struct.Reg* %4850, i32 0, i32 0
  %PC.i31 = bitcast %union.anon* %4851 to i64*
  %4852 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4853 = getelementptr inbounds %struct.GPR, %struct.GPR* %4852, i32 0, i32 1
  %4854 = getelementptr inbounds %struct.Reg, %struct.Reg* %4853, i32 0, i32 0
  %RAX.i32 = bitcast %union.anon* %4854 to i64*
  %4855 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4856 = getelementptr inbounds %struct.GPR, %struct.GPR* %4855, i32 0, i32 15
  %4857 = getelementptr inbounds %struct.Reg, %struct.Reg* %4856, i32 0, i32 0
  %RBP.i33 = bitcast %union.anon* %4857 to i64*
  %4858 = load i64, i64* %RBP.i33
  %4859 = sub i64 %4858, 8
  %4860 = load i64, i64* %PC.i31
  %4861 = add i64 %4860, 3
  store i64 %4861, i64* %PC.i31
  %4862 = inttoptr i64 %4859 to i32*
  %4863 = load i32, i32* %4862
  %4864 = zext i32 %4863 to i64
  store i64 %4864, i64* %RAX.i32, align 8
  store %struct.Memory* %loadMem_40b6b0, %struct.Memory** %MEMORY
  %loadMem_40b6b3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4866 = getelementptr inbounds %struct.GPR, %struct.GPR* %4865, i32 0, i32 33
  %4867 = getelementptr inbounds %struct.Reg, %struct.Reg* %4866, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %4867 to i64*
  %4868 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4869 = getelementptr inbounds %struct.GPR, %struct.GPR* %4868, i32 0, i32 1
  %4870 = getelementptr inbounds %struct.Reg, %struct.Reg* %4869, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %4870 to i64*
  %4871 = load i64, i64* %RAX.i30
  %4872 = load i64, i64* %PC.i29
  %4873 = add i64 %4872, 3
  store i64 %4873, i64* %PC.i29
  %4874 = trunc i64 %4871 to i32
  %4875 = add i32 1, %4874
  %4876 = zext i32 %4875 to i64
  store i64 %4876, i64* %RAX.i30, align 8
  %4877 = icmp ult i32 %4875, %4874
  %4878 = icmp ult i32 %4875, 1
  %4879 = or i1 %4877, %4878
  %4880 = zext i1 %4879 to i8
  %4881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %4880, i8* %4881, align 1
  %4882 = and i32 %4875, 255
  %4883 = call i32 @llvm.ctpop.i32(i32 %4882)
  %4884 = trunc i32 %4883 to i8
  %4885 = and i8 %4884, 1
  %4886 = xor i8 %4885, 1
  %4887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4886, i8* %4887, align 1
  %4888 = xor i64 1, %4871
  %4889 = trunc i64 %4888 to i32
  %4890 = xor i32 %4889, %4875
  %4891 = lshr i32 %4890, 4
  %4892 = trunc i32 %4891 to i8
  %4893 = and i8 %4892, 1
  %4894 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %4893, i8* %4894, align 1
  %4895 = icmp eq i32 %4875, 0
  %4896 = zext i1 %4895 to i8
  %4897 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4896, i8* %4897, align 1
  %4898 = lshr i32 %4875, 31
  %4899 = trunc i32 %4898 to i8
  %4900 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4899, i8* %4900, align 1
  %4901 = lshr i32 %4874, 31
  %4902 = xor i32 %4898, %4901
  %4903 = add i32 %4902, %4898
  %4904 = icmp eq i32 %4903, 2
  %4905 = zext i1 %4904 to i8
  %4906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4905, i8* %4906, align 1
  store %struct.Memory* %loadMem_40b6b3, %struct.Memory** %MEMORY
  %loadMem_40b6b6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4907 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4908 = getelementptr inbounds %struct.GPR, %struct.GPR* %4907, i32 0, i32 33
  %4909 = getelementptr inbounds %struct.Reg, %struct.Reg* %4908, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %4909 to i64*
  %4910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4911 = getelementptr inbounds %struct.GPR, %struct.GPR* %4910, i32 0, i32 1
  %4912 = getelementptr inbounds %struct.Reg, %struct.Reg* %4911, i32 0, i32 0
  %EAX.i27 = bitcast %union.anon* %4912 to i32*
  %4913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4914 = getelementptr inbounds %struct.GPR, %struct.GPR* %4913, i32 0, i32 15
  %4915 = getelementptr inbounds %struct.Reg, %struct.Reg* %4914, i32 0, i32 0
  %RBP.i28 = bitcast %union.anon* %4915 to i64*
  %4916 = load i64, i64* %RBP.i28
  %4917 = sub i64 %4916, 8
  %4918 = load i32, i32* %EAX.i27
  %4919 = zext i32 %4918 to i64
  %4920 = load i64, i64* %PC.i26
  %4921 = add i64 %4920, 3
  store i64 %4921, i64* %PC.i26
  %4922 = inttoptr i64 %4917 to i32*
  store i32 %4918, i32* %4922
  store %struct.Memory* %loadMem_40b6b6, %struct.Memory** %MEMORY
  %loadMem_40b6b9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4923 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4924 = getelementptr inbounds %struct.GPR, %struct.GPR* %4923, i32 0, i32 33
  %4925 = getelementptr inbounds %struct.Reg, %struct.Reg* %4924, i32 0, i32 0
  %PC.i25 = bitcast %union.anon* %4925 to i64*
  %4926 = load i64, i64* %PC.i25
  %4927 = add i64 %4926, -71
  %4928 = load i64, i64* %PC.i25
  %4929 = add i64 %4928, 5
  store i64 %4929, i64* %PC.i25
  %4930 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4927, i64* %4930, align 8
  store %struct.Memory* %loadMem_40b6b9, %struct.Memory** %MEMORY
  br label %block_.L_40b672

block_.L_40b6be:                                  ; preds = %block_.L_40b672
  %loadMem_40b6be = load %struct.Memory*, %struct.Memory** %MEMORY
  %4931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4932 = getelementptr inbounds %struct.GPR, %struct.GPR* %4931, i32 0, i32 33
  %4933 = getelementptr inbounds %struct.Reg, %struct.Reg* %4932, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %4933 to i64*
  %4934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4935 = getelementptr inbounds %struct.GPR, %struct.GPR* %4934, i32 0, i32 9
  %4936 = getelementptr inbounds %struct.Reg, %struct.Reg* %4935, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %4936 to i64*
  %4937 = load i64, i64* %PC.i24
  %4938 = add i64 %4937, 5
  store i64 %4938, i64* %PC.i24
  store i64 1, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_40b6be, %struct.Memory** %MEMORY
  %loadMem_40b6c3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4940 = getelementptr inbounds %struct.GPR, %struct.GPR* %4939, i32 0, i32 33
  %4941 = getelementptr inbounds %struct.Reg, %struct.Reg* %4940, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %4941 to i64*
  %4942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4943 = getelementptr inbounds %struct.GPR, %struct.GPR* %4942, i32 0, i32 11
  %4944 = getelementptr inbounds %struct.Reg, %struct.Reg* %4943, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %4944 to i64*
  %4945 = load i64, i64* %PC.i23
  %4946 = add i64 %4945, 7
  store i64 %4946, i64* %PC.i23
  %4947 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %4948 = zext i32 %4947 to i64
  store i64 %4948, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_40b6c3, %struct.Memory** %MEMORY
  %loadMem1_40b6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %4949 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4950 = getelementptr inbounds %struct.GPR, %struct.GPR* %4949, i32 0, i32 33
  %4951 = getelementptr inbounds %struct.Reg, %struct.Reg* %4950, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %4951 to i64*
  %4952 = load i64, i64* %PC.i22
  %4953 = add i64 %4952, -41706
  %4954 = load i64, i64* %PC.i22
  %4955 = add i64 %4954, 5
  %4956 = load i64, i64* %PC.i22
  %4957 = add i64 %4956, 5
  store i64 %4957, i64* %PC.i22
  %4958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %4959 = load i64, i64* %4958, align 8
  %4960 = add i64 %4959, -8
  %4961 = inttoptr i64 %4960 to i64*
  store i64 %4955, i64* %4961
  store i64 %4960, i64* %4958, align 8
  %4962 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %4953, i64* %4962, align 8
  store %struct.Memory* %loadMem1_40b6ca, %struct.Memory** %MEMORY
  %loadMem2_40b6ca = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_40b6ca = load i64, i64* %3
  %call2_40b6ca = call %struct.Memory* @sub_4013e0.is_attacked(%struct.State* %0, i64 %loadPC_40b6ca, %struct.Memory* %loadMem2_40b6ca)
  store %struct.Memory* %call2_40b6ca, %struct.Memory** %MEMORY
  %loadMem_40b6cf = load %struct.Memory*, %struct.Memory** %MEMORY
  %4963 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4964 = getelementptr inbounds %struct.GPR, %struct.GPR* %4963, i32 0, i32 33
  %4965 = getelementptr inbounds %struct.Reg, %struct.Reg* %4964, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %4965 to i64*
  %4966 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4967 = getelementptr inbounds %struct.GPR, %struct.GPR* %4966, i32 0, i32 1
  %4968 = getelementptr inbounds %struct.Reg, %struct.Reg* %4967, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %4968 to i32*
  %4969 = load i32, i32* %EAX.i
  %4970 = zext i32 %4969 to i64
  %4971 = load i64, i64* %PC.i21
  %4972 = add i64 %4971, 3
  store i64 %4972, i64* %PC.i21
  %4973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %4973, align 1
  %4974 = and i32 %4969, 255
  %4975 = call i32 @llvm.ctpop.i32(i32 %4974)
  %4976 = trunc i32 %4975 to i8
  %4977 = and i8 %4976, 1
  %4978 = xor i8 %4977, 1
  %4979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %4978, i8* %4979, align 1
  %4980 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %4980, align 1
  %4981 = icmp eq i32 %4969, 0
  %4982 = zext i1 %4981 to i8
  %4983 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %4982, i8* %4983, align 1
  %4984 = lshr i32 %4969, 31
  %4985 = trunc i32 %4984 to i8
  %4986 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %4985, i8* %4986, align 1
  %4987 = lshr i32 %4969, 31
  %4988 = xor i32 %4984, %4987
  %4989 = add i32 %4988, %4987
  %4990 = icmp eq i32 %4989, 2
  %4991 = zext i1 %4990 to i8
  %4992 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %4991, i8* %4992, align 1
  store %struct.Memory* %loadMem_40b6cf, %struct.Memory** %MEMORY
  %loadMem_40b6d2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %4993 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4994 = getelementptr inbounds %struct.GPR, %struct.GPR* %4993, i32 0, i32 33
  %4995 = getelementptr inbounds %struct.Reg, %struct.Reg* %4994, i32 0, i32 0
  %PC.i20 = bitcast %union.anon* %4995 to i64*
  %4996 = load i64, i64* %PC.i20
  %4997 = add i64 %4996, 58
  %4998 = load i64, i64* %PC.i20
  %4999 = add i64 %4998, 6
  %5000 = load i64, i64* %PC.i20
  %5001 = add i64 %5000, 6
  store i64 %5001, i64* %PC.i20
  %5002 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5003 = load i8, i8* %5002, align 1
  store i8 %5003, i8* %BRANCH_TAKEN, align 1
  %5004 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5005 = icmp ne i8 %5003, 0
  %5006 = select i1 %5005, i64 %4997, i64 %4999
  store i64 %5006, i64* %5004, align 8
  store %struct.Memory* %loadMem_40b6d2, %struct.Memory** %MEMORY
  %loadBr_40b6d2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b6d2 = icmp eq i8 %loadBr_40b6d2, 1
  br i1 %cmpBr_40b6d2, label %block_.L_40b70c, label %block_40b6d8

block_40b6d8:                                     ; preds = %block_.L_40b6be
  %loadMem_40b6d8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5008 = getelementptr inbounds %struct.GPR, %struct.GPR* %5007, i32 0, i32 33
  %5009 = getelementptr inbounds %struct.Reg, %struct.Reg* %5008, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %5009 to i64*
  %5010 = load i64, i64* %PC.i19
  %5011 = add i64 %5010, 8
  store i64 %5011, i64* %PC.i19
  %5012 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %5013 = sub i32 %5012, 2
  %5014 = icmp ult i32 %5012, 2
  %5015 = zext i1 %5014 to i8
  %5016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5015, i8* %5016, align 1
  %5017 = and i32 %5013, 255
  %5018 = call i32 @llvm.ctpop.i32(i32 %5017)
  %5019 = trunc i32 %5018 to i8
  %5020 = and i8 %5019, 1
  %5021 = xor i8 %5020, 1
  %5022 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5021, i8* %5022, align 1
  %5023 = xor i32 %5012, 2
  %5024 = xor i32 %5023, %5013
  %5025 = lshr i32 %5024, 4
  %5026 = trunc i32 %5025 to i8
  %5027 = and i8 %5026, 1
  %5028 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5027, i8* %5028, align 1
  %5029 = icmp eq i32 %5013, 0
  %5030 = zext i1 %5029 to i8
  %5031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5030, i8* %5031, align 1
  %5032 = lshr i32 %5013, 31
  %5033 = trunc i32 %5032 to i8
  %5034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5033, i8* %5034, align 1
  %5035 = lshr i32 %5012, 31
  %5036 = xor i32 %5032, %5035
  %5037 = add i32 %5036, %5035
  %5038 = icmp eq i32 %5037, 2
  %5039 = zext i1 %5038 to i8
  %5040 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5039, i8* %5040, align 1
  store %struct.Memory* %loadMem_40b6d8, %struct.Memory** %MEMORY
  %loadMem_40b6e0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5041 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5042 = getelementptr inbounds %struct.GPR, %struct.GPR* %5041, i32 0, i32 33
  %5043 = getelementptr inbounds %struct.Reg, %struct.Reg* %5042, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %5043 to i64*
  %5044 = load i64, i64* %PC.i18
  %5045 = add i64 %5044, 20
  %5046 = load i64, i64* %PC.i18
  %5047 = add i64 %5046, 6
  %5048 = load i64, i64* %PC.i18
  %5049 = add i64 %5048, 6
  store i64 %5049, i64* %PC.i18
  %5050 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5051 = load i8, i8* %5050, align 1
  store i8 %5051, i8* %BRANCH_TAKEN, align 1
  %5052 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5053 = icmp ne i8 %5051, 0
  %5054 = select i1 %5053, i64 %5045, i64 %5047
  store i64 %5054, i64* %5052, align 8
  store %struct.Memory* %loadMem_40b6e0, %struct.Memory** %MEMORY
  %loadBr_40b6e0 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b6e0 = icmp eq i8 %loadBr_40b6e0, 1
  br i1 %cmpBr_40b6e0, label %block_.L_40b6f4, label %block_40b6e6

block_40b6e6:                                     ; preds = %block_40b6d8
  %loadMem_40b6e6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5055 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5056 = getelementptr inbounds %struct.GPR, %struct.GPR* %5055, i32 0, i32 33
  %5057 = getelementptr inbounds %struct.Reg, %struct.Reg* %5056, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %5057 to i64*
  %5058 = load i64, i64* %PC.i17
  %5059 = add i64 %5058, 8
  store i64 %5059, i64* %PC.i17
  %5060 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %5061 = sub i32 %5060, 4
  %5062 = icmp ult i32 %5060, 4
  %5063 = zext i1 %5062 to i8
  %5064 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5063, i8* %5064, align 1
  %5065 = and i32 %5061, 255
  %5066 = call i32 @llvm.ctpop.i32(i32 %5065)
  %5067 = trunc i32 %5066 to i8
  %5068 = and i8 %5067, 1
  %5069 = xor i8 %5068, 1
  %5070 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5069, i8* %5070, align 1
  %5071 = xor i32 %5060, 4
  %5072 = xor i32 %5071, %5061
  %5073 = lshr i32 %5072, 4
  %5074 = trunc i32 %5073 to i8
  %5075 = and i8 %5074, 1
  %5076 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5075, i8* %5076, align 1
  %5077 = icmp eq i32 %5061, 0
  %5078 = zext i1 %5077 to i8
  %5079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5078, i8* %5079, align 1
  %5080 = lshr i32 %5061, 31
  %5081 = trunc i32 %5080 to i8
  %5082 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5081, i8* %5082, align 1
  %5083 = lshr i32 %5060, 31
  %5084 = xor i32 %5080, %5083
  %5085 = add i32 %5084, %5083
  %5086 = icmp eq i32 %5085, 2
  %5087 = zext i1 %5086 to i8
  %5088 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5087, i8* %5088, align 1
  store %struct.Memory* %loadMem_40b6e6, %struct.Memory** %MEMORY
  %loadMem_40b6ee = load %struct.Memory*, %struct.Memory** %MEMORY
  %5089 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5090 = getelementptr inbounds %struct.GPR, %struct.GPR* %5089, i32 0, i32 33
  %5091 = getelementptr inbounds %struct.Reg, %struct.Reg* %5090, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %5091 to i64*
  %5092 = load i64, i64* %PC.i16
  %5093 = add i64 %5092, 18
  %5094 = load i64, i64* %PC.i16
  %5095 = add i64 %5094, 6
  %5096 = load i64, i64* %PC.i16
  %5097 = add i64 %5096, 6
  store i64 %5097, i64* %PC.i16
  %5098 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %5099 = load i8, i8* %5098, align 1
  %5100 = icmp eq i8 %5099, 0
  %5101 = zext i1 %5100 to i8
  store i8 %5101, i8* %BRANCH_TAKEN, align 1
  %5102 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5103 = select i1 %5100, i64 %5093, i64 %5095
  store i64 %5103, i64* %5102, align 8
  store %struct.Memory* %loadMem_40b6ee, %struct.Memory** %MEMORY
  %loadBr_40b6ee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_40b6ee = icmp eq i8 %loadBr_40b6ee, 1
  br i1 %cmpBr_40b6ee, label %block_.L_40b700, label %block_.L_40b6f4

block_.L_40b6f4:                                  ; preds = %block_40b6e6, %block_40b6d8
  %loadMem_40b6f4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5105 = getelementptr inbounds %struct.GPR, %struct.GPR* %5104, i32 0, i32 33
  %5106 = getelementptr inbounds %struct.Reg, %struct.Reg* %5105, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %5106 to i64*
  %5107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5108 = getelementptr inbounds %struct.GPR, %struct.GPR* %5107, i32 0, i32 15
  %5109 = getelementptr inbounds %struct.Reg, %struct.Reg* %5108, i32 0, i32 0
  %RBP.i15 = bitcast %union.anon* %5109 to i64*
  %5110 = load i64, i64* %RBP.i15
  %5111 = sub i64 %5110, 4
  %5112 = load i64, i64* %PC.i14
  %5113 = add i64 %5112, 7
  store i64 %5113, i64* %PC.i14
  %5114 = inttoptr i64 %5111 to i32*
  store i32 2, i32* %5114
  store %struct.Memory* %loadMem_40b6f4, %struct.Memory** %MEMORY
  %loadMem_40b6fb = load %struct.Memory*, %struct.Memory** %MEMORY
  %5115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5116 = getelementptr inbounds %struct.GPR, %struct.GPR* %5115, i32 0, i32 33
  %5117 = getelementptr inbounds %struct.Reg, %struct.Reg* %5116, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %5117 to i64*
  %5118 = load i64, i64* %PC.i13
  %5119 = add i64 %5118, 29
  %5120 = load i64, i64* %PC.i13
  %5121 = add i64 %5120, 5
  store i64 %5121, i64* %PC.i13
  %5122 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5119, i64* %5122, align 8
  store %struct.Memory* %loadMem_40b6fb, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b700:                                  ; preds = %block_40b6e6
  %loadMem_40b700 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5124 = getelementptr inbounds %struct.GPR, %struct.GPR* %5123, i32 0, i32 33
  %5125 = getelementptr inbounds %struct.Reg, %struct.Reg* %5124, i32 0, i32 0
  %PC.i11 = bitcast %union.anon* %5125 to i64*
  %5126 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5127 = getelementptr inbounds %struct.GPR, %struct.GPR* %5126, i32 0, i32 15
  %5128 = getelementptr inbounds %struct.Reg, %struct.Reg* %5127, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %5128 to i64*
  %5129 = load i64, i64* %RBP.i12
  %5130 = sub i64 %5129, 4
  %5131 = load i64, i64* %PC.i11
  %5132 = add i64 %5131, 7
  store i64 %5132, i64* %PC.i11
  %5133 = inttoptr i64 %5130 to i32*
  store i32 1, i32* %5133
  store %struct.Memory* %loadMem_40b700, %struct.Memory** %MEMORY
  %loadMem_40b707 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5135 = getelementptr inbounds %struct.GPR, %struct.GPR* %5134, i32 0, i32 33
  %5136 = getelementptr inbounds %struct.Reg, %struct.Reg* %5135, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %5136 to i64*
  %5137 = load i64, i64* %PC.i10
  %5138 = add i64 %5137, 17
  %5139 = load i64, i64* %PC.i10
  %5140 = add i64 %5139, 5
  store i64 %5140, i64* %PC.i10
  %5141 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5138, i64* %5141, align 8
  store %struct.Memory* %loadMem_40b707, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b70c:                                  ; preds = %block_.L_40b6be
  %loadMem_40b70c = load %struct.Memory*, %struct.Memory** %MEMORY
  %5142 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5143 = getelementptr inbounds %struct.GPR, %struct.GPR* %5142, i32 0, i32 33
  %5144 = getelementptr inbounds %struct.Reg, %struct.Reg* %5143, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %5144 to i64*
  %5145 = load i64, i64* %PC.i9
  %5146 = add i64 %5145, 5
  %5147 = load i64, i64* %PC.i9
  %5148 = add i64 %5147, 5
  store i64 %5148, i64* %PC.i9
  %5149 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %5146, i64* %5149, align 8
  store %struct.Memory* %loadMem_40b70c, %struct.Memory** %MEMORY
  br label %block_.L_40b711

block_.L_40b711:                                  ; preds = %block_.L_40b70c, %block_.L_40b49a
  %loadMem_40b711 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5150 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5151 = getelementptr inbounds %struct.GPR, %struct.GPR* %5150, i32 0, i32 33
  %5152 = getelementptr inbounds %struct.Reg, %struct.Reg* %5151, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %5152 to i64*
  %5153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5154 = getelementptr inbounds %struct.GPR, %struct.GPR* %5153, i32 0, i32 15
  %5155 = getelementptr inbounds %struct.Reg, %struct.Reg* %5154, i32 0, i32 0
  %RBP.i8 = bitcast %union.anon* %5155 to i64*
  %5156 = load i64, i64* %RBP.i8
  %5157 = sub i64 %5156, 4
  %5158 = load i64, i64* %PC.i7
  %5159 = add i64 %5158, 7
  store i64 %5159, i64* %PC.i7
  %5160 = inttoptr i64 %5157 to i32*
  store i32 0, i32* %5160
  store %struct.Memory* %loadMem_40b711, %struct.Memory** %MEMORY
  br label %block_.L_40b718

block_.L_40b718:                                  ; preds = %block_.L_40b711, %block_.L_40b700, %block_.L_40b6f4, %block_40b69f, %block_.L_40b65f, %block_.L_40b628, %block_.L_40b5f1, %block_.L_40b5b0, %block_.L_40b56f, %block_.L_40b538, %block_.L_40b501, %block_.L_40b4ca, %block_.L_40b48e, %block_.L_40b482, %block_40b430, %block_.L_40b3f0, %block_.L_40b3b9, %block_.L_40b382, %block_.L_40b341, %block_.L_40b300, %block_.L_40b2c9, %block_.L_40b292, %block_.L_40b25b, %block_40b216
  %loadMem_40b718 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5162 = getelementptr inbounds %struct.GPR, %struct.GPR* %5161, i32 0, i32 33
  %5163 = getelementptr inbounds %struct.Reg, %struct.Reg* %5162, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %5163 to i64*
  %5164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5165 = getelementptr inbounds %struct.GPR, %struct.GPR* %5164, i32 0, i32 1
  %5166 = getelementptr inbounds %struct.Reg, %struct.Reg* %5165, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %5166 to i64*
  %5167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5168 = getelementptr inbounds %struct.GPR, %struct.GPR* %5167, i32 0, i32 15
  %5169 = getelementptr inbounds %struct.Reg, %struct.Reg* %5168, i32 0, i32 0
  %RBP.i6 = bitcast %union.anon* %5169 to i64*
  %5170 = load i64, i64* %RBP.i6
  %5171 = sub i64 %5170, 4
  %5172 = load i64, i64* %PC.i5
  %5173 = add i64 %5172, 3
  store i64 %5173, i64* %PC.i5
  %5174 = inttoptr i64 %5171 to i32*
  %5175 = load i32, i32* %5174
  %5176 = zext i32 %5175 to i64
  store i64 %5176, i64* %RAX.i, align 8
  store %struct.Memory* %loadMem_40b718, %struct.Memory** %MEMORY
  %loadMem_40b71b = load %struct.Memory*, %struct.Memory** %MEMORY
  %5177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5178 = getelementptr inbounds %struct.GPR, %struct.GPR* %5177, i32 0, i32 33
  %5179 = getelementptr inbounds %struct.Reg, %struct.Reg* %5178, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %5179 to i64*
  %5180 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5181 = getelementptr inbounds %struct.GPR, %struct.GPR* %5180, i32 0, i32 13
  %5182 = getelementptr inbounds %struct.Reg, %struct.Reg* %5181, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %5182 to i64*
  %5183 = load i64, i64* %RSP.i
  %5184 = load i64, i64* %PC.i4
  %5185 = add i64 %5184, 4
  store i64 %5185, i64* %PC.i4
  %5186 = add i64 16, %5183
  store i64 %5186, i64* %RSP.i, align 8
  %5187 = icmp ult i64 %5186, %5183
  %5188 = icmp ult i64 %5186, 16
  %5189 = or i1 %5187, %5188
  %5190 = zext i1 %5189 to i8
  %5191 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %5190, i8* %5191, align 1
  %5192 = trunc i64 %5186 to i32
  %5193 = and i32 %5192, 255
  %5194 = call i32 @llvm.ctpop.i32(i32 %5193)
  %5195 = trunc i32 %5194 to i8
  %5196 = and i8 %5195, 1
  %5197 = xor i8 %5196, 1
  %5198 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %5197, i8* %5198, align 1
  %5199 = xor i64 16, %5183
  %5200 = xor i64 %5199, %5186
  %5201 = lshr i64 %5200, 4
  %5202 = trunc i64 %5201 to i8
  %5203 = and i8 %5202, 1
  %5204 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %5203, i8* %5204, align 1
  %5205 = icmp eq i64 %5186, 0
  %5206 = zext i1 %5205 to i8
  %5207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %5206, i8* %5207, align 1
  %5208 = lshr i64 %5186, 63
  %5209 = trunc i64 %5208 to i8
  %5210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %5209, i8* %5210, align 1
  %5211 = lshr i64 %5183, 63
  %5212 = xor i64 %5208, %5211
  %5213 = add i64 %5212, %5208
  %5214 = icmp eq i64 %5213, 2
  %5215 = zext i1 %5214 to i8
  %5216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %5215, i8* %5216, align 1
  store %struct.Memory* %loadMem_40b71b, %struct.Memory** %MEMORY
  %loadMem_40b71f = load %struct.Memory*, %struct.Memory** %MEMORY
  %5217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5218 = getelementptr inbounds %struct.GPR, %struct.GPR* %5217, i32 0, i32 33
  %5219 = getelementptr inbounds %struct.Reg, %struct.Reg* %5218, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %5219 to i64*
  %5220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5221 = getelementptr inbounds %struct.GPR, %struct.GPR* %5220, i32 0, i32 15
  %5222 = getelementptr inbounds %struct.Reg, %struct.Reg* %5221, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %5222 to i64*
  %5223 = load i64, i64* %PC.i2
  %5224 = add i64 %5223, 1
  store i64 %5224, i64* %PC.i2
  %5225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5226 = load i64, i64* %5225, align 8
  %5227 = add i64 %5226, 8
  %5228 = inttoptr i64 %5226 to i64*
  %5229 = load i64, i64* %5228
  store i64 %5229, i64* %RBP.i3, align 8
  store i64 %5227, i64* %5225, align 8
  store %struct.Memory* %loadMem_40b71f, %struct.Memory** %MEMORY
  %loadMem_40b720 = load %struct.Memory*, %struct.Memory** %MEMORY
  %5230 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %5231 = getelementptr inbounds %struct.GPR, %struct.GPR* %5230, i32 0, i32 33
  %5232 = getelementptr inbounds %struct.Reg, %struct.Reg* %5231, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %5232 to i64*
  %5233 = load i64, i64* %PC.i1
  %5234 = add i64 %5233, 1
  store i64 %5234, i64* %PC.i1
  %5235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5237 = load i64, i64* %5236, align 8
  %5238 = inttoptr i64 %5237 to i64*
  %5239 = load i64, i64* %5238
  store i64 %5239, i64* %5235, align 8
  %5240 = add i64 %5237, 8
  store i64 %5240, i64* %5236, align 8
  store %struct.Memory* %loadMem_40b720, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_40b720
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

define %struct.Memory* @routine_subq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 16
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 16
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
  %23 = xor i64 16, %9
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

define %struct.Memory* @routine_cmpl__0x3__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 3
  %10 = icmp ult i32 %8, 3
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 3
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40b222(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40b718(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_cmpl__0x1__0x8661bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x8661bc_type* @G_0x8661bc to i32*)
  %9 = sub i32 %8, 1
  %10 = icmp ult i32 %8, 1
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 1
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40b49f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_0x86bd7c___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl__0xc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 12
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
  %24 = xor i64 12, %9
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

define %struct.Memory* @routine_movl_0x866540___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = mul i64 %12, 4
  %14 = add i64 %13, 8807744
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 7
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %RAX, align 8
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

define %struct.Memory* @routine_cmpl__0x8__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 8
  %16 = icmp ult i32 %14, 8
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
  %25 = xor i32 %14, 8
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

define %struct.Memory* @routine_je_.L_40b25b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xa__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 10
  %16 = icmp ult i32 %14, 10
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
  %25 = xor i32 %14, 10
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

define %struct.Memory* @routine_jne_.L_40b267(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x2__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 2, i32* %13
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

define %struct.Memory* @routine_je_.L_40b292(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b29e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b2c9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b2d5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xc___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 12, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 12
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
  %26 = xor i64 12, %9
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

define %struct.Memory* @routine_je_.L_40b300(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b30c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 13, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 13
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
  %26 = xor i64 13, %9
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

define %struct.Memory* @routine_cmpl__0xc__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 12
  %16 = icmp ult i32 %14, 12
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
  %25 = xor i32 %14, 12
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

define %struct.Memory* @routine_je_.L_40b341(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40b34d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl__0xb___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i32 11, %12
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %13, %12
  %16 = icmp ult i32 %13, 11
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
  %26 = xor i64 11, %9
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

define %struct.Memory* @routine_je_.L_40b382(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b38e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0xb___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 11
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 11
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
  %24 = xor i64 11, %9
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

define %struct.Memory* @routine_je_.L_40b3b9(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b3c5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl__0xd___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i32 %12, 13
  %14 = zext i32 %13 to i64
  store i64 %14, i64* %RAX, align 8
  %15 = icmp ult i32 %12, 13
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
  %24 = xor i64 13, %9
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

define %struct.Memory* @routine_je_.L_40b3f0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b3fc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_40b44f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addl_0x427bb0___rcx_4____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 4357040
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

define %struct.Memory* @routine_cmpl__0x4__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 4
  %17 = icmp ult i32 %15, 4
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 4
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40b43c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40b441(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40b403(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x86bd7c___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x86bd7c_type* @G_0x86bd7c to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.is_attacked(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b49a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 2
  %10 = icmp ult i32 %8, 2
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 2
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40b482(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x4__0x85f154(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = load i64, i64* %PC
  %7 = add i64 %6, 8
  store i64 %7, i64* %PC
  %8 = load i32, i32* bitcast (%G_0x85f154_type* @G_0x85f154 to i32*)
  %9 = sub i32 %8, 4
  %10 = icmp ult i32 %8, 4
  %11 = zext i1 %10 to i8
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %11, i8* %12, align 1
  %13 = and i32 %9, 255
  %14 = call i32 @llvm.ctpop.i32(i32 %13)
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = xor i8 %16, 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %17, i8* %18, align 1
  %19 = xor i32 %8, 4
  %20 = xor i32 %19, %9
  %21 = lshr i32 %20, 4
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %23, i8* %24, align 1
  %25 = icmp eq i32 %9, 0
  %26 = zext i1 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %26, i8* %27, align 1
  %28 = lshr i32 %9, 31
  %29 = trunc i32 %28 to i8
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %29, i8* %30, align 1
  %31 = lshr i32 %8, 31
  %32 = xor i32 %28, %31
  %33 = add i32 %32, %31
  %34 = icmp eq i32 %33, 2
  %35 = zext i1 %34 to i8
  %36 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %35, i8* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40b48e(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x1__MINUS0x4__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_40b711(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x8661d0___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x7__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 7
  %16 = icmp ult i32 %14, 7
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
  %25 = xor i32 %14, 7
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

define %struct.Memory* @routine_je_.L_40b4ca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x9__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 9
  %16 = icmp ult i32 %14, 9
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
  %25 = xor i32 %14, 9
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

define %struct.Memory* @routine_jne_.L_40b4d6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b501(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b50d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b538(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b544(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b56f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b57b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0xb__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i32 %14, 11
  %16 = icmp ult i32 %14, 11
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
  %25 = xor i32 %14, 11
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

define %struct.Memory* @routine_je_.L_40b5b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x1__MINUS0x8__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_40b5bc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b5f1(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b5fd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b628(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b634(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b65f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b66b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_40b6be(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x3__0x866540___rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = mul i64 %9, 4
  %11 = add i64 %10, 8807744
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 8
  store i64 %13, i64* %PC
  %14 = inttoptr i64 %11 to i32*
  %15 = load i32, i32* %14
  %16 = sub i32 %15, 3
  %17 = icmp ult i32 %15, 3
  %18 = zext i1 %17 to i8
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %18, i8* %19, align 1
  %20 = and i32 %16, 255
  %21 = call i32 @llvm.ctpop.i32(i32 %20)
  %22 = trunc i32 %21 to i8
  %23 = and i8 %22, 1
  %24 = xor i8 %23, 1
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %24, i8* %25, align 1
  %26 = xor i32 %15, 3
  %27 = xor i32 %26, %16
  %28 = lshr i32 %27, 4
  %29 = trunc i32 %28 to i8
  %30 = and i8 %29, 1
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %30, i8* %31, align 1
  %32 = icmp eq i32 %16, 0
  %33 = zext i1 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %33, i8* %34, align 1
  %35 = lshr i32 %16, 31
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %36, i8* %37, align 1
  %38 = lshr i32 %15, 31
  %39 = xor i32 %35, %38
  %40 = add i32 %39, %38
  %41 = icmp eq i32 %40, 2
  %42 = zext i1 %41 to i8
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %42, i8* %43, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jne_.L_40b6ab(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_40b6b0(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_40b672(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_0x8661d0___edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x8661d0_type* @G_0x8661d0 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_40b70c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_je_.L_40b6f4(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_40b700(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0x10___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 16, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 16
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
  %25 = xor i64 16, %9
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
