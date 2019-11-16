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
%G_0x20a4d__rip__type = type <{ [8 x i8] }>
%G_0x20aed__rip__type = type <{ [8 x i8] }>
%G_0x677060_type = type <{ [4 x i8] }>
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
@G_0x20a4d__rip_ = global %G_0x20a4d__rip__type zeroinitializer
@G_0x20aed__rip_ = global %G_0x20aed__rip__type zeroinitializer
@G_0x677060 = global %G_0x677060_type zeroinitializer

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

declare %struct.Memory* @sub_4527a0.FNorm(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_452090.FSum(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_451fe0.FScale(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @Plan7Renormalize(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_433c30 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_433c30, %struct.Memory** %MEMORY
  %loadMem_433c31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i367 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i368 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i369 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i368
  %27 = load i64, i64* %PC.i367
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i367
  store i64 %26, i64* %RBP.i369, align 8
  store %struct.Memory* %loadMem_433c31, %struct.Memory** %MEMORY
  %loadMem_433c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i366 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i366
  %36 = load i64, i64* %PC.i365
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i365
  %38 = sub i64 %35, 32
  store i64 %38, i64* %RSP.i366, align 8
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
  store %struct.Memory* %loadMem_433c34, %struct.Memory** %MEMORY
  %loadMem_433c38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i362 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 11
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RDI.i363 = bitcast %union.anon* %72 to i64*
  %73 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %74 = getelementptr inbounds %struct.GPR, %struct.GPR* %73, i32 0, i32 15
  %75 = getelementptr inbounds %struct.Reg, %struct.Reg* %74, i32 0, i32 0
  %RBP.i364 = bitcast %union.anon* %75 to i64*
  %76 = load i64, i64* %RBP.i364
  %77 = sub i64 %76, 8
  %78 = load i64, i64* %RDI.i363
  %79 = load i64, i64* %PC.i362
  %80 = add i64 %79, 4
  store i64 %80, i64* %PC.i362
  %81 = inttoptr i64 %77 to i64*
  store i64 %78, i64* %81
  store %struct.Memory* %loadMem_433c38, %struct.Memory** %MEMORY
  %loadMem_433c3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %82 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %83 = getelementptr inbounds %struct.GPR, %struct.GPR* %82, i32 0, i32 33
  %84 = getelementptr inbounds %struct.Reg, %struct.Reg* %83, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %84 to i64*
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %86 = getelementptr inbounds %struct.GPR, %struct.GPR* %85, i32 0, i32 15
  %87 = getelementptr inbounds %struct.Reg, %struct.Reg* %86, i32 0, i32 0
  %RBP.i361 = bitcast %union.anon* %87 to i64*
  %88 = load i64, i64* %RBP.i361
  %89 = sub i64 %88, 12
  %90 = load i64, i64* %PC.i360
  %91 = add i64 %90, 7
  store i64 %91, i64* %PC.i360
  %92 = inttoptr i64 %89 to i32*
  store i32 1, i32* %92
  store %struct.Memory* %loadMem_433c3c, %struct.Memory** %MEMORY
  br label %block_.L_433c43

block_.L_433c43:                                  ; preds = %block_433c56, %entry
  %loadMem_433c43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %93 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %94 = getelementptr inbounds %struct.GPR, %struct.GPR* %93, i32 0, i32 33
  %95 = getelementptr inbounds %struct.Reg, %struct.Reg* %94, i32 0, i32 0
  %PC.i357 = bitcast %union.anon* %95 to i64*
  %96 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %97 = getelementptr inbounds %struct.GPR, %struct.GPR* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.Reg, %struct.Reg* %97, i32 0, i32 0
  %RAX.i358 = bitcast %union.anon* %98 to i64*
  %99 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %100 = getelementptr inbounds %struct.GPR, %struct.GPR* %99, i32 0, i32 15
  %101 = getelementptr inbounds %struct.Reg, %struct.Reg* %100, i32 0, i32 0
  %RBP.i359 = bitcast %union.anon* %101 to i64*
  %102 = load i64, i64* %RBP.i359
  %103 = sub i64 %102, 12
  %104 = load i64, i64* %PC.i357
  %105 = add i64 %104, 3
  store i64 %105, i64* %PC.i357
  %106 = inttoptr i64 %103 to i32*
  %107 = load i32, i32* %106
  %108 = zext i32 %107 to i64
  store i64 %108, i64* %RAX.i358, align 8
  store %struct.Memory* %loadMem_433c43, %struct.Memory** %MEMORY
  %loadMem_433c46 = load %struct.Memory*, %struct.Memory** %MEMORY
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 33
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %PC.i354 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 5
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RCX.i355 = bitcast %union.anon* %114 to i64*
  %115 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %116 = getelementptr inbounds %struct.GPR, %struct.GPR* %115, i32 0, i32 15
  %117 = getelementptr inbounds %struct.Reg, %struct.Reg* %116, i32 0, i32 0
  %RBP.i356 = bitcast %union.anon* %117 to i64*
  %118 = load i64, i64* %RBP.i356
  %119 = sub i64 %118, 8
  %120 = load i64, i64* %PC.i354
  %121 = add i64 %120, 4
  store i64 %121, i64* %PC.i354
  %122 = inttoptr i64 %119 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %RCX.i355, align 8
  store %struct.Memory* %loadMem_433c46, %struct.Memory** %MEMORY
  %loadMem_433c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 33
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %PC.i351 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %EAX.i352 = bitcast %union.anon* %129 to i32*
  %130 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %131 = getelementptr inbounds %struct.GPR, %struct.GPR* %130, i32 0, i32 5
  %132 = getelementptr inbounds %struct.Reg, %struct.Reg* %131, i32 0, i32 0
  %RCX.i353 = bitcast %union.anon* %132 to i64*
  %133 = load i32, i32* %EAX.i352
  %134 = zext i32 %133 to i64
  %135 = load i64, i64* %RCX.i353
  %136 = add i64 %135, 136
  %137 = load i64, i64* %PC.i351
  %138 = add i64 %137, 6
  store i64 %138, i64* %PC.i351
  %139 = inttoptr i64 %136 to i32*
  %140 = load i32, i32* %139
  %141 = sub i32 %133, %140
  %142 = icmp ult i32 %133, %140
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
  %151 = xor i32 %140, %133
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
  %163 = lshr i32 %133, 31
  %164 = lshr i32 %140, 31
  %165 = xor i32 %164, %163
  %166 = xor i32 %160, %163
  %167 = add i32 %166, %165
  %168 = icmp eq i32 %167, 2
  %169 = zext i1 %168 to i8
  %170 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %169, i8* %170, align 1
  store %struct.Memory* %loadMem_433c4a, %struct.Memory** %MEMORY
  %loadMem_433c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %172 = getelementptr inbounds %struct.GPR, %struct.GPR* %171, i32 0, i32 33
  %173 = getelementptr inbounds %struct.Reg, %struct.Reg* %172, i32 0, i32 0
  %PC.i350 = bitcast %union.anon* %173 to i64*
  %174 = load i64, i64* %PC.i350
  %175 = add i64 %174, 51
  %176 = load i64, i64* %PC.i350
  %177 = add i64 %176, 6
  %178 = load i64, i64* %PC.i350
  %179 = add i64 %178, 6
  store i64 %179, i64* %PC.i350
  %180 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %181 = load i8, i8* %180, align 1
  %182 = icmp eq i8 %181, 0
  %183 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %184 = load i8, i8* %183, align 1
  %185 = icmp ne i8 %184, 0
  %186 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %187 = load i8, i8* %186, align 1
  %188 = icmp ne i8 %187, 0
  %189 = xor i1 %185, %188
  %190 = xor i1 %189, true
  %191 = and i1 %182, %190
  %192 = zext i1 %191 to i8
  store i8 %192, i8* %BRANCH_TAKEN, align 1
  %193 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %194 = select i1 %191, i64 %175, i64 %177
  store i64 %194, i64* %193, align 8
  store %struct.Memory* %loadMem_433c50, %struct.Memory** %MEMORY
  %loadBr_433c50 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433c50 = icmp eq i8 %loadBr_433c50, 1
  br i1 %cmpBr_433c50, label %block_.L_433c83, label %block_433c56

block_433c56:                                     ; preds = %block_.L_433c43
  %loadMem_433c56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %195 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %196 = getelementptr inbounds %struct.GPR, %struct.GPR* %195, i32 0, i32 33
  %197 = getelementptr inbounds %struct.Reg, %struct.Reg* %196, i32 0, i32 0
  %PC.i347 = bitcast %union.anon* %197 to i64*
  %198 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %199 = getelementptr inbounds %struct.GPR, %struct.GPR* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.Reg, %struct.Reg* %199, i32 0, i32 0
  %RAX.i348 = bitcast %union.anon* %200 to i64*
  %201 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %202 = getelementptr inbounds %struct.GPR, %struct.GPR* %201, i32 0, i32 15
  %203 = getelementptr inbounds %struct.Reg, %struct.Reg* %202, i32 0, i32 0
  %RBP.i349 = bitcast %union.anon* %203 to i64*
  %204 = load i64, i64* %RBP.i349
  %205 = sub i64 %204, 8
  %206 = load i64, i64* %PC.i347
  %207 = add i64 %206, 4
  store i64 %207, i64* %PC.i347
  %208 = inttoptr i64 %205 to i64*
  %209 = load i64, i64* %208
  store i64 %209, i64* %RAX.i348, align 8
  store %struct.Memory* %loadMem_433c56, %struct.Memory** %MEMORY
  %loadMem_433c5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %211 = getelementptr inbounds %struct.GPR, %struct.GPR* %210, i32 0, i32 33
  %212 = getelementptr inbounds %struct.Reg, %struct.Reg* %211, i32 0, i32 0
  %PC.i345 = bitcast %union.anon* %212 to i64*
  %213 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %214 = getelementptr inbounds %struct.GPR, %struct.GPR* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.Reg, %struct.Reg* %214, i32 0, i32 0
  %RAX.i346 = bitcast %union.anon* %215 to i64*
  %216 = load i64, i64* %RAX.i346
  %217 = add i64 %216, 152
  %218 = load i64, i64* %PC.i345
  %219 = add i64 %218, 7
  store i64 %219, i64* %PC.i345
  %220 = inttoptr i64 %217 to i64*
  %221 = load i64, i64* %220
  store i64 %221, i64* %RAX.i346, align 8
  store %struct.Memory* %loadMem_433c5a, %struct.Memory** %MEMORY
  %loadMem_433c61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %223 = getelementptr inbounds %struct.GPR, %struct.GPR* %222, i32 0, i32 33
  %224 = getelementptr inbounds %struct.Reg, %struct.Reg* %223, i32 0, i32 0
  %PC.i342 = bitcast %union.anon* %224 to i64*
  %225 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %226 = getelementptr inbounds %struct.GPR, %struct.GPR* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.Reg, %struct.Reg* %226, i32 0, i32 0
  %RCX.i343 = bitcast %union.anon* %227 to i64*
  %228 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %229 = getelementptr inbounds %struct.GPR, %struct.GPR* %228, i32 0, i32 15
  %230 = getelementptr inbounds %struct.Reg, %struct.Reg* %229, i32 0, i32 0
  %RBP.i344 = bitcast %union.anon* %230 to i64*
  %231 = load i64, i64* %RBP.i344
  %232 = sub i64 %231, 12
  %233 = load i64, i64* %PC.i342
  %234 = add i64 %233, 4
  store i64 %234, i64* %PC.i342
  %235 = inttoptr i64 %232 to i32*
  %236 = load i32, i32* %235
  %237 = sext i32 %236 to i64
  store i64 %237, i64* %RCX.i343, align 8
  store %struct.Memory* %loadMem_433c61, %struct.Memory** %MEMORY
  %loadMem_433c65 = load %struct.Memory*, %struct.Memory** %MEMORY
  %238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %239 = getelementptr inbounds %struct.GPR, %struct.GPR* %238, i32 0, i32 33
  %240 = getelementptr inbounds %struct.Reg, %struct.Reg* %239, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %240 to i64*
  %241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %242 = getelementptr inbounds %struct.GPR, %struct.GPR* %241, i32 0, i32 1
  %243 = getelementptr inbounds %struct.Reg, %struct.Reg* %242, i32 0, i32 0
  %RAX.i339 = bitcast %union.anon* %243 to i64*
  %244 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %245 = getelementptr inbounds %struct.GPR, %struct.GPR* %244, i32 0, i32 5
  %246 = getelementptr inbounds %struct.Reg, %struct.Reg* %245, i32 0, i32 0
  %RCX.i340 = bitcast %union.anon* %246 to i64*
  %247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %248 = getelementptr inbounds %struct.GPR, %struct.GPR* %247, i32 0, i32 11
  %249 = getelementptr inbounds %struct.Reg, %struct.Reg* %248, i32 0, i32 0
  %RDI.i341 = bitcast %union.anon* %249 to i64*
  %250 = load i64, i64* %RAX.i339
  %251 = load i64, i64* %RCX.i340
  %252 = mul i64 %251, 8
  %253 = add i64 %252, %250
  %254 = load i64, i64* %PC.i338
  %255 = add i64 %254, 4
  store i64 %255, i64* %PC.i338
  %256 = inttoptr i64 %253 to i64*
  %257 = load i64, i64* %256
  store i64 %257, i64* %RDI.i341, align 8
  store %struct.Memory* %loadMem_433c65, %struct.Memory** %MEMORY
  %loadMem_433c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %259 = getelementptr inbounds %struct.GPR, %struct.GPR* %258, i32 0, i32 33
  %260 = getelementptr inbounds %struct.Reg, %struct.Reg* %259, i32 0, i32 0
  %PC.i336 = bitcast %union.anon* %260 to i64*
  %261 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %262 = getelementptr inbounds %struct.GPR, %struct.GPR* %261, i32 0, i32 9
  %263 = getelementptr inbounds %struct.Reg, %struct.Reg* %262, i32 0, i32 0
  %RSI.i337 = bitcast %union.anon* %263 to i64*
  %264 = load i64, i64* %PC.i336
  %265 = add i64 %264, 7
  store i64 %265, i64* %PC.i336
  %266 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %267 = zext i32 %266 to i64
  store i64 %267, i64* %RSI.i337, align 8
  store %struct.Memory* %loadMem_433c69, %struct.Memory** %MEMORY
  %loadMem1_433c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %269 = getelementptr inbounds %struct.GPR, %struct.GPR* %268, i32 0, i32 33
  %270 = getelementptr inbounds %struct.Reg, %struct.Reg* %269, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %270 to i64*
  %271 = load i64, i64* %PC.i335
  %272 = add i64 %271, 125744
  %273 = load i64, i64* %PC.i335
  %274 = add i64 %273, 5
  %275 = load i64, i64* %PC.i335
  %276 = add i64 %275, 5
  store i64 %276, i64* %PC.i335
  %277 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add i64 %278, -8
  %280 = inttoptr i64 %279 to i64*
  store i64 %274, i64* %280
  store i64 %279, i64* %277, align 8
  %281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %272, i64* %281, align 8
  store %struct.Memory* %loadMem1_433c70, %struct.Memory** %MEMORY
  %loadMem2_433c70 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433c70 = load i64, i64* %3
  %call2_433c70 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_433c70, %struct.Memory* %loadMem2_433c70)
  store %struct.Memory* %call2_433c70, %struct.Memory** %MEMORY
  %loadMem_433c75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 33
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %PC.i332 = bitcast %union.anon* %284 to i64*
  %285 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %286 = getelementptr inbounds %struct.GPR, %struct.GPR* %285, i32 0, i32 1
  %287 = getelementptr inbounds %struct.Reg, %struct.Reg* %286, i32 0, i32 0
  %RAX.i333 = bitcast %union.anon* %287 to i64*
  %288 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %289 = getelementptr inbounds %struct.GPR, %struct.GPR* %288, i32 0, i32 15
  %290 = getelementptr inbounds %struct.Reg, %struct.Reg* %289, i32 0, i32 0
  %RBP.i334 = bitcast %union.anon* %290 to i64*
  %291 = load i64, i64* %RBP.i334
  %292 = sub i64 %291, 12
  %293 = load i64, i64* %PC.i332
  %294 = add i64 %293, 3
  store i64 %294, i64* %PC.i332
  %295 = inttoptr i64 %292 to i32*
  %296 = load i32, i32* %295
  %297 = zext i32 %296 to i64
  store i64 %297, i64* %RAX.i333, align 8
  store %struct.Memory* %loadMem_433c75, %struct.Memory** %MEMORY
  %loadMem_433c78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %299 = getelementptr inbounds %struct.GPR, %struct.GPR* %298, i32 0, i32 33
  %300 = getelementptr inbounds %struct.Reg, %struct.Reg* %299, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %300 to i64*
  %301 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %302 = getelementptr inbounds %struct.GPR, %struct.GPR* %301, i32 0, i32 1
  %303 = getelementptr inbounds %struct.Reg, %struct.Reg* %302, i32 0, i32 0
  %RAX.i331 = bitcast %union.anon* %303 to i64*
  %304 = load i64, i64* %RAX.i331
  %305 = load i64, i64* %PC.i330
  %306 = add i64 %305, 3
  store i64 %306, i64* %PC.i330
  %307 = trunc i64 %304 to i32
  %308 = add i32 1, %307
  %309 = zext i32 %308 to i64
  store i64 %309, i64* %RAX.i331, align 8
  %310 = icmp ult i32 %308, %307
  %311 = icmp ult i32 %308, 1
  %312 = or i1 %310, %311
  %313 = zext i1 %312 to i8
  %314 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %313, i8* %314, align 1
  %315 = and i32 %308, 255
  %316 = call i32 @llvm.ctpop.i32(i32 %315)
  %317 = trunc i32 %316 to i8
  %318 = and i8 %317, 1
  %319 = xor i8 %318, 1
  %320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %319, i8* %320, align 1
  %321 = xor i64 1, %304
  %322 = trunc i64 %321 to i32
  %323 = xor i32 %322, %308
  %324 = lshr i32 %323, 4
  %325 = trunc i32 %324 to i8
  %326 = and i8 %325, 1
  %327 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %326, i8* %327, align 1
  %328 = icmp eq i32 %308, 0
  %329 = zext i1 %328 to i8
  %330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %329, i8* %330, align 1
  %331 = lshr i32 %308, 31
  %332 = trunc i32 %331 to i8
  %333 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %332, i8* %333, align 1
  %334 = lshr i32 %307, 31
  %335 = xor i32 %331, %334
  %336 = add i32 %335, %331
  %337 = icmp eq i32 %336, 2
  %338 = zext i1 %337 to i8
  %339 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %338, i8* %339, align 1
  store %struct.Memory* %loadMem_433c78, %struct.Memory** %MEMORY
  %loadMem_433c7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %341 = getelementptr inbounds %struct.GPR, %struct.GPR* %340, i32 0, i32 33
  %342 = getelementptr inbounds %struct.Reg, %struct.Reg* %341, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %342 to i64*
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %EAX.i328 = bitcast %union.anon* %345 to i32*
  %346 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %347 = getelementptr inbounds %struct.GPR, %struct.GPR* %346, i32 0, i32 15
  %348 = getelementptr inbounds %struct.Reg, %struct.Reg* %347, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %348 to i64*
  %349 = load i64, i64* %RBP.i329
  %350 = sub i64 %349, 12
  %351 = load i32, i32* %EAX.i328
  %352 = zext i32 %351 to i64
  %353 = load i64, i64* %PC.i327
  %354 = add i64 %353, 3
  store i64 %354, i64* %PC.i327
  %355 = inttoptr i64 %350 to i32*
  store i32 %351, i32* %355
  store %struct.Memory* %loadMem_433c7b, %struct.Memory** %MEMORY
  %loadMem_433c7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %356 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %357 = getelementptr inbounds %struct.GPR, %struct.GPR* %356, i32 0, i32 33
  %358 = getelementptr inbounds %struct.Reg, %struct.Reg* %357, i32 0, i32 0
  %PC.i326 = bitcast %union.anon* %358 to i64*
  %359 = load i64, i64* %PC.i326
  %360 = add i64 %359, -59
  %361 = load i64, i64* %PC.i326
  %362 = add i64 %361, 5
  store i64 %362, i64* %PC.i326
  %363 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %360, i64* %363, align 8
  store %struct.Memory* %loadMem_433c7e, %struct.Memory** %MEMORY
  br label %block_.L_433c43

block_.L_433c83:                                  ; preds = %block_.L_433c43
  %loadMem_433c83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %364 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %365 = getelementptr inbounds %struct.GPR, %struct.GPR* %364, i32 0, i32 33
  %366 = getelementptr inbounds %struct.Reg, %struct.Reg* %365, i32 0, i32 0
  %PC.i324 = bitcast %union.anon* %366 to i64*
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 15
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %RBP.i325 = bitcast %union.anon* %369 to i64*
  %370 = load i64, i64* %RBP.i325
  %371 = sub i64 %370, 12
  %372 = load i64, i64* %PC.i324
  %373 = add i64 %372, 7
  store i64 %373, i64* %PC.i324
  %374 = inttoptr i64 %371 to i32*
  store i32 1, i32* %374
  store %struct.Memory* %loadMem_433c83, %struct.Memory** %MEMORY
  br label %block_.L_433c8a

block_.L_433c8a:                                  ; preds = %block_433c9d, %block_.L_433c83
  %loadMem_433c8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i321 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i322 = bitcast %union.anon* %380 to i64*
  %381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %382 = getelementptr inbounds %struct.GPR, %struct.GPR* %381, i32 0, i32 15
  %383 = getelementptr inbounds %struct.Reg, %struct.Reg* %382, i32 0, i32 0
  %RBP.i323 = bitcast %union.anon* %383 to i64*
  %384 = load i64, i64* %RBP.i323
  %385 = sub i64 %384, 12
  %386 = load i64, i64* %PC.i321
  %387 = add i64 %386, 3
  store i64 %387, i64* %PC.i321
  %388 = inttoptr i64 %385 to i32*
  %389 = load i32, i32* %388
  %390 = zext i32 %389 to i64
  store i64 %390, i64* %RAX.i322, align 8
  store %struct.Memory* %loadMem_433c8a, %struct.Memory** %MEMORY
  %loadMem_433c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %392 = getelementptr inbounds %struct.GPR, %struct.GPR* %391, i32 0, i32 33
  %393 = getelementptr inbounds %struct.Reg, %struct.Reg* %392, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %393 to i64*
  %394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %395 = getelementptr inbounds %struct.GPR, %struct.GPR* %394, i32 0, i32 5
  %396 = getelementptr inbounds %struct.Reg, %struct.Reg* %395, i32 0, i32 0
  %RCX.i319 = bitcast %union.anon* %396 to i64*
  %397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %398 = getelementptr inbounds %struct.GPR, %struct.GPR* %397, i32 0, i32 15
  %399 = getelementptr inbounds %struct.Reg, %struct.Reg* %398, i32 0, i32 0
  %RBP.i320 = bitcast %union.anon* %399 to i64*
  %400 = load i64, i64* %RBP.i320
  %401 = sub i64 %400, 8
  %402 = load i64, i64* %PC.i318
  %403 = add i64 %402, 4
  store i64 %403, i64* %PC.i318
  %404 = inttoptr i64 %401 to i64*
  %405 = load i64, i64* %404
  store i64 %405, i64* %RCX.i319, align 8
  store %struct.Memory* %loadMem_433c8d, %struct.Memory** %MEMORY
  %loadMem_433c91 = load %struct.Memory*, %struct.Memory** %MEMORY
  %406 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %407 = getelementptr inbounds %struct.GPR, %struct.GPR* %406, i32 0, i32 33
  %408 = getelementptr inbounds %struct.Reg, %struct.Reg* %407, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %408 to i64*
  %409 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %410 = getelementptr inbounds %struct.GPR, %struct.GPR* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.Reg, %struct.Reg* %410, i32 0, i32 0
  %EAX.i316 = bitcast %union.anon* %411 to i32*
  %412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %413 = getelementptr inbounds %struct.GPR, %struct.GPR* %412, i32 0, i32 5
  %414 = getelementptr inbounds %struct.Reg, %struct.Reg* %413, i32 0, i32 0
  %RCX.i317 = bitcast %union.anon* %414 to i64*
  %415 = load i32, i32* %EAX.i316
  %416 = zext i32 %415 to i64
  %417 = load i64, i64* %RCX.i317
  %418 = add i64 %417, 136
  %419 = load i64, i64* %PC.i315
  %420 = add i64 %419, 6
  store i64 %420, i64* %PC.i315
  %421 = inttoptr i64 %418 to i32*
  %422 = load i32, i32* %421
  %423 = sub i32 %415, %422
  %424 = icmp ult i32 %415, %422
  %425 = zext i1 %424 to i8
  %426 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %425, i8* %426, align 1
  %427 = and i32 %423, 255
  %428 = call i32 @llvm.ctpop.i32(i32 %427)
  %429 = trunc i32 %428 to i8
  %430 = and i8 %429, 1
  %431 = xor i8 %430, 1
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %431, i8* %432, align 1
  %433 = xor i32 %422, %415
  %434 = xor i32 %433, %423
  %435 = lshr i32 %434, 4
  %436 = trunc i32 %435 to i8
  %437 = and i8 %436, 1
  %438 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %437, i8* %438, align 1
  %439 = icmp eq i32 %423, 0
  %440 = zext i1 %439 to i8
  %441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %440, i8* %441, align 1
  %442 = lshr i32 %423, 31
  %443 = trunc i32 %442 to i8
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %443, i8* %444, align 1
  %445 = lshr i32 %415, 31
  %446 = lshr i32 %422, 31
  %447 = xor i32 %446, %445
  %448 = xor i32 %442, %445
  %449 = add i32 %448, %447
  %450 = icmp eq i32 %449, 2
  %451 = zext i1 %450 to i8
  %452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %451, i8* %452, align 1
  store %struct.Memory* %loadMem_433c91, %struct.Memory** %MEMORY
  %loadMem_433c97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %454 = getelementptr inbounds %struct.GPR, %struct.GPR* %453, i32 0, i32 33
  %455 = getelementptr inbounds %struct.Reg, %struct.Reg* %454, i32 0, i32 0
  %PC.i314 = bitcast %union.anon* %455 to i64*
  %456 = load i64, i64* %PC.i314
  %457 = add i64 %456, 51
  %458 = load i64, i64* %PC.i314
  %459 = add i64 %458, 6
  %460 = load i64, i64* %PC.i314
  %461 = add i64 %460, 6
  store i64 %461, i64* %PC.i314
  %462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %463 = load i8, i8* %462, align 1
  %464 = icmp ne i8 %463, 0
  %465 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %466 = load i8, i8* %465, align 1
  %467 = icmp ne i8 %466, 0
  %468 = xor i1 %464, %467
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i8
  store i8 %470, i8* %BRANCH_TAKEN, align 1
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %472 = select i1 %468, i64 %459, i64 %457
  store i64 %472, i64* %471, align 8
  store %struct.Memory* %loadMem_433c97, %struct.Memory** %MEMORY
  %loadBr_433c97 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433c97 = icmp eq i8 %loadBr_433c97, 1
  br i1 %cmpBr_433c97, label %block_.L_433cca, label %block_433c9d

block_433c9d:                                     ; preds = %block_.L_433c8a
  %loadMem_433c9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %474 = getelementptr inbounds %struct.GPR, %struct.GPR* %473, i32 0, i32 33
  %475 = getelementptr inbounds %struct.Reg, %struct.Reg* %474, i32 0, i32 0
  %PC.i311 = bitcast %union.anon* %475 to i64*
  %476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %477 = getelementptr inbounds %struct.GPR, %struct.GPR* %476, i32 0, i32 1
  %478 = getelementptr inbounds %struct.Reg, %struct.Reg* %477, i32 0, i32 0
  %RAX.i312 = bitcast %union.anon* %478 to i64*
  %479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %480 = getelementptr inbounds %struct.GPR, %struct.GPR* %479, i32 0, i32 15
  %481 = getelementptr inbounds %struct.Reg, %struct.Reg* %480, i32 0, i32 0
  %RBP.i313 = bitcast %union.anon* %481 to i64*
  %482 = load i64, i64* %RBP.i313
  %483 = sub i64 %482, 8
  %484 = load i64, i64* %PC.i311
  %485 = add i64 %484, 4
  store i64 %485, i64* %PC.i311
  %486 = inttoptr i64 %483 to i64*
  %487 = load i64, i64* %486
  store i64 %487, i64* %RAX.i312, align 8
  store %struct.Memory* %loadMem_433c9d, %struct.Memory** %MEMORY
  %loadMem_433ca1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %488 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %489 = getelementptr inbounds %struct.GPR, %struct.GPR* %488, i32 0, i32 33
  %490 = getelementptr inbounds %struct.Reg, %struct.Reg* %489, i32 0, i32 0
  %PC.i309 = bitcast %union.anon* %490 to i64*
  %491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %492 = getelementptr inbounds %struct.GPR, %struct.GPR* %491, i32 0, i32 1
  %493 = getelementptr inbounds %struct.Reg, %struct.Reg* %492, i32 0, i32 0
  %RAX.i310 = bitcast %union.anon* %493 to i64*
  %494 = load i64, i64* %RAX.i310
  %495 = add i64 %494, 160
  %496 = load i64, i64* %PC.i309
  %497 = add i64 %496, 7
  store i64 %497, i64* %PC.i309
  %498 = inttoptr i64 %495 to i64*
  %499 = load i64, i64* %498
  store i64 %499, i64* %RAX.i310, align 8
  store %struct.Memory* %loadMem_433ca1, %struct.Memory** %MEMORY
  %loadMem_433ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %500 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %501 = getelementptr inbounds %struct.GPR, %struct.GPR* %500, i32 0, i32 33
  %502 = getelementptr inbounds %struct.Reg, %struct.Reg* %501, i32 0, i32 0
  %PC.i306 = bitcast %union.anon* %502 to i64*
  %503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %504 = getelementptr inbounds %struct.GPR, %struct.GPR* %503, i32 0, i32 5
  %505 = getelementptr inbounds %struct.Reg, %struct.Reg* %504, i32 0, i32 0
  %RCX.i307 = bitcast %union.anon* %505 to i64*
  %506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %507 = getelementptr inbounds %struct.GPR, %struct.GPR* %506, i32 0, i32 15
  %508 = getelementptr inbounds %struct.Reg, %struct.Reg* %507, i32 0, i32 0
  %RBP.i308 = bitcast %union.anon* %508 to i64*
  %509 = load i64, i64* %RBP.i308
  %510 = sub i64 %509, 12
  %511 = load i64, i64* %PC.i306
  %512 = add i64 %511, 4
  store i64 %512, i64* %PC.i306
  %513 = inttoptr i64 %510 to i32*
  %514 = load i32, i32* %513
  %515 = sext i32 %514 to i64
  store i64 %515, i64* %RCX.i307, align 8
  store %struct.Memory* %loadMem_433ca8, %struct.Memory** %MEMORY
  %loadMem_433cac = load %struct.Memory*, %struct.Memory** %MEMORY
  %516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %517 = getelementptr inbounds %struct.GPR, %struct.GPR* %516, i32 0, i32 33
  %518 = getelementptr inbounds %struct.Reg, %struct.Reg* %517, i32 0, i32 0
  %PC.i302 = bitcast %union.anon* %518 to i64*
  %519 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %520 = getelementptr inbounds %struct.GPR, %struct.GPR* %519, i32 0, i32 1
  %521 = getelementptr inbounds %struct.Reg, %struct.Reg* %520, i32 0, i32 0
  %RAX.i303 = bitcast %union.anon* %521 to i64*
  %522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %523 = getelementptr inbounds %struct.GPR, %struct.GPR* %522, i32 0, i32 5
  %524 = getelementptr inbounds %struct.Reg, %struct.Reg* %523, i32 0, i32 0
  %RCX.i304 = bitcast %union.anon* %524 to i64*
  %525 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %526 = getelementptr inbounds %struct.GPR, %struct.GPR* %525, i32 0, i32 11
  %527 = getelementptr inbounds %struct.Reg, %struct.Reg* %526, i32 0, i32 0
  %RDI.i305 = bitcast %union.anon* %527 to i64*
  %528 = load i64, i64* %RAX.i303
  %529 = load i64, i64* %RCX.i304
  %530 = mul i64 %529, 8
  %531 = add i64 %530, %528
  %532 = load i64, i64* %PC.i302
  %533 = add i64 %532, 4
  store i64 %533, i64* %PC.i302
  %534 = inttoptr i64 %531 to i64*
  %535 = load i64, i64* %534
  store i64 %535, i64* %RDI.i305, align 8
  store %struct.Memory* %loadMem_433cac, %struct.Memory** %MEMORY
  %loadMem_433cb0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %536 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %537 = getelementptr inbounds %struct.GPR, %struct.GPR* %536, i32 0, i32 33
  %538 = getelementptr inbounds %struct.Reg, %struct.Reg* %537, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %538 to i64*
  %539 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %540 = getelementptr inbounds %struct.GPR, %struct.GPR* %539, i32 0, i32 9
  %541 = getelementptr inbounds %struct.Reg, %struct.Reg* %540, i32 0, i32 0
  %RSI.i301 = bitcast %union.anon* %541 to i64*
  %542 = load i64, i64* %PC.i300
  %543 = add i64 %542, 7
  store i64 %543, i64* %PC.i300
  %544 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %545 = zext i32 %544 to i64
  store i64 %545, i64* %RSI.i301, align 8
  store %struct.Memory* %loadMem_433cb0, %struct.Memory** %MEMORY
  %loadMem1_433cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %546 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %547 = getelementptr inbounds %struct.GPR, %struct.GPR* %546, i32 0, i32 33
  %548 = getelementptr inbounds %struct.Reg, %struct.Reg* %547, i32 0, i32 0
  %PC.i299 = bitcast %union.anon* %548 to i64*
  %549 = load i64, i64* %PC.i299
  %550 = add i64 %549, 125673
  %551 = load i64, i64* %PC.i299
  %552 = add i64 %551, 5
  %553 = load i64, i64* %PC.i299
  %554 = add i64 %553, 5
  store i64 %554, i64* %PC.i299
  %555 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %556 = load i64, i64* %555, align 8
  %557 = add i64 %556, -8
  %558 = inttoptr i64 %557 to i64*
  store i64 %552, i64* %558
  store i64 %557, i64* %555, align 8
  %559 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %550, i64* %559, align 8
  store %struct.Memory* %loadMem1_433cb7, %struct.Memory** %MEMORY
  %loadMem2_433cb7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433cb7 = load i64, i64* %3
  %call2_433cb7 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_433cb7, %struct.Memory* %loadMem2_433cb7)
  store %struct.Memory* %call2_433cb7, %struct.Memory** %MEMORY
  %loadMem_433cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 33
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %PC.i296 = bitcast %union.anon* %562 to i64*
  %563 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %564 = getelementptr inbounds %struct.GPR, %struct.GPR* %563, i32 0, i32 1
  %565 = getelementptr inbounds %struct.Reg, %struct.Reg* %564, i32 0, i32 0
  %RAX.i297 = bitcast %union.anon* %565 to i64*
  %566 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %567 = getelementptr inbounds %struct.GPR, %struct.GPR* %566, i32 0, i32 15
  %568 = getelementptr inbounds %struct.Reg, %struct.Reg* %567, i32 0, i32 0
  %RBP.i298 = bitcast %union.anon* %568 to i64*
  %569 = load i64, i64* %RBP.i298
  %570 = sub i64 %569, 12
  %571 = load i64, i64* %PC.i296
  %572 = add i64 %571, 3
  store i64 %572, i64* %PC.i296
  %573 = inttoptr i64 %570 to i32*
  %574 = load i32, i32* %573
  %575 = zext i32 %574 to i64
  store i64 %575, i64* %RAX.i297, align 8
  store %struct.Memory* %loadMem_433cbc, %struct.Memory** %MEMORY
  %loadMem_433cbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %576 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %577 = getelementptr inbounds %struct.GPR, %struct.GPR* %576, i32 0, i32 33
  %578 = getelementptr inbounds %struct.Reg, %struct.Reg* %577, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %578 to i64*
  %579 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %580 = getelementptr inbounds %struct.GPR, %struct.GPR* %579, i32 0, i32 1
  %581 = getelementptr inbounds %struct.Reg, %struct.Reg* %580, i32 0, i32 0
  %RAX.i295 = bitcast %union.anon* %581 to i64*
  %582 = load i64, i64* %RAX.i295
  %583 = load i64, i64* %PC.i294
  %584 = add i64 %583, 3
  store i64 %584, i64* %PC.i294
  %585 = trunc i64 %582 to i32
  %586 = add i32 1, %585
  %587 = zext i32 %586 to i64
  store i64 %587, i64* %RAX.i295, align 8
  %588 = icmp ult i32 %586, %585
  %589 = icmp ult i32 %586, 1
  %590 = or i1 %588, %589
  %591 = zext i1 %590 to i8
  %592 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %591, i8* %592, align 1
  %593 = and i32 %586, 255
  %594 = call i32 @llvm.ctpop.i32(i32 %593)
  %595 = trunc i32 %594 to i8
  %596 = and i8 %595, 1
  %597 = xor i8 %596, 1
  %598 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %597, i8* %598, align 1
  %599 = xor i64 1, %582
  %600 = trunc i64 %599 to i32
  %601 = xor i32 %600, %586
  %602 = lshr i32 %601, 4
  %603 = trunc i32 %602 to i8
  %604 = and i8 %603, 1
  %605 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %604, i8* %605, align 1
  %606 = icmp eq i32 %586, 0
  %607 = zext i1 %606 to i8
  %608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %607, i8* %608, align 1
  %609 = lshr i32 %586, 31
  %610 = trunc i32 %609 to i8
  %611 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %610, i8* %611, align 1
  %612 = lshr i32 %585, 31
  %613 = xor i32 %609, %612
  %614 = add i32 %613, %609
  %615 = icmp eq i32 %614, 2
  %616 = zext i1 %615 to i8
  %617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %616, i8* %617, align 1
  store %struct.Memory* %loadMem_433cbf, %struct.Memory** %MEMORY
  %loadMem_433cc2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %618 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %619 = getelementptr inbounds %struct.GPR, %struct.GPR* %618, i32 0, i32 33
  %620 = getelementptr inbounds %struct.Reg, %struct.Reg* %619, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %620 to i64*
  %621 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %622 = getelementptr inbounds %struct.GPR, %struct.GPR* %621, i32 0, i32 1
  %623 = getelementptr inbounds %struct.Reg, %struct.Reg* %622, i32 0, i32 0
  %EAX.i292 = bitcast %union.anon* %623 to i32*
  %624 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %625 = getelementptr inbounds %struct.GPR, %struct.GPR* %624, i32 0, i32 15
  %626 = getelementptr inbounds %struct.Reg, %struct.Reg* %625, i32 0, i32 0
  %RBP.i293 = bitcast %union.anon* %626 to i64*
  %627 = load i64, i64* %RBP.i293
  %628 = sub i64 %627, 12
  %629 = load i32, i32* %EAX.i292
  %630 = zext i32 %629 to i64
  %631 = load i64, i64* %PC.i291
  %632 = add i64 %631, 3
  store i64 %632, i64* %PC.i291
  %633 = inttoptr i64 %628 to i32*
  store i32 %629, i32* %633
  store %struct.Memory* %loadMem_433cc2, %struct.Memory** %MEMORY
  %loadMem_433cc5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %634 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %635 = getelementptr inbounds %struct.GPR, %struct.GPR* %634, i32 0, i32 33
  %636 = getelementptr inbounds %struct.Reg, %struct.Reg* %635, i32 0, i32 0
  %PC.i290 = bitcast %union.anon* %636 to i64*
  %637 = load i64, i64* %PC.i290
  %638 = add i64 %637, -59
  %639 = load i64, i64* %PC.i290
  %640 = add i64 %639, 5
  store i64 %640, i64* %PC.i290
  %641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %638, i64* %641, align 8
  store %struct.Memory* %loadMem_433cc5, %struct.Memory** %MEMORY
  br label %block_.L_433c8a

block_.L_433cca:                                  ; preds = %block_.L_433c8a
  %loadMem_433cca = load %struct.Memory*, %struct.Memory** %MEMORY
  %642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %643 = getelementptr inbounds %struct.GPR, %struct.GPR* %642, i32 0, i32 33
  %644 = getelementptr inbounds %struct.Reg, %struct.Reg* %643, i32 0, i32 0
  %PC.i287 = bitcast %union.anon* %644 to i64*
  %645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %646 = getelementptr inbounds %struct.GPR, %struct.GPR* %645, i32 0, i32 1
  %647 = getelementptr inbounds %struct.Reg, %struct.Reg* %646, i32 0, i32 0
  %RAX.i288 = bitcast %union.anon* %647 to i64*
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %649 = getelementptr inbounds %struct.GPR, %struct.GPR* %648, i32 0, i32 15
  %650 = getelementptr inbounds %struct.Reg, %struct.Reg* %649, i32 0, i32 0
  %RBP.i289 = bitcast %union.anon* %650 to i64*
  %651 = load i64, i64* %RBP.i289
  %652 = sub i64 %651, 8
  %653 = load i64, i64* %PC.i287
  %654 = add i64 %653, 4
  store i64 %654, i64* %PC.i287
  %655 = inttoptr i64 %652 to i64*
  %656 = load i64, i64* %655
  store i64 %656, i64* %RAX.i288, align 8
  store %struct.Memory* %loadMem_433cca, %struct.Memory** %MEMORY
  %loadMem_433cce = load %struct.Memory*, %struct.Memory** %MEMORY
  %657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %658 = getelementptr inbounds %struct.GPR, %struct.GPR* %657, i32 0, i32 33
  %659 = getelementptr inbounds %struct.Reg, %struct.Reg* %658, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %659 to i64*
  %660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %661 = getelementptr inbounds %struct.GPR, %struct.GPR* %660, i32 0, i32 1
  %662 = getelementptr inbounds %struct.Reg, %struct.Reg* %661, i32 0, i32 0
  %RAX.i286 = bitcast %union.anon* %662 to i64*
  %663 = load i64, i64* %RAX.i286
  %664 = add i64 %663, 208
  %665 = load i64, i64* %PC.i285
  %666 = add i64 %665, 7
  store i64 %666, i64* %PC.i285
  %667 = inttoptr i64 %664 to i64*
  %668 = load i64, i64* %667
  store i64 %668, i64* %RAX.i286, align 8
  store %struct.Memory* %loadMem_433cce, %struct.Memory** %MEMORY
  %loadMem_433cd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %670 = getelementptr inbounds %struct.GPR, %struct.GPR* %669, i32 0, i32 33
  %671 = getelementptr inbounds %struct.Reg, %struct.Reg* %670, i32 0, i32 0
  %PC.i283 = bitcast %union.anon* %671 to i64*
  %672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %673 = getelementptr inbounds %struct.GPR, %struct.GPR* %672, i32 0, i32 1
  %674 = getelementptr inbounds %struct.Reg, %struct.Reg* %673, i32 0, i32 0
  %RAX.i284 = bitcast %union.anon* %674 to i64*
  %675 = load i64, i64* %RAX.i284
  %676 = load i64, i64* %PC.i283
  %677 = add i64 %676, 4
  store i64 %677, i64* %PC.i283
  %678 = add i64 4, %675
  store i64 %678, i64* %RAX.i284, align 8
  %679 = icmp ult i64 %678, %675
  %680 = icmp ult i64 %678, 4
  %681 = or i1 %679, %680
  %682 = zext i1 %681 to i8
  %683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %682, i8* %683, align 1
  %684 = trunc i64 %678 to i32
  %685 = and i32 %684, 255
  %686 = call i32 @llvm.ctpop.i32(i32 %685)
  %687 = trunc i32 %686 to i8
  %688 = and i8 %687, 1
  %689 = xor i8 %688, 1
  %690 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %689, i8* %690, align 1
  %691 = xor i64 4, %675
  %692 = xor i64 %691, %678
  %693 = lshr i64 %692, 4
  %694 = trunc i64 %693 to i8
  %695 = and i8 %694, 1
  %696 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %695, i8* %696, align 1
  %697 = icmp eq i64 %678, 0
  %698 = zext i1 %697 to i8
  %699 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %698, i8* %699, align 1
  %700 = lshr i64 %678, 63
  %701 = trunc i64 %700 to i8
  %702 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %701, i8* %702, align 1
  %703 = lshr i64 %675, 63
  %704 = xor i64 %700, %703
  %705 = add i64 %704, %700
  %706 = icmp eq i64 %705, 2
  %707 = zext i1 %706 to i8
  %708 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %707, i8* %708, align 1
  store %struct.Memory* %loadMem_433cd5, %struct.Memory** %MEMORY
  %loadMem_433cd9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %710 = getelementptr inbounds %struct.GPR, %struct.GPR* %709, i32 0, i32 33
  %711 = getelementptr inbounds %struct.Reg, %struct.Reg* %710, i32 0, i32 0
  %PC.i280 = bitcast %union.anon* %711 to i64*
  %712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %713 = getelementptr inbounds %struct.GPR, %struct.GPR* %712, i32 0, i32 5
  %714 = getelementptr inbounds %struct.Reg, %struct.Reg* %713, i32 0, i32 0
  %RCX.i281 = bitcast %union.anon* %714 to i64*
  %715 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %716 = getelementptr inbounds %struct.GPR, %struct.GPR* %715, i32 0, i32 15
  %717 = getelementptr inbounds %struct.Reg, %struct.Reg* %716, i32 0, i32 0
  %RBP.i282 = bitcast %union.anon* %717 to i64*
  %718 = load i64, i64* %RBP.i282
  %719 = sub i64 %718, 8
  %720 = load i64, i64* %PC.i280
  %721 = add i64 %720, 4
  store i64 %721, i64* %PC.i280
  %722 = inttoptr i64 %719 to i64*
  %723 = load i64, i64* %722
  store i64 %723, i64* %RCX.i281, align 8
  store %struct.Memory* %loadMem_433cd9, %struct.Memory** %MEMORY
  %loadMem_433cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %724 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %725 = getelementptr inbounds %struct.GPR, %struct.GPR* %724, i32 0, i32 33
  %726 = getelementptr inbounds %struct.Reg, %struct.Reg* %725, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %726 to i64*
  %727 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %728 = getelementptr inbounds %struct.GPR, %struct.GPR* %727, i32 0, i32 5
  %729 = getelementptr inbounds %struct.Reg, %struct.Reg* %728, i32 0, i32 0
  %RCX.i278 = bitcast %union.anon* %729 to i64*
  %730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %731 = getelementptr inbounds %struct.GPR, %struct.GPR* %730, i32 0, i32 9
  %732 = getelementptr inbounds %struct.Reg, %struct.Reg* %731, i32 0, i32 0
  %RSI.i279 = bitcast %union.anon* %732 to i64*
  %733 = load i64, i64* %RCX.i278
  %734 = add i64 %733, 136
  %735 = load i64, i64* %PC.i277
  %736 = add i64 %735, 6
  store i64 %736, i64* %PC.i277
  %737 = inttoptr i64 %734 to i32*
  %738 = load i32, i32* %737
  %739 = zext i32 %738 to i64
  store i64 %739, i64* %RSI.i279, align 8
  store %struct.Memory* %loadMem_433cdd, %struct.Memory** %MEMORY
  %loadMem_433ce3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %741 = getelementptr inbounds %struct.GPR, %struct.GPR* %740, i32 0, i32 33
  %742 = getelementptr inbounds %struct.Reg, %struct.Reg* %741, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %742 to i64*
  %743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %744 = getelementptr inbounds %struct.GPR, %struct.GPR* %743, i32 0, i32 1
  %745 = getelementptr inbounds %struct.Reg, %struct.Reg* %744, i32 0, i32 0
  %RAX.i275 = bitcast %union.anon* %745 to i64*
  %746 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %747 = getelementptr inbounds %struct.GPR, %struct.GPR* %746, i32 0, i32 11
  %748 = getelementptr inbounds %struct.Reg, %struct.Reg* %747, i32 0, i32 0
  %RDI.i276 = bitcast %union.anon* %748 to i64*
  %749 = load i64, i64* %RAX.i275
  %750 = load i64, i64* %PC.i274
  %751 = add i64 %750, 3
  store i64 %751, i64* %PC.i274
  store i64 %749, i64* %RDI.i276, align 8
  store %struct.Memory* %loadMem_433ce3, %struct.Memory** %MEMORY
  %loadMem1_433ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %753 = getelementptr inbounds %struct.GPR, %struct.GPR* %752, i32 0, i32 33
  %754 = getelementptr inbounds %struct.Reg, %struct.Reg* %753, i32 0, i32 0
  %PC.i273 = bitcast %union.anon* %754 to i64*
  %755 = load i64, i64* %PC.i273
  %756 = add i64 %755, 123818
  %757 = load i64, i64* %PC.i273
  %758 = add i64 %757, 5
  %759 = load i64, i64* %PC.i273
  %760 = add i64 %759, 5
  store i64 %760, i64* %PC.i273
  %761 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %762 = load i64, i64* %761, align 8
  %763 = add i64 %762, -8
  %764 = inttoptr i64 %763 to i64*
  store i64 %758, i64* %764
  store i64 %763, i64* %761, align 8
  %765 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %756, i64* %765, align 8
  store %struct.Memory* %loadMem1_433ce6, %struct.Memory** %MEMORY
  %loadMem2_433ce6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433ce6 = load i64, i64* %3
  %call2_433ce6 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64 %loadPC_433ce6, %struct.Memory* %loadMem2_433ce6)
  store %struct.Memory* %call2_433ce6, %struct.Memory** %MEMORY
  %loadMem_433ceb = load %struct.Memory*, %struct.Memory** %MEMORY
  %766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %767 = getelementptr inbounds %struct.GPR, %struct.GPR* %766, i32 0, i32 33
  %768 = getelementptr inbounds %struct.Reg, %struct.Reg* %767, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %768 to i64*
  %769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %770 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %769, i64 0, i64 1
  %YMM1.i272 = bitcast %union.VectorReg* %770 to %"class.std::bitset"*
  %771 = bitcast %"class.std::bitset"* %YMM1.i272 to i8*
  %772 = load i64, i64* %PC.i271
  %773 = add i64 %772, ptrtoint (%G_0x20aed__rip__type* @G_0x20aed__rip_ to i64)
  %774 = load i64, i64* %PC.i271
  %775 = add i64 %774, 8
  store i64 %775, i64* %PC.i271
  %776 = inttoptr i64 %773 to double*
  %777 = load double, double* %776
  %778 = bitcast i8* %771 to double*
  store double %777, double* %778, align 1
  %779 = getelementptr inbounds i8, i8* %771, i64 8
  %780 = bitcast i8* %779 to double*
  store double 0.000000e+00, double* %780, align 1
  store %struct.Memory* %loadMem_433ceb, %struct.Memory** %MEMORY
  %loadMem_433cf3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %781 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %782 = getelementptr inbounds %struct.GPR, %struct.GPR* %781, i32 0, i32 33
  %783 = getelementptr inbounds %struct.Reg, %struct.Reg* %782, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %783 to i64*
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %785 = getelementptr inbounds %struct.GPR, %struct.GPR* %784, i32 0, i32 1
  %786 = getelementptr inbounds %struct.Reg, %struct.Reg* %785, i32 0, i32 0
  %RAX.i269 = bitcast %union.anon* %786 to i64*
  %787 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %788 = getelementptr inbounds %struct.GPR, %struct.GPR* %787, i32 0, i32 15
  %789 = getelementptr inbounds %struct.Reg, %struct.Reg* %788, i32 0, i32 0
  %RBP.i270 = bitcast %union.anon* %789 to i64*
  %790 = load i64, i64* %RBP.i270
  %791 = sub i64 %790, 8
  %792 = load i64, i64* %PC.i268
  %793 = add i64 %792, 4
  store i64 %793, i64* %PC.i268
  %794 = inttoptr i64 %791 to i64*
  %795 = load i64, i64* %794
  store i64 %795, i64* %RAX.i269, align 8
  store %struct.Memory* %loadMem_433cf3, %struct.Memory** %MEMORY
  %loadMem_433cf7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i265 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RAX.i266 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %803 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %802, i64 0, i64 0
  %YMM0.i267 = bitcast %union.VectorReg* %803 to %"class.std::bitset"*
  %804 = bitcast %"class.std::bitset"* %YMM0.i267 to i8*
  %805 = bitcast %"class.std::bitset"* %YMM0.i267 to i8*
  %806 = load i64, i64* %RAX.i266
  %807 = add i64 %806, 168
  %808 = load i64, i64* %PC.i265
  %809 = add i64 %808, 8
  store i64 %809, i64* %PC.i265
  %810 = bitcast i8* %805 to <2 x float>*
  %811 = load <2 x float>, <2 x float>* %810, align 1
  %812 = getelementptr inbounds i8, i8* %805, i64 8
  %813 = bitcast i8* %812 to <2 x i32>*
  %814 = load <2 x i32>, <2 x i32>* %813, align 1
  %815 = inttoptr i64 %807 to float*
  %816 = load float, float* %815
  %817 = extractelement <2 x float> %811, i32 0
  %818 = fadd float %817, %816
  %819 = bitcast i8* %804 to float*
  store float %818, float* %819, align 1
  %820 = bitcast <2 x float> %811 to <2 x i32>
  %821 = extractelement <2 x i32> %820, i32 1
  %822 = getelementptr inbounds i8, i8* %804, i64 4
  %823 = bitcast i8* %822 to i32*
  store i32 %821, i32* %823, align 1
  %824 = extractelement <2 x i32> %814, i32 0
  %825 = getelementptr inbounds i8, i8* %804, i64 8
  %826 = bitcast i8* %825 to i32*
  store i32 %824, i32* %826, align 1
  %827 = extractelement <2 x i32> %814, i32 1
  %828 = getelementptr inbounds i8, i8* %804, i64 12
  %829 = bitcast i8* %828 to i32*
  store i32 %827, i32* %829, align 1
  store %struct.Memory* %loadMem_433cf7, %struct.Memory** %MEMORY
  %loadMem_433cff = load %struct.Memory*, %struct.Memory** %MEMORY
  %830 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %831 = getelementptr inbounds %struct.GPR, %struct.GPR* %830, i32 0, i32 33
  %832 = getelementptr inbounds %struct.Reg, %struct.Reg* %831, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %832 to i64*
  %833 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %834 = getelementptr inbounds %struct.GPR, %struct.GPR* %833, i32 0, i32 15
  %835 = getelementptr inbounds %struct.Reg, %struct.Reg* %834, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %835 to i64*
  %836 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %837 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %836, i64 0, i64 0
  %XMM0.i264 = bitcast %union.VectorReg* %837 to %union.vec128_t*
  %838 = load i64, i64* %RBP.i263
  %839 = sub i64 %838, 20
  %840 = bitcast %union.vec128_t* %XMM0.i264 to i8*
  %841 = load i64, i64* %PC.i262
  %842 = add i64 %841, 5
  store i64 %842, i64* %PC.i262
  %843 = bitcast i8* %840 to <2 x float>*
  %844 = load <2 x float>, <2 x float>* %843, align 1
  %845 = extractelement <2 x float> %844, i32 0
  %846 = inttoptr i64 %839 to float*
  store float %845, float* %846
  store %struct.Memory* %loadMem_433cff, %struct.Memory** %MEMORY
  %loadMem_433d04 = load %struct.Memory*, %struct.Memory** %MEMORY
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %848 = getelementptr inbounds %struct.GPR, %struct.GPR* %847, i32 0, i32 33
  %849 = getelementptr inbounds %struct.Reg, %struct.Reg* %848, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %849 to i64*
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %851 = getelementptr inbounds %struct.GPR, %struct.GPR* %850, i32 0, i32 1
  %852 = getelementptr inbounds %struct.Reg, %struct.Reg* %851, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %852 to i64*
  %853 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %854 = getelementptr inbounds %struct.GPR, %struct.GPR* %853, i32 0, i32 15
  %855 = getelementptr inbounds %struct.Reg, %struct.Reg* %854, i32 0, i32 0
  %RBP.i261 = bitcast %union.anon* %855 to i64*
  %856 = load i64, i64* %RBP.i261
  %857 = sub i64 %856, 8
  %858 = load i64, i64* %PC.i259
  %859 = add i64 %858, 4
  store i64 %859, i64* %PC.i259
  %860 = inttoptr i64 %857 to i64*
  %861 = load i64, i64* %860
  store i64 %861, i64* %RAX.i260, align 8
  store %struct.Memory* %loadMem_433d04, %struct.Memory** %MEMORY
  %loadMem_433d08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %862 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %863 = getelementptr inbounds %struct.GPR, %struct.GPR* %862, i32 0, i32 33
  %864 = getelementptr inbounds %struct.Reg, %struct.Reg* %863, i32 0, i32 0
  %PC.i257 = bitcast %union.anon* %864 to i64*
  %865 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %866 = getelementptr inbounds %struct.GPR, %struct.GPR* %865, i32 0, i32 1
  %867 = getelementptr inbounds %struct.Reg, %struct.Reg* %866, i32 0, i32 0
  %RAX.i258 = bitcast %union.anon* %867 to i64*
  %868 = load i64, i64* %RAX.i258
  %869 = add i64 %868, 208
  %870 = load i64, i64* %PC.i257
  %871 = add i64 %870, 7
  store i64 %871, i64* %PC.i257
  %872 = inttoptr i64 %869 to i64*
  %873 = load i64, i64* %872
  store i64 %873, i64* %RAX.i258, align 8
  store %struct.Memory* %loadMem_433d08, %struct.Memory** %MEMORY
  %loadMem_433d0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %874 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %875 = getelementptr inbounds %struct.GPR, %struct.GPR* %874, i32 0, i32 33
  %876 = getelementptr inbounds %struct.Reg, %struct.Reg* %875, i32 0, i32 0
  %PC.i255 = bitcast %union.anon* %876 to i64*
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %878 = getelementptr inbounds %struct.GPR, %struct.GPR* %877, i32 0, i32 1
  %879 = getelementptr inbounds %struct.Reg, %struct.Reg* %878, i32 0, i32 0
  %RAX.i256 = bitcast %union.anon* %879 to i64*
  %880 = load i64, i64* %RAX.i256
  %881 = load i64, i64* %PC.i255
  %882 = add i64 %881, 4
  store i64 %882, i64* %PC.i255
  %883 = add i64 4, %880
  store i64 %883, i64* %RAX.i256, align 8
  %884 = icmp ult i64 %883, %880
  %885 = icmp ult i64 %883, 4
  %886 = or i1 %884, %885
  %887 = zext i1 %886 to i8
  %888 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %887, i8* %888, align 1
  %889 = trunc i64 %883 to i32
  %890 = and i32 %889, 255
  %891 = call i32 @llvm.ctpop.i32(i32 %890)
  %892 = trunc i32 %891 to i8
  %893 = and i8 %892, 1
  %894 = xor i8 %893, 1
  %895 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %894, i8* %895, align 1
  %896 = xor i64 4, %880
  %897 = xor i64 %896, %883
  %898 = lshr i64 %897, 4
  %899 = trunc i64 %898 to i8
  %900 = and i8 %899, 1
  %901 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %900, i8* %901, align 1
  %902 = icmp eq i64 %883, 0
  %903 = zext i1 %902 to i8
  %904 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %903, i8* %904, align 1
  %905 = lshr i64 %883, 63
  %906 = trunc i64 %905 to i8
  %907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %906, i8* %907, align 1
  %908 = lshr i64 %880, 63
  %909 = xor i64 %905, %908
  %910 = add i64 %909, %905
  %911 = icmp eq i64 %910, 2
  %912 = zext i1 %911 to i8
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %912, i8* %913, align 1
  store %struct.Memory* %loadMem_433d0f, %struct.Memory** %MEMORY
  %loadMem_433d13 = load %struct.Memory*, %struct.Memory** %MEMORY
  %914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %915 = getelementptr inbounds %struct.GPR, %struct.GPR* %914, i32 0, i32 33
  %916 = getelementptr inbounds %struct.Reg, %struct.Reg* %915, i32 0, i32 0
  %PC.i252 = bitcast %union.anon* %916 to i64*
  %917 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %918 = getelementptr inbounds %struct.GPR, %struct.GPR* %917, i32 0, i32 5
  %919 = getelementptr inbounds %struct.Reg, %struct.Reg* %918, i32 0, i32 0
  %RCX.i253 = bitcast %union.anon* %919 to i64*
  %920 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %921 = getelementptr inbounds %struct.GPR, %struct.GPR* %920, i32 0, i32 15
  %922 = getelementptr inbounds %struct.Reg, %struct.Reg* %921, i32 0, i32 0
  %RBP.i254 = bitcast %union.anon* %922 to i64*
  %923 = load i64, i64* %RBP.i254
  %924 = sub i64 %923, 8
  %925 = load i64, i64* %PC.i252
  %926 = add i64 %925, 4
  store i64 %926, i64* %PC.i252
  %927 = inttoptr i64 %924 to i64*
  %928 = load i64, i64* %927
  store i64 %928, i64* %RCX.i253, align 8
  store %struct.Memory* %loadMem_433d13, %struct.Memory** %MEMORY
  %loadMem_433d17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %929 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %930 = getelementptr inbounds %struct.GPR, %struct.GPR* %929, i32 0, i32 33
  %931 = getelementptr inbounds %struct.Reg, %struct.Reg* %930, i32 0, i32 0
  %PC.i249 = bitcast %union.anon* %931 to i64*
  %932 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %933 = getelementptr inbounds %struct.GPR, %struct.GPR* %932, i32 0, i32 5
  %934 = getelementptr inbounds %struct.Reg, %struct.Reg* %933, i32 0, i32 0
  %RCX.i250 = bitcast %union.anon* %934 to i64*
  %935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %936 = getelementptr inbounds %struct.GPR, %struct.GPR* %935, i32 0, i32 9
  %937 = getelementptr inbounds %struct.Reg, %struct.Reg* %936, i32 0, i32 0
  %RSI.i251 = bitcast %union.anon* %937 to i64*
  %938 = load i64, i64* %RCX.i250
  %939 = add i64 %938, 136
  %940 = load i64, i64* %PC.i249
  %941 = add i64 %940, 6
  store i64 %941, i64* %PC.i249
  %942 = inttoptr i64 %939 to i32*
  %943 = load i32, i32* %942
  %944 = zext i32 %943 to i64
  store i64 %944, i64* %RSI.i251, align 8
  store %struct.Memory* %loadMem_433d17, %struct.Memory** %MEMORY
  %loadMem_433d1d = load %struct.Memory*, %struct.Memory** %MEMORY
  %945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %946 = getelementptr inbounds %struct.GPR, %struct.GPR* %945, i32 0, i32 33
  %947 = getelementptr inbounds %struct.Reg, %struct.Reg* %946, i32 0, i32 0
  %PC.i246 = bitcast %union.anon* %947 to i64*
  %948 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %949 = getelementptr inbounds %struct.GPR, %struct.GPR* %948, i32 0, i32 15
  %950 = getelementptr inbounds %struct.Reg, %struct.Reg* %949, i32 0, i32 0
  %RBP.i247 = bitcast %union.anon* %950 to i64*
  %951 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %952 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %951, i64 0, i64 0
  %YMM0.i248 = bitcast %union.VectorReg* %952 to %"class.std::bitset"*
  %953 = bitcast %"class.std::bitset"* %YMM0.i248 to i8*
  %954 = load i64, i64* %RBP.i247
  %955 = sub i64 %954, 20
  %956 = load i64, i64* %PC.i246
  %957 = add i64 %956, 5
  store i64 %957, i64* %PC.i246
  %958 = inttoptr i64 %955 to float*
  %959 = load float, float* %958
  %960 = fpext float %959 to double
  %961 = bitcast i8* %953 to double*
  store double %960, double* %961, align 1
  store %struct.Memory* %loadMem_433d1d, %struct.Memory** %MEMORY
  %loadMem_433d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %962 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %963 = getelementptr inbounds %struct.GPR, %struct.GPR* %962, i32 0, i32 33
  %964 = getelementptr inbounds %struct.Reg, %struct.Reg* %963, i32 0, i32 0
  %PC.i243 = bitcast %union.anon* %964 to i64*
  %965 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %966 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %965, i64 0, i64 1
  %YMM1.i244 = bitcast %union.VectorReg* %966 to %"class.std::bitset"*
  %967 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %968 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %967, i64 0, i64 0
  %XMM0.i245 = bitcast %union.VectorReg* %968 to %union.vec128_t*
  %969 = bitcast %"class.std::bitset"* %YMM1.i244 to i8*
  %970 = bitcast %"class.std::bitset"* %YMM1.i244 to i8*
  %971 = bitcast %union.vec128_t* %XMM0.i245 to i8*
  %972 = load i64, i64* %PC.i243
  %973 = add i64 %972, 4
  store i64 %973, i64* %PC.i243
  %974 = bitcast i8* %970 to double*
  %975 = load double, double* %974, align 1
  %976 = getelementptr inbounds i8, i8* %970, i64 8
  %977 = bitcast i8* %976 to i64*
  %978 = load i64, i64* %977, align 1
  %979 = bitcast i8* %971 to double*
  %980 = load double, double* %979, align 1
  %981 = fdiv double %975, %980
  %982 = bitcast i8* %969 to double*
  store double %981, double* %982, align 1
  %983 = getelementptr inbounds i8, i8* %969, i64 8
  %984 = bitcast i8* %983 to i64*
  store i64 %978, i64* %984, align 1
  store %struct.Memory* %loadMem_433d22, %struct.Memory** %MEMORY
  %loadMem_433d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %986 = getelementptr inbounds %struct.GPR, %struct.GPR* %985, i32 0, i32 33
  %987 = getelementptr inbounds %struct.Reg, %struct.Reg* %986, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %987 to i64*
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %989 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %988, i64 0, i64 0
  %YMM0.i241 = bitcast %union.VectorReg* %989 to %"class.std::bitset"*
  %990 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %991 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %990, i64 0, i64 1
  %XMM1.i242 = bitcast %union.VectorReg* %991 to %union.vec128_t*
  %992 = bitcast %"class.std::bitset"* %YMM0.i241 to i8*
  %993 = bitcast %union.vec128_t* %XMM1.i242 to i8*
  %994 = load i64, i64* %PC.i240
  %995 = add i64 %994, 4
  store i64 %995, i64* %PC.i240
  %996 = bitcast i8* %992 to <2 x i32>*
  %997 = load <2 x i32>, <2 x i32>* %996, align 1
  %998 = getelementptr inbounds i8, i8* %992, i64 8
  %999 = bitcast i8* %998 to <2 x i32>*
  %1000 = load <2 x i32>, <2 x i32>* %999, align 1
  %1001 = bitcast i8* %993 to double*
  %1002 = load double, double* %1001, align 1
  %1003 = fptrunc double %1002 to float
  %1004 = bitcast i8* %992 to float*
  store float %1003, float* %1004, align 1
  %1005 = extractelement <2 x i32> %997, i32 1
  %1006 = getelementptr inbounds i8, i8* %992, i64 4
  %1007 = bitcast i8* %1006 to i32*
  store i32 %1005, i32* %1007, align 1
  %1008 = extractelement <2 x i32> %1000, i32 0
  %1009 = bitcast i8* %998 to i32*
  store i32 %1008, i32* %1009, align 1
  %1010 = extractelement <2 x i32> %1000, i32 1
  %1011 = getelementptr inbounds i8, i8* %992, i64 12
  %1012 = bitcast i8* %1011 to i32*
  store i32 %1010, i32* %1012, align 1
  store %struct.Memory* %loadMem_433d26, %struct.Memory** %MEMORY
  %loadMem_433d2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1013 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1014 = getelementptr inbounds %struct.GPR, %struct.GPR* %1013, i32 0, i32 33
  %1015 = getelementptr inbounds %struct.Reg, %struct.Reg* %1014, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1015 to i64*
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1017 = getelementptr inbounds %struct.GPR, %struct.GPR* %1016, i32 0, i32 1
  %1018 = getelementptr inbounds %struct.Reg, %struct.Reg* %1017, i32 0, i32 0
  %RAX.i238 = bitcast %union.anon* %1018 to i64*
  %1019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1020 = getelementptr inbounds %struct.GPR, %struct.GPR* %1019, i32 0, i32 11
  %1021 = getelementptr inbounds %struct.Reg, %struct.Reg* %1020, i32 0, i32 0
  %RDI.i239 = bitcast %union.anon* %1021 to i64*
  %1022 = load i64, i64* %RAX.i238
  %1023 = load i64, i64* %PC.i237
  %1024 = add i64 %1023, 3
  store i64 %1024, i64* %PC.i237
  store i64 %1022, i64* %RDI.i239, align 8
  store %struct.Memory* %loadMem_433d2a, %struct.Memory** %MEMORY
  %loadMem1_433d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1025 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1026 = getelementptr inbounds %struct.GPR, %struct.GPR* %1025, i32 0, i32 33
  %1027 = getelementptr inbounds %struct.Reg, %struct.Reg* %1026, i32 0, i32 0
  %PC.i236 = bitcast %union.anon* %1027 to i64*
  %1028 = load i64, i64* %PC.i236
  %1029 = add i64 %1028, 123571
  %1030 = load i64, i64* %PC.i236
  %1031 = add i64 %1030, 5
  %1032 = load i64, i64* %PC.i236
  %1033 = add i64 %1032, 5
  store i64 %1033, i64* %PC.i236
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1035 = load i64, i64* %1034, align 8
  %1036 = add i64 %1035, -8
  %1037 = inttoptr i64 %1036 to i64*
  store i64 %1031, i64* %1037
  store i64 %1036, i64* %1034, align 8
  %1038 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1029, i64* %1038, align 8
  store %struct.Memory* %loadMem1_433d2d, %struct.Memory** %MEMORY
  %loadMem2_433d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433d2d = load i64, i64* %3
  %call2_433d2d = call %struct.Memory* @sub_451fe0.FScale(%struct.State* %0, i64 %loadPC_433d2d, %struct.Memory* %loadMem2_433d2d)
  store %struct.Memory* %call2_433d2d, %struct.Memory** %MEMORY
  %loadMem_433d32 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1040 = getelementptr inbounds %struct.GPR, %struct.GPR* %1039, i32 0, i32 33
  %1041 = getelementptr inbounds %struct.Reg, %struct.Reg* %1040, i32 0, i32 0
  %PC.i233 = bitcast %union.anon* %1041 to i64*
  %1042 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1043 = getelementptr inbounds %struct.GPR, %struct.GPR* %1042, i32 0, i32 15
  %1044 = getelementptr inbounds %struct.Reg, %struct.Reg* %1043, i32 0, i32 0
  %RBP.i234 = bitcast %union.anon* %1044 to i64*
  %1045 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1046 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1045, i64 0, i64 0
  %YMM0.i235 = bitcast %union.VectorReg* %1046 to %"class.std::bitset"*
  %1047 = bitcast %"class.std::bitset"* %YMM0.i235 to i8*
  %1048 = load i64, i64* %RBP.i234
  %1049 = sub i64 %1048, 20
  %1050 = load i64, i64* %PC.i233
  %1051 = add i64 %1050, 5
  store i64 %1051, i64* %PC.i233
  %1052 = inttoptr i64 %1049 to float*
  %1053 = load float, float* %1052
  %1054 = bitcast i8* %1047 to float*
  store float %1053, float* %1054, align 1
  %1055 = getelementptr inbounds i8, i8* %1047, i64 4
  %1056 = bitcast i8* %1055 to float*
  store float 0.000000e+00, float* %1056, align 1
  %1057 = getelementptr inbounds i8, i8* %1047, i64 8
  %1058 = bitcast i8* %1057 to float*
  store float 0.000000e+00, float* %1058, align 1
  %1059 = getelementptr inbounds i8, i8* %1047, i64 12
  %1060 = bitcast i8* %1059 to float*
  store float 0.000000e+00, float* %1060, align 1
  store %struct.Memory* %loadMem_433d32, %struct.Memory** %MEMORY
  %loadMem_433d37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1061 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1062 = getelementptr inbounds %struct.GPR, %struct.GPR* %1061, i32 0, i32 33
  %1063 = getelementptr inbounds %struct.Reg, %struct.Reg* %1062, i32 0, i32 0
  %PC.i230 = bitcast %union.anon* %1063 to i64*
  %1064 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1065 = getelementptr inbounds %struct.GPR, %struct.GPR* %1064, i32 0, i32 1
  %1066 = getelementptr inbounds %struct.Reg, %struct.Reg* %1065, i32 0, i32 0
  %RAX.i231 = bitcast %union.anon* %1066 to i64*
  %1067 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1068 = getelementptr inbounds %struct.GPR, %struct.GPR* %1067, i32 0, i32 15
  %1069 = getelementptr inbounds %struct.Reg, %struct.Reg* %1068, i32 0, i32 0
  %RBP.i232 = bitcast %union.anon* %1069 to i64*
  %1070 = load i64, i64* %RBP.i232
  %1071 = sub i64 %1070, 8
  %1072 = load i64, i64* %PC.i230
  %1073 = add i64 %1072, 4
  store i64 %1073, i64* %PC.i230
  %1074 = inttoptr i64 %1071 to i64*
  %1075 = load i64, i64* %1074
  store i64 %1075, i64* %RAX.i231, align 8
  store %struct.Memory* %loadMem_433d37, %struct.Memory** %MEMORY
  %loadMem_433d3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1077 = getelementptr inbounds %struct.GPR, %struct.GPR* %1076, i32 0, i32 33
  %1078 = getelementptr inbounds %struct.Reg, %struct.Reg* %1077, i32 0, i32 0
  %PC.i227 = bitcast %union.anon* %1078 to i64*
  %1079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1080 = getelementptr inbounds %struct.GPR, %struct.GPR* %1079, i32 0, i32 1
  %1081 = getelementptr inbounds %struct.Reg, %struct.Reg* %1080, i32 0, i32 0
  %RAX.i228 = bitcast %union.anon* %1081 to i64*
  %1082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1083 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1082, i64 0, i64 1
  %YMM1.i229 = bitcast %union.VectorReg* %1083 to %"class.std::bitset"*
  %1084 = bitcast %"class.std::bitset"* %YMM1.i229 to i8*
  %1085 = load i64, i64* %RAX.i228
  %1086 = add i64 %1085, 168
  %1087 = load i64, i64* %PC.i227
  %1088 = add i64 %1087, 8
  store i64 %1088, i64* %PC.i227
  %1089 = inttoptr i64 %1086 to float*
  %1090 = load float, float* %1089
  %1091 = bitcast i8* %1084 to float*
  store float %1090, float* %1091, align 1
  %1092 = getelementptr inbounds i8, i8* %1084, i64 4
  %1093 = bitcast i8* %1092 to float*
  store float 0.000000e+00, float* %1093, align 1
  %1094 = getelementptr inbounds i8, i8* %1084, i64 8
  %1095 = bitcast i8* %1094 to float*
  store float 0.000000e+00, float* %1095, align 1
  %1096 = getelementptr inbounds i8, i8* %1084, i64 12
  %1097 = bitcast i8* %1096 to float*
  store float 0.000000e+00, float* %1097, align 1
  store %struct.Memory* %loadMem_433d3b, %struct.Memory** %MEMORY
  %loadMem_433d43 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1099 = getelementptr inbounds %struct.GPR, %struct.GPR* %1098, i32 0, i32 33
  %1100 = getelementptr inbounds %struct.Reg, %struct.Reg* %1099, i32 0, i32 0
  %PC.i224 = bitcast %union.anon* %1100 to i64*
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1102 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1101, i64 0, i64 1
  %YMM1.i225 = bitcast %union.VectorReg* %1102 to %"class.std::bitset"*
  %1103 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1104 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1103, i64 0, i64 0
  %XMM0.i226 = bitcast %union.VectorReg* %1104 to %union.vec128_t*
  %1105 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %1106 = bitcast %"class.std::bitset"* %YMM1.i225 to i8*
  %1107 = bitcast %union.vec128_t* %XMM0.i226 to i8*
  %1108 = load i64, i64* %PC.i224
  %1109 = add i64 %1108, 4
  store i64 %1109, i64* %PC.i224
  %1110 = bitcast i8* %1106 to <2 x float>*
  %1111 = load <2 x float>, <2 x float>* %1110, align 1
  %1112 = getelementptr inbounds i8, i8* %1106, i64 8
  %1113 = bitcast i8* %1112 to <2 x i32>*
  %1114 = load <2 x i32>, <2 x i32>* %1113, align 1
  %1115 = bitcast i8* %1107 to <2 x float>*
  %1116 = load <2 x float>, <2 x float>* %1115, align 1
  %1117 = extractelement <2 x float> %1111, i32 0
  %1118 = extractelement <2 x float> %1116, i32 0
  %1119 = fdiv float %1117, %1118
  %1120 = bitcast i8* %1105 to float*
  store float %1119, float* %1120, align 1
  %1121 = bitcast <2 x float> %1111 to <2 x i32>
  %1122 = extractelement <2 x i32> %1121, i32 1
  %1123 = getelementptr inbounds i8, i8* %1105, i64 4
  %1124 = bitcast i8* %1123 to i32*
  store i32 %1122, i32* %1124, align 1
  %1125 = extractelement <2 x i32> %1114, i32 0
  %1126 = getelementptr inbounds i8, i8* %1105, i64 8
  %1127 = bitcast i8* %1126 to i32*
  store i32 %1125, i32* %1127, align 1
  %1128 = extractelement <2 x i32> %1114, i32 1
  %1129 = getelementptr inbounds i8, i8* %1105, i64 12
  %1130 = bitcast i8* %1129 to i32*
  store i32 %1128, i32* %1130, align 1
  store %struct.Memory* %loadMem_433d43, %struct.Memory** %MEMORY
  %loadMem_433d47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1131 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1132 = getelementptr inbounds %struct.GPR, %struct.GPR* %1131, i32 0, i32 33
  %1133 = getelementptr inbounds %struct.Reg, %struct.Reg* %1132, i32 0, i32 0
  %PC.i221 = bitcast %union.anon* %1133 to i64*
  %1134 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1135 = getelementptr inbounds %struct.GPR, %struct.GPR* %1134, i32 0, i32 1
  %1136 = getelementptr inbounds %struct.Reg, %struct.Reg* %1135, i32 0, i32 0
  %RAX.i222 = bitcast %union.anon* %1136 to i64*
  %1137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1138 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1137, i64 0, i64 1
  %XMM1.i223 = bitcast %union.VectorReg* %1138 to %union.vec128_t*
  %1139 = load i64, i64* %RAX.i222
  %1140 = add i64 %1139, 168
  %1141 = bitcast %union.vec128_t* %XMM1.i223 to i8*
  %1142 = load i64, i64* %PC.i221
  %1143 = add i64 %1142, 8
  store i64 %1143, i64* %PC.i221
  %1144 = bitcast i8* %1141 to <2 x float>*
  %1145 = load <2 x float>, <2 x float>* %1144, align 1
  %1146 = extractelement <2 x float> %1145, i32 0
  %1147 = inttoptr i64 %1140 to float*
  store float %1146, float* %1147
  store %struct.Memory* %loadMem_433d47, %struct.Memory** %MEMORY
  %loadMem_433d4f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1149 = getelementptr inbounds %struct.GPR, %struct.GPR* %1148, i32 0, i32 33
  %1150 = getelementptr inbounds %struct.Reg, %struct.Reg* %1149, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1150 to i64*
  %1151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1152 = getelementptr inbounds %struct.GPR, %struct.GPR* %1151, i32 0, i32 15
  %1153 = getelementptr inbounds %struct.Reg, %struct.Reg* %1152, i32 0, i32 0
  %RBP.i220 = bitcast %union.anon* %1153 to i64*
  %1154 = load i64, i64* %RBP.i220
  %1155 = sub i64 %1154, 12
  %1156 = load i64, i64* %PC.i219
  %1157 = add i64 %1156, 7
  store i64 %1157, i64* %PC.i219
  %1158 = inttoptr i64 %1155 to i32*
  store i32 1, i32* %1158
  store %struct.Memory* %loadMem_433d4f, %struct.Memory** %MEMORY
  br label %block_.L_433d56

block_.L_433d56:                                  ; preds = %block_433d69, %block_.L_433cca
  %loadMem_433d56 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1160 = getelementptr inbounds %struct.GPR, %struct.GPR* %1159, i32 0, i32 33
  %1161 = getelementptr inbounds %struct.Reg, %struct.Reg* %1160, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1161 to i64*
  %1162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1163 = getelementptr inbounds %struct.GPR, %struct.GPR* %1162, i32 0, i32 1
  %1164 = getelementptr inbounds %struct.Reg, %struct.Reg* %1163, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1164 to i64*
  %1165 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1166 = getelementptr inbounds %struct.GPR, %struct.GPR* %1165, i32 0, i32 15
  %1167 = getelementptr inbounds %struct.Reg, %struct.Reg* %1166, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1167 to i64*
  %1168 = load i64, i64* %RBP.i218
  %1169 = sub i64 %1168, 12
  %1170 = load i64, i64* %PC.i216
  %1171 = add i64 %1170, 3
  store i64 %1171, i64* %PC.i216
  %1172 = inttoptr i64 %1169 to i32*
  %1173 = load i32, i32* %1172
  %1174 = zext i32 %1173 to i64
  store i64 %1174, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_433d56, %struct.Memory** %MEMORY
  %loadMem_433d59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1176 = getelementptr inbounds %struct.GPR, %struct.GPR* %1175, i32 0, i32 33
  %1177 = getelementptr inbounds %struct.Reg, %struct.Reg* %1176, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1177 to i64*
  %1178 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1179 = getelementptr inbounds %struct.GPR, %struct.GPR* %1178, i32 0, i32 5
  %1180 = getelementptr inbounds %struct.Reg, %struct.Reg* %1179, i32 0, i32 0
  %RCX.i214 = bitcast %union.anon* %1180 to i64*
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1182 = getelementptr inbounds %struct.GPR, %struct.GPR* %1181, i32 0, i32 15
  %1183 = getelementptr inbounds %struct.Reg, %struct.Reg* %1182, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1183 to i64*
  %1184 = load i64, i64* %RBP.i215
  %1185 = sub i64 %1184, 8
  %1186 = load i64, i64* %PC.i213
  %1187 = add i64 %1186, 4
  store i64 %1187, i64* %PC.i213
  %1188 = inttoptr i64 %1185 to i64*
  %1189 = load i64, i64* %1188
  store i64 %1189, i64* %RCX.i214, align 8
  store %struct.Memory* %loadMem_433d59, %struct.Memory** %MEMORY
  %loadMem_433d5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1190 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1191 = getelementptr inbounds %struct.GPR, %struct.GPR* %1190, i32 0, i32 33
  %1192 = getelementptr inbounds %struct.Reg, %struct.Reg* %1191, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1192 to i64*
  %1193 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1194 = getelementptr inbounds %struct.GPR, %struct.GPR* %1193, i32 0, i32 1
  %1195 = getelementptr inbounds %struct.Reg, %struct.Reg* %1194, i32 0, i32 0
  %EAX.i211 = bitcast %union.anon* %1195 to i32*
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 5
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %RCX.i212 = bitcast %union.anon* %1198 to i64*
  %1199 = load i32, i32* %EAX.i211
  %1200 = zext i32 %1199 to i64
  %1201 = load i64, i64* %RCX.i212
  %1202 = add i64 %1201, 136
  %1203 = load i64, i64* %PC.i210
  %1204 = add i64 %1203, 6
  store i64 %1204, i64* %PC.i210
  %1205 = inttoptr i64 %1202 to i32*
  %1206 = load i32, i32* %1205
  %1207 = sub i32 %1199, %1206
  %1208 = icmp ult i32 %1199, %1206
  %1209 = zext i1 %1208 to i8
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1209, i8* %1210, align 1
  %1211 = and i32 %1207, 255
  %1212 = call i32 @llvm.ctpop.i32(i32 %1211)
  %1213 = trunc i32 %1212 to i8
  %1214 = and i8 %1213, 1
  %1215 = xor i8 %1214, 1
  %1216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1215, i8* %1216, align 1
  %1217 = xor i32 %1206, %1199
  %1218 = xor i32 %1217, %1207
  %1219 = lshr i32 %1218, 4
  %1220 = trunc i32 %1219 to i8
  %1221 = and i8 %1220, 1
  %1222 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1221, i8* %1222, align 1
  %1223 = icmp eq i32 %1207, 0
  %1224 = zext i1 %1223 to i8
  %1225 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1224, i8* %1225, align 1
  %1226 = lshr i32 %1207, 31
  %1227 = trunc i32 %1226 to i8
  %1228 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1227, i8* %1228, align 1
  %1229 = lshr i32 %1199, 31
  %1230 = lshr i32 %1206, 31
  %1231 = xor i32 %1230, %1229
  %1232 = xor i32 %1226, %1229
  %1233 = add i32 %1232, %1231
  %1234 = icmp eq i32 %1233, 2
  %1235 = zext i1 %1234 to i8
  %1236 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1235, i8* %1236, align 1
  store %struct.Memory* %loadMem_433d5d, %struct.Memory** %MEMORY
  %loadMem_433d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 33
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %PC.i209 = bitcast %union.anon* %1239 to i64*
  %1240 = load i64, i64* %PC.i209
  %1241 = add i64 %1240, 230
  %1242 = load i64, i64* %PC.i209
  %1243 = add i64 %1242, 6
  %1244 = load i64, i64* %PC.i209
  %1245 = add i64 %1244, 6
  store i64 %1245, i64* %PC.i209
  %1246 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1247 = load i8, i8* %1246, align 1
  %1248 = icmp ne i8 %1247, 0
  %1249 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1250 = load i8, i8* %1249, align 1
  %1251 = icmp ne i8 %1250, 0
  %1252 = xor i1 %1248, %1251
  %1253 = xor i1 %1252, true
  %1254 = zext i1 %1253 to i8
  store i8 %1254, i8* %BRANCH_TAKEN, align 1
  %1255 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1256 = select i1 %1252, i64 %1243, i64 %1241
  store i64 %1256, i64* %1255, align 8
  store %struct.Memory* %loadMem_433d63, %struct.Memory** %MEMORY
  %loadBr_433d63 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433d63 = icmp eq i8 %loadBr_433d63, 1
  br i1 %cmpBr_433d63, label %block_.L_433e49, label %block_433d69

block_433d69:                                     ; preds = %block_.L_433d56
  %loadMem_433d69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1257 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1258 = getelementptr inbounds %struct.GPR, %struct.GPR* %1257, i32 0, i32 33
  %1259 = getelementptr inbounds %struct.Reg, %struct.Reg* %1258, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1259 to i64*
  %1260 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1261 = getelementptr inbounds %struct.GPR, %struct.GPR* %1260, i32 0, i32 9
  %1262 = getelementptr inbounds %struct.Reg, %struct.Reg* %1261, i32 0, i32 0
  %RSI.i208 = bitcast %union.anon* %1262 to i64*
  %1263 = load i64, i64* %PC.i207
  %1264 = add i64 %1263, 5
  store i64 %1264, i64* %PC.i207
  store i64 3, i64* %RSI.i208, align 8
  store %struct.Memory* %loadMem_433d69, %struct.Memory** %MEMORY
  %loadMem_433d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1265 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1266 = getelementptr inbounds %struct.GPR, %struct.GPR* %1265, i32 0, i32 33
  %1267 = getelementptr inbounds %struct.Reg, %struct.Reg* %1266, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1267 to i64*
  %1268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1269 = getelementptr inbounds %struct.GPR, %struct.GPR* %1268, i32 0, i32 1
  %1270 = getelementptr inbounds %struct.Reg, %struct.Reg* %1269, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %1270 to i64*
  %1271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1272 = getelementptr inbounds %struct.GPR, %struct.GPR* %1271, i32 0, i32 15
  %1273 = getelementptr inbounds %struct.Reg, %struct.Reg* %1272, i32 0, i32 0
  %RBP.i206 = bitcast %union.anon* %1273 to i64*
  %1274 = load i64, i64* %RBP.i206
  %1275 = sub i64 %1274, 8
  %1276 = load i64, i64* %PC.i204
  %1277 = add i64 %1276, 4
  store i64 %1277, i64* %PC.i204
  %1278 = inttoptr i64 %1275 to i64*
  %1279 = load i64, i64* %1278
  store i64 %1279, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_433d6e, %struct.Memory** %MEMORY
  %loadMem_433d72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1281 = getelementptr inbounds %struct.GPR, %struct.GPR* %1280, i32 0, i32 33
  %1282 = getelementptr inbounds %struct.Reg, %struct.Reg* %1281, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1282 to i64*
  %1283 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1284 = getelementptr inbounds %struct.GPR, %struct.GPR* %1283, i32 0, i32 1
  %1285 = getelementptr inbounds %struct.Reg, %struct.Reg* %1284, i32 0, i32 0
  %RAX.i203 = bitcast %union.anon* %1285 to i64*
  %1286 = load i64, i64* %RAX.i203
  %1287 = add i64 %1286, 144
  %1288 = load i64, i64* %PC.i202
  %1289 = add i64 %1288, 7
  store i64 %1289, i64* %PC.i202
  %1290 = inttoptr i64 %1287 to i64*
  %1291 = load i64, i64* %1290
  store i64 %1291, i64* %RAX.i203, align 8
  store %struct.Memory* %loadMem_433d72, %struct.Memory** %MEMORY
  %loadMem_433d79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1293 = getelementptr inbounds %struct.GPR, %struct.GPR* %1292, i32 0, i32 33
  %1294 = getelementptr inbounds %struct.Reg, %struct.Reg* %1293, i32 0, i32 0
  %PC.i199 = bitcast %union.anon* %1294 to i64*
  %1295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1296 = getelementptr inbounds %struct.GPR, %struct.GPR* %1295, i32 0, i32 5
  %1297 = getelementptr inbounds %struct.Reg, %struct.Reg* %1296, i32 0, i32 0
  %RCX.i200 = bitcast %union.anon* %1297 to i64*
  %1298 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1299 = getelementptr inbounds %struct.GPR, %struct.GPR* %1298, i32 0, i32 15
  %1300 = getelementptr inbounds %struct.Reg, %struct.Reg* %1299, i32 0, i32 0
  %RBP.i201 = bitcast %union.anon* %1300 to i64*
  %1301 = load i64, i64* %RBP.i201
  %1302 = sub i64 %1301, 12
  %1303 = load i64, i64* %PC.i199
  %1304 = add i64 %1303, 4
  store i64 %1304, i64* %PC.i199
  %1305 = inttoptr i64 %1302 to i32*
  %1306 = load i32, i32* %1305
  %1307 = sext i32 %1306 to i64
  store i64 %1307, i64* %RCX.i200, align 8
  store %struct.Memory* %loadMem_433d79, %struct.Memory** %MEMORY
  %loadMem_433d7d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1308 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1309 = getelementptr inbounds %struct.GPR, %struct.GPR* %1308, i32 0, i32 33
  %1310 = getelementptr inbounds %struct.Reg, %struct.Reg* %1309, i32 0, i32 0
  %PC.i195 = bitcast %union.anon* %1310 to i64*
  %1311 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1312 = getelementptr inbounds %struct.GPR, %struct.GPR* %1311, i32 0, i32 1
  %1313 = getelementptr inbounds %struct.Reg, %struct.Reg* %1312, i32 0, i32 0
  %RAX.i196 = bitcast %union.anon* %1313 to i64*
  %1314 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1315 = getelementptr inbounds %struct.GPR, %struct.GPR* %1314, i32 0, i32 5
  %1316 = getelementptr inbounds %struct.Reg, %struct.Reg* %1315, i32 0, i32 0
  %RCX.i197 = bitcast %union.anon* %1316 to i64*
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 11
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %RDI.i198 = bitcast %union.anon* %1319 to i64*
  %1320 = load i64, i64* %RAX.i196
  %1321 = load i64, i64* %RCX.i197
  %1322 = mul i64 %1321, 8
  %1323 = add i64 %1322, %1320
  %1324 = load i64, i64* %PC.i195
  %1325 = add i64 %1324, 4
  store i64 %1325, i64* %PC.i195
  %1326 = inttoptr i64 %1323 to i64*
  %1327 = load i64, i64* %1326
  store i64 %1327, i64* %RDI.i198, align 8
  store %struct.Memory* %loadMem_433d7d, %struct.Memory** %MEMORY
  %loadMem1_433d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1330 to i64*
  %1331 = load i64, i64* %PC.i194
  %1332 = add i64 %1331, 123663
  %1333 = load i64, i64* %PC.i194
  %1334 = add i64 %1333, 5
  %1335 = load i64, i64* %PC.i194
  %1336 = add i64 %1335, 5
  store i64 %1336, i64* %PC.i194
  %1337 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1338 = load i64, i64* %1337, align 8
  %1339 = add i64 %1338, -8
  %1340 = inttoptr i64 %1339 to i64*
  store i64 %1334, i64* %1340
  store i64 %1339, i64* %1337, align 8
  %1341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1332, i64* %1341, align 8
  store %struct.Memory* %loadMem1_433d81, %struct.Memory** %MEMORY
  %loadMem2_433d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433d81 = load i64, i64* %3
  %call2_433d81 = call %struct.Memory* @sub_452090.FSum(%struct.State* %0, i64 %loadPC_433d81, %struct.Memory* %loadMem2_433d81)
  store %struct.Memory* %call2_433d81, %struct.Memory** %MEMORY
  %loadMem_433d86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1342 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1343 = getelementptr inbounds %struct.GPR, %struct.GPR* %1342, i32 0, i32 33
  %1344 = getelementptr inbounds %struct.Reg, %struct.Reg* %1343, i32 0, i32 0
  %PC.i192 = bitcast %union.anon* %1344 to i64*
  %1345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1346 = getelementptr inbounds %struct.GPR, %struct.GPR* %1345, i32 0, i32 9
  %1347 = getelementptr inbounds %struct.Reg, %struct.Reg* %1346, i32 0, i32 0
  %RSI.i193 = bitcast %union.anon* %1347 to i64*
  %1348 = load i64, i64* %PC.i192
  %1349 = add i64 %1348, 5
  store i64 %1349, i64* %PC.i192
  store i64 3, i64* %RSI.i193, align 8
  store %struct.Memory* %loadMem_433d86, %struct.Memory** %MEMORY
  %loadMem_433d8b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1351 = getelementptr inbounds %struct.GPR, %struct.GPR* %1350, i32 0, i32 33
  %1352 = getelementptr inbounds %struct.Reg, %struct.Reg* %1351, i32 0, i32 0
  %PC.i190 = bitcast %union.anon* %1352 to i64*
  %1353 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1354 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1353, i64 0, i64 1
  %YMM1.i191 = bitcast %union.VectorReg* %1354 to %"class.std::bitset"*
  %1355 = bitcast %"class.std::bitset"* %YMM1.i191 to i8*
  %1356 = load i64, i64* %PC.i190
  %1357 = add i64 %1356, ptrtoint (%G_0x20a4d__rip__type* @G_0x20a4d__rip_ to i64)
  %1358 = load i64, i64* %PC.i190
  %1359 = add i64 %1358, 8
  store i64 %1359, i64* %PC.i190
  %1360 = inttoptr i64 %1357 to double*
  %1361 = load double, double* %1360
  %1362 = bitcast i8* %1355 to double*
  store double %1361, double* %1362, align 1
  %1363 = getelementptr inbounds i8, i8* %1355, i64 8
  %1364 = bitcast i8* %1363 to double*
  store double 0.000000e+00, double* %1364, align 1
  store %struct.Memory* %loadMem_433d8b, %struct.Memory** %MEMORY
  %loadMem_433d93 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1365 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1366 = getelementptr inbounds %struct.GPR, %struct.GPR* %1365, i32 0, i32 33
  %1367 = getelementptr inbounds %struct.Reg, %struct.Reg* %1366, i32 0, i32 0
  %PC.i187 = bitcast %union.anon* %1367 to i64*
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 1
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %RAX.i188 = bitcast %union.anon* %1370 to i64*
  %1371 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1372 = getelementptr inbounds %struct.GPR, %struct.GPR* %1371, i32 0, i32 15
  %1373 = getelementptr inbounds %struct.Reg, %struct.Reg* %1372, i32 0, i32 0
  %RBP.i189 = bitcast %union.anon* %1373 to i64*
  %1374 = load i64, i64* %RBP.i189
  %1375 = sub i64 %1374, 8
  %1376 = load i64, i64* %PC.i187
  %1377 = add i64 %1376, 4
  store i64 %1377, i64* %PC.i187
  %1378 = inttoptr i64 %1375 to i64*
  %1379 = load i64, i64* %1378
  store i64 %1379, i64* %RAX.i188, align 8
  store %struct.Memory* %loadMem_433d93, %struct.Memory** %MEMORY
  %loadMem_433d97 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1381 = getelementptr inbounds %struct.GPR, %struct.GPR* %1380, i32 0, i32 33
  %1382 = getelementptr inbounds %struct.Reg, %struct.Reg* %1381, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %1382 to i64*
  %1383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1384 = getelementptr inbounds %struct.GPR, %struct.GPR* %1383, i32 0, i32 1
  %1385 = getelementptr inbounds %struct.Reg, %struct.Reg* %1384, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %1385 to i64*
  %1386 = load i64, i64* %RAX.i186
  %1387 = add i64 %1386, 216
  %1388 = load i64, i64* %PC.i185
  %1389 = add i64 %1388, 7
  store i64 %1389, i64* %PC.i185
  %1390 = inttoptr i64 %1387 to i64*
  %1391 = load i64, i64* %1390
  store i64 %1391, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_433d97, %struct.Memory** %MEMORY
  %loadMem_433d9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %1392 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1393 = getelementptr inbounds %struct.GPR, %struct.GPR* %1392, i32 0, i32 33
  %1394 = getelementptr inbounds %struct.Reg, %struct.Reg* %1393, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %1394 to i64*
  %1395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1396 = getelementptr inbounds %struct.GPR, %struct.GPR* %1395, i32 0, i32 5
  %1397 = getelementptr inbounds %struct.Reg, %struct.Reg* %1396, i32 0, i32 0
  %RCX.i183 = bitcast %union.anon* %1397 to i64*
  %1398 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1399 = getelementptr inbounds %struct.GPR, %struct.GPR* %1398, i32 0, i32 15
  %1400 = getelementptr inbounds %struct.Reg, %struct.Reg* %1399, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %1400 to i64*
  %1401 = load i64, i64* %RBP.i184
  %1402 = sub i64 %1401, 12
  %1403 = load i64, i64* %PC.i182
  %1404 = add i64 %1403, 4
  store i64 %1404, i64* %PC.i182
  %1405 = inttoptr i64 %1402 to i32*
  %1406 = load i32, i32* %1405
  %1407 = sext i32 %1406 to i64
  store i64 %1407, i64* %RCX.i183, align 8
  store %struct.Memory* %loadMem_433d9e, %struct.Memory** %MEMORY
  %loadMem_433da2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1408 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1409 = getelementptr inbounds %struct.GPR, %struct.GPR* %1408, i32 0, i32 33
  %1410 = getelementptr inbounds %struct.Reg, %struct.Reg* %1409, i32 0, i32 0
  %PC.i178 = bitcast %union.anon* %1410 to i64*
  %1411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1412 = getelementptr inbounds %struct.GPR, %struct.GPR* %1411, i32 0, i32 1
  %1413 = getelementptr inbounds %struct.Reg, %struct.Reg* %1412, i32 0, i32 0
  %RAX.i179 = bitcast %union.anon* %1413 to i64*
  %1414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1415 = getelementptr inbounds %struct.GPR, %struct.GPR* %1414, i32 0, i32 5
  %1416 = getelementptr inbounds %struct.Reg, %struct.Reg* %1415, i32 0, i32 0
  %RCX.i180 = bitcast %union.anon* %1416 to i64*
  %1417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1418 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1417, i64 0, i64 0
  %YMM0.i181 = bitcast %union.VectorReg* %1418 to %"class.std::bitset"*
  %1419 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %1420 = bitcast %"class.std::bitset"* %YMM0.i181 to i8*
  %1421 = load i64, i64* %RAX.i179
  %1422 = load i64, i64* %RCX.i180
  %1423 = mul i64 %1422, 4
  %1424 = add i64 %1423, %1421
  %1425 = load i64, i64* %PC.i178
  %1426 = add i64 %1425, 5
  store i64 %1426, i64* %PC.i178
  %1427 = bitcast i8* %1420 to <2 x float>*
  %1428 = load <2 x float>, <2 x float>* %1427, align 1
  %1429 = getelementptr inbounds i8, i8* %1420, i64 8
  %1430 = bitcast i8* %1429 to <2 x i32>*
  %1431 = load <2 x i32>, <2 x i32>* %1430, align 1
  %1432 = inttoptr i64 %1424 to float*
  %1433 = load float, float* %1432
  %1434 = extractelement <2 x float> %1428, i32 0
  %1435 = fadd float %1434, %1433
  %1436 = bitcast i8* %1419 to float*
  store float %1435, float* %1436, align 1
  %1437 = bitcast <2 x float> %1428 to <2 x i32>
  %1438 = extractelement <2 x i32> %1437, i32 1
  %1439 = getelementptr inbounds i8, i8* %1419, i64 4
  %1440 = bitcast i8* %1439 to i32*
  store i32 %1438, i32* %1440, align 1
  %1441 = extractelement <2 x i32> %1431, i32 0
  %1442 = getelementptr inbounds i8, i8* %1419, i64 8
  %1443 = bitcast i8* %1442 to i32*
  store i32 %1441, i32* %1443, align 1
  %1444 = extractelement <2 x i32> %1431, i32 1
  %1445 = getelementptr inbounds i8, i8* %1419, i64 12
  %1446 = bitcast i8* %1445 to i32*
  store i32 %1444, i32* %1446, align 1
  store %struct.Memory* %loadMem_433da2, %struct.Memory** %MEMORY
  %loadMem_433da7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1448 = getelementptr inbounds %struct.GPR, %struct.GPR* %1447, i32 0, i32 33
  %1449 = getelementptr inbounds %struct.Reg, %struct.Reg* %1448, i32 0, i32 0
  %PC.i175 = bitcast %union.anon* %1449 to i64*
  %1450 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1451 = getelementptr inbounds %struct.GPR, %struct.GPR* %1450, i32 0, i32 15
  %1452 = getelementptr inbounds %struct.Reg, %struct.Reg* %1451, i32 0, i32 0
  %RBP.i176 = bitcast %union.anon* %1452 to i64*
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1454 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1453, i64 0, i64 0
  %XMM0.i177 = bitcast %union.VectorReg* %1454 to %union.vec128_t*
  %1455 = load i64, i64* %RBP.i176
  %1456 = sub i64 %1455, 20
  %1457 = bitcast %union.vec128_t* %XMM0.i177 to i8*
  %1458 = load i64, i64* %PC.i175
  %1459 = add i64 %1458, 5
  store i64 %1459, i64* %PC.i175
  %1460 = bitcast i8* %1457 to <2 x float>*
  %1461 = load <2 x float>, <2 x float>* %1460, align 1
  %1462 = extractelement <2 x float> %1461, i32 0
  %1463 = inttoptr i64 %1456 to float*
  store float %1462, float* %1463
  store %struct.Memory* %loadMem_433da7, %struct.Memory** %MEMORY
  %loadMem_433dac = load %struct.Memory*, %struct.Memory** %MEMORY
  %1464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1465 = getelementptr inbounds %struct.GPR, %struct.GPR* %1464, i32 0, i32 33
  %1466 = getelementptr inbounds %struct.Reg, %struct.Reg* %1465, i32 0, i32 0
  %PC.i172 = bitcast %union.anon* %1466 to i64*
  %1467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1468 = getelementptr inbounds %struct.GPR, %struct.GPR* %1467, i32 0, i32 1
  %1469 = getelementptr inbounds %struct.Reg, %struct.Reg* %1468, i32 0, i32 0
  %RAX.i173 = bitcast %union.anon* %1469 to i64*
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 15
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %RBP.i174 = bitcast %union.anon* %1472 to i64*
  %1473 = load i64, i64* %RBP.i174
  %1474 = sub i64 %1473, 8
  %1475 = load i64, i64* %PC.i172
  %1476 = add i64 %1475, 4
  store i64 %1476, i64* %PC.i172
  %1477 = inttoptr i64 %1474 to i64*
  %1478 = load i64, i64* %1477
  store i64 %1478, i64* %RAX.i173, align 8
  store %struct.Memory* %loadMem_433dac, %struct.Memory** %MEMORY
  %loadMem_433db0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1480 = getelementptr inbounds %struct.GPR, %struct.GPR* %1479, i32 0, i32 33
  %1481 = getelementptr inbounds %struct.Reg, %struct.Reg* %1480, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %1481 to i64*
  %1482 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1483 = getelementptr inbounds %struct.GPR, %struct.GPR* %1482, i32 0, i32 1
  %1484 = getelementptr inbounds %struct.Reg, %struct.Reg* %1483, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %1484 to i64*
  %1485 = load i64, i64* %RAX.i171
  %1486 = add i64 %1485, 144
  %1487 = load i64, i64* %PC.i170
  %1488 = add i64 %1487, 7
  store i64 %1488, i64* %PC.i170
  %1489 = inttoptr i64 %1486 to i64*
  %1490 = load i64, i64* %1489
  store i64 %1490, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_433db0, %struct.Memory** %MEMORY
  %loadMem_433db7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1491 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1492 = getelementptr inbounds %struct.GPR, %struct.GPR* %1491, i32 0, i32 33
  %1493 = getelementptr inbounds %struct.Reg, %struct.Reg* %1492, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %1493 to i64*
  %1494 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1495 = getelementptr inbounds %struct.GPR, %struct.GPR* %1494, i32 0, i32 5
  %1496 = getelementptr inbounds %struct.Reg, %struct.Reg* %1495, i32 0, i32 0
  %RCX.i168 = bitcast %union.anon* %1496 to i64*
  %1497 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1498 = getelementptr inbounds %struct.GPR, %struct.GPR* %1497, i32 0, i32 15
  %1499 = getelementptr inbounds %struct.Reg, %struct.Reg* %1498, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %1499 to i64*
  %1500 = load i64, i64* %RBP.i169
  %1501 = sub i64 %1500, 12
  %1502 = load i64, i64* %PC.i167
  %1503 = add i64 %1502, 4
  store i64 %1503, i64* %PC.i167
  %1504 = inttoptr i64 %1501 to i32*
  %1505 = load i32, i32* %1504
  %1506 = sext i32 %1505 to i64
  store i64 %1506, i64* %RCX.i168, align 8
  store %struct.Memory* %loadMem_433db7, %struct.Memory** %MEMORY
  %loadMem_433dbb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1508 = getelementptr inbounds %struct.GPR, %struct.GPR* %1507, i32 0, i32 33
  %1509 = getelementptr inbounds %struct.Reg, %struct.Reg* %1508, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %1509 to i64*
  %1510 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1511 = getelementptr inbounds %struct.GPR, %struct.GPR* %1510, i32 0, i32 1
  %1512 = getelementptr inbounds %struct.Reg, %struct.Reg* %1511, i32 0, i32 0
  %RAX.i164 = bitcast %union.anon* %1512 to i64*
  %1513 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1514 = getelementptr inbounds %struct.GPR, %struct.GPR* %1513, i32 0, i32 5
  %1515 = getelementptr inbounds %struct.Reg, %struct.Reg* %1514, i32 0, i32 0
  %RCX.i165 = bitcast %union.anon* %1515 to i64*
  %1516 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1517 = getelementptr inbounds %struct.GPR, %struct.GPR* %1516, i32 0, i32 11
  %1518 = getelementptr inbounds %struct.Reg, %struct.Reg* %1517, i32 0, i32 0
  %RDI.i166 = bitcast %union.anon* %1518 to i64*
  %1519 = load i64, i64* %RAX.i164
  %1520 = load i64, i64* %RCX.i165
  %1521 = mul i64 %1520, 8
  %1522 = add i64 %1521, %1519
  %1523 = load i64, i64* %PC.i163
  %1524 = add i64 %1523, 4
  store i64 %1524, i64* %PC.i163
  %1525 = inttoptr i64 %1522 to i64*
  %1526 = load i64, i64* %1525
  store i64 %1526, i64* %RDI.i166, align 8
  store %struct.Memory* %loadMem_433dbb, %struct.Memory** %MEMORY
  %loadMem_433dbf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1527 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1528 = getelementptr inbounds %struct.GPR, %struct.GPR* %1527, i32 0, i32 33
  %1529 = getelementptr inbounds %struct.Reg, %struct.Reg* %1528, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %1529 to i64*
  %1530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1531 = getelementptr inbounds %struct.GPR, %struct.GPR* %1530, i32 0, i32 15
  %1532 = getelementptr inbounds %struct.Reg, %struct.Reg* %1531, i32 0, i32 0
  %RBP.i161 = bitcast %union.anon* %1532 to i64*
  %1533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1533, i64 0, i64 0
  %YMM0.i162 = bitcast %union.VectorReg* %1534 to %"class.std::bitset"*
  %1535 = bitcast %"class.std::bitset"* %YMM0.i162 to i8*
  %1536 = load i64, i64* %RBP.i161
  %1537 = sub i64 %1536, 20
  %1538 = load i64, i64* %PC.i160
  %1539 = add i64 %1538, 5
  store i64 %1539, i64* %PC.i160
  %1540 = inttoptr i64 %1537 to float*
  %1541 = load float, float* %1540
  %1542 = fpext float %1541 to double
  %1543 = bitcast i8* %1535 to double*
  store double %1542, double* %1543, align 1
  store %struct.Memory* %loadMem_433dbf, %struct.Memory** %MEMORY
  %loadMem_433dc4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1544 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1545 = getelementptr inbounds %struct.GPR, %struct.GPR* %1544, i32 0, i32 33
  %1546 = getelementptr inbounds %struct.Reg, %struct.Reg* %1545, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %1546 to i64*
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1548 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1547, i64 0, i64 1
  %YMM1.i158 = bitcast %union.VectorReg* %1548 to %"class.std::bitset"*
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1550 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1549, i64 0, i64 0
  %XMM0.i159 = bitcast %union.VectorReg* %1550 to %union.vec128_t*
  %1551 = bitcast %"class.std::bitset"* %YMM1.i158 to i8*
  %1552 = bitcast %"class.std::bitset"* %YMM1.i158 to i8*
  %1553 = bitcast %union.vec128_t* %XMM0.i159 to i8*
  %1554 = load i64, i64* %PC.i157
  %1555 = add i64 %1554, 4
  store i64 %1555, i64* %PC.i157
  %1556 = bitcast i8* %1552 to double*
  %1557 = load double, double* %1556, align 1
  %1558 = getelementptr inbounds i8, i8* %1552, i64 8
  %1559 = bitcast i8* %1558 to i64*
  %1560 = load i64, i64* %1559, align 1
  %1561 = bitcast i8* %1553 to double*
  %1562 = load double, double* %1561, align 1
  %1563 = fdiv double %1557, %1562
  %1564 = bitcast i8* %1551 to double*
  store double %1563, double* %1564, align 1
  %1565 = getelementptr inbounds i8, i8* %1551, i64 8
  %1566 = bitcast i8* %1565 to i64*
  store i64 %1560, i64* %1566, align 1
  store %struct.Memory* %loadMem_433dc4, %struct.Memory** %MEMORY
  %loadMem_433dc8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1568 = getelementptr inbounds %struct.GPR, %struct.GPR* %1567, i32 0, i32 33
  %1569 = getelementptr inbounds %struct.Reg, %struct.Reg* %1568, i32 0, i32 0
  %PC.i154 = bitcast %union.anon* %1569 to i64*
  %1570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1571 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1570, i64 0, i64 0
  %YMM0.i155 = bitcast %union.VectorReg* %1571 to %"class.std::bitset"*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1573 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1572, i64 0, i64 1
  %XMM1.i156 = bitcast %union.VectorReg* %1573 to %union.vec128_t*
  %1574 = bitcast %"class.std::bitset"* %YMM0.i155 to i8*
  %1575 = bitcast %union.vec128_t* %XMM1.i156 to i8*
  %1576 = load i64, i64* %PC.i154
  %1577 = add i64 %1576, 4
  store i64 %1577, i64* %PC.i154
  %1578 = bitcast i8* %1574 to <2 x i32>*
  %1579 = load <2 x i32>, <2 x i32>* %1578, align 1
  %1580 = getelementptr inbounds i8, i8* %1574, i64 8
  %1581 = bitcast i8* %1580 to <2 x i32>*
  %1582 = load <2 x i32>, <2 x i32>* %1581, align 1
  %1583 = bitcast i8* %1575 to double*
  %1584 = load double, double* %1583, align 1
  %1585 = fptrunc double %1584 to float
  %1586 = bitcast i8* %1574 to float*
  store float %1585, float* %1586, align 1
  %1587 = extractelement <2 x i32> %1579, i32 1
  %1588 = getelementptr inbounds i8, i8* %1574, i64 4
  %1589 = bitcast i8* %1588 to i32*
  store i32 %1587, i32* %1589, align 1
  %1590 = extractelement <2 x i32> %1582, i32 0
  %1591 = bitcast i8* %1580 to i32*
  store i32 %1590, i32* %1591, align 1
  %1592 = extractelement <2 x i32> %1582, i32 1
  %1593 = getelementptr inbounds i8, i8* %1574, i64 12
  %1594 = bitcast i8* %1593 to i32*
  store i32 %1592, i32* %1594, align 1
  store %struct.Memory* %loadMem_433dc8, %struct.Memory** %MEMORY
  %loadMem1_433dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1595 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1596 = getelementptr inbounds %struct.GPR, %struct.GPR* %1595, i32 0, i32 33
  %1597 = getelementptr inbounds %struct.Reg, %struct.Reg* %1596, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %1597 to i64*
  %1598 = load i64, i64* %PC.i153
  %1599 = add i64 %1598, 123412
  %1600 = load i64, i64* %PC.i153
  %1601 = add i64 %1600, 5
  %1602 = load i64, i64* %PC.i153
  %1603 = add i64 %1602, 5
  store i64 %1603, i64* %PC.i153
  %1604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1605 = load i64, i64* %1604, align 8
  %1606 = add i64 %1605, -8
  %1607 = inttoptr i64 %1606 to i64*
  store i64 %1601, i64* %1607
  store i64 %1606, i64* %1604, align 8
  %1608 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1599, i64* %1608, align 8
  store %struct.Memory* %loadMem1_433dcc, %struct.Memory** %MEMORY
  %loadMem2_433dcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433dcc = load i64, i64* %3
  %call2_433dcc = call %struct.Memory* @sub_451fe0.FScale(%struct.State* %0, i64 %loadPC_433dcc, %struct.Memory* %loadMem2_433dcc)
  store %struct.Memory* %call2_433dcc, %struct.Memory** %MEMORY
  %loadMem_433dd1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1609 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1610 = getelementptr inbounds %struct.GPR, %struct.GPR* %1609, i32 0, i32 33
  %1611 = getelementptr inbounds %struct.Reg, %struct.Reg* %1610, i32 0, i32 0
  %PC.i151 = bitcast %union.anon* %1611 to i64*
  %1612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1613 = getelementptr inbounds %struct.GPR, %struct.GPR* %1612, i32 0, i32 9
  %1614 = getelementptr inbounds %struct.Reg, %struct.Reg* %1613, i32 0, i32 0
  %RSI.i152 = bitcast %union.anon* %1614 to i64*
  %1615 = load i64, i64* %PC.i151
  %1616 = add i64 %1615, 5
  store i64 %1616, i64* %PC.i151
  store i64 2, i64* %RSI.i152, align 8
  store %struct.Memory* %loadMem_433dd1, %struct.Memory** %MEMORY
  %loadMem_433dd6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1618 = getelementptr inbounds %struct.GPR, %struct.GPR* %1617, i32 0, i32 33
  %1619 = getelementptr inbounds %struct.Reg, %struct.Reg* %1618, i32 0, i32 0
  %PC.i148 = bitcast %union.anon* %1619 to i64*
  %1620 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1621 = getelementptr inbounds %struct.GPR, %struct.GPR* %1620, i32 0, i32 15
  %1622 = getelementptr inbounds %struct.Reg, %struct.Reg* %1621, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %1622 to i64*
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1624 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1623, i64 0, i64 0
  %YMM0.i150 = bitcast %union.VectorReg* %1624 to %"class.std::bitset"*
  %1625 = bitcast %"class.std::bitset"* %YMM0.i150 to i8*
  %1626 = load i64, i64* %RBP.i149
  %1627 = sub i64 %1626, 20
  %1628 = load i64, i64* %PC.i148
  %1629 = add i64 %1628, 5
  store i64 %1629, i64* %PC.i148
  %1630 = inttoptr i64 %1627 to float*
  %1631 = load float, float* %1630
  %1632 = bitcast i8* %1625 to float*
  store float %1631, float* %1632, align 1
  %1633 = getelementptr inbounds i8, i8* %1625, i64 4
  %1634 = bitcast i8* %1633 to float*
  store float 0.000000e+00, float* %1634, align 1
  %1635 = getelementptr inbounds i8, i8* %1625, i64 8
  %1636 = bitcast i8* %1635 to float*
  store float 0.000000e+00, float* %1636, align 1
  %1637 = getelementptr inbounds i8, i8* %1625, i64 12
  %1638 = bitcast i8* %1637 to float*
  store float 0.000000e+00, float* %1638, align 1
  store %struct.Memory* %loadMem_433dd6, %struct.Memory** %MEMORY
  %loadMem_433ddb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1639 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1640 = getelementptr inbounds %struct.GPR, %struct.GPR* %1639, i32 0, i32 33
  %1641 = getelementptr inbounds %struct.Reg, %struct.Reg* %1640, i32 0, i32 0
  %PC.i145 = bitcast %union.anon* %1641 to i64*
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 1
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %RAX.i146 = bitcast %union.anon* %1644 to i64*
  %1645 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1646 = getelementptr inbounds %struct.GPR, %struct.GPR* %1645, i32 0, i32 15
  %1647 = getelementptr inbounds %struct.Reg, %struct.Reg* %1646, i32 0, i32 0
  %RBP.i147 = bitcast %union.anon* %1647 to i64*
  %1648 = load i64, i64* %RBP.i147
  %1649 = sub i64 %1648, 8
  %1650 = load i64, i64* %PC.i145
  %1651 = add i64 %1650, 4
  store i64 %1651, i64* %PC.i145
  %1652 = inttoptr i64 %1649 to i64*
  %1653 = load i64, i64* %1652
  store i64 %1653, i64* %RAX.i146, align 8
  store %struct.Memory* %loadMem_433ddb, %struct.Memory** %MEMORY
  %loadMem_433ddf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1654 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1655 = getelementptr inbounds %struct.GPR, %struct.GPR* %1654, i32 0, i32 33
  %1656 = getelementptr inbounds %struct.Reg, %struct.Reg* %1655, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %1656 to i64*
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 1
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %RAX.i144 = bitcast %union.anon* %1659 to i64*
  %1660 = load i64, i64* %RAX.i144
  %1661 = add i64 %1660, 216
  %1662 = load i64, i64* %PC.i143
  %1663 = add i64 %1662, 7
  store i64 %1663, i64* %PC.i143
  %1664 = inttoptr i64 %1661 to i64*
  %1665 = load i64, i64* %1664
  store i64 %1665, i64* %RAX.i144, align 8
  store %struct.Memory* %loadMem_433ddf, %struct.Memory** %MEMORY
  %loadMem_433de6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1667 = getelementptr inbounds %struct.GPR, %struct.GPR* %1666, i32 0, i32 33
  %1668 = getelementptr inbounds %struct.Reg, %struct.Reg* %1667, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %1668 to i64*
  %1669 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1670 = getelementptr inbounds %struct.GPR, %struct.GPR* %1669, i32 0, i32 5
  %1671 = getelementptr inbounds %struct.Reg, %struct.Reg* %1670, i32 0, i32 0
  %RCX.i141 = bitcast %union.anon* %1671 to i64*
  %1672 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1673 = getelementptr inbounds %struct.GPR, %struct.GPR* %1672, i32 0, i32 15
  %1674 = getelementptr inbounds %struct.Reg, %struct.Reg* %1673, i32 0, i32 0
  %RBP.i142 = bitcast %union.anon* %1674 to i64*
  %1675 = load i64, i64* %RBP.i142
  %1676 = sub i64 %1675, 12
  %1677 = load i64, i64* %PC.i140
  %1678 = add i64 %1677, 4
  store i64 %1678, i64* %PC.i140
  %1679 = inttoptr i64 %1676 to i32*
  %1680 = load i32, i32* %1679
  %1681 = sext i32 %1680 to i64
  store i64 %1681, i64* %RCX.i141, align 8
  store %struct.Memory* %loadMem_433de6, %struct.Memory** %MEMORY
  %loadMem_433dea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1682 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1683 = getelementptr inbounds %struct.GPR, %struct.GPR* %1682, i32 0, i32 33
  %1684 = getelementptr inbounds %struct.Reg, %struct.Reg* %1683, i32 0, i32 0
  %PC.i136 = bitcast %union.anon* %1684 to i64*
  %1685 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1686 = getelementptr inbounds %struct.GPR, %struct.GPR* %1685, i32 0, i32 1
  %1687 = getelementptr inbounds %struct.Reg, %struct.Reg* %1686, i32 0, i32 0
  %RAX.i137 = bitcast %union.anon* %1687 to i64*
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1689 = getelementptr inbounds %struct.GPR, %struct.GPR* %1688, i32 0, i32 5
  %1690 = getelementptr inbounds %struct.Reg, %struct.Reg* %1689, i32 0, i32 0
  %RCX.i138 = bitcast %union.anon* %1690 to i64*
  %1691 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1692 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1691, i64 0, i64 1
  %YMM1.i139 = bitcast %union.VectorReg* %1692 to %"class.std::bitset"*
  %1693 = bitcast %"class.std::bitset"* %YMM1.i139 to i8*
  %1694 = load i64, i64* %RAX.i137
  %1695 = load i64, i64* %RCX.i138
  %1696 = mul i64 %1695, 4
  %1697 = add i64 %1696, %1694
  %1698 = load i64, i64* %PC.i136
  %1699 = add i64 %1698, 5
  store i64 %1699, i64* %PC.i136
  %1700 = inttoptr i64 %1697 to float*
  %1701 = load float, float* %1700
  %1702 = bitcast i8* %1693 to float*
  store float %1701, float* %1702, align 1
  %1703 = getelementptr inbounds i8, i8* %1693, i64 4
  %1704 = bitcast i8* %1703 to float*
  store float 0.000000e+00, float* %1704, align 1
  %1705 = getelementptr inbounds i8, i8* %1693, i64 8
  %1706 = bitcast i8* %1705 to float*
  store float 0.000000e+00, float* %1706, align 1
  %1707 = getelementptr inbounds i8, i8* %1693, i64 12
  %1708 = bitcast i8* %1707 to float*
  store float 0.000000e+00, float* %1708, align 1
  store %struct.Memory* %loadMem_433dea, %struct.Memory** %MEMORY
  %loadMem_433def = load %struct.Memory*, %struct.Memory** %MEMORY
  %1709 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1710 = getelementptr inbounds %struct.GPR, %struct.GPR* %1709, i32 0, i32 33
  %1711 = getelementptr inbounds %struct.Reg, %struct.Reg* %1710, i32 0, i32 0
  %PC.i134 = bitcast %union.anon* %1711 to i64*
  %1712 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1713 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1712, i64 0, i64 1
  %YMM1.i = bitcast %union.VectorReg* %1713 to %"class.std::bitset"*
  %1714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1715 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1714, i64 0, i64 0
  %XMM0.i135 = bitcast %union.VectorReg* %1715 to %union.vec128_t*
  %1716 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1717 = bitcast %"class.std::bitset"* %YMM1.i to i8*
  %1718 = bitcast %union.vec128_t* %XMM0.i135 to i8*
  %1719 = load i64, i64* %PC.i134
  %1720 = add i64 %1719, 4
  store i64 %1720, i64* %PC.i134
  %1721 = bitcast i8* %1717 to <2 x float>*
  %1722 = load <2 x float>, <2 x float>* %1721, align 1
  %1723 = getelementptr inbounds i8, i8* %1717, i64 8
  %1724 = bitcast i8* %1723 to <2 x i32>*
  %1725 = load <2 x i32>, <2 x i32>* %1724, align 1
  %1726 = bitcast i8* %1718 to <2 x float>*
  %1727 = load <2 x float>, <2 x float>* %1726, align 1
  %1728 = extractelement <2 x float> %1722, i32 0
  %1729 = extractelement <2 x float> %1727, i32 0
  %1730 = fdiv float %1728, %1729
  %1731 = bitcast i8* %1716 to float*
  store float %1730, float* %1731, align 1
  %1732 = bitcast <2 x float> %1722 to <2 x i32>
  %1733 = extractelement <2 x i32> %1732, i32 1
  %1734 = getelementptr inbounds i8, i8* %1716, i64 4
  %1735 = bitcast i8* %1734 to i32*
  store i32 %1733, i32* %1735, align 1
  %1736 = extractelement <2 x i32> %1725, i32 0
  %1737 = getelementptr inbounds i8, i8* %1716, i64 8
  %1738 = bitcast i8* %1737 to i32*
  store i32 %1736, i32* %1738, align 1
  %1739 = extractelement <2 x i32> %1725, i32 1
  %1740 = getelementptr inbounds i8, i8* %1716, i64 12
  %1741 = bitcast i8* %1740 to i32*
  store i32 %1739, i32* %1741, align 1
  store %struct.Memory* %loadMem_433def, %struct.Memory** %MEMORY
  %loadMem_433df3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1742 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1743 = getelementptr inbounds %struct.GPR, %struct.GPR* %1742, i32 0, i32 33
  %1744 = getelementptr inbounds %struct.Reg, %struct.Reg* %1743, i32 0, i32 0
  %PC.i131 = bitcast %union.anon* %1744 to i64*
  %1745 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1746 = getelementptr inbounds %struct.GPR, %struct.GPR* %1745, i32 0, i32 1
  %1747 = getelementptr inbounds %struct.Reg, %struct.Reg* %1746, i32 0, i32 0
  %RAX.i132 = bitcast %union.anon* %1747 to i64*
  %1748 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1749 = getelementptr inbounds %struct.GPR, %struct.GPR* %1748, i32 0, i32 5
  %1750 = getelementptr inbounds %struct.Reg, %struct.Reg* %1749, i32 0, i32 0
  %RCX.i133 = bitcast %union.anon* %1750 to i64*
  %1751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %1752 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %1751, i64 0, i64 1
  %XMM1.i = bitcast %union.VectorReg* %1752 to %union.vec128_t*
  %1753 = load i64, i64* %RAX.i132
  %1754 = load i64, i64* %RCX.i133
  %1755 = mul i64 %1754, 4
  %1756 = add i64 %1755, %1753
  %1757 = bitcast %union.vec128_t* %XMM1.i to i8*
  %1758 = load i64, i64* %PC.i131
  %1759 = add i64 %1758, 5
  store i64 %1759, i64* %PC.i131
  %1760 = bitcast i8* %1757 to <2 x float>*
  %1761 = load <2 x float>, <2 x float>* %1760, align 1
  %1762 = extractelement <2 x float> %1761, i32 0
  %1763 = inttoptr i64 %1756 to float*
  store float %1762, float* %1763
  store %struct.Memory* %loadMem_433df3, %struct.Memory** %MEMORY
  %loadMem_433df8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1764 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1765 = getelementptr inbounds %struct.GPR, %struct.GPR* %1764, i32 0, i32 33
  %1766 = getelementptr inbounds %struct.Reg, %struct.Reg* %1765, i32 0, i32 0
  %PC.i128 = bitcast %union.anon* %1766 to i64*
  %1767 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1768 = getelementptr inbounds %struct.GPR, %struct.GPR* %1767, i32 0, i32 1
  %1769 = getelementptr inbounds %struct.Reg, %struct.Reg* %1768, i32 0, i32 0
  %RAX.i129 = bitcast %union.anon* %1769 to i64*
  %1770 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1771 = getelementptr inbounds %struct.GPR, %struct.GPR* %1770, i32 0, i32 15
  %1772 = getelementptr inbounds %struct.Reg, %struct.Reg* %1771, i32 0, i32 0
  %RBP.i130 = bitcast %union.anon* %1772 to i64*
  %1773 = load i64, i64* %RBP.i130
  %1774 = sub i64 %1773, 8
  %1775 = load i64, i64* %PC.i128
  %1776 = add i64 %1775, 4
  store i64 %1776, i64* %PC.i128
  %1777 = inttoptr i64 %1774 to i64*
  %1778 = load i64, i64* %1777
  store i64 %1778, i64* %RAX.i129, align 8
  store %struct.Memory* %loadMem_433df8, %struct.Memory** %MEMORY
  %loadMem_433dfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1779 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1780 = getelementptr inbounds %struct.GPR, %struct.GPR* %1779, i32 0, i32 33
  %1781 = getelementptr inbounds %struct.Reg, %struct.Reg* %1780, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %1781 to i64*
  %1782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1783 = getelementptr inbounds %struct.GPR, %struct.GPR* %1782, i32 0, i32 1
  %1784 = getelementptr inbounds %struct.Reg, %struct.Reg* %1783, i32 0, i32 0
  %RAX.i127 = bitcast %union.anon* %1784 to i64*
  %1785 = load i64, i64* %RAX.i127
  %1786 = add i64 %1785, 144
  %1787 = load i64, i64* %PC.i126
  %1788 = add i64 %1787, 7
  store i64 %1788, i64* %PC.i126
  %1789 = inttoptr i64 %1786 to i64*
  %1790 = load i64, i64* %1789
  store i64 %1790, i64* %RAX.i127, align 8
  store %struct.Memory* %loadMem_433dfc, %struct.Memory** %MEMORY
  %loadMem_433e03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1792 = getelementptr inbounds %struct.GPR, %struct.GPR* %1791, i32 0, i32 33
  %1793 = getelementptr inbounds %struct.Reg, %struct.Reg* %1792, i32 0, i32 0
  %PC.i123 = bitcast %union.anon* %1793 to i64*
  %1794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1795 = getelementptr inbounds %struct.GPR, %struct.GPR* %1794, i32 0, i32 5
  %1796 = getelementptr inbounds %struct.Reg, %struct.Reg* %1795, i32 0, i32 0
  %RCX.i124 = bitcast %union.anon* %1796 to i64*
  %1797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1798 = getelementptr inbounds %struct.GPR, %struct.GPR* %1797, i32 0, i32 15
  %1799 = getelementptr inbounds %struct.Reg, %struct.Reg* %1798, i32 0, i32 0
  %RBP.i125 = bitcast %union.anon* %1799 to i64*
  %1800 = load i64, i64* %RBP.i125
  %1801 = sub i64 %1800, 12
  %1802 = load i64, i64* %PC.i123
  %1803 = add i64 %1802, 4
  store i64 %1803, i64* %PC.i123
  %1804 = inttoptr i64 %1801 to i32*
  %1805 = load i32, i32* %1804
  %1806 = sext i32 %1805 to i64
  store i64 %1806, i64* %RCX.i124, align 8
  store %struct.Memory* %loadMem_433e03, %struct.Memory** %MEMORY
  %loadMem_433e07 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1808 = getelementptr inbounds %struct.GPR, %struct.GPR* %1807, i32 0, i32 33
  %1809 = getelementptr inbounds %struct.Reg, %struct.Reg* %1808, i32 0, i32 0
  %PC.i120 = bitcast %union.anon* %1809 to i64*
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1811 = getelementptr inbounds %struct.GPR, %struct.GPR* %1810, i32 0, i32 1
  %1812 = getelementptr inbounds %struct.Reg, %struct.Reg* %1811, i32 0, i32 0
  %RAX.i121 = bitcast %union.anon* %1812 to i64*
  %1813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1814 = getelementptr inbounds %struct.GPR, %struct.GPR* %1813, i32 0, i32 5
  %1815 = getelementptr inbounds %struct.Reg, %struct.Reg* %1814, i32 0, i32 0
  %RCX.i122 = bitcast %union.anon* %1815 to i64*
  %1816 = load i64, i64* %RAX.i121
  %1817 = load i64, i64* %RCX.i122
  %1818 = mul i64 %1817, 8
  %1819 = add i64 %1818, %1816
  %1820 = load i64, i64* %PC.i120
  %1821 = add i64 %1820, 4
  store i64 %1821, i64* %PC.i120
  %1822 = inttoptr i64 %1819 to i64*
  %1823 = load i64, i64* %1822
  store i64 %1823, i64* %RAX.i121, align 8
  store %struct.Memory* %loadMem_433e07, %struct.Memory** %MEMORY
  %loadMem_433e0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1824 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1825 = getelementptr inbounds %struct.GPR, %struct.GPR* %1824, i32 0, i32 33
  %1826 = getelementptr inbounds %struct.Reg, %struct.Reg* %1825, i32 0, i32 0
  %PC.i118 = bitcast %union.anon* %1826 to i64*
  %1827 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1828 = getelementptr inbounds %struct.GPR, %struct.GPR* %1827, i32 0, i32 1
  %1829 = getelementptr inbounds %struct.Reg, %struct.Reg* %1828, i32 0, i32 0
  %RAX.i119 = bitcast %union.anon* %1829 to i64*
  %1830 = load i64, i64* %RAX.i119
  %1831 = load i64, i64* %PC.i118
  %1832 = add i64 %1831, 4
  store i64 %1832, i64* %PC.i118
  %1833 = add i64 12, %1830
  store i64 %1833, i64* %RAX.i119, align 8
  %1834 = icmp ult i64 %1833, %1830
  %1835 = icmp ult i64 %1833, 12
  %1836 = or i1 %1834, %1835
  %1837 = zext i1 %1836 to i8
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1837, i8* %1838, align 1
  %1839 = trunc i64 %1833 to i32
  %1840 = and i32 %1839, 255
  %1841 = call i32 @llvm.ctpop.i32(i32 %1840)
  %1842 = trunc i32 %1841 to i8
  %1843 = and i8 %1842, 1
  %1844 = xor i8 %1843, 1
  %1845 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1844, i8* %1845, align 1
  %1846 = xor i64 12, %1830
  %1847 = xor i64 %1846, %1833
  %1848 = lshr i64 %1847, 4
  %1849 = trunc i64 %1848 to i8
  %1850 = and i8 %1849, 1
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1850, i8* %1851, align 1
  %1852 = icmp eq i64 %1833, 0
  %1853 = zext i1 %1852 to i8
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1853, i8* %1854, align 1
  %1855 = lshr i64 %1833, 63
  %1856 = trunc i64 %1855 to i8
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1856, i8* %1857, align 1
  %1858 = lshr i64 %1830, 63
  %1859 = xor i64 %1855, %1858
  %1860 = add i64 %1859, %1855
  %1861 = icmp eq i64 %1860, 2
  %1862 = zext i1 %1861 to i8
  %1863 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1862, i8* %1863, align 1
  store %struct.Memory* %loadMem_433e0b, %struct.Memory** %MEMORY
  %loadMem_433e0f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1864 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1865 = getelementptr inbounds %struct.GPR, %struct.GPR* %1864, i32 0, i32 33
  %1866 = getelementptr inbounds %struct.Reg, %struct.Reg* %1865, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %1866 to i64*
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 1
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 11
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %RDI.i117 = bitcast %union.anon* %1872 to i64*
  %1873 = load i64, i64* %RAX.i116
  %1874 = load i64, i64* %PC.i115
  %1875 = add i64 %1874, 3
  store i64 %1875, i64* %PC.i115
  store i64 %1873, i64* %RDI.i117, align 8
  store %struct.Memory* %loadMem_433e0f, %struct.Memory** %MEMORY
  %loadMem1_433e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1877 = getelementptr inbounds %struct.GPR, %struct.GPR* %1876, i32 0, i32 33
  %1878 = getelementptr inbounds %struct.Reg, %struct.Reg* %1877, i32 0, i32 0
  %PC.i114 = bitcast %union.anon* %1878 to i64*
  %1879 = load i64, i64* %PC.i114
  %1880 = add i64 %1879, 125326
  %1881 = load i64, i64* %PC.i114
  %1882 = add i64 %1881, 5
  %1883 = load i64, i64* %PC.i114
  %1884 = add i64 %1883, 5
  store i64 %1884, i64* %PC.i114
  %1885 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1886 = load i64, i64* %1885, align 8
  %1887 = add i64 %1886, -8
  %1888 = inttoptr i64 %1887 to i64*
  store i64 %1882, i64* %1888
  store i64 %1887, i64* %1885, align 8
  %1889 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1880, i64* %1889, align 8
  store %struct.Memory* %loadMem1_433e12, %struct.Memory** %MEMORY
  %loadMem2_433e12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433e12 = load i64, i64* %3
  %call2_433e12 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_433e12, %struct.Memory* %loadMem2_433e12)
  store %struct.Memory* %call2_433e12, %struct.Memory** %MEMORY
  %loadMem_433e17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1891 = getelementptr inbounds %struct.GPR, %struct.GPR* %1890, i32 0, i32 33
  %1892 = getelementptr inbounds %struct.Reg, %struct.Reg* %1891, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %1892 to i64*
  %1893 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1894 = getelementptr inbounds %struct.GPR, %struct.GPR* %1893, i32 0, i32 9
  %1895 = getelementptr inbounds %struct.Reg, %struct.Reg* %1894, i32 0, i32 0
  %RSI.i113 = bitcast %union.anon* %1895 to i64*
  %1896 = load i64, i64* %PC.i112
  %1897 = add i64 %1896, 5
  store i64 %1897, i64* %PC.i112
  store i64 2, i64* %RSI.i113, align 8
  store %struct.Memory* %loadMem_433e17, %struct.Memory** %MEMORY
  %loadMem_433e1c = load %struct.Memory*, %struct.Memory** %MEMORY
  %1898 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1899 = getelementptr inbounds %struct.GPR, %struct.GPR* %1898, i32 0, i32 33
  %1900 = getelementptr inbounds %struct.Reg, %struct.Reg* %1899, i32 0, i32 0
  %PC.i109 = bitcast %union.anon* %1900 to i64*
  %1901 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1902 = getelementptr inbounds %struct.GPR, %struct.GPR* %1901, i32 0, i32 1
  %1903 = getelementptr inbounds %struct.Reg, %struct.Reg* %1902, i32 0, i32 0
  %RAX.i110 = bitcast %union.anon* %1903 to i64*
  %1904 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1905 = getelementptr inbounds %struct.GPR, %struct.GPR* %1904, i32 0, i32 15
  %1906 = getelementptr inbounds %struct.Reg, %struct.Reg* %1905, i32 0, i32 0
  %RBP.i111 = bitcast %union.anon* %1906 to i64*
  %1907 = load i64, i64* %RBP.i111
  %1908 = sub i64 %1907, 8
  %1909 = load i64, i64* %PC.i109
  %1910 = add i64 %1909, 4
  store i64 %1910, i64* %PC.i109
  %1911 = inttoptr i64 %1908 to i64*
  %1912 = load i64, i64* %1911
  store i64 %1912, i64* %RAX.i110, align 8
  store %struct.Memory* %loadMem_433e1c, %struct.Memory** %MEMORY
  %loadMem_433e20 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1914 = getelementptr inbounds %struct.GPR, %struct.GPR* %1913, i32 0, i32 33
  %1915 = getelementptr inbounds %struct.Reg, %struct.Reg* %1914, i32 0, i32 0
  %PC.i107 = bitcast %union.anon* %1915 to i64*
  %1916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1917 = getelementptr inbounds %struct.GPR, %struct.GPR* %1916, i32 0, i32 1
  %1918 = getelementptr inbounds %struct.Reg, %struct.Reg* %1917, i32 0, i32 0
  %RAX.i108 = bitcast %union.anon* %1918 to i64*
  %1919 = load i64, i64* %RAX.i108
  %1920 = add i64 %1919, 144
  %1921 = load i64, i64* %PC.i107
  %1922 = add i64 %1921, 7
  store i64 %1922, i64* %PC.i107
  %1923 = inttoptr i64 %1920 to i64*
  %1924 = load i64, i64* %1923
  store i64 %1924, i64* %RAX.i108, align 8
  store %struct.Memory* %loadMem_433e20, %struct.Memory** %MEMORY
  %loadMem_433e27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 33
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %PC.i104 = bitcast %union.anon* %1927 to i64*
  %1928 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1929 = getelementptr inbounds %struct.GPR, %struct.GPR* %1928, i32 0, i32 5
  %1930 = getelementptr inbounds %struct.Reg, %struct.Reg* %1929, i32 0, i32 0
  %RCX.i105 = bitcast %union.anon* %1930 to i64*
  %1931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1932 = getelementptr inbounds %struct.GPR, %struct.GPR* %1931, i32 0, i32 15
  %1933 = getelementptr inbounds %struct.Reg, %struct.Reg* %1932, i32 0, i32 0
  %RBP.i106 = bitcast %union.anon* %1933 to i64*
  %1934 = load i64, i64* %RBP.i106
  %1935 = sub i64 %1934, 12
  %1936 = load i64, i64* %PC.i104
  %1937 = add i64 %1936, 4
  store i64 %1937, i64* %PC.i104
  %1938 = inttoptr i64 %1935 to i32*
  %1939 = load i32, i32* %1938
  %1940 = sext i32 %1939 to i64
  store i64 %1940, i64* %RCX.i105, align 8
  store %struct.Memory* %loadMem_433e27, %struct.Memory** %MEMORY
  %loadMem_433e2b = load %struct.Memory*, %struct.Memory** %MEMORY
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 33
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %1943 to i64*
  %1944 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1945 = getelementptr inbounds %struct.GPR, %struct.GPR* %1944, i32 0, i32 1
  %1946 = getelementptr inbounds %struct.Reg, %struct.Reg* %1945, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %1946 to i64*
  %1947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1948 = getelementptr inbounds %struct.GPR, %struct.GPR* %1947, i32 0, i32 5
  %1949 = getelementptr inbounds %struct.Reg, %struct.Reg* %1948, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %1949 to i64*
  %1950 = load i64, i64* %RAX.i102
  %1951 = load i64, i64* %RCX.i103
  %1952 = mul i64 %1951, 8
  %1953 = add i64 %1952, %1950
  %1954 = load i64, i64* %PC.i101
  %1955 = add i64 %1954, 4
  store i64 %1955, i64* %PC.i101
  %1956 = inttoptr i64 %1953 to i64*
  %1957 = load i64, i64* %1956
  store i64 %1957, i64* %RAX.i102, align 8
  store %struct.Memory* %loadMem_433e2b, %struct.Memory** %MEMORY
  %loadMem_433e2f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1959 = getelementptr inbounds %struct.GPR, %struct.GPR* %1958, i32 0, i32 33
  %1960 = getelementptr inbounds %struct.Reg, %struct.Reg* %1959, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %1960 to i64*
  %1961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1962 = getelementptr inbounds %struct.GPR, %struct.GPR* %1961, i32 0, i32 1
  %1963 = getelementptr inbounds %struct.Reg, %struct.Reg* %1962, i32 0, i32 0
  %RAX.i100 = bitcast %union.anon* %1963 to i64*
  %1964 = load i64, i64* %RAX.i100
  %1965 = load i64, i64* %PC.i99
  %1966 = add i64 %1965, 4
  store i64 %1966, i64* %PC.i99
  %1967 = add i64 20, %1964
  store i64 %1967, i64* %RAX.i100, align 8
  %1968 = icmp ult i64 %1967, %1964
  %1969 = icmp ult i64 %1967, 20
  %1970 = or i1 %1968, %1969
  %1971 = zext i1 %1970 to i8
  %1972 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1971, i8* %1972, align 1
  %1973 = trunc i64 %1967 to i32
  %1974 = and i32 %1973, 255
  %1975 = call i32 @llvm.ctpop.i32(i32 %1974)
  %1976 = trunc i32 %1975 to i8
  %1977 = and i8 %1976, 1
  %1978 = xor i8 %1977, 1
  %1979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1978, i8* %1979, align 1
  %1980 = xor i64 20, %1964
  %1981 = xor i64 %1980, %1967
  %1982 = lshr i64 %1981, 4
  %1983 = trunc i64 %1982 to i8
  %1984 = and i8 %1983, 1
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1984, i8* %1985, align 1
  %1986 = icmp eq i64 %1967, 0
  %1987 = zext i1 %1986 to i8
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1987, i8* %1988, align 1
  %1989 = lshr i64 %1967, 63
  %1990 = trunc i64 %1989 to i8
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1990, i8* %1991, align 1
  %1992 = lshr i64 %1964, 63
  %1993 = xor i64 %1989, %1992
  %1994 = add i64 %1993, %1989
  %1995 = icmp eq i64 %1994, 2
  %1996 = zext i1 %1995 to i8
  %1997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1996, i8* %1997, align 1
  store %struct.Memory* %loadMem_433e2f, %struct.Memory** %MEMORY
  %loadMem_433e33 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1999 = getelementptr inbounds %struct.GPR, %struct.GPR* %1998, i32 0, i32 33
  %2000 = getelementptr inbounds %struct.Reg, %struct.Reg* %1999, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2000 to i64*
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 1
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 11
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RDI.i98 = bitcast %union.anon* %2006 to i64*
  %2007 = load i64, i64* %RAX.i97
  %2008 = load i64, i64* %PC.i96
  %2009 = add i64 %2008, 3
  store i64 %2009, i64* %PC.i96
  store i64 %2007, i64* %RDI.i98, align 8
  store %struct.Memory* %loadMem_433e33, %struct.Memory** %MEMORY
  %loadMem1_433e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2010 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2011 = getelementptr inbounds %struct.GPR, %struct.GPR* %2010, i32 0, i32 33
  %2012 = getelementptr inbounds %struct.Reg, %struct.Reg* %2011, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2012 to i64*
  %2013 = load i64, i64* %PC.i95
  %2014 = add i64 %2013, 125290
  %2015 = load i64, i64* %PC.i95
  %2016 = add i64 %2015, 5
  %2017 = load i64, i64* %PC.i95
  %2018 = add i64 %2017, 5
  store i64 %2018, i64* %PC.i95
  %2019 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2020 = load i64, i64* %2019, align 8
  %2021 = add i64 %2020, -8
  %2022 = inttoptr i64 %2021 to i64*
  store i64 %2016, i64* %2022
  store i64 %2021, i64* %2019, align 8
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2014, i64* %2023, align 8
  store %struct.Memory* %loadMem1_433e36, %struct.Memory** %MEMORY
  %loadMem2_433e36 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433e36 = load i64, i64* %3
  %call2_433e36 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_433e36, %struct.Memory* %loadMem2_433e36)
  store %struct.Memory* %call2_433e36, %struct.Memory** %MEMORY
  %loadMem_433e3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2025 = getelementptr inbounds %struct.GPR, %struct.GPR* %2024, i32 0, i32 33
  %2026 = getelementptr inbounds %struct.Reg, %struct.Reg* %2025, i32 0, i32 0
  %PC.i92 = bitcast %union.anon* %2026 to i64*
  %2027 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2028 = getelementptr inbounds %struct.GPR, %struct.GPR* %2027, i32 0, i32 1
  %2029 = getelementptr inbounds %struct.Reg, %struct.Reg* %2028, i32 0, i32 0
  %RAX.i93 = bitcast %union.anon* %2029 to i64*
  %2030 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2031 = getelementptr inbounds %struct.GPR, %struct.GPR* %2030, i32 0, i32 15
  %2032 = getelementptr inbounds %struct.Reg, %struct.Reg* %2031, i32 0, i32 0
  %RBP.i94 = bitcast %union.anon* %2032 to i64*
  %2033 = load i64, i64* %RBP.i94
  %2034 = sub i64 %2033, 12
  %2035 = load i64, i64* %PC.i92
  %2036 = add i64 %2035, 3
  store i64 %2036, i64* %PC.i92
  %2037 = inttoptr i64 %2034 to i32*
  %2038 = load i32, i32* %2037
  %2039 = zext i32 %2038 to i64
  store i64 %2039, i64* %RAX.i93, align 8
  store %struct.Memory* %loadMem_433e3b, %struct.Memory** %MEMORY
  %loadMem_433e3e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2041 = getelementptr inbounds %struct.GPR, %struct.GPR* %2040, i32 0, i32 33
  %2042 = getelementptr inbounds %struct.Reg, %struct.Reg* %2041, i32 0, i32 0
  %PC.i90 = bitcast %union.anon* %2042 to i64*
  %2043 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2044 = getelementptr inbounds %struct.GPR, %struct.GPR* %2043, i32 0, i32 1
  %2045 = getelementptr inbounds %struct.Reg, %struct.Reg* %2044, i32 0, i32 0
  %RAX.i91 = bitcast %union.anon* %2045 to i64*
  %2046 = load i64, i64* %RAX.i91
  %2047 = load i64, i64* %PC.i90
  %2048 = add i64 %2047, 3
  store i64 %2048, i64* %PC.i90
  %2049 = trunc i64 %2046 to i32
  %2050 = add i32 1, %2049
  %2051 = zext i32 %2050 to i64
  store i64 %2051, i64* %RAX.i91, align 8
  %2052 = icmp ult i32 %2050, %2049
  %2053 = icmp ult i32 %2050, 1
  %2054 = or i1 %2052, %2053
  %2055 = zext i1 %2054 to i8
  %2056 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2055, i8* %2056, align 1
  %2057 = and i32 %2050, 255
  %2058 = call i32 @llvm.ctpop.i32(i32 %2057)
  %2059 = trunc i32 %2058 to i8
  %2060 = and i8 %2059, 1
  %2061 = xor i8 %2060, 1
  %2062 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2061, i8* %2062, align 1
  %2063 = xor i64 1, %2046
  %2064 = trunc i64 %2063 to i32
  %2065 = xor i32 %2064, %2050
  %2066 = lshr i32 %2065, 4
  %2067 = trunc i32 %2066 to i8
  %2068 = and i8 %2067, 1
  %2069 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2068, i8* %2069, align 1
  %2070 = icmp eq i32 %2050, 0
  %2071 = zext i1 %2070 to i8
  %2072 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2071, i8* %2072, align 1
  %2073 = lshr i32 %2050, 31
  %2074 = trunc i32 %2073 to i8
  %2075 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2074, i8* %2075, align 1
  %2076 = lshr i32 %2049, 31
  %2077 = xor i32 %2073, %2076
  %2078 = add i32 %2077, %2073
  %2079 = icmp eq i32 %2078, 2
  %2080 = zext i1 %2079 to i8
  %2081 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2080, i8* %2081, align 1
  store %struct.Memory* %loadMem_433e3e, %struct.Memory** %MEMORY
  %loadMem_433e41 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2083 = getelementptr inbounds %struct.GPR, %struct.GPR* %2082, i32 0, i32 33
  %2084 = getelementptr inbounds %struct.Reg, %struct.Reg* %2083, i32 0, i32 0
  %PC.i87 = bitcast %union.anon* %2084 to i64*
  %2085 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2086 = getelementptr inbounds %struct.GPR, %struct.GPR* %2085, i32 0, i32 1
  %2087 = getelementptr inbounds %struct.Reg, %struct.Reg* %2086, i32 0, i32 0
  %EAX.i88 = bitcast %union.anon* %2087 to i32*
  %2088 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2089 = getelementptr inbounds %struct.GPR, %struct.GPR* %2088, i32 0, i32 15
  %2090 = getelementptr inbounds %struct.Reg, %struct.Reg* %2089, i32 0, i32 0
  %RBP.i89 = bitcast %union.anon* %2090 to i64*
  %2091 = load i64, i64* %RBP.i89
  %2092 = sub i64 %2091, 12
  %2093 = load i32, i32* %EAX.i88
  %2094 = zext i32 %2093 to i64
  %2095 = load i64, i64* %PC.i87
  %2096 = add i64 %2095, 3
  store i64 %2096, i64* %PC.i87
  %2097 = inttoptr i64 %2092 to i32*
  store i32 %2093, i32* %2097
  store %struct.Memory* %loadMem_433e41, %struct.Memory** %MEMORY
  %loadMem_433e44 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2099 = getelementptr inbounds %struct.GPR, %struct.GPR* %2098, i32 0, i32 33
  %2100 = getelementptr inbounds %struct.Reg, %struct.Reg* %2099, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2100 to i64*
  %2101 = load i64, i64* %PC.i86
  %2102 = add i64 %2101, -238
  %2103 = load i64, i64* %PC.i86
  %2104 = add i64 %2103, 5
  store i64 %2104, i64* %PC.i86
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2102, i64* %2105, align 8
  store %struct.Memory* %loadMem_433e44, %struct.Memory** %MEMORY
  br label %block_.L_433d56

block_.L_433e49:                                  ; preds = %block_.L_433d56
  %loadMem_433e49 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2107 = getelementptr inbounds %struct.GPR, %struct.GPR* %2106, i32 0, i32 33
  %2108 = getelementptr inbounds %struct.Reg, %struct.Reg* %2107, i32 0, i32 0
  %PC.i83 = bitcast %union.anon* %2108 to i64*
  %2109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2110 = getelementptr inbounds %struct.GPR, %struct.GPR* %2109, i32 0, i32 1
  %2111 = getelementptr inbounds %struct.Reg, %struct.Reg* %2110, i32 0, i32 0
  %RAX.i84 = bitcast %union.anon* %2111 to i64*
  %2112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2113 = getelementptr inbounds %struct.GPR, %struct.GPR* %2112, i32 0, i32 15
  %2114 = getelementptr inbounds %struct.Reg, %struct.Reg* %2113, i32 0, i32 0
  %RBP.i85 = bitcast %union.anon* %2114 to i64*
  %2115 = load i64, i64* %RBP.i85
  %2116 = sub i64 %2115, 8
  %2117 = load i64, i64* %PC.i83
  %2118 = add i64 %2117, 4
  store i64 %2118, i64* %PC.i83
  %2119 = inttoptr i64 %2116 to i64*
  %2120 = load i64, i64* %2119
  store i64 %2120, i64* %RAX.i84, align 8
  store %struct.Memory* %loadMem_433e49, %struct.Memory** %MEMORY
  %loadMem_433e4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2122 = getelementptr inbounds %struct.GPR, %struct.GPR* %2121, i32 0, i32 33
  %2123 = getelementptr inbounds %struct.Reg, %struct.Reg* %2122, i32 0, i32 0
  %PC.i81 = bitcast %union.anon* %2123 to i64*
  %2124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2125 = getelementptr inbounds %struct.GPR, %struct.GPR* %2124, i32 0, i32 1
  %2126 = getelementptr inbounds %struct.Reg, %struct.Reg* %2125, i32 0, i32 0
  %RAX.i82 = bitcast %union.anon* %2126 to i64*
  %2127 = load i64, i64* %RAX.i82
  %2128 = load i64, i64* %PC.i81
  %2129 = add i64 %2128, 6
  store i64 %2129, i64* %PC.i81
  %2130 = add i64 224, %2127
  store i64 %2130, i64* %RAX.i82, align 8
  %2131 = icmp ult i64 %2130, %2127
  %2132 = icmp ult i64 %2130, 224
  %2133 = or i1 %2131, %2132
  %2134 = zext i1 %2133 to i8
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2134, i8* %2135, align 1
  %2136 = trunc i64 %2130 to i32
  %2137 = and i32 %2136, 255
  %2138 = call i32 @llvm.ctpop.i32(i32 %2137)
  %2139 = trunc i32 %2138 to i8
  %2140 = and i8 %2139, 1
  %2141 = xor i8 %2140, 1
  %2142 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2141, i8* %2142, align 1
  %2143 = xor i64 224, %2127
  %2144 = xor i64 %2143, %2130
  %2145 = lshr i64 %2144, 4
  %2146 = trunc i64 %2145 to i8
  %2147 = and i8 %2146, 1
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2147, i8* %2148, align 1
  %2149 = icmp eq i64 %2130, 0
  %2150 = zext i1 %2149 to i8
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2150, i8* %2151, align 1
  %2152 = lshr i64 %2130, 63
  %2153 = trunc i64 %2152 to i8
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2153, i8* %2154, align 1
  %2155 = lshr i64 %2127, 63
  %2156 = xor i64 %2152, %2155
  %2157 = add i64 %2156, %2152
  %2158 = icmp eq i64 %2157, 2
  %2159 = zext i1 %2158 to i8
  %2160 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2159, i8* %2160, align 1
  store %struct.Memory* %loadMem_433e4d, %struct.Memory** %MEMORY
  %loadMem_433e53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2161 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2162 = getelementptr inbounds %struct.GPR, %struct.GPR* %2161, i32 0, i32 33
  %2163 = getelementptr inbounds %struct.Reg, %struct.Reg* %2162, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2163 to i64*
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 9
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %RSI.i80 = bitcast %union.anon* %2166 to i64*
  %2167 = load i64, i64* %PC.i79
  %2168 = add i64 %2167, 7
  store i64 %2168, i64* %PC.i79
  %2169 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %2170 = zext i32 %2169 to i64
  store i64 %2170, i64* %RSI.i80, align 8
  store %struct.Memory* %loadMem_433e53, %struct.Memory** %MEMORY
  %loadMem_433e5a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2172 = getelementptr inbounds %struct.GPR, %struct.GPR* %2171, i32 0, i32 33
  %2173 = getelementptr inbounds %struct.Reg, %struct.Reg* %2172, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2173 to i64*
  %2174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2175 = getelementptr inbounds %struct.GPR, %struct.GPR* %2174, i32 0, i32 1
  %2176 = getelementptr inbounds %struct.Reg, %struct.Reg* %2175, i32 0, i32 0
  %RAX.i77 = bitcast %union.anon* %2176 to i64*
  %2177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2178 = getelementptr inbounds %struct.GPR, %struct.GPR* %2177, i32 0, i32 11
  %2179 = getelementptr inbounds %struct.Reg, %struct.Reg* %2178, i32 0, i32 0
  %RDI.i78 = bitcast %union.anon* %2179 to i64*
  %2180 = load i64, i64* %RAX.i77
  %2181 = load i64, i64* %PC.i76
  %2182 = add i64 %2181, 3
  store i64 %2182, i64* %PC.i76
  store i64 %2180, i64* %RDI.i78, align 8
  store %struct.Memory* %loadMem_433e5a, %struct.Memory** %MEMORY
  %loadMem1_433e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2183 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2184 = getelementptr inbounds %struct.GPR, %struct.GPR* %2183, i32 0, i32 33
  %2185 = getelementptr inbounds %struct.Reg, %struct.Reg* %2184, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2185 to i64*
  %2186 = load i64, i64* %PC.i75
  %2187 = add i64 %2186, 125251
  %2188 = load i64, i64* %PC.i75
  %2189 = add i64 %2188, 5
  %2190 = load i64, i64* %PC.i75
  %2191 = add i64 %2190, 5
  store i64 %2191, i64* %PC.i75
  %2192 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2193 = load i64, i64* %2192, align 8
  %2194 = add i64 %2193, -8
  %2195 = inttoptr i64 %2194 to i64*
  store i64 %2189, i64* %2195
  store i64 %2194, i64* %2192, align 8
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2187, i64* %2196, align 8
  store %struct.Memory* %loadMem1_433e5d, %struct.Memory** %MEMORY
  %loadMem2_433e5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433e5d = load i64, i64* %3
  %call2_433e5d = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_433e5d, %struct.Memory* %loadMem2_433e5d)
  store %struct.Memory* %call2_433e5d, %struct.Memory** %MEMORY
  %loadMem_433e62 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2197 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2198 = getelementptr inbounds %struct.GPR, %struct.GPR* %2197, i32 0, i32 33
  %2199 = getelementptr inbounds %struct.Reg, %struct.Reg* %2198, i32 0, i32 0
  %PC.i73 = bitcast %union.anon* %2199 to i64*
  %2200 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2201 = getelementptr inbounds %struct.GPR, %struct.GPR* %2200, i32 0, i32 15
  %2202 = getelementptr inbounds %struct.Reg, %struct.Reg* %2201, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %2202 to i64*
  %2203 = load i64, i64* %RBP.i74
  %2204 = sub i64 %2203, 16
  %2205 = load i64, i64* %PC.i73
  %2206 = add i64 %2205, 7
  store i64 %2206, i64* %PC.i73
  %2207 = inttoptr i64 %2204 to i32*
  store i32 0, i32* %2207
  store %struct.Memory* %loadMem_433e62, %struct.Memory** %MEMORY
  br label %block_.L_433e69

block_.L_433e69:                                  ; preds = %block_433e73, %block_.L_433e49
  %loadMem_433e69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2208 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2209 = getelementptr inbounds %struct.GPR, %struct.GPR* %2208, i32 0, i32 33
  %2210 = getelementptr inbounds %struct.Reg, %struct.Reg* %2209, i32 0, i32 0
  %PC.i71 = bitcast %union.anon* %2210 to i64*
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 15
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %RBP.i72 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %RBP.i72
  %2215 = sub i64 %2214, 16
  %2216 = load i64, i64* %PC.i71
  %2217 = add i64 %2216, 4
  store i64 %2217, i64* %PC.i71
  %2218 = inttoptr i64 %2215 to i32*
  %2219 = load i32, i32* %2218
  %2220 = sub i32 %2219, 4
  %2221 = icmp ult i32 %2219, 4
  %2222 = zext i1 %2221 to i8
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2222, i8* %2223, align 1
  %2224 = and i32 %2220, 255
  %2225 = call i32 @llvm.ctpop.i32(i32 %2224)
  %2226 = trunc i32 %2225 to i8
  %2227 = and i8 %2226, 1
  %2228 = xor i8 %2227, 1
  %2229 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2228, i8* %2229, align 1
  %2230 = xor i32 %2219, 4
  %2231 = xor i32 %2230, %2220
  %2232 = lshr i32 %2231, 4
  %2233 = trunc i32 %2232 to i8
  %2234 = and i8 %2233, 1
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2234, i8* %2235, align 1
  %2236 = icmp eq i32 %2220, 0
  %2237 = zext i1 %2236 to i8
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2237, i8* %2238, align 1
  %2239 = lshr i32 %2220, 31
  %2240 = trunc i32 %2239 to i8
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2240, i8* %2241, align 1
  %2242 = lshr i32 %2219, 31
  %2243 = xor i32 %2239, %2242
  %2244 = add i32 %2243, %2242
  %2245 = icmp eq i32 %2244, 2
  %2246 = zext i1 %2245 to i8
  %2247 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2246, i8* %2247, align 1
  store %struct.Memory* %loadMem_433e69, %struct.Memory** %MEMORY
  %loadMem_433e6d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2248 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2249 = getelementptr inbounds %struct.GPR, %struct.GPR* %2248, i32 0, i32 33
  %2250 = getelementptr inbounds %struct.Reg, %struct.Reg* %2249, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %2250 to i64*
  %2251 = load i64, i64* %PC.i70
  %2252 = add i64 %2251, 54
  %2253 = load i64, i64* %PC.i70
  %2254 = add i64 %2253, 6
  %2255 = load i64, i64* %PC.i70
  %2256 = add i64 %2255, 6
  store i64 %2256, i64* %PC.i70
  %2257 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2258 = load i8, i8* %2257, align 1
  %2259 = icmp ne i8 %2258, 0
  %2260 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2261 = load i8, i8* %2260, align 1
  %2262 = icmp ne i8 %2261, 0
  %2263 = xor i1 %2259, %2262
  %2264 = xor i1 %2263, true
  %2265 = zext i1 %2264 to i8
  store i8 %2265, i8* %BRANCH_TAKEN, align 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2267 = select i1 %2263, i64 %2254, i64 %2252
  store i64 %2267, i64* %2266, align 8
  store %struct.Memory* %loadMem_433e6d, %struct.Memory** %MEMORY
  %loadBr_433e6d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_433e6d = icmp eq i8 %loadBr_433e6d, 1
  br i1 %cmpBr_433e6d, label %block_.L_433ea3, label %block_433e73

block_433e73:                                     ; preds = %block_.L_433e69
  %loadMem_433e73 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2268 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2269 = getelementptr inbounds %struct.GPR, %struct.GPR* %2268, i32 0, i32 33
  %2270 = getelementptr inbounds %struct.Reg, %struct.Reg* %2269, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %2270 to i64*
  %2271 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2272 = getelementptr inbounds %struct.GPR, %struct.GPR* %2271, i32 0, i32 9
  %2273 = getelementptr inbounds %struct.Reg, %struct.Reg* %2272, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2273 to i64*
  %2274 = load i64, i64* %PC.i69
  %2275 = add i64 %2274, 5
  store i64 %2275, i64* %PC.i69
  store i64 2, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_433e73, %struct.Memory** %MEMORY
  %loadMem_433e78 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2276 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2277 = getelementptr inbounds %struct.GPR, %struct.GPR* %2276, i32 0, i32 33
  %2278 = getelementptr inbounds %struct.Reg, %struct.Reg* %2277, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %2278 to i64*
  %2279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2280 = getelementptr inbounds %struct.GPR, %struct.GPR* %2279, i32 0, i32 1
  %2281 = getelementptr inbounds %struct.Reg, %struct.Reg* %2280, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %2281 to i64*
  %2282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2283 = getelementptr inbounds %struct.GPR, %struct.GPR* %2282, i32 0, i32 15
  %2284 = getelementptr inbounds %struct.Reg, %struct.Reg* %2283, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %2284 to i64*
  %2285 = load i64, i64* %RBP.i68
  %2286 = sub i64 %2285, 8
  %2287 = load i64, i64* %PC.i66
  %2288 = add i64 %2287, 4
  store i64 %2288, i64* %PC.i66
  %2289 = inttoptr i64 %2286 to i64*
  %2290 = load i64, i64* %2289
  store i64 %2290, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_433e78, %struct.Memory** %MEMORY
  %loadMem_433e7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2291 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2292 = getelementptr inbounds %struct.GPR, %struct.GPR* %2291, i32 0, i32 33
  %2293 = getelementptr inbounds %struct.Reg, %struct.Reg* %2292, i32 0, i32 0
  %PC.i64 = bitcast %union.anon* %2293 to i64*
  %2294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2295 = getelementptr inbounds %struct.GPR, %struct.GPR* %2294, i32 0, i32 1
  %2296 = getelementptr inbounds %struct.Reg, %struct.Reg* %2295, i32 0, i32 0
  %RAX.i65 = bitcast %union.anon* %2296 to i64*
  %2297 = load i64, i64* %RAX.i65
  %2298 = load i64, i64* %PC.i64
  %2299 = add i64 %2298, 6
  store i64 %2299, i64* %PC.i64
  %2300 = add i64 172, %2297
  store i64 %2300, i64* %RAX.i65, align 8
  %2301 = icmp ult i64 %2300, %2297
  %2302 = icmp ult i64 %2300, 172
  %2303 = or i1 %2301, %2302
  %2304 = zext i1 %2303 to i8
  %2305 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2304, i8* %2305, align 1
  %2306 = trunc i64 %2300 to i32
  %2307 = and i32 %2306, 255
  %2308 = call i32 @llvm.ctpop.i32(i32 %2307)
  %2309 = trunc i32 %2308 to i8
  %2310 = and i8 %2309, 1
  %2311 = xor i8 %2310, 1
  %2312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2311, i8* %2312, align 1
  %2313 = xor i64 172, %2297
  %2314 = xor i64 %2313, %2300
  %2315 = lshr i64 %2314, 4
  %2316 = trunc i64 %2315 to i8
  %2317 = and i8 %2316, 1
  %2318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2317, i8* %2318, align 1
  %2319 = icmp eq i64 %2300, 0
  %2320 = zext i1 %2319 to i8
  %2321 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2320, i8* %2321, align 1
  %2322 = lshr i64 %2300, 63
  %2323 = trunc i64 %2322 to i8
  %2324 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2323, i8* %2324, align 1
  %2325 = lshr i64 %2297, 63
  %2326 = xor i64 %2322, %2325
  %2327 = add i64 %2326, %2322
  %2328 = icmp eq i64 %2327, 2
  %2329 = zext i1 %2328 to i8
  %2330 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2329, i8* %2330, align 1
  store %struct.Memory* %loadMem_433e7c, %struct.Memory** %MEMORY
  %loadMem_433e82 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2332 = getelementptr inbounds %struct.GPR, %struct.GPR* %2331, i32 0, i32 33
  %2333 = getelementptr inbounds %struct.Reg, %struct.Reg* %2332, i32 0, i32 0
  %PC.i61 = bitcast %union.anon* %2333 to i64*
  %2334 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2335 = getelementptr inbounds %struct.GPR, %struct.GPR* %2334, i32 0, i32 5
  %2336 = getelementptr inbounds %struct.Reg, %struct.Reg* %2335, i32 0, i32 0
  %RCX.i62 = bitcast %union.anon* %2336 to i64*
  %2337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2338 = getelementptr inbounds %struct.GPR, %struct.GPR* %2337, i32 0, i32 15
  %2339 = getelementptr inbounds %struct.Reg, %struct.Reg* %2338, i32 0, i32 0
  %RBP.i63 = bitcast %union.anon* %2339 to i64*
  %2340 = load i64, i64* %RBP.i63
  %2341 = sub i64 %2340, 16
  %2342 = load i64, i64* %PC.i61
  %2343 = add i64 %2342, 4
  store i64 %2343, i64* %PC.i61
  %2344 = inttoptr i64 %2341 to i32*
  %2345 = load i32, i32* %2344
  %2346 = sext i32 %2345 to i64
  store i64 %2346, i64* %RCX.i62, align 8
  store %struct.Memory* %loadMem_433e82, %struct.Memory** %MEMORY
  %loadMem_433e86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2347 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2348 = getelementptr inbounds %struct.GPR, %struct.GPR* %2347, i32 0, i32 33
  %2349 = getelementptr inbounds %struct.Reg, %struct.Reg* %2348, i32 0, i32 0
  %PC.i59 = bitcast %union.anon* %2349 to i64*
  %2350 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2351 = getelementptr inbounds %struct.GPR, %struct.GPR* %2350, i32 0, i32 5
  %2352 = getelementptr inbounds %struct.Reg, %struct.Reg* %2351, i32 0, i32 0
  %RCX.i60 = bitcast %union.anon* %2352 to i64*
  %2353 = load i64, i64* %RCX.i60
  %2354 = load i64, i64* %PC.i59
  %2355 = add i64 %2354, 4
  store i64 %2355, i64* %PC.i59
  %2356 = shl i64 %2353, 2
  %2357 = icmp slt i64 %2356, 0
  %2358 = shl i64 %2356, 1
  store i64 %2358, i64* %RCX.i60, align 8
  %2359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %2360 = zext i1 %2357 to i8
  store i8 %2360, i8* %2359, align 1
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %2362 = trunc i64 %2358 to i32
  %2363 = and i32 %2362, 254
  %2364 = call i32 @llvm.ctpop.i32(i32 %2363)
  %2365 = trunc i32 %2364 to i8
  %2366 = and i8 %2365, 1
  %2367 = xor i8 %2366, 1
  store i8 %2367, i8* %2361, align 1
  %2368 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2368, align 1
  %2369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2370 = icmp eq i64 %2358, 0
  %2371 = zext i1 %2370 to i8
  store i8 %2371, i8* %2369, align 1
  %2372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2373 = lshr i64 %2358, 63
  %2374 = trunc i64 %2373 to i8
  store i8 %2374, i8* %2372, align 1
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2375, align 1
  store %struct.Memory* %loadMem_433e86, %struct.Memory** %MEMORY
  %loadMem_433e8a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2376 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2377 = getelementptr inbounds %struct.GPR, %struct.GPR* %2376, i32 0, i32 33
  %2378 = getelementptr inbounds %struct.Reg, %struct.Reg* %2377, i32 0, i32 0
  %PC.i56 = bitcast %union.anon* %2378 to i64*
  %2379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2380 = getelementptr inbounds %struct.GPR, %struct.GPR* %2379, i32 0, i32 1
  %2381 = getelementptr inbounds %struct.Reg, %struct.Reg* %2380, i32 0, i32 0
  %RAX.i57 = bitcast %union.anon* %2381 to i64*
  %2382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2383 = getelementptr inbounds %struct.GPR, %struct.GPR* %2382, i32 0, i32 5
  %2384 = getelementptr inbounds %struct.Reg, %struct.Reg* %2383, i32 0, i32 0
  %RCX.i58 = bitcast %union.anon* %2384 to i64*
  %2385 = load i64, i64* %RAX.i57
  %2386 = load i64, i64* %RCX.i58
  %2387 = load i64, i64* %PC.i56
  %2388 = add i64 %2387, 3
  store i64 %2388, i64* %PC.i56
  %2389 = add i64 %2386, %2385
  store i64 %2389, i64* %RAX.i57, align 8
  %2390 = icmp ult i64 %2389, %2385
  %2391 = icmp ult i64 %2389, %2386
  %2392 = or i1 %2390, %2391
  %2393 = zext i1 %2392 to i8
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2393, i8* %2394, align 1
  %2395 = trunc i64 %2389 to i32
  %2396 = and i32 %2395, 255
  %2397 = call i32 @llvm.ctpop.i32(i32 %2396)
  %2398 = trunc i32 %2397 to i8
  %2399 = and i8 %2398, 1
  %2400 = xor i8 %2399, 1
  %2401 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2400, i8* %2401, align 1
  %2402 = xor i64 %2386, %2385
  %2403 = xor i64 %2402, %2389
  %2404 = lshr i64 %2403, 4
  %2405 = trunc i64 %2404 to i8
  %2406 = and i8 %2405, 1
  %2407 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2406, i8* %2407, align 1
  %2408 = icmp eq i64 %2389, 0
  %2409 = zext i1 %2408 to i8
  %2410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2409, i8* %2410, align 1
  %2411 = lshr i64 %2389, 63
  %2412 = trunc i64 %2411 to i8
  %2413 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2412, i8* %2413, align 1
  %2414 = lshr i64 %2385, 63
  %2415 = lshr i64 %2386, 63
  %2416 = xor i64 %2411, %2414
  %2417 = xor i64 %2411, %2415
  %2418 = add i64 %2416, %2417
  %2419 = icmp eq i64 %2418, 2
  %2420 = zext i1 %2419 to i8
  %2421 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2420, i8* %2421, align 1
  store %struct.Memory* %loadMem_433e8a, %struct.Memory** %MEMORY
  %loadMem_433e8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2423 = getelementptr inbounds %struct.GPR, %struct.GPR* %2422, i32 0, i32 33
  %2424 = getelementptr inbounds %struct.Reg, %struct.Reg* %2423, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %2424 to i64*
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2426 = getelementptr inbounds %struct.GPR, %struct.GPR* %2425, i32 0, i32 1
  %2427 = getelementptr inbounds %struct.Reg, %struct.Reg* %2426, i32 0, i32 0
  %RAX.i55 = bitcast %union.anon* %2427 to i64*
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2429 = getelementptr inbounds %struct.GPR, %struct.GPR* %2428, i32 0, i32 11
  %2430 = getelementptr inbounds %struct.Reg, %struct.Reg* %2429, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2430 to i64*
  %2431 = load i64, i64* %RAX.i55
  %2432 = load i64, i64* %PC.i54
  %2433 = add i64 %2432, 3
  store i64 %2433, i64* %PC.i54
  store i64 %2431, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_433e8d, %struct.Memory** %MEMORY
  %loadMem1_433e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2434 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2435 = getelementptr inbounds %struct.GPR, %struct.GPR* %2434, i32 0, i32 33
  %2436 = getelementptr inbounds %struct.Reg, %struct.Reg* %2435, i32 0, i32 0
  %PC.i53 = bitcast %union.anon* %2436 to i64*
  %2437 = load i64, i64* %PC.i53
  %2438 = add i64 %2437, 125200
  %2439 = load i64, i64* %PC.i53
  %2440 = add i64 %2439, 5
  %2441 = load i64, i64* %PC.i53
  %2442 = add i64 %2441, 5
  store i64 %2442, i64* %PC.i53
  %2443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2444 = load i64, i64* %2443, align 8
  %2445 = add i64 %2444, -8
  %2446 = inttoptr i64 %2445 to i64*
  store i64 %2440, i64* %2446
  store i64 %2445, i64* %2443, align 8
  %2447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2438, i64* %2447, align 8
  store %struct.Memory* %loadMem1_433e90, %struct.Memory** %MEMORY
  %loadMem2_433e90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_433e90 = load i64, i64* %3
  %call2_433e90 = call %struct.Memory* @sub_4527a0.FNorm(%struct.State* %0, i64 %loadPC_433e90, %struct.Memory* %loadMem2_433e90)
  store %struct.Memory* %call2_433e90, %struct.Memory** %MEMORY
  %loadMem_433e95 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2448 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2449 = getelementptr inbounds %struct.GPR, %struct.GPR* %2448, i32 0, i32 33
  %2450 = getelementptr inbounds %struct.Reg, %struct.Reg* %2449, i32 0, i32 0
  %PC.i50 = bitcast %union.anon* %2450 to i64*
  %2451 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2452 = getelementptr inbounds %struct.GPR, %struct.GPR* %2451, i32 0, i32 1
  %2453 = getelementptr inbounds %struct.Reg, %struct.Reg* %2452, i32 0, i32 0
  %RAX.i51 = bitcast %union.anon* %2453 to i64*
  %2454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2455 = getelementptr inbounds %struct.GPR, %struct.GPR* %2454, i32 0, i32 15
  %2456 = getelementptr inbounds %struct.Reg, %struct.Reg* %2455, i32 0, i32 0
  %RBP.i52 = bitcast %union.anon* %2456 to i64*
  %2457 = load i64, i64* %RBP.i52
  %2458 = sub i64 %2457, 16
  %2459 = load i64, i64* %PC.i50
  %2460 = add i64 %2459, 3
  store i64 %2460, i64* %PC.i50
  %2461 = inttoptr i64 %2458 to i32*
  %2462 = load i32, i32* %2461
  %2463 = zext i32 %2462 to i64
  store i64 %2463, i64* %RAX.i51, align 8
  store %struct.Memory* %loadMem_433e95, %struct.Memory** %MEMORY
  %loadMem_433e98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2464 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2465 = getelementptr inbounds %struct.GPR, %struct.GPR* %2464, i32 0, i32 33
  %2466 = getelementptr inbounds %struct.Reg, %struct.Reg* %2465, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %2466 to i64*
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2468 = getelementptr inbounds %struct.GPR, %struct.GPR* %2467, i32 0, i32 1
  %2469 = getelementptr inbounds %struct.Reg, %struct.Reg* %2468, i32 0, i32 0
  %RAX.i49 = bitcast %union.anon* %2469 to i64*
  %2470 = load i64, i64* %RAX.i49
  %2471 = load i64, i64* %PC.i48
  %2472 = add i64 %2471, 3
  store i64 %2472, i64* %PC.i48
  %2473 = trunc i64 %2470 to i32
  %2474 = add i32 1, %2473
  %2475 = zext i32 %2474 to i64
  store i64 %2475, i64* %RAX.i49, align 8
  %2476 = icmp ult i32 %2474, %2473
  %2477 = icmp ult i32 %2474, 1
  %2478 = or i1 %2476, %2477
  %2479 = zext i1 %2478 to i8
  %2480 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2479, i8* %2480, align 1
  %2481 = and i32 %2474, 255
  %2482 = call i32 @llvm.ctpop.i32(i32 %2481)
  %2483 = trunc i32 %2482 to i8
  %2484 = and i8 %2483, 1
  %2485 = xor i8 %2484, 1
  %2486 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2485, i8* %2486, align 1
  %2487 = xor i64 1, %2470
  %2488 = trunc i64 %2487 to i32
  %2489 = xor i32 %2488, %2474
  %2490 = lshr i32 %2489, 4
  %2491 = trunc i32 %2490 to i8
  %2492 = and i8 %2491, 1
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2492, i8* %2493, align 1
  %2494 = icmp eq i32 %2474, 0
  %2495 = zext i1 %2494 to i8
  %2496 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2495, i8* %2496, align 1
  %2497 = lshr i32 %2474, 31
  %2498 = trunc i32 %2497 to i8
  %2499 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2498, i8* %2499, align 1
  %2500 = lshr i32 %2473, 31
  %2501 = xor i32 %2497, %2500
  %2502 = add i32 %2501, %2497
  %2503 = icmp eq i32 %2502, 2
  %2504 = zext i1 %2503 to i8
  %2505 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2504, i8* %2505, align 1
  store %struct.Memory* %loadMem_433e98, %struct.Memory** %MEMORY
  %loadMem_433e9b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 33
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 1
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %2511 to i32*
  %2512 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2513 = getelementptr inbounds %struct.GPR, %struct.GPR* %2512, i32 0, i32 15
  %2514 = getelementptr inbounds %struct.Reg, %struct.Reg* %2513, i32 0, i32 0
  %RBP.i47 = bitcast %union.anon* %2514 to i64*
  %2515 = load i64, i64* %RBP.i47
  %2516 = sub i64 %2515, 16
  %2517 = load i32, i32* %EAX.i
  %2518 = zext i32 %2517 to i64
  %2519 = load i64, i64* %PC.i46
  %2520 = add i64 %2519, 3
  store i64 %2520, i64* %PC.i46
  %2521 = inttoptr i64 %2516 to i32*
  store i32 %2517, i32* %2521
  store %struct.Memory* %loadMem_433e9b, %struct.Memory** %MEMORY
  %loadMem_433e9e = load %struct.Memory*, %struct.Memory** %MEMORY
  %2522 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2523 = getelementptr inbounds %struct.GPR, %struct.GPR* %2522, i32 0, i32 33
  %2524 = getelementptr inbounds %struct.Reg, %struct.Reg* %2523, i32 0, i32 0
  %PC.i45 = bitcast %union.anon* %2524 to i64*
  %2525 = load i64, i64* %PC.i45
  %2526 = add i64 %2525, -53
  %2527 = load i64, i64* %PC.i45
  %2528 = add i64 %2527, 5
  store i64 %2528, i64* %PC.i45
  %2529 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2526, i64* %2529, align 8
  store %struct.Memory* %loadMem_433e9e, %struct.Memory** %MEMORY
  br label %block_.L_433e69

block_.L_433ea3:                                  ; preds = %block_.L_433e69
  %loadMem_433ea3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2530 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2531 = getelementptr inbounds %struct.GPR, %struct.GPR* %2530, i32 0, i32 33
  %2532 = getelementptr inbounds %struct.Reg, %struct.Reg* %2531, i32 0, i32 0
  %PC.i43 = bitcast %union.anon* %2532 to i64*
  %2533 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2534 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2533, i64 0, i64 0
  %YMM0.i = bitcast %union.VectorReg* %2534 to %"class.std::bitset"*
  %2535 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2536 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2535, i64 0, i64 0
  %XMM0.i44 = bitcast %union.VectorReg* %2536 to %union.vec128_t*
  %2537 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2538 = bitcast %"class.std::bitset"* %YMM0.i to i8*
  %2539 = bitcast %union.vec128_t* %XMM0.i44 to i8*
  %2540 = load i64, i64* %PC.i43
  %2541 = add i64 %2540, 3
  store i64 %2541, i64* %PC.i43
  %2542 = bitcast i8* %2538 to i64*
  %2543 = load i64, i64* %2542, align 1
  %2544 = getelementptr inbounds i8, i8* %2538, i64 8
  %2545 = bitcast i8* %2544 to i64*
  %2546 = load i64, i64* %2545, align 1
  %2547 = bitcast i8* %2539 to i64*
  %2548 = load i64, i64* %2547, align 1
  %2549 = getelementptr inbounds i8, i8* %2539, i64 8
  %2550 = bitcast i8* %2549 to i64*
  %2551 = load i64, i64* %2550, align 1
  %2552 = xor i64 %2548, %2543
  %2553 = xor i64 %2551, %2546
  %2554 = trunc i64 %2552 to i32
  %2555 = lshr i64 %2552, 32
  %2556 = trunc i64 %2555 to i32
  %2557 = bitcast i8* %2537 to i32*
  store i32 %2554, i32* %2557, align 1
  %2558 = getelementptr inbounds i8, i8* %2537, i64 4
  %2559 = bitcast i8* %2558 to i32*
  store i32 %2556, i32* %2559, align 1
  %2560 = trunc i64 %2553 to i32
  %2561 = getelementptr inbounds i8, i8* %2537, i64 8
  %2562 = bitcast i8* %2561 to i32*
  store i32 %2560, i32* %2562, align 1
  %2563 = lshr i64 %2553, 32
  %2564 = trunc i64 %2563 to i32
  %2565 = getelementptr inbounds i8, i8* %2537, i64 12
  %2566 = bitcast i8* %2565 to i32*
  store i32 %2564, i32* %2566, align 1
  store %struct.Memory* %loadMem_433ea3, %struct.Memory** %MEMORY
  %loadMem_433ea6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2567 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2568 = getelementptr inbounds %struct.GPR, %struct.GPR* %2567, i32 0, i32 33
  %2569 = getelementptr inbounds %struct.Reg, %struct.Reg* %2568, i32 0, i32 0
  %PC.i40 = bitcast %union.anon* %2569 to i64*
  %2570 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2571 = getelementptr inbounds %struct.GPR, %struct.GPR* %2570, i32 0, i32 1
  %2572 = getelementptr inbounds %struct.Reg, %struct.Reg* %2571, i32 0, i32 0
  %RAX.i41 = bitcast %union.anon* %2572 to i64*
  %2573 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2574 = getelementptr inbounds %struct.GPR, %struct.GPR* %2573, i32 0, i32 15
  %2575 = getelementptr inbounds %struct.Reg, %struct.Reg* %2574, i32 0, i32 0
  %RBP.i42 = bitcast %union.anon* %2575 to i64*
  %2576 = load i64, i64* %RBP.i42
  %2577 = sub i64 %2576, 8
  %2578 = load i64, i64* %PC.i40
  %2579 = add i64 %2578, 4
  store i64 %2579, i64* %PC.i40
  %2580 = inttoptr i64 %2577 to i64*
  %2581 = load i64, i64* %2580
  store i64 %2581, i64* %RAX.i41, align 8
  store %struct.Memory* %loadMem_433ea6, %struct.Memory** %MEMORY
  %loadMem_433eaa = load %struct.Memory*, %struct.Memory** %MEMORY
  %2582 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2583 = getelementptr inbounds %struct.GPR, %struct.GPR* %2582, i32 0, i32 33
  %2584 = getelementptr inbounds %struct.Reg, %struct.Reg* %2583, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %2584 to i64*
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 1
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %2587 to i64*
  %2588 = load i64, i64* %RAX.i39
  %2589 = add i64 %2588, 144
  %2590 = load i64, i64* %PC.i38
  %2591 = add i64 %2590, 7
  store i64 %2591, i64* %PC.i38
  %2592 = inttoptr i64 %2589 to i64*
  %2593 = load i64, i64* %2592
  store i64 %2593, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_433eaa, %struct.Memory** %MEMORY
  %loadMem_433eb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2594 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2595 = getelementptr inbounds %struct.GPR, %struct.GPR* %2594, i32 0, i32 33
  %2596 = getelementptr inbounds %struct.Reg, %struct.Reg* %2595, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %2596 to i64*
  %2597 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2598 = getelementptr inbounds %struct.GPR, %struct.GPR* %2597, i32 0, i32 1
  %2599 = getelementptr inbounds %struct.Reg, %struct.Reg* %2598, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %2599 to i64*
  %2600 = load i64, i64* %RAX.i37
  %2601 = load i64, i64* %PC.i36
  %2602 = add i64 %2601, 3
  store i64 %2602, i64* %PC.i36
  %2603 = inttoptr i64 %2600 to i64*
  %2604 = load i64, i64* %2603
  store i64 %2604, i64* %RAX.i37, align 8
  store %struct.Memory* %loadMem_433eb1, %struct.Memory** %MEMORY
  %loadMem_433eb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2606 = getelementptr inbounds %struct.GPR, %struct.GPR* %2605, i32 0, i32 33
  %2607 = getelementptr inbounds %struct.Reg, %struct.Reg* %2606, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %2607 to i64*
  %2608 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2609 = getelementptr inbounds %struct.GPR, %struct.GPR* %2608, i32 0, i32 1
  %2610 = getelementptr inbounds %struct.Reg, %struct.Reg* %2609, i32 0, i32 0
  %RAX.i34 = bitcast %union.anon* %2610 to i64*
  %2611 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2612 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2611, i64 0, i64 0
  %XMM0.i35 = bitcast %union.VectorReg* %2612 to %union.vec128_t*
  %2613 = load i64, i64* %RAX.i34
  %2614 = add i64 %2613, 24
  %2615 = bitcast %union.vec128_t* %XMM0.i35 to i8*
  %2616 = load i64, i64* %PC.i33
  %2617 = add i64 %2616, 5
  store i64 %2617, i64* %PC.i33
  %2618 = bitcast i8* %2615 to <2 x float>*
  %2619 = load <2 x float>, <2 x float>* %2618, align 1
  %2620 = extractelement <2 x float> %2619, i32 0
  %2621 = inttoptr i64 %2614 to float*
  store float %2620, float* %2621
  store %struct.Memory* %loadMem_433eb4, %struct.Memory** %MEMORY
  %loadMem_433eb9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 33
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %PC.i30 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 1
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RAX.i31 = bitcast %union.anon* %2627 to i64*
  %2628 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2629 = getelementptr inbounds %struct.GPR, %struct.GPR* %2628, i32 0, i32 15
  %2630 = getelementptr inbounds %struct.Reg, %struct.Reg* %2629, i32 0, i32 0
  %RBP.i32 = bitcast %union.anon* %2630 to i64*
  %2631 = load i64, i64* %RBP.i32
  %2632 = sub i64 %2631, 8
  %2633 = load i64, i64* %PC.i30
  %2634 = add i64 %2633, 4
  store i64 %2634, i64* %PC.i30
  %2635 = inttoptr i64 %2632 to i64*
  %2636 = load i64, i64* %2635
  store i64 %2636, i64* %RAX.i31, align 8
  store %struct.Memory* %loadMem_433eb9, %struct.Memory** %MEMORY
  %loadMem_433ebd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i28 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 1
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %RAX.i29 = bitcast %union.anon* %2642 to i64*
  %2643 = load i64, i64* %RAX.i29
  %2644 = add i64 %2643, 144
  %2645 = load i64, i64* %PC.i28
  %2646 = add i64 %2645, 7
  store i64 %2646, i64* %PC.i28
  %2647 = inttoptr i64 %2644 to i64*
  %2648 = load i64, i64* %2647
  store i64 %2648, i64* %RAX.i29, align 8
  store %struct.Memory* %loadMem_433ebd, %struct.Memory** %MEMORY
  %loadMem_433ec4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2649 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2650 = getelementptr inbounds %struct.GPR, %struct.GPR* %2649, i32 0, i32 33
  %2651 = getelementptr inbounds %struct.Reg, %struct.Reg* %2650, i32 0, i32 0
  %PC.i26 = bitcast %union.anon* %2651 to i64*
  %2652 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2653 = getelementptr inbounds %struct.GPR, %struct.GPR* %2652, i32 0, i32 1
  %2654 = getelementptr inbounds %struct.Reg, %struct.Reg* %2653, i32 0, i32 0
  %RAX.i27 = bitcast %union.anon* %2654 to i64*
  %2655 = load i64, i64* %RAX.i27
  %2656 = load i64, i64* %PC.i26
  %2657 = add i64 %2656, 3
  store i64 %2657, i64* %PC.i26
  %2658 = inttoptr i64 %2655 to i64*
  %2659 = load i64, i64* %2658
  store i64 %2659, i64* %RAX.i27, align 8
  store %struct.Memory* %loadMem_433ec4, %struct.Memory** %MEMORY
  %loadMem_433ec7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2661 = getelementptr inbounds %struct.GPR, %struct.GPR* %2660, i32 0, i32 33
  %2662 = getelementptr inbounds %struct.Reg, %struct.Reg* %2661, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %2662 to i64*
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2664 = getelementptr inbounds %struct.GPR, %struct.GPR* %2663, i32 0, i32 1
  %2665 = getelementptr inbounds %struct.Reg, %struct.Reg* %2664, i32 0, i32 0
  %RAX.i25 = bitcast %union.anon* %2665 to i64*
  %2666 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %2667 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %2666, i64 0, i64 0
  %XMM0.i = bitcast %union.VectorReg* %2667 to %union.vec128_t*
  %2668 = load i64, i64* %RAX.i25
  %2669 = add i64 %2668, 20
  %2670 = bitcast %union.vec128_t* %XMM0.i to i8*
  %2671 = load i64, i64* %PC.i24
  %2672 = add i64 %2671, 5
  store i64 %2672, i64* %PC.i24
  %2673 = bitcast i8* %2670 to <2 x float>*
  %2674 = load <2 x float>, <2 x float>* %2673, align 1
  %2675 = extractelement <2 x float> %2674, i32 0
  %2676 = inttoptr i64 %2669 to float*
  store float %2675, float* %2676
  store %struct.Memory* %loadMem_433ec7, %struct.Memory** %MEMORY
  %loadMem_433ecc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2677 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2678 = getelementptr inbounds %struct.GPR, %struct.GPR* %2677, i32 0, i32 33
  %2679 = getelementptr inbounds %struct.Reg, %struct.Reg* %2678, i32 0, i32 0
  %PC.i21 = bitcast %union.anon* %2679 to i64*
  %2680 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2681 = getelementptr inbounds %struct.GPR, %struct.GPR* %2680, i32 0, i32 1
  %2682 = getelementptr inbounds %struct.Reg, %struct.Reg* %2681, i32 0, i32 0
  %RAX.i22 = bitcast %union.anon* %2682 to i64*
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2684 = getelementptr inbounds %struct.GPR, %struct.GPR* %2683, i32 0, i32 15
  %2685 = getelementptr inbounds %struct.Reg, %struct.Reg* %2684, i32 0, i32 0
  %RBP.i23 = bitcast %union.anon* %2685 to i64*
  %2686 = load i64, i64* %RBP.i23
  %2687 = sub i64 %2686, 8
  %2688 = load i64, i64* %PC.i21
  %2689 = add i64 %2688, 4
  store i64 %2689, i64* %PC.i21
  %2690 = inttoptr i64 %2687 to i64*
  %2691 = load i64, i64* %2690
  store i64 %2691, i64* %RAX.i22, align 8
  store %struct.Memory* %loadMem_433ecc, %struct.Memory** %MEMORY
  %loadMem_433ed0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2693 = getelementptr inbounds %struct.GPR, %struct.GPR* %2692, i32 0, i32 33
  %2694 = getelementptr inbounds %struct.Reg, %struct.Reg* %2693, i32 0, i32 0
  %PC.i18 = bitcast %union.anon* %2694 to i64*
  %2695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2696 = getelementptr inbounds %struct.GPR, %struct.GPR* %2695, i32 0, i32 1
  %2697 = getelementptr inbounds %struct.Reg, %struct.Reg* %2696, i32 0, i32 0
  %RAX.i19 = bitcast %union.anon* %2697 to i64*
  %2698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2699 = getelementptr inbounds %struct.GPR, %struct.GPR* %2698, i32 0, i32 5
  %2700 = getelementptr inbounds %struct.Reg, %struct.Reg* %2699, i32 0, i32 0
  %RCX.i20 = bitcast %union.anon* %2700 to i64*
  %2701 = load i64, i64* %RAX.i19
  %2702 = add i64 %2701, 456
  %2703 = load i64, i64* %PC.i18
  %2704 = add i64 %2703, 6
  store i64 %2704, i64* %PC.i18
  %2705 = inttoptr i64 %2702 to i32*
  %2706 = load i32, i32* %2705
  %2707 = zext i32 %2706 to i64
  store i64 %2707, i64* %RCX.i20, align 8
  store %struct.Memory* %loadMem_433ed0, %struct.Memory** %MEMORY
  %loadMem_433ed6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2708 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2709 = getelementptr inbounds %struct.GPR, %struct.GPR* %2708, i32 0, i32 33
  %2710 = getelementptr inbounds %struct.Reg, %struct.Reg* %2709, i32 0, i32 0
  %PC.i16 = bitcast %union.anon* %2710 to i64*
  %2711 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2712 = getelementptr inbounds %struct.GPR, %struct.GPR* %2711, i32 0, i32 5
  %2713 = getelementptr inbounds %struct.Reg, %struct.Reg* %2712, i32 0, i32 0
  %RCX.i17 = bitcast %union.anon* %2713 to i64*
  %2714 = load i64, i64* %RCX.i17
  %2715 = load i64, i64* %PC.i16
  %2716 = add i64 %2715, 3
  store i64 %2716, i64* %PC.i16
  %2717 = and i64 -2, %2714
  %2718 = trunc i64 %2717 to i32
  %2719 = and i64 %2717, 4294967295
  store i64 %2719, i64* %RCX.i17, align 8
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2720, align 1
  %2721 = and i32 %2718, 255
  %2722 = call i32 @llvm.ctpop.i32(i32 %2721)
  %2723 = trunc i32 %2722 to i8
  %2724 = and i8 %2723, 1
  %2725 = xor i8 %2724, 1
  %2726 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2725, i8* %2726, align 1
  %2727 = icmp eq i32 %2718, 0
  %2728 = zext i1 %2727 to i8
  %2729 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2728, i8* %2729, align 1
  %2730 = lshr i32 %2718, 31
  %2731 = trunc i32 %2730 to i8
  %2732 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2731, i8* %2732, align 1
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2733, align 1
  %2734 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2734, align 1
  store %struct.Memory* %loadMem_433ed6, %struct.Memory** %MEMORY
  %loadMem_433ed9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2735 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2736 = getelementptr inbounds %struct.GPR, %struct.GPR* %2735, i32 0, i32 33
  %2737 = getelementptr inbounds %struct.Reg, %struct.Reg* %2736, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %2737 to i64*
  %2738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2739 = getelementptr inbounds %struct.GPR, %struct.GPR* %2738, i32 0, i32 5
  %2740 = getelementptr inbounds %struct.Reg, %struct.Reg* %2739, i32 0, i32 0
  %ECX.i14 = bitcast %union.anon* %2740 to i32*
  %2741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2742 = getelementptr inbounds %struct.GPR, %struct.GPR* %2741, i32 0, i32 1
  %2743 = getelementptr inbounds %struct.Reg, %struct.Reg* %2742, i32 0, i32 0
  %RAX.i15 = bitcast %union.anon* %2743 to i64*
  %2744 = load i64, i64* %RAX.i15
  %2745 = add i64 %2744, 456
  %2746 = load i32, i32* %ECX.i14
  %2747 = zext i32 %2746 to i64
  %2748 = load i64, i64* %PC.i13
  %2749 = add i64 %2748, 6
  store i64 %2749, i64* %PC.i13
  %2750 = inttoptr i64 %2745 to i32*
  store i32 %2746, i32* %2750
  store %struct.Memory* %loadMem_433ed9, %struct.Memory** %MEMORY
  %loadMem_433edf = load %struct.Memory*, %struct.Memory** %MEMORY
  %2751 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2752 = getelementptr inbounds %struct.GPR, %struct.GPR* %2751, i32 0, i32 33
  %2753 = getelementptr inbounds %struct.Reg, %struct.Reg* %2752, i32 0, i32 0
  %PC.i10 = bitcast %union.anon* %2753 to i64*
  %2754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2755 = getelementptr inbounds %struct.GPR, %struct.GPR* %2754, i32 0, i32 1
  %2756 = getelementptr inbounds %struct.Reg, %struct.Reg* %2755, i32 0, i32 0
  %RAX.i11 = bitcast %union.anon* %2756 to i64*
  %2757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2758 = getelementptr inbounds %struct.GPR, %struct.GPR* %2757, i32 0, i32 15
  %2759 = getelementptr inbounds %struct.Reg, %struct.Reg* %2758, i32 0, i32 0
  %RBP.i12 = bitcast %union.anon* %2759 to i64*
  %2760 = load i64, i64* %RBP.i12
  %2761 = sub i64 %2760, 8
  %2762 = load i64, i64* %PC.i10
  %2763 = add i64 %2762, 4
  store i64 %2763, i64* %PC.i10
  %2764 = inttoptr i64 %2761 to i64*
  %2765 = load i64, i64* %2764
  store i64 %2765, i64* %RAX.i11, align 8
  store %struct.Memory* %loadMem_433edf, %struct.Memory** %MEMORY
  %loadMem_433ee3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2766 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2767 = getelementptr inbounds %struct.GPR, %struct.GPR* %2766, i32 0, i32 33
  %2768 = getelementptr inbounds %struct.Reg, %struct.Reg* %2767, i32 0, i32 0
  %PC.i7 = bitcast %union.anon* %2768 to i64*
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2770 = getelementptr inbounds %struct.GPR, %struct.GPR* %2769, i32 0, i32 1
  %2771 = getelementptr inbounds %struct.Reg, %struct.Reg* %2770, i32 0, i32 0
  %RAX.i8 = bitcast %union.anon* %2771 to i64*
  %2772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2773 = getelementptr inbounds %struct.GPR, %struct.GPR* %2772, i32 0, i32 5
  %2774 = getelementptr inbounds %struct.Reg, %struct.Reg* %2773, i32 0, i32 0
  %RCX.i9 = bitcast %union.anon* %2774 to i64*
  %2775 = load i64, i64* %RAX.i8
  %2776 = add i64 %2775, 456
  %2777 = load i64, i64* %PC.i7
  %2778 = add i64 %2777, 6
  store i64 %2778, i64* %PC.i7
  %2779 = inttoptr i64 %2776 to i32*
  %2780 = load i32, i32* %2779
  %2781 = zext i32 %2780 to i64
  store i64 %2781, i64* %RCX.i9, align 8
  store %struct.Memory* %loadMem_433ee3, %struct.Memory** %MEMORY
  %loadMem_433ee9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2782 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2783 = getelementptr inbounds %struct.GPR, %struct.GPR* %2782, i32 0, i32 33
  %2784 = getelementptr inbounds %struct.Reg, %struct.Reg* %2783, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %2784 to i64*
  %2785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2786 = getelementptr inbounds %struct.GPR, %struct.GPR* %2785, i32 0, i32 5
  %2787 = getelementptr inbounds %struct.Reg, %struct.Reg* %2786, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %2787 to i64*
  %2788 = load i64, i64* %RCX.i
  %2789 = load i64, i64* %PC.i6
  %2790 = add i64 %2789, 3
  store i64 %2790, i64* %PC.i6
  %2791 = or i64 32, %2788
  %2792 = trunc i64 %2791 to i32
  %2793 = and i64 %2791, 4294967295
  store i64 %2793, i64* %RCX.i, align 8
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2794, align 1
  %2795 = and i32 %2792, 255
  %2796 = call i32 @llvm.ctpop.i32(i32 %2795)
  %2797 = trunc i32 %2796 to i8
  %2798 = and i8 %2797, 1
  %2799 = xor i8 %2798, 1
  %2800 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2799, i8* %2800, align 1
  %2801 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %2801, align 1
  %2802 = lshr i32 %2792, 31
  %2803 = trunc i32 %2802 to i8
  %2804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2803, i8* %2804, align 1
  %2805 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2805, align 1
  %2806 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2806, align 1
  store %struct.Memory* %loadMem_433ee9, %struct.Memory** %MEMORY
  %loadMem_433eec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2807 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2808 = getelementptr inbounds %struct.GPR, %struct.GPR* %2807, i32 0, i32 33
  %2809 = getelementptr inbounds %struct.Reg, %struct.Reg* %2808, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %2809 to i64*
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 5
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %2812 to i32*
  %2813 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2814 = getelementptr inbounds %struct.GPR, %struct.GPR* %2813, i32 0, i32 1
  %2815 = getelementptr inbounds %struct.Reg, %struct.Reg* %2814, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %2815 to i64*
  %2816 = load i64, i64* %RAX.i
  %2817 = add i64 %2816, 456
  %2818 = load i32, i32* %ECX.i
  %2819 = zext i32 %2818 to i64
  %2820 = load i64, i64* %PC.i5
  %2821 = add i64 %2820, 6
  store i64 %2821, i64* %PC.i5
  %2822 = inttoptr i64 %2817 to i32*
  store i32 %2818, i32* %2822
  store %struct.Memory* %loadMem_433eec, %struct.Memory** %MEMORY
  %loadMem_433ef2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2823 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2824 = getelementptr inbounds %struct.GPR, %struct.GPR* %2823, i32 0, i32 33
  %2825 = getelementptr inbounds %struct.Reg, %struct.Reg* %2824, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %2825 to i64*
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 13
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %2828 to i64*
  %2829 = load i64, i64* %RSP.i
  %2830 = load i64, i64* %PC.i4
  %2831 = add i64 %2830, 4
  store i64 %2831, i64* %PC.i4
  %2832 = add i64 32, %2829
  store i64 %2832, i64* %RSP.i, align 8
  %2833 = icmp ult i64 %2832, %2829
  %2834 = icmp ult i64 %2832, 32
  %2835 = or i1 %2833, %2834
  %2836 = zext i1 %2835 to i8
  %2837 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2836, i8* %2837, align 1
  %2838 = trunc i64 %2832 to i32
  %2839 = and i32 %2838, 255
  %2840 = call i32 @llvm.ctpop.i32(i32 %2839)
  %2841 = trunc i32 %2840 to i8
  %2842 = and i8 %2841, 1
  %2843 = xor i8 %2842, 1
  %2844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2843, i8* %2844, align 1
  %2845 = xor i64 32, %2829
  %2846 = xor i64 %2845, %2832
  %2847 = lshr i64 %2846, 4
  %2848 = trunc i64 %2847 to i8
  %2849 = and i8 %2848, 1
  %2850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2849, i8* %2850, align 1
  %2851 = icmp eq i64 %2832, 0
  %2852 = zext i1 %2851 to i8
  %2853 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2852, i8* %2853, align 1
  %2854 = lshr i64 %2832, 63
  %2855 = trunc i64 %2854 to i8
  %2856 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2855, i8* %2856, align 1
  %2857 = lshr i64 %2829, 63
  %2858 = xor i64 %2854, %2857
  %2859 = add i64 %2858, %2854
  %2860 = icmp eq i64 %2859, 2
  %2861 = zext i1 %2860 to i8
  %2862 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2861, i8* %2862, align 1
  store %struct.Memory* %loadMem_433ef2, %struct.Memory** %MEMORY
  %loadMem_433ef6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2863 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2864 = getelementptr inbounds %struct.GPR, %struct.GPR* %2863, i32 0, i32 33
  %2865 = getelementptr inbounds %struct.Reg, %struct.Reg* %2864, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %2865 to i64*
  %2866 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2867 = getelementptr inbounds %struct.GPR, %struct.GPR* %2866, i32 0, i32 15
  %2868 = getelementptr inbounds %struct.Reg, %struct.Reg* %2867, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %2868 to i64*
  %2869 = load i64, i64* %PC.i2
  %2870 = add i64 %2869, 1
  store i64 %2870, i64* %PC.i2
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2872 = load i64, i64* %2871, align 8
  %2873 = add i64 %2872, 8
  %2874 = inttoptr i64 %2872 to i64*
  %2875 = load i64, i64* %2874
  store i64 %2875, i64* %RBP.i3, align 8
  store i64 %2873, i64* %2871, align 8
  store %struct.Memory* %loadMem_433ef6, %struct.Memory** %MEMORY
  %loadMem_433ef7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2876 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2877 = getelementptr inbounds %struct.GPR, %struct.GPR* %2876, i32 0, i32 33
  %2878 = getelementptr inbounds %struct.Reg, %struct.Reg* %2877, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %2878 to i64*
  %2879 = load i64, i64* %PC.i1
  %2880 = add i64 %2879, 1
  store i64 %2880, i64* %PC.i1
  %2881 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2882 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2883 = load i64, i64* %2882, align 8
  %2884 = inttoptr i64 %2883 to i64*
  %2885 = load i64, i64* %2884
  store i64 %2885, i64* %2881, align 8
  %2886 = add i64 %2883, 8
  store i64 %2886, i64* %2882, align 8
  store %struct.Memory* %loadMem_433ef7, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_433ef7
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

define %struct.Memory* @routine_movl__0x1__MINUS0xc__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i32 1, i32* %13
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

define %struct.Memory* @routine_cmpl_0x88__rcx____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 136
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

define %struct.Memory* @routine_jg_.L_433c83(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0x98__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 152
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

define %struct.Memory* @routine_movq___rax__rcx_8____rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds %struct.GPR, %struct.GPR* %12, i32 0, i32 11
  %14 = getelementptr inbounds %struct.Reg, %struct.Reg* %13, i32 0, i32 0
  %RDI = bitcast %union.anon* %14 to i64*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 8
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 4
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to i64*
  %22 = load i64, i64* %21
  store i64 %22, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x677060___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 7
  store i64 %10, i64* %PC
  %11 = load i32, i32* bitcast (%G_0x677060_type* @G_0x677060 to i32*)
  %12 = zext i32 %11 to i64
  store i64 %12, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FNorm(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_433c43(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_433cca(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movq_0xa0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 160
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jmpq_.L_433c8a(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq_0xd0__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 208
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addq__0x4___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 4, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 4
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
  %25 = xor i64 4, %9
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

define %struct.Memory* @routine_movl_0x88__rcx____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i64, i64* %RCX
  %13 = add i64 %12, 136
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__rax___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RAX
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FSum(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movsd_0x20aed__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x20aed__rip__type* @G_0x20aed__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss_0xa8__rax____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %13 = load i64, i64* %RAX
  %14 = add i64 %13, 168
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 8
  store i64 %16, i64* %PC
  %17 = bitcast i8* %12 to <2 x float>*
  %18 = load <2 x float>, <2 x float>* %17, align 1
  %19 = getelementptr inbounds i8, i8* %12, i64 8
  %20 = bitcast i8* %19 to <2 x i32>*
  %21 = load <2 x i32>, <2 x i32>* %20, align 1
  %22 = inttoptr i64 %14 to float*
  %23 = load float, float* %22
  %24 = extractelement <2 x float> %18, i32 0
  %25 = fadd float %24, %23
  %26 = bitcast i8* %11 to float*
  store float %25, float* %26, align 1
  %27 = bitcast <2 x float> %18 to <2 x i32>
  %28 = extractelement <2 x i32> %27, i32 1
  %29 = getelementptr inbounds i8, i8* %11, i64 4
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  %31 = extractelement <2 x i32> %21, i32 0
  %32 = getelementptr inbounds i8, i8* %11, i64 8
  %33 = bitcast i8* %32 to i32*
  store i32 %31, i32* %33, align 1
  %34 = extractelement <2 x i32> %21, i32 1
  %35 = getelementptr inbounds i8, i8* %11, i64 12
  %36 = bitcast i8* %35 to i32*
  store i32 %34, i32* %36, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__MINUS0x14__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtss2sd_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = fpext float %17 to double
  %19 = bitcast i8* %11 to double*
  store double %18, double* %19, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divsd__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
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
  %22 = fdiv double %16, %21
  %23 = bitcast i8* %10 to double*
  store double %22, double* %23, align 1
  %24 = getelementptr inbounds i8, i8* %10, i64 8
  %25 = bitcast i8* %24 to i64*
  store i64 %19, i64* %25, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cvtsd2ss__xmm1___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %11 = bitcast %union.vec128_t* %XMM1 to i8*
  %12 = load i64, i64* %PC
  %13 = add i64 %12, 4
  store i64 %13, i64* %PC
  %14 = bitcast i8* %10 to <2 x i32>*
  %15 = load <2 x i32>, <2 x i32>* %14, align 1
  %16 = getelementptr inbounds i8, i8* %10, i64 8
  %17 = bitcast i8* %16 to <2 x i32>*
  %18 = load <2 x i32>, <2 x i32>* %17, align 1
  %19 = bitcast i8* %11 to double*
  %20 = load double, double* %19, align 1
  %21 = fptrunc double %20 to float
  %22 = bitcast i8* %10 to float*
  store float %21, float* %22, align 1
  %23 = extractelement <2 x i32> %15, i32 1
  %24 = getelementptr inbounds i8, i8* %10, i64 4
  %25 = bitcast i8* %24 to i32*
  store i32 %23, i32* %25, align 1
  %26 = extractelement <2 x i32> %18, i32 0
  %27 = bitcast i8* %16 to i32*
  store i32 %26, i32* %27, align 1
  %28 = extractelement <2 x i32> %18, i32 1
  %29 = getelementptr inbounds i8, i8* %10, i64 12
  %30 = bitcast i8* %29 to i32*
  store i32 %28, i32* %30, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.FScale(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movss_MINUS0x14__rbp____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %YMM0 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = load i64, i64* %RBP
  %13 = sub i64 %12, 20
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss_0xa8__rax____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %10 to %"class.std::bitset"*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = load i64, i64* %RAX
  %13 = add i64 %12, 168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to float*
  %17 = load float, float* %16
  %18 = bitcast i8* %11 to float*
  store float %17, float* %18, align 1
  %19 = getelementptr inbounds i8, i8* %11, i64 4
  %20 = bitcast i8* %19 to float*
  store float 0.000000e+00, float* %20, align 1
  %21 = getelementptr inbounds i8, i8* %11, i64 8
  %22 = bitcast i8* %21 to float*
  store float 0.000000e+00, float* %22, align 1
  %23 = getelementptr inbounds i8, i8* %11, i64 12
  %24 = bitcast i8* %23 to float*
  store float 0.000000e+00, float* %24, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_divss__xmm0___xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 4
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to <2 x float>*
  %16 = load <2 x float>, <2 x float>* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to <2 x i32>*
  %19 = load <2 x i32>, <2 x i32>* %18, align 1
  %20 = bitcast i8* %12 to <2 x float>*
  %21 = load <2 x float>, <2 x float>* %20, align 1
  %22 = extractelement <2 x float> %16, i32 0
  %23 = extractelement <2 x float> %21, i32 0
  %24 = fdiv float %22, %23
  %25 = bitcast i8* %10 to float*
  store float %24, float* %25, align 1
  %26 = bitcast <2 x float> %16 to <2 x i32>
  %27 = extractelement <2 x i32> %26, i32 1
  %28 = getelementptr inbounds i8, i8* %10, i64 4
  %29 = bitcast i8* %28 to i32*
  store i32 %27, i32* %29, align 1
  %30 = extractelement <2 x i32> %19, i32 0
  %31 = getelementptr inbounds i8, i8* %10, i64 8
  %32 = bitcast i8* %31 to i32*
  store i32 %30, i32* %32, align 1
  %33 = extractelement <2 x i32> %19, i32 1
  %34 = getelementptr inbounds i8, i8* %10, i64 12
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1__0xa8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 168
  %13 = bitcast %union.vec128_t* %XMM1 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_jge_.L_433e49(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x3___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 3, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0x90__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 144
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movsd_0x20a4d__rip____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %9 = load i64, i64* %PC
  %10 = add i64 %9, ptrtoint (%G_0x20a4d__rip__type* @G_0x20a4d__rip_ to i64)
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 8
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to double*
  %14 = load double, double* %13
  %15 = bitcast i8* %8 to double*
  store double %14, double* %15, align 1
  %16 = getelementptr inbounds i8, i8* %8, i64 8
  %17 = bitcast i8* %16 to double*
  store double 0.000000e+00, double* %17, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq_0xd8__rax____rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 216
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_addss___rax__rcx_4____xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %16 = load i64, i64* %RAX
  %17 = load i64, i64* %RCX
  %18 = mul i64 %17, 4
  %19 = add i64 %18, %16
  %20 = load i64, i64* %PC
  %21 = add i64 %20, 5
  store i64 %21, i64* %PC
  %22 = bitcast i8* %15 to <2 x float>*
  %23 = load <2 x float>, <2 x float>* %22, align 1
  %24 = getelementptr inbounds i8, i8* %15, i64 8
  %25 = bitcast i8* %24 to <2 x i32>*
  %26 = load <2 x i32>, <2 x i32>* %25, align 1
  %27 = inttoptr i64 %19 to float*
  %28 = load float, float* %27
  %29 = extractelement <2 x float> %23, i32 0
  %30 = fadd float %29, %28
  %31 = bitcast i8* %14 to float*
  store float %30, float* %31, align 1
  %32 = bitcast <2 x float> %23 to <2 x i32>
  %33 = extractelement <2 x i32> %32, i32 1
  %34 = getelementptr inbounds i8, i8* %14, i64 4
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = extractelement <2 x i32> %26, i32 0
  %37 = getelementptr inbounds i8, i8* %14, i64 8
  %38 = bitcast i8* %37 to i32*
  store i32 %36, i32* %38, align 1
  %39 = extractelement <2 x i32> %26, i32 1
  %40 = getelementptr inbounds i8, i8* %14, i64 12
  %41 = bitcast i8* %40 to i32*
  store i32 %39, i32* %41, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x2___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 2, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss___rax__rcx_4____xmm1(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %YMM1 = bitcast %union.VectorReg* %13 to %"class.std::bitset"*
  %14 = bitcast %"class.std::bitset"* %YMM1 to i8*
  %15 = load i64, i64* %RAX
  %16 = load i64, i64* %RCX
  %17 = mul i64 %16, 4
  %18 = add i64 %17, %15
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = inttoptr i64 %18 to float*
  %22 = load float, float* %21
  %23 = bitcast i8* %14 to float*
  store float %22, float* %23, align 1
  %24 = getelementptr inbounds i8, i8* %14, i64 4
  %25 = bitcast i8* %24 to float*
  store float 0.000000e+00, float* %25, align 1
  %26 = getelementptr inbounds i8, i8* %14, i64 8
  %27 = bitcast i8* %26 to float*
  store float 0.000000e+00, float* %27, align 1
  %28 = getelementptr inbounds i8, i8* %14, i64 12
  %29 = bitcast i8* %28 to float*
  store float 0.000000e+00, float* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm1____rax__rcx_4_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %12, i64 0, i64 1
  %XMM1 = bitcast %union.VectorReg* %13 to %union.vec128_t*
  %14 = load i64, i64* %RAX
  %15 = load i64, i64* %RCX
  %16 = mul i64 %15, 4
  %17 = add i64 %16, %14
  %18 = bitcast %union.vec128_t* %XMM1 to i8*
  %19 = load i64, i64* %PC
  %20 = add i64 %19, 5
  store i64 %20, i64* %PC
  %21 = bitcast i8* %18 to <2 x float>*
  %22 = load <2 x float>, <2 x float>* %21, align 1
  %23 = extractelement <2 x float> %22, i32 0
  %24 = inttoptr i64 %17 to float*
  store float %23, float* %24
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

define %struct.Memory* @routine_addq__0xc___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 12, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 12
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
  %25 = xor i64 12, %9
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

define %struct.Memory* @routine_addq__0x14___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 20, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 20
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
  %25 = xor i64 20, %9
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

define %struct.Memory* @routine_jmpq_.L_433d56(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0xe0___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 224, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 224
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
  %25 = xor i64 224, %9
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

define %struct.Memory* @routine_cmpl__0x4__MINUS0x10__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_433ea3(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_addq__0xac___rax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 172, %9
  store i64 %12, i64* %RAX, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 172
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
  %25 = xor i64 172, %9
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

define %struct.Memory* @routine_jmpq_.L_433e69(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_xorps__xmm0___xmm0(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %7 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %6, i64 0, i64 0
  %YMM0 = bitcast %union.VectorReg* %7 to %"class.std::bitset"*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %9 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %8, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %9 to %union.vec128_t*
  %10 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %11 = bitcast %"class.std::bitset"* %YMM0 to i8*
  %12 = bitcast %union.vec128_t* %XMM0 to i8*
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  %15 = bitcast i8* %11 to i64*
  %16 = load i64, i64* %15, align 1
  %17 = getelementptr inbounds i8, i8* %11, i64 8
  %18 = bitcast i8* %17 to i64*
  %19 = load i64, i64* %18, align 1
  %20 = bitcast i8* %12 to i64*
  %21 = load i64, i64* %20, align 1
  %22 = getelementptr inbounds i8, i8* %12, i64 8
  %23 = bitcast i8* %22 to i64*
  %24 = load i64, i64* %23, align 1
  %25 = xor i64 %21, %16
  %26 = xor i64 %24, %19
  %27 = trunc i64 %25 to i32
  %28 = lshr i64 %25, 32
  %29 = trunc i64 %28 to i32
  %30 = bitcast i8* %10 to i32*
  store i32 %27, i32* %30, align 1
  %31 = getelementptr inbounds i8, i8* %10, i64 4
  %32 = bitcast i8* %31 to i32*
  store i32 %29, i32* %32, align 1
  %33 = trunc i64 %26 to i32
  %34 = getelementptr inbounds i8, i8* %10, i64 8
  %35 = bitcast i8* %34 to i32*
  store i32 %33, i32* %35, align 1
  %36 = lshr i64 %26, 32
  %37 = trunc i64 %36 to i32
  %38 = getelementptr inbounds i8, i8* %10, i64 12
  %39 = bitcast i8* %38 to i32*
  store i32 %37, i32* %39, align 1
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

define %struct.Memory* @routine_movss__xmm0__0x18__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 24
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movss__xmm0__0x14__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
block_400488:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %4 = getelementptr inbounds %struct.GPR, %struct.GPR* %3, i32 0, i32 33
  %5 = getelementptr inbounds %struct.Reg, %struct.Reg* %4, i32 0, i32 0
  %PC = bitcast %union.anon* %5 to i64*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %7 = getelementptr inbounds %struct.GPR, %struct.GPR* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.Reg, %struct.Reg* %7, i32 0, i32 0
  %RAX = bitcast %union.anon* %8 to i64*
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 1
  %10 = getelementptr inbounds [32 x %union.VectorReg], [32 x %union.VectorReg]* %9, i64 0, i64 0
  %XMM0 = bitcast %union.VectorReg* %10 to %union.vec128_t*
  %11 = load i64, i64* %RAX
  %12 = add i64 %11, 20
  %13 = bitcast %union.vec128_t* %XMM0 to i8*
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 5
  store i64 %15, i64* %PC
  %16 = bitcast i8* %13 to <2 x float>*
  %17 = load <2 x float>, <2 x float>* %16, align 1
  %18 = extractelement <2 x float> %17, i32 0
  %19 = inttoptr i64 %12 to float*
  store float %18, float* %19
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_0x1c8__rax____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 456
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 6
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_andl__0xfffffffe___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = and i64 -2, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = icmp eq i32 %13, 0
  %23 = zext i1 %22 to i8
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %23, i8* %24, align 1
  %25 = lshr i32 %13, 31
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %26, i8* %27, align 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %28, align 1
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %29, align 1
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__ecx__0x1c8__rax_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = add i64 %12, 456
  %14 = load i32, i32* %ECX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 6
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_orl__0x20___ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = or i64 32, %9
  %13 = trunc i64 %12 to i32
  %14 = and i64 %12, 4294967295
  store i64 %14, i64* %RCX, align 8
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %15, align 1
  %16 = and i32 %13, 255
  %17 = call i32 @llvm.ctpop.i32(i32 %16)
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %20, i8* %21, align 1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %22, align 1
  %23 = lshr i32 %13, 31
  %24 = trunc i32 %23 to i8
  %25 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %24, i8* %25, align 1
  %26 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %26, align 1
  %27 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %27, align 1
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
