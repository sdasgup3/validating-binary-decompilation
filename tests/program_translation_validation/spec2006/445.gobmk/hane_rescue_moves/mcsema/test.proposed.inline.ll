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
%G__0x57fb0d_type = type <{ [8 x i8] }>
%G__0x57fd19_type = type <{ [8 x i8] }>
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
@G__0x57fb0d = global %G__0x57fb0d_type zeroinitializer
@G__0x57fd19 = global %G__0x57fd19_type zeroinitializer

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

declare %struct.Memory* @sub_452090.abortgo(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_4153e0.same_string(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

declare %struct.Memory* @sub_412080.accuratelib(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias readnone returned)

; Function Attrs: alwaysinline
define %struct.Memory* @hane_rescue_moves(%struct.State* noalias, i64, %struct.Memory* noalias) #2 {
entry:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %BRANCH_TAKEN = alloca i8, align 1
  store i8 0, i8* %BRANCH_TAKEN, align 1
  %MEMORY = alloca %struct.Memory*, align 8
  store %struct.Memory* %2, %struct.Memory** %MEMORY, align 8
  %loadMem_467aa0 = load %struct.Memory*, %struct.Memory** %MEMORY
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
  store %struct.Memory* %loadMem_467aa0, %struct.Memory** %MEMORY
  %loadMem_467aa1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %18 = getelementptr inbounds %struct.GPR, %struct.GPR* %17, i32 0, i32 33
  %19 = getelementptr inbounds %struct.Reg, %struct.Reg* %18, i32 0, i32 0
  %PC.i241 = bitcast %union.anon* %19 to i64*
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %21 = getelementptr inbounds %struct.GPR, %struct.GPR* %20, i32 0, i32 13
  %22 = getelementptr inbounds %struct.Reg, %struct.Reg* %21, i32 0, i32 0
  %RSP.i242 = bitcast %union.anon* %22 to i64*
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %24 = getelementptr inbounds %struct.GPR, %struct.GPR* %23, i32 0, i32 15
  %25 = getelementptr inbounds %struct.Reg, %struct.Reg* %24, i32 0, i32 0
  %RBP.i243 = bitcast %union.anon* %25 to i64*
  %26 = load i64, i64* %RSP.i242
  %27 = load i64, i64* %PC.i241
  %28 = add i64 %27, 3
  store i64 %28, i64* %PC.i241
  store i64 %26, i64* %RBP.i243, align 8
  store %struct.Memory* %loadMem_467aa1, %struct.Memory** %MEMORY
  %loadMem_467aa4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %30 = getelementptr inbounds %struct.GPR, %struct.GPR* %29, i32 0, i32 33
  %31 = getelementptr inbounds %struct.Reg, %struct.Reg* %30, i32 0, i32 0
  %PC.i346 = bitcast %union.anon* %31 to i64*
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %33 = getelementptr inbounds %struct.GPR, %struct.GPR* %32, i32 0, i32 13
  %34 = getelementptr inbounds %struct.Reg, %struct.Reg* %33, i32 0, i32 0
  %RSP.i347 = bitcast %union.anon* %34 to i64*
  %35 = load i64, i64* %RSP.i347
  %36 = load i64, i64* %PC.i346
  %37 = add i64 %36, 4
  store i64 %37, i64* %PC.i346
  %38 = sub i64 %35, 112
  store i64 %38, i64* %RSP.i347, align 8
  %39 = icmp ult i64 %35, 112
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
  %49 = xor i64 112, %35
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
  store %struct.Memory* %loadMem_467aa4, %struct.Memory** %MEMORY
  %loadMem_467aa8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %67 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %68 = getelementptr inbounds %struct.GPR, %struct.GPR* %67, i32 0, i32 33
  %69 = getelementptr inbounds %struct.Reg, %struct.Reg* %68, i32 0, i32 0
  %PC.i363 = bitcast %union.anon* %69 to i64*
  %70 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %71 = getelementptr inbounds %struct.GPR, %struct.GPR* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.Reg, %struct.Reg* %71, i32 0, i32 0
  %RAX.i364 = bitcast %union.anon* %72 to i64*
  %73 = load i64, i64* %PC.i363
  %74 = add i64 %73, 5
  store i64 %74, i64* %PC.i363
  store i64 3, i64* %RAX.i364, align 8
  store %struct.Memory* %loadMem_467aa8, %struct.Memory** %MEMORY
  %loadMem_467aad = load %struct.Memory*, %struct.Memory** %MEMORY
  %75 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %76 = getelementptr inbounds %struct.GPR, %struct.GPR* %75, i32 0, i32 33
  %77 = getelementptr inbounds %struct.Reg, %struct.Reg* %76, i32 0, i32 0
  %PC.i420 = bitcast %union.anon* %77 to i64*
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %79 = getelementptr inbounds %struct.GPR, %struct.GPR* %78, i32 0, i32 11
  %80 = getelementptr inbounds %struct.Reg, %struct.Reg* %79, i32 0, i32 0
  %EDI.i421 = bitcast %union.anon* %80 to i32*
  %81 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %82 = getelementptr inbounds %struct.GPR, %struct.GPR* %81, i32 0, i32 15
  %83 = getelementptr inbounds %struct.Reg, %struct.Reg* %82, i32 0, i32 0
  %RBP.i422 = bitcast %union.anon* %83 to i64*
  %84 = load i64, i64* %RBP.i422
  %85 = sub i64 %84, 4
  %86 = load i32, i32* %EDI.i421
  %87 = zext i32 %86 to i64
  %88 = load i64, i64* %PC.i420
  %89 = add i64 %88, 3
  store i64 %89, i64* %PC.i420
  %90 = inttoptr i64 %85 to i32*
  store i32 %86, i32* %90
  store %struct.Memory* %loadMem_467aad, %struct.Memory** %MEMORY
  %loadMem_467ab0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %91 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %92 = getelementptr inbounds %struct.GPR, %struct.GPR* %91, i32 0, i32 33
  %93 = getelementptr inbounds %struct.Reg, %struct.Reg* %92, i32 0, i32 0
  %PC.i417 = bitcast %union.anon* %93 to i64*
  %94 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %95 = getelementptr inbounds %struct.GPR, %struct.GPR* %94, i32 0, i32 9
  %96 = getelementptr inbounds %struct.Reg, %struct.Reg* %95, i32 0, i32 0
  %RSI.i418 = bitcast %union.anon* %96 to i64*
  %97 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %98 = getelementptr inbounds %struct.GPR, %struct.GPR* %97, i32 0, i32 15
  %99 = getelementptr inbounds %struct.Reg, %struct.Reg* %98, i32 0, i32 0
  %RBP.i419 = bitcast %union.anon* %99 to i64*
  %100 = load i64, i64* %RBP.i419
  %101 = sub i64 %100, 16
  %102 = load i64, i64* %RSI.i418
  %103 = load i64, i64* %PC.i417
  %104 = add i64 %103, 4
  store i64 %104, i64* %PC.i417
  %105 = inttoptr i64 %101 to i64*
  store i64 %102, i64* %105
  store %struct.Memory* %loadMem_467ab0, %struct.Memory** %MEMORY
  %loadMem_467ab4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %106 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %107 = getelementptr inbounds %struct.GPR, %struct.GPR* %106, i32 0, i32 33
  %108 = getelementptr inbounds %struct.Reg, %struct.Reg* %107, i32 0, i32 0
  %PC.i414 = bitcast %union.anon* %108 to i64*
  %109 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %110 = getelementptr inbounds %struct.GPR, %struct.GPR* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.Reg, %struct.Reg* %110, i32 0, i32 0
  %RDX.i415 = bitcast %union.anon* %111 to i64*
  %112 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %113 = getelementptr inbounds %struct.GPR, %struct.GPR* %112, i32 0, i32 15
  %114 = getelementptr inbounds %struct.Reg, %struct.Reg* %113, i32 0, i32 0
  %RBP.i416 = bitcast %union.anon* %114 to i64*
  %115 = load i64, i64* %RBP.i416
  %116 = sub i64 %115, 24
  %117 = load i64, i64* %RDX.i415
  %118 = load i64, i64* %PC.i414
  %119 = add i64 %118, 4
  store i64 %119, i64* %PC.i414
  %120 = inttoptr i64 %116 to i64*
  store i64 %117, i64* %120
  store %struct.Memory* %loadMem_467ab4, %struct.Memory** %MEMORY
  %loadMem_467ab8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %121 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %122 = getelementptr inbounds %struct.GPR, %struct.GPR* %121, i32 0, i32 33
  %123 = getelementptr inbounds %struct.Reg, %struct.Reg* %122, i32 0, i32 0
  %PC.i411 = bitcast %union.anon* %123 to i64*
  %124 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %125 = getelementptr inbounds %struct.GPR, %struct.GPR* %124, i32 0, i32 7
  %126 = getelementptr inbounds %struct.Reg, %struct.Reg* %125, i32 0, i32 0
  %RDX.i412 = bitcast %union.anon* %126 to i64*
  %127 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %128 = getelementptr inbounds %struct.GPR, %struct.GPR* %127, i32 0, i32 15
  %129 = getelementptr inbounds %struct.Reg, %struct.Reg* %128, i32 0, i32 0
  %RBP.i413 = bitcast %union.anon* %129 to i64*
  %130 = load i64, i64* %RBP.i413
  %131 = sub i64 %130, 4
  %132 = load i64, i64* %PC.i411
  %133 = add i64 %132, 4
  store i64 %133, i64* %PC.i411
  %134 = inttoptr i64 %131 to i32*
  %135 = load i32, i32* %134
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %RDX.i412, align 8
  store %struct.Memory* %loadMem_467ab8, %struct.Memory** %MEMORY
  %loadMem_467abc = load %struct.Memory*, %struct.Memory** %MEMORY
  %137 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %138 = getelementptr inbounds %struct.GPR, %struct.GPR* %137, i32 0, i32 33
  %139 = getelementptr inbounds %struct.Reg, %struct.Reg* %138, i32 0, i32 0
  %PC.i408 = bitcast %union.anon* %139 to i64*
  %140 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %141 = getelementptr inbounds %struct.GPR, %struct.GPR* %140, i32 0, i32 7
  %142 = getelementptr inbounds %struct.Reg, %struct.Reg* %141, i32 0, i32 0
  %RDX.i409 = bitcast %union.anon* %142 to i64*
  %143 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %144 = getelementptr inbounds %struct.GPR, %struct.GPR* %143, i32 0, i32 11
  %145 = getelementptr inbounds %struct.Reg, %struct.Reg* %144, i32 0, i32 0
  %RDI.i410 = bitcast %union.anon* %145 to i64*
  %146 = load i64, i64* %RDX.i409
  %147 = add i64 %146, 12099168
  %148 = load i64, i64* %PC.i408
  %149 = add i64 %148, 8
  store i64 %149, i64* %PC.i408
  %150 = inttoptr i64 %147 to i8*
  %151 = load i8, i8* %150
  %152 = zext i8 %151 to i64
  store i64 %152, i64* %RDI.i410, align 8
  store %struct.Memory* %loadMem_467abc, %struct.Memory** %MEMORY
  %loadMem_467ac4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %153 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %154 = getelementptr inbounds %struct.GPR, %struct.GPR* %153, i32 0, i32 33
  %155 = getelementptr inbounds %struct.Reg, %struct.Reg* %154, i32 0, i32 0
  %PC.i406 = bitcast %union.anon* %155 to i64*
  %156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %157 = getelementptr inbounds %struct.GPR, %struct.GPR* %156, i32 0, i32 11
  %158 = getelementptr inbounds %struct.Reg, %struct.Reg* %157, i32 0, i32 0
  %EDI.i = bitcast %union.anon* %158 to i32*
  %159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %160 = getelementptr inbounds %struct.GPR, %struct.GPR* %159, i32 0, i32 15
  %161 = getelementptr inbounds %struct.Reg, %struct.Reg* %160, i32 0, i32 0
  %RBP.i407 = bitcast %union.anon* %161 to i64*
  %162 = load i64, i64* %RBP.i407
  %163 = sub i64 %162, 28
  %164 = load i32, i32* %EDI.i
  %165 = zext i32 %164 to i64
  %166 = load i64, i64* %PC.i406
  %167 = add i64 %166, 3
  store i64 %167, i64* %PC.i406
  %168 = inttoptr i64 %163 to i32*
  store i32 %164, i32* %168
  store %struct.Memory* %loadMem_467ac4, %struct.Memory** %MEMORY
  %loadMem_467ac7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %169 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %170 = getelementptr inbounds %struct.GPR, %struct.GPR* %169, i32 0, i32 33
  %171 = getelementptr inbounds %struct.Reg, %struct.Reg* %170, i32 0, i32 0
  %PC.i403 = bitcast %union.anon* %171 to i64*
  %172 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %173 = getelementptr inbounds %struct.GPR, %struct.GPR* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.Reg, %struct.Reg* %173, i32 0, i32 0
  %RAX.i404 = bitcast %union.anon* %174 to i64*
  %175 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %176 = getelementptr inbounds %struct.GPR, %struct.GPR* %175, i32 0, i32 15
  %177 = getelementptr inbounds %struct.Reg, %struct.Reg* %176, i32 0, i32 0
  %RBP.i405 = bitcast %union.anon* %177 to i64*
  %178 = load i64, i64* %RAX.i404
  %179 = load i64, i64* %RBP.i405
  %180 = sub i64 %179, 28
  %181 = load i64, i64* %PC.i403
  %182 = add i64 %181, 3
  store i64 %182, i64* %PC.i403
  %183 = trunc i64 %178 to i32
  %184 = inttoptr i64 %180 to i32*
  %185 = load i32, i32* %184
  %186 = sub i32 %183, %185
  %187 = zext i32 %186 to i64
  store i64 %187, i64* %RAX.i404, align 8
  %188 = icmp ult i32 %183, %185
  %189 = zext i1 %188 to i8
  %190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %189, i8* %190, align 1
  %191 = and i32 %186, 255
  %192 = call i32 @llvm.ctpop.i32(i32 %191)
  %193 = trunc i32 %192 to i8
  %194 = and i8 %193, 1
  %195 = xor i8 %194, 1
  %196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %195, i8* %196, align 1
  %197 = xor i32 %185, %183
  %198 = xor i32 %197, %186
  %199 = lshr i32 %198, 4
  %200 = trunc i32 %199 to i8
  %201 = and i8 %200, 1
  %202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %201, i8* %202, align 1
  %203 = icmp eq i32 %186, 0
  %204 = zext i1 %203 to i8
  %205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %204, i8* %205, align 1
  %206 = lshr i32 %186, 31
  %207 = trunc i32 %206 to i8
  %208 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %207, i8* %208, align 1
  %209 = lshr i32 %183, 31
  %210 = lshr i32 %185, 31
  %211 = xor i32 %210, %209
  %212 = xor i32 %206, %209
  %213 = add i32 %212, %211
  %214 = icmp eq i32 %213, 2
  %215 = zext i1 %214 to i8
  %216 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %215, i8* %216, align 1
  store %struct.Memory* %loadMem_467ac7, %struct.Memory** %MEMORY
  %loadMem_467aca = load %struct.Memory*, %struct.Memory** %MEMORY
  %217 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %218 = getelementptr inbounds %struct.GPR, %struct.GPR* %217, i32 0, i32 33
  %219 = getelementptr inbounds %struct.Reg, %struct.Reg* %218, i32 0, i32 0
  %PC.i400 = bitcast %union.anon* %219 to i64*
  %220 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %221 = getelementptr inbounds %struct.GPR, %struct.GPR* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.Reg, %struct.Reg* %221, i32 0, i32 0
  %EAX.i401 = bitcast %union.anon* %222 to i32*
  %223 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %224 = getelementptr inbounds %struct.GPR, %struct.GPR* %223, i32 0, i32 15
  %225 = getelementptr inbounds %struct.Reg, %struct.Reg* %224, i32 0, i32 0
  %RBP.i402 = bitcast %union.anon* %225 to i64*
  %226 = load i64, i64* %RBP.i402
  %227 = sub i64 %226, 32
  %228 = load i32, i32* %EAX.i401
  %229 = zext i32 %228 to i64
  %230 = load i64, i64* %PC.i400
  %231 = add i64 %230, 3
  store i64 %231, i64* %PC.i400
  %232 = inttoptr i64 %227 to i32*
  store i32 %228, i32* %232
  store %struct.Memory* %loadMem_467aca, %struct.Memory** %MEMORY
  %loadMem_467acd = load %struct.Memory*, %struct.Memory** %MEMORY
  %233 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %234 = getelementptr inbounds %struct.GPR, %struct.GPR* %233, i32 0, i32 33
  %235 = getelementptr inbounds %struct.Reg, %struct.Reg* %234, i32 0, i32 0
  %PC.i397 = bitcast %union.anon* %235 to i64*
  %236 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %237 = getelementptr inbounds %struct.GPR, %struct.GPR* %236, i32 0, i32 11
  %238 = getelementptr inbounds %struct.Reg, %struct.Reg* %237, i32 0, i32 0
  %RDI.i398 = bitcast %union.anon* %238 to i64*
  %239 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %240 = getelementptr inbounds %struct.GPR, %struct.GPR* %239, i32 0, i32 15
  %241 = getelementptr inbounds %struct.Reg, %struct.Reg* %240, i32 0, i32 0
  %RBP.i399 = bitcast %union.anon* %241 to i64*
  %242 = load i64, i64* %RBP.i399
  %243 = sub i64 %242, 4
  %244 = load i64, i64* %PC.i397
  %245 = add i64 %244, 3
  store i64 %245, i64* %PC.i397
  %246 = inttoptr i64 %243 to i32*
  %247 = load i32, i32* %246
  %248 = zext i32 %247 to i64
  store i64 %248, i64* %RDI.i398, align 8
  store %struct.Memory* %loadMem_467acd, %struct.Memory** %MEMORY
  %loadMem1_467ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %249 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %250 = getelementptr inbounds %struct.GPR, %struct.GPR* %249, i32 0, i32 33
  %251 = getelementptr inbounds %struct.Reg, %struct.Reg* %250, i32 0, i32 0
  %PC.i396 = bitcast %union.anon* %251 to i64*
  %252 = load i64, i64* %PC.i396
  %253 = add i64 %252, -361296
  %254 = load i64, i64* %PC.i396
  %255 = add i64 %254, 5
  %256 = load i64, i64* %PC.i396
  %257 = add i64 %256, 5
  store i64 %257, i64* %PC.i396
  %258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %259 = load i64, i64* %258, align 8
  %260 = add i64 %259, -8
  %261 = inttoptr i64 %260 to i64*
  store i64 %255, i64* %261
  store i64 %260, i64* %258, align 8
  %262 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %253, i64* %262, align 8
  store %struct.Memory* %loadMem1_467ad0, %struct.Memory** %MEMORY
  %loadMem2_467ad0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467ad0 = load i64, i64* %3
  %call2_467ad0 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_467ad0, %struct.Memory* %loadMem2_467ad0)
  store %struct.Memory* %call2_467ad0, %struct.Memory** %MEMORY
  %loadMem_467ad5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %263 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %264 = getelementptr inbounds %struct.GPR, %struct.GPR* %263, i32 0, i32 33
  %265 = getelementptr inbounds %struct.Reg, %struct.Reg* %264, i32 0, i32 0
  %PC.i393 = bitcast %union.anon* %265 to i64*
  %266 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %267 = getelementptr inbounds %struct.GPR, %struct.GPR* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.Reg, %struct.Reg* %267, i32 0, i32 0
  %EAX.i394 = bitcast %union.anon* %268 to i32*
  %269 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %270 = getelementptr inbounds %struct.GPR, %struct.GPR* %269, i32 0, i32 15
  %271 = getelementptr inbounds %struct.Reg, %struct.Reg* %270, i32 0, i32 0
  %RBP.i395 = bitcast %union.anon* %271 to i64*
  %272 = load i64, i64* %RBP.i395
  %273 = sub i64 %272, 52
  %274 = load i32, i32* %EAX.i394
  %275 = zext i32 %274 to i64
  %276 = load i64, i64* %PC.i393
  %277 = add i64 %276, 3
  store i64 %277, i64* %PC.i393
  %278 = inttoptr i64 %273 to i32*
  store i32 %274, i32* %278
  store %struct.Memory* %loadMem_467ad5, %struct.Memory** %MEMORY
  %loadMem_467ad8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %279 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %280 = getelementptr inbounds %struct.GPR, %struct.GPR* %279, i32 0, i32 33
  %281 = getelementptr inbounds %struct.Reg, %struct.Reg* %280, i32 0, i32 0
  %PC.i391 = bitcast %union.anon* %281 to i64*
  %282 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %283 = getelementptr inbounds %struct.GPR, %struct.GPR* %282, i32 0, i32 15
  %284 = getelementptr inbounds %struct.Reg, %struct.Reg* %283, i32 0, i32 0
  %RBP.i392 = bitcast %union.anon* %284 to i64*
  %285 = load i64, i64* %RBP.i392
  %286 = sub i64 %285, 52
  %287 = load i64, i64* %PC.i391
  %288 = add i64 %287, 4
  store i64 %288, i64* %PC.i391
  %289 = inttoptr i64 %286 to i32*
  %290 = load i32, i32* %289
  %291 = sub i32 %290, 4
  %292 = icmp ult i32 %290, 4
  %293 = zext i1 %292 to i8
  %294 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %293, i8* %294, align 1
  %295 = and i32 %291, 255
  %296 = call i32 @llvm.ctpop.i32(i32 %295)
  %297 = trunc i32 %296 to i8
  %298 = and i8 %297, 1
  %299 = xor i8 %298, 1
  %300 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %299, i8* %300, align 1
  %301 = xor i32 %290, 4
  %302 = xor i32 %301, %291
  %303 = lshr i32 %302, 4
  %304 = trunc i32 %303 to i8
  %305 = and i8 %304, 1
  %306 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %305, i8* %306, align 1
  %307 = icmp eq i32 %291, 0
  %308 = zext i1 %307 to i8
  %309 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %308, i8* %309, align 1
  %310 = lshr i32 %291, 31
  %311 = trunc i32 %310 to i8
  %312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %311, i8* %312, align 1
  %313 = lshr i32 %290, 31
  %314 = xor i32 %310, %313
  %315 = add i32 %314, %313
  %316 = icmp eq i32 %315, 2
  %317 = zext i1 %316 to i8
  %318 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %317, i8* %318, align 1
  store %struct.Memory* %loadMem_467ad8, %struct.Memory** %MEMORY
  %loadMem_467adc = load %struct.Memory*, %struct.Memory** %MEMORY
  %319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %320 = getelementptr inbounds %struct.GPR, %struct.GPR* %319, i32 0, i32 33
  %321 = getelementptr inbounds %struct.Reg, %struct.Reg* %320, i32 0, i32 0
  %PC.i390 = bitcast %union.anon* %321 to i64*
  %322 = load i64, i64* %PC.i390
  %323 = add i64 %322, 11
  %324 = load i64, i64* %PC.i390
  %325 = add i64 %324, 6
  %326 = load i64, i64* %PC.i390
  %327 = add i64 %326, 6
  store i64 %327, i64* %PC.i390
  %328 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %329 = load i8, i8* %328, align 1
  %330 = icmp eq i8 %329, 0
  %331 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %332 = load i8, i8* %331, align 1
  %333 = icmp ne i8 %332, 0
  %334 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %335 = load i8, i8* %334, align 1
  %336 = icmp ne i8 %335, 0
  %337 = xor i1 %333, %336
  %338 = xor i1 %337, true
  %339 = and i1 %330, %338
  %340 = zext i1 %339 to i8
  store i8 %340, i8* %BRANCH_TAKEN, align 1
  %341 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %342 = select i1 %339, i64 %323, i64 %325
  store i64 %342, i64* %341, align 8
  store %struct.Memory* %loadMem_467adc, %struct.Memory** %MEMORY
  %loadBr_467adc = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467adc = icmp eq i8 %loadBr_467adc, 1
  br i1 %cmpBr_467adc, label %block_.L_467ae7, label %block_467ae2

block_467ae2:                                     ; preds = %entry
  %loadMem_467ae2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %343 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %344 = getelementptr inbounds %struct.GPR, %struct.GPR* %343, i32 0, i32 33
  %345 = getelementptr inbounds %struct.Reg, %struct.Reg* %344, i32 0, i32 0
  %PC.i389 = bitcast %union.anon* %345 to i64*
  %346 = load i64, i64* %PC.i389
  %347 = add i64 %346, 94
  %348 = load i64, i64* %PC.i389
  %349 = add i64 %348, 5
  store i64 %349, i64* %PC.i389
  %350 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %347, i64* %350, align 8
  store %struct.Memory* %loadMem_467ae2, %struct.Memory** %MEMORY
  br label %block_.L_467b40

block_.L_467ae7:                                  ; preds = %entry
  %loadMem_467ae7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %352 = getelementptr inbounds %struct.GPR, %struct.GPR* %351, i32 0, i32 33
  %353 = getelementptr inbounds %struct.Reg, %struct.Reg* %352, i32 0, i32 0
  %PC.i387 = bitcast %union.anon* %353 to i64*
  %354 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %355 = getelementptr inbounds %struct.GPR, %struct.GPR* %354, i32 0, i32 11
  %356 = getelementptr inbounds %struct.Reg, %struct.Reg* %355, i32 0, i32 0
  %RDI.i388 = bitcast %union.anon* %356 to i64*
  %357 = load i64, i64* %PC.i387
  %358 = add i64 %357, 10
  store i64 %358, i64* %PC.i387
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI.i388, align 8
  store %struct.Memory* %loadMem_467ae7, %struct.Memory** %MEMORY
  %loadMem_467af1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %359 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %360 = getelementptr inbounds %struct.GPR, %struct.GPR* %359, i32 0, i32 33
  %361 = getelementptr inbounds %struct.Reg, %struct.Reg* %360, i32 0, i32 0
  %PC.i385 = bitcast %union.anon* %361 to i64*
  %362 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %363 = getelementptr inbounds %struct.GPR, %struct.GPR* %362, i32 0, i32 9
  %364 = getelementptr inbounds %struct.Reg, %struct.Reg* %363, i32 0, i32 0
  %RSI.i386 = bitcast %union.anon* %364 to i64*
  %365 = load i64, i64* %PC.i385
  %366 = add i64 %365, 5
  store i64 %366, i64* %PC.i385
  store i64 1865, i64* %RSI.i386, align 8
  store %struct.Memory* %loadMem_467af1, %struct.Memory** %MEMORY
  %loadMem_467af6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %367 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %368 = getelementptr inbounds %struct.GPR, %struct.GPR* %367, i32 0, i32 33
  %369 = getelementptr inbounds %struct.Reg, %struct.Reg* %368, i32 0, i32 0
  %PC.i383 = bitcast %union.anon* %369 to i64*
  %370 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %371 = getelementptr inbounds %struct.GPR, %struct.GPR* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.Reg, %struct.Reg* %371, i32 0, i32 0
  %RDX.i384 = bitcast %union.anon* %372 to i64*
  %373 = load i64, i64* %PC.i383
  %374 = add i64 %373, 10
  store i64 %374, i64* %PC.i383
  store i64 ptrtoint (%G__0x57fd19_type* @G__0x57fd19 to i64), i64* %RDX.i384, align 8
  store %struct.Memory* %loadMem_467af6, %struct.Memory** %MEMORY
  %loadMem_467b00 = load %struct.Memory*, %struct.Memory** %MEMORY
  %375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %376 = getelementptr inbounds %struct.GPR, %struct.GPR* %375, i32 0, i32 33
  %377 = getelementptr inbounds %struct.Reg, %struct.Reg* %376, i32 0, i32 0
  %PC.i381 = bitcast %union.anon* %377 to i64*
  %378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %379 = getelementptr inbounds %struct.GPR, %struct.GPR* %378, i32 0, i32 1
  %380 = getelementptr inbounds %struct.Reg, %struct.Reg* %379, i32 0, i32 0
  %RAX.i382 = bitcast %union.anon* %380 to i64*
  %381 = load i64, i64* %PC.i381
  %382 = add i64 %381, 5
  store i64 %382, i64* %PC.i381
  store i64 20, i64* %RAX.i382, align 8
  store %struct.Memory* %loadMem_467b00, %struct.Memory** %MEMORY
  %loadMem_467b05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %383 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %384 = getelementptr inbounds %struct.GPR, %struct.GPR* %383, i32 0, i32 33
  %385 = getelementptr inbounds %struct.Reg, %struct.Reg* %384, i32 0, i32 0
  %PC.i378 = bitcast %union.anon* %385 to i64*
  %386 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %387 = getelementptr inbounds %struct.GPR, %struct.GPR* %386, i32 0, i32 5
  %388 = getelementptr inbounds %struct.Reg, %struct.Reg* %387, i32 0, i32 0
  %RCX.i379 = bitcast %union.anon* %388 to i64*
  %389 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %390 = getelementptr inbounds %struct.GPR, %struct.GPR* %389, i32 0, i32 15
  %391 = getelementptr inbounds %struct.Reg, %struct.Reg* %390, i32 0, i32 0
  %RBP.i380 = bitcast %union.anon* %391 to i64*
  %392 = load i64, i64* %RBP.i380
  %393 = sub i64 %392, 4
  %394 = load i64, i64* %PC.i378
  %395 = add i64 %394, 3
  store i64 %395, i64* %PC.i378
  %396 = inttoptr i64 %393 to i32*
  %397 = load i32, i32* %396
  %398 = zext i32 %397 to i64
  store i64 %398, i64* %RCX.i379, align 8
  store %struct.Memory* %loadMem_467b05, %struct.Memory** %MEMORY
  %loadMem_467b08 = load %struct.Memory*, %struct.Memory** %MEMORY
  %399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %400 = getelementptr inbounds %struct.GPR, %struct.GPR* %399, i32 0, i32 33
  %401 = getelementptr inbounds %struct.Reg, %struct.Reg* %400, i32 0, i32 0
  %PC.i375 = bitcast %union.anon* %401 to i64*
  %402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %403 = getelementptr inbounds %struct.GPR, %struct.GPR* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.Reg, %struct.Reg* %403, i32 0, i32 0
  %EAX.i376 = bitcast %union.anon* %404 to i32*
  %405 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %406 = getelementptr inbounds %struct.GPR, %struct.GPR* %405, i32 0, i32 15
  %407 = getelementptr inbounds %struct.Reg, %struct.Reg* %406, i32 0, i32 0
  %RBP.i377 = bitcast %union.anon* %407 to i64*
  %408 = load i64, i64* %RBP.i377
  %409 = sub i64 %408, 80
  %410 = load i32, i32* %EAX.i376
  %411 = zext i32 %410 to i64
  %412 = load i64, i64* %PC.i375
  %413 = add i64 %412, 3
  store i64 %413, i64* %PC.i375
  %414 = inttoptr i64 %409 to i32*
  store i32 %410, i32* %414
  store %struct.Memory* %loadMem_467b08, %struct.Memory** %MEMORY
  %loadMem_467b0b = load %struct.Memory*, %struct.Memory** %MEMORY
  %415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %416 = getelementptr inbounds %struct.GPR, %struct.GPR* %415, i32 0, i32 33
  %417 = getelementptr inbounds %struct.Reg, %struct.Reg* %416, i32 0, i32 0
  %PC.i372 = bitcast %union.anon* %417 to i64*
  %418 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %419 = getelementptr inbounds %struct.GPR, %struct.GPR* %418, i32 0, i32 5
  %420 = getelementptr inbounds %struct.Reg, %struct.Reg* %419, i32 0, i32 0
  %ECX.i373 = bitcast %union.anon* %420 to i32*
  %421 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %422 = getelementptr inbounds %struct.GPR, %struct.GPR* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.Reg, %struct.Reg* %422, i32 0, i32 0
  %RAX.i374 = bitcast %union.anon* %423 to i64*
  %424 = load i32, i32* %ECX.i373
  %425 = zext i32 %424 to i64
  %426 = load i64, i64* %PC.i372
  %427 = add i64 %426, 2
  store i64 %427, i64* %PC.i372
  %428 = and i64 %425, 4294967295
  store i64 %428, i64* %RAX.i374, align 8
  store %struct.Memory* %loadMem_467b0b, %struct.Memory** %MEMORY
  %loadMem_467b0d = load %struct.Memory*, %struct.Memory** %MEMORY
  %429 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %430 = getelementptr inbounds %struct.GPR, %struct.GPR* %429, i32 0, i32 33
  %431 = getelementptr inbounds %struct.Reg, %struct.Reg* %430, i32 0, i32 0
  %PC.i369 = bitcast %union.anon* %431 to i64*
  %432 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %433 = getelementptr inbounds %struct.GPR, %struct.GPR* %432, i32 0, i32 7
  %434 = getelementptr inbounds %struct.Reg, %struct.Reg* %433, i32 0, i32 0
  %RDX.i370 = bitcast %union.anon* %434 to i64*
  %435 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %436 = getelementptr inbounds %struct.GPR, %struct.GPR* %435, i32 0, i32 15
  %437 = getelementptr inbounds %struct.Reg, %struct.Reg* %436, i32 0, i32 0
  %RBP.i371 = bitcast %union.anon* %437 to i64*
  %438 = load i64, i64* %RBP.i371
  %439 = sub i64 %438, 88
  %440 = load i64, i64* %RDX.i370
  %441 = load i64, i64* %PC.i369
  %442 = add i64 %441, 4
  store i64 %442, i64* %PC.i369
  %443 = inttoptr i64 %439 to i64*
  store i64 %440, i64* %443
  store %struct.Memory* %loadMem_467b0d, %struct.Memory** %MEMORY
  %loadMem_467b11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %444 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %445 = getelementptr inbounds %struct.GPR, %struct.GPR* %444, i32 0, i32 33
  %446 = getelementptr inbounds %struct.Reg, %struct.Reg* %445, i32 0, i32 0
  %PC.i368 = bitcast %union.anon* %446 to i64*
  %447 = load i64, i64* %PC.i368
  %448 = add i64 %447, 1
  store i64 %448, i64* %PC.i368
  %449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %450 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %451 = bitcast %union.anon* %450 to i32*
  %452 = load i32, i32* %451, align 8
  %453 = sext i32 %452 to i64
  %454 = lshr i64 %453, 32
  store i64 %454, i64* %449, align 8
  store %struct.Memory* %loadMem_467b11, %struct.Memory** %MEMORY
  %loadMem_467b12 = load %struct.Memory*, %struct.Memory** %MEMORY
  %455 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %456 = getelementptr inbounds %struct.GPR, %struct.GPR* %455, i32 0, i32 33
  %457 = getelementptr inbounds %struct.Reg, %struct.Reg* %456, i32 0, i32 0
  %PC.i365 = bitcast %union.anon* %457 to i64*
  %458 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %459 = getelementptr inbounds %struct.GPR, %struct.GPR* %458, i32 0, i32 5
  %460 = getelementptr inbounds %struct.Reg, %struct.Reg* %459, i32 0, i32 0
  %RCX.i366 = bitcast %union.anon* %460 to i64*
  %461 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %462 = getelementptr inbounds %struct.GPR, %struct.GPR* %461, i32 0, i32 15
  %463 = getelementptr inbounds %struct.Reg, %struct.Reg* %462, i32 0, i32 0
  %RBP.i367 = bitcast %union.anon* %463 to i64*
  %464 = load i64, i64* %RBP.i367
  %465 = sub i64 %464, 80
  %466 = load i64, i64* %PC.i365
  %467 = add i64 %466, 3
  store i64 %467, i64* %PC.i365
  %468 = inttoptr i64 %465 to i32*
  %469 = load i32, i32* %468
  %470 = zext i32 %469 to i64
  store i64 %470, i64* %RCX.i366, align 8
  store %struct.Memory* %loadMem_467b12, %struct.Memory** %MEMORY
  %loadMem_467b15 = load %struct.Memory*, %struct.Memory** %MEMORY
  %471 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %472 = getelementptr inbounds %struct.GPR, %struct.GPR* %471, i32 0, i32 33
  %473 = getelementptr inbounds %struct.Reg, %struct.Reg* %472, i32 0, i32 0
  %PC.i360 = bitcast %union.anon* %473 to i64*
  %474 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %475 = getelementptr inbounds %struct.GPR, %struct.GPR* %474, i32 0, i32 5
  %476 = getelementptr inbounds %struct.Reg, %struct.Reg* %475, i32 0, i32 0
  %ECX.i361 = bitcast %union.anon* %476 to i32*
  %477 = load i32, i32* %ECX.i361
  %478 = zext i32 %477 to i64
  %479 = load i64, i64* %PC.i360
  %480 = add i64 %479, 2
  store i64 %480, i64* %PC.i360
  %481 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %482 = bitcast %union.anon* %481 to i32*
  %483 = load i32, i32* %482, align 8
  %484 = zext i32 %483 to i64
  %485 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %486 = bitcast %union.anon* %485 to i32*
  %487 = load i32, i32* %486, align 8
  %488 = zext i32 %487 to i64
  %489 = shl i64 %478, 32
  %490 = ashr exact i64 %489, 32
  %491 = shl i64 %488, 32
  %492 = or i64 %491, %484
  %493 = sdiv i64 %492, %490
  %494 = shl i64 %493, 32
  %495 = ashr exact i64 %494, 32
  %496 = icmp eq i64 %493, %495
  br i1 %496, label %501, label %497

; <label>:497:                                    ; preds = %block_.L_467ae7
  %498 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %499, %struct.Memory* %loadMem_467b15)
  br label %routine_idivl__ecx.exit362

; <label>:501:                                    ; preds = %block_.L_467ae7
  %502 = srem i64 %492, %490
  %503 = getelementptr inbounds %union.anon, %union.anon* %481, i64 0, i32 0
  %504 = and i64 %493, 4294967295
  store i64 %504, i64* %503, align 8
  %505 = getelementptr inbounds %union.anon, %union.anon* %485, i64 0, i32 0
  %506 = and i64 %502, 4294967295
  store i64 %506, i64* %505, align 8
  %507 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %507, align 1
  %508 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %508, align 1
  %509 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %509, align 1
  %510 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %510, align 1
  %511 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %511, align 1
  %512 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %512, align 1
  br label %routine_idivl__ecx.exit362

routine_idivl__ecx.exit362:                       ; preds = %497, %501
  %513 = phi %struct.Memory* [ %500, %497 ], [ %loadMem_467b15, %501 ]
  store %struct.Memory* %513, %struct.Memory** %MEMORY
  %loadMem_467b17 = load %struct.Memory*, %struct.Memory** %MEMORY
  %514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %515 = getelementptr inbounds %struct.GPR, %struct.GPR* %514, i32 0, i32 33
  %516 = getelementptr inbounds %struct.Reg, %struct.Reg* %515, i32 0, i32 0
  %PC.i358 = bitcast %union.anon* %516 to i64*
  %517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %518 = getelementptr inbounds %struct.GPR, %struct.GPR* %517, i32 0, i32 1
  %519 = getelementptr inbounds %struct.Reg, %struct.Reg* %518, i32 0, i32 0
  %RAX.i359 = bitcast %union.anon* %519 to i64*
  %520 = load i64, i64* %RAX.i359
  %521 = load i64, i64* %PC.i358
  %522 = add i64 %521, 3
  store i64 %522, i64* %PC.i358
  %523 = trunc i64 %520 to i32
  %524 = sub i32 %523, 1
  %525 = zext i32 %524 to i64
  store i64 %525, i64* %RAX.i359, align 8
  %526 = icmp ult i32 %523, 1
  %527 = zext i1 %526 to i8
  %528 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %527, i8* %528, align 1
  %529 = and i32 %524, 255
  %530 = call i32 @llvm.ctpop.i32(i32 %529)
  %531 = trunc i32 %530 to i8
  %532 = and i8 %531, 1
  %533 = xor i8 %532, 1
  %534 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %533, i8* %534, align 1
  %535 = xor i64 1, %520
  %536 = trunc i64 %535 to i32
  %537 = xor i32 %536, %524
  %538 = lshr i32 %537, 4
  %539 = trunc i32 %538 to i8
  %540 = and i8 %539, 1
  %541 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %540, i8* %541, align 1
  %542 = icmp eq i32 %524, 0
  %543 = zext i1 %542 to i8
  %544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %543, i8* %544, align 1
  %545 = lshr i32 %524, 31
  %546 = trunc i32 %545 to i8
  %547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %546, i8* %547, align 1
  %548 = lshr i32 %523, 31
  %549 = xor i32 %545, %548
  %550 = add i32 %549, %548
  %551 = icmp eq i32 %550, 2
  %552 = zext i1 %551 to i8
  %553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %552, i8* %553, align 1
  store %struct.Memory* %loadMem_467b17, %struct.Memory** %MEMORY
  %loadMem_467b1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %555 = getelementptr inbounds %struct.GPR, %struct.GPR* %554, i32 0, i32 33
  %556 = getelementptr inbounds %struct.Reg, %struct.Reg* %555, i32 0, i32 0
  %PC.i355 = bitcast %union.anon* %556 to i64*
  %557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %558 = getelementptr inbounds %struct.GPR, %struct.GPR* %557, i32 0, i32 17
  %559 = getelementptr inbounds %struct.Reg, %struct.Reg* %558, i32 0, i32 0
  %R8D.i356 = bitcast %union.anon* %559 to i32*
  %560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %561 = getelementptr inbounds %struct.GPR, %struct.GPR* %560, i32 0, i32 15
  %562 = getelementptr inbounds %struct.Reg, %struct.Reg* %561, i32 0, i32 0
  %RBP.i357 = bitcast %union.anon* %562 to i64*
  %563 = bitcast i32* %R8D.i356 to i64*
  %564 = load i64, i64* %RBP.i357
  %565 = sub i64 %564, 4
  %566 = load i64, i64* %PC.i355
  %567 = add i64 %566, 4
  store i64 %567, i64* %PC.i355
  %568 = inttoptr i64 %565 to i32*
  %569 = load i32, i32* %568
  %570 = zext i32 %569 to i64
  store i64 %570, i64* %563, align 8
  store %struct.Memory* %loadMem_467b1a, %struct.Memory** %MEMORY
  %loadMem_467b1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %571 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %572 = getelementptr inbounds %struct.GPR, %struct.GPR* %571, i32 0, i32 33
  %573 = getelementptr inbounds %struct.Reg, %struct.Reg* %572, i32 0, i32 0
  %PC.i352 = bitcast %union.anon* %573 to i64*
  %574 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %575 = getelementptr inbounds %struct.GPR, %struct.GPR* %574, i32 0, i32 1
  %576 = getelementptr inbounds %struct.Reg, %struct.Reg* %575, i32 0, i32 0
  %EAX.i353 = bitcast %union.anon* %576 to i32*
  %577 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %578 = getelementptr inbounds %struct.GPR, %struct.GPR* %577, i32 0, i32 15
  %579 = getelementptr inbounds %struct.Reg, %struct.Reg* %578, i32 0, i32 0
  %RBP.i354 = bitcast %union.anon* %579 to i64*
  %580 = load i64, i64* %RBP.i354
  %581 = sub i64 %580, 92
  %582 = load i32, i32* %EAX.i353
  %583 = zext i32 %582 to i64
  %584 = load i64, i64* %PC.i352
  %585 = add i64 %584, 3
  store i64 %585, i64* %PC.i352
  %586 = inttoptr i64 %581 to i32*
  store i32 %582, i32* %586
  store %struct.Memory* %loadMem_467b1e, %struct.Memory** %MEMORY
  %loadMem_467b21 = load %struct.Memory*, %struct.Memory** %MEMORY
  %587 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %588 = getelementptr inbounds %struct.GPR, %struct.GPR* %587, i32 0, i32 33
  %589 = getelementptr inbounds %struct.Reg, %struct.Reg* %588, i32 0, i32 0
  %PC.i349 = bitcast %union.anon* %589 to i64*
  %590 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %591 = getelementptr inbounds %struct.GPR, %struct.GPR* %590, i32 0, i32 17
  %592 = getelementptr inbounds %struct.Reg, %struct.Reg* %591, i32 0, i32 0
  %R8D.i350 = bitcast %union.anon* %592 to i32*
  %593 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %594 = getelementptr inbounds %struct.GPR, %struct.GPR* %593, i32 0, i32 1
  %595 = getelementptr inbounds %struct.Reg, %struct.Reg* %594, i32 0, i32 0
  %RAX.i351 = bitcast %union.anon* %595 to i64*
  %596 = load i32, i32* %R8D.i350
  %597 = zext i32 %596 to i64
  %598 = load i64, i64* %PC.i349
  %599 = add i64 %598, 3
  store i64 %599, i64* %PC.i349
  %600 = and i64 %597, 4294967295
  store i64 %600, i64* %RAX.i351, align 8
  store %struct.Memory* %loadMem_467b21, %struct.Memory** %MEMORY
  %loadMem_467b24 = load %struct.Memory*, %struct.Memory** %MEMORY
  %601 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %602 = getelementptr inbounds %struct.GPR, %struct.GPR* %601, i32 0, i32 33
  %603 = getelementptr inbounds %struct.Reg, %struct.Reg* %602, i32 0, i32 0
  %PC.i348 = bitcast %union.anon* %603 to i64*
  %604 = load i64, i64* %PC.i348
  %605 = add i64 %604, 1
  store i64 %605, i64* %PC.i348
  %606 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %607 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %608 = bitcast %union.anon* %607 to i32*
  %609 = load i32, i32* %608, align 8
  %610 = sext i32 %609 to i64
  %611 = lshr i64 %610, 32
  store i64 %611, i64* %606, align 8
  store %struct.Memory* %loadMem_467b24, %struct.Memory** %MEMORY
  %loadMem_467b25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %612 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %613 = getelementptr inbounds %struct.GPR, %struct.GPR* %612, i32 0, i32 33
  %614 = getelementptr inbounds %struct.Reg, %struct.Reg* %613, i32 0, i32 0
  %PC.i343 = bitcast %union.anon* %614 to i64*
  %615 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %616 = getelementptr inbounds %struct.GPR, %struct.GPR* %615, i32 0, i32 5
  %617 = getelementptr inbounds %struct.Reg, %struct.Reg* %616, i32 0, i32 0
  %ECX.i344 = bitcast %union.anon* %617 to i32*
  %618 = load i32, i32* %ECX.i344
  %619 = zext i32 %618 to i64
  %620 = load i64, i64* %PC.i343
  %621 = add i64 %620, 2
  store i64 %621, i64* %PC.i343
  %622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %623 = bitcast %union.anon* %622 to i32*
  %624 = load i32, i32* %623, align 8
  %625 = zext i32 %624 to i64
  %626 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %627 = bitcast %union.anon* %626 to i32*
  %628 = load i32, i32* %627, align 8
  %629 = zext i32 %628 to i64
  %630 = shl i64 %619, 32
  %631 = ashr exact i64 %630, 32
  %632 = shl i64 %629, 32
  %633 = or i64 %632, %625
  %634 = sdiv i64 %633, %631
  %635 = shl i64 %634, 32
  %636 = ashr exact i64 %635, 32
  %637 = icmp eq i64 %634, %636
  br i1 %637, label %642, label %638

; <label>:638:                                    ; preds = %routine_idivl__ecx.exit362
  %639 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %640 = load i64, i64* %639, align 8
  %641 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %640, %struct.Memory* %loadMem_467b25)
  br label %routine_idivl__ecx.exit345

; <label>:642:                                    ; preds = %routine_idivl__ecx.exit362
  %643 = srem i64 %633, %631
  %644 = getelementptr inbounds %union.anon, %union.anon* %622, i64 0, i32 0
  %645 = and i64 %634, 4294967295
  store i64 %645, i64* %644, align 8
  %646 = getelementptr inbounds %union.anon, %union.anon* %626, i64 0, i32 0
  %647 = and i64 %643, 4294967295
  store i64 %647, i64* %646, align 8
  %648 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %648, align 1
  %649 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %649, align 1
  %650 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %650, align 1
  %651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %651, align 1
  %652 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %652, align 1
  %653 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %653, align 1
  br label %routine_idivl__ecx.exit345

routine_idivl__ecx.exit345:                       ; preds = %638, %642
  %654 = phi %struct.Memory* [ %641, %638 ], [ %loadMem_467b25, %642 ]
  store %struct.Memory* %654, %struct.Memory** %MEMORY
  %loadMem_467b27 = load %struct.Memory*, %struct.Memory** %MEMORY
  %655 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %656 = getelementptr inbounds %struct.GPR, %struct.GPR* %655, i32 0, i32 33
  %657 = getelementptr inbounds %struct.Reg, %struct.Reg* %656, i32 0, i32 0
  %PC.i341 = bitcast %union.anon* %657 to i64*
  %658 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %659 = getelementptr inbounds %struct.GPR, %struct.GPR* %658, i32 0, i32 7
  %660 = getelementptr inbounds %struct.Reg, %struct.Reg* %659, i32 0, i32 0
  %RDX.i342 = bitcast %union.anon* %660 to i64*
  %661 = load i64, i64* %RDX.i342
  %662 = load i64, i64* %PC.i341
  %663 = add i64 %662, 3
  store i64 %663, i64* %PC.i341
  %664 = trunc i64 %661 to i32
  %665 = sub i32 %664, 1
  %666 = zext i32 %665 to i64
  store i64 %666, i64* %RDX.i342, align 8
  %667 = icmp ult i32 %664, 1
  %668 = zext i1 %667 to i8
  %669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %668, i8* %669, align 1
  %670 = and i32 %665, 255
  %671 = call i32 @llvm.ctpop.i32(i32 %670)
  %672 = trunc i32 %671 to i8
  %673 = and i8 %672, 1
  %674 = xor i8 %673, 1
  %675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %674, i8* %675, align 1
  %676 = xor i64 1, %661
  %677 = trunc i64 %676 to i32
  %678 = xor i32 %677, %665
  %679 = lshr i32 %678, 4
  %680 = trunc i32 %679 to i8
  %681 = and i8 %680, 1
  %682 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %681, i8* %682, align 1
  %683 = icmp eq i32 %665, 0
  %684 = zext i1 %683 to i8
  %685 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %684, i8* %685, align 1
  %686 = lshr i32 %665, 31
  %687 = trunc i32 %686 to i8
  %688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %687, i8* %688, align 1
  %689 = lshr i32 %664, 31
  %690 = xor i32 %686, %689
  %691 = add i32 %690, %689
  %692 = icmp eq i32 %691, 2
  %693 = zext i1 %692 to i8
  %694 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %693, i8* %694, align 1
  store %struct.Memory* %loadMem_467b27, %struct.Memory** %MEMORY
  %loadMem_467b2a = load %struct.Memory*, %struct.Memory** %MEMORY
  %695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %696 = getelementptr inbounds %struct.GPR, %struct.GPR* %695, i32 0, i32 33
  %697 = getelementptr inbounds %struct.Reg, %struct.Reg* %696, i32 0, i32 0
  %PC.i338 = bitcast %union.anon* %697 to i64*
  %698 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %699 = getelementptr inbounds %struct.GPR, %struct.GPR* %698, i32 0, i32 15
  %700 = getelementptr inbounds %struct.Reg, %struct.Reg* %699, i32 0, i32 0
  %RBP.i339 = bitcast %union.anon* %700 to i64*
  %701 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %702 = getelementptr inbounds %struct.GPR, %struct.GPR* %701, i32 0, i32 19
  %703 = getelementptr inbounds %struct.Reg, %struct.Reg* %702, i32 0, i32 0
  %R9.i340 = bitcast %union.anon* %703 to i64*
  %704 = load i64, i64* %RBP.i339
  %705 = sub i64 %704, 88
  %706 = load i64, i64* %PC.i338
  %707 = add i64 %706, 4
  store i64 %707, i64* %PC.i338
  %708 = inttoptr i64 %705 to i64*
  %709 = load i64, i64* %708
  store i64 %709, i64* %R9.i340, align 8
  store %struct.Memory* %loadMem_467b2a, %struct.Memory** %MEMORY
  %loadMem_467b2e = load %struct.Memory*, %struct.Memory** %MEMORY
  %710 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %711 = getelementptr inbounds %struct.GPR, %struct.GPR* %710, i32 0, i32 33
  %712 = getelementptr inbounds %struct.Reg, %struct.Reg* %711, i32 0, i32 0
  %PC.i335 = bitcast %union.anon* %712 to i64*
  %713 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %714 = getelementptr inbounds %struct.GPR, %struct.GPR* %713, i32 0, i32 7
  %715 = getelementptr inbounds %struct.Reg, %struct.Reg* %714, i32 0, i32 0
  %EDX.i336 = bitcast %union.anon* %715 to i32*
  %716 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %717 = getelementptr inbounds %struct.GPR, %struct.GPR* %716, i32 0, i32 15
  %718 = getelementptr inbounds %struct.Reg, %struct.Reg* %717, i32 0, i32 0
  %RBP.i337 = bitcast %union.anon* %718 to i64*
  %719 = load i64, i64* %RBP.i337
  %720 = sub i64 %719, 96
  %721 = load i32, i32* %EDX.i336
  %722 = zext i32 %721 to i64
  %723 = load i64, i64* %PC.i335
  %724 = add i64 %723, 3
  store i64 %724, i64* %PC.i335
  %725 = inttoptr i64 %720 to i32*
  store i32 %721, i32* %725
  store %struct.Memory* %loadMem_467b2e, %struct.Memory** %MEMORY
  %loadMem_467b31 = load %struct.Memory*, %struct.Memory** %MEMORY
  %726 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %727 = getelementptr inbounds %struct.GPR, %struct.GPR* %726, i32 0, i32 33
  %728 = getelementptr inbounds %struct.Reg, %struct.Reg* %727, i32 0, i32 0
  %PC.i333 = bitcast %union.anon* %728 to i64*
  %729 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %730 = getelementptr inbounds %struct.GPR, %struct.GPR* %729, i32 0, i32 7
  %731 = getelementptr inbounds %struct.Reg, %struct.Reg* %730, i32 0, i32 0
  %RDX.i334 = bitcast %union.anon* %731 to i64*
  %732 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %733 = getelementptr inbounds %struct.GPR, %struct.GPR* %732, i32 0, i32 19
  %734 = getelementptr inbounds %struct.Reg, %struct.Reg* %733, i32 0, i32 0
  %R9.i = bitcast %union.anon* %734 to i64*
  %735 = load i64, i64* %R9.i
  %736 = load i64, i64* %PC.i333
  %737 = add i64 %736, 3
  store i64 %737, i64* %PC.i333
  store i64 %735, i64* %RDX.i334, align 8
  store %struct.Memory* %loadMem_467b31, %struct.Memory** %MEMORY
  %loadMem_467b34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %738 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %739 = getelementptr inbounds %struct.GPR, %struct.GPR* %738, i32 0, i32 33
  %740 = getelementptr inbounds %struct.Reg, %struct.Reg* %739, i32 0, i32 0
  %PC.i330 = bitcast %union.anon* %740 to i64*
  %741 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %742 = getelementptr inbounds %struct.GPR, %struct.GPR* %741, i32 0, i32 5
  %743 = getelementptr inbounds %struct.Reg, %struct.Reg* %742, i32 0, i32 0
  %RCX.i331 = bitcast %union.anon* %743 to i64*
  %744 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %745 = getelementptr inbounds %struct.GPR, %struct.GPR* %744, i32 0, i32 15
  %746 = getelementptr inbounds %struct.Reg, %struct.Reg* %745, i32 0, i32 0
  %RBP.i332 = bitcast %union.anon* %746 to i64*
  %747 = load i64, i64* %RBP.i332
  %748 = sub i64 %747, 92
  %749 = load i64, i64* %PC.i330
  %750 = add i64 %749, 3
  store i64 %750, i64* %PC.i330
  %751 = inttoptr i64 %748 to i32*
  %752 = load i32, i32* %751
  %753 = zext i32 %752 to i64
  store i64 %753, i64* %RCX.i331, align 8
  store %struct.Memory* %loadMem_467b34, %struct.Memory** %MEMORY
  %loadMem_467b37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %754 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %755 = getelementptr inbounds %struct.GPR, %struct.GPR* %754, i32 0, i32 33
  %756 = getelementptr inbounds %struct.Reg, %struct.Reg* %755, i32 0, i32 0
  %PC.i328 = bitcast %union.anon* %756 to i64*
  %757 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %758 = getelementptr inbounds %struct.GPR, %struct.GPR* %757, i32 0, i32 17
  %759 = getelementptr inbounds %struct.Reg, %struct.Reg* %758, i32 0, i32 0
  %R8D.i = bitcast %union.anon* %759 to i32*
  %760 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %761 = getelementptr inbounds %struct.GPR, %struct.GPR* %760, i32 0, i32 15
  %762 = getelementptr inbounds %struct.Reg, %struct.Reg* %761, i32 0, i32 0
  %RBP.i329 = bitcast %union.anon* %762 to i64*
  %763 = bitcast i32* %R8D.i to i64*
  %764 = load i64, i64* %RBP.i329
  %765 = sub i64 %764, 96
  %766 = load i64, i64* %PC.i328
  %767 = add i64 %766, 4
  store i64 %767, i64* %PC.i328
  %768 = inttoptr i64 %765 to i32*
  %769 = load i32, i32* %768
  %770 = zext i32 %769 to i64
  store i64 %770, i64* %763, align 8
  store %struct.Memory* %loadMem_467b37, %struct.Memory** %MEMORY
  %loadMem1_467b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %771 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %772 = getelementptr inbounds %struct.GPR, %struct.GPR* %771, i32 0, i32 33
  %773 = getelementptr inbounds %struct.Reg, %struct.Reg* %772, i32 0, i32 0
  %PC.i327 = bitcast %union.anon* %773 to i64*
  %774 = load i64, i64* %PC.i327
  %775 = add i64 %774, -88747
  %776 = load i64, i64* %PC.i327
  %777 = add i64 %776, 5
  %778 = load i64, i64* %PC.i327
  %779 = add i64 %778, 5
  store i64 %779, i64* %PC.i327
  %780 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %781 = load i64, i64* %780, align 8
  %782 = add i64 %781, -8
  %783 = inttoptr i64 %782 to i64*
  store i64 %777, i64* %783
  store i64 %782, i64* %780, align 8
  %784 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %775, i64* %784, align 8
  store %struct.Memory* %loadMem1_467b3b, %struct.Memory** %MEMORY
  %loadMem2_467b3b = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467b3b = load i64, i64* %3
  %call2_467b3b = call %struct.Memory* @sub_452090.abortgo(%struct.State* %0, i64 %loadPC_467b3b, %struct.Memory* %loadMem2_467b3b)
  store %struct.Memory* %call2_467b3b, %struct.Memory** %MEMORY
  br label %block_.L_467b40

block_.L_467b40:                                  ; preds = %routine_idivl__ecx.exit345, %block_467ae2
  %loadMem_467b40 = load %struct.Memory*, %struct.Memory** %MEMORY
  %785 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %786 = getelementptr inbounds %struct.GPR, %struct.GPR* %785, i32 0, i32 33
  %787 = getelementptr inbounds %struct.Reg, %struct.Reg* %786, i32 0, i32 0
  %PC.i325 = bitcast %union.anon* %787 to i64*
  %788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %789 = getelementptr inbounds %struct.GPR, %struct.GPR* %788, i32 0, i32 15
  %790 = getelementptr inbounds %struct.Reg, %struct.Reg* %789, i32 0, i32 0
  %RBP.i326 = bitcast %union.anon* %790 to i64*
  %791 = load i64, i64* %RBP.i326
  %792 = sub i64 %791, 64
  %793 = load i64, i64* %PC.i325
  %794 = add i64 %793, 7
  store i64 %794, i64* %PC.i325
  %795 = inttoptr i64 %792 to i32*
  store i32 0, i32* %795
  store %struct.Memory* %loadMem_467b40, %struct.Memory** %MEMORY
  br label %block_.L_467b47

block_.L_467b47:                                  ; preds = %block_.L_467d7b, %block_.L_467b40
  %loadMem_467b47 = load %struct.Memory*, %struct.Memory** %MEMORY
  %796 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %797 = getelementptr inbounds %struct.GPR, %struct.GPR* %796, i32 0, i32 33
  %798 = getelementptr inbounds %struct.Reg, %struct.Reg* %797, i32 0, i32 0
  %PC.i322 = bitcast %union.anon* %798 to i64*
  %799 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %800 = getelementptr inbounds %struct.GPR, %struct.GPR* %799, i32 0, i32 1
  %801 = getelementptr inbounds %struct.Reg, %struct.Reg* %800, i32 0, i32 0
  %RAX.i323 = bitcast %union.anon* %801 to i64*
  %802 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %803 = getelementptr inbounds %struct.GPR, %struct.GPR* %802, i32 0, i32 15
  %804 = getelementptr inbounds %struct.Reg, %struct.Reg* %803, i32 0, i32 0
  %RBP.i324 = bitcast %union.anon* %804 to i64*
  %805 = load i64, i64* %RBP.i324
  %806 = sub i64 %805, 64
  %807 = load i64, i64* %PC.i322
  %808 = add i64 %807, 3
  store i64 %808, i64* %PC.i322
  %809 = inttoptr i64 %806 to i32*
  %810 = load i32, i32* %809
  %811 = zext i32 %810 to i64
  store i64 %811, i64* %RAX.i323, align 8
  store %struct.Memory* %loadMem_467b47, %struct.Memory** %MEMORY
  %loadMem_467b4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %812 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %813 = getelementptr inbounds %struct.GPR, %struct.GPR* %812, i32 0, i32 33
  %814 = getelementptr inbounds %struct.Reg, %struct.Reg* %813, i32 0, i32 0
  %PC.i319 = bitcast %union.anon* %814 to i64*
  %815 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %816 = getelementptr inbounds %struct.GPR, %struct.GPR* %815, i32 0, i32 1
  %817 = getelementptr inbounds %struct.Reg, %struct.Reg* %816, i32 0, i32 0
  %EAX.i320 = bitcast %union.anon* %817 to i32*
  %818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %819 = getelementptr inbounds %struct.GPR, %struct.GPR* %818, i32 0, i32 15
  %820 = getelementptr inbounds %struct.Reg, %struct.Reg* %819, i32 0, i32 0
  %RBP.i321 = bitcast %union.anon* %820 to i64*
  %821 = load i32, i32* %EAX.i320
  %822 = zext i32 %821 to i64
  %823 = load i64, i64* %RBP.i321
  %824 = sub i64 %823, 52
  %825 = load i64, i64* %PC.i319
  %826 = add i64 %825, 3
  store i64 %826, i64* %PC.i319
  %827 = inttoptr i64 %824 to i32*
  %828 = load i32, i32* %827
  %829 = sub i32 %821, %828
  %830 = icmp ult i32 %821, %828
  %831 = zext i1 %830 to i8
  %832 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %831, i8* %832, align 1
  %833 = and i32 %829, 255
  %834 = call i32 @llvm.ctpop.i32(i32 %833)
  %835 = trunc i32 %834 to i8
  %836 = and i8 %835, 1
  %837 = xor i8 %836, 1
  %838 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %837, i8* %838, align 1
  %839 = xor i32 %828, %821
  %840 = xor i32 %839, %829
  %841 = lshr i32 %840, 4
  %842 = trunc i32 %841 to i8
  %843 = and i8 %842, 1
  %844 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %843, i8* %844, align 1
  %845 = icmp eq i32 %829, 0
  %846 = zext i1 %845 to i8
  %847 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %846, i8* %847, align 1
  %848 = lshr i32 %829, 31
  %849 = trunc i32 %848 to i8
  %850 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %849, i8* %850, align 1
  %851 = lshr i32 %821, 31
  %852 = lshr i32 %828, 31
  %853 = xor i32 %852, %851
  %854 = xor i32 %848, %851
  %855 = add i32 %854, %853
  %856 = icmp eq i32 %855, 2
  %857 = zext i1 %856 to i8
  %858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %857, i8* %858, align 1
  store %struct.Memory* %loadMem_467b4a, %struct.Memory** %MEMORY
  %loadMem_467b4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %859 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %860 = getelementptr inbounds %struct.GPR, %struct.GPR* %859, i32 0, i32 33
  %861 = getelementptr inbounds %struct.Reg, %struct.Reg* %860, i32 0, i32 0
  %PC.i318 = bitcast %union.anon* %861 to i64*
  %862 = load i64, i64* %PC.i318
  %863 = add i64 %862, 572
  %864 = load i64, i64* %PC.i318
  %865 = add i64 %864, 6
  %866 = load i64, i64* %PC.i318
  %867 = add i64 %866, 6
  store i64 %867, i64* %PC.i318
  %868 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %869 = load i8, i8* %868, align 1
  %870 = icmp ne i8 %869, 0
  %871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %872 = load i8, i8* %871, align 1
  %873 = icmp ne i8 %872, 0
  %874 = xor i1 %870, %873
  %875 = xor i1 %874, true
  %876 = zext i1 %875 to i8
  store i8 %876, i8* %BRANCH_TAKEN, align 1
  %877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %878 = select i1 %874, i64 %865, i64 %863
  store i64 %878, i64* %877, align 8
  store %struct.Memory* %loadMem_467b4d, %struct.Memory** %MEMORY
  %loadBr_467b4d = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467b4d = icmp eq i8 %loadBr_467b4d, 1
  br i1 %cmpBr_467b4d, label %block_.L_467d89, label %block_467b53

block_467b53:                                     ; preds = %block_.L_467b47
  %loadMem_467b53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %879 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %880 = getelementptr inbounds %struct.GPR, %struct.GPR* %879, i32 0, i32 33
  %881 = getelementptr inbounds %struct.Reg, %struct.Reg* %880, i32 0, i32 0
  %PC.i315 = bitcast %union.anon* %881 to i64*
  %882 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %883 = getelementptr inbounds %struct.GPR, %struct.GPR* %882, i32 0, i32 1
  %884 = getelementptr inbounds %struct.Reg, %struct.Reg* %883, i32 0, i32 0
  %RAX.i316 = bitcast %union.anon* %884 to i64*
  %885 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %886 = getelementptr inbounds %struct.GPR, %struct.GPR* %885, i32 0, i32 15
  %887 = getelementptr inbounds %struct.Reg, %struct.Reg* %886, i32 0, i32 0
  %RBP.i317 = bitcast %union.anon* %887 to i64*
  %888 = load i64, i64* %RBP.i317
  %889 = sub i64 %888, 16
  %890 = load i64, i64* %PC.i315
  %891 = add i64 %890, 4
  store i64 %891, i64* %PC.i315
  %892 = inttoptr i64 %889 to i64*
  %893 = load i64, i64* %892
  store i64 %893, i64* %RAX.i316, align 8
  store %struct.Memory* %loadMem_467b53, %struct.Memory** %MEMORY
  %loadMem_467b57 = load %struct.Memory*, %struct.Memory** %MEMORY
  %894 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %895 = getelementptr inbounds %struct.GPR, %struct.GPR* %894, i32 0, i32 33
  %896 = getelementptr inbounds %struct.Reg, %struct.Reg* %895, i32 0, i32 0
  %PC.i312 = bitcast %union.anon* %896 to i64*
  %897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %898 = getelementptr inbounds %struct.GPR, %struct.GPR* %897, i32 0, i32 5
  %899 = getelementptr inbounds %struct.Reg, %struct.Reg* %898, i32 0, i32 0
  %RCX.i313 = bitcast %union.anon* %899 to i64*
  %900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %901 = getelementptr inbounds %struct.GPR, %struct.GPR* %900, i32 0, i32 15
  %902 = getelementptr inbounds %struct.Reg, %struct.Reg* %901, i32 0, i32 0
  %RBP.i314 = bitcast %union.anon* %902 to i64*
  %903 = load i64, i64* %RBP.i314
  %904 = sub i64 %903, 64
  %905 = load i64, i64* %PC.i312
  %906 = add i64 %905, 4
  store i64 %906, i64* %PC.i312
  %907 = inttoptr i64 %904 to i32*
  %908 = load i32, i32* %907
  %909 = sext i32 %908 to i64
  store i64 %909, i64* %RCX.i313, align 8
  store %struct.Memory* %loadMem_467b57, %struct.Memory** %MEMORY
  %loadMem_467b5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %910 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %911 = getelementptr inbounds %struct.GPR, %struct.GPR* %910, i32 0, i32 33
  %912 = getelementptr inbounds %struct.Reg, %struct.Reg* %911, i32 0, i32 0
  %PC.i308 = bitcast %union.anon* %912 to i64*
  %913 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %914 = getelementptr inbounds %struct.GPR, %struct.GPR* %913, i32 0, i32 1
  %915 = getelementptr inbounds %struct.Reg, %struct.Reg* %914, i32 0, i32 0
  %RAX.i309 = bitcast %union.anon* %915 to i64*
  %916 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %917 = getelementptr inbounds %struct.GPR, %struct.GPR* %916, i32 0, i32 5
  %918 = getelementptr inbounds %struct.Reg, %struct.Reg* %917, i32 0, i32 0
  %RCX.i310 = bitcast %union.anon* %918 to i64*
  %919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %920 = getelementptr inbounds %struct.GPR, %struct.GPR* %919, i32 0, i32 7
  %921 = getelementptr inbounds %struct.Reg, %struct.Reg* %920, i32 0, i32 0
  %RDX.i311 = bitcast %union.anon* %921 to i64*
  %922 = load i64, i64* %RAX.i309
  %923 = load i64, i64* %RCX.i310
  %924 = mul i64 %923, 4
  %925 = add i64 %924, %922
  %926 = load i64, i64* %PC.i308
  %927 = add i64 %926, 3
  store i64 %927, i64* %PC.i308
  %928 = inttoptr i64 %925 to i32*
  %929 = load i32, i32* %928
  %930 = zext i32 %929 to i64
  store i64 %930, i64* %RDX.i311, align 8
  store %struct.Memory* %loadMem_467b5b, %struct.Memory** %MEMORY
  %loadMem_467b5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %931 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %932 = getelementptr inbounds %struct.GPR, %struct.GPR* %931, i32 0, i32 33
  %933 = getelementptr inbounds %struct.Reg, %struct.Reg* %932, i32 0, i32 0
  %PC.i305 = bitcast %union.anon* %933 to i64*
  %934 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %935 = getelementptr inbounds %struct.GPR, %struct.GPR* %934, i32 0, i32 7
  %936 = getelementptr inbounds %struct.Reg, %struct.Reg* %935, i32 0, i32 0
  %EDX.i306 = bitcast %union.anon* %936 to i32*
  %937 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %938 = getelementptr inbounds %struct.GPR, %struct.GPR* %937, i32 0, i32 15
  %939 = getelementptr inbounds %struct.Reg, %struct.Reg* %938, i32 0, i32 0
  %RBP.i307 = bitcast %union.anon* %939 to i64*
  %940 = load i64, i64* %RBP.i307
  %941 = sub i64 %940, 36
  %942 = load i32, i32* %EDX.i306
  %943 = zext i32 %942 to i64
  %944 = load i64, i64* %PC.i305
  %945 = add i64 %944, 3
  store i64 %945, i64* %PC.i305
  %946 = inttoptr i64 %941 to i32*
  store i32 %942, i32* %946
  store %struct.Memory* %loadMem_467b5e, %struct.Memory** %MEMORY
  %loadMem_467b61 = load %struct.Memory*, %struct.Memory** %MEMORY
  %947 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %948 = getelementptr inbounds %struct.GPR, %struct.GPR* %947, i32 0, i32 33
  %949 = getelementptr inbounds %struct.Reg, %struct.Reg* %948, i32 0, i32 0
  %PC.i303 = bitcast %union.anon* %949 to i64*
  %950 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %951 = getelementptr inbounds %struct.GPR, %struct.GPR* %950, i32 0, i32 15
  %952 = getelementptr inbounds %struct.Reg, %struct.Reg* %951, i32 0, i32 0
  %RBP.i304 = bitcast %union.anon* %952 to i64*
  %953 = load i64, i64* %RBP.i304
  %954 = sub i64 %953, 56
  %955 = load i64, i64* %PC.i303
  %956 = add i64 %955, 7
  store i64 %956, i64* %PC.i303
  %957 = inttoptr i64 %954 to i32*
  store i32 0, i32* %957
  store %struct.Memory* %loadMem_467b61, %struct.Memory** %MEMORY
  br label %block_.L_467b68

block_.L_467b68:                                  ; preds = %block_.L_467d68, %block_467b53
  %loadMem_467b68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %958 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %959 = getelementptr inbounds %struct.GPR, %struct.GPR* %958, i32 0, i32 33
  %960 = getelementptr inbounds %struct.Reg, %struct.Reg* %959, i32 0, i32 0
  %PC.i301 = bitcast %union.anon* %960 to i64*
  %961 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %962 = getelementptr inbounds %struct.GPR, %struct.GPR* %961, i32 0, i32 15
  %963 = getelementptr inbounds %struct.Reg, %struct.Reg* %962, i32 0, i32 0
  %RBP.i302 = bitcast %union.anon* %963 to i64*
  %964 = load i64, i64* %RBP.i302
  %965 = sub i64 %964, 56
  %966 = load i64, i64* %PC.i301
  %967 = add i64 %966, 4
  store i64 %967, i64* %PC.i301
  %968 = inttoptr i64 %965 to i32*
  %969 = load i32, i32* %968
  %970 = sub i32 %969, 4
  %971 = icmp ult i32 %969, 4
  %972 = zext i1 %971 to i8
  %973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %972, i8* %973, align 1
  %974 = and i32 %970, 255
  %975 = call i32 @llvm.ctpop.i32(i32 %974)
  %976 = trunc i32 %975 to i8
  %977 = and i8 %976, 1
  %978 = xor i8 %977, 1
  %979 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %978, i8* %979, align 1
  %980 = xor i32 %969, 4
  %981 = xor i32 %980, %970
  %982 = lshr i32 %981, 4
  %983 = trunc i32 %982 to i8
  %984 = and i8 %983, 1
  %985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %984, i8* %985, align 1
  %986 = icmp eq i32 %970, 0
  %987 = zext i1 %986 to i8
  %988 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %987, i8* %988, align 1
  %989 = lshr i32 %970, 31
  %990 = trunc i32 %989 to i8
  %991 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %990, i8* %991, align 1
  %992 = lshr i32 %969, 31
  %993 = xor i32 %989, %992
  %994 = add i32 %993, %992
  %995 = icmp eq i32 %994, 2
  %996 = zext i1 %995 to i8
  %997 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %996, i8* %997, align 1
  store %struct.Memory* %loadMem_467b68, %struct.Memory** %MEMORY
  %loadMem_467b6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %998 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %999 = getelementptr inbounds %struct.GPR, %struct.GPR* %998, i32 0, i32 33
  %1000 = getelementptr inbounds %struct.Reg, %struct.Reg* %999, i32 0, i32 0
  %PC.i300 = bitcast %union.anon* %1000 to i64*
  %1001 = load i64, i64* %PC.i300
  %1002 = add i64 %1001, 522
  %1003 = load i64, i64* %PC.i300
  %1004 = add i64 %1003, 6
  %1005 = load i64, i64* %PC.i300
  %1006 = add i64 %1005, 6
  store i64 %1006, i64* %PC.i300
  %1007 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1008 = load i8, i8* %1007, align 1
  %1009 = icmp ne i8 %1008, 0
  %1010 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1011 = load i8, i8* %1010, align 1
  %1012 = icmp ne i8 %1011, 0
  %1013 = xor i1 %1009, %1012
  %1014 = xor i1 %1013, true
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %BRANCH_TAKEN, align 1
  %1016 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1017 = select i1 %1013, i64 %1004, i64 %1002
  store i64 %1017, i64* %1016, align 8
  store %struct.Memory* %loadMem_467b6c, %struct.Memory** %MEMORY
  %loadBr_467b6c = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467b6c = icmp eq i8 %loadBr_467b6c, 1
  br i1 %cmpBr_467b6c, label %block_.L_467d76, label %block_467b72

block_467b72:                                     ; preds = %block_.L_467b68
  %loadMem_467b72 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1018 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1019 = getelementptr inbounds %struct.GPR, %struct.GPR* %1018, i32 0, i32 33
  %1020 = getelementptr inbounds %struct.Reg, %struct.Reg* %1019, i32 0, i32 0
  %PC.i297 = bitcast %union.anon* %1020 to i64*
  %1021 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1022 = getelementptr inbounds %struct.GPR, %struct.GPR* %1021, i32 0, i32 1
  %1023 = getelementptr inbounds %struct.Reg, %struct.Reg* %1022, i32 0, i32 0
  %RAX.i298 = bitcast %union.anon* %1023 to i64*
  %1024 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1025 = getelementptr inbounds %struct.GPR, %struct.GPR* %1024, i32 0, i32 15
  %1026 = getelementptr inbounds %struct.Reg, %struct.Reg* %1025, i32 0, i32 0
  %RBP.i299 = bitcast %union.anon* %1026 to i64*
  %1027 = load i64, i64* %RBP.i299
  %1028 = sub i64 %1027, 36
  %1029 = load i64, i64* %PC.i297
  %1030 = add i64 %1029, 3
  store i64 %1030, i64* %PC.i297
  %1031 = inttoptr i64 %1028 to i32*
  %1032 = load i32, i32* %1031
  %1033 = zext i32 %1032 to i64
  store i64 %1033, i64* %RAX.i298, align 8
  store %struct.Memory* %loadMem_467b72, %struct.Memory** %MEMORY
  %loadMem_467b75 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1034 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1035 = getelementptr inbounds %struct.GPR, %struct.GPR* %1034, i32 0, i32 33
  %1036 = getelementptr inbounds %struct.Reg, %struct.Reg* %1035, i32 0, i32 0
  %PC.i294 = bitcast %union.anon* %1036 to i64*
  %1037 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1038 = getelementptr inbounds %struct.GPR, %struct.GPR* %1037, i32 0, i32 5
  %1039 = getelementptr inbounds %struct.Reg, %struct.Reg* %1038, i32 0, i32 0
  %RCX.i295 = bitcast %union.anon* %1039 to i64*
  %1040 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1041 = getelementptr inbounds %struct.GPR, %struct.GPR* %1040, i32 0, i32 15
  %1042 = getelementptr inbounds %struct.Reg, %struct.Reg* %1041, i32 0, i32 0
  %RBP.i296 = bitcast %union.anon* %1042 to i64*
  %1043 = load i64, i64* %RBP.i296
  %1044 = sub i64 %1043, 56
  %1045 = load i64, i64* %PC.i294
  %1046 = add i64 %1045, 4
  store i64 %1046, i64* %PC.i294
  %1047 = inttoptr i64 %1044 to i32*
  %1048 = load i32, i32* %1047
  %1049 = sext i32 %1048 to i64
  store i64 %1049, i64* %RCX.i295, align 8
  store %struct.Memory* %loadMem_467b75, %struct.Memory** %MEMORY
  %loadMem_467b79 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1050 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1051 = getelementptr inbounds %struct.GPR, %struct.GPR* %1050, i32 0, i32 33
  %1052 = getelementptr inbounds %struct.Reg, %struct.Reg* %1051, i32 0, i32 0
  %PC.i291 = bitcast %union.anon* %1052 to i64*
  %1053 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1054 = getelementptr inbounds %struct.GPR, %struct.GPR* %1053, i32 0, i32 1
  %1055 = getelementptr inbounds %struct.Reg, %struct.Reg* %1054, i32 0, i32 0
  %RAX.i292 = bitcast %union.anon* %1055 to i64*
  %1056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1057 = getelementptr inbounds %struct.GPR, %struct.GPR* %1056, i32 0, i32 5
  %1058 = getelementptr inbounds %struct.Reg, %struct.Reg* %1057, i32 0, i32 0
  %RCX.i293 = bitcast %union.anon* %1058 to i64*
  %1059 = load i64, i64* %RAX.i292
  %1060 = load i64, i64* %RCX.i293
  %1061 = mul i64 %1060, 4
  %1062 = add i64 %1061, 8053168
  %1063 = load i64, i64* %PC.i291
  %1064 = add i64 %1063, 7
  store i64 %1064, i64* %PC.i291
  %1065 = trunc i64 %1059 to i32
  %1066 = inttoptr i64 %1062 to i32*
  %1067 = load i32, i32* %1066
  %1068 = add i32 %1067, %1065
  %1069 = zext i32 %1068 to i64
  store i64 %1069, i64* %RAX.i292, align 8
  %1070 = icmp ult i32 %1068, %1065
  %1071 = icmp ult i32 %1068, %1067
  %1072 = or i1 %1070, %1071
  %1073 = zext i1 %1072 to i8
  %1074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1073, i8* %1074, align 1
  %1075 = and i32 %1068, 255
  %1076 = call i32 @llvm.ctpop.i32(i32 %1075)
  %1077 = trunc i32 %1076 to i8
  %1078 = and i8 %1077, 1
  %1079 = xor i8 %1078, 1
  %1080 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1079, i8* %1080, align 1
  %1081 = xor i32 %1067, %1065
  %1082 = xor i32 %1081, %1068
  %1083 = lshr i32 %1082, 4
  %1084 = trunc i32 %1083 to i8
  %1085 = and i8 %1084, 1
  %1086 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1085, i8* %1086, align 1
  %1087 = icmp eq i32 %1068, 0
  %1088 = zext i1 %1087 to i8
  %1089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1088, i8* %1089, align 1
  %1090 = lshr i32 %1068, 31
  %1091 = trunc i32 %1090 to i8
  %1092 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1091, i8* %1092, align 1
  %1093 = lshr i32 %1065, 31
  %1094 = lshr i32 %1067, 31
  %1095 = xor i32 %1090, %1093
  %1096 = xor i32 %1090, %1094
  %1097 = add i32 %1095, %1096
  %1098 = icmp eq i32 %1097, 2
  %1099 = zext i1 %1098 to i8
  %1100 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1099, i8* %1100, align 1
  store %struct.Memory* %loadMem_467b79, %struct.Memory** %MEMORY
  %loadMem_467b80 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1101 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1102 = getelementptr inbounds %struct.GPR, %struct.GPR* %1101, i32 0, i32 33
  %1103 = getelementptr inbounds %struct.Reg, %struct.Reg* %1102, i32 0, i32 0
  %PC.i288 = bitcast %union.anon* %1103 to i64*
  %1104 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1105 = getelementptr inbounds %struct.GPR, %struct.GPR* %1104, i32 0, i32 1
  %1106 = getelementptr inbounds %struct.Reg, %struct.Reg* %1105, i32 0, i32 0
  %EAX.i289 = bitcast %union.anon* %1106 to i32*
  %1107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1108 = getelementptr inbounds %struct.GPR, %struct.GPR* %1107, i32 0, i32 15
  %1109 = getelementptr inbounds %struct.Reg, %struct.Reg* %1108, i32 0, i32 0
  %RBP.i290 = bitcast %union.anon* %1109 to i64*
  %1110 = load i64, i64* %RBP.i290
  %1111 = sub i64 %1110, 40
  %1112 = load i32, i32* %EAX.i289
  %1113 = zext i32 %1112 to i64
  %1114 = load i64, i64* %PC.i288
  %1115 = add i64 %1114, 3
  store i64 %1115, i64* %PC.i288
  %1116 = inttoptr i64 %1111 to i32*
  store i32 %1112, i32* %1116
  store %struct.Memory* %loadMem_467b80, %struct.Memory** %MEMORY
  %loadMem_467b83 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1117 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1118 = getelementptr inbounds %struct.GPR, %struct.GPR* %1117, i32 0, i32 33
  %1119 = getelementptr inbounds %struct.Reg, %struct.Reg* %1118, i32 0, i32 0
  %PC.i285 = bitcast %union.anon* %1119 to i64*
  %1120 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1121 = getelementptr inbounds %struct.GPR, %struct.GPR* %1120, i32 0, i32 5
  %1122 = getelementptr inbounds %struct.Reg, %struct.Reg* %1121, i32 0, i32 0
  %RCX.i286 = bitcast %union.anon* %1122 to i64*
  %1123 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1124 = getelementptr inbounds %struct.GPR, %struct.GPR* %1123, i32 0, i32 15
  %1125 = getelementptr inbounds %struct.Reg, %struct.Reg* %1124, i32 0, i32 0
  %RBP.i287 = bitcast %union.anon* %1125 to i64*
  %1126 = load i64, i64* %RBP.i287
  %1127 = sub i64 %1126, 40
  %1128 = load i64, i64* %PC.i285
  %1129 = add i64 %1128, 4
  store i64 %1129, i64* %PC.i285
  %1130 = inttoptr i64 %1127 to i32*
  %1131 = load i32, i32* %1130
  %1132 = sext i32 %1131 to i64
  store i64 %1132, i64* %RCX.i286, align 8
  store %struct.Memory* %loadMem_467b83, %struct.Memory** %MEMORY
  %loadMem_467b87 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1133 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1134 = getelementptr inbounds %struct.GPR, %struct.GPR* %1133, i32 0, i32 33
  %1135 = getelementptr inbounds %struct.Reg, %struct.Reg* %1134, i32 0, i32 0
  %PC.i282 = bitcast %union.anon* %1135 to i64*
  %1136 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1137 = getelementptr inbounds %struct.GPR, %struct.GPR* %1136, i32 0, i32 1
  %1138 = getelementptr inbounds %struct.Reg, %struct.Reg* %1137, i32 0, i32 0
  %RAX.i283 = bitcast %union.anon* %1138 to i64*
  %1139 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1140 = getelementptr inbounds %struct.GPR, %struct.GPR* %1139, i32 0, i32 5
  %1141 = getelementptr inbounds %struct.Reg, %struct.Reg* %1140, i32 0, i32 0
  %RCX.i284 = bitcast %union.anon* %1141 to i64*
  %1142 = load i64, i64* %RCX.i284
  %1143 = add i64 %1142, 12099168
  %1144 = load i64, i64* %PC.i282
  %1145 = add i64 %1144, 8
  store i64 %1145, i64* %PC.i282
  %1146 = inttoptr i64 %1143 to i8*
  %1147 = load i8, i8* %1146
  %1148 = zext i8 %1147 to i64
  store i64 %1148, i64* %RAX.i283, align 8
  store %struct.Memory* %loadMem_467b87, %struct.Memory** %MEMORY
  %loadMem_467b8f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1149 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1150 = getelementptr inbounds %struct.GPR, %struct.GPR* %1149, i32 0, i32 33
  %1151 = getelementptr inbounds %struct.Reg, %struct.Reg* %1150, i32 0, i32 0
  %PC.i279 = bitcast %union.anon* %1151 to i64*
  %1152 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1153 = getelementptr inbounds %struct.GPR, %struct.GPR* %1152, i32 0, i32 1
  %1154 = getelementptr inbounds %struct.Reg, %struct.Reg* %1153, i32 0, i32 0
  %EAX.i280 = bitcast %union.anon* %1154 to i32*
  %1155 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1156 = getelementptr inbounds %struct.GPR, %struct.GPR* %1155, i32 0, i32 15
  %1157 = getelementptr inbounds %struct.Reg, %struct.Reg* %1156, i32 0, i32 0
  %RBP.i281 = bitcast %union.anon* %1157 to i64*
  %1158 = load i32, i32* %EAX.i280
  %1159 = zext i32 %1158 to i64
  %1160 = load i64, i64* %RBP.i281
  %1161 = sub i64 %1160, 28
  %1162 = load i64, i64* %PC.i279
  %1163 = add i64 %1162, 3
  store i64 %1163, i64* %PC.i279
  %1164 = inttoptr i64 %1161 to i32*
  %1165 = load i32, i32* %1164
  %1166 = sub i32 %1158, %1165
  %1167 = icmp ult i32 %1158, %1165
  %1168 = zext i1 %1167 to i8
  %1169 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1168, i8* %1169, align 1
  %1170 = and i32 %1166, 255
  %1171 = call i32 @llvm.ctpop.i32(i32 %1170)
  %1172 = trunc i32 %1171 to i8
  %1173 = and i8 %1172, 1
  %1174 = xor i8 %1173, 1
  %1175 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1174, i8* %1175, align 1
  %1176 = xor i32 %1165, %1158
  %1177 = xor i32 %1176, %1166
  %1178 = lshr i32 %1177, 4
  %1179 = trunc i32 %1178 to i8
  %1180 = and i8 %1179, 1
  %1181 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1180, i8* %1181, align 1
  %1182 = icmp eq i32 %1166, 0
  %1183 = zext i1 %1182 to i8
  %1184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1183, i8* %1184, align 1
  %1185 = lshr i32 %1166, 31
  %1186 = trunc i32 %1185 to i8
  %1187 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1186, i8* %1187, align 1
  %1188 = lshr i32 %1158, 31
  %1189 = lshr i32 %1165, 31
  %1190 = xor i32 %1189, %1188
  %1191 = xor i32 %1185, %1188
  %1192 = add i32 %1191, %1190
  %1193 = icmp eq i32 %1192, 2
  %1194 = zext i1 %1193 to i8
  %1195 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1194, i8* %1195, align 1
  store %struct.Memory* %loadMem_467b8f, %struct.Memory** %MEMORY
  %loadMem_467b92 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1196 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1197 = getelementptr inbounds %struct.GPR, %struct.GPR* %1196, i32 0, i32 33
  %1198 = getelementptr inbounds %struct.Reg, %struct.Reg* %1197, i32 0, i32 0
  %PC.i278 = bitcast %union.anon* %1198 to i64*
  %1199 = load i64, i64* %PC.i278
  %1200 = add i64 %1199, 11
  %1201 = load i64, i64* %PC.i278
  %1202 = add i64 %1201, 6
  %1203 = load i64, i64* %PC.i278
  %1204 = add i64 %1203, 6
  store i64 %1204, i64* %PC.i278
  %1205 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1206 = load i8, i8* %1205, align 1
  store i8 %1206, i8* %BRANCH_TAKEN, align 1
  %1207 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1208 = icmp ne i8 %1206, 0
  %1209 = select i1 %1208, i64 %1200, i64 %1202
  store i64 %1209, i64* %1207, align 8
  store %struct.Memory* %loadMem_467b92, %struct.Memory** %MEMORY
  %loadBr_467b92 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467b92 = icmp eq i8 %loadBr_467b92, 1
  br i1 %cmpBr_467b92, label %block_.L_467b9d, label %block_467b98

block_467b98:                                     ; preds = %block_467b72
  %loadMem_467b98 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1210 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1211 = getelementptr inbounds %struct.GPR, %struct.GPR* %1210, i32 0, i32 33
  %1212 = getelementptr inbounds %struct.Reg, %struct.Reg* %1211, i32 0, i32 0
  %PC.i277 = bitcast %union.anon* %1212 to i64*
  %1213 = load i64, i64* %PC.i277
  %1214 = add i64 %1213, 464
  %1215 = load i64, i64* %PC.i277
  %1216 = add i64 %1215, 5
  store i64 %1216, i64* %PC.i277
  %1217 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1214, i64* %1217, align 8
  store %struct.Memory* %loadMem_467b98, %struct.Memory** %MEMORY
  br label %block_.L_467d68

block_.L_467b9d:                                  ; preds = %block_467b72
  %loadMem_467b9d = load %struct.Memory*, %struct.Memory** %MEMORY
  %1218 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1219 = getelementptr inbounds %struct.GPR, %struct.GPR* %1218, i32 0, i32 33
  %1220 = getelementptr inbounds %struct.Reg, %struct.Reg* %1219, i32 0, i32 0
  %PC.i274 = bitcast %union.anon* %1220 to i64*
  %1221 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1222 = getelementptr inbounds %struct.GPR, %struct.GPR* %1221, i32 0, i32 11
  %1223 = getelementptr inbounds %struct.Reg, %struct.Reg* %1222, i32 0, i32 0
  %RDI.i275 = bitcast %union.anon* %1223 to i64*
  %1224 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1225 = getelementptr inbounds %struct.GPR, %struct.GPR* %1224, i32 0, i32 15
  %1226 = getelementptr inbounds %struct.Reg, %struct.Reg* %1225, i32 0, i32 0
  %RBP.i276 = bitcast %union.anon* %1226 to i64*
  %1227 = load i64, i64* %RBP.i276
  %1228 = sub i64 %1227, 40
  %1229 = load i64, i64* %PC.i274
  %1230 = add i64 %1229, 3
  store i64 %1230, i64* %PC.i274
  %1231 = inttoptr i64 %1228 to i32*
  %1232 = load i32, i32* %1231
  %1233 = zext i32 %1232 to i64
  store i64 %1233, i64* %RDI.i275, align 8
  store %struct.Memory* %loadMem_467b9d, %struct.Memory** %MEMORY
  %loadMem_467ba0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1235 = getelementptr inbounds %struct.GPR, %struct.GPR* %1234, i32 0, i32 33
  %1236 = getelementptr inbounds %struct.Reg, %struct.Reg* %1235, i32 0, i32 0
  %PC.i271 = bitcast %union.anon* %1236 to i64*
  %1237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1238 = getelementptr inbounds %struct.GPR, %struct.GPR* %1237, i32 0, i32 9
  %1239 = getelementptr inbounds %struct.Reg, %struct.Reg* %1238, i32 0, i32 0
  %RSI.i272 = bitcast %union.anon* %1239 to i64*
  %1240 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1241 = getelementptr inbounds %struct.GPR, %struct.GPR* %1240, i32 0, i32 15
  %1242 = getelementptr inbounds %struct.Reg, %struct.Reg* %1241, i32 0, i32 0
  %RBP.i273 = bitcast %union.anon* %1242 to i64*
  %1243 = load i64, i64* %RBP.i273
  %1244 = sub i64 %1243, 4
  %1245 = load i64, i64* %PC.i271
  %1246 = add i64 %1245, 3
  store i64 %1246, i64* %PC.i271
  %1247 = inttoptr i64 %1244 to i32*
  %1248 = load i32, i32* %1247
  %1249 = zext i32 %1248 to i64
  store i64 %1249, i64* %RSI.i272, align 8
  store %struct.Memory* %loadMem_467ba0, %struct.Memory** %MEMORY
  %loadMem1_467ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1251 = getelementptr inbounds %struct.GPR, %struct.GPR* %1250, i32 0, i32 33
  %1252 = getelementptr inbounds %struct.Reg, %struct.Reg* %1251, i32 0, i32 0
  %PC.i270 = bitcast %union.anon* %1252 to i64*
  %1253 = load i64, i64* %PC.i270
  %1254 = add i64 %1253, -337859
  %1255 = load i64, i64* %PC.i270
  %1256 = add i64 %1255, 5
  %1257 = load i64, i64* %PC.i270
  %1258 = add i64 %1257, 5
  store i64 %1258, i64* %PC.i270
  %1259 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %1260 = load i64, i64* %1259, align 8
  %1261 = add i64 %1260, -8
  %1262 = inttoptr i64 %1261 to i64*
  store i64 %1256, i64* %1262
  store i64 %1261, i64* %1259, align 8
  %1263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1254, i64* %1263, align 8
  store %struct.Memory* %loadMem1_467ba3, %struct.Memory** %MEMORY
  %loadMem2_467ba3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467ba3 = load i64, i64* %3
  %call2_467ba3 = call %struct.Memory* @sub_4153e0.same_string(%struct.State* %0, i64 %loadPC_467ba3, %struct.Memory* %loadMem2_467ba3)
  store %struct.Memory* %call2_467ba3, %struct.Memory** %MEMORY
  %loadMem_467ba8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1264 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1265 = getelementptr inbounds %struct.GPR, %struct.GPR* %1264, i32 0, i32 33
  %1266 = getelementptr inbounds %struct.Reg, %struct.Reg* %1265, i32 0, i32 0
  %PC.i268 = bitcast %union.anon* %1266 to i64*
  %1267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1268 = getelementptr inbounds %struct.GPR, %struct.GPR* %1267, i32 0, i32 1
  %1269 = getelementptr inbounds %struct.Reg, %struct.Reg* %1268, i32 0, i32 0
  %EAX.i269 = bitcast %union.anon* %1269 to i32*
  %1270 = load i32, i32* %EAX.i269
  %1271 = zext i32 %1270 to i64
  %1272 = load i64, i64* %PC.i268
  %1273 = add i64 %1272, 3
  store i64 %1273, i64* %PC.i268
  %1274 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1274, align 1
  %1275 = and i32 %1270, 255
  %1276 = call i32 @llvm.ctpop.i32(i32 %1275)
  %1277 = trunc i32 %1276 to i8
  %1278 = and i8 %1277, 1
  %1279 = xor i8 %1278, 1
  %1280 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1279, i8* %1280, align 1
  %1281 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1281, align 1
  %1282 = icmp eq i32 %1270, 0
  %1283 = zext i1 %1282 to i8
  %1284 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1283, i8* %1284, align 1
  %1285 = lshr i32 %1270, 31
  %1286 = trunc i32 %1285 to i8
  %1287 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1286, i8* %1287, align 1
  %1288 = lshr i32 %1270, 31
  %1289 = xor i32 %1285, %1288
  %1290 = add i32 %1289, %1288
  %1291 = icmp eq i32 %1290, 2
  %1292 = zext i1 %1291 to i8
  %1293 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1292, i8* %1293, align 1
  store %struct.Memory* %loadMem_467ba8, %struct.Memory** %MEMORY
  %loadMem_467bab = load %struct.Memory*, %struct.Memory** %MEMORY
  %1294 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1295 = getelementptr inbounds %struct.GPR, %struct.GPR* %1294, i32 0, i32 33
  %1296 = getelementptr inbounds %struct.Reg, %struct.Reg* %1295, i32 0, i32 0
  %PC.i267 = bitcast %union.anon* %1296 to i64*
  %1297 = load i64, i64* %PC.i267
  %1298 = add i64 %1297, 11
  %1299 = load i64, i64* %PC.i267
  %1300 = add i64 %1299, 6
  %1301 = load i64, i64* %PC.i267
  %1302 = add i64 %1301, 6
  store i64 %1302, i64* %PC.i267
  %1303 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1304 = load i8, i8* %1303, align 1
  %1305 = icmp eq i8 %1304, 0
  %1306 = zext i1 %1305 to i8
  store i8 %1306, i8* %BRANCH_TAKEN, align 1
  %1307 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1308 = select i1 %1305, i64 %1298, i64 %1300
  store i64 %1308, i64* %1307, align 8
  store %struct.Memory* %loadMem_467bab, %struct.Memory** %MEMORY
  %loadBr_467bab = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467bab = icmp eq i8 %loadBr_467bab, 1
  br i1 %cmpBr_467bab, label %block_.L_467bb6, label %block_467bb1

block_467bb1:                                     ; preds = %block_.L_467b9d
  %loadMem_467bb1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1309 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1310 = getelementptr inbounds %struct.GPR, %struct.GPR* %1309, i32 0, i32 33
  %1311 = getelementptr inbounds %struct.Reg, %struct.Reg* %1310, i32 0, i32 0
  %PC.i266 = bitcast %union.anon* %1311 to i64*
  %1312 = load i64, i64* %PC.i266
  %1313 = add i64 %1312, 439
  %1314 = load i64, i64* %PC.i266
  %1315 = add i64 %1314, 5
  store i64 %1315, i64* %PC.i266
  %1316 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1313, i64* %1316, align 8
  store %struct.Memory* %loadMem_467bb1, %struct.Memory** %MEMORY
  br label %block_.L_467d68

block_.L_467bb6:                                  ; preds = %block_.L_467b9d
  %loadMem_467bb6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1317 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1318 = getelementptr inbounds %struct.GPR, %struct.GPR* %1317, i32 0, i32 33
  %1319 = getelementptr inbounds %struct.Reg, %struct.Reg* %1318, i32 0, i32 0
  %PC.i264 = bitcast %union.anon* %1319 to i64*
  %1320 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1321 = getelementptr inbounds %struct.GPR, %struct.GPR* %1320, i32 0, i32 15
  %1322 = getelementptr inbounds %struct.Reg, %struct.Reg* %1321, i32 0, i32 0
  %RBP.i265 = bitcast %union.anon* %1322 to i64*
  %1323 = load i64, i64* %RBP.i265
  %1324 = sub i64 %1323, 60
  %1325 = load i64, i64* %PC.i264
  %1326 = add i64 %1325, 7
  store i64 %1326, i64* %PC.i264
  %1327 = inttoptr i64 %1324 to i32*
  store i32 0, i32* %1327
  store %struct.Memory* %loadMem_467bb6, %struct.Memory** %MEMORY
  br label %block_.L_467bbd

block_.L_467bbd:                                  ; preds = %block_.L_467d55, %block_.L_467bb6
  %loadMem_467bbd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1328 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1329 = getelementptr inbounds %struct.GPR, %struct.GPR* %1328, i32 0, i32 33
  %1330 = getelementptr inbounds %struct.Reg, %struct.Reg* %1329, i32 0, i32 0
  %PC.i262 = bitcast %union.anon* %1330 to i64*
  %1331 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1332 = getelementptr inbounds %struct.GPR, %struct.GPR* %1331, i32 0, i32 15
  %1333 = getelementptr inbounds %struct.Reg, %struct.Reg* %1332, i32 0, i32 0
  %RBP.i263 = bitcast %union.anon* %1333 to i64*
  %1334 = load i64, i64* %RBP.i263
  %1335 = sub i64 %1334, 60
  %1336 = load i64, i64* %PC.i262
  %1337 = add i64 %1336, 4
  store i64 %1337, i64* %PC.i262
  %1338 = inttoptr i64 %1335 to i32*
  %1339 = load i32, i32* %1338
  %1340 = sub i32 %1339, 2
  %1341 = icmp ult i32 %1339, 2
  %1342 = zext i1 %1341 to i8
  %1343 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1342, i8* %1343, align 1
  %1344 = and i32 %1340, 255
  %1345 = call i32 @llvm.ctpop.i32(i32 %1344)
  %1346 = trunc i32 %1345 to i8
  %1347 = and i8 %1346, 1
  %1348 = xor i8 %1347, 1
  %1349 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1348, i8* %1349, align 1
  %1350 = xor i32 %1339, 2
  %1351 = xor i32 %1350, %1340
  %1352 = lshr i32 %1351, 4
  %1353 = trunc i32 %1352 to i8
  %1354 = and i8 %1353, 1
  %1355 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1354, i8* %1355, align 1
  %1356 = icmp eq i32 %1340, 0
  %1357 = zext i1 %1356 to i8
  %1358 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1357, i8* %1358, align 1
  %1359 = lshr i32 %1340, 31
  %1360 = trunc i32 %1359 to i8
  %1361 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1360, i8* %1361, align 1
  %1362 = lshr i32 %1339, 31
  %1363 = xor i32 %1359, %1362
  %1364 = add i32 %1363, %1362
  %1365 = icmp eq i32 %1364, 2
  %1366 = zext i1 %1365 to i8
  %1367 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1366, i8* %1367, align 1
  store %struct.Memory* %loadMem_467bbd, %struct.Memory** %MEMORY
  %loadMem_467bc1 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1368 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1369 = getelementptr inbounds %struct.GPR, %struct.GPR* %1368, i32 0, i32 33
  %1370 = getelementptr inbounds %struct.Reg, %struct.Reg* %1369, i32 0, i32 0
  %PC.i261 = bitcast %union.anon* %1370 to i64*
  %1371 = load i64, i64* %PC.i261
  %1372 = add i64 %1371, 418
  %1373 = load i64, i64* %PC.i261
  %1374 = add i64 %1373, 6
  %1375 = load i64, i64* %PC.i261
  %1376 = add i64 %1375, 6
  store i64 %1376, i64* %PC.i261
  %1377 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %1378 = load i8, i8* %1377, align 1
  %1379 = icmp ne i8 %1378, 0
  %1380 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %1381 = load i8, i8* %1380, align 1
  %1382 = icmp ne i8 %1381, 0
  %1383 = xor i1 %1379, %1382
  %1384 = xor i1 %1383, true
  %1385 = zext i1 %1384 to i8
  store i8 %1385, i8* %BRANCH_TAKEN, align 1
  %1386 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1387 = select i1 %1383, i64 %1374, i64 %1372
  store i64 %1387, i64* %1386, align 8
  store %struct.Memory* %loadMem_467bc1, %struct.Memory** %MEMORY
  %loadBr_467bc1 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467bc1 = icmp eq i8 %loadBr_467bc1, 1
  br i1 %cmpBr_467bc1, label %block_.L_467d63, label %block_467bc7

block_467bc7:                                     ; preds = %block_.L_467bbd
  %loadMem_467bc7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1388 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1389 = getelementptr inbounds %struct.GPR, %struct.GPR* %1388, i32 0, i32 33
  %1390 = getelementptr inbounds %struct.Reg, %struct.Reg* %1389, i32 0, i32 0
  %PC.i259 = bitcast %union.anon* %1390 to i64*
  %1391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1392 = getelementptr inbounds %struct.GPR, %struct.GPR* %1391, i32 0, i32 1
  %1393 = getelementptr inbounds %struct.Reg, %struct.Reg* %1392, i32 0, i32 0
  %RAX.i260 = bitcast %union.anon* %1393 to i64*
  %1394 = load i64, i64* %PC.i259
  %1395 = add i64 %1394, 5
  store i64 %1395, i64* %PC.i259
  store i64 4, i64* %RAX.i260, align 8
  store %struct.Memory* %loadMem_467bc7, %struct.Memory** %MEMORY
  %loadMem_467bcc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1396 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1397 = getelementptr inbounds %struct.GPR, %struct.GPR* %1396, i32 0, i32 33
  %1398 = getelementptr inbounds %struct.Reg, %struct.Reg* %1397, i32 0, i32 0
  %PC.i256 = bitcast %union.anon* %1398 to i64*
  %1399 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1400 = getelementptr inbounds %struct.GPR, %struct.GPR* %1399, i32 0, i32 5
  %1401 = getelementptr inbounds %struct.Reg, %struct.Reg* %1400, i32 0, i32 0
  %RCX.i257 = bitcast %union.anon* %1401 to i64*
  %1402 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1403 = getelementptr inbounds %struct.GPR, %struct.GPR* %1402, i32 0, i32 15
  %1404 = getelementptr inbounds %struct.Reg, %struct.Reg* %1403, i32 0, i32 0
  %RBP.i258 = bitcast %union.anon* %1404 to i64*
  %1405 = load i64, i64* %RBP.i258
  %1406 = sub i64 %1405, 56
  %1407 = load i64, i64* %PC.i256
  %1408 = add i64 %1407, 3
  store i64 %1408, i64* %PC.i256
  %1409 = inttoptr i64 %1406 to i32*
  %1410 = load i32, i32* %1409
  %1411 = zext i32 %1410 to i64
  store i64 %1411, i64* %RCX.i257, align 8
  store %struct.Memory* %loadMem_467bcc, %struct.Memory** %MEMORY
  %loadMem_467bcf = load %struct.Memory*, %struct.Memory** %MEMORY
  %1412 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1413 = getelementptr inbounds %struct.GPR, %struct.GPR* %1412, i32 0, i32 33
  %1414 = getelementptr inbounds %struct.Reg, %struct.Reg* %1413, i32 0, i32 0
  %PC.i254 = bitcast %union.anon* %1414 to i64*
  %1415 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1416 = getelementptr inbounds %struct.GPR, %struct.GPR* %1415, i32 0, i32 5
  %1417 = getelementptr inbounds %struct.Reg, %struct.Reg* %1416, i32 0, i32 0
  %RCX.i255 = bitcast %union.anon* %1417 to i64*
  %1418 = load i64, i64* %RCX.i255
  %1419 = load i64, i64* %PC.i254
  %1420 = add i64 %1419, 3
  store i64 %1420, i64* %PC.i254
  %1421 = trunc i64 %1418 to i32
  %1422 = add i32 1, %1421
  %1423 = zext i32 %1422 to i64
  store i64 %1423, i64* %RCX.i255, align 8
  %1424 = icmp ult i32 %1422, %1421
  %1425 = icmp ult i32 %1422, 1
  %1426 = or i1 %1424, %1425
  %1427 = zext i1 %1426 to i8
  %1428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1427, i8* %1428, align 1
  %1429 = and i32 %1422, 255
  %1430 = call i32 @llvm.ctpop.i32(i32 %1429)
  %1431 = trunc i32 %1430 to i8
  %1432 = and i8 %1431, 1
  %1433 = xor i8 %1432, 1
  %1434 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1433, i8* %1434, align 1
  %1435 = xor i64 1, %1418
  %1436 = trunc i64 %1435 to i32
  %1437 = xor i32 %1436, %1422
  %1438 = lshr i32 %1437, 4
  %1439 = trunc i32 %1438 to i8
  %1440 = and i8 %1439, 1
  %1441 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1440, i8* %1441, align 1
  %1442 = icmp eq i32 %1422, 0
  %1443 = zext i1 %1442 to i8
  %1444 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1443, i8* %1444, align 1
  %1445 = lshr i32 %1422, 31
  %1446 = trunc i32 %1445 to i8
  %1447 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1446, i8* %1447, align 1
  %1448 = lshr i32 %1421, 31
  %1449 = xor i32 %1445, %1448
  %1450 = add i32 %1449, %1445
  %1451 = icmp eq i32 %1450, 2
  %1452 = zext i1 %1451 to i8
  %1453 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1452, i8* %1453, align 1
  store %struct.Memory* %loadMem_467bcf, %struct.Memory** %MEMORY
  %loadMem_467bd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1454 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1455 = getelementptr inbounds %struct.GPR, %struct.GPR* %1454, i32 0, i32 33
  %1456 = getelementptr inbounds %struct.Reg, %struct.Reg* %1455, i32 0, i32 0
  %PC.i251 = bitcast %union.anon* %1456 to i64*
  %1457 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1458 = getelementptr inbounds %struct.GPR, %struct.GPR* %1457, i32 0, i32 1
  %1459 = getelementptr inbounds %struct.Reg, %struct.Reg* %1458, i32 0, i32 0
  %EAX.i252 = bitcast %union.anon* %1459 to i32*
  %1460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1461 = getelementptr inbounds %struct.GPR, %struct.GPR* %1460, i32 0, i32 15
  %1462 = getelementptr inbounds %struct.Reg, %struct.Reg* %1461, i32 0, i32 0
  %RBP.i253 = bitcast %union.anon* %1462 to i64*
  %1463 = load i64, i64* %RBP.i253
  %1464 = sub i64 %1463, 100
  %1465 = load i32, i32* %EAX.i252
  %1466 = zext i32 %1465 to i64
  %1467 = load i64, i64* %PC.i251
  %1468 = add i64 %1467, 3
  store i64 %1468, i64* %PC.i251
  %1469 = inttoptr i64 %1464 to i32*
  store i32 %1465, i32* %1469
  store %struct.Memory* %loadMem_467bd2, %struct.Memory** %MEMORY
  %loadMem_467bd5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1470 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1471 = getelementptr inbounds %struct.GPR, %struct.GPR* %1470, i32 0, i32 33
  %1472 = getelementptr inbounds %struct.Reg, %struct.Reg* %1471, i32 0, i32 0
  %PC.i248 = bitcast %union.anon* %1472 to i64*
  %1473 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1474 = getelementptr inbounds %struct.GPR, %struct.GPR* %1473, i32 0, i32 5
  %1475 = getelementptr inbounds %struct.Reg, %struct.Reg* %1474, i32 0, i32 0
  %ECX.i249 = bitcast %union.anon* %1475 to i32*
  %1476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1477 = getelementptr inbounds %struct.GPR, %struct.GPR* %1476, i32 0, i32 1
  %1478 = getelementptr inbounds %struct.Reg, %struct.Reg* %1477, i32 0, i32 0
  %RAX.i250 = bitcast %union.anon* %1478 to i64*
  %1479 = load i32, i32* %ECX.i249
  %1480 = zext i32 %1479 to i64
  %1481 = load i64, i64* %PC.i248
  %1482 = add i64 %1481, 2
  store i64 %1482, i64* %PC.i248
  %1483 = and i64 %1480, 4294967295
  store i64 %1483, i64* %RAX.i250, align 8
  store %struct.Memory* %loadMem_467bd5, %struct.Memory** %MEMORY
  %loadMem_467bd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1484 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1485 = getelementptr inbounds %struct.GPR, %struct.GPR* %1484, i32 0, i32 33
  %1486 = getelementptr inbounds %struct.Reg, %struct.Reg* %1485, i32 0, i32 0
  %PC.i247 = bitcast %union.anon* %1486 to i64*
  %1487 = load i64, i64* %PC.i247
  %1488 = add i64 %1487, 1
  store i64 %1488, i64* %PC.i247
  %1489 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %1490 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1491 = bitcast %union.anon* %1490 to i32*
  %1492 = load i32, i32* %1491, align 8
  %1493 = sext i32 %1492 to i64
  %1494 = lshr i64 %1493, 32
  store i64 %1494, i64* %1489, align 8
  store %struct.Memory* %loadMem_467bd7, %struct.Memory** %MEMORY
  %loadMem_467bd8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1495 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1496 = getelementptr inbounds %struct.GPR, %struct.GPR* %1495, i32 0, i32 33
  %1497 = getelementptr inbounds %struct.Reg, %struct.Reg* %1496, i32 0, i32 0
  %PC.i244 = bitcast %union.anon* %1497 to i64*
  %1498 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1499 = getelementptr inbounds %struct.GPR, %struct.GPR* %1498, i32 0, i32 5
  %1500 = getelementptr inbounds %struct.Reg, %struct.Reg* %1499, i32 0, i32 0
  %RCX.i245 = bitcast %union.anon* %1500 to i64*
  %1501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1502 = getelementptr inbounds %struct.GPR, %struct.GPR* %1501, i32 0, i32 15
  %1503 = getelementptr inbounds %struct.Reg, %struct.Reg* %1502, i32 0, i32 0
  %RBP.i246 = bitcast %union.anon* %1503 to i64*
  %1504 = load i64, i64* %RBP.i246
  %1505 = sub i64 %1504, 100
  %1506 = load i64, i64* %PC.i244
  %1507 = add i64 %1506, 3
  store i64 %1507, i64* %PC.i244
  %1508 = inttoptr i64 %1505 to i32*
  %1509 = load i32, i32* %1508
  %1510 = zext i32 %1509 to i64
  store i64 %1510, i64* %RCX.i245, align 8
  store %struct.Memory* %loadMem_467bd8, %struct.Memory** %MEMORY
  %loadMem_467bdb = load %struct.Memory*, %struct.Memory** %MEMORY
  %1511 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1512 = getelementptr inbounds %struct.GPR, %struct.GPR* %1511, i32 0, i32 33
  %1513 = getelementptr inbounds %struct.Reg, %struct.Reg* %1512, i32 0, i32 0
  %PC.i240 = bitcast %union.anon* %1513 to i64*
  %1514 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1515 = getelementptr inbounds %struct.GPR, %struct.GPR* %1514, i32 0, i32 5
  %1516 = getelementptr inbounds %struct.Reg, %struct.Reg* %1515, i32 0, i32 0
  %ECX.i = bitcast %union.anon* %1516 to i32*
  %1517 = load i32, i32* %ECX.i
  %1518 = zext i32 %1517 to i64
  %1519 = load i64, i64* %PC.i240
  %1520 = add i64 %1519, 2
  store i64 %1520, i64* %PC.i240
  %1521 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %1522 = bitcast %union.anon* %1521 to i32*
  %1523 = load i32, i32* %1522, align 8
  %1524 = zext i32 %1523 to i64
  %1525 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0
  %1526 = bitcast %union.anon* %1525 to i32*
  %1527 = load i32, i32* %1526, align 8
  %1528 = zext i32 %1527 to i64
  %1529 = shl i64 %1518, 32
  %1530 = ashr exact i64 %1529, 32
  %1531 = shl i64 %1528, 32
  %1532 = or i64 %1531, %1524
  %1533 = sdiv i64 %1532, %1530
  %1534 = shl i64 %1533, 32
  %1535 = ashr exact i64 %1534, 32
  %1536 = icmp eq i64 %1533, %1535
  br i1 %1536, label %1541, label %1537

; <label>:1537:                                   ; preds = %block_467bc7
  %1538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1539 = load i64, i64* %1538, align 8
  %1540 = call %struct.Memory* @__remill_error(%struct.State* nonnull dereferenceable(3376) %0, i64 %1539, %struct.Memory* %loadMem_467bdb)
  br label %routine_idivl__ecx.exit

; <label>:1541:                                   ; preds = %block_467bc7
  %1542 = srem i64 %1532, %1530
  %1543 = getelementptr inbounds %union.anon, %union.anon* %1521, i64 0, i32 0
  %1544 = and i64 %1533, 4294967295
  store i64 %1544, i64* %1543, align 8
  %1545 = getelementptr inbounds %union.anon, %union.anon* %1525, i64 0, i32 0
  %1546 = and i64 %1542, 4294967295
  store i64 %1546, i64* %1545, align 8
  %1547 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1547, align 1
  %1548 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 0, i8* %1548, align 1
  %1549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1549, align 1
  %1550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 0, i8* %1550, align 1
  %1551 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %1551, align 1
  %1552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1552, align 1
  br label %routine_idivl__ecx.exit

routine_idivl__ecx.exit:                          ; preds = %1537, %1541
  %1553 = phi %struct.Memory* [ %1540, %1537 ], [ %loadMem_467bdb, %1541 ]
  store %struct.Memory* %1553, %struct.Memory** %MEMORY
  %loadMem_467bdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %1554 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1555 = getelementptr inbounds %struct.GPR, %struct.GPR* %1554, i32 0, i32 33
  %1556 = getelementptr inbounds %struct.Reg, %struct.Reg* %1555, i32 0, i32 0
  %PC.i237 = bitcast %union.anon* %1556 to i64*
  %1557 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1558 = getelementptr inbounds %struct.GPR, %struct.GPR* %1557, i32 0, i32 7
  %1559 = getelementptr inbounds %struct.Reg, %struct.Reg* %1558, i32 0, i32 0
  %EDX.i238 = bitcast %union.anon* %1559 to i32*
  %1560 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1561 = getelementptr inbounds %struct.GPR, %struct.GPR* %1560, i32 0, i32 9
  %1562 = getelementptr inbounds %struct.Reg, %struct.Reg* %1561, i32 0, i32 0
  %RSI.i239 = bitcast %union.anon* %1562 to i64*
  %1563 = load i32, i32* %EDX.i238
  %1564 = zext i32 %1563 to i64
  %1565 = load i64, i64* %PC.i237
  %1566 = add i64 %1565, 3
  store i64 %1566, i64* %PC.i237
  %1567 = shl i64 %1564, 32
  %1568 = ashr exact i64 %1567, 32
  store i64 %1568, i64* %RSI.i239, align 8
  store %struct.Memory* %loadMem_467bdd, %struct.Memory** %MEMORY
  %loadMem_467be0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1569 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1570 = getelementptr inbounds %struct.GPR, %struct.GPR* %1569, i32 0, i32 33
  %1571 = getelementptr inbounds %struct.Reg, %struct.Reg* %1570, i32 0, i32 0
  %PC.i234 = bitcast %union.anon* %1571 to i64*
  %1572 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1573 = getelementptr inbounds %struct.GPR, %struct.GPR* %1572, i32 0, i32 7
  %1574 = getelementptr inbounds %struct.Reg, %struct.Reg* %1573, i32 0, i32 0
  %RDX.i235 = bitcast %union.anon* %1574 to i64*
  %1575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1576 = getelementptr inbounds %struct.GPR, %struct.GPR* %1575, i32 0, i32 9
  %1577 = getelementptr inbounds %struct.Reg, %struct.Reg* %1576, i32 0, i32 0
  %RSI.i236 = bitcast %union.anon* %1577 to i64*
  %1578 = load i64, i64* %RSI.i236
  %1579 = mul i64 %1578, 4
  %1580 = add i64 %1579, 8053168
  %1581 = load i64, i64* %PC.i234
  %1582 = add i64 %1581, 7
  store i64 %1582, i64* %PC.i234
  %1583 = inttoptr i64 %1580 to i32*
  %1584 = load i32, i32* %1583
  %1585 = zext i32 %1584 to i64
  store i64 %1585, i64* %RDX.i235, align 8
  store %struct.Memory* %loadMem_467be0, %struct.Memory** %MEMORY
  %loadMem_467be7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1587 = getelementptr inbounds %struct.GPR, %struct.GPR* %1586, i32 0, i32 33
  %1588 = getelementptr inbounds %struct.Reg, %struct.Reg* %1587, i32 0, i32 0
  %PC.i231 = bitcast %union.anon* %1588 to i64*
  %1589 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1590 = getelementptr inbounds %struct.GPR, %struct.GPR* %1589, i32 0, i32 7
  %1591 = getelementptr inbounds %struct.Reg, %struct.Reg* %1590, i32 0, i32 0
  %EDX.i232 = bitcast %union.anon* %1591 to i32*
  %1592 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1593 = getelementptr inbounds %struct.GPR, %struct.GPR* %1592, i32 0, i32 15
  %1594 = getelementptr inbounds %struct.Reg, %struct.Reg* %1593, i32 0, i32 0
  %RBP.i233 = bitcast %union.anon* %1594 to i64*
  %1595 = load i64, i64* %RBP.i233
  %1596 = sub i64 %1595, 68
  %1597 = load i32, i32* %EDX.i232
  %1598 = zext i32 %1597 to i64
  %1599 = load i64, i64* %PC.i231
  %1600 = add i64 %1599, 3
  store i64 %1600, i64* %PC.i231
  %1601 = inttoptr i64 %1596 to i32*
  store i32 %1597, i32* %1601
  store %struct.Memory* %loadMem_467be7, %struct.Memory** %MEMORY
  %loadMem_467bea = load %struct.Memory*, %struct.Memory** %MEMORY
  %1602 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1603 = getelementptr inbounds %struct.GPR, %struct.GPR* %1602, i32 0, i32 33
  %1604 = getelementptr inbounds %struct.Reg, %struct.Reg* %1603, i32 0, i32 0
  %PC.i229 = bitcast %union.anon* %1604 to i64*
  %1605 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1606 = getelementptr inbounds %struct.GPR, %struct.GPR* %1605, i32 0, i32 15
  %1607 = getelementptr inbounds %struct.Reg, %struct.Reg* %1606, i32 0, i32 0
  %RBP.i230 = bitcast %union.anon* %1607 to i64*
  %1608 = load i64, i64* %RBP.i230
  %1609 = sub i64 %1608, 60
  %1610 = load i64, i64* %PC.i229
  %1611 = add i64 %1610, 4
  store i64 %1611, i64* %PC.i229
  %1612 = inttoptr i64 %1609 to i32*
  %1613 = load i32, i32* %1612
  %1614 = sub i32 %1613, 1
  %1615 = icmp ult i32 %1613, 1
  %1616 = zext i1 %1615 to i8
  %1617 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1616, i8* %1617, align 1
  %1618 = and i32 %1614, 255
  %1619 = call i32 @llvm.ctpop.i32(i32 %1618)
  %1620 = trunc i32 %1619 to i8
  %1621 = and i8 %1620, 1
  %1622 = xor i8 %1621, 1
  %1623 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1622, i8* %1623, align 1
  %1624 = xor i32 %1613, 1
  %1625 = xor i32 %1624, %1614
  %1626 = lshr i32 %1625, 4
  %1627 = trunc i32 %1626 to i8
  %1628 = and i8 %1627, 1
  %1629 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1628, i8* %1629, align 1
  %1630 = icmp eq i32 %1614, 0
  %1631 = zext i1 %1630 to i8
  %1632 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1631, i8* %1632, align 1
  %1633 = lshr i32 %1614, 31
  %1634 = trunc i32 %1633 to i8
  %1635 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1634, i8* %1635, align 1
  %1636 = lshr i32 %1613, 31
  %1637 = xor i32 %1633, %1636
  %1638 = add i32 %1637, %1636
  %1639 = icmp eq i32 %1638, 2
  %1640 = zext i1 %1639 to i8
  %1641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1640, i8* %1641, align 1
  store %struct.Memory* %loadMem_467bea, %struct.Memory** %MEMORY
  %loadMem_467bee = load %struct.Memory*, %struct.Memory** %MEMORY
  %1642 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1643 = getelementptr inbounds %struct.GPR, %struct.GPR* %1642, i32 0, i32 33
  %1644 = getelementptr inbounds %struct.Reg, %struct.Reg* %1643, i32 0, i32 0
  %PC.i228 = bitcast %union.anon* %1644 to i64*
  %1645 = load i64, i64* %PC.i228
  %1646 = add i64 %1645, 14
  %1647 = load i64, i64* %PC.i228
  %1648 = add i64 %1647, 6
  %1649 = load i64, i64* %PC.i228
  %1650 = add i64 %1649, 6
  store i64 %1650, i64* %PC.i228
  %1651 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1652 = load i8, i8* %1651, align 1
  %1653 = icmp eq i8 %1652, 0
  %1654 = zext i1 %1653 to i8
  store i8 %1654, i8* %BRANCH_TAKEN, align 1
  %1655 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1656 = select i1 %1653, i64 %1646, i64 %1648
  store i64 %1656, i64* %1655, align 8
  store %struct.Memory* %loadMem_467bee, %struct.Memory** %MEMORY
  %loadBr_467bee = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467bee = icmp eq i8 %loadBr_467bee, 1
  br i1 %cmpBr_467bee, label %block_.L_467bfc, label %block_467bf4

block_467bf4:                                     ; preds = %routine_idivl__ecx.exit
  %loadMem_467bf4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1657 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1658 = getelementptr inbounds %struct.GPR, %struct.GPR* %1657, i32 0, i32 33
  %1659 = getelementptr inbounds %struct.Reg, %struct.Reg* %1658, i32 0, i32 0
  %PC.i225 = bitcast %union.anon* %1659 to i64*
  %1660 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1661 = getelementptr inbounds %struct.GPR, %struct.GPR* %1660, i32 0, i32 1
  %1662 = getelementptr inbounds %struct.Reg, %struct.Reg* %1661, i32 0, i32 0
  %EAX.i226 = bitcast %union.anon* %1662 to i32*
  %1663 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1664 = getelementptr inbounds %struct.GPR, %struct.GPR* %1663, i32 0, i32 1
  %1665 = getelementptr inbounds %struct.Reg, %struct.Reg* %1664, i32 0, i32 0
  %RAX.i227 = bitcast %union.anon* %1665 to i64*
  %1666 = load i64, i64* %RAX.i227
  %1667 = load i32, i32* %EAX.i226
  %1668 = zext i32 %1667 to i64
  %1669 = load i64, i64* %PC.i225
  %1670 = add i64 %1669, 2
  store i64 %1670, i64* %PC.i225
  %1671 = xor i64 %1668, %1666
  %1672 = trunc i64 %1671 to i32
  %1673 = and i64 %1671, 4294967295
  store i64 %1673, i64* %RAX.i227, align 8
  %1674 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1674, align 1
  %1675 = and i32 %1672, 255
  %1676 = call i32 @llvm.ctpop.i32(i32 %1675)
  %1677 = trunc i32 %1676 to i8
  %1678 = and i8 %1677, 1
  %1679 = xor i8 %1678, 1
  %1680 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1679, i8* %1680, align 1
  %1681 = icmp eq i32 %1672, 0
  %1682 = zext i1 %1681 to i8
  %1683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1682, i8* %1683, align 1
  %1684 = lshr i32 %1672, 31
  %1685 = trunc i32 %1684 to i8
  %1686 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1685, i8* %1686, align 1
  %1687 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %1687, align 1
  %1688 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1688, align 1
  store %struct.Memory* %loadMem_467bf4, %struct.Memory** %MEMORY
  %loadMem_467bf6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1689 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1690 = getelementptr inbounds %struct.GPR, %struct.GPR* %1689, i32 0, i32 33
  %1691 = getelementptr inbounds %struct.Reg, %struct.Reg* %1690, i32 0, i32 0
  %PC.i222 = bitcast %union.anon* %1691 to i64*
  %1692 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1693 = getelementptr inbounds %struct.GPR, %struct.GPR* %1692, i32 0, i32 1
  %1694 = getelementptr inbounds %struct.Reg, %struct.Reg* %1693, i32 0, i32 0
  %RAX.i223 = bitcast %union.anon* %1694 to i64*
  %1695 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1696 = getelementptr inbounds %struct.GPR, %struct.GPR* %1695, i32 0, i32 15
  %1697 = getelementptr inbounds %struct.Reg, %struct.Reg* %1696, i32 0, i32 0
  %RBP.i224 = bitcast %union.anon* %1697 to i64*
  %1698 = load i64, i64* %RAX.i223
  %1699 = load i64, i64* %RBP.i224
  %1700 = sub i64 %1699, 68
  %1701 = load i64, i64* %PC.i222
  %1702 = add i64 %1701, 3
  store i64 %1702, i64* %PC.i222
  %1703 = trunc i64 %1698 to i32
  %1704 = inttoptr i64 %1700 to i32*
  %1705 = load i32, i32* %1704
  %1706 = sub i32 %1703, %1705
  %1707 = zext i32 %1706 to i64
  store i64 %1707, i64* %RAX.i223, align 8
  %1708 = icmp ult i32 %1703, %1705
  %1709 = zext i1 %1708 to i8
  %1710 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1709, i8* %1710, align 1
  %1711 = and i32 %1706, 255
  %1712 = call i32 @llvm.ctpop.i32(i32 %1711)
  %1713 = trunc i32 %1712 to i8
  %1714 = and i8 %1713, 1
  %1715 = xor i8 %1714, 1
  %1716 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1715, i8* %1716, align 1
  %1717 = xor i32 %1705, %1703
  %1718 = xor i32 %1717, %1706
  %1719 = lshr i32 %1718, 4
  %1720 = trunc i32 %1719 to i8
  %1721 = and i8 %1720, 1
  %1722 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1721, i8* %1722, align 1
  %1723 = icmp eq i32 %1706, 0
  %1724 = zext i1 %1723 to i8
  %1725 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1724, i8* %1725, align 1
  %1726 = lshr i32 %1706, 31
  %1727 = trunc i32 %1726 to i8
  %1728 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1727, i8* %1728, align 1
  %1729 = lshr i32 %1703, 31
  %1730 = lshr i32 %1705, 31
  %1731 = xor i32 %1730, %1729
  %1732 = xor i32 %1726, %1729
  %1733 = add i32 %1732, %1731
  %1734 = icmp eq i32 %1733, 2
  %1735 = zext i1 %1734 to i8
  %1736 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1735, i8* %1736, align 1
  store %struct.Memory* %loadMem_467bf6, %struct.Memory** %MEMORY
  %loadMem_467bf9 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1737 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1738 = getelementptr inbounds %struct.GPR, %struct.GPR* %1737, i32 0, i32 33
  %1739 = getelementptr inbounds %struct.Reg, %struct.Reg* %1738, i32 0, i32 0
  %PC.i219 = bitcast %union.anon* %1739 to i64*
  %1740 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1741 = getelementptr inbounds %struct.GPR, %struct.GPR* %1740, i32 0, i32 1
  %1742 = getelementptr inbounds %struct.Reg, %struct.Reg* %1741, i32 0, i32 0
  %EAX.i220 = bitcast %union.anon* %1742 to i32*
  %1743 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1744 = getelementptr inbounds %struct.GPR, %struct.GPR* %1743, i32 0, i32 15
  %1745 = getelementptr inbounds %struct.Reg, %struct.Reg* %1744, i32 0, i32 0
  %RBP.i221 = bitcast %union.anon* %1745 to i64*
  %1746 = load i64, i64* %RBP.i221
  %1747 = sub i64 %1746, 68
  %1748 = load i32, i32* %EAX.i220
  %1749 = zext i32 %1748 to i64
  %1750 = load i64, i64* %PC.i219
  %1751 = add i64 %1750, 3
  store i64 %1751, i64* %PC.i219
  %1752 = inttoptr i64 %1747 to i32*
  store i32 %1748, i32* %1752
  store %struct.Memory* %loadMem_467bf9, %struct.Memory** %MEMORY
  br label %block_.L_467bfc

block_.L_467bfc:                                  ; preds = %block_467bf4, %routine_idivl__ecx.exit
  %loadMem_467bfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %1753 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1754 = getelementptr inbounds %struct.GPR, %struct.GPR* %1753, i32 0, i32 33
  %1755 = getelementptr inbounds %struct.Reg, %struct.Reg* %1754, i32 0, i32 0
  %PC.i216 = bitcast %union.anon* %1755 to i64*
  %1756 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1757 = getelementptr inbounds %struct.GPR, %struct.GPR* %1756, i32 0, i32 1
  %1758 = getelementptr inbounds %struct.Reg, %struct.Reg* %1757, i32 0, i32 0
  %RAX.i217 = bitcast %union.anon* %1758 to i64*
  %1759 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1760 = getelementptr inbounds %struct.GPR, %struct.GPR* %1759, i32 0, i32 15
  %1761 = getelementptr inbounds %struct.Reg, %struct.Reg* %1760, i32 0, i32 0
  %RBP.i218 = bitcast %union.anon* %1761 to i64*
  %1762 = load i64, i64* %RBP.i218
  %1763 = sub i64 %1762, 36
  %1764 = load i64, i64* %PC.i216
  %1765 = add i64 %1764, 3
  store i64 %1765, i64* %PC.i216
  %1766 = inttoptr i64 %1763 to i32*
  %1767 = load i32, i32* %1766
  %1768 = zext i32 %1767 to i64
  store i64 %1768, i64* %RAX.i217, align 8
  store %struct.Memory* %loadMem_467bfc, %struct.Memory** %MEMORY
  %loadMem_467bff = load %struct.Memory*, %struct.Memory** %MEMORY
  %1769 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1770 = getelementptr inbounds %struct.GPR, %struct.GPR* %1769, i32 0, i32 33
  %1771 = getelementptr inbounds %struct.Reg, %struct.Reg* %1770, i32 0, i32 0
  %PC.i213 = bitcast %union.anon* %1771 to i64*
  %1772 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1773 = getelementptr inbounds %struct.GPR, %struct.GPR* %1772, i32 0, i32 1
  %1774 = getelementptr inbounds %struct.Reg, %struct.Reg* %1773, i32 0, i32 0
  %RAX.i214 = bitcast %union.anon* %1774 to i64*
  %1775 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1776 = getelementptr inbounds %struct.GPR, %struct.GPR* %1775, i32 0, i32 15
  %1777 = getelementptr inbounds %struct.Reg, %struct.Reg* %1776, i32 0, i32 0
  %RBP.i215 = bitcast %union.anon* %1777 to i64*
  %1778 = load i64, i64* %RAX.i214
  %1779 = load i64, i64* %RBP.i215
  %1780 = sub i64 %1779, 68
  %1781 = load i64, i64* %PC.i213
  %1782 = add i64 %1781, 3
  store i64 %1782, i64* %PC.i213
  %1783 = trunc i64 %1778 to i32
  %1784 = inttoptr i64 %1780 to i32*
  %1785 = load i32, i32* %1784
  %1786 = add i32 %1785, %1783
  %1787 = zext i32 %1786 to i64
  store i64 %1787, i64* %RAX.i214, align 8
  %1788 = icmp ult i32 %1786, %1783
  %1789 = icmp ult i32 %1786, %1785
  %1790 = or i1 %1788, %1789
  %1791 = zext i1 %1790 to i8
  %1792 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1791, i8* %1792, align 1
  %1793 = and i32 %1786, 255
  %1794 = call i32 @llvm.ctpop.i32(i32 %1793)
  %1795 = trunc i32 %1794 to i8
  %1796 = and i8 %1795, 1
  %1797 = xor i8 %1796, 1
  %1798 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1797, i8* %1798, align 1
  %1799 = xor i32 %1785, %1783
  %1800 = xor i32 %1799, %1786
  %1801 = lshr i32 %1800, 4
  %1802 = trunc i32 %1801 to i8
  %1803 = and i8 %1802, 1
  %1804 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1803, i8* %1804, align 1
  %1805 = icmp eq i32 %1786, 0
  %1806 = zext i1 %1805 to i8
  %1807 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1806, i8* %1807, align 1
  %1808 = lshr i32 %1786, 31
  %1809 = trunc i32 %1808 to i8
  %1810 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1809, i8* %1810, align 1
  %1811 = lshr i32 %1783, 31
  %1812 = lshr i32 %1785, 31
  %1813 = xor i32 %1808, %1811
  %1814 = xor i32 %1808, %1812
  %1815 = add i32 %1813, %1814
  %1816 = icmp eq i32 %1815, 2
  %1817 = zext i1 %1816 to i8
  %1818 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1817, i8* %1818, align 1
  store %struct.Memory* %loadMem_467bff, %struct.Memory** %MEMORY
  %loadMem_467c02 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1819 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1820 = getelementptr inbounds %struct.GPR, %struct.GPR* %1819, i32 0, i32 33
  %1821 = getelementptr inbounds %struct.Reg, %struct.Reg* %1820, i32 0, i32 0
  %PC.i210 = bitcast %union.anon* %1821 to i64*
  %1822 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1823 = getelementptr inbounds %struct.GPR, %struct.GPR* %1822, i32 0, i32 1
  %1824 = getelementptr inbounds %struct.Reg, %struct.Reg* %1823, i32 0, i32 0
  %EAX.i211 = bitcast %union.anon* %1824 to i32*
  %1825 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1826 = getelementptr inbounds %struct.GPR, %struct.GPR* %1825, i32 0, i32 15
  %1827 = getelementptr inbounds %struct.Reg, %struct.Reg* %1826, i32 0, i32 0
  %RBP.i212 = bitcast %union.anon* %1827 to i64*
  %1828 = load i64, i64* %RBP.i212
  %1829 = sub i64 %1828, 44
  %1830 = load i32, i32* %EAX.i211
  %1831 = zext i32 %1830 to i64
  %1832 = load i64, i64* %PC.i210
  %1833 = add i64 %1832, 3
  store i64 %1833, i64* %PC.i210
  %1834 = inttoptr i64 %1829 to i32*
  store i32 %1830, i32* %1834
  store %struct.Memory* %loadMem_467c02, %struct.Memory** %MEMORY
  %loadMem_467c05 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1835 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1836 = getelementptr inbounds %struct.GPR, %struct.GPR* %1835, i32 0, i32 33
  %1837 = getelementptr inbounds %struct.Reg, %struct.Reg* %1836, i32 0, i32 0
  %PC.i207 = bitcast %union.anon* %1837 to i64*
  %1838 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1839 = getelementptr inbounds %struct.GPR, %struct.GPR* %1838, i32 0, i32 5
  %1840 = getelementptr inbounds %struct.Reg, %struct.Reg* %1839, i32 0, i32 0
  %RCX.i208 = bitcast %union.anon* %1840 to i64*
  %1841 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1842 = getelementptr inbounds %struct.GPR, %struct.GPR* %1841, i32 0, i32 15
  %1843 = getelementptr inbounds %struct.Reg, %struct.Reg* %1842, i32 0, i32 0
  %RBP.i209 = bitcast %union.anon* %1843 to i64*
  %1844 = load i64, i64* %RBP.i209
  %1845 = sub i64 %1844, 44
  %1846 = load i64, i64* %PC.i207
  %1847 = add i64 %1846, 4
  store i64 %1847, i64* %PC.i207
  %1848 = inttoptr i64 %1845 to i32*
  %1849 = load i32, i32* %1848
  %1850 = sext i32 %1849 to i64
  store i64 %1850, i64* %RCX.i208, align 8
  store %struct.Memory* %loadMem_467c05, %struct.Memory** %MEMORY
  %loadMem_467c09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1851 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1852 = getelementptr inbounds %struct.GPR, %struct.GPR* %1851, i32 0, i32 33
  %1853 = getelementptr inbounds %struct.Reg, %struct.Reg* %1852, i32 0, i32 0
  %PC.i204 = bitcast %union.anon* %1853 to i64*
  %1854 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1855 = getelementptr inbounds %struct.GPR, %struct.GPR* %1854, i32 0, i32 1
  %1856 = getelementptr inbounds %struct.Reg, %struct.Reg* %1855, i32 0, i32 0
  %RAX.i205 = bitcast %union.anon* %1856 to i64*
  %1857 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1858 = getelementptr inbounds %struct.GPR, %struct.GPR* %1857, i32 0, i32 5
  %1859 = getelementptr inbounds %struct.Reg, %struct.Reg* %1858, i32 0, i32 0
  %RCX.i206 = bitcast %union.anon* %1859 to i64*
  %1860 = load i64, i64* %RCX.i206
  %1861 = add i64 %1860, 12099168
  %1862 = load i64, i64* %PC.i204
  %1863 = add i64 %1862, 8
  store i64 %1863, i64* %PC.i204
  %1864 = inttoptr i64 %1861 to i8*
  %1865 = load i8, i8* %1864
  %1866 = zext i8 %1865 to i64
  store i64 %1866, i64* %RAX.i205, align 8
  store %struct.Memory* %loadMem_467c09, %struct.Memory** %MEMORY
  %loadMem_467c11 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1867 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1868 = getelementptr inbounds %struct.GPR, %struct.GPR* %1867, i32 0, i32 33
  %1869 = getelementptr inbounds %struct.Reg, %struct.Reg* %1868, i32 0, i32 0
  %PC.i202 = bitcast %union.anon* %1869 to i64*
  %1870 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1871 = getelementptr inbounds %struct.GPR, %struct.GPR* %1870, i32 0, i32 1
  %1872 = getelementptr inbounds %struct.Reg, %struct.Reg* %1871, i32 0, i32 0
  %EAX.i203 = bitcast %union.anon* %1872 to i32*
  %1873 = load i32, i32* %EAX.i203
  %1874 = zext i32 %1873 to i64
  %1875 = load i64, i64* %PC.i202
  %1876 = add i64 %1875, 3
  store i64 %1876, i64* %PC.i202
  %1877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %1877, align 1
  %1878 = and i32 %1873, 255
  %1879 = call i32 @llvm.ctpop.i32(i32 %1878)
  %1880 = trunc i32 %1879 to i8
  %1881 = and i8 %1880, 1
  %1882 = xor i8 %1881, 1
  %1883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1882, i8* %1883, align 1
  %1884 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %1884, align 1
  %1885 = icmp eq i32 %1873, 0
  %1886 = zext i1 %1885 to i8
  %1887 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1886, i8* %1887, align 1
  %1888 = lshr i32 %1873, 31
  %1889 = trunc i32 %1888 to i8
  %1890 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1889, i8* %1890, align 1
  %1891 = lshr i32 %1873, 31
  %1892 = xor i32 %1888, %1891
  %1893 = add i32 %1892, %1891
  %1894 = icmp eq i32 %1893, 2
  %1895 = zext i1 %1894 to i8
  %1896 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1895, i8* %1896, align 1
  store %struct.Memory* %loadMem_467c11, %struct.Memory** %MEMORY
  %loadMem_467c14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1897 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1898 = getelementptr inbounds %struct.GPR, %struct.GPR* %1897, i32 0, i32 33
  %1899 = getelementptr inbounds %struct.Reg, %struct.Reg* %1898, i32 0, i32 0
  %PC.i201 = bitcast %union.anon* %1899 to i64*
  %1900 = load i64, i64* %PC.i201
  %1901 = add i64 %1900, 11
  %1902 = load i64, i64* %PC.i201
  %1903 = add i64 %1902, 6
  %1904 = load i64, i64* %PC.i201
  %1905 = add i64 %1904, 6
  store i64 %1905, i64* %PC.i201
  %1906 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %1907 = load i8, i8* %1906, align 1
  store i8 %1907, i8* %BRANCH_TAKEN, align 1
  %1908 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %1909 = icmp ne i8 %1907, 0
  %1910 = select i1 %1909, i64 %1901, i64 %1903
  store i64 %1910, i64* %1908, align 8
  store %struct.Memory* %loadMem_467c14, %struct.Memory** %MEMORY
  %loadBr_467c14 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467c14 = icmp eq i8 %loadBr_467c14, 1
  br i1 %cmpBr_467c14, label %block_.L_467c1f, label %block_467c1a

block_467c1a:                                     ; preds = %block_.L_467bfc
  %loadMem_467c1a = load %struct.Memory*, %struct.Memory** %MEMORY
  %1911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1912 = getelementptr inbounds %struct.GPR, %struct.GPR* %1911, i32 0, i32 33
  %1913 = getelementptr inbounds %struct.Reg, %struct.Reg* %1912, i32 0, i32 0
  %PC.i200 = bitcast %union.anon* %1913 to i64*
  %1914 = load i64, i64* %PC.i200
  %1915 = add i64 %1914, 315
  %1916 = load i64, i64* %PC.i200
  %1917 = add i64 %1916, 5
  store i64 %1917, i64* %PC.i200
  %1918 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %1915, i64* %1918, align 8
  store %struct.Memory* %loadMem_467c1a, %struct.Memory** %MEMORY
  br label %block_.L_467d55

block_.L_467c1f:                                  ; preds = %block_.L_467bfc
  %loadMem_467c1f = load %struct.Memory*, %struct.Memory** %MEMORY
  %1919 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1920 = getelementptr inbounds %struct.GPR, %struct.GPR* %1919, i32 0, i32 33
  %1921 = getelementptr inbounds %struct.Reg, %struct.Reg* %1920, i32 0, i32 0
  %PC.i197 = bitcast %union.anon* %1921 to i64*
  %1922 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1923 = getelementptr inbounds %struct.GPR, %struct.GPR* %1922, i32 0, i32 1
  %1924 = getelementptr inbounds %struct.Reg, %struct.Reg* %1923, i32 0, i32 0
  %RAX.i198 = bitcast %union.anon* %1924 to i64*
  %1925 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1926 = getelementptr inbounds %struct.GPR, %struct.GPR* %1925, i32 0, i32 15
  %1927 = getelementptr inbounds %struct.Reg, %struct.Reg* %1926, i32 0, i32 0
  %RBP.i199 = bitcast %union.anon* %1927 to i64*
  %1928 = load i64, i64* %RBP.i199
  %1929 = sub i64 %1928, 40
  %1930 = load i64, i64* %PC.i197
  %1931 = add i64 %1930, 3
  store i64 %1931, i64* %PC.i197
  %1932 = inttoptr i64 %1929 to i32*
  %1933 = load i32, i32* %1932
  %1934 = zext i32 %1933 to i64
  store i64 %1934, i64* %RAX.i198, align 8
  store %struct.Memory* %loadMem_467c1f, %struct.Memory** %MEMORY
  %loadMem_467c22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1935 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1936 = getelementptr inbounds %struct.GPR, %struct.GPR* %1935, i32 0, i32 33
  %1937 = getelementptr inbounds %struct.Reg, %struct.Reg* %1936, i32 0, i32 0
  %PC.i194 = bitcast %union.anon* %1937 to i64*
  %1938 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1939 = getelementptr inbounds %struct.GPR, %struct.GPR* %1938, i32 0, i32 1
  %1940 = getelementptr inbounds %struct.Reg, %struct.Reg* %1939, i32 0, i32 0
  %RAX.i195 = bitcast %union.anon* %1940 to i64*
  %1941 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1942 = getelementptr inbounds %struct.GPR, %struct.GPR* %1941, i32 0, i32 15
  %1943 = getelementptr inbounds %struct.Reg, %struct.Reg* %1942, i32 0, i32 0
  %RBP.i196 = bitcast %union.anon* %1943 to i64*
  %1944 = load i64, i64* %RAX.i195
  %1945 = load i64, i64* %RBP.i196
  %1946 = sub i64 %1945, 68
  %1947 = load i64, i64* %PC.i194
  %1948 = add i64 %1947, 3
  store i64 %1948, i64* %PC.i194
  %1949 = trunc i64 %1944 to i32
  %1950 = inttoptr i64 %1946 to i32*
  %1951 = load i32, i32* %1950
  %1952 = add i32 %1951, %1949
  %1953 = zext i32 %1952 to i64
  store i64 %1953, i64* %RAX.i195, align 8
  %1954 = icmp ult i32 %1952, %1949
  %1955 = icmp ult i32 %1952, %1951
  %1956 = or i1 %1954, %1955
  %1957 = zext i1 %1956 to i8
  %1958 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %1957, i8* %1958, align 1
  %1959 = and i32 %1952, 255
  %1960 = call i32 @llvm.ctpop.i32(i32 %1959)
  %1961 = trunc i32 %1960 to i8
  %1962 = and i8 %1961, 1
  %1963 = xor i8 %1962, 1
  %1964 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %1963, i8* %1964, align 1
  %1965 = xor i32 %1951, %1949
  %1966 = xor i32 %1965, %1952
  %1967 = lshr i32 %1966, 4
  %1968 = trunc i32 %1967 to i8
  %1969 = and i8 %1968, 1
  %1970 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %1969, i8* %1970, align 1
  %1971 = icmp eq i32 %1952, 0
  %1972 = zext i1 %1971 to i8
  %1973 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %1972, i8* %1973, align 1
  %1974 = lshr i32 %1952, 31
  %1975 = trunc i32 %1974 to i8
  %1976 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %1975, i8* %1976, align 1
  %1977 = lshr i32 %1949, 31
  %1978 = lshr i32 %1951, 31
  %1979 = xor i32 %1974, %1977
  %1980 = xor i32 %1974, %1978
  %1981 = add i32 %1979, %1980
  %1982 = icmp eq i32 %1981, 2
  %1983 = zext i1 %1982 to i8
  %1984 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %1983, i8* %1984, align 1
  store %struct.Memory* %loadMem_467c22, %struct.Memory** %MEMORY
  %loadMem_467c25 = load %struct.Memory*, %struct.Memory** %MEMORY
  %1985 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1986 = getelementptr inbounds %struct.GPR, %struct.GPR* %1985, i32 0, i32 33
  %1987 = getelementptr inbounds %struct.Reg, %struct.Reg* %1986, i32 0, i32 0
  %PC.i191 = bitcast %union.anon* %1987 to i64*
  %1988 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1989 = getelementptr inbounds %struct.GPR, %struct.GPR* %1988, i32 0, i32 1
  %1990 = getelementptr inbounds %struct.Reg, %struct.Reg* %1989, i32 0, i32 0
  %EAX.i192 = bitcast %union.anon* %1990 to i32*
  %1991 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %1992 = getelementptr inbounds %struct.GPR, %struct.GPR* %1991, i32 0, i32 15
  %1993 = getelementptr inbounds %struct.Reg, %struct.Reg* %1992, i32 0, i32 0
  %RBP.i193 = bitcast %union.anon* %1993 to i64*
  %1994 = load i64, i64* %RBP.i193
  %1995 = sub i64 %1994, 48
  %1996 = load i32, i32* %EAX.i192
  %1997 = zext i32 %1996 to i64
  %1998 = load i64, i64* %PC.i191
  %1999 = add i64 %1998, 3
  store i64 %1999, i64* %PC.i191
  %2000 = inttoptr i64 %1995 to i32*
  store i32 %1996, i32* %2000
  store %struct.Memory* %loadMem_467c25, %struct.Memory** %MEMORY
  %loadMem_467c28 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2002 = getelementptr inbounds %struct.GPR, %struct.GPR* %2001, i32 0, i32 33
  %2003 = getelementptr inbounds %struct.Reg, %struct.Reg* %2002, i32 0, i32 0
  %PC.i188 = bitcast %union.anon* %2003 to i64*
  %2004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2005 = getelementptr inbounds %struct.GPR, %struct.GPR* %2004, i32 0, i32 5
  %2006 = getelementptr inbounds %struct.Reg, %struct.Reg* %2005, i32 0, i32 0
  %RCX.i189 = bitcast %union.anon* %2006 to i64*
  %2007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2008 = getelementptr inbounds %struct.GPR, %struct.GPR* %2007, i32 0, i32 15
  %2009 = getelementptr inbounds %struct.Reg, %struct.Reg* %2008, i32 0, i32 0
  %RBP.i190 = bitcast %union.anon* %2009 to i64*
  %2010 = load i64, i64* %RBP.i190
  %2011 = sub i64 %2010, 48
  %2012 = load i64, i64* %PC.i188
  %2013 = add i64 %2012, 4
  store i64 %2013, i64* %PC.i188
  %2014 = inttoptr i64 %2011 to i32*
  %2015 = load i32, i32* %2014
  %2016 = sext i32 %2015 to i64
  store i64 %2016, i64* %RCX.i189, align 8
  store %struct.Memory* %loadMem_467c28, %struct.Memory** %MEMORY
  %loadMem_467c2c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2017 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2018 = getelementptr inbounds %struct.GPR, %struct.GPR* %2017, i32 0, i32 33
  %2019 = getelementptr inbounds %struct.Reg, %struct.Reg* %2018, i32 0, i32 0
  %PC.i185 = bitcast %union.anon* %2019 to i64*
  %2020 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2021 = getelementptr inbounds %struct.GPR, %struct.GPR* %2020, i32 0, i32 1
  %2022 = getelementptr inbounds %struct.Reg, %struct.Reg* %2021, i32 0, i32 0
  %RAX.i186 = bitcast %union.anon* %2022 to i64*
  %2023 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2024 = getelementptr inbounds %struct.GPR, %struct.GPR* %2023, i32 0, i32 5
  %2025 = getelementptr inbounds %struct.Reg, %struct.Reg* %2024, i32 0, i32 0
  %RCX.i187 = bitcast %union.anon* %2025 to i64*
  %2026 = load i64, i64* %RCX.i187
  %2027 = add i64 %2026, 12099168
  %2028 = load i64, i64* %PC.i185
  %2029 = add i64 %2028, 8
  store i64 %2029, i64* %PC.i185
  %2030 = inttoptr i64 %2027 to i8*
  %2031 = load i8, i8* %2030
  %2032 = zext i8 %2031 to i64
  store i64 %2032, i64* %RAX.i186, align 8
  store %struct.Memory* %loadMem_467c2c, %struct.Memory** %MEMORY
  %loadMem_467c34 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2033 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2034 = getelementptr inbounds %struct.GPR, %struct.GPR* %2033, i32 0, i32 33
  %2035 = getelementptr inbounds %struct.Reg, %struct.Reg* %2034, i32 0, i32 0
  %PC.i182 = bitcast %union.anon* %2035 to i64*
  %2036 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2037 = getelementptr inbounds %struct.GPR, %struct.GPR* %2036, i32 0, i32 1
  %2038 = getelementptr inbounds %struct.Reg, %struct.Reg* %2037, i32 0, i32 0
  %EAX.i183 = bitcast %union.anon* %2038 to i32*
  %2039 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2040 = getelementptr inbounds %struct.GPR, %struct.GPR* %2039, i32 0, i32 15
  %2041 = getelementptr inbounds %struct.Reg, %struct.Reg* %2040, i32 0, i32 0
  %RBP.i184 = bitcast %union.anon* %2041 to i64*
  %2042 = load i32, i32* %EAX.i183
  %2043 = zext i32 %2042 to i64
  %2044 = load i64, i64* %RBP.i184
  %2045 = sub i64 %2044, 32
  %2046 = load i64, i64* %PC.i182
  %2047 = add i64 %2046, 3
  store i64 %2047, i64* %PC.i182
  %2048 = inttoptr i64 %2045 to i32*
  %2049 = load i32, i32* %2048
  %2050 = sub i32 %2042, %2049
  %2051 = icmp ult i32 %2042, %2049
  %2052 = zext i1 %2051 to i8
  %2053 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2052, i8* %2053, align 1
  %2054 = and i32 %2050, 255
  %2055 = call i32 @llvm.ctpop.i32(i32 %2054)
  %2056 = trunc i32 %2055 to i8
  %2057 = and i8 %2056, 1
  %2058 = xor i8 %2057, 1
  %2059 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2058, i8* %2059, align 1
  %2060 = xor i32 %2049, %2042
  %2061 = xor i32 %2060, %2050
  %2062 = lshr i32 %2061, 4
  %2063 = trunc i32 %2062 to i8
  %2064 = and i8 %2063, 1
  %2065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2064, i8* %2065, align 1
  %2066 = icmp eq i32 %2050, 0
  %2067 = zext i1 %2066 to i8
  %2068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2067, i8* %2068, align 1
  %2069 = lshr i32 %2050, 31
  %2070 = trunc i32 %2069 to i8
  %2071 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2070, i8* %2071, align 1
  %2072 = lshr i32 %2042, 31
  %2073 = lshr i32 %2049, 31
  %2074 = xor i32 %2073, %2072
  %2075 = xor i32 %2069, %2072
  %2076 = add i32 %2075, %2074
  %2077 = icmp eq i32 %2076, 2
  %2078 = zext i1 %2077 to i8
  %2079 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2078, i8* %2079, align 1
  store %struct.Memory* %loadMem_467c34, %struct.Memory** %MEMORY
  %loadMem_467c37 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2080 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2081 = getelementptr inbounds %struct.GPR, %struct.GPR* %2080, i32 0, i32 33
  %2082 = getelementptr inbounds %struct.Reg, %struct.Reg* %2081, i32 0, i32 0
  %PC.i181 = bitcast %union.anon* %2082 to i64*
  %2083 = load i64, i64* %PC.i181
  %2084 = add i64 %2083, 11
  %2085 = load i64, i64* %PC.i181
  %2086 = add i64 %2085, 6
  %2087 = load i64, i64* %PC.i181
  %2088 = add i64 %2087, 6
  store i64 %2088, i64* %PC.i181
  %2089 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2090 = load i8, i8* %2089, align 1
  store i8 %2090, i8* %BRANCH_TAKEN, align 1
  %2091 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2092 = icmp ne i8 %2090, 0
  %2093 = select i1 %2092, i64 %2084, i64 %2086
  store i64 %2093, i64* %2091, align 8
  store %struct.Memory* %loadMem_467c37, %struct.Memory** %MEMORY
  %loadBr_467c37 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467c37 = icmp eq i8 %loadBr_467c37, 1
  br i1 %cmpBr_467c37, label %block_.L_467c42, label %block_467c3d

block_467c3d:                                     ; preds = %block_.L_467c1f
  %loadMem_467c3d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2094 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2095 = getelementptr inbounds %struct.GPR, %struct.GPR* %2094, i32 0, i32 33
  %2096 = getelementptr inbounds %struct.Reg, %struct.Reg* %2095, i32 0, i32 0
  %PC.i180 = bitcast %union.anon* %2096 to i64*
  %2097 = load i64, i64* %PC.i180
  %2098 = add i64 %2097, 280
  %2099 = load i64, i64* %PC.i180
  %2100 = add i64 %2099, 5
  store i64 %2100, i64* %PC.i180
  %2101 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2098, i64* %2101, align 8
  store %struct.Memory* %loadMem_467c3d, %struct.Memory** %MEMORY
  br label %block_.L_467d55

block_.L_467c42:                                  ; preds = %block_.L_467c1f
  %loadMem_467c42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2102 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2103 = getelementptr inbounds %struct.GPR, %struct.GPR* %2102, i32 0, i32 33
  %2104 = getelementptr inbounds %struct.Reg, %struct.Reg* %2103, i32 0, i32 0
  %PC.i177 = bitcast %union.anon* %2104 to i64*
  %2105 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2106 = getelementptr inbounds %struct.GPR, %struct.GPR* %2105, i32 0, i32 11
  %2107 = getelementptr inbounds %struct.Reg, %struct.Reg* %2106, i32 0, i32 0
  %RDI.i178 = bitcast %union.anon* %2107 to i64*
  %2108 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2109 = getelementptr inbounds %struct.GPR, %struct.GPR* %2108, i32 0, i32 15
  %2110 = getelementptr inbounds %struct.Reg, %struct.Reg* %2109, i32 0, i32 0
  %RBP.i179 = bitcast %union.anon* %2110 to i64*
  %2111 = load i64, i64* %RBP.i179
  %2112 = sub i64 %2111, 48
  %2113 = load i64, i64* %PC.i177
  %2114 = add i64 %2113, 3
  store i64 %2114, i64* %PC.i177
  %2115 = inttoptr i64 %2112 to i32*
  %2116 = load i32, i32* %2115
  %2117 = zext i32 %2116 to i64
  store i64 %2117, i64* %RDI.i178, align 8
  store %struct.Memory* %loadMem_467c42, %struct.Memory** %MEMORY
  %loadMem1_467c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2118 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2119 = getelementptr inbounds %struct.GPR, %struct.GPR* %2118, i32 0, i32 33
  %2120 = getelementptr inbounds %struct.Reg, %struct.Reg* %2119, i32 0, i32 0
  %PC.i176 = bitcast %union.anon* %2120 to i64*
  %2121 = load i64, i64* %PC.i176
  %2122 = add i64 %2121, -361669
  %2123 = load i64, i64* %PC.i176
  %2124 = add i64 %2123, 5
  %2125 = load i64, i64* %PC.i176
  %2126 = add i64 %2125, 5
  store i64 %2126, i64* %PC.i176
  %2127 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2128 = load i64, i64* %2127, align 8
  %2129 = add i64 %2128, -8
  %2130 = inttoptr i64 %2129 to i64*
  store i64 %2124, i64* %2130
  store i64 %2129, i64* %2127, align 8
  %2131 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2122, i64* %2131, align 8
  store %struct.Memory* %loadMem1_467c45, %struct.Memory** %MEMORY
  %loadMem2_467c45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467c45 = load i64, i64* %3
  %call2_467c45 = call %struct.Memory* @sub_40f780.countlib(%struct.State* %0, i64 %loadPC_467c45, %struct.Memory* %loadMem2_467c45)
  store %struct.Memory* %call2_467c45, %struct.Memory** %MEMORY
  %loadMem_467c4a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2132 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2133 = getelementptr inbounds %struct.GPR, %struct.GPR* %2132, i32 0, i32 33
  %2134 = getelementptr inbounds %struct.Reg, %struct.Reg* %2133, i32 0, i32 0
  %PC.i173 = bitcast %union.anon* %2134 to i64*
  %2135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2136 = getelementptr inbounds %struct.GPR, %struct.GPR* %2135, i32 0, i32 1
  %2137 = getelementptr inbounds %struct.Reg, %struct.Reg* %2136, i32 0, i32 0
  %EAX.i174 = bitcast %union.anon* %2137 to i32*
  %2138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2139 = getelementptr inbounds %struct.GPR, %struct.GPR* %2138, i32 0, i32 15
  %2140 = getelementptr inbounds %struct.Reg, %struct.Reg* %2139, i32 0, i32 0
  %RBP.i175 = bitcast %union.anon* %2140 to i64*
  %2141 = load i64, i64* %RBP.i175
  %2142 = sub i64 %2141, 72
  %2143 = load i32, i32* %EAX.i174
  %2144 = zext i32 %2143 to i64
  %2145 = load i64, i64* %PC.i173
  %2146 = add i64 %2145, 3
  store i64 %2146, i64* %PC.i173
  %2147 = inttoptr i64 %2142 to i32*
  store i32 %2143, i32* %2147
  store %struct.Memory* %loadMem_467c4a, %struct.Memory** %MEMORY
  %loadMem_467c4d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2148 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2149 = getelementptr inbounds %struct.GPR, %struct.GPR* %2148, i32 0, i32 33
  %2150 = getelementptr inbounds %struct.Reg, %struct.Reg* %2149, i32 0, i32 0
  %PC.i170 = bitcast %union.anon* %2150 to i64*
  %2151 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2152 = getelementptr inbounds %struct.GPR, %struct.GPR* %2151, i32 0, i32 1
  %2153 = getelementptr inbounds %struct.Reg, %struct.Reg* %2152, i32 0, i32 0
  %RAX.i171 = bitcast %union.anon* %2153 to i64*
  %2154 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2155 = getelementptr inbounds %struct.GPR, %struct.GPR* %2154, i32 0, i32 15
  %2156 = getelementptr inbounds %struct.Reg, %struct.Reg* %2155, i32 0, i32 0
  %RBP.i172 = bitcast %union.anon* %2156 to i64*
  %2157 = load i64, i64* %RBP.i172
  %2158 = sub i64 %2157, 72
  %2159 = load i64, i64* %PC.i170
  %2160 = add i64 %2159, 3
  store i64 %2160, i64* %PC.i170
  %2161 = inttoptr i64 %2158 to i32*
  %2162 = load i32, i32* %2161
  %2163 = zext i32 %2162 to i64
  store i64 %2163, i64* %RAX.i171, align 8
  store %struct.Memory* %loadMem_467c4d, %struct.Memory** %MEMORY
  %loadMem_467c50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2164 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2165 = getelementptr inbounds %struct.GPR, %struct.GPR* %2164, i32 0, i32 33
  %2166 = getelementptr inbounds %struct.Reg, %struct.Reg* %2165, i32 0, i32 0
  %PC.i167 = bitcast %union.anon* %2166 to i64*
  %2167 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2168 = getelementptr inbounds %struct.GPR, %struct.GPR* %2167, i32 0, i32 1
  %2169 = getelementptr inbounds %struct.Reg, %struct.Reg* %2168, i32 0, i32 0
  %EAX.i168 = bitcast %union.anon* %2169 to i32*
  %2170 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2171 = getelementptr inbounds %struct.GPR, %struct.GPR* %2170, i32 0, i32 15
  %2172 = getelementptr inbounds %struct.Reg, %struct.Reg* %2171, i32 0, i32 0
  %RBP.i169 = bitcast %union.anon* %2172 to i64*
  %2173 = load i32, i32* %EAX.i168
  %2174 = zext i32 %2173 to i64
  %2175 = load i64, i64* %RBP.i169
  %2176 = sub i64 %2175, 52
  %2177 = load i64, i64* %PC.i167
  %2178 = add i64 %2177, 3
  store i64 %2178, i64* %PC.i167
  %2179 = inttoptr i64 %2176 to i32*
  %2180 = load i32, i32* %2179
  %2181 = sub i32 %2173, %2180
  %2182 = icmp ult i32 %2173, %2180
  %2183 = zext i1 %2182 to i8
  %2184 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2183, i8* %2184, align 1
  %2185 = and i32 %2181, 255
  %2186 = call i32 @llvm.ctpop.i32(i32 %2185)
  %2187 = trunc i32 %2186 to i8
  %2188 = and i8 %2187, 1
  %2189 = xor i8 %2188, 1
  %2190 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2189, i8* %2190, align 1
  %2191 = xor i32 %2180, %2173
  %2192 = xor i32 %2191, %2181
  %2193 = lshr i32 %2192, 4
  %2194 = trunc i32 %2193 to i8
  %2195 = and i8 %2194, 1
  %2196 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2195, i8* %2196, align 1
  %2197 = icmp eq i32 %2181, 0
  %2198 = zext i1 %2197 to i8
  %2199 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2198, i8* %2199, align 1
  %2200 = lshr i32 %2181, 31
  %2201 = trunc i32 %2200 to i8
  %2202 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2201, i8* %2202, align 1
  %2203 = lshr i32 %2173, 31
  %2204 = lshr i32 %2180, 31
  %2205 = xor i32 %2204, %2203
  %2206 = xor i32 %2200, %2203
  %2207 = add i32 %2206, %2205
  %2208 = icmp eq i32 %2207, 2
  %2209 = zext i1 %2208 to i8
  %2210 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2209, i8* %2210, align 1
  store %struct.Memory* %loadMem_467c50, %struct.Memory** %MEMORY
  %loadMem_467c53 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2211 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2212 = getelementptr inbounds %struct.GPR, %struct.GPR* %2211, i32 0, i32 33
  %2213 = getelementptr inbounds %struct.Reg, %struct.Reg* %2212, i32 0, i32 0
  %PC.i166 = bitcast %union.anon* %2213 to i64*
  %2214 = load i64, i64* %PC.i166
  %2215 = add i64 %2214, 41
  %2216 = load i64, i64* %PC.i166
  %2217 = add i64 %2216, 6
  %2218 = load i64, i64* %PC.i166
  %2219 = add i64 %2218, 6
  store i64 %2219, i64* %PC.i166
  %2220 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2221 = load i8, i8* %2220, align 1
  %2222 = icmp eq i8 %2221, 0
  %2223 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2224 = load i8, i8* %2223, align 1
  %2225 = icmp ne i8 %2224, 0
  %2226 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2227 = load i8, i8* %2226, align 1
  %2228 = icmp ne i8 %2227, 0
  %2229 = xor i1 %2225, %2228
  %2230 = xor i1 %2229, true
  %2231 = and i1 %2222, %2230
  %2232 = zext i1 %2231 to i8
  store i8 %2232, i8* %BRANCH_TAKEN, align 1
  %2233 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2234 = select i1 %2231, i64 %2215, i64 %2217
  store i64 %2234, i64* %2233, align 8
  store %struct.Memory* %loadMem_467c53, %struct.Memory** %MEMORY
  %loadBr_467c53 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467c53 = icmp eq i8 %loadBr_467c53, 1
  br i1 %cmpBr_467c53, label %block_.L_467c7c, label %block_467c59

block_467c59:                                     ; preds = %block_.L_467c42
  %loadMem_467c59 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2235 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2236 = getelementptr inbounds %struct.GPR, %struct.GPR* %2235, i32 0, i32 33
  %2237 = getelementptr inbounds %struct.Reg, %struct.Reg* %2236, i32 0, i32 0
  %PC.i163 = bitcast %union.anon* %2237 to i64*
  %2238 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2239 = getelementptr inbounds %struct.GPR, %struct.GPR* %2238, i32 0, i32 1
  %2240 = getelementptr inbounds %struct.Reg, %struct.Reg* %2239, i32 0, i32 0
  %EAX.i164 = bitcast %union.anon* %2240 to i32*
  %2241 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2242 = getelementptr inbounds %struct.GPR, %struct.GPR* %2241, i32 0, i32 1
  %2243 = getelementptr inbounds %struct.Reg, %struct.Reg* %2242, i32 0, i32 0
  %RAX.i165 = bitcast %union.anon* %2243 to i64*
  %2244 = load i64, i64* %RAX.i165
  %2245 = load i32, i32* %EAX.i164
  %2246 = zext i32 %2245 to i64
  %2247 = load i64, i64* %PC.i163
  %2248 = add i64 %2247, 2
  store i64 %2248, i64* %PC.i163
  %2249 = xor i64 %2246, %2244
  %2250 = trunc i64 %2249 to i32
  %2251 = and i64 %2249, 4294967295
  store i64 %2251, i64* %RAX.i165, align 8
  %2252 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2252, align 1
  %2253 = and i32 %2250, 255
  %2254 = call i32 @llvm.ctpop.i32(i32 %2253)
  %2255 = trunc i32 %2254 to i8
  %2256 = and i8 %2255, 1
  %2257 = xor i8 %2256, 1
  %2258 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2257, i8* %2258, align 1
  %2259 = icmp eq i32 %2250, 0
  %2260 = zext i1 %2259 to i8
  %2261 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2260, i8* %2261, align 1
  %2262 = lshr i32 %2250, 31
  %2263 = trunc i32 %2262 to i8
  %2264 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2263, i8* %2264, align 1
  %2265 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %2265, align 1
  %2266 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %2266, align 1
  store %struct.Memory* %loadMem_467c59, %struct.Memory** %MEMORY
  %loadMem_467c5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %2267 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2268 = getelementptr inbounds %struct.GPR, %struct.GPR* %2267, i32 0, i32 33
  %2269 = getelementptr inbounds %struct.Reg, %struct.Reg* %2268, i32 0, i32 0
  %PC.i160 = bitcast %union.anon* %2269 to i64*
  %2270 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2271 = getelementptr inbounds %struct.GPR, %struct.GPR* %2270, i32 0, i32 1
  %2272 = getelementptr inbounds %struct.Reg, %struct.Reg* %2271, i32 0, i32 0
  %EAX.i161 = bitcast %union.anon* %2272 to i32*
  %2273 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2274 = getelementptr inbounds %struct.GPR, %struct.GPR* %2273, i32 0, i32 5
  %2275 = getelementptr inbounds %struct.Reg, %struct.Reg* %2274, i32 0, i32 0
  %RCX.i162 = bitcast %union.anon* %2275 to i64*
  %2276 = load i32, i32* %EAX.i161
  %2277 = zext i32 %2276 to i64
  %2278 = load i64, i64* %PC.i160
  %2279 = add i64 %2278, 2
  store i64 %2279, i64* %PC.i160
  %2280 = and i64 %2277, 4294967295
  store i64 %2280, i64* %RCX.i162, align 8
  store %struct.Memory* %loadMem_467c5b, %struct.Memory** %MEMORY
  %loadMem_467c5d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2281 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2282 = getelementptr inbounds %struct.GPR, %struct.GPR* %2281, i32 0, i32 33
  %2283 = getelementptr inbounds %struct.Reg, %struct.Reg* %2282, i32 0, i32 0
  %PC.i157 = bitcast %union.anon* %2283 to i64*
  %2284 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2285 = getelementptr inbounds %struct.GPR, %struct.GPR* %2284, i32 0, i32 1
  %2286 = getelementptr inbounds %struct.Reg, %struct.Reg* %2285, i32 0, i32 0
  %RAX.i158 = bitcast %union.anon* %2286 to i64*
  %2287 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2288 = getelementptr inbounds %struct.GPR, %struct.GPR* %2287, i32 0, i32 15
  %2289 = getelementptr inbounds %struct.Reg, %struct.Reg* %2288, i32 0, i32 0
  %RBP.i159 = bitcast %union.anon* %2289 to i64*
  %2290 = load i64, i64* %RBP.i159
  %2291 = sub i64 %2290, 72
  %2292 = load i64, i64* %PC.i157
  %2293 = add i64 %2292, 3
  store i64 %2293, i64* %PC.i157
  %2294 = inttoptr i64 %2291 to i32*
  %2295 = load i32, i32* %2294
  %2296 = zext i32 %2295 to i64
  store i64 %2296, i64* %RAX.i158, align 8
  store %struct.Memory* %loadMem_467c5d, %struct.Memory** %MEMORY
  %loadMem_467c60 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2297 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2298 = getelementptr inbounds %struct.GPR, %struct.GPR* %2297, i32 0, i32 33
  %2299 = getelementptr inbounds %struct.Reg, %struct.Reg* %2298, i32 0, i32 0
  %PC.i155 = bitcast %union.anon* %2299 to i64*
  %2300 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2301 = getelementptr inbounds %struct.GPR, %struct.GPR* %2300, i32 0, i32 11
  %2302 = getelementptr inbounds %struct.Reg, %struct.Reg* %2301, i32 0, i32 0
  %RDI.i = bitcast %union.anon* %2302 to i64*
  %2303 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2304 = getelementptr inbounds %struct.GPR, %struct.GPR* %2303, i32 0, i32 15
  %2305 = getelementptr inbounds %struct.Reg, %struct.Reg* %2304, i32 0, i32 0
  %RBP.i156 = bitcast %union.anon* %2305 to i64*
  %2306 = load i64, i64* %RBP.i156
  %2307 = sub i64 %2306, 44
  %2308 = load i64, i64* %PC.i155
  %2309 = add i64 %2308, 3
  store i64 %2309, i64* %PC.i155
  %2310 = inttoptr i64 %2307 to i32*
  %2311 = load i32, i32* %2310
  %2312 = zext i32 %2311 to i64
  store i64 %2312, i64* %RDI.i, align 8
  store %struct.Memory* %loadMem_467c60, %struct.Memory** %MEMORY
  %loadMem_467c63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2314 = getelementptr inbounds %struct.GPR, %struct.GPR* %2313, i32 0, i32 33
  %2315 = getelementptr inbounds %struct.Reg, %struct.Reg* %2314, i32 0, i32 0
  %PC.i153 = bitcast %union.anon* %2315 to i64*
  %2316 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2317 = getelementptr inbounds %struct.GPR, %struct.GPR* %2316, i32 0, i32 9
  %2318 = getelementptr inbounds %struct.Reg, %struct.Reg* %2317, i32 0, i32 0
  %RSI.i = bitcast %union.anon* %2318 to i64*
  %2319 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2320 = getelementptr inbounds %struct.GPR, %struct.GPR* %2319, i32 0, i32 15
  %2321 = getelementptr inbounds %struct.Reg, %struct.Reg* %2320, i32 0, i32 0
  %RBP.i154 = bitcast %union.anon* %2321 to i64*
  %2322 = load i64, i64* %RBP.i154
  %2323 = sub i64 %2322, 28
  %2324 = load i64, i64* %PC.i153
  %2325 = add i64 %2324, 3
  store i64 %2325, i64* %PC.i153
  %2326 = inttoptr i64 %2323 to i32*
  %2327 = load i32, i32* %2326
  %2328 = zext i32 %2327 to i64
  store i64 %2328, i64* %RSI.i, align 8
  store %struct.Memory* %loadMem_467c63, %struct.Memory** %MEMORY
  %loadMem_467c66 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2329 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2330 = getelementptr inbounds %struct.GPR, %struct.GPR* %2329, i32 0, i32 33
  %2331 = getelementptr inbounds %struct.Reg, %struct.Reg* %2330, i32 0, i32 0
  %PC.i150 = bitcast %union.anon* %2331 to i64*
  %2332 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2333 = getelementptr inbounds %struct.GPR, %struct.GPR* %2332, i32 0, i32 7
  %2334 = getelementptr inbounds %struct.Reg, %struct.Reg* %2333, i32 0, i32 0
  %RDX.i151 = bitcast %union.anon* %2334 to i64*
  %2335 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2336 = getelementptr inbounds %struct.GPR, %struct.GPR* %2335, i32 0, i32 15
  %2337 = getelementptr inbounds %struct.Reg, %struct.Reg* %2336, i32 0, i32 0
  %RBP.i152 = bitcast %union.anon* %2337 to i64*
  %2338 = load i64, i64* %RBP.i152
  %2339 = sub i64 %2338, 72
  %2340 = load i64, i64* %PC.i150
  %2341 = add i64 %2340, 3
  store i64 %2341, i64* %PC.i150
  %2342 = inttoptr i64 %2339 to i32*
  %2343 = load i32, i32* %2342
  %2344 = zext i32 %2343 to i64
  store i64 %2344, i64* %RDX.i151, align 8
  store %struct.Memory* %loadMem_467c66, %struct.Memory** %MEMORY
  %loadMem_467c69 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2345 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2346 = getelementptr inbounds %struct.GPR, %struct.GPR* %2345, i32 0, i32 33
  %2347 = getelementptr inbounds %struct.Reg, %struct.Reg* %2346, i32 0, i32 0
  %PC.i147 = bitcast %union.anon* %2347 to i64*
  %2348 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2349 = getelementptr inbounds %struct.GPR, %struct.GPR* %2348, i32 0, i32 1
  %2350 = getelementptr inbounds %struct.Reg, %struct.Reg* %2349, i32 0, i32 0
  %EAX.i148 = bitcast %union.anon* %2350 to i32*
  %2351 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2352 = getelementptr inbounds %struct.GPR, %struct.GPR* %2351, i32 0, i32 15
  %2353 = getelementptr inbounds %struct.Reg, %struct.Reg* %2352, i32 0, i32 0
  %RBP.i149 = bitcast %union.anon* %2353 to i64*
  %2354 = load i64, i64* %RBP.i149
  %2355 = sub i64 %2354, 104
  %2356 = load i32, i32* %EAX.i148
  %2357 = zext i32 %2356 to i64
  %2358 = load i64, i64* %PC.i147
  %2359 = add i64 %2358, 3
  store i64 %2359, i64* %PC.i147
  %2360 = inttoptr i64 %2355 to i32*
  store i32 %2356, i32* %2360
  store %struct.Memory* %loadMem_467c69, %struct.Memory** %MEMORY
  %loadMem1_467c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2361 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2362 = getelementptr inbounds %struct.GPR, %struct.GPR* %2361, i32 0, i32 33
  %2363 = getelementptr inbounds %struct.Reg, %struct.Reg* %2362, i32 0, i32 0
  %PC.i146 = bitcast %union.anon* %2363 to i64*
  %2364 = load i64, i64* %PC.i146
  %2365 = add i64 %2364, -351212
  %2366 = load i64, i64* %PC.i146
  %2367 = add i64 %2366, 5
  %2368 = load i64, i64* %PC.i146
  %2369 = add i64 %2368, 5
  store i64 %2369, i64* %PC.i146
  %2370 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %2371 = load i64, i64* %2370, align 8
  %2372 = add i64 %2371, -8
  %2373 = inttoptr i64 %2372 to i64*
  store i64 %2367, i64* %2373
  store i64 %2372, i64* %2370, align 8
  %2374 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2365, i64* %2374, align 8
  store %struct.Memory* %loadMem1_467c6c, %struct.Memory** %MEMORY
  %loadMem2_467c6c = load %struct.Memory*, %struct.Memory** %MEMORY
  %loadPC_467c6c = load i64, i64* %3
  %call2_467c6c = call %struct.Memory* @sub_412080.accuratelib(%struct.State* %0, i64 %loadPC_467c6c, %struct.Memory* %loadMem2_467c6c)
  store %struct.Memory* %call2_467c6c, %struct.Memory** %MEMORY
  %loadMem_467c71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2375 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2376 = getelementptr inbounds %struct.GPR, %struct.GPR* %2375, i32 0, i32 33
  %2377 = getelementptr inbounds %struct.Reg, %struct.Reg* %2376, i32 0, i32 0
  %PC.i143 = bitcast %union.anon* %2377 to i64*
  %2378 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2379 = getelementptr inbounds %struct.GPR, %struct.GPR* %2378, i32 0, i32 7
  %2380 = getelementptr inbounds %struct.Reg, %struct.Reg* %2379, i32 0, i32 0
  %RDX.i144 = bitcast %union.anon* %2380 to i64*
  %2381 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2382 = getelementptr inbounds %struct.GPR, %struct.GPR* %2381, i32 0, i32 15
  %2383 = getelementptr inbounds %struct.Reg, %struct.Reg* %2382, i32 0, i32 0
  %RBP.i145 = bitcast %union.anon* %2383 to i64*
  %2384 = load i64, i64* %RBP.i145
  %2385 = sub i64 %2384, 104
  %2386 = load i64, i64* %PC.i143
  %2387 = add i64 %2386, 3
  store i64 %2387, i64* %PC.i143
  %2388 = inttoptr i64 %2385 to i32*
  %2389 = load i32, i32* %2388
  %2390 = zext i32 %2389 to i64
  store i64 %2390, i64* %RDX.i144, align 8
  store %struct.Memory* %loadMem_467c71, %struct.Memory** %MEMORY
  %loadMem_467c74 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2391 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2392 = getelementptr inbounds %struct.GPR, %struct.GPR* %2391, i32 0, i32 33
  %2393 = getelementptr inbounds %struct.Reg, %struct.Reg* %2392, i32 0, i32 0
  %PC.i140 = bitcast %union.anon* %2393 to i64*
  %2394 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2395 = getelementptr inbounds %struct.GPR, %struct.GPR* %2394, i32 0, i32 1
  %2396 = getelementptr inbounds %struct.Reg, %struct.Reg* %2395, i32 0, i32 0
  %EAX.i141 = bitcast %union.anon* %2396 to i32*
  %2397 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2398 = getelementptr inbounds %struct.GPR, %struct.GPR* %2397, i32 0, i32 7
  %2399 = getelementptr inbounds %struct.Reg, %struct.Reg* %2398, i32 0, i32 0
  %EDX.i142 = bitcast %union.anon* %2399 to i32*
  %2400 = load i32, i32* %EDX.i142
  %2401 = zext i32 %2400 to i64
  %2402 = load i32, i32* %EAX.i141
  %2403 = zext i32 %2402 to i64
  %2404 = load i64, i64* %PC.i140
  %2405 = add i64 %2404, 2
  store i64 %2405, i64* %PC.i140
  %2406 = sub i32 %2400, %2402
  %2407 = icmp ult i32 %2400, %2402
  %2408 = zext i1 %2407 to i8
  %2409 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2408, i8* %2409, align 1
  %2410 = and i32 %2406, 255
  %2411 = call i32 @llvm.ctpop.i32(i32 %2410)
  %2412 = trunc i32 %2411 to i8
  %2413 = and i8 %2412, 1
  %2414 = xor i8 %2413, 1
  %2415 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2414, i8* %2415, align 1
  %2416 = xor i64 %2403, %2401
  %2417 = trunc i64 %2416 to i32
  %2418 = xor i32 %2417, %2406
  %2419 = lshr i32 %2418, 4
  %2420 = trunc i32 %2419 to i8
  %2421 = and i8 %2420, 1
  %2422 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2421, i8* %2422, align 1
  %2423 = icmp eq i32 %2406, 0
  %2424 = zext i1 %2423 to i8
  %2425 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2424, i8* %2425, align 1
  %2426 = lshr i32 %2406, 31
  %2427 = trunc i32 %2426 to i8
  %2428 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2427, i8* %2428, align 1
  %2429 = lshr i32 %2400, 31
  %2430 = lshr i32 %2402, 31
  %2431 = xor i32 %2430, %2429
  %2432 = xor i32 %2426, %2429
  %2433 = add i32 %2432, %2431
  %2434 = icmp eq i32 %2433, 2
  %2435 = zext i1 %2434 to i8
  %2436 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2435, i8* %2436, align 1
  store %struct.Memory* %loadMem_467c74, %struct.Memory** %MEMORY
  %loadMem_467c76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2437 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2438 = getelementptr inbounds %struct.GPR, %struct.GPR* %2437, i32 0, i32 33
  %2439 = getelementptr inbounds %struct.Reg, %struct.Reg* %2438, i32 0, i32 0
  %PC.i139 = bitcast %union.anon* %2439 to i64*
  %2440 = load i64, i64* %PC.i139
  %2441 = add i64 %2440, 11
  %2442 = load i64, i64* %PC.i139
  %2443 = add i64 %2442, 6
  %2444 = load i64, i64* %PC.i139
  %2445 = add i64 %2444, 6
  store i64 %2445, i64* %PC.i139
  %2446 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2447 = load i8, i8* %2446, align 1
  %2448 = icmp ne i8 %2447, 0
  %2449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2450 = load i8, i8* %2449, align 1
  %2451 = icmp ne i8 %2450, 0
  %2452 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2453 = load i8, i8* %2452, align 1
  %2454 = icmp ne i8 %2453, 0
  %2455 = xor i1 %2451, %2454
  %2456 = or i1 %2448, %2455
  %2457 = zext i1 %2456 to i8
  store i8 %2457, i8* %BRANCH_TAKEN, align 1
  %2458 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2459 = select i1 %2456, i64 %2441, i64 %2443
  store i64 %2459, i64* %2458, align 8
  store %struct.Memory* %loadMem_467c76, %struct.Memory** %MEMORY
  %loadBr_467c76 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467c76 = icmp eq i8 %loadBr_467c76, 1
  br i1 %cmpBr_467c76, label %block_.L_467c81, label %block_.L_467c7c

block_.L_467c7c:                                  ; preds = %block_467c59, %block_.L_467c42
  %loadMem_467c7c = load %struct.Memory*, %struct.Memory** %MEMORY
  %2460 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2461 = getelementptr inbounds %struct.GPR, %struct.GPR* %2460, i32 0, i32 33
  %2462 = getelementptr inbounds %struct.Reg, %struct.Reg* %2461, i32 0, i32 0
  %PC.i138 = bitcast %union.anon* %2462 to i64*
  %2463 = load i64, i64* %PC.i138
  %2464 = add i64 %2463, 217
  %2465 = load i64, i64* %PC.i138
  %2466 = add i64 %2465, 5
  store i64 %2466, i64* %PC.i138
  %2467 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2464, i64* %2467, align 8
  store %struct.Memory* %loadMem_467c7c, %struct.Memory** %MEMORY
  br label %block_.L_467d55

block_.L_467c81:                                  ; preds = %block_467c59
  %loadMem_467c81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2468 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2469 = getelementptr inbounds %struct.GPR, %struct.GPR* %2468, i32 0, i32 33
  %2470 = getelementptr inbounds %struct.Reg, %struct.Reg* %2469, i32 0, i32 0
  %PC.i137 = bitcast %union.anon* %2470 to i64*
  %2471 = load i64, i64* %PC.i137
  %2472 = add i64 %2471, 5
  %2473 = load i64, i64* %PC.i137
  %2474 = add i64 %2473, 5
  store i64 %2474, i64* %PC.i137
  %2475 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2472, i64* %2475, align 8
  store %struct.Memory* %loadMem_467c81, %struct.Memory** %MEMORY
  br label %block_.L_467c86

block_.L_467c86:                                  ; preds = %block_.L_467c81
  %loadMem_467c86 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2476 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2477 = getelementptr inbounds %struct.GPR, %struct.GPR* %2476, i32 0, i32 33
  %2478 = getelementptr inbounds %struct.Reg, %struct.Reg* %2477, i32 0, i32 0
  %PC.i135 = bitcast %union.anon* %2478 to i64*
  %2479 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2480 = getelementptr inbounds %struct.GPR, %struct.GPR* %2479, i32 0, i32 15
  %2481 = getelementptr inbounds %struct.Reg, %struct.Reg* %2480, i32 0, i32 0
  %RBP.i136 = bitcast %union.anon* %2481 to i64*
  %2482 = load i64, i64* %RBP.i136
  %2483 = sub i64 %2482, 76
  %2484 = load i64, i64* %PC.i135
  %2485 = add i64 %2484, 7
  store i64 %2485, i64* %PC.i135
  %2486 = inttoptr i64 %2483 to i32*
  store i32 0, i32* %2486
  store %struct.Memory* %loadMem_467c86, %struct.Memory** %MEMORY
  br label %block_.L_467c8d

block_.L_467c8d:                                  ; preds = %block_.L_467cd7, %block_.L_467c86
  %loadMem_467c8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %2487 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2488 = getelementptr inbounds %struct.GPR, %struct.GPR* %2487, i32 0, i32 33
  %2489 = getelementptr inbounds %struct.Reg, %struct.Reg* %2488, i32 0, i32 0
  %PC.i132 = bitcast %union.anon* %2489 to i64*
  %2490 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2491 = getelementptr inbounds %struct.GPR, %struct.GPR* %2490, i32 0, i32 1
  %2492 = getelementptr inbounds %struct.Reg, %struct.Reg* %2491, i32 0, i32 0
  %RAX.i133 = bitcast %union.anon* %2492 to i64*
  %2493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2494 = getelementptr inbounds %struct.GPR, %struct.GPR* %2493, i32 0, i32 15
  %2495 = getelementptr inbounds %struct.Reg, %struct.Reg* %2494, i32 0, i32 0
  %RBP.i134 = bitcast %union.anon* %2495 to i64*
  %2496 = load i64, i64* %RBP.i134
  %2497 = sub i64 %2496, 76
  %2498 = load i64, i64* %PC.i132
  %2499 = add i64 %2498, 3
  store i64 %2499, i64* %PC.i132
  %2500 = inttoptr i64 %2497 to i32*
  %2501 = load i32, i32* %2500
  %2502 = zext i32 %2501 to i64
  store i64 %2502, i64* %RAX.i133, align 8
  store %struct.Memory* %loadMem_467c8d, %struct.Memory** %MEMORY
  %loadMem_467c90 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2503 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2504 = getelementptr inbounds %struct.GPR, %struct.GPR* %2503, i32 0, i32 33
  %2505 = getelementptr inbounds %struct.Reg, %struct.Reg* %2504, i32 0, i32 0
  %PC.i129 = bitcast %union.anon* %2505 to i64*
  %2506 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2507 = getelementptr inbounds %struct.GPR, %struct.GPR* %2506, i32 0, i32 5
  %2508 = getelementptr inbounds %struct.Reg, %struct.Reg* %2507, i32 0, i32 0
  %RCX.i130 = bitcast %union.anon* %2508 to i64*
  %2509 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2510 = getelementptr inbounds %struct.GPR, %struct.GPR* %2509, i32 0, i32 15
  %2511 = getelementptr inbounds %struct.Reg, %struct.Reg* %2510, i32 0, i32 0
  %RBP.i131 = bitcast %union.anon* %2511 to i64*
  %2512 = load i64, i64* %RBP.i131
  %2513 = sub i64 %2512, 24
  %2514 = load i64, i64* %PC.i129
  %2515 = add i64 %2514, 4
  store i64 %2515, i64* %PC.i129
  %2516 = inttoptr i64 %2513 to i64*
  %2517 = load i64, i64* %2516
  store i64 %2517, i64* %RCX.i130, align 8
  store %struct.Memory* %loadMem_467c90, %struct.Memory** %MEMORY
  %loadMem_467c94 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2518 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2519 = getelementptr inbounds %struct.GPR, %struct.GPR* %2518, i32 0, i32 33
  %2520 = getelementptr inbounds %struct.Reg, %struct.Reg* %2519, i32 0, i32 0
  %PC.i126 = bitcast %union.anon* %2520 to i64*
  %2521 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2522 = getelementptr inbounds %struct.GPR, %struct.GPR* %2521, i32 0, i32 1
  %2523 = getelementptr inbounds %struct.Reg, %struct.Reg* %2522, i32 0, i32 0
  %EAX.i127 = bitcast %union.anon* %2523 to i32*
  %2524 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2525 = getelementptr inbounds %struct.GPR, %struct.GPR* %2524, i32 0, i32 5
  %2526 = getelementptr inbounds %struct.Reg, %struct.Reg* %2525, i32 0, i32 0
  %RCX.i128 = bitcast %union.anon* %2526 to i64*
  %2527 = load i32, i32* %EAX.i127
  %2528 = zext i32 %2527 to i64
  %2529 = load i64, i64* %RCX.i128
  %2530 = add i64 %2529, 400
  %2531 = load i64, i64* %PC.i126
  %2532 = add i64 %2531, 6
  store i64 %2532, i64* %PC.i126
  %2533 = inttoptr i64 %2530 to i32*
  %2534 = load i32, i32* %2533
  %2535 = sub i32 %2527, %2534
  %2536 = icmp ult i32 %2527, %2534
  %2537 = zext i1 %2536 to i8
  %2538 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2537, i8* %2538, align 1
  %2539 = and i32 %2535, 255
  %2540 = call i32 @llvm.ctpop.i32(i32 %2539)
  %2541 = trunc i32 %2540 to i8
  %2542 = and i8 %2541, 1
  %2543 = xor i8 %2542, 1
  %2544 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2543, i8* %2544, align 1
  %2545 = xor i32 %2534, %2527
  %2546 = xor i32 %2545, %2535
  %2547 = lshr i32 %2546, 4
  %2548 = trunc i32 %2547 to i8
  %2549 = and i8 %2548, 1
  %2550 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2549, i8* %2550, align 1
  %2551 = icmp eq i32 %2535, 0
  %2552 = zext i1 %2551 to i8
  %2553 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2552, i8* %2553, align 1
  %2554 = lshr i32 %2535, 31
  %2555 = trunc i32 %2554 to i8
  %2556 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2555, i8* %2556, align 1
  %2557 = lshr i32 %2527, 31
  %2558 = lshr i32 %2534, 31
  %2559 = xor i32 %2558, %2557
  %2560 = xor i32 %2554, %2557
  %2561 = add i32 %2560, %2559
  %2562 = icmp eq i32 %2561, 2
  %2563 = zext i1 %2562 to i8
  %2564 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2563, i8* %2564, align 1
  store %struct.Memory* %loadMem_467c94, %struct.Memory** %MEMORY
  %loadMem_467c9a = load %struct.Memory*, %struct.Memory** %MEMORY
  %2565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2566 = getelementptr inbounds %struct.GPR, %struct.GPR* %2565, i32 0, i32 33
  %2567 = getelementptr inbounds %struct.Reg, %struct.Reg* %2566, i32 0, i32 0
  %PC.i125 = bitcast %union.anon* %2567 to i64*
  %2568 = load i64, i64* %PC.i125
  %2569 = add i64 %2568, 75
  %2570 = load i64, i64* %PC.i125
  %2571 = add i64 %2570, 6
  %2572 = load i64, i64* %PC.i125
  %2573 = add i64 %2572, 6
  store i64 %2573, i64* %PC.i125
  %2574 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %2575 = load i8, i8* %2574, align 1
  %2576 = icmp ne i8 %2575, 0
  %2577 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %2578 = load i8, i8* %2577, align 1
  %2579 = icmp ne i8 %2578, 0
  %2580 = xor i1 %2576, %2579
  %2581 = xor i1 %2580, true
  %2582 = zext i1 %2581 to i8
  store i8 %2582, i8* %BRANCH_TAKEN, align 1
  %2583 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2584 = select i1 %2580, i64 %2571, i64 %2569
  store i64 %2584, i64* %2583, align 8
  store %struct.Memory* %loadMem_467c9a, %struct.Memory** %MEMORY
  %loadBr_467c9a = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467c9a = icmp eq i8 %loadBr_467c9a, 1
  br i1 %cmpBr_467c9a, label %block_.L_467ce5, label %block_467ca0

block_467ca0:                                     ; preds = %block_.L_467c8d
  %loadMem_467ca0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2585 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2586 = getelementptr inbounds %struct.GPR, %struct.GPR* %2585, i32 0, i32 33
  %2587 = getelementptr inbounds %struct.Reg, %struct.Reg* %2586, i32 0, i32 0
  %PC.i122 = bitcast %union.anon* %2587 to i64*
  %2588 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2589 = getelementptr inbounds %struct.GPR, %struct.GPR* %2588, i32 0, i32 1
  %2590 = getelementptr inbounds %struct.Reg, %struct.Reg* %2589, i32 0, i32 0
  %RAX.i123 = bitcast %union.anon* %2590 to i64*
  %2591 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2592 = getelementptr inbounds %struct.GPR, %struct.GPR* %2591, i32 0, i32 15
  %2593 = getelementptr inbounds %struct.Reg, %struct.Reg* %2592, i32 0, i32 0
  %RBP.i124 = bitcast %union.anon* %2593 to i64*
  %2594 = load i64, i64* %RBP.i124
  %2595 = sub i64 %2594, 24
  %2596 = load i64, i64* %PC.i122
  %2597 = add i64 %2596, 4
  store i64 %2597, i64* %PC.i122
  %2598 = inttoptr i64 %2595 to i64*
  %2599 = load i64, i64* %2598
  store i64 %2599, i64* %RAX.i123, align 8
  store %struct.Memory* %loadMem_467ca0, %struct.Memory** %MEMORY
  %loadMem_467ca4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2600 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2601 = getelementptr inbounds %struct.GPR, %struct.GPR* %2600, i32 0, i32 33
  %2602 = getelementptr inbounds %struct.Reg, %struct.Reg* %2601, i32 0, i32 0
  %PC.i119 = bitcast %union.anon* %2602 to i64*
  %2603 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2604 = getelementptr inbounds %struct.GPR, %struct.GPR* %2603, i32 0, i32 5
  %2605 = getelementptr inbounds %struct.Reg, %struct.Reg* %2604, i32 0, i32 0
  %RCX.i120 = bitcast %union.anon* %2605 to i64*
  %2606 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2607 = getelementptr inbounds %struct.GPR, %struct.GPR* %2606, i32 0, i32 15
  %2608 = getelementptr inbounds %struct.Reg, %struct.Reg* %2607, i32 0, i32 0
  %RBP.i121 = bitcast %union.anon* %2608 to i64*
  %2609 = load i64, i64* %RBP.i121
  %2610 = sub i64 %2609, 76
  %2611 = load i64, i64* %PC.i119
  %2612 = add i64 %2611, 4
  store i64 %2612, i64* %PC.i119
  %2613 = inttoptr i64 %2610 to i32*
  %2614 = load i32, i32* %2613
  %2615 = sext i32 %2614 to i64
  store i64 %2615, i64* %RCX.i120, align 8
  store %struct.Memory* %loadMem_467ca4, %struct.Memory** %MEMORY
  %loadMem_467ca8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2616 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2617 = getelementptr inbounds %struct.GPR, %struct.GPR* %2616, i32 0, i32 33
  %2618 = getelementptr inbounds %struct.Reg, %struct.Reg* %2617, i32 0, i32 0
  %PC.i115 = bitcast %union.anon* %2618 to i64*
  %2619 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2620 = getelementptr inbounds %struct.GPR, %struct.GPR* %2619, i32 0, i32 1
  %2621 = getelementptr inbounds %struct.Reg, %struct.Reg* %2620, i32 0, i32 0
  %RAX.i116 = bitcast %union.anon* %2621 to i64*
  %2622 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2623 = getelementptr inbounds %struct.GPR, %struct.GPR* %2622, i32 0, i32 5
  %2624 = getelementptr inbounds %struct.Reg, %struct.Reg* %2623, i32 0, i32 0
  %RCX.i117 = bitcast %union.anon* %2624 to i64*
  %2625 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2626 = getelementptr inbounds %struct.GPR, %struct.GPR* %2625, i32 0, i32 7
  %2627 = getelementptr inbounds %struct.Reg, %struct.Reg* %2626, i32 0, i32 0
  %RDX.i118 = bitcast %union.anon* %2627 to i64*
  %2628 = load i64, i64* %RAX.i116
  %2629 = load i64, i64* %RCX.i117
  %2630 = mul i64 %2629, 4
  %2631 = add i64 %2630, %2628
  %2632 = load i64, i64* %PC.i115
  %2633 = add i64 %2632, 3
  store i64 %2633, i64* %PC.i115
  %2634 = inttoptr i64 %2631 to i32*
  %2635 = load i32, i32* %2634
  %2636 = zext i32 %2635 to i64
  store i64 %2636, i64* %RDX.i118, align 8
  store %struct.Memory* %loadMem_467ca8, %struct.Memory** %MEMORY
  %loadMem_467cab = load %struct.Memory*, %struct.Memory** %MEMORY
  %2637 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2638 = getelementptr inbounds %struct.GPR, %struct.GPR* %2637, i32 0, i32 33
  %2639 = getelementptr inbounds %struct.Reg, %struct.Reg* %2638, i32 0, i32 0
  %PC.i112 = bitcast %union.anon* %2639 to i64*
  %2640 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2641 = getelementptr inbounds %struct.GPR, %struct.GPR* %2640, i32 0, i32 7
  %2642 = getelementptr inbounds %struct.Reg, %struct.Reg* %2641, i32 0, i32 0
  %EDX.i113 = bitcast %union.anon* %2642 to i32*
  %2643 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2644 = getelementptr inbounds %struct.GPR, %struct.GPR* %2643, i32 0, i32 15
  %2645 = getelementptr inbounds %struct.Reg, %struct.Reg* %2644, i32 0, i32 0
  %RBP.i114 = bitcast %union.anon* %2645 to i64*
  %2646 = load i32, i32* %EDX.i113
  %2647 = zext i32 %2646 to i64
  %2648 = load i64, i64* %RBP.i114
  %2649 = sub i64 %2648, 44
  %2650 = load i64, i64* %PC.i112
  %2651 = add i64 %2650, 3
  store i64 %2651, i64* %PC.i112
  %2652 = inttoptr i64 %2649 to i32*
  %2653 = load i32, i32* %2652
  %2654 = sub i32 %2646, %2653
  %2655 = icmp ult i32 %2646, %2653
  %2656 = zext i1 %2655 to i8
  %2657 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2656, i8* %2657, align 1
  %2658 = and i32 %2654, 255
  %2659 = call i32 @llvm.ctpop.i32(i32 %2658)
  %2660 = trunc i32 %2659 to i8
  %2661 = and i8 %2660, 1
  %2662 = xor i8 %2661, 1
  %2663 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2662, i8* %2663, align 1
  %2664 = xor i32 %2653, %2646
  %2665 = xor i32 %2664, %2654
  %2666 = lshr i32 %2665, 4
  %2667 = trunc i32 %2666 to i8
  %2668 = and i8 %2667, 1
  %2669 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2668, i8* %2669, align 1
  %2670 = icmp eq i32 %2654, 0
  %2671 = zext i1 %2670 to i8
  %2672 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2671, i8* %2672, align 1
  %2673 = lshr i32 %2654, 31
  %2674 = trunc i32 %2673 to i8
  %2675 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2674, i8* %2675, align 1
  %2676 = lshr i32 %2646, 31
  %2677 = lshr i32 %2653, 31
  %2678 = xor i32 %2677, %2676
  %2679 = xor i32 %2673, %2676
  %2680 = add i32 %2679, %2678
  %2681 = icmp eq i32 %2680, 2
  %2682 = zext i1 %2681 to i8
  %2683 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2682, i8* %2683, align 1
  store %struct.Memory* %loadMem_467cab, %struct.Memory** %MEMORY
  %loadMem_467cae = load %struct.Memory*, %struct.Memory** %MEMORY
  %2684 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2685 = getelementptr inbounds %struct.GPR, %struct.GPR* %2684, i32 0, i32 33
  %2686 = getelementptr inbounds %struct.Reg, %struct.Reg* %2685, i32 0, i32 0
  %PC.i111 = bitcast %union.anon* %2686 to i64*
  %2687 = load i64, i64* %PC.i111
  %2688 = add i64 %2687, 36
  %2689 = load i64, i64* %PC.i111
  %2690 = add i64 %2689, 6
  %2691 = load i64, i64* %PC.i111
  %2692 = add i64 %2691, 6
  store i64 %2692, i64* %PC.i111
  %2693 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2694 = load i8, i8* %2693, align 1
  %2695 = icmp eq i8 %2694, 0
  %2696 = zext i1 %2695 to i8
  store i8 %2696, i8* %BRANCH_TAKEN, align 1
  %2697 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %2698 = select i1 %2695, i64 %2688, i64 %2690
  store i64 %2698, i64* %2697, align 8
  store %struct.Memory* %loadMem_467cae, %struct.Memory** %MEMORY
  %loadBr_467cae = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467cae = icmp eq i8 %loadBr_467cae, 1
  br i1 %cmpBr_467cae, label %block_.L_467cd2, label %block_467cb4

block_467cb4:                                     ; preds = %block_467ca0
  %loadMem_467cb4 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2699 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2700 = getelementptr inbounds %struct.GPR, %struct.GPR* %2699, i32 0, i32 33
  %2701 = getelementptr inbounds %struct.Reg, %struct.Reg* %2700, i32 0, i32 0
  %PC.i108 = bitcast %union.anon* %2701 to i64*
  %2702 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2703 = getelementptr inbounds %struct.GPR, %struct.GPR* %2702, i32 0, i32 1
  %2704 = getelementptr inbounds %struct.Reg, %struct.Reg* %2703, i32 0, i32 0
  %RAX.i109 = bitcast %union.anon* %2704 to i64*
  %2705 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2706 = getelementptr inbounds %struct.GPR, %struct.GPR* %2705, i32 0, i32 15
  %2707 = getelementptr inbounds %struct.Reg, %struct.Reg* %2706, i32 0, i32 0
  %RBP.i110 = bitcast %union.anon* %2707 to i64*
  %2708 = load i64, i64* %RBP.i110
  %2709 = sub i64 %2708, 24
  %2710 = load i64, i64* %PC.i108
  %2711 = add i64 %2710, 4
  store i64 %2711, i64* %PC.i108
  %2712 = inttoptr i64 %2709 to i64*
  %2713 = load i64, i64* %2712
  store i64 %2713, i64* %RAX.i109, align 8
  store %struct.Memory* %loadMem_467cb4, %struct.Memory** %MEMORY
  %loadMem_467cb8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2714 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2715 = getelementptr inbounds %struct.GPR, %struct.GPR* %2714, i32 0, i32 33
  %2716 = getelementptr inbounds %struct.Reg, %struct.Reg* %2715, i32 0, i32 0
  %PC.i105 = bitcast %union.anon* %2716 to i64*
  %2717 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2718 = getelementptr inbounds %struct.GPR, %struct.GPR* %2717, i32 0, i32 5
  %2719 = getelementptr inbounds %struct.Reg, %struct.Reg* %2718, i32 0, i32 0
  %RCX.i106 = bitcast %union.anon* %2719 to i64*
  %2720 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2721 = getelementptr inbounds %struct.GPR, %struct.GPR* %2720, i32 0, i32 15
  %2722 = getelementptr inbounds %struct.Reg, %struct.Reg* %2721, i32 0, i32 0
  %RBP.i107 = bitcast %union.anon* %2722 to i64*
  %2723 = load i64, i64* %RBP.i107
  %2724 = sub i64 %2723, 76
  %2725 = load i64, i64* %PC.i105
  %2726 = add i64 %2725, 4
  store i64 %2726, i64* %PC.i105
  %2727 = inttoptr i64 %2724 to i32*
  %2728 = load i32, i32* %2727
  %2729 = sext i32 %2728 to i64
  store i64 %2729, i64* %RCX.i106, align 8
  store %struct.Memory* %loadMem_467cb8, %struct.Memory** %MEMORY
  %loadMem_467cbc = load %struct.Memory*, %struct.Memory** %MEMORY
  %2730 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2731 = getelementptr inbounds %struct.GPR, %struct.GPR* %2730, i32 0, i32 33
  %2732 = getelementptr inbounds %struct.Reg, %struct.Reg* %2731, i32 0, i32 0
  %PC.i101 = bitcast %union.anon* %2732 to i64*
  %2733 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2734 = getelementptr inbounds %struct.GPR, %struct.GPR* %2733, i32 0, i32 1
  %2735 = getelementptr inbounds %struct.Reg, %struct.Reg* %2734, i32 0, i32 0
  %RAX.i102 = bitcast %union.anon* %2735 to i64*
  %2736 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2737 = getelementptr inbounds %struct.GPR, %struct.GPR* %2736, i32 0, i32 5
  %2738 = getelementptr inbounds %struct.Reg, %struct.Reg* %2737, i32 0, i32 0
  %RCX.i103 = bitcast %union.anon* %2738 to i64*
  %2739 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2740 = getelementptr inbounds %struct.GPR, %struct.GPR* %2739, i32 0, i32 7
  %2741 = getelementptr inbounds %struct.Reg, %struct.Reg* %2740, i32 0, i32 0
  %RDX.i104 = bitcast %union.anon* %2741 to i64*
  %2742 = load i64, i64* %RAX.i102
  %2743 = load i64, i64* %RCX.i103
  %2744 = mul i64 %2743, 4
  %2745 = add i64 %2742, 200
  %2746 = add i64 %2745, %2744
  %2747 = load i64, i64* %PC.i101
  %2748 = add i64 %2747, 7
  store i64 %2748, i64* %PC.i101
  %2749 = inttoptr i64 %2746 to i32*
  %2750 = load i32, i32* %2749
  %2751 = zext i32 %2750 to i64
  store i64 %2751, i64* %RDX.i104, align 8
  store %struct.Memory* %loadMem_467cbc, %struct.Memory** %MEMORY
  %loadMem_467cc3 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2752 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2753 = getelementptr inbounds %struct.GPR, %struct.GPR* %2752, i32 0, i32 33
  %2754 = getelementptr inbounds %struct.Reg, %struct.Reg* %2753, i32 0, i32 0
  %PC.i99 = bitcast %union.anon* %2754 to i64*
  %2755 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2756 = getelementptr inbounds %struct.GPR, %struct.GPR* %2755, i32 0, i32 7
  %2757 = getelementptr inbounds %struct.Reg, %struct.Reg* %2756, i32 0, i32 0
  %RDX.i100 = bitcast %union.anon* %2757 to i64*
  %2758 = load i64, i64* %RDX.i100
  %2759 = load i64, i64* %PC.i99
  %2760 = add i64 %2759, 3
  store i64 %2760, i64* %PC.i99
  %2761 = trunc i64 %2758 to i32
  %2762 = zext i32 %2761 to i64
  store i64 %2762, i64* %RDX.i100, align 8
  %2763 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %2763, align 1
  %2764 = and i32 %2761, 255
  %2765 = call i32 @llvm.ctpop.i32(i32 %2764)
  %2766 = trunc i32 %2765 to i8
  %2767 = and i8 %2766, 1
  %2768 = xor i8 %2767, 1
  %2769 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2768, i8* %2769, align 1
  %2770 = trunc i64 %2758 to i32
  %2771 = xor i32 %2770, %2761
  %2772 = lshr i32 %2771, 4
  %2773 = trunc i32 %2772 to i8
  %2774 = and i8 %2773, 1
  %2775 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2774, i8* %2775, align 1
  %2776 = icmp eq i32 %2761, 0
  %2777 = zext i1 %2776 to i8
  %2778 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2777, i8* %2778, align 1
  %2779 = lshr i32 %2761, 31
  %2780 = trunc i32 %2779 to i8
  %2781 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2780, i8* %2781, align 1
  %2782 = lshr i32 %2761, 31
  %2783 = xor i32 %2779, %2782
  %2784 = add i32 %2783, %2779
  %2785 = icmp eq i32 %2784, 2
  %2786 = zext i1 %2785 to i8
  %2787 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2786, i8* %2787, align 1
  store %struct.Memory* %loadMem_467cc3, %struct.Memory** %MEMORY
  %loadMem_467cc6 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2788 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2789 = getelementptr inbounds %struct.GPR, %struct.GPR* %2788, i32 0, i32 33
  %2790 = getelementptr inbounds %struct.Reg, %struct.Reg* %2789, i32 0, i32 0
  %PC.i96 = bitcast %union.anon* %2790 to i64*
  %2791 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2792 = getelementptr inbounds %struct.GPR, %struct.GPR* %2791, i32 0, i32 7
  %2793 = getelementptr inbounds %struct.Reg, %struct.Reg* %2792, i32 0, i32 0
  %EDX.i = bitcast %union.anon* %2793 to i32*
  %2794 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2795 = getelementptr inbounds %struct.GPR, %struct.GPR* %2794, i32 0, i32 1
  %2796 = getelementptr inbounds %struct.Reg, %struct.Reg* %2795, i32 0, i32 0
  %RAX.i97 = bitcast %union.anon* %2796 to i64*
  %2797 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2798 = getelementptr inbounds %struct.GPR, %struct.GPR* %2797, i32 0, i32 5
  %2799 = getelementptr inbounds %struct.Reg, %struct.Reg* %2798, i32 0, i32 0
  %RCX.i98 = bitcast %union.anon* %2799 to i64*
  %2800 = load i64, i64* %RAX.i97
  %2801 = load i64, i64* %RCX.i98
  %2802 = mul i64 %2801, 4
  %2803 = add i64 %2800, 200
  %2804 = add i64 %2803, %2802
  %2805 = load i32, i32* %EDX.i
  %2806 = zext i32 %2805 to i64
  %2807 = load i64, i64* %PC.i96
  %2808 = add i64 %2807, 7
  store i64 %2808, i64* %PC.i96
  %2809 = inttoptr i64 %2804 to i32*
  store i32 %2805, i32* %2809
  store %struct.Memory* %loadMem_467cc6, %struct.Memory** %MEMORY
  %loadMem_467ccd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2810 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2811 = getelementptr inbounds %struct.GPR, %struct.GPR* %2810, i32 0, i32 33
  %2812 = getelementptr inbounds %struct.Reg, %struct.Reg* %2811, i32 0, i32 0
  %PC.i95 = bitcast %union.anon* %2812 to i64*
  %2813 = load i64, i64* %PC.i95
  %2814 = add i64 %2813, 24
  %2815 = load i64, i64* %PC.i95
  %2816 = add i64 %2815, 5
  store i64 %2816, i64* %PC.i95
  %2817 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2814, i64* %2817, align 8
  store %struct.Memory* %loadMem_467ccd, %struct.Memory** %MEMORY
  br label %block_.L_467ce5

block_.L_467cd2:                                  ; preds = %block_467ca0
  %loadMem_467cd2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2818 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2819 = getelementptr inbounds %struct.GPR, %struct.GPR* %2818, i32 0, i32 33
  %2820 = getelementptr inbounds %struct.Reg, %struct.Reg* %2819, i32 0, i32 0
  %PC.i94 = bitcast %union.anon* %2820 to i64*
  %2821 = load i64, i64* %PC.i94
  %2822 = add i64 %2821, 5
  %2823 = load i64, i64* %PC.i94
  %2824 = add i64 %2823, 5
  store i64 %2824, i64* %PC.i94
  %2825 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2822, i64* %2825, align 8
  store %struct.Memory* %loadMem_467cd2, %struct.Memory** %MEMORY
  br label %block_.L_467cd7

block_.L_467cd7:                                  ; preds = %block_.L_467cd2
  %loadMem_467cd7 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2826 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2827 = getelementptr inbounds %struct.GPR, %struct.GPR* %2826, i32 0, i32 33
  %2828 = getelementptr inbounds %struct.Reg, %struct.Reg* %2827, i32 0, i32 0
  %PC.i91 = bitcast %union.anon* %2828 to i64*
  %2829 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2830 = getelementptr inbounds %struct.GPR, %struct.GPR* %2829, i32 0, i32 1
  %2831 = getelementptr inbounds %struct.Reg, %struct.Reg* %2830, i32 0, i32 0
  %RAX.i92 = bitcast %union.anon* %2831 to i64*
  %2832 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2833 = getelementptr inbounds %struct.GPR, %struct.GPR* %2832, i32 0, i32 15
  %2834 = getelementptr inbounds %struct.Reg, %struct.Reg* %2833, i32 0, i32 0
  %RBP.i93 = bitcast %union.anon* %2834 to i64*
  %2835 = load i64, i64* %RBP.i93
  %2836 = sub i64 %2835, 76
  %2837 = load i64, i64* %PC.i91
  %2838 = add i64 %2837, 3
  store i64 %2838, i64* %PC.i91
  %2839 = inttoptr i64 %2836 to i32*
  %2840 = load i32, i32* %2839
  %2841 = zext i32 %2840 to i64
  store i64 %2841, i64* %RAX.i92, align 8
  store %struct.Memory* %loadMem_467cd7, %struct.Memory** %MEMORY
  %loadMem_467cda = load %struct.Memory*, %struct.Memory** %MEMORY
  %2842 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2843 = getelementptr inbounds %struct.GPR, %struct.GPR* %2842, i32 0, i32 33
  %2844 = getelementptr inbounds %struct.Reg, %struct.Reg* %2843, i32 0, i32 0
  %PC.i89 = bitcast %union.anon* %2844 to i64*
  %2845 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2846 = getelementptr inbounds %struct.GPR, %struct.GPR* %2845, i32 0, i32 1
  %2847 = getelementptr inbounds %struct.Reg, %struct.Reg* %2846, i32 0, i32 0
  %RAX.i90 = bitcast %union.anon* %2847 to i64*
  %2848 = load i64, i64* %RAX.i90
  %2849 = load i64, i64* %PC.i89
  %2850 = add i64 %2849, 3
  store i64 %2850, i64* %PC.i89
  %2851 = trunc i64 %2848 to i32
  %2852 = add i32 1, %2851
  %2853 = zext i32 %2852 to i64
  store i64 %2853, i64* %RAX.i90, align 8
  %2854 = icmp ult i32 %2852, %2851
  %2855 = icmp ult i32 %2852, 1
  %2856 = or i1 %2854, %2855
  %2857 = zext i1 %2856 to i8
  %2858 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2857, i8* %2858, align 1
  %2859 = and i32 %2852, 255
  %2860 = call i32 @llvm.ctpop.i32(i32 %2859)
  %2861 = trunc i32 %2860 to i8
  %2862 = and i8 %2861, 1
  %2863 = xor i8 %2862, 1
  %2864 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2863, i8* %2864, align 1
  %2865 = xor i64 1, %2848
  %2866 = trunc i64 %2865 to i32
  %2867 = xor i32 %2866, %2852
  %2868 = lshr i32 %2867, 4
  %2869 = trunc i32 %2868 to i8
  %2870 = and i8 %2869, 1
  %2871 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2870, i8* %2871, align 1
  %2872 = icmp eq i32 %2852, 0
  %2873 = zext i1 %2872 to i8
  %2874 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2873, i8* %2874, align 1
  %2875 = lshr i32 %2852, 31
  %2876 = trunc i32 %2875 to i8
  %2877 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2876, i8* %2877, align 1
  %2878 = lshr i32 %2851, 31
  %2879 = xor i32 %2875, %2878
  %2880 = add i32 %2879, %2875
  %2881 = icmp eq i32 %2880, 2
  %2882 = zext i1 %2881 to i8
  %2883 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2882, i8* %2883, align 1
  store %struct.Memory* %loadMem_467cda, %struct.Memory** %MEMORY
  %loadMem_467cdd = load %struct.Memory*, %struct.Memory** %MEMORY
  %2884 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2885 = getelementptr inbounds %struct.GPR, %struct.GPR* %2884, i32 0, i32 33
  %2886 = getelementptr inbounds %struct.Reg, %struct.Reg* %2885, i32 0, i32 0
  %PC.i86 = bitcast %union.anon* %2886 to i64*
  %2887 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2888 = getelementptr inbounds %struct.GPR, %struct.GPR* %2887, i32 0, i32 1
  %2889 = getelementptr inbounds %struct.Reg, %struct.Reg* %2888, i32 0, i32 0
  %EAX.i87 = bitcast %union.anon* %2889 to i32*
  %2890 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2891 = getelementptr inbounds %struct.GPR, %struct.GPR* %2890, i32 0, i32 15
  %2892 = getelementptr inbounds %struct.Reg, %struct.Reg* %2891, i32 0, i32 0
  %RBP.i88 = bitcast %union.anon* %2892 to i64*
  %2893 = load i64, i64* %RBP.i88
  %2894 = sub i64 %2893, 76
  %2895 = load i32, i32* %EAX.i87
  %2896 = zext i32 %2895 to i64
  %2897 = load i64, i64* %PC.i86
  %2898 = add i64 %2897, 3
  store i64 %2898, i64* %PC.i86
  %2899 = inttoptr i64 %2894 to i32*
  store i32 %2895, i32* %2899
  store %struct.Memory* %loadMem_467cdd, %struct.Memory** %MEMORY
  %loadMem_467ce0 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2900 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2901 = getelementptr inbounds %struct.GPR, %struct.GPR* %2900, i32 0, i32 33
  %2902 = getelementptr inbounds %struct.Reg, %struct.Reg* %2901, i32 0, i32 0
  %PC.i85 = bitcast %union.anon* %2902 to i64*
  %2903 = load i64, i64* %PC.i85
  %2904 = add i64 %2903, -83
  %2905 = load i64, i64* %PC.i85
  %2906 = add i64 %2905, 5
  store i64 %2906, i64* %PC.i85
  %2907 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %2904, i64* %2907, align 8
  store %struct.Memory* %loadMem_467ce0, %struct.Memory** %MEMORY
  br label %block_.L_467c8d

block_.L_467ce5:                                  ; preds = %block_467cb4, %block_.L_467c8d
  %loadMem_467ce5 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2908 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2909 = getelementptr inbounds %struct.GPR, %struct.GPR* %2908, i32 0, i32 33
  %2910 = getelementptr inbounds %struct.Reg, %struct.Reg* %2909, i32 0, i32 0
  %PC.i82 = bitcast %union.anon* %2910 to i64*
  %2911 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2912 = getelementptr inbounds %struct.GPR, %struct.GPR* %2911, i32 0, i32 1
  %2913 = getelementptr inbounds %struct.Reg, %struct.Reg* %2912, i32 0, i32 0
  %RAX.i83 = bitcast %union.anon* %2913 to i64*
  %2914 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2915 = getelementptr inbounds %struct.GPR, %struct.GPR* %2914, i32 0, i32 15
  %2916 = getelementptr inbounds %struct.Reg, %struct.Reg* %2915, i32 0, i32 0
  %RBP.i84 = bitcast %union.anon* %2916 to i64*
  %2917 = load i64, i64* %RBP.i84
  %2918 = sub i64 %2917, 76
  %2919 = load i64, i64* %PC.i82
  %2920 = add i64 %2919, 3
  store i64 %2920, i64* %PC.i82
  %2921 = inttoptr i64 %2918 to i32*
  %2922 = load i32, i32* %2921
  %2923 = zext i32 %2922 to i64
  store i64 %2923, i64* %RAX.i83, align 8
  store %struct.Memory* %loadMem_467ce5, %struct.Memory** %MEMORY
  %loadMem_467ce8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2924 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2925 = getelementptr inbounds %struct.GPR, %struct.GPR* %2924, i32 0, i32 33
  %2926 = getelementptr inbounds %struct.Reg, %struct.Reg* %2925, i32 0, i32 0
  %PC.i79 = bitcast %union.anon* %2926 to i64*
  %2927 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2928 = getelementptr inbounds %struct.GPR, %struct.GPR* %2927, i32 0, i32 5
  %2929 = getelementptr inbounds %struct.Reg, %struct.Reg* %2928, i32 0, i32 0
  %RCX.i80 = bitcast %union.anon* %2929 to i64*
  %2930 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2931 = getelementptr inbounds %struct.GPR, %struct.GPR* %2930, i32 0, i32 15
  %2932 = getelementptr inbounds %struct.Reg, %struct.Reg* %2931, i32 0, i32 0
  %RBP.i81 = bitcast %union.anon* %2932 to i64*
  %2933 = load i64, i64* %RBP.i81
  %2934 = sub i64 %2933, 24
  %2935 = load i64, i64* %PC.i79
  %2936 = add i64 %2935, 4
  store i64 %2936, i64* %PC.i79
  %2937 = inttoptr i64 %2934 to i64*
  %2938 = load i64, i64* %2937
  store i64 %2938, i64* %RCX.i80, align 8
  store %struct.Memory* %loadMem_467ce8, %struct.Memory** %MEMORY
  %loadMem_467cec = load %struct.Memory*, %struct.Memory** %MEMORY
  %2939 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2940 = getelementptr inbounds %struct.GPR, %struct.GPR* %2939, i32 0, i32 33
  %2941 = getelementptr inbounds %struct.Reg, %struct.Reg* %2940, i32 0, i32 0
  %PC.i76 = bitcast %union.anon* %2941 to i64*
  %2942 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2943 = getelementptr inbounds %struct.GPR, %struct.GPR* %2942, i32 0, i32 1
  %2944 = getelementptr inbounds %struct.Reg, %struct.Reg* %2943, i32 0, i32 0
  %EAX.i77 = bitcast %union.anon* %2944 to i32*
  %2945 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2946 = getelementptr inbounds %struct.GPR, %struct.GPR* %2945, i32 0, i32 5
  %2947 = getelementptr inbounds %struct.Reg, %struct.Reg* %2946, i32 0, i32 0
  %RCX.i78 = bitcast %union.anon* %2947 to i64*
  %2948 = load i32, i32* %EAX.i77
  %2949 = zext i32 %2948 to i64
  %2950 = load i64, i64* %RCX.i78
  %2951 = add i64 %2950, 400
  %2952 = load i64, i64* %PC.i76
  %2953 = add i64 %2952, 6
  store i64 %2953, i64* %PC.i76
  %2954 = inttoptr i64 %2951 to i32*
  %2955 = load i32, i32* %2954
  %2956 = sub i32 %2948, %2955
  %2957 = icmp ult i32 %2948, %2955
  %2958 = zext i1 %2957 to i8
  %2959 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %2958, i8* %2959, align 1
  %2960 = and i32 %2956, 255
  %2961 = call i32 @llvm.ctpop.i32(i32 %2960)
  %2962 = trunc i32 %2961 to i8
  %2963 = and i8 %2962, 1
  %2964 = xor i8 %2963, 1
  %2965 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %2964, i8* %2965, align 1
  %2966 = xor i32 %2955, %2948
  %2967 = xor i32 %2966, %2956
  %2968 = lshr i32 %2967, 4
  %2969 = trunc i32 %2968 to i8
  %2970 = and i8 %2969, 1
  %2971 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %2970, i8* %2971, align 1
  %2972 = icmp eq i32 %2956, 0
  %2973 = zext i1 %2972 to i8
  %2974 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %2973, i8* %2974, align 1
  %2975 = lshr i32 %2956, 31
  %2976 = trunc i32 %2975 to i8
  %2977 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %2976, i8* %2977, align 1
  %2978 = lshr i32 %2948, 31
  %2979 = lshr i32 %2955, 31
  %2980 = xor i32 %2979, %2978
  %2981 = xor i32 %2975, %2978
  %2982 = add i32 %2981, %2980
  %2983 = icmp eq i32 %2982, 2
  %2984 = zext i1 %2983 to i8
  %2985 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %2984, i8* %2985, align 1
  store %struct.Memory* %loadMem_467cec, %struct.Memory** %MEMORY
  %loadMem_467cf2 = load %struct.Memory*, %struct.Memory** %MEMORY
  %2986 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %2987 = getelementptr inbounds %struct.GPR, %struct.GPR* %2986, i32 0, i32 33
  %2988 = getelementptr inbounds %struct.Reg, %struct.Reg* %2987, i32 0, i32 0
  %PC.i75 = bitcast %union.anon* %2988 to i64*
  %2989 = load i64, i64* %PC.i75
  %2990 = add i64 %2989, 89
  %2991 = load i64, i64* %PC.i75
  %2992 = add i64 %2991, 6
  %2993 = load i64, i64* %PC.i75
  %2994 = add i64 %2993, 6
  store i64 %2994, i64* %PC.i75
  %2995 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %2996 = load i8, i8* %2995, align 1
  %2997 = icmp eq i8 %2996, 0
  %2998 = zext i1 %2997 to i8
  store i8 %2998, i8* %BRANCH_TAKEN, align 1
  %2999 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3000 = select i1 %2997, i64 %2990, i64 %2992
  store i64 %3000, i64* %2999, align 8
  store %struct.Memory* %loadMem_467cf2, %struct.Memory** %MEMORY
  %loadBr_467cf2 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467cf2 = icmp eq i8 %loadBr_467cf2, 1
  br i1 %cmpBr_467cf2, label %block_.L_467d4b, label %block_467cf8

block_467cf8:                                     ; preds = %block_.L_467ce5
  %loadMem_467cf8 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3001 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3002 = getelementptr inbounds %struct.GPR, %struct.GPR* %3001, i32 0, i32 33
  %3003 = getelementptr inbounds %struct.Reg, %struct.Reg* %3002, i32 0, i32 0
  %PC.i72 = bitcast %union.anon* %3003 to i64*
  %3004 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3005 = getelementptr inbounds %struct.GPR, %struct.GPR* %3004, i32 0, i32 1
  %3006 = getelementptr inbounds %struct.Reg, %struct.Reg* %3005, i32 0, i32 0
  %RAX.i73 = bitcast %union.anon* %3006 to i64*
  %3007 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3008 = getelementptr inbounds %struct.GPR, %struct.GPR* %3007, i32 0, i32 15
  %3009 = getelementptr inbounds %struct.Reg, %struct.Reg* %3008, i32 0, i32 0
  %RBP.i74 = bitcast %union.anon* %3009 to i64*
  %3010 = load i64, i64* %RBP.i74
  %3011 = sub i64 %3010, 24
  %3012 = load i64, i64* %PC.i72
  %3013 = add i64 %3012, 4
  store i64 %3013, i64* %PC.i72
  %3014 = inttoptr i64 %3011 to i64*
  %3015 = load i64, i64* %3014
  store i64 %3015, i64* %RAX.i73, align 8
  store %struct.Memory* %loadMem_467cf8, %struct.Memory** %MEMORY
  %loadMem_467cfc = load %struct.Memory*, %struct.Memory** %MEMORY
  %3016 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3017 = getelementptr inbounds %struct.GPR, %struct.GPR* %3016, i32 0, i32 33
  %3018 = getelementptr inbounds %struct.Reg, %struct.Reg* %3017, i32 0, i32 0
  %PC.i70 = bitcast %union.anon* %3018 to i64*
  %3019 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3020 = getelementptr inbounds %struct.GPR, %struct.GPR* %3019, i32 0, i32 1
  %3021 = getelementptr inbounds %struct.Reg, %struct.Reg* %3020, i32 0, i32 0
  %RAX.i71 = bitcast %union.anon* %3021 to i64*
  %3022 = load i64, i64* %RAX.i71
  %3023 = add i64 %3022, 400
  %3024 = load i64, i64* %PC.i70
  %3025 = add i64 %3024, 7
  store i64 %3025, i64* %PC.i70
  %3026 = inttoptr i64 %3023 to i32*
  %3027 = load i32, i32* %3026
  %3028 = sub i32 %3027, 50
  %3029 = icmp ult i32 %3027, 50
  %3030 = zext i1 %3029 to i8
  %3031 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3030, i8* %3031, align 1
  %3032 = and i32 %3028, 255
  %3033 = call i32 @llvm.ctpop.i32(i32 %3032)
  %3034 = trunc i32 %3033 to i8
  %3035 = and i8 %3034, 1
  %3036 = xor i8 %3035, 1
  %3037 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3036, i8* %3037, align 1
  %3038 = xor i32 %3027, 50
  %3039 = xor i32 %3038, %3028
  %3040 = lshr i32 %3039, 4
  %3041 = trunc i32 %3040 to i8
  %3042 = and i8 %3041, 1
  %3043 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3042, i8* %3043, align 1
  %3044 = icmp eq i32 %3028, 0
  %3045 = zext i1 %3044 to i8
  %3046 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3045, i8* %3046, align 1
  %3047 = lshr i32 %3028, 31
  %3048 = trunc i32 %3047 to i8
  %3049 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3048, i8* %3049, align 1
  %3050 = lshr i32 %3027, 31
  %3051 = xor i32 %3047, %3050
  %3052 = add i32 %3051, %3050
  %3053 = icmp eq i32 %3052, 2
  %3054 = zext i1 %3053 to i8
  %3055 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3054, i8* %3055, align 1
  store %struct.Memory* %loadMem_467cfc, %struct.Memory** %MEMORY
  %loadMem_467d03 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3056 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3057 = getelementptr inbounds %struct.GPR, %struct.GPR* %3056, i32 0, i32 33
  %3058 = getelementptr inbounds %struct.Reg, %struct.Reg* %3057, i32 0, i32 0
  %PC.i69 = bitcast %union.anon* %3058 to i64*
  %3059 = load i64, i64* %PC.i69
  %3060 = add i64 %3059, 72
  %3061 = load i64, i64* %PC.i69
  %3062 = add i64 %3061, 6
  %3063 = load i64, i64* %PC.i69
  %3064 = add i64 %3063, 6
  store i64 %3064, i64* %PC.i69
  %3065 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %3066 = load i8, i8* %3065, align 1
  %3067 = icmp ne i8 %3066, 0
  %3068 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %3069 = load i8, i8* %3068, align 1
  %3070 = icmp ne i8 %3069, 0
  %3071 = xor i1 %3067, %3070
  %3072 = xor i1 %3071, true
  %3073 = zext i1 %3072 to i8
  store i8 %3073, i8* %BRANCH_TAKEN, align 1
  %3074 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3075 = select i1 %3071, i64 %3062, i64 %3060
  store i64 %3075, i64* %3074, align 8
  store %struct.Memory* %loadMem_467d03, %struct.Memory** %MEMORY
  %loadBr_467d03 = load i8, i8* %BRANCH_TAKEN
  %cmpBr_467d03 = icmp eq i8 %loadBr_467d03, 1
  br i1 %cmpBr_467d03, label %block_.L_467d4b, label %block_467d09

block_467d09:                                     ; preds = %block_467cf8
  %loadMem_467d09 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3076 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3077 = getelementptr inbounds %struct.GPR, %struct.GPR* %3076, i32 0, i32 33
  %3078 = getelementptr inbounds %struct.Reg, %struct.Reg* %3077, i32 0, i32 0
  %PC.i66 = bitcast %union.anon* %3078 to i64*
  %3079 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3080 = getelementptr inbounds %struct.GPR, %struct.GPR* %3079, i32 0, i32 1
  %3081 = getelementptr inbounds %struct.Reg, %struct.Reg* %3080, i32 0, i32 0
  %RAX.i67 = bitcast %union.anon* %3081 to i64*
  %3082 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3083 = getelementptr inbounds %struct.GPR, %struct.GPR* %3082, i32 0, i32 15
  %3084 = getelementptr inbounds %struct.Reg, %struct.Reg* %3083, i32 0, i32 0
  %RBP.i68 = bitcast %union.anon* %3084 to i64*
  %3085 = load i64, i64* %RBP.i68
  %3086 = sub i64 %3085, 44
  %3087 = load i64, i64* %PC.i66
  %3088 = add i64 %3087, 3
  store i64 %3088, i64* %PC.i66
  %3089 = inttoptr i64 %3086 to i32*
  %3090 = load i32, i32* %3089
  %3091 = zext i32 %3090 to i64
  store i64 %3091, i64* %RAX.i67, align 8
  store %struct.Memory* %loadMem_467d09, %struct.Memory** %MEMORY
  %loadMem_467d0c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3092 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3093 = getelementptr inbounds %struct.GPR, %struct.GPR* %3092, i32 0, i32 33
  %3094 = getelementptr inbounds %struct.Reg, %struct.Reg* %3093, i32 0, i32 0
  %PC.i63 = bitcast %union.anon* %3094 to i64*
  %3095 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3096 = getelementptr inbounds %struct.GPR, %struct.GPR* %3095, i32 0, i32 5
  %3097 = getelementptr inbounds %struct.Reg, %struct.Reg* %3096, i32 0, i32 0
  %RCX.i64 = bitcast %union.anon* %3097 to i64*
  %3098 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3099 = getelementptr inbounds %struct.GPR, %struct.GPR* %3098, i32 0, i32 15
  %3100 = getelementptr inbounds %struct.Reg, %struct.Reg* %3099, i32 0, i32 0
  %RBP.i65 = bitcast %union.anon* %3100 to i64*
  %3101 = load i64, i64* %RBP.i65
  %3102 = sub i64 %3101, 24
  %3103 = load i64, i64* %PC.i63
  %3104 = add i64 %3103, 4
  store i64 %3104, i64* %PC.i63
  %3105 = inttoptr i64 %3102 to i64*
  %3106 = load i64, i64* %3105
  store i64 %3106, i64* %RCX.i64, align 8
  store %struct.Memory* %loadMem_467d0c, %struct.Memory** %MEMORY
  %loadMem_467d10 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3107 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3108 = getelementptr inbounds %struct.GPR, %struct.GPR* %3107, i32 0, i32 33
  %3109 = getelementptr inbounds %struct.Reg, %struct.Reg* %3108, i32 0, i32 0
  %PC.i60 = bitcast %union.anon* %3109 to i64*
  %3110 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3111 = getelementptr inbounds %struct.GPR, %struct.GPR* %3110, i32 0, i32 7
  %3112 = getelementptr inbounds %struct.Reg, %struct.Reg* %3111, i32 0, i32 0
  %RDX.i61 = bitcast %union.anon* %3112 to i64*
  %3113 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3114 = getelementptr inbounds %struct.GPR, %struct.GPR* %3113, i32 0, i32 15
  %3115 = getelementptr inbounds %struct.Reg, %struct.Reg* %3114, i32 0, i32 0
  %RBP.i62 = bitcast %union.anon* %3115 to i64*
  %3116 = load i64, i64* %RBP.i62
  %3117 = sub i64 %3116, 24
  %3118 = load i64, i64* %PC.i60
  %3119 = add i64 %3118, 4
  store i64 %3119, i64* %PC.i60
  %3120 = inttoptr i64 %3117 to i64*
  %3121 = load i64, i64* %3120
  store i64 %3121, i64* %RDX.i61, align 8
  store %struct.Memory* %loadMem_467d10, %struct.Memory** %MEMORY
  %loadMem_467d14 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3122 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3123 = getelementptr inbounds %struct.GPR, %struct.GPR* %3122, i32 0, i32 33
  %3124 = getelementptr inbounds %struct.Reg, %struct.Reg* %3123, i32 0, i32 0
  %PC.i58 = bitcast %union.anon* %3124 to i64*
  %3125 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3126 = getelementptr inbounds %struct.GPR, %struct.GPR* %3125, i32 0, i32 7
  %3127 = getelementptr inbounds %struct.Reg, %struct.Reg* %3126, i32 0, i32 0
  %RDX.i59 = bitcast %union.anon* %3127 to i64*
  %3128 = load i64, i64* %RDX.i59
  %3129 = add i64 %3128, 400
  %3130 = load i64, i64* %PC.i58
  %3131 = add i64 %3130, 7
  store i64 %3131, i64* %PC.i58
  %3132 = inttoptr i64 %3129 to i32*
  %3133 = load i32, i32* %3132
  %3134 = sext i32 %3133 to i64
  store i64 %3134, i64* %RDX.i59, align 8
  store %struct.Memory* %loadMem_467d14, %struct.Memory** %MEMORY
  %loadMem_467d1b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3135 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3136 = getelementptr inbounds %struct.GPR, %struct.GPR* %3135, i32 0, i32 33
  %3137 = getelementptr inbounds %struct.Reg, %struct.Reg* %3136, i32 0, i32 0
  %PC.i54 = bitcast %union.anon* %3137 to i64*
  %3138 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3139 = getelementptr inbounds %struct.GPR, %struct.GPR* %3138, i32 0, i32 1
  %3140 = getelementptr inbounds %struct.Reg, %struct.Reg* %3139, i32 0, i32 0
  %EAX.i55 = bitcast %union.anon* %3140 to i32*
  %3141 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3142 = getelementptr inbounds %struct.GPR, %struct.GPR* %3141, i32 0, i32 5
  %3143 = getelementptr inbounds %struct.Reg, %struct.Reg* %3142, i32 0, i32 0
  %RCX.i56 = bitcast %union.anon* %3143 to i64*
  %3144 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3145 = getelementptr inbounds %struct.GPR, %struct.GPR* %3144, i32 0, i32 7
  %3146 = getelementptr inbounds %struct.Reg, %struct.Reg* %3145, i32 0, i32 0
  %RDX.i57 = bitcast %union.anon* %3146 to i64*
  %3147 = load i64, i64* %RCX.i56
  %3148 = load i64, i64* %RDX.i57
  %3149 = mul i64 %3148, 4
  %3150 = add i64 %3149, %3147
  %3151 = load i32, i32* %EAX.i55
  %3152 = zext i32 %3151 to i64
  %3153 = load i64, i64* %PC.i54
  %3154 = add i64 %3153, 3
  store i64 %3154, i64* %PC.i54
  %3155 = inttoptr i64 %3150 to i32*
  store i32 %3151, i32* %3155
  store %struct.Memory* %loadMem_467d1b, %struct.Memory** %MEMORY
  %loadMem_467d1e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3156 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3157 = getelementptr inbounds %struct.GPR, %struct.GPR* %3156, i32 0, i32 33
  %3158 = getelementptr inbounds %struct.Reg, %struct.Reg* %3157, i32 0, i32 0
  %PC.i51 = bitcast %union.anon* %3158 to i64*
  %3159 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3160 = getelementptr inbounds %struct.GPR, %struct.GPR* %3159, i32 0, i32 5
  %3161 = getelementptr inbounds %struct.Reg, %struct.Reg* %3160, i32 0, i32 0
  %RCX.i52 = bitcast %union.anon* %3161 to i64*
  %3162 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3163 = getelementptr inbounds %struct.GPR, %struct.GPR* %3162, i32 0, i32 15
  %3164 = getelementptr inbounds %struct.Reg, %struct.Reg* %3163, i32 0, i32 0
  %RBP.i53 = bitcast %union.anon* %3164 to i64*
  %3165 = load i64, i64* %RBP.i53
  %3166 = sub i64 %3165, 24
  %3167 = load i64, i64* %PC.i51
  %3168 = add i64 %3167, 4
  store i64 %3168, i64* %PC.i51
  %3169 = inttoptr i64 %3166 to i64*
  %3170 = load i64, i64* %3169
  store i64 %3170, i64* %RCX.i52, align 8
  store %struct.Memory* %loadMem_467d1e, %struct.Memory** %MEMORY
  %loadMem_467d22 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3171 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3172 = getelementptr inbounds %struct.GPR, %struct.GPR* %3171, i32 0, i32 33
  %3173 = getelementptr inbounds %struct.Reg, %struct.Reg* %3172, i32 0, i32 0
  %PC.i48 = bitcast %union.anon* %3173 to i64*
  %3174 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3175 = getelementptr inbounds %struct.GPR, %struct.GPR* %3174, i32 0, i32 7
  %3176 = getelementptr inbounds %struct.Reg, %struct.Reg* %3175, i32 0, i32 0
  %RDX.i49 = bitcast %union.anon* %3176 to i64*
  %3177 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3178 = getelementptr inbounds %struct.GPR, %struct.GPR* %3177, i32 0, i32 15
  %3179 = getelementptr inbounds %struct.Reg, %struct.Reg* %3178, i32 0, i32 0
  %RBP.i50 = bitcast %union.anon* %3179 to i64*
  %3180 = load i64, i64* %RBP.i50
  %3181 = sub i64 %3180, 24
  %3182 = load i64, i64* %PC.i48
  %3183 = add i64 %3182, 4
  store i64 %3183, i64* %PC.i48
  %3184 = inttoptr i64 %3181 to i64*
  %3185 = load i64, i64* %3184
  store i64 %3185, i64* %RDX.i49, align 8
  store %struct.Memory* %loadMem_467d22, %struct.Memory** %MEMORY
  %loadMem_467d26 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3186 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3187 = getelementptr inbounds %struct.GPR, %struct.GPR* %3186, i32 0, i32 33
  %3188 = getelementptr inbounds %struct.Reg, %struct.Reg* %3187, i32 0, i32 0
  %PC.i46 = bitcast %union.anon* %3188 to i64*
  %3189 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3190 = getelementptr inbounds %struct.GPR, %struct.GPR* %3189, i32 0, i32 7
  %3191 = getelementptr inbounds %struct.Reg, %struct.Reg* %3190, i32 0, i32 0
  %RDX.i47 = bitcast %union.anon* %3191 to i64*
  %3192 = load i64, i64* %RDX.i47
  %3193 = add i64 %3192, 400
  %3194 = load i64, i64* %PC.i46
  %3195 = add i64 %3194, 7
  store i64 %3195, i64* %PC.i46
  %3196 = inttoptr i64 %3193 to i32*
  %3197 = load i32, i32* %3196
  %3198 = sext i32 %3197 to i64
  store i64 %3198, i64* %RDX.i47, align 8
  store %struct.Memory* %loadMem_467d26, %struct.Memory** %MEMORY
  %loadMem_467d2d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3199 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3200 = getelementptr inbounds %struct.GPR, %struct.GPR* %3199, i32 0, i32 33
  %3201 = getelementptr inbounds %struct.Reg, %struct.Reg* %3200, i32 0, i32 0
  %PC.i44 = bitcast %union.anon* %3201 to i64*
  %3202 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3203 = getelementptr inbounds %struct.GPR, %struct.GPR* %3202, i32 0, i32 5
  %3204 = getelementptr inbounds %struct.Reg, %struct.Reg* %3203, i32 0, i32 0
  %RCX.i45 = bitcast %union.anon* %3204 to i64*
  %3205 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3206 = getelementptr inbounds %struct.GPR, %struct.GPR* %3205, i32 0, i32 7
  %3207 = getelementptr inbounds %struct.Reg, %struct.Reg* %3206, i32 0, i32 0
  %RDX.i = bitcast %union.anon* %3207 to i64*
  %3208 = load i64, i64* %RCX.i45
  %3209 = load i64, i64* %RDX.i
  %3210 = mul i64 %3209, 4
  %3211 = add i64 %3208, 200
  %3212 = add i64 %3211, %3210
  %3213 = load i64, i64* %PC.i44
  %3214 = add i64 %3213, 11
  store i64 %3214, i64* %PC.i44
  %3215 = inttoptr i64 %3212 to i32*
  store i32 0, i32* %3215
  store %struct.Memory* %loadMem_467d2d, %struct.Memory** %MEMORY
  %loadMem_467d38 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3216 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3217 = getelementptr inbounds %struct.GPR, %struct.GPR* %3216, i32 0, i32 33
  %3218 = getelementptr inbounds %struct.Reg, %struct.Reg* %3217, i32 0, i32 0
  %PC.i41 = bitcast %union.anon* %3218 to i64*
  %3219 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3220 = getelementptr inbounds %struct.GPR, %struct.GPR* %3219, i32 0, i32 5
  %3221 = getelementptr inbounds %struct.Reg, %struct.Reg* %3220, i32 0, i32 0
  %RCX.i42 = bitcast %union.anon* %3221 to i64*
  %3222 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3223 = getelementptr inbounds %struct.GPR, %struct.GPR* %3222, i32 0, i32 15
  %3224 = getelementptr inbounds %struct.Reg, %struct.Reg* %3223, i32 0, i32 0
  %RBP.i43 = bitcast %union.anon* %3224 to i64*
  %3225 = load i64, i64* %RBP.i43
  %3226 = sub i64 %3225, 24
  %3227 = load i64, i64* %PC.i41
  %3228 = add i64 %3227, 4
  store i64 %3228, i64* %PC.i41
  %3229 = inttoptr i64 %3226 to i64*
  %3230 = load i64, i64* %3229
  store i64 %3230, i64* %RCX.i42, align 8
  store %struct.Memory* %loadMem_467d38, %struct.Memory** %MEMORY
  %loadMem_467d3c = load %struct.Memory*, %struct.Memory** %MEMORY
  %3231 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3232 = getelementptr inbounds %struct.GPR, %struct.GPR* %3231, i32 0, i32 33
  %3233 = getelementptr inbounds %struct.Reg, %struct.Reg* %3232, i32 0, i32 0
  %PC.i38 = bitcast %union.anon* %3233 to i64*
  %3234 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3235 = getelementptr inbounds %struct.GPR, %struct.GPR* %3234, i32 0, i32 1
  %3236 = getelementptr inbounds %struct.Reg, %struct.Reg* %3235, i32 0, i32 0
  %RAX.i39 = bitcast %union.anon* %3236 to i64*
  %3237 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3238 = getelementptr inbounds %struct.GPR, %struct.GPR* %3237, i32 0, i32 5
  %3239 = getelementptr inbounds %struct.Reg, %struct.Reg* %3238, i32 0, i32 0
  %RCX.i40 = bitcast %union.anon* %3239 to i64*
  %3240 = load i64, i64* %RCX.i40
  %3241 = add i64 %3240, 400
  %3242 = load i64, i64* %PC.i38
  %3243 = add i64 %3242, 6
  store i64 %3243, i64* %PC.i38
  %3244 = inttoptr i64 %3241 to i32*
  %3245 = load i32, i32* %3244
  %3246 = zext i32 %3245 to i64
  store i64 %3246, i64* %RAX.i39, align 8
  store %struct.Memory* %loadMem_467d3c, %struct.Memory** %MEMORY
  %loadMem_467d42 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3247 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3248 = getelementptr inbounds %struct.GPR, %struct.GPR* %3247, i32 0, i32 33
  %3249 = getelementptr inbounds %struct.Reg, %struct.Reg* %3248, i32 0, i32 0
  %PC.i36 = bitcast %union.anon* %3249 to i64*
  %3250 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3251 = getelementptr inbounds %struct.GPR, %struct.GPR* %3250, i32 0, i32 1
  %3252 = getelementptr inbounds %struct.Reg, %struct.Reg* %3251, i32 0, i32 0
  %RAX.i37 = bitcast %union.anon* %3252 to i64*
  %3253 = load i64, i64* %RAX.i37
  %3254 = load i64, i64* %PC.i36
  %3255 = add i64 %3254, 3
  store i64 %3255, i64* %PC.i36
  %3256 = trunc i64 %3253 to i32
  %3257 = add i32 1, %3256
  %3258 = zext i32 %3257 to i64
  store i64 %3258, i64* %RAX.i37, align 8
  %3259 = icmp ult i32 %3257, %3256
  %3260 = icmp ult i32 %3257, 1
  %3261 = or i1 %3259, %3260
  %3262 = zext i1 %3261 to i8
  %3263 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3262, i8* %3263, align 1
  %3264 = and i32 %3257, 255
  %3265 = call i32 @llvm.ctpop.i32(i32 %3264)
  %3266 = trunc i32 %3265 to i8
  %3267 = and i8 %3266, 1
  %3268 = xor i8 %3267, 1
  %3269 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3268, i8* %3269, align 1
  %3270 = xor i64 1, %3253
  %3271 = trunc i64 %3270 to i32
  %3272 = xor i32 %3271, %3257
  %3273 = lshr i32 %3272, 4
  %3274 = trunc i32 %3273 to i8
  %3275 = and i8 %3274, 1
  %3276 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3275, i8* %3276, align 1
  %3277 = icmp eq i32 %3257, 0
  %3278 = zext i1 %3277 to i8
  %3279 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3278, i8* %3279, align 1
  %3280 = lshr i32 %3257, 31
  %3281 = trunc i32 %3280 to i8
  %3282 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3281, i8* %3282, align 1
  %3283 = lshr i32 %3256, 31
  %3284 = xor i32 %3280, %3283
  %3285 = add i32 %3284, %3280
  %3286 = icmp eq i32 %3285, 2
  %3287 = zext i1 %3286 to i8
  %3288 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3287, i8* %3288, align 1
  store %struct.Memory* %loadMem_467d42, %struct.Memory** %MEMORY
  %loadMem_467d45 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3289 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3290 = getelementptr inbounds %struct.GPR, %struct.GPR* %3289, i32 0, i32 33
  %3291 = getelementptr inbounds %struct.Reg, %struct.Reg* %3290, i32 0, i32 0
  %PC.i34 = bitcast %union.anon* %3291 to i64*
  %3292 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3293 = getelementptr inbounds %struct.GPR, %struct.GPR* %3292, i32 0, i32 1
  %3294 = getelementptr inbounds %struct.Reg, %struct.Reg* %3293, i32 0, i32 0
  %EAX.i35 = bitcast %union.anon* %3294 to i32*
  %3295 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3296 = getelementptr inbounds %struct.GPR, %struct.GPR* %3295, i32 0, i32 5
  %3297 = getelementptr inbounds %struct.Reg, %struct.Reg* %3296, i32 0, i32 0
  %RCX.i = bitcast %union.anon* %3297 to i64*
  %3298 = load i64, i64* %RCX.i
  %3299 = add i64 %3298, 400
  %3300 = load i32, i32* %EAX.i35
  %3301 = zext i32 %3300 to i64
  %3302 = load i64, i64* %PC.i34
  %3303 = add i64 %3302, 6
  store i64 %3303, i64* %PC.i34
  %3304 = inttoptr i64 %3299 to i32*
  store i32 %3300, i32* %3304
  store %struct.Memory* %loadMem_467d45, %struct.Memory** %MEMORY
  br label %block_.L_467d4b

block_.L_467d4b:                                  ; preds = %block_467d09, %block_467cf8, %block_.L_467ce5
  %loadMem_467d4b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3305 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3306 = getelementptr inbounds %struct.GPR, %struct.GPR* %3305, i32 0, i32 33
  %3307 = getelementptr inbounds %struct.Reg, %struct.Reg* %3306, i32 0, i32 0
  %PC.i33 = bitcast %union.anon* %3307 to i64*
  %3308 = load i64, i64* %PC.i33
  %3309 = add i64 %3308, 5
  %3310 = load i64, i64* %PC.i33
  %3311 = add i64 %3310, 5
  store i64 %3311, i64* %PC.i33
  %3312 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3309, i64* %3312, align 8
  store %struct.Memory* %loadMem_467d4b, %struct.Memory** %MEMORY
  br label %block_.L_467d50

block_.L_467d50:                                  ; preds = %block_.L_467d4b
  %loadMem_467d50 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3313 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3314 = getelementptr inbounds %struct.GPR, %struct.GPR* %3313, i32 0, i32 33
  %3315 = getelementptr inbounds %struct.Reg, %struct.Reg* %3314, i32 0, i32 0
  %PC.i32 = bitcast %union.anon* %3315 to i64*
  %3316 = load i64, i64* %PC.i32
  %3317 = add i64 %3316, 5
  %3318 = load i64, i64* %PC.i32
  %3319 = add i64 %3318, 5
  store i64 %3319, i64* %PC.i32
  %3320 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3317, i64* %3320, align 8
  store %struct.Memory* %loadMem_467d50, %struct.Memory** %MEMORY
  br label %block_.L_467d55

block_.L_467d55:                                  ; preds = %block_.L_467d50, %block_.L_467c7c, %block_467c3d, %block_467c1a
  %loadMem_467d55 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3321 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3322 = getelementptr inbounds %struct.GPR, %struct.GPR* %3321, i32 0, i32 33
  %3323 = getelementptr inbounds %struct.Reg, %struct.Reg* %3322, i32 0, i32 0
  %PC.i29 = bitcast %union.anon* %3323 to i64*
  %3324 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3325 = getelementptr inbounds %struct.GPR, %struct.GPR* %3324, i32 0, i32 1
  %3326 = getelementptr inbounds %struct.Reg, %struct.Reg* %3325, i32 0, i32 0
  %RAX.i30 = bitcast %union.anon* %3326 to i64*
  %3327 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3328 = getelementptr inbounds %struct.GPR, %struct.GPR* %3327, i32 0, i32 15
  %3329 = getelementptr inbounds %struct.Reg, %struct.Reg* %3328, i32 0, i32 0
  %RBP.i31 = bitcast %union.anon* %3329 to i64*
  %3330 = load i64, i64* %RBP.i31
  %3331 = sub i64 %3330, 60
  %3332 = load i64, i64* %PC.i29
  %3333 = add i64 %3332, 3
  store i64 %3333, i64* %PC.i29
  %3334 = inttoptr i64 %3331 to i32*
  %3335 = load i32, i32* %3334
  %3336 = zext i32 %3335 to i64
  store i64 %3336, i64* %RAX.i30, align 8
  store %struct.Memory* %loadMem_467d55, %struct.Memory** %MEMORY
  %loadMem_467d58 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3337 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3338 = getelementptr inbounds %struct.GPR, %struct.GPR* %3337, i32 0, i32 33
  %3339 = getelementptr inbounds %struct.Reg, %struct.Reg* %3338, i32 0, i32 0
  %PC.i27 = bitcast %union.anon* %3339 to i64*
  %3340 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3341 = getelementptr inbounds %struct.GPR, %struct.GPR* %3340, i32 0, i32 1
  %3342 = getelementptr inbounds %struct.Reg, %struct.Reg* %3341, i32 0, i32 0
  %RAX.i28 = bitcast %union.anon* %3342 to i64*
  %3343 = load i64, i64* %RAX.i28
  %3344 = load i64, i64* %PC.i27
  %3345 = add i64 %3344, 3
  store i64 %3345, i64* %PC.i27
  %3346 = trunc i64 %3343 to i32
  %3347 = add i32 1, %3346
  %3348 = zext i32 %3347 to i64
  store i64 %3348, i64* %RAX.i28, align 8
  %3349 = icmp ult i32 %3347, %3346
  %3350 = icmp ult i32 %3347, 1
  %3351 = or i1 %3349, %3350
  %3352 = zext i1 %3351 to i8
  %3353 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3352, i8* %3353, align 1
  %3354 = and i32 %3347, 255
  %3355 = call i32 @llvm.ctpop.i32(i32 %3354)
  %3356 = trunc i32 %3355 to i8
  %3357 = and i8 %3356, 1
  %3358 = xor i8 %3357, 1
  %3359 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3358, i8* %3359, align 1
  %3360 = xor i64 1, %3343
  %3361 = trunc i64 %3360 to i32
  %3362 = xor i32 %3361, %3347
  %3363 = lshr i32 %3362, 4
  %3364 = trunc i32 %3363 to i8
  %3365 = and i8 %3364, 1
  %3366 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3365, i8* %3366, align 1
  %3367 = icmp eq i32 %3347, 0
  %3368 = zext i1 %3367 to i8
  %3369 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3368, i8* %3369, align 1
  %3370 = lshr i32 %3347, 31
  %3371 = trunc i32 %3370 to i8
  %3372 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3371, i8* %3372, align 1
  %3373 = lshr i32 %3346, 31
  %3374 = xor i32 %3370, %3373
  %3375 = add i32 %3374, %3370
  %3376 = icmp eq i32 %3375, 2
  %3377 = zext i1 %3376 to i8
  %3378 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3377, i8* %3378, align 1
  store %struct.Memory* %loadMem_467d58, %struct.Memory** %MEMORY
  %loadMem_467d5b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3379 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3380 = getelementptr inbounds %struct.GPR, %struct.GPR* %3379, i32 0, i32 33
  %3381 = getelementptr inbounds %struct.Reg, %struct.Reg* %3380, i32 0, i32 0
  %PC.i24 = bitcast %union.anon* %3381 to i64*
  %3382 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3383 = getelementptr inbounds %struct.GPR, %struct.GPR* %3382, i32 0, i32 1
  %3384 = getelementptr inbounds %struct.Reg, %struct.Reg* %3383, i32 0, i32 0
  %EAX.i25 = bitcast %union.anon* %3384 to i32*
  %3385 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3386 = getelementptr inbounds %struct.GPR, %struct.GPR* %3385, i32 0, i32 15
  %3387 = getelementptr inbounds %struct.Reg, %struct.Reg* %3386, i32 0, i32 0
  %RBP.i26 = bitcast %union.anon* %3387 to i64*
  %3388 = load i64, i64* %RBP.i26
  %3389 = sub i64 %3388, 60
  %3390 = load i32, i32* %EAX.i25
  %3391 = zext i32 %3390 to i64
  %3392 = load i64, i64* %PC.i24
  %3393 = add i64 %3392, 3
  store i64 %3393, i64* %PC.i24
  %3394 = inttoptr i64 %3389 to i32*
  store i32 %3390, i32* %3394
  store %struct.Memory* %loadMem_467d5b, %struct.Memory** %MEMORY
  %loadMem_467d5e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3395 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3396 = getelementptr inbounds %struct.GPR, %struct.GPR* %3395, i32 0, i32 33
  %3397 = getelementptr inbounds %struct.Reg, %struct.Reg* %3396, i32 0, i32 0
  %PC.i23 = bitcast %union.anon* %3397 to i64*
  %3398 = load i64, i64* %PC.i23
  %3399 = add i64 %3398, -417
  %3400 = load i64, i64* %PC.i23
  %3401 = add i64 %3400, 5
  store i64 %3401, i64* %PC.i23
  %3402 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3399, i64* %3402, align 8
  store %struct.Memory* %loadMem_467d5e, %struct.Memory** %MEMORY
  br label %block_.L_467bbd

block_.L_467d63:                                  ; preds = %block_.L_467bbd
  %loadMem_467d63 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3403 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3404 = getelementptr inbounds %struct.GPR, %struct.GPR* %3403, i32 0, i32 33
  %3405 = getelementptr inbounds %struct.Reg, %struct.Reg* %3404, i32 0, i32 0
  %PC.i22 = bitcast %union.anon* %3405 to i64*
  %3406 = load i64, i64* %PC.i22
  %3407 = add i64 %3406, 5
  %3408 = load i64, i64* %PC.i22
  %3409 = add i64 %3408, 5
  store i64 %3409, i64* %PC.i22
  %3410 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3407, i64* %3410, align 8
  store %struct.Memory* %loadMem_467d63, %struct.Memory** %MEMORY
  br label %block_.L_467d68

block_.L_467d68:                                  ; preds = %block_.L_467d63, %block_467bb1, %block_467b98
  %loadMem_467d68 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3411 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3412 = getelementptr inbounds %struct.GPR, %struct.GPR* %3411, i32 0, i32 33
  %3413 = getelementptr inbounds %struct.Reg, %struct.Reg* %3412, i32 0, i32 0
  %PC.i19 = bitcast %union.anon* %3413 to i64*
  %3414 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3415 = getelementptr inbounds %struct.GPR, %struct.GPR* %3414, i32 0, i32 1
  %3416 = getelementptr inbounds %struct.Reg, %struct.Reg* %3415, i32 0, i32 0
  %RAX.i20 = bitcast %union.anon* %3416 to i64*
  %3417 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3418 = getelementptr inbounds %struct.GPR, %struct.GPR* %3417, i32 0, i32 15
  %3419 = getelementptr inbounds %struct.Reg, %struct.Reg* %3418, i32 0, i32 0
  %RBP.i21 = bitcast %union.anon* %3419 to i64*
  %3420 = load i64, i64* %RBP.i21
  %3421 = sub i64 %3420, 56
  %3422 = load i64, i64* %PC.i19
  %3423 = add i64 %3422, 3
  store i64 %3423, i64* %PC.i19
  %3424 = inttoptr i64 %3421 to i32*
  %3425 = load i32, i32* %3424
  %3426 = zext i32 %3425 to i64
  store i64 %3426, i64* %RAX.i20, align 8
  store %struct.Memory* %loadMem_467d68, %struct.Memory** %MEMORY
  %loadMem_467d6b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3427 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3428 = getelementptr inbounds %struct.GPR, %struct.GPR* %3427, i32 0, i32 33
  %3429 = getelementptr inbounds %struct.Reg, %struct.Reg* %3428, i32 0, i32 0
  %PC.i17 = bitcast %union.anon* %3429 to i64*
  %3430 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3431 = getelementptr inbounds %struct.GPR, %struct.GPR* %3430, i32 0, i32 1
  %3432 = getelementptr inbounds %struct.Reg, %struct.Reg* %3431, i32 0, i32 0
  %RAX.i18 = bitcast %union.anon* %3432 to i64*
  %3433 = load i64, i64* %RAX.i18
  %3434 = load i64, i64* %PC.i17
  %3435 = add i64 %3434, 3
  store i64 %3435, i64* %PC.i17
  %3436 = trunc i64 %3433 to i32
  %3437 = add i32 1, %3436
  %3438 = zext i32 %3437 to i64
  store i64 %3438, i64* %RAX.i18, align 8
  %3439 = icmp ult i32 %3437, %3436
  %3440 = icmp ult i32 %3437, 1
  %3441 = or i1 %3439, %3440
  %3442 = zext i1 %3441 to i8
  %3443 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3442, i8* %3443, align 1
  %3444 = and i32 %3437, 255
  %3445 = call i32 @llvm.ctpop.i32(i32 %3444)
  %3446 = trunc i32 %3445 to i8
  %3447 = and i8 %3446, 1
  %3448 = xor i8 %3447, 1
  %3449 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3448, i8* %3449, align 1
  %3450 = xor i64 1, %3433
  %3451 = trunc i64 %3450 to i32
  %3452 = xor i32 %3451, %3437
  %3453 = lshr i32 %3452, 4
  %3454 = trunc i32 %3453 to i8
  %3455 = and i8 %3454, 1
  %3456 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3455, i8* %3456, align 1
  %3457 = icmp eq i32 %3437, 0
  %3458 = zext i1 %3457 to i8
  %3459 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3458, i8* %3459, align 1
  %3460 = lshr i32 %3437, 31
  %3461 = trunc i32 %3460 to i8
  %3462 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3461, i8* %3462, align 1
  %3463 = lshr i32 %3436, 31
  %3464 = xor i32 %3460, %3463
  %3465 = add i32 %3464, %3460
  %3466 = icmp eq i32 %3465, 2
  %3467 = zext i1 %3466 to i8
  %3468 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3467, i8* %3468, align 1
  store %struct.Memory* %loadMem_467d6b, %struct.Memory** %MEMORY
  %loadMem_467d6e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3469 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3470 = getelementptr inbounds %struct.GPR, %struct.GPR* %3469, i32 0, i32 33
  %3471 = getelementptr inbounds %struct.Reg, %struct.Reg* %3470, i32 0, i32 0
  %PC.i14 = bitcast %union.anon* %3471 to i64*
  %3472 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3473 = getelementptr inbounds %struct.GPR, %struct.GPR* %3472, i32 0, i32 1
  %3474 = getelementptr inbounds %struct.Reg, %struct.Reg* %3473, i32 0, i32 0
  %EAX.i15 = bitcast %union.anon* %3474 to i32*
  %3475 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3476 = getelementptr inbounds %struct.GPR, %struct.GPR* %3475, i32 0, i32 15
  %3477 = getelementptr inbounds %struct.Reg, %struct.Reg* %3476, i32 0, i32 0
  %RBP.i16 = bitcast %union.anon* %3477 to i64*
  %3478 = load i64, i64* %RBP.i16
  %3479 = sub i64 %3478, 56
  %3480 = load i32, i32* %EAX.i15
  %3481 = zext i32 %3480 to i64
  %3482 = load i64, i64* %PC.i14
  %3483 = add i64 %3482, 3
  store i64 %3483, i64* %PC.i14
  %3484 = inttoptr i64 %3479 to i32*
  store i32 %3480, i32* %3484
  store %struct.Memory* %loadMem_467d6e, %struct.Memory** %MEMORY
  %loadMem_467d71 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3485 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3486 = getelementptr inbounds %struct.GPR, %struct.GPR* %3485, i32 0, i32 33
  %3487 = getelementptr inbounds %struct.Reg, %struct.Reg* %3486, i32 0, i32 0
  %PC.i13 = bitcast %union.anon* %3487 to i64*
  %3488 = load i64, i64* %PC.i13
  %3489 = add i64 %3488, -521
  %3490 = load i64, i64* %PC.i13
  %3491 = add i64 %3490, 5
  store i64 %3491, i64* %PC.i13
  %3492 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3489, i64* %3492, align 8
  store %struct.Memory* %loadMem_467d71, %struct.Memory** %MEMORY
  br label %block_.L_467b68

block_.L_467d76:                                  ; preds = %block_.L_467b68
  %loadMem_467d76 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3493 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3494 = getelementptr inbounds %struct.GPR, %struct.GPR* %3493, i32 0, i32 33
  %3495 = getelementptr inbounds %struct.Reg, %struct.Reg* %3494, i32 0, i32 0
  %PC.i12 = bitcast %union.anon* %3495 to i64*
  %3496 = load i64, i64* %PC.i12
  %3497 = add i64 %3496, 5
  %3498 = load i64, i64* %PC.i12
  %3499 = add i64 %3498, 5
  store i64 %3499, i64* %PC.i12
  %3500 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3497, i64* %3500, align 8
  store %struct.Memory* %loadMem_467d76, %struct.Memory** %MEMORY
  br label %block_.L_467d7b

block_.L_467d7b:                                  ; preds = %block_.L_467d76
  %loadMem_467d7b = load %struct.Memory*, %struct.Memory** %MEMORY
  %3501 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3502 = getelementptr inbounds %struct.GPR, %struct.GPR* %3501, i32 0, i32 33
  %3503 = getelementptr inbounds %struct.Reg, %struct.Reg* %3502, i32 0, i32 0
  %PC.i9 = bitcast %union.anon* %3503 to i64*
  %3504 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3505 = getelementptr inbounds %struct.GPR, %struct.GPR* %3504, i32 0, i32 1
  %3506 = getelementptr inbounds %struct.Reg, %struct.Reg* %3505, i32 0, i32 0
  %RAX.i10 = bitcast %union.anon* %3506 to i64*
  %3507 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3508 = getelementptr inbounds %struct.GPR, %struct.GPR* %3507, i32 0, i32 15
  %3509 = getelementptr inbounds %struct.Reg, %struct.Reg* %3508, i32 0, i32 0
  %RBP.i11 = bitcast %union.anon* %3509 to i64*
  %3510 = load i64, i64* %RBP.i11
  %3511 = sub i64 %3510, 64
  %3512 = load i64, i64* %PC.i9
  %3513 = add i64 %3512, 3
  store i64 %3513, i64* %PC.i9
  %3514 = inttoptr i64 %3511 to i32*
  %3515 = load i32, i32* %3514
  %3516 = zext i32 %3515 to i64
  store i64 %3516, i64* %RAX.i10, align 8
  store %struct.Memory* %loadMem_467d7b, %struct.Memory** %MEMORY
  %loadMem_467d7e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3517 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3518 = getelementptr inbounds %struct.GPR, %struct.GPR* %3517, i32 0, i32 33
  %3519 = getelementptr inbounds %struct.Reg, %struct.Reg* %3518, i32 0, i32 0
  %PC.i8 = bitcast %union.anon* %3519 to i64*
  %3520 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3521 = getelementptr inbounds %struct.GPR, %struct.GPR* %3520, i32 0, i32 1
  %3522 = getelementptr inbounds %struct.Reg, %struct.Reg* %3521, i32 0, i32 0
  %RAX.i = bitcast %union.anon* %3522 to i64*
  %3523 = load i64, i64* %RAX.i
  %3524 = load i64, i64* %PC.i8
  %3525 = add i64 %3524, 3
  store i64 %3525, i64* %PC.i8
  %3526 = trunc i64 %3523 to i32
  %3527 = add i32 1, %3526
  %3528 = zext i32 %3527 to i64
  store i64 %3528, i64* %RAX.i, align 8
  %3529 = icmp ult i32 %3527, %3526
  %3530 = icmp ult i32 %3527, 1
  %3531 = or i1 %3529, %3530
  %3532 = zext i1 %3531 to i8
  %3533 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3532, i8* %3533, align 1
  %3534 = and i32 %3527, 255
  %3535 = call i32 @llvm.ctpop.i32(i32 %3534)
  %3536 = trunc i32 %3535 to i8
  %3537 = and i8 %3536, 1
  %3538 = xor i8 %3537, 1
  %3539 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3538, i8* %3539, align 1
  %3540 = xor i64 1, %3523
  %3541 = trunc i64 %3540 to i32
  %3542 = xor i32 %3541, %3527
  %3543 = lshr i32 %3542, 4
  %3544 = trunc i32 %3543 to i8
  %3545 = and i8 %3544, 1
  %3546 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3545, i8* %3546, align 1
  %3547 = icmp eq i32 %3527, 0
  %3548 = zext i1 %3547 to i8
  %3549 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3548, i8* %3549, align 1
  %3550 = lshr i32 %3527, 31
  %3551 = trunc i32 %3550 to i8
  %3552 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3551, i8* %3552, align 1
  %3553 = lshr i32 %3526, 31
  %3554 = xor i32 %3550, %3553
  %3555 = add i32 %3554, %3550
  %3556 = icmp eq i32 %3555, 2
  %3557 = zext i1 %3556 to i8
  %3558 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3557, i8* %3558, align 1
  store %struct.Memory* %loadMem_467d7e, %struct.Memory** %MEMORY
  %loadMem_467d81 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3559 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3560 = getelementptr inbounds %struct.GPR, %struct.GPR* %3559, i32 0, i32 33
  %3561 = getelementptr inbounds %struct.Reg, %struct.Reg* %3560, i32 0, i32 0
  %PC.i6 = bitcast %union.anon* %3561 to i64*
  %3562 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3563 = getelementptr inbounds %struct.GPR, %struct.GPR* %3562, i32 0, i32 1
  %3564 = getelementptr inbounds %struct.Reg, %struct.Reg* %3563, i32 0, i32 0
  %EAX.i = bitcast %union.anon* %3564 to i32*
  %3565 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3566 = getelementptr inbounds %struct.GPR, %struct.GPR* %3565, i32 0, i32 15
  %3567 = getelementptr inbounds %struct.Reg, %struct.Reg* %3566, i32 0, i32 0
  %RBP.i7 = bitcast %union.anon* %3567 to i64*
  %3568 = load i64, i64* %RBP.i7
  %3569 = sub i64 %3568, 64
  %3570 = load i32, i32* %EAX.i
  %3571 = zext i32 %3570 to i64
  %3572 = load i64, i64* %PC.i6
  %3573 = add i64 %3572, 3
  store i64 %3573, i64* %PC.i6
  %3574 = inttoptr i64 %3569 to i32*
  store i32 %3570, i32* %3574
  store %struct.Memory* %loadMem_467d81, %struct.Memory** %MEMORY
  %loadMem_467d84 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3575 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3576 = getelementptr inbounds %struct.GPR, %struct.GPR* %3575, i32 0, i32 33
  %3577 = getelementptr inbounds %struct.Reg, %struct.Reg* %3576, i32 0, i32 0
  %PC.i5 = bitcast %union.anon* %3577 to i64*
  %3578 = load i64, i64* %PC.i5
  %3579 = add i64 %3578, -573
  %3580 = load i64, i64* %PC.i5
  %3581 = add i64 %3580, 5
  store i64 %3581, i64* %PC.i5
  %3582 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  store i64 %3579, i64* %3582, align 8
  store %struct.Memory* %loadMem_467d84, %struct.Memory** %MEMORY
  br label %block_.L_467b47

block_.L_467d89:                                  ; preds = %block_.L_467b47
  %loadMem_467d89 = load %struct.Memory*, %struct.Memory** %MEMORY
  %3583 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3584 = getelementptr inbounds %struct.GPR, %struct.GPR* %3583, i32 0, i32 33
  %3585 = getelementptr inbounds %struct.Reg, %struct.Reg* %3584, i32 0, i32 0
  %PC.i4 = bitcast %union.anon* %3585 to i64*
  %3586 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3587 = getelementptr inbounds %struct.GPR, %struct.GPR* %3586, i32 0, i32 13
  %3588 = getelementptr inbounds %struct.Reg, %struct.Reg* %3587, i32 0, i32 0
  %RSP.i = bitcast %union.anon* %3588 to i64*
  %3589 = load i64, i64* %RSP.i
  %3590 = load i64, i64* %PC.i4
  %3591 = add i64 %3590, 4
  store i64 %3591, i64* %PC.i4
  %3592 = add i64 112, %3589
  store i64 %3592, i64* %RSP.i, align 8
  %3593 = icmp ult i64 %3592, %3589
  %3594 = icmp ult i64 %3592, 112
  %3595 = or i1 %3593, %3594
  %3596 = zext i1 %3595 to i8
  %3597 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %3596, i8* %3597, align 1
  %3598 = trunc i64 %3592 to i32
  %3599 = and i32 %3598, 255
  %3600 = call i32 @llvm.ctpop.i32(i32 %3599)
  %3601 = trunc i32 %3600 to i8
  %3602 = and i8 %3601, 1
  %3603 = xor i8 %3602, 1
  %3604 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %3603, i8* %3604, align 1
  %3605 = xor i64 112, %3589
  %3606 = xor i64 %3605, %3592
  %3607 = lshr i64 %3606, 4
  %3608 = trunc i64 %3607 to i8
  %3609 = and i8 %3608, 1
  %3610 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %3609, i8* %3610, align 1
  %3611 = icmp eq i64 %3592, 0
  %3612 = zext i1 %3611 to i8
  %3613 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %3612, i8* %3613, align 1
  %3614 = lshr i64 %3592, 63
  %3615 = trunc i64 %3614 to i8
  %3616 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %3615, i8* %3616, align 1
  %3617 = lshr i64 %3589, 63
  %3618 = xor i64 %3614, %3617
  %3619 = add i64 %3618, %3614
  %3620 = icmp eq i64 %3619, 2
  %3621 = zext i1 %3620 to i8
  %3622 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %3621, i8* %3622, align 1
  store %struct.Memory* %loadMem_467d89, %struct.Memory** %MEMORY
  %loadMem_467d8d = load %struct.Memory*, %struct.Memory** %MEMORY
  %3623 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3624 = getelementptr inbounds %struct.GPR, %struct.GPR* %3623, i32 0, i32 33
  %3625 = getelementptr inbounds %struct.Reg, %struct.Reg* %3624, i32 0, i32 0
  %PC.i2 = bitcast %union.anon* %3625 to i64*
  %3626 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3627 = getelementptr inbounds %struct.GPR, %struct.GPR* %3626, i32 0, i32 15
  %3628 = getelementptr inbounds %struct.Reg, %struct.Reg* %3627, i32 0, i32 0
  %RBP.i3 = bitcast %union.anon* %3628 to i64*
  %3629 = load i64, i64* %PC.i2
  %3630 = add i64 %3629, 1
  store i64 %3630, i64* %PC.i2
  %3631 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3632 = load i64, i64* %3631, align 8
  %3633 = add i64 %3632, 8
  %3634 = inttoptr i64 %3632 to i64*
  %3635 = load i64, i64* %3634
  store i64 %3635, i64* %RBP.i3, align 8
  store i64 %3633, i64* %3631, align 8
  store %struct.Memory* %loadMem_467d8d, %struct.Memory** %MEMORY
  %loadMem_467d8e = load %struct.Memory*, %struct.Memory** %MEMORY
  %3636 = getelementptr inbounds %struct.State, %struct.State* %0, i32 0, i32 6
  %3637 = getelementptr inbounds %struct.GPR, %struct.GPR* %3636, i32 0, i32 33
  %3638 = getelementptr inbounds %struct.Reg, %struct.Reg* %3637, i32 0, i32 0
  %PC.i1 = bitcast %union.anon* %3638 to i64*
  %3639 = load i64, i64* %PC.i1
  %3640 = add i64 %3639, 1
  store i64 %3640, i64* %PC.i1
  %3641 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %3642 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %3643 = load i64, i64* %3642, align 8
  %3644 = inttoptr i64 %3643 to i64*
  %3645 = load i64, i64* %3644
  store i64 %3645, i64* %3641, align 8
  %3646 = add i64 %3643, 8
  store i64 %3646, i64* %3642, align 8
  store %struct.Memory* %loadMem_467d8e, %struct.Memory** %MEMORY
  ret %struct.Memory* %loadMem_467d8e
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

define %struct.Memory* @routine_subq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = sub i64 %9, 112
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %9, 112
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
  %23 = xor i64 112, %9
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

define %struct.Memory* @routine_movslq_MINUS0x4__rbp____rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movzbl_0xb89e60___rdx_1____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 11
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RDI = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %RDX
  %13 = add i64 %12, 12099168
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 8
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i8*
  %17 = load i8, i8* %16
  %18 = zext i8 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edi__MINUS0x1c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i32, i32* %EDI
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_subl_MINUS0x1c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 28
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

define %struct.Memory* @routine_movl__eax__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 52
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x34__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 52
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

define %struct.Memory* @routine_jg_.L_467ae7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467b40(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movq__0x57fb0d___rdi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57fb0d_type* @G__0x57fb0d to i64), i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x749___esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 1865, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__0x57fd19___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = add i64 %9, 10
  store i64 %10, i64* %PC
  store i64 ptrtoint (%G__0x57fd19_type* @G__0x57fd19 to i64), i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__0x14___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  store i64 20, i64* %RAX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
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

define %struct.Memory* @routine_movq__rdx__MINUS0x58__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %RDX
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %13 to i64*
  store i64 %14, i64* %17
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

define %struct.Memory* @routine_movl_MINUS0x4__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 4
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
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

define %struct.Memory* @routine_movl__r8d___eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %RAX = bitcast %union.anon* %11 to i64*
  %12 = load i32, i32* %R8D
  %13 = zext i32 %12 to i64
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = and i64 %13, 4294967295
  store i64 %16, i64* %RAX, align 8
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

define %struct.Memory* @routine_movq_MINUS0x58__rbp____r9(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 88
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i64*
  %17 = load i64, i64* %16
  store i64 %17, i64* %R9, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__edx__MINUS0x60__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 96
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movq__r9___rdx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = getelementptr inbounds %struct.GPR, %struct.GPR* %9, i32 0, i32 19
  %11 = getelementptr inbounds %struct.Reg, %struct.Reg* %10, i32 0, i32 0
  %R9 = bitcast %union.anon* %11 to i64*
  %12 = load i64, i64* %R9
  %13 = load i64, i64* %PC
  %14 = add i64 %13, 3
  store i64 %14, i64* %PC
  store i64 %12, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x5c__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x60__rbp____r8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 96
  %15 = load i64, i64* %PC
  %16 = add i64 %15, 4
  store i64 %16, i64* %PC
  %17 = inttoptr i64 %14 to i32*
  %18 = load i32, i32* %17
  %19 = zext i32 %18 to i64
  store i64 %19, i64* %12, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.abortgo(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x34__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 52
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

define %struct.Memory* @routine_jge_.L_467d89(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__0x0__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
  %11 = load i64, i64* %PC
  %12 = add i64 %11, 7
  store i64 %12, i64* %PC
  %13 = inttoptr i64 %10 to i32*
  store i32 0, i32* %13
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x4__MINUS0x38__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %10 = sub i64 %9, 56
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

define %struct.Memory* @routine_jge_.L_467d76(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movslq_MINUS0x38__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_movslq_MINUS0x28__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_je_.L_467b9d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467d68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movl_MINUS0x28__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 40
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x4__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 4
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.same_string(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jne_.L_467bb6(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl__0x2__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jge_.L_467d63(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl__eax__MINUS0x64__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x64__rbp____ecx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 100
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
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

define %struct.Memory* @routine_movl__edx__MINUS0x44__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 68
  %14 = load i32, i32* %EDX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__0x1__MINUS0x3c__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_467bfc(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_subl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_addl_MINUS0x44__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %14 = sub i64 %13, 68
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

define %struct.Memory* @routine_movslq_MINUS0x2c__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_je_.L_467c1f(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467d55(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_movslq_MINUS0x30__rbp____rcx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 4
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %RCX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl_MINUS0x20__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %15 = sub i64 %14, 32
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

define %struct.Memory* @routine_je_.L_467c42(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x30__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 48
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
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

define %struct.Memory* @routine_jg_.L_467c7c(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____edi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x1c__rbp____esi(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 28
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RSI, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl_MINUS0x48__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 72
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_movl__eax__MINUS0x68__rbp_(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i32, i32* %EAX
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* %PC
  %17 = add i64 %16, 3
  store i64 %17, i64* %PC
  %18 = inttoptr i64 %13 to i32*
  store i32 %14, i32* %18
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_callq_.accuratelib(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x68__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 104
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RDX, align 8
  ret %struct.Memory* %2
}

define %struct.Memory* @routine_cmpl__eax___edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = load i32, i32* %EDX
  %13 = zext i32 %12 to i64
  %14 = load i32, i32* %EAX
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

define %struct.Memory* @routine_jle_.L_467c81(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467c86(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jge_.L_467ce5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_cmpl_MINUS0x2c__rbp____edx(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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

define %struct.Memory* @routine_jne_.L_467cd2(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jmpq_.L_467ce5(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467cd7(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467c8d(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jne_.L_467d4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_jge_.L_467d4b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i8* %BRANCH_TAKEN, i64 %rel_off1, i64 %rel_off2, i64 %rel_off3) {
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

define %struct.Memory* @routine_movl_MINUS0x2c__rbp____eax(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %13 = sub i64 %12, 44
  %14 = load i64, i64* %PC
  %15 = add i64 %14, 3
  store i64 %15, i64* %PC
  %16 = inttoptr i64 %13 to i32*
  %17 = load i32, i32* %16
  %18 = zext i32 %17 to i64
  store i64 %18, i64* %RAX, align 8
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

define %struct.Memory* @routine_jmpq_.L_467d50(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467bbd(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467b68(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467d7b(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_jmpq_.L_467b47(%struct.State* dereferenceable(3376), i64, %struct.Memory*, i64 %rel_off1, i64 %rel_off2) {
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

define %struct.Memory* @routine_addq__0x70___rsp(%struct.State* dereferenceable(3376), i64, %struct.Memory*) {
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
  %12 = add i64 112, %9
  store i64 %12, i64* %RSP, align 8
  %13 = icmp ult i64 %12, %9
  %14 = icmp ult i64 %12, 112
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
  %25 = xor i64 112, %9
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
